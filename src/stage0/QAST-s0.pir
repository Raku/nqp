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
.sub "" :subid("cuid_1_1346277600.974") :anon :lex
.annotate 'file', "src\\stage2\\QAST.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P6706 = 'cuid_153_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_4_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_14_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_29_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_36_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_41_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_58_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_179_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_181_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_183_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_185_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_187_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_189_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_191_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_192_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_198_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_199_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_204_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_206_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_207_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_209_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_213_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_215_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_217_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_219_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_220_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_221_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_223_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_231_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_232_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_233_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_234_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_235_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_236_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_238_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_240_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_241_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_242_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_243_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_244_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_245_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_246_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_247_1346277600.974' 
    capture_lex $P6706 
    .const 'Sub' $P6706 = 'cuid_59_1346277600.974' 
    capture_lex $P6706 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "&handle_arg", $P103 
    .lex "$exc_exclude", $P104 
    .lex "$exc_include", $P105 
    .lex "%handler_names", $P106 
    .lex "%control_map", $P107 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_153_1346277600.974' 
    capture_lex $P5001
    set $P103, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5003
    new $P5004, 'Hash'
    set $P106, $P5004
    new $P5005, 'Hash'
    set $P107, $P5005
    find_dynamic_lex $P5006, "$*CTXSAVE"
    set ctxsave, $P5006
    isnull $I5001, ctxsave
    box $P5011, $I5001
    set $P5010, $P5011
    if $I5001 goto unless15_end22 
    can $I5002, ctxsave, "ctxsave"
    box $P5009, $I5002
    set $P5008, $P5009
    unless $I5002 goto if16_end24 
    $P5007 = ctxsave."ctxsave"()
    set $P5008, $P5007
  if16_end24:
    set $P5010, $P5008
  unless15_end22:
.annotate 'line', 1
    .const 'Sub' $P5012 = 'cuid_4_1346277600.974' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_14_1346277600.974' 
    capture_lex $P5014
    $P5015 = $P5014()
    .const 'Sub' $P5016 = 'cuid_29_1346277600.974' 
    capture_lex $P5016
    $P5017 = $P5016()
    .const 'Sub' $P5018 = 'cuid_36_1346277600.974' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_41_1346277600.974' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_58_1346277600.974' 
    capture_lex $P5022
    $P5023 = $P5022()
.annotate 'line', 587
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["Operations"]
    unless_null $P5024, fallback342
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5028
  fallback342:
    .const 'Sub' $P5030 = 'cuid_179_1346277600.974' 
    capture_lex $P5030
    newclosure $P5029, $P5030
    $P5031 = $P5024."add_core_op"("list", $P5029, 1 :named("inlinable"))
.annotate 'line', 603
    get_hll_global $P5035, "GLOBAL"
    nqp_get_package_through_who $P5034, $P5035, "QAST"
    get_who $P5033, $P5034
    set $P5032, $P5033["Operations"]
    unless_null $P5032, fallback351
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5032, $P5036
  fallback351:
    .const 'Sub' $P5038 = 'cuid_181_1346277600.974' 
    capture_lex $P5038
    newclosure $P5037, $P5038
    $P5039 = $P5032."add_core_op"("qlist", $P5037, 1 :named("inlinable"))
.annotate 'line', 619
    get_hll_global $P5043, "GLOBAL"
    nqp_get_package_through_who $P5042, $P5043, "QAST"
    get_who $P5041, $P5042
    set $P5040, $P5041["Operations"]
    unless_null $P5040, fallback360
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5044
  fallback360:
    .const 'Sub' $P5046 = 'cuid_183_1346277600.974' 
    capture_lex $P5046
    newclosure $P5045, $P5046
    $P5047 = $P5040."add_core_op"("list_i", $P5045, 1 :named("inlinable"))
.annotate 'line', 635
    get_hll_global $P5051, "GLOBAL"
    nqp_get_package_through_who $P5050, $P5051, "QAST"
    get_who $P5049, $P5050
    set $P5048, $P5049["Operations"]
    unless_null $P5048, fallback369
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5048, $P5052
  fallback369:
    .const 'Sub' $P5054 = 'cuid_185_1346277600.974' 
    capture_lex $P5054
    newclosure $P5053, $P5054
    $P5055 = $P5048."add_core_op"("list_s", $P5053, 1 :named("inlinable"))
.annotate 'line', 651
    get_hll_global $P5059, "GLOBAL"
    nqp_get_package_through_who $P5058, $P5059, "QAST"
    get_who $P5057, $P5058
    set $P5056, $P5057["Operations"]
    unless_null $P5056, fallback378
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5056, $P5060
  fallback378:
    .const 'Sub' $P5062 = 'cuid_187_1346277600.974' 
    capture_lex $P5062
    newclosure $P5061, $P5062
    $P5063 = $P5056."add_core_op"("list_b", $P5061, 1 :named("inlinable"))
.annotate 'line', 668
    get_hll_global $P5067, "GLOBAL"
    nqp_get_package_through_who $P5066, $P5067, "QAST"
    get_who $P5065, $P5066
    set $P5064, $P5065["Operations"]
    unless_null $P5064, fallback390
    nqp_get_sc_object $P5068, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5064, $P5068
  fallback390:
    .const 'Sub' $P5070 = 'cuid_189_1346277600.974' 
    capture_lex $P5070
    newclosure $P5069, $P5070
    $P5071 = $P5064."add_core_op"("hash", $P5069, 1 :named("inlinable"))
.annotate 'line', 693
    get_hll_global $P5075, "GLOBAL"
    nqp_get_package_through_who $P5074, $P5075, "QAST"
    get_who $P5073, $P5074
    set $P5072, $P5073["Operations"]
    unless_null $P5072, fallback402
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5072, $P5076
  fallback402:
    .const 'Sub' $P5078 = 'cuid_191_1346277600.974' 
    capture_lex $P5078
    newclosure $P5077, $P5078
    $P5079 = $P5072."add_core_op"("chain", $P5077, 1 :named("inlinable"))
.annotate 'line', 735
    get_hll_global $P5083, "GLOBAL"
    nqp_get_package_through_who $P5082, $P5083, "QAST"
    get_who $P5081, $P5082
    set $P5080, $P5081["Operations"]
    unless_null $P5080, fallback426
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5080, $P5084
  fallback426:
    .const 'Sub' $P5086 = 'cuid_192_1346277600.974' 
    capture_lex $P5086
    newclosure $P5085, $P5086
    $P5087 = $P5080."add_core_op"("stmts", $P5085, 1 :named("inlinable"))
    new $P5091, 'ResizablePMCArray'
    box $P5092, "if"
    push $P5091, $P5092
    box $P5093, "unless"
    push $P5091, $P5093
    set $P5088, $P5091
    iter $P5090, $P5091
    new $P5095, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5095, for_handlers492
    push_eh $P5095
  for_next493:
    unless $P5090, for_done495
    shift $P5096, $P5090
  for_redo494:
    .const 'Sub' $P5094 = 'cuid_198_1346277600.974' 
    capture_lex $P5094
    $P5088 = $P5094($P5096)
    goto for_next493
  for_handlers492:
    .get_results ($P5095)
    pop_upto_eh $P5095
    getattribute $P5095, $P5095, 'type'
    eq $P5095, .CONTROL_LOOP_NEXT, for_next493
    eq $P5095, .CONTROL_LOOP_REDO, for_redo494
  for_done495:
    pop_eh 
.annotate 'line', 823
    get_hll_global $P5100, "GLOBAL"
    nqp_get_package_through_who $P5099, $P5100, "QAST"
    get_who $P5098, $P5099
    set $P5097, $P5098["Operations"]
    unless_null $P5097, fallback496
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5097, $P5101
  fallback496:
    .const 'Sub' $P5103 = 'cuid_199_1346277600.974' 
    capture_lex $P5103
    newclosure $P5102, $P5103
    $P5104 = $P5097."add_core_op"("ifnull", $P5102, 1 :named("inlinable"))
    new $P5108, 'ResizablePMCArray'
    box $P5109, ""
    push $P5108, $P5109
    box $P5110, "repeat_"
    push $P5108, $P5110
    set $P5105, $P5108
    iter $P5107, $P5108
    new $P5112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5112, for_handlers575
    push_eh $P5112
  for_next576:
    unless $P5107, for_done578
    shift $P5113, $P5107
  for_redo577:
    .const 'Sub' $P5111 = 'cuid_204_1346277600.974' 
    capture_lex $P5111
    $P5105 = $P5111($P5113)
    goto for_next576
  for_handlers575:
    .get_results ($P5112)
    pop_upto_eh $P5112
    getattribute $P5112, $P5112, 'type'
    eq $P5112, .CONTROL_LOOP_NEXT, for_next576
    eq $P5112, .CONTROL_LOOP_REDO, for_redo577
  for_done578:
    pop_eh 
.annotate 'line', 948
    get_hll_global $P5117, "GLOBAL"
    nqp_get_package_through_who $P5116, $P5117, "QAST"
    get_who $P5115, $P5116
    set $P5114, $P5115["Operations"]
    unless_null $P5114, fallback579
    nqp_get_sc_object $P5118, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5114, $P5118
  fallback579:
    .const 'Sub' $P5120 = 'cuid_206_1346277600.974' 
    capture_lex $P5120
    newclosure $P5119, $P5120
    $P5121 = $P5114."add_core_op"("for", $P5119, 1 :named("inlinable"))
.annotate 'line', 1030
    get_hll_global $P5125, "GLOBAL"
    nqp_get_package_through_who $P5124, $P5125, "QAST"
    get_who $P5123, $P5124
    set $P5122, $P5123["Operations"]
    unless_null $P5122, fallback624
    nqp_get_sc_object $P5126, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5122, $P5126
  fallback624:
    .const 'Sub' $P5128 = 'cuid_207_1346277600.974' 
    capture_lex $P5128
    newclosure $P5127, $P5128
    $P5129 = $P5122."add_core_op"("defor", $P5127, 1 :named("inlinable"))
.annotate 'line', 1051
    get_hll_global $P5133, "GLOBAL"
    nqp_get_package_through_who $P5132, $P5133, "QAST"
    get_who $P5131, $P5132
    set $P5130, $P5131["Operations"]
    unless_null $P5130, fallback637
    nqp_get_sc_object $P5134, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5130, $P5134
  fallback637:
    .const 'Sub' $P5136 = 'cuid_209_1346277600.974' 
    capture_lex $P5136
    newclosure $P5135, $P5136
    $P5137 = $P5130."add_core_op"("xor", $P5135, 1 :named("inlinable"))
.annotate 'line', 1120
    get_hll_global $P5141, "GLOBAL"
    nqp_get_package_through_who $P5140, $P5141, "QAST"
    get_who $P5139, $P5140
    set $P5138, $P5139["Operations"]
    unless_null $P5138, fallback669
    nqp_get_sc_object $P5142, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5138, $P5142
  fallback669:
    .const 'Sub' $P5144 = 'cuid_213_1346277600.974' 
    capture_lex $P5144
    newclosure $P5143, $P5144
    $P5145 = $P5138."add_core_op"("bind", $P5143, 1 :named("inlinable"))
.annotate 'line', 1161
    get_hll_global $P5149, "GLOBAL"
    nqp_get_package_through_who $P5148, $P5149, "QAST"
    get_who $P5147, $P5148
    set $P5146, $P5147["Operations"]
    unless_null $P5146, fallback678
    nqp_get_sc_object $P5150, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5146, $P5150
  fallback678:
    .const 'Sub' $P5152 = 'cuid_215_1346277600.974' 
    capture_lex $P5152
    newclosure $P5151, $P5152
    $P5153 = $P5146."add_core_op"("call", $P5151)
.annotate 'line', 1196
    get_hll_global $P5157, "GLOBAL"
    nqp_get_package_through_who $P5156, $P5157, "QAST"
    get_who $P5155, $P5156
    set $P5154, $P5155["Operations"]
    unless_null $P5154, fallback694
    nqp_get_sc_object $P5158, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5154, $P5158
  fallback694:
    .const 'Sub' $P5160 = 'cuid_217_1346277600.974' 
    capture_lex $P5160
    newclosure $P5159, $P5160
    $P5161 = $P5154."add_core_op"("callmethod", $P5159, 1 :named("inlinable"))
.annotate 'line', 1246
    get_hll_global $P5165, "GLOBAL"
    nqp_get_package_through_who $P5164, $P5165, "QAST"
    get_who $P5163, $P5164
    set $P5162, $P5163["Operations"]
    unless_null $P5162, fallback714
    nqp_get_sc_object $P5166, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5162, $P5166
  fallback714:
    .const 'Sub' $P5168 = 'cuid_219_1346277600.974' 
    capture_lex $P5168
    newclosure $P5167, $P5168
    $P5169 = $P5162."add_core_op"("lexotic", $P5167)
.annotate 'line', 1270
    get_hll_global $P5173, "GLOBAL"
    nqp_get_package_through_who $P5172, $P5173, "QAST"
    get_who $P5171, $P5172
    set $P5170, $P5171["Operations"]
    unless_null $P5170, fallback721
    nqp_get_sc_object $P5174, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5170, $P5174
  fallback721:
    .const 'Sub' $P5176 = 'cuid_220_1346277600.974' 
    capture_lex $P5176
    newclosure $P5175, $P5176
    $P5177 = $P5170."add_core_op"("curlexpad", $P5175)
.annotate 'line', 1278
    get_hll_global $P5181, "GLOBAL"
    nqp_get_package_through_who $P5180, $P5181, "QAST"
    get_who $P5179, $P5180
    set $P5178, $P5179["Operations"]
    unless_null $P5178, fallback726
    nqp_get_sc_object $P5182, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5178, $P5182
  fallback726:
    .const 'Sub' $P5184 = 'cuid_221_1346277600.974' 
    capture_lex $P5184
    newclosure $P5183, $P5184
    $P5185 = $P5178."add_core_op"("curcode", $P5183)
    box $P5186, 0
    set $P104, $P5186
    box $P5187, 1
    set $P105, $P5187
    new $P5188, 'Hash'
    box $P5189, ".CONTROL_ALL"
    set $P5188["CATCH"], $P5189
    box $P5190, ".CONTROL_ALL"
    set $P5188["CONTROL"], $P5190
    box $P5191, ".CONTROL_LOOP_NEXT"
    set $P5188["NEXT"], $P5191
    box $P5192, ".CONTROL_LOOP_LAST"
    set $P5188["LAST"], $P5192
    box $P5193, ".CONTROL_LOOP_REDO"
    set $P5188["REDO"], $P5193
    box $P5194, ".CONTROL_TAKE"
    set $P5188["TAKE"], $P5194
    box $P5195, ".CONTROL_BREAK"
    set $P5188["SUCCEED"], $P5195
    box $P5196, ".CONTROL_CONTINUE"
    set $P5188["PROCEED"], $P5196
    set $P106, $P5188
.annotate 'line', 1300
    get_hll_global $P5200, "GLOBAL"
    nqp_get_package_through_who $P5199, $P5200, "QAST"
    get_who $P5198, $P5199
    set $P5197, $P5198["Operations"]
    unless_null $P5197, fallback731
    nqp_get_sc_object $P5201, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5197, $P5201
  fallback731:
    .const 'Sub' $P5203 = 'cuid_223_1346277600.974' 
    capture_lex $P5203
    newclosure $P5202, $P5203
    $P5204 = $P5197."add_core_op"("handle", $P5202)
.annotate 'line', 1441
    get_hll_global $P5208, "GLOBAL"
    nqp_get_package_through_who $P5207, $P5208, "QAST"
    get_who $P5206, $P5207
    set $P5205, $P5206["Operations"]
    unless_null $P5205, fallback801
    nqp_get_sc_object $P5209, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5205, $P5209
  fallback801:
    .const 'Sub' $P5211 = 'cuid_231_1346277600.974' 
    capture_lex $P5211
    newclosure $P5210, $P5211
    $P5212 = $P5205."add_core_op"("exception", $P5210)
.annotate 'line', 1450
    get_hll_global $P5216, "GLOBAL"
    nqp_get_package_through_who $P5215, $P5216, "QAST"
    get_who $P5214, $P5215
    set $P5213, $P5214["Operations"]
    unless_null $P5213, fallback810
    nqp_get_sc_object $P5217, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5213, $P5217
  fallback810:
    .const 'Sub' $P5219 = 'cuid_232_1346277600.974' 
    capture_lex $P5219
    newclosure $P5218, $P5219
    $P5220 = $P5213."add_core_op"("getpayload", $P5218)
.annotate 'line', 1462
    get_hll_global $P5224, "GLOBAL"
    nqp_get_package_through_who $P5223, $P5224, "QAST"
    get_who $P5222, $P5223
    set $P5221, $P5222["Operations"]
    unless_null $P5221, fallback818
    nqp_get_sc_object $P5225, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5221, $P5225
  fallback818:
    .const 'Sub' $P5227 = 'cuid_233_1346277600.974' 
    capture_lex $P5227
    newclosure $P5226, $P5227
    $P5228 = $P5221."add_core_op"("setpayload", $P5226)
.annotate 'line', 1473
    get_hll_global $P5232, "GLOBAL"
    nqp_get_package_through_who $P5231, $P5232, "QAST"
    get_who $P5230, $P5231
    set $P5229, $P5230["Operations"]
    unless_null $P5229, fallback824
    nqp_get_sc_object $P5233, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5229, $P5233
  fallback824:
    .const 'Sub' $P5235 = 'cuid_234_1346277600.974' 
    capture_lex $P5235
    newclosure $P5234, $P5235
    $P5236 = $P5229."add_core_op"("getmessage", $P5234)
.annotate 'line', 1487
    get_hll_global $P5240, "GLOBAL"
    nqp_get_package_through_who $P5239, $P5240, "QAST"
    get_who $P5238, $P5239
    set $P5237, $P5238["Operations"]
    unless_null $P5237, fallback835
    nqp_get_sc_object $P5241, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5237, $P5241
  fallback835:
    .const 'Sub' $P5243 = 'cuid_235_1346277600.974' 
    capture_lex $P5243
    newclosure $P5242, $P5243
    $P5244 = $P5237."add_core_op"("setmessage", $P5242)
.annotate 'line', 1502
    get_hll_global $P5248, "GLOBAL"
    nqp_get_package_through_who $P5247, $P5248, "QAST"
    get_who $P5246, $P5247
    set $P5245, $P5246["Operations"]
    unless_null $P5245, fallback844
    nqp_get_sc_object $P5249, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5245, $P5249
  fallback844:
    .const 'Sub' $P5251 = 'cuid_236_1346277600.974' 
    capture_lex $P5251
    newclosure $P5250, $P5251
    $P5252 = $P5245."add_core_op"("newexception", $P5250)
.annotate 'line', 1512
    get_hll_global $P5256, "GLOBAL"
    nqp_get_package_through_who $P5255, $P5256, "QAST"
    get_who $P5254, $P5255
    set $P5253, $P5254["Operations"]
    unless_null $P5253, fallback851
    nqp_get_sc_object $P5257, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5253, $P5257
  fallback851:
    $P5258 = $P5253."add_core_pirop_mapping"("die_s", "die", "0s")
.annotate 'line', 1513
    get_hll_global $P5262, "GLOBAL"
    nqp_get_package_through_who $P5261, $P5262, "QAST"
    get_who $P5260, $P5261
    set $P5259, $P5260["Operations"]
    unless_null $P5259, fallback852
    nqp_get_sc_object $P5263, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5259, $P5263
  fallback852:
    $P5264 = $P5259."add_core_pirop_mapping"("die", "die", "0P")
.annotate 'line', 1514
    get_hll_global $P5268, "GLOBAL"
    nqp_get_package_through_who $P5267, $P5268, "QAST"
    get_who $P5266, $P5267
    set $P5265, $P5266["Operations"]
    unless_null $P5265, fallback853
    nqp_get_sc_object $P5269, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5265, $P5269
  fallback853:
    $P5270 = $P5265."add_core_pirop_mapping"("throw", "throw", "0P")
.annotate 'line', 1515
    get_hll_global $P5274, "GLOBAL"
    nqp_get_package_through_who $P5273, $P5274, "QAST"
    get_who $P5272, $P5273
    set $P5271, $P5272["Operations"]
    unless_null $P5271, fallback854
    nqp_get_sc_object $P5275, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5271, $P5275
  fallback854:
    $P5276 = $P5271."add_core_pirop_mapping"("rethrow", "rethrow", "0P")
    new $P5277, 'Hash'
    box $P5278, ".CONTROL_LOOP_NEXT"
    set $P5277["next"], $P5278
    box $P5279, ".CONTROL_LOOP_LAST"
    set $P5277["last"], $P5279
    box $P5280, ".CONTROL_LOOP_REDO"
    set $P5277["redo"], $P5280
    set $P107, $P5277
.annotate 'line', 1523
    get_hll_global $P5284, "GLOBAL"
    nqp_get_package_through_who $P5283, $P5284, "QAST"
    get_who $P5282, $P5283
    set $P5281, $P5282["Operations"]
    unless_null $P5281, fallback855
    nqp_get_sc_object $P5285, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5281, $P5285
  fallback855:
    .const 'Sub' $P5287 = 'cuid_238_1346277600.974' 
    capture_lex $P5287
    newclosure $P5286, $P5287
    $P5288 = $P5281."add_core_op"("control", $P5286)
    new $P5292, 'ResizablePMCArray'
    box $P5293, "i"
    push $P5292, $P5293
    box $P5294, "n"
    push $P5292, $P5294
    box $P5295, "s"
    push $P5292, $P5295
    set $P5289, $P5292
    iter $P5291, $P5292
    new $P5297, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5297, for_handlers865
    push_eh $P5297
  for_next866:
    unless $P5291, for_done868
    shift $P5298, $P5291
  for_redo867:
    .const 'Sub' $P5296 = 'cuid_240_1346277600.974' 
    capture_lex $P5296
    $P5289 = $P5296($P5298)
    goto for_next866
  for_handlers865:
    .get_results ($P5297)
    pop_upto_eh $P5297
    getattribute $P5297, $P5297, 'type'
    eq $P5297, .CONTROL_LOOP_NEXT, for_next866
    eq $P5297, .CONTROL_LOOP_REDO, for_redo867
  for_done868:
    pop_eh 
.annotate 'line', 1546
    get_hll_global $P5302, "GLOBAL"
    nqp_get_package_through_who $P5301, $P5302, "QAST"
    get_who $P5300, $P5301
    set $P5299, $P5300["Operations"]
    unless_null $P5299, fallback869
    nqp_get_sc_object $P5303, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5299, $P5303
  fallback869:
    .const 'Sub' $P5305 = 'cuid_241_1346277600.974' 
    capture_lex $P5305
    newclosure $P5304, $P5305
    $P5306 = $P5299."add_hll_unbox"("nqp", "i", $P5304)
.annotate 'line', 1554
    get_hll_global $P5310, "GLOBAL"
    nqp_get_package_through_who $P5309, $P5310, "QAST"
    get_who $P5308, $P5309
    set $P5307, $P5308["Operations"]
    unless_null $P5307, fallback874
    nqp_get_sc_object $P5311, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5307, $P5311
  fallback874:
    .const 'Sub' $P5313 = 'cuid_242_1346277600.974' 
    capture_lex $P5313
    newclosure $P5312, $P5313
    $P5314 = $P5307."add_hll_unbox"("nqp", "n", $P5312)
.annotate 'line', 1562
    get_hll_global $P5318, "GLOBAL"
    nqp_get_package_through_who $P5317, $P5318, "QAST"
    get_who $P5316, $P5317
    set $P5315, $P5316["Operations"]
    unless_null $P5315, fallback879
    nqp_get_sc_object $P5319, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5315, $P5319
  fallback879:
    .const 'Sub' $P5321 = 'cuid_243_1346277600.974' 
    capture_lex $P5321
    newclosure $P5320, $P5321
    $P5322 = $P5315."add_hll_unbox"("nqp", "s", $P5320)
.annotate 'line', 1572
    get_hll_global $P5326, "GLOBAL"
    nqp_get_package_through_who $P5325, $P5326, "QAST"
    get_who $P5324, $P5325
    set $P5323, $P5324["Operations"]
    unless_null $P5323, fallback884
    nqp_get_sc_object $P5327, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5323, $P5327
  fallback884:
    $P5328 = $P5323."add_core_pirop_mapping"("positional_get", "set", "PQi", 1 :named("inlinable"))
.annotate 'line', 1573
    get_hll_global $P5332, "GLOBAL"
    nqp_get_package_through_who $P5331, $P5332, "QAST"
    get_who $P5330, $P5331
    set $P5329, $P5330["Operations"]
    unless_null $P5329, fallback885
    nqp_get_sc_object $P5333, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5329, $P5333
  fallback885:
    $P5334 = $P5329."add_core_pirop_mapping"("positional_bind", "set", "1QiP", 1 :named("inlinable"))
.annotate 'line', 1574
    get_hll_global $P5338, "GLOBAL"
    nqp_get_package_through_who $P5337, $P5338, "QAST"
    get_who $P5336, $P5337
    set $P5335, $P5336["Operations"]
    unless_null $P5335, fallback886
    nqp_get_sc_object $P5339, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5335, $P5339
  fallback886:
    $P5340 = $P5335."add_core_pirop_mapping"("associative_get", "set", "PQs", 1 :named("inlinable"))
.annotate 'line', 1575
    get_hll_global $P5344, "GLOBAL"
    nqp_get_package_through_who $P5343, $P5344, "QAST"
    get_who $P5342, $P5343
    set $P5341, $P5342["Operations"]
    unless_null $P5341, fallback887
    nqp_get_sc_object $P5345, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5341, $P5345
  fallback887:
    $P5346 = $P5341."add_core_pirop_mapping"("associative_bind", "set", "1QsP", 1 :named("inlinable"))
.annotate 'line', 1578
    get_hll_global $P5350, "GLOBAL"
    nqp_get_package_through_who $P5349, $P5350, "QAST"
    get_who $P5348, $P5349
    set $P5347, $P5348["Operations"]
    unless_null $P5347, fallback888
    nqp_get_sc_object $P5351, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5347, $P5351
  fallback888:
    $P5352 = $P5347."add_core_pirop_mapping"("print", "print", "0s", 1 :named("inlinable"))
.annotate 'line', 1579
    get_hll_global $P5356, "GLOBAL"
    nqp_get_package_through_who $P5355, $P5356, "QAST"
    get_who $P5354, $P5355
    set $P5353, $P5354["Operations"]
    unless_null $P5353, fallback889
    nqp_get_sc_object $P5357, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5353, $P5357
  fallback889:
    $P5358 = $P5353."add_core_pirop_mapping"("say", "say", "0s", 1 :named("inlinable"))
.annotate 'line', 1580
    get_hll_global $P5362, "GLOBAL"
    nqp_get_package_through_who $P5361, $P5362, "QAST"
    get_who $P5360, $P5361
    set $P5359, $P5360["Operations"]
    unless_null $P5359, fallback890
    nqp_get_sc_object $P5363, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5359, $P5363
  fallback890:
    $P5364 = $P5359."add_core_pirop_mapping"("stat", "stat", "Isi", 1 :named("inlinable"))
.annotate 'line', 1581
    get_hll_global $P5368, "GLOBAL"
    nqp_get_package_through_who $P5367, $P5368, "QAST"
    get_who $P5366, $P5367
    set $P5365, $P5366["Operations"]
    unless_null $P5365, fallback891
    nqp_get_sc_object $P5369, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5365, $P5369
  fallback891:
    $P5370 = $P5365."add_core_pirop_mapping"("open", "open", "Pss", 1 :named("inlinable"))
.annotate 'line', 1584
    get_hll_global $P5374, "GLOBAL"
    nqp_get_package_through_who $P5373, $P5374, "QAST"
    get_who $P5372, $P5373
    set $P5371, $P5372["Operations"]
    unless_null $P5371, fallback892
    nqp_get_sc_object $P5375, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5371, $P5375
  fallback892:
    $P5376 = $P5371."add_core_pirop_mapping"("time_i", "time", "I", 1 :named("inlinable"))
.annotate 'line', 1585
    get_hll_global $P5380, "GLOBAL"
    nqp_get_package_through_who $P5379, $P5380, "QAST"
    get_who $P5378, $P5379
    set $P5377, $P5378["Operations"]
    unless_null $P5377, fallback893
    nqp_get_sc_object $P5381, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5377, $P5381
  fallback893:
    $P5382 = $P5377."add_core_pirop_mapping"("time_n", "time", "N", 1 :named("inlinable"))
.annotate 'line', 1588
    get_hll_global $P5386, "GLOBAL"
    nqp_get_package_through_who $P5385, $P5386, "QAST"
    get_who $P5384, $P5385
    set $P5383, $P5384["Operations"]
    unless_null $P5383, fallback894
    nqp_get_sc_object $P5387, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5383, $P5387
  fallback894:
    $P5388 = $P5383."add_core_pirop_mapping"("add_i", "add", "Iii", 1 :named("inlinable"))
.annotate 'line', 1589
    get_hll_global $P5392, "GLOBAL"
    nqp_get_package_through_who $P5391, $P5392, "QAST"
    get_who $P5390, $P5391
    set $P5389, $P5390["Operations"]
    unless_null $P5389, fallback895
    nqp_get_sc_object $P5393, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5389, $P5393
  fallback895:
    $P5394 = $P5389."add_core_pirop_mapping"("add_I", "nqp_bigint_add", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1590
    get_hll_global $P5398, "GLOBAL"
    nqp_get_package_through_who $P5397, $P5398, "QAST"
    get_who $P5396, $P5397
    set $P5395, $P5396["Operations"]
    unless_null $P5395, fallback896
    nqp_get_sc_object $P5399, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5395, $P5399
  fallback896:
    $P5400 = $P5395."add_core_pirop_mapping"("add_n", "add", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1591
    get_hll_global $P5404, "GLOBAL"
    nqp_get_package_through_who $P5403, $P5404, "QAST"
    get_who $P5402, $P5403
    set $P5401, $P5402["Operations"]
    unless_null $P5401, fallback897
    nqp_get_sc_object $P5405, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5401, $P5405
  fallback897:
    $P5406 = $P5401."add_core_pirop_mapping"("sub_i", "sub", "Iii", 1 :named("inlinable"))
.annotate 'line', 1592
    get_hll_global $P5410, "GLOBAL"
    nqp_get_package_through_who $P5409, $P5410, "QAST"
    get_who $P5408, $P5409
    set $P5407, $P5408["Operations"]
    unless_null $P5407, fallback898
    nqp_get_sc_object $P5411, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5407, $P5411
  fallback898:
    $P5412 = $P5407."add_core_pirop_mapping"("sub_I", "nqp_bigint_sub", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1593
    get_hll_global $P5416, "GLOBAL"
    nqp_get_package_through_who $P5415, $P5416, "QAST"
    get_who $P5414, $P5415
    set $P5413, $P5414["Operations"]
    unless_null $P5413, fallback899
    nqp_get_sc_object $P5417, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5413, $P5417
  fallback899:
    $P5418 = $P5413."add_core_pirop_mapping"("sub_n", "sub", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1594
    get_hll_global $P5422, "GLOBAL"
    nqp_get_package_through_who $P5421, $P5422, "QAST"
    get_who $P5420, $P5421
    set $P5419, $P5420["Operations"]
    unless_null $P5419, fallback900
    nqp_get_sc_object $P5423, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5419, $P5423
  fallback900:
    $P5424 = $P5419."add_core_pirop_mapping"("mul_i", "mul", "Iii", 1 :named("inlinable"))
.annotate 'line', 1595
    get_hll_global $P5428, "GLOBAL"
    nqp_get_package_through_who $P5427, $P5428, "QAST"
    get_who $P5426, $P5427
    set $P5425, $P5426["Operations"]
    unless_null $P5425, fallback901
    nqp_get_sc_object $P5429, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5425, $P5429
  fallback901:
    $P5430 = $P5425."add_core_pirop_mapping"("mul_I", "nqp_bigint_mul", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1596
    get_hll_global $P5434, "GLOBAL"
    nqp_get_package_through_who $P5433, $P5434, "QAST"
    get_who $P5432, $P5433
    set $P5431, $P5432["Operations"]
    unless_null $P5431, fallback902
    nqp_get_sc_object $P5435, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5431, $P5435
  fallback902:
    $P5436 = $P5431."add_core_pirop_mapping"("mul_n", "mul", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1597
    get_hll_global $P5440, "GLOBAL"
    nqp_get_package_through_who $P5439, $P5440, "QAST"
    get_who $P5438, $P5439
    set $P5437, $P5438["Operations"]
    unless_null $P5437, fallback903
    nqp_get_sc_object $P5441, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5437, $P5441
  fallback903:
    $P5442 = $P5437."add_core_pirop_mapping"("div_i", "div", "Iii", 1 :named("inlinable"))
.annotate 'line', 1598
    get_hll_global $P5446, "GLOBAL"
    nqp_get_package_through_who $P5445, $P5446, "QAST"
    get_who $P5444, $P5445
    set $P5443, $P5444["Operations"]
    unless_null $P5443, fallback904
    nqp_get_sc_object $P5447, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5443, $P5447
  fallback904:
    $P5448 = $P5443."add_core_pirop_mapping"("div_I", "nqp_bigint_div", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1599
    get_hll_global $P5452, "GLOBAL"
    nqp_get_package_through_who $P5451, $P5452, "QAST"
    get_who $P5450, $P5451
    set $P5449, $P5450["Operations"]
    unless_null $P5449, fallback905
    nqp_get_sc_object $P5453, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5449, $P5453
  fallback905:
    $P5454 = $P5449."add_core_pirop_mapping"("div_In", "nqp_bigint_div_num", "NPP", 1 :named("inlinable"))
.annotate 'line', 1600
    get_hll_global $P5458, "GLOBAL"
    nqp_get_package_through_who $P5457, $P5458, "QAST"
    get_who $P5456, $P5457
    set $P5455, $P5456["Operations"]
    unless_null $P5455, fallback906
    nqp_get_sc_object $P5459, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5455, $P5459
  fallback906:
    $P5460 = $P5455."add_core_pirop_mapping"("div_n", "div", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1601
    get_hll_global $P5464, "GLOBAL"
    nqp_get_package_through_who $P5463, $P5464, "QAST"
    get_who $P5462, $P5463
    set $P5461, $P5462["Operations"]
    unless_null $P5461, fallback907
    nqp_get_sc_object $P5465, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5461, $P5465
  fallback907:
    $P5466 = $P5461."add_core_pirop_mapping"("mod_i", "mod", "Iii", 1 :named("inlinable"))
.annotate 'line', 1602
    get_hll_global $P5470, "GLOBAL"
    nqp_get_package_through_who $P5469, $P5470, "QAST"
    get_who $P5468, $P5469
    set $P5467, $P5468["Operations"]
    unless_null $P5467, fallback908
    nqp_get_sc_object $P5471, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5467, $P5471
  fallback908:
    $P5472 = $P5467."add_core_pirop_mapping"("mod_I", "nqp_bigint_mod", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1603
    get_hll_global $P5476, "GLOBAL"
    nqp_get_package_through_who $P5475, $P5476, "QAST"
    get_who $P5474, $P5475
    set $P5473, $P5474["Operations"]
    unless_null $P5473, fallback909
    nqp_get_sc_object $P5477, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5473, $P5477
  fallback909:
    $P5478 = $P5473."add_core_pirop_mapping"("expmod_I", "nqp_bigint_exp_mod", "PPPPP", 1 :named("inlinable"))
.annotate 'line', 1604
    get_hll_global $P5482, "GLOBAL"
    nqp_get_package_through_who $P5481, $P5482, "QAST"
    get_who $P5480, $P5481
    set $P5479, $P5480["Operations"]
    unless_null $P5479, fallback910
    nqp_get_sc_object $P5483, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5479, $P5483
  fallback910:
    $P5484 = $P5479."add_core_pirop_mapping"("mod_n", "mod", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1605
    get_hll_global $P5488, "GLOBAL"
    nqp_get_package_through_who $P5487, $P5488, "QAST"
    get_who $P5486, $P5487
    set $P5485, $P5486["Operations"]
    unless_null $P5485, fallback911
    nqp_get_sc_object $P5489, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5485, $P5489
  fallback911:
    $P5490 = $P5485."add_core_pirop_mapping"("pow_n", "pow", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1606
    get_hll_global $P5494, "GLOBAL"
    nqp_get_package_through_who $P5493, $P5494, "QAST"
    get_who $P5492, $P5493
    set $P5491, $P5492["Operations"]
    unless_null $P5491, fallback912
    nqp_get_sc_object $P5495, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5491, $P5495
  fallback912:
    $P5496 = $P5491."add_core_pirop_mapping"("pow_I", "nqp_bigint_pow", "PPPPP", 1 :named("inlinable"))
.annotate 'line', 1607
    get_hll_global $P5500, "GLOBAL"
    nqp_get_package_through_who $P5499, $P5500, "QAST"
    get_who $P5498, $P5499
    set $P5497, $P5498["Operations"]
    unless_null $P5497, fallback913
    nqp_get_sc_object $P5501, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5497, $P5501
  fallback913:
    $P5502 = $P5497."add_core_pirop_mapping"("neg_i", "neg", "Ii", 1 :named("inlinable"))
.annotate 'line', 1608
    get_hll_global $P5506, "GLOBAL"
    nqp_get_package_through_who $P5505, $P5506, "QAST"
    get_who $P5504, $P5505
    set $P5503, $P5504["Operations"]
    unless_null $P5503, fallback914
    nqp_get_sc_object $P5507, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5503, $P5507
  fallback914:
    $P5508 = $P5503."add_core_pirop_mapping"("neg_I", "nqp_bigint_neg", "PPP", 1 :named("inlinable"))
.annotate 'line', 1609
    get_hll_global $P5512, "GLOBAL"
    nqp_get_package_through_who $P5511, $P5512, "QAST"
    get_who $P5510, $P5511
    set $P5509, $P5510["Operations"]
    unless_null $P5509, fallback915
    nqp_get_sc_object $P5513, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5509, $P5513
  fallback915:
    $P5514 = $P5509."add_core_pirop_mapping"("neg_n", "neg", "Nn", 1 :named("inlinable"))
.annotate 'line', 1610
    get_hll_global $P5518, "GLOBAL"
    nqp_get_package_through_who $P5517, $P5518, "QAST"
    get_who $P5516, $P5517
    set $P5515, $P5516["Operations"]
    unless_null $P5515, fallback916
    nqp_get_sc_object $P5519, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5515, $P5519
  fallback916:
    $P5520 = $P5515."add_core_pirop_mapping"("abs_i", "abs", "Ii", 1 :named("inlinable"))
.annotate 'line', 1611
    get_hll_global $P5524, "GLOBAL"
    nqp_get_package_through_who $P5523, $P5524, "QAST"
    get_who $P5522, $P5523
    set $P5521, $P5522["Operations"]
    unless_null $P5521, fallback917
    nqp_get_sc_object $P5525, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5521, $P5525
  fallback917:
    $P5526 = $P5521."add_core_pirop_mapping"("abs_I", "nqp_bigint_abs", "PPP", 1 :named("inlinable"))
.annotate 'line', 1612
    get_hll_global $P5530, "GLOBAL"
    nqp_get_package_through_who $P5529, $P5530, "QAST"
    get_who $P5528, $P5529
    set $P5527, $P5528["Operations"]
    unless_null $P5527, fallback918
    nqp_get_sc_object $P5531, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5527, $P5531
  fallback918:
    $P5532 = $P5527."add_core_pirop_mapping"("abs_n", "abs", "Nn", 1 :named("inlinable"))
.annotate 'line', 1614
    get_hll_global $P5536, "GLOBAL"
    nqp_get_package_through_who $P5535, $P5536, "QAST"
    get_who $P5534, $P5535
    set $P5533, $P5534["Operations"]
    unless_null $P5533, fallback919
    nqp_get_sc_object $P5537, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5533, $P5537
  fallback919:
    $P5538 = $P5533."add_core_pirop_mapping"("gcd_i", "gcd", "Ii", 1 :named("inlinable"))
.annotate 'line', 1615
    get_hll_global $P5542, "GLOBAL"
    nqp_get_package_through_who $P5541, $P5542, "QAST"
    get_who $P5540, $P5541
    set $P5539, $P5540["Operations"]
    unless_null $P5539, fallback920
    nqp_get_sc_object $P5543, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5539, $P5543
  fallback920:
    $P5544 = $P5539."add_core_pirop_mapping"("gcd_I", "nqp_bigint_gcd", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1616
    get_hll_global $P5548, "GLOBAL"
    nqp_get_package_through_who $P5547, $P5548, "QAST"
    get_who $P5546, $P5547
    set $P5545, $P5546["Operations"]
    unless_null $P5545, fallback921
    nqp_get_sc_object $P5549, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5545, $P5549
  fallback921:
    $P5550 = $P5545."add_core_pirop_mapping"("lcm_i", "lcm", "Ii", 1 :named("inlinable"))
.annotate 'line', 1617
    get_hll_global $P5554, "GLOBAL"
    nqp_get_package_through_who $P5553, $P5554, "QAST"
    get_who $P5552, $P5553
    set $P5551, $P5552["Operations"]
    unless_null $P5551, fallback922
    nqp_get_sc_object $P5555, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5551, $P5555
  fallback922:
    $P5556 = $P5551."add_core_pirop_mapping"("lcm_I", "nqp_bigint_lcm", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1619
    get_hll_global $P5560, "GLOBAL"
    nqp_get_package_through_who $P5559, $P5560, "QAST"
    get_who $P5558, $P5559
    set $P5557, $P5558["Operations"]
    unless_null $P5557, fallback923
    nqp_get_sc_object $P5561, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5557, $P5561
  fallback923:
    $P5562 = $P5557."add_core_pirop_mapping"("ceil_n", "ceil", "Nn", 1 :named("inlinable"))
.annotate 'line', 1620
    get_hll_global $P5566, "GLOBAL"
    nqp_get_package_through_who $P5565, $P5566, "QAST"
    get_who $P5564, $P5565
    set $P5563, $P5564["Operations"]
    unless_null $P5563, fallback924
    nqp_get_sc_object $P5567, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5563, $P5567
  fallback924:
    $P5568 = $P5563."add_core_pirop_mapping"("floor_n", "floor", "NN", 1 :named("inlinable"))
.annotate 'line', 1621
    get_hll_global $P5572, "GLOBAL"
    nqp_get_package_through_who $P5571, $P5572, "QAST"
    get_who $P5570, $P5571
    set $P5569, $P5570["Operations"]
    unless_null $P5569, fallback925
    nqp_get_sc_object $P5573, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5569, $P5573
  fallback925:
    $P5574 = $P5569."add_core_pirop_mapping"("ln_n", "ln", "Nn", 1 :named("inlinable"))
.annotate 'line', 1622
    get_hll_global $P5578, "GLOBAL"
    nqp_get_package_through_who $P5577, $P5578, "QAST"
    get_who $P5576, $P5577
    set $P5575, $P5576["Operations"]
    unless_null $P5575, fallback926
    nqp_get_sc_object $P5579, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5575, $P5579
  fallback926:
    $P5580 = $P5575."add_core_pirop_mapping"("sqrt_n", "sqrt", "Nn", 1 :named("inlinable"))
.annotate 'line', 1623
    get_hll_global $P5584, "GLOBAL"
    nqp_get_package_through_who $P5583, $P5584, "QAST"
    get_who $P5582, $P5583
    set $P5581, $P5582["Operations"]
    unless_null $P5581, fallback927
    nqp_get_sc_object $P5585, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5581, $P5585
  fallback927:
    $P5586 = $P5581."add_core_pirop_mapping"("radix", "nqp_radix", "Pisii", 1 :named("inlinable"))
.annotate 'line', 1624
    get_hll_global $P5590, "GLOBAL"
    nqp_get_package_through_who $P5589, $P5590, "QAST"
    get_who $P5588, $P5589
    set $P5587, $P5588["Operations"]
    unless_null $P5587, fallback928
    nqp_get_sc_object $P5591, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5587, $P5591
  fallback928:
    $P5592 = $P5587."add_core_pirop_mapping"("radix_I", "nqp_bigint_radix", "PisiiP", 1 :named("inlinable"))
.annotate 'line', 1625
    get_hll_global $P5596, "GLOBAL"
    nqp_get_package_through_who $P5595, $P5596, "QAST"
    get_who $P5594, $P5595
    set $P5593, $P5594["Operations"]
    unless_null $P5593, fallback929
    nqp_get_sc_object $P5597, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5593, $P5597
  fallback929:
    $P5598 = $P5593."add_core_pirop_mapping"("log_n", "ln", "NN", 1 :named("inlinable"))
.annotate 'line', 1626
    get_hll_global $P5602, "GLOBAL"
    nqp_get_package_through_who $P5601, $P5602, "QAST"
    get_who $P5600, $P5601
    set $P5599, $P5600["Operations"]
    unless_null $P5599, fallback930
    nqp_get_sc_object $P5603, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5599, $P5603
  fallback930:
    $P5604 = $P5599."add_core_pirop_mapping"("exp_n", "exp", "Nn", 1 :named("inlinable"))
.annotate 'line', 1627
    get_hll_global $P5608, "GLOBAL"
    nqp_get_package_through_who $P5607, $P5608, "QAST"
    get_who $P5606, $P5607
    set $P5605, $P5606["Operations"]
    unless_null $P5605, fallback931
    nqp_get_sc_object $P5609, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5605, $P5609
  fallback931:
    $P5610 = $P5605."add_core_pirop_mapping"("isnanorinf", "is_inf_or_nan", "In", 1 :named("inlinable"))
.annotate 'line', 1630
    get_hll_global $P5614, "GLOBAL"
    nqp_get_package_through_who $P5613, $P5614, "QAST"
    get_who $P5612, $P5613
    set $P5611, $P5612["Operations"]
    unless_null $P5611, fallback932
    nqp_get_sc_object $P5615, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5611, $P5615
  fallback932:
    $P5616 = $P5611."add_core_pirop_mapping"("sin_n", "sin", "NN", 1 :named("inlinable"))
.annotate 'line', 1631
    get_hll_global $P5620, "GLOBAL"
    nqp_get_package_through_who $P5619, $P5620, "QAST"
    get_who $P5618, $P5619
    set $P5617, $P5618["Operations"]
    unless_null $P5617, fallback933
    nqp_get_sc_object $P5621, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5617, $P5621
  fallback933:
    $P5622 = $P5617."add_core_pirop_mapping"("asin_n", "asin", "NN", 1 :named("inlinable"))
.annotate 'line', 1632
    get_hll_global $P5626, "GLOBAL"
    nqp_get_package_through_who $P5625, $P5626, "QAST"
    get_who $P5624, $P5625
    set $P5623, $P5624["Operations"]
    unless_null $P5623, fallback934
    nqp_get_sc_object $P5627, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5623, $P5627
  fallback934:
    $P5628 = $P5623."add_core_pirop_mapping"("cos_n", "cos", "NN", 1 :named("inlinable"))
.annotate 'line', 1633
    get_hll_global $P5632, "GLOBAL"
    nqp_get_package_through_who $P5631, $P5632, "QAST"
    get_who $P5630, $P5631
    set $P5629, $P5630["Operations"]
    unless_null $P5629, fallback935
    nqp_get_sc_object $P5633, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5629, $P5633
  fallback935:
    $P5634 = $P5629."add_core_pirop_mapping"("acos_n", "acos", "NN", 1 :named("inlinable"))
.annotate 'line', 1634
    get_hll_global $P5638, "GLOBAL"
    nqp_get_package_through_who $P5637, $P5638, "QAST"
    get_who $P5636, $P5637
    set $P5635, $P5636["Operations"]
    unless_null $P5635, fallback936
    nqp_get_sc_object $P5639, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5635, $P5639
  fallback936:
    $P5640 = $P5635."add_core_pirop_mapping"("tan_n", "tan", "NN", 1 :named("inlinable"))
.annotate 'line', 1635
    get_hll_global $P5644, "GLOBAL"
    nqp_get_package_through_who $P5643, $P5644, "QAST"
    get_who $P5642, $P5643
    set $P5641, $P5642["Operations"]
    unless_null $P5641, fallback937
    nqp_get_sc_object $P5645, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5641, $P5645
  fallback937:
    $P5646 = $P5641."add_core_pirop_mapping"("atan_n", "atan", "NN", 1 :named("inlinable"))
.annotate 'line', 1636
    get_hll_global $P5650, "GLOBAL"
    nqp_get_package_through_who $P5649, $P5650, "QAST"
    get_who $P5648, $P5649
    set $P5647, $P5648["Operations"]
    unless_null $P5647, fallback938
    nqp_get_sc_object $P5651, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5647, $P5651
  fallback938:
    $P5652 = $P5647."add_core_pirop_mapping"("atan2_n", "atan", "NNN", 1 :named("inlinable"))
.annotate 'line', 1637
    get_hll_global $P5656, "GLOBAL"
    nqp_get_package_through_who $P5655, $P5656, "QAST"
    get_who $P5654, $P5655
    set $P5653, $P5654["Operations"]
    unless_null $P5653, fallback939
    nqp_get_sc_object $P5657, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5653, $P5657
  fallback939:
    $P5658 = $P5653."add_core_pirop_mapping"("sec_n", "sec", "NN", 1 :named("inlinable"))
.annotate 'line', 1638
    get_hll_global $P5662, "GLOBAL"
    nqp_get_package_through_who $P5661, $P5662, "QAST"
    get_who $P5660, $P5661
    set $P5659, $P5660["Operations"]
    unless_null $P5659, fallback940
    nqp_get_sc_object $P5663, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5659, $P5663
  fallback940:
    $P5664 = $P5659."add_core_pirop_mapping"("asec_n", "asec", "NN", 1 :named("inlinable"))
.annotate 'line', 1639
    get_hll_global $P5668, "GLOBAL"
    nqp_get_package_through_who $P5667, $P5668, "QAST"
    get_who $P5666, $P5667
    set $P5665, $P5666["Operations"]
    unless_null $P5665, fallback941
    nqp_get_sc_object $P5669, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5665, $P5669
  fallback941:
    $P5670 = $P5665."add_core_pirop_mapping"("sin_n", "sin", "NN", 1 :named("inlinable"))
.annotate 'line', 1640
    get_hll_global $P5674, "GLOBAL"
    nqp_get_package_through_who $P5673, $P5674, "QAST"
    get_who $P5672, $P5673
    set $P5671, $P5672["Operations"]
    unless_null $P5671, fallback942
    nqp_get_sc_object $P5675, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5671, $P5675
  fallback942:
    $P5676 = $P5671."add_core_pirop_mapping"("asin_n", "asin", "NN", 1 :named("inlinable"))
.annotate 'line', 1641
    get_hll_global $P5680, "GLOBAL"
    nqp_get_package_through_who $P5679, $P5680, "QAST"
    get_who $P5678, $P5679
    set $P5677, $P5678["Operations"]
    unless_null $P5677, fallback943
    nqp_get_sc_object $P5681, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5677, $P5681
  fallback943:
    $P5682 = $P5677."add_core_pirop_mapping"("sinh_n", "sinh", "NN", 1 :named("inlinable"))
.annotate 'line', 1642
    get_hll_global $P5686, "GLOBAL"
    nqp_get_package_through_who $P5685, $P5686, "QAST"
    get_who $P5684, $P5685
    set $P5683, $P5684["Operations"]
    unless_null $P5683, fallback944
    nqp_get_sc_object $P5687, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5683, $P5687
  fallback944:
    $P5688 = $P5683."add_core_pirop_mapping"("cosh_n", "cosh", "NN", 1 :named("inlinable"))
.annotate 'line', 1643
    get_hll_global $P5692, "GLOBAL"
    nqp_get_package_through_who $P5691, $P5692, "QAST"
    get_who $P5690, $P5691
    set $P5689, $P5690["Operations"]
    unless_null $P5689, fallback945
    nqp_get_sc_object $P5693, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5689, $P5693
  fallback945:
    $P5694 = $P5689."add_core_pirop_mapping"("tanh_n", "tanh", "NN", 1 :named("inlinable"))
.annotate 'line', 1644
    get_hll_global $P5698, "GLOBAL"
    nqp_get_package_through_who $P5697, $P5698, "QAST"
    get_who $P5696, $P5697
    set $P5695, $P5696["Operations"]
    unless_null $P5695, fallback946
    nqp_get_sc_object $P5699, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5695, $P5699
  fallback946:
    $P5700 = $P5695."add_core_pirop_mapping"("sech_n", "sech", "NN", 1 :named("inlinable"))
.annotate 'line', 1647
    get_hll_global $P5704, "GLOBAL"
    nqp_get_package_through_who $P5703, $P5704, "QAST"
    get_who $P5702, $P5703
    set $P5701, $P5702["Operations"]
    unless_null $P5701, fallback947
    nqp_get_sc_object $P5705, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5701, $P5705
  fallback947:
    $P5706 = $P5701."add_core_pirop_mapping"("bitor_i", "bor", "Iii", 1 :named("inlinable"))
.annotate 'line', 1648
    get_hll_global $P5710, "GLOBAL"
    nqp_get_package_through_who $P5709, $P5710, "QAST"
    get_who $P5708, $P5709
    set $P5707, $P5708["Operations"]
    unless_null $P5707, fallback948
    nqp_get_sc_object $P5711, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5707, $P5711
  fallback948:
    $P5712 = $P5707."add_core_pirop_mapping"("bitor_I", "nqp_bigint_bor", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1649
    get_hll_global $P5716, "GLOBAL"
    nqp_get_package_through_who $P5715, $P5716, "QAST"
    get_who $P5714, $P5715
    set $P5713, $P5714["Operations"]
    unless_null $P5713, fallback949
    nqp_get_sc_object $P5717, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5713, $P5717
  fallback949:
    $P5718 = $P5713."add_core_pirop_mapping"("bitxor_i", "bxor", "Iii", 1 :named("inlinable"))
.annotate 'line', 1650
    get_hll_global $P5722, "GLOBAL"
    nqp_get_package_through_who $P5721, $P5722, "QAST"
    get_who $P5720, $P5721
    set $P5719, $P5720["Operations"]
    unless_null $P5719, fallback950
    nqp_get_sc_object $P5723, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5719, $P5723
  fallback950:
    $P5724 = $P5719."add_core_pirop_mapping"("bitxor_I", "nqp_bigint_bxor", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1651
    get_hll_global $P5728, "GLOBAL"
    nqp_get_package_through_who $P5727, $P5728, "QAST"
    get_who $P5726, $P5727
    set $P5725, $P5726["Operations"]
    unless_null $P5725, fallback951
    nqp_get_sc_object $P5729, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5725, $P5729
  fallback951:
    $P5730 = $P5725."add_core_pirop_mapping"("bitand_i", "band", "Iii", 1 :named("inlinable"))
.annotate 'line', 1652
    get_hll_global $P5734, "GLOBAL"
    nqp_get_package_through_who $P5733, $P5734, "QAST"
    get_who $P5732, $P5733
    set $P5731, $P5732["Operations"]
    unless_null $P5731, fallback952
    nqp_get_sc_object $P5735, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5731, $P5735
  fallback952:
    $P5736 = $P5731."add_core_pirop_mapping"("bitand_I", "nqp_bigint_band", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1653
    get_hll_global $P5740, "GLOBAL"
    nqp_get_package_through_who $P5739, $P5740, "QAST"
    get_who $P5738, $P5739
    set $P5737, $P5738["Operations"]
    unless_null $P5737, fallback953
    nqp_get_sc_object $P5741, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5737, $P5741
  fallback953:
    $P5742 = $P5737."add_core_pirop_mapping"("bitneg_i", "bnot", "Ii", 1 :named("inlinable"))
.annotate 'line', 1654
    get_hll_global $P5746, "GLOBAL"
    nqp_get_package_through_who $P5745, $P5746, "QAST"
    get_who $P5744, $P5745
    set $P5743, $P5744["Operations"]
    unless_null $P5743, fallback954
    nqp_get_sc_object $P5747, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5743, $P5747
  fallback954:
    $P5748 = $P5743."add_core_pirop_mapping"("bitneg_I", "nqp_bigint_bnot", "PPP", 1 :named("inlinable"))
.annotate 'line', 1655
    get_hll_global $P5752, "GLOBAL"
    nqp_get_package_through_who $P5751, $P5752, "QAST"
    get_who $P5750, $P5751
    set $P5749, $P5750["Operations"]
    unless_null $P5749, fallback955
    nqp_get_sc_object $P5753, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5749, $P5753
  fallback955:
    $P5754 = $P5749."add_core_pirop_mapping"("bitshiftl_i", "shl", "Iii", 1 :named("inlinable"))
.annotate 'line', 1656
    get_hll_global $P5758, "GLOBAL"
    nqp_get_package_through_who $P5757, $P5758, "QAST"
    get_who $P5756, $P5757
    set $P5755, $P5756["Operations"]
    unless_null $P5755, fallback956
    nqp_get_sc_object $P5759, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5755, $P5759
  fallback956:
    $P5760 = $P5755."add_core_pirop_mapping"("bitshiftl_I", "nqp_bigint_shl", "PPIP", 1 :named("inlinable"))
.annotate 'line', 1657
    get_hll_global $P5764, "GLOBAL"
    nqp_get_package_through_who $P5763, $P5764, "QAST"
    get_who $P5762, $P5763
    set $P5761, $P5762["Operations"]
    unless_null $P5761, fallback957
    nqp_get_sc_object $P5765, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5761, $P5765
  fallback957:
    $P5766 = $P5761."add_core_pirop_mapping"("bitshiftr_i", "shr", "Iii", 1 :named("inlinable"))
.annotate 'line', 1658
    get_hll_global $P5770, "GLOBAL"
    nqp_get_package_through_who $P5769, $P5770, "QAST"
    get_who $P5768, $P5769
    set $P5767, $P5768["Operations"]
    unless_null $P5767, fallback958
    nqp_get_sc_object $P5771, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5767, $P5771
  fallback958:
    $P5772 = $P5767."add_core_pirop_mapping"("bitshiftr_I", "nqp_bigint_shr", "PPIP", 1 :named("inlinable"))
.annotate 'line', 1661
    get_hll_global $P5776, "GLOBAL"
    nqp_get_package_through_who $P5775, $P5776, "QAST"
    get_who $P5774, $P5775
    set $P5773, $P5774["Operations"]
    unless_null $P5773, fallback959
    nqp_get_sc_object $P5777, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5773, $P5777
  fallback959:
    $P5778 = $P5773."add_core_pirop_mapping"("bitor_s", "bors", "Sss", 1 :named("inlinable"))
.annotate 'line', 1662
    get_hll_global $P5782, "GLOBAL"
    nqp_get_package_through_who $P5781, $P5782, "QAST"
    get_who $P5780, $P5781
    set $P5779, $P5780["Operations"]
    unless_null $P5779, fallback960
    nqp_get_sc_object $P5783, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5779, $P5783
  fallback960:
    $P5784 = $P5779."add_core_pirop_mapping"("bitxor_s", "bxors", "Sss", 1 :named("inlinable"))
.annotate 'line', 1663
    get_hll_global $P5788, "GLOBAL"
    nqp_get_package_through_who $P5787, $P5788, "QAST"
    get_who $P5786, $P5787
    set $P5785, $P5786["Operations"]
    unless_null $P5785, fallback961
    nqp_get_sc_object $P5789, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5785, $P5789
  fallback961:
    $P5790 = $P5785."add_core_pirop_mapping"("bitand_s", "bands", "Sss", 1 :named("inlinable"))
.annotate 'line', 1666
    get_hll_global $P5794, "GLOBAL"
    nqp_get_package_through_who $P5793, $P5794, "QAST"
    get_who $P5792, $P5793
    set $P5791, $P5792["Operations"]
    unless_null $P5791, fallback962
    nqp_get_sc_object $P5795, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5791, $P5795
  fallback962:
    $P5796 = $P5791."add_core_pirop_mapping"("chars", "length", "Is", 1 :named("inlinable"))
.annotate 'line', 1667
    get_hll_global $P5800, "GLOBAL"
    nqp_get_package_through_who $P5799, $P5800, "QAST"
    get_who $P5798, $P5799
    set $P5797, $P5798["Operations"]
    unless_null $P5797, fallback963
    nqp_get_sc_object $P5801, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5797, $P5801
  fallback963:
    $P5802 = $P5797."add_core_pirop_mapping"("concat", "concat", "Sss", 1 :named("inlinable"))
.annotate 'line', 1668
    get_hll_global $P5806, "GLOBAL"
    nqp_get_package_through_who $P5805, $P5806, "QAST"
    get_who $P5804, $P5805
    set $P5803, $P5804["Operations"]
    unless_null $P5803, fallback964
    nqp_get_sc_object $P5807, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5803, $P5807
  fallback964:
    $P5808 = $P5803."add_core_pirop_mapping"("concat_s", "concat", "Sss", 1 :named("inlinable"))
.annotate 'line', 1669
    get_hll_global $P5812, "GLOBAL"
    nqp_get_package_through_who $P5811, $P5812, "QAST"
    get_who $P5810, $P5811
    set $P5809, $P5810["Operations"]
    unless_null $P5809, fallback965
    nqp_get_sc_object $P5813, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5809, $P5813
  fallback965:
    $P5814 = $P5809."add_core_pirop_mapping"("join", "join", "SsP", 1 :named("inlinable"))
.annotate 'line', 1670
    get_hll_global $P5818, "GLOBAL"
    nqp_get_package_through_who $P5817, $P5818, "QAST"
    get_who $P5816, $P5817
    set $P5815, $P5816["Operations"]
    unless_null $P5815, fallback966
    nqp_get_sc_object $P5819, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5815, $P5819
  fallback966:
    $P5820 = $P5815."add_core_pirop_mapping"("split", "split", "Pss", 1 :named("inlinable"))
.annotate 'line', 1671
    get_hll_global $P5824, "GLOBAL"
    nqp_get_package_through_who $P5823, $P5824, "QAST"
    get_who $P5822, $P5823
    set $P5821, $P5822["Operations"]
    unless_null $P5821, fallback967
    nqp_get_sc_object $P5825, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5821, $P5825
  fallback967:
    $P5826 = $P5821."add_core_pirop_mapping"("chr", "chr", "Si", 1 :named("inlinable"))
.annotate 'line', 1672
    get_hll_global $P5830, "GLOBAL"
    nqp_get_package_through_who $P5829, $P5830, "QAST"
    get_who $P5828, $P5829
    set $P5827, $P5828["Operations"]
    unless_null $P5827, fallback968
    nqp_get_sc_object $P5831, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5827, $P5831
  fallback968:
    $P5832 = $P5827."add_core_pirop_mapping"("lc", "downcase", "Ss", 1 :named("inlinable"))
.annotate 'line', 1673
    get_hll_global $P5836, "GLOBAL"
    nqp_get_package_through_who $P5835, $P5836, "QAST"
    get_who $P5834, $P5835
    set $P5833, $P5834["Operations"]
    unless_null $P5833, fallback969
    nqp_get_sc_object $P5837, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5833, $P5837
  fallback969:
    $P5838 = $P5833."add_core_pirop_mapping"("uc", "upcase", "Ss", 1 :named("inlinable"))
.annotate 'line', 1674
    get_hll_global $P5842, "GLOBAL"
    nqp_get_package_through_who $P5841, $P5842, "QAST"
    get_who $P5840, $P5841
    set $P5839, $P5840["Operations"]
    unless_null $P5839, fallback970
    nqp_get_sc_object $P5843, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5839, $P5843
  fallback970:
    $P5844 = $P5839."add_core_pirop_mapping"("x", "repeat", "Ssi", 1 :named("inlinable"))
.annotate 'line', 1675
    get_hll_global $P5848, "GLOBAL"
    nqp_get_package_through_who $P5847, $P5848, "QAST"
    get_who $P5846, $P5847
    set $P5845, $P5846["Operations"]
    unless_null $P5845, fallback971
    nqp_get_sc_object $P5849, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5845, $P5849
  fallback971:
    $P5850 = $P5845."add_core_pirop_mapping"("iscclass", "is_cclass", "Iisi", 1 :named("inlinable"))
.annotate 'line', 1676
    get_hll_global $P5854, "GLOBAL"
    nqp_get_package_through_who $P5853, $P5854, "QAST"
    get_who $P5852, $P5853
    set $P5851, $P5852["Operations"]
    unless_null $P5851, fallback972
    nqp_get_sc_object $P5855, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5851, $P5855
  fallback972:
    $P5856 = $P5851."add_core_pirop_mapping"("findnotcclass", "find_not_cclass", "Iisii", 1 :named("inlinable"))
.annotate 'line', 1677
    get_hll_global $P5860, "GLOBAL"
    nqp_get_package_through_who $P5859, $P5860, "QAST"
    get_who $P5858, $P5859
    set $P5857, $P5858["Operations"]
    unless_null $P5857, fallback973
    nqp_get_sc_object $P5861, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5857, $P5861
  fallback973:
    $P5862 = $P5857."add_core_pirop_mapping"("sprintf", "sprintf", "SsP", 1 :named("inlinable"))
.annotate 'line', 1680
    get_hll_global $P5866, "GLOBAL"
    nqp_get_package_through_who $P5865, $P5866, "QAST"
    get_who $P5864, $P5865
    set $P5863, $P5864["Operations"]
    unless_null $P5863, fallback974
    nqp_get_sc_object $P5867, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5863, $P5867
  fallback974:
    $P5868 = $P5863."add_core_pirop_mapping"("substr2", "substr", "Ssi", 1 :named("inlinable"))
.annotate 'line', 1681
    get_hll_global $P5872, "GLOBAL"
    nqp_get_package_through_who $P5871, $P5872, "QAST"
    get_who $P5870, $P5871
    set $P5869, $P5870["Operations"]
    unless_null $P5869, fallback975
    nqp_get_sc_object $P5873, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5869, $P5873
  fallback975:
    $P5874 = $P5869."add_core_pirop_mapping"("substr3", "substr", "Ssii", 1 :named("inlinable"))
.annotate 'line', 1682
    get_hll_global $P5878, "GLOBAL"
    nqp_get_package_through_who $P5877, $P5878, "QAST"
    get_who $P5876, $P5877
    set $P5875, $P5876["Operations"]
    unless_null $P5875, fallback976
    nqp_get_sc_object $P5879, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5875, $P5879
  fallback976:
    .const 'Sub' $P5881 = 'cuid_244_1346277600.974' 
    capture_lex $P5881
    newclosure $P5880, $P5881
    $P5882 = $P5875."add_core_op"("substr", $P5880, 1 :named("inlinable"))
.annotate 'line', 1690
    get_hll_global $P5886, "GLOBAL"
    nqp_get_package_through_who $P5885, $P5886, "QAST"
    get_who $P5884, $P5885
    set $P5883, $P5884["Operations"]
    unless_null $P5883, fallback981
    nqp_get_sc_object $P5887, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5883, $P5887
  fallback981:
    $P5888 = $P5883."add_core_pirop_mapping"("ordfirst", "ord", "Is", 1 :named("inlinable"))
.annotate 'line', 1691
    get_hll_global $P5892, "GLOBAL"
    nqp_get_package_through_who $P5891, $P5892, "QAST"
    get_who $P5890, $P5891
    set $P5889, $P5890["Operations"]
    unless_null $P5889, fallback982
    nqp_get_sc_object $P5893, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5889, $P5893
  fallback982:
    $P5894 = $P5889."add_core_pirop_mapping"("ordat", "ord", "Isi", 1 :named("inlinable"))
.annotate 'line', 1692
    get_hll_global $P5898, "GLOBAL"
    nqp_get_package_through_who $P5897, $P5898, "QAST"
    get_who $P5896, $P5897
    set $P5895, $P5896["Operations"]
    unless_null $P5895, fallback983
    nqp_get_sc_object $P5899, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5895, $P5899
  fallback983:
    .const 'Sub' $P5901 = 'cuid_245_1346277600.974' 
    capture_lex $P5901
    newclosure $P5900, $P5901
    $P5902 = $P5895."add_core_op"("ord", $P5900, 1 :named("inlinable"))
.annotate 'line', 1700
    get_hll_global $P5906, "GLOBAL"
    nqp_get_package_through_who $P5905, $P5906, "QAST"
    get_who $P5904, $P5905
    set $P5903, $P5904["Operations"]
    unless_null $P5903, fallback988
    nqp_get_sc_object $P5907, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5903, $P5907
  fallback988:
    $P5908 = $P5903."add_core_pirop_mapping"("indexfrom", "index", "Issi", 1 :named("inlinable"))
.annotate 'line', 1701
    get_hll_global $P5912, "GLOBAL"
    nqp_get_package_through_who $P5911, $P5912, "QAST"
    get_who $P5910, $P5911
    set $P5909, $P5910["Operations"]
    unless_null $P5909, fallback989
    nqp_get_sc_object $P5913, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5909, $P5913
  fallback989:
    .const 'Sub' $P5915 = 'cuid_246_1346277600.974' 
    capture_lex $P5915
    newclosure $P5914, $P5915
    $P5916 = $P5909."add_core_op"("index", $P5914, 1 :named("inlinable"))
.annotate 'line', 1707
    get_hll_global $P5920, "GLOBAL"
    nqp_get_package_through_who $P5919, $P5920, "QAST"
    get_who $P5918, $P5919
    set $P5917, $P5918["Operations"]
    unless_null $P5917, fallback995
    nqp_get_sc_object $P5921, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5917, $P5921
  fallback995:
    $P5922 = $P5917."add_core_pirop_mapping"("rindexfrom", "rindex", "Issi", 1 :named("inlinable"))
.annotate 'line', 1708
    get_hll_global $P5926, "GLOBAL"
    nqp_get_package_through_who $P5925, $P5926, "QAST"
    get_who $P5924, $P5925
    set $P5923, $P5924["Operations"]
    unless_null $P5923, fallback996
    nqp_get_sc_object $P5927, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5923, $P5927
  fallback996:
    $P5928 = $P5923."add_core_pirop_mapping"("rindexfromend", "rindex", "Iss", 1 :named("inlinable"))
.annotate 'line', 1709
    get_hll_global $P5932, "GLOBAL"
    nqp_get_package_through_who $P5931, $P5932, "QAST"
    get_who $P5930, $P5931
    set $P5929, $P5930["Operations"]
    unless_null $P5929, fallback997
    nqp_get_sc_object $P5933, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5929, $P5933
  fallback997:
    .const 'Sub' $P5935 = 'cuid_247_1346277600.974' 
    capture_lex $P5935
    newclosure $P5934, $P5935
    $P5936 = $P5929."add_core_op"("rindex", $P5934, 1 :named("inlinable"))
.annotate 'line', 1717
    get_hll_global $P5940, "GLOBAL"
    nqp_get_package_through_who $P5939, $P5940, "QAST"
    get_who $P5938, $P5939
    set $P5937, $P5938["Operations"]
    unless_null $P5937, fallback1002
    nqp_get_sc_object $P5941, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5937, $P5941
  fallback1002:
    $P5942 = $P5937."add_core_pirop_mapping"("cmp_i", "cmp", "Iii", 1 :named("inlinable"))
.annotate 'line', 1718
    get_hll_global $P5946, "GLOBAL"
    nqp_get_package_through_who $P5945, $P5946, "QAST"
    get_who $P5944, $P5945
    set $P5943, $P5944["Operations"]
    unless_null $P5943, fallback1003
    nqp_get_sc_object $P5947, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5943, $P5947
  fallback1003:
    $P5948 = $P5943."add_core_pirop_mapping"("iseq_i", "iseq", "Iii", 1 :named("inlinable"))
.annotate 'line', 1719
    get_hll_global $P5952, "GLOBAL"
    nqp_get_package_through_who $P5951, $P5952, "QAST"
    get_who $P5950, $P5951
    set $P5949, $P5950["Operations"]
    unless_null $P5949, fallback1004
    nqp_get_sc_object $P5953, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5949, $P5953
  fallback1004:
    $P5954 = $P5949."add_core_pirop_mapping"("isne_i", "isne", "Iii", 1 :named("inlinable"))
.annotate 'line', 1720
    get_hll_global $P5958, "GLOBAL"
    nqp_get_package_through_who $P5957, $P5958, "QAST"
    get_who $P5956, $P5957
    set $P5955, $P5956["Operations"]
    unless_null $P5955, fallback1005
    nqp_get_sc_object $P5959, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5955, $P5959
  fallback1005:
    $P5960 = $P5955."add_core_pirop_mapping"("islt_i", "islt", "Iii", 1 :named("inlinable"))
.annotate 'line', 1721
    get_hll_global $P5964, "GLOBAL"
    nqp_get_package_through_who $P5963, $P5964, "QAST"
    get_who $P5962, $P5963
    set $P5961, $P5962["Operations"]
    unless_null $P5961, fallback1006
    nqp_get_sc_object $P5965, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5961, $P5965
  fallback1006:
    $P5966 = $P5961."add_core_pirop_mapping"("isle_i", "isle", "Iii", 1 :named("inlinable"))
.annotate 'line', 1722
    get_hll_global $P5970, "GLOBAL"
    nqp_get_package_through_who $P5969, $P5970, "QAST"
    get_who $P5968, $P5969
    set $P5967, $P5968["Operations"]
    unless_null $P5967, fallback1007
    nqp_get_sc_object $P5971, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5967, $P5971
  fallback1007:
    $P5972 = $P5967."add_core_pirop_mapping"("isgt_i", "isgt", "Iii", 1 :named("inlinable"))
.annotate 'line', 1723
    get_hll_global $P5976, "GLOBAL"
    nqp_get_package_through_who $P5975, $P5976, "QAST"
    get_who $P5974, $P5975
    set $P5973, $P5974["Operations"]
    unless_null $P5973, fallback1008
    nqp_get_sc_object $P5977, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5973, $P5977
  fallback1008:
    $P5978 = $P5973."add_core_pirop_mapping"("isge_i", "isge", "Iii", 1 :named("inlinable"))
.annotate 'line', 1725
    get_hll_global $P5982, "GLOBAL"
    nqp_get_package_through_who $P5981, $P5982, "QAST"
    get_who $P5980, $P5981
    set $P5979, $P5980["Operations"]
    unless_null $P5979, fallback1009
    nqp_get_sc_object $P5983, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5979, $P5983
  fallback1009:
    $P5984 = $P5979."add_core_pirop_mapping"("bool_I", "nqp_bigint_bool", "IP", 1 :named("inlinable"))
.annotate 'line', 1726
    get_hll_global $P5988, "GLOBAL"
    nqp_get_package_through_who $P5987, $P5988, "QAST"
    get_who $P5986, $P5987
    set $P5985, $P5986["Operations"]
    unless_null $P5985, fallback1010
    nqp_get_sc_object $P5989, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5985, $P5989
  fallback1010:
    $P5990 = $P5985."add_core_pirop_mapping"("cmp_I", "nqp_bigint_cmp", "IPP", 1 :named("inlinable"))
.annotate 'line', 1727
    get_hll_global $P5994, "GLOBAL"
    nqp_get_package_through_who $P5993, $P5994, "QAST"
    get_who $P5992, $P5993
    set $P5991, $P5992["Operations"]
    unless_null $P5991, fallback1011
    nqp_get_sc_object $P5995, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5991, $P5995
  fallback1011:
    $P5996 = $P5991."add_core_pirop_mapping"("iseq_I", "nqp_bigint_eq", "IPP", 1 :named("inlinable"))
.annotate 'line', 1728
    get_hll_global $P6000, "GLOBAL"
    nqp_get_package_through_who $P5999, $P6000, "QAST"
    get_who $P5998, $P5999
    set $P5997, $P5998["Operations"]
    unless_null $P5997, fallback1012
    nqp_get_sc_object $P6001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5997, $P6001
  fallback1012:
    $P6002 = $P5997."add_core_pirop_mapping"("isne_I", "nqp_bigint_ne", "IPP", 1 :named("inlinable"))
.annotate 'line', 1729
    get_hll_global $P6006, "GLOBAL"
    nqp_get_package_through_who $P6005, $P6006, "QAST"
    get_who $P6004, $P6005
    set $P6003, $P6004["Operations"]
    unless_null $P6003, fallback1013
    nqp_get_sc_object $P6007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6003, $P6007
  fallback1013:
    $P6008 = $P6003."add_core_pirop_mapping"("islt_I", "nqp_bigint_lt", "IPP", 1 :named("inlinable"))
.annotate 'line', 1730
    get_hll_global $P6012, "GLOBAL"
    nqp_get_package_through_who $P6011, $P6012, "QAST"
    get_who $P6010, $P6011
    set $P6009, $P6010["Operations"]
    unless_null $P6009, fallback1014
    nqp_get_sc_object $P6013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6009, $P6013
  fallback1014:
    $P6014 = $P6009."add_core_pirop_mapping"("isle_I", "nqp_bigint_le", "IPP", 1 :named("inlinable"))
.annotate 'line', 1731
    get_hll_global $P6018, "GLOBAL"
    nqp_get_package_through_who $P6017, $P6018, "QAST"
    get_who $P6016, $P6017
    set $P6015, $P6016["Operations"]
    unless_null $P6015, fallback1015
    nqp_get_sc_object $P6019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6015, $P6019
  fallback1015:
    $P6020 = $P6015."add_core_pirop_mapping"("isgt_I", "nqp_bigint_gt", "IPP", 1 :named("inlinable"))
.annotate 'line', 1732
    get_hll_global $P6024, "GLOBAL"
    nqp_get_package_through_who $P6023, $P6024, "QAST"
    get_who $P6022, $P6023
    set $P6021, $P6022["Operations"]
    unless_null $P6021, fallback1016
    nqp_get_sc_object $P6025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6021, $P6025
  fallback1016:
    $P6026 = $P6021."add_core_pirop_mapping"("isge_I", "nqp_bigint_ge", "IPP", 1 :named("inlinable"))
.annotate 'line', 1734
    get_hll_global $P6030, "GLOBAL"
    nqp_get_package_through_who $P6029, $P6030, "QAST"
    get_who $P6028, $P6029
    set $P6027, $P6028["Operations"]
    unless_null $P6027, fallback1017
    nqp_get_sc_object $P6031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6027, $P6031
  fallback1017:
    $P6032 = $P6027."add_core_pirop_mapping"("cmp_n", "cmp", "Inn", 1 :named("inlinable"))
.annotate 'line', 1735
    get_hll_global $P6036, "GLOBAL"
    nqp_get_package_through_who $P6035, $P6036, "QAST"
    get_who $P6034, $P6035
    set $P6033, $P6034["Operations"]
    unless_null $P6033, fallback1018
    nqp_get_sc_object $P6037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6033, $P6037
  fallback1018:
    $P6038 = $P6033."add_core_pirop_mapping"("iseq_n", "iseq", "Inn", 1 :named("inlinable"))
.annotate 'line', 1736
    get_hll_global $P6042, "GLOBAL"
    nqp_get_package_through_who $P6041, $P6042, "QAST"
    get_who $P6040, $P6041
    set $P6039, $P6040["Operations"]
    unless_null $P6039, fallback1019
    nqp_get_sc_object $P6043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6039, $P6043
  fallback1019:
    $P6044 = $P6039."add_core_pirop_mapping"("isne_n", "isne", "Inn", 1 :named("inlinable"))
.annotate 'line', 1737
    get_hll_global $P6048, "GLOBAL"
    nqp_get_package_through_who $P6047, $P6048, "QAST"
    get_who $P6046, $P6047
    set $P6045, $P6046["Operations"]
    unless_null $P6045, fallback1020
    nqp_get_sc_object $P6049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6045, $P6049
  fallback1020:
    $P6050 = $P6045."add_core_pirop_mapping"("islt_n", "islt", "Inn", 1 :named("inlinable"))
.annotate 'line', 1738
    get_hll_global $P6054, "GLOBAL"
    nqp_get_package_through_who $P6053, $P6054, "QAST"
    get_who $P6052, $P6053
    set $P6051, $P6052["Operations"]
    unless_null $P6051, fallback1021
    nqp_get_sc_object $P6055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6051, $P6055
  fallback1021:
    $P6056 = $P6051."add_core_pirop_mapping"("isle_n", "isle", "Inn", 1 :named("inlinable"))
.annotate 'line', 1739
    get_hll_global $P6060, "GLOBAL"
    nqp_get_package_through_who $P6059, $P6060, "QAST"
    get_who $P6058, $P6059
    set $P6057, $P6058["Operations"]
    unless_null $P6057, fallback1022
    nqp_get_sc_object $P6061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6057, $P6061
  fallback1022:
    $P6062 = $P6057."add_core_pirop_mapping"("isgt_n", "isgt", "Inn", 1 :named("inlinable"))
.annotate 'line', 1740
    get_hll_global $P6066, "GLOBAL"
    nqp_get_package_through_who $P6065, $P6066, "QAST"
    get_who $P6064, $P6065
    set $P6063, $P6064["Operations"]
    unless_null $P6063, fallback1023
    nqp_get_sc_object $P6067, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6063, $P6067
  fallback1023:
    $P6068 = $P6063."add_core_pirop_mapping"("isge_n", "isge", "Inn", 1 :named("inlinable"))
.annotate 'line', 1742
    get_hll_global $P6072, "GLOBAL"
    nqp_get_package_through_who $P6071, $P6072, "QAST"
    get_who $P6070, $P6071
    set $P6069, $P6070["Operations"]
    unless_null $P6069, fallback1024
    nqp_get_sc_object $P6073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6069, $P6073
  fallback1024:
    $P6074 = $P6069."add_core_pirop_mapping"("cmp_s", "cmp", "Iss", 1 :named("inlinable"))
.annotate 'line', 1743
    get_hll_global $P6078, "GLOBAL"
    nqp_get_package_through_who $P6077, $P6078, "QAST"
    get_who $P6076, $P6077
    set $P6075, $P6076["Operations"]
    unless_null $P6075, fallback1025
    nqp_get_sc_object $P6079, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6075, $P6079
  fallback1025:
    $P6080 = $P6075."add_core_pirop_mapping"("iseq_s", "iseq", "Iss", 1 :named("inlinable"))
.annotate 'line', 1744
    get_hll_global $P6084, "GLOBAL"
    nqp_get_package_through_who $P6083, $P6084, "QAST"
    get_who $P6082, $P6083
    set $P6081, $P6082["Operations"]
    unless_null $P6081, fallback1026
    nqp_get_sc_object $P6085, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6081, $P6085
  fallback1026:
    $P6086 = $P6081."add_core_pirop_mapping"("isne_s", "isne", "Iss", 1 :named("inlinable"))
.annotate 'line', 1745
    get_hll_global $P6090, "GLOBAL"
    nqp_get_package_through_who $P6089, $P6090, "QAST"
    get_who $P6088, $P6089
    set $P6087, $P6088["Operations"]
    unless_null $P6087, fallback1027
    nqp_get_sc_object $P6091, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6087, $P6091
  fallback1027:
    $P6092 = $P6087."add_core_pirop_mapping"("islt_s", "islt", "Iss", 1 :named("inlinable"))
.annotate 'line', 1746
    get_hll_global $P6096, "GLOBAL"
    nqp_get_package_through_who $P6095, $P6096, "QAST"
    get_who $P6094, $P6095
    set $P6093, $P6094["Operations"]
    unless_null $P6093, fallback1028
    nqp_get_sc_object $P6097, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6093, $P6097
  fallback1028:
    $P6098 = $P6093."add_core_pirop_mapping"("isle_s", "isle", "Iss", 1 :named("inlinable"))
.annotate 'line', 1747
    get_hll_global $P6102, "GLOBAL"
    nqp_get_package_through_who $P6101, $P6102, "QAST"
    get_who $P6100, $P6101
    set $P6099, $P6100["Operations"]
    unless_null $P6099, fallback1029
    nqp_get_sc_object $P6103, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6099, $P6103
  fallback1029:
    $P6104 = $P6099."add_core_pirop_mapping"("isgt_s", "isgt", "Iss", 1 :named("inlinable"))
.annotate 'line', 1748
    get_hll_global $P6108, "GLOBAL"
    nqp_get_package_through_who $P6107, $P6108, "QAST"
    get_who $P6106, $P6107
    set $P6105, $P6106["Operations"]
    unless_null $P6105, fallback1030
    nqp_get_sc_object $P6109, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6105, $P6109
  fallback1030:
    $P6110 = $P6105."add_core_pirop_mapping"("isge_s", "isge", "Iss", 1 :named("inlinable"))
.annotate 'line', 1751
    get_hll_global $P6114, "GLOBAL"
    nqp_get_package_through_who $P6113, $P6114, "QAST"
    get_who $P6112, $P6113
    set $P6111, $P6112["Operations"]
    unless_null $P6111, fallback1031
    nqp_get_sc_object $P6115, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6111, $P6115
  fallback1031:
    $P6116 = $P6111."add_core_pirop_mapping"("fromstr_I", "nqp_bigint_from_str", "PsP", 1 :named("inlinable"))
.annotate 'line', 1752
    get_hll_global $P6120, "GLOBAL"
    nqp_get_package_through_who $P6119, $P6120, "QAST"
    get_who $P6118, $P6119
    set $P6117, $P6118["Operations"]
    unless_null $P6117, fallback1032
    nqp_get_sc_object $P6121, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6117, $P6121
  fallback1032:
    $P6122 = $P6117."add_core_pirop_mapping"("tostr_I", "nqp_bigint_to_str", "SP", 1 :named("inlinable"))
.annotate 'line', 1753
    get_hll_global $P6126, "GLOBAL"
    nqp_get_package_through_who $P6125, $P6126, "QAST"
    get_who $P6124, $P6125
    set $P6123, $P6124["Operations"]
    unless_null $P6123, fallback1033
    nqp_get_sc_object $P6127, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6123, $P6127
  fallback1033:
    $P6128 = $P6123."add_core_pirop_mapping"("base_I", "nqp_bigint_to_str_base", "SPI", 1 :named("inlinable"))
.annotate 'line', 1754
    get_hll_global $P6132, "GLOBAL"
    nqp_get_package_through_who $P6131, $P6132, "QAST"
    get_who $P6130, $P6131
    set $P6129, $P6130["Operations"]
    unless_null $P6129, fallback1034
    nqp_get_sc_object $P6133, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6129, $P6133
  fallback1034:
    $P6134 = $P6129."add_core_pirop_mapping"("isbig_I", "nqp_bigint_is_big", "IP", 1 :named("inlinable"))
.annotate 'line', 1755
    get_hll_global $P6138, "GLOBAL"
    nqp_get_package_through_who $P6137, $P6138, "QAST"
    get_who $P6136, $P6137
    set $P6135, $P6136["Operations"]
    unless_null $P6135, fallback1035
    nqp_get_sc_object $P6139, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6135, $P6139
  fallback1035:
    $P6140 = $P6135."add_core_pirop_mapping"("fromnum_I", "nqp_bigint_from_num", "PNP", 1 :named("inlinable"))
.annotate 'line', 1756
    get_hll_global $P6144, "GLOBAL"
    nqp_get_package_through_who $P6143, $P6144, "QAST"
    get_who $P6142, $P6143
    set $P6141, $P6142["Operations"]
    unless_null $P6141, fallback1036
    nqp_get_sc_object $P6145, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6141, $P6145
  fallback1036:
    $P6146 = $P6141."add_core_pirop_mapping"("tonum_I", "nqp_bigint_to_num", "NP", 1 :named("inlinable"))
.annotate 'line', 1759
    get_hll_global $P6150, "GLOBAL"
    nqp_get_package_through_who $P6149, $P6150, "QAST"
    get_who $P6148, $P6149
    set $P6147, $P6148["Operations"]
    unless_null $P6147, fallback1037
    nqp_get_sc_object $P6151, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6147, $P6151
  fallback1037:
    $P6152 = $P6147."add_core_pirop_mapping"("buildnativecall", "nqp_native_call_build", "vPsssPP")
.annotate 'line', 1760
    get_hll_global $P6156, "GLOBAL"
    nqp_get_package_through_who $P6155, $P6156, "QAST"
    get_who $P6154, $P6155
    set $P6153, $P6154["Operations"]
    unless_null $P6153, fallback1038
    nqp_get_sc_object $P6157, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6153, $P6157
  fallback1038:
    $P6158 = $P6153."add_core_pirop_mapping"("nativecall", "nqp_native_call", "PPPP")
.annotate 'line', 1761
    get_hll_global $P6162, "GLOBAL"
    nqp_get_package_through_who $P6161, $P6162, "QAST"
    get_who $P6160, $P6161
    set $P6159, $P6160["Operations"]
    unless_null $P6159, fallback1039
    nqp_get_sc_object $P6163, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6159, $P6163
  fallback1039:
    $P6164 = $P6159."add_core_pirop_mapping"("nativecallrefresh", "nqp_native_call_wb", "vP")
.annotate 'line', 1764
    get_hll_global $P6168, "GLOBAL"
    nqp_get_package_through_who $P6167, $P6168, "QAST"
    get_who $P6166, $P6167
    set $P6165, $P6166["Operations"]
    unless_null $P6165, fallback1040
    nqp_get_sc_object $P6169, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6165, $P6169
  fallback1040:
    $P6170 = $P6165."add_core_pirop_mapping"("not_i", "not", "Ii", 1 :named("inlinable"))
.annotate 'line', 1767
    get_hll_global $P6174, "GLOBAL"
    nqp_get_package_through_who $P6173, $P6174, "QAST"
    get_who $P6172, $P6173
    set $P6171, $P6172["Operations"]
    unless_null $P6171, fallback1041
    nqp_get_sc_object $P6175, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6171, $P6175
  fallback1041:
    $P6176 = $P6171."add_core_pirop_mapping"("atkey", "set", "PQs", 1 :named("inlinable"))
.annotate 'line', 1768
    get_hll_global $P6180, "GLOBAL"
    nqp_get_package_through_who $P6179, $P6180, "QAST"
    get_who $P6178, $P6179
    set $P6177, $P6178["Operations"]
    unless_null $P6177, fallback1042
    nqp_get_sc_object $P6181, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6177, $P6181
  fallback1042:
    $P6182 = $P6177."add_core_pirop_mapping"("atkey_i", "set", "IQs", 1 :named("inlinable"))
.annotate 'line', 1769
    get_hll_global $P6186, "GLOBAL"
    nqp_get_package_through_who $P6185, $P6186, "QAST"
    get_who $P6184, $P6185
    set $P6183, $P6184["Operations"]
    unless_null $P6183, fallback1043
    nqp_get_sc_object $P6187, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6183, $P6187
  fallback1043:
    $P6188 = $P6183."add_core_pirop_mapping"("atkey_n", "set", "NQs", 1 :named("inlinable"))
.annotate 'line', 1770
    get_hll_global $P6192, "GLOBAL"
    nqp_get_package_through_who $P6191, $P6192, "QAST"
    get_who $P6190, $P6191
    set $P6189, $P6190["Operations"]
    unless_null $P6189, fallback1044
    nqp_get_sc_object $P6193, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6189, $P6193
  fallback1044:
    $P6194 = $P6189."add_core_pirop_mapping"("atkey_s", "set", "SQs", 1 :named("inlinable"))
.annotate 'line', 1771
    get_hll_global $P6198, "GLOBAL"
    nqp_get_package_through_who $P6197, $P6198, "QAST"
    get_who $P6196, $P6197
    set $P6195, $P6196["Operations"]
    unless_null $P6195, fallback1045
    nqp_get_sc_object $P6199, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6195, $P6199
  fallback1045:
    $P6200 = $P6195."add_core_pirop_mapping"("atpos", "set", "PQi", 1 :named("inlinable"))
.annotate 'line', 1772
    get_hll_global $P6204, "GLOBAL"
    nqp_get_package_through_who $P6203, $P6204, "QAST"
    get_who $P6202, $P6203
    set $P6201, $P6202["Operations"]
    unless_null $P6201, fallback1046
    nqp_get_sc_object $P6205, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6201, $P6205
  fallback1046:
    $P6206 = $P6201."add_core_pirop_mapping"("atpos_i", "set", "IQi", 1 :named("inlinable"))
.annotate 'line', 1773
    get_hll_global $P6210, "GLOBAL"
    nqp_get_package_through_who $P6209, $P6210, "QAST"
    get_who $P6208, $P6209
    set $P6207, $P6208["Operations"]
    unless_null $P6207, fallback1047
    nqp_get_sc_object $P6211, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6207, $P6211
  fallback1047:
    $P6212 = $P6207."add_core_pirop_mapping"("atpos_n", "set", "NQi", 1 :named("inlinable"))
.annotate 'line', 1774
    get_hll_global $P6216, "GLOBAL"
    nqp_get_package_through_who $P6215, $P6216, "QAST"
    get_who $P6214, $P6215
    set $P6213, $P6214["Operations"]
    unless_null $P6213, fallback1048
    nqp_get_sc_object $P6217, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6213, $P6217
  fallback1048:
    $P6218 = $P6213."add_core_pirop_mapping"("atpos_s", "set", "SQi", 1 :named("inlinable"))
.annotate 'line', 1775
    get_hll_global $P6222, "GLOBAL"
    nqp_get_package_through_who $P6221, $P6222, "QAST"
    get_who $P6220, $P6221
    set $P6219, $P6220["Operations"]
    unless_null $P6219, fallback1049
    nqp_get_sc_object $P6223, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6219, $P6223
  fallback1049:
    $P6224 = $P6219."add_core_pirop_mapping"("bindkey", "set", "1QsP", 1 :named("inlinable"))
.annotate 'line', 1776
    get_hll_global $P6228, "GLOBAL"
    nqp_get_package_through_who $P6227, $P6228, "QAST"
    get_who $P6226, $P6227
    set $P6225, $P6226["Operations"]
    unless_null $P6225, fallback1050
    nqp_get_sc_object $P6229, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6225, $P6229
  fallback1050:
    $P6230 = $P6225."add_core_pirop_mapping"("bindkey_i", "set", "1QsI", 1 :named("inlinable"))
.annotate 'line', 1777
    get_hll_global $P6234, "GLOBAL"
    nqp_get_package_through_who $P6233, $P6234, "QAST"
    get_who $P6232, $P6233
    set $P6231, $P6232["Operations"]
    unless_null $P6231, fallback1051
    nqp_get_sc_object $P6235, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6231, $P6235
  fallback1051:
    $P6236 = $P6231."add_core_pirop_mapping"("bindkey_n", "set", "1QsN", 1 :named("inlinable"))
.annotate 'line', 1778
    get_hll_global $P6240, "GLOBAL"
    nqp_get_package_through_who $P6239, $P6240, "QAST"
    get_who $P6238, $P6239
    set $P6237, $P6238["Operations"]
    unless_null $P6237, fallback1052
    nqp_get_sc_object $P6241, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6237, $P6241
  fallback1052:
    $P6242 = $P6237."add_core_pirop_mapping"("bindkey_s", "set", "1QsS", 1 :named("inlinable"))
.annotate 'line', 1779
    get_hll_global $P6246, "GLOBAL"
    nqp_get_package_through_who $P6245, $P6246, "QAST"
    get_who $P6244, $P6245
    set $P6243, $P6244["Operations"]
    unless_null $P6243, fallback1053
    nqp_get_sc_object $P6247, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6243, $P6247
  fallback1053:
    $P6248 = $P6243."add_core_pirop_mapping"("bindpos", "set", "1QiP", 1 :named("inlinable"))
.annotate 'line', 1780
    get_hll_global $P6252, "GLOBAL"
    nqp_get_package_through_who $P6251, $P6252, "QAST"
    get_who $P6250, $P6251
    set $P6249, $P6250["Operations"]
    unless_null $P6249, fallback1054
    nqp_get_sc_object $P6253, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6249, $P6253
  fallback1054:
    $P6254 = $P6249."add_core_pirop_mapping"("bindpos_i", "set", "1Qii", 1 :named("inlinable"))
.annotate 'line', 1781
    get_hll_global $P6258, "GLOBAL"
    nqp_get_package_through_who $P6257, $P6258, "QAST"
    get_who $P6256, $P6257
    set $P6255, $P6256["Operations"]
    unless_null $P6255, fallback1055
    nqp_get_sc_object $P6259, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6255, $P6259
  fallback1055:
    $P6260 = $P6255."add_core_pirop_mapping"("bindpos_n", "set", "1Qin", 1 :named("inlinable"))
.annotate 'line', 1782
    get_hll_global $P6264, "GLOBAL"
    nqp_get_package_through_who $P6263, $P6264, "QAST"
    get_who $P6262, $P6263
    set $P6261, $P6262["Operations"]
    unless_null $P6261, fallback1056
    nqp_get_sc_object $P6265, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6261, $P6265
  fallback1056:
    $P6266 = $P6261."add_core_pirop_mapping"("bindpos_s", "set", "1Qis", 1 :named("inlinable"))
.annotate 'line', 1783
    get_hll_global $P6270, "GLOBAL"
    nqp_get_package_through_who $P6269, $P6270, "QAST"
    get_who $P6268, $P6269
    set $P6267, $P6268["Operations"]
    unless_null $P6267, fallback1057
    nqp_get_sc_object $P6271, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6267, $P6271
  fallback1057:
    $P6272 = $P6267."add_core_pirop_mapping"("deletekey", "delete", "0Qs", 1 :named("inlinable"))
.annotate 'line', 1784
    get_hll_global $P6276, "GLOBAL"
    nqp_get_package_through_who $P6275, $P6276, "QAST"
    get_who $P6274, $P6275
    set $P6273, $P6274["Operations"]
    unless_null $P6273, fallback1058
    nqp_get_sc_object $P6277, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6273, $P6277
  fallback1058:
    $P6278 = $P6273."add_core_pirop_mapping"("deletepos", "delete", "0Qi", 1 :named("inlinable"))
.annotate 'line', 1785
    get_hll_global $P6282, "GLOBAL"
    nqp_get_package_through_who $P6281, $P6282, "QAST"
    get_who $P6280, $P6281
    set $P6279, $P6280["Operations"]
    unless_null $P6279, fallback1059
    nqp_get_sc_object $P6283, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6279, $P6283
  fallback1059:
    $P6284 = $P6279."add_core_pirop_mapping"("existskey", "exists", "IQs", 1 :named("inlinable"))
.annotate 'line', 1786
    get_hll_global $P6288, "GLOBAL"
    nqp_get_package_through_who $P6287, $P6288, "QAST"
    get_who $P6286, $P6287
    set $P6285, $P6286["Operations"]
    unless_null $P6285, fallback1060
    nqp_get_sc_object $P6289, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6285, $P6289
  fallback1060:
    $P6290 = $P6285."add_core_pirop_mapping"("existspos", "exists", "IQi", 1 :named("inlinable"))
.annotate 'line', 1787
    get_hll_global $P6294, "GLOBAL"
    nqp_get_package_through_who $P6293, $P6294, "QAST"
    get_who $P6292, $P6293
    set $P6291, $P6292["Operations"]
    unless_null $P6291, fallback1061
    nqp_get_sc_object $P6295, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6291, $P6295
  fallback1061:
    $P6296 = $P6291."add_core_pirop_mapping"("elems", "elements", "IP", 1 :named("inlinable"))
.annotate 'line', 1788
    get_hll_global $P6300, "GLOBAL"
    nqp_get_package_through_who $P6299, $P6300, "QAST"
    get_who $P6298, $P6299
    set $P6297, $P6298["Operations"]
    unless_null $P6297, fallback1062
    nqp_get_sc_object $P6301, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6297, $P6301
  fallback1062:
    $P6302 = $P6297."add_core_pirop_mapping"("iterator", "iter", "PP", 1 :named("inlinable"))
.annotate 'line', 1789
    get_hll_global $P6306, "GLOBAL"
    nqp_get_package_through_who $P6305, $P6306, "QAST"
    get_who $P6304, $P6305
    set $P6303, $P6304["Operations"]
    unless_null $P6303, fallback1063
    nqp_get_sc_object $P6307, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6303, $P6307
  fallback1063:
    $P6308 = $P6303."add_core_pirop_mapping"("push", "push", "0PP", 1 :named("inlinable"))
.annotate 'line', 1790
    get_hll_global $P6312, "GLOBAL"
    nqp_get_package_through_who $P6311, $P6312, "QAST"
    get_who $P6310, $P6311
    set $P6309, $P6310["Operations"]
    unless_null $P6309, fallback1064
    nqp_get_sc_object $P6313, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6309, $P6313
  fallback1064:
    $P6314 = $P6309."add_core_pirop_mapping"("push_s", "push", "0Ps", 1 :named("inlinable"))
.annotate 'line', 1791
    get_hll_global $P6318, "GLOBAL"
    nqp_get_package_through_who $P6317, $P6318, "QAST"
    get_who $P6316, $P6317
    set $P6315, $P6316["Operations"]
    unless_null $P6315, fallback1065
    nqp_get_sc_object $P6319, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6315, $P6319
  fallback1065:
    $P6320 = $P6315."add_core_pirop_mapping"("push_i", "push", "0Pi", 1 :named("inlinable"))
.annotate 'line', 1792
    get_hll_global $P6324, "GLOBAL"
    nqp_get_package_through_who $P6323, $P6324, "QAST"
    get_who $P6322, $P6323
    set $P6321, $P6322["Operations"]
    unless_null $P6321, fallback1066
    nqp_get_sc_object $P6325, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6321, $P6325
  fallback1066:
    $P6326 = $P6321."add_core_pirop_mapping"("push_n", "push", "0Pn", 1 :named("inlinable"))
.annotate 'line', 1793
    get_hll_global $P6330, "GLOBAL"
    nqp_get_package_through_who $P6329, $P6330, "QAST"
    get_who $P6328, $P6329
    set $P6327, $P6328["Operations"]
    unless_null $P6327, fallback1067
    nqp_get_sc_object $P6331, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6327, $P6331
  fallback1067:
    $P6332 = $P6327."add_core_pirop_mapping"("pop", "pop", "PP", 1 :named("inlinable"))
.annotate 'line', 1794
    get_hll_global $P6336, "GLOBAL"
    nqp_get_package_through_who $P6335, $P6336, "QAST"
    get_who $P6334, $P6335
    set $P6333, $P6334["Operations"]
    unless_null $P6333, fallback1068
    nqp_get_sc_object $P6337, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6333, $P6337
  fallback1068:
    $P6338 = $P6333."add_core_pirop_mapping"("pop_s", "pop", "SP", 1 :named("inlinable"))
.annotate 'line', 1795
    get_hll_global $P6342, "GLOBAL"
    nqp_get_package_through_who $P6341, $P6342, "QAST"
    get_who $P6340, $P6341
    set $P6339, $P6340["Operations"]
    unless_null $P6339, fallback1069
    nqp_get_sc_object $P6343, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6339, $P6343
  fallback1069:
    $P6344 = $P6339."add_core_pirop_mapping"("pop_i", "pop", "IP", 1 :named("inlinable"))
.annotate 'line', 1796
    get_hll_global $P6348, "GLOBAL"
    nqp_get_package_through_who $P6347, $P6348, "QAST"
    get_who $P6346, $P6347
    set $P6345, $P6346["Operations"]
    unless_null $P6345, fallback1070
    nqp_get_sc_object $P6349, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6345, $P6349
  fallback1070:
    $P6350 = $P6345."add_core_pirop_mapping"("pop_n", "pop", "NP", 1 :named("inlinable"))
.annotate 'line', 1797
    get_hll_global $P6354, "GLOBAL"
    nqp_get_package_through_who $P6353, $P6354, "QAST"
    get_who $P6352, $P6353
    set $P6351, $P6352["Operations"]
    unless_null $P6351, fallback1071
    nqp_get_sc_object $P6355, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6351, $P6355
  fallback1071:
    $P6356 = $P6351."add_core_pirop_mapping"("shift", "shift", "PP", 1 :named("inlinable"))
.annotate 'line', 1798
    get_hll_global $P6360, "GLOBAL"
    nqp_get_package_through_who $P6359, $P6360, "QAST"
    get_who $P6358, $P6359
    set $P6357, $P6358["Operations"]
    unless_null $P6357, fallback1072
    nqp_get_sc_object $P6361, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6357, $P6361
  fallback1072:
    $P6362 = $P6357."add_core_pirop_mapping"("shift_s", "shift", "SP", 1 :named("inlinable"))
.annotate 'line', 1799
    get_hll_global $P6366, "GLOBAL"
    nqp_get_package_through_who $P6365, $P6366, "QAST"
    get_who $P6364, $P6365
    set $P6363, $P6364["Operations"]
    unless_null $P6363, fallback1073
    nqp_get_sc_object $P6367, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6363, $P6367
  fallback1073:
    $P6368 = $P6363."add_core_pirop_mapping"("shift_i", "shift", "IP", 1 :named("inlinable"))
.annotate 'line', 1800
    get_hll_global $P6372, "GLOBAL"
    nqp_get_package_through_who $P6371, $P6372, "QAST"
    get_who $P6370, $P6371
    set $P6369, $P6370["Operations"]
    unless_null $P6369, fallback1074
    nqp_get_sc_object $P6373, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6369, $P6373
  fallback1074:
    $P6374 = $P6369."add_core_pirop_mapping"("shift_n", "shift", "NP", 1 :named("inlinable"))
.annotate 'line', 1801
    get_hll_global $P6378, "GLOBAL"
    nqp_get_package_through_who $P6377, $P6378, "QAST"
    get_who $P6376, $P6377
    set $P6375, $P6376["Operations"]
    unless_null $P6375, fallback1075
    nqp_get_sc_object $P6379, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6375, $P6379
  fallback1075:
    $P6380 = $P6375."add_core_pirop_mapping"("unshift", "unshift", "0PP", 1 :named("inlinable"))
.annotate 'line', 1802
    get_hll_global $P6384, "GLOBAL"
    nqp_get_package_through_who $P6383, $P6384, "QAST"
    get_who $P6382, $P6383
    set $P6381, $P6382["Operations"]
    unless_null $P6381, fallback1076
    nqp_get_sc_object $P6385, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6381, $P6385
  fallback1076:
    $P6386 = $P6381."add_core_pirop_mapping"("unshift_s", "unshift", "0Ps", 1 :named("inlinable"))
.annotate 'line', 1803
    get_hll_global $P6390, "GLOBAL"
    nqp_get_package_through_who $P6389, $P6390, "QAST"
    get_who $P6388, $P6389
    set $P6387, $P6388["Operations"]
    unless_null $P6387, fallback1077
    nqp_get_sc_object $P6391, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6387, $P6391
  fallback1077:
    $P6392 = $P6387."add_core_pirop_mapping"("unshift_i", "unshift", "0Pi", 1 :named("inlinable"))
.annotate 'line', 1804
    get_hll_global $P6396, "GLOBAL"
    nqp_get_package_through_who $P6395, $P6396, "QAST"
    get_who $P6394, $P6395
    set $P6393, $P6394["Operations"]
    unless_null $P6393, fallback1078
    nqp_get_sc_object $P6397, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6393, $P6397
  fallback1078:
    $P6398 = $P6393."add_core_pirop_mapping"("unshift_n", "unshift", "0Pn", 1 :named("inlinable"))
.annotate 'line', 1805
    get_hll_global $P6402, "GLOBAL"
    nqp_get_package_through_who $P6401, $P6402, "QAST"
    get_who $P6400, $P6401
    set $P6399, $P6400["Operations"]
    unless_null $P6399, fallback1079
    nqp_get_sc_object $P6403, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6399, $P6403
  fallback1079:
    $P6404 = $P6399."add_core_pirop_mapping"("splice", "splice", "0PPii", 1 :named("inlinable"))
.annotate 'line', 1806
    get_hll_global $P6408, "GLOBAL"
    nqp_get_package_through_who $P6407, $P6408, "QAST"
    get_who $P6406, $P6407
    set $P6405, $P6406["Operations"]
    unless_null $P6405, fallback1080
    nqp_get_sc_object $P6409, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6405, $P6409
  fallback1080:
    $P6410 = $P6405."add_core_pirop_mapping"("islist", "nqp_islist", "IP", 1 :named("inlinable"))
.annotate 'line', 1807
    get_hll_global $P6414, "GLOBAL"
    nqp_get_package_through_who $P6413, $P6414, "QAST"
    get_who $P6412, $P6413
    set $P6411, $P6412["Operations"]
    unless_null $P6411, fallback1081
    nqp_get_sc_object $P6415, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6411, $P6415
  fallback1081:
    $P6416 = $P6411."add_core_pirop_mapping"("ishash", "nqp_ishash", "IP", 1 :named("inlinable"))
.annotate 'line', 1810
    get_hll_global $P6420, "GLOBAL"
    nqp_get_package_through_who $P6419, $P6420, "QAST"
    get_who $P6418, $P6419
    set $P6417, $P6418["Operations"]
    unless_null $P6417, fallback1082
    nqp_get_sc_object $P6421, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6417, $P6421
  fallback1082:
    $P6422 = $P6417."add_core_pirop_mapping"("r_atpos", "repr_at_pos_obj", "PPi", 1 :named("inlinable"))
.annotate 'line', 1811
    get_hll_global $P6426, "GLOBAL"
    nqp_get_package_through_who $P6425, $P6426, "QAST"
    get_who $P6424, $P6425
    set $P6423, $P6424["Operations"]
    unless_null $P6423, fallback1083
    nqp_get_sc_object $P6427, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6423, $P6427
  fallback1083:
    $P6428 = $P6423."add_core_pirop_mapping"("r_atpos_i", "repr_at_pos_int", "IPi", 1 :named("inlinable"))
.annotate 'line', 1812
    get_hll_global $P6432, "GLOBAL"
    nqp_get_package_through_who $P6431, $P6432, "QAST"
    get_who $P6430, $P6431
    set $P6429, $P6430["Operations"]
    unless_null $P6429, fallback1084
    nqp_get_sc_object $P6433, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6429, $P6433
  fallback1084:
    $P6434 = $P6429."add_core_pirop_mapping"("r_atpos_n", "repr_at_pos_num", "NPi", 1 :named("inlinable"))
.annotate 'line', 1813
    get_hll_global $P6438, "GLOBAL"
    nqp_get_package_through_who $P6437, $P6438, "QAST"
    get_who $P6436, $P6437
    set $P6435, $P6436["Operations"]
    unless_null $P6435, fallback1085
    nqp_get_sc_object $P6439, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6435, $P6439
  fallback1085:
    $P6440 = $P6435."add_core_pirop_mapping"("r_bindpos", "repr_bind_pos_obj", "2PiP", 1 :named("inlinable"))
.annotate 'line', 1814
    get_hll_global $P6444, "GLOBAL"
    nqp_get_package_through_who $P6443, $P6444, "QAST"
    get_who $P6442, $P6443
    set $P6441, $P6442["Operations"]
    unless_null $P6441, fallback1086
    nqp_get_sc_object $P6445, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6441, $P6445
  fallback1086:
    $P6446 = $P6441."add_core_pirop_mapping"("r_bindpos_i", "repr_bind_pos_int", "2Pii", 1 :named("inlinable"))
.annotate 'line', 1815
    get_hll_global $P6450, "GLOBAL"
    nqp_get_package_through_who $P6449, $P6450, "QAST"
    get_who $P6448, $P6449
    set $P6447, $P6448["Operations"]
    unless_null $P6447, fallback1087
    nqp_get_sc_object $P6451, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6447, $P6451
  fallback1087:
    $P6452 = $P6447."add_core_pirop_mapping"("r_bindpos_n", "repr_bind_pos_num", "2Pin", 1 :named("inlinable"))
.annotate 'line', 1818
    get_hll_global $P6456, "GLOBAL"
    nqp_get_package_through_who $P6455, $P6456, "QAST"
    get_who $P6454, $P6455
    set $P6453, $P6454["Operations"]
    unless_null $P6453, fallback1088
    nqp_get_sc_object $P6457, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6453, $P6457
  fallback1088:
    $P6458 = $P6453."add_core_pirop_mapping"("bindattr", "setattribute", "3PPsP", 1 :named("inlinable"))
.annotate 'line', 1819
    get_hll_global $P6462, "GLOBAL"
    nqp_get_package_through_who $P6461, $P6462, "QAST"
    get_who $P6460, $P6461
    set $P6459, $P6460["Operations"]
    unless_null $P6459, fallback1089
    nqp_get_sc_object $P6463, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6459, $P6463
  fallback1089:
    $P6464 = $P6459."add_core_pirop_mapping"("bindattr_i", "repr_bind_attr_int", "3PPsi", 1 :named("inlinable"))
.annotate 'line', 1820
    get_hll_global $P6468, "GLOBAL"
    nqp_get_package_through_who $P6467, $P6468, "QAST"
    get_who $P6466, $P6467
    set $P6465, $P6466["Operations"]
    unless_null $P6465, fallback1090
    nqp_get_sc_object $P6469, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6465, $P6469
  fallback1090:
    $P6470 = $P6465."add_core_pirop_mapping"("bindattr_n", "repr_bind_attr_num", "3PPsn", 1 :named("inlinable"))
.annotate 'line', 1821
    get_hll_global $P6474, "GLOBAL"
    nqp_get_package_through_who $P6473, $P6474, "QAST"
    get_who $P6472, $P6473
    set $P6471, $P6472["Operations"]
    unless_null $P6471, fallback1091
    nqp_get_sc_object $P6475, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6471, $P6475
  fallback1091:
    $P6476 = $P6471."add_core_pirop_mapping"("bindattr_s", "repr_bind_attr_str", "3PPss", 1 :named("inlinable"))
.annotate 'line', 1822
    get_hll_global $P6480, "GLOBAL"
    nqp_get_package_through_who $P6479, $P6480, "QAST"
    get_who $P6478, $P6479
    set $P6477, $P6478["Operations"]
    unless_null $P6477, fallback1092
    nqp_get_sc_object $P6481, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6477, $P6481
  fallback1092:
    $P6482 = $P6477."add_core_pirop_mapping"("getattr", "getattribute", "PPPs", 1 :named("inlinable"))
.annotate 'line', 1823
    get_hll_global $P6486, "GLOBAL"
    nqp_get_package_through_who $P6485, $P6486, "QAST"
    get_who $P6484, $P6485
    set $P6483, $P6484["Operations"]
    unless_null $P6483, fallback1093
    nqp_get_sc_object $P6487, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6483, $P6487
  fallback1093:
    $P6488 = $P6483."add_core_pirop_mapping"("getattr_i", "repr_get_attr_int", "IPPs", 1 :named("inlinable"))
.annotate 'line', 1824
    get_hll_global $P6492, "GLOBAL"
    nqp_get_package_through_who $P6491, $P6492, "QAST"
    get_who $P6490, $P6491
    set $P6489, $P6490["Operations"]
    unless_null $P6489, fallback1094
    nqp_get_sc_object $P6493, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6489, $P6493
  fallback1094:
    $P6494 = $P6489."add_core_pirop_mapping"("getattr_n", "repr_get_attr_num", "NPPs", 1 :named("inlinable"))
.annotate 'line', 1825
    get_hll_global $P6498, "GLOBAL"
    nqp_get_package_through_who $P6497, $P6498, "QAST"
    get_who $P6496, $P6497
    set $P6495, $P6496["Operations"]
    unless_null $P6495, fallback1095
    nqp_get_sc_object $P6499, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6495, $P6499
  fallback1095:
    $P6500 = $P6495."add_core_pirop_mapping"("getattr_s", "repr_get_attr_str", "SPPs", 1 :named("inlinable"))
.annotate 'line', 1826
    get_hll_global $P6504, "GLOBAL"
    nqp_get_package_through_who $P6503, $P6504, "QAST"
    get_who $P6502, $P6503
    set $P6501, $P6502["Operations"]
    unless_null $P6501, fallback1096
    nqp_get_sc_object $P6505, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6501, $P6505
  fallback1096:
    $P6506 = $P6501."add_core_pirop_mapping"("create", "repr_instance_of", "PP", 1 :named("inlinable"))
.annotate 'line', 1827
    get_hll_global $P6510, "GLOBAL"
    nqp_get_package_through_who $P6509, $P6510, "QAST"
    get_who $P6508, $P6509
    set $P6507, $P6508["Operations"]
    unless_null $P6507, fallback1097
    nqp_get_sc_object $P6511, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6507, $P6511
  fallback1097:
    $P6512 = $P6507."add_core_pirop_mapping"("clone", "clone", "PP", 1 :named("inlinable"))
.annotate 'line', 1828
    get_hll_global $P6516, "GLOBAL"
    nqp_get_package_through_who $P6515, $P6516, "QAST"
    get_who $P6514, $P6515
    set $P6513, $P6514["Operations"]
    unless_null $P6513, fallback1098
    nqp_get_sc_object $P6517, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6513, $P6517
  fallback1098:
    $P6518 = $P6513."add_core_pirop_mapping"("isconcrete", "repr_defined", "IP", 1 :named("inlinable"))
.annotate 'line', 1829
    get_hll_global $P6522, "GLOBAL"
    nqp_get_package_through_who $P6521, $P6522, "QAST"
    get_who $P6520, $P6521
    set $P6519, $P6520["Operations"]
    unless_null $P6519, fallback1099
    nqp_get_sc_object $P6523, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6519, $P6523
  fallback1099:
    $P6524 = $P6519."add_core_pirop_mapping"("iscont", "is_container", "IP", 1 :named("inlinable"))
.annotate 'line', 1830
    get_hll_global $P6528, "GLOBAL"
    nqp_get_package_through_who $P6527, $P6528, "QAST"
    get_who $P6526, $P6527
    set $P6525, $P6526["Operations"]
    unless_null $P6525, fallback1100
    nqp_get_sc_object $P6529, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6525, $P6529
  fallback1100:
    $P6530 = $P6525."add_core_pirop_mapping"("isnull", "isnull", "IP", 1 :named("inlinable"))
.annotate 'line', 1831
    get_hll_global $P6534, "GLOBAL"
    nqp_get_package_through_who $P6533, $P6534, "QAST"
    get_who $P6532, $P6533
    set $P6531, $P6532["Operations"]
    unless_null $P6531, fallback1101
    nqp_get_sc_object $P6535, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6531, $P6535
  fallback1101:
    $P6536 = $P6531."add_core_pirop_mapping"("isnull_s", "isnull", "IS", 1 :named("inlinable"))
.annotate 'line', 1832
    get_hll_global $P6540, "GLOBAL"
    nqp_get_package_through_who $P6539, $P6540, "QAST"
    get_who $P6538, $P6539
    set $P6537, $P6538["Operations"]
    unless_null $P6537, fallback1102
    nqp_get_sc_object $P6541, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6537, $P6541
  fallback1102:
    $P6542 = $P6537."add_core_pirop_mapping"("istrue", "istrue", "IP", 1 :named("inlinable"))
.annotate 'line', 1833
    get_hll_global $P6546, "GLOBAL"
    nqp_get_package_through_who $P6545, $P6546, "QAST"
    get_who $P6544, $P6545
    set $P6543, $P6544["Operations"]
    unless_null $P6543, fallback1103
    nqp_get_sc_object $P6547, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6543, $P6547
  fallback1103:
    $P6548 = $P6543."add_core_pirop_mapping"("isfalse", "isfalse", "IP", 1 :named("inlinable"))
.annotate 'line', 1834
    get_hll_global $P6552, "GLOBAL"
    nqp_get_package_through_who $P6551, $P6552, "QAST"
    get_who $P6550, $P6551
    set $P6549, $P6550["Operations"]
    unless_null $P6549, fallback1104
    nqp_get_sc_object $P6553, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6549, $P6553
  fallback1104:
    $P6554 = $P6549."add_core_pirop_mapping"("istype", "type_check", "IPP", 1 :named("inlinable"))
.annotate 'line', 1835
    get_hll_global $P6558, "GLOBAL"
    nqp_get_package_through_who $P6557, $P6558, "QAST"
    get_who $P6556, $P6557
    set $P6555, $P6556["Operations"]
    unless_null $P6555, fallback1105
    nqp_get_sc_object $P6559, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6555, $P6559
  fallback1105:
    $P6560 = $P6555."add_core_pirop_mapping"("null", "null", "P", 1 :named("inlinable"))
.annotate 'line', 1836
    get_hll_global $P6564, "GLOBAL"
    nqp_get_package_through_who $P6563, $P6564, "QAST"
    get_who $P6562, $P6563
    set $P6561, $P6562["Operations"]
    unless_null $P6561, fallback1106
    nqp_get_sc_object $P6565, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6561, $P6565
  fallback1106:
    $P6566 = $P6561."add_core_pirop_mapping"("null_s", "null", "S", 1 :named("inlinable"))
.annotate 'line', 1837
    get_hll_global $P6570, "GLOBAL"
    nqp_get_package_through_who $P6569, $P6570, "QAST"
    get_who $P6568, $P6569
    set $P6567, $P6568["Operations"]
    unless_null $P6567, fallback1107
    nqp_get_sc_object $P6571, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6567, $P6571
  fallback1107:
    $P6572 = $P6567."add_core_pirop_mapping"("unbox_i", "repr_unbox_int", "IP", 1 :named("inlinable"))
.annotate 'line', 1838
    get_hll_global $P6576, "GLOBAL"
    nqp_get_package_through_who $P6575, $P6576, "QAST"
    get_who $P6574, $P6575
    set $P6573, $P6574["Operations"]
    unless_null $P6573, fallback1108
    nqp_get_sc_object $P6577, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6573, $P6577
  fallback1108:
    $P6578 = $P6573."add_core_pirop_mapping"("unbox_n", "repr_unbox_num", "NP", 1 :named("inlinable"))
.annotate 'line', 1839
    get_hll_global $P6582, "GLOBAL"
    nqp_get_package_through_who $P6581, $P6582, "QAST"
    get_who $P6580, $P6581
    set $P6579, $P6580["Operations"]
    unless_null $P6579, fallback1109
    nqp_get_sc_object $P6583, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6579, $P6583
  fallback1109:
    $P6584 = $P6579."add_core_pirop_mapping"("unbox_s", "repr_unbox_str", "SP", 1 :named("inlinable"))
.annotate 'line', 1840
    get_hll_global $P6588, "GLOBAL"
    nqp_get_package_through_who $P6587, $P6588, "QAST"
    get_who $P6586, $P6587
    set $P6585, $P6586["Operations"]
    unless_null $P6585, fallback1110
    nqp_get_sc_object $P6589, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6585, $P6589
  fallback1110:
    $P6590 = $P6585."add_core_pirop_mapping"("box_i", "repr_box_int", "PiP", 1 :named("inlinable"))
.annotate 'line', 1841
    get_hll_global $P6594, "GLOBAL"
    nqp_get_package_through_who $P6593, $P6594, "QAST"
    get_who $P6592, $P6593
    set $P6591, $P6592["Operations"]
    unless_null $P6591, fallback1111
    nqp_get_sc_object $P6595, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6591, $P6595
  fallback1111:
    $P6596 = $P6591."add_core_pirop_mapping"("box_n", "repr_box_num", "PnP", 1 :named("inlinable"))
.annotate 'line', 1842
    get_hll_global $P6600, "GLOBAL"
    nqp_get_package_through_who $P6599, $P6600, "QAST"
    get_who $P6598, $P6599
    set $P6597, $P6598["Operations"]
    unless_null $P6597, fallback1112
    nqp_get_sc_object $P6601, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6597, $P6601
  fallback1112:
    $P6602 = $P6597."add_core_pirop_mapping"("box_s", "repr_box_str", "PsP", 1 :named("inlinable"))
.annotate 'line', 1843
    get_hll_global $P6606, "GLOBAL"
    nqp_get_package_through_who $P6605, $P6606, "QAST"
    get_who $P6604, $P6605
    set $P6603, $P6604["Operations"]
    unless_null $P6603, fallback1113
    nqp_get_sc_object $P6607, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6603, $P6607
  fallback1113:
    $P6608 = $P6603."add_core_pirop_mapping"("what", "get_what", "PP", 1 :named("inlinable"))
.annotate 'line', 1844
    get_hll_global $P6612, "GLOBAL"
    nqp_get_package_through_who $P6611, $P6612, "QAST"
    get_who $P6610, $P6611
    set $P6609, $P6610["Operations"]
    unless_null $P6609, fallback1114
    nqp_get_sc_object $P6613, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6609, $P6613
  fallback1114:
    $P6614 = $P6609."add_core_pirop_mapping"("how", "get_how", "PP", 1 :named("inlinable"))
.annotate 'line', 1845
    get_hll_global $P6618, "GLOBAL"
    nqp_get_package_through_who $P6617, $P6618, "QAST"
    get_who $P6616, $P6617
    set $P6615, $P6616["Operations"]
    unless_null $P6615, fallback1115
    nqp_get_sc_object $P6619, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6615, $P6619
  fallback1115:
    $P6620 = $P6615."add_core_pirop_mapping"("who", "get_who", "PP", 1 :named("inlinable"))
.annotate 'line', 1846
    get_hll_global $P6624, "GLOBAL"
    nqp_get_package_through_who $P6623, $P6624, "QAST"
    get_who $P6622, $P6623
    set $P6621, $P6622["Operations"]
    unless_null $P6621, fallback1116
    nqp_get_sc_object $P6625, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6621, $P6625
  fallback1116:
    $P6626 = $P6621."add_core_pirop_mapping"("where", "get_id", "IP", 1 :named("inlinable"))
.annotate 'line', 1847
    get_hll_global $P6630, "GLOBAL"
    nqp_get_package_through_who $P6629, $P6630, "QAST"
    get_who $P6628, $P6629
    set $P6627, $P6628["Operations"]
    unless_null $P6627, fallback1117
    nqp_get_sc_object $P6631, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6627, $P6631
  fallback1117:
    $P6632 = $P6627."add_core_pirop_mapping"("findmethod", "find_method", "PPs", 1 :named("inlinable"))
.annotate 'line', 1848
    get_hll_global $P6636, "GLOBAL"
    nqp_get_package_through_who $P6635, $P6636, "QAST"
    get_who $P6634, $P6635
    set $P6633, $P6634["Operations"]
    unless_null $P6633, fallback1118
    nqp_get_sc_object $P6637, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6633, $P6637
  fallback1118:
    $P6638 = $P6633."add_core_pirop_mapping"("defined", "defined", "IP", 1 :named("inlinable"))
.annotate 'line', 1849
    get_hll_global $P6642, "GLOBAL"
    nqp_get_package_through_who $P6641, $P6642, "QAST"
    get_who $P6640, $P6641
    set $P6639, $P6640["Operations"]
    unless_null $P6639, fallback1119
    nqp_get_sc_object $P6643, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6639, $P6643
  fallback1119:
    $P6644 = $P6639."add_core_pirop_mapping"("can", "can", "IPs", 1 :named("inlinable"))
.annotate 'line', 1850
    get_hll_global $P6648, "GLOBAL"
    nqp_get_package_through_who $P6647, $P6648, "QAST"
    get_who $P6646, $P6647
    set $P6645, $P6646["Operations"]
    unless_null $P6645, fallback1120
    nqp_get_sc_object $P6649, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6645, $P6649
  fallback1120:
    $P6650 = $P6645."add_core_pirop_mapping"("reprname", "repr_name", "SP", 1 :named("inlinable"))
.annotate 'line', 1851
    get_hll_global $P6654, "GLOBAL"
    nqp_get_package_through_who $P6653, $P6654, "QAST"
    get_who $P6652, $P6653
    set $P6651, $P6652["Operations"]
    unless_null $P6651, fallback1121
    nqp_get_sc_object $P6655, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6651, $P6655
  fallback1121:
    $P6656 = $P6651."add_core_pirop_mapping"("newtype", "repr_type_object_for", "PPs", 1 :named("inlinable"))
.annotate 'line', 1852
    get_hll_global $P6660, "GLOBAL"
    nqp_get_package_through_who $P6659, $P6660, "QAST"
    get_who $P6658, $P6659
    set $P6657, $P6658["Operations"]
    unless_null $P6657, fallback1122
    nqp_get_sc_object $P6661, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6657, $P6661
  fallback1122:
    $P6662 = $P6657."add_core_pirop_mapping"("setwho", "set_who", "0PP", 1 :named("inlinable"))
.annotate 'line', 1855
    get_hll_global $P6666, "GLOBAL"
    nqp_get_package_through_who $P6665, $P6666, "QAST"
    get_who $P6664, $P6665
    set $P6663, $P6664["Operations"]
    unless_null $P6663, fallback1123
    nqp_get_sc_object $P6667, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6663, $P6667
  fallback1123:
    $P6668 = $P6663."add_core_pirop_mapping"("takeclosure", "newclosure", "PP")
.annotate 'line', 1858
    get_hll_global $P6672, "GLOBAL"
    nqp_get_package_through_who $P6671, $P6672, "QAST"
    get_who $P6670, $P6671
    set $P6669, $P6670["Operations"]
    unless_null $P6669, fallback1124
    nqp_get_sc_object $P6673, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6669, $P6673
  fallback1124:
    $P6674 = $P6669."add_core_pirop_mapping"("sha1", "nqp_sha1", "Ss")
.annotate 'line', 1859
    get_hll_global $P6678, "GLOBAL"
    nqp_get_package_through_who $P6677, $P6678, "QAST"
    get_who $P6676, $P6677
    set $P6675, $P6676["Operations"]
    unless_null $P6675, fallback1125
    nqp_get_sc_object $P6679, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6675, $P6679
  fallback1125:
    $P6680 = $P6675."add_core_pirop_mapping"("createsc", "nqp_create_sc", "Ps")
.annotate 'line', 1860
    get_hll_global $P6684, "GLOBAL"
    nqp_get_package_through_who $P6683, $P6684, "QAST"
    get_who $P6682, $P6683
    set $P6681, $P6682["Operations"]
    unless_null $P6681, fallback1126
    nqp_get_sc_object $P6685, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6681, $P6685
  fallback1126:
    $P6686 = $P6681."add_core_pirop_mapping"("deserialize", "nqp_deserialize_sc", "vsPPP")
.annotate 'line', 1863
    get_hll_global $P6690, "GLOBAL"
    nqp_get_package_through_who $P6689, $P6690, "QAST"
    get_who $P6688, $P6689
    set $P6687, $P6688["Operations"]
    unless_null $P6687, fallback1127
    nqp_get_sc_object $P6691, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6687, $P6691
  fallback1127:
    $P6692 = $P6687."add_core_pirop_mapping"("exit", "exit", "0i", 1 :named("inlinable"))
.annotate 'line', 1864
    get_hll_global $P6696, "GLOBAL"
    nqp_get_package_through_who $P6695, $P6696, "QAST"
    get_who $P6694, $P6695
    set $P6693, $P6694["Operations"]
    unless_null $P6693, fallback1128
    nqp_get_sc_object $P6697, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P6693, $P6697
  fallback1128:
    $P6698 = $P6693."add_core_pirop_mapping"("sleep", "sleep", "0n", 1 :named("inlinable"))
    .const 'Sub' $P6699 = 'cuid_59_1346277600.974' 
    capture_lex $P6699
    $P6700 = $P6699()
    set $P6705, _lex_param_0
    unless _lex_param_0 goto if715_end2705 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P6701, "ModuleLoader"
    getinterp $P6703
    set $P6702, $P6703["context"]
    $P6704 = $P6701."set_mainline_module"($P6702)
    set $P6705, $P6704
  if715_end2705:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "handle_arg" :subid("cuid_153_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1137
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("coerce") :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_152_1346277600.974' 
    capture_lex $P5023 
    if haz_param_1, default20
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_5, $P5022
  default20:
    .lex "$arg_post", $P101 
    .lex "$result", $P102 
    .lex "$arg", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$ops", _lex_param_2 
    .lex "@pos_arg_results", _lex_param_3 
    .lex "@named_arg_results", _lex_param_4 
    .lex "$coerce", _lex_param_5 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1138
    $P5003 = _lex_param_1."as_post"(_lex_param_0)
    set $P101, $P5003
    set $P5005, _lex_param_5
    unless _lex_param_5 goto if10_end11 
.annotate 'line', 1139
.annotate 'line', 1140
    $P5004 = _lex_param_1."coerce"($P101, _lex_param_5)
    set $P101, $P5004
    set $P5005, $P101
  if10_end11:
.annotate 'line', 1142
    $P5006 = _lex_param_2."push"($P101)
.annotate 'line', 1143
    $P5007 = $P101."result"()
    set $P102, $P5007
.annotate 'line', 1144
    $P5008 = _lex_param_0."flat"()
    unless $P5008 goto if11_else12 
    set $S5002, $P102
    concat $S5001, $S5002, " :flat"
    box $P5009, $S5001
    set $P102, $P5009
.annotate 'line', 1146
    $P5010 = _lex_param_0."named"()
    set $P5012, $P5010
    unless $P5010 goto if12_end15 
    set $S5004, $P102
    concat $S5003, $S5004, " :named"
    box $P5011, $S5003
    set $P102, $P5011
    set $P5012, $P102
  if12_end15:
    set $P5017, $P5012
    goto if11_end13
  if11_else12:
.annotate 'line', 1150
    $P5013 = _lex_param_0."named"()
    set $P5016, $P5013
    unless $P5013 goto if13_end17 
    .const 'Sub' $P5014 = 'cuid_152_1346277600.974' 
    capture_lex $P5014
    $P5015 = $P5014($P5013)
    set $P5016, $P5015
  if13_end17:
    set $P5017, $P5016
  if11_end13:
.annotate 'line', 1153
    $P5018 = _lex_param_0."named"()
    unless $P5018 goto if14_else18 
.annotate 'line', 1154
    $P5019 = _lex_param_4."push"($P102)
    set $P5021, $P5019
    goto if14_end19
  if14_else18:
.annotate 'line', 1156
.annotate 'line', 1157
    $P5020 = _lex_param_3."push"($P102)
    set $P5021, $P5020
  if14_end19:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1346277600.974") :anon :lex :outer("cuid_153_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1150
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5004, $P5001
    concat $S5003, $S5004, " :named("
.annotate 'line', 1151
    find_lex $P5002, "$qastcomp"
    $P5003 = $P5002."escape"(_lex_param_0)
    set $S5005, $P5003
    concat $S5002, $S5003, $S5005
    concat $S5001, $S5002, ")"
    box $P5004, $S5001
    store_lex "$result", $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 10
    .const 'Sub' $P5003 = 'cuid_2_1346277600.974' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_3_1346277600.974' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1346277600.974' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1346277600.974' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1346277600.974") :anon :lex :outer("cuid_4_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 13
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("result") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$result", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["CallResult"]
    unless_null $P5004, fallback25
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback25:
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "PIRT"
    get_who $P5010, $P5011
    set $P5009, $P5010["Node"]
    unless_null $P5009, fallback28
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback28:
    type_check $I5001, _lex_param_1, $P5009
    unless $I5001 goto if17_else26 
.annotate 'line', 16
    $P5014 = _lex_param_1."result"()
    set $P5015, $P5014
    goto if17_end27
  if17_else26:
    set $P5015, _lex_param_1
  if17_end27:
    set $S5001, $P5015
    repr_bind_attr_str $P101, $P5004, "$!result", $S5001
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_3_1346277600.974") :anon :lex :outer("cuid_4_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 20
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 1
    repr_get_attr_str $S5001, $P5001, $P5002, "$!result"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 25
    .const 'Sub' $P5016 = 'cuid_5_1346277600.974' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_6_1346277600.974' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_7_1346277600.974' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_8_1346277600.974' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_9_1346277600.974' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_12_1346277600.974' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_13_1346277600.974' 
    capture_lex $P5016 
    .lex "%op_compilers", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    .const 'Sub' $P5004 = 'cuid_5_1346277600.974' 
    capture_lex $P5004
    newclosure $P5003, $P5004
    set $P5002["call"], $P5003
    .const 'Sub' $P5006 = 'cuid_6_1346277600.974' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    set $P5002["callmethod"], $P5005
    .const 'Sub' $P5008 = 'cuid_7_1346277600.974' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    set $P5002["return"], $P5007
    .const 'Sub' $P5010 = 'cuid_8_1346277600.974' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    set $P5002["yield"], $P5009
    .const 'Sub' $P5012 = 'cuid_9_1346277600.974' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    set $P5002["tailcall"], $P5011
    .const 'Sub' $P5014 = 'cuid_12_1346277600.974' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    set $P5002["inline"], $P5013
    set $P101, $P5002
    .const 'Sub' $P5015 = 'cuid_13_1346277600.974' 
    capture_lex $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1346277600.974") :anon :lex :outer("cuid_14_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 27
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    find_dynamic_lex $P5001, "$*HAS_RESULT"
    unless_null $P5001, fallback31
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["$HAS_RESULT"]
    unless_null $P5002, fallback32
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback32:
    unless_null $P5002, vivi_1933
    die "Contextual $*HAS_RESULT not found"
    box $P5006, "Contextual $*HAS_RESULT not found"
    set $P5002, $P5006
  vivi_1933:
    set $P5001, $P5002
  fallback31:
    unless $P5001 goto if18_else29 
.annotate 'line', 29
    $P5007 = _lex_param_0."shift"()
    set $S5007, $P5007
    concat $S5006, $S5007, " = "
    set $S5008, $S5006
    goto if18_end30
  if18_else29:
    set $S5008, ""
  if18_end30:
    concat $S5005, "    ", $S5008
.annotate 'line', 30
    $P5008 = _lex_param_0."shift"()
    set $S5009, $P5008
    concat $S5004, $S5005, $S5009
    concat $S5003, $S5004, "("
    join $S5010, ", ", _lex_param_0
    concat $S5002, $S5003, $S5010
    concat $S5001, $S5002, ")"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_6_1346277600.974") :anon :lex :outer("cuid_14_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex "$pir", $P101 
    .lex "$name", $P102 
    .lex "$invocant", $P103 
    .lex "@args", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    find_dynamic_lex $P5004, "$*HAS_RESULT"
    unless_null $P5004, fallback36
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$HAS_RESULT"]
    unless_null $P5005, fallback37
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback37:
    unless_null $P5005, vivi_2138
    die "Contextual $*HAS_RESULT not found"
    box $P5009, "Contextual $*HAS_RESULT not found"
    set $P5005, $P5009
  vivi_2138:
    set $P5004, $P5005
  fallback36:
    unless $P5004 goto if20_else34 
.annotate 'line', 33
    $P5010 = _lex_param_0."shift"()
    set $S5003, $P5010
    concat $S5002, $S5003, " = "
    set $S5004, $S5002
    goto if20_end35
  if20_else34:
    set $S5004, ""
  if20_end35:
    concat $S5001, "    ", $S5004
    box $P5011, $S5001
    set $P101, $P5011
.annotate 'line', 34
    $P5012 = _lex_param_0."shift"()
    set $P102, $P5012
.annotate 'line', 35
    $P5013 = _lex_param_0."shift"()
    set $P103, $P5013
    set $S5011, $P101
    set $S5012, $P103
    concat $S5010, $S5011, $S5012
    concat $S5009, $S5010, "."
    set $S5013, $P102
    concat $S5008, $S5009, $S5013
    concat $S5007, $S5008, "("
    join $S5014, ", ", _lex_param_0
    concat $S5006, $S5007, $S5014
    concat $S5005, $S5006, ")"
    .return ($S5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_7_1346277600.974") :anon :lex :outer("cuid_14_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    join $S5003, ", ", _lex_param_0
    concat $S5002, "    .return (", $S5003
    concat $S5001, $S5002, ")"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_8_1346277600.974") :anon :lex :outer("cuid_14_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    box $P5001, "yield compilation NYI"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_9_1346277600.974") :anon :lex :outer("cuid_14_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 44
    .param pmc _lex_param_0 
    .lex "@args", _lex_param_0 
    box $P5001, "tailcall compilation NYI"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1346277600.974") :anon :lex :outer("cuid_14_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .const 'Sub' $P5020 = 'cuid_154_1346277600.974' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_155_1346277600.974' 
    capture_lex $P5020 
    .lex "$pir", $P101 
    .lex "$i", $P102 
    .lex "@args", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_dynamic_lex $P5003, "$*HAS_RESULT"
    unless_null $P5003, fallback41
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$HAS_RESULT"]
    unless_null $P5004, fallback42
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback42:
    unless_null $P5004, vivi_2343
    die "Contextual $*HAS_RESULT not found"
    box $P5008, "Contextual $*HAS_RESULT not found"
    set $P5004, $P5008
  vivi_2343:
    set $P5003, $P5004
  fallback41:
    unless $P5003 goto if22_else39 
    .const 'Sub' $P5009 = 'cuid_154_1346277600.974' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5012, $P5010
    goto if22_end40
  if22_else39:
.annotate 'line', 53
.annotate 'line', 54
    $P5011 = _lex_param_0."shift"()
    set $P101, $P5011
    set $P5012, $P101
  if22_end40:
    box $P5013, 0
    set $P102, $P5013
    set $P5014, _lex_param_0
    iter $P5016, _lex_param_0
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers70
    push_eh $P5018
  for_next71:
    unless $P5016, for_done73
    shift $P5019, $P5016
  for_redo72:
    .const 'Sub' $P5017 = 'cuid_155_1346277600.974' 
    capture_lex $P5017
    $P5014 = $P5017($P5019)
    goto for_next71
  for_handlers70:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next71
    eq $P5018, .CONTROL_LOOP_REDO, for_redo72
  for_done73:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1346277600.974") :anon :lex :outer("cuid_12_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 49
    .const 'Sub' $P5016 = 'cuid_10_1346277600.974' 
    capture_lex $P5016 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 50
    find_lex $P5002, "@args"
    $P5003 = $P5002."shift"()
    set $P101, $P5003
.annotate 'line', 51
    find_lex $P5004, "@args"
    $P5005 = $P5004."shift"()
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["NQPRegex"]
    unless_null $P5006, fallback44
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["NQPRegex"]
    unless_null $P5009, vivi_2445
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  vivi_2445:
    set $P5006, $P5009
  fallback44:
    .const 'Sub' $P5013 = 'cuid_10_1346277600.974' 
    capture_lex $P5013
    $P5014 = $P5006."new"($P5013)
    $P5015 = "&subst"($P5005, $P5014, $P101, 1 :named("global"))
    store_lex "$pir", $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_10_1346277600.974") :anon :lex :outer("cuid_154_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx25_tgt
    .local int rx25_pos
    .local int rx25_off
    .local int rx25_eos
    .local int rx25_rep
    .local pmc rx25_cur
    .local pmc rx25_curclass
    .local pmc rx25_bstack
    .local pmc rx25_cstack
    (rx25_cur, rx25_tgt, rx25_pos, rx25_curclass, rx25_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx25_cur
    length rx25_eos, rx25_tgt
    eq $I19, 1, rx25_restart48
    gt rx25_pos, rx25_eos, rx25_fail49
    repr_get_attr_int $I11, self, rx25_curclass, "$!from"
    ne $I11, -1, rxscan26_done55
    goto rxscan26_scan54
  rxscan26_loop53:
    inc rx25_pos
    gt rx25_pos, rx25_eos, rx25_fail49
    repr_bind_attr_int rx25_cur, rx25_curclass, "$!from", rx25_pos
  rxscan26_scan54:
    nqp_rxmark rx25_bstack, rxscan26_loop53, rx25_pos, 0
  rxscan26_done55:
    add $I11, rx25_pos, 2
    gt $I11, rx25_eos, rx25_fail49
    substr $S10, rx25_tgt, rx25_pos, 2
    ne $S10, ucs4:"%r", rx25_fail49
    add rx25_pos, 2
    rx25_cur."!cursor_pass"(rx25_pos, 'backtrack'=>1)
    .return (rx25_cur)
  rx25_restart48:
    repr_get_attr_obj rx25_cstack, rx25_cur, rx25_curclass, "$!cstack"
  rx25_fail49:
    unless rx25_bstack, rx25_done47
    pop $I19, rx25_bstack
    if_null rx25_cstack, rx25_cstack_done52
    unless rx25_cstack, rx25_cstack_done52
    dec $I19
    set $P11, rx25_cstack[$I19]
  rx25_cstack_done52:
    pop rx25_rep, rx25_bstack
    pop rx25_pos, rx25_bstack
    pop $I19, rx25_bstack
    lt rx25_pos, -1, rx25_done47
    lt rx25_pos, 0, rx25_fail49
    eq $I19, 0, rx25_fail49
    nqp_islist $I20, rx25_cstack
    unless $I20, rx25_jump50
    elements $I18, rx25_bstack
    le $I18, 0, rx25_cut51
    dec $I18
    set $I18, rx25_bstack[$I18]
  rx25_cut51:
    assign rx25_cstack, $I18
  rx25_jump50:
    jump $I19
  rx25_done47:
    rx25_cur."!cursor_fail"()
    .return (rx25_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1346277600.974_caps" :subid("cuid_memo_1_1346277600.975")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1346277600.974_nfa" :subid("cuid_memo_2_1346277600.975")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 37
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 114
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1346277600.974") :anon :lex :outer("cuid_12_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 57
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_11_1346277600.974' 
    capture_lex $P5014 
    .lex "$_", _lex_param_0 
.annotate 'line', 58
    find_lex $P5001, "$pir"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["NQPRegex"]
    unless_null $P5002, fallback56
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["NQPRegex"]
    unless_null $P5005, vivi_2757
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  vivi_2757:
    set $P5002, $P5005
  fallback56:
    .const 'Sub' $P5009 = 'cuid_11_1346277600.974' 
    capture_lex $P5009
    $P5010 = $P5002."new"($P5009)
    $P5011 = "&subst"($P5001, $P5010, _lex_param_0, 1 :named("global"))
    store_lex "$pir", $P5011
    find_lex $P5012, "$i"
    set $N5002, $P5012
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5013, $N5001
    store_lex "$i", $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1346277600.974") :anon :lex :outer("cuid_155_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    .local pmc rx28_curclass
    .local pmc rx28_bstack
    .local pmc rx28_cstack
    (rx28_cur, rx28_tgt, rx28_pos, rx28_curclass, rx28_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx28_cur
    length rx28_eos, rx28_tgt
    eq $I19, 1, rx28_restart60
    gt rx28_pos, rx28_eos, rx28_fail61
    repr_get_attr_int $I11, self, rx28_curclass, "$!from"
    ne $I11, -1, rxscan29_done67
    goto rxscan29_scan66
  rxscan29_loop65:
    inc rx28_pos
    gt rx28_pos, rx28_eos, rx28_fail61
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!from", rx28_pos
  rxscan29_scan66:
    nqp_rxmark rx28_bstack, rxscan29_loop65, rx28_pos, 0
  rxscan29_done67:
    add $I11, rx28_pos, 1
    gt $I11, rx28_eos, rx28_fail61
    substr $S10, rx28_tgt, rx28_pos, 1
    ne $S10, ucs4:"%", rx28_fail61
    add rx28_pos, 1
    find_lex $P5001, "$i"
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!pos", rx28_pos
    $P11 = rx28_cur."!INTERPOLATE"($P5001)
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail61
    goto rxsubrule30_pass68
  rxsubrule30_back69:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail61
  rxsubrule30_pass68:
    rx28_cstack = rx28_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule30_back69
    push rx28_bstack, $I11
    push rx28_bstack, 0
    push rx28_bstack, rx28_pos
    elements $I11, rx28_cstack
    push rx28_bstack, $I11
    repr_get_attr_int rx28_pos, $P11, rx28_curclass, "$!pos"
    rx28_cur."!cursor_pass"(rx28_pos, 'backtrack'=>1)
    .return (rx28_cur)
  rx28_restart60:
    repr_get_attr_obj rx28_cstack, rx28_cur, rx28_curclass, "$!cstack"
  rx28_fail61:
    unless rx28_bstack, rx28_done59
    pop $I19, rx28_bstack
    if_null rx28_cstack, rx28_cstack_done64
    unless rx28_cstack, rx28_cstack_done64
    dec $I19
    set $P11, rx28_cstack[$I19]
  rx28_cstack_done64:
    pop rx28_rep, rx28_bstack
    pop rx28_pos, rx28_bstack
    pop $I19, rx28_bstack
    lt rx28_pos, -1, rx28_done59
    lt rx28_pos, 0, rx28_fail61
    eq $I19, 0, rx28_fail61
    nqp_islist $I20, rx28_cstack
    unless $I20, rx28_jump62
    elements $I18, rx28_bstack
    le $I18, 0, rx28_cut63
    dec $I18
    set $I18, rx28_bstack[$I18]
  rx28_cut63:
    assign rx28_cstack, $I18
  rx28_jump62:
    jump $I19
  rx28_done59:
    rx28_cur."!cursor_fail"()
    .return (rx28_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346277600.974_caps" :subid("cuid_memo_3_1346277600.975")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346277600.974_nfa" :subid("cuid_memo_4_1346277600.975")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 37
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "!INTERPOLATE"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "children_pir" :subid("cuid_13_1346277600.974") :anon :lex :outer("cuid_14_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_157_1346277600.974' 
    capture_lex $P5008 
    .lex "@parts", $P101 
    .lex "self", _lex_param_0 
    .lex "@children", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $P5002, _lex_param_1
    iter $P5004, _lex_param_1
    new $P5006, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5006, for_handlers108
    push_eh $P5006
  for_next109:
    unless $P5004, for_done111
    shift $P5007, $P5004
  for_redo110:
    .const 'Sub' $P5005 = 'cuid_157_1346277600.974' 
    capture_lex $P5005
    $P5002 = $P5005($P5007)
    goto for_next109
  for_handlers108:
    .get_results ($P5006)
    pop_upto_eh $P5006
    getattribute $P5006, $P5006, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, for_next109
    eq $P5006, .CONTROL_LOOP_REDO, for_redo110
  for_done111:
    pop_eh 
    join $S5001, "\n", $P101
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1346277600.974") :anon :lex :outer("cuid_13_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .const 'Sub' $P5027 = 'cuid_156_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_158_1346277600.974' 
    capture_lex $P5027 
    .lex "$_", _lex_param_0 
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if31_else74 
    .const 'Sub' $P5001 = 'cuid_156_1346277600.974' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5026, $P5002
    goto if31_end75
  if31_else74:
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Sub"]
    unless_null $P5003, fallback99
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback99:
    type_check $I5002, _lex_param_0, $P5003
    unless $I5002 goto if38_else97 
.annotate 'line', 99
    find_dynamic_lex $P5008, "@*PIRT_BLOCKS"
    unless_null $P5008, fallback100
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["@PIRT_BLOCKS"]
    unless_null $P5009, fallback101
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    set $P5012["@PIRT_BLOCKS"], $P5014
    set $P5009, $P5014
  fallback101:
    unless_null $P5009, vivi_39102
    die "Contextual @*PIRT_BLOCKS not found"
    box $P5015, "Contextual @*PIRT_BLOCKS not found"
    set $P5009, $P5015
  vivi_39102:
    set $P5008, $P5009
  fallback100:
    push $P5008, _lex_param_0
    set $P5025, $P5008
    goto if38_end98
  if38_else97:
    get_hll_global $P5019, "GLOBAL"
    nqp_get_package_through_who $P5018, $P5019, "PIRT"
    get_who $P5017, $P5018
    set $P5016, $P5017["Node"]
    unless_null $P5016, fallback105
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5020
  fallback105:
    type_check $I5003, _lex_param_0, $P5016
    unless $I5003 goto if40_else103 
    .const 'Sub' $P5021 = 'cuid_158_1346277600.974' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5024, $P5022
    goto if40_end104
  if40_else103:
.annotate 'line', 106
    box $P5023, "Unexpected object in PIRT tree"
    die $P5023
    set $P5024, $P5023
  if40_end104:
    set $P5025, $P5024
  if38_end98:
    set $P5026, $P5025
  if31_end75:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1346277600.974") :anon :lex :outer("cuid_157_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 67
    .lex "$op_name", $P101 
    .lex "@op_args", $P102 
    .lex "$i", $P103 
    .lex "$c", $P104 
    .lex "$arg", $P105 
    .lex "$*HAS_RESULT", $P106 
    .lex "$result", $P107 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
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
    find_lex $P5009, "$_"
    set $P5008, $P5009[0]
    unless_null $P5008, fallback76
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5010
  fallback76:
    set $P101, $P5008
    box $P5011, 1
    set $P103, $P5011
    find_lex $P5012, "$_"
    elements $I5001, $P5012
    box $P5013, $I5001
    set $P104, $P5013
    box $P5014, 0
    set $P106, $P5014
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, while32_handlers80
    push_eh $P5035
  while32_test77:
    set $N5001, $P103
    set $N5002, $P104
    islt $I5002, $N5001, $N5002
    box $P5036, $I5002
    set $P5034, $P5036
    unless $I5002 goto while32_done81 
  while32_redo79:
.annotate 'line', 75
    find_lex $P5016, "$_"
    set $I5003, $P103
    set $P5015, $P5016[$I5003]
    unless_null $P5015, fallback82
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5017
  fallback82:
    set $P105, $P5015
    get_hll_global $P5021, "GLOBAL"
    nqp_get_package_through_who $P5020, $P5021, "PIRT"
    get_who $P5019, $P5020
    set $P5018, $P5019["Node"]
    unless_null $P5018, fallback85
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5022
  fallback85:
    type_check $I5004, $P105, $P5018
    unless $I5004 goto if33_else83 
.annotate 'line', 77
.annotate 'line', 78
    $P5023 = $P105."result"()
    push $P102, $P5023
    set $P5032, $P102
    goto if33_end84
  if33_else83:
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "PIRT"
    get_who $P5025, $P5026
    set $P5024, $P5025["CallResult"]
    unless_null $P5024, fallback88
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5028
  fallback88:
    type_check $I5005, $P105, $P5024
    unless $I5005 goto if34_else86 
.annotate 'line', 80
.annotate 'line', 81
    $P5029 = $P105."result"()
    set $P107, $P5029
    box $P5030, 1
    set $P106, $P5030
    set $P5031, $P106
    goto if34_end87
  if34_else86:
.annotate 'line', 84
    push $P102, $P105
    set $P5031, $P102
  if34_end87:
    set $P5032, $P5031
  if33_end84:
    set $N5004, $P103
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P103, $P5033
    set $P5034, $P103
    goto while32_test77 
  while32_handlers80:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5035, $P5035, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while32_test77
    eq $P5035, .CONTROL_LOOP_REDO, while32_redo79
  while32_done81:
    pop_eh 
    unless_null $P106, fallback91
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    set $P5037, $P5038["$HAS_RESULT"]
    unless_null $P5037, fallback92
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5037, $P5040
  fallback92:
    unless_null $P5037, vivi_3693
    die "Contextual $*HAS_RESULT not found"
    box $P5041, "Contextual $*HAS_RESULT not found"
    set $P5037, $P5041
  vivi_3693:
    set $P106, $P5037
  fallback91:
    set $P5042, $P106
    unless $P106 goto if35_end90 
.annotate 'line', 89
    unshift $P102, $P107
    set $P5042, $P102
  if35_end90:
    find_lex $P5043, "%op_compilers"
    set $S5001, $P101
    exists $I5006, $P5043[$S5001]
    unless $I5006 goto if37_else94 
.annotate 'line', 92
    find_lex $P5044, "@parts"
.annotate 'line', 93
    find_lex $P5046, "%op_compilers"
    set $S5002, $P101
    set $P5045, $P5046[$S5002]
    unless_null $P5045, fallback96
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5045, $P5047
  fallback96:
    $P5048 = $P5045($P102)
    push $P5044, $P5048
    set $P5051, $P5044
    goto if37_end95
  if37_else94:
.annotate 'line', 95
    find_lex $P5049, "@parts"
    set $S5006, $P101
    concat $S5005, "    ", $S5006
    concat $S5004, $S5005, " "
    join $S5007, ", ", $P102
    concat $S5003, $S5004, $S5007
    box $P5050, $S5003
    push $P5049, $P5050
    set $P5051, $P5049
  if37_end95:
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1346277600.974") :anon :lex :outer("cuid_157_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 102
    .lex "$pir", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 103
    find_lex $P5002, "$_"
    $P5003 = $P5002."pir"()
    set $P101, $P5003
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless41_end107 
    find_lex $P5004, "@parts"
    push $P5004, $P101
    set $P5005, $P5004
  unless41_end107:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_29_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 114
    .const 'Sub' $P5015 = 'cuid_15_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_16_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_17_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_18_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_19_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_20_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_21_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_22_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_23_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_24_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_25_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_26_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_27_1346277600.974' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_28_1346277600.974' 
    capture_lex $P5015 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_15_1346277600.974' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_16_1346277600.974' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_17_1346277600.974' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_18_1346277600.974' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_19_1346277600.974' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_20_1346277600.974' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_21_1346277600.974' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_22_1346277600.974' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_23_1346277600.974' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_24_1346277600.974' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_25_1346277600.974' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_26_1346277600.974' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_27_1346277600.974' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_28_1346277600.974' 
    capture_lex $P5014
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_15_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$esc", $P101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $S5002, _lex_param_1
    escape $S5001, $S5002
    box $P5002, $S5001
    set $P101, $P5002
    set $S5003, $P101
    index $I5002, $S5003, utf8:"\\x", 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if42_else112 
    set $S5006, $P101
    concat $S5005, "utf8:\"", $S5006
    concat $S5004, $S5005, "\""
    set $S5015, $S5004
    goto if42_end113
  if42_else112:
    set $S5007, $P101
    index $I5004, $S5007, unicode:"\\u", 0
    set $N5003, $I5004
    set $N5004, 0
    isge $I5003, $N5003, $N5004
    unless $I5003 goto if43_else114 
    set $S5010, $P101
    concat $S5009, "unicode:\"", $S5010
    concat $S5008, $S5009, "\""
    set $S5014, $S5008
    goto if43_end115
  if43_else114:
    set $S5013, $P101
    concat $S5012, "\"", $S5013
    concat $S5011, $S5012, "\""
    set $S5014, $S5011
  if43_end115:
    set $S5015, $S5014
  if42_end113:
    .return ($S5015) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 135
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Sub"]
    unless_null $P5004, fallback116
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback116:
    new $P5009, 'ResizablePMCArray'
    setattribute $P101, $P5004, "@!children", $P5009
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "push" :subid("cuid_17_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!children"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "push_pirop" :subid("cuid_18_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 145
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :named("result") :optional 
    .param int haz_param_2 :opt_flag 
    if haz_param_2, default120
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5011
  default120:
    .lex "self", _lex_param_0 
    .lex "@opbits", _lex_param_1 
    .lex "$result", _lex_param_2 
    set $P5007, _lex_param_2
    unless _lex_param_2 goto if44_end118 
.annotate 'line', 146
.annotate 'line', 147
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["CallResult"]
    unless_null $P5001, fallback119
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback119:
    $P5006 = $P5001."new"(_lex_param_2)
    push _lex_param_1, $P5006
    set $P5007, _lex_param_1
  if44_end118:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!children"
    push $P5010, _lex_param_1
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "subid" :subid("cuid_19_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 152
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if45_else121 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback123
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback123:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!subid", $S5001
    set $S5003, $S5001
    goto if45_end122
  if45_else121:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!subid"
    set $S5003, $S5002
  if45_end122:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "pirflags" :subid("cuid_20_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 156
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if46_else124 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback126
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback126:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!pirflags", $S5001
    set $S5003, $S5001
    goto if46_end125
  if46_else124:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!pirflags"
    set $S5003, $S5002
  if46_end125:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_21_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if47_else127 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback129
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback129:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!name", $S5001
    set $S5003, $S5001
    goto if47_end128
  if47_else127:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!name"
    set $S5003, $S5002
  if47_end128:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "loadlibs" :subid("cuid_22_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 164
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    if haz_param_3, default132
    new $P5007, 'ResizablePMCArray'
    set _lex_param_1, $P5007
  default132:
    .lex "self", _lex_param_0 
    .lex "@libs", _lex_param_1 
    unless _lex_param_1 goto if48_else130 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_bind_attr_obj $P5001, $P5002, "@!loadlibs", _lex_param_1
    set $P5006, _lex_param_1
    goto if48_end131
  if48_else130:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!loadlibs"
    set $P5006, $P5005
  if48_end131:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "hll" :subid("cuid_23_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 168
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if49_else133 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback135
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback135:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!hll", $S5001
    set $S5003, $S5001
    goto if49_end134
  if49_else133:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!hll"
    set $S5003, $S5002
  if49_end134:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "namespace" :subid("cuid_24_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_4, default138
    new $P5007, 'ResizablePMCArray'
    set _lex_param_1, $P5007
  default138:
    .lex "self", _lex_param_0 
    .lex "@namespace", _lex_param_1 
    unless _lex_param_1 goto if50_else136 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_bind_attr_obj $P5001, $P5002, "@!namespace", _lex_param_1
    set $P5006, _lex_param_1
    goto if50_end137
  if50_else136:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!namespace"
    set $P5006, $P5005
  if50_end137:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_25_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "close_sub" :subid("cuid_26_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 180
    .param pmc _lex_param_0 
    .const 'Sub' $P5090 = 'cuid_159_1346277600.974' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_161_1346277600.974' 
    capture_lex $P5090 
    .lex "@parts", $P101 
    .lex "$sub_decl", $P102 
    .lex "$file", $P103 
    .lex "@*PIRT_BLOCKS", $P104 
    .lex "$*SUB_LINE", $P105 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!loadlibs"
    isnull $I5001, $P5008
    box $P5019, $I5001
    set $P5018, $P5019
    if $I5001 goto unless51_end140 
.annotate 'line', 184
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!loadlibs"
    set $P5009, $P5014
    iter $P5011, $P5014
    new $P5016, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5016, for_handlers141
    push_eh $P5016
  for_next142:
    unless $P5011, for_done144
    shift $P5017, $P5011
  for_redo143:
    .const 'Sub' $P5015 = 'cuid_159_1346277600.974' 
    capture_lex $P5015
    $P5009 = $P5015($P5017)
    goto for_next142
  for_handlers141:
    .get_results ($P5016)
    pop_upto_eh $P5016
    getattribute $P5016, $P5016, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, for_next142
    eq $P5016, .CONTROL_LOOP_REDO, for_redo143
  for_done144:
    pop_eh 
    set $P5018, $P5009
  unless51_end140:
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5001, $P5020, $P5021, "$!hll"
    box $P5028, $S5001
    set $P5027, $P5028
    unless $S5001 goto if52_end146 
.annotate 'line', 189
.annotate 'line', 190
    nqp_decontainerize $P5022, _lex_param_0
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5003, $P5023, $P5024, "$!hll"
    $P5025 = $P5022."escape"($S5003)
    set $S5004, $P5025
    concat $S5002, ".HLL ", $S5004
    box $P5026, $S5002
    push $P101, $P5026
    set $P5027, $P101
  if52_end146:
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5031, $P5029, $P5030, "@!namespace"
    isnull $I5002, $P5031
    unless $I5002 goto if53_else147 
.annotate 'line', 192
    box $P5032, ".namespace []"
    push $P101, $P5032
    set $P5035, $P101
    goto if53_end148
  if53_else147:
    .const 'Sub' $P5033 = 'cuid_161_1346277600.974' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if53_end148:
.annotate 'line', 202
    nqp_decontainerize $P5036, _lex_param_0
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5006, $P5037, $P5038, "$!name"
    set $S5007, $S5006
    if $S5006 goto unless54_end154 
    set $S5007, ""
  unless54_end154:
    $P5039 = $P5036."escape"($S5007)
    set $S5008, $P5039
    concat $S5005, ".sub ", $S5008
    box $P5040, $S5005
    set $P102, $P5040
    nqp_decontainerize $P5041, _lex_param_0
    nqp_get_sc_object $P5042, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5009, $P5041, $P5042, "$!subid"
    box $P5049, $S5009
    set $P5048, $P5049
    unless $S5009 goto if55_end156 
.annotate 'line', 203
    set $S5013, $P102
    concat $S5012, $S5013, " :subid("
.annotate 'line', 204
    nqp_decontainerize $P5043, _lex_param_0
    nqp_decontainerize $P5044, _lex_param_0
    nqp_get_sc_object $P5045, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5014, $P5044, $P5045, "$!subid"
    $P5046 = $P5043."escape"($S5014)
    set $S5015, $P5046
    concat $S5011, $S5012, $S5015
    concat $S5010, $S5011, ")"
    box $P5047, $S5010
    set $P102, $P5047
    set $P5048, $P102
  if55_end156:
    nqp_decontainerize $P5050, _lex_param_0
    nqp_get_sc_object $P5051, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5016, $P5050, $P5051, "$!pirflags"
    box $P5056, $S5016
    set $P5055, $P5056
    unless $S5016 goto if56_end158 
.annotate 'line', 206
    set $S5019, $P102
    concat $S5018, $S5019, " "
    nqp_decontainerize $P5052, _lex_param_0
    nqp_get_sc_object $P5053, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5020, $P5052, $P5053, "$!pirflags"
    concat $S5017, $S5018, $S5020
    box $P5054, $S5017
    set $P102, $P5054
    set $P5055, $P102
  if56_end158:
    push $P101, $P102
    find_caller_lex $P5057, "$?FILES"
    set $P103, $P5057
    set $P5061, $P103
    unless $P103 goto if57_end160 
.annotate 'line', 213
.annotate 'line', 214
    nqp_decontainerize $P5058, _lex_param_0
    $P5059 = $P5058."escape"($P103)
    set $S5022, $P5059
    concat $S5021, ".annotate 'file', ", $S5022
    box $P5060, $S5021
    push $P101, $P5060
    set $P5061, $P101
  if57_end160:
    unless_null $P104, fallback161
    get_hll_global $P5064, "GLOBAL"
    get_who $P5063, $P5064
    set $P5062, $P5063["@PIRT_BLOCKS"]
    unless_null $P5062, fallback162
    get_hll_global $P5066, "GLOBAL"
    get_who $P5065, $P5066
    new $P5067, 'ResizablePMCArray'
    set $P5065["@PIRT_BLOCKS"], $P5067
    set $P5062, $P5067
  fallback162:
    unless_null $P5062, vivi_58163
    die "Contextual @*PIRT_BLOCKS not found"
    box $P5068, "Contextual @*PIRT_BLOCKS not found"
    set $P5062, $P5068
  vivi_58163:
    set $P104, $P5062
  fallback161:
    box $P5069, -1
    set $P105, $P5069
.annotate 'line', 220
    nqp_decontainerize $P5070, _lex_param_0
    nqp_decontainerize $P5071, _lex_param_0
    nqp_get_sc_object $P5072, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5073, $P5071, $P5072, "@!children"
    $P5074 = $P5070."children_pir"($P5073)
    push $P101, $P5074
    box $P5075, ".end"
    push $P101, $P5075
    nqp_decontainerize $P5076, _lex_param_0
    nqp_get_sc_object $P5077, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    join $S5023, "\n", $P101
    repr_bind_attr_str $P5076, $P5077, "$!cached_pir", $S5023
    nqp_decontainerize $P5078, _lex_param_0
    nqp_get_sc_object $P5079, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    unless_null $P104, fallback164
    get_hll_global $P5082, "GLOBAL"
    get_who $P5081, $P5082
    set $P5080, $P5081["@PIRT_BLOCKS"]
    unless_null $P5080, fallback165
    get_hll_global $P5084, "GLOBAL"
    get_who $P5083, $P5084
    new $P5085, 'ResizablePMCArray'
    set $P5083["@PIRT_BLOCKS"], $P5085
    set $P5080, $P5085
  fallback165:
    unless_null $P5080, vivi_59166
    die "Contextual @*PIRT_BLOCKS not found"
    box $P5086, "Contextual @*PIRT_BLOCKS not found"
    set $P5080, $P5086
  vivi_59166:
    set $P104, $P5080
  fallback164:
    repr_bind_attr_obj $P5078, $P5079, "@!nested_blocks", $P104
    nqp_decontainerize $P5087, _lex_param_0
    nqp_get_sc_object $P5088, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    null $P5089
    repr_bind_attr_obj $P5087, $P5088, "@!children", $P5089
    .return ($P5089) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1346277600.974") :anon :lex :outer("cuid_26_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 185
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@parts"
.annotate 'line', 186
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."escape"(_lex_param_0)
    set $S5002, $P5004
    concat $S5001, ".loadlib ", $S5002
    box $P5005, $S5001
    push $P5001, $P5005
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1346277600.974") :anon :lex :outer("cuid_26_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 195
    .const 'Sub' $P5014 = 'cuid_160_1346277600.974' 
    capture_lex $P5014 
    .lex "@ns", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!namespace"
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, for_handlers149
    push_eh $P5010
  for_next150:
    unless $P5004, for_done152
    shift $P5011, $P5004
  for_redo151:
    .const 'Sub' $P5009 = 'cuid_160_1346277600.974' 
    capture_lex $P5009
    $P5002 = $P5009($P5011)
    goto for_next150
  for_handlers149:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5010, $P5010, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, for_next150
    eq $P5010, .CONTROL_LOOP_REDO, for_redo151
  for_done152:
    pop_eh 
    find_lex $P5012, "@parts"
    join $S5003, ";", $P101
    concat $S5002, ".namespace [", $S5003
    concat $S5001, $S5002, "]"
    box $P5013, $S5001
    push $P5012, $P5013
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1346277600.974") :anon :lex :outer("cuid_161_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 197
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@ns"
.annotate 'line', 198
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."escape"(_lex_param_0)
    push $P5001, $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_27_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 232
    .param pmc _lex_param_0 
    .lex "@parts", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 234
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."collect_sub_pir_into"($P101)
    join $S5001, "\n", $P101
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "collect_sub_pir_into" :subid("cuid_28_1346277600.974") :anon :lex :outer("cuid_29_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 238
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_162_1346277600.974' 
    capture_lex $P5019 
    .lex "self", _lex_param_0 
    .lex "@result", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5001, $P5001, $P5002, "$!cached_pir"
    box $P5006, $S5001
    set $P5005, $P5006
    if $S5001 goto unless60_end168 
.annotate 'line', 240
.annotate 'line', 241
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."close_sub"()
    set $P5005, $P5004
  unless60_end168:
.annotate 'line', 245
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_str $S5002, $P5007, $P5008, "$!cached_pir"
    $P5009 = _lex_param_1."push"($S5002)
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!nested_blocks"
    set $P5010, $P5015
    iter $P5012, $P5015
    new $P5017, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5017, for_handlers169
    push_eh $P5017
  for_next170:
    unless $P5012, for_done172
    shift $P5018, $P5012
  for_redo171:
    .const 'Sub' $P5016 = 'cuid_162_1346277600.974' 
    capture_lex $P5016
    $P5010 = $P5016($P5018)
    goto for_next170
  for_handlers169:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, for_next170
    eq $P5017, .CONTROL_LOOP_REDO, for_redo171
  for_done172:
    pop_eh 
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1346277600.974") :anon :lex :outer("cuid_28_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 246
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 247
    find_lex $P5001, "@result"
    $P5002 = _lex_param_0."collect_sub_pir_into"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_36_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 252
    .const 'Sub' $P5007 = 'cuid_30_1346277600.974' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_31_1346277600.974' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_32_1346277600.974' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_33_1346277600.974' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_34_1346277600.974' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_35_1346277600.974' 
    capture_lex $P5007 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_30_1346277600.974' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_31_1346277600.974' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_32_1346277600.974' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_33_1346277600.974' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_34_1346277600.974' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_35_1346277600.974' 
    capture_lex $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_30_1346277600.974") :anon :lex :outer("cuid_36_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 257
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("result") :optional 
    .param int haz_param_5 :opt_flag 
    if haz_param_5, default178
    box $P5022, ""
    set _lex_param_1, $P5022
  default178:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$result", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Ops"]
    unless_null $P5004, fallback173
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback173:
    new $P5009, 'ResizablePMCArray'
    setattribute $P101, $P5004, "@!children", $P5009
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback174
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback174:
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "PIRT"
    get_who $P5016, $P5017
    set $P5015, $P5016["Node"]
    unless_null $P5015, fallback177
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback177:
    type_check $I5001, _lex_param_1, $P5015
    unless $I5001 goto if61_else175 
.annotate 'line', 261
    $P5020 = _lex_param_1."result"()
    set $P5021, $P5020
    goto if61_end176
  if61_else175:
    set $P5021, _lex_param_1
  if61_end176:
    set $S5001, $P5021
    repr_bind_attr_str $P101, $P5010, "$!result", $S5001
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "push" :subid("cuid_31_1346277600.974") :anon :lex :outer("cuid_36_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!children"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "push_pirop" :subid("cuid_32_1346277600.974") :anon :lex :outer("cuid_36_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :named("result") :optional 
    .param int haz_param_6 :opt_flag 
    if haz_param_6, default182
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5011
  default182:
    .lex "self", _lex_param_0 
    .lex "@opbits", _lex_param_1 
    .lex "$result", _lex_param_2 
    set $P5007, _lex_param_2
    unless _lex_param_2 goto if62_end180 
.annotate 'line', 270
.annotate 'line', 271
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["CallResult"]
    unless_null $P5001, fallback181
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback181:
    $P5006 = $P5001."new"(_lex_param_2)
    push _lex_param_1, $P5006
    set $P5007, _lex_param_1
  if62_end180:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!children"
    push $P5010, _lex_param_1
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_33_1346277600.974") :anon :lex :outer("cuid_36_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 276
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if63_else183 
.annotate 'line', 277
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback187
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback187:
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "PIRT"
    get_who $P5006, $P5007
    set $P5005, $P5006["Node"]
    unless_null $P5005, fallback188
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5009
  fallback188:
    type_check $I5001, $P5003, $P5005
    unless $I5001 goto if64_else185 
.annotate 'line', 278
    set $P5010, _lex_param_1[0]
    unless_null $P5010, fallback189
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback189:
    $P5012 = $P5010."result"()
    set $P5015, $P5012
    goto if64_end186
  if64_else185:
    set $P5013, _lex_param_1[0]
    unless_null $P5013, fallback190
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5014
  fallback190:
    set $P5015, $P5013
  if64_end186:
    set $S5001, $P5015
    repr_bind_attr_str $P5001, $P5002, "$!result", $S5001
    set $S5003, $S5001
    goto if63_end184
  if63_else183:
.annotate 'line', 280
    nqp_decontainerize $P5016, _lex_param_0
    nqp_get_sc_object $P5017, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_str $S5002, $P5016, $P5017, "$!result"
    set $S5003, $S5002
  if63_end184:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "node" :subid("cuid_34_1346277600.974") :anon :lex :outer("cuid_36_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 285
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if65_else191 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback193
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback193:
    repr_bind_attr_obj $P5001, $P5002, "$!node", $P5003
    set $P5008, $P5003
    goto if65_end192
  if65_else191:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!node"
    set $P5008, $P5007
  if65_end192:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_35_1346277600.974") :anon :lex :outer("cuid_36_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 289
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_163_1346277600.974' 
    capture_lex $P5014 
    .lex "$ann", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!node"
    set $P5008, $P5005
    unless $P5005 goto if66_end195 
    .const 'Sub' $P5006 = 'cuid_163_1346277600.974' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if66_end195:
    set $S5002, $P101
.annotate 'line', 298
    nqp_decontainerize $P5009, _lex_param_0
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!children"
    $P5013 = $P5009."children_pir"($P5012)
    set $S5003, $P5013
    concat $S5001, $S5002, $S5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1346277600.974") :anon :lex :outer("cuid_35_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 291
    .lex "$line", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 292
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Compiler"]
    unless_null $P5002, fallback196
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback196:
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!node"
    $P5011 = $P5010."orig"()
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    nqp_get_sc_object $P5014, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    repr_get_attr_obj $P5015, $P5012, $P5014, "$!node"
    $P5016 = $P5015."from"()
    $P5017 = $P5002."lineof"($P5011, $P5016, 1 :named("cache"))
    set $P101, $P5017
    set $N5001, $P101
    find_dynamic_lex $P5018, "$*SUB_LINE"
    unless_null $P5018, fallback199
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["$SUB_LINE"]
    unless_null $P5019, fallback200
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5022
  fallback200:
    unless_null $P5019, vivi_68201
    die "Contextual $*SUB_LINE not found"
    box $P5023, "Contextual $*SUB_LINE not found"
    set $P5019, $P5023
  vivi_68201:
    set $P5018, $P5019
  fallback199:
    set $N5002, $P5018
    isne $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if67_end198 
.annotate 'line', 293
    set $S5003, $P101
    concat $S5002, ".annotate 'line', ", $S5003
    concat $S5001, $S5002, "\n"
    box $P5024, $S5001
    store_lex "$ann", $P5024
    store_dynamic_lex "$*SUB_LINE", $P101
    set $P5025, $P101
  if67_end198:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_41_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 302
    .const 'Sub' $P5008 = 'cuid_164_1346277600.974' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_37_1346277600.974' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_38_1346277600.974' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_39_1346277600.974' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_40_1346277600.974' 
    capture_lex $P5008 
    .lex "$serno", $P101 
    .lex "&unique", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_164_1346277600.974' 
    capture_lex $P5002
    set $P102, $P5002
    box $P5003, 10
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_37_1346277600.974' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_38_1346277600.974' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_39_1346277600.974' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_40_1346277600.974' 
    capture_lex $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "unique" :subid("cuid_164_1346277600.974") :anon :lex :outer("cuid_41_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 306
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    .local pmc tmp_1 
    set $S5002, _lex_param_0
    find_lex $P5001, "$serno"
    set tmp_1, $P5001
    set $N5002, tmp_1
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$serno", $P5002
    set $S5003, tmp_1
    concat $S5001, $S5002, $S5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_37_1346277600.974") :anon :lex :outer("cuid_41_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 308
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Label"]
    unless_null $P5004, fallback202
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback202:
.annotate 'line', 310
    $P5009 = "&unique"(_lex_param_1)
    set $S5001, $P5009
    repr_bind_attr_str $P101, $P5004, "$!name", $S5001
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_38_1346277600.974") :anon :lex :outer("cuid_41_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if69_else203 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 34
.annotate 'line', 315
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback205
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback205:
    $P5005 = "&unique"($P5003)
    set $S5001, $P5005
    repr_bind_attr_str $P5001, $P5002, "$!name", $S5001
    set $S5003, $S5001
    goto if69_end204
  if69_else203:
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 34
    repr_get_attr_str $S5002, $P5006, $P5007, "$!name"
    set $S5003, $S5002
  if69_end204:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_39_1346277600.974") :anon :lex :outer("cuid_41_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 34
    repr_get_attr_str $S5001, $P5001, $P5002, "$!name"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_40_1346277600.974") :anon :lex :outer("cuid_41_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 322
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 34
    repr_get_attr_str $S5003, $P5001, $P5002, "$!name"
    concat $S5002, "  ", $S5003
    concat $S5001, $S5002, ":"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_58_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 330
    .const 'Sub' $P5027 = 'cuid_172_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_42_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_43_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_44_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_45_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_46_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_47_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_48_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_49_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_50_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_51_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_52_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_53_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_54_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_55_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_56_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_57_1346277600.974' 
    capture_lex $P5027 
    .lex "%core_ops", $P101 
    .lex "%hll_ops", $P102 
    .lex "%cached_pirops", $P103 
    .lex "%hll_box", $P104 
    .lex "%hll_unbox", $P105 
    .lex "%core_inlinability", $P106 
    .lex "%hll_inlinability", $P107 
    .lex "%core_result_type", $P108 
    .lex "%hll_result_type", $P109 
    .lex "&pirop_mapper", $P110 
    .lex "$?PACKAGE", $P111 
    .lex "$?CLASS", $P112 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'Hash'
    set $P104, $P5004
    new $P5005, 'Hash'
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'Hash'
    set $P107, $P5007
    new $P5008, 'Hash'
    set $P108, $P5008
    new $P5009, 'Hash'
    set $P109, $P5009
    .const 'Sub' $P5010 = 'cuid_172_1346277600.974' 
    capture_lex $P5010
    set $P110, $P5010
    .const 'Sub' $P5011 = 'cuid_42_1346277600.974' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_43_1346277600.974' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_44_1346277600.974' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_45_1346277600.974' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_46_1346277600.974' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_47_1346277600.974' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_48_1346277600.974' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_49_1346277600.974' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_50_1346277600.974' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_51_1346277600.974' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_52_1346277600.974' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_53_1346277600.974' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_54_1346277600.974' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_55_1346277600.974' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_56_1346277600.974' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_57_1346277600.974' 
    capture_lex $P5026
    .return ($P110) 
.end
.HLL "nqp"
.namespace []
.sub "pirop_mapper" :subid("cuid_172_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 506
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_166_1346277600.974' 
    capture_lex $P5017 
    .lex "@arg_types", $P101 
    .lex "$ret_type", $P102 
    .lex "$ret_meth", $P103 
    .lex "$pirop", _lex_param_0 
    .lex "$sig", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    set $S5001, _lex_param_1
    split $P5004, "", $S5001
    set $P101, $P5004
.annotate 'line', 509
    $P5005 = $P101."shift"()
    set $P102, $P5005
    set $S5002, $P102
    iseq $I5001, $S5002, "P"
    unless $I5001 goto if70_else206 
.annotate 'line', 513
    box $P5006, "fresh_p"
    set $P103, $P5006
    set $P5014, $P103
    goto if70_end207
  if70_else206:
    set $S5003, $P102
    iseq $I5002, $S5003, "S"
    unless $I5002 goto if71_else208 
.annotate 'line', 514
    box $P5007, "fresh_s"
    set $P103, $P5007
    set $P5013, $P103
    goto if71_end209
  if71_else208:
    set $S5004, $P102
    iseq $I5003, $S5004, "I"
    unless $I5003 goto if72_else210 
.annotate 'line', 515
    box $P5008, "fresh_i"
    set $P103, $P5008
    set $P5012, $P103
    goto if72_end211
  if72_else210:
    set $S5005, $P102
    iseq $I5004, $S5005, "N"
    box $P5011, $I5004
    set $P5010, $P5011
    unless $I5004 goto if73_end213 
.annotate 'line', 516
    box $P5009, "fresh_n"
    set $P103, $P5009
    set $P5010, $P103
  if73_end213:
    set $P5012, $P5010
  if72_end211:
    set $P5013, $P5012
  if71_end209:
    set $P5014, $P5013
  if70_end207:
    .const 'Sub' $P5016 = 'cuid_166_1346277600.974' 
    capture_lex $P5016
    newclosure $P5015, $P5016
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1346277600.974") :anon :lex :outer("cuid_172_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 518
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5041 = 'cuid_165_1346277600.974' 
    capture_lex $P5041 
    .const 'Sub' $P5041 = 'cuid_168_1346277600.974' 
    capture_lex $P5041 
    .const 'Sub' $P5041 = 'cuid_171_1346277600.974' 
    capture_lex $P5041 
    .lex "$ops", $P101 
    .lex "@args", $P102 
    .lex "$num_args", $P103 
    .lex "$i", $P104 
    .lex "$last_argtype_was_Q", $P105 
    .lex "$aggregate", $P106 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op_name", _lex_param_1 
    .lex "@op_args", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
.annotate 'line', 519
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "PIRT"
    get_who $P5008, $P5009
    set $P5007, $P5008["Ops"]
    unless_null $P5007, fallback214
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback214:
    $P5012 = $P5007."new"()
    set $P101, $P5012
    find_lex $P5013, "$ret_meth"
    set $P5016, $P5013
    unless $P5013 goto if74_end216 
    .const 'Sub' $P5014 = 'cuid_165_1346277600.974' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
  if74_end216:
    set $N5001, _lex_param_2
    box $P5017, $N5001
    set $P103, $P5017
    find_lex $P5018, "@arg_types"
    set $N5002, $P5018
    set $N5003, $P103
    isne $I5001, $N5002, $N5003
    box $P5022, $I5001
    set $P5021, $P5022
    unless $I5001 goto if76_end221 
.annotate 'line', 532
    set $S5005, _lex_param_1
    concat $S5004, "Operation '", $S5005
    concat $S5003, $S5004, "' requires "
    find_lex $P5019, "@arg_types"
    set $N5004, $P5019
    set $S5006, $N5004
    concat $S5002, $S5003, $S5006
    set $S5008, $P103
    concat $S5007, " operands, but got ", $S5008
    concat $S5001, $S5002, $S5007
    box $P5020, $S5001
    die $P5020
    set $P5021, $P5020
  if76_end221:
    box $P5023, 0
    set $P104, $P5023
    box $P5024, 0
    set $P105, $P5024
    box $P5025, ""
    set $P106, $P5025
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while77_handlers225
    push_eh $P5029
  while77_test222:
    set $N5005, $P104
    set $N5006, $P103
    islt $I5002, $N5005, $N5006
    box $P5030, $I5002
    set $P5028, $P5030
    unless $I5002 goto while77_done226 
  while77_redo224:
    .const 'Sub' $P5026 = 'cuid_168_1346277600.974' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
    goto while77_test222 
  while77_handlers225:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, while77_test222
    eq $P5029, .CONTROL_LOOP_REDO, while77_redo224
  while77_done226:
    pop_eh 
    find_lex $P5031, "$ret_meth"
    isfalse $I5003, $P5031
    set $I5005, $I5003
    unless $I5003 goto if84_end242 
    find_lex $P5032, "$ret_type"
    set $S5009, $P5032
    isne $I5004, $S5009, "v"
    set $I5005, $I5004
  if84_end242:
    set $I5007, $I5005
    unless $I5005 goto if83_end240 
    find_lex $P5033, "$ret_type"
    set $N5007, $P5033
    set $S5010, $N5007
    find_lex $P5034, "$ret_type"
    set $S5011, $P5034
    iseq $I5006, $S5010, $S5011
    set $I5007, $I5006
  if83_end240:
    box $P5038, $I5007
    set $P5037, $P5038
    unless $I5007 goto if82_end238 
    .const 'Sub' $P5035 = 'cuid_171_1346277600.974' 
    capture_lex $P5035
    $P5036 = $P5035()
    set $P5037, $P5036
  if82_end238:
.annotate 'line', 580
    find_lex $P5039, "$pirop"
    $P5040 = $P101."push_pirop"($P5039, $P102 :flat)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1346277600.974") :anon :lex :outer("cuid_166_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 524
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 525
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback217
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback218
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback218:
    unless_null $P5004, vivi_75219
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_75219:
    set $P5003, $P5004
  fallback217:
    find_lex $P5002, "$ret_meth"
    set $S5001, $P5002
    $P5009 = $P5003.$S5001()
    set $P101, $P5009
.annotate 'line', 526
    find_lex $P5010, "@args"
    $P5011 = $P5010."push"($P101)
.annotate 'line', 527
    find_lex $P5012, "$ops"
    $P5013 = $P5012."result"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1346277600.974") :anon :lex :outer("cuid_166_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 539
    .const 'Sub' $P5022 = 'cuid_167_1346277600.974' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_169_1346277600.974' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_170_1346277600.974' 
    capture_lex $P5022 
    .lex "$arg_type", $P101 
    .lex "$operand", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_lex $P5004, "@arg_types"
    find_lex $P5005, "$i"
    set $I5001, $P5005
    set $P5003, $P5004[$I5001]
    unless_null $P5003, fallback227
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback227:
    set $P101, $P5003
    find_lex $P5008, "@op_args"
    find_lex $P5009, "$i"
    set $I5002, $P5009
    set $P5007, $P5008[$I5002]
    unless_null $P5007, fallback228
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5010
  fallback228:
    set $P102, $P5007
    set $S5001, $P101
    iseq $I5003, $S5001, "Q"
    unless $I5003 goto if78_else229 
    .const 'Sub' $P5011 = 'cuid_167_1346277600.974' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5019, $P5012
    goto if78_end230
  if78_else229:
    find_lex $P5013, "$last_argtype_was_Q"
    unless $P5013 goto if79_else231 
    .const 'Sub' $P5014 = 'cuid_169_1346277600.974' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5018, $P5015
    goto if79_end232
  if79_else231:
    .const 'Sub' $P5016 = 'cuid_170_1346277600.974' 
    capture_lex $P5016
    $P5017 = $P5016()
    set $P5018, $P5017
  if79_end232:
    set $P5019, $P5018
  if78_end230:
    find_lex $P5020, "$i"
    set $N5002, $P5020
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5021, $N5001
    store_lex "$i", $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1346277600.974") :anon :lex :outer("cuid_168_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 542
    .lex "$post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 543
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$operand"
    $P5005 = $P5003."as_post"($P5004)
    $P5006 = $P5002."coerce"($P5005, "P")
    set $P101, $P5006
.annotate 'line', 544
    find_lex $P5007, "$ops"
    $P5008 = $P5007."push"($P101)
.annotate 'line', 545
    $P5009 = $P101."result"()
    store_lex "$aggregate", $P5009
    box $P5010, 1
    store_lex "$last_argtype_was_Q", $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1346277600.974") :anon :lex :outer("cuid_168_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 548
    .lex "$post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5002, "$arg_type"
    set $S5001, $P5002
    isne $I5001, $S5001, "P"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if80_end234 
.annotate 'line', 549
.annotate 'line', 550
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$operand"
    find_lex $P5005, "$arg_type"
    $P5006 = $P5003."apply_context"($P5004, $P5005)
    store_lex "$operand", $P5006
    set $P5007, $P5006
  if80_end234:
.annotate 'line', 552
    find_lex $P5009, "$qastcomp"
    find_lex $P5010, "$qastcomp"
    find_lex $P5011, "$operand"
    $P5012 = $P5010."as_post"($P5011)
    find_lex $P5013, "$arg_type"
    $P5014 = $P5009."coerce"($P5012, $P5013)
    set $P101, $P5014
.annotate 'line', 553
    find_lex $P5015, "$ops"
    $P5016 = $P5015."push"($P101)
.annotate 'line', 554
    find_lex $P5017, "@args"
    find_lex $P5018, "$aggregate"
    set $S5005, $P5018
    concat $S5004, $S5005, "["
    $P5019 = $P101."result"()
    set $S5006, $P5019
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, "]"
    $P5020 = $P5017."push"($S5002)
    box $P5021, 0
    store_lex "$last_argtype_was_Q", $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1346277600.974") :anon :lex :outer("cuid_168_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 557
    .lex "$post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5002, "$arg_type"
    set $S5001, $P5002
    isne $I5001, $S5001, "P"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if81_end236 
.annotate 'line', 558
.annotate 'line', 559
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$operand"
    find_lex $P5005, "$arg_type"
    $P5006 = $P5003."apply_context"($P5004, $P5005)
    store_lex "$operand", $P5006
    set $P5007, $P5006
  if81_end236:
.annotate 'line', 561
    find_lex $P5009, "$qastcomp"
    find_lex $P5010, "$qastcomp"
    find_lex $P5011, "$operand"
    $P5012 = $P5010."as_post"($P5011)
    find_lex $P5013, "$arg_type"
    $P5014 = $P5009."coerce"($P5012, $P5013)
    set $P101, $P5014
.annotate 'line', 562
    find_lex $P5015, "$ops"
    $P5016 = $P5015."push"($P101)
.annotate 'line', 563
    find_lex $P5017, "@args"
    $P5018 = $P101."result"()
    $P5019 = $P5017."push"($P5018)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1346277600.974") :anon :lex :outer("cuid_166_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 570
    .lex "$rreg", $P101 
    .lex "$brak", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_lex $P5004, "@args"
    find_lex $P5005, "$ret_type"
    set $N5001, $P5005
    set $I5001, $N5001
    set $P5003, $P5004[$I5001]
    unless_null $P5003, fallback243
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback243:
    set $P101, $P5003
    set $S5001, $P101
    index $I5002, $S5001, "[", 0
    box $P5007, $I5002
    set $P102, $P5007
    set $N5002, $P102
    set $N5003, 0
    isgt $I5003, $N5002, $N5003
    box $P5010, $I5003
    set $P5009, $P5010
    unless $I5003 goto if85_end245 
.annotate 'line', 573
    set $S5003, $P101
    set $N5005, $P102
    set $N5006, 1
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $S5004, $P101
    length $I5005, $S5004
    set $N5008, $I5005
    set $N5010, $P102
    set $N5011, 2
    add $N5009, $N5010, $N5011
    sub $N5007, $N5008, $N5009
    set $I5006, $N5007
    substr $S5002, $S5003, $I5004, $I5006
    box $P5008, $S5002
    set $P101, $P5008
    set $P5009, $P101
  if85_end245:
.annotate 'line', 576
    find_lex $P5011, "$ops"
    $P5012 = $P5011."result"($P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "compile_op" :subid("cuid_42_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 354
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5023 = 'cuid_173_1346277600.974' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_174_1346277600.974' 
    capture_lex $P5023 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$hll", _lex_param_2 
    .lex "$op", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_246
    .lex "RETURN", $P102
.annotate 'line', 355
    $P5002 = _lex_param_3."op"()
    set $P101, $P5002
    set $P5015, _lex_param_2
    unless _lex_param_2 goto if86_end249 
.annotate 'line', 356
    find_lex $P5004, "%hll_ops"
    set $S5001, _lex_param_2
    set $P5003, $P5004[$S5001]
    unless_null $P5003, fallback254
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5005
  fallback254:
    set $P5011, $P5003
    unless $P5003 goto if88_end253 
    find_lex $P5008, "%hll_ops"
    set $S5002, _lex_param_2
    set $P5007, $P5008[$S5002]
    unless_null $P5007, fallback255
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5009
  fallback255:
    set $S5003, $P101
    set $P5006, $P5007[$S5003]
    unless_null $P5006, fallback256
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback256:
    set $P5011, $P5006
  if88_end253:
    set $P5014, $P5011
    unless $P5011 goto if87_end251 
    .const 'Sub' $P5012 = 'cuid_173_1346277600.974' 
    capture_lex $P5012
    $P5013 = $P5012($P5011)
    set $P5014, $P5013
  if87_end251:
    set $P5015, $P5014
  if86_end249:
    find_lex $P5017, "%core_ops"
    set $S5004, $P101
    set $P5016, $P5017[$S5004]
    unless_null $P5016, fallback259
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5018
  fallback259:
    set $P5021, $P5016
    unless $P5016 goto if89_end258 
    .const 'Sub' $P5019 = 'cuid_174_1346277600.974' 
    capture_lex $P5019
    $P5020 = $P5019($P5016)
    set $P5021, $P5020
  if89_end258:
    set $S5007, $P101
    concat $S5006, "No registered operation handler for '", $S5007
    concat $S5005, $S5006, "'"
    box $P5022, $S5005
    die $P5022
    goto lexotic_247
  lexotic_246:
    .get_results ($P5022)
  lexotic_247:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1346277600.974") :anon :lex :outer("cuid_42_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 357
    .param pmc _lex_param_0 
    .lex "$mapper", _lex_param_0 
.annotate 'line', 358
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$op"
    $P5004 = _lex_param_0($P5002, $P5003)
    find_lex $P5001, "RETURN"
    $P5005 = $P5001($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1346277600.974") :anon :lex :outer("cuid_42_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 361
    .param pmc _lex_param_0 
    .lex "$mapper", _lex_param_0 
.annotate 'line', 362
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$op"
    $P5004 = _lex_param_0($P5002, $P5003)
    find_lex $P5001, "RETURN"
    $P5005 = $P5001($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "compile_pirop" :subid("cuid_43_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5014 = 'cuid_175_1346277600.974' 
    capture_lex $P5014 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$op_name", _lex_param_2 
    .lex "@op_args", _lex_param_3 
    set $S5001, _lex_param_2
    index $I5001, $S5001, " ", 0
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if90_end261 
.annotate 'line', 369
    set $S5003, _lex_param_2
    split $P5001, " ", $S5003
    join $S5002, "__", $P5001
    box $P5002, $S5002
    set _lex_param_2, $P5002
    set $P5003, _lex_param_2
  if90_end261:
    find_lex $P5005, "%cached_pirops"
    set $S5004, _lex_param_2
    exists $I5002, $P5005[$S5004]
    box $P5009, $I5002
    set $P5008, $P5009
    if $I5002 goto unless91_end263 
    .const 'Sub' $P5006 = 'cuid_175_1346277600.974' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  unless91_end263:
.annotate 'line', 376
    find_lex $P5011, "%cached_pirops"
    set $S5005, _lex_param_2
    set $P5010, $P5011[$S5005]
    unless_null $P5010, fallback266
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5012
  fallback266:
    $P5013 = $P5010(_lex_param_1, _lex_param_2, _lex_param_3)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1346277600.974") :anon :lex :outer("cuid_43_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 372
    .lex "@pieces", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5003, "$op_name"
    set $S5001, $P5003
    split $P5002, "__", $S5001
    set $P101, $P5002
    find_lex $P5004, "%cached_pirops"
    find_lex $P5005, "$op_name"
    set $S5002, $P5005
.annotate 'line', 374
    set $P5006, $P101[0]
    unless_null $P5006, fallback264
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback264:
    set $P5008, $P101[1]
    unless_null $P5008, fallback265
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback265:
    $P5010 = "&pirop_mapper"($P5006, $P5008)
    set $P5004[$S5002], $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "add_core_op" :subid("cuid_44_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 380
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("inlinable") :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default267
    box $P5004, 0
    set _lex_param_3, $P5004
  default267:
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$handler", _lex_param_2 
    .lex "$inlinable", _lex_param_3 
    find_lex $P5001, "%core_ops"
    set $S5001, _lex_param_1
    set $P5001[$S5001], _lex_param_2
.annotate 'line', 382
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."set_core_op_inlinability"(_lex_param_1, _lex_param_3)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_op" :subid("cuid_45_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 386
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 :named("inlinable") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default271
    box $P5011, 0
    set _lex_param_4, $P5011
  default271:
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$handler", _lex_param_3 
    .lex "$inlinable", _lex_param_4 
    find_lex $P5001, "%hll_ops"
    set $S5001, _lex_param_1
    exists $I5001, $P5001[$S5001]
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless92_end269 
    find_lex $P5002, "%hll_ops"
    set $S5002, _lex_param_1
    new $P5003, 'Hash'
    set $P5002[$S5002], $P5003
    set $P5004, $P5003
  unless92_end269:
    find_lex $P5007, "%hll_ops"
    set $S5003, _lex_param_1
    set $P5006, $P5007[$S5003]
    unless_null $P5006, fallback270
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5008
  fallback270:
    set $S5004, _lex_param_2
    set $P5006[$S5004], _lex_param_3
.annotate 'line', 389
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."set_hll_op_inlinability"(_lex_param_1, _lex_param_2, _lex_param_4)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "add_core_pirop_mapping" :subid("cuid_46_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 393
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 :named("inlinable") :optional 
    .param int haz_param_9 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_176_1346277600.974' 
    capture_lex $P5011 
    if haz_param_9, default272
    box $P5010, 0
    set _lex_param_4, $P5010
  default272:
    .lex "$pirop_mapper", $P101 
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$pirop", _lex_param_2 
    .lex "$sig", _lex_param_3 
    .lex "$inlinable", _lex_param_4 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 394
    $P5002 = "&pirop_mapper"(_lex_param_2, _lex_param_3)
    set $P101, $P5002
    find_lex $P5003, "%core_ops"
    set $S5001, _lex_param_1
    .const 'Sub' $P5005 = 'cuid_176_1346277600.974' 
    capture_lex $P5005
    newclosure $P5004, $P5005
    set $P5003[$S5001], $P5004
.annotate 'line', 398
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."set_core_op_inlinability"(_lex_param_1, _lex_param_4)
.annotate 'line', 399
    nqp_decontainerize $P5008, _lex_param_0
    set $S5003, _lex_param_3
    substr $S5002, $S5003, 0, 1
    $P5009 = $P5008."set_core_op_result_type"(_lex_param_1, $S5002)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1346277600.974") :anon :lex :outer("cuid_46_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 395
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
.annotate 'line', 396
    $P5002 = _lex_param_1."op"()
    $P5003 = _lex_param_1."list"()
    find_lex $P5001, "$pirop_mapper"
    $P5004 = $P5001(_lex_param_0, $P5002, $P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_pirop_mapping" :subid("cuid_47_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 403
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("inlinable") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_177_1346277600.974' 
    capture_lex $P5018 
    if haz_param_10, default276
    box $P5017, 0
    set _lex_param_5, $P5017
  default276:
    .lex "$pirop_mapper", $P101 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$pirop", _lex_param_3 
    .lex "$sig", _lex_param_4 
    .lex "$inlinable", _lex_param_5 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 404
    $P5002 = "&pirop_mapper"(_lex_param_3, _lex_param_4)
    set $P101, $P5002
    find_lex $P5003, "%hll_ops"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    box $P5007, $I5001
    set $P5006, $P5007
    if $I5001 goto unless93_end274 
    find_lex $P5004, "%hll_ops"
    set $S5002, _lex_param_1
    new $P5005, 'Hash'
    set $P5004[$S5002], $P5005
    set $P5006, $P5005
  unless93_end274:
    find_lex $P5009, "%hll_ops"
    set $S5003, _lex_param_1
    set $P5008, $P5009[$S5003]
    unless_null $P5008, fallback275
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5010
  fallback275:
    set $S5004, _lex_param_2
    .const 'Sub' $P5012 = 'cuid_177_1346277600.974' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    set $P5008[$S5004], $P5011
.annotate 'line', 409
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."set_hll_op_inlinability"(_lex_param_1, _lex_param_2, _lex_param_5)
.annotate 'line', 410
    nqp_decontainerize $P5015, _lex_param_0
    set $S5006, _lex_param_4
    substr $S5005, $S5006, 0, 1
    $P5016 = $P5015."set_hll_op_result_type"(_lex_param_1, _lex_param_2, $S5005)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1346277600.974") :anon :lex :outer("cuid_47_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 406
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
.annotate 'line', 407
    $P5002 = _lex_param_1."op"()
    $P5003 = _lex_param_1."list"()
    find_lex $P5001, "$pirop_mapper"
    $P5004 = $P5001(_lex_param_0, $P5002, $P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "set_core_op_inlinability" :subid("cuid_48_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 414
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$inlinable", _lex_param_2 
    find_lex $P5001, "%core_inlinability"
    set $S5001, _lex_param_1
    set $P5001[$S5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "set_hll_op_inlinability" :subid("cuid_49_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$inlinable", _lex_param_3 
    find_lex $P5001, "%hll_inlinability"
    set $S5001, _lex_param_1
    exists $I5001, $P5001[$S5001]
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless94_end278 
    find_lex $P5002, "%hll_inlinability"
    set $S5002, _lex_param_1
    new $P5003, 'Hash'
    set $P5002[$S5002], $P5003
    set $P5004, $P5003
  unless94_end278:
    find_lex $P5007, "%hll_inlinability"
    set $S5003, _lex_param_1
    set $P5006, $P5007[$S5003]
    unless_null $P5006, fallback279
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5008
  fallback279:
    set $S5004, _lex_param_2
    set $P5006[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "is_inlinable" :subid("cuid_50_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_280
    .lex "RETURN", $P101
    find_lex $P5001, "%hll_inlinability"
    set $S5001, _lex_param_1
    exists $I5001, $P5001[$S5001]
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if95_end283 
.annotate 'line', 427
    find_lex $P5003, "%hll_inlinability"
    set $S5002, _lex_param_1
    set $P5002, $P5003[$S5002]
    unless_null $P5002, fallback286
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback286:
    set $S5003, _lex_param_2
    exists $I5002, $P5002[$S5003]
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto if96_end285 
.annotate 'line', 428
    find_lex $P5008, "%hll_inlinability"
    set $S5004, _lex_param_1
    set $P5007, $P5008[$S5004]
    unless_null $P5007, fallback287
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5009
  fallback287:
    set $S5005, _lex_param_2
    set $P5006, $P5007[$S5005]
    unless_null $P5006, fallback288
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback288:
    find_lex $P5005, "RETURN"
    $P5011 = $P5005($P5006)
    set $P5012, $P5011
  if96_end285:
    set $P5014, $P5012
  if95_end283:
    find_lex $P5019, "%core_inlinability"
    set $S5006, _lex_param_2
    set $P5018, $P5019[$S5006]
    unless_null $P5018, fallback290
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5020
  fallback290:
    set $P5017, $P5018
    defined $I5003, $P5017
    if $I5003, defor289
    box $P5021, 0
    set $P5017, $P5021
  defor289:
    find_lex $P5016, "RETURN"
    $P5022 = $P5016($P5017)
    goto lexotic_281
  lexotic_280:
    .get_results ($P5022)
  lexotic_281:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "set_core_op_result_type" :subid("cuid_51_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 436
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$type_char", _lex_param_2 
    set $S5001, _lex_param_2
    iseq $I5001, $S5001, "I"
    unless $I5001 goto if97_else291 
.annotate 'line', 437
    find_lex $P5001, "%core_result_type"
    set $S5002, _lex_param_1
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 2
    set $P5001[$S5002], $P5002
    set $P5010, $P5002
    goto if97_end292
  if97_else291:
    set $S5003, _lex_param_2
    iseq $I5002, $S5003, "N"
    unless $I5002 goto if98_else293 
.annotate 'line', 440
    find_lex $P5003, "%core_result_type"
    set $S5004, _lex_param_1
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 3
    set $P5003[$S5004], $P5004
    set $P5009, $P5004
    goto if98_end294
  if98_else293:
    set $S5005, _lex_param_2
    iseq $I5003, $S5005, "S"
    box $P5008, $I5003
    set $P5007, $P5008
    unless $I5003 goto if99_end296 
.annotate 'line', 443
    find_lex $P5005, "%core_result_type"
    set $S5006, _lex_param_1
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 4
    set $P5005[$S5006], $P5006
    set $P5007, $P5006
  if99_end296:
    set $P5009, $P5007
  if98_end294:
    set $P5010, $P5009
  if97_end292:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "set_hll_op_result_type" :subid("cuid_52_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 450
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$type_char", _lex_param_3 
    find_lex $P5001, "%hll_result_type"
    set $S5001, _lex_param_1
    exists $I5001, $P5001[$S5001]
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless100_end298 
    find_lex $P5002, "%hll_result_type"
    set $S5002, _lex_param_1
    new $P5003, 'Hash'
    set $P5002[$S5002], $P5003
    set $P5004, $P5003
  unless100_end298:
    set $S5003, _lex_param_3
    iseq $I5002, $S5003, "I"
    unless $I5002 goto if101_else299 
.annotate 'line', 452
    find_lex $P5007, "%hll_result_type"
    set $S5004, _lex_param_1
    set $P5006, $P5007[$S5004]
    unless_null $P5006, fallback301
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5008
  fallback301:
    set $S5005, _lex_param_2
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 2
    set $P5006[$S5005], $P5009
    set $P5021, $P5009
    goto if101_end300
  if101_else299:
    set $S5006, _lex_param_3
    iseq $I5003, $S5006, "N"
    unless $I5003 goto if102_else302 
.annotate 'line', 455
    find_lex $P5011, "%hll_result_type"
    set $S5007, _lex_param_1
    set $P5010, $P5011[$S5007]
    unless_null $P5010, fallback304
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5012
  fallback304:
    set $S5008, _lex_param_2
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 3
    set $P5010[$S5008], $P5013
    set $P5020, $P5013
    goto if102_end303
  if102_else302:
    set $S5009, _lex_param_3
    iseq $I5004, $S5009, "S"
    box $P5019, $I5004
    set $P5018, $P5019
    unless $I5004 goto if103_end306 
.annotate 'line', 458
    find_lex $P5015, "%hll_result_type"
    set $S5010, _lex_param_1
    set $P5014, $P5015[$S5010]
    unless_null $P5014, fallback307
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5016
  fallback307:
    set $S5011, _lex_param_2
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 4
    set $P5014[$S5011], $P5017
    set $P5018, $P5017
  if103_end306:
    set $P5020, $P5018
  if102_end303:
    set $P5021, $P5020
  if101_end300:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "attach_result_type" :subid("cuid_53_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 464
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$op", $P101 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$node", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_308
    .lex "RETURN", $P102
.annotate 'line', 465
    $P5002 = _lex_param_2."op"()
    set $P101, $P5002
    find_lex $P5003, "%hll_result_type"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    box $P5018, $I5001
    set $P5017, $P5018
    unless $I5001 goto if104_end311 
.annotate 'line', 466
    find_lex $P5005, "%hll_result_type"
    set $S5002, _lex_param_1
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback314
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5006
  fallback314:
    set $S5003, $P101
    exists $I5002, $P5004[$S5003]
    box $P5016, $I5002
    set $P5015, $P5016
    unless $I5002 goto if105_end313 
.annotate 'line', 467
.annotate 'line', 468
    find_lex $P5009, "%hll_result_type"
    set $S5004, _lex_param_1
    set $P5008, $P5009[$S5004]
    unless_null $P5008, fallback315
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5010
  fallback315:
    set $S5005, $P101
    set $P5007, $P5008[$S5005]
    unless_null $P5007, fallback316
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback316:
    $P5012 = _lex_param_2."returns"($P5007)
    find_lex $P5013, "RETURN"
    $P5014 = $P5013(1)
    set $P5015, $P5014
  if105_end313:
    set $P5017, $P5015
  if104_end311:
    find_lex $P5019, "%core_result_type"
    set $S5006, $P101
    exists $I5003, $P5019[$S5006]
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto if106_end318 
.annotate 'line', 472
.annotate 'line', 473
    find_lex $P5021, "%core_result_type"
    set $S5007, $P101
    set $P5020, $P5021[$S5007]
    unless_null $P5020, fallback319
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5022
  fallback319:
    $P5023 = _lex_param_2."returns"($P5020)
    set $P5024, $P5023
  if106_end318:
    goto lexotic_309
  lexotic_308:
    .get_results ($P5024)
  lexotic_309:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_box" :subid("cuid_54_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 478
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$handler", _lex_param_3 
    set $S5001, _lex_param_2
    iseq $I5001, $S5001, "i"
    set $I5003, $I5001
    if $I5001 goto unless109_end325 
    set $S5002, _lex_param_2
    iseq $I5002, $S5002, "n"
    set $I5003, $I5002
  unless109_end325:
    set $I5005, $I5003
    if $I5003 goto unless108_end323 
    set $S5003, _lex_param_2
    iseq $I5004, $S5003, "s"
    set $I5005, $I5004
  unless108_end323:
    box $P5003, $I5005
    set $P5002, $P5003
    if $I5005 goto unless107_end321 
.annotate 'line', 479
    set $S5006, _lex_param_2
    concat $S5005, "Unknown box type '", $S5006
    concat $S5004, $S5005, "'"
    box $P5001, $S5004
    die $P5001
    set $P5002, $P5001
  unless107_end321:
    find_lex $P5004, "%hll_box"
    set $S5007, _lex_param_1
    exists $I5006, $P5004[$S5007]
    box $P5008, $I5006
    set $P5007, $P5008
    if $I5006 goto unless110_end327 
    find_lex $P5005, "%hll_box"
    set $S5008, _lex_param_1
    new $P5006, 'Hash'
    set $P5005[$S5008], $P5006
    set $P5007, $P5006
  unless110_end327:
    find_lex $P5010, "%hll_box"
    set $S5009, _lex_param_1
    set $P5009, $P5010[$S5009]
    unless_null $P5009, fallback328
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5011
  fallback328:
    set $S5010, _lex_param_2
    set $P5009[$S5010], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_unbox" :subid("cuid_55_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$handler", _lex_param_3 
    set $S5001, _lex_param_2
    iseq $I5001, $S5001, "i"
    set $I5003, $I5001
    if $I5001 goto unless113_end334 
    set $S5002, _lex_param_2
    iseq $I5002, $S5002, "n"
    set $I5003, $I5002
  unless113_end334:
    set $I5005, $I5003
    if $I5003 goto unless112_end332 
    set $S5003, _lex_param_2
    iseq $I5004, $S5003, "s"
    set $I5005, $I5004
  unless112_end332:
    box $P5003, $I5005
    set $P5002, $P5003
    if $I5005 goto unless111_end330 
.annotate 'line', 488
    set $S5006, _lex_param_2
    concat $S5005, "Unknown unbox type '", $S5006
    concat $S5004, $S5005, "'"
    box $P5001, $S5004
    die $P5001
    set $P5002, $P5001
  unless111_end330:
    find_lex $P5004, "%hll_unbox"
    set $S5007, _lex_param_1
    exists $I5006, $P5004[$S5007]
    box $P5008, $I5006
    set $P5007, $P5008
    if $I5006 goto unless114_end336 
    find_lex $P5005, "%hll_unbox"
    set $S5008, _lex_param_1
    new $P5006, 'Hash'
    set $P5005[$S5008], $P5006
    set $P5007, $P5006
  unless114_end336:
    find_lex $P5010, "%hll_unbox"
    set $S5009, _lex_param_1
    set $P5009, $P5010[$S5009]
    unless_null $P5009, fallback337
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5011
  fallback337:
    set $S5010, _lex_param_2
    set $P5009[$S5010], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "box" :subid("cuid_56_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 496
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$hll", _lex_param_2 
    .lex "$type", _lex_param_3 
    .lex "$post", _lex_param_4 
.annotate 'line', 497
    find_lex $P5003, "%hll_box"
    set $S5001, _lex_param_2
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback338
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback338:
    set $S5002, _lex_param_3
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback339
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback339:
    $P5006 = $P5001(_lex_param_1, _lex_param_4)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "unbox" :subid("cuid_57_1346277600.974") :anon :lex :outer("cuid_58_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 501
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$hll", _lex_param_2 
    .lex "$type", _lex_param_3 
    .lex "$post", _lex_param_4 
.annotate 'line', 502
    find_lex $P5003, "%hll_unbox"
    set $S5001, _lex_param_2
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback340
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback340:
    set $S5002, _lex_param_3
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback341
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback341:
    $P5006 = $P5001(_lex_param_1, _lex_param_4)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 587
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_178_1346277600.974' 
    capture_lex $P5024 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 589
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback343
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback344
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback344:
    unless_null $P5004, vivi_115345
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_115345:
    set $P5003, $P5004
  fallback343:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 590
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback346
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback346:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 591
    $P5016 = $P102."push_pirop"("new", $P101, "'ResizablePMCArray'")
.annotate 'line', 594
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, for_handlers347
    push_eh $P5022
  for_next348:
    unless $P5019, for_done350
    shift $P5023, $P5019
  for_redo349:
    .const 'Sub' $P5021 = 'cuid_178_1346277600.974' 
    capture_lex $P5021
    $P5017 = $P5021($P5023)
    goto for_next348
  for_handlers347:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5022, $P5022, 'type'
    eq $P5022, .CONTROL_LOOP_NEXT, for_next348
    eq $P5022, .CONTROL_LOOP_REDO, for_redo349
  for_done350:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1346277600.974") :anon :lex :outer("cuid_179_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 594
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 595
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    $P5004 = $P5003."as_post"(_lex_param_0)
    $P5005 = $P5002."coerce"($P5004, "P")
    set $P101, $P5005
.annotate 'line', 596
    find_lex $P5006, "$ops"
    $P5007 = $P5006."push"($P101)
.annotate 'line', 597
    find_lex $P5008, "$ops"
    find_lex $P5009, "$list_reg"
    $P5010 = $P101."result"()
    $P5011 = $P5008."push_pirop"("push", $P5009, $P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 603
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_180_1346277600.974' 
    capture_lex $P5024 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 605
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback352
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback353
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback353:
    unless_null $P5004, vivi_116354
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_116354:
    set $P5003, $P5004
  fallback352:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 606
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback355
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback355:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 607
    $P5016 = $P102."push_pirop"("new", $P101, "'QRPA'")
.annotate 'line', 610
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, for_handlers356
    push_eh $P5022
  for_next357:
    unless $P5019, for_done359
    shift $P5023, $P5019
  for_redo358:
    .const 'Sub' $P5021 = 'cuid_180_1346277600.974' 
    capture_lex $P5021
    $P5017 = $P5021($P5023)
    goto for_next357
  for_handlers356:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5022, $P5022, 'type'
    eq $P5022, .CONTROL_LOOP_NEXT, for_next357
    eq $P5022, .CONTROL_LOOP_REDO, for_redo358
  for_done359:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1346277600.974") :anon :lex :outer("cuid_181_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 610
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 611
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    $P5004 = $P5003."as_post"(_lex_param_0)
    $P5005 = $P5002."coerce"($P5004, "P")
    set $P101, $P5005
.annotate 'line', 612
    find_lex $P5006, "$ops"
    $P5007 = $P5006."push"($P101)
.annotate 'line', 613
    find_lex $P5008, "$ops"
    find_lex $P5009, "$list_reg"
    $P5010 = $P101."result"()
    $P5011 = $P5008."push_pirop"("push", $P5009, $P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 619
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_182_1346277600.974' 
    capture_lex $P5024 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 621
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback361
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback362
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback362:
    unless_null $P5004, vivi_117363
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_117363:
    set $P5003, $P5004
  fallback361:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 622
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback364
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback364:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 623
    $P5016 = $P102."push_pirop"("new", $P101, "'ResizableIntegerArray'")
.annotate 'line', 626
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, for_handlers365
    push_eh $P5022
  for_next366:
    unless $P5019, for_done368
    shift $P5023, $P5019
  for_redo367:
    .const 'Sub' $P5021 = 'cuid_182_1346277600.974' 
    capture_lex $P5021
    $P5017 = $P5021($P5023)
    goto for_next366
  for_handlers365:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5022, $P5022, 'type'
    eq $P5022, .CONTROL_LOOP_NEXT, for_next366
    eq $P5022, .CONTROL_LOOP_REDO, for_redo367
  for_done368:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1346277600.974") :anon :lex :outer("cuid_183_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 626
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 627
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    $P5004 = $P5003."as_post"(_lex_param_0)
    $P5005 = $P5002."coerce"($P5004, "i")
    set $P101, $P5005
.annotate 'line', 628
    find_lex $P5006, "$ops"
    $P5007 = $P5006."push"($P101)
.annotate 'line', 629
    find_lex $P5008, "$ops"
    find_lex $P5009, "$list_reg"
    $P5010 = $P101."result"()
    $P5011 = $P5008."push_pirop"("push", $P5009, $P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 635
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_184_1346277600.974' 
    capture_lex $P5024 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 637
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback370
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback371
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback371:
    unless_null $P5004, vivi_118372
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_118372:
    set $P5003, $P5004
  fallback370:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 638
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback373
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback373:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 639
    $P5016 = $P102."push_pirop"("new", $P101, "'ResizableStringArray'")
.annotate 'line', 642
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, for_handlers374
    push_eh $P5022
  for_next375:
    unless $P5019, for_done377
    shift $P5023, $P5019
  for_redo376:
    .const 'Sub' $P5021 = 'cuid_184_1346277600.974' 
    capture_lex $P5021
    $P5017 = $P5021($P5023)
    goto for_next375
  for_handlers374:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5022, $P5022, 'type'
    eq $P5022, .CONTROL_LOOP_NEXT, for_next375
    eq $P5022, .CONTROL_LOOP_REDO, for_redo376
  for_done377:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1346277600.974") :anon :lex :outer("cuid_185_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 642
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 643
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    $P5004 = $P5003."as_post"(_lex_param_0)
    $P5005 = $P5002."coerce"($P5004, "s")
    set $P101, $P5005
.annotate 'line', 644
    find_lex $P5006, "$ops"
    $P5007 = $P5006."push"($P101)
.annotate 'line', 645
    find_lex $P5008, "$ops"
    find_lex $P5009, "$list_reg"
    $P5010 = $P101."result"()
    $P5011 = $P5008."push_pirop"("push", $P5009, $P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 651
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_186_1346277600.974' 
    capture_lex $P5032 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$block_reg", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 653
    find_dynamic_lex $P5004, "$*REGALLOC"
    unless_null $P5004, fallback379
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$REGALLOC"]
    unless_null $P5005, fallback380
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback380:
    unless_null $P5005, vivi_119381
    die "Contextual $*REGALLOC not found"
    box $P5009, "Contextual $*REGALLOC not found"
    set $P5005, $P5009
  vivi_119381:
    set $P5004, $P5005
  fallback379:
    $P5010 = $P5004."fresh_p"()
    set $P101, $P5010
.annotate 'line', 654
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "PIRT"
    get_who $P5012, $P5013
    set $P5011, $P5012["Ops"]
    unless_null $P5011, fallback382
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5015
  fallback382:
    $P5016 = $P5011."new"($P101 :named("result"))
    set $P102, $P5016
.annotate 'line', 655
    $P5017 = $P102."push_pirop"("new", $P101, "'ResizablePMCArray'")
.annotate 'line', 658
    find_dynamic_lex $P5018, "$*REGALLOC"
    unless_null $P5018, fallback383
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["$REGALLOC"]
    unless_null $P5019, fallback384
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5022
  fallback384:
    unless_null $P5019, vivi_120385
    die "Contextual $*REGALLOC not found"
    box $P5023, "Contextual $*REGALLOC not found"
    set $P5019, $P5023
  vivi_120385:
    set $P5018, $P5019
  fallback383:
    $P5024 = $P5018."fresh_p"()
    set $P103, $P5024
.annotate 'line', 659
    $P5028 = _lex_param_1."list"()
    set $P5025, $P5028
    iter $P5027, $P5028
    new $P5030, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5030, for_handlers386
    push_eh $P5030
  for_next387:
    unless $P5027, for_done389
    shift $P5031, $P5027
  for_redo388:
    .const 'Sub' $P5029 = 'cuid_186_1346277600.974' 
    capture_lex $P5029
    $P5025 = $P5029($P5031)
    goto for_next387
  for_handlers386:
    .get_results ($P5030)
    pop_upto_eh $P5030
    getattribute $P5030, $P5030, 'type'
    eq $P5030, .CONTROL_LOOP_NEXT, for_next387
    eq $P5030, .CONTROL_LOOP_REDO, for_redo388
  for_done389:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1346277600.974") :anon :lex :outer("cuid_187_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 659
    .param pmc _lex_param_0 
    .lex "$cuid", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 660
    $P5002 = _lex_param_0."cuid"()
    set $P101, $P5002
.annotate 'line', 661
    find_lex $P5003, "$ops"
    find_lex $P5004, "$block_reg"
    set $S5005, $P5004
    concat $S5004, ".const 'Sub' ", $S5005
    concat $S5003, $S5004, " = \""
    set $S5006, $P101
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "\""
    $P5005 = $P5003."push_pirop"($S5001)
.annotate 'line', 662
    find_lex $P5006, "$ops"
    find_lex $P5007, "$list_reg"
    find_lex $P5008, "$block_reg"
    $P5009 = $P5006."push_pirop"("push", $P5007, $P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 668
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_188_1346277600.974' 
    capture_lex $P5026 
    .lex "$hash_reg", $P101 
    .lex "$ops", $P102 
    .lex "$i", $P103 
    .lex "@op_list", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
.annotate 'line', 670
    find_dynamic_lex $P5005, "$*REGALLOC"
    unless_null $P5005, fallback391
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["$REGALLOC"]
    unless_null $P5006, fallback392
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5009
  fallback392:
    unless_null $P5006, vivi_121393
    die "Contextual $*REGALLOC not found"
    box $P5010, "Contextual $*REGALLOC not found"
    set $P5006, $P5010
  vivi_121393:
    set $P5005, $P5006
  fallback391:
    $P5011 = $P5005."fresh_p"()
    set $P101, $P5011
.annotate 'line', 671
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "PIRT"
    get_who $P5013, $P5014
    set $P5012, $P5013["Ops"]
    unless_null $P5012, fallback394
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback394:
    $P5017 = $P5012."new"($P101 :named("result"))
    set $P102, $P5017
.annotate 'line', 672
    $P5018 = $P102."push_pirop"("new", $P101, "'Hash'")
    box $P5019, 0
    set $P103, $P5019
.annotate 'line', 676
    $P5020 = _lex_param_1."list"()
    set $P104, $P5020
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while122_handlers398
    push_eh $P5024
  while122_test395:
    set $N5001, $P103
    set $N5002, $P104
    islt $I5001, $N5001, $N5002
    box $P5025, $I5001
    set $P5023, $P5025
    unless $I5001 goto while122_done399 
  while122_redo397:
    .const 'Sub' $P5021 = 'cuid_188_1346277600.974' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
    goto while122_test395 
  while122_handlers398:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, while122_test395
    eq $P5024, .CONTROL_LOOP_REDO, while122_redo397
  while122_done399:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1346277600.974") :anon :lex :outer("cuid_189_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 677
    .lex "$kpost", $P101 
    .lex "$vpost", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 678
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$qastcomp"
    find_lex $P5006, "@op_list"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback400
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback400:
    $P5009 = $P5004."as_post"($P5005)
    $P5010 = $P5003."coerce"($P5009, "s")
    set $P101, $P5010
.annotate 'line', 679
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push"($P101)
    find_lex $P5013, "$i"
    set $N5002, $P5013
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5014, $N5001
    store_lex "$i", $P5014
.annotate 'line', 682
    find_lex $P5015, "$qastcomp"
    find_lex $P5016, "$qastcomp"
    find_lex $P5018, "@op_list"
    find_lex $P5019, "$i"
    set $I5002, $P5019
    set $P5017, $P5018[$I5002]
    unless_null $P5017, fallback401
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5020
  fallback401:
    $P5021 = $P5016."as_post"($P5017)
    $P5022 = $P5015."coerce"($P5021, "P")
    set $P102, $P5022
.annotate 'line', 683
    find_lex $P5023, "$ops"
    $P5024 = $P5023."push"($P102)
    find_lex $P5025, "$i"
    set $N5005, $P5025
    set $N5006, 1
    add $N5004, $N5005, $N5006
    box $P5026, $N5004
    store_lex "$i", $P5026
.annotate 'line', 686
    find_lex $P5027, "$ops"
    find_lex $P5028, "$hash_reg"
    set $S5004, $P5028
    concat $S5003, $S5004, "["
    $P5029 = $P101."result"()
    set $S5005, $P5029
    concat $S5002, $S5003, $S5005
    concat $S5001, $S5002, "]"
    $P5030 = $P102."result"()
    $P5031 = $P5027."push_pirop"("set", $S5001, $P5030)
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 693
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5053 = 'cuid_190_1346277600.974' 
    capture_lex $P5053 
    .lex "@clist", $P101 
    .lex "$cpast", $P102 
    .lex "$ops", $P103 
    .lex "$endlabel", $P104 
    .lex "$apast", $P105 
    .lex "$apost", $P106 
    .lex "$more", $P107 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
    set $P102, _lex_param_1
    new $P5020, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5020, while123_handlers406
    push_eh $P5020
  while123_test403:
.annotate 'line', 697
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["Op"]
    unless_null $P5008, fallback410
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5012
  fallback410:
    $P5013 = $P5008."ACCEPTS"($P102)
    set $P5015, $P5013
    unless $P5013 goto if124_end409 
    $P5014 = $P102."op"()
    set $S5001, $P5014
    iseq $I5001, $S5001, "chain"
    box $P5016, $I5001
    set $P5015, $P5016
  if124_end409:
    set $P5019, $P5015
    unless $P5015 goto while123_done407 
  while123_redo405:
    push $P101, $P102
    set $P5017, $P102[0]
    unless_null $P5017, fallback411
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5018
  fallback411:
    set $P102, $P5017
    set $P5019, $P102
    goto while123_test403 
  while123_handlers406:
    .get_results ($P5020)
    pop_upto_eh $P5020
    getattribute $P5020, $P5020, 'type'
    eq $P5020, .CONTROL_LOOP_NEXT, while123_test403
    eq $P5020, .CONTROL_LOOP_REDO, while123_redo405
  while123_done407:
    pop_eh 
.annotate 'line', 702
    get_hll_global $P5024, "GLOBAL"
    nqp_get_package_through_who $P5023, $P5024, "PIRT"
    get_who $P5022, $P5023
    set $P5021, $P5022["Ops"]
    unless_null $P5021, fallback412
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5025
  fallback412:
    find_dynamic_lex $P5026, "$*REGALLOC"
    unless_null $P5026, fallback413
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    set $P5027, $P5028["$REGALLOC"]
    unless_null $P5027, fallback414
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5030
  fallback414:
    unless_null $P5027, vivi_125415
    die "Contextual $*REGALLOC not found"
    box $P5031, "Contextual $*REGALLOC not found"
    set $P5027, $P5031
  vivi_125415:
    set $P5026, $P5027
  fallback413:
    $P5032 = $P5026."fresh_p"()
    $P5033 = $P5021."new"($P5032 :named("result"))
    set $P103, $P5033
.annotate 'line', 703
    get_hll_global $P5037, "GLOBAL"
    nqp_get_package_through_who $P5036, $P5037, "PIRT"
    get_who $P5035, $P5036
    set $P5034, $P5035["Label"]
    unless_null $P5034, fallback416
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5038
  fallback416:
    $P5039 = _lex_param_0."unique"("chain_end_")
    $P5040 = $P5034."new"($P5039 :named("name"))
    set $P104, $P5040
    pop $P5041, $P101
    set $P102, $P5041
    set $P5042, $P102[0]
    unless_null $P5042, fallback417
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5043
  fallback417:
    set $P105, $P5042
.annotate 'line', 707
    $P5044 = _lex_param_0."as_post"($P105)
    $P5045 = _lex_param_0."coerce"($P5044, "P")
    set $P106, $P5045
.annotate 'line', 708
    $P5046 = $P103."push"($P106)
    box $P5047, 1
    set $P107, $P5047
    new $P5051, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5051, while126_handlers421
    push_eh $P5051
  while126_test418:
    set $P5050, $P107
    unless $P107 goto while126_done422 
  while126_redo420:
    .const 'Sub' $P5048 = 'cuid_190_1346277600.974' 
    capture_lex $P5048
    $P5049 = $P5048()
    set $P5050, $P5049
    goto while126_test418 
  while126_handlers421:
    .get_results ($P5051)
    pop_upto_eh $P5051
    getattribute $P5051, $P5051, 'type'
    eq $P5051, .CONTROL_LOOP_NEXT, while126_test418
    eq $P5051, .CONTROL_LOOP_REDO, while126_redo420
  while126_done422:
    pop_eh 
.annotate 'line', 729
    $P5052 = $P103."push"($P104)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1346277600.974") :anon :lex :outer("cuid_191_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 711
    .lex "$bpast", $P101 
    .lex "$bpost", $P102 
    .lex "$name", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    find_lex $P5005, "$cpast"
    set $P5004, $P5005[1]
    unless_null $P5004, fallback423
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5006
  fallback423:
    set $P101, $P5004
.annotate 'line', 713
    find_lex $P5007, "$qastcomp"
    find_lex $P5008, "$qastcomp"
    $P5009 = $P5008."as_post"($P101)
    $P5010 = $P5007."coerce"($P5009, "P")
    set $P102, $P5010
.annotate 'line', 714
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push"($P102)
.annotate 'line', 716
    find_lex $P5013, "$qastcomp"
    find_lex $P5014, "$cpast"
    $P5015 = $P5014."name"()
    $P5016 = $P5013."escape"($P5015)
    set $P103, $P5016
.annotate 'line', 717
    find_lex $P5017, "$ops"
    find_lex $P5018, "$apost"
    find_lex $P5019, "$ops"
    $P5020 = $P5017."push_pirop"("call", $P103, $P5018, $P102, $P5019 :named("result"))
    find_lex $P5021, "@clist"
    unless $P5021 goto if127_else424 
.annotate 'line', 719
.annotate 'line', 720
    find_lex $P5022, "$ops"
    find_lex $P5023, "$ops"
    find_lex $P5024, "$endlabel"
    $P5025 = $P5022."push_pirop"("unless", $P5023, $P5024)
    find_lex $P5027, "@clist"
    pop $P5026, $P5027
    store_lex "$cpast", $P5026
    store_lex "$apost", $P102
    set $P5029, $P102
    goto if127_end425
  if127_else424:
.annotate 'line', 724
    box $P5028, 0
    store_lex "$more", $P5028
    set $P5029, $P5028
  if127_end425:
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 735
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
.annotate 'line', 736
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Stmts"]
    unless_null $P5001, fallback427
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback427:
    $P5006 = _lex_param_1."list"()
    $P5007 = $P5001."new"($P5006 :flat)
    $P5008 = _lex_param_0."as_post"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 740
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_194_1346277600.974' 
    capture_lex $P5009 
    .lex "$op_name", _lex_param_0 
.annotate 'line', 741
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback428
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback428:
    .const 'Sub' $P5007 = 'cuid_194_1346277600.974' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."add_core_op"(_lex_param_0, $P5006, 1 :named("inlinable"))
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1346277600.974") :anon :lex :outer("cuid_198_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 741
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5100 = 'cuid_193_1346277600.974' 
    capture_lex $P5100 
    .const 'Sub' $P5100 = 'cuid_195_1346277600.974' 
    capture_lex $P5100 
    .const 'Sub' $P5100 = 'cuid_196_1346277600.974' 
    capture_lex $P5100 
    .const 'Sub' $P5100 = 'cuid_197_1346277600.974' 
    capture_lex $P5100 
    .lex "$operands", $P101 
    .lex "$if_id", $P102 
    .lex "$else_lbl", $P103 
    .lex "$end_lbl", $P104 
    .lex "@comp_ops", $P105 
    .lex "@op_types", $P106 
    .lex "@im_args", $P107 
    .lex "$res_type", $P108 
    .lex "$res_reg", $P109 
    .lex "$ops", $P110 
    .lex "$cond_result", $P111 
    .lex "$then", $P112 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P112, $P5012
.annotate 'line', 743
    $P5013 = _lex_param_1."list"()
    set $N5001, $P5013
    box $P5014, $N5001
    set $P101, $P5014
    set $N5002, $P101
    set $N5003, 2
    islt $I5001, $N5002, $N5003
    set $I5003, $I5001
    if $I5001 goto unless129_end432 
    set $N5004, $P101
    set $N5005, 3
    isgt $I5002, $N5004, $N5005
    set $I5003, $I5002
  unless129_end432:
    box $P5018, $I5003
    set $P5017, $P5018
    unless $I5003 goto if128_end430 
    find_lex $P5015, "$op_name"
    set $S5003, $P5015
    concat $S5002, "Operation '", $S5003
    concat $S5001, $S5002, "' needs either 2 or 3 operands"
    box $P5016, $S5001
    die $P5016
    set $P5017, $P5016
  if128_end430:
.annotate 'line', 748
    find_lex $P5019, "$op_name"
    $P5020 = _lex_param_0."unique"($P5019)
    set $P102, $P5020
.annotate 'line', 749
    get_hll_global $P5024, "GLOBAL"
    nqp_get_package_through_who $P5023, $P5024, "PIRT"
    get_who $P5022, $P5023
    set $P5021, $P5022["Label"]
    unless_null $P5021, fallback433
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5025
  fallback433:
    set $S5005, $P102
    concat $S5004, $S5005, "_else"
    $P5026 = $P5021."new"($S5004 :named("name"))
    set $P103, $P5026
.annotate 'line', 750
    get_hll_global $P5030, "GLOBAL"
    nqp_get_package_through_who $P5029, $P5030, "PIRT"
    get_who $P5028, $P5029
    set $P5027, $P5028["Label"]
    unless_null $P5027, fallback434
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5031
  fallback434:
    set $S5007, $P102
    concat $S5006, $S5007, "_end"
    $P5032 = $P5027."new"($S5006 :named("name"))
    set $P104, $P5032
.annotate 'line', 757
    $P5036 = _lex_param_1."list"()
    set $P5033, $P5036
    iter $P5035, $P5036
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, for_handlers454
    push_eh $P5038
  for_next455:
    unless $P5035, for_done457
    shift $P5039, $P5035
  for_redo456:
    .const 'Sub' $P5037 = 'cuid_193_1346277600.974' 
    capture_lex $P5037
    $P5033 = $P5037($P5039)
    goto for_next455
  for_handlers454:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, for_next455
    eq $P5038, .CONTROL_LOOP_REDO, for_redo456
  for_done457:
    pop_eh 
    set $N5006, $P101
    set $N5007, 3
    iseq $I5004, $N5006, $N5007
    unless $I5004 goto if137_else458 
    set $P5040, $P106[1]
    unless_null $P5040, fallback462
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5041
  fallback462:
    set $S5008, $P5040
    set $P5042, $P106[2]
    unless_null $P5042, fallback463
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5043
  fallback463:
    set $S5009, $P5042
    iseq $I5005, $S5008, $S5009
    unless $I5005 goto if138_else460 
    set $P5044, $P106[1]
    unless_null $P5044, fallback464
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5044, $P5045
  fallback464:
    set $S5011, $P5044
    downcase $S5010, $S5011
    set $S5012, $S5010
    goto if138_end461
  if138_else460:
    set $S5012, "p"
  if138_end461:
    set $S5018, $S5012
    goto if137_end459
  if137_else458:
    set $P5046, $P106[0]
    unless_null $P5046, fallback467
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5046, $P5047
  fallback467:
    set $S5013, $P5046
    set $P5048, $P106[1]
    unless_null $P5048, fallback468
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5048, $P5049
  fallback468:
    set $S5014, $P5048
    iseq $I5006, $S5013, $S5014
    unless $I5006 goto if139_else465 
    set $P5050, $P106[0]
    unless_null $P5050, fallback469
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5050, $P5051
  fallback469:
    set $S5016, $P5050
    downcase $S5015, $S5016
    set $S5017, $S5015
    goto if139_end466
  if139_else465:
    set $S5017, "p"
  if139_end466:
    set $S5018, $S5017
  if137_end459:
    box $P5052, $S5018
    set $P108, $P5052
.annotate 'line', 775
    find_dynamic_lex $P5053, "$*REGALLOC"
    unless_null $P5053, fallback470
    get_hll_global $P5056, "GLOBAL"
    get_who $P5055, $P5056
    set $P5054, $P5055["$REGALLOC"]
    unless_null $P5054, fallback471
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5054, $P5057
  fallback471:
    unless_null $P5054, vivi_140472
    die "Contextual $*REGALLOC not found"
    box $P5058, "Contextual $*REGALLOC not found"
    set $P5054, $P5058
  vivi_140472:
    set $P5053, $P5054
  fallback470:
    set $S5020, $P108
    concat $S5019, "fresh_", $S5020
    $P5059 = $P5053.$S5019()
    set $P109, $P5059
.annotate 'line', 778
    get_hll_global $P5063, "GLOBAL"
    nqp_get_package_through_who $P5062, $P5063, "PIRT"
    get_who $P5061, $P5062
    set $P5060, $P5061["Ops"]
    unless_null $P5060, fallback473
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5060, $P5064
  fallback473:
    $P5065 = $P5060."new"()
    set $P110, $P5065
    set $N5008, $P101
    set $N5009, 2
    iseq $I5007, $N5008, $N5009
    unless $I5007 goto if141_else474 
    .const 'Sub' $P5066 = 'cuid_195_1346277600.974' 
    capture_lex $P5066
    $P5067 = $P5066()
    set $P5073, $P5067
    goto if141_end475
  if141_else474:
.annotate 'line', 786
.annotate 'line', 787
    set $P5068, $P105[0]
    unless_null $P5068, fallback477
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5068, $P5069
  fallback477:
    $P5070 = $P110."push"($P5068)
    set $P5071, $P105[0]
    unless_null $P5071, fallback478
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5071, $P5072
  fallback478:
    set $P111, $P5071
    set $P5073, $P111
  if141_end475:
    set $P5074, $P107
    iter $P5076, $P107
    new $P5078, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5078, for_handlers479
    push_eh $P5078
  for_next480:
    unless $P5076, for_done482
    shift $P5079, $P5076
  for_redo481:
    .const 'Sub' $P5077 = 'cuid_196_1346277600.974' 
    capture_lex $P5077
    $P5074 = $P5077($P5079)
    goto for_next480
  for_handlers479:
    .get_results ($P5078)
    pop_upto_eh $P5078
    getattribute $P5078, $P5078, 'type'
    eq $P5078, .CONTROL_LOOP_NEXT, for_next480
    eq $P5078, .CONTROL_LOOP_REDO, for_redo481
  for_done482:
    pop_eh 
.annotate 'line', 797
    find_lex $P5080, "$op_name"
    set $S5024, $P5080
    iseq $I5008, $S5024, "if"
    unless $I5008 goto if142_else483 
    set $S5025, "unless "
    goto if142_end484
  if142_else483:
    set $S5025, "if "
  if142_end484:
.annotate 'line', 798
    set $P5081, $P105[0]
    unless_null $P5081, fallback485
    nqp_get_sc_object $P5082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5081, $P5082
  fallback485:
    $P5083 = $P5081."result"()
    set $S5026, $P5083
    concat $S5023, $S5025, $S5026
    concat $S5022, $S5023, " goto "
    set $N5010, $P101
    set $N5011, 2
    iseq $I5009, $N5010, $N5011
    unless $I5009 goto if143_else486 
.annotate 'line', 799
    $P5084 = $P104."result"()
    set $P5086, $P5084
    goto if143_end487
  if143_else486:
    $P5085 = $P103."result"()
    set $P5086, $P5085
  if143_end487:
    set $S5027, $P5086
    concat $S5021, $S5022, $S5027
    $P5087 = $P110."push_pirop"($S5021)
.annotate 'line', 802
    set $P5088, $P105[1]
    unless_null $P5088, fallback488
    nqp_get_sc_object $P5089, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5088, $P5089
  fallback488:
    $P5090 = _lex_param_0."coerce"($P5088, $P108)
    set $P112, $P5090
.annotate 'line', 803
    $P5091 = $P110."push"($P112)
.annotate 'line', 804
    $P5092 = $P112."result"()
    $P5093 = $P110."push_pirop"("set", $P109, $P5092)
    set $N5012, $P101
    set $N5013, 3
    iseq $I5010, $N5012, $N5013
    box $P5097, $I5010
    set $P5096, $P5097
    unless $I5010 goto if144_end490 
    .const 'Sub' $P5094 = 'cuid_197_1346277600.974' 
    capture_lex $P5094
    $P5095 = $P5094()
    set $P5096, $P5095
  if144_end490:
.annotate 'line', 816
    $P5098 = $P110."push"($P104)
.annotate 'line', 817
    $P5099 = $P110."result"($P109)
    .return ($P110) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1346277600.974") :anon :lex :outer("cuid_194_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 757
    .param pmc _lex_param_0 
    .lex "$*HAVE_IMM_ARG", $P101 
    .lex "$*IMM_ARG", $P102 
    .lex "$comp", $P103 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 758
    $P5004 = _lex_param_0."arity"()
    set $N5001, $P5004
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if130_end436 
    get_id $I5004, _lex_param_0
    find_lex $P5006, "$op"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback437
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5007
  fallback437:
    get_id $I5005, $P5005
    iseq $I5003, $I5004, $I5005
    box $P5008, $I5003
    isfalse $I5002, $P5008
    set $I5006, $I5002
  if130_end436:
    box $P5009, $I5006
    set $P101, $P5009
    unless_null $P102, fallback438
    get_hll_global $P5012, "GLOBAL"
    get_who $P5011, $P5012
    set $P5010, $P5011["$IMM_ARG"]
    unless_null $P5010, fallback439
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5013
  fallback439:
    unless_null $P5010, vivi_131440
    die "Contextual $*IMM_ARG not found"
    box $P5014, "Contextual $*IMM_ARG not found"
    set $P5010, $P5014
  vivi_131440:
    set $P102, $P5010
  fallback438:
.annotate 'line', 760
    find_lex $P5015, "$qastcomp"
    $P5016 = $P5015."as_post"(_lex_param_0)
    set $P103, $P5016
.annotate 'line', 761
    find_lex $P5017, "@comp_ops"
    $P5018 = $P5017."push"($P103)
.annotate 'line', 762
    find_lex $P5019, "@op_types"
    find_lex $P5020, "$qastcomp"
    $P5021 = $P103."result"()
    $P5022 = $P5020."infer_type"($P5021)
    set $S5002, $P5022
    upcase $S5001, $S5002
    $P5023 = $P5019."push"($S5001)
    unless_null $P101, fallback443
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["$HAVE_IMM_ARG"]
    unless_null $P5024, fallback444
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5027
  fallback444:
    unless_null $P5024, vivi_133445
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P5028, "Contextual $*HAVE_IMM_ARG not found"
    set $P5024, $P5028
  vivi_133445:
    set $P101, $P5024
  fallback443:
    set $P5044, $P101
    unless $P101 goto if132_end442 
.annotate 'line', 763
    unless_null $P102, fallback448
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    set $P5029, $P5030["$IMM_ARG"]
    unless_null $P5029, fallback449
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5032
  fallback449:
    unless_null $P5029, vivi_135450
    die "Contextual $*IMM_ARG not found"
    box $P5033, "Contextual $*IMM_ARG not found"
    set $P5029, $P5033
  vivi_135450:
    set $P102, $P5029
  fallback448:
    unless $P102 goto if134_else446 
.annotate 'line', 764
.annotate 'line', 765
    find_lex $P5034, "@im_args"
    unless_null $P102, fallback451
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    set $P5035, $P5036["$IMM_ARG"]
    unless_null $P5035, fallback452
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5038
  fallback452:
    unless_null $P5035, vivi_136453
    die "Contextual $*IMM_ARG not found"
    box $P5039, "Contextual $*IMM_ARG not found"
    set $P5035, $P5039
  vivi_136453:
    set $P102, $P5035
  fallback451:
    $P5040 = $P5034."push"($P102)
    set $P5043, $P5040
    goto if134_end447
  if134_else446:
.annotate 'line', 767
    find_lex $P5041, "$op_name"
    set $S5004, $P5041
    concat $S5003, $S5004, " block expects an argument, but there's no immediate block to take it"
    box $P5042, $S5003
    die $P5042
    set $P5043, $P5042
  if134_end447:
    set $P5044, $P5043
  if132_end442:
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1346277600.974") :anon :lex :outer("cuid_194_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 780
    .lex "$coerced", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 781
    find_lex $P5002, "$qastcomp"
    find_lex $P5004, "@comp_ops"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback476
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5005
  fallback476:
    find_lex $P5006, "$res_type"
    $P5007 = $P5002."coerce"($P5003, $P5006)
    set $P101, $P5007
.annotate 'line', 782
    find_lex $P5008, "$ops"
    $P5009 = $P5008."push"($P101)
.annotate 'line', 783
    find_lex $P5010, "$ops"
    find_lex $P5011, "$res_reg"
    $P5012 = $P101."result"()
    $P5013 = $P5010."push_pirop"("set", $P5011, $P5012)
    store_lex "$cond_result", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1346277600.974") :anon :lex :outer("cuid_194_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 792
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 793
    find_lex $P5001, "$cond_result"
    $P5002 = $P5001."result"()
    $P5003 = _lex_param_0($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1346277600.974") :anon :lex :outer("cuid_194_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 807
    .lex "$else", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 808
    find_lex $P5002, "$qastcomp"
    find_lex $P5004, "@comp_ops"
    set $P5003, $P5004[2]
    unless_null $P5003, fallback491
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5005
  fallback491:
    find_lex $P5006, "$res_type"
    $P5007 = $P5002."coerce"($P5003, $P5006)
    set $P101, $P5007
.annotate 'line', 809
    find_lex $P5008, "$ops"
    find_lex $P5009, "$end_lbl"
    $P5010 = $P5009."result"()
    $P5011 = $P5008."push_pirop"("goto", $P5010)
.annotate 'line', 810
    find_lex $P5012, "$ops"
    find_lex $P5013, "$else_lbl"
    $P5014 = $P5012."push"($P5013)
.annotate 'line', 811
    find_lex $P5015, "$ops"
    $P5016 = $P5015."push"($P101)
.annotate 'line', 812
    find_lex $P5017, "$ops"
    find_lex $P5018, "$res_reg"
    $P5019 = $P101."result"()
    $P5020 = $P5017."push_pirop"("set", $P5018, $P5019)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 823
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exprpost", $P101 
    .lex "$vivipost", $P102 
    .lex "$vivlabel", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
.annotate 'line', 824
    $P5005 = _lex_param_1."list"()
    set $N5001, $P5005
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if145_end498 
    box $P5006, "The 'ifnull' op expects two children"
    die $P5006
    set $P5007, $P5006
  if145_end498:
.annotate 'line', 828
    set $P5009, _lex_param_1[0]
    unless_null $P5009, fallback499
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5010
  fallback499:
    $P5011 = _lex_param_0."as_post"($P5009)
    set $P101, $P5011
.annotate 'line', 829
    set $P5012, _lex_param_1[1]
    unless_null $P5012, fallback500
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5013
  fallback500:
    $P5014 = _lex_param_0."as_post"($P5012)
.annotate 'line', 830
    $P5015 = $P101."result"()
    $P5016 = _lex_param_0."infer_type"($P5015)
    $P5017 = _lex_param_0."coerce"($P5014, $P5016)
    set $P102, $P5017
.annotate 'line', 831
    get_hll_global $P5021, "GLOBAL"
    nqp_get_package_through_who $P5020, $P5021, "PIRT"
    get_who $P5019, $P5020
    set $P5018, $P5019["Label"]
    unless_null $P5018, fallback501
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5022
  fallback501:
    $P5023 = _lex_param_0."unique"("vivi_")
    $P5024 = $P5018."new"($P5023 :named("name"))
    set $P103, $P5024
.annotate 'line', 833
    get_hll_global $P5028, "GLOBAL"
    nqp_get_package_through_who $P5027, $P5028, "PIRT"
    get_who $P5026, $P5027
    set $P5025, $P5026["Ops"]
    unless_null $P5025, fallback502
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5029
  fallback502:
    $P5030 = $P5025."new"()
    set $P104, $P5030
.annotate 'line', 834
    $P5031 = $P104."push"($P101)
.annotate 'line', 835
    $P5032 = $P104."push_pirop"("unless_null", $P101, $P103)
.annotate 'line', 836
    $P5033 = $P104."push"($P102)
.annotate 'line', 837
    $P5034 = $P104."push_pirop"("set", $P101, $P102)
.annotate 'line', 838
    $P5035 = $P104."push"($P103)
.annotate 'line', 839
    $P5036 = $P101."result"()
    $P5037 = $P104."result"($P5036)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_203_1346277600.974' 
    capture_lex $P5010 
    .lex "$repness", _lex_param_0 
    new $P5004, 'ResizablePMCArray'
    box $P5005, "while"
    push $P5004, $P5005
    box $P5006, "until"
    push $P5004, $P5006
    set $P5001, $P5004
    iter $P5003, $P5004
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers571
    push_eh $P5008
  for_next572:
    unless $P5003, for_done574
    shift $P5009, $P5003
  for_redo573:
    .const 'Sub' $P5007 = 'cuid_203_1346277600.974' 
    capture_lex $P5007
    $P5001 = $P5007($P5009)
    goto for_next572
  for_handlers571:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next572
    eq $P5008, .CONTROL_LOOP_REDO, for_redo573
  for_done574:
    pop_eh 
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1346277600.974") :anon :lex :outer("cuid_204_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 845
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_202_1346277600.974' 
    capture_lex $P5010 
    .lex "$op_name", _lex_param_0 
.annotate 'line', 846
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback503
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback503:
    find_lex $P5006, "$repness"
    set $S5002, $P5006
    set $S5003, _lex_param_0
    concat $S5001, $S5002, $S5003
    .const 'Sub' $P5008 = 'cuid_202_1346277600.974' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."add_core_op"($S5001, $P5007, 1 :named("inlinable"))
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1346277600.974") :anon :lex :outer("cuid_203_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 846
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5157 = 'cuid_201_1346277600.974' 
    capture_lex $P5157 
    .lex "$while_id", $P101 
    .lex "$test_lbl", $P102 
    .lex "$next_lbl", $P103 
    .lex "$redo_lbl", $P104 
    .lex "$hand_lbl", $P105 
    .lex "$done_lbl", $P106 
    .lex "@comp_ops", $P107 
    .lex "@comp_types", $P108 
    .lex "$handler", $P109 
    .lex "$*IMM_ARG", $P110 
    .lex "$res_type", $P111 
    .lex "$res_reg", $P112 
    .lex "$operands", $P113 
    .lex "$ops", $P114 
    .lex "$exc_reg", $P115 
    .lex "$coerced", $P116 
    .lex "$body", $P117 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P112, $P5012
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P113, $P5013
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P114, $P5014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P115, $P5015
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P116, $P5016
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P117, $P5017
.annotate 'line', 848
    find_lex $P5018, "$op_name"
    $P5019 = _lex_param_0."unique"($P5018)
    set $P101, $P5019
.annotate 'line', 849
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "PIRT"
    get_who $P5021, $P5022
    set $P5020, $P5021["Label"]
    unless_null $P5020, fallback504
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5024
  fallback504:
    set $S5002, $P101
    concat $S5001, $S5002, "_test"
    $P5025 = $P5020."new"($S5001 :named("name"))
    set $P102, $P5025
.annotate 'line', 850
    get_hll_global $P5029, "GLOBAL"
    nqp_get_package_through_who $P5028, $P5029, "PIRT"
    get_who $P5027, $P5028
    set $P5026, $P5027["Label"]
    unless_null $P5026, fallback505
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5030
  fallback505:
    set $S5004, $P101
    concat $S5003, $S5004, "_next"
    $P5031 = $P5026."new"($S5003 :named("name"))
    set $P103, $P5031
.annotate 'line', 851
    get_hll_global $P5035, "GLOBAL"
    nqp_get_package_through_who $P5034, $P5035, "PIRT"
    get_who $P5033, $P5034
    set $P5032, $P5033["Label"]
    unless_null $P5032, fallback506
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5032, $P5036
  fallback506:
    set $S5006, $P101
    concat $S5005, $S5006, "_redo"
    $P5037 = $P5032."new"($S5005 :named("name"))
    set $P104, $P5037
.annotate 'line', 852
    get_hll_global $P5041, "GLOBAL"
    nqp_get_package_through_who $P5040, $P5041, "PIRT"
    get_who $P5039, $P5040
    set $P5038, $P5039["Label"]
    unless_null $P5038, fallback507
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5038, $P5042
  fallback507:
    set $S5008, $P101
    concat $S5007, $S5008, "_handlers"
    $P5043 = $P5038."new"($S5007 :named("name"))
    set $P105, $P5043
.annotate 'line', 853
    get_hll_global $P5047, "GLOBAL"
    nqp_get_package_through_who $P5046, $P5047, "PIRT"
    get_who $P5045, $P5046
    set $P5044, $P5045["Label"]
    unless_null $P5044, fallback508
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5044, $P5048
  fallback508:
    set $S5010, $P101
    concat $S5009, $S5010, "_done"
    $P5049 = $P5044."new"($S5009 :named("name"))
    set $P106, $P5049
    box $P5050, 1
    set $P109, $P5050
    unless_null $P110, fallback509
    get_hll_global $P5053, "GLOBAL"
    get_who $P5052, $P5053
    set $P5051, $P5052["$IMM_ARG"]
    unless_null $P5051, fallback510
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5051, $P5054
  fallback510:
    unless_null $P5051, vivi_146511
    die "Contextual $*IMM_ARG not found"
    box $P5055, "Contextual $*IMM_ARG not found"
    set $P5051, $P5055
  vivi_146511:
    set $P110, $P5051
  fallback509:
.annotate 'line', 861
    $P5059 = _lex_param_1."list"()
    set $P5056, $P5059
    iter $P5058, $P5059
    new $P5061, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5061, for_handlers527
    push_eh $P5061
  for_next528:
    unless $P5058, for_done530
    shift $P5062, $P5058
  for_redo529:
    .const 'Sub' $P5060 = 'cuid_201_1346277600.974' 
    capture_lex $P5060
    $P5056 = $P5060($P5062)
    goto for_next528
  for_handlers527:
    .get_results ($P5061)
    pop_upto_eh $P5061
    getattribute $P5061, $P5061, 'type'
    eq $P5061, .CONTROL_LOOP_NEXT, for_next528
    eq $P5061, .CONTROL_LOOP_REDO, for_redo529
  for_done530:
    pop_eh 
    set $P5063, $P108[0]
    unless_null $P5063, fallback533
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5063, $P5064
  fallback533:
    set $S5011, $P5063
    set $P5065, $P108[1]
    unless_null $P5065, fallback534
    nqp_get_sc_object $P5066, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5065, $P5066
  fallback534:
    set $S5012, $P5065
    iseq $I5001, $S5011, $S5012
    unless $I5001 goto if153_else531 
    set $P5067, $P108[0]
    unless_null $P5067, fallback535
    nqp_get_sc_object $P5068, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5067, $P5068
  fallback535:
    set $S5014, $P5067
    downcase $S5013, $S5014
    set $S5015, $S5013
    goto if153_end532
  if153_else531:
    set $S5015, "p"
  if153_end532:
    box $P5069, $S5015
    set $P111, $P5069
.annotate 'line', 874
    find_dynamic_lex $P5070, "$*REGALLOC"
    unless_null $P5070, fallback536
    get_hll_global $P5073, "GLOBAL"
    get_who $P5072, $P5073
    set $P5071, $P5072["$REGALLOC"]
    unless_null $P5071, fallback537
    nqp_get_sc_object $P5074, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5071, $P5074
  fallback537:
    unless_null $P5071, vivi_154538
    die "Contextual $*REGALLOC not found"
    box $P5075, "Contextual $*REGALLOC not found"
    set $P5071, $P5075
  vivi_154538:
    set $P5070, $P5071
  fallback536:
    set $S5017, $P111
    concat $S5016, "fresh_", $S5017
    $P5076 = $P5070.$S5016()
    set $P112, $P5076
    set $N5001, $P107
    box $P5077, $N5001
    set $P113, $P5077
    set $N5002, $P113
    set $N5003, 2
    isne $I5002, $N5002, $N5003
    set $I5004, $I5002
    unless $I5002 goto if156_end542 
    set $N5004, $P113
    set $N5005, 3
    isne $I5003, $N5004, $N5005
    set $I5004, $I5003
  if156_end542:
    box $P5082, $I5004
    set $P5081, $P5082
    unless $I5004 goto if155_end540 
    find_lex $P5078, "$repness"
    set $S5021, $P5078
    concat $S5020, "Operation '", $S5021
    find_lex $P5079, "$op_name"
    set $S5022, $P5079
    concat $S5019, $S5020, $S5022
    concat $S5018, $S5019, "' needs 2 or 3 operands"
    box $P5080, $S5018
    die $P5080
    set $P5081, $P5080
  if155_end540:
.annotate 'line', 882
    get_hll_global $P5086, "GLOBAL"
    nqp_get_package_through_who $P5085, $P5086, "PIRT"
    get_who $P5084, $P5085
    set $P5083, $P5084["Ops"]
    unless_null $P5083, fallback543
    nqp_get_sc_object $P5087, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5083, $P5087
  fallback543:
    $P5088 = $P5083."new"()
    set $P114, $P5088
.annotate 'line', 883
    $P5089 = $P114."result"($P112)
    set $P5100, $P109
    unless $P109 goto if157_end545 
.annotate 'line', 886
.annotate 'line', 887
    find_dynamic_lex $P5090, "$*REGALLOC"
    unless_null $P5090, fallback546
    get_hll_global $P5093, "GLOBAL"
    get_who $P5092, $P5093
    set $P5091, $P5092["$REGALLOC"]
    unless_null $P5091, fallback547
    nqp_get_sc_object $P5094, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5091, $P5094
  fallback547:
    unless_null $P5091, vivi_158548
    die "Contextual $*REGALLOC not found"
    box $P5095, "Contextual $*REGALLOC not found"
    set $P5091, $P5095
  vivi_158548:
    set $P5090, $P5091
  fallback546:
    $P5096 = $P5090."fresh_p"()
    set $P115, $P5096
.annotate 'line', 888
    $P5097 = $P114."push_pirop"("new", $P115, "'ExceptionHandler'", "[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]")
.annotate 'line', 890
    $P5098 = $P114."push_pirop"("set_label", $P115, $P105)
.annotate 'line', 891
    $P5099 = $P114."push_pirop"("push_eh", $P115)
    set $P5100, $P5099
  if157_end545:
.annotate 'line', 896
    set $P5101, $P107[0]
    unless_null $P5101, fallback549
    nqp_get_sc_object $P5102, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5101, $P5102
  fallback549:
    $P5103 = _lex_param_0."coerce"($P5101, $P111)
    set $P116, $P5103
    find_lex $P5104, "$repness"
    set $P5108, $P5104
    unless $P5104 goto if159_end551 
.annotate 'line', 897
.annotate 'line', 900
    $P5105 = $P116."result"()
    $P5106 = $P114."push_pirop"("null", $P5105)
.annotate 'line', 901
    $P5107 = $P114."push_pirop"("goto", $P104)
    set $P5108, $P5107
  if159_end551:
.annotate 'line', 903
    $P5109 = $P114."push"($P102)
.annotate 'line', 904
    $P5110 = $P114."push"($P116)
.annotate 'line', 905
    $P5111 = $P116."result"()
    $P5112 = $P114."push_pirop"("set", $P112, $P5111)
.annotate 'line', 906
    find_lex $P5113, "$op_name"
    set $S5026, $P5113
    iseq $I5005, $S5026, "while"
    unless $I5005 goto if160_else552 
    set $S5027, "unless "
    goto if160_end553
  if160_else552:
    set $S5027, "if "
  if160_end553:
.annotate 'line', 907
    set $P5114, $P107[0]
    unless_null $P5114, fallback554
    nqp_get_sc_object $P5115, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5114, $P5115
  fallback554:
    $P5116 = $P5114."result"()
    set $S5028, $P5116
    concat $S5025, $S5027, $S5028
    concat $S5024, $S5025, " goto "
    $P5117 = $P106."result"()
    set $S5029, $P5117
    concat $S5023, $S5024, $S5029
    $P5118 = $P114."push_pirop"($S5023)
    unless_null $P110, fallback557
    get_hll_global $P5121, "GLOBAL"
    get_who $P5120, $P5121
    set $P5119, $P5120["$IMM_ARG"]
    unless_null $P5119, fallback558
    nqp_get_sc_object $P5122, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5119, $P5122
  fallback558:
    unless_null $P5119, vivi_162559
    die "Contextual $*IMM_ARG not found"
    box $P5123, "Contextual $*IMM_ARG not found"
    set $P5119, $P5123
  vivi_162559:
    set $P110, $P5119
  fallback557:
    set $P5131, $P110
    unless $P110 goto if161_end556 
.annotate 'line', 910
.annotate 'line', 911
    $P5129 = $P116."result"()
    unless_null $P110, fallback560
    get_hll_global $P5126, "GLOBAL"
    get_who $P5125, $P5126
    set $P5124, $P5125["$IMM_ARG"]
    unless_null $P5124, fallback561
    nqp_get_sc_object $P5127, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5124, $P5127
  fallback561:
    unless_null $P5124, vivi_163562
    die "Contextual $*IMM_ARG not found"
    box $P5128, "Contextual $*IMM_ARG not found"
    set $P5124, $P5128
  vivi_163562:
    set $P110, $P5124
  fallback560:
    $P5130 = $P110($P5129)
    set $P5131, $P5130
  if161_end556:
.annotate 'line', 915
    set $P5132, $P107[1]
    unless_null $P5132, fallback563
    nqp_get_sc_object $P5133, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5132, $P5133
  fallback563:
    $P5134 = _lex_param_0."coerce"($P5132, $P111)
    set $P117, $P5134
.annotate 'line', 916
    $P5135 = $P114."push"($P104)
.annotate 'line', 917
    $P5136 = $P114."push"($P117)
.annotate 'line', 918
    $P5137 = $P117."result"()
    $P5138 = $P114."push_pirop"("set", $P112, $P5137)
    set $N5006, $P113
    set $N5007, 3
    iseq $I5006, $N5006, $N5007
    box $P5144, $I5006
    set $P5143, $P5144
    unless $I5006 goto if164_end565 
.annotate 'line', 922
.annotate 'line', 923
    $P5139 = $P114."push"($P103)
.annotate 'line', 924
    set $P5140, $P107[2]
    unless_null $P5140, fallback566
    nqp_get_sc_object $P5141, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5140, $P5141
  fallback566:
    $P5142 = $P114."push"($P5140)
    set $P5143, $P5142
  if164_end565:
.annotate 'line', 928
    $P5145 = $P102."result"()
    set $S5031, $P5145
    concat $S5030, "goto ", $S5031
    $P5146 = $P114."push_pirop"($S5030)
    set $P5156, $P109
    unless $P109 goto if165_end568 
.annotate 'line', 931
.annotate 'line', 932
    $P5147 = $P114."push"($P105)
.annotate 'line', 933
    set $S5034, $P115
    concat $S5033, "(", $S5034
    concat $S5032, $S5033, ")"
    $P5148 = $P114."push_pirop"(".get_results", $S5032)
.annotate 'line', 934
    $P5149 = $P114."push_pirop"("pop_upto_eh", $P115)
.annotate 'line', 935
    $P5150 = $P114."push_pirop"("getattribute", $P115, $P115, "'type'")
.annotate 'line', 936
    set $N5008, $P113
    set $N5009, 3
    iseq $I5007, $N5008, $N5009
    unless $I5007 goto if166_else569 
    set $P5151, $P103
    goto if166_end570
  if166_else569:
    set $P5151, $P102
  if166_end570:
    $P5152 = $P114."push_pirop"("eq", $P115, ".CONTROL_LOOP_NEXT", $P5151)
.annotate 'line', 938
    $P5153 = $P114."push_pirop"("eq", $P115, ".CONTROL_LOOP_REDO", $P104)
.annotate 'line', 939
    $P5154 = $P114."push"($P106)
.annotate 'line', 940
    $P5155 = $P114."push_pirop"("pop_eh")
    set $P5156, $P5155
  if165_end568:
    .return ($P114) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1346277600.974") :anon :lex :outer("cuid_202_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 861
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_200_1346277600.974' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
.annotate 'line', 862
    $P5001 = _lex_param_0."named"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "nohandler"
    unless $I5001 goto if147_else512 
    box $P5002, 0
    store_lex "$handler", $P5002
    set $P5005, $P5002
    goto if147_end513
  if147_else512:
    .const 'Sub' $P5003 = 'cuid_200_1346277600.974' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if147_end513:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1346277600.974") :anon :lex :outer("cuid_201_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 863
    .lex "$*HAVE_IMM_ARG", $P101 
    .lex "$comp", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 864
    find_lex $P5003, "$_"
    $P5004 = $P5003."arity"()
    set $N5001, $P5004
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if148_end515 
    find_lex $P5005, "$_"
    get_id $I5003, $P5005
    find_lex $P5007, "$op"
    $P5008 = $P5007."list"()
    set $P5006, $P5008[1]
    unless_null $P5006, fallback516
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5009
  fallback516:
    get_id $I5004, $P5006
    iseq $I5002, $I5003, $I5004
    set $I5005, $I5002
  if148_end515:
    box $P5010, $I5005
    set $P101, $P5010
.annotate 'line', 865
    find_lex $P5011, "$qastcomp"
    find_lex $P5012, "$_"
    $P5013 = $P5011."as_post"($P5012)
    set $P102, $P5013
.annotate 'line', 866
    find_lex $P5014, "@comp_ops"
    $P5015 = $P5014."push"($P102)
.annotate 'line', 867
    find_lex $P5016, "@comp_types"
    find_lex $P5017, "$qastcomp"
    $P5018 = $P102."result"()
    $P5019 = $P5017."infer_type"($P5018)
    $P5020 = $P5016."push"($P5019)
    unless_null $P101, fallback521
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["$HAVE_IMM_ARG"]
    unless_null $P5021, fallback522
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5024
  fallback522:
    unless_null $P5021, vivi_151523
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P5025, "Contextual $*HAVE_IMM_ARG not found"
    set $P5021, $P5025
  vivi_151523:
    set $P101, $P5021
  fallback521:
    set $P5032, $P101
    unless $P101 goto if150_end520 
    find_dynamic_lex $P5026, "$*IMM_ARG"
    unless_null $P5026, fallback524
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    set $P5027, $P5028["$IMM_ARG"]
    unless_null $P5027, fallback525
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5030
  fallback525:
    unless_null $P5027, vivi_152526
    die "Contextual $*IMM_ARG not found"
    box $P5031, "Contextual $*IMM_ARG not found"
    set $P5027, $P5031
  vivi_152526:
    set $P5026, $P5027
  fallback524:
    isfalse $I5006, $P5026
    box $P5033, $I5006
    set $P5032, $P5033
  if150_end520:
    set $P5036, $P5032
    unless $P5032 goto if149_end518 
.annotate 'line', 868
    find_lex $P5034, "$op_name"
    set $S5002, $P5034
    concat $S5001, $S5002, " block expects an argument, but there's no immediate block to take it"
    box $P5035, $S5001
    die $P5035
    set $P5036, $P5035
  if149_end518:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 948
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5138 = 'cuid_205_1346277600.974' 
    capture_lex $P5138 
    .lex "$res", $P101 
    .lex "$curval", $P102 
    .lex "$iter", $P103 
    .lex "$ops", $P104 
    .lex "$listpost", $P105 
    .lex "$blockpost", $P106 
    .lex "$handler", $P107 
    .lex "$exc_reg", $P108 
    .lex "$hand_lbl", $P109 
    .lex "$lbl_next", $P110 
    .lex "$lbl_redo", $P111 
    .lex "$lbl_done", $P112 
    .lex "@valreg", $P113 
    .lex "$arity", $P114 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P112, $P5012
    new $P5013, 'ResizablePMCArray'
    set $P113, $P5013
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P114, $P5014
.annotate 'line', 949
    $P5015 = _lex_param_1."list"()
    set $N5001, $P5015
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5018, $I5001
    set $P5017, $P5018
    unless $I5001 goto if167_end581 
    box $P5016, "Operation 'for' needs 2 operands"
    die $P5016
    set $P5017, $P5016
  if167_end581:
    set $P5019, _lex_param_1[1]
    unless_null $P5019, fallback584
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5020
  fallback584:
    get_hll_global $P5024, "GLOBAL"
    nqp_get_package_through_who $P5023, $P5024, "QAST"
    get_who $P5022, $P5023
    set $P5021, $P5022["Block"]
    unless_null $P5021, fallback585
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5025
  fallback585:
    type_check $I5002, $P5019, $P5021
    box $P5028, $I5002
    set $P5027, $P5028
    if $I5002 goto unless168_end583 
.annotate 'line', 952
    box $P5026, "Operation 'for' expects a block as its second operand"
    die $P5026
    set $P5027, $P5026
  unless168_end583:
.annotate 'line', 955
    set $P5029, _lex_param_1[1]
    unless_null $P5029, fallback588
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5030
  fallback588:
    $P5031 = $P5029."blocktype"()
    set $S5001, $P5031
    iseq $I5003, $S5001, "immediate"
    box $P5036, $I5003
    set $P5035, $P5036
    unless $I5003 goto if169_end587 
.annotate 'line', 956
    set $P5032, _lex_param_1[1]
    unless_null $P5032, fallback589
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5032, $P5033
  fallback589:
    $P5034 = $P5032."blocktype"("declaration")
    set $P5035, $P5034
  if169_end587:
.annotate 'line', 960
    find_dynamic_lex $P5037, "$*REGALLOC"
    unless_null $P5037, fallback590
    get_hll_global $P5040, "GLOBAL"
    get_who $P5039, $P5040
    set $P5038, $P5039["$REGALLOC"]
    unless_null $P5038, fallback591
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5038, $P5041
  fallback591:
    unless_null $P5038, vivi_170592
    die "Contextual $*REGALLOC not found"
    box $P5042, "Contextual $*REGALLOC not found"
    set $P5038, $P5042
  vivi_170592:
    set $P5037, $P5038
  fallback590:
    $P5043 = $P5037."fresh_p"()
    set $P101, $P5043
.annotate 'line', 961
    find_dynamic_lex $P5044, "$*REGALLOC"
    unless_null $P5044, fallback593
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    set $P5045, $P5046["$REGALLOC"]
    unless_null $P5045, fallback594
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5045, $P5048
  fallback594:
    unless_null $P5045, vivi_171595
    die "Contextual $*REGALLOC not found"
    box $P5049, "Contextual $*REGALLOC not found"
    set $P5045, $P5049
  vivi_171595:
    set $P5044, $P5045
  fallback593:
    $P5050 = $P5044."fresh_p"()
    set $P102, $P5050
.annotate 'line', 962
    find_dynamic_lex $P5051, "$*REGALLOC"
    unless_null $P5051, fallback596
    get_hll_global $P5054, "GLOBAL"
    get_who $P5053, $P5054
    set $P5052, $P5053["$REGALLOC"]
    unless_null $P5052, fallback597
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5052, $P5055
  fallback597:
    unless_null $P5052, vivi_172598
    die "Contextual $*REGALLOC not found"
    box $P5056, "Contextual $*REGALLOC not found"
    set $P5052, $P5056
  vivi_172598:
    set $P5051, $P5052
  fallback596:
    $P5057 = $P5051."fresh_p"()
    set $P103, $P5057
.annotate 'line', 963
    get_hll_global $P5061, "GLOBAL"
    nqp_get_package_through_who $P5060, $P5061, "PIRT"
    get_who $P5059, $P5060
    set $P5058, $P5059["Ops"]
    unless_null $P5058, fallback599
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5058, $P5062
  fallback599:
    $P5063 = $P5058."new"()
    set $P104, $P5063
.annotate 'line', 964
    set $P5064, _lex_param_1[0]
    unless_null $P5064, fallback600
    nqp_get_sc_object $P5065, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5064, $P5065
  fallback600:
    $P5066 = _lex_param_0."as_post"($P5064)
    $P5067 = _lex_param_0."coerce"($P5066, "P")
    set $P105, $P5067
.annotate 'line', 965
    set $P5068, _lex_param_1[1]
    unless_null $P5068, fallback601
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5068, $P5069
  fallback601:
    $P5070 = _lex_param_0."as_post"($P5068)
    $P5071 = _lex_param_0."coerce"($P5070, "P")
    set $P106, $P5071
.annotate 'line', 966
    $P5072 = $P104."push"($P105)
.annotate 'line', 969
    $P5073 = $P104."push_pirop"("set", $P101, $P105)
.annotate 'line', 970
    $P5074 = $P104."push_pirop"("iter", $P103, $P105)
    box $P5075, 1
    set $P107, $P5075
    set $P5092, $P107
    unless $P107 goto if173_end603 
.annotate 'line', 976
.annotate 'line', 977
    find_dynamic_lex $P5076, "$*REGALLOC"
    unless_null $P5076, fallback604
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    set $P5077, $P5078["$REGALLOC"]
    unless_null $P5077, fallback605
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5077, $P5080
  fallback605:
    unless_null $P5077, vivi_174606
    die "Contextual $*REGALLOC not found"
    box $P5081, "Contextual $*REGALLOC not found"
    set $P5077, $P5081
  vivi_174606:
    set $P5076, $P5077
  fallback604:
    $P5082 = $P5076."fresh_p"()
    set $P108, $P5082
.annotate 'line', 978
    get_hll_global $P5086, "GLOBAL"
    nqp_get_package_through_who $P5085, $P5086, "PIRT"
    get_who $P5084, $P5085
    set $P5083, $P5084["Label"]
    unless_null $P5083, fallback607
    nqp_get_sc_object $P5087, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5083, $P5087
  fallback607:
    $P5088 = $P5083."new"("for_handlers" :named("name"))
    set $P109, $P5088
.annotate 'line', 979
    $P5089 = $P104."push_pirop"("new", $P108, "'ExceptionHandler'", "[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]")
.annotate 'line', 981
    $P5090 = $P104."push_pirop"("set_label", $P108, $P109)
.annotate 'line', 982
    $P5091 = $P104."push_pirop"("push_eh", $P108)
    set $P5092, $P5091
  if173_end603:
.annotate 'line', 986
    get_hll_global $P5096, "GLOBAL"
    nqp_get_package_through_who $P5095, $P5096, "PIRT"
    get_who $P5094, $P5095
    set $P5093, $P5094["Label"]
    unless_null $P5093, fallback608
    nqp_get_sc_object $P5097, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5093, $P5097
  fallback608:
    $P5098 = $P5093."new"("for_next" :named("name"))
    set $P110, $P5098
.annotate 'line', 987
    get_hll_global $P5102, "GLOBAL"
    nqp_get_package_through_who $P5101, $P5102, "PIRT"
    get_who $P5100, $P5101
    set $P5099, $P5100["Label"]
    unless_null $P5099, fallback609
    nqp_get_sc_object $P5103, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5099, $P5103
  fallback609:
    $P5104 = $P5099."new"("for_redo" :named("name"))
    set $P111, $P5104
.annotate 'line', 988
    get_hll_global $P5108, "GLOBAL"
    nqp_get_package_through_who $P5107, $P5108, "PIRT"
    get_who $P5106, $P5107
    set $P5105, $P5106["Label"]
    unless_null $P5105, fallback610
    nqp_get_sc_object $P5109, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5105, $P5109
  fallback610:
    $P5110 = $P5105."new"("for_done" :named("name"))
    set $P112, $P5110
.annotate 'line', 989
    $P5111 = $P104."push"($P110)
.annotate 'line', 990
    $P5112 = $P104."push_pirop"("unless", $P103, $P112)
.annotate 'line', 994
    set $P5113, _lex_param_1[1]
    unless_null $P5113, fallback613
    nqp_get_sc_object $P5114, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5113, $P5114
  fallback613:
    $P5115 = $P5113."arity"()
    set $P5116, $P5115
    if $P5115 goto unless175_end612 
    box $P5117, 1
    set $P5116, $P5117
  unless175_end612:
    set $P114, $P5116
    new $P5121, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5121, while176_handlers617
    push_eh $P5121
  while176_test614:
    set $N5003, $P114
    set $N5004, 0
    isgt $I5004, $N5003, $N5004
    box $P5122, $I5004
    set $P5120, $P5122
    unless $I5004 goto while176_done618 
  while176_redo616:
    .const 'Sub' $P5118 = 'cuid_205_1346277600.974' 
    capture_lex $P5118
    $P5119 = $P5118()
    set $P5120, $P5119
    goto while176_test614 
  while176_handlers617:
    .get_results ($P5121)
    pop_upto_eh $P5121
    getattribute $P5121, $P5121, 'type'
    eq $P5121, .CONTROL_LOOP_NEXT, while176_test614
    eq $P5121, .CONTROL_LOOP_REDO, while176_redo616
  while176_done618:
    pop_eh 
.annotate 'line', 1003
    $P5123 = $P104."push"($P111)
.annotate 'line', 1004
    $P5124 = $P104."push"($P106)
.annotate 'line', 1005
    $P5125 = $P104."push_pirop"("call", $P106, $P113 :flat, $P101 :named("result"))
.annotate 'line', 1008
    $P5126 = $P104."push_pirop"("goto", $P110)
    unless $P107 goto if178_else622 
.annotate 'line', 1011
.annotate 'line', 1012
    $P5127 = $P104."push"($P109)
.annotate 'line', 1013
    set $S5004, $P108
    concat $S5003, "(", $S5004
    concat $S5002, $S5003, ")"
    $P5128 = $P104."push_pirop"(".get_results", $S5002)
.annotate 'line', 1014
    $P5129 = $P104."push_pirop"("pop_upto_eh", $P108)
.annotate 'line', 1015
    $P5130 = $P104."push_pirop"("getattribute", $P108, $P108, "'type'")
.annotate 'line', 1016
    $P5131 = $P104."push_pirop"("eq", $P108, ".CONTROL_LOOP_NEXT", $P110)
.annotate 'line', 1017
    $P5132 = $P104."push_pirop"("eq", $P108, ".CONTROL_LOOP_REDO", $P111)
.annotate 'line', 1018
    $P5133 = $P104."push"($P112)
.annotate 'line', 1019
    $P5134 = $P104."push_pirop"("pop_eh")
    set $P5136, $P5134
    goto if178_end623
  if178_else622:
.annotate 'line', 1021
.annotate 'line', 1022
    $P5135 = $P104."push"($P112)
    set $P5136, $P5135
  if178_end623:
.annotate 'line', 1026
    $P5137 = $P104."result"($P101)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1346277600.974") :anon :lex :outer("cuid_206_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 995
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 996
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback619
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback620
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback620:
    unless_null $P5003, vivi_177621
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_177621:
    set $P5002, $P5003
  fallback619:
    $P5008 = $P5002."fresh_p"()
    set $P101, $P5008
.annotate 'line', 997
    find_lex $P5009, "$ops"
    find_lex $P5010, "$iter"
    $P5011 = $P5009."push_pirop"("shift", $P101, $P5010)
    find_lex $P5012, "@valreg"
    push $P5012, $P101
    find_lex $P5013, "$arity"
    set $N5002, $P5013
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5014, $N5001
    store_lex "$arity", $P5014
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$lbl", $P102 
    .lex "$dreg", $P103 
    .lex "$rreg", $P104 
    .lex "$test", $P105 
    .lex "$then", $P106 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
.annotate 'line', 1031
    $P5007 = _lex_param_1."list"()
    set $N5001, $P5007
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if179_end626 
    box $P5008, "Operation 'defor' needs 2 operands"
    die $P5008
    set $P5009, $P5008
  if179_end626:
.annotate 'line', 1034
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "PIRT"
    get_who $P5012, $P5013
    set $P5011, $P5012["Ops"]
    unless_null $P5011, fallback627
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5015
  fallback627:
    $P5016 = $P5011."new"()
    set $P101, $P5016
.annotate 'line', 1035
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "PIRT"
    get_who $P5018, $P5019
    set $P5017, $P5018["Label"]
    unless_null $P5017, fallback628
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback628:
    $P5022 = $P5017."new"("defor" :named("name"))
    set $P102, $P5022
.annotate 'line', 1036
    find_dynamic_lex $P5023, "$*REGALLOC"
    unless_null $P5023, fallback629
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["$REGALLOC"]
    unless_null $P5024, fallback630
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5027
  fallback630:
    unless_null $P5024, vivi_180631
    die "Contextual $*REGALLOC not found"
    box $P5028, "Contextual $*REGALLOC not found"
    set $P5024, $P5028
  vivi_180631:
    set $P5023, $P5024
  fallback629:
    $P5029 = $P5023."fresh_i"()
    set $P103, $P5029
.annotate 'line', 1037
    find_dynamic_lex $P5030, "$*REGALLOC"
    unless_null $P5030, fallback632
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    set $P5031, $P5032["$REGALLOC"]
    unless_null $P5031, fallback633
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5031, $P5034
  fallback633:
    unless_null $P5031, vivi_181634
    die "Contextual $*REGALLOC not found"
    box $P5035, "Contextual $*REGALLOC not found"
    set $P5031, $P5035
  vivi_181634:
    set $P5030, $P5031
  fallback632:
    $P5036 = $P5030."fresh_p"()
    set $P104, $P5036
.annotate 'line', 1038
    set $P5037, _lex_param_1[0]
    unless_null $P5037, fallback635
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5037, $P5038
  fallback635:
    $P5039 = _lex_param_0."as_post"($P5037)
    $P5040 = _lex_param_0."coerce"($P5039, "P")
    set $P105, $P5040
.annotate 'line', 1039
    set $P5041, _lex_param_1[1]
    unless_null $P5041, fallback636
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5041, $P5042
  fallback636:
    $P5043 = _lex_param_0."as_post"($P5041)
    $P5044 = _lex_param_0."coerce"($P5043, "P")
    set $P106, $P5044
.annotate 'line', 1040
    $P5045 = $P101."push"($P105)
.annotate 'line', 1041
    $P5046 = $P101."push_pirop"("set", $P104, $P105)
.annotate 'line', 1042
    $P5047 = $P101."push_pirop"("defined", $P103, $P104)
.annotate 'line', 1043
    $P5048 = $P101."push_pirop"("if", $P103, $P102)
.annotate 'line', 1044
    $P5049 = $P101."push"($P106)
.annotate 'line', 1045
    $P5050 = $P101."push_pirop"("set", $P104, $P106)
.annotate 'line', 1046
    $P5051 = $P101."push"($P102)
.annotate 'line', 1047
    $P5052 = $P101."result"($P104)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1051
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5087 = 'cuid_208_1346277600.974' 
    capture_lex $P5087 
    .const 'Sub' $P5087 = 'cuid_211_1346277600.974' 
    capture_lex $P5087 
    .const 'Sub' $P5087 = 'cuid_212_1346277600.974' 
    capture_lex $P5087 
    .lex "$ops", $P101 
    .lex "$falselabel", $P102 
    .lex "$endlabel", $P103 
    .lex "@childlist", $P104 
    .lex "$fpast", $P105 
    .lex "$i", $P106 
    .lex "$t", $P107 
    .lex "$u", $P108 
    .lex "$apast", $P109 
    .lex "$apost", $P110 
    .lex "$have_middle_child", $P111 
    .lex "$bpost", $P112 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P112, $P5012
.annotate 'line', 1052
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "PIRT"
    get_who $P5014, $P5015
    set $P5013, $P5014["Ops"]
    unless_null $P5013, fallback638
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5017
  fallback638:
    $P5018 = $P5013."new"()
    set $P101, $P5018
.annotate 'line', 1053
    find_dynamic_lex $P5019, "$*REGALLOC"
    unless_null $P5019, fallback639
    get_hll_global $P5022, "GLOBAL"
    get_who $P5021, $P5022
    set $P5020, $P5021["$REGALLOC"]
    unless_null $P5020, fallback640
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5023
  fallback640:
    unless_null $P5020, vivi_182641
    die "Contextual $*REGALLOC not found"
    box $P5024, "Contextual $*REGALLOC not found"
    set $P5020, $P5024
  vivi_182641:
    set $P5019, $P5020
  fallback639:
    $P5025 = $P5019."fresh_p"()
    $P5026 = $P101."result"($P5025)
.annotate 'line', 1055
    get_hll_global $P5030, "GLOBAL"
    nqp_get_package_through_who $P5029, $P5030, "PIRT"
    get_who $P5028, $P5029
    set $P5027, $P5028["Label"]
    unless_null $P5027, fallback642
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5031
  fallback642:
    $P5032 = $P5027."new"("xor_false" :named("name"))
    set $P102, $P5032
.annotate 'line', 1056
    get_hll_global $P5036, "GLOBAL"
    nqp_get_package_through_who $P5035, $P5036, "PIRT"
    get_who $P5034, $P5035
    set $P5033, $P5034["Label"]
    unless_null $P5033, fallback643
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5033, $P5037
  fallback643:
    $P5038 = $P5033."new"("xor_end" :named("name"))
    set $P103, $P5038
.annotate 'line', 1060
    $P5042 = _lex_param_1."list"()
    set $P5039, $P5042
    iter $P5041, $P5042
    new $P5044, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5044, for_handlers646
    push_eh $P5044
  for_next647:
    unless $P5041, for_done649
    shift $P5045, $P5041
  for_redo648:
    .const 'Sub' $P5043 = 'cuid_208_1346277600.974' 
    capture_lex $P5043
    $P5039 = $P5043($P5045)
    goto for_next647
  for_handlers646:
    .get_results ($P5044)
    pop_upto_eh $P5044
    getattribute $P5044, $P5044, 'type'
    eq $P5044, .CONTROL_LOOP_NEXT, for_next647
    eq $P5044, .CONTROL_LOOP_REDO, for_redo648
  for_done649:
    pop_eh 
.annotate 'line', 1069
    find_dynamic_lex $P5046, "$*REGALLOC"
    unless_null $P5046, fallback650
    get_hll_global $P5049, "GLOBAL"
    get_who $P5048, $P5049
    set $P5047, $P5048["$REGALLOC"]
    unless_null $P5047, fallback651
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5047, $P5050
  fallback651:
    unless_null $P5047, vivi_184652
    die "Contextual $*REGALLOC not found"
    box $P5051, "Contextual $*REGALLOC not found"
    set $P5047, $P5051
  vivi_184652:
    set $P5046, $P5047
  fallback650:
    $P5052 = $P5046."fresh_i"()
    set $P106, $P5052
.annotate 'line', 1070
    find_dynamic_lex $P5053, "$*REGALLOC"
    unless_null $P5053, fallback653
    get_hll_global $P5056, "GLOBAL"
    get_who $P5055, $P5056
    set $P5054, $P5055["$REGALLOC"]
    unless_null $P5054, fallback654
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5054, $P5057
  fallback654:
    unless_null $P5054, vivi_185655
    die "Contextual $*REGALLOC not found"
    box $P5058, "Contextual $*REGALLOC not found"
    set $P5054, $P5058
  vivi_185655:
    set $P5053, $P5054
  fallback653:
    $P5059 = $P5053."fresh_i"()
    set $P107, $P5059
.annotate 'line', 1071
    find_dynamic_lex $P5060, "$*REGALLOC"
    unless_null $P5060, fallback656
    get_hll_global $P5063, "GLOBAL"
    get_who $P5062, $P5063
    set $P5061, $P5062["$REGALLOC"]
    unless_null $P5061, fallback657
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5061, $P5064
  fallback657:
    unless_null $P5061, vivi_186658
    die "Contextual $*REGALLOC not found"
    box $P5065, "Contextual $*REGALLOC not found"
    set $P5061, $P5065
  vivi_186658:
    set $P5060, $P5061
  fallback656:
    $P5066 = $P5060."fresh_i"()
    set $P108, $P5066
    shift $P5067, $P104
    set $P109, $P5067
.annotate 'line', 1074
    $P5068 = _lex_param_0."as_post"($P109)
    $P5069 = _lex_param_0."coerce"($P5068, "P")
    set $P110, $P5069
.annotate 'line', 1075
    $P5070 = $P101."push"($P110)
.annotate 'line', 1076
    $P5071 = $P101."push_pirop"("set", $P101, $P110)
.annotate 'line', 1077
    $P5072 = $P101."push_pirop"("istrue", $P107, $P110)
    box $P5073, 1
    set $P111, $P5073
    new $P5077, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5077, while187_handlers662
    push_eh $P5077
  while187_test659:
    set $P5076, $P111
    unless $P111 goto while187_done663 
  while187_redo661:
    .const 'Sub' $P5074 = 'cuid_211_1346277600.974' 
    capture_lex $P5074
    $P5075 = $P5074()
    set $P5076, $P5075
    goto while187_test659 
  while187_handlers662:
    .get_results ($P5077)
    pop_upto_eh $P5077
    getattribute $P5077, $P5077, 'type'
    eq $P5077, .CONTROL_LOOP_NEXT, while187_test659
    eq $P5077, .CONTROL_LOOP_REDO, while187_redo661
  while187_done663:
    pop_eh 
.annotate 'line', 1100
    $P5078 = $P101."push_pirop"("if", $P107, $P103)
.annotate 'line', 1101
    $P5079 = $P101."push_pirop"("set", $P101, $P112)
.annotate 'line', 1102
    $P5080 = $P101."push_pirop"("goto", $P103)
.annotate 'line', 1103
    $P5081 = $P101."push"($P102)
    unless $P105 goto if189_else667 
    .const 'Sub' $P5082 = 'cuid_212_1346277600.974' 
    capture_lex $P5082
    $P5083 = $P5082()
    set $P5085, $P5083
    goto if189_end668
  if189_else667:
.annotate 'line', 1110
.annotate 'line', 1111
    $P5084 = $P101."push_pirop"("new", $P101, "[\"Undef\"]")
    set $P5085, $P5084
  if189_end668:
.annotate 'line', 1114
    $P5086 = $P101."push"($P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1346277600.974") :anon :lex :outer("cuid_209_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1060
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1061
    $P5001 = _lex_param_0."named"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "false"
    unless $I5001 goto if183_else644 
    store_lex "$fpast", _lex_param_0
    set $P5003, _lex_param_0
    goto if183_end645
  if183_else644:
.annotate 'line', 1064
    find_lex $P5002, "@childlist"
    push $P5002, _lex_param_0
    set $P5003, $P5002
  if183_end645:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1346277600.974") :anon :lex :outer("cuid_209_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1081
    .const 'Sub' $P5029 = 'cuid_210_1346277600.974' 
    capture_lex $P5029 
    .lex "$bpast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5003, "@childlist"
    shift $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1083
    find_lex $P5004, "$qastcomp"
    find_lex $P5005, "$qastcomp"
    $P5006 = $P5005."as_post"($P101)
    $P5007 = $P5004."coerce"($P5006, "P")
    store_lex "$bpost", $P5007
.annotate 'line', 1084
    find_lex $P5008, "$ops"
    find_lex $P5009, "$bpost"
    $P5010 = $P5008."push"($P5009)
.annotate 'line', 1085
    find_lex $P5011, "$ops"
    find_lex $P5012, "$u"
    find_lex $P5013, "$bpost"
    $P5014 = $P5011."push_pirop"("istrue", $P5012, $P5013)
.annotate 'line', 1086
    find_lex $P5015, "$ops"
    find_lex $P5016, "$i"
    find_lex $P5017, "$t"
    find_lex $P5018, "$u"
    $P5019 = $P5015."push_pirop"("and", $P5016, $P5017, $P5018)
.annotate 'line', 1087
    find_lex $P5020, "$ops"
    find_lex $P5021, "$i"
    find_lex $P5022, "$falselabel"
    $P5023 = $P5020."push_pirop"("if", $P5021, $P5022)
    find_lex $P5024, "@childlist"
    unless $P5024 goto if188_else664 
    .const 'Sub' $P5025 = 'cuid_210_1346277600.974' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5028, $P5026
    goto if188_end665
  if188_else664:
.annotate 'line', 1095
    box $P5027, 0
    store_lex "$have_middle_child", $P5027
    set $P5028, $P5027
  if188_end665:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1346277600.974") :anon :lex :outer("cuid_211_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1088
    .lex "$truelabel", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1089
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Label"]
    unless_null $P5002, fallback666
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback666:
    $P5007 = $P5002."new"("xor_true" :named("name"))
    set $P101, $P5007
.annotate 'line', 1090
    find_lex $P5008, "$ops"
    find_lex $P5009, "$t"
    $P5010 = $P5008."push_pirop"("if", $P5009, $P101)
.annotate 'line', 1091
    find_lex $P5011, "$ops"
    find_lex $P5012, "$ops"
    find_lex $P5013, "$bpost"
    $P5014 = $P5011."push_pirop"("set", $P5012, $P5013)
.annotate 'line', 1092
    find_lex $P5015, "$ops"
    find_lex $P5016, "$t"
    find_lex $P5017, "$u"
    $P5018 = $P5015."push_pirop"("set", $P5016, $P5017)
.annotate 'line', 1093
    find_lex $P5019, "$ops"
    $P5020 = $P5019."push"($P101)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1346277600.974") :anon :lex :outer("cuid_209_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1105
    .lex "$fpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1106
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$fpast"
    $P5005 = $P5003."as_post"($P5004)
    $P5006 = $P5002."coerce"($P5005, "P")
    set $P101, $P5006
.annotate 'line', 1107
    find_lex $P5007, "$ops"
    $P5008 = $P5007."push"($P101)
.annotate 'line', 1108
    find_lex $P5009, "$ops"
    find_lex $P5010, "$ops"
    $P5011 = $P5009."push_pirop"("set", $P5010, $P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@children", $P101 
    .lex "$*BINDVAL", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1122
    $P5003 = _lex_param_1."list"()
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if190_end671 
.annotate 'line', 1123
    box $P5004, "A 'bind' op must have exactly two children"
    die $P5004
    set $P5005, $P5004
  if190_end671:
    set $P5007, $P101[0]
    unless_null $P5007, fallback674
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback674:
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Var"]
    unless_null $P5009, fallback675
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback675:
    type_check $I5002, $P5007, $P5009
    box $P5016, $I5002
    set $P5015, $P5016
    if $I5002 goto unless191_end673 
.annotate 'line', 1126
    box $P5014, "First child of a 'bind' op must be a QAST::Var"
    die $P5014
    set $P5015, $P5014
  unless191_end673:
    set $P5017, $P101[1]
    unless_null $P5017, fallback676
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5018
  fallback676:
    set $P102, $P5017
.annotate 'line', 1133
    set $P5019, $P101[0]
    unless_null $P5019, fallback677
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5020
  fallback677:
    $P5021 = _lex_param_0."as_post"($P5019)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1161
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5053 = 'cuid_214_1346277600.974' 
    capture_lex $P5053 
    .lex "$callee", $P101 
    .lex "@args", $P102 
    .lex "$ops", $P103 
    .lex "@pos_arg_results", $P104 
    .lex "@named_arg_results", $P105 
    .lex "$res_type", $P106 
    .lex "$res_reg", $P107 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
.annotate 'line', 1164
    $P5009 = _lex_param_1."list"()
    clone $P5008, $P5009
    set $P102, $P5008
.annotate 'line', 1165
    $P5010 = _lex_param_1."name"()
    unless $P5010 goto if192_else679 
.annotate 'line', 1166
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "PIRT"
    get_who $P5012, $P5013
    set $P5011, $P5012["Ops"]
    unless_null $P5011, fallback681
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5015
  fallback681:
    $P5016 = _lex_param_1."name"()
    $P5017 = _lex_param_0."escape"($P5016)
    $P5018 = $P5011."new"($P5017 :named("result"))
    set $P101, $P5018
    set $P5023, $P101
    goto if192_end680
  if192_else679:
    set $N5001, $P102
    unless $N5001 goto if193_else682 
.annotate 'line', 1168
.annotate 'line', 1169
    $P5019 = $P102."shift"()
    $P5020 = _lex_param_0."as_post"($P5019)
    set $P101, $P5020
    set $P5022, $P101
    goto if193_end683
  if193_else682:
.annotate 'line', 1171
    box $P5021, "No name for call and empty children list"
    die $P5021
    set $P5022, $P5021
  if193_end683:
    set $P5023, $P5022
  if192_end680:
.annotate 'line', 1176
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "PIRT"
    get_who $P5025, $P5026
    set $P5024, $P5025["Ops"]
    unless_null $P5024, fallback684
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5028
  fallback684:
    $P5029 = $P5024."new"()
    set $P103, $P5029
.annotate 'line', 1177
    $P5030 = _lex_param_1."node"()
    set $P5033, $P5030
    unless $P5030 goto if194_end686 
    $P5031 = _lex_param_1."node"()
    $P5032 = $P103."node"($P5031)
    set $P5033, $P5032
  if194_end686:
    set $P5034, $P102
    iter $P5036, $P102
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, for_handlers687
    push_eh $P5038
  for_next688:
    unless $P5036, for_done690
    shift $P5039, $P5036
  for_redo689:
    .const 'Sub' $P5037 = 'cuid_214_1346277600.974' 
    capture_lex $P5037
    $P5034 = $P5037($P5039)
    goto for_next688
  for_handlers687:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, for_next688
    eq $P5038, .CONTROL_LOOP_REDO, for_redo689
  for_done690:
    pop_eh 
.annotate 'line', 1185
    $P5040 = _lex_param_1."returns"()
    $P5041 = _lex_param_0."type_to_register_type"($P5040)
    set $P106, $P5041
.annotate 'line', 1186
    find_dynamic_lex $P5042, "$*REGALLOC"
    unless_null $P5042, fallback691
    get_hll_global $P5045, "GLOBAL"
    get_who $P5044, $P5045
    set $P5043, $P5044["$REGALLOC"]
    unless_null $P5043, fallback692
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5043, $P5046
  fallback692:
    unless_null $P5043, vivi_195693
    die "Contextual $*REGALLOC not found"
    box $P5047, "Contextual $*REGALLOC not found"
    set $P5043, $P5047
  vivi_195693:
    set $P5042, $P5043
  fallback691:
    set $S5003, $P106
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5048 = $P5042.$S5001()
    set $P107, $P5048
.annotate 'line', 1189
    $P5049 = $P103."push"($P101)
.annotate 'line', 1190
    $P5050 = $P101."result"()
    $P5051 = $P103."push_pirop"("call", $P5050, $P104 :flat, $P105 :flat, $P107 :named("result"))
.annotate 'line', 1193
    $P5052 = $P103."result"($P107)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1346277600.974") :anon :lex :outer("cuid_215_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1180
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1181
    find_lex $P5001, "$qastcomp"
    find_lex $P5002, "$ops"
    find_lex $P5003, "@pos_arg_results"
    find_lex $P5004, "@named_arg_results"
    $P5005 = "&handle_arg"(_lex_param_0, $P5001, $P5002, $P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5058 = 'cuid_216_1346277600.974' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_218_1346277600.974' 
    capture_lex $P5058 
    .lex "@args", $P101 
    .lex "$name", $P102 
    .lex "$ops", $P103 
    .lex "@pos_arg_results", $P104 
    .lex "@named_arg_results", $P105 
    .lex "$inv", $P106 
    .lex "$res_type", $P107 
    .lex "$res_reg", $P108 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
.annotate 'line', 1198
    $P5010 = _lex_param_1."list"()
    clone $P5009, $P5010
    set $P101, $P5009
    set $N5001, $P101
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto if196_end696 
.annotate 'line', 1199
    box $P5011, "Method call node requires at least one child"
    die $P5011
    set $P5012, $P5011
  if196_end696:
.annotate 'line', 1205
    $P5014 = _lex_param_1."name"()
    unless $P5014 goto if197_else697 
.annotate 'line', 1206
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "PIRT"
    get_who $P5016, $P5017
    set $P5015, $P5016["Ops"]
    unless_null $P5015, fallback699
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback699:
    $P5020 = _lex_param_1."name"()
    $P5021 = _lex_param_0."escape"($P5020)
    $P5022 = $P5015."new"($P5021 :named("result"))
    set $P102, $P5022
    set $P5027, $P102
    goto if197_end698
  if197_else697:
    set $N5003, $P101
    set $N5004, 2
    isge $I5002, $N5003, $N5004
    unless $I5002 goto if198_else700 
    .const 'Sub' $P5023 = 'cuid_216_1346277600.974' 
    capture_lex $P5023
    $P5024 = $P5023()
    set $P5026, $P5024
    goto if198_end701
  if198_else700:
.annotate 'line', 1213
    box $P5025, "Method call must either supply a name or have a child node that evaluates to the name"
    die $P5025
    set $P5026, $P5025
  if198_end701:
    set $P5027, $P5026
  if197_end698:
.annotate 'line', 1218
    get_hll_global $P5031, "GLOBAL"
    nqp_get_package_through_who $P5030, $P5031, "PIRT"
    get_who $P5029, $P5030
    set $P5028, $P5029["Ops"]
    unless_null $P5028, fallback702
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5032
  fallback702:
    $P5033 = $P5028."new"()
    set $P103, $P5033
.annotate 'line', 1219
    $P5034 = _lex_param_1."node"()
    set $P5037, $P5034
    unless $P5034 goto if199_end704 
    $P5035 = _lex_param_1."node"()
    $P5036 = $P103."node"($P5035)
    set $P5037, $P5036
  if199_end704:
    box $P5038, 1
    set $P106, $P5038
    set $P5039, $P101
    iter $P5041, $P101
    new $P5043, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5043, for_handlers707
    push_eh $P5043
  for_next708:
    unless $P5041, for_done710
    shift $P5044, $P5041
  for_redo709:
    .const 'Sub' $P5042 = 'cuid_218_1346277600.974' 
    capture_lex $P5042
    $P5039 = $P5042($P5044)
    goto for_next708
  for_handlers707:
    .get_results ($P5043)
    pop_upto_eh $P5043
    getattribute $P5043, $P5043, 'type'
    eq $P5043, .CONTROL_LOOP_NEXT, for_next708
    eq $P5043, .CONTROL_LOOP_REDO, for_redo709
  for_done710:
    pop_eh 
.annotate 'line', 1234
    $P5045 = _lex_param_1."returns"()
    $P5046 = _lex_param_0."type_to_register_type"($P5045)
    set $P107, $P5046
.annotate 'line', 1235
    find_dynamic_lex $P5047, "$*REGALLOC"
    unless_null $P5047, fallback711
    get_hll_global $P5050, "GLOBAL"
    get_who $P5049, $P5050
    set $P5048, $P5049["$REGALLOC"]
    unless_null $P5048, fallback712
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5048, $P5051
  fallback712:
    unless_null $P5048, vivi_201713
    die "Contextual $*REGALLOC not found"
    box $P5052, "Contextual $*REGALLOC not found"
    set $P5048, $P5052
  vivi_201713:
    set $P5047, $P5048
  fallback711:
    set $S5003, $P107
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5053 = $P5047.$S5001()
    set $P108, $P5053
.annotate 'line', 1238
    $P5054 = $P103."push"($P102)
.annotate 'line', 1239
    $P5055 = $P102."result"()
    $P5056 = $P103."push_pirop"("callmethod", $P5055, $P104 :flat, $P105 :flat, $P108 :named("result"))
.annotate 'line', 1242
    $P5057 = $P103."result"($P108)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1346277600.974") :anon :lex :outer("cuid_217_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1208
    .lex "$invocant", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1209
    find_lex $P5002, "@args"
    $P5003 = $P5002."shift"()
    set $P101, $P5003
.annotate 'line', 1210
    find_lex $P5004, "$qastcomp"
    find_lex $P5005, "$qastcomp"
    find_lex $P5006, "@args"
    $P5007 = $P5006."shift"()
    $P5008 = $P5005."as_post"($P5007)
    $P5009 = $P5004."coerce"($P5008, "s")
    store_lex "$name", $P5009
.annotate 'line', 1211
    find_lex $P5010, "@args"
    $P5011 = $P5010."unshift"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1346277600.974") :anon :lex :outer("cuid_217_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1223
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$inv"
    unless $P5001 goto if200_else705 
.annotate 'line', 1224
.annotate 'line', 1225
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$ops"
    find_lex $P5004, "@pos_arg_results"
    find_lex $P5005, "@named_arg_results"
    $P5006 = "&handle_arg"(_lex_param_0, $P5002, $P5003, $P5004, $P5005, "P" :named("coerce"))
    box $P5007, 0
    store_lex "$inv", $P5007
    set $P5013, $P5007
    goto if200_end706
  if200_else705:
.annotate 'line', 1228
.annotate 'line', 1229
    find_lex $P5008, "$qastcomp"
    find_lex $P5009, "$ops"
    find_lex $P5010, "@pos_arg_results"
    find_lex $P5011, "@named_arg_results"
    $P5012 = "&handle_arg"(_lex_param_0, $P5008, $P5009, $P5010, $P5011)
    set $P5013, $P5012
  if200_end706:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$label1", $P101 
    .lex "$label2", $P102 
    .lex "$lexname", $P103 
    .lex "$ops", $P104 
    .lex "$handler", $P105 
    .lex "$cpost", $P106 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
.annotate 'line', 1247
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "PIRT"
    get_who $P5008, $P5009
    set $P5007, $P5008["Label"]
    unless_null $P5007, fallback715
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback715:
    $P5012 = $P5007."new"("lexotic_" :named("name"))
    set $P101, $P5012
.annotate 'line', 1248
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "PIRT"
    get_who $P5014, $P5015
    set $P5013, $P5014["Label"]
    unless_null $P5013, fallback716
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5017
  fallback716:
    $P5018 = $P5013."new"("lexotic_" :named("name"))
    set $P102, $P5018
.annotate 'line', 1249
    $P5019 = _lex_param_1."name"()
    $P5020 = _lex_param_0."escape"($P5019)
    set $P103, $P5020
.annotate 'line', 1251
    get_hll_global $P5024, "GLOBAL"
    nqp_get_package_through_who $P5023, $P5024, "PIRT"
    get_who $P5022, $P5023
    set $P5021, $P5022["Ops"]
    unless_null $P5021, fallback717
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5025
  fallback717:
    $P5026 = $P5021."new"()
    set $P104, $P5026
.annotate 'line', 1252
    find_dynamic_lex $P5027, "$*BLOCK"
    unless_null $P5027, fallback718
    get_hll_global $P5030, "GLOBAL"
    get_who $P5029, $P5030
    set $P5028, $P5029["$BLOCK"]
    unless_null $P5028, fallback719
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5031
  fallback719:
    unless_null $P5028, vivi_202720
    die "Contextual $*BLOCK not found"
    box $P5032, "Contextual $*BLOCK not found"
    set $P5028, $P5032
  vivi_202720:
    set $P5027, $P5028
  fallback718:
    $P5033 = $P5027."fresh_lex_p"()
    set $P105, $P5033
.annotate 'line', 1253
    $P5034 = $P104."push_pirop"("root_new", $P105, "['parrot';'Continuation']")
.annotate 'line', 1254
    $P5035 = $P104."push_pirop"("set_label", $P105, $P101)
.annotate 'line', 1255
    $P5036 = $P104."push_pirop"(".lex", $P103, $P105)
.annotate 'line', 1257
    $P5037 = _lex_param_1."list"()
    $P5038 = _lex_param_0."compile_all_the_stmts"($P5037)
    $P5039 = _lex_param_0."coerce"($P5038, "P")
    set $P106, $P5039
.annotate 'line', 1258
    $P5040 = $P104."push"($P106)
.annotate 'line', 1259
    $P5041 = $P104."result"($P106)
.annotate 'line', 1261
    $P5042 = $P104."push_pirop"("goto", $P102)
.annotate 'line', 1262
    $P5043 = $P104."push"($P101)
.annotate 'line', 1263
    $P5044 = $P104."result"()
    set $S5003, $P5044
    concat $S5002, "(", $S5003
    concat $S5001, $S5002, ")"
    $P5045 = $P104."push_pirop"(".get_results", $S5001)
.annotate 'line', 1264
    $P5046 = $P104."push"($P102)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1270
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1271
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback722
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback723
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback723:
    unless_null $P5004, vivi_203724
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_203724:
    set $P5003, $P5004
  fallback722:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 1272
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback725
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback725:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1273
    $P5016 = $P102."push_pirop"("getinterp", $P101)
.annotate 'line', 1274
    set $S5002, $P101
    concat $S5001, $S5002, "['lexpad']"
    $P5017 = $P102."push_pirop"("set", $P101, $S5001)
.annotate 'line', 1275
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1278
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1279
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback727
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback728
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback728:
    unless_null $P5004, vivi_204729
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_204729:
    set $P5003, $P5004
  fallback727:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 1280
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback730
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback730:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1281
    $P5016 = $P102."push_pirop"("getinterp", $P101)
.annotate 'line', 1282
    set $S5002, $P101
    concat $S5001, $S5002, "['sub']"
    $P5017 = $P102."push_pirop"("set", $P101, $S5001)
.annotate 'line', 1283
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1300
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5113 = 'cuid_222_1346277600.974' 
    capture_lex $P5113 
    .const 'Sub' $P5113 = 'cuid_225_1346277600.974' 
    capture_lex $P5113 
    .const 'Sub' $P5113 = 'cuid_227_1346277600.974' 
    capture_lex $P5113 
    .lex "@children", $P101 
    .lex "$protected", $P102 
    .lex "$procpost", $P103 
    .lex "%handlers", $P104 
    .lex "$catch", $P105 
    .lex "$control", $P106 
    .lex "@other", $P107 
    .lex "$catch_label", $P108 
    .lex "$control_label", $P109 
    .lex "$other_label", $P110 
    .lex "$num_pops", $P111 
    .lex "$skip_handler_label", $P112 
    .lex "$ops", $P113 
    .lex "$reg", $P114 
    .lex "$res_type", $P115 
    .lex "$res_reg", $P116 
    .lex "$orig_alloc", $P117 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    new $P5004, 'Hash'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P112, $P5012
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P113, $P5013
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P114, $P5014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P115, $P5015
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P116, $P5016
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P117, $P5017
.annotate 'line', 1301
    $P5019 = _lex_param_1."list"()
    clone $P5018, $P5019
    set $P101, $P5018
    set $N5001, $P101
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    box $P5022, $I5001
    set $P5021, $P5022
    unless $I5001 goto if205_end733 
.annotate 'line', 1302
    box $P5020, "The 'handle' op requires at least one child"
    die $P5020
    set $P5021, $P5020
  if205_end733:
.annotate 'line', 1308
    $P5023 = $P101."shift"()
    set $P102, $P5023
.annotate 'line', 1309
    $P5024 = _lex_param_0."as_post"($P102)
    $P5025 = _lex_param_0."coerce"($P5024, "P")
    set $P103, $P5025
    set $P5028, $P101
    if $P101 goto unless206_end735 
.annotate 'line', 1310
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($P103)
    set $P5028, $P5027
  unless206_end735:
    set $P5029, $P101
    iter $P5031, $P101
    new $P5033, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5033, for_handlers744
    push_eh $P5033
  for_next745:
    unless $P5031, for_done747
    shift $P5034, $P5031
    shift $P5035, $P5031
  for_redo746:
    .const 'Sub' $P5032 = 'cuid_222_1346277600.974' 
    capture_lex $P5032
    $P5029 = $P5032($P5034, $P5035)
    goto for_next745
  for_handlers744:
    .get_results ($P5033)
    pop_upto_eh $P5033
    getattribute $P5033, $P5033, 'type'
    eq $P5033, .CONTROL_LOOP_NEXT, for_next745
    eq $P5033, .CONTROL_LOOP_REDO, for_redo746
  for_done747:
    pop_eh 
    box $P5036, 0
    set $P111, $P5036
.annotate 'line', 1345
    get_hll_global $P5040, "GLOBAL"
    nqp_get_package_through_who $P5039, $P5040, "PIRT"
    get_who $P5038, $P5039
    set $P5037, $P5038["Label"]
    unless_null $P5037, fallback748
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5037, $P5041
  fallback748:
    $P5042 = _lex_param_0."unique"("skip_handler_")
    $P5043 = $P5037."new"($P5042 :named("name"))
    set $P112, $P5043
.annotate 'line', 1346
    get_hll_global $P5047, "GLOBAL"
    nqp_get_package_through_who $P5046, $P5047, "PIRT"
    get_who $P5045, $P5046
    set $P5044, $P5045["Ops"]
    unless_null $P5044, fallback749
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5044, $P5048
  fallback749:
    $P5049 = $P5044."new"()
    set $P113, $P5049
.annotate 'line', 1347
    find_dynamic_lex $P5050, "$*REGALLOC"
    unless_null $P5050, fallback750
    get_hll_global $P5053, "GLOBAL"
    get_who $P5052, $P5053
    set $P5051, $P5052["$REGALLOC"]
    unless_null $P5051, fallback751
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5051, $P5054
  fallback751:
    unless_null $P5051, vivi_211752
    die "Contextual $*REGALLOC not found"
    box $P5055, "Contextual $*REGALLOC not found"
    set $P5051, $P5055
  vivi_211752:
    set $P5050, $P5051
  fallback750:
    $P5056 = $P5050."fresh_p"()
    set $P114, $P5056
    set $P5069, $P105
    unless $P105 goto if212_end754 
.annotate 'line', 1348
.annotate 'line', 1349
    get_hll_global $P5060, "GLOBAL"
    nqp_get_package_through_who $P5059, $P5060, "PIRT"
    get_who $P5058, $P5059
    set $P5057, $P5058["Label"]
    unless_null $P5057, fallback755
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5057, $P5061
  fallback755:
    $P5062 = _lex_param_0."unique"("catch_handler_")
    $P5063 = $P5057."new"($P5062 :named("name"))
    set $P108, $P5063
.annotate 'line', 1350
    $P5064 = $P113."push_pirop"("new", $P114, "'ExceptionHandler'")
.annotate 'line', 1351
    $P5065 = $P113."push_pirop"("set_label", $P114, $P108)
.annotate 'line', 1352
    $P5066 = $P113."push_pirop"("callmethod", "'handle_types_except'", $P114, ".CONTROL_ALL")
.annotate 'line', 1353
    $P5067 = $P113."push_pirop"("push_eh", $P114)
    set $N5004, $P111
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5068, $N5003
    set $P111, $P5068
    set $P5069, $P111
  if212_end754:
    set $P5081, $P106
    unless $P106 goto if213_end757 
.annotate 'line', 1356
.annotate 'line', 1357
    get_hll_global $P5073, "GLOBAL"
    nqp_get_package_through_who $P5072, $P5073, "PIRT"
    get_who $P5071, $P5072
    set $P5070, $P5071["Label"]
    unless_null $P5070, fallback758
    nqp_get_sc_object $P5074, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5070, $P5074
  fallback758:
    $P5075 = _lex_param_0."unique"("catch_handler_")
    $P5076 = $P5070."new"($P5075 :named("name"))
    set $P109, $P5076
.annotate 'line', 1358
    $P5077 = $P113."push_pirop"("new", $P114, "'ExceptionHandler'", "[.CONTROL_ALL]")
.annotate 'line', 1359
    $P5078 = $P113."push_pirop"("set_label", $P114, $P109)
.annotate 'line', 1360
    $P5079 = $P113."push_pirop"("push_eh", $P114)
    set $N5007, $P111
    set $N5008, 1
    add $N5006, $N5007, $N5008
    box $P5080, $N5006
    set $P111, $P5080
    set $P5081, $P111
  if213_end757:
    set $P5084, $P107
    unless $P107 goto if214_end760 
    .const 'Sub' $P5082 = 'cuid_225_1346277600.974' 
    capture_lex $P5082
    $P5083 = $P5082()
    set $P5084, $P5083
  if214_end760:
.annotate 'line', 1375
    $P5085 = $P103."result"()
    $P5086 = _lex_param_0."infer_type"($P5085)
    set $S5002, $P5086
    downcase $S5001, $S5002
    box $P5087, $S5001
    set $P115, $P5087
.annotate 'line', 1376
    find_dynamic_lex $P5088, "$*REGALLOC"
    unless_null $P5088, fallback767
    get_hll_global $P5091, "GLOBAL"
    get_who $P5090, $P5091
    set $P5089, $P5090["$REGALLOC"]
    unless_null $P5089, fallback768
    nqp_get_sc_object $P5092, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5089, $P5092
  fallback768:
    unless_null $P5089, vivi_215769
    die "Contextual $*REGALLOC not found"
    box $P5093, "Contextual $*REGALLOC not found"
    set $P5089, $P5093
  vivi_215769:
    set $P5088, $P5089
  fallback767:
    set $S5004, $P115
    concat $S5003, "fresh_", $S5004
    $P5094 = $P5088.$S5003()
    set $P116, $P5094
.annotate 'line', 1377
    $P5095 = $P113."push"($P103)
.annotate 'line', 1378
    $P5096 = $P103."result"()
    $P5097 = $P113."push_pirop"("set", $P116, $P5096)
    new $P5101, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5101, while216_handlers773
    push_eh $P5101
  while216_test770:
    set $P5100, $P111
    unless $P111 goto while216_done774 
  while216_redo772:
.annotate 'line', 1379
.annotate 'line', 1380
    $P5098 = $P113."push_pirop"("pop_eh")
    set $N5010, $P111
    set $N5011, 1
    sub $N5009, $N5010, $N5011
    box $P5099, $N5009
    set $P111, $P5099
    set $P5100, $P111
    goto while216_test770 
  while216_handlers773:
    .get_results ($P5101)
    pop_upto_eh $P5101
    getattribute $P5101, $P5101, 'type'
    eq $P5101, .CONTROL_LOOP_NEXT, while216_test770
    eq $P5101, .CONTROL_LOOP_REDO, while216_redo772
  while216_done774:
    pop_eh 
.annotate 'line', 1383
    $P5102 = $P113."push_pirop"("goto", $P112)
    find_dynamic_lex $P5103, "$*REGALLOC"
    unless_null $P5103, fallback775
    get_hll_global $P5106, "GLOBAL"
    get_who $P5105, $P5106
    set $P5104, $P5105["$REGALLOC"]
    unless_null $P5104, fallback776
    nqp_get_sc_object $P5107, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5104, $P5107
  fallback776:
    unless_null $P5104, vivi_217777
    die "Contextual $*REGALLOC not found"
    box $P5108, "Contextual $*REGALLOC not found"
    set $P5104, $P5108
  vivi_217777:
    set $P5103, $P5104
  fallback775:
    set $P117, $P5103
    .const 'Sub' $P5109 = 'cuid_227_1346277600.974' 
    capture_lex $P5109
    $P5110 = $P5109()
.annotate 'line', 1436
    $P5111 = $P113."push"($P112)
.annotate 'line', 1437
    $P5112 = $P113."result"($P116)
    .return ($P113) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1346277600.974") :anon :lex :outer("cuid_223_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1319
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$name", _lex_param_0 
    .lex "$handler_code", _lex_param_1 
    find_lex $P5001, "%handler_names"
    set $S5001, _lex_param_0
    exists $I5001, $P5001[$S5001]
    unless $I5001 goto if207_else736 
.annotate 'line', 1320
    find_lex $P5002, "%handlers"
    set $S5002, _lex_param_0
    exists $I5002, $P5002[$S5002]
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto if208_end739 
.annotate 'line', 1321
    set $S5004, _lex_param_0
    concat $S5003, "Multiple handlers for ", $S5004
    box $P5003, $S5003
    die $P5003
    set $P5004, $P5003
  if208_end739:
    find_lex $P5006, "%handlers"
    set $S5005, _lex_param_0
    set $P5006[$S5005], _lex_param_1
    set $S5006, _lex_param_0
    iseq $I5003, $S5006, "CATCH"
    unless $I5003 goto if209_else740 
.annotate 'line', 1325
    box $P5007, 1
    store_lex "$catch", $P5007
    set $P5011, $P5007
    goto if209_end741
  if209_else740:
    set $S5007, _lex_param_0
    iseq $I5004, $S5007, "CONTROL"
    unless $I5004 goto if210_else742 
.annotate 'line', 1328
    box $P5008, 1
    store_lex "$control", $P5008
    set $P5010, $P5008
    goto if210_end743
  if210_else742:
.annotate 'line', 1331
    find_lex $P5009, "@other"
    push $P5009, _lex_param_0
    set $P5010, $P5009
  if210_end743:
    set $P5011, $P5010
  if209_end741:
    set $P5013, $P5011
    goto if207_end737
  if207_else736:
.annotate 'line', 1335
    set $S5010, _lex_param_0
    concat $S5009, "Invalid handler type '", $S5010
    concat $S5008, $S5009, "'"
    box $P5012, $S5008
    die $P5012
    set $P5013, $P5012
  if207_end737:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1346277600.974") :anon :lex :outer("cuid_223_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1363
    .const 'Sub' $P5029 = 'cuid_224_1346277600.974' 
    capture_lex $P5029 
    .lex "@hnames", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@other"
    set $P5002, $P5005
    iter $P5004, $P5005
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, for_handlers762
    push_eh $P5007
  for_next763:
    unless $P5004, for_done765
    shift $P5008, $P5004
  for_redo764:
    .const 'Sub' $P5006 = 'cuid_224_1346277600.974' 
    capture_lex $P5006
    $P5002 = $P5006($P5008)
    goto for_next763
  for_handlers762:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, for_next763
    eq $P5007, .CONTROL_LOOP_REDO, for_redo764
  for_done765:
    pop_eh 
.annotate 'line', 1366
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "PIRT"
    get_who $P5010, $P5011
    set $P5009, $P5010["Label"]
    unless_null $P5009, fallback766
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback766:
    find_lex $P5014, "$qastcomp"
    $P5015 = $P5014."unique"("catch_handler_")
    $P5016 = $P5009."new"($P5015 :named("name"))
    store_lex "$other_label", $P5016
.annotate 'line', 1367
    find_lex $P5017, "$ops"
    find_lex $P5018, "$reg"
    join $S5003, ", ", $P101
    concat $S5002, "[", $S5003
    concat $S5001, $S5002, "]"
    $P5019 = $P5017."push_pirop"("new", $P5018, "'ExceptionHandler'", $S5001)
.annotate 'line', 1369
    find_lex $P5020, "$ops"
    find_lex $P5021, "$reg"
    find_lex $P5022, "$other_label"
    $P5023 = $P5020."push_pirop"("set_label", $P5021, $P5022)
.annotate 'line', 1370
    find_lex $P5024, "$ops"
    find_lex $P5025, "$reg"
    $P5026 = $P5024."push_pirop"("push_eh", $P5025)
    find_lex $P5027, "$num_pops"
    set $N5002, $P5027
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5028, $N5001
    store_lex "$num_pops", $P5028
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1346277600.974") :anon :lex :outer("cuid_225_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1365
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@hnames"
    find_lex $P5003, "%handler_names"
    set $S5001, _lex_param_0
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback761
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback761:
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1346277600.974") :anon :lex :outer("cuid_223_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1387
    .const 'Sub' $P5025 = 'cuid_226_1346277600.974' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_229_1346277600.974' 
    capture_lex $P5025 
    .lex "$*CUR_EXCEPTION", $P101 
    .lex "$*REGALLOC", $P102 
    .lex "&simple_handler", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_226_1346277600.974' 
    capture_lex $P5003
    set $P103, $P5003
    find_lex $P5004, "$reg"
    set $P101, $P5004
.annotate 'line', 1389
    find_lex $P5005, "$orig_alloc"
    $P5006 = $P5005."handler_allocator"()
    set $P102, $P5006
    find_lex $P5007, "$catch"
    set $P5013, $P5007
    unless $P5007 goto if218_end779 
.annotate 'line', 1401
.annotate 'line', 1402
    find_lex $P5008, "$catch_label"
    find_lex $P5010, "%handlers"
    set $P5009, $P5010["CATCH"]
    unless_null $P5009, fallback780
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5011
  fallback780:
    $P5012 = "&simple_handler"($P5008, $P5009)
    set $P5013, $P5012
  if218_end779:
    find_lex $P5014, "$control"
    set $P5020, $P5014
    unless $P5014 goto if219_end782 
.annotate 'line', 1404
.annotate 'line', 1405
    find_lex $P5015, "$control_label"
    find_lex $P5017, "%handlers"
    set $P5016, $P5017["CONTROL"]
    unless_null $P5016, fallback783
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5018
  fallback783:
    $P5019 = "&simple_handler"($P5015, $P5016)
    set $P5020, $P5019
  if219_end782:
    find_lex $P5021, "@other"
    set $P5024, $P5021
    unless $P5021 goto if220_end785 
    .const 'Sub' $P5022 = 'cuid_229_1346277600.974' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if220_end785:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "simple_handler" :subid("cuid_226_1346277600.974") :anon :lex :outer("cuid_227_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1390
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handler_post", $P101 
    .lex "$label", _lex_param_0 
    .lex "$handler_qast", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1391
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    $P5004 = $P5003."as_post"(_lex_param_1)
    $P5005 = $P5002."coerce"($P5004, "P")
    set $P101, $P5005
.annotate 'line', 1392
    find_lex $P5006, "$ops"
    $P5007 = $P5006."push"(_lex_param_0)
.annotate 'line', 1393
    find_lex $P5008, "$ops"
    find_lex $P5009, "$reg"
    set $S5003, $P5009
    concat $S5002, ".get_results (", $S5003
    concat $S5001, $S5002, ")"
    $P5010 = $P5008."push_pirop"($S5001)
.annotate 'line', 1394
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push"($P101)
.annotate 'line', 1395
    find_lex $P5013, "$ops"
    find_lex $P5014, "$reg"
    $P5015 = $P5013."push_pirop"("finalize", $P5014)
.annotate 'line', 1396
    find_lex $P5016, "$ops"
    find_lex $P5017, "$reg"
    $P5018 = $P5016."push_pirop"("pop_upto_eh", $P5017)
.annotate 'line', 1397
    find_lex $P5019, "$ops"
    $P5020 = $P5019."push_pirop"("pop_eh")
.annotate 'line', 1398
    find_lex $P5021, "$ops"
    find_lex $P5022, "$res_reg"
    $P5023 = $P101."result"()
    $P5024 = $P5021."push_pirop"("set", $P5022, $P5023)
.annotate 'line', 1399
    find_lex $P5025, "$ops"
    find_lex $P5026, "$skip_handler_label"
    $P5027 = $P5025."push_pirop"("goto", $P5026)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1346277600.974") :anon :lex :outer("cuid_227_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1407
    .const 'Sub' $P5033 = 'cuid_228_1346277600.974' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_230_1346277600.974' 
    capture_lex $P5033 
    .lex "$type_reg", $P101 
    .lex "%type_labels", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
.annotate 'line', 1408
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback786
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback787
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback787:
    unless_null $P5004, vivi_221788
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_221788:
    set $P5003, $P5004
  fallback786:
    $P5009 = $P5003."fresh_i"()
    set $P101, $P5009
.annotate 'line', 1409
    find_lex $P5010, "$ops"
    find_lex $P5011, "$other_label"
    $P5012 = $P5010."push"($P5011)
.annotate 'line', 1410
    find_lex $P5013, "$ops"
    find_lex $P5014, "$reg"
    set $S5003, $P5014
    concat $S5002, ".get_results (", $S5003
    concat $S5001, $S5002, ")"
    $P5015 = $P5013."push_pirop"($S5001)
.annotate 'line', 1414
    find_lex $P5016, "$ops"
    find_lex $P5017, "$reg"
    set $S5005, $P5017
    concat $S5004, $S5005, "[\"type\"]"
    $P5018 = $P5016."push_pirop"("set", $P101, $S5004)
    find_lex $P5022, "@other"
    set $P5019, $P5022
    iter $P5021, $P5022
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, for_handlers791
    push_eh $P5024
  for_next792:
    unless $P5021, for_done794
    shift $P5025, $P5021
  for_redo793:
    .const 'Sub' $P5023 = 'cuid_228_1346277600.974' 
    capture_lex $P5023
    $P5019 = $P5023($P5025)
    goto for_next792
  for_handlers791:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, for_next792
    eq $P5024, .CONTROL_LOOP_REDO, for_redo793
  for_done794:
    pop_eh 
    find_lex $P5029, "@other"
    set $P5026, $P5029
    iter $P5028, $P5029
    new $P5031, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5031, for_handlers797
    push_eh $P5031
  for_next798:
    unless $P5028, for_done800
    shift $P5032, $P5028
  for_redo799:
    .const 'Sub' $P5030 = 'cuid_230_1346277600.974' 
    capture_lex $P5030
    $P5026 = $P5030($P5032)
    goto for_next798
  for_handlers797:
    .get_results ($P5031)
    pop_upto_eh $P5031
    getattribute $P5031, $P5031, 'type'
    eq $P5031, .CONTROL_LOOP_NEXT, for_next798
    eq $P5031, .CONTROL_LOOP_REDO, for_redo799
  for_done800:
    pop_eh 
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1346277600.974") :anon :lex :outer("cuid_229_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1415
    .param pmc _lex_param_0 
    .lex "$lbl", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1416
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Label"]
    unless_null $P5002, fallback789
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback789:
    find_lex $P5007, "$qastcomp"
    $P5008 = $P5007."unique"("handle_type_")
    $P5009 = $P5002."new"($P5008 :named("name"))
    set $P101, $P5009
.annotate 'line', 1417
    find_lex $P5010, "$ops"
    find_lex $P5011, "$type_reg"
    find_lex $P5013, "%handler_names"
    set $S5001, _lex_param_0
    set $P5012, $P5013[$S5001]
    unless_null $P5012, fallback790
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5014
  fallback790:
    $P5015 = $P5010."push_pirop"("eq", $P5011, $P5012, $P101)
    find_lex $P5016, "%type_labels"
    set $S5002, _lex_param_0
    set $P5016[$S5002], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1346277600.974") :anon :lex :outer("cuid_229_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1422
    .param pmc _lex_param_0 
    .lex "$handler_post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1423
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    find_lex $P5005, "%handlers"
    set $S5001, _lex_param_0
    set $P5004, $P5005[$S5001]
    unless_null $P5004, fallback795
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5006
  fallback795:
    $P5007 = $P5003."as_post"($P5004)
    $P5008 = $P5002."coerce"($P5007, "P")
    set $P101, $P5008
.annotate 'line', 1424
    find_lex $P5009, "$ops"
    find_lex $P5011, "%type_labels"
    set $S5002, _lex_param_0
    set $P5010, $P5011[$S5002]
    unless_null $P5010, fallback796
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5012
  fallback796:
    $P5013 = $P5009."push"($P5010)
.annotate 'line', 1425
    find_lex $P5014, "$ops"
    $P5015 = $P5014."push"($P101)
.annotate 'line', 1426
    find_lex $P5016, "$ops"
    find_lex $P5017, "$reg"
    $P5018 = $P5016."push_pirop"("finalize", $P5017)
.annotate 'line', 1427
    find_lex $P5019, "$ops"
    find_lex $P5020, "$reg"
    $P5021 = $P5019."push_pirop"("pop_upto_eh", $P5020)
.annotate 'line', 1428
    find_lex $P5022, "$ops"
    $P5023 = $P5022."push_pirop"("pop_eh")
.annotate 'line', 1429
    find_lex $P5024, "$ops"
    find_lex $P5025, "$res_reg"
    $P5026 = $P101."result"()
    $P5027 = $P5024."push_pirop"("set", $P5025, $P5026)
.annotate 'line', 1430
    find_lex $P5028, "$ops"
    find_lex $P5029, "$skip_handler_label"
    $P5030 = $P5028."push_pirop"("goto", $P5029)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1441
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_224806
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
    find_dynamic_lex $P5003, "$*CUR_EXCEPTION"
    unless_null $P5003, fallback802
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$CUR_EXCEPTION"]
    unless_null $P5004, fallback803
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback803:
    unless_null $P5004, vivi_222804
    die "Contextual $*CUR_EXCEPTION not found"
    box $P5008, "Contextual $*CUR_EXCEPTION not found"
    set $P5004, $P5008
  vivi_222804:
    set $P5003, $P5004
  fallback802:
    set $P5010, $P5003
    pop_eh 
    goto skip_handler_223805
  catch_handler_224806:
    .get_results ($P5009) 
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10001
    goto skip_handler_223805
  skip_handler_223805:
    set $P101, $P5010
    set $P5012, $P101
    if $P101 goto unless225_end808 
.annotate 'line', 1443
    box $P5011, "Can only use 'exception' op in the context of an exception handler"
    die $P5011
    set $P5012, $P5011
  unless225_end808:
.annotate 'line', 1446
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "PIRT"
    get_who $P5014, $P5015
    set $P5013, $P5014["Ops"]
    unless_null $P5013, fallback809
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5017
  fallback809:
    $P5018 = $P5013."new"()
    set $P102, $P5018
.annotate 'line', 1447
    $P5019 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1450
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$reg", $P102 
    .lex "$ops", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 1451
    $P5004 = _lex_param_1."list"()
    set $N5001, $P5004
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    box $P5007, $I5001
    set $P5006, $P5007
    unless $I5001 goto if226_end812 
    box $P5005, "The 'getpayload' op expects one child"
    die $P5005
    set $P5006, $P5005
  if226_end812:
.annotate 'line', 1454
    set $P5008, _lex_param_1[0]
    unless_null $P5008, fallback813
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback813:
    $P5010 = _lex_param_0."as_post"($P5008)
    $P5011 = _lex_param_0."coerce"($P5010, "P")
    set $P101, $P5011
.annotate 'line', 1455
    find_dynamic_lex $P5012, "$*REGALLOC"
    unless_null $P5012, fallback814
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    set $P5013, $P5014["$REGALLOC"]
    unless_null $P5013, fallback815
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5016
  fallback815:
    unless_null $P5013, vivi_227816
    die "Contextual $*REGALLOC not found"
    box $P5017, "Contextual $*REGALLOC not found"
    set $P5013, $P5017
  vivi_227816:
    set $P5012, $P5013
  fallback814:
    $P5018 = $P5012."fresh_p"()
    set $P102, $P5018
.annotate 'line', 1456
    get_hll_global $P5022, "GLOBAL"
    nqp_get_package_through_who $P5021, $P5022, "PIRT"
    get_who $P5020, $P5021
    set $P5019, $P5020["Ops"]
    unless_null $P5019, fallback817
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5023
  fallback817:
    $P5024 = $P5019."new"()
    set $P103, $P5024
.annotate 'line', 1457
    $P5025 = $P103."push"($P101)
.annotate 'line', 1458
    $P5026 = $P101."result"()
    $P5027 = $P103."push_pirop"("getattribute", $P102, $P5026, "\"payload\"")
.annotate 'line', 1459
    $P5028 = $P103."result"($P102)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1462
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$payload", $P102 
    .lex "$ops", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 1463
    $P5004 = _lex_param_1."list"()
    set $N5001, $P5004
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5007, $I5001
    set $P5006, $P5007
    unless $I5001 goto if228_end820 
    box $P5005, "The 'setpayload' op expects two children"
    die $P5005
    set $P5006, $P5005
  if228_end820:
.annotate 'line', 1466
    set $P5008, _lex_param_1[0]
    unless_null $P5008, fallback821
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback821:
    $P5010 = _lex_param_0."as_post"($P5008)
    $P5011 = _lex_param_0."coerce"($P5010, "P")
    set $P101, $P5011
.annotate 'line', 1467
    set $P5012, _lex_param_1[1]
    unless_null $P5012, fallback822
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5013
  fallback822:
    $P5014 = _lex_param_0."as_post"($P5012)
    $P5015 = _lex_param_0."coerce"($P5014, "P")
    set $P102, $P5015
.annotate 'line', 1468
    get_hll_global $P5019, "GLOBAL"
    nqp_get_package_through_who $P5018, $P5019, "PIRT"
    get_who $P5017, $P5018
    set $P5016, $P5017["Ops"]
    unless_null $P5016, fallback823
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5020
  fallback823:
    $P5021 = $P5016."new"()
    set $P103, $P5021
.annotate 'line', 1469
    $P5022 = $P103."push_pirop"("setattribute", $P101, "\"payload\"", $P102)
.annotate 'line', 1470
    $P5023 = $P102."result"()
    $P5024 = $P103."result"($P5023)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1473
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$pmc", $P102 
    .lex "$reg", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
.annotate 'line', 1474
    $P5005 = _lex_param_1."list"()
    set $N5001, $P5005
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if229_end826 
    box $P5006, "The 'getmessage' op expects one child"
    die $P5006
    set $P5007, $P5006
  if229_end826:
.annotate 'line', 1477
    set $P5009, _lex_param_1[0]
    unless_null $P5009, fallback827
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5010
  fallback827:
    $P5011 = _lex_param_0."as_post"($P5009)
    $P5012 = _lex_param_0."coerce"($P5011, "P")
    set $P101, $P5012
.annotate 'line', 1478
    find_dynamic_lex $P5013, "$*REGALLOC"
    unless_null $P5013, fallback828
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["$REGALLOC"]
    unless_null $P5014, fallback829
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5017
  fallback829:
    unless_null $P5014, vivi_230830
    die "Contextual $*REGALLOC not found"
    box $P5018, "Contextual $*REGALLOC not found"
    set $P5014, $P5018
  vivi_230830:
    set $P5013, $P5014
  fallback828:
    $P5019 = $P5013."fresh_p"()
    set $P102, $P5019
.annotate 'line', 1479
    find_dynamic_lex $P5020, "$*REGALLOC"
    unless_null $P5020, fallback831
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["$REGALLOC"]
    unless_null $P5021, fallback832
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5024
  fallback832:
    unless_null $P5021, vivi_231833
    die "Contextual $*REGALLOC not found"
    box $P5025, "Contextual $*REGALLOC not found"
    set $P5021, $P5025
  vivi_231833:
    set $P5020, $P5021
  fallback831:
    $P5026 = $P5020."fresh_s"()
    set $P103, $P5026
.annotate 'line', 1480
    get_hll_global $P5030, "GLOBAL"
    nqp_get_package_through_who $P5029, $P5030, "PIRT"
    get_who $P5028, $P5029
    set $P5027, $P5028["Ops"]
    unless_null $P5027, fallback834
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5031
  fallback834:
    $P5032 = $P5027."new"()
    set $P104, $P5032
.annotate 'line', 1481
    $P5033 = $P104."push"($P101)
.annotate 'line', 1482
    $P5034 = $P101."result"()
    $P5035 = $P104."push_pirop"("getattribute", $P102, $P5034, "\"message\"")
.annotate 'line', 1483
    $P5036 = $P104."push_pirop"("set", $P103, $P102)
.annotate 'line', 1484
    $P5037 = $P104."result"($P103)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$message", $P102 
    .lex "$pmc", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
.annotate 'line', 1488
    $P5005 = _lex_param_1."list"()
    set $N5001, $P5005
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if232_end837 
    box $P5006, "The 'setmessage' op expects two children"
    die $P5006
    set $P5007, $P5006
  if232_end837:
.annotate 'line', 1491
    set $P5009, _lex_param_1[0]
    unless_null $P5009, fallback838
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5010
  fallback838:
    $P5011 = _lex_param_0."as_post"($P5009)
    $P5012 = _lex_param_0."coerce"($P5011, "P")
    set $P101, $P5012
.annotate 'line', 1492
    set $P5013, _lex_param_1[1]
    unless_null $P5013, fallback839
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5014
  fallback839:
    $P5015 = _lex_param_0."as_post"($P5013)
    $P5016 = _lex_param_0."coerce"($P5015, "S")
    set $P102, $P5016
.annotate 'line', 1493
    find_dynamic_lex $P5017, "$*REGALLOC"
    unless_null $P5017, fallback840
    get_hll_global $P5020, "GLOBAL"
    get_who $P5019, $P5020
    set $P5018, $P5019["$REGALLOC"]
    unless_null $P5018, fallback841
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5021
  fallback841:
    unless_null $P5018, vivi_233842
    die "Contextual $*REGALLOC not found"
    box $P5022, "Contextual $*REGALLOC not found"
    set $P5018, $P5022
  vivi_233842:
    set $P5017, $P5018
  fallback840:
    $P5023 = $P5017."fresh_p"()
    set $P103, $P5023
.annotate 'line', 1494
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "PIRT"
    get_who $P5025, $P5026
    set $P5024, $P5025["Ops"]
    unless_null $P5024, fallback843
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5028
  fallback843:
    $P5029 = $P5024."new"()
    set $P104, $P5029
.annotate 'line', 1495
    $P5030 = $P104."push"($P101)
.annotate 'line', 1496
    $P5031 = $P104."push"($P102)
.annotate 'line', 1497
    $P5032 = $P104."push_pirop"("box", $P103, $P102)
.annotate 'line', 1498
    $P5033 = $P104."push_pirop"("setattribute", $P101, "\"message\"", $P103)
.annotate 'line', 1499
    $P5034 = $P102."result"()
    $P5035 = $P104."result"($P5034)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1502
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1503
    $P5003 = _lex_param_1."list"()
    set $N5001, $P5003
    set $N5002, 0
    isne $I5001, $N5001, $N5002
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if234_end846 
    box $P5004, "The 'newexception' op expects no children"
    die $P5004
    set $P5005, $P5004
  if234_end846:
.annotate 'line', 1506
    find_dynamic_lex $P5007, "$*REGALLOC"
    unless_null $P5007, fallback847
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    set $P5008, $P5009["$REGALLOC"]
    unless_null $P5008, fallback848
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5011
  fallback848:
    unless_null $P5008, vivi_235849
    die "Contextual $*REGALLOC not found"
    box $P5012, "Contextual $*REGALLOC not found"
    set $P5008, $P5012
  vivi_235849:
    set $P5007, $P5008
  fallback847:
    $P5013 = $P5007."fresh_p"()
    set $P101, $P5013
.annotate 'line', 1507
    get_hll_global $P5017, "GLOBAL"
    nqp_get_package_through_who $P5016, $P5017, "PIRT"
    get_who $P5015, $P5016
    set $P5014, $P5015["Ops"]
    unless_null $P5014, fallback850
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5018
  fallback850:
    $P5019 = $P5014."new"()
    set $P102, $P5019
.annotate 'line', 1508
    $P5020 = $P102."push_pirop"("new", $P101, "[\"Exception\"]")
.annotate 'line', 1509
    $P5021 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1523
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_237_1346277600.974' 
    capture_lex $P5008 
    .lex "$name", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1524
    $P5002 = _lex_param_1."name"()
    set $P101, $P5002
    find_lex $P5003, "%control_map"
    set $S5001, $P101
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if236_else856 
    .const 'Sub' $P5004 = 'cuid_237_1346277600.974' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5007, $P5005
    goto if236_end857
  if236_else856:
.annotate 'line', 1530
    set $S5004, $P101
    concat $S5003, "Unknown control exception type '", $S5004
    concat $S5002, $S5003, "'"
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if236_end857:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1346277600.974") :anon :lex :outer("cuid_238_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1525
    .lex "$ops", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1526
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Ops"]
    unless_null $P5002, fallback858
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback858:
    $P5007 = $P5002."new"("0" :named("result"))
    set $P101, $P5007
.annotate 'line', 1527
    find_lex $P5009, "%control_map"
    find_lex $P5010, "$name"
    set $S5001, $P5010
    set $P5008, $P5009[$S5001]
    unless_null $P5008, fallback859
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5011
  fallback859:
    $P5012 = $P101."push_pirop"("die", "0", $P5008)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1536
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_239_1346277600.974' 
    capture_lex $P5009 
    .lex "$_", _lex_param_0 
.annotate 'line', 1537
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback860
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback860:
    .const 'Sub' $P5007 = 'cuid_239_1346277600.974' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."add_hll_box"("nqp", _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1346277600.974") :anon :lex :outer("cuid_240_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1537
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1538
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback861
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback862
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback862:
    unless_null $P5004, vivi_237863
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_237863:
    set $P5003, $P5004
  fallback861:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 1539
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback864
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback864:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1540
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1541
    $P5017 = $P102."push_pirop"("box", $P101, _lex_param_1)
.annotate 'line', 1542
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1546
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1547
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback870
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback871
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback871:
    unless_null $P5004, vivi_238872
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_238872:
    set $P5003, $P5004
  fallback870:
    $P5009 = $P5003."fresh_i"()
    set $P101, $P5009
.annotate 'line', 1548
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback873
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback873:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1549
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1550
    $P5017 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1551
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1554
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1555
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback875
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback876
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback876:
    unless_null $P5004, vivi_239877
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_239877:
    set $P5003, $P5004
  fallback875:
    $P5009 = $P5003."fresh_n"()
    set $P101, $P5009
.annotate 'line', 1556
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback878
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback878:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1557
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1558
    $P5017 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1559
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1562
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1563
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback880
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback881
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback881:
    unless_null $P5004, vivi_240882
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_240882:
    set $P5003, $P5004
  fallback880:
    $P5009 = $P5003."fresh_s"()
    set $P101, $P5009
.annotate 'line', 1564
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback883
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback883:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1565
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1566
    $P5017 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1567
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1683
    $P5002 = _lex_param_1."list"()
    set $P101, $P5002
.annotate 'line', 1684
    set $N5001, $P101
    set $N5002, 2
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if241_else977 
.annotate 'line', 1685
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback979
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback979:
    $P5008 = $P5003."new"($P101 :flat, "substr2" :named("op"))
    set $P5015, $P5008
    goto if241_end978
  if241_else977:
.annotate 'line', 1686
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback980
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback980:
    $P5014 = $P5009."new"($P101 :flat, "substr3" :named("op"))
    set $P5015, $P5014
  if241_end978:
    $P5016 = _lex_param_0."as_post"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1692
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1693
    $P5002 = _lex_param_1."list"()
    set $P101, $P5002
.annotate 'line', 1694
    set $N5001, $P101
    set $N5002, 1
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if242_else984 
.annotate 'line', 1695
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback986
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback986:
    $P5008 = $P5003."new"($P101 :flat, "ordfirst" :named("op"))
    set $P5015, $P5008
    goto if242_end985
  if242_else984:
.annotate 'line', 1696
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback987
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback987:
    $P5014 = $P5009."new"($P101 :flat, "ordat" :named("op"))
    set $P5015, $P5014
  if242_end985:
    $P5016 = _lex_param_0."as_post"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1701
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1702
    $P5002 = _lex_param_1."list"()
    set $P101, $P5002
.annotate 'line', 1703
    set $N5001, $P101
    set $N5002, 2
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if243_else990 
.annotate 'line', 1704
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback992
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback992:
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["IVal"]
    unless_null $P5008, fallback993
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5012
  fallback993:
    $P5013 = $P5008."new"(0 :named("value"))
    $P5014 = $P5003."new"($P101 :flat, $P5013, "indexfrom" :named("op"))
    set $P5021, $P5014
    goto if243_end991
  if243_else990:
.annotate 'line', 1705
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Op"]
    unless_null $P5015, fallback994
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback994:
    $P5020 = $P5015."new"($P101 :flat, "indexfrom" :named("op"))
    set $P5021, $P5020
  if243_end991:
    $P5022 = _lex_param_0."as_post"($P5021)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1709
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1710
    $P5002 = _lex_param_1."list"()
    set $P101, $P5002
.annotate 'line', 1711
    set $N5001, $P101
    set $N5002, 2
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if244_else998 
.annotate 'line', 1712
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback1000
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1000:
    $P5008 = $P5003."new"($P101 :flat, "rindexfromend" :named("op"))
    set $P5015, $P5008
    goto if244_end999
  if244_else998:
.annotate 'line', 1713
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback1001
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1001:
    $P5014 = $P5009."new"($P101 :flat, "rindexfrom" :named("op"))
    set $P5015, $P5014
  if244_end999:
    $P5016 = _lex_param_0."as_post"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_59_1346277600.974") :anon :lex :outer("cuid_1_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1867
    .const 'Sub' $P5091 = 'cuid_248_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_249_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_251_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_71_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_96_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_97_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_98_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_99_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_100_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_101_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_102_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_103_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_104_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_105_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_106_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_107_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_108_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_109_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_110_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_111_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_112_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_113_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_114_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_115_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_116_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_117_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_118_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_119_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_120_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_121_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_122_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_123_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_124_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_125_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_126_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_127_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_128_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_129_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_130_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_131_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_132_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_133_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_134_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_135_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_136_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_137_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_138_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_139_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_140_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_141_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_142_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_143_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_144_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_145_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_146_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_147_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_148_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_149_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_150_1346277600.974' 
    capture_lex $P5091 
    .const 'Sub' $P5091 = 'cuid_151_1346277600.974' 
    capture_lex $P5091 
    .lex "RegAlloc", $P101 
    .lex "BlockInfo", $P102 
    .lex "@prim_to_reg", $P103 
    .lex "&type_to_register_type", $P104 
    .lex "@prim_to_lookup_name", $P105 
    .lex "&type_to_lookup_name", $P106 
    .lex "%hll_force_return_boxing", $P107 
    .lex "&want", $P108 
    .lex "%cclass_code", $P109 
    .lex "$?PACKAGE", $P110 
    .lex "$?CLASS", $P111 
    new $P5001, 'ResizablePMCArray'
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_248_1346277600.974' 
    capture_lex $P5002
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_249_1346277600.974' 
    capture_lex $P5004
    set $P106, $P5004
    new $P5005, 'Hash'
    set $P107, $P5005
    .const 'Sub' $P5006 = 'cuid_251_1346277600.974' 
    capture_lex $P5006
    set $P108, $P5006
    new $P5007, 'Hash'
    set $P109, $P5007
.annotate 'line', 2046
    get_who $P5008, $P110
    box $P5009, 10
    set $P5008["$serno"], $P5009

            $P0 = get_root_global ['parrot';'QAST'], 'Compiler'
            unless null $P0 goto have_qastcomp
            $P0 = find_lex '$?CLASS'
            set_root_global ['parrot';'QAST'], 'Compiler', $P0
            compreg 'QAST', $P0
          have_qastcomp:
        
.annotate 'line', 3126
    box $P5010, ".CCLASS_ANY"
    set $P109["."], $P5010
    box $P5011, ".CCLASS_NUMERIC"
    set $P109["d"], $P5011
    box $P5012, ".CCLASS_WHITESPACE"
    set $P109["s"], $P5012
    box $P5013, ".CCLASS_WORD"
    set $P109["w"], $P5013
    box $P5014, ".CCLASS_NEWLINE"
    set $P109["n"], $P5014
    box $P5015, ".CCLASS_NEWLINE"
    set $P109["nl"], $P5015
.annotate 'line', 1867
    .const 'Sub' $P5016 = 'cuid_71_1346277600.974' 
    capture_lex $P5016
    $P5017 = $P5016()
    .const 'Sub' $P5018 = 'cuid_96_1346277600.974' 
    capture_lex $P5018
    $P5019 = $P5018()
    get_who $P5021, $P110
    set $P5020, $P5021["$serno"]
    unless_null $P5020, fallback1163
    get_hll_global $P5024, "GLOBAL"
    get_who $P5023, $P5024
    set $P5022, $P5023["$serno"]
    unless_null $P5022, vivi_2511164
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5025
  vivi_2511164:
    set $P5020, $P5022
  fallback1163:
    new $P5026, 'ResizablePMCArray'
    box $P5027, "P"
    push $P5026, $P5027
    box $P5028, "I"
    push $P5026, $P5028
    box $P5029, "N"
    push $P5026, $P5029
    box $P5030, "S"
    push $P5026, $P5030
    set $P103, $P5026
    .const 'Sub' $P5031 = 'cuid_97_1346277600.974' 
    capture_lex $P5031
    new $P5032, 'ResizablePMCArray'
    box $P5033, "obj"
    push $P5032, $P5033
    box $P5034, "int"
    push $P5032, $P5034
    box $P5035, "num"
    push $P5032, $P5035
    box $P5036, "str"
    push $P5032, $P5036
    set $P105, $P5032
    .const 'Sub' $P5037 = 'cuid_98_1346277600.974' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_99_1346277600.974' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_100_1346277600.974' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_101_1346277600.974' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_102_1346277600.974' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_103_1346277600.974' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_104_1346277600.974' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_105_1346277600.974' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_106_1346277600.974' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_107_1346277600.974' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_108_1346277600.974' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_109_1346277600.974' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_110_1346277600.974' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_111_1346277600.974' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_112_1346277600.974' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_113_1346277600.974' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_114_1346277600.974' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_115_1346277600.974' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_116_1346277600.974' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_117_1346277600.974' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_118_1346277600.974' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_119_1346277600.974' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_120_1346277600.974' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_121_1346277600.974' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_122_1346277600.974' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_123_1346277600.974' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_124_1346277600.974' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_125_1346277600.974' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_126_1346277600.974' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_127_1346277600.974' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_128_1346277600.974' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_129_1346277600.974' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_130_1346277600.974' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_131_1346277600.974' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_132_1346277600.974' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_133_1346277600.974' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_134_1346277600.974' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_135_1346277600.974' 
    capture_lex $P5074
    .const 'Sub' $P5075 = 'cuid_136_1346277600.974' 
    capture_lex $P5075
    .const 'Sub' $P5076 = 'cuid_137_1346277600.974' 
    capture_lex $P5076
    .const 'Sub' $P5077 = 'cuid_138_1346277600.974' 
    capture_lex $P5077
    .const 'Sub' $P5078 = 'cuid_139_1346277600.974' 
    capture_lex $P5078
    .const 'Sub' $P5079 = 'cuid_140_1346277600.974' 
    capture_lex $P5079
    .const 'Sub' $P5080 = 'cuid_141_1346277600.974' 
    capture_lex $P5080
    .const 'Sub' $P5081 = 'cuid_142_1346277600.974' 
    capture_lex $P5081
    .const 'Sub' $P5082 = 'cuid_143_1346277600.974' 
    capture_lex $P5082
    .const 'Sub' $P5083 = 'cuid_144_1346277600.974' 
    capture_lex $P5083
    .const 'Sub' $P5084 = 'cuid_145_1346277600.974' 
    capture_lex $P5084
    .const 'Sub' $P5085 = 'cuid_146_1346277600.974' 
    capture_lex $P5085
    .const 'Sub' $P5086 = 'cuid_147_1346277600.974' 
    capture_lex $P5086
    .const 'Sub' $P5087 = 'cuid_148_1346277600.974' 
    capture_lex $P5087
    .const 'Sub' $P5088 = 'cuid_149_1346277600.974' 
    capture_lex $P5088
    .const 'Sub' $P5089 = 'cuid_150_1346277600.974' 
    capture_lex $P5089
    .const 'Sub' $P5090 = 'cuid_151_1346277600.974' 
    capture_lex $P5090
    .return ($P5090) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_register_type" :subid("cuid_248_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2059
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    find_lex $P5002, "@prim_to_reg"
    repr_get_primitive_type_spec $I5001, _lex_param_0
    set $P5001, $P5002[$I5001]
    unless_null $P5001, fallback1129
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5003
  fallback1129:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_lookup_name" :subid("cuid_249_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2067
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    find_lex $P5002, "@prim_to_lookup_name"
    repr_get_primitive_type_spec $I5001, _lex_param_0
    set $P5001, $P5002[$I5001]
    unless_null $P5001, fallback1130
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5003
  fallback1130:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "want" :subid("cuid_251_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2520
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_250_1346277600.974' 
    capture_lex $P5013 
    .lex "@possibles", $P101 
    .lex "$best", $P102 
    .lex "$node", _lex_param_0 
    .lex "$type", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 2521
    $P5004 = _lex_param_0."list"()
    clone $P5003, $P5004
    set $P101, $P5003
.annotate 'line', 2522
    $P5005 = $P101."shift"()
    set $P102, $P5005
    set $P5006, $P101
    iter $P5008, $P101
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, for_handlers1133
    push_eh $P5010
  for_next1134:
    unless $P5008, for_done1136
    shift $P5011, $P5008
    shift $P5012, $P5008
  for_redo1135:
    .const 'Sub' $P5009 = 'cuid_250_1346277600.974' 
    capture_lex $P5009
    $P5006 = $P5009($P5011, $P5012)
    goto for_next1134
  for_handlers1133:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5010, $P5010, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, for_next1134
    eq $P5010, .CONTROL_LOOP_REDO, for_redo1135
  for_done1136:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_250_1346277600.974") :anon :lex :outer("cuid_251_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2523
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$sel", _lex_param_0 
    .lex "$ast", _lex_param_1 
    set $S5001, _lex_param_0
    find_lex $P5001, "$type"
    set $S5002, $P5001
    index $I5002, $S5001, $S5002, 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    box $P5003, $I5001
    set $P5002, $P5003
    unless $I5001 goto if245_end1132 
.annotate 'line', 2524
    store_lex "$best", _lex_param_1
    set $P5002, _lex_param_1
  if245_end1132:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_71_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1870
    .const 'Sub' $P5012 = 'cuid_60_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_61_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_62_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_63_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_64_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_65_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_66_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_67_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_68_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_69_1346277600.974' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_70_1346277600.974' 
    capture_lex $P5012 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_60_1346277600.974' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_61_1346277600.974' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_62_1346277600.974' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_63_1346277600.974' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_64_1346277600.974' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_65_1346277600.974' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_66_1346277600.974' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_67_1346277600.974' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_68_1346277600.974' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_69_1346277600.974' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_70_1346277600.974' 
    capture_lex $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_60_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1876
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    if haz_param_11, default1139
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_1, $P5011
  default1139:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    unless _lex_param_1 goto if246_else1137 
.annotate 'line', 1879
    $P5004 = _lex_param_1."cur_p"()
    $P5005 = _lex_param_1."cur_s"()
    $P5006 = _lex_param_1."cur_i"()
    $P5007 = _lex_param_1."cur_n"()
    $P5008 = $P101."BUILD"($P5004, $P5005, $P5006, $P5007)
    set $P5010, $P5008
    goto if246_end1138
  if246_else1137:
.annotate 'line', 1880
    $P5009 = $P101."BUILD"(5000, 5000, 5000, 5000)
    set $P5010, $P5009
  if246_end1138:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "handler_allocator" :subid("cuid_61_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1884
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1886
    $P5004 = $P101."BUILD"(10000, 10000, 10000, 10000)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_62_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1890
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$p", _lex_param_1 
    .lex "$s", _lex_param_2 
    .lex "$i", _lex_param_3 
    .lex "$n", _lex_param_4 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    set $I5001, _lex_param_1
    repr_bind_attr_int $P5001, $P5002, "$!cur_p", $I5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    set $I5002, _lex_param_2
    repr_bind_attr_int $P5003, $P5004, "$!cur_s", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    set $I5003, _lex_param_3
    repr_bind_attr_int $P5005, $P5006, "$!cur_i", $I5003
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    set $I5004, _lex_param_4
    repr_bind_attr_int $P5007, $P5008, "$!cur_n", $I5004
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_p" :subid("cuid_63_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1897
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_p"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_p", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_p"
    set $S5002, $I5003
    concat $S5001, "$P", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_s" :subid("cuid_64_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1901
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_s"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_s", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_s"
    set $S5002, $I5003
    concat $S5001, "$S", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_i" :subid("cuid_65_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1905
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_i"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_i", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_i"
    set $S5002, $I5003
    concat $S5001, "$I", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_n" :subid("cuid_66_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1909
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_n"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_n", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_n"
    set $S5002, $I5003
    concat $S5001, "$N", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_p" :subid("cuid_67_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1914
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_p"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_s" :subid("cuid_68_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1915
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_s"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_i" :subid("cuid_69_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1916
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_i"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_n" :subid("cuid_70_1346277600.974") :anon :lex :outer("cuid_71_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1917
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_n"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1921
    .const 'Sub' $P5031 = 'cuid_72_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_73_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_74_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_75_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_76_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_77_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_78_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_79_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_80_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_81_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_82_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_83_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_84_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_85_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_86_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_87_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_88_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_89_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_90_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_91_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_92_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_93_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_94_1346277600.974' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_95_1346277600.974' 
    capture_lex $P5031 
    .lex "%longnames", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_72_1346277600.974' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_73_1346277600.974' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_74_1346277600.974' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_75_1346277600.974' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_76_1346277600.974' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_77_1346277600.974' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_78_1346277600.974' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_79_1346277600.974' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_80_1346277600.974' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_81_1346277600.974' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_82_1346277600.974' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_83_1346277600.974' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_84_1346277600.974' 
    capture_lex $P5014
    new $P5015, 'Hash'
    box $P5016, "pmc"
    set $P5015["P"], $P5016
    box $P5017, "int"
    set $P5015["I"], $P5017
    box $P5018, "num"
    set $P5015["N"], $P5018
    box $P5019, "string"
    set $P5015["S"], $P5019
    set $P101, $P5015
    .const 'Sub' $P5020 = 'cuid_85_1346277600.974' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_86_1346277600.974' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_87_1346277600.974' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_88_1346277600.974' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_89_1346277600.974' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_90_1346277600.974' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_91_1346277600.974' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_92_1346277600.974' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_93_1346277600.974' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_94_1346277600.974' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_95_1346277600.974' 
    capture_lex $P5030
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_72_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1938
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    .lex "$outer", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1940
    $P5004 = $P101."BUILD"(_lex_param_1, _lex_param_2)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_73_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1944
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    .lex "$outer", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_bind_attr_obj $P5001, $P5002, "$!qast", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_bind_attr_obj $P5003, $P5004, "$!outer", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5007, 'ResizablePMCArray'
    repr_bind_attr_obj $P5005, $P5006, "@!params", $P5007
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5010, 'ResizablePMCArray'
    repr_bind_attr_obj $P5008, $P5009, "@!locals", $P5010
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5013, 'ResizablePMCArray'
    repr_bind_attr_obj $P5011, $P5012, "@!lexicals", $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5016, 'Hash'
    repr_bind_attr_obj $P5014, $P5015, "%!local_types", $P5016
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5019, 'Hash'
    repr_bind_attr_obj $P5017, $P5018, "%!lexical_types", $P5019
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5022, 'Hash'
    repr_bind_attr_obj $P5020, $P5021, "%!lexical_regs", $P5022
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5025, 'Hash'
    repr_bind_attr_obj $P5023, $P5024, "%!reg_types", $P5025
    nqp_decontainerize $P5026, _lex_param_0
    nqp_get_sc_object $P5027, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    new $P5028, 'ResizablePMCArray'
    repr_bind_attr_obj $P5026, $P5027, "@!loadlibs", $P5028
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_bind_attr_int $P5029, $P5030, "$!cur_lex_p", 100
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_bind_attr_int $P5031, $P5032, "$!cur_lex_s", 100
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_bind_attr_int $P5033, $P5034, "$!cur_lex_i", 100
    nqp_decontainerize $P5035, _lex_param_0
    nqp_get_sc_object $P5036, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_bind_attr_int $P5035, $P5036, "$!cur_lex_n", 100
    .return (100) 
.end
.HLL "nqp"
.namespace []
.sub "add_param" :subid("cuid_74_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1961
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_252_1346277600.974' 
    capture_lex $P5013 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1962
    $P5001 = _lex_param_1."scope"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "local"
    unless $I5001 goto if247_else1140 
.annotate 'line', 1963
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."register_local"(_lex_param_1)
    set $P5006, $P5003
    goto if247_end1141
  if247_else1140:
    .const 'Sub' $P5004 = 'cuid_252_1346277600.974' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if247_end1141:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!params"
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!params"
    set $N5001, $P5012
    set $I5002, $N5001
    set $P5009[$I5002], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_252_1346277600.974") :anon :lex :outer("cuid_74_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1965
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5001, $P5002, $P5004, "$!param_idx"
    set $S5002, $I5001
    concat $S5001, "_lex_param_", $S5002
    box $P5005, $S5001
    set $P101, $P5005
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5002, $P5009, $P5011, "$!param_idx"
    set $N5002, $I5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5003, $N5001
    repr_bind_attr_int $P5006, $P5008, "$!param_idx", $I5003
.annotate 'line', 1968
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$var"
    $P5015 = $P5012."register_lexical"($P5014, $P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "add_lexical" :subid("cuid_75_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1973
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1974
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."register_lexical"(_lex_param_1)
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!lexicals"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!lexicals"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5005[$I5001], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "add_local" :subid("cuid_76_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1978
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1979
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."register_local"(_lex_param_1)
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!locals"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!locals"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5005[$I5001], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "register_lexical" :subid("cuid_77_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1983
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default1147
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5029
  default1147:
    .lex "$name", $P101 
    .lex "$type", $P102 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    .lex "$reg", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 1984
    $P5003 = _lex_param_1."name"()
    set $P101, $P5003
.annotate 'line', 1985
    $P5004 = _lex_param_1."returns"()
    $P5005 = "&type_to_register_type"($P5004)
    set $P102, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5008, $P5006, $P5007, "%!lexical_types"
    set $S5001, $P101
    exists $I5001, $P5008[$S5001]
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if248_end1143 
.annotate 'line', 1986
    set $S5004, $P101
    concat $S5003, "Lexical '", $S5004
    concat $S5002, $S5003, "' already declared"
    box $P5009, $S5002
    die $P5009
    set $P5010, $P5009
  if248_end1143:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!lexical_types"
    set $S5005, $P101
    set $P5014[$S5005], $P102
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5017, $P5015, $P5016, "%!lexical_regs"
    set $S5006, $P101
    unless _lex_param_2 goto if249_else1144 
    set $P5020, _lex_param_2
    goto if249_end1145
  if249_else1144:
.annotate 'line', 1990
    nqp_decontainerize $P5018, _lex_param_0
    set $S5009, $P102
    downcase $S5008, $S5009
    concat $S5007, "fresh_lex_", $S5008
    $P5019 = $P5018.$S5007()
    set $P5020, $P5019
  if249_end1145:
    set $P5017[$S5006], $P5020
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5023, $P5021, $P5022, "%!reg_types"
    nqp_decontainerize $P5025, _lex_param_0
    nqp_get_sc_object $P5026, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5027, $P5025, $P5026, "%!lexical_regs"
    set $S5010, $P101
    set $P5024, $P5027[$S5010]
    unless_null $P5024, fallback1146
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5028
  fallback1146:
    set $S5011, $P5024
    set $P5023[$S5011], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "register_local" :subid("cuid_78_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1994
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 1995
    $P5002 = _lex_param_1."name"()
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!local_types"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if250_end1149 
.annotate 'line', 1996
    set $S5004, $P101
    concat $S5003, "Local '", $S5004
    concat $S5002, $S5003, "' already declared"
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if250_end1149:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!local_types"
    set $S5005, $P101
.annotate 'line', 1999
    $P5012 = _lex_param_1."returns"()
    $P5013 = "&type_to_register_type"($P5012)
    set $P5011[$S5005], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5016, $P5014, $P5015, "%!reg_types"
    set $S5006, $P101
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!local_types"
    set $S5007, $P101
    set $P5017, $P5020[$S5007]
    unless_null $P5017, fallback1150
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1150:
    set $P5016[$S5006], $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_79_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2003
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!qast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "outer" :subid("cuid_80_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2004
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!outer"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "params" :subid("cuid_81_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2005
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!params"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "lexicals" :subid("cuid_82_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2006
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!lexicals"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "locals" :subid("cuid_83_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2007
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!locals"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "lex_reg" :subid("cuid_84_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2009
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!lexical_regs"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1151
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1151:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "local_type" :subid("cuid_85_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2012
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!local_types"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1152
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1152:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "local_type_long" :subid("cuid_86_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2013
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    find_lex $P5002, "%longnames"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!local_types"
    set $S5001, _lex_param_1
    set $P5003, $P5006[$S5001]
    unless_null $P5003, fallback1153
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1153:
    set $S5002, $P5003
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback1154
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5008
  fallback1154:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "lexical_type" :subid("cuid_87_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2014
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!lexical_types"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1155
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1155:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "lexical_type_long" :subid("cuid_88_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2015
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    find_lex $P5002, "%longnames"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!lexical_types"
    set $S5001, _lex_param_1
    set $P5003, $P5006[$S5001]
    unless_null $P5003, fallback1156
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1156:
    set $S5002, $P5003
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback1157
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5008
  fallback1157:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "reg_type" :subid("cuid_89_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2016
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!reg_types"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1158
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1158:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_loadlibs" :subid("cuid_90_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2018
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_253_1346277600.974' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "@libs", _lex_param_1 
    set $P5001, _lex_param_1
    iter $P5003, _lex_param_1
    new $P5005, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5005, for_handlers1159
    push_eh $P5005
  for_next1160:
    unless $P5003, for_done1162
    shift $P5006, $P5003
  for_redo1161:
    .const 'Sub' $P5004 = 'cuid_253_1346277600.974' 
    capture_lex $P5004
    $P5001 = $P5004($P5006)
    goto for_next1160
  for_handlers1159:
    .get_results ($P5005)
    pop_upto_eh $P5005
    getattribute $P5005, $P5005, 'type'
    eq $P5005, .CONTROL_LOOP_NEXT, for_next1160
    eq $P5005, .CONTROL_LOOP_REDO, for_redo1161
  for_done1162:
    pop_eh 
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_253_1346277600.974") :anon :lex :outer("cuid_90_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2019
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5004, $P5001, $P5003, "@!loadlibs"
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!loadlibs"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5004[$I5001], _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "loadlibs" :subid("cuid_91_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2023
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!loadlibs"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_p" :subid("cuid_92_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2027
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_p"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_p", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_p"
    set $S5002, $I5003
    concat $S5001, "$P", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_s" :subid("cuid_93_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2031
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_s"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_s", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_s"
    set $S5002, $I5003
    concat $S5001, "$S", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_i" :subid("cuid_94_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2035
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_i"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_i", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_i"
    set $S5002, $I5003
    concat $S5001, "$I", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_n" :subid("cuid_95_1346277600.974") :anon :lex :outer("cuid_96_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2039
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_n"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_n", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_n"
    set $S5002, $I5003
    concat $S5001, "$N", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_register_type" :subid("cuid_97_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2062
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 2063
    $P5001 = "&type_to_register_type"(_lex_param_1)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "force_return_boxing_for_hll" :subid("cuid_98_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2072
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    find_lex $P5001, "%hll_force_return_boxing"
    set $S5001, _lex_param_1
    box $P5002, 1
    set $P5001[$S5001], $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "unique" :subid("cuid_99_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2076
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_13, default1166
    box $P5001, ""
    set _lex_param_1, $P5001
  default1166:
    .lex "self", _lex_param_0 
    .lex "$prefix", _lex_param_1 
    .local pmc tmp_2 
    set $S5002, _lex_param_1
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5001, $P5002["$serno"]
    unless_null $P5001, fallback1165
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5004
  fallback1165:
    set tmp_2, $P5001
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $N5002, tmp_2
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    set $P5005["$serno"], $P5007
    set $S5003, tmp_2
    concat $S5001, $S5002, $S5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_100_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2077
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$esc", $P101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $S5002, _lex_param_1
    escape $S5001, $S5002
    box $P5002, $S5001
    set $P101, $P5002
    set $S5003, $P101
    index $I5002, $S5003, utf8:"\\x", 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if252_else1167 
    set $S5006, $P101
    concat $S5005, "utf8:\"", $S5006
    concat $S5004, $S5005, "\""
    set $S5015, $S5004
    goto if252_end1168
  if252_else1167:
    set $S5007, $P101
    index $I5004, $S5007, unicode:"\\u", 0
    set $N5003, $I5004
    set $N5004, 0
    isge $I5003, $N5003, $N5004
    unless $I5003 goto if253_else1169 
    set $S5010, $P101
    concat $S5009, "unicode:\"", $S5010
    concat $S5008, $S5009, "\""
    set $S5014, $S5008
    goto if253_end1170
  if253_else1169:
    set $S5013, $P101
    concat $S5012, "\"", $S5013
    concat $S5011, $S5012, "\""
    set $S5014, $S5011
  if253_end1170:
    set $S5015, $S5014
  if252_end1168:
    .return ($S5015) 
.end
.HLL "nqp"
.namespace []
.sub "rxescape" :subid("cuid_101_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2085
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    set $S5004, _lex_param_1
    escape $S5003, $S5004
    concat $S5002, "ucs4:\"", $S5003
    concat $S5001, $S5002, "\""
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_102_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2087
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("want") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_14, default1176
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5018
  default1176:
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$want", _lex_param_2 
    unless _lex_param_2 goto if254_else1171 
.annotate 'line', 2088
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Want"]
    unless_null $P5001, fallback1175
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1175:
    type_check $I5001, _lex_param_1, $P5001
    unless $I5001 goto if255_else1173 
.annotate 'line', 2089
.annotate 'line', 2090
    nqp_decontainerize $P5006, _lex_param_0
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = "&want"(_lex_param_1, _lex_param_2)
    $P5009 = $P5007."as_post"($P5008)
    $P5010 = $P5006."coerce"($P5009, _lex_param_2)
    set $P5015, $P5010
    goto if255_end1174
  if255_else1173:
.annotate 'line', 2092
.annotate 'line', 2093
    nqp_decontainerize $P5011, _lex_param_0
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."as_post"(_lex_param_1)
    $P5014 = $P5011."coerce"($P5013, _lex_param_2)
    set $P5015, $P5014
  if255_end1174:
    set $P5017, $P5015
    goto if254_end1172
  if254_else1171:
.annotate 'line', 2096
    multi_dispatch_over_lexical_candidates $P5016
    set $P5017, $P5016
  if254_end1172:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_103_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2101
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5046 = 'cuid_255_1346277600.974' 
    capture_lex $P5046 
    .const 'Sub' $P5046 = 'cuid_257_1346277600.974' 
    capture_lex $P5046 
    .const 'Sub' $P5046 = 'cuid_258_1346277600.974' 
    capture_lex $P5046 
    .lex "$*HLL", $P101 
    .lex "$*QAST_BLOCK_NO_CLOSE", $P102 
    .lex "$block_post", $P103 
    .lex "$comp_mode", $P104 
    .lex "@pre_des", $P105 
    .lex "@post_des", $P106 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    box $P5007, ""
    set $P101, $P5007
.annotate 'line', 2104
    $P5008 = _lex_param_1."hll"()
    set $P5010, $P5008
    unless $P5008 goto if256_end1178 
.annotate 'line', 2105
    $P5009 = _lex_param_1."hll"()
    set $P101, $P5009
    set $P5010, $P101
  if256_end1178:
    $P5011 = _lex_param_1."list"()
    set $N5001, $P5011
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    set $I5004, $I5001
    if $I5001 goto unless258_end1182 
    set $P5012, _lex_param_1[0]
    unless_null $P5012, fallback1183
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5013
  fallback1183:
    get_hll_global $P5017, "GLOBAL"
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set $P5014, $P5015["Block"]
    unless_null $P5014, fallback1184
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5018
  fallback1184:
    type_check $I5003, $P5012, $P5014
    box $P5019, $I5003
    isfalse $I5002, $P5019
    set $I5004, $I5002
  unless258_end1182:
    box $P5022, $I5004
    set $P5021, $P5022
    unless $I5004 goto if257_end1180 
.annotate 'line', 2109
    box $P5020, "QAST::CompUnit should have one child that is a QAST::Block"
    die $P5020
    set $P5021, $P5020
  if257_end1180:
    box $P5023, 1
    set $P102, $P5023
.annotate 'line', 2115
    nqp_decontainerize $P5024, _lex_param_0
    set $P5025, _lex_param_1[0]
    unless_null $P5025, fallback1185
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5026
  fallback1185:
    $P5027 = $P5024."as_post"($P5025)
    set $P103, $P5027
.annotate 'line', 2120
    $P5028 = _lex_param_1."compilation_mode"()
    set $P104, $P5028
.annotate 'line', 2121
    $P5029 = _lex_param_1."pre_deserialize"()
    set $P105, $P5029
.annotate 'line', 2122
    $P5030 = _lex_param_1."post_deserialize"()
    set $P106, $P5030
    set $P5031, $P104
    if $P104 goto unless261_end1191 
    set $P5031, $P105
  unless261_end1191:
    set $P5032, $P5031
    if $P5031 goto unless260_end1189 
    set $P5032, $P106
  unless260_end1189:
    set $P5035, $P5032
    unless $P5032 goto if259_end1187 
    .const 'Sub' $P5033 = 'cuid_255_1346277600.974' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if259_end1187:
.annotate 'line', 2150
    $P5036 = _lex_param_1."load"()
    defined $I5005, $P5036
    box $P5040, $I5005
    set $P5039, $P5040
    unless $I5005 goto if263_end1206 
    .const 'Sub' $P5037 = 'cuid_257_1346277600.974' 
    capture_lex $P5037
    $P5038 = $P5037()
    set $P5039, $P5038
  if263_end1206:
.annotate 'line', 2157
    $P5041 = _lex_param_1."main"()
    defined $I5006, $P5041
    box $P5045, $I5006
    set $P5044, $P5045
    unless $I5006 goto if264_end1209 
    .const 'Sub' $P5042 = 'cuid_258_1346277600.974' 
    capture_lex $P5042
    $P5043 = $P5042()
    set $P5044, $P5043
  if264_end1209:
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_255_1346277600.974") :anon :lex :outer("cuid_103_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2123
    .const 'Sub' $P5039 = 'cuid_254_1346277600.974' 
    capture_lex $P5039 
    .const 'Sub' $P5039 = 'cuid_256_1346277600.974' 
    capture_lex $P5039 
    .lex "$block", $P101 
    .lex "$sc_post", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 2126
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Block"]
    unless_null $P5003, fallback1192
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1192:
    $P5008 = $P5003."new"("raw" :named("blocktype"))
    set $P101, $P5008
    find_lex $P5012, "@pre_des"
    set $P5009, $P5012
    iter $P5011, $P5012
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers1194
    push_eh $P5014
  for_next1195:
    unless $P5011, for_done1197
    shift $P5015, $P5011
  for_redo1196:
    .const 'Sub' $P5013 = 'cuid_254_1346277600.974' 
    capture_lex $P5013
    $P5009 = $P5013($P5015)
    goto for_next1195
  for_handlers1194:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5014, $P5014, 'type'
    eq $P5014, .CONTROL_LOOP_NEXT, for_next1195
    eq $P5014, .CONTROL_LOOP_REDO, for_redo1196
  for_done1197:
    pop_eh 
    find_lex $P5016, "$comp_mode"
    set $P5025, $P5016
    unless $P5016 goto if262_end1199 
.annotate 'line', 2134
.annotate 'line', 2135
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$cu"
    $P5020 = $P5019."sc"()
    find_lex $P5021, "$cu"
    $P5022 = $P5021."code_ref_blocks"()
    $P5023 = $P5017."deserialization_code"($P5020, $P5022)
    $P5024 = $P101."push"($P5023)
    set $P5025, $P5024
  if262_end1199:
    find_lex $P5029, "@post_des"
    set $P5026, $P5029
    iter $P5028, $P5029
    new $P5031, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5031, for_handlers1201
    push_eh $P5031
  for_next1202:
    unless $P5028, for_done1204
    shift $P5032, $P5028
  for_redo1203:
    .const 'Sub' $P5030 = 'cuid_256_1346277600.974' 
    capture_lex $P5030
    $P5026 = $P5030($P5032)
    goto for_next1202
  for_handlers1201:
    .get_results ($P5031)
    pop_upto_eh $P5031
    getattribute $P5031, $P5031, 'type'
    eq $P5031, .CONTROL_LOOP_NEXT, for_next1202
    eq $P5031, .CONTROL_LOOP_REDO, for_redo1203
  for_done1204:
    pop_eh 
.annotate 'line', 2144
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."as_post"($P101)
    set $P102, $P5035
.annotate 'line', 2145
    $P5036 = $P102."pirflags"(":load :init")
.annotate 'line', 2146
    find_lex $P5037, "$block_post"
    $P5038 = $P5037."push"($P102)
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1346277600.974") :anon :lex :outer("cuid_255_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2129
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2130
    find_lex $P5001, "$block"
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Stmt"]
    unless_null $P5002, fallback1193
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1193:
    $P5007 = $P5002."new"(_lex_param_0)
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_256_1346277600.974") :anon :lex :outer("cuid_255_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2139
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2140
    find_lex $P5001, "$block"
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Stmt"]
    unless_null $P5002, fallback1200
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1200:
    $P5007 = $P5002."new"(_lex_param_0)
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_257_1346277600.974") :anon :lex :outer("cuid_103_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2150
    .lex "$load_post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2151
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["Block"]
    unless_null $P5004, fallback1207
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback1207:
    find_lex $P5009, "$cu"
    $P5010 = $P5009."load"()
    $P5011 = $P5004."new"($P5010, "raw" :named("blocktype"))
    $P5012 = $P5002."as_post"($P5011)
    set $P101, $P5012
.annotate 'line', 2152
    $P5013 = $P101."pirflags"(":load")
.annotate 'line', 2153
    find_lex $P5014, "$block_post"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_258_1346277600.974") :anon :lex :outer("cuid_103_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2157
    .lex "$main_post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2158
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["Block"]
    unless_null $P5004, fallback1210
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback1210:
    find_lex $P5009, "$cu"
    $P5010 = $P5009."main"()
    $P5011 = $P5004."new"($P5010, "raw" :named("blocktype"))
    $P5012 = $P5002."as_post"($P5011)
    set $P101, $P5012
.annotate 'line', 2159
    $P5013 = $P101."pirflags"(":main")
.annotate 'line', 2160
    find_lex $P5014, "$block_post"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "deserialization_code" :subid("cuid_104_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2166
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$sh", $P101 
    .lex "$serialized", $P102 
    .lex "$sh_ast", $P103 
    .lex "$sh_elems", $P104 
    .lex "$i", $P105 
    .lex "$cr_past", $P106 
    .lex "self", _lex_param_0 
    .lex "$sc", _lex_param_1 
    .lex "@code_ref_blocks", _lex_param_2 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    new $P5007, "ResizableStringArray"
    set $P101, $P5007
    nqp_serialize_sc $S5001, _lex_param_1, $P101
    box $P5008, $S5001
    set $P102, $P5008
    nqp_pop_compiling_sc 
.annotate 'line', 2175
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback1211
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1211:
    $P5014 = $P5009."new"("list_s" :named("op"))
    set $P103, $P5014
    elements $I5001, $P101
    box $P5015, $I5001
    set $P104, $P5015
    box $P5016, 0
    set $P105, $P5016
    new $P5037, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5037, while265_handlers1215
    push_eh $P5037
  while265_test1212:
    set $N5001, $P105
    set $N5002, $P104
    islt $I5002, $N5001, $N5002
    box $P5038, $I5002
    set $P5036, $P5038
    unless $I5002 goto while265_done1216 
  while265_redo1214:
.annotate 'line', 2178
.annotate 'line', 2179
    set $I5004, $P105
    set $P5017, $P101[$I5004]
    unless_null $P5017, fallback1219
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5018
  fallback1219:
    set $S5002, $P5017
    isnull $I5003, $S5002
    unless $I5003 goto if266_else1217 
.annotate 'line', 2180
    get_hll_global $P5022, "GLOBAL"
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Op"]
    unless_null $P5019, fallback1220
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5023
  fallback1220:
    $P5024 = $P5019."new"("null_s" :named("op"))
    set $P5033, $P5024
    goto if266_end1218
  if266_else1217:
.annotate 'line', 2181
    get_hll_global $P5028, "GLOBAL"
    nqp_get_package_through_who $P5027, $P5028, "QAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["SVal"]
    unless_null $P5025, fallback1221
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5029
  fallback1221:
    set $I5005, $P105
    set $P5030, $P101[$I5005]
    unless_null $P5030, fallback1222
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5030, $P5031
  fallback1222:
    $P5032 = $P5025."new"($P5030 :named("value"))
    set $P5033, $P5032
  if266_end1218:
    $P5034 = $P103."push"($P5033)
    set $N5004, $P105
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5035, $N5003
    set $P105, $P5035
    set $P5036, $P105
    goto while265_test1212 
  while265_handlers1215:
    .get_results ($P5037)
    pop_upto_eh $P5037
    getattribute $P5037, $P5037, 'type'
    eq $P5037, .CONTROL_LOOP_NEXT, while265_test1212
    eq $P5037, .CONTROL_LOOP_REDO, while265_redo1214
  while265_done1216:
    pop_eh 
.annotate 'line', 2186
    get_hll_global $P5042, "GLOBAL"
    nqp_get_package_through_who $P5041, $P5042, "QAST"
    get_who $P5040, $P5041
    set $P5039, $P5040["Op"]
    unless_null $P5039, fallback1223
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5039, $P5043
  fallback1223:
    $P5044 = $P5039."new"(_lex_param_2 :flat, "list_b" :named("op"))
    set $P106, $P5044
.annotate 'line', 2189
    get_hll_global $P5048, "GLOBAL"
    nqp_get_package_through_who $P5047, $P5048, "QAST"
    get_who $P5046, $P5047
    set $P5045, $P5046["Stmt"]
    unless_null $P5045, fallback1224
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5045, $P5049
  fallback1224:
.annotate 'line', 2190
    get_hll_global $P5053, "GLOBAL"
    nqp_get_package_through_who $P5052, $P5053, "QAST"
    get_who $P5051, $P5052
    set $P5050, $P5051["Op"]
    unless_null $P5050, fallback1225
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5050, $P5054
  fallback1225:
.annotate 'line', 2192
    get_hll_global $P5058, "GLOBAL"
    nqp_get_package_through_who $P5057, $P5058, "QAST"
    get_who $P5056, $P5057
    set $P5055, $P5056["Var"]
    unless_null $P5055, fallback1226
    nqp_get_sc_object $P5059, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5055, $P5059
  fallback1226:
    $P5060 = $P5055."new"("cur_sc" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 2193
    get_hll_global $P5064, "GLOBAL"
    nqp_get_package_through_who $P5063, $P5064, "QAST"
    get_who $P5062, $P5063
    set $P5061, $P5062["Op"]
    unless_null $P5061, fallback1227
    nqp_get_sc_object $P5065, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5061, $P5065
  fallback1227:
    get_hll_global $P5069, "GLOBAL"
    nqp_get_package_through_who $P5068, $P5069, "QAST"
    get_who $P5067, $P5068
    set $P5066, $P5067["SVal"]
    unless_null $P5066, fallback1228
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5066, $P5070
  fallback1228:
    $P5071 = _lex_param_1."handle"()
    $P5072 = $P5066."new"($P5071 :named("value"))
    $P5073 = $P5061."new"($P5072, "createsc" :named("op"))
    $P5074 = $P5050."new"($P5060, $P5073, "bind" :named("op"))
.annotate 'line', 2195
    get_hll_global $P5078, "GLOBAL"
    nqp_get_package_through_who $P5077, $P5078, "QAST"
    get_who $P5076, $P5077
    set $P5075, $P5076["Op"]
    unless_null $P5075, fallback1229
    nqp_get_sc_object $P5079, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5075, $P5079
  fallback1229:
.annotate 'line', 2197
    get_hll_global $P5083, "GLOBAL"
    nqp_get_package_through_who $P5082, $P5083, "QAST"
    get_who $P5081, $P5082
    set $P5080, $P5081["Var"]
    unless_null $P5080, fallback1230
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5080, $P5084
  fallback1230:
    $P5085 = $P5080."new"("cur_sc" :named("name"), "local" :named("scope"))
.annotate 'line', 2198
    get_hll_global $P5089, "GLOBAL"
    nqp_get_package_through_who $P5088, $P5089, "QAST"
    get_who $P5087, $P5088
    set $P5086, $P5087["SVal"]
    unless_null $P5086, fallback1231
    nqp_get_sc_object $P5090, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5086, $P5090
  fallback1231:
    $P5091 = _lex_param_1."description"()
    $P5092 = $P5086."new"($P5091 :named("value"))
    $P5093 = $P5075."new"($P5085, $P5092, "callmethod" :named("op"), "set_description" :named("name"))
.annotate 'line', 2200
    get_hll_global $P5097, "GLOBAL"
    nqp_get_package_through_who $P5096, $P5097, "QAST"
    get_who $P5095, $P5096
    set $P5094, $P5095["Op"]
    unless_null $P5094, fallback1232
    nqp_get_sc_object $P5098, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5094, $P5098
  fallback1232:
.annotate 'line', 2202
    get_hll_global $P5102, "GLOBAL"
    nqp_get_package_through_who $P5101, $P5102, "QAST"
    get_who $P5100, $P5101
    set $P5099, $P5100["SVal"]
    unless_null $P5099, fallback1233
    nqp_get_sc_object $P5103, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5099, $P5103
  fallback1233:
    $P5104 = $P5099."new"($P102 :named("value"))
.annotate 'line', 2203
    get_hll_global $P5108, "GLOBAL"
    nqp_get_package_through_who $P5107, $P5108, "QAST"
    get_who $P5106, $P5107
    set $P5105, $P5106["Var"]
    unless_null $P5105, fallback1234
    nqp_get_sc_object $P5109, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5105, $P5109
  fallback1234:
    $P5110 = $P5105."new"("cur_sc" :named("name"), "local" :named("scope"))
.annotate 'line', 2205
    get_hll_global $P5114, "GLOBAL"
    nqp_get_package_through_who $P5113, $P5114, "QAST"
    get_who $P5112, $P5113
    set $P5111, $P5112["Block"]
    unless_null $P5111, fallback1235
    nqp_get_sc_object $P5115, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5111, $P5115
  fallback1235:
    $P5116 = $P5111."new"($P106, "immediate" :named("blocktype"))
    $P5117 = $P5094."new"($P5104, $P5110, $P103, $P5116, "deserialize" :named("op"))
    $P5118 = $P5045."new"($P5074, $P5093, $P5117)
    .return ($P5118) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_105_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2210
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5034 = 'cuid_261_1346277600.974' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_276_1346277600.974' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_277_1346277600.974' 
    capture_lex $P5034 
    .lex "$sub", $P101 
    .lex "$ops", $P102 
    .lex "$blocktype", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1236
    .lex "RETURN", $P104
    .const 'Sub' $P5004 = 'cuid_261_1346277600.974' 
    capture_lex $P5004
    $P5005 = $P5004()
    new $P5012, 'ExceptionHandler'
    set_label $P5012, catch_handler_3051348
    $P5012.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5012
    find_dynamic_lex $P5006, "$*BLOCK"
    unless_null $P5006, fallback1344
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["$BLOCK"]
    unless_null $P5007, fallback1345
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5010
  fallback1345:
    unless_null $P5007, vivi_3031346
    die "Contextual $*BLOCK not found"
    box $P5011, "Contextual $*BLOCK not found"
    set $P5007, $P5011
  vivi_3031346:
    set $P5006, $P5007
  fallback1344:
    set $P5013, $P5006
    pop_eh 
    goto skip_handler_3041347
  catch_handler_3051348:
    .get_results ($P5012) 
    set $I10001, 1
    set $P5012["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5012
    pop_upto_eh $P5012
    pop_eh 
    set $P5013, $P10001
    goto skip_handler_3041347
  skip_handler_3041347:
    nqp_get_sc_object $P5014, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    type_check $I5001, $P5013, $P5014
    box $P5018, $I5001
    set $P5017, $P5018
    if $I5001 goto unless302_end1343 
.annotate 'line', 2388
    find_lex $P5015, "RETURN"
    $P5016 = $P5015($P101)
    set $P5017, $P5016
  unless302_end1343:
.annotate 'line', 2394
    get_hll_global $P5022, "GLOBAL"
    nqp_get_package_through_who $P5021, $P5022, "PIRT"
    get_who $P5020, $P5021
    set $P5019, $P5020["Ops"]
    unless_null $P5019, fallback1349
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5023
  fallback1349:
    $P5024 = $P5019."new"()
    set $P102, $P5024
.annotate 'line', 2395
    $P5025 = $P102."push"($P101)
.annotate 'line', 2396
    $P5026 = _lex_param_1."blocktype"()
    set $P103, $P5026
    set $S5001, $P103
    iseq $I5002, $S5001, "immediate"
    unless $I5002 goto if306_else1350 
    .const 'Sub' $P5027 = 'cuid_276_1346277600.974' 
    capture_lex $P5027
    $P5028 = $P5027()
    set $P5033, $P5028
    goto if306_end1351
  if306_else1350:
    set $S5002, $P103
    iseq $I5003, $S5002, "declaration"
    set $I5005, $I5003
    if $I5003 goto unless317_end1373 
    set $S5003, $P103
    iseq $I5004, $S5003, ""
    set $I5005, $I5004
  unless317_end1373:
    box $P5032, $I5005
    set $P5031, $P5032
    unless $I5005 goto if316_end1371 
    .const 'Sub' $P5029 = 'cuid_277_1346277600.974' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
  if316_end1371:
    set $P5033, $P5031
  if306_end1351:
    goto lexotic_1237
  lexotic_1236:
    .get_results ($P102)
  lexotic_1237:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1346277600.974") :anon :lex :outer("cuid_105_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2213
    .const 'Sub' $P5148 = 'cuid_260_1346277600.974' 
    capture_lex $P5148 
    .const 'Sub' $P5148 = 'cuid_263_1346277600.974' 
    capture_lex $P5148 
    .const 'Sub' $P5148 = 'cuid_269_1346277600.974' 
    capture_lex $P5148 
    .const 'Sub' $P5148 = 'cuid_270_1346277600.974' 
    capture_lex $P5148 
    .const 'Sub' $P5148 = 'cuid_271_1346277600.974' 
    capture_lex $P5148 
    .const 'Sub' $P5148 = 'cuid_272_1346277600.974' 
    capture_lex $P5148 
    .const 'Sub' $P5148 = 'cuid_274_1346277600.974' 
    capture_lex $P5148 
    .lex "$*REGALLOC", $P101 
    .lex "$*BLOCKRA", $P102 
    .lex "$*BINDVAL", $P103 
    .lex "$outer", $P104 
    .lex "$block", $P105 
    .lex "@inners", $P106 
    .lex "$stmts", $P107 
    .lex "$decls", $P108 
    .lex "$opts", $P109 
    .lex "%lex_params", $P110 
    .lex "$cap_lex_reg", $P111 
    .lex "$hll", $P112 
    .lex "@loadlibs", $P113 
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
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    new $P5010, 'Hash'
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P112, $P5012
    new $P5013, 'ResizablePMCArray'
    set $P113, $P5013
.annotate 'line', 2215
    nqp_get_sc_object $P5014, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    $P5015 = $P5014."new"()
    set $P101, $P5015
    unless_null $P101, fallback1238
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["$REGALLOC"]
    unless_null $P5016, fallback1239
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5019
  fallback1239:
    unless_null $P5016, vivi_2671240
    die "Contextual $*REGALLOC not found"
    box $P5020, "Contextual $*REGALLOC not found"
    set $P5016, $P5020
  vivi_2671240:
    set $P101, $P5016
  fallback1238:
    set $P102, $P101
    box $P5021, 0
    set $P103, $P5021
    new $P5028, 'ExceptionHandler'
    set_label $P5028, catch_handler_2701245
    $P5028.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5028
    find_dynamic_lex $P5022, "$*BLOCK"
    unless_null $P5022, fallback1241
    get_hll_global $P5025, "GLOBAL"
    get_who $P5024, $P5025
    set $P5023, $P5024["$BLOCK"]
    unless_null $P5023, fallback1242
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5023, $P5026
  fallback1242:
    unless_null $P5023, vivi_2681243
    die "Contextual $*BLOCK not found"
    box $P5027, "Contextual $*BLOCK not found"
    set $P5023, $P5027
  vivi_2681243:
    set $P5022, $P5023
  fallback1241:
    set $P5029, $P5022
    pop_eh 
    goto skip_handler_2691244
  catch_handler_2701245:
    .get_results ($P5028) 
    set $I10001, 1
    set $P5028["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5028
    pop_upto_eh $P5028
    pop_eh 
    set $P5029, $P10001
    goto skip_handler_2691244
  skip_handler_2691244:
    set $P104, $P5029
.annotate 'line', 2219
    nqp_get_sc_object $P5030, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    find_lex $P5031, "$node"
    $P5032 = $P5030."new"($P5031, $P104)
    set $P105, $P5032
    .const 'Sub' $P5033 = 'cuid_260_1346277600.974' 
    capture_lex $P5033
    $P5034 = $P5033()
.annotate 'line', 2240
    get_hll_global $P5038, "GLOBAL"
    nqp_get_package_through_who $P5037, $P5038, "PIRT"
    get_who $P5036, $P5037
    set $P5035, $P5036["Ops"]
    unless_null $P5035, fallback1252
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5039
  fallback1252:
    $P5040 = $P5035."new"()
    set $P108, $P5040
.annotate 'line', 2241
    get_hll_global $P5044, "GLOBAL"
    nqp_get_package_through_who $P5043, $P5044, "PIRT"
    get_who $P5042, $P5043
    set $P5041, $P5042["Ops"]
    unless_null $P5041, fallback1253
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5041, $P5045
  fallback1253:
    $P5046 = $P5041."new"()
    set $P109, $P5046
.annotate 'line', 2242
    find_lex $P5047, "$node"
    $P5048 = $P5047."node"()
    set $P5052, $P5048
    unless $P5048 goto if276_end1255 
    find_lex $P5049, "$node"
    $P5050 = $P5049."node"()
    $P5051 = $P108."node"($P5050)
    set $P5052, $P5051
  if276_end1255:
.annotate 'line', 2244
    find_lex $P5053, "$node"
    $P5054 = $P5053."custom_args"()
    unless $P5054 goto if277_else1256 
.annotate 'line', 2245
    $P5055 = $P108."push_pirop"(".param pmc CALL_SIG :call_sig")
    set $P5058, $P5055
    goto if277_end1257
  if277_else1256:
    .const 'Sub' $P5056 = 'cuid_263_1346277600.974' 
    capture_lex $P5056
    $P5057 = $P5056()
    set $P5058, $P5057
  if277_end1257:
.annotate 'line', 2322
    unless_null $P101, fallback1299
    get_hll_global $P5061, "GLOBAL"
    get_who $P5060, $P5061
    set $P5059, $P5060["$REGALLOC"]
    unless_null $P5059, fallback1300
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5059, $P5062
  fallback1300:
    unless_null $P5059, vivi_2891301
    die "Contextual $*REGALLOC not found"
    box $P5063, "Contextual $*REGALLOC not found"
    set $P5059, $P5063
  vivi_2891301:
    set $P101, $P5059
  fallback1299:
    $P5064 = $P101."fresh_p"()
    set $P111, $P5064
    set $P5065, $P106
    iter $P5067, $P106
    new $P5069, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5069, for_handlers1302
    push_eh $P5069
  for_next1303:
    unless $P5067, for_done1305
    shift $P5070, $P5067
  for_redo1304:
    .const 'Sub' $P5068 = 'cuid_269_1346277600.974' 
    capture_lex $P5068
    $P5065 = $P5068($P5070)
    goto for_next1303
  for_handlers1302:
    .get_results ($P5069)
    pop_upto_eh $P5069
    getattribute $P5069, $P5069, 'type'
    eq $P5069, .CONTROL_LOOP_NEXT, for_next1303
    eq $P5069, .CONTROL_LOOP_REDO, for_redo1304
  for_done1305:
    pop_eh 
.annotate 'line', 2329
    $P5071 = $P108."push"($P109)
.annotate 'line', 2332
    $P5075 = $P105."lexicals"()
    set $P5072, $P5075
    iter $P5074, $P5075
    new $P5077, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5077, for_handlers1306
    push_eh $P5077
  for_next1307:
    unless $P5074, for_done1309
    shift $P5078, $P5074
  for_redo1308:
    .const 'Sub' $P5076 = 'cuid_270_1346277600.974' 
    capture_lex $P5076
    $P5072 = $P5076($P5078)
    goto for_next1307
  for_handlers1306:
    .get_results ($P5077)
    pop_upto_eh $P5077
    getattribute $P5077, $P5077, 'type'
    eq $P5077, .CONTROL_LOOP_NEXT, for_next1307
    eq $P5077, .CONTROL_LOOP_REDO, for_redo1308
  for_done1309:
    pop_eh 
    set $P5079, $P110
    iter $P5081, $P110
    new $P5083, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5083, for_handlers1310
    push_eh $P5083
  for_next1311:
    unless $P5081, for_done1313
    shift $P5084, $P5081
  for_redo1312:
    .const 'Sub' $P5082 = 'cuid_271_1346277600.974' 
    capture_lex $P5082
    $P5079 = $P5082($P5084)
    goto for_next1311
  for_handlers1310:
    .get_results ($P5083)
    pop_upto_eh $P5083
    getattribute $P5083, $P5083, 'type'
    eq $P5083, .CONTROL_LOOP_NEXT, for_next1311
    eq $P5083, .CONTROL_LOOP_REDO, for_redo1312
  for_done1313:
    pop_eh 
.annotate 'line', 2338
    $P5088 = $P105."locals"()
    set $P5085, $P5088
    iter $P5087, $P5088
    new $P5090, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5090, for_handlers1314
    push_eh $P5090
  for_next1315:
    unless $P5087, for_done1317
    shift $P5091, $P5087
  for_redo1316:
    .const 'Sub' $P5089 = 'cuid_272_1346277600.974' 
    capture_lex $P5089
    $P5085 = $P5089($P5091)
    goto for_next1315
  for_handlers1314:
    .get_results ($P5090)
    pop_upto_eh $P5090
    getattribute $P5090, $P5090, 'type'
    eq $P5090, .CONTROL_LOOP_NEXT, for_next1315
    eq $P5090, .CONTROL_LOOP_REDO, for_redo1316
  for_done1317:
    pop_eh 
.annotate 'line', 2343
    get_hll_global $P5095, "GLOBAL"
    nqp_get_package_through_who $P5094, $P5095, "PIRT"
    get_who $P5093, $P5094
    set $P5092, $P5093["Sub"]
    unless_null $P5092, fallback1318
    nqp_get_sc_object $P5096, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5092, $P5096
  fallback1318:
    $P5097 = $P5092."new"()
    store_lex "$sub", $P5097
    box $P5098, ""
    set $P112, $P5098
    new $P5105, 'ExceptionHandler'
    set_label $P5105, catch_handler_2921323
    $P5105.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5105
    find_dynamic_lex $P5099, "$*HLL"
    unless_null $P5099, fallback1319
    get_hll_global $P5102, "GLOBAL"
    get_who $P5101, $P5102
    set $P5100, $P5101["$HLL"]
    unless_null $P5100, fallback1320
    nqp_get_sc_object $P5103, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5100, $P5103
  fallback1320:
    unless_null $P5100, vivi_2901321
    die "Contextual $*HLL not found"
    box $P5104, "Contextual $*HLL not found"
    set $P5100, $P5104
  vivi_2901321:
    set $P5099, $P5100
  fallback1319:
    set $P112, $P5099
    set $P5106, $P112
    pop_eh 
    goto skip_handler_2911322
  catch_handler_2921323:
    .get_results ($P5105) 
    set $I10001, 1
    set $P5105["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5105
    pop_upto_eh $P5105
    pop_eh 
    set $P5106, $P10001
    goto skip_handler_2911322
  skip_handler_2911322:
    set $P5109, $P112
    unless $P112 goto if293_end1325 
.annotate 'line', 2346
.annotate 'line', 2347
    find_lex $P5107, "$sub"
    $P5108 = $P5107."hll"($P112)
    set $P5109, $P5108
  if293_end1325:
.annotate 'line', 2351
    find_lex $P5110, "$sub"
    $P5111 = $P5110."push"($P108)
    .const 'Sub' $P5112 = 'cuid_274_1346277600.974' 
    capture_lex $P5112
    $P5113 = $P5112()
.annotate 'line', 2368
    find_lex $P5114, "$sub"
    find_lex $P5115, "$node"
    $P5116 = $P5115."cuid"()
    $P5117 = $P5114."subid"($P5116)
.annotate 'line', 2369
    $P5118 = $P105."outer"()
    nqp_get_sc_object $P5119, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    type_check $I5001, $P5118, $P5119
    unless $I5001 goto if298_else1333 
.annotate 'line', 2370
    find_lex $P5120, "$sub"
    find_lex $P5122, "self"
    nqp_decontainerize $P5121, $P5122
    $P5123 = $P105."outer"()
    $P5124 = $P5123."qast"()
    $P5125 = $P5124."cuid"()
    $P5126 = $P5121."escape"($P5125)
    set $S5003, $P5126
    concat $S5002, ":anon :lex :outer(", $S5003
    concat $S5001, $S5002, ")"
    $P5127 = $P5120."pirflags"($S5001)
    set $P5130, $P5127
    goto if298_end1334
  if298_else1333:
.annotate 'line', 2372
.annotate 'line', 2373
    find_lex $P5128, "$sub"
    $P5129 = $P5128."pirflags"(":anon :lex")
    set $P5130, $P5129
  if298_end1334:
.annotate 'line', 2375
    find_lex $P5131, "$sub"
    find_lex $P5132, "$node"
    $P5133 = $P5132."name"()
    $P5134 = $P5131."name"($P5133)
.annotate 'line', 2378
    $P5135 = $P105."loadlibs"()
    set $P113, $P5135
    set $P5138, $P113
    unless $P113 goto if299_end1336 
.annotate 'line', 2379
    find_lex $P5136, "$sub"
    $P5137 = $P5136."loadlibs"($P113)
    set $P5138, $P5137
  if299_end1336:
    find_dynamic_lex $P5139, "$*QAST_BLOCK_NO_CLOSE"
    unless_null $P5139, fallback1339
    get_hll_global $P5142, "GLOBAL"
    get_who $P5141, $P5142
    set $P5140, $P5141["$QAST_BLOCK_NO_CLOSE"]
    unless_null $P5140, fallback1340
    nqp_get_sc_object $P5143, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5140, $P5143
  fallback1340:
    unless_null $P5140, vivi_3011341
    die "Contextual $*QAST_BLOCK_NO_CLOSE not found"
    box $P5144, "Contextual $*QAST_BLOCK_NO_CLOSE not found"
    set $P5140, $P5144
  vivi_3011341:
    set $P5139, $P5140
  fallback1339:
    set $P5147, $P5139
    if $P5139 goto unless300_end1338 
.annotate 'line', 2382
.annotate 'line', 2383
    find_lex $P5145, "$sub"
    $P5146 = $P5145."close_sub"()
    set $P5147, $P5146
  unless300_end1338:
    .return ($P5147) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1346277600.974") :anon :lex :outer("cuid_261_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2224
    .const 'Sub' $P5024 = 'cuid_259_1346277600.974' 
    capture_lex $P5024 
    .lex "$*BLOCK", $P101 
    .lex "@*INNERS", $P102 
    .lex "$*HAVE_IMM_ARG", $P103 
    .lex "$*QAST_BLOCK_NO_CLOSE", $P104 
    .lex "$err", $P105 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    find_lex $P5006, "$block"
    set $P101, $P5006
    find_lex $P5007, "@inners"
    set $P102, $P5007
    box $P5008, 0
    set $P103, $P5008
    box $P5009, 0
    set $P104, $P5009
    new $P5018, 'ExceptionHandler'
    set_label $P5018, catch_handler_2741249
    $P5018.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5018
.annotate 'line', 2230
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_2721247
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
.annotate 'line', 2231
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$node"
    $P5013 = $P5012."list"()
    $P5014 = $P5010."compile_all_the_stmts"($P5013)
    store_lex "$stmts", $P5014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_2711246
  catch_handler_2721247:
    .get_results ($P5016) 
    .const 'Sub' $P10001 = 'cuid_259_1346277600.974' 
    capture_lex $P10001
    $P10002 = $P10001($P5016)
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10003
    goto skip_handler_2711246
  skip_handler_2711246:
    set $P5019, $P5017
    pop_eh 
    goto skip_handler_2731248
  catch_handler_2741249:
    .get_results ($P5018) 
    set $I10001, 1
    set $P5018["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5018
    pop_upto_eh $P5018
    pop_eh 
    set $P5019, $P10001
    goto skip_handler_2731248
  skip_handler_2731248:
    set $P5023, $P105
    unless $P105 goto if275_end1251 
.annotate 'line', 2234
.annotate 'line', 2235
    find_lex $P5020, "$node"
    $P5021 = $P5020."name"()
    set $S5003, $P5021
    concat $S5002, "Error while compiling block ", $S5003
    set $S5005, $P105
    concat $S5004, ": ", $S5005
    concat $S5001, $S5002, $S5004
    box $P5022, $S5001
    die $P5022
    set $P5023, $P5022
  if275_end1251:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1346277600.974") :anon :lex :outer("cuid_260_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2232
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    store_lex "$err", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_263_1346277600.974") :anon :lex :outer("cuid_261_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2247
    .const 'Sub' $P5034 = 'cuid_262_1346277600.974' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_264_1346277600.974' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_265_1346277600.974' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_267_1346277600.974' 
    capture_lex $P5034 
    .lex "@pos_params", $P101 
    .lex "@named_params", $P102 
    .lex "$slurpy_pos", $P103 
    .lex "$slurpy_named", $P104 
    .lex "@sorted_params", $P105 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
.annotate 'line', 2252
    find_lex $P5009, "$block"
    $P5010 = $P5009."params"()
    set $P5006, $P5010
    iter $P5008, $P5010
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers1266
    push_eh $P5012
  for_next1267:
    unless $P5008, for_done1269
    shift $P5013, $P5008
  for_redo1268:
    .const 'Sub' $P5011 = 'cuid_262_1346277600.974' 
    capture_lex $P5011
    $P5006 = $P5011($P5013)
    goto for_next1267
  for_handlers1266:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next1267
    eq $P5012, .CONTROL_LOOP_REDO, for_redo1268
  for_done1269:
    pop_eh 
    set $P5014, $P101
    iter $P5016, $P101
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers1270
    push_eh $P5018
  for_next1271:
    unless $P5016, for_done1273
    shift $P5019, $P5016
  for_redo1272:
    .const 'Sub' $P5017 = 'cuid_264_1346277600.974' 
    capture_lex $P5017
    $P5014 = $P5017($P5019)
    goto for_next1271
  for_handlers1270:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next1271
    eq $P5018, .CONTROL_LOOP_REDO, for_redo1272
  for_done1273:
    pop_eh 
    set $P5020, $P103
    unless $P103 goto if282_end1275 
    push $P105, $P103
    set $P5020, $P105
  if282_end1275:
    set $P5021, $P102
    iter $P5023, $P102
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, for_handlers1276
    push_eh $P5025
  for_next1277:
    unless $P5023, for_done1279
    shift $P5026, $P5023
  for_redo1278:
    .const 'Sub' $P5024 = 'cuid_265_1346277600.974' 
    capture_lex $P5024
    $P5021 = $P5024($P5026)
    goto for_next1277
  for_handlers1276:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, for_next1277
    eq $P5025, .CONTROL_LOOP_REDO, for_redo1278
  for_done1279:
    pop_eh 
    set $P5027, $P104
    unless $P104 goto if283_end1281 
    push $P105, $P104
    set $P5027, $P105
  if283_end1281:
    set $P5028, $P105
    iter $P5030, $P105
    new $P5032, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5032, for_handlers1295
    push_eh $P5032
  for_next1296:
    unless $P5030, for_done1298
    shift $P5033, $P5030
  for_redo1297:
    .const 'Sub' $P5031 = 'cuid_267_1346277600.974' 
    capture_lex $P5031
    $P5028 = $P5031($P5033)
    goto for_next1296
  for_handlers1295:
    .get_results ($P5032)
    pop_upto_eh $P5032
    getattribute $P5032, $P5032, 'type'
    eq $P5032, .CONTROL_LOOP_NEXT, for_next1296
    eq $P5032, .CONTROL_LOOP_REDO, for_redo1297
  for_done1298:
    pop_eh 
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1346277600.974") :anon :lex :outer("cuid_263_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2252
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2253
    $P5001 = _lex_param_0."slurpy"()
    set $P5003, $P5001
    unless $P5001 goto if279_end1261 
    $P5002 = _lex_param_0."named"()
    set $P5003, $P5002
  if279_end1261:
    unless $P5003 goto if278_else1258 
    store_lex "$slurpy_named", _lex_param_0
    set $P5010, _lex_param_0
    goto if278_end1259
  if278_else1258:
.annotate 'line', 2256
    $P5004 = _lex_param_0."slurpy"()
    unless $P5004 goto if280_else1262 
    store_lex "$slurpy_pos", _lex_param_0
    set $P5009, _lex_param_0
    goto if280_end1263
  if280_else1262:
.annotate 'line', 2259
    $P5005 = _lex_param_0."named"()
    unless $P5005 goto if281_else1264 
    find_lex $P5006, "@named_params"
    push $P5006, _lex_param_0
    set $P5008, $P5006
    goto if281_end1265
  if281_else1264:
.annotate 'line', 2262
    find_lex $P5007, "@pos_params"
    push $P5007, _lex_param_0
    set $P5008, $P5007
  if281_end1265:
    set $P5009, $P5008
  if280_end1263:
    set $P5010, $P5009
  if278_end1259:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_264_1346277600.974") :anon :lex :outer("cuid_263_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@sorted_params"
    push $P5001, _lex_param_0
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_265_1346277600.974") :anon :lex :outer("cuid_263_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@sorted_params"
    push $P5001, _lex_param_0
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_267_1346277600.974") :anon :lex :outer("cuid_263_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2271
    .param pmc _lex_param_0 
    .const 'Sub' $P5035 = 'cuid_266_1346277600.974' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_268_1346277600.974' 
    capture_lex $P5035 
    .lex "@param", $P101 
    .lex "$reg_type", $P102 
    .lex "$_", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, ".param"
    push $P5003, $P5004
    set $P101, $P5003
.annotate 'line', 2275
    $P5005 = _lex_param_0."scope"()
    set $S5001, $P5005
    iseq $I5001, $S5001, "local"
    unless $I5001 goto if284_else1282 
.annotate 'line', 2276
    find_lex $P5006, "$block"
    $P5007 = _lex_param_0."name"()
    $P5008 = $P5006."local_type_long"($P5007)
    push $P101, $P5008
.annotate 'line', 2277
    $P5009 = _lex_param_0."name"()
    push $P101, $P5009
.annotate 'line', 2278
    find_lex $P5010, "$block"
    $P5011 = _lex_param_0."name"()
    $P5012 = $P5010."local_type"($P5011)
    set $P102, $P5012
    set $P5015, $P102
    goto if284_end1283
  if284_else1282:
    .const 'Sub' $P5013 = 'cuid_266_1346277600.974' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if284_end1283:
.annotate 'line', 2288
    $P5016 = _lex_param_0."slurpy"()
    unless $P5016 goto if285_else1284 
    box $P5017, ":slurpy"
    push $P101, $P5017
.annotate 'line', 2290
    $P5018 = _lex_param_0."named"()
    set $P5020, $P5018
    unless $P5018 goto if286_end1287 
    box $P5019, ":named"
    push $P101, $P5019
    set $P5020, $P101
  if286_end1287:
    set $P5028, $P5020
    goto if285_end1285
  if285_else1284:
.annotate 'line', 2294
    $P5021 = _lex_param_0."named"()
    set $P5027, $P5021
    unless $P5021 goto if287_end1289 
.annotate 'line', 2295
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    $P5024 = _lex_param_0."named"()
    $P5025 = $P5022."escape"($P5024)
    set $S5004, $P5025
    concat $S5003, ":named(", $S5004
    concat $S5002, $S5003, ")"
    box $P5026, $S5002
    push $P101, $P5026
    set $P5027, $P101
  if287_end1289:
    set $P5028, $P5027
  if285_end1285:
.annotate 'line', 2298
    $P5029 = _lex_param_0."default"()
    unless $P5029 goto if288_else1290 
    .const 'Sub' $P5030 = 'cuid_268_1346277600.974' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5034, $P5031
    goto if288_end1291
  if288_else1290:
.annotate 'line', 2315
.annotate 'line', 2316
    find_lex $P5032, "$decls"
    join $S5005, " ", $P101
    $P5033 = $P5032."push_pirop"($S5005)
    set $P5034, $P5033
  if288_end1291:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_266_1346277600.974") :anon :lex :outer("cuid_267_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2280
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2281
    find_lex $P5002, "$block"
    find_lex $P5003, "$_"
    $P5004 = $P5003."name"()
    $P5005 = $P5002."lex_reg"($P5004)
    set $P101, $P5005
    find_lex $P5006, "@param"
.annotate 'line', 2282
    find_lex $P5007, "$block"
    find_lex $P5008, "$_"
    $P5009 = $P5008."name"()
    $P5010 = $P5007."lexical_type_long"($P5009)
    push $P5006, $P5010
    find_lex $P5011, "@param"
    push $P5011, $P101
    find_lex $P5012, "%lex_params"
.annotate 'line', 2284
    find_lex $P5013, "$_"
    $P5014 = $P5013."name"()
    set $S5001, $P5014
    set $P5012[$S5001], $P101
.annotate 'line', 2285
    find_lex $P5015, "$block"
    find_lex $P5016, "$_"
    $P5017 = $P5016."name"()
    $P5018 = $P5015."lexical_type"($P5017)
    store_lex "$reg_type", $P5018
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_268_1346277600.974") :anon :lex :outer("cuid_267_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2298
    .lex "$o_flag", $P101 
    .lex "$lbl", $P102 
    .lex "$def", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    find_lex $P5004, "@param"
    box $P5005, ":optional"
    push $P5004, $P5005
.annotate 'line', 2301
    find_lex $P5006, "$decls"
    find_lex $P5007, "@param"
    join $S5001, " ", $P5007
    $P5008 = $P5006."push_pirop"($S5001)
.annotate 'line', 2304
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Node"]
    unless_null $P5009, fallback1292
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1292:
    $P5014 = $P5009."unique"("haz_param")
    set $P101, $P5014
.annotate 'line', 2305
    find_lex $P5015, "$decls"
    set $S5004, $P101
    concat $S5003, ".param int ", $S5004
    concat $S5002, $S5003, " :opt_flag"
    $P5016 = $P5015."push_pirop"($S5002)
.annotate 'line', 2308
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "PIRT"
    get_who $P5018, $P5019
    set $P5017, $P5018["Label"]
    unless_null $P5017, fallback1293
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1293:
    $P5022 = $P5017."new"("default" :named("name"))
    set $P102, $P5022
.annotate 'line', 2309
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5025, "$_"
    $P5026 = $P5025."default"()
    find_lex $P5027, "$reg_type"
    $P5028 = $P5023."as_post"($P5026, $P5027 :named("want"))
    set $P103, $P5028
.annotate 'line', 2310
    find_lex $P5029, "$opts"
    $P5030 = $P5029."push_pirop"("if", $P101, $P102)
.annotate 'line', 2311
    find_lex $P5031, "$opts"
    $P5032 = $P5031."push"($P103)
.annotate 'line', 2312
    find_lex $P5033, "$opts"
    find_lex $P5035, "@param"
    set $P5034, $P5035[2]
    unless_null $P5034, fallback1294
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5036
  fallback1294:
    $P5037 = $P103."result"()
    $P5038 = $P5033."push_pirop"("set", $P5034, $P5037)
.annotate 'line', 2313
    find_lex $P5039, "$opts"
    $P5040 = $P5039."push"($P102)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_269_1346277600.974") :anon :lex :outer("cuid_261_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2323
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2324
    find_lex $P5001, "$decls"
    find_lex $P5002, "$cap_lex_reg"
    set $S5005, $P5002
    concat $S5004, ".const 'Sub' ", $S5005
    concat $S5003, $S5004, " = '"
    set $S5006, _lex_param_0
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "'"
    $P5003 = $P5001."push_pirop"($S5001)
.annotate 'line', 2325
    find_lex $P5004, "$decls"
    find_lex $P5005, "$cap_lex_reg"
    set $S5008, $P5005
    concat $S5007, "capture_lex ", $S5008
    $P5006 = $P5004."push_pirop"($S5007)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_270_1346277600.974") :anon :lex :outer("cuid_261_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2332
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2333
    find_lex $P5001, "$decls"
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = _lex_param_0."name"()
    $P5005 = $P5002."escape"($P5004)
    set $S5004, $P5005
    concat $S5003, ".lex ", $S5004
    concat $S5002, $S5003, ", "
    find_lex $P5006, "$block"
    $P5007 = _lex_param_0."name"()
    $P5008 = $P5006."lex_reg"($P5007)
    set $S5005, $P5008
    concat $S5001, $S5002, $S5005
    $P5009 = $P5001."push_pirop"($S5001)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_271_1346277600.974") :anon :lex :outer("cuid_261_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2335
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2336
    find_lex $P5001, "$decls"
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = _lex_param_0."key"()
    $P5005 = $P5002."escape"($P5004)
    set $S5004, $P5005
    concat $S5003, ".lex ", $S5004
    concat $S5002, $S5003, ", "
    $P5006 = _lex_param_0."value"()
    set $S5005, $P5006
    concat $S5001, $S5002, $S5005
    $P5007 = $P5001."push_pirop"($S5001)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_272_1346277600.974") :anon :lex :outer("cuid_261_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2338
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2339
    find_lex $P5001, "$decls"
    find_lex $P5002, "$block"
    $P5003 = _lex_param_0."name"()
    $P5004 = $P5002."local_type_long"($P5003)
    set $S5004, $P5004
    concat $S5003, ".local ", $S5004
    concat $S5002, $S5003, " "
    $P5005 = _lex_param_0."name"()
    set $S5005, $P5005
    concat $S5001, $S5002, $S5005
    $P5006 = $P5001."push_pirop"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_274_1346277600.974") :anon :lex :outer("cuid_261_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2352
    .const 'Sub' $P5028 = 'cuid_273_1346277600.974' 
    capture_lex $P5028 
    .lex "$*BLOCK", $P101 
    .lex "$ret_type", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_lex $P5003, "$block"
    set $P101, $P5003
    box $P5004, "P"
    set $P102, $P5004
    new $P5010, 'ExceptionHandler'
    set_label $P5010, catch_handler_2951327
    $P5010.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5010
.annotate 'line', 2355
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$stmts"
    $P5008 = $P5007."result"()
    $P5009 = $P5005."infer_type"($P5008)
    set $P102, $P5009
    set $P5011, $P102
    pop_eh 
    goto skip_handler_2941326
  catch_handler_2951327:
    .get_results ($P5010) 
    set $I10001, 1
    set $P5010["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5010
    pop_upto_eh $P5010
    pop_eh 
    set $P5011, $P10001
    goto skip_handler_2941326
  skip_handler_2941326:
    set $S5001, $P102
    isne $I5001, $S5001, "P"
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto if297_end1331 
    find_lex $P5013, "%hll_force_return_boxing"
    find_lex $P5014, "$hll"
    set $S5002, $P5014
    set $P5012, $P5013[$S5002]
    unless_null $P5012, fallback1332
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5015
  fallback1332:
    set $P5016, $P5012
  if297_end1331:
    unless $P5016 goto if296_else1328 
    .const 'Sub' $P5018 = 'cuid_273_1346277600.974' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5027, $P5019
    goto if296_end1329
  if296_else1328:
.annotate 'line', 2361
.annotate 'line', 2362
    find_lex $P5020, "$sub"
    find_lex $P5021, "$stmts"
    $P5022 = $P5020."push"($P5021)
.annotate 'line', 2363
    find_lex $P5023, "$sub"
    find_lex $P5024, "$stmts"
    $P5025 = $P5024."result"()
    set $S5005, $P5025
    concat $S5004, ".return (", $S5005
    concat $S5003, $S5004, ")"
    $P5026 = $P5023."push_pirop"($S5003)
    set $P5027, $P5026
  if296_end1329:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_273_1346277600.974") :anon :lex :outer("cuid_274_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2356
    .lex "$boxed", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2357
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$stmts"
    $P5005 = $P5002."coerce"($P5004, "P")
    set $P101, $P5005
.annotate 'line', 2358
    find_lex $P5006, "$sub"
    $P5007 = $P5006."push"($P101)
.annotate 'line', 2359
    find_lex $P5008, "$sub"
    $P5009 = $P101."result"()
    set $S5003, $P5009
    concat $S5002, ".return (", $S5003
    concat $S5001, $S5002, ")"
    $P5010 = $P5008."push_pirop"($S5001)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_276_1346277600.974") :anon :lex :outer("cuid_105_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2397
    .const 'Sub' $P5058 = 'cuid_275_1346277600.974' 
    capture_lex $P5058 
    .lex "$breg", $P101 
    .lex "$rtype", $P102 
    .lex "$rreg", $P103 
    .lex "$im_arg", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_3091356
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
.annotate 'line', 2399
    find_dynamic_lex $P5005, "@*INNERS"
    unless_null $P5005, fallback1352
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["@INNERS"]
    unless_null $P5006, fallback1353
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'ResizablePMCArray'
    set $P5009["@INNERS"], $P5011
    set $P5006, $P5011
  fallback1353:
    unless_null $P5006, vivi_3071354
    die "Contextual @*INNERS not found"
    box $P5012, "Contextual @*INNERS not found"
    set $P5006, $P5012
  vivi_3071354:
    set $P5005, $P5006
  fallback1352:
    find_lex $P5013, "$node"
    $P5014 = $P5013."cuid"()
    $P5015 = $P5005."push"($P5014)
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_3081355
  catch_handler_3091356:
    .get_results ($P5016) 
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10001
    goto skip_handler_3081355
  skip_handler_3081355:
.annotate 'line', 2400
    find_dynamic_lex $P5018, "$*REGALLOC"
    unless_null $P5018, fallback1357
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["$REGALLOC"]
    unless_null $P5019, fallback1358
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5022
  fallback1358:
    unless_null $P5019, vivi_3101359
    die "Contextual $*REGALLOC not found"
    box $P5023, "Contextual $*REGALLOC not found"
    set $P5019, $P5023
  vivi_3101359:
    set $P5018, $P5019
  fallback1357:
    $P5024 = $P5018."fresh_p"()
    set $P101, $P5024
.annotate 'line', 2401
    find_lex $P5025, "$ops"
    set $S5005, $P101
    concat $S5004, ".const 'Sub' ", $S5005
    concat $S5003, $S5004, " = '"
    find_lex $P5026, "$node"
    $P5027 = $P5026."cuid"()
    set $S5006, $P5027
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "'"
    $P5028 = $P5025."push_pirop"($S5001)
.annotate 'line', 2402
    find_lex $P5029, "$ops"
    $P5030 = $P5029."push_pirop"("capture_lex", $P101)
.annotate 'line', 2405
    find_lex $P5031, "$node"
    $P5032 = $P5031."returns"()
    $P5033 = "&type_to_register_type"($P5032)
    set $S5008, $P5033
    downcase $S5007, $S5008
    box $P5034, $S5007
    set $P102, $P5034
.annotate 'line', 2406
    find_dynamic_lex $P5035, "$*REGALLOC"
    unless_null $P5035, fallback1360
    get_hll_global $P5038, "GLOBAL"
    get_who $P5037, $P5038
    set $P5036, $P5037["$REGALLOC"]
    unless_null $P5036, fallback1361
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5036, $P5039
  fallback1361:
    unless_null $P5036, vivi_3111362
    die "Contextual $*REGALLOC not found"
    box $P5040, "Contextual $*REGALLOC not found"
    set $P5036, $P5040
  vivi_3111362:
    set $P5035, $P5036
  fallback1360:
    set $S5010, $P102
    concat $S5009, "fresh_", $S5010
    $P5041 = $P5035.$S5009()
    set $P103, $P5041
    box $P5042, 0
    set $P104, $P5042
    new $P5049, 'ExceptionHandler'
    set_label $P5049, catch_handler_3141367
    $P5049.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5049
    find_dynamic_lex $P5043, "$*HAVE_IMM_ARG"
    unless_null $P5043, fallback1363
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["$HAVE_IMM_ARG"]
    unless_null $P5044, fallback1364
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5044, $P5047
  fallback1364:
    unless_null $P5044, vivi_3121365
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P5048, "Contextual $*HAVE_IMM_ARG not found"
    set $P5044, $P5048
  vivi_3121365:
    set $P5043, $P5044
  fallback1363:
    set $P104, $P5043
    set $P5050, $P104
    pop_eh 
    goto skip_handler_3131366
  catch_handler_3141367:
    .get_results ($P5049) 
    set $I10001, 1
    set $P5049["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5049
    pop_upto_eh $P5049
    pop_eh 
    set $P5050, $P10001
    goto skip_handler_3131366
  skip_handler_3131366:
    unless $P104 goto if315_else1368 
.annotate 'line', 2412
    .const 'Sub' $P5052 = 'cuid_275_1346277600.974' 
    capture_lex $P5052
    newclosure $P5051, $P5052
    store_dynamic_lex "$*IMM_ARG", $P5051
    set $P5055, $P5051
    goto if315_end1369
  if315_else1368:
.annotate 'line', 2417
.annotate 'line', 2418
    find_lex $P5053, "$ops"
    $P5054 = $P5053."push_pirop"("call", $P101, $P103 :named("result"))
    set $P5055, $P5054
  if315_end1369:
.annotate 'line', 2420
    find_lex $P5056, "$ops"
    $P5057 = $P5056."result"($P103)
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_275_1346277600.974") :anon :lex :outer("cuid_276_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2413
    .param pmc _lex_param_0 
    .lex "$arg", _lex_param_0 
.annotate 'line', 2414
    find_lex $P5001, "$ops"
    find_lex $P5002, "$breg"
    find_lex $P5003, "$rreg"
    $P5004 = $P5001."push_pirop"("call", $P5002, _lex_param_0, $P5003 :named("result"))
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_277_1346277600.974") :anon :lex :outer("cuid_105_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2422
    .lex "$breg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5013, 'ExceptionHandler'
    set_label $P5013, catch_handler_3201378
    $P5013.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5013
.annotate 'line', 2424
    find_dynamic_lex $P5002, "@*INNERS"
    unless_null $P5002, fallback1374
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["@INNERS"]
    unless_null $P5003, fallback1375
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P5006["@INNERS"], $P5008
    set $P5003, $P5008
  fallback1375:
    unless_null $P5003, vivi_3181376
    die "Contextual @*INNERS not found"
    box $P5009, "Contextual @*INNERS not found"
    set $P5003, $P5009
  vivi_3181376:
    set $P5002, $P5003
  fallback1374:
    find_lex $P5010, "$node"
    $P5011 = $P5010."cuid"()
    $P5012 = $P5002."push"($P5011)
    set $P5014, $P5012
    pop_eh 
    goto skip_handler_3191377
  catch_handler_3201378:
    .get_results ($P5013) 
    set $I10001, 1
    set $P5013["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5013
    pop_upto_eh $P5013
    pop_eh 
    set $P5014, $P10001
    goto skip_handler_3191377
  skip_handler_3191377:
.annotate 'line', 2425
    find_dynamic_lex $P5015, "$*REGALLOC"
    unless_null $P5015, fallback1379
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["$REGALLOC"]
    unless_null $P5016, fallback1380
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5019
  fallback1380:
    unless_null $P5016, vivi_3211381
    die "Contextual $*REGALLOC not found"
    box $P5020, "Contextual $*REGALLOC not found"
    set $P5016, $P5020
  vivi_3211381:
    set $P5015, $P5016
  fallback1379:
    $P5021 = $P5015."fresh_p"()
    set $P101, $P5021
.annotate 'line', 2426
    find_lex $P5022, "$ops"
    set $S5005, $P101
    concat $S5004, ".const 'Sub' ", $S5005
    concat $S5003, $S5004, " = '"
    find_lex $P5023, "$node"
    $P5024 = $P5023."cuid"()
    set $S5006, $P5024
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "'"
    $P5025 = $P5022."push_pirop"($S5001)
.annotate 'line', 2427
    find_lex $P5026, "$ops"
    $P5027 = $P5026."push_pirop"("capture_lex", $P101)
.annotate 'line', 2428
    find_lex $P5028, "$ops"
    $P5029 = $P5028."result"($P101)
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_106_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2433
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_279_1346277600.974' 
    capture_lex $P5006 
    .lex "$sub", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1382
    .lex "RETURN", $P102
    .const 'Sub' $P5002 = 'cuid_279_1346277600.974' 
    capture_lex $P5002
    $P5003 = $P5002()
    find_lex $P5004, "RETURN"
    $P5005 = $P5004($P101)
    goto lexotic_1383
  lexotic_1382:
    .get_results ($P5005)
  lexotic_1383:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_279_1346277600.974") :anon :lex :outer("cuid_106_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2436
    .const 'Sub' $P5067 = 'cuid_278_1346277600.974' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_280_1346277600.974' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_281_1346277600.974' 
    capture_lex $P5067 
    .lex "$*REGALLOC", $P101 
    .lex "$*BLOCKRA", $P102 
    .lex "$*BINDVAL", $P103 
    .lex "$block", $P104 
    .lex "$stmts", $P105 
    .lex "$decls", $P106 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
.annotate 'line', 2438
    nqp_get_sc_object $P5007, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    $P5008 = $P5007."new"()
    set $P101, $P5008
    unless_null $P101, fallback1384
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["$REGALLOC"]
    unless_null $P5009, fallback1385
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback1385:
    unless_null $P5009, vivi_3221386
    die "Contextual $*REGALLOC not found"
    box $P5013, "Contextual $*REGALLOC not found"
    set $P5009, $P5013
  vivi_3221386:
    set $P101, $P5009
  fallback1384:
    set $P102, $P101
    box $P5014, 0
    set $P103, $P5014
.annotate 'line', 2441
    nqp_get_sc_object $P5015, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    find_lex $P5016, "$node"
    $P5017 = $P5015."new"($P5016, 0)
    set $P104, $P5017
    .const 'Sub' $P5018 = 'cuid_278_1346277600.974' 
    capture_lex $P5018
    $P5019 = $P5018()
.annotate 'line', 2452
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "PIRT"
    get_who $P5021, $P5022
    set $P5020, $P5021["Ops"]
    unless_null $P5020, fallback1387
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5024
  fallback1387:
    $P5025 = $P5020."new"()
    set $P106, $P5025
.annotate 'line', 2453
    $P5029 = $P104."lexicals"()
    set $P5026, $P5029
    iter $P5028, $P5029
    new $P5031, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5031, for_handlers1388
    push_eh $P5031
  for_next1389:
    unless $P5028, for_done1391
    shift $P5032, $P5028
  for_redo1390:
    .const 'Sub' $P5030 = 'cuid_280_1346277600.974' 
    capture_lex $P5030
    $P5026 = $P5030($P5032)
    goto for_next1389
  for_handlers1388:
    .get_results ($P5031)
    pop_upto_eh $P5031
    getattribute $P5031, $P5031, 'type'
    eq $P5031, .CONTROL_LOOP_NEXT, for_next1389
    eq $P5031, .CONTROL_LOOP_REDO, for_redo1390
  for_done1391:
    pop_eh 
.annotate 'line', 2456
    $P5036 = $P104."locals"()
    set $P5033, $P5036
    iter $P5035, $P5036
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, for_handlers1392
    push_eh $P5038
  for_next1393:
    unless $P5035, for_done1395
    shift $P5039, $P5035
  for_redo1394:
    .const 'Sub' $P5037 = 'cuid_281_1346277600.974' 
    capture_lex $P5037
    $P5033 = $P5037($P5039)
    goto for_next1393
  for_handlers1392:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, for_next1393
    eq $P5038, .CONTROL_LOOP_REDO, for_redo1394
  for_done1395:
    pop_eh 
.annotate 'line', 2461
    get_hll_global $P5043, "GLOBAL"
    nqp_get_package_through_who $P5042, $P5043, "PIRT"
    get_who $P5041, $P5042
    set $P5040, $P5041["Sub"]
    unless_null $P5040, fallback1396
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5044
  fallback1396:
    $P5045 = $P5040."new"()
    store_lex "$sub", $P5045
.annotate 'line', 2462
    find_lex $P5046, "$sub"
    $P5047 = $P5046."push"($P106)
.annotate 'line', 2463
    find_lex $P5048, "$sub"
    $P5049 = $P5048."push"($P105)
.annotate 'line', 2464
    find_lex $P5050, "$sub"
    $P5051 = $P105."result"()
    set $S5003, $P5051
    concat $S5002, ".return (", $S5003
    concat $S5001, $S5002, ")"
    $P5052 = $P5050."push_pirop"($S5001)
.annotate 'line', 2468
    find_lex $P5053, "$sub"
    find_lex $P5054, "$node"
    $P5055 = $P5054."name"()
    $P5056 = $P5053."name"($P5055)
.annotate 'line', 2469
    find_lex $P5057, "$sub"
    find_lex $P5058, "$node"
    $P5059 = $P5058."cuid"()
    $P5060 = $P5057."subid"($P5059)
.annotate 'line', 2470
    find_lex $P5061, "$sub"
    new $P5062, 'ResizablePMCArray'
    box $P5063, "Sub"
    push $P5062, $P5063
    $P5064 = $P5061."namespace"($P5062)
.annotate 'line', 2471
    find_lex $P5065, "$sub"
    $P5066 = $P5065."hll"("nqp")
    .return ($P5066) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_278_1346277600.974") :anon :lex :outer("cuid_279_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2445
    .lex "$*BLOCK", $P101 
    .lex "$*HLL", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_lex $P5003, "$block"
    set $P101, $P5003
    box $P5004, "nqp"
    set $P102, $P5004
.annotate 'line', 2448
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$node"
    $P5008 = $P5007."list"()
    $P5009 = $P5005."compile_all_the_stmts"($P5008)
    store_lex "$stmts", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_280_1346277600.974") :anon :lex :outer("cuid_279_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2453
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2454
    find_lex $P5001, "$decls"
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = _lex_param_0."name"()
    $P5005 = $P5002."escape"($P5004)
    set $S5004, $P5005
    concat $S5003, ".lex ", $S5004
    concat $S5002, $S5003, ", "
    find_lex $P5006, "$block"
    $P5007 = _lex_param_0."name"()
    $P5008 = $P5006."lex_reg"($P5007)
    set $S5005, $P5008
    concat $S5001, $S5002, $S5005
    $P5009 = $P5001."push_pirop"($S5001)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_281_1346277600.974") :anon :lex :outer("cuid_279_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2456
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2457
    find_lex $P5001, "$decls"
    find_lex $P5002, "$block"
    $P5003 = _lex_param_0."name"()
    $P5004 = $P5002."local_type_long"($P5003)
    set $S5004, $P5004
    concat $S5003, ".local ", $S5004
    concat $S5002, $S5003, " "
    $P5005 = _lex_param_0."name"()
    set $S5005, $P5005
    concat $S5001, $S5002, $S5005
    $P5006 = $P5001."push_pirop"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_107_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2477
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2478
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = _lex_param_1."list"()
    $P5003 = _lex_param_1."resultchild"()
    $P5004 = _lex_param_1."node"()
    $P5005 = $P5001."compile_all_the_stmts"($P5002, $P5003, $P5004 :named("node"))
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_108_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2481
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5010 = 'cuid_282_1346277600.974' 
    capture_lex $P5010 
    .lex "$orig_reg", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback1397
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback1398
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1398:
    unless_null $P5003, vivi_3231399
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_3231399:
    set $P5002, $P5003
  fallback1397:
    set $P101, $P5002
    .const 'Sub' $P5008 = 'cuid_282_1346277600.974' 
    capture_lex $P5008
    $P5009 = $P5008()
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_282_1346277600.974") :anon :lex :outer("cuid_108_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2483
    .lex "$*REGALLOC", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2484
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    find_lex $P5003, "$orig_reg"
    $P5004 = $P5002."new"($P5003)
    set $P101, $P5004
.annotate 'line', 2485
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$node"
    $P5008 = $P5007."list"()
    find_lex $P5009, "$node"
    $P5010 = $P5009."resultchild"()
    find_lex $P5011, "$node"
    $P5012 = $P5011."node"()
    $P5013 = $P5005."compile_all_the_stmts"($P5008, $P5010, $P5012 :named("node"))
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "compile_all_the_stmts" :subid("cuid_109_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2489
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_3 :named("node") :optional 
    .param int haz_param_16 :opt_flag 
    .const 'Sub' $P5029 = 'cuid_283_1346277600.974' 
    capture_lex $P5029 
    if haz_param_15, default1425
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5027
  default1425:
    if haz_param_16, default1426
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_3, $P5028
  default1426:
    .lex "$last", $P101 
    .lex "$ops", $P102 
    .lex "$i", $P103 
    .lex "$n", $P104 
    .lex "self", _lex_param_0 
    .lex "@stmts", _lex_param_1 
    .lex "$resultchild", _lex_param_2 
    .lex "$node", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
.annotate 'line', 2491
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "PIRT"
    get_who $P5006, $P5007
    set $P5005, $P5006["Ops"]
    unless_null $P5005, fallback1400
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5009
  fallback1400:
    $P5010 = $P5005."new"()
    set $P102, $P5010
    set $P5012, _lex_param_3
    unless _lex_param_3 goto if324_end1402 
.annotate 'line', 2492
    $P5011 = $P102."node"(_lex_param_3)
    set $P5012, $P5011
  if324_end1402:
    box $P5013, 0
    set $P103, $P5013
    set $N5001, _lex_param_1
    box $P5014, $N5001
    set $P104, $P5014
    set $P5015, _lex_param_1
    iter $P5017, _lex_param_1
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, for_handlers1417
    push_eh $P5019
  for_next1418:
    unless $P5017, for_done1420
    shift $P5020, $P5017
  for_redo1419:
    .const 'Sub' $P5018 = 'cuid_283_1346277600.974' 
    capture_lex $P5018
    $P5015 = $P5018($P5020)
    goto for_next1418
  for_handlers1417:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5019, $P5019, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, for_next1418
    eq $P5019, .CONTROL_LOOP_REDO, for_redo1419
  for_done1420:
    pop_eh 
    set $P5022, $P101
    unless $P101 goto if332_end1424 
    defined $I5002, _lex_param_2
    box $P5021, $I5002
    isfalse $I5001, $P5021
    box $P5023, $I5001
    set $P5022, $P5023
  if332_end1424:
    set $P5026, $P5022
    unless $P5022 goto if331_end1422 
.annotate 'line', 2508
.annotate 'line', 2509
    $P5024 = $P101."result"()
    $P5025 = $P102."result"($P5024)
    set $P5026, $P5025
  if331_end1422:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_283_1346277600.974") :anon :lex :outer("cuid_109_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2495
    .param pmc _lex_param_0 
    .lex "$void", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5002, "$i"
    set $N5002, $P5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5003, "$n"
    set $N5004, $P5003
    islt $I5001, $N5001, $N5004
    box $P5004, $I5001
    set $P101, $P5004
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "QAST"
    get_who $P5006, $P5007
    set $P5005, $P5006["Want"]
    unless_null $P5005, fallback1407
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5009
  fallback1407:
    type_check $I5002, _lex_param_0, $P5005
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if326_end1406 
    set $P5010, $P101
  if326_end1406:
    set $P5013, $P5010
    unless $P5010 goto if325_end1404 
.annotate 'line', 2497
.annotate 'line', 2498
    $P5012 = "&want"(_lex_param_0, "v")
    set _lex_param_0, $P5012
    set $P5013, _lex_param_0
  if325_end1404:
.annotate 'line', 2500
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    $P5016 = $P5014."as_post"(_lex_param_0)
    store_lex "$last", $P5016
    set $P5022, $P101
    unless $P101 goto if328_end1411 
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Var"]
    unless_null $P5017, fallback1412
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1412:
    type_check $I5003, _lex_param_0, $P5017
    box $P5023, $I5003
    set $P5022, $P5023
  if328_end1411:
    set $P5027, $P5022
    if $P5022 goto unless327_end1409 
.annotate 'line', 2501
    find_lex $P5024, "$ops"
    find_lex $P5025, "$last"
    $P5026 = $P5024."push"($P5025)
    set $P5027, $P5026
  unless327_end1409:
    find_lex $P5028, "$resultchild"
    defined $I5004, $P5028
    set $I5006, $I5004
    unless $I5004 goto if330_end1416 
    find_lex $P5029, "$resultchild"
    set $N5005, $P5029
    find_lex $P5030, "$i"
    set $N5006, $P5030
    iseq $I5005, $N5005, $N5006
    set $I5006, $I5005
  if330_end1416:
    box $P5036, $I5006
    set $P5035, $P5036
    unless $I5006 goto if329_end1414 
.annotate 'line', 2503
.annotate 'line', 2504
    find_lex $P5031, "$ops"
    find_lex $P5032, "$last"
    $P5033 = $P5032."result"()
    $P5034 = $P5031."result"($P5033)
    set $P5035, $P5034
  if329_end1414:
    find_lex $P5037, "$i"
    set $N5008, $P5037
    set $N5009, 1
    add $N5007, $N5008, $N5009
    box $P5038, $N5007
    store_lex "$i", $P5038
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "apply_context" :subid("cuid_110_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2514
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$type", _lex_param_2 
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Want"]
    unless_null $P5001, fallback1429
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1429:
    type_check $I5001, _lex_param_1, $P5001
    unless $I5001 goto if333_else1427 
.annotate 'line', 2516
    $P5006 = "&want"(_lex_param_1, _lex_param_2)
    set $P5007, $P5006
    goto if333_end1428
  if333_else1427:
    set $P5007, _lex_param_1
  if333_end1428:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_111_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2531
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_284_1346277600.974' 
    capture_lex $P5028 
    .lex "$hll", $P101 
    .lex "$result", $P102 
    .lex "$err", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    box $P5004, ""
    set $P101, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_3361434
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
    find_dynamic_lex $P5005, "$*HLL"
    unless_null $P5005, fallback1430
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["$HLL"]
    unless_null $P5006, fallback1431
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5009
  fallback1431:
    unless_null $P5006, vivi_3341432
    die "Contextual $*HLL not found"
    box $P5010, "Contextual $*HLL not found"
    set $P5006, $P5010
  vivi_3341432:
    set $P5005, $P5006
  fallback1430:
    set $P101, $P5005
    set $P5012, $P101
    pop_eh 
    goto skip_handler_3351433
  catch_handler_3361434:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_3351433
  skip_handler_3351433:
    new $P5023, 'ExceptionHandler'
    set_label $P5023, catch_handler_3401439
    $P5023.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5023
.annotate 'line', 2536
    new $P5021, 'ExceptionHandler'
    set_label $P5021, catch_handler_3381437
    $P5021.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5021
.annotate 'line', 2537
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Operations"]
    unless_null $P5013, fallback1435
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5017
  fallback1435:
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5013."compile_op"($P5018, $P101, _lex_param_1)
    set $P102, $P5019
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5020
    pop_eh 
    goto skip_handler_3371436
  catch_handler_3381437:
    .get_results ($P5021) 
    .const 'Sub' $P10001 = 'cuid_284_1346277600.974' 
    capture_lex $P10001
    $P10002 = $P10001($P5021)
    set $I10001, 1
    set $P5021["handled"], $I10001
    nqp_get_sc_object $P10003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5021
    pop_upto_eh $P5021
    pop_eh 
    set $P5022, $P10003
    goto skip_handler_3371436
  skip_handler_3371436:
    set $P5024, $P5022
    pop_eh 
    goto skip_handler_3391438
  catch_handler_3401439:
    .get_results ($P5023) 
    set $I10001, 1
    set $P5023["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5023
    pop_upto_eh $P5023
    pop_eh 
    set $P5024, $P10001
    goto skip_handler_3391438
  skip_handler_3391438:
    set $P5027, $P103
    unless $P103 goto if341_end1441 
.annotate 'line', 2540
.annotate 'line', 2541
    $P5025 = _lex_param_1."op"()
    set $S5003, $P5025
    concat $S5002, "Error while compiling op ", $S5003
    set $S5005, $P103
    concat $S5004, ": ", $S5005
    concat $S5001, $S5002, $S5004
    box $P5026, $S5001
    die $P5026
    set $P5027, $P5026
  if341_end1441:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_284_1346277600.974") :anon :lex :outer("cuid_111_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2538
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    store_lex "$err", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_112_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2546
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5044 = 'cuid_286_1346277600.974' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_287_1346277600.974' 
    capture_lex $P5044 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1442
    .lex "RETURN", $P101
.annotate 'line', 2547
    $P5001 = _lex_param_1."supports"("parrot")
    unless $P5001 goto if342_else1444 
.annotate 'line', 2548
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."alternative"("parrot")
    $P5005 = $P5003."as_post"($P5004)
    find_lex $P5002, "RETURN"
    $P5006 = $P5002($P5005)
    set $P5043, $P5006
    goto if342_end1445
  if342_else1444:
.annotate 'line', 2550
    $P5007 = _lex_param_1."supports"("pirop")
    unless $P5007 goto if343_else1446 
.annotate 'line', 2551
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["Operations"]
    unless_null $P5008, fallback1448
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5012
  fallback1448:
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = _lex_param_1."alternative"("pirop")
    $P5015 = _lex_param_1."list"()
    $P5016 = $P5008."compile_pirop"($P5013, $P5014, $P5015)
    set $P5042, $P5016
    goto if343_end1447
  if343_else1446:
.annotate 'line', 2553
    $P5017 = _lex_param_1."supports"("pir")
    unless $P5017 goto if344_else1449 
    .const 'Sub' $P5018 = 'cuid_286_1346277600.974' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5041, $P5019
    goto if344_end1450
  if344_else1449:
.annotate 'line', 2567
    $P5020 = _lex_param_1."supports"("pirconst")
    unless $P5020 goto if348_else1459 
    .const 'Sub' $P5021 = 'cuid_287_1346277600.974' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5040, $P5022
    goto if348_end1460
  if348_else1459:
.annotate 'line', 2574
    $P5023 = _lex_param_1."supports"("loadlibs")
    unless $P5023 goto if350_else1464 
.annotate 'line', 2575
    find_dynamic_lex $P5024, "$*BLOCK"
    unless_null $P5024, fallback1466
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    set $P5025, $P5026["$BLOCK"]
    unless_null $P5025, fallback1467
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5028
  fallback1467:
    unless_null $P5025, vivi_3511468
    die "Contextual $*BLOCK not found"
    box $P5029, "Contextual $*BLOCK not found"
    set $P5025, $P5029
  vivi_3511468:
    set $P5024, $P5025
  fallback1466:
    $P5030 = _lex_param_1."alternative"("loadlibs")
    $P5031 = $P5024."add_loadlibs"($P5030)
.annotate 'line', 2576
    get_hll_global $P5035, "GLOBAL"
    nqp_get_package_through_who $P5034, $P5035, "PIRT"
    get_who $P5033, $P5034
    set $P5032, $P5033["Ops"]
    unless_null $P5032, fallback1469
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5032, $P5036
  fallback1469:
    $P5037 = $P5032."new"()
    set $P5039, $P5037
    goto if350_end1465
  if350_else1464:
.annotate 'line', 2578
    box $P5038, "To compile on the Parrot backend, QAST::VM must have an alternative 'parrot', 'pirop', 'pir' or 'loadlibs'"
    die $P5038
    set $P5039, $P5038
  if350_end1465:
    set $P5040, $P5039
  if348_end1460:
    set $P5041, $P5040
  if344_end1450:
    set $P5042, $P5041
  if343_end1447:
    set $P5043, $P5042
  if342_end1445:
    goto lexotic_1443
  lexotic_1442:
    .get_results ($P5043)
  lexotic_1443:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_286_1346277600.974") :anon :lex :outer("cuid_112_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2553
    .const 'Sub' $P5023 = 'cuid_285_1346277600.974' 
    capture_lex $P5023 
    .lex "$ops", $P101 
    .lex "$pir", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 2554
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1451
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1451:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 2555
    find_lex $P5009, "$node"
    $P5010 = $P5009."node"()
    set $P5014, $P5010
    unless $P5010 goto if345_end1453 
    find_lex $P5011, "$node"
    $P5012 = $P5011."node"()
    $P5013 = $P101."node"($P5012)
    set $P5014, $P5013
  if345_end1453:
.annotate 'line', 2556
    find_lex $P5015, "$node"
    $P5016 = $P5015."alternative"("pir")
    set $P102, $P5016
    set $S5001, $P102
    index $I5002, $S5001, "%r", 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if346_else1454 
    .const 'Sub' $P5017 = 'cuid_285_1346277600.974' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5020, $P5018
    goto if346_end1455
  if346_else1454:
.annotate 'line', 2562
.annotate 'line', 2563
    $P5019 = $P101."push_pirop"("inline", $P102)
    set $P5020, $P5019
  if346_end1455:
    find_lex $P5021, "RETURN"
    $P5022 = $P5021($P101)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_285_1346277600.974") :anon :lex :outer("cuid_286_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2557
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2558
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback1456
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback1457
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1457:
    unless_null $P5003, vivi_3471458
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_3471458:
    set $P5002, $P5003
  fallback1456:
    $P5008 = $P5002."fresh_p"()
    set $P101, $P5008
.annotate 'line', 2559
    find_lex $P5009, "$ops"
    find_lex $P5010, "$pir"
    $P5011 = $P5009."push_pirop"("inline", $P5010, $P101 :named("result"))
.annotate 'line', 2560
    find_lex $P5012, "$ops"
    $P5013 = $P5012."result"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_287_1346277600.974") :anon :lex :outer("cuid_112_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2567
    .lex "$ops", $P101 
    .lex "$name", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 2568
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1461
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1461:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 2569
    find_lex $P5009, "$node"
    $P5010 = $P5009."node"()
    set $P5014, $P5010
    unless $P5010 goto if349_end1463 
    find_lex $P5011, "$node"
    $P5012 = $P5011."node"()
    $P5013 = $P101."node"($P5012)
    set $P5014, $P5013
  if349_end1463:
.annotate 'line', 2570
    find_lex $P5015, "$node"
    $P5016 = $P5015."alternative"("pirconst")
    set $P102, $P5016
.annotate 'line', 2571
    set $S5002, $P102
    concat $S5001, ".", $S5002
    $P5017 = $P101."result"($S5001)
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_113_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2583
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2584
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."compile_var"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_114_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2587
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_289_1346277600.974' 
    capture_lex $P5014 
    .lex "$post", $P101 
    .lex "$result", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 2588
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."compile_var"(_lex_param_1)
    set $P101, $P5004
    find_dynamic_lex $P5005, "$*BINDVAL"
    unless_null $P5005, fallback1472
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["$BINDVAL"]
    unless_null $P5006, fallback1473
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5009
  fallback1473:
    unless_null $P5006, vivi_3531474
    die "Contextual $*BINDVAL not found"
    box $P5010, "Contextual $*BINDVAL not found"
    set $P5006, $P5010
  vivi_3531474:
    set $P5005, $P5006
  fallback1472:
    unless $P5005 goto if352_else1470 
.annotate 'line', 2590
    set $P102, $P101
    set $P5013, $P102
    goto if352_end1471
  if352_else1470:
    .const 'Sub' $P5011 = 'cuid_289_1346277600.974' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if352_end1471:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_289_1346277600.974") :anon :lex :outer("cuid_114_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2593
    .const 'Sub' $P5026 = 'cuid_288_1346277600.974' 
    capture_lex $P5026 
    .lex "$lbl", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2594
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Label"]
    unless_null $P5002, fallback1475
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1475:
    $P5007 = $P5002."new"("fallback" :named("name"))
    set $P101, $P5007
.annotate 'line', 2595
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "PIRT"
    get_who $P5009, $P5010
    set $P5008, $P5009["Ops"]
    unless_null $P5008, fallback1476
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5012
  fallback1476:
    find_lex $P5013, "$post"
    $P5014 = $P5008."new"($P5013 :named("result"))
    store_lex "$result", $P5014
.annotate 'line', 2596
    find_lex $P5015, "$result"
    find_lex $P5016, "$post"
    $P5017 = $P5015."push"($P5016)
.annotate 'line', 2597
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $P5020, "$post"
    $P5021 = $P5018."infer_type"($P5020)
    set $S5002, $P5021
    downcase $S5001, $S5002
    iseq $I5001, $S5001, "p"
    box $P5025, $I5001
    set $P5024, $P5025
    unless $I5001 goto if354_end1478 
    .const 'Sub' $P5022 = 'cuid_288_1346277600.974' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if354_end1478:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_288_1346277600.974") :anon :lex :outer("cuid_289_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2597
    .lex "$fbpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2598
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$node"
    $P5005 = $P5004."fallback"()
    $P5006 = $P5002."as_post"($P5005, "P" :named("want"))
    set $P101, $P5006
.annotate 'line', 2599
    find_lex $P5007, "$result"
    find_lex $P5008, "$post"
    find_lex $P5009, "$lbl"
    $P5010 = $P5007."push_pirop"("unless_null", $P5008, $P5009)
.annotate 'line', 2600
    find_lex $P5011, "$result"
    $P5012 = $P5011."push"($P101)
.annotate 'line', 2601
    find_lex $P5013, "$result"
    find_lex $P5014, "$post"
    $P5015 = $P5013."push_pirop"("set", $P5014, $P101)
.annotate 'line', 2602
    find_lex $P5016, "$result"
    find_lex $P5017, "$lbl"
    $P5018 = $P5016."push"($P5017)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "compile_var" :subid("cuid_115_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2608
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5131 = 'cuid_291_1346277600.974' 
    capture_lex $P5131 
    .const 'Sub' $P5131 = 'cuid_293_1346277600.974' 
    capture_lex $P5131 
    .const 'Sub' $P5131 = 'cuid_296_1346277600.974' 
    capture_lex $P5131 
    .const 'Sub' $P5131 = 'cuid_303_1346277600.974' 
    capture_lex $P5131 
    .lex "$scope", $P101 
    .lex "$decl", $P102 
    .lex "$name", $P103 
    .lex "$ops", $P104 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
.annotate 'line', 2609
    $P5005 = _lex_param_1."scope"()
    set $P101, $P5005
.annotate 'line', 2610
    $P5006 = _lex_param_1."decl"()
    set $P102, $P5006
    set $P5036, $P102
    unless $P102 goto if355_end1480 
.annotate 'line', 2614
    set $S5001, $P102
    iseq $I5001, $S5001, "param"
    unless $I5001 goto if356_else1481 
.annotate 'line', 2617
    set $S5002, $P101
    iseq $I5002, $S5002, "local"
    set $I5004, $I5002
    if $I5002 goto unless358_end1486 
    set $S5003, $P101
    iseq $I5003, $S5003, "lexical"
    set $I5004, $I5003
  unless358_end1486:
    unless $I5004 goto if357_else1483 
.annotate 'line', 2618
.annotate 'line', 2619
    find_dynamic_lex $P5007, "$*BLOCK"
    unless_null $P5007, fallback1487
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    set $P5008, $P5009["$BLOCK"]
    unless_null $P5008, fallback1488
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5011
  fallback1488:
    unless_null $P5008, vivi_3591489
    die "Contextual $*BLOCK not found"
    box $P5012, "Contextual $*BLOCK not found"
    set $P5008, $P5012
  vivi_3591489:
    set $P5007, $P5008
  fallback1487:
    $P5013 = $P5007."add_param"(_lex_param_1)
    set $P5015, $P5013
    goto if357_end1484
  if357_else1483:
.annotate 'line', 2621
    set $S5006, $P101
    concat $S5005, "Parameter cannot have scope '", $S5006
    concat $S5004, $S5005, "'; use 'local' or 'lexical'"
    box $P5014, $S5004
    die $P5014
    set $P5015, $P5014
  if357_end1484:
    set $P5035, $P5015
    goto if356_end1482
  if356_else1481:
    set $S5007, $P102
    iseq $I5005, $S5007, "var"
    unless $I5005 goto if360_else1490 
.annotate 'line', 2625
    set $S5008, $P101
    iseq $I5006, $S5008, "local"
    unless $I5006 goto if361_else1492 
.annotate 'line', 2626
.annotate 'line', 2627
    find_dynamic_lex $P5016, "$*BLOCK"
    unless_null $P5016, fallback1494
    get_hll_global $P5019, "GLOBAL"
    get_who $P5018, $P5019
    set $P5017, $P5018["$BLOCK"]
    unless_null $P5017, fallback1495
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5020
  fallback1495:
    unless_null $P5017, vivi_3621496
    die "Contextual $*BLOCK not found"
    box $P5021, "Contextual $*BLOCK not found"
    set $P5017, $P5021
  vivi_3621496:
    set $P5016, $P5017
  fallback1494:
    $P5022 = $P5016."add_local"(_lex_param_1)
    set $P5032, $P5022
    goto if361_end1493
  if361_else1492:
    set $S5009, $P101
    iseq $I5007, $S5009, "lexical"
    unless $I5007 goto if363_else1497 
.annotate 'line', 2629
.annotate 'line', 2630
    find_dynamic_lex $P5023, "$*BLOCK"
    unless_null $P5023, fallback1499
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["$BLOCK"]
    unless_null $P5024, fallback1500
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5027
  fallback1500:
    unless_null $P5024, vivi_3641501
    die "Contextual $*BLOCK not found"
    box $P5028, "Contextual $*BLOCK not found"
    set $P5024, $P5028
  vivi_3641501:
    set $P5023, $P5024
  fallback1499:
    $P5029 = $P5023."add_lexical"(_lex_param_1)
    set $P5031, $P5029
    goto if363_end1498
  if363_else1497:
.annotate 'line', 2632
    set $S5012, $P101
    concat $S5011, "Cannot declare variable with scope '", $S5012
    concat $S5010, $S5011, "'; use 'local' or 'lexical'"
    box $P5030, $S5010
    die $P5030
    set $P5031, $P5030
  if363_end1498:
    set $P5032, $P5031
  if361_end1493:
    set $P5034, $P5032
    goto if360_end1491
  if360_else1490:
.annotate 'line', 2636
    set $S5015, $P102
    concat $S5014, "Don't understand declaration type '", $S5015
    concat $S5013, $S5014, "'"
    box $P5033, $S5013
    die $P5033
    set $P5034, $P5033
  if360_end1491:
    set $P5035, $P5034
  if356_end1482:
    set $P5036, $P5035
  if355_end1480:
.annotate 'line', 2643
    $P5037 = _lex_param_1."name"()
    set $P103, $P5037
    set $S5016, $P101
    iseq $I5008, $S5016, ""
    box $P5041, $I5008
    set $P5040, $P5041
    unless $I5008 goto if365_end1503 
    .const 'Sub' $P5038 = 'cuid_291_1346277600.974' 
    capture_lex $P5038
    $P5039 = $P5038()
    set $P5040, $P5039
  if365_end1503:
.annotate 'line', 2662
    get_hll_global $P5045, "GLOBAL"
    nqp_get_package_through_who $P5044, $P5045, "PIRT"
    get_who $P5043, $P5044
    set $P5042, $P5043["Ops"]
    unless_null $P5042, fallback1517
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5046
  fallback1517:
    $P5047 = $P5042."new"()
    set $P104, $P5047
.annotate 'line', 2663
    $P5048 = _lex_param_1."node"()
    set $P5051, $P5048
    unless $P5048 goto if370_end1519 
    $P5049 = _lex_param_1."node"()
    $P5050 = $P104."node"($P5049)
    set $P5051, $P5050
  if370_end1519:
    set $S5017, $P101
    iseq $I5009, $S5017, "local"
    unless $I5009 goto if371_else1520 
.annotate 'line', 2664
.annotate 'line', 2665
    find_dynamic_lex $P5052, "$*BLOCK"
    unless_null $P5052, fallback1524
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["$BLOCK"]
    unless_null $P5053, fallback1525
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5053, $P5056
  fallback1525:
    unless_null $P5053, vivi_3731526
    die "Contextual $*BLOCK not found"
    box $P5057, "Contextual $*BLOCK not found"
    set $P5053, $P5057
  vivi_3731526:
    set $P5052, $P5053
  fallback1524:
    $P5058 = $P5052."local_type"($P103)
    unless $P5058 goto if372_else1522 
    .const 'Sub' $P5059 = 'cuid_293_1346277600.974' 
    capture_lex $P5059
    $P5060 = $P5059($P5058)
    set $P5062, $P5060
    goto if372_end1523
  if372_else1522:
.annotate 'line', 2673
    set $S5020, $P103
    concat $S5019, "Cannot reference undeclared local '", $S5020
    concat $S5018, $S5019, "'"
    box $P5061, $S5018
    die $P5061
    set $P5062, $P5061
  if372_end1523:
    set $P5130, $P5062
    goto if371_end1521
  if371_else1520:
    set $S5021, $P101
    iseq $I5010, $S5021, "lexical"
    set $I5012, $I5010
    if $I5010 goto unless378_end1538 
    set $S5022, $P101
    iseq $I5011, $S5022, "contextual"
    set $I5012, $I5011
  unless378_end1538:
    unless $I5012 goto if377_else1535 
    .const 'Sub' $P5063 = 'cuid_296_1346277600.974' 
    capture_lex $P5063
    $P5064 = $P5063()
    set $P5129, $P5064
    goto if377_end1536
  if377_else1535:
    set $S5023, $P101
    iseq $I5013, $S5023, "attribute"
    unless $I5013 goto if398_else1589 
    .const 'Sub' $P5065 = 'cuid_303_1346277600.974' 
    capture_lex $P5065
    $P5066 = $P5065()
    set $P5128, $P5066
    goto if398_end1590
  if398_else1589:
    set $S5024, $P101
    iseq $I5014, $S5024, "positional"
    unless $I5014 goto if404_else1606 
.annotate 'line', 2757
.annotate 'line', 2758
    nqp_decontainerize $P5067, _lex_param_0
    find_dynamic_lex $P5068, "$*BINDVAL"
    unless_null $P5068, fallback1610
    get_hll_global $P5071, "GLOBAL"
    get_who $P5070, $P5071
    set $P5069, $P5070["$BINDVAL"]
    unless_null $P5069, fallback1611
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5069, $P5072
  fallback1611:
    unless_null $P5069, vivi_4061612
    die "Contextual $*BINDVAL not found"
    box $P5073, "Contextual $*BINDVAL not found"
    set $P5069, $P5073
  vivi_4061612:
    set $P5068, $P5069
  fallback1610:
    unless $P5068 goto if405_else1608 
.annotate 'line', 2759
    get_hll_global $P5077, "GLOBAL"
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Op"]
    unless_null $P5074, fallback1613
    nqp_get_sc_object $P5078, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5074, $P5078
  fallback1613:
    $P5079 = _lex_param_1."list"()
    find_dynamic_lex $P5080, "$*BINDVAL"
    unless_null $P5080, fallback1614
    get_hll_global $P5083, "GLOBAL"
    get_who $P5082, $P5083
    set $P5081, $P5082["$BINDVAL"]
    unless_null $P5081, fallback1615
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5081, $P5084
  fallback1615:
    unless_null $P5081, vivi_4071616
    die "Contextual $*BINDVAL not found"
    box $P5085, "Contextual $*BINDVAL not found"
    set $P5081, $P5085
  vivi_4071616:
    set $P5080, $P5081
  fallback1614:
    $P5086 = $P5074."new"($P5079 :flat, $P5080, "positional_bind" :named("op"))
    set $P5094, $P5086
    goto if405_end1609
  if405_else1608:
.annotate 'line', 2760
    get_hll_global $P5090, "GLOBAL"
    nqp_get_package_through_who $P5089, $P5090, "QAST"
    get_who $P5088, $P5089
    set $P5087, $P5088["Op"]
    unless_null $P5087, fallback1617
    nqp_get_sc_object $P5091, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5087, $P5091
  fallback1617:
    $P5092 = _lex_param_1."list"()
    $P5093 = $P5087."new"($P5092 :flat, "positional_get" :named("op"))
    set $P5094, $P5093
  if405_end1609:
    $P5095 = $P5067."as_post_clear_bindval"($P5094)
    set $P104, $P5095
    set $P5127, $P104
    goto if404_end1607
  if404_else1606:
    set $S5025, $P101
    iseq $I5015, $S5025, "associative"
    unless $I5015 goto if408_else1618 
.annotate 'line', 2762
.annotate 'line', 2763
    nqp_decontainerize $P5096, _lex_param_0
    find_dynamic_lex $P5097, "$*BINDVAL"
    unless_null $P5097, fallback1622
    get_hll_global $P5100, "GLOBAL"
    get_who $P5099, $P5100
    set $P5098, $P5099["$BINDVAL"]
    unless_null $P5098, fallback1623
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5098, $P5101
  fallback1623:
    unless_null $P5098, vivi_4101624
    die "Contextual $*BINDVAL not found"
    box $P5102, "Contextual $*BINDVAL not found"
    set $P5098, $P5102
  vivi_4101624:
    set $P5097, $P5098
  fallback1622:
    unless $P5097 goto if409_else1620 
.annotate 'line', 2764
    get_hll_global $P5106, "GLOBAL"
    nqp_get_package_through_who $P5105, $P5106, "QAST"
    get_who $P5104, $P5105
    set $P5103, $P5104["Op"]
    unless_null $P5103, fallback1625
    nqp_get_sc_object $P5107, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5103, $P5107
  fallback1625:
    $P5108 = _lex_param_1."list"()
    find_dynamic_lex $P5109, "$*BINDVAL"
    unless_null $P5109, fallback1626
    get_hll_global $P5112, "GLOBAL"
    get_who $P5111, $P5112
    set $P5110, $P5111["$BINDVAL"]
    unless_null $P5110, fallback1627
    nqp_get_sc_object $P5113, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5110, $P5113
  fallback1627:
    unless_null $P5110, vivi_4111628
    die "Contextual $*BINDVAL not found"
    box $P5114, "Contextual $*BINDVAL not found"
    set $P5110, $P5114
  vivi_4111628:
    set $P5109, $P5110
  fallback1626:
    $P5115 = $P5103."new"($P5108 :flat, $P5109, "associative_bind" :named("op"))
    set $P5123, $P5115
    goto if409_end1621
  if409_else1620:
.annotate 'line', 2765
    get_hll_global $P5119, "GLOBAL"
    nqp_get_package_through_who $P5118, $P5119, "QAST"
    get_who $P5117, $P5118
    set $P5116, $P5117["Op"]
    unless_null $P5116, fallback1629
    nqp_get_sc_object $P5120, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5116, $P5120
  fallback1629:
    $P5121 = _lex_param_1."list"()
    $P5122 = $P5116."new"($P5121 :flat, "associative_get" :named("op"))
    set $P5123, $P5122
  if409_end1621:
    $P5124 = $P5096."as_post_clear_bindval"($P5123)
    set $P104, $P5124
    set $P5126, $P104
    goto if408_end1619
  if408_else1618:
.annotate 'line', 2767
    set $S5028, $P101
    concat $S5027, "QAST::Var with scope '", $S5028
    concat $S5026, $S5027, "' NYI"
    box $P5125, $S5026
    die $P5125
    set $P5126, $P5125
  if408_end1619:
    set $P5127, $P5126
  if404_end1607:
    set $P5128, $P5127
  if398_end1590:
    set $P5129, $P5128
  if377_end1536:
    set $P5130, $P5129
  if371_end1521:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_291_1346277600.974") :anon :lex :outer("cuid_115_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2644
    .const 'Sub' $P5019 = 'cuid_290_1346277600.974' 
    capture_lex $P5019 
    .lex "$cur_block", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*BLOCK"
    unless_null $P5002, fallback1504
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$BLOCK"]
    unless_null $P5003, fallback1505
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1505:
    unless_null $P5003, vivi_3661506
    die "Contextual $*BLOCK not found"
    box $P5007, "Contextual $*BLOCK not found"
    set $P5003, $P5007
  vivi_3661506:
    set $P5002, $P5003
  fallback1504:
    set $P101, $P5002
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while367_handlers1510
    push_eh $P5012
  while367_test1507:
    nqp_get_sc_object $P5008, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    type_check $I5001, $P101, $P5008
    box $P5013, $I5001
    set $P5011, $P5013
    unless $I5001 goto while367_done1511 
  while367_redo1509:
    .const 'Sub' $P5009 = 'cuid_290_1346277600.974' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
    goto while367_test1507 
  while367_handlers1510:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, while367_test1507
    eq $P5012, .CONTROL_LOOP_REDO, while367_redo1509
  while367_done1511:
    pop_eh 
    find_lex $P5014, "$scope"
    set $S5001, $P5014
    iseq $I5002, $S5001, ""
    box $P5018, $I5002
    set $P5017, $P5018
    unless $I5002 goto if369_end1516 
.annotate 'line', 2656
    find_lex $P5015, "$name"
    set $S5004, $P5015
    concat $S5003, "No scope specified or locatable in the symbol table for '", $S5004
    concat $S5002, $S5003, "'"
    box $P5016, $S5002
    die $P5016
    set $P5017, $P5016
  if369_end1516:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_290_1346277600.974") :anon :lex :outer("cuid_291_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2646
    .lex "%sym", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 2647
    find_lex $P5002, "$cur_block"
    $P5003 = $P5002."qast"()
    find_lex $P5004, "$name"
    $P5005 = $P5003."symbol"($P5004)
    set $P101, $P5005
    unless $P101 goto if368_else1512 
.annotate 'line', 2648
    set $P5006, $P101["$scope"]
    unless_null $P5006, fallback1514
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback1514:
    store_lex "$scope", $P5006
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    store_lex "$cur_block", $P5008
    set $P5011, $P5008
    goto if368_end1513
  if368_else1512:
.annotate 'line', 2652
.annotate 'line', 2653
    find_lex $P5009, "$cur_block"
    $P5010 = $P5009."outer"()
    store_lex "$cur_block", $P5010
    set $P5011, $P5010
  if368_end1513:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_293_1346277600.974") :anon :lex :outer("cuid_115_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2665
    .param pmc _lex_param_0 
    .const 'Sub' $P5013 = 'cuid_292_1346277600.974' 
    capture_lex $P5013 
    .lex "$type", _lex_param_0 
    find_dynamic_lex $P5001, "$*BINDVAL"
    unless_null $P5001, fallback1529
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["$BINDVAL"]
    unless_null $P5002, fallback1530
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1530:
    unless_null $P5002, vivi_3751531
    die "Contextual $*BINDVAL not found"
    box $P5006, "Contextual $*BINDVAL not found"
    set $P5002, $P5006
  vivi_3751531:
    set $P5001, $P5002
  fallback1529:
    set $P5009, $P5001
    unless $P5001 goto if374_end1528 
    .const 'Sub' $P5007 = 'cuid_292_1346277600.974' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if374_end1528:
.annotate 'line', 2671
    find_lex $P5010, "$ops"
    find_lex $P5011, "$name"
    $P5012 = $P5010."result"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_292_1346277600.974") :anon :lex :outer("cuid_293_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2666
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2667
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1532
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1533
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback1533:
    unless_null $P5005, vivi_3761534
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_3761534:
    set $P5004, $P5005
  fallback1532:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2668
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2669
    find_lex $P5014, "$ops"
    find_lex $P5015, "$name"
    $P5016 = $P101."result"()
    $P5017 = $P5014."push_pirop"("set", $P5015, $P5016)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_296_1346277600.974") :anon :lex :outer("cuid_115_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2677
    .const 'Sub' $P5028 = 'cuid_295_1346277600.974' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_298_1346277600.974' 
    capture_lex $P5028 
    .lex "%sym", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 2680
    find_dynamic_lex $P5002, "$*BLOCK"
    unless_null $P5002, fallback1539
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$BLOCK"]
    unless_null $P5003, fallback1540
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1540:
    unless_null $P5003, vivi_3791541
    die "Contextual $*BLOCK not found"
    box $P5007, "Contextual $*BLOCK not found"
    set $P5003, $P5007
  vivi_3791541:
    set $P5002, $P5003
  fallback1539:
    $P5008 = $P5002."qast"()
    find_lex $P5009, "$name"
    $P5010 = $P5008."symbol"($P5009)
    set $P101, $P5010
    isfalse $I5001, $P101
    set $I5003, $I5001
    if $I5001 goto unless382_end1547 
    set $P5011, $P101["lazyinit"]
    unless_null $P5011, fallback1548
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5012
  fallback1548:
    isfalse $I5002, $P5011
    set $I5003, $I5002
  unless382_end1547:
    box $P5022, $I5003
    set $P5021, $P5022
    unless $I5003 goto if381_end1545 
.annotate 'line', 2681
    find_dynamic_lex $P5013, "$*BLOCK"
    unless_null $P5013, fallback1549
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["$BLOCK"]
    unless_null $P5014, fallback1550
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5017
  fallback1550:
    unless_null $P5014, vivi_3831551
    die "Contextual $*BLOCK not found"
    box $P5018, "Contextual $*BLOCK not found"
    set $P5014, $P5018
  vivi_3831551:
    set $P5013, $P5014
  fallback1549:
    find_lex $P5019, "$name"
    $P5020 = $P5013."lexical_type"($P5019)
    set $P5021, $P5020
  if381_end1545:
    unless $P5021 goto if380_else1542 
    .const 'Sub' $P5023 = 'cuid_295_1346277600.974' 
    capture_lex $P5023
    $P5024 = $P5023($P5021)
    set $P5027, $P5024
    goto if380_end1543
  if380_else1542:
    .const 'Sub' $P5025 = 'cuid_298_1346277600.974' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
  if380_end1543:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_295_1346277600.974") :anon :lex :outer("cuid_296_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2681
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_294_1346277600.974' 
    capture_lex $P5021 
    .lex "$reg", $P101 
    .lex "$type", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2682
    find_dynamic_lex $P5002, "$*BLOCK"
    unless_null $P5002, fallback1552
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$BLOCK"]
    unless_null $P5003, fallback1553
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1553:
    unless_null $P5003, vivi_3841554
    die "Contextual $*BLOCK not found"
    box $P5007, "Contextual $*BLOCK not found"
    set $P5003, $P5007
  vivi_3841554:
    set $P5002, $P5003
  fallback1552:
    find_lex $P5008, "$name"
    $P5009 = $P5002."lex_reg"($P5008)
    set $P101, $P5009
    find_dynamic_lex $P5010, "$*BINDVAL"
    unless_null $P5010, fallback1557
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["$BINDVAL"]
    unless_null $P5011, fallback1558
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5014
  fallback1558:
    unless_null $P5011, vivi_3861559
    die "Contextual $*BINDVAL not found"
    box $P5015, "Contextual $*BINDVAL not found"
    set $P5011, $P5015
  vivi_3861559:
    set $P5010, $P5011
  fallback1557:
    set $P5018, $P5010
    unless $P5010 goto if385_end1556 
    .const 'Sub' $P5016 = 'cuid_294_1346277600.974' 
    capture_lex $P5016
    $P5017 = $P5016()
    set $P5018, $P5017
  if385_end1556:
.annotate 'line', 2688
    find_lex $P5019, "$ops"
    $P5020 = $P5019."result"($P101)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_294_1346277600.974") :anon :lex :outer("cuid_295_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2683
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2684
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1560
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1561
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback1561:
    unless_null $P5005, vivi_3871562
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_3871562:
    set $P5004, $P5005
  fallback1560:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2685
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2686
    find_lex $P5014, "$ops"
    find_lex $P5015, "$reg"
    $P5016 = $P101."result"()
    $P5017 = $P5014."push_pirop"("set", $P5015, $P5016)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_298_1346277600.974") :anon :lex :outer("cuid_296_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2690
    .const 'Sub' $P5032 = 'cuid_297_1346277600.974' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_299_1346277600.974' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_300_1346277600.974' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_301_1346277600.974' 
    capture_lex $P5032 
    .lex "$type", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2692
    find_lex $P5002, "$node"
    $P5003 = $P5002."returns"()
    $P5004 = "&type_to_register_type"($P5003)
    set $P101, $P5004
    set $S5001, $P101
    iseq $I5001, $S5001, "P"
    box $P5007, $I5001
    set $P5006, $P5007
    unless $I5001 goto if388_end1564 
.annotate 'line', 2693
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5005
  if388_end1564:
    find_lex $P5008, "$scope"
    set $S5002, $P5008
    iseq $I5002, $S5002, "lexical"
    unless $I5002 goto if389_else1565 
.annotate 'line', 2699
    find_dynamic_lex $P5009, "$*BINDVAL"
    unless_null $P5009, fallback1569
    get_hll_global $P5012, "GLOBAL"
    get_who $P5011, $P5012
    set $P5010, $P5011["$BINDVAL"]
    unless_null $P5010, fallback1570
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5013
  fallback1570:
    unless_null $P5010, vivi_3911571
    die "Contextual $*BINDVAL not found"
    box $P5014, "Contextual $*BINDVAL not found"
    set $P5010, $P5014
  vivi_3911571:
    set $P5009, $P5010
  fallback1569:
    unless $P5009 goto if390_else1567 
    .const 'Sub' $P5015 = 'cuid_297_1346277600.974' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5019, $P5016
    goto if390_end1568
  if390_else1567:
    .const 'Sub' $P5017 = 'cuid_299_1346277600.974' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
  if390_end1568:
    set $P5031, $P5019
    goto if389_end1566
  if389_else1565:
.annotate 'line', 2712
    find_dynamic_lex $P5020, "$*BINDVAL"
    unless_null $P5020, fallback1580
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["$BINDVAL"]
    unless_null $P5021, fallback1581
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5024
  fallback1581:
    unless_null $P5021, vivi_3951582
    die "Contextual $*BINDVAL not found"
    box $P5025, "Contextual $*BINDVAL not found"
    set $P5021, $P5025
  vivi_3951582:
    set $P5020, $P5021
  fallback1580:
    unless $P5020 goto if394_else1578 
    .const 'Sub' $P5026 = 'cuid_300_1346277600.974' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5030, $P5027
    goto if394_end1579
  if394_else1578:
    .const 'Sub' $P5028 = 'cuid_301_1346277600.974' 
    capture_lex $P5028
    $P5029 = $P5028()
    set $P5030, $P5029
  if394_end1579:
    set $P5031, $P5030
  if389_end1566:
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_297_1346277600.974") :anon :lex :outer("cuid_298_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2700
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2701
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1572
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1573
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback1573:
    unless_null $P5005, vivi_3921574
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_3921574:
    set $P5004, $P5005
  fallback1572:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2702
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2703
    find_lex $P5014, "$ops"
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$node"
    $P5018 = $P5017."name"()
    $P5019 = $P5015."escape"($P5018)
    $P5020 = $P101."result"()
    $P5021 = $P5014."push_pirop"("store_lex", $P5019, $P5020)
.annotate 'line', 2704
    find_lex $P5022, "$ops"
    $P5023 = $P101."result"()
    $P5024 = $P5022."result"($P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_299_1346277600.974") :anon :lex :outer("cuid_298_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2706
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2707
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback1575
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback1576
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback1576:
    unless_null $P5004, vivi_3931577
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_3931577:
    set $P5003, $P5004
  fallback1575:
    find_lex $P5002, "$type"
    set $S5003, $P5002
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5009 = $P5003.$S5001()
    set $P101, $P5009
.annotate 'line', 2708
    find_lex $P5010, "$ops"
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$node"
    $P5014 = $P5013."name"()
    $P5015 = $P5011."escape"($P5014)
    $P5016 = $P5010."push_pirop"("find_lex", $P101, $P5015)
.annotate 'line', 2709
    find_lex $P5017, "$ops"
    $P5018 = $P5017."result"($P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_300_1346277600.974") :anon :lex :outer("cuid_298_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2713
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2714
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1583
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1584
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback1584:
    unless_null $P5005, vivi_3961585
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_3961585:
    set $P5004, $P5005
  fallback1583:
    $P5010 = $P5002."as_post_clear_bindval"($P5004, "P" :named("want"))
    set $P101, $P5010
.annotate 'line', 2715
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push"($P101)
.annotate 'line', 2716
    find_lex $P5013, "$ops"
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5016, "$name"
    $P5017 = $P5014."escape"($P5016)
    $P5018 = $P101."result"()
    $P5019 = $P5013."push_pirop"("store_dynamic_lex", $P5017, $P5018)
.annotate 'line', 2717
    find_lex $P5020, "$ops"
    $P5021 = $P101."result"()
    $P5022 = $P5020."result"($P5021)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_301_1346277600.974") :anon :lex :outer("cuid_298_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2719
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2720
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback1586
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback1587
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1587:
    unless_null $P5003, vivi_3971588
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_3971588:
    set $P5002, $P5003
  fallback1586:
    $P5008 = $P5002."fresh_p"()
    set $P101, $P5008
.annotate 'line', 2721
    find_lex $P5009, "$ops"
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$name"
    $P5013 = $P5010."escape"($P5012)
    $P5014 = $P5009."push_pirop"("find_dynamic_lex", $P101, $P5013)
.annotate 'line', 2722
    find_lex $P5015, "$ops"
    $P5016 = $P5015."result"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_303_1346277600.974") :anon :lex :outer("cuid_115_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2727
    .const 'Sub' $P5042 = 'cuid_302_1346277600.974' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_304_1346277600.974' 
    capture_lex $P5042 
    .lex "@args", $P101 
    .lex "$obj", $P102 
    .lex "$han", $P103 
    .lex "$type", $P104 
    .lex "$op_type", $P105 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
.annotate 'line', 2729
    find_lex $P5006, "$node"
    $P5007 = $P5006."list"()
    set $P101, $P5007
    set $N5001, $P101
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if399_end1592 
.annotate 'line', 2730
    box $P5008, "An attribute lookup needs an object and a class handle"
    die $P5008
    set $P5009, $P5008
  if399_end1592:
.annotate 'line', 2735
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    set $P5013, $P101[0]
    unless_null $P5013, fallback1593
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5014
  fallback1593:
    $P5015 = $P5011."as_post_clear_bindval"($P5013, "P" :named("want"))
    set $P102, $P5015
.annotate 'line', 2736
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    set $P5018, $P101[1]
    unless_null $P5018, fallback1594
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5019
  fallback1594:
    $P5020 = $P5016."as_post_clear_bindval"($P5018, "P" :named("want"))
    set $P103, $P5020
.annotate 'line', 2737
    find_lex $P5021, "$ops"
    $P5022 = $P5021."push"($P102)
.annotate 'line', 2738
    find_lex $P5023, "$ops"
    $P5024 = $P5023."push"($P103)
.annotate 'line', 2741
    find_lex $P5025, "$node"
    $P5026 = $P5025."returns"()
    $P5027 = "&type_to_register_type"($P5026)
    set $P104, $P5027
.annotate 'line', 2742
    find_lex $P5028, "$node"
    $P5029 = $P5028."returns"()
    $P5030 = "&type_to_lookup_name"($P5029)
    set $P105, $P5030
    find_dynamic_lex $P5031, "$*BINDVAL"
    unless_null $P5031, fallback1597
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    set $P5032, $P5033["$BINDVAL"]
    unless_null $P5032, fallback1598
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5032, $P5035
  fallback1598:
    unless_null $P5032, vivi_4011599
    die "Contextual $*BINDVAL not found"
    box $P5036, "Contextual $*BINDVAL not found"
    set $P5032, $P5036
  vivi_4011599:
    set $P5031, $P5032
  fallback1597:
    unless $P5031 goto if400_else1595 
    .const 'Sub' $P5037 = 'cuid_302_1346277600.974' 
    capture_lex $P5037
    $P5038 = $P5037()
    set $P5041, $P5038
    goto if400_end1596
  if400_else1595:
    .const 'Sub' $P5039 = 'cuid_304_1346277600.974' 
    capture_lex $P5039
    $P5040 = $P5039()
    set $P5041, $P5040
  if400_end1596:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_302_1346277600.974") :anon :lex :outer("cuid_303_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2743
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2744
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1600
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1601
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback1601:
    unless_null $P5005, vivi_4021602
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_4021602:
    set $P5004, $P5005
  fallback1600:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2745
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2746
    find_lex $P5014, "$ops"
    find_lex $P5015, "$op_type"
    set $S5004, $P5015
    concat $S5003, "repr_bind_attr_", $S5004
    find_lex $P5016, "$obj"
    $P5017 = $P5016."result"()
    find_lex $P5018, "$han"
    $P5019 = $P5018."result"()
.annotate 'line', 2747
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$name"
    $P5023 = $P5020."escape"($P5022)
    $P5024 = $P101."result"()
    $P5025 = $P5014."push_pirop"($S5003, $P5017, $P5019, $P5023, $P5024)
.annotate 'line', 2748
    find_lex $P5026, "$ops"
    $P5027 = $P101."result"()
    $P5028 = $P5026."result"($P5027)
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_304_1346277600.974") :anon :lex :outer("cuid_303_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2750
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2751
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback1603
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback1604
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback1604:
    unless_null $P5004, vivi_4031605
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_4031605:
    set $P5003, $P5004
  fallback1603:
    find_lex $P5002, "$type"
    set $S5003, $P5002
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5009 = $P5003.$S5001()
    set $P101, $P5009
.annotate 'line', 2752
    find_lex $P5010, "$ops"
    find_lex $P5011, "$op_type"
    set $S5005, $P5011
    concat $S5004, "repr_get_attr_", $S5005
    find_lex $P5012, "$obj"
    $P5013 = $P5012."result"()
    find_lex $P5014, "$han"
    $P5015 = $P5014."result"()
.annotate 'line', 2753
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$name"
    $P5019 = $P5016."escape"($P5018)
    $P5020 = $P5010."push_pirop"($S5004, $P101, $P5013, $P5015, $P5019)
.annotate 'line', 2754
    find_lex $P5021, "$ops"
    $P5022 = $P5021."result"($P101)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "as_post_clear_bindval" :subid("cuid_116_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2774
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("want") :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_17, default1632
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5008
  default1632:
    .lex "$*BINDVAL", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$want", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    unless _lex_param_2 goto if412_else1630 
.annotate 'line', 2776
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."as_post"(_lex_param_1, _lex_param_2 :named("want"))
    set $P5007, $P5004
    goto if412_end1631
  if412_else1630:
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."as_post"(_lex_param_1)
    set $P5007, $P5006
  if412_end1631:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_117_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2779
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2781
    nqp_decontainerize $P5001, _lex_param_0
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback1633
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback1633:
    $P5004 = $P5001."as_post"($P5002)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_118_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2784
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2785
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["Ops"]
    unless_null $P5001, fallback1634
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1634:
    $P5006 = _lex_param_1."value"()
    set $S5001, $P5006
    $P5007 = $P5001."new"($S5001 :named("result"))
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_119_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2788
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$val", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2789
    $P5002 = _lex_param_1."value"()
    set $S5001, $P5002
    box $P5003, $S5001
    set $P101, $P5003
    set $S5002, $P101
    index $I5002, $S5002, ".", 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    set $I5005, $I5001
    if $I5001 goto unless414_end1638 
    set $S5003, $P101
    index $I5004, $S5003, "e", 0
    set $N5003, $I5004
    set $N5004, 0
    isgt $I5003, $N5003, $N5004
    set $I5005, $I5003
  unless414_end1638:
    box $P5006, $I5005
    set $P5005, $P5006
    if $I5005 goto unless413_end1636 
    set $S5005, $P101
    concat $S5004, $S5005, ".0"
    box $P5004, $S5004
    set $P101, $P5004
    set $P5005, $P101
  unless413_end1636:
.annotate 'line', 2792
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "PIRT"
    get_who $P5008, $P5009
    set $P5007, $P5008["Ops"]
    unless_null $P5007, fallback1639
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback1639:
    $P5012 = $P5007."new"($P101 :named("result"))
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_120_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2795
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2796
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["Ops"]
    unless_null $P5001, fallback1640
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1640:
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = _lex_param_1."value"()
    $P5008 = $P5006."escape"($P5007)
    $P5009 = $P5001."new"($P5008 :named("result"))
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_121_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2799
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cuid", $P101 
    .lex "$reg", $P102 
    .lex "$ops", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 2800
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = _lex_param_1."value"()
    $P5006 = $P5005."cuid"()
    $P5007 = $P5004."escape"($P5006)
    set $P101, $P5007
.annotate 'line', 2801
    find_dynamic_lex $P5008, "$*REGALLOC"
    unless_null $P5008, fallback1641
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["$REGALLOC"]
    unless_null $P5009, fallback1642
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback1642:
    unless_null $P5009, vivi_4151643
    die "Contextual $*REGALLOC not found"
    box $P5013, "Contextual $*REGALLOC not found"
    set $P5009, $P5013
  vivi_4151643:
    set $P5008, $P5009
  fallback1641:
    $P5014 = $P5008."fresh_p"()
    set $P102, $P5014
.annotate 'line', 2802
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "PIRT"
    get_who $P5016, $P5017
    set $P5015, $P5016["Ops"]
    unless_null $P5015, fallback1644
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback1644:
    $P5020 = $P5015."new"($P102 :named("result"))
    set $P103, $P5020
.annotate 'line', 2803
    set $S5004, $P102
    concat $S5003, ".const 'Sub' ", $S5004
    concat $S5002, $S5003, " = "
    set $S5005, $P101
    concat $S5001, $S5002, $S5005
    $P5021 = $P103."push_pirop"($S5001)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_122_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2807
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$val", $P101 
    .lex "$sc", $P102 
    .lex "$handle", $P103 
    .lex "$idx", $P104 
    .lex "$reg", $P105 
    .lex "$ops", $P106 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
.annotate 'line', 2808
    $P5007 = _lex_param_1."value"()
    set $P101, $P5007
    nqp_get_sc_for_object $P5008, $P101
    set $P102, $P5008
.annotate 'line', 2810
    $P5009 = $P102."handle"()
    set $P103, $P5009
.annotate 'line', 2811
    $P5010 = $P102."slot_index_for"($P101)
    set $P104, $P5010
.annotate 'line', 2812
    find_dynamic_lex $P5011, "$*REGALLOC"
    unless_null $P5011, fallback1645
    get_hll_global $P5014, "GLOBAL"
    get_who $P5013, $P5014
    set $P5012, $P5013["$REGALLOC"]
    unless_null $P5012, fallback1646
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5015
  fallback1646:
    unless_null $P5012, vivi_4161647
    die "Contextual $*REGALLOC not found"
    box $P5016, "Contextual $*REGALLOC not found"
    set $P5012, $P5016
  vivi_4161647:
    set $P5011, $P5012
  fallback1645:
    $P5017 = $P5011."fresh_p"()
    set $P105, $P5017
.annotate 'line', 2813
    get_hll_global $P5021, "GLOBAL"
    nqp_get_package_through_who $P5020, $P5021, "PIRT"
    get_who $P5019, $P5020
    set $P5018, $P5019["Ops"]
    unless_null $P5018, fallback1648
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5022
  fallback1648:
    $P5023 = $P5018."new"($P105 :named("result"))
    set $P106, $P5023
.annotate 'line', 2814
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = $P5024."escape"($P103)
    set $S5001, $P104
    $P5026 = $P106."push_pirop"("nqp_get_sc_object", $P105, $P5025, $S5001)
    .return ($P106) 
.end
.HLL "nqp"
.namespace []
.sub "coerce" :subid("cuid_123_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2818
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5027 = 'cuid_305_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_306_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_307_1346277600.974' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_308_1346277600.974' 
    capture_lex $P5027 
    .lex "$result", $P101 
    .lex "self", _lex_param_0 
    .lex "$post", _lex_param_1 
    .lex "$desired", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1649
    .lex "RETURN", $P102
.annotate 'line', 2819
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = _lex_param_1."result"()
    $P5004 = $P5002."infer_type"($P5003)
    set $P101, $P5004
    set $S5001, $P101
    set $S5002, _lex_param_2
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if417_else1651 
.annotate 'line', 2820
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(_lex_param_1)
    set $P5026, $P5006
    goto if417_end1652
  if417_else1651:
    set $S5004, $P101
    downcase $S5003, $S5004
    set $S5005, _lex_param_2
    iseq $I5002, $S5003, $S5005
    unless $I5002 goto if418_else1653 
.annotate 'line', 2824
    find_lex $P5007, "RETURN"
    $P5008 = $P5007(_lex_param_1)
    set $P5025, $P5008
    goto if418_end1654
  if418_else1653:
    set $S5006, $P101
    iseq $I5003, $S5006, "p"
    set $I5005, $I5003
    unless $I5003 goto if420_end1658 
    set $S5007, _lex_param_2
    iseq $I5004, $S5007, "P"
    set $I5005, $I5004
  if420_end1658:
    unless $I5005 goto if419_else1655 
.annotate 'line', 2829
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(_lex_param_1)
    set $P5024, $P5010
    goto if419_end1656
  if419_else1655:
    set $S5008, $P101
    set $S5010, _lex_param_2
    downcase $S5009, $S5010
    iseq $I5006, $S5008, $S5009
    unless $I5006 goto if421_else1659 
    .const 'Sub' $P5011 = 'cuid_305_1346277600.974' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5023, $P5012
    goto if421_end1660
  if421_else1659:
    set $S5011, _lex_param_2
    iseq $I5007, $S5011, "P"
    set $I5009, $I5007
    if $I5007 goto unless424_end1668 
    set $S5012, _lex_param_2
    iseq $I5008, $S5012, "p"
    set $I5009, $I5008
  unless424_end1668:
    unless $I5009 goto if423_else1665 
    .const 'Sub' $P5013 = 'cuid_306_1346277600.974' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5022, $P5014
    goto if423_end1666
  if423_else1665:
    set $S5013, $P101
    iseq $I5010, $S5013, "P"
    set $I5012, $I5010
    if $I5010 goto unless429_end1678 
    set $S5014, $P101
    iseq $I5011, $S5014, "p"
    set $I5012, $I5011
  unless429_end1678:
    unless $I5012 goto if428_else1675 
    .const 'Sub' $P5015 = 'cuid_307_1346277600.974' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5021, $P5016
    goto if428_end1676
  if428_else1675:
    set $S5015, $P101
    index $I5014, "IiNnSs", $S5015, 0
    set $N5001, $I5014
    set $N5002, 0
    isge $I5013, $N5001, $N5002
    set $I5017, $I5013
    unless $I5013 goto if434_end1688 
    set $S5016, _lex_param_2
    index $I5016, "IiNnSs", $S5016, 0
    set $N5003, $I5016
    set $N5004, 0
    isge $I5015, $N5003, $N5004
    set $I5017, $I5015
  if434_end1688:
    unless $I5017 goto if433_else1685 
    .const 'Sub' $P5017 = 'cuid_308_1346277600.974' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5020, $P5018
    goto if433_end1686
  if433_else1685:
.annotate 'line', 2862
    set $S5021, $P101
    concat $S5020, "Coercion from '", $S5021
    concat $S5019, $S5020, "' to '"
    set $S5022, _lex_param_2
    concat $S5018, $S5019, $S5022
    concat $S5017, $S5018, "' NYI"
    box $P5019, $S5017
    die $P5019
    set $P5020, $P5019
  if433_end1686:
    set $P5021, $P5020
  if428_end1676:
    set $P5022, $P5021
  if423_end1666:
    set $P5023, $P5022
  if421_end1660:
    set $P5024, $P5023
  if419_end1656:
    set $P5025, $P5024
  if418_end1654:
    set $P5026, $P5025
  if417_end1652:
    goto lexotic_1650
  lexotic_1649:
    .get_results ($P5026)
  lexotic_1650:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_305_1346277600.974") :anon :lex :outer("cuid_123_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2833
    .lex "$ops", $P101 
    .lex "$reg", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 2835
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1661
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1661:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 2836
    find_dynamic_lex $P5010, "$*REGALLOC"
    unless_null $P5010, fallback1662
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["$REGALLOC"]
    unless_null $P5011, fallback1663
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5014
  fallback1663:
    unless_null $P5011, vivi_4221664
    die "Contextual $*REGALLOC not found"
    box $P5015, "Contextual $*REGALLOC not found"
    set $P5011, $P5015
  vivi_4221664:
    set $P5010, $P5011
  fallback1662:
    find_lex $P5009, "$result"
    set $S5002, $P5009
    concat $S5001, "fresh_", $S5002
    $P5016 = $P5010.$S5001()
    set $P102, $P5016
.annotate 'line', 2837
    find_lex $P5017, "$post"
    $P5018 = $P101."push"($P5017)
.annotate 'line', 2838
    find_lex $P5019, "$post"
    $P5020 = $P101."push_pirop"("set", $P102, $P5019)
.annotate 'line', 2839
    $P5021 = $P101."result"($P102)
    find_lex $P5022, "RETURN"
    $P5023 = $P5022($P101)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_306_1346277600.974") :anon :lex :outer("cuid_123_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2842
    .lex "$hll", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_4271673
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
    find_dynamic_lex $P5003, "$*HLL"
    unless_null $P5003, fallback1669
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$HLL"]
    unless_null $P5004, fallback1670
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback1670:
    unless_null $P5004, vivi_4251671
    die "Contextual $*HLL not found"
    box $P5008, "Contextual $*HLL not found"
    set $P5004, $P5008
  vivi_4251671:
    set $P5003, $P5004
  fallback1669:
    set $P101, $P5003
    set $P5010, $P101
    pop_eh 
    goto skip_handler_4261672
  catch_handler_4271673:
    .get_results ($P5009) 
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10001
    goto skip_handler_4261672
  skip_handler_4261672:
.annotate 'line', 2845
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Operations"]
    unless_null $P5012, fallback1674
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback1674:
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$result"
    set $S5002, $P5019
    downcase $S5001, $S5002
    find_lex $P5020, "$post"
    $P5021 = $P5012."box"($P5017, $P101, $S5001, $P5020)
    find_lex $P5011, "RETURN"
    $P5022 = $P5011($P5021)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_307_1346277600.974") :anon :lex :outer("cuid_123_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2847
    .lex "$hll", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_4321683
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
    find_dynamic_lex $P5003, "$*HLL"
    unless_null $P5003, fallback1679
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$HLL"]
    unless_null $P5004, fallback1680
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback1680:
    unless_null $P5004, vivi_4301681
    die "Contextual $*HLL not found"
    box $P5008, "Contextual $*HLL not found"
    set $P5004, $P5008
  vivi_4301681:
    set $P5003, $P5004
  fallback1679:
    set $P101, $P5003
    set $P5010, $P101
    pop_eh 
    goto skip_handler_4311682
  catch_handler_4321683:
    .get_results ($P5009) 
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10001
    goto skip_handler_4311682
  skip_handler_4311682:
.annotate 'line', 2850
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Operations"]
    unless_null $P5012, fallback1684
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback1684:
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$desired"
    set $S5002, $P5019
    downcase $S5001, $S5002
    find_lex $P5020, "$post"
    $P5021 = $P5012."unbox"($P5017, $P101, $S5001, $P5020)
    find_lex $P5011, "RETURN"
    $P5022 = $P5011($P5021)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_308_1346277600.974") :anon :lex :outer("cuid_123_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2852
    .lex "$ops", $P101 
    .lex "$rtype", $P102 
    .lex "$reg", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 2854
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Ops"]
    unless_null $P5004, fallback1689
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback1689:
    $P5009 = $P5004."new"()
    set $P101, $P5009
    find_lex $P5010, "$desired"
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5011, $S5001
    set $P102, $P5011
.annotate 'line', 2856
    find_dynamic_lex $P5012, "$*REGALLOC"
    unless_null $P5012, fallback1690
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    set $P5013, $P5014["$REGALLOC"]
    unless_null $P5013, fallback1691
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5016
  fallback1691:
    unless_null $P5013, vivi_4351692
    die "Contextual $*REGALLOC not found"
    box $P5017, "Contextual $*REGALLOC not found"
    set $P5013, $P5017
  vivi_4351692:
    set $P5012, $P5013
  fallback1690:
    set $S5004, $P102
    concat $S5003, "fresh_", $S5004
    $P5018 = $P5012.$S5003()
    set $P103, $P5018
.annotate 'line', 2857
    find_lex $P5019, "$post"
    $P5020 = $P101."push"($P5019)
.annotate 'line', 2858
    find_lex $P5021, "$post"
    $P5022 = $P101."push_pirop"("set", $P103, $P5021)
.annotate 'line', 2859
    $P5023 = $P101."result"($P103)
    find_lex $P5024, "RETURN"
    $P5025 = $P5024($P101)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "infer_type" :subid("cuid_124_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2867
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_309_1346277600.974' 
    capture_lex $P5024 
    .lex "self", _lex_param_0 
    .lex "$inferee", _lex_param_1 
    set $S5002, _lex_param_1
    substr $S5001, $S5002, 0, 1
    iseq $I5001, $S5001, "$"
    unless $I5001 goto if436_else1693 
.annotate 'line', 2868
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 1, 1
    box $P5023, $S5003
    set $P5022, $P5023
    goto if436_end1694
  if436_else1693:
.annotate 'line', 2871
    find_dynamic_lex $P5001, "$*BLOCK"
    unless_null $P5001, fallback1697
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["$BLOCK"]
    unless_null $P5002, fallback1698
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1698:
    unless_null $P5002, vivi_4381699
    die "Contextual $*BLOCK not found"
    box $P5006, "Contextual $*BLOCK not found"
    set $P5002, $P5006
  vivi_4381699:
    set $P5001, $P5002
  fallback1697:
    $P5007 = $P5001."reg_type"(_lex_param_1)
    unless $P5007 goto if437_else1695 
    .const 'Sub' $P5008 = 'cuid_309_1346277600.974' 
    capture_lex $P5008
    $P5009 = $P5008($P5007)
    set $P5021, $P5009
    goto if437_end1696
  if437_else1695:
    set $S5006, _lex_param_1
    substr $S5005, $S5006, 0, 1
    iseq $I5002, $S5005, "\""
    set $I5004, $I5002
    if $I5002 goto unless442_end1707 
    set $S5008, _lex_param_1
    substr $S5007, $S5008, 0, 6
    iseq $I5003, $S5007, "utf8:\""
    set $I5004, $I5003
  unless442_end1707:
    set $I5006, $I5004
    if $I5004 goto unless441_end1705 
    set $S5010, _lex_param_1
    substr $S5009, $S5010, 0, 6
    iseq $I5005, $S5009, "ucs4:\""
    set $I5006, $I5005
  unless441_end1705:
    set $I5008, $I5006
    if $I5006 goto unless440_end1703 
    set $S5012, _lex_param_1
    substr $S5011, $S5012, 0, 9
    iseq $I5007, $S5011, "unicode:\""
    set $I5008, $I5007
  unless440_end1703:
    unless $I5008 goto if439_else1700 
.annotate 'line', 2877

    box $P5020, "s"
    set $P5019, $P5020
    goto if439_end1701
  if439_else1700:
    set $S5014, _lex_param_1
    substr $S5013, $S5014, 0, 6
    iseq $I5009, $S5013, ".const"
    unless $I5009 goto if443_else1708 
.annotate 'line', 2880

    box $P5018, "P"
    set $P5017, $P5018
    goto if443_end1709
  if443_else1708:
    set $S5016, _lex_param_1
    substr $S5015, $S5016, 0, 1
    iseq $I5010, $S5015, "."
    unless $I5010 goto if444_else1710 
.annotate 'line', 2883

    box $P5016, "i"
    set $P5015, $P5016
    goto if444_end1711
  if444_else1710:
    set $S5017, _lex_param_1
    index $I5012, $S5017, ".", 0
    set $N5001, $I5012
    set $N5002, 0
    isgt $I5011, $N5001, $N5002
    unless $I5011 goto if445_else1712 
.annotate 'line', 2886

    box $P5014, "n"
    set $P5013, $P5014
    goto if445_end1713
  if445_else1712:
    set $N5003, _lex_param_1
    set $S5018, $N5003
    set $S5019, _lex_param_1
    iseq $I5013, $S5018, $S5019
    unless $I5013 goto if446_else1714 
.annotate 'line', 2889

    box $P5012, "i"
    set $P5011, $P5012
    goto if446_end1715
  if446_else1714:
.annotate 'line', 2892
    set $S5022, _lex_param_1
    concat $S5021, "Cannot infer type from '", $S5022
    concat $S5020, $S5021, "'"
    box $P5010, $S5020
    die $P5010
    set $P5011, $P5010
  if446_end1715:
    set $P5013, $P5011
  if445_end1713:
    set $P5015, $P5013
  if444_end1711:
    set $P5017, $P5015
  if443_end1709:
    set $P5019, $P5017
  if439_end1701:
    set $P5021, $P5019
  if437_end1696:
    set $P5022, $P5021
  if436_end1694:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_309_1346277600.974") :anon :lex :outer("cuid_124_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2871
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    set $S5002, _lex_param_0
    downcase $S5001, $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_125_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2897
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5383 = 'cuid_310_1346277600.974' 
    capture_lex $P5383 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "%*REG", $P103 
    .lex "$reglist", $P104 
    .lex "$startlabel", $P105 
    .lex "$donelabel", $P106 
    .lex "$restartlabel", $P107 
    .lex "$faillabel", $P108 
    .lex "$jumplabel", $P109 
    .lex "$cutlabel", $P110 
    .lex "$cstacklabel", $P111 
    .lex "$startreg", $P112 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P112, $P5012
.annotate 'line', 2898
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."post_new"("Ops")
    set $P101, $P5014
.annotate 'line', 2899
    $P5015 = _lex_param_1."node"()
    set $P5018, $P5015
    unless $P5015 goto if447_end1717 
    $P5016 = _lex_param_1."node"()
    $P5017 = $P101."node"($P5016)
    set $P5018, $P5017
  if447_end1717:
.annotate 'line', 2900
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."unique"("rx")
    set $S5002, $P5020
    concat $S5001, $S5002, "_"
    box $P5021, $S5001
    set $P102, $P5021
    unless_null $P103, fallback1718
    get_hll_global $P5024, "GLOBAL"
    get_who $P5023, $P5024
    set $P5022, $P5023["%REG"]
    unless_null $P5022, fallback1719
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    new $P5027, 'Hash'
    set $P5025["%REG"], $P5027
    set $P5022, $P5027
  fallback1719:
    unless_null $P5022, vivi_4481720
    die "Contextual %*REG not found"
    box $P5028, "Contextual %*REG not found"
    set $P5022, $P5028
  vivi_4481720:
    set $P103, $P5022
  fallback1718:
    split $P5029, " ", "tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc cstack pmc"
    set $P104, $P5029
    new $P5033, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5033, while449_handlers1724
    push_eh $P5033
  while449_test1721:
    set $P5032, $P104
    unless $P104 goto while449_done1725 
  while449_redo1723:
    .const 'Sub' $P5030 = 'cuid_310_1346277600.974' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
    goto while449_test1721 
  while449_handlers1724:
    .get_results ($P5033)
    pop_upto_eh $P5033
    getattribute $P5033, $P5033, 'type'
    eq $P5033, .CONTROL_LOOP_NEXT, while449_test1721
    eq $P5033, .CONTROL_LOOP_REDO, while449_redo1723
  while449_done1725:
    pop_eh 
.annotate 'line', 2912
    nqp_decontainerize $P5034, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "start"
    $P5035 = $P5034."post_new"("Label", $S5003 :named("name"))
    set $P105, $P5035
.annotate 'line', 2913
    nqp_decontainerize $P5036, _lex_param_0
    set $S5006, $P102
    concat $S5005, $S5006, "done"
    $P5037 = $P5036."post_new"("Label", $S5005 :named("name"))
    set $P106, $P5037
.annotate 'line', 2914
    nqp_decontainerize $P5038, _lex_param_0
    set $S5008, $P102
    concat $S5007, $S5008, "restart"
    $P5039 = $P5038."post_new"("Label", $S5007 :named("name"))
    set $P107, $P5039
.annotate 'line', 2915
    nqp_decontainerize $P5040, _lex_param_0
    set $S5010, $P102
    concat $S5009, $S5010, "fail"
    $P5041 = $P5040."post_new"("Label", $S5009 :named("name"))
    set $P108, $P5041
.annotate 'line', 2916
    nqp_decontainerize $P5042, _lex_param_0
    set $S5012, $P102
    concat $S5011, $S5012, "jump"
    $P5043 = $P5042."post_new"("Label", $S5011 :named("name"))
    set $P109, $P5043
.annotate 'line', 2917
    nqp_decontainerize $P5044, _lex_param_0
    set $S5014, $P102
    concat $S5013, $S5014, "cut"
    $P5045 = $P5044."post_new"("Label", $S5013 :named("name"))
    set $P110, $P5045
.annotate 'line', 2918
    nqp_decontainerize $P5046, _lex_param_0
    set $S5016, $P102
    concat $S5015, $S5016, "cstack_done"
    $P5047 = $P5046."post_new"("Label", $S5015 :named("name"))
    set $P111, $P5047
    unless_null $P103, fallback1729
    get_hll_global $P5050, "GLOBAL"
    get_who $P5049, $P5050
    set $P5048, $P5049["%REG"]
    unless_null $P5048, fallback1730
    get_hll_global $P5052, "GLOBAL"
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%REG"], $P5053
    set $P5048, $P5053
  fallback1730:
    unless_null $P5048, vivi_4511731
    die "Contextual %*REG not found"
    box $P5054, "Contextual %*REG not found"
    set $P5048, $P5054
  vivi_4511731:
    set $P103, $P5048
  fallback1729:
    set $P103["fail"], $P108
    new $P5055, 'ResizablePMCArray'
    unless_null $P103, fallback1732
    get_hll_global $P5059, "GLOBAL"
    get_who $P5058, $P5059
    set $P5057, $P5058["%REG"]
    unless_null $P5057, fallback1733
    get_hll_global $P5061, "GLOBAL"
    get_who $P5060, $P5061
    new $P5062, 'Hash'
    set $P5060["%REG"], $P5062
    set $P5057, $P5062
  fallback1733:
    unless_null $P5057, vivi_4521734
    die "Contextual %*REG not found"
    box $P5063, "Contextual %*REG not found"
    set $P5057, $P5063
  vivi_4521734:
    set $P103, $P5057
  fallback1732:
    set $P5056, $P103["cur"]
    unless_null $P5056, fallback1735
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5056, $P5064
  fallback1735:
    push $P5055, $P5056
    unless_null $P103, fallback1736
    get_hll_global $P5068, "GLOBAL"
    get_who $P5067, $P5068
    set $P5066, $P5067["%REG"]
    unless_null $P5066, fallback1737
    get_hll_global $P5070, "GLOBAL"
    get_who $P5069, $P5070
    new $P5071, 'Hash'
    set $P5069["%REG"], $P5071
    set $P5066, $P5071
  fallback1737:
    unless_null $P5066, vivi_4531738
    die "Contextual %*REG not found"
    box $P5072, "Contextual %*REG not found"
    set $P5066, $P5072
  vivi_4531738:
    set $P103, $P5066
  fallback1736:
    set $P5065, $P103["tgt"]
    unless_null $P5065, fallback1739
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5065, $P5073
  fallback1739:
    push $P5055, $P5065
    unless_null $P103, fallback1740
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    set $P5075, $P5076["%REG"]
    unless_null $P5075, fallback1741
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    new $P5080, 'Hash'
    set $P5078["%REG"], $P5080
    set $P5075, $P5080
  fallback1741:
    unless_null $P5075, vivi_4541742
    die "Contextual %*REG not found"
    box $P5081, "Contextual %*REG not found"
    set $P5075, $P5081
  vivi_4541742:
    set $P103, $P5075
  fallback1740:
    set $P5074, $P103["pos"]
    unless_null $P5074, fallback1743
    nqp_get_sc_object $P5082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5074, $P5082
  fallback1743:
    push $P5055, $P5074
    unless_null $P103, fallback1744
    get_hll_global $P5086, "GLOBAL"
    get_who $P5085, $P5086
    set $P5084, $P5085["%REG"]
    unless_null $P5084, fallback1745
    get_hll_global $P5088, "GLOBAL"
    get_who $P5087, $P5088
    new $P5089, 'Hash'
    set $P5087["%REG"], $P5089
    set $P5084, $P5089
  fallback1745:
    unless_null $P5084, vivi_4551746
    die "Contextual %*REG not found"
    box $P5090, "Contextual %*REG not found"
    set $P5084, $P5090
  vivi_4551746:
    set $P103, $P5084
  fallback1744:
    set $P5083, $P103["curclass"]
    unless_null $P5083, fallback1747
    nqp_get_sc_object $P5091, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5083, $P5091
  fallback1747:
    push $P5055, $P5083
    unless_null $P103, fallback1748
    get_hll_global $P5095, "GLOBAL"
    get_who $P5094, $P5095
    set $P5093, $P5094["%REG"]
    unless_null $P5093, fallback1749
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    new $P5098, 'Hash'
    set $P5096["%REG"], $P5098
    set $P5093, $P5098
  fallback1749:
    unless_null $P5093, vivi_4561750
    die "Contextual %*REG not found"
    box $P5099, "Contextual %*REG not found"
    set $P5093, $P5099
  vivi_4561750:
    set $P103, $P5093
  fallback1748:
    set $P5092, $P103["bstack"]
    unless_null $P5092, fallback1751
    nqp_get_sc_object $P5100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5092, $P5100
  fallback1751:
    push $P5055, $P5092
    box $P5101, "$I19"
    push $P5055, $P5101
    join $S5019, ", ", $P5055
    concat $S5018, "(", $S5019
    concat $S5017, $S5018, ")"
    box $P5102, $S5017
    set $P112, $P5102
.annotate 'line', 2923
    $P5103 = $P101."push_pirop"("callmethod", "\"!cursor_start\"", "self", $P112 :named("result"))
.annotate 'line', 2924
    unless_null $P103, fallback1752
    get_hll_global $P5107, "GLOBAL"
    get_who $P5106, $P5107
    set $P5105, $P5106["%REG"]
    unless_null $P5105, fallback1753
    get_hll_global $P5109, "GLOBAL"
    get_who $P5108, $P5109
    new $P5110, 'Hash'
    set $P5108["%REG"], $P5110
    set $P5105, $P5110
  fallback1753:
    unless_null $P5105, vivi_4571754
    die "Contextual %*REG not found"
    box $P5111, "Contextual %*REG not found"
    set $P5105, $P5111
  vivi_4571754:
    set $P103, $P5105
  fallback1752:
    set $P5104, $P103["cur"]
    unless_null $P5104, fallback1755
    nqp_get_sc_object $P5112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5104, $P5112
  fallback1755:
    $P5113 = $P101."push_pirop"("store_lex", utf8:"unicode:\"$\\x{a2}\"", $P5104)
.annotate 'line', 2925
    unless_null $P103, fallback1756
    get_hll_global $P5117, "GLOBAL"
    get_who $P5116, $P5117
    set $P5115, $P5116["%REG"]
    unless_null $P5115, fallback1757
    get_hll_global $P5119, "GLOBAL"
    get_who $P5118, $P5119
    new $P5120, 'Hash'
    set $P5118["%REG"], $P5120
    set $P5115, $P5120
  fallback1757:
    unless_null $P5115, vivi_4581758
    die "Contextual %*REG not found"
    box $P5121, "Contextual %*REG not found"
    set $P5115, $P5121
  vivi_4581758:
    set $P103, $P5115
  fallback1756:
    set $P5114, $P103["eos"]
    unless_null $P5114, fallback1759
    nqp_get_sc_object $P5122, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5114, $P5122
  fallback1759:
    unless_null $P103, fallback1760
    get_hll_global $P5126, "GLOBAL"
    get_who $P5125, $P5126
    set $P5124, $P5125["%REG"]
    unless_null $P5124, fallback1761
    get_hll_global $P5128, "GLOBAL"
    get_who $P5127, $P5128
    new $P5129, 'Hash'
    set $P5127["%REG"], $P5129
    set $P5124, $P5129
  fallback1761:
    unless_null $P5124, vivi_4591762
    die "Contextual %*REG not found"
    box $P5130, "Contextual %*REG not found"
    set $P5124, $P5130
  vivi_4591762:
    set $P103, $P5124
  fallback1760:
    set $P5123, $P103["tgt"]
    unless_null $P5123, fallback1763
    nqp_get_sc_object $P5131, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5123, $P5131
  fallback1763:
    $P5132 = $P101."push_pirop"("length", $P5114, $P5123)
.annotate 'line', 2926
    $P5133 = $P101."push_pirop"("eq", "$I19", 1, $P107)
.annotate 'line', 2927
    unless_null $P103, fallback1764
    get_hll_global $P5137, "GLOBAL"
    get_who $P5136, $P5137
    set $P5135, $P5136["%REG"]
    unless_null $P5135, fallback1765
    get_hll_global $P5139, "GLOBAL"
    get_who $P5138, $P5139
    new $P5140, 'Hash'
    set $P5138["%REG"], $P5140
    set $P5135, $P5140
  fallback1765:
    unless_null $P5135, vivi_4601766
    die "Contextual %*REG not found"
    box $P5141, "Contextual %*REG not found"
    set $P5135, $P5141
  vivi_4601766:
    set $P103, $P5135
  fallback1764:
    set $P5134, $P103["pos"]
    unless_null $P5134, fallback1767
    nqp_get_sc_object $P5142, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5134, $P5142
  fallback1767:
    unless_null $P103, fallback1768
    get_hll_global $P5146, "GLOBAL"
    get_who $P5145, $P5146
    set $P5144, $P5145["%REG"]
    unless_null $P5144, fallback1769
    get_hll_global $P5148, "GLOBAL"
    get_who $P5147, $P5148
    new $P5149, 'Hash'
    set $P5147["%REG"], $P5149
    set $P5144, $P5149
  fallback1769:
    unless_null $P5144, vivi_4611770
    die "Contextual %*REG not found"
    box $P5150, "Contextual %*REG not found"
    set $P5144, $P5150
  vivi_4611770:
    set $P103, $P5144
  fallback1768:
    set $P5143, $P103["eos"]
    unless_null $P5143, fallback1771
    nqp_get_sc_object $P5151, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5143, $P5151
  fallback1771:
    unless_null $P103, fallback1772
    get_hll_global $P5155, "GLOBAL"
    get_who $P5154, $P5155
    set $P5153, $P5154["%REG"]
    unless_null $P5153, fallback1773
    get_hll_global $P5157, "GLOBAL"
    get_who $P5156, $P5157
    new $P5158, 'Hash'
    set $P5156["%REG"], $P5158
    set $P5153, $P5158
  fallback1773:
    unless_null $P5153, vivi_4621774
    die "Contextual %*REG not found"
    box $P5159, "Contextual %*REG not found"
    set $P5153, $P5159
  vivi_4621774:
    set $P103, $P5153
  fallback1772:
    set $P5152, $P103["fail"]
    unless_null $P5152, fallback1775
    nqp_get_sc_object $P5160, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5152, $P5160
  fallback1775:
    $P5161 = $P101."push_pirop"("gt", $P5134, $P5143, $P5152)
.annotate 'line', 2928
    nqp_decontainerize $P5162, _lex_param_0
    $P5163 = $P5162."regex_post"(_lex_param_1)
    $P5164 = $P101."push"($P5163)
.annotate 'line', 2929
    $P5165 = $P101."push"($P107)
.annotate 'line', 2930
    unless_null $P103, fallback1776
    get_hll_global $P5169, "GLOBAL"
    get_who $P5168, $P5169
    set $P5167, $P5168["%REG"]
    unless_null $P5167, fallback1777
    get_hll_global $P5171, "GLOBAL"
    get_who $P5170, $P5171
    new $P5172, 'Hash'
    set $P5170["%REG"], $P5172
    set $P5167, $P5172
  fallback1777:
    unless_null $P5167, vivi_4631778
    die "Contextual %*REG not found"
    box $P5173, "Contextual %*REG not found"
    set $P5167, $P5173
  vivi_4631778:
    set $P103, $P5167
  fallback1776:
    set $P5166, $P103["cstack"]
    unless_null $P5166, fallback1779
    nqp_get_sc_object $P5174, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5166, $P5174
  fallback1779:
    unless_null $P103, fallback1780
    get_hll_global $P5178, "GLOBAL"
    get_who $P5177, $P5178
    set $P5176, $P5177["%REG"]
    unless_null $P5176, fallback1781
    get_hll_global $P5180, "GLOBAL"
    get_who $P5179, $P5180
    new $P5181, 'Hash'
    set $P5179["%REG"], $P5181
    set $P5176, $P5181
  fallback1781:
    unless_null $P5176, vivi_4641782
    die "Contextual %*REG not found"
    box $P5182, "Contextual %*REG not found"
    set $P5176, $P5182
  vivi_4641782:
    set $P103, $P5176
  fallback1780:
    set $P5175, $P103["cur"]
    unless_null $P5175, fallback1783
    nqp_get_sc_object $P5183, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5175, $P5183
  fallback1783:
    unless_null $P103, fallback1784
    get_hll_global $P5187, "GLOBAL"
    get_who $P5186, $P5187
    set $P5185, $P5186["%REG"]
    unless_null $P5185, fallback1785
    get_hll_global $P5189, "GLOBAL"
    get_who $P5188, $P5189
    new $P5190, 'Hash'
    set $P5188["%REG"], $P5190
    set $P5185, $P5190
  fallback1785:
    unless_null $P5185, vivi_4651786
    die "Contextual %*REG not found"
    box $P5191, "Contextual %*REG not found"
    set $P5185, $P5191
  vivi_4651786:
    set $P103, $P5185
  fallback1784:
    set $P5184, $P103["curclass"]
    unless_null $P5184, fallback1787
    nqp_get_sc_object $P5192, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5184, $P5192
  fallback1787:
    $P5193 = $P101."push_pirop"("repr_get_attr_obj", $P5166, $P5175, $P5184, "\"$!cstack\"")
.annotate 'line', 2931
    $P5194 = $P101."push"($P108)
.annotate 'line', 2932
    unless_null $P103, fallback1788
    get_hll_global $P5198, "GLOBAL"
    get_who $P5197, $P5198
    set $P5196, $P5197["%REG"]
    unless_null $P5196, fallback1789
    get_hll_global $P5200, "GLOBAL"
    get_who $P5199, $P5200
    new $P5201, 'Hash'
    set $P5199["%REG"], $P5201
    set $P5196, $P5201
  fallback1789:
    unless_null $P5196, vivi_4661790
    die "Contextual %*REG not found"
    box $P5202, "Contextual %*REG not found"
    set $P5196, $P5202
  vivi_4661790:
    set $P103, $P5196
  fallback1788:
    set $P5195, $P103["bstack"]
    unless_null $P5195, fallback1791
    nqp_get_sc_object $P5203, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5195, $P5203
  fallback1791:
    $P5204 = $P101."push_pirop"("unless", $P5195, $P106)
.annotate 'line', 2933
    unless_null $P103, fallback1792
    get_hll_global $P5208, "GLOBAL"
    get_who $P5207, $P5208
    set $P5206, $P5207["%REG"]
    unless_null $P5206, fallback1793
    get_hll_global $P5210, "GLOBAL"
    get_who $P5209, $P5210
    new $P5211, 'Hash'
    set $P5209["%REG"], $P5211
    set $P5206, $P5211
  fallback1793:
    unless_null $P5206, vivi_4671794
    die "Contextual %*REG not found"
    box $P5212, "Contextual %*REG not found"
    set $P5206, $P5212
  vivi_4671794:
    set $P103, $P5206
  fallback1792:
    set $P5205, $P103["bstack"]
    unless_null $P5205, fallback1795
    nqp_get_sc_object $P5213, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5205, $P5213
  fallback1795:
    $P5214 = $P101."push_pirop"("pop", "$I19", $P5205)
.annotate 'line', 2934
    unless_null $P103, fallback1796
    get_hll_global $P5218, "GLOBAL"
    get_who $P5217, $P5218
    set $P5216, $P5217["%REG"]
    unless_null $P5216, fallback1797
    get_hll_global $P5220, "GLOBAL"
    get_who $P5219, $P5220
    new $P5221, 'Hash'
    set $P5219["%REG"], $P5221
    set $P5216, $P5221
  fallback1797:
    unless_null $P5216, vivi_4681798
    die "Contextual %*REG not found"
    box $P5222, "Contextual %*REG not found"
    set $P5216, $P5222
  vivi_4681798:
    set $P103, $P5216
  fallback1796:
    set $P5215, $P103["cstack"]
    unless_null $P5215, fallback1799
    nqp_get_sc_object $P5223, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5215, $P5223
  fallback1799:
    $P5224 = $P101."push_pirop"("if_null", $P5215, $P111)
.annotate 'line', 2935
    unless_null $P103, fallback1800
    get_hll_global $P5228, "GLOBAL"
    get_who $P5227, $P5228
    set $P5226, $P5227["%REG"]
    unless_null $P5226, fallback1801
    get_hll_global $P5230, "GLOBAL"
    get_who $P5229, $P5230
    new $P5231, 'Hash'
    set $P5229["%REG"], $P5231
    set $P5226, $P5231
  fallback1801:
    unless_null $P5226, vivi_4691802
    die "Contextual %*REG not found"
    box $P5232, "Contextual %*REG not found"
    set $P5226, $P5232
  vivi_4691802:
    set $P103, $P5226
  fallback1800:
    set $P5225, $P103["cstack"]
    unless_null $P5225, fallback1803
    nqp_get_sc_object $P5233, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5225, $P5233
  fallback1803:
    $P5234 = $P101."push_pirop"("unless", $P5225, $P111)
.annotate 'line', 2936
    $P5235 = $P101."push_pirop"("dec", "$I19")
.annotate 'line', 2937
    unless_null $P103, fallback1804
    get_hll_global $P5239, "GLOBAL"
    get_who $P5238, $P5239
    set $P5237, $P5238["%REG"]
    unless_null $P5237, fallback1805
    get_hll_global $P5241, "GLOBAL"
    get_who $P5240, $P5241
    new $P5242, 'Hash'
    set $P5240["%REG"], $P5242
    set $P5237, $P5242
  fallback1805:
    unless_null $P5237, vivi_4701806
    die "Contextual %*REG not found"
    box $P5243, "Contextual %*REG not found"
    set $P5237, $P5243
  vivi_4701806:
    set $P103, $P5237
  fallback1804:
    set $P5236, $P103["cstack"]
    unless_null $P5236, fallback1807
    nqp_get_sc_object $P5244, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5236, $P5244
  fallback1807:
    set $S5021, $P5236
    concat $S5020, $S5021, "[$I19]"
    $P5245 = $P101."push_pirop"("set", "$P11", $S5020)
.annotate 'line', 2938
    $P5246 = $P101."push"($P111)
.annotate 'line', 2939
    unless_null $P103, fallback1808
    get_hll_global $P5250, "GLOBAL"
    get_who $P5249, $P5250
    set $P5248, $P5249["%REG"]
    unless_null $P5248, fallback1809
    get_hll_global $P5252, "GLOBAL"
    get_who $P5251, $P5252
    new $P5253, 'Hash'
    set $P5251["%REG"], $P5253
    set $P5248, $P5253
  fallback1809:
    unless_null $P5248, vivi_4711810
    die "Contextual %*REG not found"
    box $P5254, "Contextual %*REG not found"
    set $P5248, $P5254
  vivi_4711810:
    set $P103, $P5248
  fallback1808:
    set $P5247, $P103["rep"]
    unless_null $P5247, fallback1811
    nqp_get_sc_object $P5255, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5247, $P5255
  fallback1811:
    unless_null $P103, fallback1812
    get_hll_global $P5259, "GLOBAL"
    get_who $P5258, $P5259
    set $P5257, $P5258["%REG"]
    unless_null $P5257, fallback1813
    get_hll_global $P5261, "GLOBAL"
    get_who $P5260, $P5261
    new $P5262, 'Hash'
    set $P5260["%REG"], $P5262
    set $P5257, $P5262
  fallback1813:
    unless_null $P5257, vivi_4721814
    die "Contextual %*REG not found"
    box $P5263, "Contextual %*REG not found"
    set $P5257, $P5263
  vivi_4721814:
    set $P103, $P5257
  fallback1812:
    set $P5256, $P103["bstack"]
    unless_null $P5256, fallback1815
    nqp_get_sc_object $P5264, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5256, $P5264
  fallback1815:
    $P5265 = $P101."push_pirop"("pop", $P5247, $P5256)
.annotate 'line', 2940
    unless_null $P103, fallback1816
    get_hll_global $P5269, "GLOBAL"
    get_who $P5268, $P5269
    set $P5267, $P5268["%REG"]
    unless_null $P5267, fallback1817
    get_hll_global $P5271, "GLOBAL"
    get_who $P5270, $P5271
    new $P5272, 'Hash'
    set $P5270["%REG"], $P5272
    set $P5267, $P5272
  fallback1817:
    unless_null $P5267, vivi_4731818
    die "Contextual %*REG not found"
    box $P5273, "Contextual %*REG not found"
    set $P5267, $P5273
  vivi_4731818:
    set $P103, $P5267
  fallback1816:
    set $P5266, $P103["pos"]
    unless_null $P5266, fallback1819
    nqp_get_sc_object $P5274, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5266, $P5274
  fallback1819:
    unless_null $P103, fallback1820
    get_hll_global $P5278, "GLOBAL"
    get_who $P5277, $P5278
    set $P5276, $P5277["%REG"]
    unless_null $P5276, fallback1821
    get_hll_global $P5280, "GLOBAL"
    get_who $P5279, $P5280
    new $P5281, 'Hash'
    set $P5279["%REG"], $P5281
    set $P5276, $P5281
  fallback1821:
    unless_null $P5276, vivi_4741822
    die "Contextual %*REG not found"
    box $P5282, "Contextual %*REG not found"
    set $P5276, $P5282
  vivi_4741822:
    set $P103, $P5276
  fallback1820:
    set $P5275, $P103["bstack"]
    unless_null $P5275, fallback1823
    nqp_get_sc_object $P5283, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5275, $P5283
  fallback1823:
    $P5284 = $P101."push_pirop"("pop", $P5266, $P5275)
.annotate 'line', 2941
    unless_null $P103, fallback1824
    get_hll_global $P5288, "GLOBAL"
    get_who $P5287, $P5288
    set $P5286, $P5287["%REG"]
    unless_null $P5286, fallback1825
    get_hll_global $P5290, "GLOBAL"
    get_who $P5289, $P5290
    new $P5291, 'Hash'
    set $P5289["%REG"], $P5291
    set $P5286, $P5291
  fallback1825:
    unless_null $P5286, vivi_4751826
    die "Contextual %*REG not found"
    box $P5292, "Contextual %*REG not found"
    set $P5286, $P5292
  vivi_4751826:
    set $P103, $P5286
  fallback1824:
    set $P5285, $P103["bstack"]
    unless_null $P5285, fallback1827
    nqp_get_sc_object $P5293, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5285, $P5293
  fallback1827:
    $P5294 = $P101."push_pirop"("pop", "$I19", $P5285)
.annotate 'line', 2942
    unless_null $P103, fallback1828
    get_hll_global $P5298, "GLOBAL"
    get_who $P5297, $P5298
    set $P5296, $P5297["%REG"]
    unless_null $P5296, fallback1829
    get_hll_global $P5300, "GLOBAL"
    get_who $P5299, $P5300
    new $P5301, 'Hash'
    set $P5299["%REG"], $P5301
    set $P5296, $P5301
  fallback1829:
    unless_null $P5296, vivi_4761830
    die "Contextual %*REG not found"
    box $P5302, "Contextual %*REG not found"
    set $P5296, $P5302
  vivi_4761830:
    set $P103, $P5296
  fallback1828:
    set $P5295, $P103["pos"]
    unless_null $P5295, fallback1831
    nqp_get_sc_object $P5303, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5295, $P5303
  fallback1831:
    $P5304 = $P101."push_pirop"("lt", $P5295, -1, $P106)
.annotate 'line', 2943
    unless_null $P103, fallback1832
    get_hll_global $P5308, "GLOBAL"
    get_who $P5307, $P5308
    set $P5306, $P5307["%REG"]
    unless_null $P5306, fallback1833
    get_hll_global $P5310, "GLOBAL"
    get_who $P5309, $P5310
    new $P5311, 'Hash'
    set $P5309["%REG"], $P5311
    set $P5306, $P5311
  fallback1833:
    unless_null $P5306, vivi_4771834
    die "Contextual %*REG not found"
    box $P5312, "Contextual %*REG not found"
    set $P5306, $P5312
  vivi_4771834:
    set $P103, $P5306
  fallback1832:
    set $P5305, $P103["pos"]
    unless_null $P5305, fallback1835
    nqp_get_sc_object $P5313, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5305, $P5313
  fallback1835:
    $P5314 = $P101."push_pirop"("lt", $P5305, 0, $P108)
.annotate 'line', 2944
    $P5315 = $P101."push_pirop"("eq", "$I19", 0, $P108)
.annotate 'line', 2946
    unless_null $P103, fallback1836
    get_hll_global $P5319, "GLOBAL"
    get_who $P5318, $P5319
    set $P5317, $P5318["%REG"]
    unless_null $P5317, fallback1837
    get_hll_global $P5321, "GLOBAL"
    get_who $P5320, $P5321
    new $P5322, 'Hash'
    set $P5320["%REG"], $P5322
    set $P5317, $P5322
  fallback1837:
    unless_null $P5317, vivi_4781838
    die "Contextual %*REG not found"
    box $P5323, "Contextual %*REG not found"
    set $P5317, $P5323
  vivi_4781838:
    set $P103, $P5317
  fallback1836:
    set $P5316, $P103["cstack"]
    unless_null $P5316, fallback1839
    nqp_get_sc_object $P5324, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5316, $P5324
  fallback1839:
    $P5325 = $P101."push_pirop"("nqp_islist", "$I20", $P5316)
.annotate 'line', 2947
    $P5326 = $P101."push_pirop"("unless", "$I20", $P109)
.annotate 'line', 2948
    unless_null $P103, fallback1840
    get_hll_global $P5330, "GLOBAL"
    get_who $P5329, $P5330
    set $P5328, $P5329["%REG"]
    unless_null $P5328, fallback1841
    get_hll_global $P5332, "GLOBAL"
    get_who $P5331, $P5332
    new $P5333, 'Hash'
    set $P5331["%REG"], $P5333
    set $P5328, $P5333
  fallback1841:
    unless_null $P5328, vivi_4791842
    die "Contextual %*REG not found"
    box $P5334, "Contextual %*REG not found"
    set $P5328, $P5334
  vivi_4791842:
    set $P103, $P5328
  fallback1840:
    set $P5327, $P103["bstack"]
    unless_null $P5327, fallback1843
    nqp_get_sc_object $P5335, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5327, $P5335
  fallback1843:
    $P5336 = $P101."push_pirop"("elements", "$I18", $P5327)
.annotate 'line', 2949
    $P5337 = $P101."push_pirop"("le", "$I18", 0, $P110)
.annotate 'line', 2950
    $P5338 = $P101."push_pirop"("dec", "$I18")
.annotate 'line', 2951
    unless_null $P103, fallback1844
    get_hll_global $P5342, "GLOBAL"
    get_who $P5341, $P5342
    set $P5340, $P5341["%REG"]
    unless_null $P5340, fallback1845
    get_hll_global $P5344, "GLOBAL"
    get_who $P5343, $P5344
    new $P5345, 'Hash'
    set $P5343["%REG"], $P5345
    set $P5340, $P5345
  fallback1845:
    unless_null $P5340, vivi_4801846
    die "Contextual %*REG not found"
    box $P5346, "Contextual %*REG not found"
    set $P5340, $P5346
  vivi_4801846:
    set $P103, $P5340
  fallback1844:
    set $P5339, $P103["bstack"]
    unless_null $P5339, fallback1847
    nqp_get_sc_object $P5347, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5339, $P5347
  fallback1847:
    set $S5023, $P5339
    concat $S5022, $S5023, "[$I18]"
    $P5348 = $P101."push_pirop"("set", "$I18", $S5022)
.annotate 'line', 2952
    $P5349 = $P101."push"($P110)
.annotate 'line', 2953
    unless_null $P103, fallback1848
    get_hll_global $P5353, "GLOBAL"
    get_who $P5352, $P5353
    set $P5351, $P5352["%REG"]
    unless_null $P5351, fallback1849
    get_hll_global $P5355, "GLOBAL"
    get_who $P5354, $P5355
    new $P5356, 'Hash'
    set $P5354["%REG"], $P5356
    set $P5351, $P5356
  fallback1849:
    unless_null $P5351, vivi_4811850
    die "Contextual %*REG not found"
    box $P5357, "Contextual %*REG not found"
    set $P5351, $P5357
  vivi_4811850:
    set $P103, $P5351
  fallback1848:
    set $P5350, $P103["cstack"]
    unless_null $P5350, fallback1851
    nqp_get_sc_object $P5358, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5350, $P5358
  fallback1851:
    $P5359 = $P101."push_pirop"("assign", $P5350, "$I18")
.annotate 'line', 2954
    $P5360 = $P101."push"($P109)
.annotate 'line', 2955
    $P5361 = $P101."push_pirop"("jump", "$I19")
.annotate 'line', 2956
    $P5362 = $P101."push"($P106)
.annotate 'line', 2957
    unless_null $P103, fallback1852
    get_hll_global $P5366, "GLOBAL"
    get_who $P5365, $P5366
    set $P5364, $P5365["%REG"]
    unless_null $P5364, fallback1853
    get_hll_global $P5368, "GLOBAL"
    get_who $P5367, $P5368
    new $P5369, 'Hash'
    set $P5367["%REG"], $P5369
    set $P5364, $P5369
  fallback1853:
    unless_null $P5364, vivi_4821854
    die "Contextual %*REG not found"
    box $P5370, "Contextual %*REG not found"
    set $P5364, $P5370
  vivi_4821854:
    set $P103, $P5364
  fallback1852:
    set $P5363, $P103["cur"]
    unless_null $P5363, fallback1855
    nqp_get_sc_object $P5371, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5363, $P5371
  fallback1855:
    $P5372 = $P101."push_pirop"("callmethod", "\"!cursor_fail\"", $P5363)
.annotate 'line', 2959
    unless_null $P103, fallback1856
    get_hll_global $P5376, "GLOBAL"
    get_who $P5375, $P5376
    set $P5374, $P5375["%REG"]
    unless_null $P5374, fallback1857
    get_hll_global $P5378, "GLOBAL"
    get_who $P5377, $P5378
    new $P5379, 'Hash'
    set $P5377["%REG"], $P5379
    set $P5374, $P5379
  fallback1857:
    unless_null $P5374, vivi_4831858
    die "Contextual %*REG not found"
    box $P5380, "Contextual %*REG not found"
    set $P5374, $P5380
  vivi_4831858:
    set $P103, $P5374
  fallback1856:
    set $P5373, $P103["cur"]
    unless_null $P5373, fallback1859
    nqp_get_sc_object $P5381, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5373, $P5381
  fallback1859:
    $P5382 = $P101."result"($P5373)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_310_1346277600.974") :anon :lex :outer("cuid_125_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2905
    .lex "$reg", $P101 
    .lex "$name", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_lex $P5004, "$reglist"
    shift $P5003, $P5004
    set $P101, $P5003
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback1726
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback1727
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback1727:
    unless_null $P5006, vivi_4501728
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_4501728:
    set $P5005, $P5006
  fallback1726:
    set $S5001, $P101
    find_lex $P5013, "$prefix"
    set $S5003, $P5013
    set $S5004, $P101
    concat $S5002, $S5003, $S5004
    box $P5014, $S5002
    set $P5005[$S5001], $P5014
    set $P102, $P5014
.annotate 'line', 2908
    find_lex $P5015, "$ops"
    find_lex $P5017, "$reglist"
    shift $P5016, $P5017
    set $S5006, $P5016
    concat $S5005, ".local ", $S5006
    $P5018 = $P5015."push_pirop"($S5005, $P102)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "post_children" :subid("cuid_126_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2963
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_312_1346277600.974' 
    capture_lex $P5011 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    find_dynamic_lex $P5001, "$*PIRT"
    unless_null $P5001, fallback1862
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["$PIRT"]
    unless_null $P5002, fallback1863
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1863:
    unless_null $P5002, vivi_4851864
    die "Contextual $*PIRT not found"
    box $P5006, "Contextual $*PIRT not found"
    set $P5002, $P5006
  vivi_4851864:
    set $P5001, $P5002
  fallback1862:
    unless $P5001 goto if484_else1860 
    .const 'Sub' $P5007 = 'cuid_312_1346277600.974' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5010, $P5008
    goto if484_end1861
  if484_else1860:
.annotate 'line', 2974

                $P0 = find_dynamic_lex '$*PASTCOMPILER'
                $P1 = find_lex '$node'
                ($P5009 :slurpy) = $P0.'post_children'($P1)
            
    set $P5010, $P5009
  if484_end1861:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_312_1346277600.974") :anon :lex :outer("cuid_126_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2964
    .const 'Sub' $P5018 = 'cuid_311_1346277600.974' 
    capture_lex $P5018 
    .lex "$posts", $P101 
    .lex "@results", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 2965
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1865
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1865:
    $P5008 = $P5003."new"()
    set $P101, $P5008
    find_lex $P5012, "$node"
    $P5013 = $P5012."list"()
    set $P5009, $P5013
    iter $P5011, $P5013
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, for_handlers1867
    push_eh $P5015
  for_next1868:
    unless $P5011, for_done1870
    shift $P5016, $P5011
  for_redo1869:
    .const 'Sub' $P5014 = 'cuid_311_1346277600.974' 
    capture_lex $P5014
    $P5009 = $P5014($P5016)
    goto for_next1868
  for_handlers1867:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5015, $P5015, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, for_next1868
    eq $P5015, .CONTROL_LOOP_REDO, for_redo1869
  for_done1870:
    pop_eh 
    new $P5017, 'ResizablePMCArray'
    push $P5017, $P101
    push $P5017, $P102
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_311_1346277600.974") :anon :lex :outer("cuid_312_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2967
    .param pmc _lex_param_0 
    .lex "$sval", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2968
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["SVal"]
    unless_null $P5004, fallback1866
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5008
  fallback1866:
    set $S5001, _lex_param_0
    $P5009 = $P5004."new"($S5001 :named("value"))
    $P5010 = $P5002."as_post"($P5009)
    set $P101, $P5010
.annotate 'line', 2969
    find_lex $P5011, "$posts"
    $P5012 = $P5011."push"($P101)
    find_lex $P5013, "@results"
.annotate 'line', 2970
    $P5014 = $P101."result"()
    push $P5013, $P5014
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "children" :subid("cuid_127_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2983
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5018 = 'cuid_313_1346277600.974' 
    capture_lex $P5018 
    .lex "$posts", $P101 
    .lex "@results", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 2984
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1871
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1871:
    $P5008 = $P5003."new"()
    set $P101, $P5008
    $P5012 = _lex_param_1."list"()
    set $P5009, $P5012
    iter $P5011, $P5012
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers1872
    push_eh $P5014
  for_next1873:
    unless $P5011, for_done1875
    shift $P5015, $P5011
  for_redo1874:
    .const 'Sub' $P5013 = 'cuid_313_1346277600.974' 
    capture_lex $P5013
    $P5009 = $P5013($P5015)
    goto for_next1873
  for_handlers1872:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5014, $P5014, 'type'
    eq $P5014, .CONTROL_LOOP_NEXT, for_next1873
    eq $P5014, .CONTROL_LOOP_REDO, for_redo1874
  for_done1875:
    pop_eh 
    new $P5016, 'ResizablePMCArray'
    push $P5016, $P101
    push $P5016, $P102
    new $P5017, 'ResizablePMCArray'
    push $P5016, $P5017
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_313_1346277600.974") :anon :lex :outer("cuid_127_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2986
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 2987
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."as_post"(_lex_param_0)
    set $P101, $P5004
.annotate 'line', 2988
    find_lex $P5005, "$posts"
    $P5006 = $P5005."push"($P101)
.annotate 'line', 2989
    find_lex $P5007, "@results"
    $P5008 = $P101."result"()
    $P5009 = $P5007."push"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "regex_post" :subid("cuid_128_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2994
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$rxtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1876
    .lex "RETURN", $P102
.annotate 'line', 2995
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Node"]
    unless_null $P5002, fallback1880
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1880:
    $P5007 = $P5002."ACCEPTS"(_lex_param_1)
    set $P5017, $P5007
    unless $P5007 goto if486_end1879 
    find_dynamic_lex $P5009, "$*PASTCOMPILER"
    unless_null $P5009, fallback1881
    get_hll_global $P5012, "GLOBAL"
    get_who $P5011, $P5012
    set $P5010, $P5011["$PASTCOMPILER"]
    unless_null $P5010, fallback1882
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5013
  fallback1882:
    unless_null $P5010, vivi_4871883
    die "Contextual $*PASTCOMPILER not found"
    box $P5014, "Contextual $*PASTCOMPILER not found"
    set $P5010, $P5014
  vivi_4871883:
    set $P5009, $P5010
  fallback1881:
    $P5015 = $P5009."as_post"(_lex_param_1)
    find_lex $P5008, "RETURN"
    $P5016 = $P5008($P5015)
    set $P5017, $P5016
  if486_end1879:
.annotate 'line', 2996
    $P5018 = _lex_param_1."rxtype"()
    set $P5019, $P5018
    if $P5018 goto unless488_end1885 
    box $P5020, "concat"
    set $P5019, $P5020
  unless488_end1885:
    set $P101, $P5019
.annotate 'line', 2997
    nqp_decontainerize $P5021, _lex_param_0
    set $S5001, $P101
    $P5022 = $P5021.$S5001(_lex_param_1)
    goto lexotic_1877
  lexotic_1876:
    .get_results ($P5022)
  lexotic_1877:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "post_new" :subid("cuid_129_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3000
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%options", _lex_param_3 
    find_dynamic_lex $P5001, "$*PIRT"
    unless_null $P5001, fallback1888
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["$PIRT"]
    unless_null $P5002, fallback1889
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1889:
    unless_null $P5002, vivi_4901890
    die "Contextual $*PIRT not found"
    box $P5006, "Contextual $*PIRT not found"
    set $P5002, $P5006
  vivi_4901890:
    set $P5001, $P5002
  fallback1888:
    unless $P5001 goto if489_else1886 
.annotate 'line', 3001
.annotate 'line', 3002
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["PIRT"]
    unless_null $P5009, fallback1891
    get_hll_global $P5014, "GLOBAL"
    get_who $P5013, $P5014
    set $P5012, $P5013["PIRT"]
    unless_null $P5012, vivi_4911892
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5015
  vivi_4911892:
    set $P5009, $P5012
  fallback1891:
    get_who $P5008, $P5009
    set $S5001, _lex_param_1
    set $P5007, $P5008[$S5001]
    unless_null $P5007, fallback1893
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5016
  fallback1893:
    $P5017 = $P5007."new"(_lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P5019, $P5017
    goto if489_end1887
  if489_else1886:
.annotate 'line', 3004

                $P0 = find_lex '$type'
                $S0 = $P0
                $P0 = get_root_global ['parrot';'POST'], $S0
                $P1 = find_lex '@args'
                $P2 = find_lex '%options'
                $P5018 = $P0.'new'($P1 :flat, $P2 :flat :named)
            
    set $P5019, $P5018
  if489_end1887:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_130_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3016
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5085 = 'cuid_314_1346277600.974' 
    capture_lex $P5085 
    .lex "$prefix", $P101 
    .lex "$endlabel", $P102 
    .lex "$label_list_ops", $P103 
    .lex "$ops", $P104 
    .lex "$altcount", $P105 
    .lex "$iter", $P106 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1894
    .lex "RETURN", $P107
.annotate 'line', 3017
    $P5007 = _lex_param_1."name"()
    set $P5012, $P5007
    if $P5007 goto unless492_end1897 
.annotate 'line', 3018
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."altseq"(_lex_param_1)
    find_lex $P5008, "RETURN"
    $P5011 = $P5008($P5010)
    set $P5012, $P5011
  unless492_end1897:
.annotate 'line', 3023
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."unique"("alt")
    set $S5002, $P5014
    concat $S5001, $S5002, "_"
    box $P5015, $S5001
    set $P101, $P5015
.annotate 'line', 3024
    nqp_decontainerize $P5016, _lex_param_0
    set $S5004, $P101
    concat $S5003, $S5004, "end"
    $P5017 = $P5016."post_new"("Label", $S5003 :named("name"))
    set $P102, $P5017
.annotate 'line', 3025
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."post_new"("Ops", "$P11" :named("result"))
    set $P103, $P5019
.annotate 'line', 3026
    $P5020 = $P103."push_pirop"("new", "$P11", "\"ResizableIntegerArray\"")
.annotate 'line', 3027
    nqp_decontainerize $P5021, _lex_param_0
    find_dynamic_lex $P5023, "%*REG"
    unless_null $P5023, fallback1898
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["%REG"]
    unless_null $P5024, fallback1899
    get_hll_global $P5028, "GLOBAL"
    get_who $P5027, $P5028
    new $P5029, 'Hash'
    set $P5027["%REG"], $P5029
    set $P5024, $P5029
  fallback1899:
    unless_null $P5024, vivi_4931900
    die "Contextual %*REG not found"
    box $P5030, "Contextual %*REG not found"
    set $P5024, $P5030
  vivi_4931900:
    set $P5023, $P5024
  fallback1898:
    set $P5022, $P5023["cur"]
    unless_null $P5022, fallback1901
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5031
  fallback1901:
    $P5032 = $P5021."post_new"("Ops", $P5022 :named("result"))
    set $P104, $P5032
.annotate 'line', 3028
    $P5033 = $P104."push"($P103)
.annotate 'line', 3029
    nqp_decontainerize $P5034, _lex_param_0
    $P5035 = $P5034."regex_mark"($P104, $P102, -1, 0)
.annotate 'line', 3030
    find_dynamic_lex $P5037, "%*REG"
    unless_null $P5037, fallback1902
    get_hll_global $P5040, "GLOBAL"
    get_who $P5039, $P5040
    set $P5038, $P5039["%REG"]
    unless_null $P5038, fallback1903
    get_hll_global $P5042, "GLOBAL"
    get_who $P5041, $P5042
    new $P5043, 'Hash'
    set $P5041["%REG"], $P5043
    set $P5038, $P5043
  fallback1903:
    unless_null $P5038, vivi_4941904
    die "Contextual %*REG not found"
    box $P5044, "Contextual %*REG not found"
    set $P5038, $P5044
  vivi_4941904:
    set $P5037, $P5038
  fallback1902:
    set $P5036, $P5037["cur"]
    unless_null $P5036, fallback1905
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5036, $P5045
  fallback1905:
    find_dynamic_lex $P5047, "%*REG"
    unless_null $P5047, fallback1906
    get_hll_global $P5050, "GLOBAL"
    get_who $P5049, $P5050
    set $P5048, $P5049["%REG"]
    unless_null $P5048, fallback1907
    get_hll_global $P5052, "GLOBAL"
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%REG"], $P5053
    set $P5048, $P5053
  fallback1907:
    unless_null $P5048, vivi_4951908
    die "Contextual %*REG not found"
    box $P5054, "Contextual %*REG not found"
    set $P5048, $P5054
  vivi_4951908:
    set $P5047, $P5048
  fallback1906:
    set $P5046, $P5047["pos"]
    unless_null $P5046, fallback1909
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5046, $P5055
  fallback1909:
.annotate 'line', 3031
    nqp_decontainerize $P5056, _lex_param_0
    $P5057 = _lex_param_1."name"()
    $P5058 = $P5056."escape"($P5057)
    $P5059 = $P103."result"()
    $P5060 = $P104."push_pirop"("callmethod", "\"!alt\"", $P5036, $P5046, $P5058, $P5059)
.annotate 'line', 3032
    find_dynamic_lex $P5062, "%*REG"
    unless_null $P5062, fallback1910
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    set $P5063, $P5064["%REG"]
    unless_null $P5063, fallback1911
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    new $P5068, 'Hash'
    set $P5066["%REG"], $P5068
    set $P5063, $P5068
  fallback1911:
    unless_null $P5063, vivi_4961912
    die "Contextual %*REG not found"
    box $P5069, "Contextual %*REG not found"
    set $P5063, $P5069
  vivi_4961912:
    set $P5062, $P5063
  fallback1910:
    set $P5061, $P5062["fail"]
    unless_null $P5061, fallback1913
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5061, $P5070
  fallback1913:
    $P5071 = $P104."push_pirop"("goto", $P5061)
    box $P5072, 0
    set $P105, $P5072
.annotate 'line', 3036
    $P5074 = _lex_param_1."list"()
    iter $P5073, $P5074
    set $P106, $P5073
    new $P5078, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5078, while497_handlers1917
    push_eh $P5078
  while497_test1914:
    set $P5077, $P106
    unless $P106 goto while497_done1918 
  while497_redo1916:
    .const 'Sub' $P5075 = 'cuid_314_1346277600.974' 
    capture_lex $P5075
    $P5076 = $P5075()
    set $P5077, $P5076
    goto while497_test1914 
  while497_handlers1917:
    .get_results ($P5078)
    pop_upto_eh $P5078
    getattribute $P5078, $P5078, 'type'
    eq $P5078, .CONTROL_LOOP_NEXT, while497_test1914
    eq $P5078, .CONTROL_LOOP_REDO, while497_redo1916
  while497_done1918:
    pop_eh 
.annotate 'line', 3046
    $P5079 = $P104."push"($P102)
.annotate 'line', 3047
    $P5080 = _lex_param_1."backtrack"()
    set $S5005, $P5080
    iseq $I5001, $S5005, "r"
    box $P5084, $I5001
    set $P5083, $P5084
    unless $I5001 goto if498_end1920 
    nqp_decontainerize $P5081, _lex_param_0
    $P5082 = $P5081."regex_commit"($P104, $P102)
    set $P5083, $P5082
  if498_end1920:
    goto lexotic_1895
  lexotic_1894:
    .get_results ($P104)
  lexotic_1895:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_314_1346277600.974") :anon :lex :outer("cuid_130_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3037
    .lex "$altlabel", $P101 
    .lex "$apost", $P102 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 3038
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$prefix"
    set $S5002, $P5005
    find_lex $P5006, "$altcount"
    set $S5003, $P5006
    concat $S5001, $S5002, $S5003
    $P5007 = $P5003."post_new"("Label", $S5001 :named("name"))
    set $P101, $P5007
.annotate 'line', 3039
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5011, "$iter"
    shift $P5010, $P5011
    $P5012 = $P5008."regex_post"($P5010)
    set $P102, $P5012
.annotate 'line', 3040
    find_lex $P5013, "$ops"
    $P5014 = $P5013."push"($P101)
.annotate 'line', 3041
    find_lex $P5015, "$ops"
    $P5016 = $P5015."push"($P102)
.annotate 'line', 3042
    find_lex $P5017, "$ops"
    find_lex $P5018, "$endlabel"
    $P5019 = $P5017."push_pirop"("goto", $P5018)
.annotate 'line', 3043
    find_lex $P5020, "$label_list_ops"
    find_lex $P5021, "$label_list_ops"
    $P5022 = $P5021."result"()
    $P5023 = $P101."result"()
    $P5024 = $P5020."push_pirop"("nqp_push_label", $P5022, $P5023)
    find_lex $P5025, "$altcount"
    set tmp_3, $P5025
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5026, $N5001
    store_lex "$altcount", $P5026
    .return (tmp_3) 
.end
.HLL "nqp"
.namespace []
.sub "altseq" :subid("cuid_131_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3051
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$altcount", $P103 
    .lex "$iter", $P104 
    .lex "$endlabel", $P105 
    .lex "$altlabel", $P106 
    .lex "$apost", $P107 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .local pmc tmp_4 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
.annotate 'line', 3052
    nqp_decontainerize $P5008, _lex_param_0
    find_dynamic_lex $P5010, "%*REG"
    unless_null $P5010, fallback1921
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["%REG"]
    unless_null $P5011, fallback1922
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    new $P5016, 'Hash'
    set $P5014["%REG"], $P5016
    set $P5011, $P5016
  fallback1922:
    unless_null $P5011, vivi_4991923
    die "Contextual %*REG not found"
    box $P5017, "Contextual %*REG not found"
    set $P5011, $P5017
  vivi_4991923:
    set $P5010, $P5011
  fallback1921:
    set $P5009, $P5010["cur"]
    unless_null $P5009, fallback1924
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5018
  fallback1924:
    $P5019 = $P5008."post_new"("Ops", $P5009 :named("result"))
    set $P101, $P5019
.annotate 'line', 3053
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."unique"("alt")
    set $S5002, $P5021
    concat $S5001, $S5002, "_"
    box $P5022, $S5001
    set $P102, $P5022
    box $P5023, 0
    set $P103, $P5023
.annotate 'line', 3055
    $P5025 = _lex_param_1."list"()
    iter $P5024, $P5025
    set $P104, $P5024
.annotate 'line', 3056
    nqp_decontainerize $P5026, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "end"
    $P5027 = $P5026."post_new"("Label", $S5003 :named("name"))
    set $P105, $P5027
.annotate 'line', 3057
    nqp_decontainerize $P5028, _lex_param_0
    set $S5006, $P102
    set $S5007, $P103
    concat $S5005, $S5006, $S5007
    $P5029 = $P5028."post_new"("Label", $S5005 :named("name"))
    set $P106, $P5029
.annotate 'line', 3058
    nqp_decontainerize $P5030, _lex_param_0
    shift $P5031, $P104
    $P5032 = $P5030."regex_post"($P5031)
    set $P107, $P5032
    new $P5054, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5054, while500_handlers1928
    push_eh $P5054
  while500_test1925:
    set $P5053, $P104
    unless $P104 goto while500_done1929 
  while500_redo1927:
.annotate 'line', 3059
.annotate 'line', 3060
    $P5033 = $P101."push"($P106)
    set tmp_4, $P103
    set $N5002, tmp_4
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5034, $N5001
    set $P103, $P5034
.annotate 'line', 3062
    nqp_decontainerize $P5034, _lex_param_0
    set $S5009, $P102
    set $S5010, $P103
    concat $S5008, $S5009, $S5010
    $P5035 = $P5034."post_new"("Label", $S5008 :named("name"))
    set $P106, $P5035
.annotate 'line', 3063
    nqp_decontainerize $P5036, _lex_param_0
    find_dynamic_lex $P5038, "%*REG"
    unless_null $P5038, fallback1930
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    set $P5039, $P5040["%REG"]
    unless_null $P5039, fallback1931
    get_hll_global $P5043, "GLOBAL"
    get_who $P5042, $P5043
    new $P5044, 'Hash'
    set $P5042["%REG"], $P5044
    set $P5039, $P5044
  fallback1931:
    unless_null $P5039, vivi_5011932
    die "Contextual %*REG not found"
    box $P5045, "Contextual %*REG not found"
    set $P5039, $P5045
  vivi_5011932:
    set $P5038, $P5039
  fallback1930:
    set $P5037, $P5038["pos"]
    unless_null $P5037, fallback1933
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5037, $P5046
  fallback1933:
    $P5047 = $P5036."regex_mark"($P101, $P106, $P5037, 0)
.annotate 'line', 3064
    $P5048 = $P101."push"($P107)
.annotate 'line', 3065
    $P5049 = $P101."push_pirop"("goto", $P105)
.annotate 'line', 3066
    nqp_decontainerize $P5050, _lex_param_0
    shift $P5051, $P104
    $P5052 = $P5050."regex_post"($P5051)
    set $P107, $P5052
    set $P5053, $P107
    goto while500_test1925 
  while500_handlers1928:
    .get_results ($P5054)
    pop_upto_eh $P5054
    getattribute $P5054, $P5054, 'type'
    eq $P5054, .CONTROL_LOOP_NEXT, while500_test1925
    eq $P5054, .CONTROL_LOOP_REDO, while500_redo1927
  while500_done1929:
    pop_eh 
.annotate 'line', 3068
    $P5055 = $P101."push"($P106)
.annotate 'line', 3069
    $P5056 = $P101."push"($P107)
.annotate 'line', 3070
    $P5057 = $P101."push"($P105)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_132_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3074
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$subtype", $P102 
    .lex "$donelabel", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 3075
    nqp_decontainerize $P5004, _lex_param_0
    find_dynamic_lex $P5006, "%*REG"
    unless_null $P5006, fallback1934
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["%REG"]
    unless_null $P5007, fallback1935
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%REG"], $P5012
    set $P5007, $P5012
  fallback1935:
    unless_null $P5007, vivi_5021936
    die "Contextual %*REG not found"
    box $P5013, "Contextual %*REG not found"
    set $P5007, $P5013
  vivi_5021936:
    set $P5006, $P5007
  fallback1934:
    set $P5005, $P5006["cur"]
    unless_null $P5005, fallback1937
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5014
  fallback1937:
    $P5015 = $P5004."post_new"("Ops", $P5005 :named("result"))
    set $P101, $P5015
.annotate 'line', 3076
    $P5016 = _lex_param_1."subtype"()
    set $P102, $P5016
.annotate 'line', 3077
    nqp_decontainerize $P5017, _lex_param_0
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxanchor")
    set $S5002, $P5019
    concat $S5001, $S5002, "_done"
    $P5020 = $P5017."post_new"("Label", $S5001 :named("name"))
    set $P103, $P5020
    set $S5003, $P102
    iseq $I5001, $S5003, "bos"
    unless $I5001 goto if503_else1938 
.annotate 'line', 3078
.annotate 'line', 3079
    find_dynamic_lex $P5022, "%*REG"
    unless_null $P5022, fallback1940
    get_hll_global $P5025, "GLOBAL"
    get_who $P5024, $P5025
    set $P5023, $P5024["%REG"]
    unless_null $P5023, fallback1941
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    new $P5028, 'Hash'
    set $P5026["%REG"], $P5028
    set $P5023, $P5028
  fallback1941:
    unless_null $P5023, vivi_5041942
    die "Contextual %*REG not found"
    box $P5029, "Contextual %*REG not found"
    set $P5023, $P5029
  vivi_5041942:
    set $P5022, $P5023
  fallback1940:
    set $P5021, $P5022["pos"]
    unless_null $P5021, fallback1943
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5030
  fallback1943:
    find_dynamic_lex $P5032, "%*REG"
    unless_null $P5032, fallback1944
    get_hll_global $P5035, "GLOBAL"
    get_who $P5034, $P5035
    set $P5033, $P5034["%REG"]
    unless_null $P5033, fallback1945
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    new $P5038, 'Hash'
    set $P5036["%REG"], $P5038
    set $P5033, $P5038
  fallback1945:
    unless_null $P5033, vivi_5051946
    die "Contextual %*REG not found"
    box $P5039, "Contextual %*REG not found"
    set $P5033, $P5039
  vivi_5051946:
    set $P5032, $P5033
  fallback1944:
    set $P5031, $P5032["fail"]
    unless_null $P5031, fallback1947
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5031, $P5040
  fallback1947:
    $P5041 = $P101."push_pirop"("ne", $P5021, 0, $P5031)
    set $P5447, $P5041
    goto if503_end1939
  if503_else1938:
    set $S5004, $P102
    iseq $I5002, $S5004, "eos"
    unless $I5002 goto if506_else1948 
.annotate 'line', 3081
.annotate 'line', 3082
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback1950
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback1951
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback1951:
    unless_null $P5044, vivi_5071952
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_5071952:
    set $P5043, $P5044
  fallback1950:
    set $P5042, $P5043["pos"]
    unless_null $P5042, fallback1953
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5051
  fallback1953:
    find_dynamic_lex $P5053, "%*REG"
    unless_null $P5053, fallback1954
    get_hll_global $P5056, "GLOBAL"
    get_who $P5055, $P5056
    set $P5054, $P5055["%REG"]
    unless_null $P5054, fallback1955
    get_hll_global $P5058, "GLOBAL"
    get_who $P5057, $P5058
    new $P5059, 'Hash'
    set $P5057["%REG"], $P5059
    set $P5054, $P5059
  fallback1955:
    unless_null $P5054, vivi_5081956
    die "Contextual %*REG not found"
    box $P5060, "Contextual %*REG not found"
    set $P5054, $P5060
  vivi_5081956:
    set $P5053, $P5054
  fallback1954:
    set $P5052, $P5053["eos"]
    unless_null $P5052, fallback1957
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5052, $P5061
  fallback1957:
    find_dynamic_lex $P5063, "%*REG"
    unless_null $P5063, fallback1958
    get_hll_global $P5066, "GLOBAL"
    get_who $P5065, $P5066
    set $P5064, $P5065["%REG"]
    unless_null $P5064, fallback1959
    get_hll_global $P5068, "GLOBAL"
    get_who $P5067, $P5068
    new $P5069, 'Hash'
    set $P5067["%REG"], $P5069
    set $P5064, $P5069
  fallback1959:
    unless_null $P5064, vivi_5091960
    die "Contextual %*REG not found"
    box $P5070, "Contextual %*REG not found"
    set $P5064, $P5070
  vivi_5091960:
    set $P5063, $P5064
  fallback1958:
    set $P5062, $P5063["fail"]
    unless_null $P5062, fallback1961
    nqp_get_sc_object $P5071, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5062, $P5071
  fallback1961:
    $P5072 = $P101."push_pirop"("lt", $P5042, $P5052, $P5062)
    set $P5446, $P5072
    goto if506_end1949
  if506_else1948:
    set $S5005, $P102
    iseq $I5003, $S5005, "lwb"
    unless $I5003 goto if510_else1962 
.annotate 'line', 3084
.annotate 'line', 3085
    find_dynamic_lex $P5074, "%*REG"
    unless_null $P5074, fallback1964
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    set $P5075, $P5076["%REG"]
    unless_null $P5075, fallback1965
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    new $P5080, 'Hash'
    set $P5078["%REG"], $P5080
    set $P5075, $P5080
  fallback1965:
    unless_null $P5075, vivi_5111966
    die "Contextual %*REG not found"
    box $P5081, "Contextual %*REG not found"
    set $P5075, $P5081
  vivi_5111966:
    set $P5074, $P5075
  fallback1964:
    set $P5073, $P5074["pos"]
    unless_null $P5073, fallback1967
    nqp_get_sc_object $P5082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5073, $P5082
  fallback1967:
    find_dynamic_lex $P5084, "%*REG"
    unless_null $P5084, fallback1968
    get_hll_global $P5087, "GLOBAL"
    get_who $P5086, $P5087
    set $P5085, $P5086["%REG"]
    unless_null $P5085, fallback1969
    get_hll_global $P5089, "GLOBAL"
    get_who $P5088, $P5089
    new $P5090, 'Hash'
    set $P5088["%REG"], $P5090
    set $P5085, $P5090
  fallback1969:
    unless_null $P5085, vivi_5121970
    die "Contextual %*REG not found"
    box $P5091, "Contextual %*REG not found"
    set $P5085, $P5091
  vivi_5121970:
    set $P5084, $P5085
  fallback1968:
    set $P5083, $P5084["eos"]
    unless_null $P5083, fallback1971
    nqp_get_sc_object $P5092, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5083, $P5092
  fallback1971:
    find_dynamic_lex $P5094, "%*REG"
    unless_null $P5094, fallback1972
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    set $P5095, $P5096["%REG"]
    unless_null $P5095, fallback1973
    get_hll_global $P5099, "GLOBAL"
    get_who $P5098, $P5099
    new $P5100, 'Hash'
    set $P5098["%REG"], $P5100
    set $P5095, $P5100
  fallback1973:
    unless_null $P5095, vivi_5131974
    die "Contextual %*REG not found"
    box $P5101, "Contextual %*REG not found"
    set $P5095, $P5101
  vivi_5131974:
    set $P5094, $P5095
  fallback1972:
    set $P5093, $P5094["fail"]
    unless_null $P5093, fallback1975
    nqp_get_sc_object $P5102, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5093, $P5102
  fallback1975:
    $P5103 = $P101."push_pirop"("ge", $P5073, $P5083, $P5093)
.annotate 'line', 3086
    find_dynamic_lex $P5105, "%*REG"
    unless_null $P5105, fallback1976
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    set $P5106, $P5107["%REG"]
    unless_null $P5106, fallback1977
    get_hll_global $P5110, "GLOBAL"
    get_who $P5109, $P5110
    new $P5111, 'Hash'
    set $P5109["%REG"], $P5111
    set $P5106, $P5111
  fallback1977:
    unless_null $P5106, vivi_5141978
    die "Contextual %*REG not found"
    box $P5112, "Contextual %*REG not found"
    set $P5106, $P5112
  vivi_5141978:
    set $P5105, $P5106
  fallback1976:
    set $P5104, $P5105["tgt"]
    unless_null $P5104, fallback1979
    nqp_get_sc_object $P5113, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5104, $P5113
  fallback1979:
    find_dynamic_lex $P5115, "%*REG"
    unless_null $P5115, fallback1980
    get_hll_global $P5118, "GLOBAL"
    get_who $P5117, $P5118
    set $P5116, $P5117["%REG"]
    unless_null $P5116, fallback1981
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    new $P5121, 'Hash'
    set $P5119["%REG"], $P5121
    set $P5116, $P5121
  fallback1981:
    unless_null $P5116, vivi_5151982
    die "Contextual %*REG not found"
    box $P5122, "Contextual %*REG not found"
    set $P5116, $P5122
  vivi_5151982:
    set $P5115, $P5116
  fallback1980:
    set $P5114, $P5115["pos"]
    unless_null $P5114, fallback1983
    nqp_get_sc_object $P5123, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5114, $P5123
  fallback1983:
    $P5124 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5104, $P5114)
.annotate 'line', 3087
    find_dynamic_lex $P5126, "%*REG"
    unless_null $P5126, fallback1984
    get_hll_global $P5129, "GLOBAL"
    get_who $P5128, $P5129
    set $P5127, $P5128["%REG"]
    unless_null $P5127, fallback1985
    get_hll_global $P5131, "GLOBAL"
    get_who $P5130, $P5131
    new $P5132, 'Hash'
    set $P5130["%REG"], $P5132
    set $P5127, $P5132
  fallback1985:
    unless_null $P5127, vivi_5161986
    die "Contextual %*REG not found"
    box $P5133, "Contextual %*REG not found"
    set $P5127, $P5133
  vivi_5161986:
    set $P5126, $P5127
  fallback1984:
    set $P5125, $P5126["fail"]
    unless_null $P5125, fallback1987
    nqp_get_sc_object $P5134, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5125, $P5134
  fallback1987:
    $P5135 = $P101."push_pirop"("unless", "$I11", $P5125)
.annotate 'line', 3088
    find_dynamic_lex $P5137, "%*REG"
    unless_null $P5137, fallback1988
    get_hll_global $P5140, "GLOBAL"
    get_who $P5139, $P5140
    set $P5138, $P5139["%REG"]
    unless_null $P5138, fallback1989
    get_hll_global $P5142, "GLOBAL"
    get_who $P5141, $P5142
    new $P5143, 'Hash'
    set $P5141["%REG"], $P5143
    set $P5138, $P5143
  fallback1989:
    unless_null $P5138, vivi_5171990
    die "Contextual %*REG not found"
    box $P5144, "Contextual %*REG not found"
    set $P5138, $P5144
  vivi_5171990:
    set $P5137, $P5138
  fallback1988:
    set $P5136, $P5137["pos"]
    unless_null $P5136, fallback1991
    nqp_get_sc_object $P5145, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5136, $P5145
  fallback1991:
    $P5146 = $P101."push_pirop"("sub", "$I11", $P5136, 1)
.annotate 'line', 3089
    find_dynamic_lex $P5148, "%*REG"
    unless_null $P5148, fallback1992
    get_hll_global $P5151, "GLOBAL"
    get_who $P5150, $P5151
    set $P5149, $P5150["%REG"]
    unless_null $P5149, fallback1993
    get_hll_global $P5153, "GLOBAL"
    get_who $P5152, $P5153
    new $P5154, 'Hash'
    set $P5152["%REG"], $P5154
    set $P5149, $P5154
  fallback1993:
    unless_null $P5149, vivi_5181994
    die "Contextual %*REG not found"
    box $P5155, "Contextual %*REG not found"
    set $P5149, $P5155
  vivi_5181994:
    set $P5148, $P5149
  fallback1992:
    set $P5147, $P5148["tgt"]
    unless_null $P5147, fallback1995
    nqp_get_sc_object $P5156, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5147, $P5156
  fallback1995:
    $P5157 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5147, "$I11")
.annotate 'line', 3090
    find_dynamic_lex $P5159, "%*REG"
    unless_null $P5159, fallback1996
    get_hll_global $P5162, "GLOBAL"
    get_who $P5161, $P5162
    set $P5160, $P5161["%REG"]
    unless_null $P5160, fallback1997
    get_hll_global $P5164, "GLOBAL"
    get_who $P5163, $P5164
    new $P5165, 'Hash'
    set $P5163["%REG"], $P5165
    set $P5160, $P5165
  fallback1997:
    unless_null $P5160, vivi_5191998
    die "Contextual %*REG not found"
    box $P5166, "Contextual %*REG not found"
    set $P5160, $P5166
  vivi_5191998:
    set $P5159, $P5160
  fallback1996:
    set $P5158, $P5159["fail"]
    unless_null $P5158, fallback1999
    nqp_get_sc_object $P5167, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5158, $P5167
  fallback1999:
    $P5168 = $P101."push_pirop"("if", "$I11", $P5158)
    set $P5445, $P5168
    goto if510_end1963
  if510_else1962:
    set $S5006, $P102
    iseq $I5004, $S5006, "rwb"
    unless $I5004 goto if520_else2000 
.annotate 'line', 3092
.annotate 'line', 3093
    find_dynamic_lex $P5170, "%*REG"
    unless_null $P5170, fallback2002
    get_hll_global $P5173, "GLOBAL"
    get_who $P5172, $P5173
    set $P5171, $P5172["%REG"]
    unless_null $P5171, fallback2003
    get_hll_global $P5175, "GLOBAL"
    get_who $P5174, $P5175
    new $P5176, 'Hash'
    set $P5174["%REG"], $P5176
    set $P5171, $P5176
  fallback2003:
    unless_null $P5171, vivi_5212004
    die "Contextual %*REG not found"
    box $P5177, "Contextual %*REG not found"
    set $P5171, $P5177
  vivi_5212004:
    set $P5170, $P5171
  fallback2002:
    set $P5169, $P5170["pos"]
    unless_null $P5169, fallback2005
    nqp_get_sc_object $P5178, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5169, $P5178
  fallback2005:
    find_dynamic_lex $P5180, "%*REG"
    unless_null $P5180, fallback2006
    get_hll_global $P5183, "GLOBAL"
    get_who $P5182, $P5183
    set $P5181, $P5182["%REG"]
    unless_null $P5181, fallback2007
    get_hll_global $P5185, "GLOBAL"
    get_who $P5184, $P5185
    new $P5186, 'Hash'
    set $P5184["%REG"], $P5186
    set $P5181, $P5186
  fallback2007:
    unless_null $P5181, vivi_5222008
    die "Contextual %*REG not found"
    box $P5187, "Contextual %*REG not found"
    set $P5181, $P5187
  vivi_5222008:
    set $P5180, $P5181
  fallback2006:
    set $P5179, $P5180["fail"]
    unless_null $P5179, fallback2009
    nqp_get_sc_object $P5188, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5179, $P5188
  fallback2009:
    $P5189 = $P101."push_pirop"("le", $P5169, 0, $P5179)
.annotate 'line', 3094
    find_dynamic_lex $P5191, "%*REG"
    unless_null $P5191, fallback2010
    get_hll_global $P5194, "GLOBAL"
    get_who $P5193, $P5194
    set $P5192, $P5193["%REG"]
    unless_null $P5192, fallback2011
    get_hll_global $P5196, "GLOBAL"
    get_who $P5195, $P5196
    new $P5197, 'Hash'
    set $P5195["%REG"], $P5197
    set $P5192, $P5197
  fallback2011:
    unless_null $P5192, vivi_5232012
    die "Contextual %*REG not found"
    box $P5198, "Contextual %*REG not found"
    set $P5192, $P5198
  vivi_5232012:
    set $P5191, $P5192
  fallback2010:
    set $P5190, $P5191["tgt"]
    unless_null $P5190, fallback2013
    nqp_get_sc_object $P5199, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5190, $P5199
  fallback2013:
    find_dynamic_lex $P5201, "%*REG"
    unless_null $P5201, fallback2014
    get_hll_global $P5204, "GLOBAL"
    get_who $P5203, $P5204
    set $P5202, $P5203["%REG"]
    unless_null $P5202, fallback2015
    get_hll_global $P5206, "GLOBAL"
    get_who $P5205, $P5206
    new $P5207, 'Hash'
    set $P5205["%REG"], $P5207
    set $P5202, $P5207
  fallback2015:
    unless_null $P5202, vivi_5242016
    die "Contextual %*REG not found"
    box $P5208, "Contextual %*REG not found"
    set $P5202, $P5208
  vivi_5242016:
    set $P5201, $P5202
  fallback2014:
    set $P5200, $P5201["pos"]
    unless_null $P5200, fallback2017
    nqp_get_sc_object $P5209, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5200, $P5209
  fallback2017:
    $P5210 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5190, $P5200)
.annotate 'line', 3095
    find_dynamic_lex $P5212, "%*REG"
    unless_null $P5212, fallback2018
    get_hll_global $P5215, "GLOBAL"
    get_who $P5214, $P5215
    set $P5213, $P5214["%REG"]
    unless_null $P5213, fallback2019
    get_hll_global $P5217, "GLOBAL"
    get_who $P5216, $P5217
    new $P5218, 'Hash'
    set $P5216["%REG"], $P5218
    set $P5213, $P5218
  fallback2019:
    unless_null $P5213, vivi_5252020
    die "Contextual %*REG not found"
    box $P5219, "Contextual %*REG not found"
    set $P5213, $P5219
  vivi_5252020:
    set $P5212, $P5213
  fallback2018:
    set $P5211, $P5212["fail"]
    unless_null $P5211, fallback2021
    nqp_get_sc_object $P5220, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5211, $P5220
  fallback2021:
    $P5221 = $P101."push_pirop"("if", "$I11", $P5211)
.annotate 'line', 3096
    find_dynamic_lex $P5223, "%*REG"
    unless_null $P5223, fallback2022
    get_hll_global $P5226, "GLOBAL"
    get_who $P5225, $P5226
    set $P5224, $P5225["%REG"]
    unless_null $P5224, fallback2023
    get_hll_global $P5228, "GLOBAL"
    get_who $P5227, $P5228
    new $P5229, 'Hash'
    set $P5227["%REG"], $P5229
    set $P5224, $P5229
  fallback2023:
    unless_null $P5224, vivi_5262024
    die "Contextual %*REG not found"
    box $P5230, "Contextual %*REG not found"
    set $P5224, $P5230
  vivi_5262024:
    set $P5223, $P5224
  fallback2022:
    set $P5222, $P5223["pos"]
    unless_null $P5222, fallback2025
    nqp_get_sc_object $P5231, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5222, $P5231
  fallback2025:
    $P5232 = $P101."push_pirop"("sub", "$I11", $P5222, 1)
.annotate 'line', 3097
    find_dynamic_lex $P5234, "%*REG"
    unless_null $P5234, fallback2026
    get_hll_global $P5237, "GLOBAL"
    get_who $P5236, $P5237
    set $P5235, $P5236["%REG"]
    unless_null $P5235, fallback2027
    get_hll_global $P5239, "GLOBAL"
    get_who $P5238, $P5239
    new $P5240, 'Hash'
    set $P5238["%REG"], $P5240
    set $P5235, $P5240
  fallback2027:
    unless_null $P5235, vivi_5272028
    die "Contextual %*REG not found"
    box $P5241, "Contextual %*REG not found"
    set $P5235, $P5241
  vivi_5272028:
    set $P5234, $P5235
  fallback2026:
    set $P5233, $P5234["tgt"]
    unless_null $P5233, fallback2029
    nqp_get_sc_object $P5242, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5233, $P5242
  fallback2029:
    $P5243 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5233, "$I11")
.annotate 'line', 3098
    find_dynamic_lex $P5245, "%*REG"
    unless_null $P5245, fallback2030
    get_hll_global $P5248, "GLOBAL"
    get_who $P5247, $P5248
    set $P5246, $P5247["%REG"]
    unless_null $P5246, fallback2031
    get_hll_global $P5250, "GLOBAL"
    get_who $P5249, $P5250
    new $P5251, 'Hash'
    set $P5249["%REG"], $P5251
    set $P5246, $P5251
  fallback2031:
    unless_null $P5246, vivi_5282032
    die "Contextual %*REG not found"
    box $P5252, "Contextual %*REG not found"
    set $P5246, $P5252
  vivi_5282032:
    set $P5245, $P5246
  fallback2030:
    set $P5244, $P5245["fail"]
    unless_null $P5244, fallback2033
    nqp_get_sc_object $P5253, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5244, $P5253
  fallback2033:
    $P5254 = $P101."push_pirop"("unless", "$I11", $P5244)
    set $P5444, $P5254
    goto if520_end2001
  if520_else2000:
    set $S5007, $P102
    iseq $I5005, $S5007, "bol"
    unless $I5005 goto if529_else2034 
.annotate 'line', 3100
.annotate 'line', 3101
    find_dynamic_lex $P5256, "%*REG"
    unless_null $P5256, fallback2036
    get_hll_global $P5259, "GLOBAL"
    get_who $P5258, $P5259
    set $P5257, $P5258["%REG"]
    unless_null $P5257, fallback2037
    get_hll_global $P5261, "GLOBAL"
    get_who $P5260, $P5261
    new $P5262, 'Hash'
    set $P5260["%REG"], $P5262
    set $P5257, $P5262
  fallback2037:
    unless_null $P5257, vivi_5302038
    die "Contextual %*REG not found"
    box $P5263, "Contextual %*REG not found"
    set $P5257, $P5263
  vivi_5302038:
    set $P5256, $P5257
  fallback2036:
    set $P5255, $P5256["pos"]
    unless_null $P5255, fallback2039
    nqp_get_sc_object $P5264, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5255, $P5264
  fallback2039:
    $P5265 = $P101."push_pirop"("eq", $P5255, 0, $P103)
.annotate 'line', 3102
    find_dynamic_lex $P5267, "%*REG"
    unless_null $P5267, fallback2040
    get_hll_global $P5270, "GLOBAL"
    get_who $P5269, $P5270
    set $P5268, $P5269["%REG"]
    unless_null $P5268, fallback2041
    get_hll_global $P5272, "GLOBAL"
    get_who $P5271, $P5272
    new $P5273, 'Hash'
    set $P5271["%REG"], $P5273
    set $P5268, $P5273
  fallback2041:
    unless_null $P5268, vivi_5312042
    die "Contextual %*REG not found"
    box $P5274, "Contextual %*REG not found"
    set $P5268, $P5274
  vivi_5312042:
    set $P5267, $P5268
  fallback2040:
    set $P5266, $P5267["pos"]
    unless_null $P5266, fallback2043
    nqp_get_sc_object $P5275, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5266, $P5275
  fallback2043:
    find_dynamic_lex $P5277, "%*REG"
    unless_null $P5277, fallback2044
    get_hll_global $P5280, "GLOBAL"
    get_who $P5279, $P5280
    set $P5278, $P5279["%REG"]
    unless_null $P5278, fallback2045
    get_hll_global $P5282, "GLOBAL"
    get_who $P5281, $P5282
    new $P5283, 'Hash'
    set $P5281["%REG"], $P5283
    set $P5278, $P5283
  fallback2045:
    unless_null $P5278, vivi_5322046
    die "Contextual %*REG not found"
    box $P5284, "Contextual %*REG not found"
    set $P5278, $P5284
  vivi_5322046:
    set $P5277, $P5278
  fallback2044:
    set $P5276, $P5277["eos"]
    unless_null $P5276, fallback2047
    nqp_get_sc_object $P5285, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5276, $P5285
  fallback2047:
    find_dynamic_lex $P5287, "%*REG"
    unless_null $P5287, fallback2048
    get_hll_global $P5290, "GLOBAL"
    get_who $P5289, $P5290
    set $P5288, $P5289["%REG"]
    unless_null $P5288, fallback2049
    get_hll_global $P5292, "GLOBAL"
    get_who $P5291, $P5292
    new $P5293, 'Hash'
    set $P5291["%REG"], $P5293
    set $P5288, $P5293
  fallback2049:
    unless_null $P5288, vivi_5332050
    die "Contextual %*REG not found"
    box $P5294, "Contextual %*REG not found"
    set $P5288, $P5294
  vivi_5332050:
    set $P5287, $P5288
  fallback2048:
    set $P5286, $P5287["fail"]
    unless_null $P5286, fallback2051
    nqp_get_sc_object $P5295, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5286, $P5295
  fallback2051:
    $P5296 = $P101."push_pirop"("ge", $P5266, $P5276, $P5286)
.annotate 'line', 3103
    find_dynamic_lex $P5298, "%*REG"
    unless_null $P5298, fallback2052
    get_hll_global $P5301, "GLOBAL"
    get_who $P5300, $P5301
    set $P5299, $P5300["%REG"]
    unless_null $P5299, fallback2053
    get_hll_global $P5303, "GLOBAL"
    get_who $P5302, $P5303
    new $P5304, 'Hash'
    set $P5302["%REG"], $P5304
    set $P5299, $P5304
  fallback2053:
    unless_null $P5299, vivi_5342054
    die "Contextual %*REG not found"
    box $P5305, "Contextual %*REG not found"
    set $P5299, $P5305
  vivi_5342054:
    set $P5298, $P5299
  fallback2052:
    set $P5297, $P5298["pos"]
    unless_null $P5297, fallback2055
    nqp_get_sc_object $P5306, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5297, $P5306
  fallback2055:
    $P5307 = $P101."push_pirop"("sub", "$I11", $P5297, 1)
.annotate 'line', 3104
    find_dynamic_lex $P5309, "%*REG"
    unless_null $P5309, fallback2056
    get_hll_global $P5312, "GLOBAL"
    get_who $P5311, $P5312
    set $P5310, $P5311["%REG"]
    unless_null $P5310, fallback2057
    get_hll_global $P5314, "GLOBAL"
    get_who $P5313, $P5314
    new $P5315, 'Hash'
    set $P5313["%REG"], $P5315
    set $P5310, $P5315
  fallback2057:
    unless_null $P5310, vivi_5352058
    die "Contextual %*REG not found"
    box $P5316, "Contextual %*REG not found"
    set $P5310, $P5316
  vivi_5352058:
    set $P5309, $P5310
  fallback2056:
    set $P5308, $P5309["tgt"]
    unless_null $P5308, fallback2059
    nqp_get_sc_object $P5317, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5308, $P5317
  fallback2059:
    $P5318 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P5308, "$I11")
.annotate 'line', 3105
    find_dynamic_lex $P5320, "%*REG"
    unless_null $P5320, fallback2060
    get_hll_global $P5323, "GLOBAL"
    get_who $P5322, $P5323
    set $P5321, $P5322["%REG"]
    unless_null $P5321, fallback2061
    get_hll_global $P5325, "GLOBAL"
    get_who $P5324, $P5325
    new $P5326, 'Hash'
    set $P5324["%REG"], $P5326
    set $P5321, $P5326
  fallback2061:
    unless_null $P5321, vivi_5362062
    die "Contextual %*REG not found"
    box $P5327, "Contextual %*REG not found"
    set $P5321, $P5327
  vivi_5362062:
    set $P5320, $P5321
  fallback2060:
    set $P5319, $P5320["fail"]
    unless_null $P5319, fallback2063
    nqp_get_sc_object $P5328, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5319, $P5328
  fallback2063:
    $P5329 = $P101."push_pirop"("unless", "$I11", $P5319)
.annotate 'line', 3106
    $P5330 = $P101."push"($P103)
    set $P5443, $P5330
    goto if529_end2035
  if529_else2034:
    set $S5008, $P102
    iseq $I5006, $S5008, "eol"
    unless $I5006 goto if537_else2064 
.annotate 'line', 3108
.annotate 'line', 3109
    find_dynamic_lex $P5332, "%*REG"
    unless_null $P5332, fallback2066
    get_hll_global $P5335, "GLOBAL"
    get_who $P5334, $P5335
    set $P5333, $P5334["%REG"]
    unless_null $P5333, fallback2067
    get_hll_global $P5337, "GLOBAL"
    get_who $P5336, $P5337
    new $P5338, 'Hash'
    set $P5336["%REG"], $P5338
    set $P5333, $P5338
  fallback2067:
    unless_null $P5333, vivi_5382068
    die "Contextual %*REG not found"
    box $P5339, "Contextual %*REG not found"
    set $P5333, $P5339
  vivi_5382068:
    set $P5332, $P5333
  fallback2066:
    set $P5331, $P5332["tgt"]
    unless_null $P5331, fallback2069
    nqp_get_sc_object $P5340, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5331, $P5340
  fallback2069:
    find_dynamic_lex $P5342, "%*REG"
    unless_null $P5342, fallback2070
    get_hll_global $P5345, "GLOBAL"
    get_who $P5344, $P5345
    set $P5343, $P5344["%REG"]
    unless_null $P5343, fallback2071
    get_hll_global $P5347, "GLOBAL"
    get_who $P5346, $P5347
    new $P5348, 'Hash'
    set $P5346["%REG"], $P5348
    set $P5343, $P5348
  fallback2071:
    unless_null $P5343, vivi_5392072
    die "Contextual %*REG not found"
    box $P5349, "Contextual %*REG not found"
    set $P5343, $P5349
  vivi_5392072:
    set $P5342, $P5343
  fallback2070:
    set $P5341, $P5342["pos"]
    unless_null $P5341, fallback2073
    nqp_get_sc_object $P5350, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5341, $P5350
  fallback2073:
    $P5351 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P5331, $P5341)
.annotate 'line', 3110
    $P5352 = $P101."push_pirop"("if", "$I11", $P103)
.annotate 'line', 3111
    find_dynamic_lex $P5354, "%*REG"
    unless_null $P5354, fallback2074
    get_hll_global $P5357, "GLOBAL"
    get_who $P5356, $P5357
    set $P5355, $P5356["%REG"]
    unless_null $P5355, fallback2075
    get_hll_global $P5359, "GLOBAL"
    get_who $P5358, $P5359
    new $P5360, 'Hash'
    set $P5358["%REG"], $P5360
    set $P5355, $P5360
  fallback2075:
    unless_null $P5355, vivi_5402076
    die "Contextual %*REG not found"
    box $P5361, "Contextual %*REG not found"
    set $P5355, $P5361
  vivi_5402076:
    set $P5354, $P5355
  fallback2074:
    set $P5353, $P5354["pos"]
    unless_null $P5353, fallback2077
    nqp_get_sc_object $P5362, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5353, $P5362
  fallback2077:
    find_dynamic_lex $P5364, "%*REG"
    unless_null $P5364, fallback2078
    get_hll_global $P5367, "GLOBAL"
    get_who $P5366, $P5367
    set $P5365, $P5366["%REG"]
    unless_null $P5365, fallback2079
    get_hll_global $P5369, "GLOBAL"
    get_who $P5368, $P5369
    new $P5370, 'Hash'
    set $P5368["%REG"], $P5370
    set $P5365, $P5370
  fallback2079:
    unless_null $P5365, vivi_5412080
    die "Contextual %*REG not found"
    box $P5371, "Contextual %*REG not found"
    set $P5365, $P5371
  vivi_5412080:
    set $P5364, $P5365
  fallback2078:
    set $P5363, $P5364["eos"]
    unless_null $P5363, fallback2081
    nqp_get_sc_object $P5372, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5363, $P5372
  fallback2081:
    find_dynamic_lex $P5374, "%*REG"
    unless_null $P5374, fallback2082
    get_hll_global $P5377, "GLOBAL"
    get_who $P5376, $P5377
    set $P5375, $P5376["%REG"]
    unless_null $P5375, fallback2083
    get_hll_global $P5379, "GLOBAL"
    get_who $P5378, $P5379
    new $P5380, 'Hash'
    set $P5378["%REG"], $P5380
    set $P5375, $P5380
  fallback2083:
    unless_null $P5375, vivi_5422084
    die "Contextual %*REG not found"
    box $P5381, "Contextual %*REG not found"
    set $P5375, $P5381
  vivi_5422084:
    set $P5374, $P5375
  fallback2082:
    set $P5373, $P5374["fail"]
    unless_null $P5373, fallback2085
    nqp_get_sc_object $P5382, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5373, $P5382
  fallback2085:
    $P5383 = $P101."push_pirop"("ne", $P5353, $P5363, $P5373)
.annotate 'line', 3112
    find_dynamic_lex $P5385, "%*REG"
    unless_null $P5385, fallback2086
    get_hll_global $P5388, "GLOBAL"
    get_who $P5387, $P5388
    set $P5386, $P5387["%REG"]
    unless_null $P5386, fallback2087
    get_hll_global $P5390, "GLOBAL"
    get_who $P5389, $P5390
    new $P5391, 'Hash'
    set $P5389["%REG"], $P5391
    set $P5386, $P5391
  fallback2087:
    unless_null $P5386, vivi_5432088
    die "Contextual %*REG not found"
    box $P5392, "Contextual %*REG not found"
    set $P5386, $P5392
  vivi_5432088:
    set $P5385, $P5386
  fallback2086:
    set $P5384, $P5385["pos"]
    unless_null $P5384, fallback2089
    nqp_get_sc_object $P5393, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5384, $P5393
  fallback2089:
    $P5394 = $P101."push_pirop"("eq", $P5384, 0, $P103)
.annotate 'line', 3113
    find_dynamic_lex $P5396, "%*REG"
    unless_null $P5396, fallback2090
    get_hll_global $P5399, "GLOBAL"
    get_who $P5398, $P5399
    set $P5397, $P5398["%REG"]
    unless_null $P5397, fallback2091
    get_hll_global $P5401, "GLOBAL"
    get_who $P5400, $P5401
    new $P5402, 'Hash'
    set $P5400["%REG"], $P5402
    set $P5397, $P5402
  fallback2091:
    unless_null $P5397, vivi_5442092
    die "Contextual %*REG not found"
    box $P5403, "Contextual %*REG not found"
    set $P5397, $P5403
  vivi_5442092:
    set $P5396, $P5397
  fallback2090:
    set $P5395, $P5396["pos"]
    unless_null $P5395, fallback2093
    nqp_get_sc_object $P5404, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5395, $P5404
  fallback2093:
    $P5405 = $P101."push_pirop"("sub", "$I11", $P5395, 1)
.annotate 'line', 3114
    find_dynamic_lex $P5407, "%*REG"
    unless_null $P5407, fallback2094
    get_hll_global $P5410, "GLOBAL"
    get_who $P5409, $P5410
    set $P5408, $P5409["%REG"]
    unless_null $P5408, fallback2095
    get_hll_global $P5412, "GLOBAL"
    get_who $P5411, $P5412
    new $P5413, 'Hash'
    set $P5411["%REG"], $P5413
    set $P5408, $P5413
  fallback2095:
    unless_null $P5408, vivi_5452096
    die "Contextual %*REG not found"
    box $P5414, "Contextual %*REG not found"
    set $P5408, $P5414
  vivi_5452096:
    set $P5407, $P5408
  fallback2094:
    set $P5406, $P5407["tgt"]
    unless_null $P5406, fallback2097
    nqp_get_sc_object $P5415, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5406, $P5415
  fallback2097:
    $P5416 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P5406, "$I11")
.annotate 'line', 3115
    find_dynamic_lex $P5418, "%*REG"
    unless_null $P5418, fallback2098
    get_hll_global $P5421, "GLOBAL"
    get_who $P5420, $P5421
    set $P5419, $P5420["%REG"]
    unless_null $P5419, fallback2099
    get_hll_global $P5423, "GLOBAL"
    get_who $P5422, $P5423
    new $P5424, 'Hash'
    set $P5422["%REG"], $P5424
    set $P5419, $P5424
  fallback2099:
    unless_null $P5419, vivi_5462100
    die "Contextual %*REG not found"
    box $P5425, "Contextual %*REG not found"
    set $P5419, $P5425
  vivi_5462100:
    set $P5418, $P5419
  fallback2098:
    set $P5417, $P5418["fail"]
    unless_null $P5417, fallback2101
    nqp_get_sc_object $P5426, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5417, $P5426
  fallback2101:
    $P5427 = $P101."push_pirop"("if", "$I11", $P5417)
.annotate 'line', 3116
    $P5428 = $P101."push"($P103)
    set $P5442, $P5428
    goto if537_end2065
  if537_else2064:
    set $S5009, $P102
    iseq $I5007, $S5009, "fail"
    box $P5441, $I5007
    set $P5440, $P5441
    unless $I5007 goto if547_end2103 
.annotate 'line', 3118
.annotate 'line', 3119
    find_dynamic_lex $P5430, "%*REG"
    unless_null $P5430, fallback2104
    get_hll_global $P5433, "GLOBAL"
    get_who $P5432, $P5433
    set $P5431, $P5432["%REG"]
    unless_null $P5431, fallback2105
    get_hll_global $P5435, "GLOBAL"
    get_who $P5434, $P5435
    new $P5436, 'Hash'
    set $P5434["%REG"], $P5436
    set $P5431, $P5436
  fallback2105:
    unless_null $P5431, vivi_5482106
    die "Contextual %*REG not found"
    box $P5437, "Contextual %*REG not found"
    set $P5431, $P5437
  vivi_5482106:
    set $P5430, $P5431
  fallback2104:
    set $P5429, $P5430["fail"]
    unless_null $P5429, fallback2107
    nqp_get_sc_object $P5438, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5429, $P5438
  fallback2107:
    $P5439 = $P101."push_pirop"("goto", $P5429)
    set $P5440, $P5439
  if547_end2103:
    set $P5442, $P5440
  if537_end2065:
    set $P5443, $P5442
  if529_end2035:
    set $P5444, $P5443
  if520_end2001:
    set $P5445, $P5444
  if510_end1963:
    set $P5446, $P5445
  if506_end1949:
    set $P5447, $P5446
  if503_end1939:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_133_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3135
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5069 = 'cuid_315_1346277600.974' 
    capture_lex $P5069 
    .lex "$ops", $P101 
    .lex "$subtype", $P102 
    .lex "$cclass", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 3136
    nqp_decontainerize $P5004, _lex_param_0
    find_dynamic_lex $P5006, "%*REG"
    unless_null $P5006, fallback2108
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["%REG"]
    unless_null $P5007, fallback2109
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%REG"], $P5012
    set $P5007, $P5012
  fallback2109:
    unless_null $P5007, vivi_5492110
    die "Contextual %*REG not found"
    box $P5013, "Contextual %*REG not found"
    set $P5007, $P5013
  vivi_5492110:
    set $P5006, $P5007
  fallback2108:
    set $P5005, $P5006["cur"]
    unless_null $P5005, fallback2111
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5014
  fallback2111:
    $P5015 = $P5004."post_new"("Ops", $P5005 :named("result"))
    set $P101, $P5015
.annotate 'line', 3137
    $P5016 = _lex_param_1."subtype"()
    set $P102, $P5016
.annotate 'line', 3138
    find_dynamic_lex $P5018, "%*REG"
    unless_null $P5018, fallback2112
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["%REG"]
    unless_null $P5019, fallback2113
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    new $P5024, 'Hash'
    set $P5022["%REG"], $P5024
    set $P5019, $P5024
  fallback2113:
    unless_null $P5019, vivi_5502114
    die "Contextual %*REG not found"
    box $P5025, "Contextual %*REG not found"
    set $P5019, $P5025
  vivi_5502114:
    set $P5018, $P5019
  fallback2112:
    set $P5017, $P5018["pos"]
    unless_null $P5017, fallback2115
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5026
  fallback2115:
    find_dynamic_lex $P5028, "%*REG"
    unless_null $P5028, fallback2116
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    set $P5029, $P5030["%REG"]
    unless_null $P5029, fallback2117
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    new $P5034, 'Hash'
    set $P5032["%REG"], $P5034
    set $P5029, $P5034
  fallback2117:
    unless_null $P5029, vivi_5512118
    die "Contextual %*REG not found"
    box $P5035, "Contextual %*REG not found"
    set $P5029, $P5035
  vivi_5512118:
    set $P5028, $P5029
  fallback2116:
    set $P5027, $P5028["eos"]
    unless_null $P5027, fallback2119
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5036
  fallback2119:
    find_dynamic_lex $P5038, "%*REG"
    unless_null $P5038, fallback2120
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    set $P5039, $P5040["%REG"]
    unless_null $P5039, fallback2121
    get_hll_global $P5043, "GLOBAL"
    get_who $P5042, $P5043
    new $P5044, 'Hash'
    set $P5042["%REG"], $P5044
    set $P5039, $P5044
  fallback2121:
    unless_null $P5039, vivi_5522122
    die "Contextual %*REG not found"
    box $P5045, "Contextual %*REG not found"
    set $P5039, $P5045
  vivi_5522122:
    set $P5038, $P5039
  fallback2120:
    set $P5037, $P5038["fail"]
    unless_null $P5037, fallback2123
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5037, $P5046
  fallback2123:
    $P5047 = $P101."push_pirop"("ge", $P5017, $P5027, $P5037)
    find_lex $P5049, "%cclass_code"
    set $S5002, $P102
    downcase $S5001, $S5002
    set $P5048, $P5049[$S5001]
    unless_null $P5048, fallback2124
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5048, $P5050
  fallback2124:
    set $P103, $P5048
    set $P5053, $P103
    if $P103 goto unless553_end2126 
.annotate 'line', 3140
    nqp_decontainerize $P5051, _lex_param_0
    set $S5005, $P102
    concat $S5004, "Unrecognized subtype '", $S5005
    concat $S5003, $S5004, "' in QAST::Regex cclass"
    $P5052 = $P5051."panic"($S5003)
    set $P5053, $P5052
  unless553_end2126:
    set $S5006, $P103
    isne $I5001, $S5006, ".CCLASS_ANY"
    box $P5057, $I5001
    set $P5056, $P5057
    unless $I5001 goto if554_end2128 
    .const 'Sub' $P5054 = 'cuid_315_1346277600.974' 
    capture_lex $P5054
    $P5055 = $P5054()
    set $P5056, $P5055
  if554_end2128:
.annotate 'line', 3152
    find_dynamic_lex $P5059, "%*REG"
    unless_null $P5059, fallback2157
    get_hll_global $P5062, "GLOBAL"
    get_who $P5061, $P5062
    set $P5060, $P5061["%REG"]
    unless_null $P5060, fallback2158
    get_hll_global $P5064, "GLOBAL"
    get_who $P5063, $P5064
    new $P5065, 'Hash'
    set $P5063["%REG"], $P5065
    set $P5060, $P5065
  fallback2158:
    unless_null $P5060, vivi_5632159
    die "Contextual %*REG not found"
    box $P5066, "Contextual %*REG not found"
    set $P5060, $P5066
  vivi_5632159:
    set $P5059, $P5060
  fallback2157:
    set $P5058, $P5059["pos"]
    unless_null $P5058, fallback2160
    nqp_get_sc_object $P5067, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5058, $P5067
  fallback2160:
    $P5068 = $P101."push_pirop"("add", $P5058, 1)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_315_1346277600.974") :anon :lex :outer("cuid_133_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3142
    .lex "$testop", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 3143
    find_lex $P5002, "$node"
    $P5003 = $P5002."negate"()
    unless $P5003 goto if555_else2129 
    set $S5001, "if"
    goto if555_end2130
  if555_else2129:
    set $S5001, "unless"
  if555_end2130:
    box $P5004, $S5001
    set $P101, $P5004
.annotate 'line', 3144
    find_lex $P5005, "$ops"
    find_lex $P5006, "$cclass"
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2131
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2132
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2132:
    unless_null $P5009, vivi_5562133
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_5562133:
    set $P5008, $P5009
  fallback2131:
    set $P5007, $P5008["tgt"]
    unless_null $P5007, fallback2134
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5016
  fallback2134:
    find_dynamic_lex $P5018, "%*REG"
    unless_null $P5018, fallback2135
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["%REG"]
    unless_null $P5019, fallback2136
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    new $P5024, 'Hash'
    set $P5022["%REG"], $P5024
    set $P5019, $P5024
  fallback2136:
    unless_null $P5019, vivi_5572137
    die "Contextual %*REG not found"
    box $P5025, "Contextual %*REG not found"
    set $P5019, $P5025
  vivi_5572137:
    set $P5018, $P5019
  fallback2135:
    set $P5017, $P5018["pos"]
    unless_null $P5017, fallback2138
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5026
  fallback2138:
    $P5027 = $P5005."push_pirop"("is_cclass", "$I11", $P5006, $P5007, $P5017)
.annotate 'line', 3145
    find_lex $P5028, "$ops"
    find_dynamic_lex $P5030, "%*REG"
    unless_null $P5030, fallback2139
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    set $P5031, $P5032["%REG"]
    unless_null $P5031, fallback2140
    get_hll_global $P5035, "GLOBAL"
    get_who $P5034, $P5035
    new $P5036, 'Hash'
    set $P5034["%REG"], $P5036
    set $P5031, $P5036
  fallback2140:
    unless_null $P5031, vivi_5582141
    die "Contextual %*REG not found"
    box $P5037, "Contextual %*REG not found"
    set $P5031, $P5037
  vivi_5582141:
    set $P5030, $P5031
  fallback2139:
    set $P5029, $P5030["fail"]
    unless_null $P5029, fallback2142
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5038
  fallback2142:
    $P5039 = $P5028."push_pirop"($P101, "$I11", $P5029)
    find_lex $P5040, "$subtype"
    set $S5002, $P5040
    iseq $I5001, $S5002, "nl"
    box $P5078, $I5001
    set $P5077, $P5078
    unless $I5001 goto if559_end2144 
.annotate 'line', 3146
.annotate 'line', 3147
    find_lex $P5041, "$ops"
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback2145
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback2146
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback2146:
    unless_null $P5044, vivi_5602147
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_5602147:
    set $P5043, $P5044
  fallback2145:
    set $P5042, $P5043["tgt"]
    unless_null $P5042, fallback2148
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5051
  fallback2148:
    find_dynamic_lex $P5053, "%*REG"
    unless_null $P5053, fallback2149
    get_hll_global $P5056, "GLOBAL"
    get_who $P5055, $P5056
    set $P5054, $P5055["%REG"]
    unless_null $P5054, fallback2150
    get_hll_global $P5058, "GLOBAL"
    get_who $P5057, $P5058
    new $P5059, 'Hash'
    set $P5057["%REG"], $P5059
    set $P5054, $P5059
  fallback2150:
    unless_null $P5054, vivi_5612151
    die "Contextual %*REG not found"
    box $P5060, "Contextual %*REG not found"
    set $P5054, $P5060
  vivi_5612151:
    set $P5053, $P5054
  fallback2149:
    set $P5052, $P5053["pos"]
    unless_null $P5052, fallback2152
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5052, $P5061
  fallback2152:
    $P5062 = $P5041."push_pirop"("substr", "$S10", $P5042, $P5052, 2)
.annotate 'line', 3148
    find_lex $P5063, "$ops"
    $P5064 = $P5063."push_pirop"("iseq", "$I11", "$S10", "\"\\r\\n\"")
.annotate 'line', 3149
    find_lex $P5065, "$ops"
    find_dynamic_lex $P5067, "%*REG"
    unless_null $P5067, fallback2153
    get_hll_global $P5070, "GLOBAL"
    get_who $P5069, $P5070
    set $P5068, $P5069["%REG"]
    unless_null $P5068, fallback2154
    get_hll_global $P5072, "GLOBAL"
    get_who $P5071, $P5072
    new $P5073, 'Hash'
    set $P5071["%REG"], $P5073
    set $P5068, $P5073
  fallback2154:
    unless_null $P5068, vivi_5622155
    die "Contextual %*REG not found"
    box $P5074, "Contextual %*REG not found"
    set $P5068, $P5074
  vivi_5622155:
    set $P5067, $P5068
  fallback2153:
    set $P5066, $P5067["pos"]
    unless_null $P5066, fallback2156
    nqp_get_sc_object $P5075, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5066, $P5075
  fallback2156:
    $P5076 = $P5065."push_pirop"("add", $P5066, "$I11")
    set $P5077, $P5076
  if559_end2144:
    .return ($P5077) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_134_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3156
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_316_1346277600.974' 
    capture_lex $P5021 
    .lex "$ops", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 3157
    nqp_decontainerize $P5002, _lex_param_0
    find_dynamic_lex $P5004, "%*REG"
    unless_null $P5004, fallback2161
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["%REG"]
    unless_null $P5005, fallback2162
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%REG"], $P5010
    set $P5005, $P5010
  fallback2162:
    unless_null $P5005, vivi_5642163
    die "Contextual %*REG not found"
    box $P5011, "Contextual %*REG not found"
    set $P5005, $P5011
  vivi_5642163:
    set $P5004, $P5005
  fallback2161:
    set $P5003, $P5004["cur"]
    unless_null $P5003, fallback2164
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5012
  fallback2164:
    $P5013 = $P5002."post_new"("Ops", $P5003 :named("result"))
    set $P101, $P5013
.annotate 'line', 3158
    $P5017 = _lex_param_1."list"()
    set $P5014, $P5017
    iter $P5016, $P5017
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, for_handlers2165
    push_eh $P5019
  for_next2166:
    unless $P5016, for_done2168
    shift $P5020, $P5016
  for_redo2167:
    .const 'Sub' $P5018 = 'cuid_316_1346277600.974' 
    capture_lex $P5018
    $P5014 = $P5018($P5020)
    goto for_next2166
  for_handlers2165:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5019, $P5019, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, for_next2166
    eq $P5019, .CONTROL_LOOP_REDO, for_redo2167
  for_done2168:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_316_1346277600.974") :anon :lex :outer("cuid_134_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3158
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$ops"
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."regex_post"(_lex_param_0)
    $P5005 = $P5001."push"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "conj" :subid("cuid_135_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3162
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."conjseq"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "conjseq" :subid("cuid_136_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3164
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$conjlabel", $P103 
    .lex "$firstlabel", $P104 
    .lex "$iter", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3165
    nqp_decontainerize $P5006, _lex_param_0
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2169
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2170
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2170:
    unless_null $P5009, vivi_5652171
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_5652171:
    set $P5008, $P5009
  fallback2169:
    set $P5007, $P5008["cur"]
    unless_null $P5007, fallback2172
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5016
  fallback2172:
    $P5017 = $P5006."post_new"("Ops", $P5007 :named("result"))
    set $P101, $P5017
.annotate 'line', 3166
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxconj")
    set $S5002, $P5019
    concat $S5001, $S5002, "_"
    box $P5020, $S5001
    set $P102, $P5020
.annotate 'line', 3167
    nqp_decontainerize $P5021, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "fail"
    $P5022 = $P5021."post_new"("Label", $S5003 :named("name"))
    set $P103, $P5022
.annotate 'line', 3168
    nqp_decontainerize $P5023, _lex_param_0
    set $S5006, $P102
    concat $S5005, $S5006, "first"
    $P5024 = $P5023."post_new"("Label", $S5005 :named("name"))
    set $P104, $P5024
.annotate 'line', 3169
    $P5026 = _lex_param_1."list"()
    iter $P5025, $P5026
    set $P105, $P5025
.annotate 'line', 3171
    nqp_decontainerize $P5027, _lex_param_0
    find_dynamic_lex $P5029, "%*REG"
    unless_null $P5029, fallback2173
    get_hll_global $P5032, "GLOBAL"
    get_who $P5031, $P5032
    set $P5030, $P5031["%REG"]
    unless_null $P5030, fallback2174
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%REG"], $P5035
    set $P5030, $P5035
  fallback2174:
    unless_null $P5030, vivi_5662175
    die "Contextual %*REG not found"
    box $P5036, "Contextual %*REG not found"
    set $P5030, $P5036
  vivi_5662175:
    set $P5029, $P5030
  fallback2173:
    set $P5028, $P5029["pos"]
    unless_null $P5028, fallback2176
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5037
  fallback2176:
    $P5038 = $P5027."regex_mark"($P101, $P103, $P5028, 0)
.annotate 'line', 3172
    $P5039 = $P101."push_pirop"("goto", $P104)
.annotate 'line', 3173
    $P5040 = $P101."push"($P103)
.annotate 'line', 3174
    find_dynamic_lex $P5042, "%*REG"
    unless_null $P5042, fallback2177
    get_hll_global $P5045, "GLOBAL"
    get_who $P5044, $P5045
    set $P5043, $P5044["%REG"]
    unless_null $P5043, fallback2178
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    new $P5048, 'Hash'
    set $P5046["%REG"], $P5048
    set $P5043, $P5048
  fallback2178:
    unless_null $P5043, vivi_5672179
    die "Contextual %*REG not found"
    box $P5049, "Contextual %*REG not found"
    set $P5043, $P5049
  vivi_5672179:
    set $P5042, $P5043
  fallback2177:
    set $P5041, $P5042["fail"]
    unless_null $P5041, fallback2180
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5041, $P5050
  fallback2180:
    $P5051 = $P101."push_pirop"("goto", $P5041)
.annotate 'line', 3176
    $P5052 = $P101."push"($P104)
.annotate 'line', 3177
    nqp_decontainerize $P5053, _lex_param_0
    shift $P5054, $P105
    $P5055 = $P5053."regex_post"($P5054)
    $P5056 = $P101."push"($P5055)
.annotate 'line', 3179
    nqp_decontainerize $P5057, _lex_param_0
    $P5058 = $P5057."regex_peek"($P101, $P103, "$I11")
.annotate 'line', 3180
    nqp_decontainerize $P5059, _lex_param_0
    find_dynamic_lex $P5061, "%*REG"
    unless_null $P5061, fallback2181
    get_hll_global $P5064, "GLOBAL"
    get_who $P5063, $P5064
    set $P5062, $P5063["%REG"]
    unless_null $P5062, fallback2182
    get_hll_global $P5066, "GLOBAL"
    get_who $P5065, $P5066
    new $P5067, 'Hash'
    set $P5065["%REG"], $P5067
    set $P5062, $P5067
  fallback2182:
    unless_null $P5062, vivi_5682183
    die "Contextual %*REG not found"
    box $P5068, "Contextual %*REG not found"
    set $P5062, $P5068
  vivi_5682183:
    set $P5061, $P5062
  fallback2181:
    set $P5060, $P5061["pos"]
    unless_null $P5060, fallback2184
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5060, $P5069
  fallback2184:
    $P5070 = $P5059."regex_mark"($P101, $P103, "$I11", $P5060)
    new $P5110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5110, while569_handlers2188
    push_eh $P5110
  while569_test2185:
    set $P5109, $P105
    unless $P105 goto while569_done2189 
  while569_redo2187:
.annotate 'line', 3182
.annotate 'line', 3183
    find_dynamic_lex $P5072, "%*REG"
    unless_null $P5072, fallback2190
    get_hll_global $P5075, "GLOBAL"
    get_who $P5074, $P5075
    set $P5073, $P5074["%REG"]
    unless_null $P5073, fallback2191
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    new $P5078, 'Hash'
    set $P5076["%REG"], $P5078
    set $P5073, $P5078
  fallback2191:
    unless_null $P5073, vivi_5702192
    die "Contextual %*REG not found"
    box $P5079, "Contextual %*REG not found"
    set $P5073, $P5079
  vivi_5702192:
    set $P5072, $P5073
  fallback2190:
    set $P5071, $P5072["pos"]
    unless_null $P5071, fallback2193
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5071, $P5080
  fallback2193:
    $P5081 = $P101."push_pirop"("set", $P5071, "$I11")
.annotate 'line', 3184
    nqp_decontainerize $P5082, _lex_param_0
    shift $P5083, $P105
    $P5084 = $P5082."regex_post"($P5083)
    $P5085 = $P101."push"($P5084)
.annotate 'line', 3185
    nqp_decontainerize $P5086, _lex_param_0
    $P5087 = $P5086."regex_peek"($P101, $P103, "$I11", "$I12")
.annotate 'line', 3186
    find_dynamic_lex $P5089, "%*REG"
    unless_null $P5089, fallback2194
    get_hll_global $P5092, "GLOBAL"
    get_who $P5091, $P5092
    set $P5090, $P5091["%REG"]
    unless_null $P5090, fallback2195
    get_hll_global $P5094, "GLOBAL"
    get_who $P5093, $P5094
    new $P5095, 'Hash'
    set $P5093["%REG"], $P5095
    set $P5090, $P5095
  fallback2195:
    unless_null $P5090, vivi_5712196
    die "Contextual %*REG not found"
    box $P5096, "Contextual %*REG not found"
    set $P5090, $P5096
  vivi_5712196:
    set $P5089, $P5090
  fallback2194:
    set $P5088, $P5089["pos"]
    unless_null $P5088, fallback2197
    nqp_get_sc_object $P5097, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5088, $P5097
  fallback2197:
    find_dynamic_lex $P5099, "%*REG"
    unless_null $P5099, fallback2198
    get_hll_global $P5102, "GLOBAL"
    get_who $P5101, $P5102
    set $P5100, $P5101["%REG"]
    unless_null $P5100, fallback2199
    get_hll_global $P5104, "GLOBAL"
    get_who $P5103, $P5104
    new $P5105, 'Hash'
    set $P5103["%REG"], $P5105
    set $P5100, $P5105
  fallback2199:
    unless_null $P5100, vivi_5722200
    die "Contextual %*REG not found"
    box $P5106, "Contextual %*REG not found"
    set $P5100, $P5106
  vivi_5722200:
    set $P5099, $P5100
  fallback2198:
    set $P5098, $P5099["fail"]
    unless_null $P5098, fallback2201
    nqp_get_sc_object $P5107, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5098, $P5107
  fallback2201:
    $P5108 = $P101."push_pirop"("ne", $P5088, "$I12", $P5098)
    set $P5109, $P5108
    goto while569_test2185 
  while569_handlers2188:
    .get_results ($P5110)
    pop_upto_eh $P5110
    getattribute $P5110, $P5110, 'type'
    eq $P5110, .CONTROL_LOOP_NEXT, while569_test2185
    eq $P5110, .CONTROL_LOOP_REDO, while569_redo2187
  while569_done2189:
    pop_eh 
.annotate 'line', 3188
    $P5111 = _lex_param_1."subtype"()
    set $S5007, $P5111
    iseq $I5001, $S5007, "zerowidth"
    box $P5124, $I5001
    set $P5123, $P5124
    unless $I5001 goto if573_end2203 
    find_dynamic_lex $P5113, "%*REG"
    unless_null $P5113, fallback2204
    get_hll_global $P5116, "GLOBAL"
    get_who $P5115, $P5116
    set $P5114, $P5115["%REG"]
    unless_null $P5114, fallback2205
    get_hll_global $P5118, "GLOBAL"
    get_who $P5117, $P5118
    new $P5119, 'Hash'
    set $P5117["%REG"], $P5119
    set $P5114, $P5119
  fallback2205:
    unless_null $P5114, vivi_5742206
    die "Contextual %*REG not found"
    box $P5120, "Contextual %*REG not found"
    set $P5114, $P5120
  vivi_5742206:
    set $P5113, $P5114
  fallback2204:
    set $P5112, $P5113["pos"]
    unless_null $P5112, fallback2207
    nqp_get_sc_object $P5121, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5112, $P5121
  fallback2207:
    $P5122 = $P101."push_pirop"("set", $P5112, "$I11")
    set $P5123, $P5122
  if573_end2203:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_137_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3192
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$charlist", $P102 
    .lex "$testop", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 3193
    nqp_decontainerize $P5004, _lex_param_0
    find_dynamic_lex $P5006, "%*REG"
    unless_null $P5006, fallback2208
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["%REG"]
    unless_null $P5007, fallback2209
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%REG"], $P5012
    set $P5007, $P5012
  fallback2209:
    unless_null $P5007, vivi_5752210
    die "Contextual %*REG not found"
    box $P5013, "Contextual %*REG not found"
    set $P5007, $P5013
  vivi_5752210:
    set $P5006, $P5007
  fallback2208:
    set $P5005, $P5006["cur"]
    unless_null $P5005, fallback2211
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5014
  fallback2211:
    $P5015 = $P5004."post_new"("Ops", $P5005 :named("result"))
    set $P101, $P5015
.annotate 'line', 3194
    nqp_decontainerize $P5016, _lex_param_0
    set $P5017, _lex_param_1[0]
    unless_null $P5017, fallback2212
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5018
  fallback2212:
    $P5019 = $P5016."rxescape"($P5017)
    set $P102, $P5019
.annotate 'line', 3195
    $P5020 = _lex_param_1."negate"()
    unless $P5020 goto if576_else2213 
    set $S5001, "ge"
    goto if576_end2214
  if576_else2213:
    set $S5001, "lt"
  if576_end2214:
    box $P5021, $S5001
    set $P103, $P5021
.annotate 'line', 3196
    find_dynamic_lex $P5023, "%*REG"
    unless_null $P5023, fallback2215
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["%REG"]
    unless_null $P5024, fallback2216
    get_hll_global $P5028, "GLOBAL"
    get_who $P5027, $P5028
    new $P5029, 'Hash'
    set $P5027["%REG"], $P5029
    set $P5024, $P5029
  fallback2216:
    unless_null $P5024, vivi_5772217
    die "Contextual %*REG not found"
    box $P5030, "Contextual %*REG not found"
    set $P5024, $P5030
  vivi_5772217:
    set $P5023, $P5024
  fallback2215:
    set $P5022, $P5023["pos"]
    unless_null $P5022, fallback2218
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5031
  fallback2218:
    find_dynamic_lex $P5033, "%*REG"
    unless_null $P5033, fallback2219
    get_hll_global $P5036, "GLOBAL"
    get_who $P5035, $P5036
    set $P5034, $P5035["%REG"]
    unless_null $P5034, fallback2220
    get_hll_global $P5038, "GLOBAL"
    get_who $P5037, $P5038
    new $P5039, 'Hash'
    set $P5037["%REG"], $P5039
    set $P5034, $P5039
  fallback2220:
    unless_null $P5034, vivi_5782221
    die "Contextual %*REG not found"
    box $P5040, "Contextual %*REG not found"
    set $P5034, $P5040
  vivi_5782221:
    set $P5033, $P5034
  fallback2219:
    set $P5032, $P5033["eos"]
    unless_null $P5032, fallback2222
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5032, $P5041
  fallback2222:
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback2223
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback2224
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback2224:
    unless_null $P5044, vivi_5792225
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_5792225:
    set $P5043, $P5044
  fallback2223:
    set $P5042, $P5043["fail"]
    unless_null $P5042, fallback2226
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5051
  fallback2226:
    $P5052 = $P101."push_pirop"("ge", $P5022, $P5032, $P5042)
.annotate 'line', 3197
    find_dynamic_lex $P5054, "%*REG"
    unless_null $P5054, fallback2227
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    set $P5055, $P5056["%REG"]
    unless_null $P5055, fallback2228
    get_hll_global $P5059, "GLOBAL"
    get_who $P5058, $P5059
    new $P5060, 'Hash'
    set $P5058["%REG"], $P5060
    set $P5055, $P5060
  fallback2228:
    unless_null $P5055, vivi_5802229
    die "Contextual %*REG not found"
    box $P5061, "Contextual %*REG not found"
    set $P5055, $P5061
  vivi_5802229:
    set $P5054, $P5055
  fallback2227:
    set $P5053, $P5054["tgt"]
    unless_null $P5053, fallback2230
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5053, $P5062
  fallback2230:
    find_dynamic_lex $P5064, "%*REG"
    unless_null $P5064, fallback2231
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    set $P5065, $P5066["%REG"]
    unless_null $P5065, fallback2232
    get_hll_global $P5069, "GLOBAL"
    get_who $P5068, $P5069
    new $P5070, 'Hash'
    set $P5068["%REG"], $P5070
    set $P5065, $P5070
  fallback2232:
    unless_null $P5065, vivi_5812233
    die "Contextual %*REG not found"
    box $P5071, "Contextual %*REG not found"
    set $P5065, $P5071
  vivi_5812233:
    set $P5064, $P5065
  fallback2231:
    set $P5063, $P5064["pos"]
    unless_null $P5063, fallback2234
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5063, $P5072
  fallback2234:
    $P5073 = $P101."push_pirop"("substr", "$S11", $P5053, $P5063, 1)
.annotate 'line', 3198
    $P5074 = $P101."push_pirop"("index", "$I11", $P102, "$S11")
.annotate 'line', 3199
    find_dynamic_lex $P5076, "%*REG"
    unless_null $P5076, fallback2235
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    set $P5077, $P5078["%REG"]
    unless_null $P5077, fallback2236
    get_hll_global $P5081, "GLOBAL"
    get_who $P5080, $P5081
    new $P5082, 'Hash'
    set $P5080["%REG"], $P5082
    set $P5077, $P5082
  fallback2236:
    unless_null $P5077, vivi_5822237
    die "Contextual %*REG not found"
    box $P5083, "Contextual %*REG not found"
    set $P5077, $P5083
  vivi_5822237:
    set $P5076, $P5077
  fallback2235:
    set $P5075, $P5076["fail"]
    unless_null $P5075, fallback2238
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5075, $P5084
  fallback2238:
    $P5085 = $P101."push_pirop"($P103, "$I11", 0, $P5075)
.annotate 'line', 3200
    $P5086 = _lex_param_1."subtype"()
    set $S5002, $P5086
    iseq $I5001, $S5002, "zerowidth"
    box $P5099, $I5001
    set $P5098, $P5099
    if $I5001 goto unless583_end2240 
    find_dynamic_lex $P5088, "%*REG"
    unless_null $P5088, fallback2241
    get_hll_global $P5091, "GLOBAL"
    get_who $P5090, $P5091
    set $P5089, $P5090["%REG"]
    unless_null $P5089, fallback2242
    get_hll_global $P5093, "GLOBAL"
    get_who $P5092, $P5093
    new $P5094, 'Hash'
    set $P5092["%REG"], $P5094
    set $P5089, $P5094
  fallback2242:
    unless_null $P5089, vivi_5842243
    die "Contextual %*REG not found"
    box $P5095, "Contextual %*REG not found"
    set $P5089, $P5095
  vivi_5842243:
    set $P5088, $P5089
  fallback2241:
    set $P5087, $P5088["pos"]
    unless_null $P5087, fallback2244
    nqp_get_sc_object $P5096, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5087, $P5096
  fallback2244:
    $P5097 = $P101."push_pirop"("inc", $P5087)
    set $P5098, $P5097
  unless583_end2240:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_138_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3204
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$litconst", $P102 
    .lex "$litlen", $P103 
    .lex "$litpost", $P104 
    .lex "$cmpop", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3205
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."post_new"("Ops")
    set $P101, $P5007
    set $P5008, _lex_param_1[0]
    unless_null $P5008, fallback2245
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback2245:
    set $P102, $P5008
.annotate 'line', 3208
    $P5010 = _lex_param_1."subtype"()
    set $S5001, $P5010
    iseq $I5001, $S5001, "ignorecase"
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto if585_end2247 
    set $S5003, $P102
    downcase $S5002, $S5003
    box $P5011, $S5002
    set $P102, $P5011
    set $P5012, $P102
  if585_end2247:
    set $S5004, $P102
    length $I5002, $S5004
    box $P5014, $I5002
    set $P103, $P5014
.annotate 'line', 3210
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."rxescape"($P102)
    set $P104, $P5016
.annotate 'line', 3211
    $P5017 = _lex_param_1."negate"()
    unless $P5017 goto if586_else2248 
    set $S5005, "eq"
    goto if586_end2249
  if586_else2248:
    set $S5005, "ne"
  if586_end2249:
    box $P5018, $S5005
    set $P105, $P5018
.annotate 'line', 3212
    find_dynamic_lex $P5020, "%*REG"
    unless_null $P5020, fallback2250
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["%REG"]
    unless_null $P5021, fallback2251
    get_hll_global $P5025, "GLOBAL"
    get_who $P5024, $P5025
    new $P5026, 'Hash'
    set $P5024["%REG"], $P5026
    set $P5021, $P5026
  fallback2251:
    unless_null $P5021, vivi_5872252
    die "Contextual %*REG not found"
    box $P5027, "Contextual %*REG not found"
    set $P5021, $P5027
  vivi_5872252:
    set $P5020, $P5021
  fallback2250:
    set $P5019, $P5020["pos"]
    unless_null $P5019, fallback2253
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5028
  fallback2253:
    $P5029 = $P101."push_pirop"("add", "$I11", $P5019, $P103)
.annotate 'line', 3213
    find_dynamic_lex $P5031, "%*REG"
    unless_null $P5031, fallback2254
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    set $P5032, $P5033["%REG"]
    unless_null $P5032, fallback2255
    get_hll_global $P5036, "GLOBAL"
    get_who $P5035, $P5036
    new $P5037, 'Hash'
    set $P5035["%REG"], $P5037
    set $P5032, $P5037
  fallback2255:
    unless_null $P5032, vivi_5882256
    die "Contextual %*REG not found"
    box $P5038, "Contextual %*REG not found"
    set $P5032, $P5038
  vivi_5882256:
    set $P5031, $P5032
  fallback2254:
    set $P5030, $P5031["eos"]
    unless_null $P5030, fallback2257
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5030, $P5039
  fallback2257:
    find_dynamic_lex $P5041, "%*REG"
    unless_null $P5041, fallback2258
    get_hll_global $P5044, "GLOBAL"
    get_who $P5043, $P5044
    set $P5042, $P5043["%REG"]
    unless_null $P5042, fallback2259
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    new $P5047, 'Hash'
    set $P5045["%REG"], $P5047
    set $P5042, $P5047
  fallback2259:
    unless_null $P5042, vivi_5892260
    die "Contextual %*REG not found"
    box $P5048, "Contextual %*REG not found"
    set $P5042, $P5048
  vivi_5892260:
    set $P5041, $P5042
  fallback2258:
    set $P5040, $P5041["fail"]
    unless_null $P5040, fallback2261
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5049
  fallback2261:
    $P5050 = $P101."push_pirop"("gt", "$I11", $P5030, $P5040)
.annotate 'line', 3214
    find_dynamic_lex $P5052, "%*REG"
    unless_null $P5052, fallback2262
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["%REG"]
    unless_null $P5053, fallback2263
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    new $P5058, 'Hash'
    set $P5056["%REG"], $P5058
    set $P5053, $P5058
  fallback2263:
    unless_null $P5053, vivi_5902264
    die "Contextual %*REG not found"
    box $P5059, "Contextual %*REG not found"
    set $P5053, $P5059
  vivi_5902264:
    set $P5052, $P5053
  fallback2262:
    set $P5051, $P5052["tgt"]
    unless_null $P5051, fallback2265
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5051, $P5060
  fallback2265:
    find_dynamic_lex $P5062, "%*REG"
    unless_null $P5062, fallback2266
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    set $P5063, $P5064["%REG"]
    unless_null $P5063, fallback2267
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    new $P5068, 'Hash'
    set $P5066["%REG"], $P5068
    set $P5063, $P5068
  fallback2267:
    unless_null $P5063, vivi_5912268
    die "Contextual %*REG not found"
    box $P5069, "Contextual %*REG not found"
    set $P5063, $P5069
  vivi_5912268:
    set $P5062, $P5063
  fallback2266:
    set $P5061, $P5062["pos"]
    unless_null $P5061, fallback2269
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5061, $P5070
  fallback2269:
    $P5071 = $P101."push_pirop"("substr", "$S10", $P5051, $P5061, $P103)
.annotate 'line', 3216
    $P5072 = _lex_param_1."subtype"()
    set $S5006, $P5072
    iseq $I5003, $S5006, "ignorecase"
    box $P5075, $I5003
    set $P5074, $P5075
    unless $I5003 goto if592_end2271 
.annotate 'line', 3215
    $P5073 = $P101."push_pirop"("downcase", "$S10", "$S10")
    set $P5074, $P5073
  if592_end2271:
.annotate 'line', 3217
    find_dynamic_lex $P5077, "%*REG"
    unless_null $P5077, fallback2272
    get_hll_global $P5080, "GLOBAL"
    get_who $P5079, $P5080
    set $P5078, $P5079["%REG"]
    unless_null $P5078, fallback2273
    get_hll_global $P5082, "GLOBAL"
    get_who $P5081, $P5082
    new $P5083, 'Hash'
    set $P5081["%REG"], $P5083
    set $P5078, $P5083
  fallback2273:
    unless_null $P5078, vivi_5932274
    die "Contextual %*REG not found"
    box $P5084, "Contextual %*REG not found"
    set $P5078, $P5084
  vivi_5932274:
    set $P5077, $P5078
  fallback2272:
    set $P5076, $P5077["fail"]
    unless_null $P5076, fallback2275
    nqp_get_sc_object $P5085, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5076, $P5085
  fallback2275:
    $P5086 = $P101."push_pirop"($P105, "$S10", $P104, $P5076)
.annotate 'line', 3218
    find_dynamic_lex $P5088, "%*REG"
    unless_null $P5088, fallback2276
    get_hll_global $P5091, "GLOBAL"
    get_who $P5090, $P5091
    set $P5089, $P5090["%REG"]
    unless_null $P5089, fallback2277
    get_hll_global $P5093, "GLOBAL"
    get_who $P5092, $P5093
    new $P5094, 'Hash'
    set $P5092["%REG"], $P5094
    set $P5089, $P5094
  fallback2277:
    unless_null $P5089, vivi_5942278
    die "Contextual %*REG not found"
    box $P5095, "Contextual %*REG not found"
    set $P5089, $P5095
  vivi_5942278:
    set $P5088, $P5089
  fallback2276:
    set $P5087, $P5088["pos"]
    unless_null $P5087, fallback2279
    nqp_get_sc_object $P5096, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5087, $P5096
  fallback2279:
    $P5097 = $P101."push_pirop"("add", $P5087, $P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "pass" :subid("cuid_139_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3222
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5056 = 'cuid_317_1346277600.974' 
    capture_lex $P5056 
    .lex "$ops", $P101 
    .lex "@backtrack", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 3223
    nqp_decontainerize $P5003, _lex_param_0
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2280
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2281
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2281:
    unless_null $P5006, vivi_5952282
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_5952282:
    set $P5005, $P5006
  fallback2280:
    set $P5004, $P5005["cur"]
    unless_null $P5004, fallback2283
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5013
  fallback2283:
    $P5014 = $P5003."post_new"("Ops", $P5004 :named("result"))
    set $P101, $P5014
.annotate 'line', 3225
    $P5015 = _lex_param_1."backtrack"()
    set $S5001, $P5015
    isne $I5001, $S5001, "r"
    box $P5019, $I5001
    set $P5018, $P5019
    unless $I5001 goto if596_end2285 
    new $P5016, 'ResizablePMCArray'
    box $P5017, "'backtrack'=>1"
    push $P5016, $P5017
    set $P102, $P5016
    set $P5018, $P102
  if596_end2285:
.annotate 'line', 3226
    $P5020 = _lex_param_1."name"()
    unless $P5020 goto if597_else2286 
    .const 'Sub' $P5021 = 'cuid_317_1346277600.974' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5044, $P5022
    goto if597_end2287
  if597_else2286:
.annotate 'line', 3230
.annotate 'line', 3231
    find_dynamic_lex $P5024, "%*REG"
    unless_null $P5024, fallback2299
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    set $P5025, $P5026["%REG"]
    unless_null $P5025, fallback2300
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    new $P5030, 'Hash'
    set $P5028["%REG"], $P5030
    set $P5025, $P5030
  fallback2300:
    unless_null $P5025, vivi_6012301
    die "Contextual %*REG not found"
    box $P5031, "Contextual %*REG not found"
    set $P5025, $P5031
  vivi_6012301:
    set $P5024, $P5025
  fallback2299:
    set $P5023, $P5024["cur"]
    unless_null $P5023, fallback2302
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5023, $P5032
  fallback2302:
    find_dynamic_lex $P5034, "%*REG"
    unless_null $P5034, fallback2303
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    set $P5035, $P5036["%REG"]
    unless_null $P5035, fallback2304
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    new $P5040, 'Hash'
    set $P5038["%REG"], $P5040
    set $P5035, $P5040
  fallback2304:
    unless_null $P5035, vivi_6022305
    die "Contextual %*REG not found"
    box $P5041, "Contextual %*REG not found"
    set $P5035, $P5041
  vivi_6022305:
    set $P5034, $P5035
  fallback2303:
    set $P5033, $P5034["pos"]
    unless_null $P5033, fallback2306
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5033, $P5042
  fallback2306:
    $P5043 = $P101."push_pirop"("callmethod", "\"!cursor_pass\"", $P5023, $P5033, $P102 :flat)
    set $P5044, $P5043
  if597_end2287:
.annotate 'line', 3233
    find_dynamic_lex $P5046, "%*REG"
    unless_null $P5046, fallback2307
    get_hll_global $P5049, "GLOBAL"
    get_who $P5048, $P5049
    set $P5047, $P5048["%REG"]
    unless_null $P5047, fallback2308
    get_hll_global $P5051, "GLOBAL"
    get_who $P5050, $P5051
    new $P5052, 'Hash'
    set $P5050["%REG"], $P5052
    set $P5047, $P5052
  fallback2308:
    unless_null $P5047, vivi_6032309
    die "Contextual %*REG not found"
    box $P5053, "Contextual %*REG not found"
    set $P5047, $P5053
  vivi_6032309:
    set $P5046, $P5047
  fallback2307:
    set $P5045, $P5046["cur"]
    unless_null $P5045, fallback2310
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5045, $P5054
  fallback2310:
    $P5055 = $P101."push_pirop"("return", $P5045)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_317_1346277600.974") :anon :lex :outer("cuid_139_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3226
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 3227
    find_dynamic_lex $P5002, "$*PASTCOMPILER"
    unless_null $P5002, fallback2288
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$PASTCOMPILER"]
    unless_null $P5003, fallback2289
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback2289:
    unless_null $P5003, vivi_5982290
    die "Contextual $*PASTCOMPILER not found"
    box $P5007, "Contextual $*PASTCOMPILER not found"
    set $P5003, $P5007
  vivi_5982290:
    set $P5002, $P5003
  fallback2288:
    find_lex $P5008, "$node"
    $P5009 = $P5008."name"()
    $P5010 = $P5002."as_post"($P5009, "~" :named("rtype"))
    set $P101, $P5010
.annotate 'line', 3228
    find_lex $P5011, "$ops"
    find_dynamic_lex $P5013, "%*REG"
    unless_null $P5013, fallback2291
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["%REG"]
    unless_null $P5014, fallback2292
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    new $P5019, 'Hash'
    set $P5017["%REG"], $P5019
    set $P5014, $P5019
  fallback2292:
    unless_null $P5014, vivi_5992293
    die "Contextual %*REG not found"
    box $P5020, "Contextual %*REG not found"
    set $P5014, $P5020
  vivi_5992293:
    set $P5013, $P5014
  fallback2291:
    set $P5012, $P5013["cur"]
    unless_null $P5012, fallback2294
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5021
  fallback2294:
    find_dynamic_lex $P5023, "%*REG"
    unless_null $P5023, fallback2295
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["%REG"]
    unless_null $P5024, fallback2296
    get_hll_global $P5028, "GLOBAL"
    get_who $P5027, $P5028
    new $P5029, 'Hash'
    set $P5027["%REG"], $P5029
    set $P5024, $P5029
  fallback2296:
    unless_null $P5024, vivi_6002297
    die "Contextual %*REG not found"
    box $P5030, "Contextual %*REG not found"
    set $P5024, $P5030
  vivi_6002297:
    set $P5023, $P5024
  fallback2295:
    set $P5022, $P5023["pos"]
    unless_null $P5022, fallback2298
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5031
  fallback2298:
    find_lex $P5032, "@backtrack"
    $P5033 = $P5011."push_pirop"("callmethod", "\"!cursor_pass\"", $P5012, $P5022, $P101, $P5032 :flat)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_140_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3237
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$cpost", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 3238
    nqp_decontainerize $P5003, _lex_param_0
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2311
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2312
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2312:
    unless_null $P5006, vivi_6042313
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_6042313:
    set $P5005, $P5006
  fallback2311:
    set $P5004, $P5005["cur"]
    unless_null $P5004, fallback2314
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5013
  fallback2314:
    $P5014 = $P5003."post_new"("Ops", $P5004 :named("result"))
    set $P101, $P5014
.annotate 'line', 3239
    find_dynamic_lex $P5016, "%*REG"
    unless_null $P5016, fallback2315
    get_hll_global $P5019, "GLOBAL"
    get_who $P5018, $P5019
    set $P5017, $P5018["%REG"]
    unless_null $P5017, fallback2316
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    new $P5022, 'Hash'
    set $P5020["%REG"], $P5022
    set $P5017, $P5022
  fallback2316:
    unless_null $P5017, vivi_6052317
    die "Contextual %*REG not found"
    box $P5023, "Contextual %*REG not found"
    set $P5017, $P5023
  vivi_6052317:
    set $P5016, $P5017
  fallback2315:
    set $P5015, $P5016["cur"]
    unless_null $P5015, fallback2318
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5024
  fallback2318:
    find_dynamic_lex $P5026, "%*REG"
    unless_null $P5026, fallback2319
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    set $P5027, $P5028["%REG"]
    unless_null $P5027, fallback2320
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    new $P5032, 'Hash'
    set $P5030["%REG"], $P5032
    set $P5027, $P5032
  fallback2320:
    unless_null $P5027, vivi_6062321
    die "Contextual %*REG not found"
    box $P5033, "Contextual %*REG not found"
    set $P5027, $P5033
  vivi_6062321:
    set $P5026, $P5027
  fallback2319:
    set $P5025, $P5026["curclass"]
    unless_null $P5025, fallback2322
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5034
  fallback2322:
    find_dynamic_lex $P5036, "%*REG"
    unless_null $P5036, fallback2323
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    set $P5037, $P5038["%REG"]
    unless_null $P5037, fallback2324
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    new $P5042, 'Hash'
    set $P5040["%REG"], $P5042
    set $P5037, $P5042
  fallback2324:
    unless_null $P5037, vivi_6072325
    die "Contextual %*REG not found"
    box $P5043, "Contextual %*REG not found"
    set $P5037, $P5043
  vivi_6072325:
    set $P5036, $P5037
  fallback2323:
    set $P5035, $P5036["pos"]
    unless_null $P5035, fallback2326
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5044
  fallback2326:
    $P5045 = $P101."push_pirop"("repr_bind_attr_int", $P5015, $P5025, "\"$!pos\"", $P5035)
.annotate 'line', 3240
    find_dynamic_lex $P5047, "%*REG"
    unless_null $P5047, fallback2327
    get_hll_global $P5050, "GLOBAL"
    get_who $P5049, $P5050
    set $P5048, $P5049["%REG"]
    unless_null $P5048, fallback2328
    get_hll_global $P5052, "GLOBAL"
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%REG"], $P5053
    set $P5048, $P5053
  fallback2328:
    unless_null $P5048, vivi_6082329
    die "Contextual %*REG not found"
    box $P5054, "Contextual %*REG not found"
    set $P5048, $P5054
  vivi_6082329:
    set $P5047, $P5048
  fallback2327:
    set $P5046, $P5047["cur"]
    unless_null $P5046, fallback2330
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5046, $P5055
  fallback2330:
    $P5056 = $P101."push_pirop"("store_lex", utf8:"unicode:\"$\\x{a2}\"", $P5046)
.annotate 'line', 3241
    nqp_decontainerize $P5057, _lex_param_0
    nqp_decontainerize $P5058, _lex_param_0
    set $P5059, _lex_param_1[0]
    unless_null $P5059, fallback2331
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5059, $P5060
  fallback2331:
    $P5061 = $P5058."as_post"($P5059)
    $P5062 = $P5057."coerce"($P5061, "P")
    set $P102, $P5062
.annotate 'line', 3242
    $P5063 = $P101."push"($P102)
.annotate 'line', 3243
    $P5064 = _lex_param_1."subtype"()
    set $S5001, $P5064
    iseq $I5001, $S5001, "zerowidth"
    box $P5078, $I5001
    set $P5077, $P5078
    unless $I5001 goto if609_end2333 
.annotate 'line', 3244
    $P5065 = _lex_param_1."negate"()
    unless $P5065 goto if610_else2334 
    set $S5002, "if"
    goto if610_end2335
  if610_else2334:
    set $S5002, "unless"
  if610_end2335:
    find_dynamic_lex $P5067, "%*REG"
    unless_null $P5067, fallback2336
    get_hll_global $P5070, "GLOBAL"
    get_who $P5069, $P5070
    set $P5068, $P5069["%REG"]
    unless_null $P5068, fallback2337
    get_hll_global $P5072, "GLOBAL"
    get_who $P5071, $P5072
    new $P5073, 'Hash'
    set $P5071["%REG"], $P5073
    set $P5068, $P5073
  fallback2337:
    unless_null $P5068, vivi_6112338
    die "Contextual %*REG not found"
    box $P5074, "Contextual %*REG not found"
    set $P5068, $P5074
  vivi_6112338:
    set $P5067, $P5068
  fallback2336:
    set $P5066, $P5067["fail"]
    unless_null $P5066, fallback2339
    nqp_get_sc_object $P5075, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5066, $P5075
  fallback2339:
    $P5076 = $P101."push_pirop"($S5002, $P102, $P5066)
    set $P5077, $P5076
  if609_end2333:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_141_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3249
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5160 = 'cuid_318_1346277600.974' 
    capture_lex $P5160 
    .lex "$ops", $P101 
    .lex "$backtrack", $P102 
    .lex "$sep", $P103 
    .lex "$prefix", $P104 
    .lex "$looplabel", $P105 
    .lex "$donelabel", $P106 
    .lex "$min", $P107 
    .lex "$max", $P108 
    .lex "$needrep", $P109 
    .lex "$needmark", $P110 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P110, $P5010
.annotate 'line', 3250
    nqp_decontainerize $P5011, _lex_param_0
    find_dynamic_lex $P5013, "%*REG"
    unless_null $P5013, fallback2340
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["%REG"]
    unless_null $P5014, fallback2341
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    new $P5019, 'Hash'
    set $P5017["%REG"], $P5019
    set $P5014, $P5019
  fallback2341:
    unless_null $P5014, vivi_6122342
    die "Contextual %*REG not found"
    box $P5020, "Contextual %*REG not found"
    set $P5014, $P5020
  vivi_6122342:
    set $P5013, $P5014
  fallback2340:
    set $P5012, $P5013["cur"]
    unless_null $P5012, fallback2343
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5021
  fallback2343:
    $P5022 = $P5011."post_new"("Ops", $P5012 :named("result"))
    set $P101, $P5022
.annotate 'line', 3251
    $P5023 = _lex_param_1."backtrack"()
    set $P5024, $P5023
    if $P5023 goto unless613_end2345 
    box $P5025, "g"
    set $P5024, $P5025
  unless613_end2345:
    set $P102, $P5024
    set $P5026, _lex_param_1[1]
    unless_null $P5026, fallback2346
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5027
  fallback2346:
    set $P103, $P5026
.annotate 'line', 3253
    nqp_decontainerize $P5028, _lex_param_0
    set $S5002, $P102
    concat $S5001, "rxquant", $S5002
    $P5029 = $P5028."unique"($S5001)
    set $P104, $P5029
.annotate 'line', 3254
    nqp_decontainerize $P5030, _lex_param_0
    set $S5004, $P104
    concat $S5003, $S5004, "_loop"
    $P5031 = $P5030."post_new"("Label", $S5003 :named("name"))
    set $P105, $P5031
.annotate 'line', 3255
    nqp_decontainerize $P5032, _lex_param_0
    set $S5006, $P104
    concat $S5005, $S5006, "_done"
    $P5033 = $P5032."post_new"("Label", $S5005 :named("name"))
    set $P106, $P5033
.annotate 'line', 3256
    $P5034 = _lex_param_1."min"()
    set $P107, $P5034
.annotate 'line', 3257
    $P5035 = _lex_param_1."max"()
    set $P108, $P5035
    set $N5001, $P107
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    set $I5003, $I5001
    if $I5001 goto unless614_end2348 
    set $N5003, $P108
    set $N5004, 1
    isgt $I5002, $N5003, $N5004
    set $I5003, $I5002
  unless614_end2348:
    box $P5036, $I5003
    set $P109, $P5036
    set $P5037, $P109
    if $P109 goto unless615_end2350 
    set $S5007, $P102
    iseq $I5004, $S5007, "r"
    box $P5038, $I5004
    set $P5037, $P5038
  unless615_end2350:
    set $P110, $P5037
    set $S5008, $P102
    iseq $I5005, $S5008, "f"
    unless $I5005 goto if616_else2351 
    .const 'Sub' $P5039 = 'cuid_318_1346277600.974' 
    capture_lex $P5039
    $P5040 = $P5039()
    set $P5159, $P5040
    goto if616_end2352
  if616_else2351:
.annotate 'line', 3284
    set $N5005, $P107
    set $N5006, 0
    iseq $I5006, $N5005, $N5006
    unless $I5006 goto if634_else2408 
.annotate 'line', 3285
    nqp_decontainerize $P5041, _lex_param_0
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback2410
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback2411
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback2411:
    unless_null $P5044, vivi_6352412
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_6352412:
    set $P5043, $P5044
  fallback2410:
    set $P5042, $P5043["pos"]
    unless_null $P5042, fallback2413
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5051
  fallback2413:
    $P5052 = $P5041."regex_mark"($P101, $P106, $P5042, 0)
    set $P5056, $P5052
    goto if634_end2409
  if634_else2408:
    set $P5055, $P110
    unless $P110 goto if636_end2415 
.annotate 'line', 3286
    nqp_decontainerize $P5053, _lex_param_0
    $P5054 = $P5053."regex_mark"($P101, $P106, -1, 0)
    set $P5055, $P5054
  if636_end2415:
    set $P5056, $P5055
  if634_end2409:
.annotate 'line', 3287
    $P5057 = $P101."push"($P105)
.annotate 'line', 3288
    nqp_decontainerize $P5058, _lex_param_0
    set $P5059, _lex_param_1[0]
    unless_null $P5059, fallback2416
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5059, $P5060
  fallback2416:
    $P5061 = $P5058."regex_post"($P5059)
    $P5062 = $P101."push"($P5061)
    set $P5104, $P110
    unless $P110 goto if637_end2418 
.annotate 'line', 3289
.annotate 'line', 3290
    nqp_decontainerize $P5063, _lex_param_0
    find_dynamic_lex $P5065, "%*REG"
    unless_null $P5065, fallback2419
    get_hll_global $P5068, "GLOBAL"
    get_who $P5067, $P5068
    set $P5066, $P5067["%REG"]
    unless_null $P5066, fallback2420
    get_hll_global $P5070, "GLOBAL"
    get_who $P5069, $P5070
    new $P5071, 'Hash'
    set $P5069["%REG"], $P5071
    set $P5066, $P5071
  fallback2420:
    unless_null $P5066, vivi_6382421
    die "Contextual %*REG not found"
    box $P5072, "Contextual %*REG not found"
    set $P5066, $P5072
  vivi_6382421:
    set $P5065, $P5066
  fallback2419:
    set $P5064, $P5065["rep"]
    unless_null $P5064, fallback2422
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5064, $P5073
  fallback2422:
    $P5074 = $P5063."regex_peek"($P101, $P106, "*", $P5064)
    set $S5009, $P102
    iseq $I5007, $S5009, "r"
    box $P5078, $I5007
    set $P5077, $P5078
    unless $I5007 goto if639_end2424 
.annotate 'line', 3291
    nqp_decontainerize $P5075, _lex_param_0
    $P5076 = $P5075."regex_commit"($P101, $P106)
    set $P5077, $P5076
  if639_end2424:
.annotate 'line', 3292
    find_dynamic_lex $P5080, "%*REG"
    unless_null $P5080, fallback2425
    get_hll_global $P5083, "GLOBAL"
    get_who $P5082, $P5083
    set $P5081, $P5082["%REG"]
    unless_null $P5081, fallback2426
    get_hll_global $P5085, "GLOBAL"
    get_who $P5084, $P5085
    new $P5086, 'Hash'
    set $P5084["%REG"], $P5086
    set $P5081, $P5086
  fallback2426:
    unless_null $P5081, vivi_6402427
    die "Contextual %*REG not found"
    box $P5087, "Contextual %*REG not found"
    set $P5081, $P5087
  vivi_6402427:
    set $P5080, $P5081
  fallback2425:
    set $P5079, $P5080["rep"]
    unless_null $P5079, fallback2428
    nqp_get_sc_object $P5088, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5079, $P5088
  fallback2428:
    $P5089 = $P101."push_pirop"("inc", $P5079)
    set $N5007, $P108
    set $N5008, 1
    isgt $I5008, $N5007, $N5008
    box $P5103, $I5008
    set $P5102, $P5103
    unless $I5008 goto if641_end2430 
.annotate 'line', 3293
    find_dynamic_lex $P5091, "%*REG"
    unless_null $P5091, fallback2431
    get_hll_global $P5094, "GLOBAL"
    get_who $P5093, $P5094
    set $P5092, $P5093["%REG"]
    unless_null $P5092, fallback2432
    get_hll_global $P5096, "GLOBAL"
    get_who $P5095, $P5096
    new $P5097, 'Hash'
    set $P5095["%REG"], $P5097
    set $P5092, $P5097
  fallback2432:
    unless_null $P5092, vivi_6422433
    die "Contextual %*REG not found"
    box $P5098, "Contextual %*REG not found"
    set $P5092, $P5098
  vivi_6422433:
    set $P5091, $P5092
  fallback2431:
    set $P5090, $P5091["rep"]
    unless_null $P5090, fallback2434
    nqp_get_sc_object $P5099, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5090, $P5099
  fallback2434:
    $P5100 = _lex_param_1."max"()
    $P5101 = $P101."push_pirop"("ge", $P5090, $P5100, $P106)
    set $P5102, $P5101
  if641_end2430:
    set $P5104, $P5102
  if637_end2418:
    set $N5009, $P108
    set $N5010, 1
    iseq $I5009, $N5009, $N5010
    box $P5133, $I5009
    set $P5132, $P5133
    if $I5009 goto unless643_end2436 
.annotate 'line', 3296
.annotate 'line', 3297
    nqp_decontainerize $P5105, _lex_param_0
    find_dynamic_lex $P5107, "%*REG"
    unless_null $P5107, fallback2437
    get_hll_global $P5110, "GLOBAL"
    get_who $P5109, $P5110
    set $P5108, $P5109["%REG"]
    unless_null $P5108, fallback2438
    get_hll_global $P5112, "GLOBAL"
    get_who $P5111, $P5112
    new $P5113, 'Hash'
    set $P5111["%REG"], $P5113
    set $P5108, $P5113
  fallback2438:
    unless_null $P5108, vivi_6442439
    die "Contextual %*REG not found"
    box $P5114, "Contextual %*REG not found"
    set $P5108, $P5114
  vivi_6442439:
    set $P5107, $P5108
  fallback2437:
    set $P5106, $P5107["pos"]
    unless_null $P5106, fallback2440
    nqp_get_sc_object $P5115, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5106, $P5115
  fallback2440:
    find_dynamic_lex $P5117, "%*REG"
    unless_null $P5117, fallback2441
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    set $P5118, $P5119["%REG"]
    unless_null $P5118, fallback2442
    get_hll_global $P5122, "GLOBAL"
    get_who $P5121, $P5122
    new $P5123, 'Hash'
    set $P5121["%REG"], $P5123
    set $P5118, $P5123
  fallback2442:
    unless_null $P5118, vivi_6452443
    die "Contextual %*REG not found"
    box $P5124, "Contextual %*REG not found"
    set $P5118, $P5124
  vivi_6452443:
    set $P5117, $P5118
  fallback2441:
    set $P5116, $P5117["rep"]
    unless_null $P5116, fallback2444
    nqp_get_sc_object $P5125, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5116, $P5125
  fallback2444:
    $P5126 = $P5105."regex_mark"($P101, $P106, $P5106, $P5116)
    set $P5130, $P103
    unless $P103 goto if646_end2446 
.annotate 'line', 3298
    nqp_decontainerize $P5127, _lex_param_0
    $P5128 = $P5127."regex_post"($P103)
    $P5129 = $P101."push"($P5128)
    set $P5130, $P5129
  if646_end2446:
.annotate 'line', 3299
    $P5131 = $P101."push_pirop"("goto", $P105)
    set $P5132, $P5131
  unless643_end2436:
.annotate 'line', 3301
    $P5134 = $P101."push"($P106)
    set $N5011, $P107
    set $N5012, 1
    isgt $I5010, $N5011, $N5012
    box $P5158, $I5010
    set $P5157, $P5158
    unless $I5010 goto if647_end2448 
.annotate 'line', 3302
    find_dynamic_lex $P5136, "%*REG"
    unless_null $P5136, fallback2449
    get_hll_global $P5139, "GLOBAL"
    get_who $P5138, $P5139
    set $P5137, $P5138["%REG"]
    unless_null $P5137, fallback2450
    get_hll_global $P5141, "GLOBAL"
    get_who $P5140, $P5141
    new $P5142, 'Hash'
    set $P5140["%REG"], $P5142
    set $P5137, $P5142
  fallback2450:
    unless_null $P5137, vivi_6482451
    die "Contextual %*REG not found"
    box $P5143, "Contextual %*REG not found"
    set $P5137, $P5143
  vivi_6482451:
    set $P5136, $P5137
  fallback2449:
    set $P5135, $P5136["rep"]
    unless_null $P5135, fallback2452
    nqp_get_sc_object $P5144, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5135, $P5144
  fallback2452:
    $P5145 = _lex_param_1."min"()
    set $N5013, $P5145
    find_dynamic_lex $P5147, "%*REG"
    unless_null $P5147, fallback2453
    get_hll_global $P5150, "GLOBAL"
    get_who $P5149, $P5150
    set $P5148, $P5149["%REG"]
    unless_null $P5148, fallback2454
    get_hll_global $P5152, "GLOBAL"
    get_who $P5151, $P5152
    new $P5153, 'Hash'
    set $P5151["%REG"], $P5153
    set $P5148, $P5153
  fallback2454:
    unless_null $P5148, vivi_6492455
    die "Contextual %*REG not found"
    box $P5154, "Contextual %*REG not found"
    set $P5148, $P5154
  vivi_6492455:
    set $P5147, $P5148
  fallback2453:
    set $P5146, $P5147["fail"]
    unless_null $P5146, fallback2456
    nqp_get_sc_object $P5155, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5146, $P5155
  fallback2456:
    $P5156 = $P101."push_pirop"("lt", $P5135, $N5013, $P5146)
    set $P5157, $P5156
  if647_end2448:
    set $P5159, $P5157
  if616_end2352:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_318_1346277600.974") :anon :lex :outer("cuid_141_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3263
    .lex "$seplabel", $P101 
    .lex "$ireg", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 3264
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$prefix"
    set $S5002, $P5005
    concat $S5001, $S5002, "_sep"
    $P5006 = $P5003."post_new"("Label", $S5001 :named("name"))
    set $P101, $P5006
    box $P5007, "$I12"
    set $P102, $P5007
.annotate 'line', 3266
    find_lex $P5008, "$ops"
    find_dynamic_lex $P5010, "%*REG"
    unless_null $P5010, fallback2353
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["%REG"]
    unless_null $P5011, fallback2354
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    new $P5016, 'Hash'
    set $P5014["%REG"], $P5016
    set $P5011, $P5016
  fallback2354:
    unless_null $P5011, vivi_6172355
    die "Contextual %*REG not found"
    box $P5017, "Contextual %*REG not found"
    set $P5011, $P5017
  vivi_6172355:
    set $P5010, $P5011
  fallback2353:
    set $P5009, $P5010["rep"]
    unless_null $P5009, fallback2356
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5018
  fallback2356:
    $P5019 = $P5008."push_pirop"("set", $P5009, 0)
    find_lex $P5020, "$min"
    set $N5001, $P5020
    set $N5002, 1
    islt $I5001, $N5001, $N5002
    box $P5050, $I5001
    set $P5049, $P5050
    unless $I5001 goto if618_end2358 
.annotate 'line', 3267
.annotate 'line', 3268
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    find_lex $P5023, "$ops"
    find_lex $P5024, "$looplabel"
    find_dynamic_lex $P5026, "%*REG"
    unless_null $P5026, fallback2359
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    set $P5027, $P5028["%REG"]
    unless_null $P5027, fallback2360
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    new $P5032, 'Hash'
    set $P5030["%REG"], $P5032
    set $P5027, $P5032
  fallback2360:
    unless_null $P5027, vivi_6192361
    die "Contextual %*REG not found"
    box $P5033, "Contextual %*REG not found"
    set $P5027, $P5033
  vivi_6192361:
    set $P5026, $P5027
  fallback2359:
    set $P5025, $P5026["pos"]
    unless_null $P5025, fallback2362
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5034
  fallback2362:
    find_dynamic_lex $P5036, "%*REG"
    unless_null $P5036, fallback2363
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    set $P5037, $P5038["%REG"]
    unless_null $P5037, fallback2364
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    new $P5042, 'Hash'
    set $P5040["%REG"], $P5042
    set $P5037, $P5042
  fallback2364:
    unless_null $P5037, vivi_6202365
    die "Contextual %*REG not found"
    box $P5043, "Contextual %*REG not found"
    set $P5037, $P5043
  vivi_6202365:
    set $P5036, $P5037
  fallback2363:
    set $P5035, $P5036["rep"]
    unless_null $P5035, fallback2366
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5044
  fallback2366:
    $P5045 = $P5021."regex_mark"($P5023, $P5024, $P5025, $P5035)
.annotate 'line', 3269
    find_lex $P5046, "$ops"
    find_lex $P5047, "$donelabel"
    $P5048 = $P5046."push_pirop"("goto", $P5047)
    set $P5049, $P5048
  if618_end2358:
    find_lex $P5051, "$sep"
    set $P5054, $P5051
    unless $P5051 goto if621_end2368 
.annotate 'line', 3271
    find_lex $P5052, "$ops"
    $P5053 = $P5052."push_pirop"("goto", $P101)
    set $P5054, $P5053
  if621_end2368:
.annotate 'line', 3272
    find_lex $P5055, "$ops"
    find_lex $P5056, "$looplabel"
    $P5057 = $P5055."push"($P5056)
.annotate 'line', 3273
    find_lex $P5058, "$ops"
    find_dynamic_lex $P5060, "%*REG"
    unless_null $P5060, fallback2369
    get_hll_global $P5063, "GLOBAL"
    get_who $P5062, $P5063
    set $P5061, $P5062["%REG"]
    unless_null $P5061, fallback2370
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    new $P5066, 'Hash'
    set $P5064["%REG"], $P5066
    set $P5061, $P5066
  fallback2370:
    unless_null $P5061, vivi_6222371
    die "Contextual %*REG not found"
    box $P5067, "Contextual %*REG not found"
    set $P5061, $P5067
  vivi_6222371:
    set $P5060, $P5061
  fallback2369:
    set $P5059, $P5060["rep"]
    unless_null $P5059, fallback2372
    nqp_get_sc_object $P5068, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5059, $P5068
  fallback2372:
    $P5069 = $P5058."push_pirop"("set", $P102, $P5059)
    find_lex $P5070, "$sep"
    set $P5077, $P5070
    unless $P5070 goto if623_end2374 
.annotate 'line', 3274
    find_lex $P5071, "$ops"
    find_lex $P5073, "self"
    nqp_decontainerize $P5072, $P5073
    find_lex $P5074, "$sep"
    $P5075 = $P5072."regex_post"($P5074)
    $P5076 = $P5071."push"($P5075)
    set $P5077, $P5076
  if623_end2374:
    find_lex $P5078, "$sep"
    set $P5081, $P5078
    unless $P5078 goto if624_end2376 
.annotate 'line', 3275
    find_lex $P5079, "$ops"
    $P5080 = $P5079."push"($P101)
    set $P5081, $P5080
  if624_end2376:
.annotate 'line', 3276
    find_lex $P5082, "$ops"
    find_lex $P5084, "self"
    nqp_decontainerize $P5083, $P5084
    find_lex $P5086, "$node"
    set $P5085, $P5086[0]
    unless_null $P5085, fallback2377
    nqp_get_sc_object $P5087, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5085, $P5087
  fallback2377:
    $P5088 = $P5083."regex_post"($P5085)
    $P5089 = $P5082."push"($P5088)
.annotate 'line', 3277
    find_lex $P5090, "$ops"
    find_dynamic_lex $P5092, "%*REG"
    unless_null $P5092, fallback2378
    get_hll_global $P5095, "GLOBAL"
    get_who $P5094, $P5095
    set $P5093, $P5094["%REG"]
    unless_null $P5093, fallback2379
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    new $P5098, 'Hash'
    set $P5096["%REG"], $P5098
    set $P5093, $P5098
  fallback2379:
    unless_null $P5093, vivi_6252380
    die "Contextual %*REG not found"
    box $P5099, "Contextual %*REG not found"
    set $P5093, $P5099
  vivi_6252380:
    set $P5092, $P5093
  fallback2378:
    set $P5091, $P5092["rep"]
    unless_null $P5091, fallback2381
    nqp_get_sc_object $P5100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5091, $P5100
  fallback2381:
    $P5101 = $P5090."push_pirop"("set", $P5091, $P102)
.annotate 'line', 3278
    find_lex $P5102, "$ops"
    find_dynamic_lex $P5104, "%*REG"
    unless_null $P5104, fallback2382
    get_hll_global $P5107, "GLOBAL"
    get_who $P5106, $P5107
    set $P5105, $P5106["%REG"]
    unless_null $P5105, fallback2383
    get_hll_global $P5109, "GLOBAL"
    get_who $P5108, $P5109
    new $P5110, 'Hash'
    set $P5108["%REG"], $P5110
    set $P5105, $P5110
  fallback2383:
    unless_null $P5105, vivi_6262384
    die "Contextual %*REG not found"
    box $P5111, "Contextual %*REG not found"
    set $P5105, $P5111
  vivi_6262384:
    set $P5104, $P5105
  fallback2382:
    set $P5103, $P5104["rep"]
    unless_null $P5103, fallback2385
    nqp_get_sc_object $P5112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5103, $P5112
  fallback2385:
    $P5113 = $P5102."push_pirop"("inc", $P5103)
    find_lex $P5114, "$min"
    set $N5003, $P5114
    set $N5004, 1
    isgt $I5002, $N5003, $N5004
    box $P5130, $I5002
    set $P5129, $P5130
    unless $I5002 goto if627_end2387 
.annotate 'line', 3279
    find_lex $P5115, "$ops"
    find_dynamic_lex $P5117, "%*REG"
    unless_null $P5117, fallback2388
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    set $P5118, $P5119["%REG"]
    unless_null $P5118, fallback2389
    get_hll_global $P5122, "GLOBAL"
    get_who $P5121, $P5122
    new $P5123, 'Hash'
    set $P5121["%REG"], $P5123
    set $P5118, $P5123
  fallback2389:
    unless_null $P5118, vivi_6282390
    die "Contextual %*REG not found"
    box $P5124, "Contextual %*REG not found"
    set $P5118, $P5124
  vivi_6282390:
    set $P5117, $P5118
  fallback2388:
    set $P5116, $P5117["rep"]
    unless_null $P5116, fallback2391
    nqp_get_sc_object $P5125, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5116, $P5125
  fallback2391:
    find_lex $P5126, "$min"
    find_lex $P5127, "$looplabel"
    $P5128 = $P5115."push_pirop"("lt", $P5116, $P5126, $P5127)
    set $P5129, $P5128
  if627_end2387:
    find_lex $P5131, "$max"
    set $N5005, $P5131
    set $N5006, 1
    isgt $I5003, $N5005, $N5006
    box $P5147, $I5003
    set $P5146, $P5147
    unless $I5003 goto if629_end2393 
.annotate 'line', 3280
    find_lex $P5132, "$ops"
    find_dynamic_lex $P5134, "%*REG"
    unless_null $P5134, fallback2394
    get_hll_global $P5137, "GLOBAL"
    get_who $P5136, $P5137
    set $P5135, $P5136["%REG"]
    unless_null $P5135, fallback2395
    get_hll_global $P5139, "GLOBAL"
    get_who $P5138, $P5139
    new $P5140, 'Hash'
    set $P5138["%REG"], $P5140
    set $P5135, $P5140
  fallback2395:
    unless_null $P5135, vivi_6302396
    die "Contextual %*REG not found"
    box $P5141, "Contextual %*REG not found"
    set $P5135, $P5141
  vivi_6302396:
    set $P5134, $P5135
  fallback2394:
    set $P5133, $P5134["rep"]
    unless_null $P5133, fallback2397
    nqp_get_sc_object $P5142, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5133, $P5142
  fallback2397:
    find_lex $P5143, "$max"
    find_lex $P5144, "$donelabel"
    $P5145 = $P5132."push_pirop"("ge", $P5133, $P5143, $P5144)
    set $P5146, $P5145
  if629_end2393:
    find_lex $P5148, "$max"
    set $N5007, $P5148
    set $N5008, 1
    isne $I5004, $N5007, $N5008
    box $P5175, $I5004
    set $P5174, $P5175
    unless $I5004 goto if631_end2399 
.annotate 'line', 3281
    find_lex $P5150, "self"
    nqp_decontainerize $P5149, $P5150
    find_lex $P5151, "$ops"
    find_lex $P5152, "$looplabel"
    find_dynamic_lex $P5154, "%*REG"
    unless_null $P5154, fallback2400
    get_hll_global $P5157, "GLOBAL"
    get_who $P5156, $P5157
    set $P5155, $P5156["%REG"]
    unless_null $P5155, fallback2401
    get_hll_global $P5159, "GLOBAL"
    get_who $P5158, $P5159
    new $P5160, 'Hash'
    set $P5158["%REG"], $P5160
    set $P5155, $P5160
  fallback2401:
    unless_null $P5155, vivi_6322402
    die "Contextual %*REG not found"
    box $P5161, "Contextual %*REG not found"
    set $P5155, $P5161
  vivi_6322402:
    set $P5154, $P5155
  fallback2400:
    set $P5153, $P5154["pos"]
    unless_null $P5153, fallback2403
    nqp_get_sc_object $P5162, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5153, $P5162
  fallback2403:
    find_dynamic_lex $P5164, "%*REG"
    unless_null $P5164, fallback2404
    get_hll_global $P5167, "GLOBAL"
    get_who $P5166, $P5167
    set $P5165, $P5166["%REG"]
    unless_null $P5165, fallback2405
    get_hll_global $P5169, "GLOBAL"
    get_who $P5168, $P5169
    new $P5170, 'Hash'
    set $P5168["%REG"], $P5170
    set $P5165, $P5170
  fallback2405:
    unless_null $P5165, vivi_6332406
    die "Contextual %*REG not found"
    box $P5171, "Contextual %*REG not found"
    set $P5165, $P5171
  vivi_6332406:
    set $P5164, $P5165
  fallback2404:
    set $P5163, $P5164["rep"]
    unless_null $P5163, fallback2407
    nqp_get_sc_object $P5172, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5163, $P5172
  fallback2407:
    $P5173 = $P5149."regex_mark"($P5151, $P5152, $P5153, $P5163)
    set $P5174, $P5173
  if631_end2399:
.annotate 'line', 3282
    find_lex $P5176, "$ops"
    find_lex $P5177, "$donelabel"
    $P5178 = $P5176."push"($P5177)
    .return ($P5178) 
.end
.HLL "nqp"
.namespace []
.sub "scan" :subid("cuid_142_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3308
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$looplabel", $P103 
    .lex "$scanlabel", $P104 
    .lex "$donelabel", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3309
    nqp_decontainerize $P5006, _lex_param_0
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2457
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2458
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2458:
    unless_null $P5009, vivi_6502459
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_6502459:
    set $P5008, $P5009
  fallback2457:
    set $P5007, $P5008["cur"]
    unless_null $P5007, fallback2460
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5016
  fallback2460:
    $P5017 = $P5006."post_new"("Ops", $P5007 :named("result"))
    set $P101, $P5017
.annotate 'line', 3310
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxscan")
    set $P102, $P5019
.annotate 'line', 3311
    nqp_decontainerize $P5020, _lex_param_0
    set $S5002, $P102
    concat $S5001, $S5002, "_loop"
    $P5021 = $P5020."post_new"("Label", $S5001 :named("name"))
    set $P103, $P5021
.annotate 'line', 3312
    nqp_decontainerize $P5022, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "_scan"
    $P5023 = $P5022."post_new"("Label", $S5003 :named("name"))
    set $P104, $P5023
.annotate 'line', 3313
    nqp_decontainerize $P5024, _lex_param_0
    set $S5006, $P102
    concat $S5005, $S5006, "_done"
    $P5025 = $P5024."post_new"("Label", $S5005 :named("name"))
    set $P105, $P5025
.annotate 'line', 3314
    find_dynamic_lex $P5027, "%*REG"
    unless_null $P5027, fallback2461
    get_hll_global $P5030, "GLOBAL"
    get_who $P5029, $P5030
    set $P5028, $P5029["%REG"]
    unless_null $P5028, fallback2462
    get_hll_global $P5032, "GLOBAL"
    get_who $P5031, $P5032
    new $P5033, 'Hash'
    set $P5031["%REG"], $P5033
    set $P5028, $P5033
  fallback2462:
    unless_null $P5028, vivi_6512463
    die "Contextual %*REG not found"
    box $P5034, "Contextual %*REG not found"
    set $P5028, $P5034
  vivi_6512463:
    set $P5027, $P5028
  fallback2461:
    set $P5026, $P5027["curclass"]
    unless_null $P5026, fallback2464
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5035
  fallback2464:
    $P5036 = $P101."push_pirop"("repr_get_attr_int", "$I11", "self", $P5026, "\"$!from\"")
.annotate 'line', 3315
    $P5037 = $P101."push_pirop"("ne", "$I11", -1, $P105)
.annotate 'line', 3316
    $P5038 = $P101."push_pirop"("goto", $P104)
.annotate 'line', 3317
    $P5039 = $P101."push"($P103)
.annotate 'line', 3318
    find_dynamic_lex $P5041, "%*REG"
    unless_null $P5041, fallback2465
    get_hll_global $P5044, "GLOBAL"
    get_who $P5043, $P5044
    set $P5042, $P5043["%REG"]
    unless_null $P5042, fallback2466
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    new $P5047, 'Hash'
    set $P5045["%REG"], $P5047
    set $P5042, $P5047
  fallback2466:
    unless_null $P5042, vivi_6522467
    die "Contextual %*REG not found"
    box $P5048, "Contextual %*REG not found"
    set $P5042, $P5048
  vivi_6522467:
    set $P5041, $P5042
  fallback2465:
    set $P5040, $P5041["pos"]
    unless_null $P5040, fallback2468
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5049
  fallback2468:
    $P5050 = $P101."push_pirop"("inc", $P5040)
.annotate 'line', 3319
    find_dynamic_lex $P5052, "%*REG"
    unless_null $P5052, fallback2469
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["%REG"]
    unless_null $P5053, fallback2470
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    new $P5058, 'Hash'
    set $P5056["%REG"], $P5058
    set $P5053, $P5058
  fallback2470:
    unless_null $P5053, vivi_6532471
    die "Contextual %*REG not found"
    box $P5059, "Contextual %*REG not found"
    set $P5053, $P5059
  vivi_6532471:
    set $P5052, $P5053
  fallback2469:
    set $P5051, $P5052["pos"]
    unless_null $P5051, fallback2472
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5051, $P5060
  fallback2472:
    find_dynamic_lex $P5062, "%*REG"
    unless_null $P5062, fallback2473
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    set $P5063, $P5064["%REG"]
    unless_null $P5063, fallback2474
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    new $P5068, 'Hash'
    set $P5066["%REG"], $P5068
    set $P5063, $P5068
  fallback2474:
    unless_null $P5063, vivi_6542475
    die "Contextual %*REG not found"
    box $P5069, "Contextual %*REG not found"
    set $P5063, $P5069
  vivi_6542475:
    set $P5062, $P5063
  fallback2473:
    set $P5061, $P5062["eos"]
    unless_null $P5061, fallback2476
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5061, $P5070
  fallback2476:
    find_dynamic_lex $P5072, "%*REG"
    unless_null $P5072, fallback2477
    get_hll_global $P5075, "GLOBAL"
    get_who $P5074, $P5075
    set $P5073, $P5074["%REG"]
    unless_null $P5073, fallback2478
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    new $P5078, 'Hash'
    set $P5076["%REG"], $P5078
    set $P5073, $P5078
  fallback2478:
    unless_null $P5073, vivi_6552479
    die "Contextual %*REG not found"
    box $P5079, "Contextual %*REG not found"
    set $P5073, $P5079
  vivi_6552479:
    set $P5072, $P5073
  fallback2477:
    set $P5071, $P5072["fail"]
    unless_null $P5071, fallback2480
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5071, $P5080
  fallback2480:
    $P5081 = $P101."push_pirop"("gt", $P5051, $P5061, $P5071)
.annotate 'line', 3320
    find_dynamic_lex $P5083, "%*REG"
    unless_null $P5083, fallback2481
    get_hll_global $P5086, "GLOBAL"
    get_who $P5085, $P5086
    set $P5084, $P5085["%REG"]
    unless_null $P5084, fallback2482
    get_hll_global $P5088, "GLOBAL"
    get_who $P5087, $P5088
    new $P5089, 'Hash'
    set $P5087["%REG"], $P5089
    set $P5084, $P5089
  fallback2482:
    unless_null $P5084, vivi_6562483
    die "Contextual %*REG not found"
    box $P5090, "Contextual %*REG not found"
    set $P5084, $P5090
  vivi_6562483:
    set $P5083, $P5084
  fallback2481:
    set $P5082, $P5083["cur"]
    unless_null $P5082, fallback2484
    nqp_get_sc_object $P5091, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5082, $P5091
  fallback2484:
    find_dynamic_lex $P5093, "%*REG"
    unless_null $P5093, fallback2485
    get_hll_global $P5096, "GLOBAL"
    get_who $P5095, $P5096
    set $P5094, $P5095["%REG"]
    unless_null $P5094, fallback2486
    get_hll_global $P5098, "GLOBAL"
    get_who $P5097, $P5098
    new $P5099, 'Hash'
    set $P5097["%REG"], $P5099
    set $P5094, $P5099
  fallback2486:
    unless_null $P5094, vivi_6572487
    die "Contextual %*REG not found"
    box $P5100, "Contextual %*REG not found"
    set $P5094, $P5100
  vivi_6572487:
    set $P5093, $P5094
  fallback2485:
    set $P5092, $P5093["curclass"]
    unless_null $P5092, fallback2488
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5092, $P5101
  fallback2488:
    find_dynamic_lex $P5103, "%*REG"
    unless_null $P5103, fallback2489
    get_hll_global $P5106, "GLOBAL"
    get_who $P5105, $P5106
    set $P5104, $P5105["%REG"]
    unless_null $P5104, fallback2490
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    new $P5109, 'Hash'
    set $P5107["%REG"], $P5109
    set $P5104, $P5109
  fallback2490:
    unless_null $P5104, vivi_6582491
    die "Contextual %*REG not found"
    box $P5110, "Contextual %*REG not found"
    set $P5104, $P5110
  vivi_6582491:
    set $P5103, $P5104
  fallback2489:
    set $P5102, $P5103["pos"]
    unless_null $P5102, fallback2492
    nqp_get_sc_object $P5111, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5102, $P5111
  fallback2492:
    $P5112 = $P101."push_pirop"("repr_bind_attr_int", $P5082, $P5092, "\"$!from\"", $P5102)
.annotate 'line', 3321
    $P5113 = $P101."push"($P104)
.annotate 'line', 3322
    nqp_decontainerize $P5114, _lex_param_0
    find_dynamic_lex $P5116, "%*REG"
    unless_null $P5116, fallback2493
    get_hll_global $P5119, "GLOBAL"
    get_who $P5118, $P5119
    set $P5117, $P5118["%REG"]
    unless_null $P5117, fallback2494
    get_hll_global $P5121, "GLOBAL"
    get_who $P5120, $P5121
    new $P5122, 'Hash'
    set $P5120["%REG"], $P5122
    set $P5117, $P5122
  fallback2494:
    unless_null $P5117, vivi_6592495
    die "Contextual %*REG not found"
    box $P5123, "Contextual %*REG not found"
    set $P5117, $P5123
  vivi_6592495:
    set $P5116, $P5117
  fallback2493:
    set $P5115, $P5116["pos"]
    unless_null $P5115, fallback2496
    nqp_get_sc_object $P5124, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5115, $P5124
  fallback2496:
    $P5125 = $P5114."regex_mark"($P101, $P103, $P5115, 0)
.annotate 'line', 3323
    $P5126 = $P101."push"($P105)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_143_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3327
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$donelabel", $P103 
    .lex "$faillabel", $P104 
    .lex "$name", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
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
.annotate 'line', 3328
    nqp_decontainerize $P5006, _lex_param_0
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2497
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2498
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2498:
    unless_null $P5009, vivi_6602499
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_6602499:
    set $P5008, $P5009
  fallback2497:
    set $P5007, $P5008["cur"]
    unless_null $P5007, fallback2500
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5016
  fallback2500:
    $P5017 = $P5006."post_new"("Ops", $P5007 :named("result"))
    set $P101, $P5017
.annotate 'line', 3329
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxcap")
    set $P102, $P5019
.annotate 'line', 3330
    nqp_decontainerize $P5020, _lex_param_0
    set $S5002, $P102
    concat $S5001, $S5002, "_done"
    $P5021 = $P5020."post_new"("Label", $S5001 :named("name"))
    set $P103, $P5021
.annotate 'line', 3331
    nqp_decontainerize $P5022, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "_fail"
    $P5023 = $P5022."post_new"("Label", $S5003 :named("name"))
    set $P104, $P5023
.annotate 'line', 3332
    find_dynamic_lex $P5024, "$*PASTCOMPILER"
    unless_null $P5024, fallback2501
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    set $P5025, $P5026["$PASTCOMPILER"]
    unless_null $P5025, fallback2502
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5028
  fallback2502:
    unless_null $P5025, vivi_6612503
    die "Contextual $*PASTCOMPILER not found"
    box $P5029, "Contextual $*PASTCOMPILER not found"
    set $P5025, $P5029
  vivi_6612503:
    set $P5024, $P5025
  fallback2501:
    $P5030 = _lex_param_1."name"()
    $P5031 = $P5024."as_post"($P5030, "*" :named("rtype"))
    set $P105, $P5031
.annotate 'line', 3333
    nqp_decontainerize $P5032, _lex_param_0
    find_dynamic_lex $P5034, "%*REG"
    unless_null $P5034, fallback2504
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    set $P5035, $P5036["%REG"]
    unless_null $P5035, fallback2505
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    new $P5040, 'Hash'
    set $P5038["%REG"], $P5040
    set $P5035, $P5040
  fallback2505:
    unless_null $P5035, vivi_6622506
    die "Contextual %*REG not found"
    box $P5041, "Contextual %*REG not found"
    set $P5035, $P5041
  vivi_6622506:
    set $P5034, $P5035
  fallback2504:
    set $P5033, $P5034["pos"]
    unless_null $P5033, fallback2507
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5033, $P5042
  fallback2507:
    $P5043 = $P5032."regex_mark"($P101, $P104, $P5033, 0)
.annotate 'line', 3334
    nqp_decontainerize $P5044, _lex_param_0
    set $P5045, _lex_param_1[0]
    unless_null $P5045, fallback2508
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5045, $P5046
  fallback2508:
    $P5047 = $P5044."regex_post"($P5045)
    $P5048 = $P101."push"($P5047)
.annotate 'line', 3335
    nqp_decontainerize $P5049, _lex_param_0
    $P5050 = $P5049."regex_peek"($P101, $P104, "$I11")
.annotate 'line', 3336
    find_dynamic_lex $P5052, "%*REG"
    unless_null $P5052, fallback2509
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["%REG"]
    unless_null $P5053, fallback2510
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    new $P5058, 'Hash'
    set $P5056["%REG"], $P5058
    set $P5053, $P5058
  fallback2510:
    unless_null $P5053, vivi_6632511
    die "Contextual %*REG not found"
    box $P5059, "Contextual %*REG not found"
    set $P5053, $P5059
  vivi_6632511:
    set $P5052, $P5053
  fallback2509:
    set $P5051, $P5052["cur"]
    unless_null $P5051, fallback2512
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5051, $P5060
  fallback2512:
    $P5061 = $P101."push_pirop"("callmethod", "\"!cursor_start_subcapture\"", $P5051, "$I11", "$P11" :named("result"))
.annotate 'line', 3337
    find_dynamic_lex $P5063, "%*REG"
    unless_null $P5063, fallback2513
    get_hll_global $P5066, "GLOBAL"
    get_who $P5065, $P5066
    set $P5064, $P5065["%REG"]
    unless_null $P5064, fallback2514
    get_hll_global $P5068, "GLOBAL"
    get_who $P5067, $P5068
    new $P5069, 'Hash'
    set $P5067["%REG"], $P5069
    set $P5064, $P5069
  fallback2514:
    unless_null $P5064, vivi_6642515
    die "Contextual %*REG not found"
    box $P5070, "Contextual %*REG not found"
    set $P5064, $P5070
  vivi_6642515:
    set $P5063, $P5064
  fallback2513:
    set $P5062, $P5063["pos"]
    unless_null $P5062, fallback2516
    nqp_get_sc_object $P5071, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5062, $P5071
  fallback2516:
    $P5072 = $P101."push_pirop"("callmethod", "\"!cursor_pass\"", "$P11", $P5062)
.annotate 'line', 3338
    find_dynamic_lex $P5074, "%*REG"
    unless_null $P5074, fallback2517
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    set $P5075, $P5076["%REG"]
    unless_null $P5075, fallback2518
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    new $P5080, 'Hash'
    set $P5078["%REG"], $P5080
    set $P5075, $P5080
  fallback2518:
    unless_null $P5075, vivi_6652519
    die "Contextual %*REG not found"
    box $P5081, "Contextual %*REG not found"
    set $P5075, $P5081
  vivi_6652519:
    set $P5074, $P5075
  fallback2517:
    set $P5073, $P5074["cur"]
    unless_null $P5073, fallback2520
    nqp_get_sc_object $P5082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5073, $P5082
  fallback2520:
    find_dynamic_lex $P5084, "%*REG"
    unless_null $P5084, fallback2521
    get_hll_global $P5087, "GLOBAL"
    get_who $P5086, $P5087
    set $P5085, $P5086["%REG"]
    unless_null $P5085, fallback2522
    get_hll_global $P5089, "GLOBAL"
    get_who $P5088, $P5089
    new $P5090, 'Hash'
    set $P5088["%REG"], $P5090
    set $P5085, $P5090
  fallback2522:
    unless_null $P5085, vivi_6662523
    die "Contextual %*REG not found"
    box $P5091, "Contextual %*REG not found"
    set $P5085, $P5091
  vivi_6662523:
    set $P5084, $P5085
  fallback2521:
    set $P5083, $P5084["cstack"]
    unless_null $P5083, fallback2524
    nqp_get_sc_object $P5092, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5083, $P5092
  fallback2524:
    $P5093 = $P101."push_pirop"("callmethod", "\"!cursor_capture\"", $P5073, "$P11", $P105, $P5083 :named("result"))
.annotate 'line', 3340
    $P5094 = $P101."push_pirop"("goto", $P103)
.annotate 'line', 3341
    $P5095 = $P101."push"($P104)
.annotate 'line', 3342
    find_dynamic_lex $P5097, "%*REG"
    unless_null $P5097, fallback2525
    get_hll_global $P5100, "GLOBAL"
    get_who $P5099, $P5100
    set $P5098, $P5099["%REG"]
    unless_null $P5098, fallback2526
    get_hll_global $P5102, "GLOBAL"
    get_who $P5101, $P5102
    new $P5103, 'Hash'
    set $P5101["%REG"], $P5103
    set $P5098, $P5103
  fallback2526:
    unless_null $P5098, vivi_6672527
    die "Contextual %*REG not found"
    box $P5104, "Contextual %*REG not found"
    set $P5098, $P5104
  vivi_6672527:
    set $P5097, $P5098
  fallback2525:
    set $P5096, $P5097["fail"]
    unless_null $P5096, fallback2528
    nqp_get_sc_object $P5105, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5096, $P5105
  fallback2528:
    $P5106 = $P101."push_pirop"("goto", $P5096)
.annotate 'line', 3343
    $P5107 = $P101."push"($P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_144_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3347
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5179 = 'cuid_320_1346277600.974' 
    capture_lex $P5179 
    .lex "$ops", $P101 
    .lex "$name", $P102 
    .lex "$subtype", $P103 
    .lex "$cpn", $P104 
    .lex "@pargs", $P105 
    .lex "@nargs", $P106 
    .lex "$subpost", $P107 
    .lex "$testop", $P108 
    .lex "$captured", $P109 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P109, $P5009
.annotate 'line', 3348
    nqp_decontainerize $P5010, _lex_param_0
    find_dynamic_lex $P5012, "%*REG"
    unless_null $P5012, fallback2529
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    set $P5013, $P5014["%REG"]
    unless_null $P5013, fallback2530
    get_hll_global $P5017, "GLOBAL"
    get_who $P5016, $P5017
    new $P5018, 'Hash'
    set $P5016["%REG"], $P5018
    set $P5013, $P5018
  fallback2530:
    unless_null $P5013, vivi_6682531
    die "Contextual %*REG not found"
    box $P5019, "Contextual %*REG not found"
    set $P5013, $P5019
  vivi_6682531:
    set $P5012, $P5013
  fallback2529:
    set $P5011, $P5012["cur"]
    unless_null $P5011, fallback2532
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5020
  fallback2532:
    $P5021 = $P5010."post_new"("Ops", $P5011 :named("result"))
    set $P101, $P5021
.annotate 'line', 3349
    $P5022 = _lex_param_1."name"()
    defined $I5001, $P5022
    unless $I5001 goto if669_else2533 
    find_dynamic_lex $P5023, "$*PASTCOMPILER"
    unless_null $P5023, fallback2535
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["$PASTCOMPILER"]
    unless_null $P5024, fallback2536
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5027
  fallback2536:
    unless_null $P5024, vivi_6702537
    die "Contextual $*PASTCOMPILER not found"
    box $P5028, "Contextual $*PASTCOMPILER not found"
    set $P5024, $P5028
  vivi_6702537:
    set $P5023, $P5024
  fallback2535:
    $P5029 = _lex_param_1."name"()
    $P5030 = $P5023."as_post"($P5029, "*" :named("rtype"))
    set $P5031, $P5030
    goto if669_end2534
  if669_else2533:
    box $P5032, ""
    set $P5031, $P5032
  if669_end2534:
    set $P102, $P5031
.annotate 'line', 3350
    $P5033 = _lex_param_1."subtype"()
    set $P103, $P5033
    set $P5034, _lex_param_1[0]
    unless_null $P5034, fallback2540
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5035
  fallback2540:
    get_hll_global $P5039, "GLOBAL"
    nqp_get_package_through_who $P5038, $P5039, "QAST"
    get_who $P5037, $P5038
    set $P5036, $P5037["Node"]
    unless_null $P5036, fallback2541
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5036, $P5040
  fallback2541:
    type_check $I5002, $P5034, $P5036
    unless $I5002 goto if671_else2538 
.annotate 'line', 3352
    nqp_decontainerize $P5041, _lex_param_0
    set $P5042, _lex_param_1[0]
    unless_null $P5042, fallback2542
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5043
  fallback2542:
    $P5044 = $P5041."children"($P5042)
    set $P5049, $P5044
    goto if671_end2539
  if671_else2538:
.annotate 'line', 3353
    nqp_decontainerize $P5045, _lex_param_0
    set $P5046, _lex_param_1[0]
    unless_null $P5046, fallback2543
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5046, $P5047
  fallback2543:
    $P5048 = $P5045."post_children"($P5046)
    set $P5049, $P5048
  if671_end2539:
    set $P104, $P5049
    set $P5051, $P104[1]
    unless_null $P5051, fallback2545
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5051, $P5052
  fallback2545:
    set $P5050, $P5051
    defined $I5003, $P5050
    if $I5003, defor2544
    new $P5053, 'ResizablePMCArray'
    set $P5050, $P5053
  defor2544:
    set $P105, $P5050
    set $P5055, $P104[2]
    unless_null $P5055, fallback2547
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5055, $P5056
  fallback2547:
    set $P5054, $P5055
    defined $I5004, $P5054
    if $I5004, defor2546
    new $P5057, 'ResizablePMCArray'
    set $P5054, $P5057
  defor2546:
    set $P106, $P5054
    shift $P5058, $P105
    set $P107, $P5058
.annotate 'line', 3357
    $P5059 = _lex_param_1."negate"()
    unless $P5059 goto if672_else2548 
    set $S5001, "ge"
    goto if672_end2549
  if672_else2548:
    set $S5001, "lt"
  if672_end2549:
    box $P5060, $S5001
    set $P108, $P5060
    box $P5061, 0
    set $P109, $P5061
.annotate 'line', 3359
    set $P5062, $P104[0]
    unless_null $P5062, fallback2550
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5062, $P5063
  fallback2550:
    $P5064 = $P101."push"($P5062)
.annotate 'line', 3360
    find_dynamic_lex $P5066, "%*REG"
    unless_null $P5066, fallback2551
    get_hll_global $P5069, "GLOBAL"
    get_who $P5068, $P5069
    set $P5067, $P5068["%REG"]
    unless_null $P5067, fallback2552
    get_hll_global $P5071, "GLOBAL"
    get_who $P5070, $P5071
    new $P5072, 'Hash'
    set $P5070["%REG"], $P5072
    set $P5067, $P5072
  fallback2552:
    unless_null $P5067, vivi_6732553
    die "Contextual %*REG not found"
    box $P5073, "Contextual %*REG not found"
    set $P5067, $P5073
  vivi_6732553:
    set $P5066, $P5067
  fallback2551:
    set $P5065, $P5066["cur"]
    unless_null $P5065, fallback2554
    nqp_get_sc_object $P5074, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5065, $P5074
  fallback2554:
    find_dynamic_lex $P5076, "%*REG"
    unless_null $P5076, fallback2555
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    set $P5077, $P5078["%REG"]
    unless_null $P5077, fallback2556
    get_hll_global $P5081, "GLOBAL"
    get_who $P5080, $P5081
    new $P5082, 'Hash'
    set $P5080["%REG"], $P5082
    set $P5077, $P5082
  fallback2556:
    unless_null $P5077, vivi_6742557
    die "Contextual %*REG not found"
    box $P5083, "Contextual %*REG not found"
    set $P5077, $P5083
  vivi_6742557:
    set $P5076, $P5077
  fallback2555:
    set $P5075, $P5076["curclass"]
    unless_null $P5075, fallback2558
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5075, $P5084
  fallback2558:
    find_dynamic_lex $P5086, "%*REG"
    unless_null $P5086, fallback2559
    get_hll_global $P5089, "GLOBAL"
    get_who $P5088, $P5089
    set $P5087, $P5088["%REG"]
    unless_null $P5087, fallback2560
    get_hll_global $P5091, "GLOBAL"
    get_who $P5090, $P5091
    new $P5092, 'Hash'
    set $P5090["%REG"], $P5092
    set $P5087, $P5092
  fallback2560:
    unless_null $P5087, vivi_6752561
    die "Contextual %*REG not found"
    box $P5093, "Contextual %*REG not found"
    set $P5087, $P5093
  vivi_6752561:
    set $P5086, $P5087
  fallback2559:
    set $P5085, $P5086["pos"]
    unless_null $P5085, fallback2562
    nqp_get_sc_object $P5094, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5085, $P5094
  fallback2562:
    $P5095 = $P101."push_pirop"("repr_bind_attr_int", $P5065, $P5075, "\"$!pos\"", $P5085)
.annotate 'line', 3361
    find_dynamic_lex $P5097, "%*REG"
    unless_null $P5097, fallback2563
    get_hll_global $P5100, "GLOBAL"
    get_who $P5099, $P5100
    set $P5098, $P5099["%REG"]
    unless_null $P5098, fallback2564
    get_hll_global $P5102, "GLOBAL"
    get_who $P5101, $P5102
    new $P5103, 'Hash'
    set $P5101["%REG"], $P5103
    set $P5098, $P5103
  fallback2564:
    unless_null $P5098, vivi_6762565
    die "Contextual %*REG not found"
    box $P5104, "Contextual %*REG not found"
    set $P5098, $P5104
  vivi_6762565:
    set $P5097, $P5098
  fallback2563:
    set $P5096, $P5097["cur"]
    unless_null $P5096, fallback2566
    nqp_get_sc_object $P5105, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5096, $P5105
  fallback2566:
    $P5106 = $P101."push_pirop"("callmethod", $P107, $P5096, $P105 :flat, $P106 :flat, "$P11" :named("result"))
.annotate 'line', 3362
    find_dynamic_lex $P5108, "%*REG"
    unless_null $P5108, fallback2567
    get_hll_global $P5111, "GLOBAL"
    get_who $P5110, $P5111
    set $P5109, $P5110["%REG"]
    unless_null $P5109, fallback2568
    get_hll_global $P5113, "GLOBAL"
    get_who $P5112, $P5113
    new $P5114, 'Hash'
    set $P5112["%REG"], $P5114
    set $P5109, $P5114
  fallback2568:
    unless_null $P5109, vivi_6772569
    die "Contextual %*REG not found"
    box $P5115, "Contextual %*REG not found"
    set $P5109, $P5115
  vivi_6772569:
    set $P5108, $P5109
  fallback2567:
    set $P5107, $P5108["curclass"]
    unless_null $P5107, fallback2570
    nqp_get_sc_object $P5116, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5107, $P5116
  fallback2570:
    $P5117 = $P101."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P5107, "\"$!pos\"")
.annotate 'line', 3363
    find_dynamic_lex $P5119, "%*REG"
    unless_null $P5119, fallback2571
    get_hll_global $P5122, "GLOBAL"
    get_who $P5121, $P5122
    set $P5120, $P5121["%REG"]
    unless_null $P5120, fallback2572
    get_hll_global $P5124, "GLOBAL"
    get_who $P5123, $P5124
    new $P5125, 'Hash'
    set $P5123["%REG"], $P5125
    set $P5120, $P5125
  fallback2572:
    unless_null $P5120, vivi_6782573
    die "Contextual %*REG not found"
    box $P5126, "Contextual %*REG not found"
    set $P5120, $P5126
  vivi_6782573:
    set $P5119, $P5120
  fallback2571:
    set $P5118, $P5119["fail"]
    unless_null $P5118, fallback2574
    nqp_get_sc_object $P5127, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5118, $P5127
  fallback2574:
    $P5128 = $P101."push_pirop"($P108, "$I11", "0", $P5118)
    set $S5002, $P103
    isne $I5005, $S5002, "zerowidth"
    box $P5132, $I5005
    set $P5131, $P5132
    unless $I5005 goto if679_end2576 
    .const 'Sub' $P5129 = 'cuid_320_1346277600.974' 
    capture_lex $P5129
    $P5130 = $P5129()
    set $P5131, $P5130
  if679_end2576:
    isfalse $I5006, $P109
    set $I5008, $I5006
    unless $I5006 goto if696_end2634 
    set $S5003, $P103
    iseq $I5007, $S5003, "capture"
    set $I5008, $I5007
  if696_end2634:
    box $P5155, $I5008
    set $P5154, $P5155
    unless $I5008 goto if695_end2632 
.annotate 'line', 3398
    find_dynamic_lex $P5134, "%*REG"
    unless_null $P5134, fallback2635
    get_hll_global $P5137, "GLOBAL"
    get_who $P5136, $P5137
    set $P5135, $P5136["%REG"]
    unless_null $P5135, fallback2636
    get_hll_global $P5139, "GLOBAL"
    get_who $P5138, $P5139
    new $P5140, 'Hash'
    set $P5138["%REG"], $P5140
    set $P5135, $P5140
  fallback2636:
    unless_null $P5135, vivi_6972637
    die "Contextual %*REG not found"
    box $P5141, "Contextual %*REG not found"
    set $P5135, $P5141
  vivi_6972637:
    set $P5134, $P5135
  fallback2635:
    set $P5133, $P5134["cur"]
    unless_null $P5133, fallback2638
    nqp_get_sc_object $P5142, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5133, $P5142
  fallback2638:
    find_dynamic_lex $P5144, "%*REG"
    unless_null $P5144, fallback2639
    get_hll_global $P5147, "GLOBAL"
    get_who $P5146, $P5147
    set $P5145, $P5146["%REG"]
    unless_null $P5145, fallback2640
    get_hll_global $P5149, "GLOBAL"
    get_who $P5148, $P5149
    new $P5150, 'Hash'
    set $P5148["%REG"], $P5150
    set $P5145, $P5150
  fallback2640:
    unless_null $P5145, vivi_6982641
    die "Contextual %*REG not found"
    box $P5151, "Contextual %*REG not found"
    set $P5145, $P5151
  vivi_6982641:
    set $P5144, $P5145
  fallback2639:
    set $P5143, $P5144["cstack"]
    unless_null $P5143, fallback2642
    nqp_get_sc_object $P5152, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5143, $P5152
  fallback2642:
    $P5153 = $P101."push_pirop"("callmethod", "\"!cursor_capture\"", $P5133, "$P11", $P102, $P5143 :named("result"))
    set $P5154, $P5153
  if695_end2632:
    set $S5004, $P103
    iseq $I5009, $S5004, "zerowidth"
    box $P5178, $I5009
    set $P5177, $P5178
    if $I5009 goto unless699_end2644 
.annotate 'line', 3401
    find_dynamic_lex $P5157, "%*REG"
    unless_null $P5157, fallback2645
    get_hll_global $P5160, "GLOBAL"
    get_who $P5159, $P5160
    set $P5158, $P5159["%REG"]
    unless_null $P5158, fallback2646
    get_hll_global $P5162, "GLOBAL"
    get_who $P5161, $P5162
    new $P5163, 'Hash'
    set $P5161["%REG"], $P5163
    set $P5158, $P5163
  fallback2646:
    unless_null $P5158, vivi_7002647
    die "Contextual %*REG not found"
    box $P5164, "Contextual %*REG not found"
    set $P5158, $P5164
  vivi_7002647:
    set $P5157, $P5158
  fallback2645:
    set $P5156, $P5157["pos"]
    unless_null $P5156, fallback2648
    nqp_get_sc_object $P5165, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5156, $P5165
  fallback2648:
    find_dynamic_lex $P5167, "%*REG"
    unless_null $P5167, fallback2649
    get_hll_global $P5170, "GLOBAL"
    get_who $P5169, $P5170
    set $P5168, $P5169["%REG"]
    unless_null $P5168, fallback2650
    get_hll_global $P5172, "GLOBAL"
    get_who $P5171, $P5172
    new $P5173, 'Hash'
    set $P5171["%REG"], $P5173
    set $P5168, $P5173
  fallback2650:
    unless_null $P5168, vivi_7012651
    die "Contextual %*REG not found"
    box $P5174, "Contextual %*REG not found"
    set $P5168, $P5174
  vivi_7012651:
    set $P5167, $P5168
  fallback2649:
    set $P5166, $P5167["curclass"]
    unless_null $P5166, fallback2652
    nqp_get_sc_object $P5175, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5166, $P5175
  fallback2652:
    $P5176 = $P101."push_pirop"("repr_get_attr_int", $P5156, "$P11", $P5166, "\"$!pos\"")
    set $P5177, $P5176
  unless699_end2644:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_320_1346277600.974") :anon :lex :outer("cuid_144_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3364
    .const 'Sub' $P5023 = 'cuid_319_1346277600.974' 
    capture_lex $P5023 
    .lex "$rxname", $P101 
    .lex "$passlabel", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 3365
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."unique"("rxsubrule")
    set $P101, $P5005
.annotate 'line', 3366
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    set $S5002, $P101
    concat $S5001, $S5002, "_pass"
    $P5008 = $P5006."post_new"("Label", $S5001 :named("name"))
    set $P102, $P5008
.annotate 'line', 3367
    find_lex $P5009, "$node"
    $P5010 = $P5009."backtrack"()
    set $S5003, $P5010
    iseq $I5001, $S5003, "r"
    unless $I5001 goto if680_else2577 
    find_lex $P5011, "$subtype"
    set $S5004, $P5011
    iseq $I5002, $S5004, "method"
    box $P5019, $I5002
    set $P5018, $P5019
    if $I5002 goto unless681_end2580 
.annotate 'line', 3368
.annotate 'line', 3369
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$ops"
    $P5015 = $P5012."regex_mark"($P5014, $P102, -1, 0)
.annotate 'line', 3370
    find_lex $P5016, "$ops"
    $P5017 = $P5016."push"($P102)
    set $P5018, $P5017
  unless681_end2580:
    set $P5022, $P5018
    goto if680_end2578
  if680_else2577:
    .const 'Sub' $P5020 = 'cuid_319_1346277600.974' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5022, $P5021
  if680_end2578:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_319_1346277600.974") :anon :lex :outer("cuid_320_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3373
    .lex "$backlabel", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 3374
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$rxname"
    set $S5002, $P5004
    concat $S5001, $S5002, "_back"
    $P5005 = $P5002."post_new"("Label", $S5001 :named("name"))
    set $P101, $P5005
.annotate 'line', 3375
    find_lex $P5006, "$ops"
    find_lex $P5007, "$passlabel"
    $P5008 = $P5006."push_pirop"("goto", $P5007)
.annotate 'line', 3376
    find_lex $P5009, "$ops"
    $P5010 = $P5009."push"($P101)
.annotate 'line', 3377
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push_pirop"("callmethod", "\"!cursor_next\"", "$P11", "$P11" :named("result"))
.annotate 'line', 3378
    find_lex $P5013, "$ops"
    find_dynamic_lex $P5015, "%*REG"
    unless_null $P5015, fallback2581
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["%REG"]
    unless_null $P5016, fallback2582
    get_hll_global $P5020, "GLOBAL"
    get_who $P5019, $P5020
    new $P5021, 'Hash'
    set $P5019["%REG"], $P5021
    set $P5016, $P5021
  fallback2582:
    unless_null $P5016, vivi_6822583
    die "Contextual %*REG not found"
    box $P5022, "Contextual %*REG not found"
    set $P5016, $P5022
  vivi_6822583:
    set $P5015, $P5016
  fallback2581:
    set $P5014, $P5015["curclass"]
    unless_null $P5014, fallback2584
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5023
  fallback2584:
    $P5024 = $P5013."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P5014, "\"$!pos\"")
.annotate 'line', 3379
    find_lex $P5025, "$ops"
    find_lex $P5026, "$testop"
    find_dynamic_lex $P5028, "%*REG"
    unless_null $P5028, fallback2585
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    set $P5029, $P5030["%REG"]
    unless_null $P5029, fallback2586
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    new $P5034, 'Hash'
    set $P5032["%REG"], $P5034
    set $P5029, $P5034
  fallback2586:
    unless_null $P5029, vivi_6832587
    die "Contextual %*REG not found"
    box $P5035, "Contextual %*REG not found"
    set $P5029, $P5035
  vivi_6832587:
    set $P5028, $P5029
  fallback2585:
    set $P5027, $P5028["fail"]
    unless_null $P5027, fallback2588
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5036
  fallback2588:
    $P5037 = $P5025."push_pirop"($P5026, "$I11", "0", $P5027)
.annotate 'line', 3380
    find_lex $P5038, "$ops"
    find_lex $P5039, "$passlabel"
    $P5040 = $P5038."push"($P5039)
    find_lex $P5041, "$subtype"
    set $S5003, $P5041
    iseq $I5001, $S5003, "capture"
    unless $I5001 goto if684_else2589 
.annotate 'line', 3381
.annotate 'line', 3382
    find_lex $P5042, "$ops"
    find_dynamic_lex $P5044, "%*REG"
    unless_null $P5044, fallback2591
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    set $P5045, $P5046["%REG"]
    unless_null $P5045, fallback2592
    get_hll_global $P5049, "GLOBAL"
    get_who $P5048, $P5049
    new $P5050, 'Hash'
    set $P5048["%REG"], $P5050
    set $P5045, $P5050
  fallback2592:
    unless_null $P5045, vivi_6852593
    die "Contextual %*REG not found"
    box $P5051, "Contextual %*REG not found"
    set $P5045, $P5051
  vivi_6852593:
    set $P5044, $P5045
  fallback2591:
    set $P5043, $P5044["cur"]
    unless_null $P5043, fallback2594
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5043, $P5052
  fallback2594:
    find_lex $P5053, "$name"
    find_dynamic_lex $P5055, "%*REG"
    unless_null $P5055, fallback2595
    get_hll_global $P5058, "GLOBAL"
    get_who $P5057, $P5058
    set $P5056, $P5057["%REG"]
    unless_null $P5056, fallback2596
    get_hll_global $P5060, "GLOBAL"
    get_who $P5059, $P5060
    new $P5061, 'Hash'
    set $P5059["%REG"], $P5061
    set $P5056, $P5061
  fallback2596:
    unless_null $P5056, vivi_6862597
    die "Contextual %*REG not found"
    box $P5062, "Contextual %*REG not found"
    set $P5056, $P5062
  vivi_6862597:
    set $P5055, $P5056
  fallback2595:
    set $P5054, $P5055["cstack"]
    unless_null $P5054, fallback2598
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5054, $P5063
  fallback2598:
    $P5064 = $P5042."push_pirop"("callmethod", "\"!cursor_capture\"", $P5043, "$P11", $P5053, $P5054 :named("result"))
    box $P5065, 1
    store_lex "$captured", $P5065
    set $P5088, $P5065
    goto if684_end2590
  if684_else2589:
.annotate 'line', 3386
.annotate 'line', 3387
    find_lex $P5066, "$ops"
    find_dynamic_lex $P5068, "%*REG"
    unless_null $P5068, fallback2599
    get_hll_global $P5071, "GLOBAL"
    get_who $P5070, $P5071
    set $P5069, $P5070["%REG"]
    unless_null $P5069, fallback2600
    get_hll_global $P5073, "GLOBAL"
    get_who $P5072, $P5073
    new $P5074, 'Hash'
    set $P5072["%REG"], $P5074
    set $P5069, $P5074
  fallback2600:
    unless_null $P5069, vivi_6872601
    die "Contextual %*REG not found"
    box $P5075, "Contextual %*REG not found"
    set $P5069, $P5075
  vivi_6872601:
    set $P5068, $P5069
  fallback2599:
    set $P5067, $P5068["cur"]
    unless_null $P5067, fallback2602
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5067, $P5076
  fallback2602:
    find_dynamic_lex $P5078, "%*REG"
    unless_null $P5078, fallback2603
    get_hll_global $P5081, "GLOBAL"
    get_who $P5080, $P5081
    set $P5079, $P5080["%REG"]
    unless_null $P5079, fallback2604
    get_hll_global $P5083, "GLOBAL"
    get_who $P5082, $P5083
    new $P5084, 'Hash'
    set $P5082["%REG"], $P5084
    set $P5079, $P5084
  fallback2604:
    unless_null $P5079, vivi_6882605
    die "Contextual %*REG not found"
    box $P5085, "Contextual %*REG not found"
    set $P5079, $P5085
  vivi_6882605:
    set $P5078, $P5079
  fallback2603:
    set $P5077, $P5078["cstack"]
    unless_null $P5077, fallback2606
    nqp_get_sc_object $P5086, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5077, $P5086
  fallback2606:
    $P5087 = $P5066."push_pirop"("callmethod", "\"!cursor_push_cstack\"", $P5067, "$P11", $P5077 :named("result"))
    set $P5088, $P5087
  if684_end2590:
.annotate 'line', 3390
    find_lex $P5089, "$ops"
    $P5090 = $P5089."push_pirop"("set_addr", "$I11", $P101)
.annotate 'line', 3391
    find_lex $P5091, "$ops"
    find_dynamic_lex $P5093, "%*REG"
    unless_null $P5093, fallback2607
    get_hll_global $P5096, "GLOBAL"
    get_who $P5095, $P5096
    set $P5094, $P5095["%REG"]
    unless_null $P5094, fallback2608
    get_hll_global $P5098, "GLOBAL"
    get_who $P5097, $P5098
    new $P5099, 'Hash'
    set $P5097["%REG"], $P5099
    set $P5094, $P5099
  fallback2608:
    unless_null $P5094, vivi_6892609
    die "Contextual %*REG not found"
    box $P5100, "Contextual %*REG not found"
    set $P5094, $P5100
  vivi_6892609:
    set $P5093, $P5094
  fallback2607:
    set $P5092, $P5093["bstack"]
    unless_null $P5092, fallback2610
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5092, $P5101
  fallback2610:
    $P5102 = $P5091."push_pirop"("push", $P5092, "$I11")
.annotate 'line', 3392
    find_lex $P5103, "$ops"
    find_dynamic_lex $P5105, "%*REG"
    unless_null $P5105, fallback2611
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    set $P5106, $P5107["%REG"]
    unless_null $P5106, fallback2612
    get_hll_global $P5110, "GLOBAL"
    get_who $P5109, $P5110
    new $P5111, 'Hash'
    set $P5109["%REG"], $P5111
    set $P5106, $P5111
  fallback2612:
    unless_null $P5106, vivi_6902613
    die "Contextual %*REG not found"
    box $P5112, "Contextual %*REG not found"
    set $P5106, $P5112
  vivi_6902613:
    set $P5105, $P5106
  fallback2611:
    set $P5104, $P5105["bstack"]
    unless_null $P5104, fallback2614
    nqp_get_sc_object $P5113, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5104, $P5113
  fallback2614:
    $P5114 = $P5103."push_pirop"("push", $P5104, 0)
.annotate 'line', 3393
    find_lex $P5115, "$ops"
    find_dynamic_lex $P5117, "%*REG"
    unless_null $P5117, fallback2615
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    set $P5118, $P5119["%REG"]
    unless_null $P5118, fallback2616
    get_hll_global $P5122, "GLOBAL"
    get_who $P5121, $P5122
    new $P5123, 'Hash'
    set $P5121["%REG"], $P5123
    set $P5118, $P5123
  fallback2616:
    unless_null $P5118, vivi_6912617
    die "Contextual %*REG not found"
    box $P5124, "Contextual %*REG not found"
    set $P5118, $P5124
  vivi_6912617:
    set $P5117, $P5118
  fallback2615:
    set $P5116, $P5117["bstack"]
    unless_null $P5116, fallback2618
    nqp_get_sc_object $P5125, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5116, $P5125
  fallback2618:
    find_dynamic_lex $P5127, "%*REG"
    unless_null $P5127, fallback2619
    get_hll_global $P5130, "GLOBAL"
    get_who $P5129, $P5130
    set $P5128, $P5129["%REG"]
    unless_null $P5128, fallback2620
    get_hll_global $P5132, "GLOBAL"
    get_who $P5131, $P5132
    new $P5133, 'Hash'
    set $P5131["%REG"], $P5133
    set $P5128, $P5133
  fallback2620:
    unless_null $P5128, vivi_6922621
    die "Contextual %*REG not found"
    box $P5134, "Contextual %*REG not found"
    set $P5128, $P5134
  vivi_6922621:
    set $P5127, $P5128
  fallback2619:
    set $P5126, $P5127["pos"]
    unless_null $P5126, fallback2622
    nqp_get_sc_object $P5135, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5126, $P5135
  fallback2622:
    $P5136 = $P5115."push_pirop"("push", $P5116, $P5126)
.annotate 'line', 3394
    find_lex $P5137, "$ops"
    find_dynamic_lex $P5139, "%*REG"
    unless_null $P5139, fallback2623
    get_hll_global $P5142, "GLOBAL"
    get_who $P5141, $P5142
    set $P5140, $P5141["%REG"]
    unless_null $P5140, fallback2624
    get_hll_global $P5144, "GLOBAL"
    get_who $P5143, $P5144
    new $P5145, 'Hash'
    set $P5143["%REG"], $P5145
    set $P5140, $P5145
  fallback2624:
    unless_null $P5140, vivi_6932625
    die "Contextual %*REG not found"
    box $P5146, "Contextual %*REG not found"
    set $P5140, $P5146
  vivi_6932625:
    set $P5139, $P5140
  fallback2623:
    set $P5138, $P5139["cstack"]
    unless_null $P5138, fallback2626
    nqp_get_sc_object $P5147, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5138, $P5147
  fallback2626:
    $P5148 = $P5137."push_pirop"("elements", "$I11", $P5138)
.annotate 'line', 3395
    find_lex $P5149, "$ops"
    find_dynamic_lex $P5151, "%*REG"
    unless_null $P5151, fallback2627
    get_hll_global $P5154, "GLOBAL"
    get_who $P5153, $P5154
    set $P5152, $P5153["%REG"]
    unless_null $P5152, fallback2628
    get_hll_global $P5156, "GLOBAL"
    get_who $P5155, $P5156
    new $P5157, 'Hash'
    set $P5155["%REG"], $P5157
    set $P5152, $P5157
  fallback2628:
    unless_null $P5152, vivi_6942629
    die "Contextual %*REG not found"
    box $P5158, "Contextual %*REG not found"
    set $P5152, $P5158
  vivi_6942629:
    set $P5151, $P5152
  fallback2627:
    set $P5150, $P5151["bstack"]
    unless_null $P5150, fallback2630
    nqp_get_sc_object $P5159, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5150, $P5159
  fallback2630:
    $P5160 = $P5149."push_pirop"("push", $P5150, "$I11")
    .return ($P5160) 
.end
.HLL "nqp"
.namespace []
.sub "uniprop" :subid("cuid_145_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3406
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$cmpop", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 3407
    nqp_decontainerize $P5003, _lex_param_0
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2653
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2654
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2654:
    unless_null $P5006, vivi_7022655
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_7022655:
    set $P5005, $P5006
  fallback2653:
    set $P5004, $P5005["cur"]
    unless_null $P5004, fallback2656
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5013
  fallback2656:
    $P5014 = $P5003."post_new"("Ops", $P5004 :named("result"))
    set $P101, $P5014
.annotate 'line', 3408
    $P5015 = _lex_param_1."negate"()
    unless $P5015 goto if703_else2657 
    set $S5001, "ne"
    goto if703_end2658
  if703_else2657:
    set $S5001, "eq"
  if703_end2658:
    box $P5016, $S5001
    set $P102, $P5016
.annotate 'line', 3409
    set $P5017, _lex_param_1[0]
    unless_null $P5017, fallback2659
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5018
  fallback2659:
    set $S5004, $P5017
    concat $S5003, "\"", $S5004
    concat $S5002, $S5003, "\""
    $P5019 = $P101."push_pirop"("assign", "$S10", $S5002)
.annotate 'line', 3410
    find_dynamic_lex $P5021, "%*REG"
    unless_null $P5021, fallback2660
    get_hll_global $P5024, "GLOBAL"
    get_who $P5023, $P5024
    set $P5022, $P5023["%REG"]
    unless_null $P5022, fallback2661
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    new $P5027, 'Hash'
    set $P5025["%REG"], $P5027
    set $P5022, $P5027
  fallback2661:
    unless_null $P5022, vivi_7042662
    die "Contextual %*REG not found"
    box $P5028, "Contextual %*REG not found"
    set $P5022, $P5028
  vivi_7042662:
    set $P5021, $P5022
  fallback2660:
    set $P5020, $P5021["tgt"]
    unless_null $P5020, fallback2663
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5029
  fallback2663:
    find_dynamic_lex $P5031, "%*REG"
    unless_null $P5031, fallback2664
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    set $P5032, $P5033["%REG"]
    unless_null $P5032, fallback2665
    get_hll_global $P5036, "GLOBAL"
    get_who $P5035, $P5036
    new $P5037, 'Hash'
    set $P5035["%REG"], $P5037
    set $P5032, $P5037
  fallback2665:
    unless_null $P5032, vivi_7052666
    die "Contextual %*REG not found"
    box $P5038, "Contextual %*REG not found"
    set $P5032, $P5038
  vivi_7052666:
    set $P5031, $P5032
  fallback2664:
    set $P5030, $P5031["pos"]
    unless_null $P5030, fallback2667
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5030, $P5039
  fallback2667:
    $P5040 = $P101."push_pirop"("is_uprop", "$I11", "$S10", $P5020, $P5030)
.annotate 'line', 3411
    find_dynamic_lex $P5042, "%*REG"
    unless_null $P5042, fallback2668
    get_hll_global $P5045, "GLOBAL"
    get_who $P5044, $P5045
    set $P5043, $P5044["%REG"]
    unless_null $P5043, fallback2669
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    new $P5048, 'Hash'
    set $P5046["%REG"], $P5048
    set $P5043, $P5048
  fallback2669:
    unless_null $P5043, vivi_7062670
    die "Contextual %*REG not found"
    box $P5049, "Contextual %*REG not found"
    set $P5043, $P5049
  vivi_7062670:
    set $P5042, $P5043
  fallback2668:
    set $P5041, $P5042["fail"]
    unless_null $P5041, fallback2671
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5041, $P5050
  fallback2671:
    $P5051 = $P101."push_pirop"($P102, "$I11", 0, $P5041)
.annotate 'line', 3412
    $P5052 = _lex_param_1."subtype"()
    set $S5005, $P5052
    iseq $I5001, $S5005, "zerowidth"
    box $P5065, $I5001
    set $P5064, $P5065
    if $I5001 goto unless707_end2673 
    find_dynamic_lex $P5054, "%*REG"
    unless_null $P5054, fallback2674
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    set $P5055, $P5056["%REG"]
    unless_null $P5055, fallback2675
    get_hll_global $P5059, "GLOBAL"
    get_who $P5058, $P5059
    new $P5060, 'Hash'
    set $P5058["%REG"], $P5060
    set $P5055, $P5060
  fallback2675:
    unless_null $P5055, vivi_7082676
    die "Contextual %*REG not found"
    box $P5061, "Contextual %*REG not found"
    set $P5055, $P5061
  vivi_7082676:
    set $P5054, $P5055
  fallback2674:
    set $P5053, $P5054["pos"]
    unless_null $P5053, fallback2677
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5053, $P5062
  fallback2677:
    $P5063 = $P101."push_pirop"("inc", $P5053)
    set $P5064, $P5063
  unless707_end2673:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_146_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3417
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."subrule"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_mark" :subid("cuid_147_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3419
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
    .lex "$pos", _lex_param_3 
    .lex "$rep", _lex_param_4 
.annotate 'line', 3420
    find_dynamic_lex $P5002, "%*REG"
    unless_null $P5002, fallback2678
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["%REG"]
    unless_null $P5003, fallback2679
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%REG"], $P5008
    set $P5003, $P5008
  fallback2679:
    unless_null $P5003, vivi_7092680
    die "Contextual %*REG not found"
    box $P5009, "Contextual %*REG not found"
    set $P5003, $P5009
  vivi_7092680:
    set $P5002, $P5003
  fallback2678:
    set $P5001, $P5002["bstack"]
    unless_null $P5001, fallback2681
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5010
  fallback2681:
    $P5011 = _lex_param_1."push_pirop"("nqp_rxmark", $P5001, _lex_param_2, _lex_param_3, _lex_param_4)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "regex_peek" :subid("cuid_148_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3423
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy 
    .const 'Sub' $P5018 = 'cuid_321_1346277600.974' 
    capture_lex $P5018 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
    .lex "@regs", _lex_param_3 
.annotate 'line', 3424
    find_dynamic_lex $P5002, "%*REG"
    unless_null $P5002, fallback2682
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["%REG"]
    unless_null $P5003, fallback2683
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%REG"], $P5008
    set $P5003, $P5008
  fallback2683:
    unless_null $P5003, vivi_7102684
    die "Contextual %*REG not found"
    box $P5009, "Contextual %*REG not found"
    set $P5003, $P5009
  vivi_7102684:
    set $P5002, $P5003
  fallback2682:
    set $P5001, $P5002["bstack"]
    unless_null $P5001, fallback2685
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5010
  fallback2685:
    $P5011 = _lex_param_1."push_pirop"("nqp_rxpeek", "$I19", $P5001, _lex_param_2)
    set $P5012, _lex_param_3
    iter $P5014, _lex_param_3
    new $P5016, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5016, for_handlers2692
    push_eh $P5016
  for_next2693:
    unless $P5014, for_done2695
    shift $P5017, $P5014
  for_redo2694:
    .const 'Sub' $P5015 = 'cuid_321_1346277600.974' 
    capture_lex $P5015
    $P5012 = $P5015($P5017)
    goto for_next2693
  for_handlers2692:
    .get_results ($P5016)
    pop_upto_eh $P5016
    getattribute $P5016, $P5016, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, for_next2693
    eq $P5016, .CONTROL_LOOP_REDO, for_redo2694
  for_done2695:
    pop_eh 
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_321_1346277600.974") :anon :lex :outer("cuid_148_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3425
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 3426
    find_lex $P5001, "$ops"
    $P5002 = $P5001."push_pirop"("inc", "$I19")
    set $S5001, _lex_param_0
    isne $I5001, $S5001, "*"
    box $P5016, $I5001
    set $P5015, $P5016
    unless $I5001 goto if711_end2687 
.annotate 'line', 3427
    find_lex $P5003, "$ops"
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2688
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2689
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2689:
    unless_null $P5006, vivi_7122690
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_7122690:
    set $P5005, $P5006
  fallback2688:
    set $P5004, $P5005["bstack"]
    unless_null $P5004, fallback2691
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5013
  fallback2691:
    set $S5003, $P5004
    concat $S5002, $S5003, "[$I19]"
    $P5014 = $P5003."push_pirop"("set", _lex_param_0, $S5002)
    set $P5015, $P5014
  if711_end2687:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "regex_commit" :subid("cuid_149_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
.annotate 'line', 3432
    find_dynamic_lex $P5002, "%*REG"
    unless_null $P5002, fallback2696
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["%REG"]
    unless_null $P5003, fallback2697
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%REG"], $P5008
    set $P5003, $P5008
  fallback2697:
    unless_null $P5003, vivi_7132698
    die "Contextual %*REG not found"
    box $P5009, "Contextual %*REG not found"
    set $P5003, $P5009
  vivi_7132698:
    set $P5002, $P5003
  fallback2696:
    set $P5001, $P5002["bstack"]
    unless_null $P5001, fallback2699
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5010
  fallback2699:
    $P5011 = _lex_param_1."push_pirop"("nqp_rxcommit", $P5001, _lex_param_2)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_150_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3435
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$unknown", _lex_param_1 
.annotate 'line', 3438
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Op"]
    unless_null $P5001, fallback2702
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback2702:
    $P5006 = $P5001."ACCEPTS"(_lex_param_1)
    unless $P5006 goto if714_else2700 
    typeof $S5007, _lex_param_1
    concat $S5006, "Unknown QAST node type ", $S5007
    concat $S5005, $S5006, " (name = '"
.annotate 'line', 3440
    $P5007 = _lex_param_1."name"()
    set $S5008, $P5007
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, "', pirop = '"
.annotate 'line', 3441
    $P5008 = _lex_param_1."pirop"()
    set $S5009, $P5008
    concat $S5002, $S5003, $S5009
    concat $S5001, $S5002, "')"
    box $P5009, $S5001
    die $P5009
    set $P5011, $P5009
    goto if714_end2701
  if714_else2700:
.annotate 'line', 3443
    typeof $S5011, _lex_param_1
    concat $S5010, "Unknown QAST node type ", $S5011
    box $P5010, $S5010
    die $P5010
    set $P5011, $P5010
  if714_end2701:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "operations" :subid("cuid_151_1346277600.974") :anon :lex :outer("cuid_59_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3448
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback2703
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback2703:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_323_1346277600.974") :load :init
.annotate 'file', "src\\stage2\\QAST.nqp"
    .const 'Sub' $P5001 = 'cuid_322_1346277600.974' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1346277600.974" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("NQPHLL")
    nqp_create_sc $P5001, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\QAST.nqp")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "PIRT"
    push $P5003, "QAST"
    push $P5003, "QRegex"
    push $P5003, "NQPCursorRole"
    push $P5003, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638"
    push $P5003, "src\\stage2\\QRegex.nqp"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "HLL"
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
    push $P5003, "result"
    push $P5003, "$!result"
    push $P5003, "children_pir"
    push $P5003, "escape"
    push $P5003, "push"
    push $P5003, "push_pirop"
    push $P5003, "subid"
    push $P5003, "pirflags"
    push $P5003, "name"
    push $P5003, "loadlibs"
    push $P5003, "hll"
    push $P5003, "namespace"
    push $P5003, "close_sub"
    push $P5003, "pir"
    push $P5003, "collect_sub_pir_into"
    push $P5003, "@!children"
    push $P5003, "$!subid"
    push $P5003, "$!pirflags"
    push $P5003, "$!name"
    push $P5003, "$!hll"
    push $P5003, "@!namespace"
    push $P5003, "@!loadlibs"
    push $P5003, "@!nested_blocks"
    push $P5003, "$!cached_pir"
    push $P5003, "node"
    push $P5003, "$!node"
    push $P5003, "compile_op"
    push $P5003, "compile_pirop"
    push $P5003, "add_core_op"
    push $P5003, "add_hll_op"
    push $P5003, "add_core_pirop_mapping"
    push $P5003, "add_hll_pirop_mapping"
    push $P5003, "set_core_op_inlinability"
    push $P5003, "set_hll_op_inlinability"
    push $P5003, "is_inlinable"
    push $P5003, "set_core_op_result_type"
    push $P5003, "set_hll_op_result_type"
    push $P5003, "attach_result_type"
    push $P5003, "add_hll_box"
    push $P5003, "add_hll_unbox"
    push $P5003, "box"
    push $P5003, "unbox"
    push $P5003, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346277591.613"
    push $P5003, "src\\stage2\\gen\\NQPHLL.pm"
    push $P5003, "BUILD"
    push $P5003, "get_exports"
    push $P5003, "get_module"
    push $P5003, "language"
    push $P5003, "compiler"
    push $P5003, "config"
    push $P5003, "load_module"
    push $P5003, "autoprint"
    push $P5003, "interactive"
    push $P5003, "eval"
    push $P5003, "ctxsave"
    push $P5003, "panic"
    push $P5003, "stages"
    push $P5003, "parsegrammar"
    push $P5003, "parseactions"
    push $P5003, "interactive_banner"
    push $P5003, "interactive_prompt"
    push $P5003, "compiler_progname"
    push $P5003, "commandline_options"
    push $P5003, "command_line"
    push $P5003, "command_eval"
    push $P5003, "process_args"
    push $P5003, "evalfiles"
    push $P5003, "compile"
    push $P5003, "start"
    push $P5003, "parse"
    push $P5003, "past"
    push $P5003, "post"
    push $P5003, "pirbegin"
    push $P5003, "evalpmc"
    push $P5003, "dumper"
    push $P5003, "usage"
    push $P5003, "version"
    push $P5003, "show-config"
    push $P5003, "verbose-config"
    push $P5003, "vmstat"
    push $P5003, "nqpevent"
    push $P5003, "removestage"
    push $P5003, "addstage"
    push $P5003, "parse_name"
    push $P5003, "lineof"
    push $P5003, "user-progname"
    push $P5003, "cli-options"
    push $P5003, "cli-arguments"
    push $P5003, "type_to_register_type"
    push $P5003, "force_return_boxing_for_hll"
    push $P5003, "unique"
    push $P5003, "rxescape"
    push $P5003, "as_post"
    push $P5003, "deserialization_code"
    push $P5003, "compile_all_the_stmts"
    push $P5003, "apply_context"
    push $P5003, "compile_var"
    push $P5003, "as_post_clear_bindval"
    push $P5003, "coerce"
    push $P5003, "infer_type"
    push $P5003, "post_children"
    push $P5003, "children"
    push $P5003, "regex_post"
    push $P5003, "post_new"
    push $P5003, "alt"
    push $P5003, "altseq"
    push $P5003, "anchor"
    push $P5003, "cclass"
    push $P5003, "concat"
    push $P5003, "conj"
    push $P5003, "conjseq"
    push $P5003, "enumcharlist"
    push $P5003, "literal"
    push $P5003, "pass"
    push $P5003, "qastnode"
    push $P5003, "quant"
    push $P5003, "scan"
    push $P5003, "subcapture"
    push $P5003, "subrule"
    push $P5003, "uniprop"
    push $P5003, "ws"
    push $P5003, "regex_mark"
    push $P5003, "regex_peek"
    push $P5003, "regex_commit"
    push $P5003, "operations"
    push $P5003, "@!stages"
    push $P5003, "$!parsegrammar"
    push $P5003, "$!parseactions"
    push $P5003, "@!cmdoptions"
    push $P5003, "$!usage"
    push $P5003, "$!compiler_progname"
    push $P5003, "$!language"
    push $P5003, "%!config"
    push $P5003, "$!user_progname"
    push $P5003, "@!cli-arguments"
    push $P5003, "%!cli-options"
    push $P5003, "handler_allocator"
    push $P5003, "fresh_p"
    push $P5003, "fresh_s"
    push $P5003, "fresh_i"
    push $P5003, "fresh_n"
    push $P5003, "cur_p"
    push $P5003, "cur_s"
    push $P5003, "cur_i"
    push $P5003, "cur_n"
    push $P5003, "$!cur_p"
    push $P5003, "$!cur_s"
    push $P5003, "$!cur_i"
    push $P5003, "$!cur_n"
    push $P5003, "add_param"
    push $P5003, "add_lexical"
    push $P5003, "add_local"
    push $P5003, "register_lexical"
    push $P5003, "register_local"
    push $P5003, "qast"
    push $P5003, "outer"
    push $P5003, "params"
    push $P5003, "lexicals"
    push $P5003, "locals"
    push $P5003, "lex_reg"
    push $P5003, "local_type"
    push $P5003, "local_type_long"
    push $P5003, "lexical_type"
    push $P5003, "lexical_type_long"
    push $P5003, "reg_type"
    push $P5003, "add_loadlibs"
    push $P5003, "fresh_lex_p"
    push $P5003, "fresh_lex_s"
    push $P5003, "fresh_lex_i"
    push $P5003, "fresh_lex_n"
    push $P5003, "$!qast"
    push $P5003, "$!outer"
    push $P5003, "@!params"
    push $P5003, "@!locals"
    push $P5003, "@!lexicals"
    push $P5003, "%!local_types"
    push $P5003, "%!lexical_types"
    push $P5003, "%!lexical_regs"
    push $P5003, "%!reg_types"
    push $P5003, "$!param_idx"
    push $P5003, "$!cur_lex_p"
    push $P5003, "$!cur_lex_s"
    push $P5003, "$!cur_lex_i"
    push $P5003, "$!cur_lex_n"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503"
    push $P5003, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5003, "PIRT::CallResult"
    push $P5003, "get_string"
    push $P5003, "PIRT::Node"
    push $P5003, "PIRT::Sub"
    push $P5003, "nested_blocks"
    push $P5003, "cached_pir"
    push $P5003, "PIRT::Ops"
    push $P5003, "PIRT::Label"
    push $P5003, "QAST::Operations"
    push $P5003, "QAST::Compiler"
    push $P5003, "code"
    push $P5003, "RegAlloc"
    push $P5003, "BlockInfo"
    push $P5003, "AA49D86054CDC686E34A37C6F89EC4059A76B342-1346277582.704"
    push $P5003, "src\\stage2\\QASTNode.nqp"
    push $P5003, "CallResult"
    push $P5003, "Node"
    push $P5003, "Sub"
    push $P5003, "Ops"
    push $P5003, "Label"
    push $P5003, "CompileTimeValue"
    push $P5003, "SpecialArg"
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
    push $P5003, "Operations"
    push $P5003, "Compiler"
    push $P5003, "NFA"
    push $P5003, "Grammar"
    push $P5003, "Actions"
    push $P5003, "CommandLine"
    push $P5003, "World"
    .const 'Sub' $P5004 = 'cuid_322_1346277600.974' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAGAAAAcAAAAA4AAADgAAAACCEAANkAAACYLgAA/loAAAAAAAD+WgAAAAAAAP5aAAD+WgAAAAAAAAYAAAAHAAAADgAAAA8AAABGAAAARwAAANQAAAAAAAAA1gAAANcAAADlAAAA5gAAAAEAAAAAAAAAAQAAABgBAAABAAAAuAIAAAEAAAA2BAAAAQAAAHIHAAABAAAAqAkAAAEAAACICwAAAQAAANgNAAABAAAAJBUAAAEAAACcFwAAAQAAAPIbAAABAAAAxBwAAAEAAACgHgAAAQAAAEgfAAAAAAAAlQAAAAAAAAAAAAAACgAJAAAAAgAAAAIAAAAAAJYAAAADAAAAAgAAAAAAlwAAAAQAAAACAAAAAACYAAAABQAAAAIAAQAAABoAAAAIAAAAAgABAAAARAAAAAkAAAACAAEAAABRAAAACgAAAAIAAQAAAFcAAAALAAAAAgABAAAAWwAAAAwAAAACAAAAAACZAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAJoAAAAAAAAAAQAAAAoAAAAAAAoADgAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAACAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHAAAAAIAAAAAAAMAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAQAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAABAAAACgABAAAAHQAAAAQAAAAAAAAAAAAAAAAAmwAAAAAAAAAEAAAACgAAAAAACgAOAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAgAAAAsAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAAeAAAAAgAAAAAACwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAEAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAABAAAAAMAAAAAAJwAAAAAAAAADAAAAAoAAAAAAAoAGwAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAAOAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHgAAAAIAAAAAAAsAAAAfAAAAAgAAAAAADQAAACAAAAACAAAAAAAPAAAAIQAAAAIAAAAAABAAAAAiAAAAAgAAAAAAEQAAACMAAAACAAAAAAASAAAAJAAAAAIAAAAAABMAAAAlAAAAAgAAAAAAFAAAACYAAAACAAAAAAAVAAAAJwAAAAIAAAAAABYAAAAcAAAAAgAAAAAAFwAAACgAAAACAAAAAAAYAAAAKQAAAAIAAAAAABkAAAAqAAAAAgAAAAAAGgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAMAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAQAAAABAAAAAAAAAAIAAAAEAAAAAQAAAAAAAAACAAAABAAAAAEAAAAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAAEAAAAAwACAAAAAAAMAAAACgAJAAAAKwAAAAQAAAAAAAAAAAAsAAAABAABAAAAAAAAAC0AAAAEAAIAAAAAAAAALgAAAAQAAwAAAAAAAAAvAAAABAAEAAAAAAAAADAAAAAEAAUAAAAAAAAAMQAAAAQABgAAAAAAAAAyAAAABAAHAAAAAAAAADMAAAAEAAgAAAAAAAAAAAAAAJ0AAAAAAAAAGwAAAAoAAAAAAAoAEwAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAAcAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHgAAAAIAAAAAAAsAAAAgAAAAAgAAAAAAHQAAACEAAAACAAAAAAAeAAAAHAAAAAIAAAAAAB8AAAA0AAAAAgAAAAAAIAAAACkAAAACAAAAAAAhAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAABsAAAACAAAAAAAEAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQACAAIAAAAHAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAgAAAAcAAAADAAIAAAAAAAQAAAADAAIAAAAAABsAAAAKAAMAAAArAAAABAAAAAAAAAAAAB0AAAAEAAEAAAAAAAAANQAAAAQAAgAAAAAAAAAAAAAAngAAAAAAAAAiAAAACgAAAAAACgARAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAAAAACMAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAAeAAAAAgAAAAAACwAAACQAAAACAAAAAAAkAAAAHAAAAAIAAAAAACUAAAApAAAAAgAAAAAAJgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAiAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAAEAAAAAwACAAAAAAAiAAAACgABAAAALgAAAAQAAAAAAAAAAAAAAAAAnwAAAAAAAAAnAAAACgAAAAAACgAdAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAgAAAAsAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAA2AAAAAgAAAAAAKAAAADcAAAACAAAAAAApAAAAOAAAAAIAAAAAACoAAAA5AAAAAgAAAAAAKwAAADoAAAACAAAAAAAsAAAAOwAAAAIAAAAAAC0AAAA8AAAAAgAAAAAALgAAAD0AAAACAAAAAAAvAAAAPgAAAAIAAAAAADAAAAA/AAAAAgAAAAAAMQAAAEAAAAACAAAAAAAyAAAAQQAAAAIAAAAAADMAAABCAAAAAgAAAAAANAAAAEMAAAACAAAAAAA1AAAARAAAAAIAAAAAADYAAABFAAAAAgAAAAAANwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAnAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAAJwAAAAMAAAAAAKAAAAAAAAAAOAAAAAoAAAAAAAoAYAAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAMAAABgAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAASAAAAAIAAwAAAGEAAABJAAAAAgADAAAAYgAAAEoAAAACAAMAAABjAAAASwAAAAIAAwAAAGQAAABMAAAAAgADAAAAZQAAAE0AAAACAAMAAABmAAAATgAAAAIAAwAAAGcAAABPAAAAAgADAAAAaAAAAFAAAAACAAMAAABpAAAAUQAAAAIAAwAAAGoAAABSAAAAAgADAAAAawAAAFMAAAACAAMAAABsAAAAVAAAAAIAAwAAAG0AAABVAAAAAgADAAAAbgAAAFYAAAACAAMAAABvAAAAVwAAAAIAAwAAAHAAAABYAAAAAgADAAAAcQAAAFkAAAACAAMAAAByAAAAWgAAAAIAAwAAAHMAAABbAAAAAgADAAAAdAAAAFwAAAACAAMAAAB1AAAAXQAAAAIAAwAAAHYAAABeAAAAAgADAAAAdwAAAF8AAAACAAMAAAB4AAAAYAAAAAIAAwAAAHkAAABhAAAAAgADAAAAegAAAGIAAAACAAMAAAB7AAAAYwAAAAIAAwAAAHwAAABkAAAAAgADAAAAfQAAACkAAAACAAMAAAB+AAAAZQAAAAIAAwAAAH8AAABmAAAAAgADAAAAgAAAAGcAAAACAAMAAACBAAAAaAAAAAIAAwAAAIIAAABpAAAAAgADAAAAgwAAAGoAAAACAAMAAACEAAAAawAAAAIAAwAAAIUAAABsAAAAAgADAAAAhgAAAG0AAAACAAMAAACHAAAAbgAAAAIAAwAAAIgAAABvAAAAAgADAAAAiQAAAHAAAAACAAMAAACKAAAAcQAAAAIAAwAAAIsAAAByAAAAAgADAAAAjAAAAHMAAAACAAMAAACNAAAAdAAAAAIAAAAAAF4AAAB1AAAAAgAAAAAAXwAAAHYAAAACAAAAAABgAAAAHwAAAAIAAAAAAGEAAAB3AAAAAgAAAAAAYgAAAHgAAAACAAAAAABjAAAAeQAAAAIAAAAAAGUAAAB6AAAAAgAAAAAAagAAAHsAAAACAAAAAABrAAAAfAAAAAIAAAAAAHAAAAB9AAAAAgAAAAAAcQAAAH4AAAACAAAAAAB4AAAAfwAAAAIAAAAAAHkAAACAAAAAAgAAAAAAewAAAIEAAAACAAAAAAB8AAAAggAAAAIAAAAAAH0AAACDAAAAAgAAAAAAfgAAAIQAAAACAAAAAAB/AAAAhQAAAAIAAAAAAIAAAACGAAAAAgAAAAAAgQAAAIcAAAACAAAAAACCAAAAiAAAAAIAAAAAAIMAAACJAAAAAgAAAAAAhAAAAIoAAAACAAAAAACFAAAAiwAAAAIAAAAAAIYAAACMAAAAAgAAAAAAhwAAAI0AAAACAAAAAACIAAAAjgAAAAIAAAAAAIkAAACPAAAAAgAAAAAAigAAAJAAAAACAAAAAACLAAAAkQAAAAIAAAAAAIwAAACSAAAAAgAAAAAAjQAAAJMAAAACAAAAAACOAAAAlAAAAAIAAAAAAI8AAACVAAAAAgAAAAAAkAAAAJYAAAACAAAAAACRAAAAlwAAAAIAAAAAAJIAAACYAAAAAgAAAAAAlAAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAA4AAAAAgADAAAAXwAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAABwAAAAIAAgAAAAcAAAABAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAEAAgACAAAABwAAAAEAAQD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAABwAAAAMAAgADAAAAXwAAAAoACwAAAJkAAAAEAAAAAAAAAAAAmgAAAAQAAQAAAAAAAACbAAAABAACAAAAAAAAAJwAAAAEAAMAAAAAAAAAnQAAAAQABAAAAAAAAACeAAAABAAFAAAAAAAAAJ8AAAAEAAYAAAAAAAAAoAAAAAQABwAAAAAAAAChAAAABAAIAAAAAAAAAKIAAAAEAAkAAAAAAAAAowAAAAQACgAAAAAAAAACAAAAAAA4AAAAAwAAAAAAoQAAAAAAAAA5AAAACgAAAAAACgAXAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAAAAADoAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAACkAAAAAgAAAAAAOwAAAEgAAAACAAAAAAA8AAAApQAAAAIAAAAAAD0AAACmAAAAAgAAAAAAPgAAAKcAAAACAAAAAAA/AAAAqAAAAAIAAAAAAEAAAACpAAAAAgAAAAAAQQAAAKoAAAACAAAAAABCAAAAqwAAAAIAAAAAAEMAAACsAAAAAgAAAAAARAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAA5AAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAEAAAAAAAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAAAcAAAADAAIAAAAAADkAAAAKAAQAAACtAAAABAAAAAAAAAAAAK4AAAAEAAEAAAAAAAAArwAAAAQAAgAAAAAAAACwAAAABAADAAAAAAAAAAAAAACiAAAAAAAAAEUAAAAKAAAAAAAKACQAAAANAAAAAgACAAAACAAAABAAAAACAAIAAAAJAAAAEQAAAAIAAgAAAAoAAAASAAAAAgAAAAAARgAAABMAAAACAAIAAAAMAAAAFAAAAAIAAgAAAA8AAAAVAAAAAgACAAAAEQAAABYAAAACAAIAAAATAAAAFwAAAAIAAgAAABUAAAAYAAAAAgACAAAAFwAAABkAAAACAAIAAAAYAAAAGgAAAAIAAgAAABoAAAAbAAAAAgACAAAAGwAAAEgAAAACAAAAAABHAAAAsQAAAAIAAAAAAEgAAACyAAAAAgAAAAAASQAAALMAAAACAAAAAABKAAAAtAAAAAIAAAAAAEsAAAC1AAAAAgAAAAAATAAAALYAAAACAAAAAABNAAAAtwAAAAIAAAAAAE4AAAC4AAAAAgAAAAAATwAAALkAAAACAAAAAABQAAAAugAAAAIAAAAAAFEAAAC7AAAAAgAAAAAAUgAAALwAAAACAAAAAABTAAAAvQAAAAIAAAAAAFQAAAC+AAAAAgAAAAAAVQAAAL8AAAACAAAAAABWAAAAwAAAAAIAAAAAAFcAAADBAAAAAgAAAAAAWAAAACUAAAACAAAAAABZAAAAwgAAAAIAAAAAAFoAAADDAAAAAgAAAAAAWwAAAMQAAAACAAAAAABcAAAAxQAAAAIAAAAAAF0AAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAARQAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAADwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAQABAAEAAQABAAEAAQABAAEAAQABAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAARQAAAAoADwAAAMYAAAAEAAAAAAAAAAAAxwAAAAQAAQAAAAAAAADIAAAABAACAAAAAAAAAMkAAAAEAAMAAAAAAAAAygAAAAQABAAAAAAAAADLAAAABAAFAAAAAAAAAMwAAAAEAAYAAAAAAAAAzQAAAAQABwAAAAAAAADOAAAABAAIAAAAAAAAAM8AAAAEAAkAAAAAAAAAMQAAAAQACgAAAAAAAADQAAAABAALAAAAAAAAANEAAAAEAAwAAAAAAAAA0gAAAAQADQAAAAAAAADTAAAABAAOAAAAAAAAAAAAAADVAAAAAAAAAJYAAAAKAAUAAADnAAAAAgAAAAAAAQAAAOgAAAACAAAAAAAEAAAA6QAAAAIAAAAAAAwAAADqAAAAAgAAAAAAGwAAAOsAAAACAAAAAAAiAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAJYAAAADAAAAAADWAAAAAAAAAJcAAAAKABcAAADsAAAAAgAGAAAAAQAAAO0AAAACAAYAAAAGAAAA6AAAAAIABgAAAAoAAADuAAAAAgAGAAAAJQAAAO8AAAACAAYAAAAtAAAA8AAAAAIABgAAADEAAADxAAAAAgAGAAAANQAAAPIAAAACAAYAAAA5AAAA8wAAAAIABgAAADsAAAD0AAAAAgAGAAAAPwAAAPUAAAACAAYAAABEAAAA9gAAAAIABgAAAEwAAAD3AAAAAgAGAAAATgAAAPgAAAACAAYAAABUAAAA+QAAAAIABgAAAFgAAAD6AAAAAgAGAAAAXAAAAPsAAAACAAYAAABgAAAA/AAAAAIABgAAAGcAAAD9AAAAAgAGAAAAagAAAP4AAAACAAYAAABtAAAA/wAAAAIABgAAAHYAAAAAAQAAAgAAAAAAJwAAAAEBAAACAAAAAAA4AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAJcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAlwAAAAMAAAAAANcAAAAAAAAAmAAAAAoAAQAAAAIBAAACAAEAAAABAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAJgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAmAAAAAMAAAAAANgAAAAAAAAAmQAAAAoABQAAAAMBAAACAAMAAAABAAAABAEAAAIAAwAAAD0AAAABAQAAAgADAAAAXwAAAAUBAAACAAMAAADaAAAABgEAAAIAAwAAAJ8AAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAmQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACZAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAIAAAAFAAAAAAAAAAEAAAACAAAABQAAABAAAAABAAAAAAAAAAIAAAAgAAAAAAAAAAIAAAAFAAAAIAAAAAEAAAACAAAABQAAADAAAAABAAAAAgAAAAUAAABAAAAAAQAAAAIAAAAFAAAAUAAAAAEAAAACAAAABQAAAGAAAAABAAAAAgAAAAUAAABwAAAAAQAAAAIAAAAFAAAAgAAAAAEAAAAAAAAAAwAAAJAAAAAAAAAAAgAAAAUAAACQAAAAAQAAAAIAAAAFAAAAoAAAAAEAAAACAAAABQAAALAAAAABAAAAAgAAAAUAAADAAAAAAQAAAAIAAAAFAAAA0AAAAAEAAAACAAAABQAAAOAAAAABAAAAAgAAAAUAAADwAAAAAQAAAAIAAAAFAAAAAAEAAAEAAAACAAAABQAAABABAAABAAAAAgAAAAUAAAAgAQAAAQAAAAIAAAAFAAAAMAEAAAEAAAACAAAABQAAAEABAAABAAAAAgAAAAUAAABQAQAAAQAAAAIAAAAFAAAAYAEAAAEAAAAAAAAABAAAAHABAAAAAAAAAgAAAAUAAABwAQAAAQAAAAIAAAAFAAAAgAEAAAEAAAACAAAABQAAAJABAAABAAAAAgAAAAUAAACgAQAAAQAAAAIAAAAFAAAAsAEAAAEAAAACAAAABQAAAMABAAABAAAAAAAAAAUAAADQAQAAAAAAAAIAAAAFAAAA0AEAAAEAAAACAAAABQAAAOABAAABAAAAAgAAAAUAAADwAQAAAQAAAAIAAAAFAAAAAAIAAAEAAAAAAAAABgAAABACAAAAAAAAAgAAAAUAAAAQAgAAAQAAAAIAAAAFAAAAIAIAAAEAAAACAAAABQAAADACAAABAAAAAgAAAAUAAABAAgAAAQAAAAIAAAAFAAAAUAIAAAEAAAACAAAABQAAAGACAAABAAAAAgAAAAUAAABwAgAAAQAAAAIAAAAFAAAAgAIAAAEAAAACAAAABQAAAJACAAABAAAAAgAAAAUAAACgAgAAAQAAAAIAAAAFAAAAsAIAAAEAAAACAAAABQAAAMACAAABAAAAAgAAAAUAAADQAgAAAQAAAAIAAAAFAAAA4AIAAAEAAAACAAAABQAAAPACAAABAAAAAgAAAAUAAAAAAwAAAQAAAAAAAAAHAAAAEAMAAAAAAAAAAAAACAAAABADAAAAAAAAAgAAAAUAAAAQAwAAAQAAAAIAAAAFAAAAIAMAAAEAAAACAAAABQAAADADAAABAAAAAgAAAAUAAABAAwAAAQAAAAIAAAAFAAAAUAMAAAEAAAACAAAABQAAAGADAAABAAAAAgAAAAUAAABwAwAAAQAAAAIAAAAFAAAAgAMAAAEAAAACAAAABQAAAJADAAABAAAAAgAAAAUAAACgAwAAAQAAAAIAAAAFAAAAsAMAAAEAAAAAAAAACQAAAMADAAAAAAAAAgAAAAUAAADAAwAAAQAAAAIAAAAFAAAA0AMAAAEAAAACAAAABQAAAOADAAABAAAAAgAAAAUAAADwAwAAAQAAAAIAAAAFAAAAAAQAAAEAAAACAAAABQAAABAEAAABAAAAAgAAAAUAAAAgBAAAAQAAAAIAAAAFAAAAMAQAAAEAAAACAAAABQAAAEAEAAABAAAAAgAAAAUAAABQBAAAAQAAAAIAAAAFAAAAYAQAAAEAAAACAAAABQAAAHAEAAABAAAAAgAAAAUAAACABAAAAQAAAAIAAAAFAAAAkAQAAAEAAAACAAAABQAAAKAEAAABAAAAAgAAAAUAAACwBAAAAQAAAAIAAAAFAAAAwAQAAAEAAAACAAAABQAAANAEAAABAAAAAgAAAAUAAADgBAAAAQAAAAIAAAAFAAAA8AQAAAEAAAACAAAABQAAAAAFAAABAAAAAgAAAAUAAAAQBQAAAQAAAAIAAAAFAAAAIAUAAAEAAAACAAAABQAAADAFAAABAAAAAgAAAAUAAABABQAAAQAAAAIAAAAFAAAAUAUAAAEAAAACAAAABQAAAGAFAAABAAAAAgAAAAUAAABwBQAAAQAAAAIAAAAFAAAAgAUAAAEAAAACAAAABQAAAJAFAAABAAAAAgAAAAUAAABOBgAAAQAAAAIAAAAFAAAAZgYAAAEAAAACAAAABQAAAHYGAAABAAAAAgAAAAUAAACOBgAAAQAAAAIAAAAFAAAApgYAAAEAAAACAAAABQAAAL4GAAABAAAAAgAAAAUAAADWBgAAAQAAAAIAAAAFAAAA5gYAAAEAAAACAAAABQAAAPYGAAABAAAAAgAAAAUAAAAOBwAAAQAAAAIAAAAFAAAAJgcAAAEAAAACAAAABQAAAD4HAAABAAAAAgAAAAUAAABWBwAAAQAAAAIAAAAFAAAAZgcAAAEAAAACAAAABQAAAHYHAAABAAAAAgAAAAUAAACOBwAAAQAAAAIAAAAFAAAApgcAAAEAAAACAAAABQAAAL4HAAABAAAAAgAAAAUAAADWBwAAAQAAAAIAAAAFAAAA7gcAAAEAAAACAAAABQAAAAYIAAABAAAAAgAAAAUAAAAWCAAAAQAAAAIAAAAFAAAAJggAAAEAAAACAAAABQAAAD4IAAABAAAAAgAAAAUAAABOCAAAAQAAAAIAAAAFAAAAXggAAAEAAAACAAAABQAAAG4IAAABAAAAAgAAAAUAAAB+CAAAAQAAAAIAAAAFAAAAjggAAAEAAAACAAAABQAAAJ4IAAABAAAAAgAAAAUAAACuCAAAAQAAAAIAAAAFAAAAvggAAAEAAAACAAAABQAAAM4IAAABAAAAAgAAAAUAAADeCAAAAQAAAAIAAAAFAAAA7ggAAAEAAAACAAAABQAAAP4IAAABAAAAAgAAAAUAAAAOCQAAAQAAAAIAAAAFAAAAHgkAAAEAAAACAAAABQAAAC4JAAABAAAAAgAAAAUAAAA+CQAAAQAAAAIAAAAFAAAATgkAAAEAAAACAAAABQAAAF4JAAABAAAAAgAAAAUAAABuCQAAAQAAAAIAAAAFAAAAfgkAAAEAAAACAAAABQAAAI4JAAABAAAAAgAAAAUAAACeCQAAAQAAAAIAAAAFAAAArgkAAAEAAAACAAAABQAAAL4JAAABAAAAAgAAAAUAAADWCQAAAQAAAAQAAAAAAAAA5gkAAAEAAAAAAAAACgAAAPYJAAAAAAAAAAAAAAsAAAD2CQAAAAAAAAAAAAAMAAAA9gkAAAAAAAAAAAAADQAAAPYJAAAAAAAABQAAAAYAAAD2CQAAAQAAAAUAAAAGAAAAMAsAAAEAAAAFAAAABgAAAOoLAAABAAAABQAAAAYAAAAWEQAAAQAAAAUAAAAGAAAAZhMAAAEAAAAFAAAABgAAANIUAAABAAAABQAAAAYAAAD0FgAAAQAAAAUAAAAGAAAAdB0AAAEAAAAFAAAABgAAAIofAAABAAAAAgAAAAYAAAByIwAAAQAAAAIAAAAGAAAApiMAAAEAAAACAAAABgAAANojAAABAAAAAgAAAAYAAAAOJAAAAQAAAAIAAAAGAAAAQiQAAAEAAAACAAAABgAAAHYkAAABAAAAAgAAAAYAAACqJAAAAQAAAAIAAAAGAAAA3iQAAAEAAAACAAAABgAAABIlAAABAAAAAgAAAAYAAABGJQAAAQAAAAIAAAAGAAAAeiUAAAEAAAACAAAABgAAAK4lAAABAAAAAgAAAAYAAADiJQAAAQAAAAIAAAAGAAAAFiYAAAEAAAACAAAABgAAAEomAAABAAAAAgAAAAYAAAB+JgAAAQAAAAIAAAAGAAAAsiYAAAEAAAAFAAAACAAAAN4mAAABAAAABQAAAAgAAAAOJwAAAQAAAAUAAAAIAAAALicAAAEAAAAFAAAACAAAAF4nAAABAAAABQAAAAgAAACOJwAAAQAAAAUAAAAIAAAAvicAAAEAAAAFAAAACAAAAO4nAAABAAAABQAAAAgAAAAOKAAAAQAAAAUAAAAIAAAALigAAAEAAAAFAAAACAAAAE4oAAABAAAABQAAAAgAAAB+KAAAAQAAAAUAAAAIAAAAnigAAAEAAAAFAAAACAAAAM4oAAABAAAABQAAAAgAAAD2KAAAAQAAAAUAAAAIAAAAJikAAAEAAAAFAAAACAAAAFYpAAABAAAABQAAAAgAAACGKQAAAQAAAAUAAAAIAAAAtikAAAEAAAAFAAAACAAAAOYpAAABAAAABQAAAAgAAAAOKgAAAQAAAAUAAAAIAAAANioAAAEAAAAFAAAACAAAAFYqAAABAAAABQAAAAgAAAB2KgAAAQAAAAUAAAAIAAAAlioAAAEAAAAFAAAACAAAALYqAAABAAAABQAAAAgAAADWKgAAAQAAAAUAAAAIAAAA9ioAAAEAAAAFAAAACAAAABYrAAABAAAABQAAAAgAAABGKwAAAQAAAAUAAAAIAAAAZisAAAEAAAAFAAAACAAAAJYrAAABAAAABQAAAAgAAADGKwAAAQAAAAUAAAAIAAAA9isAAAEAAAAEAAAAAAAAACYsAAABAAAABAAAAAAAAAA2LAAAAQAAAAQAAAAAAAAARiwAAAEAAAAEAAAAAAAAAFYsAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEACwAAAAAAPAAAAAEAAQABAAsAAAAAAD0AAAABAAEAAQALAAAAAAA+AAAAAQABAAEACwAAAAAAPwAAAAEAAQABAAsAAAAAAEAAAAABAAEAAQALAAAAAABBAAAAAQABAAEACwAAAAAAQgAAAAEAAQABAAsAAAAAAEMAAAABAAEAAQALAAAAAABEAAAAAQABAAEACwAAAAAARQAAAAEAAQABAAsAAAAAAEYAAAABAAEAAQALAAAAAABHAAAAAQABAAEACwAAAAAASAAAAAEAAQABAAsAAAAAAEkAAAABAAEAAQALAAAAAABKAAAAAQABAAEACwAAAAAASwAAAAEAAQABAAsAAAAAAEwAAAABAAEAAQALAAAAAABNAAAAAQABAAEACwAAAAAATgAAAAEAAQABAAsAAAAAAE8AAAABAAEAAQALAAAAAABQAAAAAQABAAEACwAAAAAAUQAAAAEAAQABAAsAAAAAAFIAAAABAAEAAQALAAAAAABTAAAAAQABAAEACwAAAAAAVAAAAAEAAQABAAsAAAAAAFUAAAABAAEAAQALAAAAAABWAAAAAQABAAEACwAAAAAAVwAAAAEAAQABAAsAAAAAAFgAAAABAAEAAQALAAAAAABZAAAAAQAHABEAAAACAAAAAABkAAAAAgAAAAAAZgAAAAIAAAAAAGcAAAACAAAAAABoAAAAAgAAAAAAaQAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB6AAAAAgAAAAAAkwAAAAMACwAAAAAAWgAAAAIAAAAAAKMAAAABAAEACwAAAAAAWwAAAAEAAQABAAsAAAAAAFwAAAACAAAAAACkAAAAAQABAAsAAAAAAF0AAAACAAAAAAClAAAAAQABAAsAAAAAAF4AAAACAAAAAACmAAAAAQABAAsAAAAAAF8AAAACAAAAAACnAAAAAQABAAsAAAAAAGAAAAABAAEAAQALAAAAAABhAAAAAQABAAEACwAAAAAAYgAAAAIAAAAAAKgAAAABAAEACwAAAAAAYwAAAAIAAAAAAKkAAAABAAEACwAAAAAAZAAAAAIAAAAAAKoAAAABAAEACwAAAAAAZQAAAAIAAAAAAKsAAAABAAEACwAAAAAAZgAAAAEAAQABAAsAAAAAAGcAAAABAAEAAQALAAAAAABoAAAAAgAAAAAArAAAAAEAAQALAAAAAABpAAAAAgAAAAAArQAAAAEAAQALAAAAAABqAAAAAgAAAAAArgAAAAEAAQALAAAAAABrAAAAAgAAAAAArwAAAAEAAQALAAAAAABsAAAAAgAAAAAAsAAAAAEAAQALAAAAAABtAAAAAgAAAAAAsQAAAAEAAQALAAAAAABuAAAAAQABAAEACwAAAAAAbwAAAAEAAQABAAsAAAAAAHAAAAACAAAAAACyAAAAAQABAAsAAAAAAHEAAAABAAEAAQALAAAAAAByAAAAAQABAAEACwAAAAAAcwAAAAEAAQABAAsAAAAAAHQAAAABAAEAAQALAAAAAAB1AAAAAQABAAEACwAAAAAAdgAAAAEAAQABAAsAAAAAAHcAAAABAAEAAQALAAAAAAB4AAAAAQABAAEACwAAAAAAeQAAAAEAAQABAAsAAAAAAHoAAAABAAEAAQALAAAAAAB7AAAAAQABAAEACwAAAAAAfAAAAAEAAQABAAsAAAAAAH0AAAABAAEAAQALAAAAAAB+AAAAAQABAAEACwAAAAAAfwAAAAEAAQABAAsAAAAAAIAAAAABAAEAAQALAAAAAACBAAAAAQABAAEACwAAAAAAggAAAAEAAQABAAsAAAAAAIMAAAABAAEAAQALAAAAAACEAAAAAQABAAEACwAAAAAAhQAAAAEAAQABAAsAAAAAAIYAAAABAAEAAQALAAAAAACHAAAAAQABAAEACwAAAAAAiAAAAAEAAQABAAsAAAAAAIkAAAACAAAAAACzAAAAAQABAAsAAAAAAIoAAAABAAEAAQDVAAAABwAAAAAACgAAAAAABgDYAAAACgABAAAAHQAAAAIAAAAAALQAAAAKAAIAAAASAAAAAgAAAAAAAgAAABwAAAACAAAAAAADAAAABwACAAAAAgAAAAAAAgAAAAIAAAAAAAMAAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAABAAAAAgACAAAABwAAAAcAAAAAAAoAAQAAANkAAAACAAAAAAADAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAQAAAAYAHAAAAAYAHQAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAABAAAABgAcAAAABgAdAAAAAQAGANoAAAAKAAAAAAAKAAEAAAAeAAAAAgAAAAAACwAAAAcAAQAAAAIAAAAAAAsAAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAEAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGANsAAAAKAAkAAAArAAAAAgAAAAAAtQAAACwAAAACAAAAAAC2AAAALQAAAAIAAAAAALcAAAAuAAAAAgAAAAAAuAAAAC8AAAACAAAAAAC5AAAAMAAAAAIAAAAAALoAAAAxAAAAAgAAAAAAuwAAADIAAAACAAAAAAC8AAAAMwAAAAIAAAAAAL0AAAAKAA4AAAAfAAAAAgAAAAAADQAAABIAAAACAAAAAAAOAAAAIAAAAAIAAAAAAA8AAAAhAAAAAgAAAAAAEAAAACIAAAACAAAAAAARAAAAIwAAAAIAAAAAABIAAAAkAAAAAgAAAAAAEwAAACUAAAACAAAAAAAUAAAAJgAAAAIAAAAAABUAAAAnAAAAAgAAAAAAFgAAABwAAAACAAAAAAAXAAAAKAAAAAIAAAAAABgAAAApAAAAAgAAAAAAGQAAACoAAAACAAAAAAAaAAAABwAOAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAAHAAAAAAAHAAEAAAACAAAAAAAEAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAADAAAAAIAAAAAAAQAAAACAAIAAAAHAAAABwAAAAAACgABAAAA2QAAAAIAAAAAABcAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACQAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAMAAAABgCBAAAABgArAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACIAAAAGACwAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAIwAAAAYALQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAkAAAABgAuAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACYAAAAGAC8AAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAADAAAAAYAJwAAAAYAMAAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAMAAAABgAlAAAABgAxAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAAwAAAAGANwAAAAGADIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYA3QAAAAYAMwAAAAcACQAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAMAAAABgCBAAAABgArAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACIAAAAGACwAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAIwAAAAYALQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAkAAAABgAuAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACYAAAAGAC8AAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAADAAAAAYAJwAAAAYAMAAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAMAAAABgAlAAAABgAxAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAAwAAAAGANwAAAAGADIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYA3QAAAAYAMwAAAAEABgDeAAAACgADAAAAKwAAAAIAAAAAAL4AAAAdAAAAAgAAAAAAvwAAADUAAAACAAAAAADAAAAACgAGAAAAEgAAAAIAAAAAABwAAAAgAAAAAgAAAAAAHQAAACEAAAACAAAAAAAeAAAAHAAAAAIAAAAAAB8AAAA0AAAAAgAAAAAAIAAAACkAAAACAAAAAAAhAAAABwAGAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAABwAAAAAABwABAAAAAgAAAAAABAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAABsAAAACAAAAAAAEAAAAAgACAAAABwAAAAcAAAAAAAoAAQAAANkAAAACAAAAAAAfAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAGwAAAAYAgQAAAAYAKwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAbAAAABgAcAAAABgAdAAAABwAEAAAABAABAAAAAAAAAAIAAAAAABsAAAAGADQAAAAGADUAAAAHAAMAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAGwAAAAYAgQAAAAYAKwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAbAAAABgAcAAAABgAdAAAABwAEAAAABAABAAAAAAAAAAIAAAAAABsAAAAGADQAAAAGADUAAAABAAYA3wAAAAoAAQAAAC4AAAACAAAAAADBAAAACgAEAAAAEgAAAAIAAAAAACMAAAAkAAAAAgAAAAAAJAAAABwAAAACAAAAAAAlAAAAKQAAAAIAAAAAACYAAAAHAAQAAAACAAAAAAAjAAAAAgAAAAAAJAAAAAIAAAAAACUAAAACAAAAAAAmAAAABwAAAAAABwABAAAAAgAAAAAABAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAACIAAAACAAAAAAAEAAAAAgACAAAABwAAAAcAAAAAAAoAAQAAANkAAAACAAAAAAAlAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIgAAAAYAJAAAAAYALgAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAiAAAABgAkAAAABgAuAAAAAQAGAOAAAAAKAAAAAAAKABAAAAA2AAAAAgAAAAAAKAAAADcAAAACAAAAAAApAAAAOAAAAAIAAAAAACoAAAA5AAAAAgAAAAAAKwAAADoAAAACAAAAAAAsAAAAOwAAAAIAAAAAAC0AAAA8AAAAAgAAAAAALgAAAD0AAAACAAAAAAAvAAAAPgAAAAIAAAAAADAAAAA/AAAAAgAAAAAAMQAAAEAAAAACAAAAAAAyAAAAQQAAAAIAAAAAADMAAABCAAAAAgAAAAAANAAAAEMAAAACAAAAAAA1AAAARAAAAAIAAAAAADYAAABFAAAAAgAAAAAANwAAAAcAEAAAAAIAAAAAACgAAAACAAAAAAApAAAAAgAAAAAAKgAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAAC4AAAACAAAAAAAvAAAAAgAAAAAAMAAAAAIAAAAAADEAAAACAAAAAAAyAAAAAgAAAAAAMwAAAAIAAAAAADQAAAACAAAAAAA1AAAAAgAAAAAANgAAAAIAAAAAADcAAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAnAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGAOEAAAAKAAAAAAAKACYAAAB0AAAAAgAAAAAAXgAAAHUAAAACAAAAAABfAAAAdgAAAAIAAAAAAGAAAAAfAAAAAgAAAAAAYQAAAHcAAAACAAAAAABiAAAAeAAAAAIAAAAAAGMAAAB5AAAAAgAAAAAAZQAAAHoAAAACAAAAAABqAAAAewAAAAIAAAAAAGsAAAB8AAAAAgAAAAAAcAAAAH0AAAACAAAAAABxAAAAfgAAAAIAAAAAAHgAAAB/AAAAAgAAAAAAeQAAAIAAAAACAAAAAAB7AAAAgQAAAAIAAAAAAHwAAACCAAAAAgAAAAAAfQAAAIMAAAACAAAAAAB+AAAAhAAAAAIAAAAAAH8AAACFAAAAAgAAAAAAgAAAAIYAAAACAAAAAACBAAAAhwAAAAIAAAAAAIIAAACIAAAAAgAAAAAAgwAAAIkAAAACAAAAAACEAAAAigAAAAIAAAAAAIUAAACLAAAAAgAAAAAAhgAAAIwAAAACAAAAAACHAAAAjQAAAAIAAAAAAIgAAACOAAAAAgAAAAAAiQAAAI8AAAACAAAAAACKAAAAkAAAAAIAAAAAAIsAAACRAAAAAgAAAAAAjAAAAJIAAAACAAAAAACNAAAAkwAAAAIAAAAAAI4AAACUAAAAAgAAAAAAjwAAAJUAAAACAAAAAACQAAAAlgAAAAIAAAAAAJEAAACXAAAAAgAAAAAAkgAAAJgAAAACAAAAAACUAAAABwAmAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZQAAAAIAAAAAAGoAAAACAAAAAABrAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJQAAAAHABEAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAGQAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAGYAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAGcAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAGgAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAGkAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAGwAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAG0AAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAG4AAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAG8AAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAHIAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAHMAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAHQAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAHUAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAHYAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAHcAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAHoAAAAKAAIAAAAkAAAABgB4AAAA4gAAAAIAAAAAAJMAAAAHAAEAAAACAAMAAABfAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAOAAAAAIAAwAAAF8AAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAIAAAAEAAAAAAAAAAAAAgADAAAAYQAAAAcAAgAAAAQAAAAAAAAAAAACAAMAAABhAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAwAAAGEAAAABAAYA4wAAAAoABAAAAK0AAAACAAAAAADCAAAArgAAAAIAAAAAAMMAAACvAAAAAgAAAAAAxAAAALAAAAACAAAAAADFAAAACgALAAAAEgAAAAIAAAAAADoAAACkAAAAAgAAAAAAOwAAAEgAAAACAAAAAAA8AAAApQAAAAIAAAAAAD0AAACmAAAAAgAAAAAAPgAAAKcAAAACAAAAAAA/AAAAqAAAAAIAAAAAAEAAAACpAAAAAgAAAAAAQQAAAKoAAAACAAAAAABCAAAAqwAAAAIAAAAAAEMAAACsAAAAAgAAAAAARAAAAAcACwAAAAIAAAAAADoAAAACAAAAAAA7AAAAAgAAAAAAPAAAAAIAAAAAAD0AAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAACAAAAAABEAAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAOQAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAA8AAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAADwAAAABAAYA5AAAAAoADwAAAMYAAAACAAAAAADGAAAAxwAAAAIAAAAAAMcAAADIAAAAAgAAAAAAyAAAAMkAAAACAAAAAADJAAAAygAAAAIAAAAAAMoAAADLAAAAAgAAAAAAywAAAMwAAAACAAAAAADMAAAAzQAAAAIAAAAAAM0AAADOAAAAAgAAAAAAzgAAAM8AAAACAAAAAADPAAAAMQAAAAIAAAAAANAAAADQAAAAAgAAAAAA0QAAANEAAAACAAAAAADSAAAA0gAAAAIAAAAAANMAAADTAAAAAgAAAAAA1AAAAAoAGAAAABIAAAACAAAAAABGAAAASAAAAAIAAAAAAEcAAACxAAAAAgAAAAAASAAAALIAAAACAAAAAABJAAAAswAAAAIAAAAAAEoAAAC0AAAAAgAAAAAASwAAALUAAAACAAAAAABMAAAAtgAAAAIAAAAAAE0AAAC3AAAAAgAAAAAATgAAALgAAAACAAAAAABPAAAAuQAAAAIAAAAAAFAAAAC6AAAAAgAAAAAAUQAAALsAAAACAAAAAABSAAAAvAAAAAIAAAAAAFMAAAC9AAAAAgAAAAAAVAAAAL4AAAACAAAAAABVAAAAvwAAAAIAAAAAAFYAAADAAAAAAgAAAAAAVwAAAMEAAAACAAAAAABYAAAAJQAAAAIAAAAAAFkAAADCAAAAAgAAAAAAWgAAAMMAAAACAAAAAABbAAAAxAAAAAIAAAAAAFwAAADFAAAAAgAAAAAAXQAAAAcAGAAAAAIAAAAAAEYAAAACAAAAAABHAAAAAgAAAAAASAAAAAIAAAAAAEkAAAACAAAAAABKAAAAAgAAAAAASwAAAAIAAAAAAEwAAAACAAAAAABNAAAAAgAAAAAATgAAAAIAAAAAAE8AAAACAAAAAABQAAAAAgAAAAAAUQAAAAIAAAAAAFIAAAACAAAAAABTAAAAAgAAAAAAVAAAAAIAAAAAAFUAAAACAAAAAABWAAAAAgAAAAAAVwAAAAIAAAAAAFgAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABcAAAAAgAAAAAAXQAAAAcAAAAAAAcAAQAAAAIAAgAAAAcAAAAHAAAAAAACAAIAAAAHAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAEUAAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAARwAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAABHAAAAAQAHAAIAAAACAAAAAAA4AAAAAgAGAAAAbQAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAGAAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABnAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAWAAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAFwAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABOAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAVAAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAEQAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABMAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAPwAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAC0AAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAAAxAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAANQAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAADkAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAAA7AAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAJQAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAMABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAGAB0AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGACsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYALAAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYALQAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYALgAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYALwAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYAMAAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgAxAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGADIAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAMwAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYAKwAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgAdAAAAAgACAAAABAAAAAQAAQAAAAAAAAADAAIAAgAAAAQAAAAEAAEAAAAAAAAABgA1AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAHAAAABAABAAAAAAAAAAYALgAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYArQAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAYArgAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAYArwAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAYAsAAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAYAxgAAAAMABAAAAAAAAAAAAAMAAgACAAAABwAAAAQAAQAAAAAAAAAGAMcAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgDIAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMkAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAygAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDLAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMwAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAzQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDOAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAM8AAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGADEAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA0AAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAYA0QAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAYA0gAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAYA0wAAAAIAAgAAAAIAAAAEAAEAAAAAAAAAAwACAAIAAAACAAAABAABAAAAAAAAAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAABAAAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 2
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 3
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_4_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_4_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_4_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_4_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_5_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 11
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_14_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_15_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 26
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_29_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_29_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_29_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 12
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_29_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_30_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 33
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_36_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_37_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 38
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_41_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 34
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_41_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_41_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 34
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_41_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_42_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 55
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_58_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 39
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_58_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_58_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 39
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_58_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_59_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    $P5003 = $P5001."set_static_lexpad_value"("RegAlloc", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_60_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 68
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_71_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_71_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_71_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 57
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_71_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_59_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    $P5003 = $P5001."set_static_lexpad_value"("BlockInfo", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_72_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 93
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_96_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_96_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_96_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_96_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_97_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1346277600.974" 
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 148
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_59_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 56
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_59_1346277600.974"
    nqp_get_sc_object $P5002, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 56
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1346277600.974"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_322_1346277600.974") :anon :lex :outer("cuid_323_1346277600.974")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1346277600.974" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1346277600.974" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_324_1346277600.974") :load
.annotate 'file', "src\\stage2\\QAST.nqp"
    .const 'Sub' $P5001 = "cuid_1_1346277600.974" 
    $P5002 = $P5001()
    .return ($P5002) 
.end