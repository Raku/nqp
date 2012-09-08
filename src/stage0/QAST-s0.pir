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
.sub "" :subid("cuid_1_1347104163.3") :anon :lex
.annotate 'file', "src\\stage2\\QAST.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P6709 = 'cuid_154_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_4_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_14_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_29_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_36_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_41_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_58_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_180_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_182_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_184_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_186_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_188_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_190_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_192_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_193_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_199_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_200_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_205_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_207_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_209_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_211_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_215_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_217_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_219_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_221_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_222_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_223_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_225_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_233_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_234_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_235_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_236_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_237_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_238_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_240_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_242_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_243_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_244_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_245_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_246_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_247_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_248_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_249_1347104163.3' 
    capture_lex $P6709 
    .const 'Sub' $P6709 = 'cuid_59_1347104163.3' 
    capture_lex $P6709 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "&handle_arg", $P103 
    .lex "$exc_exclude", $P104 
    .lex "$exc_include", $P105 
    .lex "%handler_names", $P106 
    .lex "%control_map", $P107 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_154_1347104163.3' 
    capture_lex $P5001
    set $P103, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    .const 'Sub' $P5012 = 'cuid_4_1347104163.3' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_14_1347104163.3' 
    capture_lex $P5014
    $P5015 = $P5014()
    .const 'Sub' $P5016 = 'cuid_29_1347104163.3' 
    capture_lex $P5016
    $P5017 = $P5016()
    .const 'Sub' $P5018 = 'cuid_36_1347104163.3' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_41_1347104163.3' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_58_1347104163.3' 
    capture_lex $P5022
    $P5023 = $P5022()
.annotate 'line', 587
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["Operations"]
    unless_null $P5024, fallback341
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5028
  fallback341:
    .const 'Sub' $P5030 = 'cuid_180_1347104163.3' 
    capture_lex $P5030
    newclosure $P5029, $P5030
    $P5031 = $P5024."add_core_op"("list", $P5029, 1 :named("inlinable"))
.annotate 'line', 603
    get_hll_global $P5035, "GLOBAL"
    nqp_get_package_through_who $P5034, $P5035, "QAST"
    get_who $P5033, $P5034
    set $P5032, $P5033["Operations"]
    unless_null $P5032, fallback349
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5032, $P5036
  fallback349:
    .const 'Sub' $P5038 = 'cuid_182_1347104163.3' 
    capture_lex $P5038
    newclosure $P5037, $P5038
    $P5039 = $P5032."add_core_op"("qlist", $P5037, 1 :named("inlinable"))
.annotate 'line', 619
    get_hll_global $P5043, "GLOBAL"
    nqp_get_package_through_who $P5042, $P5043, "QAST"
    get_who $P5041, $P5042
    set $P5040, $P5041["Operations"]
    unless_null $P5040, fallback357
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5040, $P5044
  fallback357:
    .const 'Sub' $P5046 = 'cuid_184_1347104163.3' 
    capture_lex $P5046
    newclosure $P5045, $P5046
    $P5047 = $P5040."add_core_op"("list_i", $P5045, 1 :named("inlinable"))
.annotate 'line', 635
    get_hll_global $P5051, "GLOBAL"
    nqp_get_package_through_who $P5050, $P5051, "QAST"
    get_who $P5049, $P5050
    set $P5048, $P5049["Operations"]
    unless_null $P5048, fallback365
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5048, $P5052
  fallback365:
    .const 'Sub' $P5054 = 'cuid_186_1347104163.3' 
    capture_lex $P5054
    newclosure $P5053, $P5054
    $P5055 = $P5048."add_core_op"("list_s", $P5053, 1 :named("inlinable"))
.annotate 'line', 651
    get_hll_global $P5059, "GLOBAL"
    nqp_get_package_through_who $P5058, $P5059, "QAST"
    get_who $P5057, $P5058
    set $P5056, $P5057["Operations"]
    unless_null $P5056, fallback373
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5056, $P5060
  fallback373:
    .const 'Sub' $P5062 = 'cuid_188_1347104163.3' 
    capture_lex $P5062
    newclosure $P5061, $P5062
    $P5063 = $P5056."add_core_op"("list_b", $P5061, 1 :named("inlinable"))
.annotate 'line', 668
    get_hll_global $P5067, "GLOBAL"
    nqp_get_package_through_who $P5066, $P5067, "QAST"
    get_who $P5065, $P5066
    set $P5064, $P5065["Operations"]
    unless_null $P5064, fallback384
    nqp_get_sc_object $P5068, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5064, $P5068
  fallback384:
    .const 'Sub' $P5070 = 'cuid_190_1347104163.3' 
    capture_lex $P5070
    newclosure $P5069, $P5070
    $P5071 = $P5064."add_core_op"("hash", $P5069, 1 :named("inlinable"))
.annotate 'line', 693
    get_hll_global $P5075, "GLOBAL"
    nqp_get_package_through_who $P5074, $P5075, "QAST"
    get_who $P5073, $P5074
    set $P5072, $P5073["Operations"]
    unless_null $P5072, fallback396
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5072, $P5076
  fallback396:
    .const 'Sub' $P5078 = 'cuid_192_1347104163.3' 
    capture_lex $P5078
    newclosure $P5077, $P5078
    $P5079 = $P5072."add_core_op"("chain", $P5077, 1 :named("inlinable"))
.annotate 'line', 735
    get_hll_global $P5083, "GLOBAL"
    nqp_get_package_through_who $P5082, $P5083, "QAST"
    get_who $P5081, $P5082
    set $P5080, $P5081["Operations"]
    unless_null $P5080, fallback420
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5080, $P5084
  fallback420:
    .const 'Sub' $P5086 = 'cuid_193_1347104163.3' 
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
  for_next484:
    unless $P5090, for_done486
    shift $P5095, $P5090
  for_redo485:
    .const 'Sub' $P5094 = 'cuid_199_1347104163.3' 
    capture_lex $P5094
    $P5088 = $P5094($P5095)
    goto for_next484
  for_done486:
.annotate 'line', 823
    get_hll_global $P5099, "GLOBAL"
    nqp_get_package_through_who $P5098, $P5099, "QAST"
    get_who $P5097, $P5098
    set $P5096, $P5097["Operations"]
    unless_null $P5096, fallback487
    nqp_get_sc_object $P5100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5096, $P5100
  fallback487:
    .const 'Sub' $P5102 = 'cuid_200_1347104163.3' 
    capture_lex $P5102
    newclosure $P5101, $P5102
    $P5103 = $P5096."add_core_op"("ifnull", $P5101, 1 :named("inlinable"))
    new $P5107, 'ResizablePMCArray'
    box $P5108, ""
    push $P5107, $P5108
    box $P5109, "repeat_"
    push $P5107, $P5109
    set $P5104, $P5107
    iter $P5106, $P5107
  for_next564:
    unless $P5106, for_done566
    shift $P5111, $P5106
  for_redo565:
    .const 'Sub' $P5110 = 'cuid_205_1347104163.3' 
    capture_lex $P5110
    $P5104 = $P5110($P5111)
    goto for_next564
  for_done566:
.annotate 'line', 951
    get_hll_global $P5115, "GLOBAL"
    nqp_get_package_through_who $P5114, $P5115, "QAST"
    get_who $P5113, $P5114
    set $P5112, $P5113["Operations"]
    unless_null $P5112, fallback567
    nqp_get_sc_object $P5116, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5112, $P5116
  fallback567:
    .const 'Sub' $P5118 = 'cuid_207_1347104163.3' 
    capture_lex $P5118
    newclosure $P5117, $P5118
    $P5119 = $P5112."add_core_op"("for", $P5117, 1 :named("inlinable"))
.annotate 'line', 1039
    get_hll_global $P5123, "GLOBAL"
    nqp_get_package_through_who $P5122, $P5123, "QAST"
    get_who $P5121, $P5122
    set $P5120, $P5121["Operations"]
    unless_null $P5120, fallback617
    nqp_get_sc_object $P5124, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5120, $P5124
  fallback617:
    .const 'Sub' $P5126 = 'cuid_209_1347104163.3' 
    capture_lex $P5126
    newclosure $P5125, $P5126
    $P5127 = $P5120."add_core_op"("defor", $P5125, 1 :named("inlinable"))
.annotate 'line', 1060
    get_hll_global $P5131, "GLOBAL"
    nqp_get_package_through_who $P5130, $P5131, "QAST"
    get_who $P5129, $P5130
    set $P5128, $P5129["Operations"]
    unless_null $P5128, fallback630
    nqp_get_sc_object $P5132, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5128, $P5132
  fallback630:
    .const 'Sub' $P5134 = 'cuid_211_1347104163.3' 
    capture_lex $P5134
    newclosure $P5133, $P5134
    $P5135 = $P5128."add_core_op"("xor", $P5133, 1 :named("inlinable"))
.annotate 'line', 1129
    get_hll_global $P5139, "GLOBAL"
    nqp_get_package_through_who $P5138, $P5139, "QAST"
    get_who $P5137, $P5138
    set $P5136, $P5137["Operations"]
    unless_null $P5136, fallback661
    nqp_get_sc_object $P5140, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5136, $P5140
  fallback661:
    .const 'Sub' $P5142 = 'cuid_215_1347104163.3' 
    capture_lex $P5142
    newclosure $P5141, $P5142
    $P5143 = $P5136."add_core_op"("bind", $P5141, 1 :named("inlinable"))
.annotate 'line', 1170
    get_hll_global $P5147, "GLOBAL"
    nqp_get_package_through_who $P5146, $P5147, "QAST"
    get_who $P5145, $P5146
    set $P5144, $P5145["Operations"]
    unless_null $P5144, fallback670
    nqp_get_sc_object $P5148, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5144, $P5148
  fallback670:
    .const 'Sub' $P5150 = 'cuid_217_1347104163.3' 
    capture_lex $P5150
    newclosure $P5149, $P5150
    $P5151 = $P5144."add_core_op"("call", $P5149)
.annotate 'line', 1205
    get_hll_global $P5155, "GLOBAL"
    nqp_get_package_through_who $P5154, $P5155, "QAST"
    get_who $P5153, $P5154
    set $P5152, $P5153["Operations"]
    unless_null $P5152, fallback685
    nqp_get_sc_object $P5156, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5152, $P5156
  fallback685:
    .const 'Sub' $P5158 = 'cuid_219_1347104163.3' 
    capture_lex $P5158
    newclosure $P5157, $P5158
    $P5159 = $P5152."add_core_op"("callmethod", $P5157, 1 :named("inlinable"))
.annotate 'line', 1255
    get_hll_global $P5163, "GLOBAL"
    nqp_get_package_through_who $P5162, $P5163, "QAST"
    get_who $P5161, $P5162
    set $P5160, $P5161["Operations"]
    unless_null $P5160, fallback704
    nqp_get_sc_object $P5164, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5160, $P5164
  fallback704:
    .const 'Sub' $P5166 = 'cuid_221_1347104163.3' 
    capture_lex $P5166
    newclosure $P5165, $P5166
    $P5167 = $P5160."add_core_op"("lexotic", $P5165)
.annotate 'line', 1279
    get_hll_global $P5171, "GLOBAL"
    nqp_get_package_through_who $P5170, $P5171, "QAST"
    get_who $P5169, $P5170
    set $P5168, $P5169["Operations"]
    unless_null $P5168, fallback711
    nqp_get_sc_object $P5172, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5168, $P5172
  fallback711:
    .const 'Sub' $P5174 = 'cuid_222_1347104163.3' 
    capture_lex $P5174
    newclosure $P5173, $P5174
    $P5175 = $P5168."add_core_op"("curlexpad", $P5173)
.annotate 'line', 1287
    get_hll_global $P5179, "GLOBAL"
    nqp_get_package_through_who $P5178, $P5179, "QAST"
    get_who $P5177, $P5178
    set $P5176, $P5177["Operations"]
    unless_null $P5176, fallback716
    nqp_get_sc_object $P5180, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5176, $P5180
  fallback716:
    .const 'Sub' $P5182 = 'cuid_223_1347104163.3' 
    capture_lex $P5182
    newclosure $P5181, $P5182
    $P5183 = $P5176."add_core_op"("curcode", $P5181)
    box $P5184, 0
    set $P104, $P5184
    box $P5185, 1
    set $P105, $P5185
    new $P5186, 'Hash'
    box $P5187, ".CONTROL_ALL"
    set $P5186["CATCH"], $P5187
    box $P5188, ".CONTROL_ALL"
    set $P5186["CONTROL"], $P5188
    box $P5189, ".CONTROL_LOOP_NEXT"
    set $P5186["NEXT"], $P5189
    box $P5190, ".CONTROL_LOOP_LAST"
    set $P5186["LAST"], $P5190
    box $P5191, ".CONTROL_LOOP_REDO"
    set $P5186["REDO"], $P5191
    box $P5192, ".CONTROL_TAKE"
    set $P5186["TAKE"], $P5192
    box $P5193, ".CONTROL_BREAK"
    set $P5186["SUCCEED"], $P5193
    box $P5194, ".CONTROL_CONTINUE"
    set $P5186["PROCEED"], $P5194
    set $P106, $P5186
.annotate 'line', 1309
    get_hll_global $P5198, "GLOBAL"
    nqp_get_package_through_who $P5197, $P5198, "QAST"
    get_who $P5196, $P5197
    set $P5195, $P5196["Operations"]
    unless_null $P5195, fallback721
    nqp_get_sc_object $P5199, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5195, $P5199
  fallback721:
    .const 'Sub' $P5201 = 'cuid_225_1347104163.3' 
    capture_lex $P5201
    newclosure $P5200, $P5201
    $P5202 = $P5195."add_core_op"("handle", $P5200)
.annotate 'line', 1450
    get_hll_global $P5206, "GLOBAL"
    nqp_get_package_through_who $P5205, $P5206, "QAST"
    get_who $P5204, $P5205
    set $P5203, $P5204["Operations"]
    unless_null $P5203, fallback787
    nqp_get_sc_object $P5207, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5203, $P5207
  fallback787:
    .const 'Sub' $P5209 = 'cuid_233_1347104163.3' 
    capture_lex $P5209
    newclosure $P5208, $P5209
    $P5210 = $P5203."add_core_op"("exception", $P5208)
.annotate 'line', 1459
    get_hll_global $P5214, "GLOBAL"
    nqp_get_package_through_who $P5213, $P5214, "QAST"
    get_who $P5212, $P5213
    set $P5211, $P5212["Operations"]
    unless_null $P5211, fallback796
    nqp_get_sc_object $P5215, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5211, $P5215
  fallback796:
    .const 'Sub' $P5217 = 'cuid_234_1347104163.3' 
    capture_lex $P5217
    newclosure $P5216, $P5217
    $P5218 = $P5211."add_core_op"("getpayload", $P5216)
.annotate 'line', 1471
    get_hll_global $P5222, "GLOBAL"
    nqp_get_package_through_who $P5221, $P5222, "QAST"
    get_who $P5220, $P5221
    set $P5219, $P5220["Operations"]
    unless_null $P5219, fallback804
    nqp_get_sc_object $P5223, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5219, $P5223
  fallback804:
    .const 'Sub' $P5225 = 'cuid_235_1347104163.3' 
    capture_lex $P5225
    newclosure $P5224, $P5225
    $P5226 = $P5219."add_core_op"("setpayload", $P5224)
.annotate 'line', 1482
    get_hll_global $P5230, "GLOBAL"
    nqp_get_package_through_who $P5229, $P5230, "QAST"
    get_who $P5228, $P5229
    set $P5227, $P5228["Operations"]
    unless_null $P5227, fallback810
    nqp_get_sc_object $P5231, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5227, $P5231
  fallback810:
    .const 'Sub' $P5233 = 'cuid_236_1347104163.3' 
    capture_lex $P5233
    newclosure $P5232, $P5233
    $P5234 = $P5227."add_core_op"("getmessage", $P5232)
.annotate 'line', 1496
    get_hll_global $P5238, "GLOBAL"
    nqp_get_package_through_who $P5237, $P5238, "QAST"
    get_who $P5236, $P5237
    set $P5235, $P5236["Operations"]
    unless_null $P5235, fallback821
    nqp_get_sc_object $P5239, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5235, $P5239
  fallback821:
    .const 'Sub' $P5241 = 'cuid_237_1347104163.3' 
    capture_lex $P5241
    newclosure $P5240, $P5241
    $P5242 = $P5235."add_core_op"("setmessage", $P5240)
.annotate 'line', 1511
    get_hll_global $P5246, "GLOBAL"
    nqp_get_package_through_who $P5245, $P5246, "QAST"
    get_who $P5244, $P5245
    set $P5243, $P5244["Operations"]
    unless_null $P5243, fallback830
    nqp_get_sc_object $P5247, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5243, $P5247
  fallback830:
    .const 'Sub' $P5249 = 'cuid_238_1347104163.3' 
    capture_lex $P5249
    newclosure $P5248, $P5249
    $P5250 = $P5243."add_core_op"("newexception", $P5248)
.annotate 'line', 1521
    get_hll_global $P5254, "GLOBAL"
    nqp_get_package_through_who $P5253, $P5254, "QAST"
    get_who $P5252, $P5253
    set $P5251, $P5252["Operations"]
    unless_null $P5251, fallback837
    nqp_get_sc_object $P5255, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5251, $P5255
  fallback837:
    $P5256 = $P5251."add_core_pirop_mapping"("die_s", "die", "0s")
.annotate 'line', 1522
    get_hll_global $P5260, "GLOBAL"
    nqp_get_package_through_who $P5259, $P5260, "QAST"
    get_who $P5258, $P5259
    set $P5257, $P5258["Operations"]
    unless_null $P5257, fallback838
    nqp_get_sc_object $P5261, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5257, $P5261
  fallback838:
    $P5262 = $P5257."add_core_pirop_mapping"("die", "die", "0P")
.annotate 'line', 1523
    get_hll_global $P5266, "GLOBAL"
    nqp_get_package_through_who $P5265, $P5266, "QAST"
    get_who $P5264, $P5265
    set $P5263, $P5264["Operations"]
    unless_null $P5263, fallback839
    nqp_get_sc_object $P5267, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5263, $P5267
  fallback839:
    $P5268 = $P5263."add_core_pirop_mapping"("throw", "throw", "0P")
.annotate 'line', 1524
    get_hll_global $P5272, "GLOBAL"
    nqp_get_package_through_who $P5271, $P5272, "QAST"
    get_who $P5270, $P5271
    set $P5269, $P5270["Operations"]
    unless_null $P5269, fallback840
    nqp_get_sc_object $P5273, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5269, $P5273
  fallback840:
    $P5274 = $P5269."add_core_pirop_mapping"("rethrow", "rethrow", "0P")
    new $P5275, 'Hash'
    box $P5276, ".CONTROL_LOOP_NEXT"
    set $P5275["next"], $P5276
    box $P5277, ".CONTROL_LOOP_LAST"
    set $P5275["last"], $P5277
    box $P5278, ".CONTROL_LOOP_REDO"
    set $P5275["redo"], $P5278
    set $P107, $P5275
.annotate 'line', 1532
    get_hll_global $P5282, "GLOBAL"
    nqp_get_package_through_who $P5281, $P5282, "QAST"
    get_who $P5280, $P5281
    set $P5279, $P5280["Operations"]
    unless_null $P5279, fallback841
    nqp_get_sc_object $P5283, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5279, $P5283
  fallback841:
    .const 'Sub' $P5285 = 'cuid_240_1347104163.3' 
    capture_lex $P5285
    newclosure $P5284, $P5285
    $P5286 = $P5279."add_core_op"("control", $P5284)
    new $P5290, 'ResizablePMCArray'
    box $P5291, "i"
    push $P5290, $P5291
    box $P5292, "n"
    push $P5290, $P5292
    box $P5293, "s"
    push $P5290, $P5293
    set $P5287, $P5290
    iter $P5289, $P5290
  for_next851:
    unless $P5289, for_done853
    shift $P5295, $P5289
  for_redo852:
    .const 'Sub' $P5294 = 'cuid_242_1347104163.3' 
    capture_lex $P5294
    $P5287 = $P5294($P5295)
    goto for_next851
  for_done853:
.annotate 'line', 1555
    get_hll_global $P5299, "GLOBAL"
    nqp_get_package_through_who $P5298, $P5299, "QAST"
    get_who $P5297, $P5298
    set $P5296, $P5297["Operations"]
    unless_null $P5296, fallback854
    nqp_get_sc_object $P5300, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5296, $P5300
  fallback854:
    .const 'Sub' $P5302 = 'cuid_243_1347104163.3' 
    capture_lex $P5302
    newclosure $P5301, $P5302
    $P5303 = $P5296."add_hll_unbox"("nqp", "i", $P5301)
.annotate 'line', 1563
    get_hll_global $P5307, "GLOBAL"
    nqp_get_package_through_who $P5306, $P5307, "QAST"
    get_who $P5305, $P5306
    set $P5304, $P5305["Operations"]
    unless_null $P5304, fallback859
    nqp_get_sc_object $P5308, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5304, $P5308
  fallback859:
    .const 'Sub' $P5310 = 'cuid_244_1347104163.3' 
    capture_lex $P5310
    newclosure $P5309, $P5310
    $P5311 = $P5304."add_hll_unbox"("nqp", "n", $P5309)
.annotate 'line', 1571
    get_hll_global $P5315, "GLOBAL"
    nqp_get_package_through_who $P5314, $P5315, "QAST"
    get_who $P5313, $P5314
    set $P5312, $P5313["Operations"]
    unless_null $P5312, fallback864
    nqp_get_sc_object $P5316, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5312, $P5316
  fallback864:
    .const 'Sub' $P5318 = 'cuid_245_1347104163.3' 
    capture_lex $P5318
    newclosure $P5317, $P5318
    $P5319 = $P5312."add_hll_unbox"("nqp", "s", $P5317)
.annotate 'line', 1581
    get_hll_global $P5323, "GLOBAL"
    nqp_get_package_through_who $P5322, $P5323, "QAST"
    get_who $P5321, $P5322
    set $P5320, $P5321["Operations"]
    unless_null $P5320, fallback869
    nqp_get_sc_object $P5324, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5320, $P5324
  fallback869:
    $P5325 = $P5320."add_core_pirop_mapping"("positional_get", "set", "PQi", 1 :named("inlinable"))
.annotate 'line', 1582
    get_hll_global $P5329, "GLOBAL"
    nqp_get_package_through_who $P5328, $P5329, "QAST"
    get_who $P5327, $P5328
    set $P5326, $P5327["Operations"]
    unless_null $P5326, fallback870
    nqp_get_sc_object $P5330, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5326, $P5330
  fallback870:
    $P5331 = $P5326."add_core_pirop_mapping"("positional_bind", "set", "1QiP", 1 :named("inlinable"))
.annotate 'line', 1583
    get_hll_global $P5335, "GLOBAL"
    nqp_get_package_through_who $P5334, $P5335, "QAST"
    get_who $P5333, $P5334
    set $P5332, $P5333["Operations"]
    unless_null $P5332, fallback871
    nqp_get_sc_object $P5336, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5332, $P5336
  fallback871:
    $P5337 = $P5332."add_core_pirop_mapping"("associative_get", "set", "PQs", 1 :named("inlinable"))
.annotate 'line', 1584
    get_hll_global $P5341, "GLOBAL"
    nqp_get_package_through_who $P5340, $P5341, "QAST"
    get_who $P5339, $P5340
    set $P5338, $P5339["Operations"]
    unless_null $P5338, fallback872
    nqp_get_sc_object $P5342, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5338, $P5342
  fallback872:
    $P5343 = $P5338."add_core_pirop_mapping"("associative_bind", "set", "1QsP", 1 :named("inlinable"))
.annotate 'line', 1587
    get_hll_global $P5347, "GLOBAL"
    nqp_get_package_through_who $P5346, $P5347, "QAST"
    get_who $P5345, $P5346
    set $P5344, $P5345["Operations"]
    unless_null $P5344, fallback873
    nqp_get_sc_object $P5348, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5344, $P5348
  fallback873:
    $P5349 = $P5344."add_core_pirop_mapping"("print", "print", "0s", 1 :named("inlinable"))
.annotate 'line', 1588
    get_hll_global $P5353, "GLOBAL"
    nqp_get_package_through_who $P5352, $P5353, "QAST"
    get_who $P5351, $P5352
    set $P5350, $P5351["Operations"]
    unless_null $P5350, fallback874
    nqp_get_sc_object $P5354, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5350, $P5354
  fallback874:
    $P5355 = $P5350."add_core_pirop_mapping"("say", "say", "0s", 1 :named("inlinable"))
.annotate 'line', 1589
    get_hll_global $P5359, "GLOBAL"
    nqp_get_package_through_who $P5358, $P5359, "QAST"
    get_who $P5357, $P5358
    set $P5356, $P5357["Operations"]
    unless_null $P5356, fallback875
    nqp_get_sc_object $P5360, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5356, $P5360
  fallback875:
    $P5361 = $P5356."add_core_pirop_mapping"("stat", "stat", "Isi", 1 :named("inlinable"))
.annotate 'line', 1590
    get_hll_global $P5365, "GLOBAL"
    nqp_get_package_through_who $P5364, $P5365, "QAST"
    get_who $P5363, $P5364
    set $P5362, $P5363["Operations"]
    unless_null $P5362, fallback876
    nqp_get_sc_object $P5366, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5362, $P5366
  fallback876:
    $P5367 = $P5362."add_core_pirop_mapping"("open", "open", "Pss", 1 :named("inlinable"))
.annotate 'line', 1593
    get_hll_global $P5371, "GLOBAL"
    nqp_get_package_through_who $P5370, $P5371, "QAST"
    get_who $P5369, $P5370
    set $P5368, $P5369["Operations"]
    unless_null $P5368, fallback877
    nqp_get_sc_object $P5372, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5368, $P5372
  fallback877:
    $P5373 = $P5368."add_core_pirop_mapping"("time_i", "time", "I", 1 :named("inlinable"))
.annotate 'line', 1594
    get_hll_global $P5377, "GLOBAL"
    nqp_get_package_through_who $P5376, $P5377, "QAST"
    get_who $P5375, $P5376
    set $P5374, $P5375["Operations"]
    unless_null $P5374, fallback878
    nqp_get_sc_object $P5378, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5374, $P5378
  fallback878:
    $P5379 = $P5374."add_core_pirop_mapping"("time_n", "time", "N", 1 :named("inlinable"))
.annotate 'line', 1597
    get_hll_global $P5383, "GLOBAL"
    nqp_get_package_through_who $P5382, $P5383, "QAST"
    get_who $P5381, $P5382
    set $P5380, $P5381["Operations"]
    unless_null $P5380, fallback879
    nqp_get_sc_object $P5384, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5380, $P5384
  fallback879:
    $P5385 = $P5380."add_core_pirop_mapping"("add_i", "add", "Iii", 1 :named("inlinable"))
.annotate 'line', 1598
    get_hll_global $P5389, "GLOBAL"
    nqp_get_package_through_who $P5388, $P5389, "QAST"
    get_who $P5387, $P5388
    set $P5386, $P5387["Operations"]
    unless_null $P5386, fallback880
    nqp_get_sc_object $P5390, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5386, $P5390
  fallback880:
    $P5391 = $P5386."add_core_pirop_mapping"("add_I", "nqp_bigint_add", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1599
    get_hll_global $P5395, "GLOBAL"
    nqp_get_package_through_who $P5394, $P5395, "QAST"
    get_who $P5393, $P5394
    set $P5392, $P5393["Operations"]
    unless_null $P5392, fallback881
    nqp_get_sc_object $P5396, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5392, $P5396
  fallback881:
    $P5397 = $P5392."add_core_pirop_mapping"("add_n", "add", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1600
    get_hll_global $P5401, "GLOBAL"
    nqp_get_package_through_who $P5400, $P5401, "QAST"
    get_who $P5399, $P5400
    set $P5398, $P5399["Operations"]
    unless_null $P5398, fallback882
    nqp_get_sc_object $P5402, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5398, $P5402
  fallback882:
    $P5403 = $P5398."add_core_pirop_mapping"("sub_i", "sub", "Iii", 1 :named("inlinable"))
.annotate 'line', 1601
    get_hll_global $P5407, "GLOBAL"
    nqp_get_package_through_who $P5406, $P5407, "QAST"
    get_who $P5405, $P5406
    set $P5404, $P5405["Operations"]
    unless_null $P5404, fallback883
    nqp_get_sc_object $P5408, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5404, $P5408
  fallback883:
    $P5409 = $P5404."add_core_pirop_mapping"("sub_I", "nqp_bigint_sub", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1602
    get_hll_global $P5413, "GLOBAL"
    nqp_get_package_through_who $P5412, $P5413, "QAST"
    get_who $P5411, $P5412
    set $P5410, $P5411["Operations"]
    unless_null $P5410, fallback884
    nqp_get_sc_object $P5414, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5410, $P5414
  fallback884:
    $P5415 = $P5410."add_core_pirop_mapping"("sub_n", "sub", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1603
    get_hll_global $P5419, "GLOBAL"
    nqp_get_package_through_who $P5418, $P5419, "QAST"
    get_who $P5417, $P5418
    set $P5416, $P5417["Operations"]
    unless_null $P5416, fallback885
    nqp_get_sc_object $P5420, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5416, $P5420
  fallback885:
    $P5421 = $P5416."add_core_pirop_mapping"("mul_i", "mul", "Iii", 1 :named("inlinable"))
.annotate 'line', 1604
    get_hll_global $P5425, "GLOBAL"
    nqp_get_package_through_who $P5424, $P5425, "QAST"
    get_who $P5423, $P5424
    set $P5422, $P5423["Operations"]
    unless_null $P5422, fallback886
    nqp_get_sc_object $P5426, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5422, $P5426
  fallback886:
    $P5427 = $P5422."add_core_pirop_mapping"("mul_I", "nqp_bigint_mul", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1605
    get_hll_global $P5431, "GLOBAL"
    nqp_get_package_through_who $P5430, $P5431, "QAST"
    get_who $P5429, $P5430
    set $P5428, $P5429["Operations"]
    unless_null $P5428, fallback887
    nqp_get_sc_object $P5432, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5428, $P5432
  fallback887:
    $P5433 = $P5428."add_core_pirop_mapping"("mul_n", "mul", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1606
    get_hll_global $P5437, "GLOBAL"
    nqp_get_package_through_who $P5436, $P5437, "QAST"
    get_who $P5435, $P5436
    set $P5434, $P5435["Operations"]
    unless_null $P5434, fallback888
    nqp_get_sc_object $P5438, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5434, $P5438
  fallback888:
    $P5439 = $P5434."add_core_pirop_mapping"("div_i", "div", "Iii", 1 :named("inlinable"))
.annotate 'line', 1607
    get_hll_global $P5443, "GLOBAL"
    nqp_get_package_through_who $P5442, $P5443, "QAST"
    get_who $P5441, $P5442
    set $P5440, $P5441["Operations"]
    unless_null $P5440, fallback889
    nqp_get_sc_object $P5444, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5440, $P5444
  fallback889:
    $P5445 = $P5440."add_core_pirop_mapping"("div_I", "nqp_bigint_div", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1608
    get_hll_global $P5449, "GLOBAL"
    nqp_get_package_through_who $P5448, $P5449, "QAST"
    get_who $P5447, $P5448
    set $P5446, $P5447["Operations"]
    unless_null $P5446, fallback890
    nqp_get_sc_object $P5450, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5446, $P5450
  fallback890:
    $P5451 = $P5446."add_core_pirop_mapping"("div_In", "nqp_bigint_div_num", "NPP", 1 :named("inlinable"))
.annotate 'line', 1609
    get_hll_global $P5455, "GLOBAL"
    nqp_get_package_through_who $P5454, $P5455, "QAST"
    get_who $P5453, $P5454
    set $P5452, $P5453["Operations"]
    unless_null $P5452, fallback891
    nqp_get_sc_object $P5456, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5452, $P5456
  fallback891:
    $P5457 = $P5452."add_core_pirop_mapping"("div_n", "div", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1610
    get_hll_global $P5461, "GLOBAL"
    nqp_get_package_through_who $P5460, $P5461, "QAST"
    get_who $P5459, $P5460
    set $P5458, $P5459["Operations"]
    unless_null $P5458, fallback892
    nqp_get_sc_object $P5462, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5458, $P5462
  fallback892:
    $P5463 = $P5458."add_core_pirop_mapping"("mod_i", "mod", "Iii", 1 :named("inlinable"))
.annotate 'line', 1611
    get_hll_global $P5467, "GLOBAL"
    nqp_get_package_through_who $P5466, $P5467, "QAST"
    get_who $P5465, $P5466
    set $P5464, $P5465["Operations"]
    unless_null $P5464, fallback893
    nqp_get_sc_object $P5468, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5464, $P5468
  fallback893:
    $P5469 = $P5464."add_core_pirop_mapping"("mod_I", "nqp_bigint_mod", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1612
    get_hll_global $P5473, "GLOBAL"
    nqp_get_package_through_who $P5472, $P5473, "QAST"
    get_who $P5471, $P5472
    set $P5470, $P5471["Operations"]
    unless_null $P5470, fallback894
    nqp_get_sc_object $P5474, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5470, $P5474
  fallback894:
    $P5475 = $P5470."add_core_pirop_mapping"("expmod_I", "nqp_bigint_exp_mod", "PPPPP", 1 :named("inlinable"))
.annotate 'line', 1613
    get_hll_global $P5479, "GLOBAL"
    nqp_get_package_through_who $P5478, $P5479, "QAST"
    get_who $P5477, $P5478
    set $P5476, $P5477["Operations"]
    unless_null $P5476, fallback895
    nqp_get_sc_object $P5480, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5476, $P5480
  fallback895:
    $P5481 = $P5476."add_core_pirop_mapping"("mod_n", "mod", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1614
    get_hll_global $P5485, "GLOBAL"
    nqp_get_package_through_who $P5484, $P5485, "QAST"
    get_who $P5483, $P5484
    set $P5482, $P5483["Operations"]
    unless_null $P5482, fallback896
    nqp_get_sc_object $P5486, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5482, $P5486
  fallback896:
    $P5487 = $P5482."add_core_pirop_mapping"("pow_n", "pow", "Nnn", 1 :named("inlinable"))
.annotate 'line', 1615
    get_hll_global $P5491, "GLOBAL"
    nqp_get_package_through_who $P5490, $P5491, "QAST"
    get_who $P5489, $P5490
    set $P5488, $P5489["Operations"]
    unless_null $P5488, fallback897
    nqp_get_sc_object $P5492, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5488, $P5492
  fallback897:
    $P5493 = $P5488."add_core_pirop_mapping"("pow_I", "nqp_bigint_pow", "PPPPP", 1 :named("inlinable"))
.annotate 'line', 1616
    get_hll_global $P5497, "GLOBAL"
    nqp_get_package_through_who $P5496, $P5497, "QAST"
    get_who $P5495, $P5496
    set $P5494, $P5495["Operations"]
    unless_null $P5494, fallback898
    nqp_get_sc_object $P5498, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5494, $P5498
  fallback898:
    $P5499 = $P5494."add_core_pirop_mapping"("neg_i", "neg", "Ii", 1 :named("inlinable"))
.annotate 'line', 1617
    get_hll_global $P5503, "GLOBAL"
    nqp_get_package_through_who $P5502, $P5503, "QAST"
    get_who $P5501, $P5502
    set $P5500, $P5501["Operations"]
    unless_null $P5500, fallback899
    nqp_get_sc_object $P5504, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5500, $P5504
  fallback899:
    $P5505 = $P5500."add_core_pirop_mapping"("neg_I", "nqp_bigint_neg", "PPP", 1 :named("inlinable"))
.annotate 'line', 1618
    get_hll_global $P5509, "GLOBAL"
    nqp_get_package_through_who $P5508, $P5509, "QAST"
    get_who $P5507, $P5508
    set $P5506, $P5507["Operations"]
    unless_null $P5506, fallback900
    nqp_get_sc_object $P5510, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5506, $P5510
  fallback900:
    $P5511 = $P5506."add_core_pirop_mapping"("neg_n", "neg", "Nn", 1 :named("inlinable"))
.annotate 'line', 1619
    get_hll_global $P5515, "GLOBAL"
    nqp_get_package_through_who $P5514, $P5515, "QAST"
    get_who $P5513, $P5514
    set $P5512, $P5513["Operations"]
    unless_null $P5512, fallback901
    nqp_get_sc_object $P5516, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5512, $P5516
  fallback901:
    $P5517 = $P5512."add_core_pirop_mapping"("abs_i", "abs", "Ii", 1 :named("inlinable"))
.annotate 'line', 1620
    get_hll_global $P5521, "GLOBAL"
    nqp_get_package_through_who $P5520, $P5521, "QAST"
    get_who $P5519, $P5520
    set $P5518, $P5519["Operations"]
    unless_null $P5518, fallback902
    nqp_get_sc_object $P5522, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5518, $P5522
  fallback902:
    $P5523 = $P5518."add_core_pirop_mapping"("abs_I", "nqp_bigint_abs", "PPP", 1 :named("inlinable"))
.annotate 'line', 1621
    get_hll_global $P5527, "GLOBAL"
    nqp_get_package_through_who $P5526, $P5527, "QAST"
    get_who $P5525, $P5526
    set $P5524, $P5525["Operations"]
    unless_null $P5524, fallback903
    nqp_get_sc_object $P5528, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5524, $P5528
  fallback903:
    $P5529 = $P5524."add_core_pirop_mapping"("abs_n", "abs", "Nn", 1 :named("inlinable"))
.annotate 'line', 1623
    get_hll_global $P5533, "GLOBAL"
    nqp_get_package_through_who $P5532, $P5533, "QAST"
    get_who $P5531, $P5532
    set $P5530, $P5531["Operations"]
    unless_null $P5530, fallback904
    nqp_get_sc_object $P5534, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5530, $P5534
  fallback904:
    $P5535 = $P5530."add_core_pirop_mapping"("gcd_i", "gcd", "Ii", 1 :named("inlinable"))
.annotate 'line', 1624
    get_hll_global $P5539, "GLOBAL"
    nqp_get_package_through_who $P5538, $P5539, "QAST"
    get_who $P5537, $P5538
    set $P5536, $P5537["Operations"]
    unless_null $P5536, fallback905
    nqp_get_sc_object $P5540, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5536, $P5540
  fallback905:
    $P5541 = $P5536."add_core_pirop_mapping"("gcd_I", "nqp_bigint_gcd", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1625
    get_hll_global $P5545, "GLOBAL"
    nqp_get_package_through_who $P5544, $P5545, "QAST"
    get_who $P5543, $P5544
    set $P5542, $P5543["Operations"]
    unless_null $P5542, fallback906
    nqp_get_sc_object $P5546, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5542, $P5546
  fallback906:
    $P5547 = $P5542."add_core_pirop_mapping"("lcm_i", "lcm", "Ii", 1 :named("inlinable"))
.annotate 'line', 1626
    get_hll_global $P5551, "GLOBAL"
    nqp_get_package_through_who $P5550, $P5551, "QAST"
    get_who $P5549, $P5550
    set $P5548, $P5549["Operations"]
    unless_null $P5548, fallback907
    nqp_get_sc_object $P5552, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5548, $P5552
  fallback907:
    $P5553 = $P5548."add_core_pirop_mapping"("lcm_I", "nqp_bigint_lcm", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1628
    get_hll_global $P5557, "GLOBAL"
    nqp_get_package_through_who $P5556, $P5557, "QAST"
    get_who $P5555, $P5556
    set $P5554, $P5555["Operations"]
    unless_null $P5554, fallback908
    nqp_get_sc_object $P5558, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5554, $P5558
  fallback908:
    $P5559 = $P5554."add_core_pirop_mapping"("ceil_n", "ceil", "Nn", 1 :named("inlinable"))
.annotate 'line', 1629
    get_hll_global $P5563, "GLOBAL"
    nqp_get_package_through_who $P5562, $P5563, "QAST"
    get_who $P5561, $P5562
    set $P5560, $P5561["Operations"]
    unless_null $P5560, fallback909
    nqp_get_sc_object $P5564, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5560, $P5564
  fallback909:
    $P5565 = $P5560."add_core_pirop_mapping"("floor_n", "floor", "NN", 1 :named("inlinable"))
.annotate 'line', 1630
    get_hll_global $P5569, "GLOBAL"
    nqp_get_package_through_who $P5568, $P5569, "QAST"
    get_who $P5567, $P5568
    set $P5566, $P5567["Operations"]
    unless_null $P5566, fallback910
    nqp_get_sc_object $P5570, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5566, $P5570
  fallback910:
    $P5571 = $P5566."add_core_pirop_mapping"("ln_n", "ln", "Nn", 1 :named("inlinable"))
.annotate 'line', 1631
    get_hll_global $P5575, "GLOBAL"
    nqp_get_package_through_who $P5574, $P5575, "QAST"
    get_who $P5573, $P5574
    set $P5572, $P5573["Operations"]
    unless_null $P5572, fallback911
    nqp_get_sc_object $P5576, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5572, $P5576
  fallback911:
    $P5577 = $P5572."add_core_pirop_mapping"("sqrt_n", "sqrt", "Nn", 1 :named("inlinable"))
.annotate 'line', 1632
    get_hll_global $P5581, "GLOBAL"
    nqp_get_package_through_who $P5580, $P5581, "QAST"
    get_who $P5579, $P5580
    set $P5578, $P5579["Operations"]
    unless_null $P5578, fallback912
    nqp_get_sc_object $P5582, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5578, $P5582
  fallback912:
    $P5583 = $P5578."add_core_pirop_mapping"("radix", "nqp_radix", "Pisii", 1 :named("inlinable"))
.annotate 'line', 1633
    get_hll_global $P5587, "GLOBAL"
    nqp_get_package_through_who $P5586, $P5587, "QAST"
    get_who $P5585, $P5586
    set $P5584, $P5585["Operations"]
    unless_null $P5584, fallback913
    nqp_get_sc_object $P5588, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5584, $P5588
  fallback913:
    $P5589 = $P5584."add_core_pirop_mapping"("radix_I", "nqp_bigint_radix", "PisiiP", 1 :named("inlinable"))
.annotate 'line', 1634
    get_hll_global $P5593, "GLOBAL"
    nqp_get_package_through_who $P5592, $P5593, "QAST"
    get_who $P5591, $P5592
    set $P5590, $P5591["Operations"]
    unless_null $P5590, fallback914
    nqp_get_sc_object $P5594, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5590, $P5594
  fallback914:
    $P5595 = $P5590."add_core_pirop_mapping"("log_n", "ln", "NN", 1 :named("inlinable"))
.annotate 'line', 1635
    get_hll_global $P5599, "GLOBAL"
    nqp_get_package_through_who $P5598, $P5599, "QAST"
    get_who $P5597, $P5598
    set $P5596, $P5597["Operations"]
    unless_null $P5596, fallback915
    nqp_get_sc_object $P5600, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5596, $P5600
  fallback915:
    $P5601 = $P5596."add_core_pirop_mapping"("exp_n", "exp", "Nn", 1 :named("inlinable"))
.annotate 'line', 1636
    get_hll_global $P5605, "GLOBAL"
    nqp_get_package_through_who $P5604, $P5605, "QAST"
    get_who $P5603, $P5604
    set $P5602, $P5603["Operations"]
    unless_null $P5602, fallback916
    nqp_get_sc_object $P5606, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5602, $P5606
  fallback916:
    $P5607 = $P5602."add_core_pirop_mapping"("isnanorinf", "is_inf_or_nan", "In", 1 :named("inlinable"))
.annotate 'line', 1639
    get_hll_global $P5611, "GLOBAL"
    nqp_get_package_through_who $P5610, $P5611, "QAST"
    get_who $P5609, $P5610
    set $P5608, $P5609["Operations"]
    unless_null $P5608, fallback917
    nqp_get_sc_object $P5612, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5608, $P5612
  fallback917:
    $P5613 = $P5608."add_core_pirop_mapping"("sin_n", "sin", "NN", 1 :named("inlinable"))
.annotate 'line', 1640
    get_hll_global $P5617, "GLOBAL"
    nqp_get_package_through_who $P5616, $P5617, "QAST"
    get_who $P5615, $P5616
    set $P5614, $P5615["Operations"]
    unless_null $P5614, fallback918
    nqp_get_sc_object $P5618, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5614, $P5618
  fallback918:
    $P5619 = $P5614."add_core_pirop_mapping"("asin_n", "asin", "NN", 1 :named("inlinable"))
.annotate 'line', 1641
    get_hll_global $P5623, "GLOBAL"
    nqp_get_package_through_who $P5622, $P5623, "QAST"
    get_who $P5621, $P5622
    set $P5620, $P5621["Operations"]
    unless_null $P5620, fallback919
    nqp_get_sc_object $P5624, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5620, $P5624
  fallback919:
    $P5625 = $P5620."add_core_pirop_mapping"("cos_n", "cos", "NN", 1 :named("inlinable"))
.annotate 'line', 1642
    get_hll_global $P5629, "GLOBAL"
    nqp_get_package_through_who $P5628, $P5629, "QAST"
    get_who $P5627, $P5628
    set $P5626, $P5627["Operations"]
    unless_null $P5626, fallback920
    nqp_get_sc_object $P5630, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5626, $P5630
  fallback920:
    $P5631 = $P5626."add_core_pirop_mapping"("acos_n", "acos", "NN", 1 :named("inlinable"))
.annotate 'line', 1643
    get_hll_global $P5635, "GLOBAL"
    nqp_get_package_through_who $P5634, $P5635, "QAST"
    get_who $P5633, $P5634
    set $P5632, $P5633["Operations"]
    unless_null $P5632, fallback921
    nqp_get_sc_object $P5636, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5632, $P5636
  fallback921:
    $P5637 = $P5632."add_core_pirop_mapping"("tan_n", "tan", "NN", 1 :named("inlinable"))
.annotate 'line', 1644
    get_hll_global $P5641, "GLOBAL"
    nqp_get_package_through_who $P5640, $P5641, "QAST"
    get_who $P5639, $P5640
    set $P5638, $P5639["Operations"]
    unless_null $P5638, fallback922
    nqp_get_sc_object $P5642, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5638, $P5642
  fallback922:
    $P5643 = $P5638."add_core_pirop_mapping"("atan_n", "atan", "NN", 1 :named("inlinable"))
.annotate 'line', 1645
    get_hll_global $P5647, "GLOBAL"
    nqp_get_package_through_who $P5646, $P5647, "QAST"
    get_who $P5645, $P5646
    set $P5644, $P5645["Operations"]
    unless_null $P5644, fallback923
    nqp_get_sc_object $P5648, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5644, $P5648
  fallback923:
    $P5649 = $P5644."add_core_pirop_mapping"("atan2_n", "atan", "NNN", 1 :named("inlinable"))
.annotate 'line', 1646
    get_hll_global $P5653, "GLOBAL"
    nqp_get_package_through_who $P5652, $P5653, "QAST"
    get_who $P5651, $P5652
    set $P5650, $P5651["Operations"]
    unless_null $P5650, fallback924
    nqp_get_sc_object $P5654, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5650, $P5654
  fallback924:
    $P5655 = $P5650."add_core_pirop_mapping"("sec_n", "sec", "NN", 1 :named("inlinable"))
.annotate 'line', 1647
    get_hll_global $P5659, "GLOBAL"
    nqp_get_package_through_who $P5658, $P5659, "QAST"
    get_who $P5657, $P5658
    set $P5656, $P5657["Operations"]
    unless_null $P5656, fallback925
    nqp_get_sc_object $P5660, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5656, $P5660
  fallback925:
    $P5661 = $P5656."add_core_pirop_mapping"("asec_n", "asec", "NN", 1 :named("inlinable"))
.annotate 'line', 1648
    get_hll_global $P5665, "GLOBAL"
    nqp_get_package_through_who $P5664, $P5665, "QAST"
    get_who $P5663, $P5664
    set $P5662, $P5663["Operations"]
    unless_null $P5662, fallback926
    nqp_get_sc_object $P5666, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5662, $P5666
  fallback926:
    $P5667 = $P5662."add_core_pirop_mapping"("sin_n", "sin", "NN", 1 :named("inlinable"))
.annotate 'line', 1649
    get_hll_global $P5671, "GLOBAL"
    nqp_get_package_through_who $P5670, $P5671, "QAST"
    get_who $P5669, $P5670
    set $P5668, $P5669["Operations"]
    unless_null $P5668, fallback927
    nqp_get_sc_object $P5672, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5668, $P5672
  fallback927:
    $P5673 = $P5668."add_core_pirop_mapping"("asin_n", "asin", "NN", 1 :named("inlinable"))
.annotate 'line', 1650
    get_hll_global $P5677, "GLOBAL"
    nqp_get_package_through_who $P5676, $P5677, "QAST"
    get_who $P5675, $P5676
    set $P5674, $P5675["Operations"]
    unless_null $P5674, fallback928
    nqp_get_sc_object $P5678, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5674, $P5678
  fallback928:
    $P5679 = $P5674."add_core_pirop_mapping"("sinh_n", "sinh", "NN", 1 :named("inlinable"))
.annotate 'line', 1651
    get_hll_global $P5683, "GLOBAL"
    nqp_get_package_through_who $P5682, $P5683, "QAST"
    get_who $P5681, $P5682
    set $P5680, $P5681["Operations"]
    unless_null $P5680, fallback929
    nqp_get_sc_object $P5684, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5680, $P5684
  fallback929:
    $P5685 = $P5680."add_core_pirop_mapping"("cosh_n", "cosh", "NN", 1 :named("inlinable"))
.annotate 'line', 1652
    get_hll_global $P5689, "GLOBAL"
    nqp_get_package_through_who $P5688, $P5689, "QAST"
    get_who $P5687, $P5688
    set $P5686, $P5687["Operations"]
    unless_null $P5686, fallback930
    nqp_get_sc_object $P5690, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5686, $P5690
  fallback930:
    $P5691 = $P5686."add_core_pirop_mapping"("tanh_n", "tanh", "NN", 1 :named("inlinable"))
.annotate 'line', 1653
    get_hll_global $P5695, "GLOBAL"
    nqp_get_package_through_who $P5694, $P5695, "QAST"
    get_who $P5693, $P5694
    set $P5692, $P5693["Operations"]
    unless_null $P5692, fallback931
    nqp_get_sc_object $P5696, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5692, $P5696
  fallback931:
    $P5697 = $P5692."add_core_pirop_mapping"("sech_n", "sech", "NN", 1 :named("inlinable"))
.annotate 'line', 1656
    get_hll_global $P5701, "GLOBAL"
    nqp_get_package_through_who $P5700, $P5701, "QAST"
    get_who $P5699, $P5700
    set $P5698, $P5699["Operations"]
    unless_null $P5698, fallback932
    nqp_get_sc_object $P5702, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5698, $P5702
  fallback932:
    $P5703 = $P5698."add_core_pirop_mapping"("bitor_i", "bor", "Iii", 1 :named("inlinable"))
.annotate 'line', 1657
    get_hll_global $P5707, "GLOBAL"
    nqp_get_package_through_who $P5706, $P5707, "QAST"
    get_who $P5705, $P5706
    set $P5704, $P5705["Operations"]
    unless_null $P5704, fallback933
    nqp_get_sc_object $P5708, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5704, $P5708
  fallback933:
    $P5709 = $P5704."add_core_pirop_mapping"("bitor_I", "nqp_bigint_bor", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1658
    get_hll_global $P5713, "GLOBAL"
    nqp_get_package_through_who $P5712, $P5713, "QAST"
    get_who $P5711, $P5712
    set $P5710, $P5711["Operations"]
    unless_null $P5710, fallback934
    nqp_get_sc_object $P5714, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5710, $P5714
  fallback934:
    $P5715 = $P5710."add_core_pirop_mapping"("bitxor_i", "bxor", "Iii", 1 :named("inlinable"))
.annotate 'line', 1659
    get_hll_global $P5719, "GLOBAL"
    nqp_get_package_through_who $P5718, $P5719, "QAST"
    get_who $P5717, $P5718
    set $P5716, $P5717["Operations"]
    unless_null $P5716, fallback935
    nqp_get_sc_object $P5720, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5716, $P5720
  fallback935:
    $P5721 = $P5716."add_core_pirop_mapping"("bitxor_I", "nqp_bigint_bxor", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1660
    get_hll_global $P5725, "GLOBAL"
    nqp_get_package_through_who $P5724, $P5725, "QAST"
    get_who $P5723, $P5724
    set $P5722, $P5723["Operations"]
    unless_null $P5722, fallback936
    nqp_get_sc_object $P5726, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5722, $P5726
  fallback936:
    $P5727 = $P5722."add_core_pirop_mapping"("bitand_i", "band", "Iii", 1 :named("inlinable"))
.annotate 'line', 1661
    get_hll_global $P5731, "GLOBAL"
    nqp_get_package_through_who $P5730, $P5731, "QAST"
    get_who $P5729, $P5730
    set $P5728, $P5729["Operations"]
    unless_null $P5728, fallback937
    nqp_get_sc_object $P5732, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5728, $P5732
  fallback937:
    $P5733 = $P5728."add_core_pirop_mapping"("bitand_I", "nqp_bigint_band", "PPPP", 1 :named("inlinable"))
.annotate 'line', 1662
    get_hll_global $P5737, "GLOBAL"
    nqp_get_package_through_who $P5736, $P5737, "QAST"
    get_who $P5735, $P5736
    set $P5734, $P5735["Operations"]
    unless_null $P5734, fallback938
    nqp_get_sc_object $P5738, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5734, $P5738
  fallback938:
    $P5739 = $P5734."add_core_pirop_mapping"("bitneg_i", "bnot", "Ii", 1 :named("inlinable"))
.annotate 'line', 1663
    get_hll_global $P5743, "GLOBAL"
    nqp_get_package_through_who $P5742, $P5743, "QAST"
    get_who $P5741, $P5742
    set $P5740, $P5741["Operations"]
    unless_null $P5740, fallback939
    nqp_get_sc_object $P5744, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5740, $P5744
  fallback939:
    $P5745 = $P5740."add_core_pirop_mapping"("bitneg_I", "nqp_bigint_bnot", "PPP", 1 :named("inlinable"))
.annotate 'line', 1664
    get_hll_global $P5749, "GLOBAL"
    nqp_get_package_through_who $P5748, $P5749, "QAST"
    get_who $P5747, $P5748
    set $P5746, $P5747["Operations"]
    unless_null $P5746, fallback940
    nqp_get_sc_object $P5750, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5746, $P5750
  fallback940:
    $P5751 = $P5746."add_core_pirop_mapping"("bitshiftl_i", "shl", "Iii", 1 :named("inlinable"))
.annotate 'line', 1665
    get_hll_global $P5755, "GLOBAL"
    nqp_get_package_through_who $P5754, $P5755, "QAST"
    get_who $P5753, $P5754
    set $P5752, $P5753["Operations"]
    unless_null $P5752, fallback941
    nqp_get_sc_object $P5756, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5752, $P5756
  fallback941:
    $P5757 = $P5752."add_core_pirop_mapping"("bitshiftl_I", "nqp_bigint_shl", "PPIP", 1 :named("inlinable"))
.annotate 'line', 1666
    get_hll_global $P5761, "GLOBAL"
    nqp_get_package_through_who $P5760, $P5761, "QAST"
    get_who $P5759, $P5760
    set $P5758, $P5759["Operations"]
    unless_null $P5758, fallback942
    nqp_get_sc_object $P5762, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5758, $P5762
  fallback942:
    $P5763 = $P5758."add_core_pirop_mapping"("bitshiftr_i", "shr", "Iii", 1 :named("inlinable"))
.annotate 'line', 1667
    get_hll_global $P5767, "GLOBAL"
    nqp_get_package_through_who $P5766, $P5767, "QAST"
    get_who $P5765, $P5766
    set $P5764, $P5765["Operations"]
    unless_null $P5764, fallback943
    nqp_get_sc_object $P5768, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5764, $P5768
  fallback943:
    $P5769 = $P5764."add_core_pirop_mapping"("bitshiftr_I", "nqp_bigint_shr", "PPIP", 1 :named("inlinable"))
.annotate 'line', 1670
    get_hll_global $P5773, "GLOBAL"
    nqp_get_package_through_who $P5772, $P5773, "QAST"
    get_who $P5771, $P5772
    set $P5770, $P5771["Operations"]
    unless_null $P5770, fallback944
    nqp_get_sc_object $P5774, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5770, $P5774
  fallback944:
    $P5775 = $P5770."add_core_pirop_mapping"("bitor_s", "bors", "Sss", 1 :named("inlinable"))
.annotate 'line', 1671
    get_hll_global $P5779, "GLOBAL"
    nqp_get_package_through_who $P5778, $P5779, "QAST"
    get_who $P5777, $P5778
    set $P5776, $P5777["Operations"]
    unless_null $P5776, fallback945
    nqp_get_sc_object $P5780, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5776, $P5780
  fallback945:
    $P5781 = $P5776."add_core_pirop_mapping"("bitxor_s", "bxors", "Sss", 1 :named("inlinable"))
.annotate 'line', 1672
    get_hll_global $P5785, "GLOBAL"
    nqp_get_package_through_who $P5784, $P5785, "QAST"
    get_who $P5783, $P5784
    set $P5782, $P5783["Operations"]
    unless_null $P5782, fallback946
    nqp_get_sc_object $P5786, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5782, $P5786
  fallback946:
    $P5787 = $P5782."add_core_pirop_mapping"("bitand_s", "bands", "Sss", 1 :named("inlinable"))
.annotate 'line', 1675
    get_hll_global $P5791, "GLOBAL"
    nqp_get_package_through_who $P5790, $P5791, "QAST"
    get_who $P5789, $P5790
    set $P5788, $P5789["Operations"]
    unless_null $P5788, fallback947
    nqp_get_sc_object $P5792, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5788, $P5792
  fallback947:
    $P5793 = $P5788."add_core_pirop_mapping"("chars", "length", "Is", 1 :named("inlinable"))
.annotate 'line', 1676
    get_hll_global $P5797, "GLOBAL"
    nqp_get_package_through_who $P5796, $P5797, "QAST"
    get_who $P5795, $P5796
    set $P5794, $P5795["Operations"]
    unless_null $P5794, fallback948
    nqp_get_sc_object $P5798, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5794, $P5798
  fallback948:
    $P5799 = $P5794."add_core_pirop_mapping"("concat", "concat", "Sss", 1 :named("inlinable"))
.annotate 'line', 1677
    get_hll_global $P5803, "GLOBAL"
    nqp_get_package_through_who $P5802, $P5803, "QAST"
    get_who $P5801, $P5802
    set $P5800, $P5801["Operations"]
    unless_null $P5800, fallback949
    nqp_get_sc_object $P5804, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5800, $P5804
  fallback949:
    $P5805 = $P5800."add_core_pirop_mapping"("concat_s", "concat", "Sss", 1 :named("inlinable"))
.annotate 'line', 1678
    get_hll_global $P5809, "GLOBAL"
    nqp_get_package_through_who $P5808, $P5809, "QAST"
    get_who $P5807, $P5808
    set $P5806, $P5807["Operations"]
    unless_null $P5806, fallback950
    nqp_get_sc_object $P5810, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5806, $P5810
  fallback950:
    $P5811 = $P5806."add_core_pirop_mapping"("join", "join", "SsP", 1 :named("inlinable"))
.annotate 'line', 1679
    get_hll_global $P5815, "GLOBAL"
    nqp_get_package_through_who $P5814, $P5815, "QAST"
    get_who $P5813, $P5814
    set $P5812, $P5813["Operations"]
    unless_null $P5812, fallback951
    nqp_get_sc_object $P5816, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5812, $P5816
  fallback951:
    $P5817 = $P5812."add_core_pirop_mapping"("split", "split", "Pss", 1 :named("inlinable"))
.annotate 'line', 1680
    get_hll_global $P5821, "GLOBAL"
    nqp_get_package_through_who $P5820, $P5821, "QAST"
    get_who $P5819, $P5820
    set $P5818, $P5819["Operations"]
    unless_null $P5818, fallback952
    nqp_get_sc_object $P5822, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5818, $P5822
  fallback952:
    $P5823 = $P5818."add_core_pirop_mapping"("chr", "chr", "Si", 1 :named("inlinable"))
.annotate 'line', 1681
    get_hll_global $P5827, "GLOBAL"
    nqp_get_package_through_who $P5826, $P5827, "QAST"
    get_who $P5825, $P5826
    set $P5824, $P5825["Operations"]
    unless_null $P5824, fallback953
    nqp_get_sc_object $P5828, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5824, $P5828
  fallback953:
    $P5829 = $P5824."add_core_pirop_mapping"("lc", "downcase", "Ss", 1 :named("inlinable"))
.annotate 'line', 1682
    get_hll_global $P5833, "GLOBAL"
    nqp_get_package_through_who $P5832, $P5833, "QAST"
    get_who $P5831, $P5832
    set $P5830, $P5831["Operations"]
    unless_null $P5830, fallback954
    nqp_get_sc_object $P5834, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5830, $P5834
  fallback954:
    $P5835 = $P5830."add_core_pirop_mapping"("uc", "upcase", "Ss", 1 :named("inlinable"))
.annotate 'line', 1683
    get_hll_global $P5839, "GLOBAL"
    nqp_get_package_through_who $P5838, $P5839, "QAST"
    get_who $P5837, $P5838
    set $P5836, $P5837["Operations"]
    unless_null $P5836, fallback955
    nqp_get_sc_object $P5840, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5836, $P5840
  fallback955:
    $P5841 = $P5836."add_core_pirop_mapping"("x", "repeat", "Ssi", 1 :named("inlinable"))
.annotate 'line', 1684
    get_hll_global $P5845, "GLOBAL"
    nqp_get_package_through_who $P5844, $P5845, "QAST"
    get_who $P5843, $P5844
    set $P5842, $P5843["Operations"]
    unless_null $P5842, fallback956
    nqp_get_sc_object $P5846, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5842, $P5846
  fallback956:
    $P5847 = $P5842."add_core_pirop_mapping"("iscclass", "is_cclass", "Iisi", 1 :named("inlinable"))
.annotate 'line', 1685
    get_hll_global $P5851, "GLOBAL"
    nqp_get_package_through_who $P5850, $P5851, "QAST"
    get_who $P5849, $P5850
    set $P5848, $P5849["Operations"]
    unless_null $P5848, fallback957
    nqp_get_sc_object $P5852, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5848, $P5852
  fallback957:
    $P5853 = $P5848."add_core_pirop_mapping"("findnotcclass", "find_not_cclass", "Iisii", 1 :named("inlinable"))
.annotate 'line', 1686
    get_hll_global $P5857, "GLOBAL"
    nqp_get_package_through_who $P5856, $P5857, "QAST"
    get_who $P5855, $P5856
    set $P5854, $P5855["Operations"]
    unless_null $P5854, fallback958
    nqp_get_sc_object $P5858, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5854, $P5858
  fallback958:
    $P5859 = $P5854."add_core_pirop_mapping"("sprintf", "sprintf", "SsP", 1 :named("inlinable"))
.annotate 'line', 1689
    get_hll_global $P5863, "GLOBAL"
    nqp_get_package_through_who $P5862, $P5863, "QAST"
    get_who $P5861, $P5862
    set $P5860, $P5861["Operations"]
    unless_null $P5860, fallback959
    nqp_get_sc_object $P5864, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5860, $P5864
  fallback959:
    $P5865 = $P5860."add_core_pirop_mapping"("substr2", "substr", "Ssi", 1 :named("inlinable"))
.annotate 'line', 1690
    get_hll_global $P5869, "GLOBAL"
    nqp_get_package_through_who $P5868, $P5869, "QAST"
    get_who $P5867, $P5868
    set $P5866, $P5867["Operations"]
    unless_null $P5866, fallback960
    nqp_get_sc_object $P5870, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5866, $P5870
  fallback960:
    $P5871 = $P5866."add_core_pirop_mapping"("substr3", "substr", "Ssii", 1 :named("inlinable"))
.annotate 'line', 1691
    get_hll_global $P5875, "GLOBAL"
    nqp_get_package_through_who $P5874, $P5875, "QAST"
    get_who $P5873, $P5874
    set $P5872, $P5873["Operations"]
    unless_null $P5872, fallback961
    nqp_get_sc_object $P5876, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5872, $P5876
  fallback961:
    .const 'Sub' $P5878 = 'cuid_246_1347104163.3' 
    capture_lex $P5878
    newclosure $P5877, $P5878
    $P5879 = $P5872."add_core_op"("substr", $P5877, 1 :named("inlinable"))
.annotate 'line', 1699
    get_hll_global $P5883, "GLOBAL"
    nqp_get_package_through_who $P5882, $P5883, "QAST"
    get_who $P5881, $P5882
    set $P5880, $P5881["Operations"]
    unless_null $P5880, fallback966
    nqp_get_sc_object $P5884, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5880, $P5884
  fallback966:
    $P5885 = $P5880."add_core_pirop_mapping"("ordfirst", "ord", "Is", 1 :named("inlinable"))
.annotate 'line', 1700
    get_hll_global $P5889, "GLOBAL"
    nqp_get_package_through_who $P5888, $P5889, "QAST"
    get_who $P5887, $P5888
    set $P5886, $P5887["Operations"]
    unless_null $P5886, fallback967
    nqp_get_sc_object $P5890, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5886, $P5890
  fallback967:
    $P5891 = $P5886."add_core_pirop_mapping"("ordat", "ord", "Isi", 1 :named("inlinable"))
.annotate 'line', 1701
    get_hll_global $P5895, "GLOBAL"
    nqp_get_package_through_who $P5894, $P5895, "QAST"
    get_who $P5893, $P5894
    set $P5892, $P5893["Operations"]
    unless_null $P5892, fallback968
    nqp_get_sc_object $P5896, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5892, $P5896
  fallback968:
    .const 'Sub' $P5898 = 'cuid_247_1347104163.3' 
    capture_lex $P5898
    newclosure $P5897, $P5898
    $P5899 = $P5892."add_core_op"("ord", $P5897, 1 :named("inlinable"))
.annotate 'line', 1709
    get_hll_global $P5903, "GLOBAL"
    nqp_get_package_through_who $P5902, $P5903, "QAST"
    get_who $P5901, $P5902
    set $P5900, $P5901["Operations"]
    unless_null $P5900, fallback973
    nqp_get_sc_object $P5904, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5900, $P5904
  fallback973:
    $P5905 = $P5900."add_core_pirop_mapping"("indexfrom", "index", "Issi", 1 :named("inlinable"))
.annotate 'line', 1710
    get_hll_global $P5909, "GLOBAL"
    nqp_get_package_through_who $P5908, $P5909, "QAST"
    get_who $P5907, $P5908
    set $P5906, $P5907["Operations"]
    unless_null $P5906, fallback974
    nqp_get_sc_object $P5910, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5906, $P5910
  fallback974:
    .const 'Sub' $P5912 = 'cuid_248_1347104163.3' 
    capture_lex $P5912
    newclosure $P5911, $P5912
    $P5913 = $P5906."add_core_op"("index", $P5911, 1 :named("inlinable"))
.annotate 'line', 1716
    get_hll_global $P5917, "GLOBAL"
    nqp_get_package_through_who $P5916, $P5917, "QAST"
    get_who $P5915, $P5916
    set $P5914, $P5915["Operations"]
    unless_null $P5914, fallback980
    nqp_get_sc_object $P5918, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5914, $P5918
  fallback980:
    $P5919 = $P5914."add_core_pirop_mapping"("rindexfrom", "rindex", "Issi", 1 :named("inlinable"))
.annotate 'line', 1717
    get_hll_global $P5923, "GLOBAL"
    nqp_get_package_through_who $P5922, $P5923, "QAST"
    get_who $P5921, $P5922
    set $P5920, $P5921["Operations"]
    unless_null $P5920, fallback981
    nqp_get_sc_object $P5924, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5920, $P5924
  fallback981:
    $P5925 = $P5920."add_core_pirop_mapping"("rindexfromend", "rindex", "Iss", 1 :named("inlinable"))
.annotate 'line', 1718
    get_hll_global $P5929, "GLOBAL"
    nqp_get_package_through_who $P5928, $P5929, "QAST"
    get_who $P5927, $P5928
    set $P5926, $P5927["Operations"]
    unless_null $P5926, fallback982
    nqp_get_sc_object $P5930, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5926, $P5930
  fallback982:
    .const 'Sub' $P5932 = 'cuid_249_1347104163.3' 
    capture_lex $P5932
    newclosure $P5931, $P5932
    $P5933 = $P5926."add_core_op"("rindex", $P5931, 1 :named("inlinable"))
.annotate 'line', 1726
    get_hll_global $P5937, "GLOBAL"
    nqp_get_package_through_who $P5936, $P5937, "QAST"
    get_who $P5935, $P5936
    set $P5934, $P5935["Operations"]
    unless_null $P5934, fallback987
    nqp_get_sc_object $P5938, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5934, $P5938
  fallback987:
    $P5939 = $P5934."add_core_pirop_mapping"("cmp_i", "cmp", "Iii", 1 :named("inlinable"))
.annotate 'line', 1727
    get_hll_global $P5943, "GLOBAL"
    nqp_get_package_through_who $P5942, $P5943, "QAST"
    get_who $P5941, $P5942
    set $P5940, $P5941["Operations"]
    unless_null $P5940, fallback988
    nqp_get_sc_object $P5944, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5940, $P5944
  fallback988:
    $P5945 = $P5940."add_core_pirop_mapping"("iseq_i", "iseq", "Iii", 1 :named("inlinable"))
.annotate 'line', 1728
    get_hll_global $P5949, "GLOBAL"
    nqp_get_package_through_who $P5948, $P5949, "QAST"
    get_who $P5947, $P5948
    set $P5946, $P5947["Operations"]
    unless_null $P5946, fallback989
    nqp_get_sc_object $P5950, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5946, $P5950
  fallback989:
    $P5951 = $P5946."add_core_pirop_mapping"("isne_i", "isne", "Iii", 1 :named("inlinable"))
.annotate 'line', 1729
    get_hll_global $P5955, "GLOBAL"
    nqp_get_package_through_who $P5954, $P5955, "QAST"
    get_who $P5953, $P5954
    set $P5952, $P5953["Operations"]
    unless_null $P5952, fallback990
    nqp_get_sc_object $P5956, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5952, $P5956
  fallback990:
    $P5957 = $P5952."add_core_pirop_mapping"("islt_i", "islt", "Iii", 1 :named("inlinable"))
.annotate 'line', 1730
    get_hll_global $P5961, "GLOBAL"
    nqp_get_package_through_who $P5960, $P5961, "QAST"
    get_who $P5959, $P5960
    set $P5958, $P5959["Operations"]
    unless_null $P5958, fallback991
    nqp_get_sc_object $P5962, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5958, $P5962
  fallback991:
    $P5963 = $P5958."add_core_pirop_mapping"("isle_i", "isle", "Iii", 1 :named("inlinable"))
.annotate 'line', 1731
    get_hll_global $P5967, "GLOBAL"
    nqp_get_package_through_who $P5966, $P5967, "QAST"
    get_who $P5965, $P5966
    set $P5964, $P5965["Operations"]
    unless_null $P5964, fallback992
    nqp_get_sc_object $P5968, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5964, $P5968
  fallback992:
    $P5969 = $P5964."add_core_pirop_mapping"("isgt_i", "isgt", "Iii", 1 :named("inlinable"))
.annotate 'line', 1732
    get_hll_global $P5973, "GLOBAL"
    nqp_get_package_through_who $P5972, $P5973, "QAST"
    get_who $P5971, $P5972
    set $P5970, $P5971["Operations"]
    unless_null $P5970, fallback993
    nqp_get_sc_object $P5974, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5970, $P5974
  fallback993:
    $P5975 = $P5970."add_core_pirop_mapping"("isge_i", "isge", "Iii", 1 :named("inlinable"))
.annotate 'line', 1734
    get_hll_global $P5979, "GLOBAL"
    nqp_get_package_through_who $P5978, $P5979, "QAST"
    get_who $P5977, $P5978
    set $P5976, $P5977["Operations"]
    unless_null $P5976, fallback994
    nqp_get_sc_object $P5980, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5976, $P5980
  fallback994:
    $P5981 = $P5976."add_core_pirop_mapping"("bool_I", "nqp_bigint_bool", "IP", 1 :named("inlinable"))
.annotate 'line', 1735
    get_hll_global $P5985, "GLOBAL"
    nqp_get_package_through_who $P5984, $P5985, "QAST"
    get_who $P5983, $P5984
    set $P5982, $P5983["Operations"]
    unless_null $P5982, fallback995
    nqp_get_sc_object $P5986, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5982, $P5986
  fallback995:
    $P5987 = $P5982."add_core_pirop_mapping"("cmp_I", "nqp_bigint_cmp", "IPP", 1 :named("inlinable"))
.annotate 'line', 1736
    get_hll_global $P5991, "GLOBAL"
    nqp_get_package_through_who $P5990, $P5991, "QAST"
    get_who $P5989, $P5990
    set $P5988, $P5989["Operations"]
    unless_null $P5988, fallback996
    nqp_get_sc_object $P5992, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5988, $P5992
  fallback996:
    $P5993 = $P5988."add_core_pirop_mapping"("iseq_I", "nqp_bigint_eq", "IPP", 1 :named("inlinable"))
.annotate 'line', 1737
    get_hll_global $P5997, "GLOBAL"
    nqp_get_package_through_who $P5996, $P5997, "QAST"
    get_who $P5995, $P5996
    set $P5994, $P5995["Operations"]
    unless_null $P5994, fallback997
    nqp_get_sc_object $P5998, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5994, $P5998
  fallback997:
    $P5999 = $P5994."add_core_pirop_mapping"("isne_I", "nqp_bigint_ne", "IPP", 1 :named("inlinable"))
.annotate 'line', 1738
    get_hll_global $P6003, "GLOBAL"
    nqp_get_package_through_who $P6002, $P6003, "QAST"
    get_who $P6001, $P6002
    set $P6000, $P6001["Operations"]
    unless_null $P6000, fallback998
    nqp_get_sc_object $P6004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6000, $P6004
  fallback998:
    $P6005 = $P6000."add_core_pirop_mapping"("islt_I", "nqp_bigint_lt", "IPP", 1 :named("inlinable"))
.annotate 'line', 1739
    get_hll_global $P6009, "GLOBAL"
    nqp_get_package_through_who $P6008, $P6009, "QAST"
    get_who $P6007, $P6008
    set $P6006, $P6007["Operations"]
    unless_null $P6006, fallback999
    nqp_get_sc_object $P6010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6006, $P6010
  fallback999:
    $P6011 = $P6006."add_core_pirop_mapping"("isle_I", "nqp_bigint_le", "IPP", 1 :named("inlinable"))
.annotate 'line', 1740
    get_hll_global $P6015, "GLOBAL"
    nqp_get_package_through_who $P6014, $P6015, "QAST"
    get_who $P6013, $P6014
    set $P6012, $P6013["Operations"]
    unless_null $P6012, fallback1000
    nqp_get_sc_object $P6016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6012, $P6016
  fallback1000:
    $P6017 = $P6012."add_core_pirop_mapping"("isgt_I", "nqp_bigint_gt", "IPP", 1 :named("inlinable"))
.annotate 'line', 1741
    get_hll_global $P6021, "GLOBAL"
    nqp_get_package_through_who $P6020, $P6021, "QAST"
    get_who $P6019, $P6020
    set $P6018, $P6019["Operations"]
    unless_null $P6018, fallback1001
    nqp_get_sc_object $P6022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6018, $P6022
  fallback1001:
    $P6023 = $P6018."add_core_pirop_mapping"("isge_I", "nqp_bigint_ge", "IPP", 1 :named("inlinable"))
.annotate 'line', 1743
    get_hll_global $P6027, "GLOBAL"
    nqp_get_package_through_who $P6026, $P6027, "QAST"
    get_who $P6025, $P6026
    set $P6024, $P6025["Operations"]
    unless_null $P6024, fallback1002
    nqp_get_sc_object $P6028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6024, $P6028
  fallback1002:
    $P6029 = $P6024."add_core_pirop_mapping"("cmp_n", "cmp", "Inn", 1 :named("inlinable"))
.annotate 'line', 1744
    get_hll_global $P6033, "GLOBAL"
    nqp_get_package_through_who $P6032, $P6033, "QAST"
    get_who $P6031, $P6032
    set $P6030, $P6031["Operations"]
    unless_null $P6030, fallback1003
    nqp_get_sc_object $P6034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6030, $P6034
  fallback1003:
    $P6035 = $P6030."add_core_pirop_mapping"("iseq_n", "iseq", "Inn", 1 :named("inlinable"))
.annotate 'line', 1745
    get_hll_global $P6039, "GLOBAL"
    nqp_get_package_through_who $P6038, $P6039, "QAST"
    get_who $P6037, $P6038
    set $P6036, $P6037["Operations"]
    unless_null $P6036, fallback1004
    nqp_get_sc_object $P6040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6036, $P6040
  fallback1004:
    $P6041 = $P6036."add_core_pirop_mapping"("isne_n", "isne", "Inn", 1 :named("inlinable"))
.annotate 'line', 1746
    get_hll_global $P6045, "GLOBAL"
    nqp_get_package_through_who $P6044, $P6045, "QAST"
    get_who $P6043, $P6044
    set $P6042, $P6043["Operations"]
    unless_null $P6042, fallback1005
    nqp_get_sc_object $P6046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6042, $P6046
  fallback1005:
    $P6047 = $P6042."add_core_pirop_mapping"("islt_n", "islt", "Inn", 1 :named("inlinable"))
.annotate 'line', 1747
    get_hll_global $P6051, "GLOBAL"
    nqp_get_package_through_who $P6050, $P6051, "QAST"
    get_who $P6049, $P6050
    set $P6048, $P6049["Operations"]
    unless_null $P6048, fallback1006
    nqp_get_sc_object $P6052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6048, $P6052
  fallback1006:
    $P6053 = $P6048."add_core_pirop_mapping"("isle_n", "isle", "Inn", 1 :named("inlinable"))
.annotate 'line', 1748
    get_hll_global $P6057, "GLOBAL"
    nqp_get_package_through_who $P6056, $P6057, "QAST"
    get_who $P6055, $P6056
    set $P6054, $P6055["Operations"]
    unless_null $P6054, fallback1007
    nqp_get_sc_object $P6058, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6054, $P6058
  fallback1007:
    $P6059 = $P6054."add_core_pirop_mapping"("isgt_n", "isgt", "Inn", 1 :named("inlinable"))
.annotate 'line', 1749
    get_hll_global $P6063, "GLOBAL"
    nqp_get_package_through_who $P6062, $P6063, "QAST"
    get_who $P6061, $P6062
    set $P6060, $P6061["Operations"]
    unless_null $P6060, fallback1008
    nqp_get_sc_object $P6064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6060, $P6064
  fallback1008:
    $P6065 = $P6060."add_core_pirop_mapping"("isge_n", "isge", "Inn", 1 :named("inlinable"))
.annotate 'line', 1751
    get_hll_global $P6069, "GLOBAL"
    nqp_get_package_through_who $P6068, $P6069, "QAST"
    get_who $P6067, $P6068
    set $P6066, $P6067["Operations"]
    unless_null $P6066, fallback1009
    nqp_get_sc_object $P6070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6066, $P6070
  fallback1009:
    $P6071 = $P6066."add_core_pirop_mapping"("cmp_s", "cmp", "Iss", 1 :named("inlinable"))
.annotate 'line', 1752
    get_hll_global $P6075, "GLOBAL"
    nqp_get_package_through_who $P6074, $P6075, "QAST"
    get_who $P6073, $P6074
    set $P6072, $P6073["Operations"]
    unless_null $P6072, fallback1010
    nqp_get_sc_object $P6076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6072, $P6076
  fallback1010:
    $P6077 = $P6072."add_core_pirop_mapping"("iseq_s", "iseq", "Iss", 1 :named("inlinable"))
.annotate 'line', 1753
    get_hll_global $P6081, "GLOBAL"
    nqp_get_package_through_who $P6080, $P6081, "QAST"
    get_who $P6079, $P6080
    set $P6078, $P6079["Operations"]
    unless_null $P6078, fallback1011
    nqp_get_sc_object $P6082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6078, $P6082
  fallback1011:
    $P6083 = $P6078."add_core_pirop_mapping"("isne_s", "isne", "Iss", 1 :named("inlinable"))
.annotate 'line', 1754
    get_hll_global $P6087, "GLOBAL"
    nqp_get_package_through_who $P6086, $P6087, "QAST"
    get_who $P6085, $P6086
    set $P6084, $P6085["Operations"]
    unless_null $P6084, fallback1012
    nqp_get_sc_object $P6088, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6084, $P6088
  fallback1012:
    $P6089 = $P6084."add_core_pirop_mapping"("islt_s", "islt", "Iss", 1 :named("inlinable"))
.annotate 'line', 1755
    get_hll_global $P6093, "GLOBAL"
    nqp_get_package_through_who $P6092, $P6093, "QAST"
    get_who $P6091, $P6092
    set $P6090, $P6091["Operations"]
    unless_null $P6090, fallback1013
    nqp_get_sc_object $P6094, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6090, $P6094
  fallback1013:
    $P6095 = $P6090."add_core_pirop_mapping"("isle_s", "isle", "Iss", 1 :named("inlinable"))
.annotate 'line', 1756
    get_hll_global $P6099, "GLOBAL"
    nqp_get_package_through_who $P6098, $P6099, "QAST"
    get_who $P6097, $P6098
    set $P6096, $P6097["Operations"]
    unless_null $P6096, fallback1014
    nqp_get_sc_object $P6100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6096, $P6100
  fallback1014:
    $P6101 = $P6096."add_core_pirop_mapping"("isgt_s", "isgt", "Iss", 1 :named("inlinable"))
.annotate 'line', 1757
    get_hll_global $P6105, "GLOBAL"
    nqp_get_package_through_who $P6104, $P6105, "QAST"
    get_who $P6103, $P6104
    set $P6102, $P6103["Operations"]
    unless_null $P6102, fallback1015
    nqp_get_sc_object $P6106, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6102, $P6106
  fallback1015:
    $P6107 = $P6102."add_core_pirop_mapping"("isge_s", "isge", "Iss", 1 :named("inlinable"))
.annotate 'line', 1760
    get_hll_global $P6111, "GLOBAL"
    nqp_get_package_through_who $P6110, $P6111, "QAST"
    get_who $P6109, $P6110
    set $P6108, $P6109["Operations"]
    unless_null $P6108, fallback1016
    nqp_get_sc_object $P6112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6108, $P6112
  fallback1016:
    $P6113 = $P6108."add_core_pirop_mapping"("fromstr_I", "nqp_bigint_from_str", "PsP", 1 :named("inlinable"))
.annotate 'line', 1761
    get_hll_global $P6117, "GLOBAL"
    nqp_get_package_through_who $P6116, $P6117, "QAST"
    get_who $P6115, $P6116
    set $P6114, $P6115["Operations"]
    unless_null $P6114, fallback1017
    nqp_get_sc_object $P6118, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6114, $P6118
  fallback1017:
    $P6119 = $P6114."add_core_pirop_mapping"("tostr_I", "nqp_bigint_to_str", "SP", 1 :named("inlinable"))
.annotate 'line', 1762
    get_hll_global $P6123, "GLOBAL"
    nqp_get_package_through_who $P6122, $P6123, "QAST"
    get_who $P6121, $P6122
    set $P6120, $P6121["Operations"]
    unless_null $P6120, fallback1018
    nqp_get_sc_object $P6124, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6120, $P6124
  fallback1018:
    $P6125 = $P6120."add_core_pirop_mapping"("base_I", "nqp_bigint_to_str_base", "SPI", 1 :named("inlinable"))
.annotate 'line', 1763
    get_hll_global $P6129, "GLOBAL"
    nqp_get_package_through_who $P6128, $P6129, "QAST"
    get_who $P6127, $P6128
    set $P6126, $P6127["Operations"]
    unless_null $P6126, fallback1019
    nqp_get_sc_object $P6130, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6126, $P6130
  fallback1019:
    $P6131 = $P6126."add_core_pirop_mapping"("isbig_I", "nqp_bigint_is_big", "IP", 1 :named("inlinable"))
.annotate 'line', 1764
    get_hll_global $P6135, "GLOBAL"
    nqp_get_package_through_who $P6134, $P6135, "QAST"
    get_who $P6133, $P6134
    set $P6132, $P6133["Operations"]
    unless_null $P6132, fallback1020
    nqp_get_sc_object $P6136, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6132, $P6136
  fallback1020:
    $P6137 = $P6132."add_core_pirop_mapping"("fromnum_I", "nqp_bigint_from_num", "PNP", 1 :named("inlinable"))
.annotate 'line', 1765
    get_hll_global $P6141, "GLOBAL"
    nqp_get_package_through_who $P6140, $P6141, "QAST"
    get_who $P6139, $P6140
    set $P6138, $P6139["Operations"]
    unless_null $P6138, fallback1021
    nqp_get_sc_object $P6142, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6138, $P6142
  fallback1021:
    $P6143 = $P6138."add_core_pirop_mapping"("tonum_I", "nqp_bigint_to_num", "NP", 1 :named("inlinable"))
.annotate 'line', 1768
    get_hll_global $P6147, "GLOBAL"
    nqp_get_package_through_who $P6146, $P6147, "QAST"
    get_who $P6145, $P6146
    set $P6144, $P6145["Operations"]
    unless_null $P6144, fallback1022
    nqp_get_sc_object $P6148, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6144, $P6148
  fallback1022:
    $P6149 = $P6144."add_core_pirop_mapping"("buildnativecall", "nqp_native_call_build", "vPsssPP")
.annotate 'line', 1769
    get_hll_global $P6153, "GLOBAL"
    nqp_get_package_through_who $P6152, $P6153, "QAST"
    get_who $P6151, $P6152
    set $P6150, $P6151["Operations"]
    unless_null $P6150, fallback1023
    nqp_get_sc_object $P6154, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6150, $P6154
  fallback1023:
    $P6155 = $P6150."add_core_pirop_mapping"("nativecall", "nqp_native_call", "PPPP")
.annotate 'line', 1770
    get_hll_global $P6159, "GLOBAL"
    nqp_get_package_through_who $P6158, $P6159, "QAST"
    get_who $P6157, $P6158
    set $P6156, $P6157["Operations"]
    unless_null $P6156, fallback1024
    nqp_get_sc_object $P6160, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6156, $P6160
  fallback1024:
    $P6161 = $P6156."add_core_pirop_mapping"("nativecallrefresh", "nqp_native_call_wb", "vP")
.annotate 'line', 1773
    get_hll_global $P6165, "GLOBAL"
    nqp_get_package_through_who $P6164, $P6165, "QAST"
    get_who $P6163, $P6164
    set $P6162, $P6163["Operations"]
    unless_null $P6162, fallback1025
    nqp_get_sc_object $P6166, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6162, $P6166
  fallback1025:
    $P6167 = $P6162."add_core_pirop_mapping"("not_i", "not", "Ii", 1 :named("inlinable"))
.annotate 'line', 1776
    get_hll_global $P6171, "GLOBAL"
    nqp_get_package_through_who $P6170, $P6171, "QAST"
    get_who $P6169, $P6170
    set $P6168, $P6169["Operations"]
    unless_null $P6168, fallback1026
    nqp_get_sc_object $P6172, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6168, $P6172
  fallback1026:
    $P6173 = $P6168."add_core_pirop_mapping"("atkey", "set", "PQs", 1 :named("inlinable"))
.annotate 'line', 1777
    get_hll_global $P6177, "GLOBAL"
    nqp_get_package_through_who $P6176, $P6177, "QAST"
    get_who $P6175, $P6176
    set $P6174, $P6175["Operations"]
    unless_null $P6174, fallback1027
    nqp_get_sc_object $P6178, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6174, $P6178
  fallback1027:
    $P6179 = $P6174."add_core_pirop_mapping"("atkey_i", "set", "IQs", 1 :named("inlinable"))
.annotate 'line', 1778
    get_hll_global $P6183, "GLOBAL"
    nqp_get_package_through_who $P6182, $P6183, "QAST"
    get_who $P6181, $P6182
    set $P6180, $P6181["Operations"]
    unless_null $P6180, fallback1028
    nqp_get_sc_object $P6184, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6180, $P6184
  fallback1028:
    $P6185 = $P6180."add_core_pirop_mapping"("atkey_n", "set", "NQs", 1 :named("inlinable"))
.annotate 'line', 1779
    get_hll_global $P6189, "GLOBAL"
    nqp_get_package_through_who $P6188, $P6189, "QAST"
    get_who $P6187, $P6188
    set $P6186, $P6187["Operations"]
    unless_null $P6186, fallback1029
    nqp_get_sc_object $P6190, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6186, $P6190
  fallback1029:
    $P6191 = $P6186."add_core_pirop_mapping"("atkey_s", "set", "SQs", 1 :named("inlinable"))
.annotate 'line', 1780
    get_hll_global $P6195, "GLOBAL"
    nqp_get_package_through_who $P6194, $P6195, "QAST"
    get_who $P6193, $P6194
    set $P6192, $P6193["Operations"]
    unless_null $P6192, fallback1030
    nqp_get_sc_object $P6196, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6192, $P6196
  fallback1030:
    $P6197 = $P6192."add_core_pirop_mapping"("atpos", "set", "PQi", 1 :named("inlinable"))
.annotate 'line', 1781
    get_hll_global $P6201, "GLOBAL"
    nqp_get_package_through_who $P6200, $P6201, "QAST"
    get_who $P6199, $P6200
    set $P6198, $P6199["Operations"]
    unless_null $P6198, fallback1031
    nqp_get_sc_object $P6202, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6198, $P6202
  fallback1031:
    $P6203 = $P6198."add_core_pirop_mapping"("atpos_i", "set", "IQi", 1 :named("inlinable"))
.annotate 'line', 1782
    get_hll_global $P6207, "GLOBAL"
    nqp_get_package_through_who $P6206, $P6207, "QAST"
    get_who $P6205, $P6206
    set $P6204, $P6205["Operations"]
    unless_null $P6204, fallback1032
    nqp_get_sc_object $P6208, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6204, $P6208
  fallback1032:
    $P6209 = $P6204."add_core_pirop_mapping"("atpos_n", "set", "NQi", 1 :named("inlinable"))
.annotate 'line', 1783
    get_hll_global $P6213, "GLOBAL"
    nqp_get_package_through_who $P6212, $P6213, "QAST"
    get_who $P6211, $P6212
    set $P6210, $P6211["Operations"]
    unless_null $P6210, fallback1033
    nqp_get_sc_object $P6214, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6210, $P6214
  fallback1033:
    $P6215 = $P6210."add_core_pirop_mapping"("atpos_s", "set", "SQi", 1 :named("inlinable"))
.annotate 'line', 1784
    get_hll_global $P6219, "GLOBAL"
    nqp_get_package_through_who $P6218, $P6219, "QAST"
    get_who $P6217, $P6218
    set $P6216, $P6217["Operations"]
    unless_null $P6216, fallback1034
    nqp_get_sc_object $P6220, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6216, $P6220
  fallback1034:
    $P6221 = $P6216."add_core_pirop_mapping"("bindkey", "set", "1QsP", 1 :named("inlinable"))
.annotate 'line', 1785
    get_hll_global $P6225, "GLOBAL"
    nqp_get_package_through_who $P6224, $P6225, "QAST"
    get_who $P6223, $P6224
    set $P6222, $P6223["Operations"]
    unless_null $P6222, fallback1035
    nqp_get_sc_object $P6226, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6222, $P6226
  fallback1035:
    $P6227 = $P6222."add_core_pirop_mapping"("bindkey_i", "set", "1QsI", 1 :named("inlinable"))
.annotate 'line', 1786
    get_hll_global $P6231, "GLOBAL"
    nqp_get_package_through_who $P6230, $P6231, "QAST"
    get_who $P6229, $P6230
    set $P6228, $P6229["Operations"]
    unless_null $P6228, fallback1036
    nqp_get_sc_object $P6232, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6228, $P6232
  fallback1036:
    $P6233 = $P6228."add_core_pirop_mapping"("bindkey_n", "set", "1QsN", 1 :named("inlinable"))
.annotate 'line', 1787
    get_hll_global $P6237, "GLOBAL"
    nqp_get_package_through_who $P6236, $P6237, "QAST"
    get_who $P6235, $P6236
    set $P6234, $P6235["Operations"]
    unless_null $P6234, fallback1037
    nqp_get_sc_object $P6238, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6234, $P6238
  fallback1037:
    $P6239 = $P6234."add_core_pirop_mapping"("bindkey_s", "set", "1QsS", 1 :named("inlinable"))
.annotate 'line', 1788
    get_hll_global $P6243, "GLOBAL"
    nqp_get_package_through_who $P6242, $P6243, "QAST"
    get_who $P6241, $P6242
    set $P6240, $P6241["Operations"]
    unless_null $P6240, fallback1038
    nqp_get_sc_object $P6244, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6240, $P6244
  fallback1038:
    $P6245 = $P6240."add_core_pirop_mapping"("bindpos", "set", "1QiP", 1 :named("inlinable"))
.annotate 'line', 1789
    get_hll_global $P6249, "GLOBAL"
    nqp_get_package_through_who $P6248, $P6249, "QAST"
    get_who $P6247, $P6248
    set $P6246, $P6247["Operations"]
    unless_null $P6246, fallback1039
    nqp_get_sc_object $P6250, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6246, $P6250
  fallback1039:
    $P6251 = $P6246."add_core_pirop_mapping"("bindpos_i", "set", "1Qii", 1 :named("inlinable"))
.annotate 'line', 1790
    get_hll_global $P6255, "GLOBAL"
    nqp_get_package_through_who $P6254, $P6255, "QAST"
    get_who $P6253, $P6254
    set $P6252, $P6253["Operations"]
    unless_null $P6252, fallback1040
    nqp_get_sc_object $P6256, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6252, $P6256
  fallback1040:
    $P6257 = $P6252."add_core_pirop_mapping"("bindpos_n", "set", "1Qin", 1 :named("inlinable"))
.annotate 'line', 1791
    get_hll_global $P6261, "GLOBAL"
    nqp_get_package_through_who $P6260, $P6261, "QAST"
    get_who $P6259, $P6260
    set $P6258, $P6259["Operations"]
    unless_null $P6258, fallback1041
    nqp_get_sc_object $P6262, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6258, $P6262
  fallback1041:
    $P6263 = $P6258."add_core_pirop_mapping"("bindpos_s", "set", "1Qis", 1 :named("inlinable"))
.annotate 'line', 1792
    get_hll_global $P6267, "GLOBAL"
    nqp_get_package_through_who $P6266, $P6267, "QAST"
    get_who $P6265, $P6266
    set $P6264, $P6265["Operations"]
    unless_null $P6264, fallback1042
    nqp_get_sc_object $P6268, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6264, $P6268
  fallback1042:
    $P6269 = $P6264."add_core_pirop_mapping"("deletekey", "delete", "0Qs", 1 :named("inlinable"))
.annotate 'line', 1793
    get_hll_global $P6273, "GLOBAL"
    nqp_get_package_through_who $P6272, $P6273, "QAST"
    get_who $P6271, $P6272
    set $P6270, $P6271["Operations"]
    unless_null $P6270, fallback1043
    nqp_get_sc_object $P6274, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6270, $P6274
  fallback1043:
    $P6275 = $P6270."add_core_pirop_mapping"("deletepos", "delete", "0Qi", 1 :named("inlinable"))
.annotate 'line', 1794
    get_hll_global $P6279, "GLOBAL"
    nqp_get_package_through_who $P6278, $P6279, "QAST"
    get_who $P6277, $P6278
    set $P6276, $P6277["Operations"]
    unless_null $P6276, fallback1044
    nqp_get_sc_object $P6280, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6276, $P6280
  fallback1044:
    $P6281 = $P6276."add_core_pirop_mapping"("existskey", "exists", "IQs", 1 :named("inlinable"))
.annotate 'line', 1795
    get_hll_global $P6285, "GLOBAL"
    nqp_get_package_through_who $P6284, $P6285, "QAST"
    get_who $P6283, $P6284
    set $P6282, $P6283["Operations"]
    unless_null $P6282, fallback1045
    nqp_get_sc_object $P6286, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6282, $P6286
  fallback1045:
    $P6287 = $P6282."add_core_pirop_mapping"("existspos", "exists", "IQi", 1 :named("inlinable"))
.annotate 'line', 1796
    get_hll_global $P6291, "GLOBAL"
    nqp_get_package_through_who $P6290, $P6291, "QAST"
    get_who $P6289, $P6290
    set $P6288, $P6289["Operations"]
    unless_null $P6288, fallback1046
    nqp_get_sc_object $P6292, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6288, $P6292
  fallback1046:
    $P6293 = $P6288."add_core_pirop_mapping"("elems", "elements", "IP", 1 :named("inlinable"))
.annotate 'line', 1797
    get_hll_global $P6297, "GLOBAL"
    nqp_get_package_through_who $P6296, $P6297, "QAST"
    get_who $P6295, $P6296
    set $P6294, $P6295["Operations"]
    unless_null $P6294, fallback1047
    nqp_get_sc_object $P6298, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6294, $P6298
  fallback1047:
    $P6299 = $P6294."add_core_pirop_mapping"("iterator", "iter", "PP", 1 :named("inlinable"))
.annotate 'line', 1798
    get_hll_global $P6303, "GLOBAL"
    nqp_get_package_through_who $P6302, $P6303, "QAST"
    get_who $P6301, $P6302
    set $P6300, $P6301["Operations"]
    unless_null $P6300, fallback1048
    nqp_get_sc_object $P6304, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6300, $P6304
  fallback1048:
    $P6305 = $P6300."add_core_pirop_mapping"("push", "push", "0PP", 1 :named("inlinable"))
.annotate 'line', 1799
    get_hll_global $P6309, "GLOBAL"
    nqp_get_package_through_who $P6308, $P6309, "QAST"
    get_who $P6307, $P6308
    set $P6306, $P6307["Operations"]
    unless_null $P6306, fallback1049
    nqp_get_sc_object $P6310, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6306, $P6310
  fallback1049:
    $P6311 = $P6306."add_core_pirop_mapping"("push_s", "push", "0Ps", 1 :named("inlinable"))
.annotate 'line', 1800
    get_hll_global $P6315, "GLOBAL"
    nqp_get_package_through_who $P6314, $P6315, "QAST"
    get_who $P6313, $P6314
    set $P6312, $P6313["Operations"]
    unless_null $P6312, fallback1050
    nqp_get_sc_object $P6316, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6312, $P6316
  fallback1050:
    $P6317 = $P6312."add_core_pirop_mapping"("push_i", "push", "0Pi", 1 :named("inlinable"))
.annotate 'line', 1801
    get_hll_global $P6321, "GLOBAL"
    nqp_get_package_through_who $P6320, $P6321, "QAST"
    get_who $P6319, $P6320
    set $P6318, $P6319["Operations"]
    unless_null $P6318, fallback1051
    nqp_get_sc_object $P6322, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6318, $P6322
  fallback1051:
    $P6323 = $P6318."add_core_pirop_mapping"("push_n", "push", "0Pn", 1 :named("inlinable"))
.annotate 'line', 1802
    get_hll_global $P6327, "GLOBAL"
    nqp_get_package_through_who $P6326, $P6327, "QAST"
    get_who $P6325, $P6326
    set $P6324, $P6325["Operations"]
    unless_null $P6324, fallback1052
    nqp_get_sc_object $P6328, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6324, $P6328
  fallback1052:
    $P6329 = $P6324."add_core_pirop_mapping"("pop", "pop", "PP", 1 :named("inlinable"))
.annotate 'line', 1803
    get_hll_global $P6333, "GLOBAL"
    nqp_get_package_through_who $P6332, $P6333, "QAST"
    get_who $P6331, $P6332
    set $P6330, $P6331["Operations"]
    unless_null $P6330, fallback1053
    nqp_get_sc_object $P6334, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6330, $P6334
  fallback1053:
    $P6335 = $P6330."add_core_pirop_mapping"("pop_s", "pop", "SP", 1 :named("inlinable"))
.annotate 'line', 1804
    get_hll_global $P6339, "GLOBAL"
    nqp_get_package_through_who $P6338, $P6339, "QAST"
    get_who $P6337, $P6338
    set $P6336, $P6337["Operations"]
    unless_null $P6336, fallback1054
    nqp_get_sc_object $P6340, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6336, $P6340
  fallback1054:
    $P6341 = $P6336."add_core_pirop_mapping"("pop_i", "pop", "IP", 1 :named("inlinable"))
.annotate 'line', 1805
    get_hll_global $P6345, "GLOBAL"
    nqp_get_package_through_who $P6344, $P6345, "QAST"
    get_who $P6343, $P6344
    set $P6342, $P6343["Operations"]
    unless_null $P6342, fallback1055
    nqp_get_sc_object $P6346, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6342, $P6346
  fallback1055:
    $P6347 = $P6342."add_core_pirop_mapping"("pop_n", "pop", "NP", 1 :named("inlinable"))
.annotate 'line', 1806
    get_hll_global $P6351, "GLOBAL"
    nqp_get_package_through_who $P6350, $P6351, "QAST"
    get_who $P6349, $P6350
    set $P6348, $P6349["Operations"]
    unless_null $P6348, fallback1056
    nqp_get_sc_object $P6352, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6348, $P6352
  fallback1056:
    $P6353 = $P6348."add_core_pirop_mapping"("shift", "shift", "PP", 1 :named("inlinable"))
.annotate 'line', 1807
    get_hll_global $P6357, "GLOBAL"
    nqp_get_package_through_who $P6356, $P6357, "QAST"
    get_who $P6355, $P6356
    set $P6354, $P6355["Operations"]
    unless_null $P6354, fallback1057
    nqp_get_sc_object $P6358, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6354, $P6358
  fallback1057:
    $P6359 = $P6354."add_core_pirop_mapping"("shift_s", "shift", "SP", 1 :named("inlinable"))
.annotate 'line', 1808
    get_hll_global $P6363, "GLOBAL"
    nqp_get_package_through_who $P6362, $P6363, "QAST"
    get_who $P6361, $P6362
    set $P6360, $P6361["Operations"]
    unless_null $P6360, fallback1058
    nqp_get_sc_object $P6364, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6360, $P6364
  fallback1058:
    $P6365 = $P6360."add_core_pirop_mapping"("shift_i", "shift", "IP", 1 :named("inlinable"))
.annotate 'line', 1809
    get_hll_global $P6369, "GLOBAL"
    nqp_get_package_through_who $P6368, $P6369, "QAST"
    get_who $P6367, $P6368
    set $P6366, $P6367["Operations"]
    unless_null $P6366, fallback1059
    nqp_get_sc_object $P6370, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6366, $P6370
  fallback1059:
    $P6371 = $P6366."add_core_pirop_mapping"("shift_n", "shift", "NP", 1 :named("inlinable"))
.annotate 'line', 1810
    get_hll_global $P6375, "GLOBAL"
    nqp_get_package_through_who $P6374, $P6375, "QAST"
    get_who $P6373, $P6374
    set $P6372, $P6373["Operations"]
    unless_null $P6372, fallback1060
    nqp_get_sc_object $P6376, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6372, $P6376
  fallback1060:
    $P6377 = $P6372."add_core_pirop_mapping"("unshift", "unshift", "0PP", 1 :named("inlinable"))
.annotate 'line', 1811
    get_hll_global $P6381, "GLOBAL"
    nqp_get_package_through_who $P6380, $P6381, "QAST"
    get_who $P6379, $P6380
    set $P6378, $P6379["Operations"]
    unless_null $P6378, fallback1061
    nqp_get_sc_object $P6382, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6378, $P6382
  fallback1061:
    $P6383 = $P6378."add_core_pirop_mapping"("unshift_s", "unshift", "0Ps", 1 :named("inlinable"))
.annotate 'line', 1812
    get_hll_global $P6387, "GLOBAL"
    nqp_get_package_through_who $P6386, $P6387, "QAST"
    get_who $P6385, $P6386
    set $P6384, $P6385["Operations"]
    unless_null $P6384, fallback1062
    nqp_get_sc_object $P6388, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6384, $P6388
  fallback1062:
    $P6389 = $P6384."add_core_pirop_mapping"("unshift_i", "unshift", "0Pi", 1 :named("inlinable"))
.annotate 'line', 1813
    get_hll_global $P6393, "GLOBAL"
    nqp_get_package_through_who $P6392, $P6393, "QAST"
    get_who $P6391, $P6392
    set $P6390, $P6391["Operations"]
    unless_null $P6390, fallback1063
    nqp_get_sc_object $P6394, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6390, $P6394
  fallback1063:
    $P6395 = $P6390."add_core_pirop_mapping"("unshift_n", "unshift", "0Pn", 1 :named("inlinable"))
.annotate 'line', 1814
    get_hll_global $P6399, "GLOBAL"
    nqp_get_package_through_who $P6398, $P6399, "QAST"
    get_who $P6397, $P6398
    set $P6396, $P6397["Operations"]
    unless_null $P6396, fallback1064
    nqp_get_sc_object $P6400, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6396, $P6400
  fallback1064:
    $P6401 = $P6396."add_core_pirop_mapping"("splice", "splice", "0PPii", 1 :named("inlinable"))
.annotate 'line', 1815
    get_hll_global $P6405, "GLOBAL"
    nqp_get_package_through_who $P6404, $P6405, "QAST"
    get_who $P6403, $P6404
    set $P6402, $P6403["Operations"]
    unless_null $P6402, fallback1065
    nqp_get_sc_object $P6406, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6402, $P6406
  fallback1065:
    $P6407 = $P6402."add_core_pirop_mapping"("islist", "nqp_islist", "IP", 1 :named("inlinable"))
.annotate 'line', 1816
    get_hll_global $P6411, "GLOBAL"
    nqp_get_package_through_who $P6410, $P6411, "QAST"
    get_who $P6409, $P6410
    set $P6408, $P6409["Operations"]
    unless_null $P6408, fallback1066
    nqp_get_sc_object $P6412, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6408, $P6412
  fallback1066:
    $P6413 = $P6408."add_core_pirop_mapping"("ishash", "nqp_ishash", "IP", 1 :named("inlinable"))
.annotate 'line', 1819
    get_hll_global $P6417, "GLOBAL"
    nqp_get_package_through_who $P6416, $P6417, "QAST"
    get_who $P6415, $P6416
    set $P6414, $P6415["Operations"]
    unless_null $P6414, fallback1067
    nqp_get_sc_object $P6418, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6414, $P6418
  fallback1067:
    $P6419 = $P6414."add_core_pirop_mapping"("r_atpos", "repr_at_pos_obj", "PPi", 1 :named("inlinable"))
.annotate 'line', 1820
    get_hll_global $P6423, "GLOBAL"
    nqp_get_package_through_who $P6422, $P6423, "QAST"
    get_who $P6421, $P6422
    set $P6420, $P6421["Operations"]
    unless_null $P6420, fallback1068
    nqp_get_sc_object $P6424, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6420, $P6424
  fallback1068:
    $P6425 = $P6420."add_core_pirop_mapping"("r_atpos_i", "repr_at_pos_int", "IPi", 1 :named("inlinable"))
.annotate 'line', 1821
    get_hll_global $P6429, "GLOBAL"
    nqp_get_package_through_who $P6428, $P6429, "QAST"
    get_who $P6427, $P6428
    set $P6426, $P6427["Operations"]
    unless_null $P6426, fallback1069
    nqp_get_sc_object $P6430, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6426, $P6430
  fallback1069:
    $P6431 = $P6426."add_core_pirop_mapping"("r_atpos_n", "repr_at_pos_num", "NPi", 1 :named("inlinable"))
.annotate 'line', 1822
    get_hll_global $P6435, "GLOBAL"
    nqp_get_package_through_who $P6434, $P6435, "QAST"
    get_who $P6433, $P6434
    set $P6432, $P6433["Operations"]
    unless_null $P6432, fallback1070
    nqp_get_sc_object $P6436, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6432, $P6436
  fallback1070:
    $P6437 = $P6432."add_core_pirop_mapping"("r_bindpos", "repr_bind_pos_obj", "2PiP", 1 :named("inlinable"))
.annotate 'line', 1823
    get_hll_global $P6441, "GLOBAL"
    nqp_get_package_through_who $P6440, $P6441, "QAST"
    get_who $P6439, $P6440
    set $P6438, $P6439["Operations"]
    unless_null $P6438, fallback1071
    nqp_get_sc_object $P6442, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6438, $P6442
  fallback1071:
    $P6443 = $P6438."add_core_pirop_mapping"("r_bindpos_i", "repr_bind_pos_int", "2Pii", 1 :named("inlinable"))
.annotate 'line', 1824
    get_hll_global $P6447, "GLOBAL"
    nqp_get_package_through_who $P6446, $P6447, "QAST"
    get_who $P6445, $P6446
    set $P6444, $P6445["Operations"]
    unless_null $P6444, fallback1072
    nqp_get_sc_object $P6448, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6444, $P6448
  fallback1072:
    $P6449 = $P6444."add_core_pirop_mapping"("r_bindpos_n", "repr_bind_pos_num", "2Pin", 1 :named("inlinable"))
.annotate 'line', 1825
    get_hll_global $P6453, "GLOBAL"
    nqp_get_package_through_who $P6452, $P6453, "QAST"
    get_who $P6451, $P6452
    set $P6450, $P6451["Operations"]
    unless_null $P6450, fallback1073
    nqp_get_sc_object $P6454, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6450, $P6454
  fallback1073:
    $P6455 = $P6450."add_core_pirop_mapping"("r_elems", "repr_elems", "IP", 1 :named("inlinable"))
.annotate 'line', 1828
    get_hll_global $P6459, "GLOBAL"
    nqp_get_package_through_who $P6458, $P6459, "QAST"
    get_who $P6457, $P6458
    set $P6456, $P6457["Operations"]
    unless_null $P6456, fallback1074
    nqp_get_sc_object $P6460, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6456, $P6460
  fallback1074:
    $P6461 = $P6456."add_core_pirop_mapping"("bindattr", "setattribute", "3PPsP", 1 :named("inlinable"))
.annotate 'line', 1829
    get_hll_global $P6465, "GLOBAL"
    nqp_get_package_through_who $P6464, $P6465, "QAST"
    get_who $P6463, $P6464
    set $P6462, $P6463["Operations"]
    unless_null $P6462, fallback1075
    nqp_get_sc_object $P6466, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6462, $P6466
  fallback1075:
    $P6467 = $P6462."add_core_pirop_mapping"("bindattr_i", "repr_bind_attr_int", "3PPsi", 1 :named("inlinable"))
.annotate 'line', 1830
    get_hll_global $P6471, "GLOBAL"
    nqp_get_package_through_who $P6470, $P6471, "QAST"
    get_who $P6469, $P6470
    set $P6468, $P6469["Operations"]
    unless_null $P6468, fallback1076
    nqp_get_sc_object $P6472, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6468, $P6472
  fallback1076:
    $P6473 = $P6468."add_core_pirop_mapping"("bindattr_n", "repr_bind_attr_num", "3PPsn", 1 :named("inlinable"))
.annotate 'line', 1831
    get_hll_global $P6477, "GLOBAL"
    nqp_get_package_through_who $P6476, $P6477, "QAST"
    get_who $P6475, $P6476
    set $P6474, $P6475["Operations"]
    unless_null $P6474, fallback1077
    nqp_get_sc_object $P6478, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6474, $P6478
  fallback1077:
    $P6479 = $P6474."add_core_pirop_mapping"("bindattr_s", "repr_bind_attr_str", "3PPss", 1 :named("inlinable"))
.annotate 'line', 1832
    get_hll_global $P6483, "GLOBAL"
    nqp_get_package_through_who $P6482, $P6483, "QAST"
    get_who $P6481, $P6482
    set $P6480, $P6481["Operations"]
    unless_null $P6480, fallback1078
    nqp_get_sc_object $P6484, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6480, $P6484
  fallback1078:
    $P6485 = $P6480."add_core_pirop_mapping"("getattr", "getattribute", "PPPs", 1 :named("inlinable"))
.annotate 'line', 1833
    get_hll_global $P6489, "GLOBAL"
    nqp_get_package_through_who $P6488, $P6489, "QAST"
    get_who $P6487, $P6488
    set $P6486, $P6487["Operations"]
    unless_null $P6486, fallback1079
    nqp_get_sc_object $P6490, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6486, $P6490
  fallback1079:
    $P6491 = $P6486."add_core_pirop_mapping"("getattr_i", "repr_get_attr_int", "IPPs", 1 :named("inlinable"))
.annotate 'line', 1834
    get_hll_global $P6495, "GLOBAL"
    nqp_get_package_through_who $P6494, $P6495, "QAST"
    get_who $P6493, $P6494
    set $P6492, $P6493["Operations"]
    unless_null $P6492, fallback1080
    nqp_get_sc_object $P6496, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6492, $P6496
  fallback1080:
    $P6497 = $P6492."add_core_pirop_mapping"("getattr_n", "repr_get_attr_num", "NPPs", 1 :named("inlinable"))
.annotate 'line', 1835
    get_hll_global $P6501, "GLOBAL"
    nqp_get_package_through_who $P6500, $P6501, "QAST"
    get_who $P6499, $P6500
    set $P6498, $P6499["Operations"]
    unless_null $P6498, fallback1081
    nqp_get_sc_object $P6502, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6498, $P6502
  fallback1081:
    $P6503 = $P6498."add_core_pirop_mapping"("getattr_s", "repr_get_attr_str", "SPPs", 1 :named("inlinable"))
.annotate 'line', 1836
    get_hll_global $P6507, "GLOBAL"
    nqp_get_package_through_who $P6506, $P6507, "QAST"
    get_who $P6505, $P6506
    set $P6504, $P6505["Operations"]
    unless_null $P6504, fallback1082
    nqp_get_sc_object $P6508, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6504, $P6508
  fallback1082:
    $P6509 = $P6504."add_core_pirop_mapping"("create", "repr_instance_of", "PP", 1 :named("inlinable"))
.annotate 'line', 1837
    get_hll_global $P6513, "GLOBAL"
    nqp_get_package_through_who $P6512, $P6513, "QAST"
    get_who $P6511, $P6512
    set $P6510, $P6511["Operations"]
    unless_null $P6510, fallback1083
    nqp_get_sc_object $P6514, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6510, $P6514
  fallback1083:
    $P6515 = $P6510."add_core_pirop_mapping"("clone", "clone", "PP", 1 :named("inlinable"))
.annotate 'line', 1838
    get_hll_global $P6519, "GLOBAL"
    nqp_get_package_through_who $P6518, $P6519, "QAST"
    get_who $P6517, $P6518
    set $P6516, $P6517["Operations"]
    unless_null $P6516, fallback1084
    nqp_get_sc_object $P6520, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6516, $P6520
  fallback1084:
    $P6521 = $P6516."add_core_pirop_mapping"("isconcrete", "repr_defined", "IP", 1 :named("inlinable"))
.annotate 'line', 1839
    get_hll_global $P6525, "GLOBAL"
    nqp_get_package_through_who $P6524, $P6525, "QAST"
    get_who $P6523, $P6524
    set $P6522, $P6523["Operations"]
    unless_null $P6522, fallback1085
    nqp_get_sc_object $P6526, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6522, $P6526
  fallback1085:
    $P6527 = $P6522."add_core_pirop_mapping"("iscont", "is_container", "IP", 1 :named("inlinable"))
.annotate 'line', 1840
    get_hll_global $P6531, "GLOBAL"
    nqp_get_package_through_who $P6530, $P6531, "QAST"
    get_who $P6529, $P6530
    set $P6528, $P6529["Operations"]
    unless_null $P6528, fallback1086
    nqp_get_sc_object $P6532, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6528, $P6532
  fallback1086:
    $P6533 = $P6528."add_core_pirop_mapping"("isnull", "isnull", "IP", 1 :named("inlinable"))
.annotate 'line', 1841
    get_hll_global $P6537, "GLOBAL"
    nqp_get_package_through_who $P6536, $P6537, "QAST"
    get_who $P6535, $P6536
    set $P6534, $P6535["Operations"]
    unless_null $P6534, fallback1087
    nqp_get_sc_object $P6538, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6534, $P6538
  fallback1087:
    $P6539 = $P6534."add_core_pirop_mapping"("isnull_s", "isnull", "IS", 1 :named("inlinable"))
.annotate 'line', 1842
    get_hll_global $P6543, "GLOBAL"
    nqp_get_package_through_who $P6542, $P6543, "QAST"
    get_who $P6541, $P6542
    set $P6540, $P6541["Operations"]
    unless_null $P6540, fallback1088
    nqp_get_sc_object $P6544, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6540, $P6544
  fallback1088:
    $P6545 = $P6540."add_core_pirop_mapping"("istrue", "istrue", "IP", 1 :named("inlinable"))
.annotate 'line', 1843
    get_hll_global $P6549, "GLOBAL"
    nqp_get_package_through_who $P6548, $P6549, "QAST"
    get_who $P6547, $P6548
    set $P6546, $P6547["Operations"]
    unless_null $P6546, fallback1089
    nqp_get_sc_object $P6550, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6546, $P6550
  fallback1089:
    $P6551 = $P6546."add_core_pirop_mapping"("isfalse", "isfalse", "IP", 1 :named("inlinable"))
.annotate 'line', 1844
    get_hll_global $P6555, "GLOBAL"
    nqp_get_package_through_who $P6554, $P6555, "QAST"
    get_who $P6553, $P6554
    set $P6552, $P6553["Operations"]
    unless_null $P6552, fallback1090
    nqp_get_sc_object $P6556, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6552, $P6556
  fallback1090:
    $P6557 = $P6552."add_core_pirop_mapping"("istype", "type_check", "IPP", 1 :named("inlinable"))
.annotate 'line', 1845
    get_hll_global $P6561, "GLOBAL"
    nqp_get_package_through_who $P6560, $P6561, "QAST"
    get_who $P6559, $P6560
    set $P6558, $P6559["Operations"]
    unless_null $P6558, fallback1091
    nqp_get_sc_object $P6562, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6558, $P6562
  fallback1091:
    $P6563 = $P6558."add_core_pirop_mapping"("null", "null", "P", 1 :named("inlinable"))
.annotate 'line', 1846
    get_hll_global $P6567, "GLOBAL"
    nqp_get_package_through_who $P6566, $P6567, "QAST"
    get_who $P6565, $P6566
    set $P6564, $P6565["Operations"]
    unless_null $P6564, fallback1092
    nqp_get_sc_object $P6568, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6564, $P6568
  fallback1092:
    $P6569 = $P6564."add_core_pirop_mapping"("null_s", "null", "S", 1 :named("inlinable"))
.annotate 'line', 1847
    get_hll_global $P6573, "GLOBAL"
    nqp_get_package_through_who $P6572, $P6573, "QAST"
    get_who $P6571, $P6572
    set $P6570, $P6571["Operations"]
    unless_null $P6570, fallback1093
    nqp_get_sc_object $P6574, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6570, $P6574
  fallback1093:
    $P6575 = $P6570."add_core_pirop_mapping"("unbox_i", "repr_unbox_int", "IP", 1 :named("inlinable"))
.annotate 'line', 1848
    get_hll_global $P6579, "GLOBAL"
    nqp_get_package_through_who $P6578, $P6579, "QAST"
    get_who $P6577, $P6578
    set $P6576, $P6577["Operations"]
    unless_null $P6576, fallback1094
    nqp_get_sc_object $P6580, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6576, $P6580
  fallback1094:
    $P6581 = $P6576."add_core_pirop_mapping"("unbox_n", "repr_unbox_num", "NP", 1 :named("inlinable"))
.annotate 'line', 1849
    get_hll_global $P6585, "GLOBAL"
    nqp_get_package_through_who $P6584, $P6585, "QAST"
    get_who $P6583, $P6584
    set $P6582, $P6583["Operations"]
    unless_null $P6582, fallback1095
    nqp_get_sc_object $P6586, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6582, $P6586
  fallback1095:
    $P6587 = $P6582."add_core_pirop_mapping"("unbox_s", "repr_unbox_str", "SP", 1 :named("inlinable"))
.annotate 'line', 1850
    get_hll_global $P6591, "GLOBAL"
    nqp_get_package_through_who $P6590, $P6591, "QAST"
    get_who $P6589, $P6590
    set $P6588, $P6589["Operations"]
    unless_null $P6588, fallback1096
    nqp_get_sc_object $P6592, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6588, $P6592
  fallback1096:
    $P6593 = $P6588."add_core_pirop_mapping"("box_i", "repr_box_int", "PiP", 1 :named("inlinable"))
.annotate 'line', 1851
    get_hll_global $P6597, "GLOBAL"
    nqp_get_package_through_who $P6596, $P6597, "QAST"
    get_who $P6595, $P6596
    set $P6594, $P6595["Operations"]
    unless_null $P6594, fallback1097
    nqp_get_sc_object $P6598, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6594, $P6598
  fallback1097:
    $P6599 = $P6594."add_core_pirop_mapping"("box_n", "repr_box_num", "PnP", 1 :named("inlinable"))
.annotate 'line', 1852
    get_hll_global $P6603, "GLOBAL"
    nqp_get_package_through_who $P6602, $P6603, "QAST"
    get_who $P6601, $P6602
    set $P6600, $P6601["Operations"]
    unless_null $P6600, fallback1098
    nqp_get_sc_object $P6604, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6600, $P6604
  fallback1098:
    $P6605 = $P6600."add_core_pirop_mapping"("box_s", "repr_box_str", "PsP", 1 :named("inlinable"))
.annotate 'line', 1853
    get_hll_global $P6609, "GLOBAL"
    nqp_get_package_through_who $P6608, $P6609, "QAST"
    get_who $P6607, $P6608
    set $P6606, $P6607["Operations"]
    unless_null $P6606, fallback1099
    nqp_get_sc_object $P6610, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6606, $P6610
  fallback1099:
    $P6611 = $P6606."add_core_pirop_mapping"("what", "get_what", "PP", 1 :named("inlinable"))
.annotate 'line', 1854
    get_hll_global $P6615, "GLOBAL"
    nqp_get_package_through_who $P6614, $P6615, "QAST"
    get_who $P6613, $P6614
    set $P6612, $P6613["Operations"]
    unless_null $P6612, fallback1100
    nqp_get_sc_object $P6616, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6612, $P6616
  fallback1100:
    $P6617 = $P6612."add_core_pirop_mapping"("how", "get_how", "PP", 1 :named("inlinable"))
.annotate 'line', 1855
    get_hll_global $P6621, "GLOBAL"
    nqp_get_package_through_who $P6620, $P6621, "QAST"
    get_who $P6619, $P6620
    set $P6618, $P6619["Operations"]
    unless_null $P6618, fallback1101
    nqp_get_sc_object $P6622, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6618, $P6622
  fallback1101:
    $P6623 = $P6618."add_core_pirop_mapping"("who", "get_who", "PP", 1 :named("inlinable"))
.annotate 'line', 1856
    get_hll_global $P6627, "GLOBAL"
    nqp_get_package_through_who $P6626, $P6627, "QAST"
    get_who $P6625, $P6626
    set $P6624, $P6625["Operations"]
    unless_null $P6624, fallback1102
    nqp_get_sc_object $P6628, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6624, $P6628
  fallback1102:
    $P6629 = $P6624."add_core_pirop_mapping"("where", "get_id", "IP", 1 :named("inlinable"))
.annotate 'line', 1857
    get_hll_global $P6633, "GLOBAL"
    nqp_get_package_through_who $P6632, $P6633, "QAST"
    get_who $P6631, $P6632
    set $P6630, $P6631["Operations"]
    unless_null $P6630, fallback1103
    nqp_get_sc_object $P6634, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6630, $P6634
  fallback1103:
    $P6635 = $P6630."add_core_pirop_mapping"("findmethod", "find_method", "PPs", 1 :named("inlinable"))
.annotate 'line', 1858
    get_hll_global $P6639, "GLOBAL"
    nqp_get_package_through_who $P6638, $P6639, "QAST"
    get_who $P6637, $P6638
    set $P6636, $P6637["Operations"]
    unless_null $P6636, fallback1104
    nqp_get_sc_object $P6640, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6636, $P6640
  fallback1104:
    $P6641 = $P6636."add_core_pirop_mapping"("defined", "defined", "IP", 1 :named("inlinable"))
.annotate 'line', 1859
    get_hll_global $P6645, "GLOBAL"
    nqp_get_package_through_who $P6644, $P6645, "QAST"
    get_who $P6643, $P6644
    set $P6642, $P6643["Operations"]
    unless_null $P6642, fallback1105
    nqp_get_sc_object $P6646, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6642, $P6646
  fallback1105:
    $P6647 = $P6642."add_core_pirop_mapping"("can", "can", "IPs", 1 :named("inlinable"))
.annotate 'line', 1860
    get_hll_global $P6651, "GLOBAL"
    nqp_get_package_through_who $P6650, $P6651, "QAST"
    get_who $P6649, $P6650
    set $P6648, $P6649["Operations"]
    unless_null $P6648, fallback1106
    nqp_get_sc_object $P6652, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6648, $P6652
  fallback1106:
    $P6653 = $P6648."add_core_pirop_mapping"("reprname", "repr_name", "SP", 1 :named("inlinable"))
.annotate 'line', 1861
    get_hll_global $P6657, "GLOBAL"
    nqp_get_package_through_who $P6656, $P6657, "QAST"
    get_who $P6655, $P6656
    set $P6654, $P6655["Operations"]
    unless_null $P6654, fallback1107
    nqp_get_sc_object $P6658, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6654, $P6658
  fallback1107:
    $P6659 = $P6654."add_core_pirop_mapping"("newtype", "repr_type_object_for", "PPs", 1 :named("inlinable"))
.annotate 'line', 1862
    get_hll_global $P6663, "GLOBAL"
    nqp_get_package_through_who $P6662, $P6663, "QAST"
    get_who $P6661, $P6662
    set $P6660, $P6661["Operations"]
    unless_null $P6660, fallback1108
    nqp_get_sc_object $P6664, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6660, $P6664
  fallback1108:
    $P6665 = $P6660."add_core_pirop_mapping"("setwho", "set_who", "0PP", 1 :named("inlinable"))
.annotate 'line', 1865
    get_hll_global $P6669, "GLOBAL"
    nqp_get_package_through_who $P6668, $P6669, "QAST"
    get_who $P6667, $P6668
    set $P6666, $P6667["Operations"]
    unless_null $P6666, fallback1109
    nqp_get_sc_object $P6670, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6666, $P6670
  fallback1109:
    $P6671 = $P6666."add_core_pirop_mapping"("takeclosure", "newclosure", "PP")
.annotate 'line', 1868
    get_hll_global $P6675, "GLOBAL"
    nqp_get_package_through_who $P6674, $P6675, "QAST"
    get_who $P6673, $P6674
    set $P6672, $P6673["Operations"]
    unless_null $P6672, fallback1110
    nqp_get_sc_object $P6676, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6672, $P6676
  fallback1110:
    $P6677 = $P6672."add_core_pirop_mapping"("sha1", "nqp_sha1", "Ss")
.annotate 'line', 1869
    get_hll_global $P6681, "GLOBAL"
    nqp_get_package_through_who $P6680, $P6681, "QAST"
    get_who $P6679, $P6680
    set $P6678, $P6679["Operations"]
    unless_null $P6678, fallback1111
    nqp_get_sc_object $P6682, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6678, $P6682
  fallback1111:
    $P6683 = $P6678."add_core_pirop_mapping"("createsc", "nqp_create_sc", "Ps")
.annotate 'line', 1870
    get_hll_global $P6687, "GLOBAL"
    nqp_get_package_through_who $P6686, $P6687, "QAST"
    get_who $P6685, $P6686
    set $P6684, $P6685["Operations"]
    unless_null $P6684, fallback1112
    nqp_get_sc_object $P6688, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6684, $P6688
  fallback1112:
    $P6689 = $P6684."add_core_pirop_mapping"("deserialize", "nqp_deserialize_sc", "vsPPP")
.annotate 'line', 1873
    get_hll_global $P6693, "GLOBAL"
    nqp_get_package_through_who $P6692, $P6693, "QAST"
    get_who $P6691, $P6692
    set $P6690, $P6691["Operations"]
    unless_null $P6690, fallback1113
    nqp_get_sc_object $P6694, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6690, $P6694
  fallback1113:
    $P6695 = $P6690."add_core_pirop_mapping"("exit", "exit", "0i", 1 :named("inlinable"))
.annotate 'line', 1874
    get_hll_global $P6699, "GLOBAL"
    nqp_get_package_through_who $P6698, $P6699, "QAST"
    get_who $P6697, $P6698
    set $P6696, $P6697["Operations"]
    unless_null $P6696, fallback1114
    nqp_get_sc_object $P6700, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P6696, $P6700
  fallback1114:
    $P6701 = $P6696."add_core_pirop_mapping"("sleep", "sleep", "0n", 1 :named("inlinable"))
    .const 'Sub' $P6702 = 'cuid_59_1347104163.3' 
    capture_lex $P6702
    $P6703 = $P6702()
    set $P6708, _lex_param_0
    unless _lex_param_0 goto if712_end2651 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P6704, "ModuleLoader"
    getinterp $P6706
    set $P6705, $P6706["context"]
    $P6707 = $P6704."set_mainline_module"($P6705)
    set $P6708, $P6707
  if712_end2651:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "handle_arg" :subid("cuid_154_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1146
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("coerce") :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_153_1347104163.3' 
    capture_lex $P5023 
    if haz_param_1, default20
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1147
    $P5003 = _lex_param_1."as_post"(_lex_param_0)
    set $P101, $P5003
    set $P5005, _lex_param_5
    unless _lex_param_5 goto if10_end11 
.annotate 'line', 1148
.annotate 'line', 1149
    $P5004 = _lex_param_1."coerce"($P101, _lex_param_5)
    set $P101, $P5004
    set $P5005, $P101
  if10_end11:
.annotate 'line', 1151
    $P5006 = _lex_param_2."push"($P101)
.annotate 'line', 1152
    $P5007 = $P101."result"()
    set $P102, $P5007
.annotate 'line', 1153
    $P5008 = _lex_param_0."flat"()
    unless $P5008 goto if11_else12 
    set $S5002, $P102
    concat $S5001, $S5002, " :flat"
    box $P5009, $S5001
    set $P102, $P5009
.annotate 'line', 1155
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
.annotate 'line', 1159
    $P5013 = _lex_param_0."named"()
    set $P5016, $P5013
    unless $P5013 goto if13_end17 
    .const 'Sub' $P5014 = 'cuid_153_1347104163.3' 
    capture_lex $P5014
    $P5015 = $P5014($P5013)
    set $P5016, $P5015
  if13_end17:
    set $P5017, $P5016
  if11_end13:
.annotate 'line', 1162
    $P5018 = _lex_param_0."named"()
    unless $P5018 goto if14_else18 
.annotate 'line', 1163
    $P5019 = _lex_param_4."push"($P102)
    set $P5021, $P5019
    goto if14_end19
  if14_else18:
.annotate 'line', 1165
.annotate 'line', 1166
    $P5020 = _lex_param_3."push"($P102)
    set $P5021, $P5020
  if14_end19:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1347104163.3") :anon :lex :outer("cuid_154_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5004, $P5001
    concat $S5003, $S5004, " :named("
.annotate 'line', 1160
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
.sub "" :subid("cuid_4_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 10
    .const 'Sub' $P5003 = 'cuid_2_1347104163.3' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_3_1347104163.3' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1347104163.3' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1347104163.3' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1347104163.3") :anon :lex :outer("cuid_4_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 13
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("result") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$result", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["CallResult"]
    unless_null $P5004, fallback25
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback25:
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "PIRT"
    get_who $P5010, $P5011
    set $P5009, $P5010["Node"]
    unless_null $P5009, fallback28
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "result" :subid("cuid_3_1347104163.3") :anon :lex :outer("cuid_4_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 20
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 1
    repr_get_attr_str $S5001, $P5001, $P5002, "$!result"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 25
    .const 'Sub' $P5016 = 'cuid_5_1347104163.3' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_6_1347104163.3' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_7_1347104163.3' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_8_1347104163.3' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_9_1347104163.3' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_12_1347104163.3' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_13_1347104163.3' 
    capture_lex $P5016 
    .lex "%op_compilers", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    .const 'Sub' $P5004 = 'cuid_5_1347104163.3' 
    capture_lex $P5004
    newclosure $P5003, $P5004
    set $P5002["call"], $P5003
    .const 'Sub' $P5006 = 'cuid_6_1347104163.3' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    set $P5002["callmethod"], $P5005
    .const 'Sub' $P5008 = 'cuid_7_1347104163.3' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    set $P5002["return"], $P5007
    .const 'Sub' $P5010 = 'cuid_8_1347104163.3' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    set $P5002["yield"], $P5009
    .const 'Sub' $P5012 = 'cuid_9_1347104163.3' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    set $P5002["tailcall"], $P5011
    .const 'Sub' $P5014 = 'cuid_12_1347104163.3' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    set $P5002["inline"], $P5013
    set $P101, $P5002
    .const 'Sub' $P5015 = 'cuid_13_1347104163.3' 
    capture_lex $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1347104163.3") :anon :lex :outer("cuid_14_1347104163.3")
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
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_6_1347104163.3") :anon :lex :outer("cuid_14_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex "$pir", $P101 
    .lex "$name", $P102 
    .lex "$invocant", $P103 
    .lex "@args", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    find_dynamic_lex $P5004, "$*HAS_RESULT"
    unless_null $P5004, fallback36
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$HAS_RESULT"]
    unless_null $P5005, fallback37
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_7_1347104163.3") :anon :lex :outer("cuid_14_1347104163.3")
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
.sub "" :subid("cuid_8_1347104163.3") :anon :lex :outer("cuid_14_1347104163.3")
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
.sub "" :subid("cuid_9_1347104163.3") :anon :lex :outer("cuid_14_1347104163.3")
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
.sub "" :subid("cuid_12_1347104163.3") :anon :lex :outer("cuid_14_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .const 'Sub' $P5019 = 'cuid_155_1347104163.3' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_156_1347104163.3' 
    capture_lex $P5019 
    .lex "$pir", $P101 
    .lex "$i", $P102 
    .lex "@args", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    find_dynamic_lex $P5003, "$*HAS_RESULT"
    unless_null $P5003, fallback41
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$HAS_RESULT"]
    unless_null $P5004, fallback42
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    .const 'Sub' $P5009 = 'cuid_155_1347104163.3' 
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
  for_next70:
    unless $P5016, for_done72
    shift $P5018, $P5016
  for_redo71:
    .const 'Sub' $P5017 = 'cuid_156_1347104163.3' 
    capture_lex $P5017
    $P5014 = $P5017($P5018)
    goto for_next70
  for_done72:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1347104163.3") :anon :lex :outer("cuid_12_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 49
    .const 'Sub' $P5016 = 'cuid_10_1347104163.3' 
    capture_lex $P5016 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5012
  vivi_2445:
    set $P5006, $P5009
  fallback44:
    .const 'Sub' $P5013 = 'cuid_10_1347104163.3' 
    capture_lex $P5013
    $P5014 = $P5006."new"($P5013)
    $P5015 = "&subst"($P5005, $P5014, $P101, 1 :named("global"))
    store_lex "$pir", $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_10_1347104163.3") :anon :lex :outer("cuid_155_1347104163.3")
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
.sub "cuid_10_1347104163.3_caps" :subid("cuid_memo_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1347104163.3_nfa" :subid("cuid_memo_2_1347104163.3")
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
.sub "" :subid("cuid_156_1347104163.3") :anon :lex :outer("cuid_12_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 57
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_11_1347104163.3' 
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
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  vivi_2757:
    set $P5002, $P5005
  fallback56:
    .const 'Sub' $P5009 = 'cuid_11_1347104163.3' 
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
.sub "" :subid("cuid_11_1347104163.3") :anon :lex :outer("cuid_156_1347104163.3")
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
.sub "cuid_11_1347104163.3_caps" :subid("cuid_memo_3_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1347104163.3_nfa" :subid("cuid_memo_4_1347104163.3")
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
.sub "children_pir" :subid("cuid_13_1347104163.3") :anon :lex :outer("cuid_14_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_158_1347104163.3' 
    capture_lex $P5007 
    .lex "@parts", $P101 
    .lex "self", _lex_param_0 
    .lex "@children", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $P5002, _lex_param_1
    iter $P5004, _lex_param_1
  for_next107:
    unless $P5004, for_done109
    shift $P5006, $P5004
  for_redo108:
    .const 'Sub' $P5005 = 'cuid_158_1347104163.3' 
    capture_lex $P5005
    $P5002 = $P5005($P5006)
    goto for_next107
  for_done109:
    join $S5001, "\n", $P101
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1347104163.3") :anon :lex :outer("cuid_13_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .const 'Sub' $P5027 = 'cuid_157_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_159_1347104163.3' 
    capture_lex $P5027 
    .lex "$_", _lex_param_0 
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if31_else73 
    .const 'Sub' $P5001 = 'cuid_157_1347104163.3' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5026, $P5002
    goto if31_end74
  if31_else73:
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Sub"]
    unless_null $P5003, fallback98
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback98:
    type_check $I5002, _lex_param_0, $P5003
    unless $I5002 goto if38_else96 
.annotate 'line', 99
    find_dynamic_lex $P5008, "@*PIRT_BLOCKS"
    unless_null $P5008, fallback99
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["@PIRT_BLOCKS"]
    unless_null $P5009, fallback100
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    set $P5012["@PIRT_BLOCKS"], $P5014
    set $P5009, $P5014
  fallback100:
    unless_null $P5009, vivi_39101
    die "Contextual @*PIRT_BLOCKS not found"
    box $P5015, "Contextual @*PIRT_BLOCKS not found"
    set $P5009, $P5015
  vivi_39101:
    set $P5008, $P5009
  fallback99:
    push $P5008, _lex_param_0
    set $P5025, $P5008
    goto if38_end97
  if38_else96:
    get_hll_global $P5019, "GLOBAL"
    nqp_get_package_through_who $P5018, $P5019, "PIRT"
    get_who $P5017, $P5018
    set $P5016, $P5017["Node"]
    unless_null $P5016, fallback104
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5016, $P5020
  fallback104:
    type_check $I5003, _lex_param_0, $P5016
    unless $I5003 goto if40_else102 
    .const 'Sub' $P5021 = 'cuid_159_1347104163.3' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5024, $P5022
    goto if40_end103
  if40_else102:
.annotate 'line', 106
    box $P5023, "Unexpected object in PIRT tree"
    die $P5023
    set $P5024, $P5023
  if40_end103:
    set $P5025, $P5024
  if38_end97:
    set $P5026, $P5025
  if31_end74:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1347104163.3") :anon :lex :outer("cuid_158_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 67
    .lex "$op_name", $P101 
    .lex "@op_args", $P102 
    .lex "$i", $P103 
    .lex "$c", $P104 
    .lex "$arg", $P105 
    .lex "$*HAS_RESULT", $P106 
    .lex "$result", $P107 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    find_lex $P5009, "$_"
    set $P5008, $P5009[0]
    unless_null $P5008, fallback75
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5010
  fallback75:
    set $P101, $P5008
    box $P5011, 1
    set $P103, $P5011
    find_lex $P5012, "$_"
    elements $I5001, $P5012
    box $P5013, $I5001
    set $P104, $P5013
    box $P5014, 0
    set $P106, $P5014
  while32_test76:
    set $N5001, $P103
    set $N5002, $P104
    islt $I5002, $N5001, $N5002
    box $P5035, $I5002
    set $P5034, $P5035
    unless $I5002 goto while32_done80 
  while32_redo78:
.annotate 'line', 75
    find_lex $P5016, "$_"
    set $I5003, $P103
    set $P5015, $P5016[$I5003]
    unless_null $P5015, fallback81
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5015, $P5017
  fallback81:
    set $P105, $P5015
    get_hll_global $P5021, "GLOBAL"
    nqp_get_package_through_who $P5020, $P5021, "PIRT"
    get_who $P5019, $P5020
    set $P5018, $P5019["Node"]
    unless_null $P5018, fallback84
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5018, $P5022
  fallback84:
    type_check $I5004, $P105, $P5018
    unless $I5004 goto if33_else82 
.annotate 'line', 77
.annotate 'line', 78
    $P5023 = $P105."result"()
    push $P102, $P5023
    set $P5032, $P102
    goto if33_end83
  if33_else82:
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "PIRT"
    get_who $P5025, $P5026
    set $P5024, $P5025["CallResult"]
    unless_null $P5024, fallback87
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5028
  fallback87:
    type_check $I5005, $P105, $P5024
    unless $I5005 goto if34_else85 
.annotate 'line', 80
.annotate 'line', 81
    $P5029 = $P105."result"()
    set $P107, $P5029
    box $P5030, 1
    set $P106, $P5030
    set $P5031, $P106
    goto if34_end86
  if34_else85:
.annotate 'line', 84
    push $P102, $P105
    set $P5031, $P102
  if34_end86:
    set $P5032, $P5031
  if33_end83:
    set $N5004, $P103
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P103, $P5033
    set $P5034, $P103
    goto while32_test76 
  while32_done80:
    unless_null $P106, fallback90
    get_hll_global $P5038, "GLOBAL"
    get_who $P5037, $P5038
    set $P5036, $P5037["$HAS_RESULT"]
    unless_null $P5036, fallback91
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5036, $P5039
  fallback91:
    unless_null $P5036, vivi_3692
    die "Contextual $*HAS_RESULT not found"
    box $P5040, "Contextual $*HAS_RESULT not found"
    set $P5036, $P5040
  vivi_3692:
    set $P106, $P5036
  fallback90:
    set $P5041, $P106
    unless $P106 goto if35_end89 
.annotate 'line', 89
    unshift $P102, $P107
    set $P5041, $P102
  if35_end89:
    find_lex $P5042, "%op_compilers"
    set $S5001, $P101
    exists $I5006, $P5042[$S5001]
    unless $I5006 goto if37_else93 
.annotate 'line', 92
    find_lex $P5043, "@parts"
.annotate 'line', 93
    find_lex $P5045, "%op_compilers"
    set $S5002, $P101
    set $P5044, $P5045[$S5002]
    unless_null $P5044, fallback95
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5044, $P5046
  fallback95:
    $P5047 = $P5044($P102)
    push $P5043, $P5047
    set $P5050, $P5043
    goto if37_end94
  if37_else93:
.annotate 'line', 95
    find_lex $P5048, "@parts"
    set $S5006, $P101
    concat $S5005, "    ", $S5006
    concat $S5004, $S5005, " "
    join $S5007, ", ", $P102
    concat $S5003, $S5004, $S5007
    box $P5049, $S5003
    push $P5048, $P5049
    set $P5050, $P5048
  if37_end94:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1347104163.3") :anon :lex :outer("cuid_158_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 102
    .lex "$pir", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 103
    find_lex $P5002, "$_"
    $P5003 = $P5002."pir"()
    set $P101, $P5003
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless41_end106 
    find_lex $P5004, "@parts"
    push $P5004, $P101
    set $P5005, $P5004
  unless41_end106:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_29_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 114
    .const 'Sub' $P5015 = 'cuid_15_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_16_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_17_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_18_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_19_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_20_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_21_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_22_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_23_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_24_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_25_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_26_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_27_1347104163.3' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_28_1347104163.3' 
    capture_lex $P5015 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_15_1347104163.3' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_16_1347104163.3' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_17_1347104163.3' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_18_1347104163.3' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_19_1347104163.3' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_20_1347104163.3' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_21_1347104163.3' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_22_1347104163.3' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_23_1347104163.3' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_24_1347104163.3' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_25_1347104163.3' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_26_1347104163.3' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_27_1347104163.3' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_28_1347104163.3' 
    capture_lex $P5014
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_15_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$esc", $P101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    unless $I5001 goto if42_else110 
    set $S5006, $P101
    concat $S5005, "utf8:\"", $S5006
    concat $S5004, $S5005, "\""
    set $S5015, $S5004
    goto if42_end111
  if42_else110:
    set $S5007, $P101
    index $I5004, $S5007, unicode:"\\u", 0
    set $N5003, $I5004
    set $N5004, 0
    isge $I5003, $N5003, $N5004
    unless $I5003 goto if43_else112 
    set $S5010, $P101
    concat $S5009, "unicode:\"", $S5010
    concat $S5008, $S5009, "\""
    set $S5014, $S5008
    goto if43_end113
  if43_else112:
    set $S5013, $P101
    concat $S5012, "\"", $S5013
    concat $S5011, $S5012, "\""
    set $S5014, $S5011
  if43_end113:
    set $S5015, $S5014
  if42_end111:
    .return ($S5015) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 135
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Sub"]
    unless_null $P5004, fallback114
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback114:
    new $P5009, 'ResizablePMCArray'
    setattribute $P101, $P5004, "@!children", $P5009
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "push" :subid("cuid_17_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!children"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "push_pirop" :subid("cuid_18_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 145
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :named("result") :optional 
    .param int haz_param_2 :opt_flag 
    if haz_param_2, default118
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_2, $P5011
  default118:
    .lex "self", _lex_param_0 
    .lex "@opbits", _lex_param_1 
    .lex "$result", _lex_param_2 
    set $P5007, _lex_param_2
    unless _lex_param_2 goto if44_end116 
.annotate 'line', 146
.annotate 'line', 147
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["CallResult"]
    unless_null $P5001, fallback117
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback117:
    $P5006 = $P5001."new"(_lex_param_2)
    push _lex_param_1, $P5006
    set $P5007, _lex_param_1
  if44_end116:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!children"
    push $P5010, _lex_param_1
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "subid" :subid("cuid_19_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 152
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if45_else119 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback121
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5004
  fallback121:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!subid", $S5001
    set $S5003, $S5001
    goto if45_end120
  if45_else119:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!subid"
    set $S5003, $S5002
  if45_end120:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "pirflags" :subid("cuid_20_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 156
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if46_else122 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback124
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5004
  fallback124:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!pirflags", $S5001
    set $S5003, $S5001
    goto if46_end123
  if46_else122:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!pirflags"
    set $S5003, $S5002
  if46_end123:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_21_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if47_else125 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback127
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5004
  fallback127:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!name", $S5001
    set $S5003, $S5001
    goto if47_end126
  if47_else125:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!name"
    set $S5003, $S5002
  if47_end126:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "loadlibs" :subid("cuid_22_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 164
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    if haz_param_3, default130
    new $P5007, 'ResizablePMCArray'
    set _lex_param_1, $P5007
  default130:
    .lex "self", _lex_param_0 
    .lex "@libs", _lex_param_1 
    unless _lex_param_1 goto if48_else128 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_bind_attr_obj $P5001, $P5002, "@!loadlibs", _lex_param_1
    set $P5006, _lex_param_1
    goto if48_end129
  if48_else128:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!loadlibs"
    set $P5006, $P5005
  if48_end129:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "hll" :subid("cuid_23_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 168
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if49_else131 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback133
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5004
  fallback133:
    set $S5001, $P5003
    repr_bind_attr_str $P5001, $P5002, "$!hll", $S5001
    set $S5003, $S5001
    goto if49_end132
  if49_else131:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5002, $P5005, $P5006, "$!hll"
    set $S5003, $S5002
  if49_end132:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "namespace" :subid("cuid_24_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_4, default136
    new $P5007, 'ResizablePMCArray'
    set _lex_param_1, $P5007
  default136:
    .lex "self", _lex_param_0 
    .lex "@namespace", _lex_param_1 
    unless _lex_param_1 goto if50_else134 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_bind_attr_obj $P5001, $P5002, "@!namespace", _lex_param_1
    set $P5006, _lex_param_1
    goto if50_end135
  if50_else134:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!namespace"
    set $P5006, $P5005
  if50_end135:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_25_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "close_sub" :subid("cuid_26_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 180
    .param pmc _lex_param_0 
    .const 'Sub' $P5090 = 'cuid_160_1347104163.3' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_162_1347104163.3' 
    capture_lex $P5090 
    .lex "@parts", $P101 
    .lex "$sub_decl", $P102 
    .lex "$file", $P103 
    .lex "@*PIRT_BLOCKS", $P104 
    .lex "$*SUB_LINE", $P105 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!loadlibs"
    isnull $I5001, $P5008
    box $P5018, $I5001
    set $P5017, $P5018
    if $I5001 goto unless51_end138 
.annotate 'line', 184
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!loadlibs"
    set $P5009, $P5014
    iter $P5011, $P5014
  for_next139:
    unless $P5011, for_done141
    shift $P5016, $P5011
  for_redo140:
    .const 'Sub' $P5015 = 'cuid_160_1347104163.3' 
    capture_lex $P5015
    $P5009 = $P5015($P5016)
    goto for_next139
  for_done141:
    set $P5017, $P5009
  unless51_end138:
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5001, $P5019, $P5020, "$!hll"
    unless_null $S5001, vivi_53144
    set $S5002, ""
    set $S5001, $S5002
  vivi_53144:
    box $P5027, $S5001
    set $P5026, $P5027
    unless $S5001 goto if52_end143 
.annotate 'line', 189
.annotate 'line', 190
    nqp_decontainerize $P5021, _lex_param_0
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5004, $P5022, $P5023, "$!hll"
    $P5024 = $P5021."escape"($S5004)
    set $S5005, $P5024
    concat $S5003, ".HLL ", $S5005
    box $P5025, $S5003
    push $P101, $P5025
    set $P5026, $P101
  if52_end143:
    nqp_decontainerize $P5028, _lex_param_0
    nqp_get_sc_object $P5029, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5030, $P5028, $P5029, "@!namespace"
    isnull $I5002, $P5030
    unless $I5002 goto if54_else145 
.annotate 'line', 192
    box $P5031, ".namespace []"
    push $P101, $P5031
    set $P5034, $P101
    goto if54_end146
  if54_else145:
    .const 'Sub' $P5032 = 'cuid_162_1347104163.3' 
    capture_lex $P5032
    $P5033 = $P5032()
    set $P5034, $P5033
  if54_end146:
.annotate 'line', 202
    nqp_decontainerize $P5035, _lex_param_0
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5007, $P5036, $P5037, "$!name"
    set $S5008, $S5007
    if $S5007 goto unless55_end151 
    set $S5008, ""
  unless55_end151:
    $P5038 = $P5035."escape"($S5008)
    set $S5009, $P5038
    concat $S5006, ".sub ", $S5009
    box $P5039, $S5006
    set $P102, $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5010, $P5040, $P5041, "$!subid"
    unless_null $S5010, vivi_57154
    set $S5011, ""
    set $S5010, $S5011
  vivi_57154:
    box $P5048, $S5010
    set $P5047, $P5048
    unless $S5010 goto if56_end153 
.annotate 'line', 203
    set $S5015, $P102
    concat $S5014, $S5015, " :subid("
.annotate 'line', 204
    nqp_decontainerize $P5042, _lex_param_0
    nqp_decontainerize $P5043, _lex_param_0
    nqp_get_sc_object $P5044, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5016, $P5043, $P5044, "$!subid"
    $P5045 = $P5042."escape"($S5016)
    set $S5017, $P5045
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, ")"
    box $P5046, $S5012
    set $P102, $P5046
    set $P5047, $P102
  if56_end153:
    nqp_decontainerize $P5049, _lex_param_0
    nqp_get_sc_object $P5050, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5018, $P5049, $P5050, "$!pirflags"
    unless_null $S5018, vivi_59157
    set $S5019, ""
    set $S5018, $S5019
  vivi_59157:
    box $P5055, $S5018
    set $P5054, $P5055
    unless $S5018 goto if58_end156 
.annotate 'line', 206
    set $S5022, $P102
    concat $S5021, $S5022, " "
    nqp_decontainerize $P5051, _lex_param_0
    nqp_get_sc_object $P5052, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5023, $P5051, $P5052, "$!pirflags"
    concat $S5020, $S5021, $S5023
    box $P5053, $S5020
    set $P102, $P5053
    set $P5054, $P102
  if58_end156:
    push $P101, $P102
    find_caller_lex $P5056, "$?FILES"
    set $P103, $P5056
    unless_null $P103, vivi_61160
    box $P5057, ""
    set $P103, $P5057
  vivi_61160:
    set $P5061, $P103
    unless $P103 goto if60_end159 
.annotate 'line', 213
.annotate 'line', 214
    nqp_decontainerize $P5058, _lex_param_0
    $P5059 = $P5058."escape"($P103)
    set $S5025, $P5059
    concat $S5024, ".annotate 'file', ", $S5025
    box $P5060, $S5024
    push $P101, $P5060
    set $P5061, $P101
  if60_end159:
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
    unless_null $P5062, vivi_62163
    die "Contextual @*PIRT_BLOCKS not found"
    box $P5068, "Contextual @*PIRT_BLOCKS not found"
    set $P5062, $P5068
  vivi_62163:
    set $P104, $P5062
  fallback161:
    box $P5069, -1
    set $P105, $P5069
.annotate 'line', 220
    nqp_decontainerize $P5070, _lex_param_0
    nqp_decontainerize $P5071, _lex_param_0
    nqp_get_sc_object $P5072, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5073, $P5071, $P5072, "@!children"
    $P5074 = $P5070."children_pir"($P5073)
    push $P101, $P5074
    box $P5075, ".end"
    push $P101, $P5075
    nqp_decontainerize $P5076, _lex_param_0
    nqp_get_sc_object $P5077, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    join $S5026, "\n", $P101
    repr_bind_attr_str $P5076, $P5077, "$!cached_pir", $S5026
    nqp_decontainerize $P5078, _lex_param_0
    nqp_get_sc_object $P5079, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
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
    unless_null $P5080, vivi_63166
    die "Contextual @*PIRT_BLOCKS not found"
    box $P5086, "Contextual @*PIRT_BLOCKS not found"
    set $P5080, $P5086
  vivi_63166:
    set $P104, $P5080
  fallback164:
    repr_bind_attr_obj $P5078, $P5079, "@!nested_blocks", $P104
    nqp_decontainerize $P5087, _lex_param_0
    nqp_get_sc_object $P5088, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    null $P5089
    repr_bind_attr_obj $P5087, $P5088, "@!children", $P5089
    .return ($P5089) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1347104163.3") :anon :lex :outer("cuid_26_1347104163.3")
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
.sub "" :subid("cuid_162_1347104163.3") :anon :lex :outer("cuid_26_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 195
    .const 'Sub' $P5013 = 'cuid_161_1347104163.3' 
    capture_lex $P5013 
    .lex "@ns", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!namespace"
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next147:
    unless $P5004, for_done149
    shift $P5010, $P5004
  for_redo148:
    .const 'Sub' $P5009 = 'cuid_161_1347104163.3' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next147
  for_done149:
    find_lex $P5011, "@parts"
    join $S5003, ";", $P101
    concat $S5002, ".namespace [", $S5003
    concat $S5001, $S5002, "]"
    box $P5012, $S5001
    push $P5011, $P5012
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1347104163.3") :anon :lex :outer("cuid_162_1347104163.3")
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
.sub "pir" :subid("cuid_27_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
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
.sub "collect_sub_pir_into" :subid("cuid_28_1347104163.3") :anon :lex :outer("cuid_29_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 238
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5018 = 'cuid_163_1347104163.3' 
    capture_lex $P5018 
    .lex "self", _lex_param_0 
    .lex "@result", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5001, $P5001, $P5002, "$!cached_pir"
    box $P5006, $S5001
    set $P5005, $P5006
    if $S5001 goto unless64_end168 
.annotate 'line', 240
.annotate 'line', 241
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."close_sub"()
    set $P5005, $P5004
  unless64_end168:
.annotate 'line', 245
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_str $S5002, $P5007, $P5008, "$!cached_pir"
    $P5009 = _lex_param_1."push"($S5002)
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!nested_blocks"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next169:
    unless $P5012, for_done171
    shift $P5017, $P5012
  for_redo170:
    .const 'Sub' $P5016 = 'cuid_163_1347104163.3' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next169
  for_done171:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1347104163.3") :anon :lex :outer("cuid_28_1347104163.3")
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
.sub "" :subid("cuid_36_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 252
    .const 'Sub' $P5007 = 'cuid_30_1347104163.3' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_31_1347104163.3' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_32_1347104163.3' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_33_1347104163.3' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_34_1347104163.3' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_35_1347104163.3' 
    capture_lex $P5007 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_30_1347104163.3' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_31_1347104163.3' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_32_1347104163.3' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_33_1347104163.3' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_34_1347104163.3' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_35_1347104163.3' 
    capture_lex $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_30_1347104163.3") :anon :lex :outer("cuid_36_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 257
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("result") :optional 
    .param int haz_param_5 :opt_flag 
    if haz_param_5, default177
    box $P5022, ""
    set _lex_param_1, $P5022
  default177:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$result", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Ops"]
    unless_null $P5004, fallback172
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback172:
    new $P5009, 'ResizablePMCArray'
    setattribute $P101, $P5004, "@!children", $P5009
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback173
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback173:
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "PIRT"
    get_who $P5016, $P5017
    set $P5015, $P5016["Node"]
    unless_null $P5015, fallback176
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5015, $P5019
  fallback176:
    type_check $I5001, _lex_param_1, $P5015
    unless $I5001 goto if65_else174 
.annotate 'line', 261
    $P5020 = _lex_param_1."result"()
    set $P5021, $P5020
    goto if65_end175
  if65_else174:
    set $P5021, _lex_param_1
  if65_end175:
    set $S5001, $P5021
    repr_bind_attr_str $P101, $P5010, "$!result", $S5001
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "push" :subid("cuid_31_1347104163.3") :anon :lex :outer("cuid_36_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!children"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "push_pirop" :subid("cuid_32_1347104163.3") :anon :lex :outer("cuid_36_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :named("result") :optional 
    .param int haz_param_6 :opt_flag 
    if haz_param_6, default181
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_2, $P5011
  default181:
    .lex "self", _lex_param_0 
    .lex "@opbits", _lex_param_1 
    .lex "$result", _lex_param_2 
    set $P5007, _lex_param_2
    unless _lex_param_2 goto if66_end179 
.annotate 'line', 270
.annotate 'line', 271
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["CallResult"]
    unless_null $P5001, fallback180
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback180:
    $P5006 = $P5001."new"(_lex_param_2)
    push _lex_param_1, $P5006
    set $P5007, _lex_param_1
  if66_end179:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!children"
    push $P5010, _lex_param_1
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_33_1347104163.3") :anon :lex :outer("cuid_36_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 276
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if67_else182 
.annotate 'line', 277
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback186
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5004
  fallback186:
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "PIRT"
    get_who $P5006, $P5007
    set $P5005, $P5006["Node"]
    unless_null $P5005, fallback187
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5009
  fallback187:
    type_check $I5001, $P5003, $P5005
    unless $I5001 goto if68_else184 
.annotate 'line', 278
    set $P5010, _lex_param_1[0]
    unless_null $P5010, fallback188
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5011
  fallback188:
    $P5012 = $P5010."result"()
    set $P5015, $P5012
    goto if68_end185
  if68_else184:
    set $P5013, _lex_param_1[0]
    unless_null $P5013, fallback189
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5014
  fallback189:
    set $P5015, $P5013
  if68_end185:
    set $S5001, $P5015
    repr_bind_attr_str $P5001, $P5002, "$!result", $S5001
    set $S5003, $S5001
    goto if67_end183
  if67_else182:
.annotate 'line', 280
    nqp_decontainerize $P5016, _lex_param_0
    nqp_get_sc_object $P5017, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_str $S5002, $P5016, $P5017, "$!result"
    set $S5003, $S5002
  if67_end183:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "node" :subid("cuid_34_1347104163.3") :anon :lex :outer("cuid_36_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 285
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if69_else190 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback192
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5004
  fallback192:
    repr_bind_attr_obj $P5001, $P5002, "$!node", $P5003
    set $P5008, $P5003
    goto if69_end191
  if69_else190:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!node"
    set $P5008, $P5007
  if69_end191:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_35_1347104163.3") :anon :lex :outer("cuid_36_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 289
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_164_1347104163.3' 
    capture_lex $P5014 
    .lex "$ann", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!node"
    set $P5008, $P5005
    unless $P5005 goto if70_end194 
    .const 'Sub' $P5006 = 'cuid_164_1347104163.3' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if70_end194:
    set $S5002, $P101
.annotate 'line', 298
    nqp_decontainerize $P5009, _lex_param_0
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!children"
    $P5013 = $P5009."children_pir"($P5012)
    set $S5003, $P5013
    concat $S5001, $S5002, $S5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1347104163.3") :anon :lex :outer("cuid_35_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 291
    .lex "$line", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 292
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Compiler"]
    unless_null $P5002, fallback195
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5006
  fallback195:
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!node"
    $P5011 = $P5010."orig"()
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    nqp_get_sc_object $P5014, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    repr_get_attr_obj $P5015, $P5012, $P5014, "$!node"
    $P5016 = $P5015."from"()
    $P5017 = $P5002."lineof"($P5011, $P5016, 1 :named("cache"))
    set $P101, $P5017
    set $N5001, $P101
    find_dynamic_lex $P5018, "$*SUB_LINE"
    unless_null $P5018, fallback198
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["$SUB_LINE"]
    unless_null $P5019, fallback199
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5022
  fallback199:
    unless_null $P5019, vivi_72200
    die "Contextual $*SUB_LINE not found"
    box $P5023, "Contextual $*SUB_LINE not found"
    set $P5019, $P5023
  vivi_72200:
    set $P5018, $P5019
  fallback198:
    set $N5002, $P5018
    isne $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if71_end197 
.annotate 'line', 293
    set $S5003, $P101
    concat $S5002, ".annotate 'line', ", $S5003
    concat $S5001, $S5002, "\n"
    box $P5024, $S5001
    store_lex "$ann", $P5024
    store_dynamic_lex "$*SUB_LINE", $P101
    set $P5025, $P101
  if71_end197:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_41_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 302
    .const 'Sub' $P5008 = 'cuid_165_1347104163.3' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_37_1347104163.3' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_38_1347104163.3' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_39_1347104163.3' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_40_1347104163.3' 
    capture_lex $P5008 
    .lex "$serno", $P101 
    .lex "&unique", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_165_1347104163.3' 
    capture_lex $P5002
    set $P102, $P5002
    box $P5003, 10
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_37_1347104163.3' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_38_1347104163.3' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_39_1347104163.3' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_40_1347104163.3' 
    capture_lex $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "unique" :subid("cuid_165_1347104163.3") :anon :lex :outer("cuid_41_1347104163.3")
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
.sub "new" :subid("cuid_37_1347104163.3") :anon :lex :outer("cuid_41_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 308
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Label"]
    unless_null $P5004, fallback201
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback201:
.annotate 'line', 310
    $P5009 = "&unique"(_lex_param_1)
    set $S5001, $P5009
    repr_bind_attr_str $P101, $P5004, "$!name", $S5001
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_38_1347104163.3") :anon :lex :outer("cuid_41_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    unless _lex_param_1 goto if73_else202 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 34
.annotate 'line', 315
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback204
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5004
  fallback204:
    $P5005 = "&unique"($P5003)
    set $S5001, $P5005
    repr_bind_attr_str $P5001, $P5002, "$!name", $S5001
    set $S5003, $S5001
    goto if73_end203
  if73_else202:
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 34
    repr_get_attr_str $S5002, $P5006, $P5007, "$!name"
    set $S5003, $S5002
  if73_end203:
    .return ($S5003) 
.end
.HLL "nqp"
.namespace []
.sub "result" :subid("cuid_39_1347104163.3") :anon :lex :outer("cuid_41_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 34
    repr_get_attr_str $S5001, $P5001, $P5002, "$!name"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_40_1347104163.3") :anon :lex :outer("cuid_41_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 322
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 34
    repr_get_attr_str $S5003, $P5001, $P5002, "$!name"
    concat $S5002, "  ", $S5003
    concat $S5001, $S5002, ":"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_58_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 330
    .const 'Sub' $P5027 = 'cuid_173_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_42_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_43_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_44_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_45_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_46_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_47_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_48_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_49_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_50_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_51_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_52_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_53_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_54_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_55_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_56_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_57_1347104163.3' 
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
    .const 'Sub' $P5010 = 'cuid_173_1347104163.3' 
    capture_lex $P5010
    set $P110, $P5010
    .const 'Sub' $P5011 = 'cuid_42_1347104163.3' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_43_1347104163.3' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_44_1347104163.3' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_45_1347104163.3' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_46_1347104163.3' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_47_1347104163.3' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_48_1347104163.3' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_49_1347104163.3' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_50_1347104163.3' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_51_1347104163.3' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_52_1347104163.3' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_53_1347104163.3' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_54_1347104163.3' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_55_1347104163.3' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_56_1347104163.3' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_57_1347104163.3' 
    capture_lex $P5026
    .return ($P110) 
.end
.HLL "nqp"
.namespace []
.sub "pirop_mapper" :subid("cuid_173_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 506
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_167_1347104163.3' 
    capture_lex $P5017 
    .lex "@arg_types", $P101 
    .lex "$ret_type", $P102 
    .lex "$ret_meth", $P103 
    .lex "$pirop", _lex_param_0 
    .lex "$sig", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    set $S5001, _lex_param_1
    split $P5004, "", $S5001
    set $P101, $P5004
.annotate 'line', 509
    $P5005 = $P101."shift"()
    set $P102, $P5005
    set $S5002, $P102
    iseq $I5001, $S5002, "P"
    unless $I5001 goto if74_else205 
.annotate 'line', 513
    box $P5006, "fresh_p"
    set $P103, $P5006
    set $P5014, $P103
    goto if74_end206
  if74_else205:
    set $S5003, $P102
    iseq $I5002, $S5003, "S"
    unless $I5002 goto if75_else207 
.annotate 'line', 514
    box $P5007, "fresh_s"
    set $P103, $P5007
    set $P5013, $P103
    goto if75_end208
  if75_else207:
    set $S5004, $P102
    iseq $I5003, $S5004, "I"
    unless $I5003 goto if76_else209 
.annotate 'line', 515
    box $P5008, "fresh_i"
    set $P103, $P5008
    set $P5012, $P103
    goto if76_end210
  if76_else209:
    set $S5005, $P102
    iseq $I5004, $S5005, "N"
    box $P5011, $I5004
    set $P5010, $P5011
    unless $I5004 goto if77_end212 
.annotate 'line', 516
    box $P5009, "fresh_n"
    set $P103, $P5009
    set $P5010, $P103
  if77_end212:
    set $P5012, $P5010
  if76_end210:
    set $P5013, $P5012
  if75_end208:
    set $P5014, $P5013
  if74_end206:
    .const 'Sub' $P5016 = 'cuid_167_1347104163.3' 
    capture_lex $P5016
    newclosure $P5015, $P5016
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1347104163.3") :anon :lex :outer("cuid_173_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 518
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5040 = 'cuid_166_1347104163.3' 
    capture_lex $P5040 
    .const 'Sub' $P5040 = 'cuid_169_1347104163.3' 
    capture_lex $P5040 
    .const 'Sub' $P5040 = 'cuid_172_1347104163.3' 
    capture_lex $P5040 
    .lex "$ops", $P101 
    .lex "@args", $P102 
    .lex "$num_args", $P103 
    .lex "$i", $P104 
    .lex "$last_argtype_was_Q", $P105 
    .lex "$aggregate", $P106 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op_name", _lex_param_1 
    .lex "@op_args", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
.annotate 'line', 519
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "PIRT"
    get_who $P5008, $P5009
    set $P5007, $P5008["Ops"]
    unless_null $P5007, fallback213
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5011
  fallback213:
    $P5012 = $P5007."new"()
    set $P101, $P5012
    find_lex $P5013, "$ret_meth"
    set $P5016, $P5013
    unless $P5013 goto if78_end215 
    .const 'Sub' $P5014 = 'cuid_166_1347104163.3' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
  if78_end215:
    set $N5001, _lex_param_2
    box $P5017, $N5001
    set $P103, $P5017
    find_lex $P5018, "@arg_types"
    set $N5002, $P5018
    set $N5003, $P103
    isne $I5001, $N5002, $N5003
    box $P5022, $I5001
    set $P5021, $P5022
    unless $I5001 goto if80_end220 
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
  if80_end220:
    box $P5023, 0
    set $P104, $P5023
    box $P5024, 0
    set $P105, $P5024
    box $P5025, ""
    set $P106, $P5025
  while81_test221:
    set $N5005, $P104
    set $N5006, $P103
    islt $I5002, $N5005, $N5006
    box $P5029, $I5002
    set $P5028, $P5029
    unless $I5002 goto while81_done225 
  while81_redo223:
    .const 'Sub' $P5026 = 'cuid_169_1347104163.3' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
    goto while81_test221 
  while81_done225:
    find_lex $P5030, "$ret_meth"
    isfalse $I5003, $P5030
    set $I5005, $I5003
    unless $I5003 goto if88_end241 
    find_lex $P5031, "$ret_type"
    set $S5009, $P5031
    isne $I5004, $S5009, "v"
    set $I5005, $I5004
  if88_end241:
    set $I5007, $I5005
    unless $I5005 goto if87_end239 
    find_lex $P5032, "$ret_type"
    set $N5007, $P5032
    set $S5010, $N5007
    find_lex $P5033, "$ret_type"
    set $S5011, $P5033
    iseq $I5006, $S5010, $S5011
    set $I5007, $I5006
  if87_end239:
    box $P5037, $I5007
    set $P5036, $P5037
    unless $I5007 goto if86_end237 
    .const 'Sub' $P5034 = 'cuid_172_1347104163.3' 
    capture_lex $P5034
    $P5035 = $P5034()
    set $P5036, $P5035
  if86_end237:
.annotate 'line', 580
    find_lex $P5038, "$pirop"
    $P5039 = $P101."push_pirop"($P5038, $P102 :flat)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1347104163.3") :anon :lex :outer("cuid_167_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 524
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 525
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback216
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback217
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback217:
    unless_null $P5004, vivi_79218
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_79218:
    set $P5003, $P5004
  fallback216:
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
.sub "" :subid("cuid_169_1347104163.3") :anon :lex :outer("cuid_167_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 539
    .const 'Sub' $P5022 = 'cuid_168_1347104163.3' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_170_1347104163.3' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_171_1347104163.3' 
    capture_lex $P5022 
    .lex "$arg_type", $P101 
    .lex "$operand", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    find_lex $P5004, "@arg_types"
    find_lex $P5005, "$i"
    set $I5001, $P5005
    set $P5003, $P5004[$I5001]
    unless_null $P5003, fallback226
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback226:
    set $P101, $P5003
    find_lex $P5008, "@op_args"
    find_lex $P5009, "$i"
    set $I5002, $P5009
    set $P5007, $P5008[$I5002]
    unless_null $P5007, fallback227
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5010
  fallback227:
    set $P102, $P5007
    set $S5001, $P101
    iseq $I5003, $S5001, "Q"
    unless $I5003 goto if82_else228 
    .const 'Sub' $P5011 = 'cuid_168_1347104163.3' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5019, $P5012
    goto if82_end229
  if82_else228:
    find_lex $P5013, "$last_argtype_was_Q"
    unless $P5013 goto if83_else230 
    .const 'Sub' $P5014 = 'cuid_170_1347104163.3' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5018, $P5015
    goto if83_end231
  if83_else230:
    .const 'Sub' $P5016 = 'cuid_171_1347104163.3' 
    capture_lex $P5016
    $P5017 = $P5016()
    set $P5018, $P5017
  if83_end231:
    set $P5019, $P5018
  if82_end229:
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
.sub "" :subid("cuid_168_1347104163.3") :anon :lex :outer("cuid_169_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 542
    .lex "$post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_170_1347104163.3") :anon :lex :outer("cuid_169_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 548
    .lex "$post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    find_lex $P5002, "$arg_type"
    set $S5001, $P5002
    isne $I5001, $S5001, "P"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if84_end233 
.annotate 'line', 549
.annotate 'line', 550
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$operand"
    find_lex $P5005, "$arg_type"
    $P5006 = $P5003."apply_context"($P5004, $P5005)
    store_lex "$operand", $P5006
    set $P5007, $P5006
  if84_end233:
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
.sub "" :subid("cuid_171_1347104163.3") :anon :lex :outer("cuid_169_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 557
    .lex "$post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    find_lex $P5002, "$arg_type"
    set $S5001, $P5002
    isne $I5001, $S5001, "P"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if85_end235 
.annotate 'line', 558
.annotate 'line', 559
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$operand"
    find_lex $P5005, "$arg_type"
    $P5006 = $P5003."apply_context"($P5004, $P5005)
    store_lex "$operand", $P5006
    set $P5007, $P5006
  if85_end235:
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
.sub "" :subid("cuid_172_1347104163.3") :anon :lex :outer("cuid_167_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 570
    .lex "$rreg", $P101 
    .lex "$brak", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    find_lex $P5004, "@args"
    find_lex $P5005, "$ret_type"
    set $N5001, $P5005
    set $I5001, $N5001
    set $P5003, $P5004[$I5001]
    unless_null $P5003, fallback242
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback242:
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
    unless $I5003 goto if89_end244 
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
  if89_end244:
.annotate 'line', 576
    find_lex $P5011, "$ops"
    $P5012 = $P5011."result"($P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "compile_op" :subid("cuid_42_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 354
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5023 = 'cuid_174_1347104163.3' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_175_1347104163.3' 
    capture_lex $P5023 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$hll", _lex_param_2 
    .lex "$op", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_245
    .lex "RETURN", $P102
.annotate 'line', 355
    $P5002 = _lex_param_3."op"()
    set $P101, $P5002
    set $P5015, _lex_param_2
    unless _lex_param_2 goto if90_end248 
.annotate 'line', 356
    find_lex $P5004, "%hll_ops"
    set $S5001, _lex_param_2
    set $P5003, $P5004[$S5001]
    unless_null $P5003, fallback253
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5005
  fallback253:
    set $P5011, $P5003
    unless $P5003 goto if92_end252 
    find_lex $P5008, "%hll_ops"
    set $S5002, _lex_param_2
    set $P5007, $P5008[$S5002]
    unless_null $P5007, fallback254
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5009
  fallback254:
    set $S5003, $P101
    set $P5006, $P5007[$S5003]
    unless_null $P5006, fallback255
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5010
  fallback255:
    set $P5011, $P5006
  if92_end252:
    set $P5014, $P5011
    unless $P5011 goto if91_end250 
    .const 'Sub' $P5012 = 'cuid_174_1347104163.3' 
    capture_lex $P5012
    $P5013 = $P5012($P5011)
    set $P5014, $P5013
  if91_end250:
    set $P5015, $P5014
  if90_end248:
    find_lex $P5017, "%core_ops"
    set $S5004, $P101
    set $P5016, $P5017[$S5004]
    unless_null $P5016, fallback258
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5016, $P5018
  fallback258:
    set $P5021, $P5016
    unless $P5016 goto if93_end257 
    .const 'Sub' $P5019 = 'cuid_175_1347104163.3' 
    capture_lex $P5019
    $P5020 = $P5019($P5016)
    set $P5021, $P5020
  if93_end257:
    set $S5007, $P101
    concat $S5006, "No registered operation handler for '", $S5007
    concat $S5005, $S5006, "'"
    box $P5022, $S5005
    die $P5022
    goto lexotic_246
  lexotic_245:
    .get_results ($P5022)
  lexotic_246:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1347104163.3") :anon :lex :outer("cuid_42_1347104163.3")
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
.sub "" :subid("cuid_175_1347104163.3") :anon :lex :outer("cuid_42_1347104163.3")
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
.sub "compile_pirop" :subid("cuid_43_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5014 = 'cuid_176_1347104163.3' 
    capture_lex $P5014 
    .lex "self", _lex_param_0 
    .lex "$qastcomp", _lex_param_1 
    .lex "$op_name", _lex_param_2 
    .lex "@op_args", _lex_param_3 
    set $S5001, _lex_param_2
    index $I5001, $S5001, " ", 0
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if94_end260 
.annotate 'line', 369
    set $S5003, _lex_param_2
    split $P5001, " ", $S5003
    join $S5002, "__", $P5001
    box $P5002, $S5002
    set _lex_param_2, $P5002
    set $P5003, _lex_param_2
  if94_end260:
    find_lex $P5005, "%cached_pirops"
    set $S5004, _lex_param_2
    exists $I5002, $P5005[$S5004]
    box $P5009, $I5002
    set $P5008, $P5009
    if $I5002 goto unless95_end262 
    .const 'Sub' $P5006 = 'cuid_176_1347104163.3' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  unless95_end262:
.annotate 'line', 376
    find_lex $P5011, "%cached_pirops"
    set $S5005, _lex_param_2
    set $P5010, $P5011[$S5005]
    unless_null $P5010, fallback265
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5012
  fallback265:
    $P5013 = $P5010(_lex_param_1, _lex_param_2, _lex_param_3)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1347104163.3") :anon :lex :outer("cuid_43_1347104163.3")
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
    unless_null $P5006, fallback263
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5007
  fallback263:
    set $P5008, $P101[1]
    unless_null $P5008, fallback264
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5009
  fallback264:
    $P5010 = "&pirop_mapper"($P5006, $P5008)
    set $P5004[$S5002], $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "add_core_op" :subid("cuid_44_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 380
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("inlinable") :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default266
    box $P5004, 0
    set _lex_param_3, $P5004
  default266:
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
.sub "add_hll_op" :subid("cuid_45_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 386
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 :named("inlinable") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default270
    box $P5011, 0
    set _lex_param_4, $P5011
  default270:
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
    if $I5001 goto unless96_end268 
    find_lex $P5002, "%hll_ops"
    set $S5002, _lex_param_1
    new $P5003, 'Hash'
    set $P5002[$S5002], $P5003
    set $P5004, $P5003
  unless96_end268:
    find_lex $P5007, "%hll_ops"
    set $S5003, _lex_param_1
    set $P5006, $P5007[$S5003]
    unless_null $P5006, fallback269
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5008
  fallback269:
    set $S5004, _lex_param_2
    set $P5006[$S5004], _lex_param_3
.annotate 'line', 389
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."set_hll_op_inlinability"(_lex_param_1, _lex_param_2, _lex_param_4)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "add_core_pirop_mapping" :subid("cuid_46_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 393
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 :named("inlinable") :optional 
    .param int haz_param_9 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_177_1347104163.3' 
    capture_lex $P5011 
    if haz_param_9, default271
    box $P5010, 0
    set _lex_param_4, $P5010
  default271:
    .lex "$pirop_mapper", $P101 
    .lex "self", _lex_param_0 
    .lex "$op", _lex_param_1 
    .lex "$pirop", _lex_param_2 
    .lex "$sig", _lex_param_3 
    .lex "$inlinable", _lex_param_4 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 394
    $P5002 = "&pirop_mapper"(_lex_param_2, _lex_param_3)
    set $P101, $P5002
    find_lex $P5003, "%core_ops"
    set $S5001, _lex_param_1
    .const 'Sub' $P5005 = 'cuid_177_1347104163.3' 
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
.sub "" :subid("cuid_177_1347104163.3") :anon :lex :outer("cuid_46_1347104163.3")
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
.sub "add_hll_pirop_mapping" :subid("cuid_47_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 403
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("inlinable") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_178_1347104163.3' 
    capture_lex $P5018 
    if haz_param_10, default275
    box $P5017, 0
    set _lex_param_5, $P5017
  default275:
    .lex "$pirop_mapper", $P101 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    .lex "$pirop", _lex_param_3 
    .lex "$sig", _lex_param_4 
    .lex "$inlinable", _lex_param_5 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 404
    $P5002 = "&pirop_mapper"(_lex_param_3, _lex_param_4)
    set $P101, $P5002
    find_lex $P5003, "%hll_ops"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    box $P5007, $I5001
    set $P5006, $P5007
    if $I5001 goto unless97_end273 
    find_lex $P5004, "%hll_ops"
    set $S5002, _lex_param_1
    new $P5005, 'Hash'
    set $P5004[$S5002], $P5005
    set $P5006, $P5005
  unless97_end273:
    find_lex $P5009, "%hll_ops"
    set $S5003, _lex_param_1
    set $P5008, $P5009[$S5003]
    unless_null $P5008, fallback274
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5010
  fallback274:
    set $S5004, _lex_param_2
    .const 'Sub' $P5012 = 'cuid_178_1347104163.3' 
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
.sub "" :subid("cuid_178_1347104163.3") :anon :lex :outer("cuid_47_1347104163.3")
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
.sub "set_core_op_inlinability" :subid("cuid_48_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
.sub "set_hll_op_inlinability" :subid("cuid_49_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
    if $I5001 goto unless98_end277 
    find_lex $P5002, "%hll_inlinability"
    set $S5002, _lex_param_1
    new $P5003, 'Hash'
    set $P5002[$S5002], $P5003
    set $P5004, $P5003
  unless98_end277:
    find_lex $P5007, "%hll_inlinability"
    set $S5003, _lex_param_1
    set $P5006, $P5007[$S5003]
    unless_null $P5006, fallback278
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5008
  fallback278:
    set $S5004, _lex_param_2
    set $P5006[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "is_inlinable" :subid("cuid_50_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$op", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_279
    .lex "RETURN", $P101
    find_lex $P5001, "%hll_inlinability"
    set $S5001, _lex_param_1
    exists $I5001, $P5001[$S5001]
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if99_end282 
.annotate 'line', 427
    find_lex $P5003, "%hll_inlinability"
    set $S5002, _lex_param_1
    set $P5002, $P5003[$S5002]
    unless_null $P5002, fallback285
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5004
  fallback285:
    set $S5003, _lex_param_2
    exists $I5002, $P5002[$S5003]
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto if100_end284 
.annotate 'line', 428
    find_lex $P5008, "%hll_inlinability"
    set $S5004, _lex_param_1
    set $P5007, $P5008[$S5004]
    unless_null $P5007, fallback286
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5009
  fallback286:
    set $S5005, _lex_param_2
    set $P5006, $P5007[$S5005]
    unless_null $P5006, fallback287
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5010
  fallback287:
    find_lex $P5005, "RETURN"
    $P5011 = $P5005($P5006)
    set $P5012, $P5011
  if100_end284:
    set $P5014, $P5012
  if99_end282:
    find_lex $P5019, "%core_inlinability"
    set $S5006, _lex_param_2
    set $P5018, $P5019[$S5006]
    unless_null $P5018, fallback289
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5018, $P5020
  fallback289:
    set $P5017, $P5018
    defined $I5003, $P5017
    if $I5003, defor288
    box $P5021, 0
    set $P5017, $P5021
  defor288:
    find_lex $P5016, "RETURN"
    $P5022 = $P5016($P5017)
    goto lexotic_280
  lexotic_279:
    .get_results ($P5022)
  lexotic_280:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "set_core_op_result_type" :subid("cuid_51_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
    unless $I5001 goto if101_else290 
.annotate 'line', 437
    find_lex $P5001, "%core_result_type"
    set $S5002, _lex_param_1
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 2
    set $P5001[$S5002], $P5002
    set $P5010, $P5002
    goto if101_end291
  if101_else290:
    set $S5003, _lex_param_2
    iseq $I5002, $S5003, "N"
    unless $I5002 goto if102_else292 
.annotate 'line', 440
    find_lex $P5003, "%core_result_type"
    set $S5004, _lex_param_1
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 3
    set $P5003[$S5004], $P5004
    set $P5009, $P5004
    goto if102_end293
  if102_else292:
    set $S5005, _lex_param_2
    iseq $I5003, $S5005, "S"
    box $P5008, $I5003
    set $P5007, $P5008
    unless $I5003 goto if103_end295 
.annotate 'line', 443
    find_lex $P5005, "%core_result_type"
    set $S5006, _lex_param_1
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 4
    set $P5005[$S5006], $P5006
    set $P5007, $P5006
  if103_end295:
    set $P5009, $P5007
  if102_end293:
    set $P5010, $P5009
  if101_end291:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "set_hll_op_result_type" :subid("cuid_52_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
    if $I5001 goto unless104_end297 
    find_lex $P5002, "%hll_result_type"
    set $S5002, _lex_param_1
    new $P5003, 'Hash'
    set $P5002[$S5002], $P5003
    set $P5004, $P5003
  unless104_end297:
    set $S5003, _lex_param_3
    iseq $I5002, $S5003, "I"
    unless $I5002 goto if105_else298 
.annotate 'line', 452
    find_lex $P5007, "%hll_result_type"
    set $S5004, _lex_param_1
    set $P5006, $P5007[$S5004]
    unless_null $P5006, fallback300
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5008
  fallback300:
    set $S5005, _lex_param_2
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 2
    set $P5006[$S5005], $P5009
    set $P5021, $P5009
    goto if105_end299
  if105_else298:
    set $S5006, _lex_param_3
    iseq $I5003, $S5006, "N"
    unless $I5003 goto if106_else301 
.annotate 'line', 455
    find_lex $P5011, "%hll_result_type"
    set $S5007, _lex_param_1
    set $P5010, $P5011[$S5007]
    unless_null $P5010, fallback303
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5012
  fallback303:
    set $S5008, _lex_param_2
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 3
    set $P5010[$S5008], $P5013
    set $P5020, $P5013
    goto if106_end302
  if106_else301:
    set $S5009, _lex_param_3
    iseq $I5004, $S5009, "S"
    box $P5019, $I5004
    set $P5018, $P5019
    unless $I5004 goto if107_end305 
.annotate 'line', 458
    find_lex $P5015, "%hll_result_type"
    set $S5010, _lex_param_1
    set $P5014, $P5015[$S5010]
    unless_null $P5014, fallback306
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5014, $P5016
  fallback306:
    set $S5011, _lex_param_2
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 4
    set $P5014[$S5011], $P5017
    set $P5018, $P5017
  if107_end305:
    set $P5020, $P5018
  if106_end302:
    set $P5021, $P5020
  if105_end299:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "attach_result_type" :subid("cuid_53_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 464
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$op", $P101 
    .lex "self", _lex_param_0 
    .lex "$hll", _lex_param_1 
    .lex "$node", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_307
    .lex "RETURN", $P102
.annotate 'line', 465
    $P5002 = _lex_param_2."op"()
    set $P101, $P5002
    find_lex $P5003, "%hll_result_type"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    box $P5018, $I5001
    set $P5017, $P5018
    unless $I5001 goto if108_end310 
.annotate 'line', 466
    find_lex $P5005, "%hll_result_type"
    set $S5002, _lex_param_1
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback313
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5006
  fallback313:
    set $S5003, $P101
    exists $I5002, $P5004[$S5003]
    box $P5016, $I5002
    set $P5015, $P5016
    unless $I5002 goto if109_end312 
.annotate 'line', 467
.annotate 'line', 468
    find_lex $P5009, "%hll_result_type"
    set $S5004, _lex_param_1
    set $P5008, $P5009[$S5004]
    unless_null $P5008, fallback314
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5010
  fallback314:
    set $S5005, $P101
    set $P5007, $P5008[$S5005]
    unless_null $P5007, fallback315
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5011
  fallback315:
    $P5012 = _lex_param_2."returns"($P5007)
    find_lex $P5013, "RETURN"
    $P5014 = $P5013(1)
    set $P5015, $P5014
  if109_end312:
    set $P5017, $P5015
  if108_end310:
    find_lex $P5019, "%core_result_type"
    set $S5006, $P101
    exists $I5003, $P5019[$S5006]
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto if110_end317 
.annotate 'line', 472
.annotate 'line', 473
    find_lex $P5021, "%core_result_type"
    set $S5007, $P101
    set $P5020, $P5021[$S5007]
    unless_null $P5020, fallback318
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5020, $P5022
  fallback318:
    $P5023 = _lex_param_2."returns"($P5020)
    set $P5024, $P5023
  if110_end317:
    goto lexotic_308
  lexotic_307:
    .get_results ($P5024)
  lexotic_308:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_box" :subid("cuid_54_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
    if $I5001 goto unless113_end324 
    set $S5002, _lex_param_2
    iseq $I5002, $S5002, "n"
    set $I5003, $I5002
  unless113_end324:
    set $I5005, $I5003
    if $I5003 goto unless112_end322 
    set $S5003, _lex_param_2
    iseq $I5004, $S5003, "s"
    set $I5005, $I5004
  unless112_end322:
    box $P5003, $I5005
    set $P5002, $P5003
    if $I5005 goto unless111_end320 
.annotate 'line', 479
    set $S5006, _lex_param_2
    concat $S5005, "Unknown box type '", $S5006
    concat $S5004, $S5005, "'"
    box $P5001, $S5004
    die $P5001
    set $P5002, $P5001
  unless111_end320:
    find_lex $P5004, "%hll_box"
    set $S5007, _lex_param_1
    exists $I5006, $P5004[$S5007]
    box $P5008, $I5006
    set $P5007, $P5008
    if $I5006 goto unless114_end326 
    find_lex $P5005, "%hll_box"
    set $S5008, _lex_param_1
    new $P5006, 'Hash'
    set $P5005[$S5008], $P5006
    set $P5007, $P5006
  unless114_end326:
    find_lex $P5010, "%hll_box"
    set $S5009, _lex_param_1
    set $P5009, $P5010[$S5009]
    unless_null $P5009, fallback327
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5011
  fallback327:
    set $S5010, _lex_param_2
    set $P5009[$S5010], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_hll_unbox" :subid("cuid_55_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
    if $I5001 goto unless117_end333 
    set $S5002, _lex_param_2
    iseq $I5002, $S5002, "n"
    set $I5003, $I5002
  unless117_end333:
    set $I5005, $I5003
    if $I5003 goto unless116_end331 
    set $S5003, _lex_param_2
    iseq $I5004, $S5003, "s"
    set $I5005, $I5004
  unless116_end331:
    box $P5003, $I5005
    set $P5002, $P5003
    if $I5005 goto unless115_end329 
.annotate 'line', 488
    set $S5006, _lex_param_2
    concat $S5005, "Unknown unbox type '", $S5006
    concat $S5004, $S5005, "'"
    box $P5001, $S5004
    die $P5001
    set $P5002, $P5001
  unless115_end329:
    find_lex $P5004, "%hll_unbox"
    set $S5007, _lex_param_1
    exists $I5006, $P5004[$S5007]
    box $P5008, $I5006
    set $P5007, $P5008
    if $I5006 goto unless118_end335 
    find_lex $P5005, "%hll_unbox"
    set $S5008, _lex_param_1
    new $P5006, 'Hash'
    set $P5005[$S5008], $P5006
    set $P5007, $P5006
  unless118_end335:
    find_lex $P5010, "%hll_unbox"
    set $S5009, _lex_param_1
    set $P5009, $P5010[$S5009]
    unless_null $P5009, fallback336
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5011
  fallback336:
    set $S5010, _lex_param_2
    set $P5009[$S5010], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "box" :subid("cuid_56_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
    unless_null $P5002, fallback337
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5004
  fallback337:
    set $S5002, _lex_param_3
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback338
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback338:
    $P5006 = $P5001(_lex_param_1, _lex_param_4)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "unbox" :subid("cuid_57_1347104163.3") :anon :lex :outer("cuid_58_1347104163.3")
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
    unless_null $P5002, fallback339
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5004
  fallback339:
    set $S5002, _lex_param_3
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback340
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback340:
    $P5006 = $P5001(_lex_param_1, _lex_param_4)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 587
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5023 = 'cuid_179_1347104163.3' 
    capture_lex $P5023 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 589
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback342
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback343
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback343:
    unless_null $P5004, vivi_119344
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_119344:
    set $P5003, $P5004
  fallback342:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 590
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback345
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback345:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 591
    $P5016 = $P102."push_pirop"("new", $P101, "'ResizablePMCArray'")
.annotate 'line', 594
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next346:
    unless $P5019, for_done348
    shift $P5022, $P5019
  for_redo347:
    .const 'Sub' $P5021 = 'cuid_179_1347104163.3' 
    capture_lex $P5021
    $P5017 = $P5021($P5022)
    goto for_next346
  for_done348:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1347104163.3") :anon :lex :outer("cuid_180_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 594
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_182_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 603
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5023 = 'cuid_181_1347104163.3' 
    capture_lex $P5023 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 605
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback350
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback351
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback351:
    unless_null $P5004, vivi_120352
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_120352:
    set $P5003, $P5004
  fallback350:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 606
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback353
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback353:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 607
    $P5016 = $P102."push_pirop"("new", $P101, "'QRPA'")
.annotate 'line', 610
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next354:
    unless $P5019, for_done356
    shift $P5022, $P5019
  for_redo355:
    .const 'Sub' $P5021 = 'cuid_181_1347104163.3' 
    capture_lex $P5021
    $P5017 = $P5021($P5022)
    goto for_next354
  for_done356:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1347104163.3") :anon :lex :outer("cuid_182_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 610
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_184_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 619
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5023 = 'cuid_183_1347104163.3' 
    capture_lex $P5023 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 621
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback358
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback359
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback359:
    unless_null $P5004, vivi_121360
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_121360:
    set $P5003, $P5004
  fallback358:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 622
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback361
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback361:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 623
    $P5016 = $P102."push_pirop"("new", $P101, "'ResizableIntegerArray'")
.annotate 'line', 626
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next362:
    unless $P5019, for_done364
    shift $P5022, $P5019
  for_redo363:
    .const 'Sub' $P5021 = 'cuid_183_1347104163.3' 
    capture_lex $P5021
    $P5017 = $P5021($P5022)
    goto for_next362
  for_done364:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1347104163.3") :anon :lex :outer("cuid_184_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 626
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_186_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 635
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5023 = 'cuid_185_1347104163.3' 
    capture_lex $P5023 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 637
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback366
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback367
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback367:
    unless_null $P5004, vivi_122368
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_122368:
    set $P5003, $P5004
  fallback366:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 638
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback369
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback369:
    $P5015 = $P5010."new"($P101 :named("result"))
    set $P102, $P5015
.annotate 'line', 639
    $P5016 = $P102."push_pirop"("new", $P101, "'ResizableStringArray'")
.annotate 'line', 642
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next370:
    unless $P5019, for_done372
    shift $P5022, $P5019
  for_redo371:
    .const 'Sub' $P5021 = 'cuid_185_1347104163.3' 
    capture_lex $P5021
    $P5017 = $P5021($P5022)
    goto for_next370
  for_done372:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1347104163.3") :anon :lex :outer("cuid_186_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 642
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_188_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 651
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_187_1347104163.3' 
    capture_lex $P5031 
    .lex "$list_reg", $P101 
    .lex "$ops", $P102 
    .lex "$block_reg", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 653
    find_dynamic_lex $P5004, "$*REGALLOC"
    unless_null $P5004, fallback374
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$REGALLOC"]
    unless_null $P5005, fallback375
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  fallback375:
    unless_null $P5005, vivi_123376
    die "Contextual $*REGALLOC not found"
    box $P5009, "Contextual $*REGALLOC not found"
    set $P5005, $P5009
  vivi_123376:
    set $P5004, $P5005
  fallback374:
    $P5010 = $P5004."fresh_p"()
    set $P101, $P5010
.annotate 'line', 654
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "PIRT"
    get_who $P5012, $P5013
    set $P5011, $P5012["Ops"]
    unless_null $P5011, fallback377
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5015
  fallback377:
    $P5016 = $P5011."new"($P101 :named("result"))
    set $P102, $P5016
.annotate 'line', 655
    $P5017 = $P102."push_pirop"("new", $P101, "'ResizablePMCArray'")
.annotate 'line', 658
    find_dynamic_lex $P5018, "$*REGALLOC"
    unless_null $P5018, fallback378
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["$REGALLOC"]
    unless_null $P5019, fallback379
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5022
  fallback379:
    unless_null $P5019, vivi_124380
    die "Contextual $*REGALLOC not found"
    box $P5023, "Contextual $*REGALLOC not found"
    set $P5019, $P5023
  vivi_124380:
    set $P5018, $P5019
  fallback378:
    $P5024 = $P5018."fresh_p"()
    set $P103, $P5024
.annotate 'line', 659
    $P5028 = _lex_param_1."list"()
    set $P5025, $P5028
    iter $P5027, $P5028
  for_next381:
    unless $P5027, for_done383
    shift $P5030, $P5027
  for_redo382:
    .const 'Sub' $P5029 = 'cuid_187_1347104163.3' 
    capture_lex $P5029
    $P5025 = $P5029($P5030)
    goto for_next381
  for_done383:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1347104163.3") :anon :lex :outer("cuid_188_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 659
    .param pmc _lex_param_0 
    .lex "$cuid", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
.sub "" :subid("cuid_190_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 668
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5025 = 'cuid_189_1347104163.3' 
    capture_lex $P5025 
    .lex "$hash_reg", $P101 
    .lex "$ops", $P102 
    .lex "$i", $P103 
    .lex "@op_list", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
.annotate 'line', 670
    find_dynamic_lex $P5005, "$*REGALLOC"
    unless_null $P5005, fallback385
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["$REGALLOC"]
    unless_null $P5006, fallback386
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5009
  fallback386:
    unless_null $P5006, vivi_125387
    die "Contextual $*REGALLOC not found"
    box $P5010, "Contextual $*REGALLOC not found"
    set $P5006, $P5010
  vivi_125387:
    set $P5005, $P5006
  fallback385:
    $P5011 = $P5005."fresh_p"()
    set $P101, $P5011
.annotate 'line', 671
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "PIRT"
    get_who $P5013, $P5014
    set $P5012, $P5013["Ops"]
    unless_null $P5012, fallback388
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5016
  fallback388:
    $P5017 = $P5012."new"($P101 :named("result"))
    set $P102, $P5017
.annotate 'line', 672
    $P5018 = $P102."push_pirop"("new", $P101, "'Hash'")
    box $P5019, 0
    set $P103, $P5019
.annotate 'line', 676
    $P5020 = _lex_param_1."list"()
    set $P104, $P5020
  while126_test389:
    set $N5001, $P103
    set $N5002, $P104
    islt $I5001, $N5001, $N5002
    box $P5024, $I5001
    set $P5023, $P5024
    unless $I5001 goto while126_done393 
  while126_redo391:
    .const 'Sub' $P5021 = 'cuid_189_1347104163.3' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
    goto while126_test389 
  while126_done393:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1347104163.3") :anon :lex :outer("cuid_190_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 677
    .lex "$kpost", $P101 
    .lex "$vpost", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 678
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$qastcomp"
    find_lex $P5006, "@op_list"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback394
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  fallback394:
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
    unless_null $P5017, fallback395
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5020
  fallback395:
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
.sub "" :subid("cuid_192_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 693
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5051 = 'cuid_191_1347104163.3' 
    capture_lex $P5051 
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
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    set $P102, _lex_param_1
  while127_test397:
.annotate 'line', 697
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["Op"]
    unless_null $P5008, fallback404
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5012
  fallback404:
    $P5013 = $P5008."ACCEPTS"($P102)
    set $P5015, $P5013
    unless $P5013 goto if128_end403 
    $P5014 = $P102."op"()
    set $S5001, $P5014
    iseq $I5001, $S5001, "chain"
    box $P5016, $I5001
    set $P5015, $P5016
  if128_end403:
    set $P5019, $P5015
    unless $P5015 goto while127_done401 
  while127_redo399:
    push $P101, $P102
    set $P5017, $P102[0]
    unless_null $P5017, fallback405
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5018
  fallback405:
    set $P102, $P5017
    set $P5019, $P102
    goto while127_test397 
  while127_done401:
.annotate 'line', 702
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "PIRT"
    get_who $P5021, $P5022
    set $P5020, $P5021["Ops"]
    unless_null $P5020, fallback406
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5020, $P5024
  fallback406:
    find_dynamic_lex $P5025, "$*REGALLOC"
    unless_null $P5025, fallback407
    get_hll_global $P5028, "GLOBAL"
    get_who $P5027, $P5028
    set $P5026, $P5027["$REGALLOC"]
    unless_null $P5026, fallback408
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5026, $P5029
  fallback408:
    unless_null $P5026, vivi_129409
    die "Contextual $*REGALLOC not found"
    box $P5030, "Contextual $*REGALLOC not found"
    set $P5026, $P5030
  vivi_129409:
    set $P5025, $P5026
  fallback407:
    $P5031 = $P5025."fresh_p"()
    $P5032 = $P5020."new"($P5031 :named("result"))
    set $P103, $P5032
.annotate 'line', 703
    get_hll_global $P5036, "GLOBAL"
    nqp_get_package_through_who $P5035, $P5036, "PIRT"
    get_who $P5034, $P5035
    set $P5033, $P5034["Label"]
    unless_null $P5033, fallback410
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5033, $P5037
  fallback410:
    $P5038 = _lex_param_0."unique"("chain_end_")
    $P5039 = $P5033."new"($P5038 :named("name"))
    set $P104, $P5039
    pop $P5040, $P101
    set $P102, $P5040
    set $P5041, $P102[0]
    unless_null $P5041, fallback411
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5041, $P5042
  fallback411:
    set $P105, $P5041
.annotate 'line', 707
    $P5043 = _lex_param_0."as_post"($P105)
    $P5044 = _lex_param_0."coerce"($P5043, "P")
    set $P106, $P5044
.annotate 'line', 708
    $P5045 = $P103."push"($P106)
    box $P5046, 1
    set $P107, $P5046
  while130_test412:
    set $P5049, $P107
    unless $P107 goto while130_done416 
  while130_redo414:
    .const 'Sub' $P5047 = 'cuid_191_1347104163.3' 
    capture_lex $P5047
    $P5048 = $P5047()
    set $P5049, $P5048
    goto while130_test412 
  while130_done416:
.annotate 'line', 729
    $P5050 = $P103."push"($P104)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1347104163.3") :anon :lex :outer("cuid_192_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 711
    .lex "$bpast", $P101 
    .lex "$bpost", $P102 
    .lex "$name", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    find_lex $P5005, "$cpast"
    set $P5004, $P5005[1]
    unless_null $P5004, fallback417
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5006
  fallback417:
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
    unless $P5021 goto if131_else418 
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
    goto if131_end419
  if131_else418:
.annotate 'line', 724
    box $P5028, 0
    store_lex "$more", $P5028
    set $P5029, $P5028
  if131_end419:
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
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
    unless_null $P5001, fallback421
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback421:
    $P5006 = _lex_param_1."list"()
    $P5007 = $P5001."new"($P5006 :flat)
    $P5008 = _lex_param_0."as_post"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 740
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_195_1347104163.3' 
    capture_lex $P5009 
    .lex "$op_name", _lex_param_0 
.annotate 'line', 741
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback422
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback422:
    .const 'Sub' $P5007 = 'cuid_195_1347104163.3' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."add_core_op"(_lex_param_0, $P5006, 1 :named("inlinable"))
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1347104163.3") :anon :lex :outer("cuid_199_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 741
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5098 = 'cuid_194_1347104163.3' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_196_1347104163.3' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_197_1347104163.3' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_198_1347104163.3' 
    capture_lex $P5098 
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    if $I5001 goto unless133_end426 
    set $N5004, $P101
    set $N5005, 3
    isgt $I5002, $N5004, $N5005
    set $I5003, $I5002
  unless133_end426:
    box $P5018, $I5003
    set $P5017, $P5018
    unless $I5003 goto if132_end424 
    find_lex $P5015, "$op_name"
    set $S5003, $P5015
    concat $S5002, "Operation '", $S5003
    concat $S5001, $S5002, "' needs either 2 or 3 operands"
    box $P5016, $S5001
    die $P5016
    set $P5017, $P5016
  if132_end424:
.annotate 'line', 748
    find_lex $P5019, "$op_name"
    $P5020 = _lex_param_0."unique"($P5019)
    set $P102, $P5020
.annotate 'line', 749
    get_hll_global $P5024, "GLOBAL"
    nqp_get_package_through_who $P5023, $P5024, "PIRT"
    get_who $P5022, $P5023
    set $P5021, $P5022["Label"]
    unless_null $P5021, fallback427
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5021, $P5025
  fallback427:
    set $S5005, $P102
    concat $S5004, $S5005, "_else"
    $P5026 = $P5021."new"($S5004 :named("name"))
    set $P103, $P5026
.annotate 'line', 750
    get_hll_global $P5030, "GLOBAL"
    nqp_get_package_through_who $P5029, $P5030, "PIRT"
    get_who $P5028, $P5029
    set $P5027, $P5028["Label"]
    unless_null $P5027, fallback428
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5027, $P5031
  fallback428:
    set $S5007, $P102
    concat $S5006, $S5007, "_end"
    $P5032 = $P5027."new"($S5006 :named("name"))
    set $P104, $P5032
.annotate 'line', 757
    $P5036 = _lex_param_1."list"()
    set $P5033, $P5036
    iter $P5035, $P5036
  for_next448:
    unless $P5035, for_done450
    shift $P5038, $P5035
  for_redo449:
    .const 'Sub' $P5037 = 'cuid_194_1347104163.3' 
    capture_lex $P5037
    $P5033 = $P5037($P5038)
    goto for_next448
  for_done450:
    set $N5006, $P101
    set $N5007, 3
    iseq $I5004, $N5006, $N5007
    unless $I5004 goto if141_else451 
    set $P5039, $P106[1]
    unless_null $P5039, fallback455
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5039, $P5040
  fallback455:
    set $S5008, $P5039
    set $P5041, $P106[2]
    unless_null $P5041, fallback456
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5041, $P5042
  fallback456:
    set $S5009, $P5041
    iseq $I5005, $S5008, $S5009
    unless $I5005 goto if142_else453 
    set $P5043, $P106[1]
    unless_null $P5043, fallback457
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5043, $P5044
  fallback457:
    set $S5011, $P5043
    downcase $S5010, $S5011
    set $S5012, $S5010
    goto if142_end454
  if142_else453:
    set $S5012, "p"
  if142_end454:
    set $S5018, $S5012
    goto if141_end452
  if141_else451:
    set $P5045, $P106[0]
    unless_null $P5045, fallback460
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5045, $P5046
  fallback460:
    set $S5013, $P5045
    set $P5047, $P106[1]
    unless_null $P5047, fallback461
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5047, $P5048
  fallback461:
    set $S5014, $P5047
    iseq $I5006, $S5013, $S5014
    unless $I5006 goto if143_else458 
    set $P5049, $P106[0]
    unless_null $P5049, fallback462
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5049, $P5050
  fallback462:
    set $S5016, $P5049
    downcase $S5015, $S5016
    set $S5017, $S5015
    goto if143_end459
  if143_else458:
    set $S5017, "p"
  if143_end459:
    set $S5018, $S5017
  if141_end452:
    box $P5051, $S5018
    set $P108, $P5051
.annotate 'line', 775
    find_dynamic_lex $P5052, "$*REGALLOC"
    unless_null $P5052, fallback463
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["$REGALLOC"]
    unless_null $P5053, fallback464
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5053, $P5056
  fallback464:
    unless_null $P5053, vivi_144465
    die "Contextual $*REGALLOC not found"
    box $P5057, "Contextual $*REGALLOC not found"
    set $P5053, $P5057
  vivi_144465:
    set $P5052, $P5053
  fallback463:
    set $S5020, $P108
    concat $S5019, "fresh_", $S5020
    $P5058 = $P5052.$S5019()
    set $P109, $P5058
.annotate 'line', 778
    get_hll_global $P5062, "GLOBAL"
    nqp_get_package_through_who $P5061, $P5062, "PIRT"
    get_who $P5060, $P5061
    set $P5059, $P5060["Ops"]
    unless_null $P5059, fallback466
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5059, $P5063
  fallback466:
    $P5064 = $P5059."new"()
    set $P110, $P5064
    set $N5008, $P101
    set $N5009, 2
    iseq $I5007, $N5008, $N5009
    unless $I5007 goto if145_else467 
    .const 'Sub' $P5065 = 'cuid_196_1347104163.3' 
    capture_lex $P5065
    $P5066 = $P5065()
    set $P5072, $P5066
    goto if145_end468
  if145_else467:
.annotate 'line', 786
.annotate 'line', 787
    set $P5067, $P105[0]
    unless_null $P5067, fallback470
    nqp_get_sc_object $P5068, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5067, $P5068
  fallback470:
    $P5069 = $P110."push"($P5067)
    set $P5070, $P105[0]
    unless_null $P5070, fallback471
    nqp_get_sc_object $P5071, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5070, $P5071
  fallback471:
    set $P111, $P5070
    set $P5072, $P111
  if145_end468:
    set $P5073, $P107
    iter $P5075, $P107
  for_next472:
    unless $P5075, for_done474
    shift $P5077, $P5075
  for_redo473:
    .const 'Sub' $P5076 = 'cuid_197_1347104163.3' 
    capture_lex $P5076
    $P5073 = $P5076($P5077)
    goto for_next472
  for_done474:
.annotate 'line', 797
    find_lex $P5078, "$op_name"
    set $S5024, $P5078
    iseq $I5008, $S5024, "if"
    unless $I5008 goto if146_else475 
    set $S5025, "unless "
    goto if146_end476
  if146_else475:
    set $S5025, "if "
  if146_end476:
.annotate 'line', 798
    set $P5079, $P105[0]
    unless_null $P5079, fallback477
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5079, $P5080
  fallback477:
    $P5081 = $P5079."result"()
    set $S5026, $P5081
    concat $S5023, $S5025, $S5026
    concat $S5022, $S5023, " goto "
    set $N5010, $P101
    set $N5011, 2
    iseq $I5009, $N5010, $N5011
    unless $I5009 goto if147_else478 
.annotate 'line', 799
    $P5082 = $P104."result"()
    set $P5084, $P5082
    goto if147_end479
  if147_else478:
    $P5083 = $P103."result"()
    set $P5084, $P5083
  if147_end479:
    set $S5027, $P5084
    concat $S5021, $S5022, $S5027
    $P5085 = $P110."push_pirop"($S5021)
.annotate 'line', 802
    set $P5086, $P105[1]
    unless_null $P5086, fallback480
    nqp_get_sc_object $P5087, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5086, $P5087
  fallback480:
    $P5088 = _lex_param_0."coerce"($P5086, $P108)
    set $P112, $P5088
.annotate 'line', 803
    $P5089 = $P110."push"($P112)
.annotate 'line', 804
    $P5090 = $P112."result"()
    $P5091 = $P110."push_pirop"("set", $P109, $P5090)
    set $N5012, $P101
    set $N5013, 3
    iseq $I5010, $N5012, $N5013
    box $P5095, $I5010
    set $P5094, $P5095
    unless $I5010 goto if148_end482 
    .const 'Sub' $P5092 = 'cuid_198_1347104163.3' 
    capture_lex $P5092
    $P5093 = $P5092()
    set $P5094, $P5093
  if148_end482:
.annotate 'line', 816
    $P5096 = $P110."push"($P104)
.annotate 'line', 817
    $P5097 = $P110."result"($P109)
    .return ($P110) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1347104163.3") :anon :lex :outer("cuid_195_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 757
    .param pmc _lex_param_0 
    .lex "$*HAVE_IMM_ARG", $P101 
    .lex "$*IMM_ARG", $P102 
    .lex "$comp", $P103 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 758
    $P5004 = _lex_param_0."arity"()
    set $N5001, $P5004
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if134_end430 
    get_id $I5004, _lex_param_0
    find_lex $P5006, "$op"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback431
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5007
  fallback431:
    get_id $I5005, $P5005
    iseq $I5003, $I5004, $I5005
    box $P5008, $I5003
    isfalse $I5002, $P5008
    set $I5006, $I5002
  if134_end430:
    box $P5009, $I5006
    set $P101, $P5009
    unless_null $P102, fallback432
    get_hll_global $P5012, "GLOBAL"
    get_who $P5011, $P5012
    set $P5010, $P5011["$IMM_ARG"]
    unless_null $P5010, fallback433
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5013
  fallback433:
    unless_null $P5010, vivi_135434
    die "Contextual $*IMM_ARG not found"
    box $P5014, "Contextual $*IMM_ARG not found"
    set $P5010, $P5014
  vivi_135434:
    set $P102, $P5010
  fallback432:
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
    unless_null $P101, fallback437
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["$HAVE_IMM_ARG"]
    unless_null $P5024, fallback438
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5027
  fallback438:
    unless_null $P5024, vivi_137439
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P5028, "Contextual $*HAVE_IMM_ARG not found"
    set $P5024, $P5028
  vivi_137439:
    set $P101, $P5024
  fallback437:
    set $P5044, $P101
    unless $P101 goto if136_end436 
.annotate 'line', 763
    unless_null $P102, fallback442
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    set $P5029, $P5030["$IMM_ARG"]
    unless_null $P5029, fallback443
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5029, $P5032
  fallback443:
    unless_null $P5029, vivi_139444
    die "Contextual $*IMM_ARG not found"
    box $P5033, "Contextual $*IMM_ARG not found"
    set $P5029, $P5033
  vivi_139444:
    set $P102, $P5029
  fallback442:
    unless $P102 goto if138_else440 
.annotate 'line', 764
.annotate 'line', 765
    find_lex $P5034, "@im_args"
    unless_null $P102, fallback445
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    set $P5035, $P5036["$IMM_ARG"]
    unless_null $P5035, fallback446
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5035, $P5038
  fallback446:
    unless_null $P5035, vivi_140447
    die "Contextual $*IMM_ARG not found"
    box $P5039, "Contextual $*IMM_ARG not found"
    set $P5035, $P5039
  vivi_140447:
    set $P102, $P5035
  fallback445:
    $P5040 = $P5034."push"($P102)
    set $P5043, $P5040
    goto if138_end441
  if138_else440:
.annotate 'line', 767
    find_lex $P5041, "$op_name"
    set $S5004, $P5041
    concat $S5003, $S5004, " block expects an argument, but there's no immediate block to take it"
    box $P5042, $S5003
    die $P5042
    set $P5043, $P5042
  if138_end441:
    set $P5044, $P5043
  if136_end436:
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1347104163.3") :anon :lex :outer("cuid_195_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 780
    .lex "$coerced", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 781
    find_lex $P5002, "$qastcomp"
    find_lex $P5004, "@comp_ops"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback469
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5005
  fallback469:
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
.sub "" :subid("cuid_197_1347104163.3") :anon :lex :outer("cuid_195_1347104163.3")
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
.sub "" :subid("cuid_198_1347104163.3") :anon :lex :outer("cuid_195_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 807
    .lex "$else", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 808
    find_lex $P5002, "$qastcomp"
    find_lex $P5004, "@comp_ops"
    set $P5003, $P5004[2]
    unless_null $P5003, fallback483
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5005
  fallback483:
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
.sub "" :subid("cuid_200_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
.annotate 'line', 824
    $P5005 = _lex_param_1."list"()
    set $N5001, $P5005
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if149_end489 
    box $P5006, "The 'ifnull' op expects two children"
    die $P5006
    set $P5007, $P5006
  if149_end489:
.annotate 'line', 828
    set $P5009, _lex_param_1[0]
    unless_null $P5009, fallback490
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5010
  fallback490:
    $P5011 = _lex_param_0."as_post"($P5009)
    set $P101, $P5011
.annotate 'line', 829
    set $P5012, _lex_param_1[1]
    unless_null $P5012, fallback491
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5013
  fallback491:
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
    unless_null $P5018, fallback492
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5018, $P5022
  fallback492:
    $P5023 = _lex_param_0."unique"("vivi_")
    $P5024 = $P5018."new"($P5023 :named("name"))
    set $P103, $P5024
.annotate 'line', 833
    get_hll_global $P5028, "GLOBAL"
    nqp_get_package_through_who $P5027, $P5028, "PIRT"
    get_who $P5026, $P5027
    set $P5025, $P5026["Ops"]
    unless_null $P5025, fallback493
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5025, $P5029
  fallback493:
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
.sub "" :subid("cuid_205_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_204_1347104163.3' 
    capture_lex $P5009 
    .lex "$repness", _lex_param_0 
    new $P5004, 'ResizablePMCArray'
    box $P5005, "while"
    push $P5004, $P5005
    box $P5006, "until"
    push $P5004, $P5006
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next561:
    unless $P5003, for_done563
    shift $P5008, $P5003
  for_redo562:
    .const 'Sub' $P5007 = 'cuid_204_1347104163.3' 
    capture_lex $P5007
    $P5001 = $P5007($P5008)
    goto for_next561
  for_done563:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1347104163.3") :anon :lex :outer("cuid_205_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 845
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_203_1347104163.3' 
    capture_lex $P5010 
    .lex "$op_name", _lex_param_0 
.annotate 'line', 846
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback494
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback494:
    find_lex $P5006, "$repness"
    set $S5002, $P5006
    set $S5003, _lex_param_0
    concat $S5001, $S5002, $S5003
    .const 'Sub' $P5008 = 'cuid_203_1347104163.3' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."add_core_op"($S5001, $P5007, 1 :named("inlinable"))
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1347104163.3") :anon :lex :outer("cuid_204_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 846
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5157 = 'cuid_202_1347104163.3' 
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P112, $P5012
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P113, $P5013
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P114, $P5014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P115, $P5015
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P116, $P5016
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    unless_null $P5020, fallback495
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5020, $P5024
  fallback495:
    set $S5002, $P101
    concat $S5001, $S5002, "_test"
    $P5025 = $P5020."new"($S5001 :named("name"))
    set $P102, $P5025
.annotate 'line', 850
    get_hll_global $P5029, "GLOBAL"
    nqp_get_package_through_who $P5028, $P5029, "PIRT"
    get_who $P5027, $P5028
    set $P5026, $P5027["Label"]
    unless_null $P5026, fallback496
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5026, $P5030
  fallback496:
    set $S5004, $P101
    concat $S5003, $S5004, "_next"
    $P5031 = $P5026."new"($S5003 :named("name"))
    set $P103, $P5031
.annotate 'line', 851
    get_hll_global $P5035, "GLOBAL"
    nqp_get_package_through_who $P5034, $P5035, "PIRT"
    get_who $P5033, $P5034
    set $P5032, $P5033["Label"]
    unless_null $P5032, fallback497
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5032, $P5036
  fallback497:
    set $S5006, $P101
    concat $S5005, $S5006, "_redo"
    $P5037 = $P5032."new"($S5005 :named("name"))
    set $P104, $P5037
.annotate 'line', 852
    get_hll_global $P5041, "GLOBAL"
    nqp_get_package_through_who $P5040, $P5041, "PIRT"
    get_who $P5039, $P5040
    set $P5038, $P5039["Label"]
    unless_null $P5038, fallback498
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5038, $P5042
  fallback498:
    set $S5008, $P101
    concat $S5007, $S5008, "_handlers"
    $P5043 = $P5038."new"($S5007 :named("name"))
    set $P105, $P5043
.annotate 'line', 853
    get_hll_global $P5047, "GLOBAL"
    nqp_get_package_through_who $P5046, $P5047, "PIRT"
    get_who $P5045, $P5046
    set $P5044, $P5045["Label"]
    unless_null $P5044, fallback499
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5044, $P5048
  fallback499:
    set $S5010, $P101
    concat $S5009, $S5010, "_done"
    $P5049 = $P5044."new"($S5009 :named("name"))
    set $P106, $P5049
    box $P5050, 1
    set $P109, $P5050
    unless_null $P110, fallback500
    get_hll_global $P5053, "GLOBAL"
    get_who $P5052, $P5053
    set $P5051, $P5052["$IMM_ARG"]
    unless_null $P5051, fallback501
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5051, $P5054
  fallback501:
    unless_null $P5051, vivi_150502
    die "Contextual $*IMM_ARG not found"
    box $P5055, "Contextual $*IMM_ARG not found"
    set $P5051, $P5055
  vivi_150502:
    set $P110, $P5051
  fallback500:
.annotate 'line', 861
    $P5059 = _lex_param_1."list"()
    set $P5056, $P5059
    iter $P5058, $P5059
  for_next518:
    unless $P5058, for_done520
    shift $P5061, $P5058
  for_redo519:
    .const 'Sub' $P5060 = 'cuid_202_1347104163.3' 
    capture_lex $P5060
    $P5056 = $P5060($P5061)
    goto for_next518
  for_done520:
    set $P5062, $P108[0]
    unless_null $P5062, fallback523
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5062, $P5063
  fallback523:
    set $S5011, $P5062
    set $P5064, $P108[1]
    unless_null $P5064, fallback524
    nqp_get_sc_object $P5065, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5064, $P5065
  fallback524:
    set $S5012, $P5064
    iseq $I5001, $S5011, $S5012
    unless $I5001 goto if157_else521 
    set $P5066, $P108[0]
    unless_null $P5066, fallback525
    nqp_get_sc_object $P5067, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5066, $P5067
  fallback525:
    set $S5014, $P5066
    downcase $S5013, $S5014
    set $S5015, $S5013
    goto if157_end522
  if157_else521:
    set $S5015, "p"
  if157_end522:
    box $P5068, $S5015
    set $P111, $P5068
.annotate 'line', 874
    find_dynamic_lex $P5069, "$*REGALLOC"
    unless_null $P5069, fallback526
    get_hll_global $P5072, "GLOBAL"
    get_who $P5071, $P5072
    set $P5070, $P5071["$REGALLOC"]
    unless_null $P5070, fallback527
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5070, $P5073
  fallback527:
    unless_null $P5070, vivi_158528
    die "Contextual $*REGALLOC not found"
    box $P5074, "Contextual $*REGALLOC not found"
    set $P5070, $P5074
  vivi_158528:
    set $P5069, $P5070
  fallback526:
    set $S5017, $P111
    concat $S5016, "fresh_", $S5017
    $P5075 = $P5069.$S5016()
    set $P112, $P5075
    set $N5001, $P107
    box $P5076, $N5001
    set $P113, $P5076
    set $N5002, $P113
    set $N5003, 2
    isne $I5002, $N5002, $N5003
    set $I5004, $I5002
    unless $I5002 goto if160_end532 
    set $N5004, $P113
    set $N5005, 3
    isne $I5003, $N5004, $N5005
    set $I5004, $I5003
  if160_end532:
    box $P5081, $I5004
    set $P5080, $P5081
    unless $I5004 goto if159_end530 
    find_lex $P5077, "$repness"
    set $S5021, $P5077
    concat $S5020, "Operation '", $S5021
    find_lex $P5078, "$op_name"
    set $S5022, $P5078
    concat $S5019, $S5020, $S5022
    concat $S5018, $S5019, "' needs 2 or 3 operands"
    box $P5079, $S5018
    die $P5079
    set $P5080, $P5079
  if159_end530:
.annotate 'line', 882
    get_hll_global $P5085, "GLOBAL"
    nqp_get_package_through_who $P5084, $P5085, "PIRT"
    get_who $P5083, $P5084
    set $P5082, $P5083["Ops"]
    unless_null $P5082, fallback533
    nqp_get_sc_object $P5086, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5082, $P5086
  fallback533:
    $P5087 = $P5082."new"()
    set $P114, $P5087
.annotate 'line', 883
    $P5088 = $P114."result"($P112)
    set $P5099, $P109
    unless $P109 goto if161_end535 
.annotate 'line', 886
.annotate 'line', 887
    find_dynamic_lex $P5089, "$*REGALLOC"
    unless_null $P5089, fallback536
    get_hll_global $P5092, "GLOBAL"
    get_who $P5091, $P5092
    set $P5090, $P5091["$REGALLOC"]
    unless_null $P5090, fallback537
    nqp_get_sc_object $P5093, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5090, $P5093
  fallback537:
    unless_null $P5090, vivi_162538
    die "Contextual $*REGALLOC not found"
    box $P5094, "Contextual $*REGALLOC not found"
    set $P5090, $P5094
  vivi_162538:
    set $P5089, $P5090
  fallback536:
    $P5095 = $P5089."fresh_p"()
    set $P115, $P5095
.annotate 'line', 888
    $P5096 = $P114."push_pirop"("new", $P115, "'ExceptionHandler'", "[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]")
.annotate 'line', 890
    $P5097 = $P114."push_pirop"("set_label", $P115, $P105)
.annotate 'line', 891
    $P5098 = $P114."push_pirop"("push_eh", $P115)
    set $P5099, $P5098
  if161_end535:
.annotate 'line', 896
    set $P5100, $P107[0]
    unless_null $P5100, fallback539
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5100, $P5101
  fallback539:
    $P5102 = _lex_param_0."coerce"($P5100, $P111)
    set $P116, $P5102
    find_lex $P5103, "$repness"
    set $P5107, $P5103
    unless $P5103 goto if163_end541 
.annotate 'line', 897
.annotate 'line', 900
    $P5104 = $P116."result"()
    $P5105 = $P114."push_pirop"("null", $P5104)
.annotate 'line', 901
    $P5106 = $P114."push_pirop"("goto", $P104)
    set $P5107, $P5106
  if163_end541:
.annotate 'line', 903
    $P5108 = $P114."push"($P102)
.annotate 'line', 904
    $P5109 = $P114."push"($P116)
.annotate 'line', 905
    $P5110 = $P116."result"()
    $P5111 = $P114."push_pirop"("set", $P112, $P5110)
.annotate 'line', 906
    find_lex $P5112, "$op_name"
    set $S5026, $P5112
    iseq $I5005, $S5026, "while"
    unless $I5005 goto if164_else542 
    set $S5027, "unless "
    goto if164_end543
  if164_else542:
    set $S5027, "if "
  if164_end543:
.annotate 'line', 907
    set $P5113, $P107[0]
    unless_null $P5113, fallback544
    nqp_get_sc_object $P5114, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5113, $P5114
  fallback544:
    $P5115 = $P5113."result"()
    set $S5028, $P5115
    concat $S5025, $S5027, $S5028
    concat $S5024, $S5025, " goto "
    $P5116 = $P106."result"()
    set $S5029, $P5116
    concat $S5023, $S5024, $S5029
    $P5117 = $P114."push_pirop"($S5023)
    unless_null $P110, fallback547
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    set $P5118, $P5119["$IMM_ARG"]
    unless_null $P5118, fallback548
    nqp_get_sc_object $P5121, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5118, $P5121
  fallback548:
    unless_null $P5118, vivi_166549
    die "Contextual $*IMM_ARG not found"
    box $P5122, "Contextual $*IMM_ARG not found"
    set $P5118, $P5122
  vivi_166549:
    set $P110, $P5118
  fallback547:
    set $P5130, $P110
    unless $P110 goto if165_end546 
.annotate 'line', 910
.annotate 'line', 911
    $P5128 = $P116."result"()
    unless_null $P110, fallback550
    get_hll_global $P5125, "GLOBAL"
    get_who $P5124, $P5125
    set $P5123, $P5124["$IMM_ARG"]
    unless_null $P5123, fallback551
    nqp_get_sc_object $P5126, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5123, $P5126
  fallback551:
    unless_null $P5123, vivi_167552
    die "Contextual $*IMM_ARG not found"
    box $P5127, "Contextual $*IMM_ARG not found"
    set $P5123, $P5127
  vivi_167552:
    set $P110, $P5123
  fallback550:
    $P5129 = $P110($P5128)
    set $P5130, $P5129
  if165_end546:
.annotate 'line', 915
    set $P5131, $P107[1]
    unless_null $P5131, fallback553
    nqp_get_sc_object $P5132, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5131, $P5132
  fallback553:
    $P5133 = _lex_param_0."coerce"($P5131, $P111)
    set $P117, $P5133
.annotate 'line', 916
    $P5134 = $P114."push"($P104)
.annotate 'line', 917
    $P5135 = $P114."push"($P117)
.annotate 'line', 918
    $P5136 = $P117."result"()
    $P5137 = $P114."push_pirop"("set", $P112, $P5136)
    set $N5006, $P113
    set $N5007, 3
    iseq $I5006, $N5006, $N5007
    box $P5143, $I5006
    set $P5142, $P5143
    unless $I5006 goto if168_end555 
.annotate 'line', 922
.annotate 'line', 923
    $P5138 = $P114."push"($P103)
.annotate 'line', 924
    set $P5139, $P107[2]
    unless_null $P5139, fallback556
    nqp_get_sc_object $P5140, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5139, $P5140
  fallback556:
    $P5141 = $P114."push"($P5139)
    set $P5142, $P5141
  if168_end555:
.annotate 'line', 928
    $P5144 = $P102."result"()
    set $S5031, $P5144
    concat $S5030, "goto ", $S5031
    $P5145 = $P114."push_pirop"($S5030)
    unless $P109 goto if169_else557 
.annotate 'line', 931
.annotate 'line', 932
    $P5146 = $P114."push"($P105)
.annotate 'line', 933
    set $S5034, $P115
    concat $S5033, "(", $S5034
    concat $S5032, $S5033, ")"
    $P5147 = $P114."push_pirop"(".get_results", $S5032)
.annotate 'line', 934
    $P5148 = $P114."push_pirop"("pop_upto_eh", $P115)
.annotate 'line', 935
    $P5149 = $P114."push_pirop"("getattribute", $P115, $P115, "'type'")
.annotate 'line', 936
    set $N5008, $P113
    set $N5009, 3
    iseq $I5007, $N5008, $N5009
    unless $I5007 goto if170_else559 
    set $P5150, $P103
    goto if170_end560
  if170_else559:
    set $P5150, $P102
  if170_end560:
    $P5151 = $P114."push_pirop"("eq", $P115, ".CONTROL_LOOP_NEXT", $P5150)
.annotate 'line', 938
    $P5152 = $P114."push_pirop"("eq", $P115, ".CONTROL_LOOP_REDO", $P104)
.annotate 'line', 939
    $P5153 = $P114."push"($P106)
.annotate 'line', 940
    $P5154 = $P114."push_pirop"("pop_eh")
    set $P5156, $P5154
    goto if169_end558
  if169_else557:
.annotate 'line', 942
.annotate 'line', 943
    $P5155 = $P114."push"($P106)
    set $P5156, $P5155
  if169_end558:
    .return ($P114) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1347104163.3") :anon :lex :outer("cuid_203_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 861
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_201_1347104163.3' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
.annotate 'line', 862
    $P5001 = _lex_param_0."named"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "nohandler"
    unless $I5001 goto if151_else503 
    box $P5002, 0
    store_lex "$handler", $P5002
    set $P5005, $P5002
    goto if151_end504
  if151_else503:
    .const 'Sub' $P5003 = 'cuid_201_1347104163.3' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if151_end504:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1347104163.3") :anon :lex :outer("cuid_202_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 863
    .lex "$*HAVE_IMM_ARG", $P101 
    .lex "$comp", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 864
    find_lex $P5003, "$_"
    $P5004 = $P5003."arity"()
    set $N5001, $P5004
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if152_end506 
    find_lex $P5005, "$_"
    get_id $I5003, $P5005
    find_lex $P5007, "$op"
    $P5008 = $P5007."list"()
    set $P5006, $P5008[1]
    unless_null $P5006, fallback507
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5009
  fallback507:
    get_id $I5004, $P5006
    iseq $I5002, $I5003, $I5004
    set $I5005, $I5002
  if152_end506:
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
    unless_null $P101, fallback512
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["$HAVE_IMM_ARG"]
    unless_null $P5021, fallback513
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5021, $P5024
  fallback513:
    unless_null $P5021, vivi_155514
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P5025, "Contextual $*HAVE_IMM_ARG not found"
    set $P5021, $P5025
  vivi_155514:
    set $P101, $P5021
  fallback512:
    set $P5032, $P101
    unless $P101 goto if154_end511 
    find_dynamic_lex $P5026, "$*IMM_ARG"
    unless_null $P5026, fallback515
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    set $P5027, $P5028["$IMM_ARG"]
    unless_null $P5027, fallback516
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5027, $P5030
  fallback516:
    unless_null $P5027, vivi_156517
    die "Contextual $*IMM_ARG not found"
    box $P5031, "Contextual $*IMM_ARG not found"
    set $P5027, $P5031
  vivi_156517:
    set $P5026, $P5027
  fallback515:
    isfalse $I5006, $P5026
    box $P5033, $I5006
    set $P5032, $P5033
  if154_end511:
    set $P5036, $P5032
    unless $P5032 goto if153_end509 
.annotate 'line', 868
    find_lex $P5034, "$op_name"
    set $S5002, $P5034
    concat $S5001, $S5002, " block expects an argument, but there's no immediate block to take it"
    box $P5035, $S5001
    die $P5035
    set $P5036, $P5035
  if153_end509:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 951
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5143 = 'cuid_206_1347104163.3' 
    capture_lex $P5143 
    .const 'Sub' $P5143 = 'cuid_208_1347104163.3' 
    capture_lex $P5143 
    .lex "$handler", $P101 
    .lex "@operands", $P102 
    .lex "$res", $P103 
    .lex "$curval", $P104 
    .lex "$iter", $P105 
    .lex "$ops", $P106 
    .lex "$listpost", $P107 
    .lex "$blockpost", $P108 
    .lex "$exc_reg", $P109 
    .lex "$hand_lbl", $P110 
    .lex "$lbl_next", $P111 
    .lex "$lbl_redo", $P112 
    .lex "$lbl_done", $P113 
    .lex "@valreg", $P114 
    .lex "$arity", $P115 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P112, $P5012
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P113, $P5013
    new $P5014, 'ResizablePMCArray'
    set $P114, $P5014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P115, $P5015
    box $P5016, 1
    set $P101, $P5016
.annotate 'line', 954
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next570:
    unless $P5019, for_done572
    shift $P5022, $P5019
  for_redo571:
    .const 'Sub' $P5021 = 'cuid_206_1347104163.3' 
    capture_lex $P5021
    $P5017 = $P5021($P5022)
    goto for_next570
  for_done572:
    set $N5001, $P102
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5025, $I5001
    set $P5024, $P5025
    unless $I5001 goto if172_end574 
.annotate 'line', 959
    box $P5023, "Operation 'for' needs 2 operands"
    die $P5023
    set $P5024, $P5023
  if172_end574:
    set $P5026, $P102[1]
    unless_null $P5026, fallback577
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5026, $P5027
  fallback577:
    get_hll_global $P5031, "GLOBAL"
    nqp_get_package_through_who $P5030, $P5031, "QAST"
    get_who $P5029, $P5030
    set $P5028, $P5029["Block"]
    unless_null $P5028, fallback578
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5028, $P5032
  fallback578:
    type_check $I5002, $P5026, $P5028
    box $P5035, $I5002
    set $P5034, $P5035
    if $I5002 goto unless173_end576 
.annotate 'line', 962
    box $P5033, "Operation 'for' expects a block as its second operand"
    die $P5033
    set $P5034, $P5033
  unless173_end576:
.annotate 'line', 965
    set $P5036, $P102[1]
    unless_null $P5036, fallback581
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5036, $P5037
  fallback581:
    $P5038 = $P5036."blocktype"()
    set $S5001, $P5038
    iseq $I5003, $S5001, "immediate"
    box $P5043, $I5003
    set $P5042, $P5043
    unless $I5003 goto if174_end580 
.annotate 'line', 966
    set $P5039, $P102[1]
    unless_null $P5039, fallback582
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5039, $P5040
  fallback582:
    $P5041 = $P5039."blocktype"("declaration")
    set $P5042, $P5041
  if174_end580:
.annotate 'line', 970
    find_dynamic_lex $P5044, "$*REGALLOC"
    unless_null $P5044, fallback583
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    set $P5045, $P5046["$REGALLOC"]
    unless_null $P5045, fallback584
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5045, $P5048
  fallback584:
    unless_null $P5045, vivi_175585
    die "Contextual $*REGALLOC not found"
    box $P5049, "Contextual $*REGALLOC not found"
    set $P5045, $P5049
  vivi_175585:
    set $P5044, $P5045
  fallback583:
    $P5050 = $P5044."fresh_p"()
    set $P103, $P5050
.annotate 'line', 971
    find_dynamic_lex $P5051, "$*REGALLOC"
    unless_null $P5051, fallback586
    get_hll_global $P5054, "GLOBAL"
    get_who $P5053, $P5054
    set $P5052, $P5053["$REGALLOC"]
    unless_null $P5052, fallback587
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5052, $P5055
  fallback587:
    unless_null $P5052, vivi_176588
    die "Contextual $*REGALLOC not found"
    box $P5056, "Contextual $*REGALLOC not found"
    set $P5052, $P5056
  vivi_176588:
    set $P5051, $P5052
  fallback586:
    $P5057 = $P5051."fresh_p"()
    set $P104, $P5057
.annotate 'line', 972
    find_dynamic_lex $P5058, "$*REGALLOC"
    unless_null $P5058, fallback589
    get_hll_global $P5061, "GLOBAL"
    get_who $P5060, $P5061
    set $P5059, $P5060["$REGALLOC"]
    unless_null $P5059, fallback590
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5059, $P5062
  fallback590:
    unless_null $P5059, vivi_177591
    die "Contextual $*REGALLOC not found"
    box $P5063, "Contextual $*REGALLOC not found"
    set $P5059, $P5063
  vivi_177591:
    set $P5058, $P5059
  fallback589:
    $P5064 = $P5058."fresh_p"()
    set $P105, $P5064
.annotate 'line', 973
    get_hll_global $P5068, "GLOBAL"
    nqp_get_package_through_who $P5067, $P5068, "PIRT"
    get_who $P5066, $P5067
    set $P5065, $P5066["Ops"]
    unless_null $P5065, fallback592
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5065, $P5069
  fallback592:
    $P5070 = $P5065."new"()
    set $P106, $P5070
.annotate 'line', 974
    set $P5071, $P102[0]
    unless_null $P5071, fallback593
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5071, $P5072
  fallback593:
    $P5073 = _lex_param_0."as_post"($P5071)
    $P5074 = _lex_param_0."coerce"($P5073, "P")
    set $P107, $P5074
.annotate 'line', 975
    set $P5075, $P102[1]
    unless_null $P5075, fallback594
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5075, $P5076
  fallback594:
    $P5077 = _lex_param_0."as_post"($P5075)
    $P5078 = _lex_param_0."coerce"($P5077, "P")
    set $P108, $P5078
.annotate 'line', 976
    $P5079 = $P106."push"($P107)
.annotate 'line', 979
    $P5080 = $P106."push_pirop"("set", $P103, $P107)
.annotate 'line', 980
    $P5081 = $P106."push_pirop"("iter", $P105, $P107)
    set $P5098, $P101
    unless $P101 goto if178_end596 
.annotate 'line', 985
.annotate 'line', 986
    find_dynamic_lex $P5082, "$*REGALLOC"
    unless_null $P5082, fallback597
    get_hll_global $P5085, "GLOBAL"
    get_who $P5084, $P5085
    set $P5083, $P5084["$REGALLOC"]
    unless_null $P5083, fallback598
    nqp_get_sc_object $P5086, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5083, $P5086
  fallback598:
    unless_null $P5083, vivi_179599
    die "Contextual $*REGALLOC not found"
    box $P5087, "Contextual $*REGALLOC not found"
    set $P5083, $P5087
  vivi_179599:
    set $P5082, $P5083
  fallback597:
    $P5088 = $P5082."fresh_p"()
    set $P109, $P5088
.annotate 'line', 987
    get_hll_global $P5092, "GLOBAL"
    nqp_get_package_through_who $P5091, $P5092, "PIRT"
    get_who $P5090, $P5091
    set $P5089, $P5090["Label"]
    unless_null $P5089, fallback600
    nqp_get_sc_object $P5093, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5089, $P5093
  fallback600:
    $P5094 = $P5089."new"("for_handlers" :named("name"))
    set $P110, $P5094
.annotate 'line', 988
    $P5095 = $P106."push_pirop"("new", $P109, "'ExceptionHandler'", "[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]")
.annotate 'line', 990
    $P5096 = $P106."push_pirop"("set_label", $P109, $P110)
.annotate 'line', 991
    $P5097 = $P106."push_pirop"("push_eh", $P109)
    set $P5098, $P5097
  if178_end596:
.annotate 'line', 995
    get_hll_global $P5102, "GLOBAL"
    nqp_get_package_through_who $P5101, $P5102, "PIRT"
    get_who $P5100, $P5101
    set $P5099, $P5100["Label"]
    unless_null $P5099, fallback601
    nqp_get_sc_object $P5103, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5099, $P5103
  fallback601:
    $P5104 = $P5099."new"("for_next" :named("name"))
    set $P111, $P5104
.annotate 'line', 996
    get_hll_global $P5108, "GLOBAL"
    nqp_get_package_through_who $P5107, $P5108, "PIRT"
    get_who $P5106, $P5107
    set $P5105, $P5106["Label"]
    unless_null $P5105, fallback602
    nqp_get_sc_object $P5109, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5105, $P5109
  fallback602:
    $P5110 = $P5105."new"("for_redo" :named("name"))
    set $P112, $P5110
.annotate 'line', 997
    get_hll_global $P5114, "GLOBAL"
    nqp_get_package_through_who $P5113, $P5114, "PIRT"
    get_who $P5112, $P5113
    set $P5111, $P5112["Label"]
    unless_null $P5111, fallback603
    nqp_get_sc_object $P5115, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5111, $P5115
  fallback603:
    $P5116 = $P5111."new"("for_done" :named("name"))
    set $P113, $P5116
.annotate 'line', 998
    $P5117 = $P106."push"($P111)
.annotate 'line', 999
    $P5118 = $P106."push_pirop"("unless", $P105, $P113)
.annotate 'line', 1003
    set $P5119, $P102[1]
    unless_null $P5119, fallback606
    nqp_get_sc_object $P5120, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5119, $P5120
  fallback606:
    $P5121 = $P5119."arity"()
    set $P5122, $P5121
    if $P5121 goto unless180_end605 
    box $P5123, 1
    set $P5122, $P5123
  unless180_end605:
    set $P115, $P5122
  while181_test607:
    set $N5003, $P115
    set $N5004, 0
    isgt $I5004, $N5003, $N5004
    box $P5127, $I5004
    set $P5126, $P5127
    unless $I5004 goto while181_done611 
  while181_redo609:
    .const 'Sub' $P5124 = 'cuid_208_1347104163.3' 
    capture_lex $P5124
    $P5125 = $P5124()
    set $P5126, $P5125
    goto while181_test607 
  while181_done611:
.annotate 'line', 1012
    $P5128 = $P106."push"($P112)
.annotate 'line', 1013
    $P5129 = $P106."push"($P108)
.annotate 'line', 1014
    $P5130 = $P106."push_pirop"("call", $P108, $P114 :flat, $P103 :named("result"))
.annotate 'line', 1017
    $P5131 = $P106."push_pirop"("goto", $P111)
    unless $P101 goto if183_else615 
.annotate 'line', 1020
.annotate 'line', 1021
    $P5132 = $P106."push"($P110)
.annotate 'line', 1022
    set $S5004, $P109
    concat $S5003, "(", $S5004
    concat $S5002, $S5003, ")"
    $P5133 = $P106."push_pirop"(".get_results", $S5002)
.annotate 'line', 1023
    $P5134 = $P106."push_pirop"("pop_upto_eh", $P109)
.annotate 'line', 1024
    $P5135 = $P106."push_pirop"("getattribute", $P109, $P109, "'type'")
.annotate 'line', 1025
    $P5136 = $P106."push_pirop"("eq", $P109, ".CONTROL_LOOP_NEXT", $P111)
.annotate 'line', 1026
    $P5137 = $P106."push_pirop"("eq", $P109, ".CONTROL_LOOP_REDO", $P112)
.annotate 'line', 1027
    $P5138 = $P106."push"($P113)
.annotate 'line', 1028
    $P5139 = $P106."push_pirop"("pop_eh")
    set $P5141, $P5139
    goto if183_end616
  if183_else615:
.annotate 'line', 1030
.annotate 'line', 1031
    $P5140 = $P106."push"($P113)
    set $P5141, $P5140
  if183_end616:
.annotate 'line', 1035
    $P5142 = $P106."result"($P103)
    .return ($P106) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1347104163.3") :anon :lex :outer("cuid_207_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 954
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 955
    $P5001 = _lex_param_0."named"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "nohandler"
    unless $I5001 goto if171_else568 
    box $P5002, 0
    store_lex "$handler", $P5002
    set $P5005, $P5002
    goto if171_end569
  if171_else568:
.annotate 'line', 956
    find_lex $P5003, "@operands"
    $P5004 = $P5003."push"(_lex_param_0)
    set $P5005, $P5004
  if171_end569:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1347104163.3") :anon :lex :outer("cuid_207_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1004
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1005
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback612
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback613
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback613:
    unless_null $P5003, vivi_182614
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_182614:
    set $P5002, $P5003
  fallback612:
    $P5008 = $P5002."fresh_p"()
    set $P101, $P5008
.annotate 'line', 1006
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
.sub "" :subid("cuid_209_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1039
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
.annotate 'line', 1040
    $P5007 = _lex_param_1."list"()
    set $N5001, $P5007
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if184_end619 
    box $P5008, "Operation 'defor' needs 2 operands"
    die $P5008
    set $P5009, $P5008
  if184_end619:
.annotate 'line', 1043
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "PIRT"
    get_who $P5012, $P5013
    set $P5011, $P5012["Ops"]
    unless_null $P5011, fallback620
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5015
  fallback620:
    $P5016 = $P5011."new"()
    set $P101, $P5016
.annotate 'line', 1044
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "PIRT"
    get_who $P5018, $P5019
    set $P5017, $P5018["Label"]
    unless_null $P5017, fallback621
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5021
  fallback621:
    $P5022 = $P5017."new"("defor" :named("name"))
    set $P102, $P5022
.annotate 'line', 1045
    find_dynamic_lex $P5023, "$*REGALLOC"
    unless_null $P5023, fallback622
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["$REGALLOC"]
    unless_null $P5024, fallback623
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5027
  fallback623:
    unless_null $P5024, vivi_185624
    die "Contextual $*REGALLOC not found"
    box $P5028, "Contextual $*REGALLOC not found"
    set $P5024, $P5028
  vivi_185624:
    set $P5023, $P5024
  fallback622:
    $P5029 = $P5023."fresh_i"()
    set $P103, $P5029
.annotate 'line', 1046
    find_dynamic_lex $P5030, "$*REGALLOC"
    unless_null $P5030, fallback625
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    set $P5031, $P5032["$REGALLOC"]
    unless_null $P5031, fallback626
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5031, $P5034
  fallback626:
    unless_null $P5031, vivi_186627
    die "Contextual $*REGALLOC not found"
    box $P5035, "Contextual $*REGALLOC not found"
    set $P5031, $P5035
  vivi_186627:
    set $P5030, $P5031
  fallback625:
    $P5036 = $P5030."fresh_p"()
    set $P104, $P5036
.annotate 'line', 1047
    set $P5037, _lex_param_1[0]
    unless_null $P5037, fallback628
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5037, $P5038
  fallback628:
    $P5039 = _lex_param_0."as_post"($P5037)
    $P5040 = _lex_param_0."coerce"($P5039, "P")
    set $P105, $P5040
.annotate 'line', 1048
    set $P5041, _lex_param_1[1]
    unless_null $P5041, fallback629
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5041, $P5042
  fallback629:
    $P5043 = _lex_param_0."as_post"($P5041)
    $P5044 = _lex_param_0."coerce"($P5043, "P")
    set $P106, $P5044
.annotate 'line', 1049
    $P5045 = $P101."push"($P105)
.annotate 'line', 1050
    $P5046 = $P101."push_pirop"("set", $P104, $P105)
.annotate 'line', 1051
    $P5047 = $P101."push_pirop"("defined", $P103, $P104)
.annotate 'line', 1052
    $P5048 = $P101."push_pirop"("if", $P103, $P102)
.annotate 'line', 1053
    $P5049 = $P101."push"($P106)
.annotate 'line', 1054
    $P5050 = $P101."push_pirop"("set", $P104, $P106)
.annotate 'line', 1055
    $P5051 = $P101."push"($P102)
.annotate 'line', 1056
    $P5052 = $P101."result"($P104)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1060
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5085 = 'cuid_210_1347104163.3' 
    capture_lex $P5085 
    .const 'Sub' $P5085 = 'cuid_213_1347104163.3' 
    capture_lex $P5085 
    .const 'Sub' $P5085 = 'cuid_214_1347104163.3' 
    capture_lex $P5085 
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P112, $P5012
.annotate 'line', 1061
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "PIRT"
    get_who $P5014, $P5015
    set $P5013, $P5014["Ops"]
    unless_null $P5013, fallback631
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5017
  fallback631:
    $P5018 = $P5013."new"()
    set $P101, $P5018
.annotate 'line', 1062
    find_dynamic_lex $P5019, "$*REGALLOC"
    unless_null $P5019, fallback632
    get_hll_global $P5022, "GLOBAL"
    get_who $P5021, $P5022
    set $P5020, $P5021["$REGALLOC"]
    unless_null $P5020, fallback633
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5020, $P5023
  fallback633:
    unless_null $P5020, vivi_187634
    die "Contextual $*REGALLOC not found"
    box $P5024, "Contextual $*REGALLOC not found"
    set $P5020, $P5024
  vivi_187634:
    set $P5019, $P5020
  fallback632:
    $P5025 = $P5019."fresh_p"()
    $P5026 = $P101."result"($P5025)
.annotate 'line', 1064
    get_hll_global $P5030, "GLOBAL"
    nqp_get_package_through_who $P5029, $P5030, "PIRT"
    get_who $P5028, $P5029
    set $P5027, $P5028["Label"]
    unless_null $P5027, fallback635
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5027, $P5031
  fallback635:
    $P5032 = $P5027."new"("xor_false" :named("name"))
    set $P102, $P5032
.annotate 'line', 1065
    get_hll_global $P5036, "GLOBAL"
    nqp_get_package_through_who $P5035, $P5036, "PIRT"
    get_who $P5034, $P5035
    set $P5033, $P5034["Label"]
    unless_null $P5033, fallback636
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5033, $P5037
  fallback636:
    $P5038 = $P5033."new"("xor_end" :named("name"))
    set $P103, $P5038
.annotate 'line', 1069
    $P5042 = _lex_param_1."list"()
    set $P5039, $P5042
    iter $P5041, $P5042
  for_next639:
    unless $P5041, for_done641
    shift $P5044, $P5041
  for_redo640:
    .const 'Sub' $P5043 = 'cuid_210_1347104163.3' 
    capture_lex $P5043
    $P5039 = $P5043($P5044)
    goto for_next639
  for_done641:
.annotate 'line', 1078
    find_dynamic_lex $P5045, "$*REGALLOC"
    unless_null $P5045, fallback642
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    set $P5046, $P5047["$REGALLOC"]
    unless_null $P5046, fallback643
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5046, $P5049
  fallback643:
    unless_null $P5046, vivi_189644
    die "Contextual $*REGALLOC not found"
    box $P5050, "Contextual $*REGALLOC not found"
    set $P5046, $P5050
  vivi_189644:
    set $P5045, $P5046
  fallback642:
    $P5051 = $P5045."fresh_i"()
    set $P106, $P5051
.annotate 'line', 1079
    find_dynamic_lex $P5052, "$*REGALLOC"
    unless_null $P5052, fallback645
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["$REGALLOC"]
    unless_null $P5053, fallback646
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5053, $P5056
  fallback646:
    unless_null $P5053, vivi_190647
    die "Contextual $*REGALLOC not found"
    box $P5057, "Contextual $*REGALLOC not found"
    set $P5053, $P5057
  vivi_190647:
    set $P5052, $P5053
  fallback645:
    $P5058 = $P5052."fresh_i"()
    set $P107, $P5058
.annotate 'line', 1080
    find_dynamic_lex $P5059, "$*REGALLOC"
    unless_null $P5059, fallback648
    get_hll_global $P5062, "GLOBAL"
    get_who $P5061, $P5062
    set $P5060, $P5061["$REGALLOC"]
    unless_null $P5060, fallback649
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5060, $P5063
  fallback649:
    unless_null $P5060, vivi_191650
    die "Contextual $*REGALLOC not found"
    box $P5064, "Contextual $*REGALLOC not found"
    set $P5060, $P5064
  vivi_191650:
    set $P5059, $P5060
  fallback648:
    $P5065 = $P5059."fresh_i"()
    set $P108, $P5065
    shift $P5066, $P104
    set $P109, $P5066
.annotate 'line', 1083
    $P5067 = _lex_param_0."as_post"($P109)
    $P5068 = _lex_param_0."coerce"($P5067, "P")
    set $P110, $P5068
.annotate 'line', 1084
    $P5069 = $P101."push"($P110)
.annotate 'line', 1085
    $P5070 = $P101."push_pirop"("set", $P101, $P110)
.annotate 'line', 1086
    $P5071 = $P101."push_pirop"("istrue", $P107, $P110)
    box $P5072, 1
    set $P111, $P5072
  while192_test651:
    set $P5075, $P111
    unless $P111 goto while192_done655 
  while192_redo653:
    .const 'Sub' $P5073 = 'cuid_213_1347104163.3' 
    capture_lex $P5073
    $P5074 = $P5073()
    set $P5075, $P5074
    goto while192_test651 
  while192_done655:
.annotate 'line', 1109
    $P5076 = $P101."push_pirop"("if", $P107, $P103)
.annotate 'line', 1110
    $P5077 = $P101."push_pirop"("set", $P101, $P112)
.annotate 'line', 1111
    $P5078 = $P101."push_pirop"("goto", $P103)
.annotate 'line', 1112
    $P5079 = $P101."push"($P102)
    unless $P105 goto if194_else659 
    .const 'Sub' $P5080 = 'cuid_214_1347104163.3' 
    capture_lex $P5080
    $P5081 = $P5080()
    set $P5083, $P5081
    goto if194_end660
  if194_else659:
.annotate 'line', 1119
.annotate 'line', 1120
    $P5082 = $P101."push_pirop"("new", $P101, "[\"Undef\"]")
    set $P5083, $P5082
  if194_end660:
.annotate 'line', 1123
    $P5084 = $P101."push"($P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1347104163.3") :anon :lex :outer("cuid_211_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1069
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1070
    $P5001 = _lex_param_0."named"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "false"
    unless $I5001 goto if188_else637 
    store_lex "$fpast", _lex_param_0
    set $P5003, _lex_param_0
    goto if188_end638
  if188_else637:
.annotate 'line', 1073
    find_lex $P5002, "@childlist"
    push $P5002, _lex_param_0
    set $P5003, $P5002
  if188_end638:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1347104163.3") :anon :lex :outer("cuid_211_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1090
    .const 'Sub' $P5029 = 'cuid_212_1347104163.3' 
    capture_lex $P5029 
    .lex "$bpast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    find_lex $P5003, "@childlist"
    shift $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1092
    find_lex $P5004, "$qastcomp"
    find_lex $P5005, "$qastcomp"
    $P5006 = $P5005."as_post"($P101)
    $P5007 = $P5004."coerce"($P5006, "P")
    store_lex "$bpost", $P5007
.annotate 'line', 1093
    find_lex $P5008, "$ops"
    find_lex $P5009, "$bpost"
    $P5010 = $P5008."push"($P5009)
.annotate 'line', 1094
    find_lex $P5011, "$ops"
    find_lex $P5012, "$u"
    find_lex $P5013, "$bpost"
    $P5014 = $P5011."push_pirop"("istrue", $P5012, $P5013)
.annotate 'line', 1095
    find_lex $P5015, "$ops"
    find_lex $P5016, "$i"
    find_lex $P5017, "$t"
    find_lex $P5018, "$u"
    $P5019 = $P5015."push_pirop"("and", $P5016, $P5017, $P5018)
.annotate 'line', 1096
    find_lex $P5020, "$ops"
    find_lex $P5021, "$i"
    find_lex $P5022, "$falselabel"
    $P5023 = $P5020."push_pirop"("if", $P5021, $P5022)
    find_lex $P5024, "@childlist"
    unless $P5024 goto if193_else656 
    .const 'Sub' $P5025 = 'cuid_212_1347104163.3' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5028, $P5026
    goto if193_end657
  if193_else656:
.annotate 'line', 1104
    box $P5027, 0
    store_lex "$have_middle_child", $P5027
    set $P5028, $P5027
  if193_end657:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1347104163.3") :anon :lex :outer("cuid_213_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1097
    .lex "$truelabel", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1098
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Label"]
    unless_null $P5002, fallback658
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5006
  fallback658:
    $P5007 = $P5002."new"("xor_true" :named("name"))
    set $P101, $P5007
.annotate 'line', 1099
    find_lex $P5008, "$ops"
    find_lex $P5009, "$t"
    $P5010 = $P5008."push_pirop"("if", $P5009, $P101)
.annotate 'line', 1100
    find_lex $P5011, "$ops"
    find_lex $P5012, "$ops"
    find_lex $P5013, "$bpost"
    $P5014 = $P5011."push_pirop"("set", $P5012, $P5013)
.annotate 'line', 1101
    find_lex $P5015, "$ops"
    find_lex $P5016, "$t"
    find_lex $P5017, "$u"
    $P5018 = $P5015."push_pirop"("set", $P5016, $P5017)
.annotate 'line', 1102
    find_lex $P5019, "$ops"
    $P5020 = $P5019."push"($P101)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1347104163.3") :anon :lex :outer("cuid_211_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1114
    .lex "$fpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1115
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    find_lex $P5004, "$fpast"
    $P5005 = $P5003."as_post"($P5004)
    $P5006 = $P5002."coerce"($P5005, "P")
    set $P101, $P5006
.annotate 'line', 1116
    find_lex $P5007, "$ops"
    $P5008 = $P5007."push"($P101)
.annotate 'line', 1117
    find_lex $P5009, "$ops"
    find_lex $P5010, "$ops"
    $P5011 = $P5009."push_pirop"("set", $P5010, $P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1129
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@children", $P101 
    .lex "$*BINDVAL", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1131
    $P5003 = _lex_param_1."list"()
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if195_end663 
.annotate 'line', 1132
    box $P5004, "A 'bind' op must have exactly two children"
    die $P5004
    set $P5005, $P5004
  if195_end663:
    set $P5007, $P101[0]
    unless_null $P5007, fallback666
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5008
  fallback666:
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Var"]
    unless_null $P5009, fallback667
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5013
  fallback667:
    type_check $I5002, $P5007, $P5009
    box $P5016, $I5002
    set $P5015, $P5016
    if $I5002 goto unless196_end665 
.annotate 'line', 1135
    box $P5014, "First child of a 'bind' op must be a QAST::Var"
    die $P5014
    set $P5015, $P5014
  unless196_end665:
    set $P5017, $P101[1]
    unless_null $P5017, fallback668
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5018
  fallback668:
    set $P102, $P5017
.annotate 'line', 1142
    set $P5019, $P101[0]
    unless_null $P5019, fallback669
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5020
  fallback669:
    $P5021 = _lex_param_0."as_post"($P5019)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1170
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5052 = 'cuid_216_1347104163.3' 
    capture_lex $P5052 
    .lex "$callee", $P101 
    .lex "@args", $P102 
    .lex "$ops", $P103 
    .lex "@pos_arg_results", $P104 
    .lex "@named_arg_results", $P105 
    .lex "$res_type", $P106 
    .lex "$res_reg", $P107 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
.annotate 'line', 1173
    $P5009 = _lex_param_1."list"()
    clone $P5008, $P5009
    set $P102, $P5008
.annotate 'line', 1174
    $P5010 = _lex_param_1."name"()
    unless $P5010 goto if197_else671 
.annotate 'line', 1175
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "PIRT"
    get_who $P5012, $P5013
    set $P5011, $P5012["Ops"]
    unless_null $P5011, fallback673
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5015
  fallback673:
    $P5016 = _lex_param_1."name"()
    $P5017 = _lex_param_0."escape"($P5016)
    $P5018 = $P5011."new"($P5017 :named("result"))
    set $P101, $P5018
    set $P5023, $P101
    goto if197_end672
  if197_else671:
    set $N5001, $P102
    unless $N5001 goto if198_else674 
.annotate 'line', 1177
.annotate 'line', 1178
    $P5019 = $P102."shift"()
    $P5020 = _lex_param_0."as_post"($P5019)
    set $P101, $P5020
    set $P5022, $P101
    goto if198_end675
  if198_else674:
.annotate 'line', 1180
    box $P5021, "No name for call and empty children list"
    die $P5021
    set $P5022, $P5021
  if198_end675:
    set $P5023, $P5022
  if197_end672:
.annotate 'line', 1185
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "PIRT"
    get_who $P5025, $P5026
    set $P5024, $P5025["Ops"]
    unless_null $P5024, fallback676
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5028
  fallback676:
    $P5029 = $P5024."new"()
    set $P103, $P5029
.annotate 'line', 1186
    $P5030 = _lex_param_1."node"()
    set $P5033, $P5030
    unless $P5030 goto if199_end678 
    $P5031 = _lex_param_1."node"()
    $P5032 = $P103."node"($P5031)
    set $P5033, $P5032
  if199_end678:
    set $P5034, $P102
    iter $P5036, $P102
  for_next679:
    unless $P5036, for_done681
    shift $P5038, $P5036
  for_redo680:
    .const 'Sub' $P5037 = 'cuid_216_1347104163.3' 
    capture_lex $P5037
    $P5034 = $P5037($P5038)
    goto for_next679
  for_done681:
.annotate 'line', 1194
    $P5039 = _lex_param_1."returns"()
    $P5040 = _lex_param_0."type_to_register_type"($P5039)
    set $P106, $P5040
.annotate 'line', 1195
    find_dynamic_lex $P5041, "$*REGALLOC"
    unless_null $P5041, fallback682
    get_hll_global $P5044, "GLOBAL"
    get_who $P5043, $P5044
    set $P5042, $P5043["$REGALLOC"]
    unless_null $P5042, fallback683
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5042, $P5045
  fallback683:
    unless_null $P5042, vivi_200684
    die "Contextual $*REGALLOC not found"
    box $P5046, "Contextual $*REGALLOC not found"
    set $P5042, $P5046
  vivi_200684:
    set $P5041, $P5042
  fallback682:
    set $S5003, $P106
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5047 = $P5041.$S5001()
    set $P107, $P5047
.annotate 'line', 1198
    $P5048 = $P103."push"($P101)
.annotate 'line', 1199
    $P5049 = $P101."result"()
    $P5050 = $P103."push_pirop"("call", $P5049, $P104 :flat, $P105 :flat, $P107 :named("result"))
.annotate 'line', 1202
    $P5051 = $P103."result"($P107)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1347104163.3") :anon :lex :outer("cuid_217_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1189
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1190
    find_lex $P5001, "$qastcomp"
    find_lex $P5002, "$ops"
    find_lex $P5003, "@pos_arg_results"
    find_lex $P5004, "@named_arg_results"
    $P5005 = "&handle_arg"(_lex_param_0, $P5001, $P5002, $P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1205
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5057 = 'cuid_218_1347104163.3' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_220_1347104163.3' 
    capture_lex $P5057 
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
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
.annotate 'line', 1207
    $P5010 = _lex_param_1."list"()
    clone $P5009, $P5010
    set $P101, $P5009
    set $N5001, $P101
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto if201_end687 
.annotate 'line', 1208
    box $P5011, "Method call node requires at least one child"
    die $P5011
    set $P5012, $P5011
  if201_end687:
.annotate 'line', 1214
    $P5014 = _lex_param_1."name"()
    unless $P5014 goto if202_else688 
.annotate 'line', 1215
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "PIRT"
    get_who $P5016, $P5017
    set $P5015, $P5016["Ops"]
    unless_null $P5015, fallback690
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5015, $P5019
  fallback690:
    $P5020 = _lex_param_1."name"()
    $P5021 = _lex_param_0."escape"($P5020)
    $P5022 = $P5015."new"($P5021 :named("result"))
    set $P102, $P5022
    set $P5027, $P102
    goto if202_end689
  if202_else688:
    set $N5003, $P101
    set $N5004, 2
    isge $I5002, $N5003, $N5004
    unless $I5002 goto if203_else691 
    .const 'Sub' $P5023 = 'cuid_218_1347104163.3' 
    capture_lex $P5023
    $P5024 = $P5023()
    set $P5026, $P5024
    goto if203_end692
  if203_else691:
.annotate 'line', 1222
    box $P5025, "Method call must either supply a name or have a child node that evaluates to the name"
    die $P5025
    set $P5026, $P5025
  if203_end692:
    set $P5027, $P5026
  if202_end689:
.annotate 'line', 1227
    get_hll_global $P5031, "GLOBAL"
    nqp_get_package_through_who $P5030, $P5031, "PIRT"
    get_who $P5029, $P5030
    set $P5028, $P5029["Ops"]
    unless_null $P5028, fallback693
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5028, $P5032
  fallback693:
    $P5033 = $P5028."new"()
    set $P103, $P5033
.annotate 'line', 1228
    $P5034 = _lex_param_1."node"()
    set $P5037, $P5034
    unless $P5034 goto if204_end695 
    $P5035 = _lex_param_1."node"()
    $P5036 = $P103."node"($P5035)
    set $P5037, $P5036
  if204_end695:
    box $P5038, 1
    set $P106, $P5038
    set $P5039, $P101
    iter $P5041, $P101
  for_next698:
    unless $P5041, for_done700
    shift $P5043, $P5041
  for_redo699:
    .const 'Sub' $P5042 = 'cuid_220_1347104163.3' 
    capture_lex $P5042
    $P5039 = $P5042($P5043)
    goto for_next698
  for_done700:
.annotate 'line', 1243
    $P5044 = _lex_param_1."returns"()
    $P5045 = _lex_param_0."type_to_register_type"($P5044)
    set $P107, $P5045
.annotate 'line', 1244
    find_dynamic_lex $P5046, "$*REGALLOC"
    unless_null $P5046, fallback701
    get_hll_global $P5049, "GLOBAL"
    get_who $P5048, $P5049
    set $P5047, $P5048["$REGALLOC"]
    unless_null $P5047, fallback702
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5047, $P5050
  fallback702:
    unless_null $P5047, vivi_206703
    die "Contextual $*REGALLOC not found"
    box $P5051, "Contextual $*REGALLOC not found"
    set $P5047, $P5051
  vivi_206703:
    set $P5046, $P5047
  fallback701:
    set $S5003, $P107
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5052 = $P5046.$S5001()
    set $P108, $P5052
.annotate 'line', 1247
    $P5053 = $P103."push"($P102)
.annotate 'line', 1248
    $P5054 = $P102."result"()
    $P5055 = $P103."push_pirop"("callmethod", $P5054, $P104 :flat, $P105 :flat, $P108 :named("result"))
.annotate 'line', 1251
    $P5056 = $P103."result"($P108)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1347104163.3") :anon :lex :outer("cuid_219_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1217
    .lex "$invocant", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1218
    find_lex $P5002, "@args"
    $P5003 = $P5002."shift"()
    set $P101, $P5003
.annotate 'line', 1219
    find_lex $P5004, "$qastcomp"
    find_lex $P5005, "$qastcomp"
    find_lex $P5006, "@args"
    $P5007 = $P5006."shift"()
    $P5008 = $P5005."as_post"($P5007)
    $P5009 = $P5004."coerce"($P5008, "s")
    store_lex "$name", $P5009
.annotate 'line', 1220
    find_lex $P5010, "@args"
    $P5011 = $P5010."unshift"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1347104163.3") :anon :lex :outer("cuid_219_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1232
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$inv"
    unless $P5001 goto if205_else696 
.annotate 'line', 1233
.annotate 'line', 1234
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$ops"
    find_lex $P5004, "@pos_arg_results"
    find_lex $P5005, "@named_arg_results"
    $P5006 = "&handle_arg"(_lex_param_0, $P5002, $P5003, $P5004, $P5005, "P" :named("coerce"))
    box $P5007, 0
    store_lex "$inv", $P5007
    set $P5013, $P5007
    goto if205_end697
  if205_else696:
.annotate 'line', 1237
.annotate 'line', 1238
    find_lex $P5008, "$qastcomp"
    find_lex $P5009, "$ops"
    find_lex $P5010, "@pos_arg_results"
    find_lex $P5011, "@named_arg_results"
    $P5012 = "&handle_arg"(_lex_param_0, $P5008, $P5009, $P5010, $P5011)
    set $P5013, $P5012
  if205_end697:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1255
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
.annotate 'line', 1256
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "PIRT"
    get_who $P5008, $P5009
    set $P5007, $P5008["Label"]
    unless_null $P5007, fallback705
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5011
  fallback705:
    $P5012 = $P5007."new"("lexotic_" :named("name"))
    set $P101, $P5012
.annotate 'line', 1257
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "PIRT"
    get_who $P5014, $P5015
    set $P5013, $P5014["Label"]
    unless_null $P5013, fallback706
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5017
  fallback706:
    $P5018 = $P5013."new"("lexotic_" :named("name"))
    set $P102, $P5018
.annotate 'line', 1258
    $P5019 = _lex_param_1."name"()
    $P5020 = _lex_param_0."escape"($P5019)
    set $P103, $P5020
.annotate 'line', 1260
    get_hll_global $P5024, "GLOBAL"
    nqp_get_package_through_who $P5023, $P5024, "PIRT"
    get_who $P5022, $P5023
    set $P5021, $P5022["Ops"]
    unless_null $P5021, fallback707
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5021, $P5025
  fallback707:
    $P5026 = $P5021."new"()
    set $P104, $P5026
.annotate 'line', 1261
    find_dynamic_lex $P5027, "$*BLOCK"
    unless_null $P5027, fallback708
    get_hll_global $P5030, "GLOBAL"
    get_who $P5029, $P5030
    set $P5028, $P5029["$BLOCK"]
    unless_null $P5028, fallback709
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5028, $P5031
  fallback709:
    unless_null $P5028, vivi_207710
    die "Contextual $*BLOCK not found"
    box $P5032, "Contextual $*BLOCK not found"
    set $P5028, $P5032
  vivi_207710:
    set $P5027, $P5028
  fallback708:
    $P5033 = $P5027."fresh_lex_p"()
    set $P105, $P5033
.annotate 'line', 1262
    $P5034 = $P104."push_pirop"("root_new", $P105, "['parrot';'Continuation']")
.annotate 'line', 1263
    $P5035 = $P104."push_pirop"("set_label", $P105, $P101)
.annotate 'line', 1264
    $P5036 = $P104."push_pirop"(".lex", $P103, $P105)
.annotate 'line', 1266
    $P5037 = _lex_param_1."list"()
    $P5038 = _lex_param_0."compile_all_the_stmts"($P5037)
    $P5039 = _lex_param_0."coerce"($P5038, "P")
    set $P106, $P5039
.annotate 'line', 1267
    $P5040 = $P104."push"($P106)
.annotate 'line', 1268
    $P5041 = $P104."result"($P106)
.annotate 'line', 1270
    $P5042 = $P104."push_pirop"("goto", $P102)
.annotate 'line', 1271
    $P5043 = $P104."push"($P101)
.annotate 'line', 1272
    $P5044 = $P104."result"()
    set $S5003, $P5044
    concat $S5002, "(", $S5003
    concat $S5001, $S5002, ")"
    $P5045 = $P104."push_pirop"(".get_results", $S5001)
.annotate 'line', 1273
    $P5046 = $P104."push"($P102)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1279
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1280
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback712
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback713
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback713:
    unless_null $P5004, vivi_208714
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_208714:
    set $P5003, $P5004
  fallback712:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 1281
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback715
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback715:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1282
    $P5016 = $P102."push_pirop"("getinterp", $P101)
.annotate 'line', 1283
    set $S5002, $P101
    concat $S5001, $S5002, "['lexpad']"
    $P5017 = $P102."push_pirop"("set", $P101, $S5001)
.annotate 'line', 1284
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1287
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1288
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback717
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback718
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback718:
    unless_null $P5004, vivi_209719
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_209719:
    set $P5003, $P5004
  fallback717:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 1289
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback720
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback720:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1290
    $P5016 = $P102."push_pirop"("getinterp", $P101)
.annotate 'line', 1291
    set $S5002, $P101
    concat $S5001, $S5002, "['sub']"
    $P5017 = $P102."push_pirop"("set", $P101, $S5001)
.annotate 'line', 1292
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1309
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5111 = 'cuid_224_1347104163.3' 
    capture_lex $P5111 
    .const 'Sub' $P5111 = 'cuid_227_1347104163.3' 
    capture_lex $P5111 
    .const 'Sub' $P5111 = 'cuid_229_1347104163.3' 
    capture_lex $P5111 
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
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    new $P5004, 'Hash'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P112, $P5012
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P113, $P5013
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P114, $P5014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P115, $P5015
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P116, $P5016
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P117, $P5017
.annotate 'line', 1310
    $P5019 = _lex_param_1."list"()
    clone $P5018, $P5019
    set $P101, $P5018
    set $N5001, $P101
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    box $P5022, $I5001
    set $P5021, $P5022
    unless $I5001 goto if210_end723 
.annotate 'line', 1311
    box $P5020, "The 'handle' op requires at least one child"
    die $P5020
    set $P5021, $P5020
  if210_end723:
.annotate 'line', 1317
    $P5023 = $P101."shift"()
    set $P102, $P5023
.annotate 'line', 1318
    $P5024 = _lex_param_0."as_post"($P102)
    $P5025 = _lex_param_0."coerce"($P5024, "P")
    set $P103, $P5025
    set $P5028, $P101
    if $P101 goto unless211_end725 
.annotate 'line', 1319
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($P103)
    set $P5028, $P5027
  unless211_end725:
    set $P5029, $P101
    iter $P5031, $P101
  for_next734:
    unless $P5031, for_done736
    shift $P5033, $P5031
    shift $P5034, $P5031
  for_redo735:
    .const 'Sub' $P5032 = 'cuid_224_1347104163.3' 
    capture_lex $P5032
    $P5029 = $P5032($P5033, $P5034)
    goto for_next734
  for_done736:
    box $P5035, 0
    set $P111, $P5035
.annotate 'line', 1354
    get_hll_global $P5039, "GLOBAL"
    nqp_get_package_through_who $P5038, $P5039, "PIRT"
    get_who $P5037, $P5038
    set $P5036, $P5037["Label"]
    unless_null $P5036, fallback737
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5036, $P5040
  fallback737:
    $P5041 = _lex_param_0."unique"("skip_handler_")
    $P5042 = $P5036."new"($P5041 :named("name"))
    set $P112, $P5042
.annotate 'line', 1355
    get_hll_global $P5046, "GLOBAL"
    nqp_get_package_through_who $P5045, $P5046, "PIRT"
    get_who $P5044, $P5045
    set $P5043, $P5044["Ops"]
    unless_null $P5043, fallback738
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5043, $P5047
  fallback738:
    $P5048 = $P5043."new"()
    set $P113, $P5048
.annotate 'line', 1356
    find_dynamic_lex $P5049, "$*REGALLOC"
    unless_null $P5049, fallback739
    get_hll_global $P5052, "GLOBAL"
    get_who $P5051, $P5052
    set $P5050, $P5051["$REGALLOC"]
    unless_null $P5050, fallback740
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5050, $P5053
  fallback740:
    unless_null $P5050, vivi_216741
    die "Contextual $*REGALLOC not found"
    box $P5054, "Contextual $*REGALLOC not found"
    set $P5050, $P5054
  vivi_216741:
    set $P5049, $P5050
  fallback739:
    $P5055 = $P5049."fresh_p"()
    set $P114, $P5055
    set $P5068, $P105
    unless $P105 goto if217_end743 
.annotate 'line', 1357
.annotate 'line', 1358
    get_hll_global $P5059, "GLOBAL"
    nqp_get_package_through_who $P5058, $P5059, "PIRT"
    get_who $P5057, $P5058
    set $P5056, $P5057["Label"]
    unless_null $P5056, fallback744
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5056, $P5060
  fallback744:
    $P5061 = _lex_param_0."unique"("catch_handler_")
    $P5062 = $P5056."new"($P5061 :named("name"))
    set $P108, $P5062
.annotate 'line', 1359
    $P5063 = $P113."push_pirop"("new", $P114, "'ExceptionHandler'")
.annotate 'line', 1360
    $P5064 = $P113."push_pirop"("set_label", $P114, $P108)
.annotate 'line', 1361
    $P5065 = $P113."push_pirop"("callmethod", "'handle_types_except'", $P114, ".CONTROL_ALL")
.annotate 'line', 1362
    $P5066 = $P113."push_pirop"("push_eh", $P114)
    set $N5004, $P111
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5067, $N5003
    set $P111, $P5067
    set $P5068, $P111
  if217_end743:
    set $P5080, $P106
    unless $P106 goto if218_end746 
.annotate 'line', 1365
.annotate 'line', 1366
    get_hll_global $P5072, "GLOBAL"
    nqp_get_package_through_who $P5071, $P5072, "PIRT"
    get_who $P5070, $P5071
    set $P5069, $P5070["Label"]
    unless_null $P5069, fallback747
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5069, $P5073
  fallback747:
    $P5074 = _lex_param_0."unique"("catch_handler_")
    $P5075 = $P5069."new"($P5074 :named("name"))
    set $P109, $P5075
.annotate 'line', 1367
    $P5076 = $P113."push_pirop"("new", $P114, "'ExceptionHandler'", "[.CONTROL_ALL]")
.annotate 'line', 1368
    $P5077 = $P113."push_pirop"("set_label", $P114, $P109)
.annotate 'line', 1369
    $P5078 = $P113."push_pirop"("push_eh", $P114)
    set $N5007, $P111
    set $N5008, 1
    add $N5006, $N5007, $N5008
    box $P5079, $N5006
    set $P111, $P5079
    set $P5080, $P111
  if218_end746:
    set $P5083, $P107
    unless $P107 goto if219_end749 
    .const 'Sub' $P5081 = 'cuid_227_1347104163.3' 
    capture_lex $P5081
    $P5082 = $P5081()
    set $P5083, $P5082
  if219_end749:
.annotate 'line', 1384
    $P5084 = $P103."result"()
    $P5085 = _lex_param_0."infer_type"($P5084)
    set $S5002, $P5085
    downcase $S5001, $S5002
    box $P5086, $S5001
    set $P115, $P5086
.annotate 'line', 1385
    find_dynamic_lex $P5087, "$*REGALLOC"
    unless_null $P5087, fallback755
    get_hll_global $P5090, "GLOBAL"
    get_who $P5089, $P5090
    set $P5088, $P5089["$REGALLOC"]
    unless_null $P5088, fallback756
    nqp_get_sc_object $P5091, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5088, $P5091
  fallback756:
    unless_null $P5088, vivi_220757
    die "Contextual $*REGALLOC not found"
    box $P5092, "Contextual $*REGALLOC not found"
    set $P5088, $P5092
  vivi_220757:
    set $P5087, $P5088
  fallback755:
    set $S5004, $P115
    concat $S5003, "fresh_", $S5004
    $P5093 = $P5087.$S5003()
    set $P116, $P5093
.annotate 'line', 1386
    $P5094 = $P113."push"($P103)
.annotate 'line', 1387
    $P5095 = $P103."result"()
    $P5096 = $P113."push_pirop"("set", $P116, $P5095)
  while221_test758:
    set $P5099, $P111
    unless $P111 goto while221_done762 
  while221_redo760:
.annotate 'line', 1388
.annotate 'line', 1389
    $P5097 = $P113."push_pirop"("pop_eh")
    set $N5010, $P111
    set $N5011, 1
    sub $N5009, $N5010, $N5011
    box $P5098, $N5009
    set $P111, $P5098
    set $P5099, $P111
    goto while221_test758 
  while221_done762:
.annotate 'line', 1392
    $P5100 = $P113."push_pirop"("goto", $P112)
    find_dynamic_lex $P5101, "$*REGALLOC"
    unless_null $P5101, fallback763
    get_hll_global $P5104, "GLOBAL"
    get_who $P5103, $P5104
    set $P5102, $P5103["$REGALLOC"]
    unless_null $P5102, fallback764
    nqp_get_sc_object $P5105, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5102, $P5105
  fallback764:
    unless_null $P5102, vivi_222765
    die "Contextual $*REGALLOC not found"
    box $P5106, "Contextual $*REGALLOC not found"
    set $P5102, $P5106
  vivi_222765:
    set $P5101, $P5102
  fallback763:
    set $P117, $P5101
    .const 'Sub' $P5107 = 'cuid_229_1347104163.3' 
    capture_lex $P5107
    $P5108 = $P5107()
.annotate 'line', 1445
    $P5109 = $P113."push"($P112)
.annotate 'line', 1446
    $P5110 = $P113."result"($P116)
    .return ($P113) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1347104163.3") :anon :lex :outer("cuid_225_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1328
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$name", _lex_param_0 
    .lex "$handler_code", _lex_param_1 
    find_lex $P5001, "%handler_names"
    set $S5001, _lex_param_0
    exists $I5001, $P5001[$S5001]
    unless $I5001 goto if212_else726 
.annotate 'line', 1329
    find_lex $P5002, "%handlers"
    set $S5002, _lex_param_0
    exists $I5002, $P5002[$S5002]
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto if213_end729 
.annotate 'line', 1330
    set $S5004, _lex_param_0
    concat $S5003, "Multiple handlers for ", $S5004
    box $P5003, $S5003
    die $P5003
    set $P5004, $P5003
  if213_end729:
    find_lex $P5006, "%handlers"
    set $S5005, _lex_param_0
    set $P5006[$S5005], _lex_param_1
    set $S5006, _lex_param_0
    iseq $I5003, $S5006, "CATCH"
    unless $I5003 goto if214_else730 
.annotate 'line', 1334
    box $P5007, 1
    store_lex "$catch", $P5007
    set $P5011, $P5007
    goto if214_end731
  if214_else730:
    set $S5007, _lex_param_0
    iseq $I5004, $S5007, "CONTROL"
    unless $I5004 goto if215_else732 
.annotate 'line', 1337
    box $P5008, 1
    store_lex "$control", $P5008
    set $P5010, $P5008
    goto if215_end733
  if215_else732:
.annotate 'line', 1340
    find_lex $P5009, "@other"
    push $P5009, _lex_param_0
    set $P5010, $P5009
  if215_end733:
    set $P5011, $P5010
  if214_end731:
    set $P5013, $P5011
    goto if212_end727
  if212_else726:
.annotate 'line', 1344
    set $S5010, _lex_param_0
    concat $S5009, "Invalid handler type '", $S5010
    concat $S5008, $S5009, "'"
    box $P5012, $S5008
    die $P5012
    set $P5013, $P5012
  if212_end727:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1347104163.3") :anon :lex :outer("cuid_225_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1372
    .const 'Sub' $P5028 = 'cuid_226_1347104163.3' 
    capture_lex $P5028 
    .lex "@hnames", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@other"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next751:
    unless $P5004, for_done753
    shift $P5007, $P5004
  for_redo752:
    .const 'Sub' $P5006 = 'cuid_226_1347104163.3' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next751
  for_done753:
.annotate 'line', 1375
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "PIRT"
    get_who $P5009, $P5010
    set $P5008, $P5009["Label"]
    unless_null $P5008, fallback754
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5012
  fallback754:
    find_lex $P5013, "$qastcomp"
    $P5014 = $P5013."unique"("catch_handler_")
    $P5015 = $P5008."new"($P5014 :named("name"))
    store_lex "$other_label", $P5015
.annotate 'line', 1376
    find_lex $P5016, "$ops"
    find_lex $P5017, "$reg"
    join $S5003, ", ", $P101
    concat $S5002, "[", $S5003
    concat $S5001, $S5002, "]"
    $P5018 = $P5016."push_pirop"("new", $P5017, "'ExceptionHandler'", $S5001)
.annotate 'line', 1378
    find_lex $P5019, "$ops"
    find_lex $P5020, "$reg"
    find_lex $P5021, "$other_label"
    $P5022 = $P5019."push_pirop"("set_label", $P5020, $P5021)
.annotate 'line', 1379
    find_lex $P5023, "$ops"
    find_lex $P5024, "$reg"
    $P5025 = $P5023."push_pirop"("push_eh", $P5024)
    find_lex $P5026, "$num_pops"
    set $N5002, $P5026
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5027, $N5001
    store_lex "$num_pops", $P5027
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1347104163.3") :anon :lex :outer("cuid_227_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1374
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@hnames"
    find_lex $P5003, "%handler_names"
    set $S5001, _lex_param_0
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback750
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5004
  fallback750:
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1347104163.3") :anon :lex :outer("cuid_225_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1396
    .const 'Sub' $P5025 = 'cuid_228_1347104163.3' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_231_1347104163.3' 
    capture_lex $P5025 
    .lex "$*CUR_EXCEPTION", $P101 
    .lex "$*REGALLOC", $P102 
    .lex "&simple_handler", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_228_1347104163.3' 
    capture_lex $P5003
    set $P103, $P5003
    find_lex $P5004, "$reg"
    set $P101, $P5004
.annotate 'line', 1398
    find_lex $P5005, "$orig_alloc"
    $P5006 = $P5005."handler_allocator"()
    set $P102, $P5006
    find_lex $P5007, "$catch"
    set $P5013, $P5007
    unless $P5007 goto if223_end767 
.annotate 'line', 1410
.annotate 'line', 1411
    find_lex $P5008, "$catch_label"
    find_lex $P5010, "%handlers"
    set $P5009, $P5010["CATCH"]
    unless_null $P5009, fallback768
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5011
  fallback768:
    $P5012 = "&simple_handler"($P5008, $P5009)
    set $P5013, $P5012
  if223_end767:
    find_lex $P5014, "$control"
    set $P5020, $P5014
    unless $P5014 goto if224_end770 
.annotate 'line', 1413
.annotate 'line', 1414
    find_lex $P5015, "$control_label"
    find_lex $P5017, "%handlers"
    set $P5016, $P5017["CONTROL"]
    unless_null $P5016, fallback771
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5016, $P5018
  fallback771:
    $P5019 = "&simple_handler"($P5015, $P5016)
    set $P5020, $P5019
  if224_end770:
    find_lex $P5021, "@other"
    set $P5024, $P5021
    unless $P5021 goto if225_end773 
    .const 'Sub' $P5022 = 'cuid_231_1347104163.3' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if225_end773:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "simple_handler" :subid("cuid_228_1347104163.3") :anon :lex :outer("cuid_229_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1399
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handler_post", $P101 
    .lex "$label", _lex_param_0 
    .lex "$handler_qast", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1400
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    $P5004 = $P5003."as_post"(_lex_param_1)
    $P5005 = $P5002."coerce"($P5004, "P")
    set $P101, $P5005
.annotate 'line', 1401
    find_lex $P5006, "$ops"
    $P5007 = $P5006."push"(_lex_param_0)
.annotate 'line', 1402
    find_lex $P5008, "$ops"
    find_lex $P5009, "$reg"
    set $S5003, $P5009
    concat $S5002, ".get_results (", $S5003
    concat $S5001, $S5002, ")"
    $P5010 = $P5008."push_pirop"($S5001)
.annotate 'line', 1403
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push"($P101)
.annotate 'line', 1404
    find_lex $P5013, "$ops"
    find_lex $P5014, "$reg"
    $P5015 = $P5013."push_pirop"("finalize", $P5014)
.annotate 'line', 1405
    find_lex $P5016, "$ops"
    find_lex $P5017, "$reg"
    $P5018 = $P5016."push_pirop"("pop_upto_eh", $P5017)
.annotate 'line', 1406
    find_lex $P5019, "$ops"
    $P5020 = $P5019."push_pirop"("pop_eh")
.annotate 'line', 1407
    find_lex $P5021, "$ops"
    find_lex $P5022, "$res_reg"
    $P5023 = $P101."result"()
    $P5024 = $P5021."push_pirop"("set", $P5022, $P5023)
.annotate 'line', 1408
    find_lex $P5025, "$ops"
    find_lex $P5026, "$skip_handler_label"
    $P5027 = $P5025."push_pirop"("goto", $P5026)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1347104163.3") :anon :lex :outer("cuid_229_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1416
    .const 'Sub' $P5031 = 'cuid_230_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_232_1347104163.3' 
    capture_lex $P5031 
    .lex "$type_reg", $P101 
    .lex "%type_labels", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
.annotate 'line', 1417
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback774
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback775
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback775:
    unless_null $P5004, vivi_226776
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_226776:
    set $P5003, $P5004
  fallback774:
    $P5009 = $P5003."fresh_i"()
    set $P101, $P5009
.annotate 'line', 1418
    find_lex $P5010, "$ops"
    find_lex $P5011, "$other_label"
    $P5012 = $P5010."push"($P5011)
.annotate 'line', 1419
    find_lex $P5013, "$ops"
    find_lex $P5014, "$reg"
    set $S5003, $P5014
    concat $S5002, ".get_results (", $S5003
    concat $S5001, $S5002, ")"
    $P5015 = $P5013."push_pirop"($S5001)
.annotate 'line', 1423
    find_lex $P5016, "$ops"
    find_lex $P5017, "$reg"
    set $S5005, $P5017
    concat $S5004, $S5005, "[\"type\"]"
    $P5018 = $P5016."push_pirop"("set", $P101, $S5004)
    find_lex $P5022, "@other"
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next779:
    unless $P5021, for_done781
    shift $P5024, $P5021
  for_redo780:
    .const 'Sub' $P5023 = 'cuid_230_1347104163.3' 
    capture_lex $P5023
    $P5019 = $P5023($P5024)
    goto for_next779
  for_done781:
    find_lex $P5028, "@other"
    set $P5025, $P5028
    iter $P5027, $P5028
  for_next784:
    unless $P5027, for_done786
    shift $P5030, $P5027
  for_redo785:
    .const 'Sub' $P5029 = 'cuid_232_1347104163.3' 
    capture_lex $P5029
    $P5025 = $P5029($P5030)
    goto for_next784
  for_done786:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1347104163.3") :anon :lex :outer("cuid_231_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1424
    .param pmc _lex_param_0 
    .lex "$lbl", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1425
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Label"]
    unless_null $P5002, fallback777
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5006
  fallback777:
    find_lex $P5007, "$qastcomp"
    $P5008 = $P5007."unique"("handle_type_")
    $P5009 = $P5002."new"($P5008 :named("name"))
    set $P101, $P5009
.annotate 'line', 1426
    find_lex $P5010, "$ops"
    find_lex $P5011, "$type_reg"
    find_lex $P5013, "%handler_names"
    set $S5001, _lex_param_0
    set $P5012, $P5013[$S5001]
    unless_null $P5012, fallback778
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5014
  fallback778:
    $P5015 = $P5010."push_pirop"("eq", $P5011, $P5012, $P101)
    find_lex $P5016, "%type_labels"
    set $S5002, _lex_param_0
    set $P5016[$S5002], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1347104163.3") :anon :lex :outer("cuid_231_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1431
    .param pmc _lex_param_0 
    .lex "$handler_post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1432
    find_lex $P5002, "$qastcomp"
    find_lex $P5003, "$qastcomp"
    find_lex $P5005, "%handlers"
    set $S5001, _lex_param_0
    set $P5004, $P5005[$S5001]
    unless_null $P5004, fallback782
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5006
  fallback782:
    $P5007 = $P5003."as_post"($P5004)
    $P5008 = $P5002."coerce"($P5007, "P")
    set $P101, $P5008
.annotate 'line', 1433
    find_lex $P5009, "$ops"
    find_lex $P5011, "%type_labels"
    set $S5002, _lex_param_0
    set $P5010, $P5011[$S5002]
    unless_null $P5010, fallback783
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5012
  fallback783:
    $P5013 = $P5009."push"($P5010)
.annotate 'line', 1434
    find_lex $P5014, "$ops"
    $P5015 = $P5014."push"($P101)
.annotate 'line', 1435
    find_lex $P5016, "$ops"
    find_lex $P5017, "$reg"
    $P5018 = $P5016."push_pirop"("finalize", $P5017)
.annotate 'line', 1436
    find_lex $P5019, "$ops"
    find_lex $P5020, "$reg"
    $P5021 = $P5019."push_pirop"("pop_upto_eh", $P5020)
.annotate 'line', 1437
    find_lex $P5022, "$ops"
    $P5023 = $P5022."push_pirop"("pop_eh")
.annotate 'line', 1438
    find_lex $P5024, "$ops"
    find_lex $P5025, "$res_reg"
    $P5026 = $P101."result"()
    $P5027 = $P5024."push_pirop"("set", $P5025, $P5026)
.annotate 'line', 1439
    find_lex $P5028, "$ops"
    find_lex $P5029, "$skip_handler_label"
    $P5030 = $P5028."push_pirop"("goto", $P5029)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1450
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc_reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_229792
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
    find_dynamic_lex $P5003, "$*CUR_EXCEPTION"
    unless_null $P5003, fallback788
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$CUR_EXCEPTION"]
    unless_null $P5004, fallback789
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback789:
    unless_null $P5004, vivi_227790
    die "Contextual $*CUR_EXCEPTION not found"
    box $P5008, "Contextual $*CUR_EXCEPTION not found"
    set $P5004, $P5008
  vivi_227790:
    set $P5003, $P5004
  fallback788:
    set $P5010, $P5003
    pop_eh 
    goto skip_handler_228791
  catch_handler_229792:
    .get_results ($P5009) 
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10001
    goto skip_handler_228791
  skip_handler_228791:
    set $P101, $P5010
    set $P5012, $P101
    if $P101 goto unless230_end794 
.annotate 'line', 1452
    box $P5011, "Can only use 'exception' op in the context of an exception handler"
    die $P5011
    set $P5012, $P5011
  unless230_end794:
.annotate 'line', 1455
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "PIRT"
    get_who $P5014, $P5015
    set $P5013, $P5014["Ops"]
    unless_null $P5013, fallback795
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5017
  fallback795:
    $P5018 = $P5013."new"()
    set $P102, $P5018
.annotate 'line', 1456
    $P5019 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1459
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$reg", $P102 
    .lex "$ops", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 1460
    $P5004 = _lex_param_1."list"()
    set $N5001, $P5004
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    box $P5007, $I5001
    set $P5006, $P5007
    unless $I5001 goto if231_end798 
    box $P5005, "The 'getpayload' op expects one child"
    die $P5005
    set $P5006, $P5005
  if231_end798:
.annotate 'line', 1463
    set $P5008, _lex_param_1[0]
    unless_null $P5008, fallback799
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5009
  fallback799:
    $P5010 = _lex_param_0."as_post"($P5008)
    $P5011 = _lex_param_0."coerce"($P5010, "P")
    set $P101, $P5011
.annotate 'line', 1464
    find_dynamic_lex $P5012, "$*REGALLOC"
    unless_null $P5012, fallback800
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    set $P5013, $P5014["$REGALLOC"]
    unless_null $P5013, fallback801
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5016
  fallback801:
    unless_null $P5013, vivi_232802
    die "Contextual $*REGALLOC not found"
    box $P5017, "Contextual $*REGALLOC not found"
    set $P5013, $P5017
  vivi_232802:
    set $P5012, $P5013
  fallback800:
    $P5018 = $P5012."fresh_p"()
    set $P102, $P5018
.annotate 'line', 1465
    get_hll_global $P5022, "GLOBAL"
    nqp_get_package_through_who $P5021, $P5022, "PIRT"
    get_who $P5020, $P5021
    set $P5019, $P5020["Ops"]
    unless_null $P5019, fallback803
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5023
  fallback803:
    $P5024 = $P5019."new"()
    set $P103, $P5024
.annotate 'line', 1466
    $P5025 = $P103."push"($P101)
.annotate 'line', 1467
    $P5026 = $P101."result"()
    $P5027 = $P103."push_pirop"("getattribute", $P102, $P5026, "\"payload\"")
.annotate 'line', 1468
    $P5028 = $P103."result"($P102)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1471
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$payload", $P102 
    .lex "$ops", $P103 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 1472
    $P5004 = _lex_param_1."list"()
    set $N5001, $P5004
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5007, $I5001
    set $P5006, $P5007
    unless $I5001 goto if233_end806 
    box $P5005, "The 'setpayload' op expects two children"
    die $P5005
    set $P5006, $P5005
  if233_end806:
.annotate 'line', 1475
    set $P5008, _lex_param_1[0]
    unless_null $P5008, fallback807
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5009
  fallback807:
    $P5010 = _lex_param_0."as_post"($P5008)
    $P5011 = _lex_param_0."coerce"($P5010, "P")
    set $P101, $P5011
.annotate 'line', 1476
    set $P5012, _lex_param_1[1]
    unless_null $P5012, fallback808
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5013
  fallback808:
    $P5014 = _lex_param_0."as_post"($P5012)
    $P5015 = _lex_param_0."coerce"($P5014, "P")
    set $P102, $P5015
.annotate 'line', 1477
    get_hll_global $P5019, "GLOBAL"
    nqp_get_package_through_who $P5018, $P5019, "PIRT"
    get_who $P5017, $P5018
    set $P5016, $P5017["Ops"]
    unless_null $P5016, fallback809
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5016, $P5020
  fallback809:
    $P5021 = $P5016."new"()
    set $P103, $P5021
.annotate 'line', 1478
    $P5022 = $P103."push_pirop"("setattribute", $P101, "\"payload\"", $P102)
.annotate 'line', 1479
    $P5023 = $P102."result"()
    $P5024 = $P103."result"($P5023)
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1482
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$pmc", $P102 
    .lex "$reg", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
.annotate 'line', 1483
    $P5005 = _lex_param_1."list"()
    set $N5001, $P5005
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if234_end812 
    box $P5006, "The 'getmessage' op expects one child"
    die $P5006
    set $P5007, $P5006
  if234_end812:
.annotate 'line', 1486
    set $P5009, _lex_param_1[0]
    unless_null $P5009, fallback813
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5010
  fallback813:
    $P5011 = _lex_param_0."as_post"($P5009)
    $P5012 = _lex_param_0."coerce"($P5011, "P")
    set $P101, $P5012
.annotate 'line', 1487
    find_dynamic_lex $P5013, "$*REGALLOC"
    unless_null $P5013, fallback814
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["$REGALLOC"]
    unless_null $P5014, fallback815
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5014, $P5017
  fallback815:
    unless_null $P5014, vivi_235816
    die "Contextual $*REGALLOC not found"
    box $P5018, "Contextual $*REGALLOC not found"
    set $P5014, $P5018
  vivi_235816:
    set $P5013, $P5014
  fallback814:
    $P5019 = $P5013."fresh_p"()
    set $P102, $P5019
.annotate 'line', 1488
    find_dynamic_lex $P5020, "$*REGALLOC"
    unless_null $P5020, fallback817
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["$REGALLOC"]
    unless_null $P5021, fallback818
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5021, $P5024
  fallback818:
    unless_null $P5021, vivi_236819
    die "Contextual $*REGALLOC not found"
    box $P5025, "Contextual $*REGALLOC not found"
    set $P5021, $P5025
  vivi_236819:
    set $P5020, $P5021
  fallback817:
    $P5026 = $P5020."fresh_s"()
    set $P103, $P5026
.annotate 'line', 1489
    get_hll_global $P5030, "GLOBAL"
    nqp_get_package_through_who $P5029, $P5030, "PIRT"
    get_who $P5028, $P5029
    set $P5027, $P5028["Ops"]
    unless_null $P5027, fallback820
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5027, $P5031
  fallback820:
    $P5032 = $P5027."new"()
    set $P104, $P5032
.annotate 'line', 1490
    $P5033 = $P104."push"($P101)
.annotate 'line', 1491
    $P5034 = $P101."result"()
    $P5035 = $P104."push_pirop"("getattribute", $P102, $P5034, "\"message\"")
.annotate 'line', 1492
    $P5036 = $P104."push_pirop"("set", $P103, $P102)
.annotate 'line', 1493
    $P5037 = $P104."result"($P103)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1496
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exc", $P101 
    .lex "$message", $P102 
    .lex "$pmc", $P103 
    .lex "$ops", $P104 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
.annotate 'line', 1497
    $P5005 = _lex_param_1."list"()
    set $N5001, $P5005
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if237_end823 
    box $P5006, "The 'setmessage' op expects two children"
    die $P5006
    set $P5007, $P5006
  if237_end823:
.annotate 'line', 1500
    set $P5009, _lex_param_1[0]
    unless_null $P5009, fallback824
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5010
  fallback824:
    $P5011 = _lex_param_0."as_post"($P5009)
    $P5012 = _lex_param_0."coerce"($P5011, "P")
    set $P101, $P5012
.annotate 'line', 1501
    set $P5013, _lex_param_1[1]
    unless_null $P5013, fallback825
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5014
  fallback825:
    $P5015 = _lex_param_0."as_post"($P5013)
    $P5016 = _lex_param_0."coerce"($P5015, "S")
    set $P102, $P5016
.annotate 'line', 1502
    find_dynamic_lex $P5017, "$*REGALLOC"
    unless_null $P5017, fallback826
    get_hll_global $P5020, "GLOBAL"
    get_who $P5019, $P5020
    set $P5018, $P5019["$REGALLOC"]
    unless_null $P5018, fallback827
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5018, $P5021
  fallback827:
    unless_null $P5018, vivi_238828
    die "Contextual $*REGALLOC not found"
    box $P5022, "Contextual $*REGALLOC not found"
    set $P5018, $P5022
  vivi_238828:
    set $P5017, $P5018
  fallback826:
    $P5023 = $P5017."fresh_p"()
    set $P103, $P5023
.annotate 'line', 1503
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "PIRT"
    get_who $P5025, $P5026
    set $P5024, $P5025["Ops"]
    unless_null $P5024, fallback829
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5028
  fallback829:
    $P5029 = $P5024."new"()
    set $P104, $P5029
.annotate 'line', 1504
    $P5030 = $P104."push"($P101)
.annotate 'line', 1505
    $P5031 = $P104."push"($P102)
.annotate 'line', 1506
    $P5032 = $P104."push_pirop"("box", $P103, $P102)
.annotate 'line', 1507
    $P5033 = $P104."push_pirop"("setattribute", $P101, "\"message\"", $P103)
.annotate 'line', 1508
    $P5034 = $P102."result"()
    $P5035 = $P104."result"($P5034)
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1511
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1512
    $P5003 = _lex_param_1."list"()
    set $N5001, $P5003
    set $N5002, 0
    isne $I5001, $N5001, $N5002
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if239_end832 
    box $P5004, "The 'newexception' op expects no children"
    die $P5004
    set $P5005, $P5004
  if239_end832:
.annotate 'line', 1515
    find_dynamic_lex $P5007, "$*REGALLOC"
    unless_null $P5007, fallback833
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    set $P5008, $P5009["$REGALLOC"]
    unless_null $P5008, fallback834
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5011
  fallback834:
    unless_null $P5008, vivi_240835
    die "Contextual $*REGALLOC not found"
    box $P5012, "Contextual $*REGALLOC not found"
    set $P5008, $P5012
  vivi_240835:
    set $P5007, $P5008
  fallback833:
    $P5013 = $P5007."fresh_p"()
    set $P101, $P5013
.annotate 'line', 1516
    get_hll_global $P5017, "GLOBAL"
    nqp_get_package_through_who $P5016, $P5017, "PIRT"
    get_who $P5015, $P5016
    set $P5014, $P5015["Ops"]
    unless_null $P5014, fallback836
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5014, $P5018
  fallback836:
    $P5019 = $P5014."new"()
    set $P102, $P5019
.annotate 'line', 1517
    $P5020 = $P102."push_pirop"("new", $P101, "[\"Exception\"]")
.annotate 'line', 1518
    $P5021 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1532
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_239_1347104163.3' 
    capture_lex $P5008 
    .lex "$name", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1533
    $P5002 = _lex_param_1."name"()
    set $P101, $P5002
    find_lex $P5003, "%control_map"
    set $S5001, $P101
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if241_else842 
    .const 'Sub' $P5004 = 'cuid_239_1347104163.3' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5007, $P5005
    goto if241_end843
  if241_else842:
.annotate 'line', 1539
    set $S5004, $P101
    concat $S5003, "Unknown control exception type '", $S5004
    concat $S5002, $S5003, "'"
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if241_end843:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1347104163.3") :anon :lex :outer("cuid_240_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1534
    .lex "$ops", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 1535
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Ops"]
    unless_null $P5002, fallback844
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5006
  fallback844:
    $P5007 = $P5002."new"("0" :named("result"))
    set $P101, $P5007
.annotate 'line', 1536
    find_lex $P5009, "%control_map"
    find_lex $P5010, "$name"
    set $S5001, $P5010
    set $P5008, $P5009[$S5001]
    unless_null $P5008, fallback845
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5011
  fallback845:
    $P5012 = $P101."push_pirop"("die", "0", $P5008)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1545
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_241_1347104163.3' 
    capture_lex $P5009 
    .lex "$_", _lex_param_0 
.annotate 'line', 1546
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback846
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback846:
    .const 'Sub' $P5007 = 'cuid_241_1347104163.3' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."add_hll_box"("nqp", _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1347104163.3") :anon :lex :outer("cuid_242_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1546
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1547
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback847
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback848
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback848:
    unless_null $P5004, vivi_242849
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_242849:
    set $P5003, $P5004
  fallback847:
    $P5009 = $P5003."fresh_p"()
    set $P101, $P5009
.annotate 'line', 1548
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback850
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback850:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1549
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1550
    $P5017 = $P102."push_pirop"("box", $P101, _lex_param_1)
.annotate 'line', 1551
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1555
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1556
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback855
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback856
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback856:
    unless_null $P5004, vivi_243857
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_243857:
    set $P5003, $P5004
  fallback855:
    $P5009 = $P5003."fresh_i"()
    set $P101, $P5009
.annotate 'line', 1557
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback858
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback858:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1558
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1559
    $P5017 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1560
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1563
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1564
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback860
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback861
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback861:
    unless_null $P5004, vivi_244862
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_244862:
    set $P5003, $P5004
  fallback860:
    $P5009 = $P5003."fresh_n"()
    set $P101, $P5009
.annotate 'line', 1565
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback863
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback863:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1566
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1567
    $P5017 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1568
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1571
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reg", $P101 
    .lex "$ops", $P102 
    .lex "$qastcomp", _lex_param_0 
    .lex "$post", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1572
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback865
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback866
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback866:
    unless_null $P5004, vivi_245867
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_245867:
    set $P5003, $P5004
  fallback865:
    $P5009 = $P5003."fresh_s"()
    set $P101, $P5009
.annotate 'line', 1573
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PIRT"
    get_who $P5011, $P5012
    set $P5010, $P5011["Ops"]
    unless_null $P5010, fallback868
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5014
  fallback868:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 1574
    $P5016 = $P102."push"(_lex_param_1)
.annotate 'line', 1575
    $P5017 = $P102."push_pirop"("set", $P101, _lex_param_1)
.annotate 'line', 1576
    $P5018 = $P102."result"($P101)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1691
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1692
    $P5002 = _lex_param_1."list"()
    set $P101, $P5002
.annotate 'line', 1693
    set $N5001, $P101
    set $N5002, 2
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if246_else962 
.annotate 'line', 1694
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback964
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback964:
    $P5008 = $P5003."new"($P101 :flat, "substr2" :named("op"))
    set $P5015, $P5008
    goto if246_end963
  if246_else962:
.annotate 'line', 1695
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback965
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5013
  fallback965:
    $P5014 = $P5009."new"($P101 :flat, "substr3" :named("op"))
    set $P5015, $P5014
  if246_end963:
    $P5016 = _lex_param_0."as_post"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
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
    set $N5002, 1
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if247_else969 
.annotate 'line', 1704
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback971
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback971:
    $P5008 = $P5003."new"($P101 :flat, "ordfirst" :named("op"))
    set $P5015, $P5008
    goto if247_end970
  if247_else969:
.annotate 'line', 1705
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback972
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5013
  fallback972:
    $P5014 = $P5009."new"($P101 :flat, "ordat" :named("op"))
    set $P5015, $P5014
  if247_end970:
    $P5016 = _lex_param_0."as_post"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1710
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1711
    $P5002 = _lex_param_1."list"()
    set $P101, $P5002
.annotate 'line', 1712
    set $N5001, $P101
    set $N5002, 2
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if248_else975 
.annotate 'line', 1713
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback977
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback977:
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["IVal"]
    unless_null $P5008, fallback978
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5012
  fallback978:
    $P5013 = $P5008."new"(0 :named("value"))
    $P5014 = $P5003."new"($P101 :flat, $P5013, "indexfrom" :named("op"))
    set $P5021, $P5014
    goto if248_end976
  if248_else975:
.annotate 'line', 1714
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Op"]
    unless_null $P5015, fallback979
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5015, $P5019
  fallback979:
    $P5020 = $P5015."new"($P101 :flat, "indexfrom" :named("op"))
    set $P5021, $P5020
  if248_end976:
    $P5022 = _lex_param_0."as_post"($P5021)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_249_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1718
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@operands", $P101 
    .lex "$qastcomp", _lex_param_0 
    .lex "$op", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1719
    $P5002 = _lex_param_1."list"()
    set $P101, $P5002
.annotate 'line', 1720
    set $N5001, $P101
    set $N5002, 2
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if249_else983 
.annotate 'line', 1721
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback985
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback985:
    $P5008 = $P5003."new"($P101 :flat, "rindexfromend" :named("op"))
    set $P5015, $P5008
    goto if249_end984
  if249_else983:
.annotate 'line', 1722
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback986
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5013
  fallback986:
    $P5014 = $P5009."new"($P101 :flat, "rindexfrom" :named("op"))
    set $P5015, $P5014
  if249_end984:
    $P5016 = _lex_param_0."as_post"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_59_1347104163.3") :anon :lex :outer("cuid_1_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1877
    .const 'Sub' $P5092 = 'cuid_250_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_251_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_253_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_71_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_96_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_97_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_98_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_99_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_100_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_101_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_102_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_103_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_104_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_105_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_106_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_107_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_108_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_109_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_110_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_111_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_112_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_113_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_114_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_115_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_116_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_117_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_118_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_119_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_120_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_121_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_122_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_123_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_124_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_125_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_126_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_127_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_128_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_129_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_130_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_131_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_132_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_133_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_134_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_135_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_136_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_137_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_138_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_139_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_140_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_141_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_142_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_143_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_144_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_145_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_146_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_147_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_148_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_149_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_150_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_151_1347104163.3' 
    capture_lex $P5092 
    .const 'Sub' $P5092 = 'cuid_152_1347104163.3' 
    capture_lex $P5092 
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
    .const 'Sub' $P5002 = 'cuid_250_1347104163.3' 
    capture_lex $P5002
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_251_1347104163.3' 
    capture_lex $P5004
    set $P106, $P5004
    new $P5005, 'Hash'
    set $P107, $P5005
    .const 'Sub' $P5006 = 'cuid_253_1347104163.3' 
    capture_lex $P5006
    set $P108, $P5006
    new $P5007, 'Hash'
    set $P109, $P5007
.annotate 'line', 2056
    get_who $P5008, $P110
    box $P5009, 10
    set $P5008["$serno"], $P5009

            $P0 = get_root_global ['parrot';'QAST'], 'Compiler'
            unless null $P0 goto have_qastcomp
            $P0 = find_lex '$?CLASS'
            set_root_global ['parrot';'QAST'], 'Compiler', $P0
            compreg 'QAST', $P0
          have_qastcomp:
        
.annotate 'line', 3122
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
.annotate 'line', 1877
    .const 'Sub' $P5016 = 'cuid_71_1347104163.3' 
    capture_lex $P5016
    $P5017 = $P5016()
    .const 'Sub' $P5018 = 'cuid_96_1347104163.3' 
    capture_lex $P5018
    $P5019 = $P5018()
    get_who $P5021, $P110
    set $P5020, $P5021["$serno"]
    unless_null $P5020, fallback1147
    get_hll_global $P5024, "GLOBAL"
    get_who $P5023, $P5024
    set $P5022, $P5023["$serno"]
    unless_null $P5022, vivi_2561148
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5022, $P5025
  vivi_2561148:
    set $P5020, $P5022
  fallback1147:
    .const 'Sub' $P5026 = 'cuid_97_1347104163.3' 
    capture_lex $P5026
    new $P5027, 'ResizablePMCArray'
    box $P5028, "P"
    push $P5027, $P5028
    box $P5029, "I"
    push $P5027, $P5029
    box $P5030, "N"
    push $P5027, $P5030
    box $P5031, "S"
    push $P5027, $P5031
    set $P103, $P5027
    .const 'Sub' $P5032 = 'cuid_98_1347104163.3' 
    capture_lex $P5032
    new $P5033, 'ResizablePMCArray'
    box $P5034, "obj"
    push $P5033, $P5034
    box $P5035, "int"
    push $P5033, $P5035
    box $P5036, "num"
    push $P5033, $P5036
    box $P5037, "str"
    push $P5033, $P5037
    set $P105, $P5033
    .const 'Sub' $P5038 = 'cuid_99_1347104163.3' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_100_1347104163.3' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_101_1347104163.3' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_102_1347104163.3' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_103_1347104163.3' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_104_1347104163.3' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_105_1347104163.3' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_106_1347104163.3' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_107_1347104163.3' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_108_1347104163.3' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_109_1347104163.3' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_110_1347104163.3' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_111_1347104163.3' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_112_1347104163.3' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_113_1347104163.3' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_114_1347104163.3' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_115_1347104163.3' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_116_1347104163.3' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_117_1347104163.3' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_118_1347104163.3' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_119_1347104163.3' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_120_1347104163.3' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_121_1347104163.3' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_122_1347104163.3' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_123_1347104163.3' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_124_1347104163.3' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_125_1347104163.3' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_126_1347104163.3' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_127_1347104163.3' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_128_1347104163.3' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_129_1347104163.3' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_130_1347104163.3' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_131_1347104163.3' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_132_1347104163.3' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_133_1347104163.3' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_134_1347104163.3' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_135_1347104163.3' 
    capture_lex $P5074
    .const 'Sub' $P5075 = 'cuid_136_1347104163.3' 
    capture_lex $P5075
    .const 'Sub' $P5076 = 'cuid_137_1347104163.3' 
    capture_lex $P5076
    .const 'Sub' $P5077 = 'cuid_138_1347104163.3' 
    capture_lex $P5077
    .const 'Sub' $P5078 = 'cuid_139_1347104163.3' 
    capture_lex $P5078
    .const 'Sub' $P5079 = 'cuid_140_1347104163.3' 
    capture_lex $P5079
    .const 'Sub' $P5080 = 'cuid_141_1347104163.3' 
    capture_lex $P5080
    .const 'Sub' $P5081 = 'cuid_142_1347104163.3' 
    capture_lex $P5081
    .const 'Sub' $P5082 = 'cuid_143_1347104163.3' 
    capture_lex $P5082
    .const 'Sub' $P5083 = 'cuid_144_1347104163.3' 
    capture_lex $P5083
    .const 'Sub' $P5084 = 'cuid_145_1347104163.3' 
    capture_lex $P5084
    .const 'Sub' $P5085 = 'cuid_146_1347104163.3' 
    capture_lex $P5085
    .const 'Sub' $P5086 = 'cuid_147_1347104163.3' 
    capture_lex $P5086
    .const 'Sub' $P5087 = 'cuid_148_1347104163.3' 
    capture_lex $P5087
    .const 'Sub' $P5088 = 'cuid_149_1347104163.3' 
    capture_lex $P5088
    .const 'Sub' $P5089 = 'cuid_150_1347104163.3' 
    capture_lex $P5089
    .const 'Sub' $P5090 = 'cuid_151_1347104163.3' 
    capture_lex $P5090
    .const 'Sub' $P5091 = 'cuid_152_1347104163.3' 
    capture_lex $P5091
    .return ($P5091) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_register_type" :subid("cuid_250_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2077
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    find_lex $P5002, "@prim_to_reg"
    repr_get_primitive_type_spec $I5001, _lex_param_0
    set $P5001, $P5002[$I5001]
    unless_null $P5001, fallback1115
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5003
  fallback1115:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_lookup_name" :subid("cuid_251_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2085
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    find_lex $P5002, "@prim_to_lookup_name"
    repr_get_primitive_type_spec $I5001, _lex_param_0
    set $P5001, $P5002[$I5001]
    unless_null $P5001, fallback1116
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5003
  fallback1116:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "want" :subid("cuid_253_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2538
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_252_1347104163.3' 
    capture_lex $P5012 
    .lex "@possibles", $P101 
    .lex "$best", $P102 
    .lex "$node", _lex_param_0 
    .lex "$type", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 2539
    $P5004 = _lex_param_0."list"()
    clone $P5003, $P5004
    set $P101, $P5003
.annotate 'line', 2540
    $P5005 = $P101."shift"()
    set $P102, $P5005
    set $P5006, $P101
    iter $P5008, $P101
  for_next1119:
    unless $P5008, for_done1121
    shift $P5010, $P5008
    shift $P5011, $P5008
  for_redo1120:
    .const 'Sub' $P5009 = 'cuid_252_1347104163.3' 
    capture_lex $P5009
    $P5006 = $P5009($P5010, $P5011)
    goto for_next1119
  for_done1121:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_252_1347104163.3") :anon :lex :outer("cuid_253_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2541
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
    unless $I5001 goto if250_end1118 
.annotate 'line', 2542
    store_lex "$best", _lex_param_1
    set $P5002, _lex_param_1
  if250_end1118:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_71_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1880
    .const 'Sub' $P5012 = 'cuid_60_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_61_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_62_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_63_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_64_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_65_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_66_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_67_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_68_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_69_1347104163.3' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_70_1347104163.3' 
    capture_lex $P5012 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_60_1347104163.3' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_61_1347104163.3' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_62_1347104163.3' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_63_1347104163.3' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_64_1347104163.3' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_65_1347104163.3' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_66_1347104163.3' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_67_1347104163.3' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_68_1347104163.3' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_69_1347104163.3' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_70_1347104163.3' 
    capture_lex $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_60_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1886
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    if haz_param_11, default1124
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_1, $P5011
  default1124:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    unless _lex_param_1 goto if251_else1122 
.annotate 'line', 1889
    $P5004 = _lex_param_1."cur_p"()
    $P5005 = _lex_param_1."cur_s"()
    $P5006 = _lex_param_1."cur_i"()
    $P5007 = _lex_param_1."cur_n"()
    $P5008 = $P101."BUILD"($P5004, $P5005, $P5006, $P5007)
    set $P5010, $P5008
    goto if251_end1123
  if251_else1122:
.annotate 'line', 1890
    $P5009 = $P101."BUILD"(5000, 5000, 5000, 5000)
    set $P5010, $P5009
  if251_end1123:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "handler_allocator" :subid("cuid_61_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1894
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1896
    $P5004 = $P101."BUILD"(10000, 10000, 10000, 10000)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_62_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1900
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
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    set $I5001, _lex_param_1
    repr_bind_attr_int $P5001, $P5002, "$!cur_p", $I5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    set $I5002, _lex_param_2
    repr_bind_attr_int $P5003, $P5004, "$!cur_s", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    set $I5003, _lex_param_3
    repr_bind_attr_int $P5005, $P5006, "$!cur_i", $I5003
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    set $I5004, _lex_param_4
    repr_bind_attr_int $P5007, $P5008, "$!cur_n", $I5004
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_p" :subid("cuid_63_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1907
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_p"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_p", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_p"
    set $S5002, $I5003
    concat $S5001, "$P", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_s" :subid("cuid_64_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1911
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_s"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_s", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_s"
    set $S5002, $I5003
    concat $S5001, "$S", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_i" :subid("cuid_65_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1915
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_i"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_i", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_i"
    set $S5002, $I5003
    concat $S5001, "$I", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_n" :subid("cuid_66_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1919
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_n"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_n", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_n"
    set $S5002, $I5003
    concat $S5001, "$N", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_p" :subid("cuid_67_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1924
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_p"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_s" :subid("cuid_68_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1925
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_s"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_i" :subid("cuid_69_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1926
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_i"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "cur_n" :subid("cuid_70_1347104163.3") :anon :lex :outer("cuid_71_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1927
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    repr_get_attr_int $I5001, $P5001, $P5002, "$!cur_n"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1931
    .const 'Sub' $P5031 = 'cuid_72_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_73_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_74_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_75_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_76_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_77_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_78_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_79_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_80_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_81_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_82_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_83_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_84_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_85_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_86_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_87_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_88_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_89_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_90_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_91_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_92_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_93_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_94_1347104163.3' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_95_1347104163.3' 
    capture_lex $P5031 
    .lex "%longnames", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_72_1347104163.3' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_73_1347104163.3' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_74_1347104163.3' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_75_1347104163.3' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_76_1347104163.3' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_77_1347104163.3' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_78_1347104163.3' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_79_1347104163.3' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_80_1347104163.3' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_81_1347104163.3' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_82_1347104163.3' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_83_1347104163.3' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_84_1347104163.3' 
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
    .const 'Sub' $P5020 = 'cuid_85_1347104163.3' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_86_1347104163.3' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_87_1347104163.3' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_88_1347104163.3' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_89_1347104163.3' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_90_1347104163.3' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_91_1347104163.3' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_92_1347104163.3' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_93_1347104163.3' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_94_1347104163.3' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_95_1347104163.3' 
    capture_lex $P5030
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_72_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1948
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    .lex "$outer", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1950
    $P5004 = $P101."BUILD"(_lex_param_1, _lex_param_2)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_73_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1954
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    .lex "$outer", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_bind_attr_obj $P5001, $P5002, "$!qast", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_bind_attr_obj $P5003, $P5004, "$!outer", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5007, 'ResizablePMCArray'
    repr_bind_attr_obj $P5005, $P5006, "@!params", $P5007
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5010, 'ResizablePMCArray'
    repr_bind_attr_obj $P5008, $P5009, "@!locals", $P5010
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5013, 'ResizablePMCArray'
    repr_bind_attr_obj $P5011, $P5012, "@!lexicals", $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5016, 'Hash'
    repr_bind_attr_obj $P5014, $P5015, "%!local_types", $P5016
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5019, 'Hash'
    repr_bind_attr_obj $P5017, $P5018, "%!lexical_types", $P5019
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5022, 'Hash'
    repr_bind_attr_obj $P5020, $P5021, "%!lexical_regs", $P5022
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5025, 'Hash'
    repr_bind_attr_obj $P5023, $P5024, "%!reg_types", $P5025
    nqp_decontainerize $P5026, _lex_param_0
    nqp_get_sc_object $P5027, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    new $P5028, 'ResizablePMCArray'
    repr_bind_attr_obj $P5026, $P5027, "@!loadlibs", $P5028
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_bind_attr_int $P5029, $P5030, "$!cur_lex_p", 100
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_bind_attr_int $P5031, $P5032, "$!cur_lex_s", 100
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_bind_attr_int $P5033, $P5034, "$!cur_lex_i", 100
    nqp_decontainerize $P5035, _lex_param_0
    nqp_get_sc_object $P5036, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_bind_attr_int $P5035, $P5036, "$!cur_lex_n", 100
    .return (100) 
.end
.HLL "nqp"
.namespace []
.sub "add_param" :subid("cuid_74_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1971
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_254_1347104163.3' 
    capture_lex $P5013 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1972
    $P5001 = _lex_param_1."scope"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "local"
    unless $I5001 goto if252_else1125 
.annotate 'line', 1973
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."register_local"(_lex_param_1)
    set $P5006, $P5003
    goto if252_end1126
  if252_else1125:
    .const 'Sub' $P5004 = 'cuid_254_1347104163.3' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if252_end1126:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!params"
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!params"
    set $N5001, $P5012
    set $I5002, $N5001
    set $P5009[$I5002], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1347104163.3") :anon :lex :outer("cuid_74_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1975
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5001, $P5002, $P5004, "$!param_idx"
    set $S5002, $I5001
    concat $S5001, "_lex_param_", $S5002
    box $P5005, $S5001
    set $P101, $P5005
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5002, $P5009, $P5011, "$!param_idx"
    set $N5002, $I5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5003, $N5001
    repr_bind_attr_int $P5006, $P5008, "$!param_idx", $I5003
.annotate 'line', 1978
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$var"
    $P5015 = $P5012."register_lexical"($P5014, $P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "add_lexical" :subid("cuid_75_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1983
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1984
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."register_lexical"(_lex_param_1)
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!lexicals"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!lexicals"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5005[$I5001], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "add_local" :subid("cuid_76_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1988
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
.annotate 'line', 1989
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."register_local"(_lex_param_1)
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!locals"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!locals"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5005[$I5001], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "register_lexical" :subid("cuid_77_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 1993
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default1132
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_2, $P5029
  default1132:
    .lex "$name", $P101 
    .lex "$type", $P102 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    .lex "$reg", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 1994
    $P5003 = _lex_param_1."name"()
    set $P101, $P5003
.annotate 'line', 1995
    $P5004 = _lex_param_1."returns"()
    $P5005 = "&type_to_register_type"($P5004)
    set $P102, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5008, $P5006, $P5007, "%!lexical_types"
    set $S5001, $P101
    exists $I5001, $P5008[$S5001]
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if253_end1128 
.annotate 'line', 1996
    set $S5004, $P101
    concat $S5003, "Lexical '", $S5004
    concat $S5002, $S5003, "' already declared"
    box $P5009, $S5002
    die $P5009
    set $P5010, $P5009
  if253_end1128:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!lexical_types"
    set $S5005, $P101
    set $P5014[$S5005], $P102
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5017, $P5015, $P5016, "%!lexical_regs"
    set $S5006, $P101
    unless _lex_param_2 goto if254_else1129 
    set $P5020, _lex_param_2
    goto if254_end1130
  if254_else1129:
.annotate 'line', 2000
    nqp_decontainerize $P5018, _lex_param_0
    set $S5009, $P102
    downcase $S5008, $S5009
    concat $S5007, "fresh_lex_", $S5008
    $P5019 = $P5018.$S5007()
    set $P5020, $P5019
  if254_end1130:
    set $P5017[$S5006], $P5020
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5023, $P5021, $P5022, "%!reg_types"
    nqp_decontainerize $P5025, _lex_param_0
    nqp_get_sc_object $P5026, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5027, $P5025, $P5026, "%!lexical_regs"
    set $S5010, $P101
    set $P5024, $P5027[$S5010]
    unless_null $P5024, fallback1131
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5028
  fallback1131:
    set $S5011, $P5024
    set $P5023[$S5011], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "register_local" :subid("cuid_78_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2004
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2005
    $P5002 = _lex_param_1."name"()
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!local_types"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if255_end1134 
.annotate 'line', 2006
    set $S5004, $P101
    concat $S5003, "Local '", $S5004
    concat $S5002, $S5003, "' already declared"
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if255_end1134:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!local_types"
    set $S5005, $P101
.annotate 'line', 2009
    $P5012 = _lex_param_1."returns"()
    $P5013 = "&type_to_register_type"($P5012)
    set $P5011[$S5005], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5016, $P5014, $P5015, "%!reg_types"
    set $S5006, $P101
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!local_types"
    set $S5007, $P101
    set $P5017, $P5020[$S5007]
    unless_null $P5017, fallback1135
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5021
  fallback1135:
    set $P5016[$S5006], $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_79_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2013
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!qast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "outer" :subid("cuid_80_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2014
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!outer"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "params" :subid("cuid_81_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2015
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!params"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "lexicals" :subid("cuid_82_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2016
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!lexicals"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "locals" :subid("cuid_83_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2017
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!locals"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "lex_reg" :subid("cuid_84_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2019
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!lexical_regs"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1136
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1136:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "local_type" :subid("cuid_85_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2022
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!local_types"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1137
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1137:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "local_type_long" :subid("cuid_86_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2023
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    find_lex $P5002, "%longnames"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!local_types"
    set $S5001, _lex_param_1
    set $P5003, $P5006[$S5001]
    unless_null $P5003, fallback1138
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1138:
    set $S5002, $P5003
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback1139
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5008
  fallback1139:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "lexical_type" :subid("cuid_87_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2024
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!lexical_types"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1140
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1140:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "lexical_type_long" :subid("cuid_88_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2025
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    find_lex $P5002, "%longnames"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!lexical_types"
    set $S5001, _lex_param_1
    set $P5003, $P5006[$S5001]
    unless_null $P5003, fallback1141
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1141:
    set $S5002, $P5003
    set $P5001, $P5002[$S5002]
    unless_null $P5001, fallback1142
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5008
  fallback1142:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "reg_type" :subid("cuid_89_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2026
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!reg_types"
    set $S5001, _lex_param_1
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback1143
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1143:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_loadlibs" :subid("cuid_90_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2028
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_255_1347104163.3' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "@libs", _lex_param_1 
    set $P5001, _lex_param_1
    iter $P5003, _lex_param_1
  for_next1144:
    unless $P5003, for_done1146
    shift $P5005, $P5003
  for_redo1145:
    .const 'Sub' $P5004 = 'cuid_255_1347104163.3' 
    capture_lex $P5004
    $P5001 = $P5004($P5005)
    goto for_next1144
  for_done1146:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_255_1347104163.3") :anon :lex :outer("cuid_90_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2029
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5004, $P5001, $P5003, "@!loadlibs"
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!loadlibs"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5004[$I5001], _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "loadlibs" :subid("cuid_91_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2033
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!loadlibs"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_p" :subid("cuid_92_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2037
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_p"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_p", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_p"
    set $S5002, $I5003
    concat $S5001, "$P", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_s" :subid("cuid_93_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2041
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_s"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_s", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_s"
    set $S5002, $I5003
    concat $S5001, "$S", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_i" :subid("cuid_94_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2045
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_i"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_i", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_i"
    set $S5002, $I5003
    concat $S5001, "$I", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "fresh_lex_n" :subid("cuid_95_1347104163.3") :anon :lex :outer("cuid_96_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2049
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5001, $P5003, $P5004, "$!cur_lex_n"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    repr_bind_attr_int $P5001, $P5002, "$!cur_lex_n", $I5002
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    repr_get_attr_int $I5003, $P5005, $P5006, "$!cur_lex_n"
    set $S5002, $I5003
    concat $S5001, "$N", $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_97_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2068
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["CompUnit"]
    unless_null $P5001, fallback1153
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1153:
    type_check $I5001, _lex_param_1, $P5001
    set $I5003, $I5001
    if $I5001 goto unless258_end1152 
    get_hll_global $P5009, "GLOBAL"
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Block"]
    unless_null $P5006, fallback1154
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5010
  fallback1154:
    type_check $I5002, _lex_param_1, $P5006
    set $I5003, $I5002
  unless258_end1152:
    box $P5018, $I5003
    set $P5017, $P5018
    if $I5003 goto unless257_end1150 
.annotate 'line', 2070
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Block"]
    unless_null $P5011, fallback1155
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5015
  fallback1155:
    $P5016 = $P5011."new"(_lex_param_1)
    set _lex_param_1, $P5016
    set $P5017, _lex_param_1
  unless257_end1150:
.annotate 'line', 2073
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."as_post"(_lex_param_1)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "type_to_register_type" :subid("cuid_98_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2080
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 2081
    $P5001 = "&type_to_register_type"(_lex_param_1)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "force_return_boxing_for_hll" :subid("cuid_99_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2090
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
.sub "unique" :subid("cuid_100_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2094
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_13, default1157
    box $P5001, ""
    set _lex_param_1, $P5001
  default1157:
    .lex "self", _lex_param_0 
    .lex "$prefix", _lex_param_1 
    .local pmc tmp_2 
    set $S5002, _lex_param_1
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5001, $P5002["$serno"]
    unless_null $P5001, fallback1156
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5004
  fallback1156:
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
.sub "escape" :subid("cuid_101_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2095
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$esc", $P101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    unless $I5001 goto if259_else1158 
    set $S5006, $P101
    concat $S5005, "utf8:\"", $S5006
    concat $S5004, $S5005, "\""
    set $S5015, $S5004
    goto if259_end1159
  if259_else1158:
    set $S5007, $P101
    index $I5004, $S5007, unicode:"\\u", 0
    set $N5003, $I5004
    set $N5004, 0
    isge $I5003, $N5003, $N5004
    unless $I5003 goto if260_else1160 
    set $S5010, $P101
    concat $S5009, "unicode:\"", $S5010
    concat $S5008, $S5009, "\""
    set $S5014, $S5008
    goto if260_end1161
  if260_else1160:
    set $S5013, $P101
    concat $S5012, "\"", $S5013
    concat $S5011, $S5012, "\""
    set $S5014, $S5011
  if260_end1161:
    set $S5015, $S5014
  if259_end1159:
    .return ($S5015) 
.end
.HLL "nqp"
.namespace []
.sub "rxescape" :subid("cuid_102_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2103
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
.sub "as_post" :subid("cuid_103_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2105
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("want") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_14, default1167
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_2, $P5018
  default1167:
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$want", _lex_param_2 
    unless _lex_param_2 goto if261_else1162 
.annotate 'line', 2106
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Want"]
    unless_null $P5001, fallback1166
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1166:
    type_check $I5001, _lex_param_1, $P5001
    unless $I5001 goto if262_else1164 
.annotate 'line', 2107
.annotate 'line', 2108
    nqp_decontainerize $P5006, _lex_param_0
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = "&want"(_lex_param_1, _lex_param_2)
    $P5009 = $P5007."as_post"($P5008)
    $P5010 = $P5006."coerce"($P5009, _lex_param_2)
    set $P5015, $P5010
    goto if262_end1165
  if262_else1164:
.annotate 'line', 2110
.annotate 'line', 2111
    nqp_decontainerize $P5011, _lex_param_0
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."as_post"(_lex_param_1)
    $P5014 = $P5011."coerce"($P5013, _lex_param_2)
    set $P5015, $P5014
  if262_end1165:
    set $P5017, $P5015
    goto if261_end1163
  if261_else1162:
.annotate 'line', 2114
    multi_dispatch_over_lexical_candidates $P5016
    set $P5017, $P5016
  if261_end1163:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_104_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2119
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5046 = 'cuid_257_1347104163.3' 
    capture_lex $P5046 
    .const 'Sub' $P5046 = 'cuid_259_1347104163.3' 
    capture_lex $P5046 
    .const 'Sub' $P5046 = 'cuid_260_1347104163.3' 
    capture_lex $P5046 
    .lex "$*HLL", $P101 
    .lex "$*QAST_BLOCK_NO_CLOSE", $P102 
    .lex "$block_post", $P103 
    .lex "$comp_mode", $P104 
    .lex "@pre_des", $P105 
    .lex "@post_des", $P106 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    box $P5007, ""
    set $P101, $P5007
.annotate 'line', 2122
    $P5008 = _lex_param_1."hll"()
    set $P5010, $P5008
    unless $P5008 goto if263_end1169 
.annotate 'line', 2123
    $P5009 = _lex_param_1."hll"()
    set $P101, $P5009
    set $P5010, $P101
  if263_end1169:
    $P5011 = _lex_param_1."list"()
    set $N5001, $P5011
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    set $I5004, $I5001
    if $I5001 goto unless265_end1173 
    set $P5012, _lex_param_1[0]
    unless_null $P5012, fallback1174
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5013
  fallback1174:
    get_hll_global $P5017, "GLOBAL"
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set $P5014, $P5015["Block"]
    unless_null $P5014, fallback1175
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5014, $P5018
  fallback1175:
    type_check $I5003, $P5012, $P5014
    box $P5019, $I5003
    isfalse $I5002, $P5019
    set $I5004, $I5002
  unless265_end1173:
    box $P5022, $I5004
    set $P5021, $P5022
    unless $I5004 goto if264_end1171 
.annotate 'line', 2127
    box $P5020, "QAST::CompUnit should have one child that is a QAST::Block"
    die $P5020
    set $P5021, $P5020
  if264_end1171:
    box $P5023, 1
    set $P102, $P5023
.annotate 'line', 2133
    nqp_decontainerize $P5024, _lex_param_0
    set $P5025, _lex_param_1[0]
    unless_null $P5025, fallback1176
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5025, $P5026
  fallback1176:
    $P5027 = $P5024."as_post"($P5025)
    set $P103, $P5027
.annotate 'line', 2138
    $P5028 = _lex_param_1."compilation_mode"()
    set $P104, $P5028
.annotate 'line', 2139
    $P5029 = _lex_param_1."pre_deserialize"()
    set $P105, $P5029
.annotate 'line', 2140
    $P5030 = _lex_param_1."post_deserialize"()
    set $P106, $P5030
    set $P5031, $P104
    if $P104 goto unless268_end1182 
    set $P5031, $P105
  unless268_end1182:
    set $P5032, $P5031
    if $P5031 goto unless267_end1180 
    set $P5032, $P106
  unless267_end1180:
    set $P5035, $P5032
    unless $P5032 goto if266_end1178 
    .const 'Sub' $P5033 = 'cuid_257_1347104163.3' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if266_end1178:
.annotate 'line', 2168
    $P5036 = _lex_param_1."load"()
    defined $I5005, $P5036
    box $P5040, $I5005
    set $P5039, $P5040
    unless $I5005 goto if270_end1195 
    .const 'Sub' $P5037 = 'cuid_259_1347104163.3' 
    capture_lex $P5037
    $P5038 = $P5037()
    set $P5039, $P5038
  if270_end1195:
.annotate 'line', 2175
    $P5041 = _lex_param_1."main"()
    defined $I5006, $P5041
    box $P5045, $I5006
    set $P5044, $P5045
    unless $I5006 goto if271_end1198 
    .const 'Sub' $P5042 = 'cuid_260_1347104163.3' 
    capture_lex $P5042
    $P5043 = $P5042()
    set $P5044, $P5043
  if271_end1198:
    .return ($P103) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_257_1347104163.3") :anon :lex :outer("cuid_104_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2141
    .const 'Sub' $P5037 = 'cuid_256_1347104163.3' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_258_1347104163.3' 
    capture_lex $P5037 
    .lex "$block", $P101 
    .lex "$sc_post", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 2144
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Block"]
    unless_null $P5003, fallback1183
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1183:
    $P5008 = $P5003."new"("raw" :named("blocktype"))
    set $P101, $P5008
    find_lex $P5012, "@pre_des"
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next1185:
    unless $P5011, for_done1187
    shift $P5014, $P5011
  for_redo1186:
    .const 'Sub' $P5013 = 'cuid_256_1347104163.3' 
    capture_lex $P5013
    $P5009 = $P5013($P5014)
    goto for_next1185
  for_done1187:
    find_lex $P5015, "$comp_mode"
    set $P5024, $P5015
    unless $P5015 goto if269_end1189 
.annotate 'line', 2152
.annotate 'line', 2153
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$cu"
    $P5019 = $P5018."sc"()
    find_lex $P5020, "$cu"
    $P5021 = $P5020."code_ref_blocks"()
    $P5022 = $P5016."deserialization_code"($P5019, $P5021)
    $P5023 = $P101."push"($P5022)
    set $P5024, $P5023
  if269_end1189:
    find_lex $P5028, "@post_des"
    set $P5025, $P5028
    iter $P5027, $P5028
  for_next1191:
    unless $P5027, for_done1193
    shift $P5030, $P5027
  for_redo1192:
    .const 'Sub' $P5029 = 'cuid_258_1347104163.3' 
    capture_lex $P5029
    $P5025 = $P5029($P5030)
    goto for_next1191
  for_done1193:
.annotate 'line', 2162
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    $P5033 = $P5031."as_post"($P101)
    set $P102, $P5033
.annotate 'line', 2163
    $P5034 = $P102."pirflags"(":load :init")
.annotate 'line', 2164
    find_lex $P5035, "$block_post"
    $P5036 = $P5035."push"($P102)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_256_1347104163.3") :anon :lex :outer("cuid_257_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2147
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2148
    find_lex $P5001, "$block"
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Stmt"]
    unless_null $P5002, fallback1184
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5006
  fallback1184:
    $P5007 = $P5002."new"(_lex_param_0)
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_258_1347104163.3") :anon :lex :outer("cuid_257_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2157
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2158
    find_lex $P5001, "$block"
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Stmt"]
    unless_null $P5002, fallback1190
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5006
  fallback1190:
    $P5007 = $P5002."new"(_lex_param_0)
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1347104163.3") :anon :lex :outer("cuid_104_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2168
    .lex "$load_post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2169
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["Block"]
    unless_null $P5004, fallback1196
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback1196:
    find_lex $P5009, "$cu"
    $P5010 = $P5009."load"()
    $P5011 = $P5004."new"($P5010, "raw" :named("blocktype"))
    $P5012 = $P5002."as_post"($P5011)
    set $P101, $P5012
.annotate 'line', 2170
    $P5013 = $P101."pirflags"(":load")
.annotate 'line', 2171
    find_lex $P5014, "$block_post"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1347104163.3") :anon :lex :outer("cuid_104_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2175
    .lex "$main_post", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2176
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["Block"]
    unless_null $P5004, fallback1199
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback1199:
    find_lex $P5009, "$cu"
    $P5010 = $P5009."main"()
    $P5011 = $P5004."new"($P5010, "raw" :named("blocktype"))
    $P5012 = $P5002."as_post"($P5011)
    set $P101, $P5012
.annotate 'line', 2177
    $P5013 = $P101."pirflags"(":main")
.annotate 'line', 2178
    find_lex $P5014, "$block_post"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "deserialization_code" :subid("cuid_105_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2184
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    new $P5007, "ResizableStringArray"
    set $P101, $P5007
    nqp_serialize_sc $S5001, _lex_param_1, $P101
    box $P5008, $S5001
    set $P102, $P5008
    nqp_pop_compiling_sc 
.annotate 'line', 2193
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Op"]
    unless_null $P5009, fallback1200
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5013
  fallback1200:
    $P5014 = $P5009."new"("list_s" :named("op"))
    set $P103, $P5014
    elements $I5001, $P101
    box $P5015, $I5001
    set $P104, $P5015
    box $P5016, 0
    set $P105, $P5016
  while272_test1201:
    set $N5001, $P105
    set $N5002, $P104
    islt $I5002, $N5001, $N5002
    box $P5037, $I5002
    set $P5036, $P5037
    unless $I5002 goto while272_done1205 
  while272_redo1203:
.annotate 'line', 2196
.annotate 'line', 2197
    set $I5004, $P105
    set $P5017, $P101[$I5004]
    unless_null $P5017, fallback1208
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5018
  fallback1208:
    set $S5002, $P5017
    isnull $I5003, $S5002
    unless $I5003 goto if273_else1206 
.annotate 'line', 2198
    get_hll_global $P5022, "GLOBAL"
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Op"]
    unless_null $P5019, fallback1209
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5023
  fallback1209:
    $P5024 = $P5019."new"("null_s" :named("op"))
    set $P5033, $P5024
    goto if273_end1207
  if273_else1206:
.annotate 'line', 2199
    get_hll_global $P5028, "GLOBAL"
    nqp_get_package_through_who $P5027, $P5028, "QAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["SVal"]
    unless_null $P5025, fallback1210
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5025, $P5029
  fallback1210:
    set $I5005, $P105
    set $P5030, $P101[$I5005]
    unless_null $P5030, fallback1211
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5030, $P5031
  fallback1211:
    $P5032 = $P5025."new"($P5030 :named("value"))
    set $P5033, $P5032
  if273_end1207:
    $P5034 = $P103."push"($P5033)
    set $N5004, $P105
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5035, $N5003
    set $P105, $P5035
    set $P5036, $P105
    goto while272_test1201 
  while272_done1205:
.annotate 'line', 2204
    get_hll_global $P5041, "GLOBAL"
    nqp_get_package_through_who $P5040, $P5041, "QAST"
    get_who $P5039, $P5040
    set $P5038, $P5039["Op"]
    unless_null $P5038, fallback1212
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5038, $P5042
  fallback1212:
    $P5043 = $P5038."new"(_lex_param_2 :flat, "list_b" :named("op"))
    set $P106, $P5043
.annotate 'line', 2207
    get_hll_global $P5047, "GLOBAL"
    nqp_get_package_through_who $P5046, $P5047, "QAST"
    get_who $P5045, $P5046
    set $P5044, $P5045["Stmt"]
    unless_null $P5044, fallback1213
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5044, $P5048
  fallback1213:
.annotate 'line', 2208
    get_hll_global $P5052, "GLOBAL"
    nqp_get_package_through_who $P5051, $P5052, "QAST"
    get_who $P5050, $P5051
    set $P5049, $P5050["Op"]
    unless_null $P5049, fallback1214
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5049, $P5053
  fallback1214:
.annotate 'line', 2210
    get_hll_global $P5057, "GLOBAL"
    nqp_get_package_through_who $P5056, $P5057, "QAST"
    get_who $P5055, $P5056
    set $P5054, $P5055["Var"]
    unless_null $P5054, fallback1215
    nqp_get_sc_object $P5058, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5054, $P5058
  fallback1215:
    $P5059 = $P5054."new"("cur_sc" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 2211
    get_hll_global $P5063, "GLOBAL"
    nqp_get_package_through_who $P5062, $P5063, "QAST"
    get_who $P5061, $P5062
    set $P5060, $P5061["Op"]
    unless_null $P5060, fallback1216
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5060, $P5064
  fallback1216:
    get_hll_global $P5068, "GLOBAL"
    nqp_get_package_through_who $P5067, $P5068, "QAST"
    get_who $P5066, $P5067
    set $P5065, $P5066["SVal"]
    unless_null $P5065, fallback1217
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5065, $P5069
  fallback1217:
    $P5070 = _lex_param_1."handle"()
    $P5071 = $P5065."new"($P5070 :named("value"))
    $P5072 = $P5060."new"($P5071, "createsc" :named("op"))
    $P5073 = $P5049."new"($P5059, $P5072, "bind" :named("op"))
.annotate 'line', 2213
    get_hll_global $P5077, "GLOBAL"
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Op"]
    unless_null $P5074, fallback1218
    nqp_get_sc_object $P5078, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5074, $P5078
  fallback1218:
.annotate 'line', 2215
    get_hll_global $P5082, "GLOBAL"
    nqp_get_package_through_who $P5081, $P5082, "QAST"
    get_who $P5080, $P5081
    set $P5079, $P5080["Var"]
    unless_null $P5079, fallback1219
    nqp_get_sc_object $P5083, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5079, $P5083
  fallback1219:
    $P5084 = $P5079."new"("cur_sc" :named("name"), "local" :named("scope"))
.annotate 'line', 2216
    get_hll_global $P5088, "GLOBAL"
    nqp_get_package_through_who $P5087, $P5088, "QAST"
    get_who $P5086, $P5087
    set $P5085, $P5086["SVal"]
    unless_null $P5085, fallback1220
    nqp_get_sc_object $P5089, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5085, $P5089
  fallback1220:
    $P5090 = _lex_param_1."description"()
    $P5091 = $P5085."new"($P5090 :named("value"))
    $P5092 = $P5074."new"($P5084, $P5091, "callmethod" :named("op"), "set_description" :named("name"))
.annotate 'line', 2218
    get_hll_global $P5096, "GLOBAL"
    nqp_get_package_through_who $P5095, $P5096, "QAST"
    get_who $P5094, $P5095
    set $P5093, $P5094["Op"]
    unless_null $P5093, fallback1221
    nqp_get_sc_object $P5097, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5093, $P5097
  fallback1221:
.annotate 'line', 2220
    get_hll_global $P5101, "GLOBAL"
    nqp_get_package_through_who $P5100, $P5101, "QAST"
    get_who $P5099, $P5100
    set $P5098, $P5099["SVal"]
    unless_null $P5098, fallback1222
    nqp_get_sc_object $P5102, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5098, $P5102
  fallback1222:
    $P5103 = $P5098."new"($P102 :named("value"))
.annotate 'line', 2221
    get_hll_global $P5107, "GLOBAL"
    nqp_get_package_through_who $P5106, $P5107, "QAST"
    get_who $P5105, $P5106
    set $P5104, $P5105["Var"]
    unless_null $P5104, fallback1223
    nqp_get_sc_object $P5108, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5104, $P5108
  fallback1223:
    $P5109 = $P5104."new"("cur_sc" :named("name"), "local" :named("scope"))
.annotate 'line', 2223
    get_hll_global $P5113, "GLOBAL"
    nqp_get_package_through_who $P5112, $P5113, "QAST"
    get_who $P5111, $P5112
    set $P5110, $P5111["Block"]
    unless_null $P5110, fallback1224
    nqp_get_sc_object $P5114, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5110, $P5114
  fallback1224:
    $P5115 = $P5110."new"($P106, "immediate" :named("blocktype"))
    $P5116 = $P5093."new"($P5103, $P5109, $P103, $P5115, "deserialize" :named("op"))
    $P5117 = $P5044."new"($P5073, $P5092, $P5116)
    .return ($P5117) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_106_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2228
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5034 = 'cuid_263_1347104163.3' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_278_1347104163.3' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_279_1347104163.3' 
    capture_lex $P5034 
    .lex "$sub", $P101 
    .lex "$ops", $P102 
    .lex "$blocktype", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1225
    .lex "RETURN", $P104
    .const 'Sub' $P5004 = 'cuid_263_1347104163.3' 
    capture_lex $P5004
    $P5005 = $P5004()
    new $P5012, 'ExceptionHandler'
    set_label $P5012, catch_handler_3121331
    $P5012.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5012
    find_dynamic_lex $P5006, "$*BLOCK"
    unless_null $P5006, fallback1327
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["$BLOCK"]
    unless_null $P5007, fallback1328
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5010
  fallback1328:
    unless_null $P5007, vivi_3101329
    die "Contextual $*BLOCK not found"
    box $P5011, "Contextual $*BLOCK not found"
    set $P5007, $P5011
  vivi_3101329:
    set $P5006, $P5007
  fallback1327:
    set $P5013, $P5006
    pop_eh 
    goto skip_handler_3111330
  catch_handler_3121331:
    .get_results ($P5012) 
    set $I10001, 1
    set $P5012["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5012
    pop_upto_eh $P5012
    pop_eh 
    set $P5013, $P10001
    goto skip_handler_3111330
  skip_handler_3111330:
    nqp_get_sc_object $P5014, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    type_check $I5001, $P5013, $P5014
    box $P5018, $I5001
    set $P5017, $P5018
    if $I5001 goto unless309_end1326 
.annotate 'line', 2406
    find_lex $P5015, "RETURN"
    $P5016 = $P5015($P101)
    set $P5017, $P5016
  unless309_end1326:
.annotate 'line', 2412
    get_hll_global $P5022, "GLOBAL"
    nqp_get_package_through_who $P5021, $P5022, "PIRT"
    get_who $P5020, $P5021
    set $P5019, $P5020["Ops"]
    unless_null $P5019, fallback1332
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5023
  fallback1332:
    $P5024 = $P5019."new"()
    set $P102, $P5024
.annotate 'line', 2413
    $P5025 = $P102."push"($P101)
.annotate 'line', 2414
    $P5026 = _lex_param_1."blocktype"()
    set $P103, $P5026
    set $S5001, $P103
    iseq $I5002, $S5001, "immediate"
    unless $I5002 goto if313_else1333 
    .const 'Sub' $P5027 = 'cuid_278_1347104163.3' 
    capture_lex $P5027
    $P5028 = $P5027()
    set $P5033, $P5028
    goto if313_end1334
  if313_else1333:
    set $S5002, $P103
    iseq $I5003, $S5002, "declaration"
    set $I5005, $I5003
    if $I5003 goto unless324_end1356 
    set $S5003, $P103
    iseq $I5004, $S5003, ""
    set $I5005, $I5004
  unless324_end1356:
    box $P5032, $I5005
    set $P5031, $P5032
    unless $I5005 goto if323_end1354 
    .const 'Sub' $P5029 = 'cuid_279_1347104163.3' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
  if323_end1354:
    set $P5033, $P5031
  if313_end1334:
    goto lexotic_1226
  lexotic_1225:
    .get_results ($P102)
  lexotic_1226:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_263_1347104163.3") :anon :lex :outer("cuid_106_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2231
    .const 'Sub' $P5144 = 'cuid_262_1347104163.3' 
    capture_lex $P5144 
    .const 'Sub' $P5144 = 'cuid_265_1347104163.3' 
    capture_lex $P5144 
    .const 'Sub' $P5144 = 'cuid_271_1347104163.3' 
    capture_lex $P5144 
    .const 'Sub' $P5144 = 'cuid_272_1347104163.3' 
    capture_lex $P5144 
    .const 'Sub' $P5144 = 'cuid_273_1347104163.3' 
    capture_lex $P5144 
    .const 'Sub' $P5144 = 'cuid_274_1347104163.3' 
    capture_lex $P5144 
    .const 'Sub' $P5144 = 'cuid_276_1347104163.3' 
    capture_lex $P5144 
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    new $P5010, 'Hash'
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P112, $P5012
    new $P5013, 'ResizablePMCArray'
    set $P113, $P5013
.annotate 'line', 2233
    nqp_get_sc_object $P5014, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    $P5015 = $P5014."new"()
    set $P101, $P5015
    unless_null $P101, fallback1227
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["$REGALLOC"]
    unless_null $P5016, fallback1228
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5016, $P5019
  fallback1228:
    unless_null $P5016, vivi_2741229
    die "Contextual $*REGALLOC not found"
    box $P5020, "Contextual $*REGALLOC not found"
    set $P5016, $P5020
  vivi_2741229:
    set $P101, $P5016
  fallback1227:
    set $P102, $P101
    box $P5021, 0
    set $P103, $P5021
    new $P5028, 'ExceptionHandler'
    set_label $P5028, catch_handler_2771234
    $P5028.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5028
    find_dynamic_lex $P5022, "$*BLOCK"
    unless_null $P5022, fallback1230
    get_hll_global $P5025, "GLOBAL"
    get_who $P5024, $P5025
    set $P5023, $P5024["$BLOCK"]
    unless_null $P5023, fallback1231
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5023, $P5026
  fallback1231:
    unless_null $P5023, vivi_2751232
    die "Contextual $*BLOCK not found"
    box $P5027, "Contextual $*BLOCK not found"
    set $P5023, $P5027
  vivi_2751232:
    set $P5022, $P5023
  fallback1230:
    set $P5029, $P5022
    pop_eh 
    goto skip_handler_2761233
  catch_handler_2771234:
    .get_results ($P5028) 
    set $I10001, 1
    set $P5028["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5028
    pop_upto_eh $P5028
    pop_eh 
    set $P5029, $P10001
    goto skip_handler_2761233
  skip_handler_2761233:
    set $P104, $P5029
.annotate 'line', 2237
    nqp_get_sc_object $P5030, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    find_lex $P5031, "$node"
    $P5032 = $P5030."new"($P5031, $P104)
    set $P105, $P5032
    .const 'Sub' $P5033 = 'cuid_262_1347104163.3' 
    capture_lex $P5033
    $P5034 = $P5033()
.annotate 'line', 2258
    get_hll_global $P5038, "GLOBAL"
    nqp_get_package_through_who $P5037, $P5038, "PIRT"
    get_who $P5036, $P5037
    set $P5035, $P5036["Ops"]
    unless_null $P5035, fallback1241
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5035, $P5039
  fallback1241:
    $P5040 = $P5035."new"()
    set $P108, $P5040
.annotate 'line', 2259
    get_hll_global $P5044, "GLOBAL"
    nqp_get_package_through_who $P5043, $P5044, "PIRT"
    get_who $P5042, $P5043
    set $P5041, $P5042["Ops"]
    unless_null $P5041, fallback1242
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5041, $P5045
  fallback1242:
    $P5046 = $P5041."new"()
    set $P109, $P5046
.annotate 'line', 2260
    find_lex $P5047, "$node"
    $P5048 = $P5047."node"()
    set $P5052, $P5048
    unless $P5048 goto if283_end1244 
    find_lex $P5049, "$node"
    $P5050 = $P5049."node"()
    $P5051 = $P108."node"($P5050)
    set $P5052, $P5051
  if283_end1244:
.annotate 'line', 2262
    find_lex $P5053, "$node"
    $P5054 = $P5053."custom_args"()
    unless $P5054 goto if284_else1245 
.annotate 'line', 2263
    $P5055 = $P108."push_pirop"(".param pmc CALL_SIG :call_sig")
    set $P5058, $P5055
    goto if284_end1246
  if284_else1245:
    .const 'Sub' $P5056 = 'cuid_265_1347104163.3' 
    capture_lex $P5056
    $P5057 = $P5056()
    set $P5058, $P5057
  if284_end1246:
.annotate 'line', 2340
    unless_null $P101, fallback1286
    get_hll_global $P5061, "GLOBAL"
    get_who $P5060, $P5061
    set $P5059, $P5060["$REGALLOC"]
    unless_null $P5059, fallback1287
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5059, $P5062
  fallback1287:
    unless_null $P5059, vivi_2961288
    die "Contextual $*REGALLOC not found"
    box $P5063, "Contextual $*REGALLOC not found"
    set $P5059, $P5063
  vivi_2961288:
    set $P101, $P5059
  fallback1286:
    $P5064 = $P101."fresh_p"()
    set $P111, $P5064
    set $P5065, $P106
    iter $P5067, $P106
  for_next1289:
    unless $P5067, for_done1291
    shift $P5069, $P5067
  for_redo1290:
    .const 'Sub' $P5068 = 'cuid_271_1347104163.3' 
    capture_lex $P5068
    $P5065 = $P5068($P5069)
    goto for_next1289
  for_done1291:
.annotate 'line', 2347
    $P5070 = $P108."push"($P109)
.annotate 'line', 2350
    $P5074 = $P105."lexicals"()
    set $P5071, $P5074
    iter $P5073, $P5074
  for_next1292:
    unless $P5073, for_done1294
    shift $P5076, $P5073
  for_redo1293:
    .const 'Sub' $P5075 = 'cuid_272_1347104163.3' 
    capture_lex $P5075
    $P5071 = $P5075($P5076)
    goto for_next1292
  for_done1294:
    set $P5077, $P110
    iter $P5079, $P110
  for_next1295:
    unless $P5079, for_done1297
    shift $P5081, $P5079
  for_redo1296:
    .const 'Sub' $P5080 = 'cuid_273_1347104163.3' 
    capture_lex $P5080
    $P5077 = $P5080($P5081)
    goto for_next1295
  for_done1297:
.annotate 'line', 2356
    $P5085 = $P105."locals"()
    set $P5082, $P5085
    iter $P5084, $P5085
  for_next1298:
    unless $P5084, for_done1300
    shift $P5087, $P5084
  for_redo1299:
    .const 'Sub' $P5086 = 'cuid_274_1347104163.3' 
    capture_lex $P5086
    $P5082 = $P5086($P5087)
    goto for_next1298
  for_done1300:
.annotate 'line', 2361
    get_hll_global $P5091, "GLOBAL"
    nqp_get_package_through_who $P5090, $P5091, "PIRT"
    get_who $P5089, $P5090
    set $P5088, $P5089["Sub"]
    unless_null $P5088, fallback1301
    nqp_get_sc_object $P5092, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5088, $P5092
  fallback1301:
    $P5093 = $P5088."new"()
    store_lex "$sub", $P5093
    box $P5094, ""
    set $P112, $P5094
    new $P5101, 'ExceptionHandler'
    set_label $P5101, catch_handler_2991306
    $P5101.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5101
    find_dynamic_lex $P5095, "$*HLL"
    unless_null $P5095, fallback1302
    get_hll_global $P5098, "GLOBAL"
    get_who $P5097, $P5098
    set $P5096, $P5097["$HLL"]
    unless_null $P5096, fallback1303
    nqp_get_sc_object $P5099, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5096, $P5099
  fallback1303:
    unless_null $P5096, vivi_2971304
    die "Contextual $*HLL not found"
    box $P5100, "Contextual $*HLL not found"
    set $P5096, $P5100
  vivi_2971304:
    set $P5095, $P5096
  fallback1302:
    set $P112, $P5095
    set $P5102, $P112
    pop_eh 
    goto skip_handler_2981305
  catch_handler_2991306:
    .get_results ($P5101) 
    set $I10001, 1
    set $P5101["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5101
    pop_upto_eh $P5101
    pop_eh 
    set $P5102, $P10001
    goto skip_handler_2981305
  skip_handler_2981305:
    set $P5105, $P112
    unless $P112 goto if300_end1308 
.annotate 'line', 2364
.annotate 'line', 2365
    find_lex $P5103, "$sub"
    $P5104 = $P5103."hll"($P112)
    set $P5105, $P5104
  if300_end1308:
.annotate 'line', 2369
    find_lex $P5106, "$sub"
    $P5107 = $P5106."push"($P108)
    .const 'Sub' $P5108 = 'cuid_276_1347104163.3' 
    capture_lex $P5108
    $P5109 = $P5108()
.annotate 'line', 2386
    find_lex $P5110, "$sub"
    find_lex $P5111, "$node"
    $P5112 = $P5111."cuid"()
    $P5113 = $P5110."subid"($P5112)
.annotate 'line', 2387
    $P5114 = $P105."outer"()
    nqp_get_sc_object $P5115, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    type_check $I5001, $P5114, $P5115
    unless $I5001 goto if305_else1316 
.annotate 'line', 2388
    find_lex $P5116, "$sub"
    find_lex $P5118, "self"
    nqp_decontainerize $P5117, $P5118
    $P5119 = $P105."outer"()
    $P5120 = $P5119."qast"()
    $P5121 = $P5120."cuid"()
    $P5122 = $P5117."escape"($P5121)
    set $S5003, $P5122
    concat $S5002, ":anon :lex :outer(", $S5003
    concat $S5001, $S5002, ")"
    $P5123 = $P5116."pirflags"($S5001)
    set $P5126, $P5123
    goto if305_end1317
  if305_else1316:
.annotate 'line', 2390
.annotate 'line', 2391
    find_lex $P5124, "$sub"
    $P5125 = $P5124."pirflags"(":anon :lex")
    set $P5126, $P5125
  if305_end1317:
.annotate 'line', 2393
    find_lex $P5127, "$sub"
    find_lex $P5128, "$node"
    $P5129 = $P5128."name"()
    $P5130 = $P5127."name"($P5129)
.annotate 'line', 2396
    $P5131 = $P105."loadlibs"()
    set $P113, $P5131
    set $P5134, $P113
    unless $P113 goto if306_end1319 
.annotate 'line', 2397
    find_lex $P5132, "$sub"
    $P5133 = $P5132."loadlibs"($P113)
    set $P5134, $P5133
  if306_end1319:
    find_dynamic_lex $P5135, "$*QAST_BLOCK_NO_CLOSE"
    unless_null $P5135, fallback1322
    get_hll_global $P5138, "GLOBAL"
    get_who $P5137, $P5138
    set $P5136, $P5137["$QAST_BLOCK_NO_CLOSE"]
    unless_null $P5136, fallback1323
    nqp_get_sc_object $P5139, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5136, $P5139
  fallback1323:
    unless_null $P5136, vivi_3081324
    die "Contextual $*QAST_BLOCK_NO_CLOSE not found"
    box $P5140, "Contextual $*QAST_BLOCK_NO_CLOSE not found"
    set $P5136, $P5140
  vivi_3081324:
    set $P5135, $P5136
  fallback1322:
    set $P5143, $P5135
    if $P5135 goto unless307_end1321 
.annotate 'line', 2400
.annotate 'line', 2401
    find_lex $P5141, "$sub"
    $P5142 = $P5141."close_sub"()
    set $P5143, $P5142
  unless307_end1321:
    .return ($P5143) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1347104163.3") :anon :lex :outer("cuid_263_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2242
    .const 'Sub' $P5024 = 'cuid_261_1347104163.3' 
    capture_lex $P5024 
    .lex "$*BLOCK", $P101 
    .lex "@*INNERS", $P102 
    .lex "$*HAVE_IMM_ARG", $P103 
    .lex "$*QAST_BLOCK_NO_CLOSE", $P104 
    .lex "$err", $P105 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    set_label $P5018, catch_handler_2811238
    $P5018.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5018
.annotate 'line', 2248
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_2791236
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
.annotate 'line', 2249
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$node"
    $P5013 = $P5012."list"()
    $P5014 = $P5010."compile_all_the_stmts"($P5013)
    store_lex "$stmts", $P5014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_2781235
  catch_handler_2791236:
    .get_results ($P5016) 
    .const 'Sub' $P10001 = 'cuid_261_1347104163.3' 
    capture_lex $P10001
    $P10002 = $P10001($P5016)
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10003
    goto skip_handler_2781235
  skip_handler_2781235:
    set $P5019, $P5017
    pop_eh 
    goto skip_handler_2801237
  catch_handler_2811238:
    .get_results ($P5018) 
    set $I10001, 1
    set $P5018["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5018
    pop_upto_eh $P5018
    pop_eh 
    set $P5019, $P10001
    goto skip_handler_2801237
  skip_handler_2801237:
    set $P5023, $P105
    unless $P105 goto if282_end1240 
.annotate 'line', 2252
.annotate 'line', 2253
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
  if282_end1240:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1347104163.3") :anon :lex :outer("cuid_262_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2250
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    store_lex "$err", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_265_1347104163.3") :anon :lex :outer("cuid_263_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2265
    .const 'Sub' $P5032 = 'cuid_264_1347104163.3' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_266_1347104163.3' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_267_1347104163.3' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_269_1347104163.3' 
    capture_lex $P5032 
    .lex "@pos_params", $P101 
    .lex "@named_params", $P102 
    .lex "$slurpy_pos", $P103 
    .lex "$slurpy_named", $P104 
    .lex "@sorted_params", $P105 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
.annotate 'line', 2270
    find_lex $P5009, "$block"
    $P5010 = $P5009."params"()
    set $P5006, $P5010
    iter $P5008, $P5010
  for_next1255:
    unless $P5008, for_done1257
    shift $P5012, $P5008
  for_redo1256:
    .const 'Sub' $P5011 = 'cuid_264_1347104163.3' 
    capture_lex $P5011
    $P5006 = $P5011($P5012)
    goto for_next1255
  for_done1257:
    set $P5013, $P101
    iter $P5015, $P101
    new $P5017, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5017, for_handlers1258
    push_eh $P5017
  for_next1259:
    unless $P5015, for_done1261
    shift $P5018, $P5015
  for_redo1260:
    .const 'Sub' $P5016 = 'cuid_266_1347104163.3' 
    capture_lex $P5016
    $P5013 = $P5016($P5018)
    goto for_next1259
  for_handlers1258:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, for_next1259
    eq $P5017, .CONTROL_LOOP_REDO, for_redo1260
  for_done1261:
    pop_eh 
    set $P5019, $P103
    unless $P103 goto if289_end1263 
    push $P105, $P103
    set $P5019, $P105
  if289_end1263:
    set $P5020, $P102
    iter $P5022, $P102
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, for_handlers1264
    push_eh $P5024
  for_next1265:
    unless $P5022, for_done1267
    shift $P5025, $P5022
  for_redo1266:
    .const 'Sub' $P5023 = 'cuid_267_1347104163.3' 
    capture_lex $P5023
    $P5020 = $P5023($P5025)
    goto for_next1265
  for_handlers1264:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, for_next1265
    eq $P5024, .CONTROL_LOOP_REDO, for_redo1266
  for_done1267:
    pop_eh 
    set $P5026, $P104
    unless $P104 goto if290_end1269 
    push $P105, $P104
    set $P5026, $P105
  if290_end1269:
    set $P5027, $P105
    iter $P5029, $P105
  for_next1283:
    unless $P5029, for_done1285
    shift $P5031, $P5029
  for_redo1284:
    .const 'Sub' $P5030 = 'cuid_269_1347104163.3' 
    capture_lex $P5030
    $P5027 = $P5030($P5031)
    goto for_next1283
  for_done1285:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_264_1347104163.3") :anon :lex :outer("cuid_265_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2270
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2271
    $P5001 = _lex_param_0."slurpy"()
    set $P5003, $P5001
    unless $P5001 goto if286_end1250 
    $P5002 = _lex_param_0."named"()
    set $P5003, $P5002
  if286_end1250:
    unless $P5003 goto if285_else1247 
    store_lex "$slurpy_named", _lex_param_0
    set $P5010, _lex_param_0
    goto if285_end1248
  if285_else1247:
.annotate 'line', 2274
    $P5004 = _lex_param_0."slurpy"()
    unless $P5004 goto if287_else1251 
    store_lex "$slurpy_pos", _lex_param_0
    set $P5009, _lex_param_0
    goto if287_end1252
  if287_else1251:
.annotate 'line', 2277
    $P5005 = _lex_param_0."named"()
    unless $P5005 goto if288_else1253 
    find_lex $P5006, "@named_params"
    push $P5006, _lex_param_0
    set $P5008, $P5006
    goto if288_end1254
  if288_else1253:
.annotate 'line', 2280
    find_lex $P5007, "@pos_params"
    push $P5007, _lex_param_0
    set $P5008, $P5007
  if288_end1254:
    set $P5009, $P5008
  if287_end1252:
    set $P5010, $P5009
  if285_end1248:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_266_1347104163.3") :anon :lex :outer("cuid_265_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@sorted_params"
    push $P5001, _lex_param_0
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_267_1347104163.3") :anon :lex :outer("cuid_265_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@sorted_params"
    push $P5001, _lex_param_0
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_269_1347104163.3") :anon :lex :outer("cuid_265_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2289
    .param pmc _lex_param_0 
    .const 'Sub' $P5035 = 'cuid_268_1347104163.3' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_270_1347104163.3' 
    capture_lex $P5035 
    .lex "@param", $P101 
    .lex "$reg_type", $P102 
    .lex "$_", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, ".param"
    push $P5003, $P5004
    set $P101, $P5003
.annotate 'line', 2293
    $P5005 = _lex_param_0."scope"()
    set $S5001, $P5005
    iseq $I5001, $S5001, "local"
    unless $I5001 goto if291_else1270 
.annotate 'line', 2294
    find_lex $P5006, "$block"
    $P5007 = _lex_param_0."name"()
    $P5008 = $P5006."local_type_long"($P5007)
    push $P101, $P5008
.annotate 'line', 2295
    $P5009 = _lex_param_0."name"()
    push $P101, $P5009
.annotate 'line', 2296
    find_lex $P5010, "$block"
    $P5011 = _lex_param_0."name"()
    $P5012 = $P5010."local_type"($P5011)
    set $P102, $P5012
    set $P5015, $P102
    goto if291_end1271
  if291_else1270:
    .const 'Sub' $P5013 = 'cuid_268_1347104163.3' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if291_end1271:
.annotate 'line', 2306
    $P5016 = _lex_param_0."slurpy"()
    unless $P5016 goto if292_else1272 
    box $P5017, ":slurpy"
    push $P101, $P5017
.annotate 'line', 2308
    $P5018 = _lex_param_0."named"()
    set $P5020, $P5018
    unless $P5018 goto if293_end1275 
    box $P5019, ":named"
    push $P101, $P5019
    set $P5020, $P101
  if293_end1275:
    set $P5028, $P5020
    goto if292_end1273
  if292_else1272:
.annotate 'line', 2312
    $P5021 = _lex_param_0."named"()
    set $P5027, $P5021
    unless $P5021 goto if294_end1277 
.annotate 'line', 2313
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
  if294_end1277:
    set $P5028, $P5027
  if292_end1273:
.annotate 'line', 2316
    $P5029 = _lex_param_0."default"()
    unless $P5029 goto if295_else1278 
    .const 'Sub' $P5030 = 'cuid_270_1347104163.3' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5034, $P5031
    goto if295_end1279
  if295_else1278:
.annotate 'line', 2333
.annotate 'line', 2334
    find_lex $P5032, "$decls"
    join $S5005, " ", $P101
    $P5033 = $P5032."push_pirop"($S5005)
    set $P5034, $P5033
  if295_end1279:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_268_1347104163.3") :anon :lex :outer("cuid_269_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2298
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2299
    find_lex $P5002, "$block"
    find_lex $P5003, "$_"
    $P5004 = $P5003."name"()
    $P5005 = $P5002."lex_reg"($P5004)
    set $P101, $P5005
    find_lex $P5006, "@param"
.annotate 'line', 2300
    find_lex $P5007, "$block"
    find_lex $P5008, "$_"
    $P5009 = $P5008."name"()
    $P5010 = $P5007."lexical_type_long"($P5009)
    push $P5006, $P5010
    find_lex $P5011, "@param"
    push $P5011, $P101
    find_lex $P5012, "%lex_params"
.annotate 'line', 2302
    find_lex $P5013, "$_"
    $P5014 = $P5013."name"()
    set $S5001, $P5014
    set $P5012[$S5001], $P101
.annotate 'line', 2303
    find_lex $P5015, "$block"
    find_lex $P5016, "$_"
    $P5017 = $P5016."name"()
    $P5018 = $P5015."lexical_type"($P5017)
    store_lex "$reg_type", $P5018
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_270_1347104163.3") :anon :lex :outer("cuid_269_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2316
    .lex "$o_flag", $P101 
    .lex "$lbl", $P102 
    .lex "$def", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    find_lex $P5004, "@param"
    box $P5005, ":optional"
    push $P5004, $P5005
.annotate 'line', 2319
    find_lex $P5006, "$decls"
    find_lex $P5007, "@param"
    join $S5001, " ", $P5007
    $P5008 = $P5006."push_pirop"($S5001)
.annotate 'line', 2322
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Node"]
    unless_null $P5009, fallback1280
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5013
  fallback1280:
    $P5014 = $P5009."unique"("haz_param")
    set $P101, $P5014
.annotate 'line', 2323
    find_lex $P5015, "$decls"
    set $S5004, $P101
    concat $S5003, ".param int ", $S5004
    concat $S5002, $S5003, " :opt_flag"
    $P5016 = $P5015."push_pirop"($S5002)
.annotate 'line', 2326
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "PIRT"
    get_who $P5018, $P5019
    set $P5017, $P5018["Label"]
    unless_null $P5017, fallback1281
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5021
  fallback1281:
    $P5022 = $P5017."new"("default" :named("name"))
    set $P102, $P5022
.annotate 'line', 2327
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5025, "$_"
    $P5026 = $P5025."default"()
    find_lex $P5027, "$reg_type"
    $P5028 = $P5023."as_post"($P5026, $P5027 :named("want"))
    set $P103, $P5028
.annotate 'line', 2328
    find_lex $P5029, "$opts"
    $P5030 = $P5029."push_pirop"("if", $P101, $P102)
.annotate 'line', 2329
    find_lex $P5031, "$opts"
    $P5032 = $P5031."push"($P103)
.annotate 'line', 2330
    find_lex $P5033, "$opts"
    find_lex $P5035, "@param"
    set $P5034, $P5035[2]
    unless_null $P5034, fallback1282
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5034, $P5036
  fallback1282:
    $P5037 = $P103."result"()
    $P5038 = $P5033."push_pirop"("set", $P5034, $P5037)
.annotate 'line', 2331
    find_lex $P5039, "$opts"
    $P5040 = $P5039."push"($P102)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_271_1347104163.3") :anon :lex :outer("cuid_263_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2341
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2342
    find_lex $P5001, "$decls"
    find_lex $P5002, "$cap_lex_reg"
    set $S5005, $P5002
    concat $S5004, ".const 'Sub' ", $S5005
    concat $S5003, $S5004, " = '"
    set $S5006, _lex_param_0
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "'"
    $P5003 = $P5001."push_pirop"($S5001)
.annotate 'line', 2343
    find_lex $P5004, "$decls"
    find_lex $P5005, "$cap_lex_reg"
    set $S5008, $P5005
    concat $S5007, "capture_lex ", $S5008
    $P5006 = $P5004."push_pirop"($S5007)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_272_1347104163.3") :anon :lex :outer("cuid_263_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2350
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2351
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
.sub "" :subid("cuid_273_1347104163.3") :anon :lex :outer("cuid_263_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2353
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2354
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
.sub "" :subid("cuid_274_1347104163.3") :anon :lex :outer("cuid_263_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2356
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2357
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
.sub "" :subid("cuid_276_1347104163.3") :anon :lex :outer("cuid_263_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2370
    .const 'Sub' $P5028 = 'cuid_275_1347104163.3' 
    capture_lex $P5028 
    .lex "$*BLOCK", $P101 
    .lex "$ret_type", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    find_lex $P5003, "$block"
    set $P101, $P5003
    box $P5004, "P"
    set $P102, $P5004
    new $P5010, 'ExceptionHandler'
    set_label $P5010, catch_handler_3021310
    $P5010.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5010
.annotate 'line', 2373
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$stmts"
    $P5008 = $P5007."result"()
    $P5009 = $P5005."infer_type"($P5008)
    set $P102, $P5009
    set $P5011, $P102
    pop_eh 
    goto skip_handler_3011309
  catch_handler_3021310:
    .get_results ($P5010) 
    set $I10001, 1
    set $P5010["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5010
    pop_upto_eh $P5010
    pop_eh 
    set $P5011, $P10001
    goto skip_handler_3011309
  skip_handler_3011309:
    set $S5001, $P102
    isne $I5001, $S5001, "P"
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto if304_end1314 
    find_lex $P5013, "%hll_force_return_boxing"
    find_lex $P5014, "$hll"
    set $S5002, $P5014
    set $P5012, $P5013[$S5002]
    unless_null $P5012, fallback1315
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5015
  fallback1315:
    set $P5016, $P5012
  if304_end1314:
    unless $P5016 goto if303_else1311 
    .const 'Sub' $P5018 = 'cuid_275_1347104163.3' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5027, $P5019
    goto if303_end1312
  if303_else1311:
.annotate 'line', 2379
.annotate 'line', 2380
    find_lex $P5020, "$sub"
    find_lex $P5021, "$stmts"
    $P5022 = $P5020."push"($P5021)
.annotate 'line', 2381
    find_lex $P5023, "$sub"
    find_lex $P5024, "$stmts"
    $P5025 = $P5024."result"()
    set $S5005, $P5025
    concat $S5004, ".return (", $S5005
    concat $S5003, $S5004, ")"
    $P5026 = $P5023."push_pirop"($S5003)
    set $P5027, $P5026
  if303_end1312:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_275_1347104163.3") :anon :lex :outer("cuid_276_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2374
    .lex "$boxed", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2375
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$stmts"
    $P5005 = $P5002."coerce"($P5004, "P")
    set $P101, $P5005
.annotate 'line', 2376
    find_lex $P5006, "$sub"
    $P5007 = $P5006."push"($P101)
.annotate 'line', 2377
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
.sub "" :subid("cuid_278_1347104163.3") :anon :lex :outer("cuid_106_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2415
    .const 'Sub' $P5058 = 'cuid_277_1347104163.3' 
    capture_lex $P5058 
    .lex "$breg", $P101 
    .lex "$rtype", $P102 
    .lex "$rreg", $P103 
    .lex "$im_arg", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_3161339
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
.annotate 'line', 2417
    find_dynamic_lex $P5005, "@*INNERS"
    unless_null $P5005, fallback1335
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["@INNERS"]
    unless_null $P5006, fallback1336
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'ResizablePMCArray'
    set $P5009["@INNERS"], $P5011
    set $P5006, $P5011
  fallback1336:
    unless_null $P5006, vivi_3141337
    die "Contextual @*INNERS not found"
    box $P5012, "Contextual @*INNERS not found"
    set $P5006, $P5012
  vivi_3141337:
    set $P5005, $P5006
  fallback1335:
    find_lex $P5013, "$node"
    $P5014 = $P5013."cuid"()
    $P5015 = $P5005."push"($P5014)
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_3151338
  catch_handler_3161339:
    .get_results ($P5016) 
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10001
    goto skip_handler_3151338
  skip_handler_3151338:
.annotate 'line', 2418
    find_dynamic_lex $P5018, "$*REGALLOC"
    unless_null $P5018, fallback1340
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["$REGALLOC"]
    unless_null $P5019, fallback1341
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5022
  fallback1341:
    unless_null $P5019, vivi_3171342
    die "Contextual $*REGALLOC not found"
    box $P5023, "Contextual $*REGALLOC not found"
    set $P5019, $P5023
  vivi_3171342:
    set $P5018, $P5019
  fallback1340:
    $P5024 = $P5018."fresh_p"()
    set $P101, $P5024
.annotate 'line', 2419
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
.annotate 'line', 2420
    find_lex $P5029, "$ops"
    $P5030 = $P5029."push_pirop"("capture_lex", $P101)
.annotate 'line', 2423
    find_lex $P5031, "$node"
    $P5032 = $P5031."returns"()
    $P5033 = "&type_to_register_type"($P5032)
    set $S5008, $P5033
    downcase $S5007, $S5008
    box $P5034, $S5007
    set $P102, $P5034
.annotate 'line', 2424
    find_dynamic_lex $P5035, "$*REGALLOC"
    unless_null $P5035, fallback1343
    get_hll_global $P5038, "GLOBAL"
    get_who $P5037, $P5038
    set $P5036, $P5037["$REGALLOC"]
    unless_null $P5036, fallback1344
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5036, $P5039
  fallback1344:
    unless_null $P5036, vivi_3181345
    die "Contextual $*REGALLOC not found"
    box $P5040, "Contextual $*REGALLOC not found"
    set $P5036, $P5040
  vivi_3181345:
    set $P5035, $P5036
  fallback1343:
    set $S5010, $P102
    concat $S5009, "fresh_", $S5010
    $P5041 = $P5035.$S5009()
    set $P103, $P5041
    box $P5042, 0
    set $P104, $P5042
    new $P5049, 'ExceptionHandler'
    set_label $P5049, catch_handler_3211350
    $P5049.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5049
    find_dynamic_lex $P5043, "$*HAVE_IMM_ARG"
    unless_null $P5043, fallback1346
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["$HAVE_IMM_ARG"]
    unless_null $P5044, fallback1347
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5044, $P5047
  fallback1347:
    unless_null $P5044, vivi_3191348
    die "Contextual $*HAVE_IMM_ARG not found"
    box $P5048, "Contextual $*HAVE_IMM_ARG not found"
    set $P5044, $P5048
  vivi_3191348:
    set $P5043, $P5044
  fallback1346:
    set $P104, $P5043
    set $P5050, $P104
    pop_eh 
    goto skip_handler_3201349
  catch_handler_3211350:
    .get_results ($P5049) 
    set $I10001, 1
    set $P5049["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5049
    pop_upto_eh $P5049
    pop_eh 
    set $P5050, $P10001
    goto skip_handler_3201349
  skip_handler_3201349:
    unless $P104 goto if322_else1351 
.annotate 'line', 2430
    .const 'Sub' $P5052 = 'cuid_277_1347104163.3' 
    capture_lex $P5052
    newclosure $P5051, $P5052
    store_dynamic_lex "$*IMM_ARG", $P5051
    set $P5055, $P5051
    goto if322_end1352
  if322_else1351:
.annotate 'line', 2435
.annotate 'line', 2436
    find_lex $P5053, "$ops"
    $P5054 = $P5053."push_pirop"("call", $P101, $P103 :named("result"))
    set $P5055, $P5054
  if322_end1352:
.annotate 'line', 2438
    find_lex $P5056, "$ops"
    $P5057 = $P5056."result"($P103)
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_277_1347104163.3") :anon :lex :outer("cuid_278_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2431
    .param pmc _lex_param_0 
    .lex "$arg", _lex_param_0 
.annotate 'line', 2432
    find_lex $P5001, "$ops"
    find_lex $P5002, "$breg"
    find_lex $P5003, "$rreg"
    $P5004 = $P5001."push_pirop"("call", $P5002, _lex_param_0, $P5003 :named("result"))
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_279_1347104163.3") :anon :lex :outer("cuid_106_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2440
    .lex "$breg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5013, 'ExceptionHandler'
    set_label $P5013, catch_handler_3271361
    $P5013.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5013
.annotate 'line', 2442
    find_dynamic_lex $P5002, "@*INNERS"
    unless_null $P5002, fallback1357
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["@INNERS"]
    unless_null $P5003, fallback1358
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P5006["@INNERS"], $P5008
    set $P5003, $P5008
  fallback1358:
    unless_null $P5003, vivi_3251359
    die "Contextual @*INNERS not found"
    box $P5009, "Contextual @*INNERS not found"
    set $P5003, $P5009
  vivi_3251359:
    set $P5002, $P5003
  fallback1357:
    find_lex $P5010, "$node"
    $P5011 = $P5010."cuid"()
    $P5012 = $P5002."push"($P5011)
    set $P5014, $P5012
    pop_eh 
    goto skip_handler_3261360
  catch_handler_3271361:
    .get_results ($P5013) 
    set $I10001, 1
    set $P5013["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5013
    pop_upto_eh $P5013
    pop_eh 
    set $P5014, $P10001
    goto skip_handler_3261360
  skip_handler_3261360:
.annotate 'line', 2443
    find_dynamic_lex $P5015, "$*REGALLOC"
    unless_null $P5015, fallback1362
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["$REGALLOC"]
    unless_null $P5016, fallback1363
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5016, $P5019
  fallback1363:
    unless_null $P5016, vivi_3281364
    die "Contextual $*REGALLOC not found"
    box $P5020, "Contextual $*REGALLOC not found"
    set $P5016, $P5020
  vivi_3281364:
    set $P5015, $P5016
  fallback1362:
    $P5021 = $P5015."fresh_p"()
    set $P101, $P5021
.annotate 'line', 2444
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
.annotate 'line', 2445
    find_lex $P5026, "$ops"
    $P5027 = $P5026."push_pirop"("capture_lex", $P101)
.annotate 'line', 2446
    find_lex $P5028, "$ops"
    $P5029 = $P5028."result"($P101)
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_107_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2451
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_281_1347104163.3' 
    capture_lex $P5006 
    .lex "$sub", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1365
    .lex "RETURN", $P102
    .const 'Sub' $P5002 = 'cuid_281_1347104163.3' 
    capture_lex $P5002
    $P5003 = $P5002()
    find_lex $P5004, "RETURN"
    $P5005 = $P5004($P101)
    goto lexotic_1366
  lexotic_1365:
    .get_results ($P5005)
  lexotic_1366:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_281_1347104163.3") :anon :lex :outer("cuid_107_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2454
    .const 'Sub' $P5065 = 'cuid_280_1347104163.3' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_282_1347104163.3' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_283_1347104163.3' 
    capture_lex $P5065 
    .lex "$*REGALLOC", $P101 
    .lex "$*BLOCKRA", $P102 
    .lex "$*BINDVAL", $P103 
    .lex "$block", $P104 
    .lex "$stmts", $P105 
    .lex "$decls", $P106 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
.annotate 'line', 2456
    nqp_get_sc_object $P5007, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    $P5008 = $P5007."new"()
    set $P101, $P5008
    unless_null $P101, fallback1367
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["$REGALLOC"]
    unless_null $P5009, fallback1368
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5012
  fallback1368:
    unless_null $P5009, vivi_3291369
    die "Contextual $*REGALLOC not found"
    box $P5013, "Contextual $*REGALLOC not found"
    set $P5009, $P5013
  vivi_3291369:
    set $P101, $P5009
  fallback1367:
    set $P102, $P101
    box $P5014, 0
    set $P103, $P5014
.annotate 'line', 2459
    nqp_get_sc_object $P5015, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    find_lex $P5016, "$node"
    $P5017 = $P5015."new"($P5016, 0)
    set $P104, $P5017
    .const 'Sub' $P5018 = 'cuid_280_1347104163.3' 
    capture_lex $P5018
    $P5019 = $P5018()
.annotate 'line', 2470
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "PIRT"
    get_who $P5021, $P5022
    set $P5020, $P5021["Ops"]
    unless_null $P5020, fallback1370
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5020, $P5024
  fallback1370:
    $P5025 = $P5020."new"()
    set $P106, $P5025
.annotate 'line', 2471
    $P5029 = $P104."lexicals"()
    set $P5026, $P5029
    iter $P5028, $P5029
  for_next1371:
    unless $P5028, for_done1373
    shift $P5031, $P5028
  for_redo1372:
    .const 'Sub' $P5030 = 'cuid_282_1347104163.3' 
    capture_lex $P5030
    $P5026 = $P5030($P5031)
    goto for_next1371
  for_done1373:
.annotate 'line', 2474
    $P5035 = $P104."locals"()
    set $P5032, $P5035
    iter $P5034, $P5035
  for_next1374:
    unless $P5034, for_done1376
    shift $P5037, $P5034
  for_redo1375:
    .const 'Sub' $P5036 = 'cuid_283_1347104163.3' 
    capture_lex $P5036
    $P5032 = $P5036($P5037)
    goto for_next1374
  for_done1376:
.annotate 'line', 2479
    get_hll_global $P5041, "GLOBAL"
    nqp_get_package_through_who $P5040, $P5041, "PIRT"
    get_who $P5039, $P5040
    set $P5038, $P5039["Sub"]
    unless_null $P5038, fallback1377
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5038, $P5042
  fallback1377:
    $P5043 = $P5038."new"()
    store_lex "$sub", $P5043
.annotate 'line', 2480
    find_lex $P5044, "$sub"
    $P5045 = $P5044."push"($P106)
.annotate 'line', 2481
    find_lex $P5046, "$sub"
    $P5047 = $P5046."push"($P105)
.annotate 'line', 2482
    find_lex $P5048, "$sub"
    $P5049 = $P105."result"()
    set $S5003, $P5049
    concat $S5002, ".return (", $S5003
    concat $S5001, $S5002, ")"
    $P5050 = $P5048."push_pirop"($S5001)
.annotate 'line', 2486
    find_lex $P5051, "$sub"
    find_lex $P5052, "$node"
    $P5053 = $P5052."name"()
    $P5054 = $P5051."name"($P5053)
.annotate 'line', 2487
    find_lex $P5055, "$sub"
    find_lex $P5056, "$node"
    $P5057 = $P5056."cuid"()
    $P5058 = $P5055."subid"($P5057)
.annotate 'line', 2488
    find_lex $P5059, "$sub"
    new $P5060, 'ResizablePMCArray'
    box $P5061, "Sub"
    push $P5060, $P5061
    $P5062 = $P5059."namespace"($P5060)
.annotate 'line', 2489
    find_lex $P5063, "$sub"
    $P5064 = $P5063."hll"("nqp")
    .return ($P5064) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_280_1347104163.3") :anon :lex :outer("cuid_281_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2463
    .lex "$*BLOCK", $P101 
    .lex "$*HLL", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    find_lex $P5003, "$block"
    set $P101, $P5003
    box $P5004, "nqp"
    set $P102, $P5004
.annotate 'line', 2466
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
.sub "" :subid("cuid_282_1347104163.3") :anon :lex :outer("cuid_281_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2471
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2472
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
.sub "" :subid("cuid_283_1347104163.3") :anon :lex :outer("cuid_281_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2474
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2475
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
.sub "as_post" :subid("cuid_108_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2495
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2496
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = _lex_param_1."list"()
    $P5003 = _lex_param_1."resultchild"()
    $P5004 = _lex_param_1."node"()
    $P5005 = $P5001."compile_all_the_stmts"($P5002, $P5003, $P5004 :named("node"))
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_109_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2499
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5010 = 'cuid_284_1347104163.3' 
    capture_lex $P5010 
    .lex "$orig_reg", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback1378
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback1379
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback1379:
    unless_null $P5003, vivi_3301380
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_3301380:
    set $P5002, $P5003
  fallback1378:
    set $P101, $P5002
    .const 'Sub' $P5008 = 'cuid_284_1347104163.3' 
    capture_lex $P5008
    $P5009 = $P5008()
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_284_1347104163.3") :anon :lex :outer("cuid_109_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2501
    .lex "$*REGALLOC", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2502
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    find_lex $P5003, "$orig_reg"
    $P5004 = $P5002."new"($P5003)
    set $P101, $P5004
.annotate 'line', 2503
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
.sub "compile_all_the_stmts" :subid("cuid_110_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2507
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_3 :named("node") :optional 
    .param int haz_param_16 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_285_1347104163.3' 
    capture_lex $P5028 
    if haz_param_15, default1405
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_2, $P5026
  default1405:
    if haz_param_16, default1406
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_3, $P5027
  default1406:
    .lex "$last", $P101 
    .lex "$ops", $P102 
    .lex "$i", $P103 
    .lex "$n", $P104 
    .lex "self", _lex_param_0 
    .lex "@stmts", _lex_param_1 
    .lex "$resultchild", _lex_param_2 
    .lex "$node", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
.annotate 'line', 2509
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "PIRT"
    get_who $P5006, $P5007
    set $P5005, $P5006["Ops"]
    unless_null $P5005, fallback1381
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5009
  fallback1381:
    $P5010 = $P5005."new"()
    set $P102, $P5010
    set $P5012, _lex_param_3
    unless _lex_param_3 goto if331_end1383 
.annotate 'line', 2510
    $P5011 = $P102."node"(_lex_param_3)
    set $P5012, $P5011
  if331_end1383:
    box $P5013, 0
    set $P103, $P5013
    set $N5001, _lex_param_1
    box $P5014, $N5001
    set $P104, $P5014
    set $P5015, _lex_param_1
    iter $P5017, _lex_param_1
  for_next1398:
    unless $P5017, for_done1400
    shift $P5019, $P5017
  for_redo1399:
    .const 'Sub' $P5018 = 'cuid_285_1347104163.3' 
    capture_lex $P5018
    $P5015 = $P5018($P5019)
    goto for_next1398
  for_done1400:
    set $P5021, $P101
    unless $P101 goto if339_end1404 
    defined $I5002, _lex_param_2
    box $P5020, $I5002
    isfalse $I5001, $P5020
    box $P5022, $I5001
    set $P5021, $P5022
  if339_end1404:
    set $P5025, $P5021
    unless $P5021 goto if338_end1402 
.annotate 'line', 2526
.annotate 'line', 2527
    $P5023 = $P101."result"()
    $P5024 = $P102."result"($P5023)
    set $P5025, $P5024
  if338_end1402:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_285_1347104163.3") :anon :lex :outer("cuid_110_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2513
    .param pmc _lex_param_0 
    .lex "$void", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
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
    unless_null $P5005, fallback1388
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5009
  fallback1388:
    type_check $I5002, _lex_param_0, $P5005
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if333_end1387 
    set $P5010, $P101
  if333_end1387:
    set $P5013, $P5010
    unless $P5010 goto if332_end1385 
.annotate 'line', 2515
.annotate 'line', 2516
    $P5012 = "&want"(_lex_param_0, "v")
    set _lex_param_0, $P5012
    set $P5013, _lex_param_0
  if332_end1385:
.annotate 'line', 2518
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    $P5016 = $P5014."as_post"(_lex_param_0)
    store_lex "$last", $P5016
    set $P5022, $P101
    unless $P101 goto if335_end1392 
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Var"]
    unless_null $P5017, fallback1393
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5021
  fallback1393:
    type_check $I5003, _lex_param_0, $P5017
    box $P5023, $I5003
    set $P5022, $P5023
  if335_end1392:
    set $P5027, $P5022
    if $P5022 goto unless334_end1390 
.annotate 'line', 2519
    find_lex $P5024, "$ops"
    find_lex $P5025, "$last"
    $P5026 = $P5024."push"($P5025)
    set $P5027, $P5026
  unless334_end1390:
    find_lex $P5028, "$resultchild"
    defined $I5004, $P5028
    set $I5006, $I5004
    unless $I5004 goto if337_end1397 
    find_lex $P5029, "$resultchild"
    set $N5005, $P5029
    find_lex $P5030, "$i"
    set $N5006, $P5030
    iseq $I5005, $N5005, $N5006
    set $I5006, $I5005
  if337_end1397:
    box $P5036, $I5006
    set $P5035, $P5036
    unless $I5006 goto if336_end1395 
.annotate 'line', 2521
.annotate 'line', 2522
    find_lex $P5031, "$ops"
    find_lex $P5032, "$last"
    $P5033 = $P5032."result"()
    $P5034 = $P5031."result"($P5033)
    set $P5035, $P5034
  if336_end1395:
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
.sub "apply_context" :subid("cuid_111_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2532
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
    unless_null $P5001, fallback1409
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1409:
    type_check $I5001, _lex_param_1, $P5001
    unless $I5001 goto if340_else1407 
.annotate 'line', 2534
    $P5006 = "&want"(_lex_param_1, _lex_param_2)
    set $P5007, $P5006
    goto if340_end1408
  if340_else1407:
    set $P5007, _lex_param_1
  if340_end1408:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_112_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2549
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_286_1347104163.3' 
    capture_lex $P5028 
    .lex "$hll", $P101 
    .lex "$result", $P102 
    .lex "$err", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    box $P5004, ""
    set $P101, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_3431414
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
    find_dynamic_lex $P5005, "$*HLL"
    unless_null $P5005, fallback1410
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["$HLL"]
    unless_null $P5006, fallback1411
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5009
  fallback1411:
    unless_null $P5006, vivi_3411412
    die "Contextual $*HLL not found"
    box $P5010, "Contextual $*HLL not found"
    set $P5006, $P5010
  vivi_3411412:
    set $P5005, $P5006
  fallback1410:
    set $P101, $P5005
    set $P5012, $P101
    pop_eh 
    goto skip_handler_3421413
  catch_handler_3431414:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_3421413
  skip_handler_3421413:
    new $P5023, 'ExceptionHandler'
    set_label $P5023, catch_handler_3471419
    $P5023.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5023
.annotate 'line', 2554
    new $P5021, 'ExceptionHandler'
    set_label $P5021, catch_handler_3451417
    $P5021.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5021
.annotate 'line', 2555
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Operations"]
    unless_null $P5013, fallback1415
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5017
  fallback1415:
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5013."compile_op"($P5018, $P101, _lex_param_1)
    set $P102, $P5019
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5022, $P5020
    pop_eh 
    goto skip_handler_3441416
  catch_handler_3451417:
    .get_results ($P5021) 
    .const 'Sub' $P10001 = 'cuid_286_1347104163.3' 
    capture_lex $P10001
    $P10002 = $P10001($P5021)
    set $I10001, 1
    set $P5021["handled"], $I10001
    nqp_get_sc_object $P10003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5021
    pop_upto_eh $P5021
    pop_eh 
    set $P5022, $P10003
    goto skip_handler_3441416
  skip_handler_3441416:
    set $P5024, $P5022
    pop_eh 
    goto skip_handler_3461418
  catch_handler_3471419:
    .get_results ($P5023) 
    set $I10001, 1
    set $P5023["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5023
    pop_upto_eh $P5023
    pop_eh 
    set $P5024, $P10001
    goto skip_handler_3461418
  skip_handler_3461418:
    set $P5027, $P103
    unless $P103 goto if348_end1421 
.annotate 'line', 2558
.annotate 'line', 2559
    $P5025 = _lex_param_1."op"()
    set $S5003, $P5025
    concat $S5002, "Error while compiling op ", $S5003
    set $S5005, $P103
    concat $S5004, ": ", $S5005
    concat $S5001, $S5002, $S5004
    box $P5026, $S5001
    die $P5026
    set $P5027, $P5026
  if348_end1421:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_286_1347104163.3") :anon :lex :outer("cuid_112_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2556
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    store_lex "$err", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_113_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2564
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5044 = 'cuid_288_1347104163.3' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_289_1347104163.3' 
    capture_lex $P5044 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1422
    .lex "RETURN", $P101
.annotate 'line', 2565
    $P5001 = _lex_param_1."supports"("parrot")
    unless $P5001 goto if349_else1424 
.annotate 'line', 2566
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."alternative"("parrot")
    $P5005 = $P5003."as_post"($P5004)
    find_lex $P5002, "RETURN"
    $P5006 = $P5002($P5005)
    set $P5043, $P5006
    goto if349_end1425
  if349_else1424:
.annotate 'line', 2568
    $P5007 = _lex_param_1."supports"("pirop")
    unless $P5007 goto if350_else1426 
.annotate 'line', 2569
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["Operations"]
    unless_null $P5008, fallback1428
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5012
  fallback1428:
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = _lex_param_1."alternative"("pirop")
    $P5015 = _lex_param_1."list"()
    $P5016 = $P5008."compile_pirop"($P5013, $P5014, $P5015)
    set $P5042, $P5016
    goto if350_end1427
  if350_else1426:
.annotate 'line', 2571
    $P5017 = _lex_param_1."supports"("pir")
    unless $P5017 goto if351_else1429 
    .const 'Sub' $P5018 = 'cuid_288_1347104163.3' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5041, $P5019
    goto if351_end1430
  if351_else1429:
.annotate 'line', 2585
    $P5020 = _lex_param_1."supports"("pirconst")
    unless $P5020 goto if355_else1439 
    .const 'Sub' $P5021 = 'cuid_289_1347104163.3' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5040, $P5022
    goto if355_end1440
  if355_else1439:
.annotate 'line', 2592
    $P5023 = _lex_param_1."supports"("loadlibs")
    unless $P5023 goto if357_else1444 
.annotate 'line', 2593
    find_dynamic_lex $P5024, "$*BLOCK"
    unless_null $P5024, fallback1446
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    set $P5025, $P5026["$BLOCK"]
    unless_null $P5025, fallback1447
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5025, $P5028
  fallback1447:
    unless_null $P5025, vivi_3581448
    die "Contextual $*BLOCK not found"
    box $P5029, "Contextual $*BLOCK not found"
    set $P5025, $P5029
  vivi_3581448:
    set $P5024, $P5025
  fallback1446:
    $P5030 = _lex_param_1."alternative"("loadlibs")
    $P5031 = $P5024."add_loadlibs"($P5030)
.annotate 'line', 2594
    get_hll_global $P5035, "GLOBAL"
    nqp_get_package_through_who $P5034, $P5035, "PIRT"
    get_who $P5033, $P5034
    set $P5032, $P5033["Ops"]
    unless_null $P5032, fallback1449
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5032, $P5036
  fallback1449:
    $P5037 = $P5032."new"()
    set $P5039, $P5037
    goto if357_end1445
  if357_else1444:
.annotate 'line', 2596
    box $P5038, "To compile on the Parrot backend, QAST::VM must have an alternative 'parrot', 'pirop', 'pir' or 'loadlibs'"
    die $P5038
    set $P5039, $P5038
  if357_end1445:
    set $P5040, $P5039
  if355_end1440:
    set $P5041, $P5040
  if351_end1430:
    set $P5042, $P5041
  if350_end1427:
    set $P5043, $P5042
  if349_end1425:
    goto lexotic_1423
  lexotic_1422:
    .get_results ($P5043)
  lexotic_1423:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_288_1347104163.3") :anon :lex :outer("cuid_113_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2571
    .const 'Sub' $P5023 = 'cuid_287_1347104163.3' 
    capture_lex $P5023 
    .lex "$ops", $P101 
    .lex "$pir", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 2572
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1431
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1431:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 2573
    find_lex $P5009, "$node"
    $P5010 = $P5009."node"()
    set $P5014, $P5010
    unless $P5010 goto if352_end1433 
    find_lex $P5011, "$node"
    $P5012 = $P5011."node"()
    $P5013 = $P101."node"($P5012)
    set $P5014, $P5013
  if352_end1433:
.annotate 'line', 2574
    find_lex $P5015, "$node"
    $P5016 = $P5015."alternative"("pir")
    set $P102, $P5016
    set $S5001, $P102
    index $I5002, $S5001, "%r", 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if353_else1434 
    .const 'Sub' $P5017 = 'cuid_287_1347104163.3' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5020, $P5018
    goto if353_end1435
  if353_else1434:
.annotate 'line', 2580
.annotate 'line', 2581
    $P5019 = $P101."push_pirop"("inline", $P102)
    set $P5020, $P5019
  if353_end1435:
    find_lex $P5021, "RETURN"
    $P5022 = $P5021($P101)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_287_1347104163.3") :anon :lex :outer("cuid_288_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2575
    .lex "$reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2576
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback1436
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback1437
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback1437:
    unless_null $P5003, vivi_3541438
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_3541438:
    set $P5002, $P5003
  fallback1436:
    $P5008 = $P5002."fresh_p"()
    set $P101, $P5008
.annotate 'line', 2577
    find_lex $P5009, "$ops"
    find_lex $P5010, "$pir"
    $P5011 = $P5009."push_pirop"("inline", $P5010, $P101 :named("result"))
.annotate 'line', 2578
    find_lex $P5012, "$ops"
    $P5013 = $P5012."result"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_289_1347104163.3") :anon :lex :outer("cuid_113_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2585
    .lex "$ops", $P101 
    .lex "$name", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 2586
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1441
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1441:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 2587
    find_lex $P5009, "$node"
    $P5010 = $P5009."node"()
    set $P5014, $P5010
    unless $P5010 goto if356_end1443 
    find_lex $P5011, "$node"
    $P5012 = $P5011."node"()
    $P5013 = $P101."node"($P5012)
    set $P5014, $P5013
  if356_end1443:
.annotate 'line', 2588
    find_lex $P5015, "$node"
    $P5016 = $P5015."alternative"("pirconst")
    set $P102, $P5016
.annotate 'line', 2589
    set $S5002, $P102
    concat $S5001, ".", $S5002
    $P5017 = $P101."result"($S5001)
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_114_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2601
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2602
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."compile_var"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_115_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2605
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_291_1347104163.3' 
    capture_lex $P5014 
    .lex "$post", $P101 
    .lex "$result", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 2606
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."compile_var"(_lex_param_1)
    set $P101, $P5004
    find_dynamic_lex $P5005, "$*BINDVAL"
    unless_null $P5005, fallback1452
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["$BINDVAL"]
    unless_null $P5006, fallback1453
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5009
  fallback1453:
    unless_null $P5006, vivi_3601454
    die "Contextual $*BINDVAL not found"
    box $P5010, "Contextual $*BINDVAL not found"
    set $P5006, $P5010
  vivi_3601454:
    set $P5005, $P5006
  fallback1452:
    unless $P5005 goto if359_else1450 
.annotate 'line', 2608
    set $P102, $P101
    set $P5013, $P102
    goto if359_end1451
  if359_else1450:
    .const 'Sub' $P5011 = 'cuid_291_1347104163.3' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if359_end1451:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_291_1347104163.3") :anon :lex :outer("cuid_115_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2611
    .const 'Sub' $P5026 = 'cuid_290_1347104163.3' 
    capture_lex $P5026 
    .lex "$lbl", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2612
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PIRT"
    get_who $P5003, $P5004
    set $P5002, $P5003["Label"]
    unless_null $P5002, fallback1455
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5006
  fallback1455:
    $P5007 = $P5002."new"("fallback" :named("name"))
    set $P101, $P5007
.annotate 'line', 2613
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "PIRT"
    get_who $P5009, $P5010
    set $P5008, $P5009["Ops"]
    unless_null $P5008, fallback1456
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5012
  fallback1456:
    find_lex $P5013, "$post"
    $P5014 = $P5008."new"($P5013 :named("result"))
    store_lex "$result", $P5014
.annotate 'line', 2614
    find_lex $P5015, "$result"
    find_lex $P5016, "$post"
    $P5017 = $P5015."push"($P5016)
.annotate 'line', 2615
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $P5020, "$post"
    $P5021 = $P5018."infer_type"($P5020)
    set $S5002, $P5021
    downcase $S5001, $S5002
    iseq $I5001, $S5001, "p"
    box $P5025, $I5001
    set $P5024, $P5025
    unless $I5001 goto if361_end1458 
    .const 'Sub' $P5022 = 'cuid_290_1347104163.3' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if361_end1458:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_290_1347104163.3") :anon :lex :outer("cuid_291_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2615
    .lex "$fbpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2616
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$node"
    $P5005 = $P5004."fallback"()
    $P5006 = $P5002."as_post"($P5005, "P" :named("want"))
    set $P101, $P5006
.annotate 'line', 2617
    find_lex $P5007, "$result"
    find_lex $P5008, "$post"
    find_lex $P5009, "$lbl"
    $P5010 = $P5007."push_pirop"("unless_null", $P5008, $P5009)
.annotate 'line', 2618
    find_lex $P5011, "$result"
    $P5012 = $P5011."push"($P101)
.annotate 'line', 2619
    find_lex $P5013, "$result"
    find_lex $P5014, "$post"
    $P5015 = $P5013."push_pirop"("set", $P5014, $P101)
.annotate 'line', 2620
    find_lex $P5016, "$result"
    find_lex $P5017, "$lbl"
    $P5018 = $P5016."push"($P5017)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "compile_var" :subid("cuid_116_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2626
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5131 = 'cuid_293_1347104163.3' 
    capture_lex $P5131 
    .const 'Sub' $P5131 = 'cuid_295_1347104163.3' 
    capture_lex $P5131 
    .const 'Sub' $P5131 = 'cuid_298_1347104163.3' 
    capture_lex $P5131 
    .const 'Sub' $P5131 = 'cuid_305_1347104163.3' 
    capture_lex $P5131 
    .lex "$scope", $P101 
    .lex "$decl", $P102 
    .lex "$name", $P103 
    .lex "$ops", $P104 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
.annotate 'line', 2627
    $P5005 = _lex_param_1."scope"()
    set $P101, $P5005
.annotate 'line', 2628
    $P5006 = _lex_param_1."decl"()
    set $P102, $P5006
    set $P5036, $P102
    unless $P102 goto if362_end1460 
.annotate 'line', 2632
    set $S5001, $P102
    iseq $I5001, $S5001, "param"
    unless $I5001 goto if363_else1461 
.annotate 'line', 2635
    set $S5002, $P101
    iseq $I5002, $S5002, "local"
    set $I5004, $I5002
    if $I5002 goto unless365_end1466 
    set $S5003, $P101
    iseq $I5003, $S5003, "lexical"
    set $I5004, $I5003
  unless365_end1466:
    unless $I5004 goto if364_else1463 
.annotate 'line', 2636
.annotate 'line', 2637
    find_dynamic_lex $P5007, "$*BLOCK"
    unless_null $P5007, fallback1467
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    set $P5008, $P5009["$BLOCK"]
    unless_null $P5008, fallback1468
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5011
  fallback1468:
    unless_null $P5008, vivi_3661469
    die "Contextual $*BLOCK not found"
    box $P5012, "Contextual $*BLOCK not found"
    set $P5008, $P5012
  vivi_3661469:
    set $P5007, $P5008
  fallback1467:
    $P5013 = $P5007."add_param"(_lex_param_1)
    set $P5015, $P5013
    goto if364_end1464
  if364_else1463:
.annotate 'line', 2639
    set $S5006, $P101
    concat $S5005, "Parameter cannot have scope '", $S5006
    concat $S5004, $S5005, "'; use 'local' or 'lexical'"
    box $P5014, $S5004
    die $P5014
    set $P5015, $P5014
  if364_end1464:
    set $P5035, $P5015
    goto if363_end1462
  if363_else1461:
    set $S5007, $P102
    iseq $I5005, $S5007, "var"
    unless $I5005 goto if367_else1470 
.annotate 'line', 2643
    set $S5008, $P101
    iseq $I5006, $S5008, "local"
    unless $I5006 goto if368_else1472 
.annotate 'line', 2644
.annotate 'line', 2645
    find_dynamic_lex $P5016, "$*BLOCK"
    unless_null $P5016, fallback1474
    get_hll_global $P5019, "GLOBAL"
    get_who $P5018, $P5019
    set $P5017, $P5018["$BLOCK"]
    unless_null $P5017, fallback1475
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5020
  fallback1475:
    unless_null $P5017, vivi_3691476
    die "Contextual $*BLOCK not found"
    box $P5021, "Contextual $*BLOCK not found"
    set $P5017, $P5021
  vivi_3691476:
    set $P5016, $P5017
  fallback1474:
    $P5022 = $P5016."add_local"(_lex_param_1)
    set $P5032, $P5022
    goto if368_end1473
  if368_else1472:
    set $S5009, $P101
    iseq $I5007, $S5009, "lexical"
    unless $I5007 goto if370_else1477 
.annotate 'line', 2647
.annotate 'line', 2648
    find_dynamic_lex $P5023, "$*BLOCK"
    unless_null $P5023, fallback1479
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["$BLOCK"]
    unless_null $P5024, fallback1480
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5024, $P5027
  fallback1480:
    unless_null $P5024, vivi_3711481
    die "Contextual $*BLOCK not found"
    box $P5028, "Contextual $*BLOCK not found"
    set $P5024, $P5028
  vivi_3711481:
    set $P5023, $P5024
  fallback1479:
    $P5029 = $P5023."add_lexical"(_lex_param_1)
    set $P5031, $P5029
    goto if370_end1478
  if370_else1477:
.annotate 'line', 2650
    set $S5012, $P101
    concat $S5011, "Cannot declare variable with scope '", $S5012
    concat $S5010, $S5011, "'; use 'local' or 'lexical'"
    box $P5030, $S5010
    die $P5030
    set $P5031, $P5030
  if370_end1478:
    set $P5032, $P5031
  if368_end1473:
    set $P5034, $P5032
    goto if367_end1471
  if367_else1470:
.annotate 'line', 2654
    set $S5015, $P102
    concat $S5014, "Don't understand declaration type '", $S5015
    concat $S5013, $S5014, "'"
    box $P5033, $S5013
    die $P5033
    set $P5034, $P5033
  if367_end1471:
    set $P5035, $P5034
  if363_end1462:
    set $P5036, $P5035
  if362_end1460:
.annotate 'line', 2661
    $P5037 = _lex_param_1."name"()
    set $P103, $P5037
    set $S5016, $P101
    iseq $I5008, $S5016, ""
    box $P5041, $I5008
    set $P5040, $P5041
    unless $I5008 goto if372_end1483 
    .const 'Sub' $P5038 = 'cuid_293_1347104163.3' 
    capture_lex $P5038
    $P5039 = $P5038()
    set $P5040, $P5039
  if372_end1483:
.annotate 'line', 2680
    get_hll_global $P5045, "GLOBAL"
    nqp_get_package_through_who $P5044, $P5045, "PIRT"
    get_who $P5043, $P5044
    set $P5042, $P5043["Ops"]
    unless_null $P5042, fallback1497
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5042, $P5046
  fallback1497:
    $P5047 = $P5042."new"()
    set $P104, $P5047
.annotate 'line', 2681
    $P5048 = _lex_param_1."node"()
    set $P5051, $P5048
    unless $P5048 goto if377_end1499 
    $P5049 = _lex_param_1."node"()
    $P5050 = $P104."node"($P5049)
    set $P5051, $P5050
  if377_end1499:
    set $S5017, $P101
    iseq $I5009, $S5017, "local"
    unless $I5009 goto if378_else1500 
.annotate 'line', 2682
.annotate 'line', 2683
    find_dynamic_lex $P5052, "$*BLOCK"
    unless_null $P5052, fallback1504
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["$BLOCK"]
    unless_null $P5053, fallback1505
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5053, $P5056
  fallback1505:
    unless_null $P5053, vivi_3801506
    die "Contextual $*BLOCK not found"
    box $P5057, "Contextual $*BLOCK not found"
    set $P5053, $P5057
  vivi_3801506:
    set $P5052, $P5053
  fallback1504:
    $P5058 = $P5052."local_type"($P103)
    unless $P5058 goto if379_else1502 
    .const 'Sub' $P5059 = 'cuid_295_1347104163.3' 
    capture_lex $P5059
    $P5060 = $P5059($P5058)
    set $P5062, $P5060
    goto if379_end1503
  if379_else1502:
.annotate 'line', 2691
    set $S5020, $P103
    concat $S5019, "Cannot reference undeclared local '", $S5020
    concat $S5018, $S5019, "'"
    box $P5061, $S5018
    die $P5061
    set $P5062, $P5061
  if379_end1503:
    set $P5130, $P5062
    goto if378_end1501
  if378_else1500:
    set $S5021, $P101
    iseq $I5010, $S5021, "lexical"
    set $I5012, $I5010
    if $I5010 goto unless385_end1518 
    set $S5022, $P101
    iseq $I5011, $S5022, "contextual"
    set $I5012, $I5011
  unless385_end1518:
    unless $I5012 goto if384_else1515 
    .const 'Sub' $P5063 = 'cuid_298_1347104163.3' 
    capture_lex $P5063
    $P5064 = $P5063()
    set $P5129, $P5064
    goto if384_end1516
  if384_else1515:
    set $S5023, $P101
    iseq $I5013, $S5023, "attribute"
    unless $I5013 goto if405_else1569 
    .const 'Sub' $P5065 = 'cuid_305_1347104163.3' 
    capture_lex $P5065
    $P5066 = $P5065()
    set $P5128, $P5066
    goto if405_end1570
  if405_else1569:
    set $S5024, $P101
    iseq $I5014, $S5024, "positional"
    unless $I5014 goto if411_else1586 
.annotate 'line', 2775
.annotate 'line', 2776
    nqp_decontainerize $P5067, _lex_param_0
    find_dynamic_lex $P5068, "$*BINDVAL"
    unless_null $P5068, fallback1590
    get_hll_global $P5071, "GLOBAL"
    get_who $P5070, $P5071
    set $P5069, $P5070["$BINDVAL"]
    unless_null $P5069, fallback1591
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5069, $P5072
  fallback1591:
    unless_null $P5069, vivi_4131592
    die "Contextual $*BINDVAL not found"
    box $P5073, "Contextual $*BINDVAL not found"
    set $P5069, $P5073
  vivi_4131592:
    set $P5068, $P5069
  fallback1590:
    unless $P5068 goto if412_else1588 
.annotate 'line', 2777
    get_hll_global $P5077, "GLOBAL"
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Op"]
    unless_null $P5074, fallback1593
    nqp_get_sc_object $P5078, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5074, $P5078
  fallback1593:
    $P5079 = _lex_param_1."list"()
    find_dynamic_lex $P5080, "$*BINDVAL"
    unless_null $P5080, fallback1594
    get_hll_global $P5083, "GLOBAL"
    get_who $P5082, $P5083
    set $P5081, $P5082["$BINDVAL"]
    unless_null $P5081, fallback1595
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5081, $P5084
  fallback1595:
    unless_null $P5081, vivi_4141596
    die "Contextual $*BINDVAL not found"
    box $P5085, "Contextual $*BINDVAL not found"
    set $P5081, $P5085
  vivi_4141596:
    set $P5080, $P5081
  fallback1594:
    $P5086 = $P5074."new"($P5079 :flat, $P5080, "positional_bind" :named("op"))
    set $P5094, $P5086
    goto if412_end1589
  if412_else1588:
.annotate 'line', 2778
    get_hll_global $P5090, "GLOBAL"
    nqp_get_package_through_who $P5089, $P5090, "QAST"
    get_who $P5088, $P5089
    set $P5087, $P5088["Op"]
    unless_null $P5087, fallback1597
    nqp_get_sc_object $P5091, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5087, $P5091
  fallback1597:
    $P5092 = _lex_param_1."list"()
    $P5093 = $P5087."new"($P5092 :flat, "positional_get" :named("op"))
    set $P5094, $P5093
  if412_end1589:
    $P5095 = $P5067."as_post_clear_bindval"($P5094)
    set $P104, $P5095
    set $P5127, $P104
    goto if411_end1587
  if411_else1586:
    set $S5025, $P101
    iseq $I5015, $S5025, "associative"
    unless $I5015 goto if415_else1598 
.annotate 'line', 2780
.annotate 'line', 2781
    nqp_decontainerize $P5096, _lex_param_0
    find_dynamic_lex $P5097, "$*BINDVAL"
    unless_null $P5097, fallback1602
    get_hll_global $P5100, "GLOBAL"
    get_who $P5099, $P5100
    set $P5098, $P5099["$BINDVAL"]
    unless_null $P5098, fallback1603
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5098, $P5101
  fallback1603:
    unless_null $P5098, vivi_4171604
    die "Contextual $*BINDVAL not found"
    box $P5102, "Contextual $*BINDVAL not found"
    set $P5098, $P5102
  vivi_4171604:
    set $P5097, $P5098
  fallback1602:
    unless $P5097 goto if416_else1600 
.annotate 'line', 2782
    get_hll_global $P5106, "GLOBAL"
    nqp_get_package_through_who $P5105, $P5106, "QAST"
    get_who $P5104, $P5105
    set $P5103, $P5104["Op"]
    unless_null $P5103, fallback1605
    nqp_get_sc_object $P5107, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5103, $P5107
  fallback1605:
    $P5108 = _lex_param_1."list"()
    find_dynamic_lex $P5109, "$*BINDVAL"
    unless_null $P5109, fallback1606
    get_hll_global $P5112, "GLOBAL"
    get_who $P5111, $P5112
    set $P5110, $P5111["$BINDVAL"]
    unless_null $P5110, fallback1607
    nqp_get_sc_object $P5113, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5110, $P5113
  fallback1607:
    unless_null $P5110, vivi_4181608
    die "Contextual $*BINDVAL not found"
    box $P5114, "Contextual $*BINDVAL not found"
    set $P5110, $P5114
  vivi_4181608:
    set $P5109, $P5110
  fallback1606:
    $P5115 = $P5103."new"($P5108 :flat, $P5109, "associative_bind" :named("op"))
    set $P5123, $P5115
    goto if416_end1601
  if416_else1600:
.annotate 'line', 2783
    get_hll_global $P5119, "GLOBAL"
    nqp_get_package_through_who $P5118, $P5119, "QAST"
    get_who $P5117, $P5118
    set $P5116, $P5117["Op"]
    unless_null $P5116, fallback1609
    nqp_get_sc_object $P5120, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5116, $P5120
  fallback1609:
    $P5121 = _lex_param_1."list"()
    $P5122 = $P5116."new"($P5121 :flat, "associative_get" :named("op"))
    set $P5123, $P5122
  if416_end1601:
    $P5124 = $P5096."as_post_clear_bindval"($P5123)
    set $P104, $P5124
    set $P5126, $P104
    goto if415_end1599
  if415_else1598:
.annotate 'line', 2785
    set $S5028, $P101
    concat $S5027, "QAST::Var with scope '", $S5028
    concat $S5026, $S5027, "' NYI"
    box $P5125, $S5026
    die $P5125
    set $P5126, $P5125
  if415_end1599:
    set $P5127, $P5126
  if411_end1587:
    set $P5128, $P5127
  if405_end1570:
    set $P5129, $P5128
  if384_end1516:
    set $P5130, $P5129
  if378_end1501:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_293_1347104163.3") :anon :lex :outer("cuid_116_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2662
    .const 'Sub' $P5018 = 'cuid_292_1347104163.3' 
    capture_lex $P5018 
    .lex "$cur_block", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*BLOCK"
    unless_null $P5002, fallback1484
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$BLOCK"]
    unless_null $P5003, fallback1485
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback1485:
    unless_null $P5003, vivi_3731486
    die "Contextual $*BLOCK not found"
    box $P5007, "Contextual $*BLOCK not found"
    set $P5003, $P5007
  vivi_3731486:
    set $P5002, $P5003
  fallback1484:
    set $P101, $P5002
  while374_test1487:
    nqp_get_sc_object $P5008, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    type_check $I5001, $P101, $P5008
    box $P5012, $I5001
    set $P5011, $P5012
    unless $I5001 goto while374_done1491 
  while374_redo1489:
    .const 'Sub' $P5009 = 'cuid_292_1347104163.3' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
    goto while374_test1487 
  while374_done1491:
    find_lex $P5013, "$scope"
    set $S5001, $P5013
    iseq $I5002, $S5001, ""
    box $P5017, $I5002
    set $P5016, $P5017
    unless $I5002 goto if376_end1496 
.annotate 'line', 2674
    find_lex $P5014, "$name"
    set $S5004, $P5014
    concat $S5003, "No scope specified or locatable in the symbol table for '", $S5004
    concat $S5002, $S5003, "'"
    box $P5015, $S5002
    die $P5015
    set $P5016, $P5015
  if376_end1496:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_292_1347104163.3") :anon :lex :outer("cuid_293_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2664
    .lex "%sym", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 2665
    find_lex $P5002, "$cur_block"
    $P5003 = $P5002."qast"()
    find_lex $P5004, "$name"
    $P5005 = $P5003."symbol"($P5004)
    set $P101, $P5005
    unless $P101 goto if375_else1492 
.annotate 'line', 2666
    set $P5006, $P101["$scope"]
    unless_null $P5006, fallback1494
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5007
  fallback1494:
    store_lex "$scope", $P5006
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    store_lex "$cur_block", $P5008
    set $P5011, $P5008
    goto if375_end1493
  if375_else1492:
.annotate 'line', 2670
.annotate 'line', 2671
    find_lex $P5009, "$cur_block"
    $P5010 = $P5009."outer"()
    store_lex "$cur_block", $P5010
    set $P5011, $P5010
  if375_end1493:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_295_1347104163.3") :anon :lex :outer("cuid_116_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2683
    .param pmc _lex_param_0 
    .const 'Sub' $P5013 = 'cuid_294_1347104163.3' 
    capture_lex $P5013 
    .lex "$type", _lex_param_0 
    find_dynamic_lex $P5001, "$*BINDVAL"
    unless_null $P5001, fallback1509
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["$BINDVAL"]
    unless_null $P5002, fallback1510
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5005
  fallback1510:
    unless_null $P5002, vivi_3821511
    die "Contextual $*BINDVAL not found"
    box $P5006, "Contextual $*BINDVAL not found"
    set $P5002, $P5006
  vivi_3821511:
    set $P5001, $P5002
  fallback1509:
    set $P5009, $P5001
    unless $P5001 goto if381_end1508 
    .const 'Sub' $P5007 = 'cuid_294_1347104163.3' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if381_end1508:
.annotate 'line', 2689
    find_lex $P5010, "$ops"
    find_lex $P5011, "$name"
    $P5012 = $P5010."result"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_294_1347104163.3") :anon :lex :outer("cuid_295_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2684
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2685
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1512
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1513
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  fallback1513:
    unless_null $P5005, vivi_3831514
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_3831514:
    set $P5004, $P5005
  fallback1512:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2686
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2687
    find_lex $P5014, "$ops"
    find_lex $P5015, "$name"
    $P5016 = $P101."result"()
    $P5017 = $P5014."push_pirop"("set", $P5015, $P5016)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_298_1347104163.3") :anon :lex :outer("cuid_116_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2695
    .const 'Sub' $P5028 = 'cuid_297_1347104163.3' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_300_1347104163.3' 
    capture_lex $P5028 
    .lex "%sym", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 2698
    find_dynamic_lex $P5002, "$*BLOCK"
    unless_null $P5002, fallback1519
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$BLOCK"]
    unless_null $P5003, fallback1520
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback1520:
    unless_null $P5003, vivi_3861521
    die "Contextual $*BLOCK not found"
    box $P5007, "Contextual $*BLOCK not found"
    set $P5003, $P5007
  vivi_3861521:
    set $P5002, $P5003
  fallback1519:
    $P5008 = $P5002."qast"()
    find_lex $P5009, "$name"
    $P5010 = $P5008."symbol"($P5009)
    set $P101, $P5010
    isfalse $I5001, $P101
    set $I5003, $I5001
    if $I5001 goto unless389_end1527 
    set $P5011, $P101["lazyinit"]
    unless_null $P5011, fallback1528
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5012
  fallback1528:
    isfalse $I5002, $P5011
    set $I5003, $I5002
  unless389_end1527:
    box $P5022, $I5003
    set $P5021, $P5022
    unless $I5003 goto if388_end1525 
.annotate 'line', 2699
    find_dynamic_lex $P5013, "$*BLOCK"
    unless_null $P5013, fallback1529
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["$BLOCK"]
    unless_null $P5014, fallback1530
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5014, $P5017
  fallback1530:
    unless_null $P5014, vivi_3901531
    die "Contextual $*BLOCK not found"
    box $P5018, "Contextual $*BLOCK not found"
    set $P5014, $P5018
  vivi_3901531:
    set $P5013, $P5014
  fallback1529:
    find_lex $P5019, "$name"
    $P5020 = $P5013."lexical_type"($P5019)
    set $P5021, $P5020
  if388_end1525:
    unless $P5021 goto if387_else1522 
    .const 'Sub' $P5023 = 'cuid_297_1347104163.3' 
    capture_lex $P5023
    $P5024 = $P5023($P5021)
    set $P5027, $P5024
    goto if387_end1523
  if387_else1522:
    .const 'Sub' $P5025 = 'cuid_300_1347104163.3' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
  if387_end1523:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_297_1347104163.3") :anon :lex :outer("cuid_298_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2699
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_296_1347104163.3' 
    capture_lex $P5021 
    .lex "$reg", $P101 
    .lex "$type", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2700
    find_dynamic_lex $P5002, "$*BLOCK"
    unless_null $P5002, fallback1532
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$BLOCK"]
    unless_null $P5003, fallback1533
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback1533:
    unless_null $P5003, vivi_3911534
    die "Contextual $*BLOCK not found"
    box $P5007, "Contextual $*BLOCK not found"
    set $P5003, $P5007
  vivi_3911534:
    set $P5002, $P5003
  fallback1532:
    find_lex $P5008, "$name"
    $P5009 = $P5002."lex_reg"($P5008)
    set $P101, $P5009
    find_dynamic_lex $P5010, "$*BINDVAL"
    unless_null $P5010, fallback1537
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["$BINDVAL"]
    unless_null $P5011, fallback1538
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5014
  fallback1538:
    unless_null $P5011, vivi_3931539
    die "Contextual $*BINDVAL not found"
    box $P5015, "Contextual $*BINDVAL not found"
    set $P5011, $P5015
  vivi_3931539:
    set $P5010, $P5011
  fallback1537:
    set $P5018, $P5010
    unless $P5010 goto if392_end1536 
    .const 'Sub' $P5016 = 'cuid_296_1347104163.3' 
    capture_lex $P5016
    $P5017 = $P5016()
    set $P5018, $P5017
  if392_end1536:
.annotate 'line', 2706
    find_lex $P5019, "$ops"
    $P5020 = $P5019."result"($P101)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_296_1347104163.3") :anon :lex :outer("cuid_297_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2701
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2702
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1540
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1541
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  fallback1541:
    unless_null $P5005, vivi_3941542
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_3941542:
    set $P5004, $P5005
  fallback1540:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2703
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2704
    find_lex $P5014, "$ops"
    find_lex $P5015, "$reg"
    $P5016 = $P101."result"()
    $P5017 = $P5014."push_pirop"("set", $P5015, $P5016)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_300_1347104163.3") :anon :lex :outer("cuid_298_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2708
    .const 'Sub' $P5032 = 'cuid_299_1347104163.3' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_301_1347104163.3' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_302_1347104163.3' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_303_1347104163.3' 
    capture_lex $P5032 
    .lex "$type", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2710
    find_lex $P5002, "$node"
    $P5003 = $P5002."returns"()
    $P5004 = "&type_to_register_type"($P5003)
    set $P101, $P5004
    set $S5001, $P101
    iseq $I5001, $S5001, "P"
    box $P5007, $I5001
    set $P5006, $P5007
    unless $I5001 goto if395_end1544 
.annotate 'line', 2711
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5005
  if395_end1544:
    find_lex $P5008, "$scope"
    set $S5002, $P5008
    iseq $I5002, $S5002, "lexical"
    unless $I5002 goto if396_else1545 
.annotate 'line', 2717
    find_dynamic_lex $P5009, "$*BINDVAL"
    unless_null $P5009, fallback1549
    get_hll_global $P5012, "GLOBAL"
    get_who $P5011, $P5012
    set $P5010, $P5011["$BINDVAL"]
    unless_null $P5010, fallback1550
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5010, $P5013
  fallback1550:
    unless_null $P5010, vivi_3981551
    die "Contextual $*BINDVAL not found"
    box $P5014, "Contextual $*BINDVAL not found"
    set $P5010, $P5014
  vivi_3981551:
    set $P5009, $P5010
  fallback1549:
    unless $P5009 goto if397_else1547 
    .const 'Sub' $P5015 = 'cuid_299_1347104163.3' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5019, $P5016
    goto if397_end1548
  if397_else1547:
    .const 'Sub' $P5017 = 'cuid_301_1347104163.3' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
  if397_end1548:
    set $P5031, $P5019
    goto if396_end1546
  if396_else1545:
.annotate 'line', 2730
    find_dynamic_lex $P5020, "$*BINDVAL"
    unless_null $P5020, fallback1560
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["$BINDVAL"]
    unless_null $P5021, fallback1561
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5021, $P5024
  fallback1561:
    unless_null $P5021, vivi_4021562
    die "Contextual $*BINDVAL not found"
    box $P5025, "Contextual $*BINDVAL not found"
    set $P5021, $P5025
  vivi_4021562:
    set $P5020, $P5021
  fallback1560:
    unless $P5020 goto if401_else1558 
    .const 'Sub' $P5026 = 'cuid_302_1347104163.3' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5030, $P5027
    goto if401_end1559
  if401_else1558:
    .const 'Sub' $P5028 = 'cuid_303_1347104163.3' 
    capture_lex $P5028
    $P5029 = $P5028()
    set $P5030, $P5029
  if401_end1559:
    set $P5031, $P5030
  if396_end1546:
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_299_1347104163.3") :anon :lex :outer("cuid_300_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2718
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2719
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1552
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1553
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  fallback1553:
    unless_null $P5005, vivi_3991554
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_3991554:
    set $P5004, $P5005
  fallback1552:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2720
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2721
    find_lex $P5014, "$ops"
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$node"
    $P5018 = $P5017."name"()
    $P5019 = $P5015."escape"($P5018)
    $P5020 = $P101."result"()
    $P5021 = $P5014."push_pirop"("store_lex", $P5019, $P5020)
.annotate 'line', 2722
    find_lex $P5022, "$ops"
    $P5023 = $P101."result"()
    $P5024 = $P5022."result"($P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_301_1347104163.3") :anon :lex :outer("cuid_300_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2724
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2725
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback1555
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback1556
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback1556:
    unless_null $P5004, vivi_4001557
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_4001557:
    set $P5003, $P5004
  fallback1555:
    find_lex $P5002, "$type"
    set $S5003, $P5002
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5009 = $P5003.$S5001()
    set $P101, $P5009
.annotate 'line', 2726
    find_lex $P5010, "$ops"
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$node"
    $P5014 = $P5013."name"()
    $P5015 = $P5011."escape"($P5014)
    $P5016 = $P5010."push_pirop"("find_lex", $P101, $P5015)
.annotate 'line', 2727
    find_lex $P5017, "$ops"
    $P5018 = $P5017."result"($P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_302_1347104163.3") :anon :lex :outer("cuid_300_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2731
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2732
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1563
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1564
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  fallback1564:
    unless_null $P5005, vivi_4031565
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_4031565:
    set $P5004, $P5005
  fallback1563:
    $P5010 = $P5002."as_post_clear_bindval"($P5004, "P" :named("want"))
    set $P101, $P5010
.annotate 'line', 2733
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push"($P101)
.annotate 'line', 2734
    find_lex $P5013, "$ops"
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5016, "$name"
    $P5017 = $P5014."escape"($P5016)
    $P5018 = $P101."result"()
    $P5019 = $P5013."push_pirop"("store_dynamic_lex", $P5017, $P5018)
.annotate 'line', 2735
    find_lex $P5020, "$ops"
    $P5021 = $P101."result"()
    $P5022 = $P5020."result"($P5021)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_303_1347104163.3") :anon :lex :outer("cuid_300_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2737
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2738
    find_dynamic_lex $P5002, "$*REGALLOC"
    unless_null $P5002, fallback1566
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["$REGALLOC"]
    unless_null $P5003, fallback1567
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5006
  fallback1567:
    unless_null $P5003, vivi_4041568
    die "Contextual $*REGALLOC not found"
    box $P5007, "Contextual $*REGALLOC not found"
    set $P5003, $P5007
  vivi_4041568:
    set $P5002, $P5003
  fallback1566:
    $P5008 = $P5002."fresh_p"()
    set $P101, $P5008
.annotate 'line', 2739
    find_lex $P5009, "$ops"
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$name"
    $P5013 = $P5010."escape"($P5012)
    $P5014 = $P5009."push_pirop"("find_dynamic_lex", $P101, $P5013)
.annotate 'line', 2740
    find_lex $P5015, "$ops"
    $P5016 = $P5015."result"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_305_1347104163.3") :anon :lex :outer("cuid_116_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2745
    .const 'Sub' $P5042 = 'cuid_304_1347104163.3' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_306_1347104163.3' 
    capture_lex $P5042 
    .lex "@args", $P101 
    .lex "$obj", $P102 
    .lex "$han", $P103 
    .lex "$type", $P104 
    .lex "$op_type", $P105 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
.annotate 'line', 2747
    find_lex $P5006, "$node"
    $P5007 = $P5006."list"()
    set $P101, $P5007
    set $N5001, $P101
    set $N5002, 2
    isne $I5001, $N5001, $N5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if406_end1572 
.annotate 'line', 2748
    box $P5008, "An attribute lookup needs an object and a class handle"
    die $P5008
    set $P5009, $P5008
  if406_end1572:
.annotate 'line', 2753
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    set $P5013, $P101[0]
    unless_null $P5013, fallback1573
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5014
  fallback1573:
    $P5015 = $P5011."as_post_clear_bindval"($P5013, "P" :named("want"))
    set $P102, $P5015
.annotate 'line', 2754
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    set $P5018, $P101[1]
    unless_null $P5018, fallback1574
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5018, $P5019
  fallback1574:
    $P5020 = $P5016."as_post_clear_bindval"($P5018, "P" :named("want"))
    set $P103, $P5020
.annotate 'line', 2755
    find_lex $P5021, "$ops"
    $P5022 = $P5021."push"($P102)
.annotate 'line', 2756
    find_lex $P5023, "$ops"
    $P5024 = $P5023."push"($P103)
.annotate 'line', 2759
    find_lex $P5025, "$node"
    $P5026 = $P5025."returns"()
    $P5027 = "&type_to_register_type"($P5026)
    set $P104, $P5027
.annotate 'line', 2760
    find_lex $P5028, "$node"
    $P5029 = $P5028."returns"()
    $P5030 = "&type_to_lookup_name"($P5029)
    set $P105, $P5030
    find_dynamic_lex $P5031, "$*BINDVAL"
    unless_null $P5031, fallback1577
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    set $P5032, $P5033["$BINDVAL"]
    unless_null $P5032, fallback1578
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5032, $P5035
  fallback1578:
    unless_null $P5032, vivi_4081579
    die "Contextual $*BINDVAL not found"
    box $P5036, "Contextual $*BINDVAL not found"
    set $P5032, $P5036
  vivi_4081579:
    set $P5031, $P5032
  fallback1577:
    unless $P5031 goto if407_else1575 
    .const 'Sub' $P5037 = 'cuid_304_1347104163.3' 
    capture_lex $P5037
    $P5038 = $P5037()
    set $P5041, $P5038
    goto if407_end1576
  if407_else1575:
    .const 'Sub' $P5039 = 'cuid_306_1347104163.3' 
    capture_lex $P5039
    $P5040 = $P5039()
    set $P5041, $P5040
  if407_end1576:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_304_1347104163.3") :anon :lex :outer("cuid_305_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2761
    .lex "$valpost", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2762
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_dynamic_lex $P5004, "$*BINDVAL"
    unless_null $P5004, fallback1580
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["$BINDVAL"]
    unless_null $P5005, fallback1581
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5008
  fallback1581:
    unless_null $P5005, vivi_4091582
    die "Contextual $*BINDVAL not found"
    box $P5009, "Contextual $*BINDVAL not found"
    set $P5005, $P5009
  vivi_4091582:
    set $P5004, $P5005
  fallback1580:
    find_lex $P5010, "$type"
    set $S5002, $P5010
    downcase $S5001, $S5002
    $P5011 = $P5002."as_post_clear_bindval"($P5004, $S5001 :named("want"))
    set $P101, $P5011
.annotate 'line', 2763
    find_lex $P5012, "$ops"
    $P5013 = $P5012."push"($P101)
.annotate 'line', 2764
    find_lex $P5014, "$ops"
    find_lex $P5015, "$op_type"
    set $S5004, $P5015
    concat $S5003, "repr_bind_attr_", $S5004
    find_lex $P5016, "$obj"
    $P5017 = $P5016."result"()
    find_lex $P5018, "$han"
    $P5019 = $P5018."result"()
.annotate 'line', 2765
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$name"
    $P5023 = $P5020."escape"($P5022)
    $P5024 = $P101."result"()
    $P5025 = $P5014."push_pirop"($S5003, $P5017, $P5019, $P5023, $P5024)
.annotate 'line', 2766
    find_lex $P5026, "$ops"
    $P5027 = $P101."result"()
    $P5028 = $P5026."result"($P5027)
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_306_1347104163.3") :anon :lex :outer("cuid_305_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2768
    .lex "$res_reg", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2769
    find_dynamic_lex $P5003, "$*REGALLOC"
    unless_null $P5003, fallback1583
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$REGALLOC"]
    unless_null $P5004, fallback1584
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback1584:
    unless_null $P5004, vivi_4101585
    die "Contextual $*REGALLOC not found"
    box $P5008, "Contextual $*REGALLOC not found"
    set $P5004, $P5008
  vivi_4101585:
    set $P5003, $P5004
  fallback1583:
    find_lex $P5002, "$type"
    set $S5003, $P5002
    downcase $S5002, $S5003
    concat $S5001, "fresh_", $S5002
    $P5009 = $P5003.$S5001()
    set $P101, $P5009
.annotate 'line', 2770
    find_lex $P5010, "$ops"
    find_lex $P5011, "$op_type"
    set $S5005, $P5011
    concat $S5004, "repr_get_attr_", $S5005
    find_lex $P5012, "$obj"
    $P5013 = $P5012."result"()
    find_lex $P5014, "$han"
    $P5015 = $P5014."result"()
.annotate 'line', 2771
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$name"
    $P5019 = $P5016."escape"($P5018)
    $P5020 = $P5010."push_pirop"($S5004, $P101, $P5013, $P5015, $P5019)
.annotate 'line', 2772
    find_lex $P5021, "$ops"
    $P5022 = $P5021."result"($P101)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "as_post_clear_bindval" :subid("cuid_117_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2792
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("want") :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_17, default1612
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set _lex_param_2, $P5008
  default1612:
    .lex "$*BINDVAL", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$want", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    unless _lex_param_2 goto if419_else1610 
.annotate 'line', 2794
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."as_post"(_lex_param_1, _lex_param_2 :named("want"))
    set $P5007, $P5004
    goto if419_end1611
  if419_else1610:
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."as_post"(_lex_param_1)
    set $P5007, $P5006
  if419_end1611:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_118_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2797
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2799
    nqp_decontainerize $P5001, _lex_param_0
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback1613
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5003
  fallback1613:
    $P5004 = $P5001."as_post"($P5002)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_119_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2802
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2803
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["Ops"]
    unless_null $P5001, fallback1614
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1614:
    $P5006 = _lex_param_1."value"()
    set $S5001, $P5006
    $P5007 = $P5001."new"($S5001 :named("result"))
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_120_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2806
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$val", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2807
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
    if $I5001 goto unless421_end1618 
    set $S5003, $P101
    index $I5004, $S5003, "e", 0
    set $N5003, $I5004
    set $N5004, 0
    isgt $I5003, $N5003, $N5004
    set $I5005, $I5003
  unless421_end1618:
    box $P5006, $I5005
    set $P5005, $P5006
    if $I5005 goto unless420_end1616 
    set $S5005, $P101
    concat $S5004, $S5005, ".0"
    box $P5004, $S5004
    set $P101, $P5004
    set $P5005, $P101
  unless420_end1616:
.annotate 'line', 2810
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "PIRT"
    get_who $P5008, $P5009
    set $P5007, $P5008["Ops"]
    unless_null $P5007, fallback1619
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5011
  fallback1619:
    $P5012 = $P5007."new"($P101 :named("result"))
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_121_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2813
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 2814
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "PIRT"
    get_who $P5002, $P5003
    set $P5001, $P5002["Ops"]
    unless_null $P5001, fallback1620
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback1620:
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = _lex_param_1."value"()
    $P5008 = $P5006."escape"($P5007)
    $P5009 = $P5001."new"($P5008 :named("result"))
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_122_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2817
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cuid", $P101 
    .lex "$reg", $P102 
    .lex "$ops", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 2818
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = _lex_param_1."value"()
    $P5006 = $P5005."cuid"()
    $P5007 = $P5004."escape"($P5006)
    set $P101, $P5007
.annotate 'line', 2819
    find_dynamic_lex $P5008, "$*REGALLOC"
    unless_null $P5008, fallback1621
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["$REGALLOC"]
    unless_null $P5009, fallback1622
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5012
  fallback1622:
    unless_null $P5009, vivi_4221623
    die "Contextual $*REGALLOC not found"
    box $P5013, "Contextual $*REGALLOC not found"
    set $P5009, $P5013
  vivi_4221623:
    set $P5008, $P5009
  fallback1621:
    $P5014 = $P5008."fresh_p"()
    set $P102, $P5014
.annotate 'line', 2820
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "PIRT"
    get_who $P5016, $P5017
    set $P5015, $P5016["Ops"]
    unless_null $P5015, fallback1624
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5015, $P5019
  fallback1624:
    $P5020 = $P5015."new"($P102 :named("result"))
    set $P103, $P5020
.annotate 'line', 2821
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
.sub "as_post" :subid("cuid_123_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2825
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
.annotate 'line', 2826
    $P5007 = _lex_param_1."value"()
    set $P101, $P5007
    nqp_get_sc_for_object $P5008, $P101
    set $P102, $P5008
.annotate 'line', 2828
    $P5009 = $P102."handle"()
    set $P103, $P5009
.annotate 'line', 2829
    $P5010 = $P102."slot_index_for"($P101)
    set $P104, $P5010
.annotate 'line', 2830
    find_dynamic_lex $P5011, "$*REGALLOC"
    unless_null $P5011, fallback1625
    get_hll_global $P5014, "GLOBAL"
    get_who $P5013, $P5014
    set $P5012, $P5013["$REGALLOC"]
    unless_null $P5012, fallback1626
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5015
  fallback1626:
    unless_null $P5012, vivi_4231627
    die "Contextual $*REGALLOC not found"
    box $P5016, "Contextual $*REGALLOC not found"
    set $P5012, $P5016
  vivi_4231627:
    set $P5011, $P5012
  fallback1625:
    $P5017 = $P5011."fresh_p"()
    set $P105, $P5017
.annotate 'line', 2831
    get_hll_global $P5021, "GLOBAL"
    nqp_get_package_through_who $P5020, $P5021, "PIRT"
    get_who $P5019, $P5020
    set $P5018, $P5019["Ops"]
    unless_null $P5018, fallback1628
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5018, $P5022
  fallback1628:
    $P5023 = $P5018."new"($P105 :named("result"))
    set $P106, $P5023
.annotate 'line', 2832
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = $P5024."escape"($P103)
    set $S5001, $P104
    $P5026 = $P106."push_pirop"("nqp_get_sc_object", $P105, $P5025, $S5001)
    .return ($P106) 
.end
.HLL "nqp"
.namespace []
.sub "coerce" :subid("cuid_124_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2836
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5027 = 'cuid_307_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_308_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_309_1347104163.3' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_310_1347104163.3' 
    capture_lex $P5027 
    .lex "$result", $P101 
    .lex "self", _lex_param_0 
    .lex "$post", _lex_param_1 
    .lex "$desired", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1629
    .lex "RETURN", $P102
.annotate 'line', 2837
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = _lex_param_1."result"()
    $P5004 = $P5002."infer_type"($P5003)
    set $P101, $P5004
    set $S5001, $P101
    set $S5002, _lex_param_2
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if424_else1631 
.annotate 'line', 2838
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(_lex_param_1)
    set $P5026, $P5006
    goto if424_end1632
  if424_else1631:
    set $S5004, $P101
    downcase $S5003, $S5004
    set $S5005, _lex_param_2
    iseq $I5002, $S5003, $S5005
    unless $I5002 goto if425_else1633 
.annotate 'line', 2842
    find_lex $P5007, "RETURN"
    $P5008 = $P5007(_lex_param_1)
    set $P5025, $P5008
    goto if425_end1634
  if425_else1633:
    set $S5006, $P101
    iseq $I5003, $S5006, "p"
    set $I5005, $I5003
    unless $I5003 goto if427_end1638 
    set $S5007, _lex_param_2
    iseq $I5004, $S5007, "P"
    set $I5005, $I5004
  if427_end1638:
    unless $I5005 goto if426_else1635 
.annotate 'line', 2847
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(_lex_param_1)
    set $P5024, $P5010
    goto if426_end1636
  if426_else1635:
    set $S5008, $P101
    set $S5010, _lex_param_2
    downcase $S5009, $S5010
    iseq $I5006, $S5008, $S5009
    unless $I5006 goto if428_else1639 
    .const 'Sub' $P5011 = 'cuid_307_1347104163.3' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5023, $P5012
    goto if428_end1640
  if428_else1639:
    set $S5011, _lex_param_2
    iseq $I5007, $S5011, "P"
    set $I5009, $I5007
    if $I5007 goto unless431_end1648 
    set $S5012, _lex_param_2
    iseq $I5008, $S5012, "p"
    set $I5009, $I5008
  unless431_end1648:
    unless $I5009 goto if430_else1645 
    .const 'Sub' $P5013 = 'cuid_308_1347104163.3' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5022, $P5014
    goto if430_end1646
  if430_else1645:
    set $S5013, $P101
    iseq $I5010, $S5013, "P"
    set $I5012, $I5010
    if $I5010 goto unless436_end1658 
    set $S5014, $P101
    iseq $I5011, $S5014, "p"
    set $I5012, $I5011
  unless436_end1658:
    unless $I5012 goto if435_else1655 
    .const 'Sub' $P5015 = 'cuid_309_1347104163.3' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5021, $P5016
    goto if435_end1656
  if435_else1655:
    set $S5015, $P101
    index $I5014, "IiNnSs", $S5015, 0
    set $N5001, $I5014
    set $N5002, 0
    isge $I5013, $N5001, $N5002
    set $I5017, $I5013
    unless $I5013 goto if441_end1668 
    set $S5016, _lex_param_2
    index $I5016, "IiNnSs", $S5016, 0
    set $N5003, $I5016
    set $N5004, 0
    isge $I5015, $N5003, $N5004
    set $I5017, $I5015
  if441_end1668:
    unless $I5017 goto if440_else1665 
    .const 'Sub' $P5017 = 'cuid_310_1347104163.3' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5020, $P5018
    goto if440_end1666
  if440_else1665:
.annotate 'line', 2880
    set $S5021, $P101
    concat $S5020, "Coercion from '", $S5021
    concat $S5019, $S5020, "' to '"
    set $S5022, _lex_param_2
    concat $S5018, $S5019, $S5022
    concat $S5017, $S5018, "' NYI"
    box $P5019, $S5017
    die $P5019
    set $P5020, $P5019
  if440_end1666:
    set $P5021, $P5020
  if435_end1656:
    set $P5022, $P5021
  if430_end1646:
    set $P5023, $P5022
  if428_end1640:
    set $P5024, $P5023
  if426_end1636:
    set $P5025, $P5024
  if425_end1634:
    set $P5026, $P5025
  if424_end1632:
    goto lexotic_1630
  lexotic_1629:
    .get_results ($P5026)
  lexotic_1630:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_307_1347104163.3") :anon :lex :outer("cuid_124_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2851
    .lex "$ops", $P101 
    .lex "$reg", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 2853
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1641
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1641:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 2854
    find_dynamic_lex $P5010, "$*REGALLOC"
    unless_null $P5010, fallback1642
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["$REGALLOC"]
    unless_null $P5011, fallback1643
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5014
  fallback1643:
    unless_null $P5011, vivi_4291644
    die "Contextual $*REGALLOC not found"
    box $P5015, "Contextual $*REGALLOC not found"
    set $P5011, $P5015
  vivi_4291644:
    set $P5010, $P5011
  fallback1642:
    find_lex $P5009, "$result"
    set $S5002, $P5009
    concat $S5001, "fresh_", $S5002
    $P5016 = $P5010.$S5001()
    set $P102, $P5016
.annotate 'line', 2855
    find_lex $P5017, "$post"
    $P5018 = $P101."push"($P5017)
.annotate 'line', 2856
    find_lex $P5019, "$post"
    $P5020 = $P101."push_pirop"("set", $P102, $P5019)
.annotate 'line', 2857
    $P5021 = $P101."result"($P102)
    find_lex $P5022, "RETURN"
    $P5023 = $P5022($P101)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_308_1347104163.3") :anon :lex :outer("cuid_124_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2860
    .lex "$hll", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_4341653
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
    find_dynamic_lex $P5003, "$*HLL"
    unless_null $P5003, fallback1649
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$HLL"]
    unless_null $P5004, fallback1650
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback1650:
    unless_null $P5004, vivi_4321651
    die "Contextual $*HLL not found"
    box $P5008, "Contextual $*HLL not found"
    set $P5004, $P5008
  vivi_4321651:
    set $P5003, $P5004
  fallback1649:
    set $P101, $P5003
    set $P5010, $P101
    pop_eh 
    goto skip_handler_4331652
  catch_handler_4341653:
    .get_results ($P5009) 
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10001
    goto skip_handler_4331652
  skip_handler_4331652:
.annotate 'line', 2863
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Operations"]
    unless_null $P5012, fallback1654
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5016
  fallback1654:
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
.sub "" :subid("cuid_309_1347104163.3") :anon :lex :outer("cuid_124_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2865
    .lex "$hll", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_4391663
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
    find_dynamic_lex $P5003, "$*HLL"
    unless_null $P5003, fallback1659
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["$HLL"]
    unless_null $P5004, fallback1660
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5007
  fallback1660:
    unless_null $P5004, vivi_4371661
    die "Contextual $*HLL not found"
    box $P5008, "Contextual $*HLL not found"
    set $P5004, $P5008
  vivi_4371661:
    set $P5003, $P5004
  fallback1659:
    set $P101, $P5003
    set $P5010, $P101
    pop_eh 
    goto skip_handler_4381662
  catch_handler_4391663:
    .get_results ($P5009) 
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10001
    goto skip_handler_4381662
  skip_handler_4381662:
.annotate 'line', 2868
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Operations"]
    unless_null $P5012, fallback1664
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5016
  fallback1664:
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
.sub "" :subid("cuid_310_1347104163.3") :anon :lex :outer("cuid_124_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2870
    .lex "$ops", $P101 
    .lex "$rtype", $P102 
    .lex "$reg", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 2872
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "PIRT"
    get_who $P5005, $P5006
    set $P5004, $P5005["Ops"]
    unless_null $P5004, fallback1669
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback1669:
    $P5009 = $P5004."new"()
    set $P101, $P5009
    find_lex $P5010, "$desired"
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5011, $S5001
    set $P102, $P5011
.annotate 'line', 2874
    find_dynamic_lex $P5012, "$*REGALLOC"
    unless_null $P5012, fallback1670
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    set $P5013, $P5014["$REGALLOC"]
    unless_null $P5013, fallback1671
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5013, $P5016
  fallback1671:
    unless_null $P5013, vivi_4421672
    die "Contextual $*REGALLOC not found"
    box $P5017, "Contextual $*REGALLOC not found"
    set $P5013, $P5017
  vivi_4421672:
    set $P5012, $P5013
  fallback1670:
    set $S5004, $P102
    concat $S5003, "fresh_", $S5004
    $P5018 = $P5012.$S5003()
    set $P103, $P5018
.annotate 'line', 2875
    find_lex $P5019, "$post"
    $P5020 = $P101."push"($P5019)
.annotate 'line', 2876
    find_lex $P5021, "$post"
    $P5022 = $P101."push_pirop"("set", $P103, $P5021)
.annotate 'line', 2877
    $P5023 = $P101."result"($P103)
    find_lex $P5024, "RETURN"
    $P5025 = $P5024($P101)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "infer_type" :subid("cuid_125_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2885
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_311_1347104163.3' 
    capture_lex $P5024 
    .lex "self", _lex_param_0 
    .lex "$inferee", _lex_param_1 
    set $S5002, _lex_param_1
    substr $S5001, $S5002, 0, 1
    iseq $I5001, $S5001, "$"
    unless $I5001 goto if443_else1673 
.annotate 'line', 2886
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 1, 1
    box $P5023, $S5003
    set $P5022, $P5023
    goto if443_end1674
  if443_else1673:
.annotate 'line', 2889
    find_dynamic_lex $P5001, "$*BLOCK"
    unless_null $P5001, fallback1677
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["$BLOCK"]
    unless_null $P5002, fallback1678
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5002, $P5005
  fallback1678:
    unless_null $P5002, vivi_4451679
    die "Contextual $*BLOCK not found"
    box $P5006, "Contextual $*BLOCK not found"
    set $P5002, $P5006
  vivi_4451679:
    set $P5001, $P5002
  fallback1677:
    $P5007 = $P5001."reg_type"(_lex_param_1)
    unless $P5007 goto if444_else1675 
    .const 'Sub' $P5008 = 'cuid_311_1347104163.3' 
    capture_lex $P5008
    $P5009 = $P5008($P5007)
    set $P5021, $P5009
    goto if444_end1676
  if444_else1675:
    set $S5006, _lex_param_1
    substr $S5005, $S5006, 0, 1
    iseq $I5002, $S5005, "\""
    set $I5004, $I5002
    if $I5002 goto unless449_end1687 
    set $S5008, _lex_param_1
    substr $S5007, $S5008, 0, 6
    iseq $I5003, $S5007, "utf8:\""
    set $I5004, $I5003
  unless449_end1687:
    set $I5006, $I5004
    if $I5004 goto unless448_end1685 
    set $S5010, _lex_param_1
    substr $S5009, $S5010, 0, 6
    iseq $I5005, $S5009, "ucs4:\""
    set $I5006, $I5005
  unless448_end1685:
    set $I5008, $I5006
    if $I5006 goto unless447_end1683 
    set $S5012, _lex_param_1
    substr $S5011, $S5012, 0, 9
    iseq $I5007, $S5011, "unicode:\""
    set $I5008, $I5007
  unless447_end1683:
    unless $I5008 goto if446_else1680 
.annotate 'line', 2895

    box $P5020, "s"
    set $P5019, $P5020
    goto if446_end1681
  if446_else1680:
    set $S5014, _lex_param_1
    substr $S5013, $S5014, 0, 6
    iseq $I5009, $S5013, ".const"
    unless $I5009 goto if450_else1688 
.annotate 'line', 2898

    box $P5018, "P"
    set $P5017, $P5018
    goto if450_end1689
  if450_else1688:
    set $S5016, _lex_param_1
    substr $S5015, $S5016, 0, 1
    iseq $I5010, $S5015, "."
    unless $I5010 goto if451_else1690 
.annotate 'line', 2901

    box $P5016, "i"
    set $P5015, $P5016
    goto if451_end1691
  if451_else1690:
    set $S5017, _lex_param_1
    index $I5012, $S5017, ".", 0
    set $N5001, $I5012
    set $N5002, 0
    isgt $I5011, $N5001, $N5002
    unless $I5011 goto if452_else1692 
.annotate 'line', 2904

    box $P5014, "n"
    set $P5013, $P5014
    goto if452_end1693
  if452_else1692:
    set $N5003, _lex_param_1
    set $S5018, $N5003
    set $S5019, _lex_param_1
    iseq $I5013, $S5018, $S5019
    unless $I5013 goto if453_else1694 
.annotate 'line', 2907

    box $P5012, "i"
    set $P5011, $P5012
    goto if453_end1695
  if453_else1694:
.annotate 'line', 2910
    set $S5022, _lex_param_1
    concat $S5021, "Cannot infer type from '", $S5022
    concat $S5020, $S5021, "'"
    box $P5010, $S5020
    die $P5010
    set $P5011, $P5010
  if453_end1695:
    set $P5013, $P5011
  if452_end1693:
    set $P5015, $P5013
  if451_end1691:
    set $P5017, $P5015
  if450_end1689:
    set $P5019, $P5017
  if446_end1681:
    set $P5021, $P5019
  if444_end1676:
    set $P5022, $P5021
  if443_end1674:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_311_1347104163.3") :anon :lex :outer("cuid_125_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2889
    .param pmc _lex_param_0 
    .lex "$type", _lex_param_0 
    set $S5002, _lex_param_0
    downcase $S5001, $S5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_126_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2915
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5382 = 'cuid_312_1347104163.3' 
    capture_lex $P5382 
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P110, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P111, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P112, $P5012
.annotate 'line', 2916
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."post_new"("Ops")
    set $P101, $P5014
.annotate 'line', 2917
    $P5015 = _lex_param_1."node"()
    set $P5018, $P5015
    unless $P5015 goto if454_end1697 
    $P5016 = _lex_param_1."node"()
    $P5017 = $P101."node"($P5016)
    set $P5018, $P5017
  if454_end1697:
.annotate 'line', 2918
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."unique"("rx")
    set $S5002, $P5020
    concat $S5001, $S5002, "_"
    box $P5021, $S5001
    set $P102, $P5021
    unless_null $P103, fallback1698
    get_hll_global $P5024, "GLOBAL"
    get_who $P5023, $P5024
    set $P5022, $P5023["%REG"]
    unless_null $P5022, fallback1699
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    new $P5027, 'Hash'
    set $P5025["%REG"], $P5027
    set $P5022, $P5027
  fallback1699:
    unless_null $P5022, vivi_4551700
    die "Contextual %*REG not found"
    box $P5028, "Contextual %*REG not found"
    set $P5022, $P5028
  vivi_4551700:
    set $P103, $P5022
  fallback1698:
    split $P5029, " ", "tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc cstack pmc"
    set $P104, $P5029
  while456_test1701:
    set $P5032, $P104
    unless $P104 goto while456_done1705 
  while456_redo1703:
    .const 'Sub' $P5030 = 'cuid_312_1347104163.3' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
    goto while456_test1701 
  while456_done1705:
.annotate 'line', 2930
    nqp_decontainerize $P5033, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "start"
    $P5034 = $P5033."post_new"("Label", $S5003 :named("name"))
    set $P105, $P5034
.annotate 'line', 2931
    nqp_decontainerize $P5035, _lex_param_0
    set $S5006, $P102
    concat $S5005, $S5006, "done"
    $P5036 = $P5035."post_new"("Label", $S5005 :named("name"))
    set $P106, $P5036
.annotate 'line', 2932
    nqp_decontainerize $P5037, _lex_param_0
    set $S5008, $P102
    concat $S5007, $S5008, "restart"
    $P5038 = $P5037."post_new"("Label", $S5007 :named("name"))
    set $P107, $P5038
.annotate 'line', 2933
    nqp_decontainerize $P5039, _lex_param_0
    set $S5010, $P102
    concat $S5009, $S5010, "fail"
    $P5040 = $P5039."post_new"("Label", $S5009 :named("name"))
    set $P108, $P5040
.annotate 'line', 2934
    nqp_decontainerize $P5041, _lex_param_0
    set $S5012, $P102
    concat $S5011, $S5012, "jump"
    $P5042 = $P5041."post_new"("Label", $S5011 :named("name"))
    set $P109, $P5042
.annotate 'line', 2935
    nqp_decontainerize $P5043, _lex_param_0
    set $S5014, $P102
    concat $S5013, $S5014, "cut"
    $P5044 = $P5043."post_new"("Label", $S5013 :named("name"))
    set $P110, $P5044
.annotate 'line', 2936
    nqp_decontainerize $P5045, _lex_param_0
    set $S5016, $P102
    concat $S5015, $S5016, "cstack_done"
    $P5046 = $P5045."post_new"("Label", $S5015 :named("name"))
    set $P111, $P5046
    unless_null $P103, fallback1709
    get_hll_global $P5049, "GLOBAL"
    get_who $P5048, $P5049
    set $P5047, $P5048["%REG"]
    unless_null $P5047, fallback1710
    get_hll_global $P5051, "GLOBAL"
    get_who $P5050, $P5051
    new $P5052, 'Hash'
    set $P5050["%REG"], $P5052
    set $P5047, $P5052
  fallback1710:
    unless_null $P5047, vivi_4581711
    die "Contextual %*REG not found"
    box $P5053, "Contextual %*REG not found"
    set $P5047, $P5053
  vivi_4581711:
    set $P103, $P5047
  fallback1709:
    set $P103["fail"], $P108
    new $P5054, 'ResizablePMCArray'
    unless_null $P103, fallback1712
    get_hll_global $P5058, "GLOBAL"
    get_who $P5057, $P5058
    set $P5056, $P5057["%REG"]
    unless_null $P5056, fallback1713
    get_hll_global $P5060, "GLOBAL"
    get_who $P5059, $P5060
    new $P5061, 'Hash'
    set $P5059["%REG"], $P5061
    set $P5056, $P5061
  fallback1713:
    unless_null $P5056, vivi_4591714
    die "Contextual %*REG not found"
    box $P5062, "Contextual %*REG not found"
    set $P5056, $P5062
  vivi_4591714:
    set $P103, $P5056
  fallback1712:
    set $P5055, $P103["cur"]
    unless_null $P5055, fallback1715
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5055, $P5063
  fallback1715:
    push $P5054, $P5055
    unless_null $P103, fallback1716
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    set $P5065, $P5066["%REG"]
    unless_null $P5065, fallback1717
    get_hll_global $P5069, "GLOBAL"
    get_who $P5068, $P5069
    new $P5070, 'Hash'
    set $P5068["%REG"], $P5070
    set $P5065, $P5070
  fallback1717:
    unless_null $P5065, vivi_4601718
    die "Contextual %*REG not found"
    box $P5071, "Contextual %*REG not found"
    set $P5065, $P5071
  vivi_4601718:
    set $P103, $P5065
  fallback1716:
    set $P5064, $P103["tgt"]
    unless_null $P5064, fallback1719
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5064, $P5072
  fallback1719:
    push $P5054, $P5064
    unless_null $P103, fallback1720
    get_hll_global $P5076, "GLOBAL"
    get_who $P5075, $P5076
    set $P5074, $P5075["%REG"]
    unless_null $P5074, fallback1721
    get_hll_global $P5078, "GLOBAL"
    get_who $P5077, $P5078
    new $P5079, 'Hash'
    set $P5077["%REG"], $P5079
    set $P5074, $P5079
  fallback1721:
    unless_null $P5074, vivi_4611722
    die "Contextual %*REG not found"
    box $P5080, "Contextual %*REG not found"
    set $P5074, $P5080
  vivi_4611722:
    set $P103, $P5074
  fallback1720:
    set $P5073, $P103["pos"]
    unless_null $P5073, fallback1723
    nqp_get_sc_object $P5081, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5073, $P5081
  fallback1723:
    push $P5054, $P5073
    unless_null $P103, fallback1724
    get_hll_global $P5085, "GLOBAL"
    get_who $P5084, $P5085
    set $P5083, $P5084["%REG"]
    unless_null $P5083, fallback1725
    get_hll_global $P5087, "GLOBAL"
    get_who $P5086, $P5087
    new $P5088, 'Hash'
    set $P5086["%REG"], $P5088
    set $P5083, $P5088
  fallback1725:
    unless_null $P5083, vivi_4621726
    die "Contextual %*REG not found"
    box $P5089, "Contextual %*REG not found"
    set $P5083, $P5089
  vivi_4621726:
    set $P103, $P5083
  fallback1724:
    set $P5082, $P103["curclass"]
    unless_null $P5082, fallback1727
    nqp_get_sc_object $P5090, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5082, $P5090
  fallback1727:
    push $P5054, $P5082
    unless_null $P103, fallback1728
    get_hll_global $P5094, "GLOBAL"
    get_who $P5093, $P5094
    set $P5092, $P5093["%REG"]
    unless_null $P5092, fallback1729
    get_hll_global $P5096, "GLOBAL"
    get_who $P5095, $P5096
    new $P5097, 'Hash'
    set $P5095["%REG"], $P5097
    set $P5092, $P5097
  fallback1729:
    unless_null $P5092, vivi_4631730
    die "Contextual %*REG not found"
    box $P5098, "Contextual %*REG not found"
    set $P5092, $P5098
  vivi_4631730:
    set $P103, $P5092
  fallback1728:
    set $P5091, $P103["bstack"]
    unless_null $P5091, fallback1731
    nqp_get_sc_object $P5099, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5091, $P5099
  fallback1731:
    push $P5054, $P5091
    box $P5100, "$I19"
    push $P5054, $P5100
    join $S5019, ", ", $P5054
    concat $S5018, "(", $S5019
    concat $S5017, $S5018, ")"
    box $P5101, $S5017
    set $P112, $P5101
.annotate 'line', 2941
    $P5102 = $P101."push_pirop"("callmethod", "\"!cursor_start\"", "self", $P112 :named("result"))
.annotate 'line', 2942
    unless_null $P103, fallback1732
    get_hll_global $P5106, "GLOBAL"
    get_who $P5105, $P5106
    set $P5104, $P5105["%REG"]
    unless_null $P5104, fallback1733
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    new $P5109, 'Hash'
    set $P5107["%REG"], $P5109
    set $P5104, $P5109
  fallback1733:
    unless_null $P5104, vivi_4641734
    die "Contextual %*REG not found"
    box $P5110, "Contextual %*REG not found"
    set $P5104, $P5110
  vivi_4641734:
    set $P103, $P5104
  fallback1732:
    set $P5103, $P103["cur"]
    unless_null $P5103, fallback1735
    nqp_get_sc_object $P5111, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5103, $P5111
  fallback1735:
    $P5112 = $P101."push_pirop"("store_lex", utf8:"unicode:\"$\\x{a2}\"", $P5103)
.annotate 'line', 2943
    unless_null $P103, fallback1736
    get_hll_global $P5116, "GLOBAL"
    get_who $P5115, $P5116
    set $P5114, $P5115["%REG"]
    unless_null $P5114, fallback1737
    get_hll_global $P5118, "GLOBAL"
    get_who $P5117, $P5118
    new $P5119, 'Hash'
    set $P5117["%REG"], $P5119
    set $P5114, $P5119
  fallback1737:
    unless_null $P5114, vivi_4651738
    die "Contextual %*REG not found"
    box $P5120, "Contextual %*REG not found"
    set $P5114, $P5120
  vivi_4651738:
    set $P103, $P5114
  fallback1736:
    set $P5113, $P103["eos"]
    unless_null $P5113, fallback1739
    nqp_get_sc_object $P5121, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5113, $P5121
  fallback1739:
    unless_null $P103, fallback1740
    get_hll_global $P5125, "GLOBAL"
    get_who $P5124, $P5125
    set $P5123, $P5124["%REG"]
    unless_null $P5123, fallback1741
    get_hll_global $P5127, "GLOBAL"
    get_who $P5126, $P5127
    new $P5128, 'Hash'
    set $P5126["%REG"], $P5128
    set $P5123, $P5128
  fallback1741:
    unless_null $P5123, vivi_4661742
    die "Contextual %*REG not found"
    box $P5129, "Contextual %*REG not found"
    set $P5123, $P5129
  vivi_4661742:
    set $P103, $P5123
  fallback1740:
    set $P5122, $P103["tgt"]
    unless_null $P5122, fallback1743
    nqp_get_sc_object $P5130, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5122, $P5130
  fallback1743:
    $P5131 = $P101."push_pirop"("length", $P5113, $P5122)
.annotate 'line', 2944
    $P5132 = $P101."push_pirop"("eq", "$I19", 1, $P107)
.annotate 'line', 2945
    unless_null $P103, fallback1744
    get_hll_global $P5136, "GLOBAL"
    get_who $P5135, $P5136
    set $P5134, $P5135["%REG"]
    unless_null $P5134, fallback1745
    get_hll_global $P5138, "GLOBAL"
    get_who $P5137, $P5138
    new $P5139, 'Hash'
    set $P5137["%REG"], $P5139
    set $P5134, $P5139
  fallback1745:
    unless_null $P5134, vivi_4671746
    die "Contextual %*REG not found"
    box $P5140, "Contextual %*REG not found"
    set $P5134, $P5140
  vivi_4671746:
    set $P103, $P5134
  fallback1744:
    set $P5133, $P103["pos"]
    unless_null $P5133, fallback1747
    nqp_get_sc_object $P5141, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5133, $P5141
  fallback1747:
    unless_null $P103, fallback1748
    get_hll_global $P5145, "GLOBAL"
    get_who $P5144, $P5145
    set $P5143, $P5144["%REG"]
    unless_null $P5143, fallback1749
    get_hll_global $P5147, "GLOBAL"
    get_who $P5146, $P5147
    new $P5148, 'Hash'
    set $P5146["%REG"], $P5148
    set $P5143, $P5148
  fallback1749:
    unless_null $P5143, vivi_4681750
    die "Contextual %*REG not found"
    box $P5149, "Contextual %*REG not found"
    set $P5143, $P5149
  vivi_4681750:
    set $P103, $P5143
  fallback1748:
    set $P5142, $P103["eos"]
    unless_null $P5142, fallback1751
    nqp_get_sc_object $P5150, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5142, $P5150
  fallback1751:
    unless_null $P103, fallback1752
    get_hll_global $P5154, "GLOBAL"
    get_who $P5153, $P5154
    set $P5152, $P5153["%REG"]
    unless_null $P5152, fallback1753
    get_hll_global $P5156, "GLOBAL"
    get_who $P5155, $P5156
    new $P5157, 'Hash'
    set $P5155["%REG"], $P5157
    set $P5152, $P5157
  fallback1753:
    unless_null $P5152, vivi_4691754
    die "Contextual %*REG not found"
    box $P5158, "Contextual %*REG not found"
    set $P5152, $P5158
  vivi_4691754:
    set $P103, $P5152
  fallback1752:
    set $P5151, $P103["fail"]
    unless_null $P5151, fallback1755
    nqp_get_sc_object $P5159, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5151, $P5159
  fallback1755:
    $P5160 = $P101."push_pirop"("gt", $P5133, $P5142, $P5151)
.annotate 'line', 2946
    nqp_decontainerize $P5161, _lex_param_0
    $P5162 = $P5161."regex_post"(_lex_param_1)
    $P5163 = $P101."push"($P5162)
.annotate 'line', 2947
    $P5164 = $P101."push"($P107)
.annotate 'line', 2948
    unless_null $P103, fallback1756
    get_hll_global $P5168, "GLOBAL"
    get_who $P5167, $P5168
    set $P5166, $P5167["%REG"]
    unless_null $P5166, fallback1757
    get_hll_global $P5170, "GLOBAL"
    get_who $P5169, $P5170
    new $P5171, 'Hash'
    set $P5169["%REG"], $P5171
    set $P5166, $P5171
  fallback1757:
    unless_null $P5166, vivi_4701758
    die "Contextual %*REG not found"
    box $P5172, "Contextual %*REG not found"
    set $P5166, $P5172
  vivi_4701758:
    set $P103, $P5166
  fallback1756:
    set $P5165, $P103["cstack"]
    unless_null $P5165, fallback1759
    nqp_get_sc_object $P5173, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5165, $P5173
  fallback1759:
    unless_null $P103, fallback1760
    get_hll_global $P5177, "GLOBAL"
    get_who $P5176, $P5177
    set $P5175, $P5176["%REG"]
    unless_null $P5175, fallback1761
    get_hll_global $P5179, "GLOBAL"
    get_who $P5178, $P5179
    new $P5180, 'Hash'
    set $P5178["%REG"], $P5180
    set $P5175, $P5180
  fallback1761:
    unless_null $P5175, vivi_4711762
    die "Contextual %*REG not found"
    box $P5181, "Contextual %*REG not found"
    set $P5175, $P5181
  vivi_4711762:
    set $P103, $P5175
  fallback1760:
    set $P5174, $P103["cur"]
    unless_null $P5174, fallback1763
    nqp_get_sc_object $P5182, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5174, $P5182
  fallback1763:
    unless_null $P103, fallback1764
    get_hll_global $P5186, "GLOBAL"
    get_who $P5185, $P5186
    set $P5184, $P5185["%REG"]
    unless_null $P5184, fallback1765
    get_hll_global $P5188, "GLOBAL"
    get_who $P5187, $P5188
    new $P5189, 'Hash'
    set $P5187["%REG"], $P5189
    set $P5184, $P5189
  fallback1765:
    unless_null $P5184, vivi_4721766
    die "Contextual %*REG not found"
    box $P5190, "Contextual %*REG not found"
    set $P5184, $P5190
  vivi_4721766:
    set $P103, $P5184
  fallback1764:
    set $P5183, $P103["curclass"]
    unless_null $P5183, fallback1767
    nqp_get_sc_object $P5191, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5183, $P5191
  fallback1767:
    $P5192 = $P101."push_pirop"("repr_get_attr_obj", $P5165, $P5174, $P5183, "\"$!cstack\"")
.annotate 'line', 2949
    $P5193 = $P101."push"($P108)
.annotate 'line', 2950
    unless_null $P103, fallback1768
    get_hll_global $P5197, "GLOBAL"
    get_who $P5196, $P5197
    set $P5195, $P5196["%REG"]
    unless_null $P5195, fallback1769
    get_hll_global $P5199, "GLOBAL"
    get_who $P5198, $P5199
    new $P5200, 'Hash'
    set $P5198["%REG"], $P5200
    set $P5195, $P5200
  fallback1769:
    unless_null $P5195, vivi_4731770
    die "Contextual %*REG not found"
    box $P5201, "Contextual %*REG not found"
    set $P5195, $P5201
  vivi_4731770:
    set $P103, $P5195
  fallback1768:
    set $P5194, $P103["bstack"]
    unless_null $P5194, fallback1771
    nqp_get_sc_object $P5202, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5194, $P5202
  fallback1771:
    $P5203 = $P101."push_pirop"("unless", $P5194, $P106)
.annotate 'line', 2951
    unless_null $P103, fallback1772
    get_hll_global $P5207, "GLOBAL"
    get_who $P5206, $P5207
    set $P5205, $P5206["%REG"]
    unless_null $P5205, fallback1773
    get_hll_global $P5209, "GLOBAL"
    get_who $P5208, $P5209
    new $P5210, 'Hash'
    set $P5208["%REG"], $P5210
    set $P5205, $P5210
  fallback1773:
    unless_null $P5205, vivi_4741774
    die "Contextual %*REG not found"
    box $P5211, "Contextual %*REG not found"
    set $P5205, $P5211
  vivi_4741774:
    set $P103, $P5205
  fallback1772:
    set $P5204, $P103["bstack"]
    unless_null $P5204, fallback1775
    nqp_get_sc_object $P5212, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5204, $P5212
  fallback1775:
    $P5213 = $P101."push_pirop"("pop", "$I19", $P5204)
.annotate 'line', 2952
    unless_null $P103, fallback1776
    get_hll_global $P5217, "GLOBAL"
    get_who $P5216, $P5217
    set $P5215, $P5216["%REG"]
    unless_null $P5215, fallback1777
    get_hll_global $P5219, "GLOBAL"
    get_who $P5218, $P5219
    new $P5220, 'Hash'
    set $P5218["%REG"], $P5220
    set $P5215, $P5220
  fallback1777:
    unless_null $P5215, vivi_4751778
    die "Contextual %*REG not found"
    box $P5221, "Contextual %*REG not found"
    set $P5215, $P5221
  vivi_4751778:
    set $P103, $P5215
  fallback1776:
    set $P5214, $P103["cstack"]
    unless_null $P5214, fallback1779
    nqp_get_sc_object $P5222, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5214, $P5222
  fallback1779:
    $P5223 = $P101."push_pirop"("if_null", $P5214, $P111)
.annotate 'line', 2953
    unless_null $P103, fallback1780
    get_hll_global $P5227, "GLOBAL"
    get_who $P5226, $P5227
    set $P5225, $P5226["%REG"]
    unless_null $P5225, fallback1781
    get_hll_global $P5229, "GLOBAL"
    get_who $P5228, $P5229
    new $P5230, 'Hash'
    set $P5228["%REG"], $P5230
    set $P5225, $P5230
  fallback1781:
    unless_null $P5225, vivi_4761782
    die "Contextual %*REG not found"
    box $P5231, "Contextual %*REG not found"
    set $P5225, $P5231
  vivi_4761782:
    set $P103, $P5225
  fallback1780:
    set $P5224, $P103["cstack"]
    unless_null $P5224, fallback1783
    nqp_get_sc_object $P5232, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5224, $P5232
  fallback1783:
    $P5233 = $P101."push_pirop"("unless", $P5224, $P111)
.annotate 'line', 2954
    $P5234 = $P101."push_pirop"("dec", "$I19")
.annotate 'line', 2955
    unless_null $P103, fallback1784
    get_hll_global $P5238, "GLOBAL"
    get_who $P5237, $P5238
    set $P5236, $P5237["%REG"]
    unless_null $P5236, fallback1785
    get_hll_global $P5240, "GLOBAL"
    get_who $P5239, $P5240
    new $P5241, 'Hash'
    set $P5239["%REG"], $P5241
    set $P5236, $P5241
  fallback1785:
    unless_null $P5236, vivi_4771786
    die "Contextual %*REG not found"
    box $P5242, "Contextual %*REG not found"
    set $P5236, $P5242
  vivi_4771786:
    set $P103, $P5236
  fallback1784:
    set $P5235, $P103["cstack"]
    unless_null $P5235, fallback1787
    nqp_get_sc_object $P5243, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5235, $P5243
  fallback1787:
    set $S5021, $P5235
    concat $S5020, $S5021, "[$I19]"
    $P5244 = $P101."push_pirop"("set", "$P11", $S5020)
.annotate 'line', 2956
    $P5245 = $P101."push"($P111)
.annotate 'line', 2957
    unless_null $P103, fallback1788
    get_hll_global $P5249, "GLOBAL"
    get_who $P5248, $P5249
    set $P5247, $P5248["%REG"]
    unless_null $P5247, fallback1789
    get_hll_global $P5251, "GLOBAL"
    get_who $P5250, $P5251
    new $P5252, 'Hash'
    set $P5250["%REG"], $P5252
    set $P5247, $P5252
  fallback1789:
    unless_null $P5247, vivi_4781790
    die "Contextual %*REG not found"
    box $P5253, "Contextual %*REG not found"
    set $P5247, $P5253
  vivi_4781790:
    set $P103, $P5247
  fallback1788:
    set $P5246, $P103["rep"]
    unless_null $P5246, fallback1791
    nqp_get_sc_object $P5254, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5246, $P5254
  fallback1791:
    unless_null $P103, fallback1792
    get_hll_global $P5258, "GLOBAL"
    get_who $P5257, $P5258
    set $P5256, $P5257["%REG"]
    unless_null $P5256, fallback1793
    get_hll_global $P5260, "GLOBAL"
    get_who $P5259, $P5260
    new $P5261, 'Hash'
    set $P5259["%REG"], $P5261
    set $P5256, $P5261
  fallback1793:
    unless_null $P5256, vivi_4791794
    die "Contextual %*REG not found"
    box $P5262, "Contextual %*REG not found"
    set $P5256, $P5262
  vivi_4791794:
    set $P103, $P5256
  fallback1792:
    set $P5255, $P103["bstack"]
    unless_null $P5255, fallback1795
    nqp_get_sc_object $P5263, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5255, $P5263
  fallback1795:
    $P5264 = $P101."push_pirop"("pop", $P5246, $P5255)
.annotate 'line', 2958
    unless_null $P103, fallback1796
    get_hll_global $P5268, "GLOBAL"
    get_who $P5267, $P5268
    set $P5266, $P5267["%REG"]
    unless_null $P5266, fallback1797
    get_hll_global $P5270, "GLOBAL"
    get_who $P5269, $P5270
    new $P5271, 'Hash'
    set $P5269["%REG"], $P5271
    set $P5266, $P5271
  fallback1797:
    unless_null $P5266, vivi_4801798
    die "Contextual %*REG not found"
    box $P5272, "Contextual %*REG not found"
    set $P5266, $P5272
  vivi_4801798:
    set $P103, $P5266
  fallback1796:
    set $P5265, $P103["pos"]
    unless_null $P5265, fallback1799
    nqp_get_sc_object $P5273, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5265, $P5273
  fallback1799:
    unless_null $P103, fallback1800
    get_hll_global $P5277, "GLOBAL"
    get_who $P5276, $P5277
    set $P5275, $P5276["%REG"]
    unless_null $P5275, fallback1801
    get_hll_global $P5279, "GLOBAL"
    get_who $P5278, $P5279
    new $P5280, 'Hash'
    set $P5278["%REG"], $P5280
    set $P5275, $P5280
  fallback1801:
    unless_null $P5275, vivi_4811802
    die "Contextual %*REG not found"
    box $P5281, "Contextual %*REG not found"
    set $P5275, $P5281
  vivi_4811802:
    set $P103, $P5275
  fallback1800:
    set $P5274, $P103["bstack"]
    unless_null $P5274, fallback1803
    nqp_get_sc_object $P5282, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5274, $P5282
  fallback1803:
    $P5283 = $P101."push_pirop"("pop", $P5265, $P5274)
.annotate 'line', 2959
    unless_null $P103, fallback1804
    get_hll_global $P5287, "GLOBAL"
    get_who $P5286, $P5287
    set $P5285, $P5286["%REG"]
    unless_null $P5285, fallback1805
    get_hll_global $P5289, "GLOBAL"
    get_who $P5288, $P5289
    new $P5290, 'Hash'
    set $P5288["%REG"], $P5290
    set $P5285, $P5290
  fallback1805:
    unless_null $P5285, vivi_4821806
    die "Contextual %*REG not found"
    box $P5291, "Contextual %*REG not found"
    set $P5285, $P5291
  vivi_4821806:
    set $P103, $P5285
  fallback1804:
    set $P5284, $P103["bstack"]
    unless_null $P5284, fallback1807
    nqp_get_sc_object $P5292, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5284, $P5292
  fallback1807:
    $P5293 = $P101."push_pirop"("pop", "$I19", $P5284)
.annotate 'line', 2960
    unless_null $P103, fallback1808
    get_hll_global $P5297, "GLOBAL"
    get_who $P5296, $P5297
    set $P5295, $P5296["%REG"]
    unless_null $P5295, fallback1809
    get_hll_global $P5299, "GLOBAL"
    get_who $P5298, $P5299
    new $P5300, 'Hash'
    set $P5298["%REG"], $P5300
    set $P5295, $P5300
  fallback1809:
    unless_null $P5295, vivi_4831810
    die "Contextual %*REG not found"
    box $P5301, "Contextual %*REG not found"
    set $P5295, $P5301
  vivi_4831810:
    set $P103, $P5295
  fallback1808:
    set $P5294, $P103["pos"]
    unless_null $P5294, fallback1811
    nqp_get_sc_object $P5302, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5294, $P5302
  fallback1811:
    $P5303 = $P101."push_pirop"("lt", $P5294, -1, $P106)
.annotate 'line', 2961
    unless_null $P103, fallback1812
    get_hll_global $P5307, "GLOBAL"
    get_who $P5306, $P5307
    set $P5305, $P5306["%REG"]
    unless_null $P5305, fallback1813
    get_hll_global $P5309, "GLOBAL"
    get_who $P5308, $P5309
    new $P5310, 'Hash'
    set $P5308["%REG"], $P5310
    set $P5305, $P5310
  fallback1813:
    unless_null $P5305, vivi_4841814
    die "Contextual %*REG not found"
    box $P5311, "Contextual %*REG not found"
    set $P5305, $P5311
  vivi_4841814:
    set $P103, $P5305
  fallback1812:
    set $P5304, $P103["pos"]
    unless_null $P5304, fallback1815
    nqp_get_sc_object $P5312, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5304, $P5312
  fallback1815:
    $P5313 = $P101."push_pirop"("lt", $P5304, 0, $P108)
.annotate 'line', 2962
    $P5314 = $P101."push_pirop"("eq", "$I19", 0, $P108)
.annotate 'line', 2964
    unless_null $P103, fallback1816
    get_hll_global $P5318, "GLOBAL"
    get_who $P5317, $P5318
    set $P5316, $P5317["%REG"]
    unless_null $P5316, fallback1817
    get_hll_global $P5320, "GLOBAL"
    get_who $P5319, $P5320
    new $P5321, 'Hash'
    set $P5319["%REG"], $P5321
    set $P5316, $P5321
  fallback1817:
    unless_null $P5316, vivi_4851818
    die "Contextual %*REG not found"
    box $P5322, "Contextual %*REG not found"
    set $P5316, $P5322
  vivi_4851818:
    set $P103, $P5316
  fallback1816:
    set $P5315, $P103["cstack"]
    unless_null $P5315, fallback1819
    nqp_get_sc_object $P5323, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5315, $P5323
  fallback1819:
    $P5324 = $P101."push_pirop"("nqp_islist", "$I20", $P5315)
.annotate 'line', 2965
    $P5325 = $P101."push_pirop"("unless", "$I20", $P109)
.annotate 'line', 2966
    unless_null $P103, fallback1820
    get_hll_global $P5329, "GLOBAL"
    get_who $P5328, $P5329
    set $P5327, $P5328["%REG"]
    unless_null $P5327, fallback1821
    get_hll_global $P5331, "GLOBAL"
    get_who $P5330, $P5331
    new $P5332, 'Hash'
    set $P5330["%REG"], $P5332
    set $P5327, $P5332
  fallback1821:
    unless_null $P5327, vivi_4861822
    die "Contextual %*REG not found"
    box $P5333, "Contextual %*REG not found"
    set $P5327, $P5333
  vivi_4861822:
    set $P103, $P5327
  fallback1820:
    set $P5326, $P103["bstack"]
    unless_null $P5326, fallback1823
    nqp_get_sc_object $P5334, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5326, $P5334
  fallback1823:
    $P5335 = $P101."push_pirop"("elements", "$I18", $P5326)
.annotate 'line', 2967
    $P5336 = $P101."push_pirop"("le", "$I18", 0, $P110)
.annotate 'line', 2968
    $P5337 = $P101."push_pirop"("dec", "$I18")
.annotate 'line', 2969
    unless_null $P103, fallback1824
    get_hll_global $P5341, "GLOBAL"
    get_who $P5340, $P5341
    set $P5339, $P5340["%REG"]
    unless_null $P5339, fallback1825
    get_hll_global $P5343, "GLOBAL"
    get_who $P5342, $P5343
    new $P5344, 'Hash'
    set $P5342["%REG"], $P5344
    set $P5339, $P5344
  fallback1825:
    unless_null $P5339, vivi_4871826
    die "Contextual %*REG not found"
    box $P5345, "Contextual %*REG not found"
    set $P5339, $P5345
  vivi_4871826:
    set $P103, $P5339
  fallback1824:
    set $P5338, $P103["bstack"]
    unless_null $P5338, fallback1827
    nqp_get_sc_object $P5346, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5338, $P5346
  fallback1827:
    set $S5023, $P5338
    concat $S5022, $S5023, "[$I18]"
    $P5347 = $P101."push_pirop"("set", "$I18", $S5022)
.annotate 'line', 2970
    $P5348 = $P101."push"($P110)
.annotate 'line', 2971
    unless_null $P103, fallback1828
    get_hll_global $P5352, "GLOBAL"
    get_who $P5351, $P5352
    set $P5350, $P5351["%REG"]
    unless_null $P5350, fallback1829
    get_hll_global $P5354, "GLOBAL"
    get_who $P5353, $P5354
    new $P5355, 'Hash'
    set $P5353["%REG"], $P5355
    set $P5350, $P5355
  fallback1829:
    unless_null $P5350, vivi_4881830
    die "Contextual %*REG not found"
    box $P5356, "Contextual %*REG not found"
    set $P5350, $P5356
  vivi_4881830:
    set $P103, $P5350
  fallback1828:
    set $P5349, $P103["cstack"]
    unless_null $P5349, fallback1831
    nqp_get_sc_object $P5357, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5349, $P5357
  fallback1831:
    $P5358 = $P101."push_pirop"("assign", $P5349, "$I18")
.annotate 'line', 2972
    $P5359 = $P101."push"($P109)
.annotate 'line', 2973
    $P5360 = $P101."push_pirop"("jump", "$I19")
.annotate 'line', 2974
    $P5361 = $P101."push"($P106)
.annotate 'line', 2975
    unless_null $P103, fallback1832
    get_hll_global $P5365, "GLOBAL"
    get_who $P5364, $P5365
    set $P5363, $P5364["%REG"]
    unless_null $P5363, fallback1833
    get_hll_global $P5367, "GLOBAL"
    get_who $P5366, $P5367
    new $P5368, 'Hash'
    set $P5366["%REG"], $P5368
    set $P5363, $P5368
  fallback1833:
    unless_null $P5363, vivi_4891834
    die "Contextual %*REG not found"
    box $P5369, "Contextual %*REG not found"
    set $P5363, $P5369
  vivi_4891834:
    set $P103, $P5363
  fallback1832:
    set $P5362, $P103["cur"]
    unless_null $P5362, fallback1835
    nqp_get_sc_object $P5370, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5362, $P5370
  fallback1835:
    $P5371 = $P101."push_pirop"("callmethod", "\"!cursor_fail\"", $P5362)
.annotate 'line', 2977
    unless_null $P103, fallback1836
    get_hll_global $P5375, "GLOBAL"
    get_who $P5374, $P5375
    set $P5373, $P5374["%REG"]
    unless_null $P5373, fallback1837
    get_hll_global $P5377, "GLOBAL"
    get_who $P5376, $P5377
    new $P5378, 'Hash'
    set $P5376["%REG"], $P5378
    set $P5373, $P5378
  fallback1837:
    unless_null $P5373, vivi_4901838
    die "Contextual %*REG not found"
    box $P5379, "Contextual %*REG not found"
    set $P5373, $P5379
  vivi_4901838:
    set $P103, $P5373
  fallback1836:
    set $P5372, $P103["cur"]
    unless_null $P5372, fallback1839
    nqp_get_sc_object $P5380, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5372, $P5380
  fallback1839:
    $P5381 = $P101."result"($P5372)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_312_1347104163.3") :anon :lex :outer("cuid_126_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2923
    .lex "$reg", $P101 
    .lex "$name", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    find_lex $P5004, "$reglist"
    shift $P5003, $P5004
    set $P101, $P5003
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback1706
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback1707
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback1707:
    unless_null $P5006, vivi_4571708
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_4571708:
    set $P5005, $P5006
  fallback1706:
    set $S5001, $P101
    find_lex $P5013, "$prefix"
    set $S5003, $P5013
    set $S5004, $P101
    concat $S5002, $S5003, $S5004
    box $P5014, $S5002
    set $P5005[$S5001], $P5014
    set $P102, $P5014
.annotate 'line', 2926
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
.sub "post_children" :subid("cuid_127_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2981
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_313_1347104163.3' 
    capture_lex $P5016 
    .lex "$posts", $P101 
    .lex "@results", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 2982
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1840
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1840:
    $P5008 = $P5003."new"()
    set $P101, $P5008
    $P5012 = _lex_param_1."list"()
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next1842:
    unless $P5011, for_done1844
    shift $P5014, $P5011
  for_redo1843:
    .const 'Sub' $P5013 = 'cuid_313_1347104163.3' 
    capture_lex $P5013
    $P5009 = $P5013($P5014)
    goto for_next1842
  for_done1844:
    new $P5015, 'ResizablePMCArray'
    push $P5015, $P101
    push $P5015, $P102
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_313_1347104163.3") :anon :lex :outer("cuid_127_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2984
    .param pmc _lex_param_0 
    .lex "$sval", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2985
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_hll_global $P5007, "GLOBAL"
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["SVal"]
    unless_null $P5004, fallback1841
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5008
  fallback1841:
    set $S5001, _lex_param_0
    $P5009 = $P5004."new"($S5001 :named("value"))
    $P5010 = $P5002."as_post"($P5009)
    set $P101, $P5010
.annotate 'line', 2986
    find_lex $P5011, "$posts"
    $P5012 = $P5011."push"($P101)
    find_lex $P5013, "@results"
.annotate 'line', 2987
    $P5014 = $P101."result"()
    push $P5013, $P5014
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "children" :subid("cuid_128_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2992
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_314_1347104163.3' 
    capture_lex $P5017 
    .lex "$posts", $P101 
    .lex "@results", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 2993
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PIRT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Ops"]
    unless_null $P5003, fallback1845
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5007
  fallback1845:
    $P5008 = $P5003."new"()
    set $P101, $P5008
    $P5012 = _lex_param_1."list"()
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next1846:
    unless $P5011, for_done1848
    shift $P5014, $P5011
  for_redo1847:
    .const 'Sub' $P5013 = 'cuid_314_1347104163.3' 
    capture_lex $P5013
    $P5009 = $P5013($P5014)
    goto for_next1846
  for_done1848:
    new $P5015, 'ResizablePMCArray'
    push $P5015, $P101
    push $P5015, $P102
    new $P5016, 'ResizablePMCArray'
    push $P5015, $P5016
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_314_1347104163.3") :anon :lex :outer("cuid_128_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 2995
    .param pmc _lex_param_0 
    .lex "$post", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 2996
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."as_post"(_lex_param_0)
    set $P101, $P5004
.annotate 'line', 2997
    find_lex $P5005, "$posts"
    $P5006 = $P5005."push"($P101)
.annotate 'line', 2998
    find_lex $P5007, "@results"
    $P5008 = $P101."result"()
    $P5009 = $P5007."push"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "regex_post" :subid("cuid_129_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3003
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$rxtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 3004
    $P5002 = _lex_param_1."rxtype"()
    set $P5003, $P5002
    if $P5002 goto unless491_end1850 
    box $P5004, "concat"
    set $P5003, $P5004
  unless491_end1850:
    set $P101, $P5003
.annotate 'line', 3005
    nqp_decontainerize $P5005, _lex_param_0
    set $S5001, $P101
    $P5006 = $P5005.$S5001(_lex_param_1)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "post_new" :subid("cuid_130_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3008
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%options", _lex_param_3 
.annotate 'line', 3009
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set $P5003, $P5004["PIRT"]
    unless_null $P5003, fallback1851
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["PIRT"]
    unless_null $P5006, vivi_4921852
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5006, $P5009
  vivi_4921852:
    set $P5003, $P5006
  fallback1851:
    get_who $P5002, $P5003
    set $S5001, _lex_param_1
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback1853
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5010
  fallback1853:
    $P5011 = $P5001."new"(_lex_param_2 :flat, _lex_param_3 :flat :named)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_131_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3012
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5084 = 'cuid_315_1347104163.3' 
    capture_lex $P5084 
    .lex "$prefix", $P101 
    .lex "$endlabel", $P102 
    .lex "$label_list_ops", $P103 
    .lex "$ops", $P104 
    .lex "$altcount", $P105 
    .lex "$iter", $P106 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1854
    .lex "RETURN", $P107
.annotate 'line', 3013
    $P5007 = _lex_param_1."name"()
    set $P5012, $P5007
    if $P5007 goto unless493_end1857 
.annotate 'line', 3014
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."altseq"(_lex_param_1)
    find_lex $P5008, "RETURN"
    $P5011 = $P5008($P5010)
    set $P5012, $P5011
  unless493_end1857:
.annotate 'line', 3019
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."unique"("alt")
    set $S5002, $P5014
    concat $S5001, $S5002, "_"
    box $P5015, $S5001
    set $P101, $P5015
.annotate 'line', 3020
    nqp_decontainerize $P5016, _lex_param_0
    set $S5004, $P101
    concat $S5003, $S5004, "end"
    $P5017 = $P5016."post_new"("Label", $S5003 :named("name"))
    set $P102, $P5017
.annotate 'line', 3021
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."post_new"("Ops", "$P11" :named("result"))
    set $P103, $P5019
.annotate 'line', 3022
    $P5020 = $P103."push_pirop"("new", "$P11", "\"ResizableIntegerArray\"")
.annotate 'line', 3023
    nqp_decontainerize $P5021, _lex_param_0
    find_dynamic_lex $P5023, "%*REG"
    unless_null $P5023, fallback1858
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["%REG"]
    unless_null $P5024, fallback1859
    get_hll_global $P5028, "GLOBAL"
    get_who $P5027, $P5028
    new $P5029, 'Hash'
    set $P5027["%REG"], $P5029
    set $P5024, $P5029
  fallback1859:
    unless_null $P5024, vivi_4941860
    die "Contextual %*REG not found"
    box $P5030, "Contextual %*REG not found"
    set $P5024, $P5030
  vivi_4941860:
    set $P5023, $P5024
  fallback1858:
    set $P5022, $P5023["cur"]
    unless_null $P5022, fallback1861
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5022, $P5031
  fallback1861:
    $P5032 = $P5021."post_new"("Ops", $P5022 :named("result"))
    set $P104, $P5032
.annotate 'line', 3024
    $P5033 = $P104."push"($P103)
.annotate 'line', 3025
    nqp_decontainerize $P5034, _lex_param_0
    $P5035 = $P5034."regex_mark"($P104, $P102, -1, 0)
.annotate 'line', 3026
    find_dynamic_lex $P5037, "%*REG"
    unless_null $P5037, fallback1862
    get_hll_global $P5040, "GLOBAL"
    get_who $P5039, $P5040
    set $P5038, $P5039["%REG"]
    unless_null $P5038, fallback1863
    get_hll_global $P5042, "GLOBAL"
    get_who $P5041, $P5042
    new $P5043, 'Hash'
    set $P5041["%REG"], $P5043
    set $P5038, $P5043
  fallback1863:
    unless_null $P5038, vivi_4951864
    die "Contextual %*REG not found"
    box $P5044, "Contextual %*REG not found"
    set $P5038, $P5044
  vivi_4951864:
    set $P5037, $P5038
  fallback1862:
    set $P5036, $P5037["cur"]
    unless_null $P5036, fallback1865
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5036, $P5045
  fallback1865:
    find_dynamic_lex $P5047, "%*REG"
    unless_null $P5047, fallback1866
    get_hll_global $P5050, "GLOBAL"
    get_who $P5049, $P5050
    set $P5048, $P5049["%REG"]
    unless_null $P5048, fallback1867
    get_hll_global $P5052, "GLOBAL"
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%REG"], $P5053
    set $P5048, $P5053
  fallback1867:
    unless_null $P5048, vivi_4961868
    die "Contextual %*REG not found"
    box $P5054, "Contextual %*REG not found"
    set $P5048, $P5054
  vivi_4961868:
    set $P5047, $P5048
  fallback1866:
    set $P5046, $P5047["pos"]
    unless_null $P5046, fallback1869
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5046, $P5055
  fallback1869:
.annotate 'line', 3027
    nqp_decontainerize $P5056, _lex_param_0
    $P5057 = _lex_param_1."name"()
    $P5058 = $P5056."escape"($P5057)
    $P5059 = $P103."result"()
    $P5060 = $P104."push_pirop"("callmethod", "\"!alt\"", $P5036, $P5046, $P5058, $P5059)
.annotate 'line', 3028
    find_dynamic_lex $P5062, "%*REG"
    unless_null $P5062, fallback1870
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    set $P5063, $P5064["%REG"]
    unless_null $P5063, fallback1871
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    new $P5068, 'Hash'
    set $P5066["%REG"], $P5068
    set $P5063, $P5068
  fallback1871:
    unless_null $P5063, vivi_4971872
    die "Contextual %*REG not found"
    box $P5069, "Contextual %*REG not found"
    set $P5063, $P5069
  vivi_4971872:
    set $P5062, $P5063
  fallback1870:
    set $P5061, $P5062["fail"]
    unless_null $P5061, fallback1873
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5061, $P5070
  fallback1873:
    $P5071 = $P104."push_pirop"("goto", $P5061)
    box $P5072, 0
    set $P105, $P5072
.annotate 'line', 3032
    $P5074 = _lex_param_1."list"()
    iter $P5073, $P5074
    set $P106, $P5073
  while498_test1874:
    set $P5077, $P106
    unless $P106 goto while498_done1878 
  while498_redo1876:
    .const 'Sub' $P5075 = 'cuid_315_1347104163.3' 
    capture_lex $P5075
    $P5076 = $P5075()
    set $P5077, $P5076
    goto while498_test1874 
  while498_done1878:
.annotate 'line', 3042
    $P5078 = $P104."push"($P102)
.annotate 'line', 3043
    $P5079 = _lex_param_1."backtrack"()
    set $S5005, $P5079
    iseq $I5001, $S5005, "r"
    box $P5083, $I5001
    set $P5082, $P5083
    unless $I5001 goto if499_end1880 
    nqp_decontainerize $P5080, _lex_param_0
    $P5081 = $P5080."regex_commit"($P104, $P102)
    set $P5082, $P5081
  if499_end1880:
    goto lexotic_1855
  lexotic_1854:
    .get_results ($P104)
  lexotic_1855:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_315_1347104163.3") :anon :lex :outer("cuid_131_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3033
    .lex "$altlabel", $P101 
    .lex "$apost", $P102 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 3034
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$prefix"
    set $S5002, $P5005
    find_lex $P5006, "$altcount"
    set $S5003, $P5006
    concat $S5001, $S5002, $S5003
    $P5007 = $P5003."post_new"("Label", $S5001 :named("name"))
    set $P101, $P5007
.annotate 'line', 3035
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5011, "$iter"
    shift $P5010, $P5011
    $P5012 = $P5008."regex_post"($P5010)
    set $P102, $P5012
.annotate 'line', 3036
    find_lex $P5013, "$ops"
    $P5014 = $P5013."push"($P101)
.annotate 'line', 3037
    find_lex $P5015, "$ops"
    $P5016 = $P5015."push"($P102)
.annotate 'line', 3038
    find_lex $P5017, "$ops"
    find_lex $P5018, "$endlabel"
    $P5019 = $P5017."push_pirop"("goto", $P5018)
.annotate 'line', 3039
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
.sub "altseq" :subid("cuid_132_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3047
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
.annotate 'line', 3048
    nqp_decontainerize $P5008, _lex_param_0
    find_dynamic_lex $P5010, "%*REG"
    unless_null $P5010, fallback1881
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["%REG"]
    unless_null $P5011, fallback1882
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    new $P5016, 'Hash'
    set $P5014["%REG"], $P5016
    set $P5011, $P5016
  fallback1882:
    unless_null $P5011, vivi_5001883
    die "Contextual %*REG not found"
    box $P5017, "Contextual %*REG not found"
    set $P5011, $P5017
  vivi_5001883:
    set $P5010, $P5011
  fallback1881:
    set $P5009, $P5010["cur"]
    unless_null $P5009, fallback1884
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5018
  fallback1884:
    $P5019 = $P5008."post_new"("Ops", $P5009 :named("result"))
    set $P101, $P5019
.annotate 'line', 3049
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."unique"("alt")
    set $S5002, $P5021
    concat $S5001, $S5002, "_"
    box $P5022, $S5001
    set $P102, $P5022
    box $P5023, 0
    set $P103, $P5023
.annotate 'line', 3051
    $P5025 = _lex_param_1."list"()
    iter $P5024, $P5025
    set $P104, $P5024
.annotate 'line', 3052
    nqp_decontainerize $P5026, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "end"
    $P5027 = $P5026."post_new"("Label", $S5003 :named("name"))
    set $P105, $P5027
.annotate 'line', 3053
    nqp_decontainerize $P5028, _lex_param_0
    set $S5006, $P102
    set $S5007, $P103
    concat $S5005, $S5006, $S5007
    $P5029 = $P5028."post_new"("Label", $S5005 :named("name"))
    set $P106, $P5029
.annotate 'line', 3054
    nqp_decontainerize $P5030, _lex_param_0
    shift $P5031, $P104
    $P5032 = $P5030."regex_post"($P5031)
    set $P107, $P5032
  while501_test1885:
    set $P5053, $P104
    unless $P104 goto while501_done1889 
  while501_redo1887:
.annotate 'line', 3055
.annotate 'line', 3056
    $P5033 = $P101."push"($P106)
    set tmp_4, $P103
    set $N5002, tmp_4
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5034, $N5001
    set $P103, $P5034
.annotate 'line', 3058
    nqp_decontainerize $P5034, _lex_param_0
    set $S5009, $P102
    set $S5010, $P103
    concat $S5008, $S5009, $S5010
    $P5035 = $P5034."post_new"("Label", $S5008 :named("name"))
    set $P106, $P5035
.annotate 'line', 3059
    nqp_decontainerize $P5036, _lex_param_0
    find_dynamic_lex $P5038, "%*REG"
    unless_null $P5038, fallback1890
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    set $P5039, $P5040["%REG"]
    unless_null $P5039, fallback1891
    get_hll_global $P5043, "GLOBAL"
    get_who $P5042, $P5043
    new $P5044, 'Hash'
    set $P5042["%REG"], $P5044
    set $P5039, $P5044
  fallback1891:
    unless_null $P5039, vivi_5021892
    die "Contextual %*REG not found"
    box $P5045, "Contextual %*REG not found"
    set $P5039, $P5045
  vivi_5021892:
    set $P5038, $P5039
  fallback1890:
    set $P5037, $P5038["pos"]
    unless_null $P5037, fallback1893
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5037, $P5046
  fallback1893:
    $P5047 = $P5036."regex_mark"($P101, $P106, $P5037, 0)
.annotate 'line', 3060
    $P5048 = $P101."push"($P107)
.annotate 'line', 3061
    $P5049 = $P101."push_pirop"("goto", $P105)
.annotate 'line', 3062
    nqp_decontainerize $P5050, _lex_param_0
    shift $P5051, $P104
    $P5052 = $P5050."regex_post"($P5051)
    set $P107, $P5052
    set $P5053, $P107
    goto while501_test1885 
  while501_done1889:
.annotate 'line', 3064
    $P5054 = $P101."push"($P106)
.annotate 'line', 3065
    $P5055 = $P101."push"($P107)
.annotate 'line', 3066
    $P5056 = $P101."push"($P105)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_133_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3070
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$subtype", $P102 
    .lex "$donelabel", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 3071
    nqp_decontainerize $P5004, _lex_param_0
    find_dynamic_lex $P5006, "%*REG"
    unless_null $P5006, fallback1894
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["%REG"]
    unless_null $P5007, fallback1895
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%REG"], $P5012
    set $P5007, $P5012
  fallback1895:
    unless_null $P5007, vivi_5031896
    die "Contextual %*REG not found"
    box $P5013, "Contextual %*REG not found"
    set $P5007, $P5013
  vivi_5031896:
    set $P5006, $P5007
  fallback1894:
    set $P5005, $P5006["cur"]
    unless_null $P5005, fallback1897
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5014
  fallback1897:
    $P5015 = $P5004."post_new"("Ops", $P5005 :named("result"))
    set $P101, $P5015
.annotate 'line', 3072
    $P5016 = _lex_param_1."subtype"()
    set $P102, $P5016
.annotate 'line', 3073
    nqp_decontainerize $P5017, _lex_param_0
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxanchor")
    set $S5002, $P5019
    concat $S5001, $S5002, "_done"
    $P5020 = $P5017."post_new"("Label", $S5001 :named("name"))
    set $P103, $P5020
    set $S5003, $P102
    iseq $I5001, $S5003, "bos"
    unless $I5001 goto if504_else1898 
.annotate 'line', 3074
.annotate 'line', 3075
    find_dynamic_lex $P5022, "%*REG"
    unless_null $P5022, fallback1900
    get_hll_global $P5025, "GLOBAL"
    get_who $P5024, $P5025
    set $P5023, $P5024["%REG"]
    unless_null $P5023, fallback1901
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    new $P5028, 'Hash'
    set $P5026["%REG"], $P5028
    set $P5023, $P5028
  fallback1901:
    unless_null $P5023, vivi_5051902
    die "Contextual %*REG not found"
    box $P5029, "Contextual %*REG not found"
    set $P5023, $P5029
  vivi_5051902:
    set $P5022, $P5023
  fallback1900:
    set $P5021, $P5022["pos"]
    unless_null $P5021, fallback1903
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5021, $P5030
  fallback1903:
    find_dynamic_lex $P5032, "%*REG"
    unless_null $P5032, fallback1904
    get_hll_global $P5035, "GLOBAL"
    get_who $P5034, $P5035
    set $P5033, $P5034["%REG"]
    unless_null $P5033, fallback1905
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    new $P5038, 'Hash'
    set $P5036["%REG"], $P5038
    set $P5033, $P5038
  fallback1905:
    unless_null $P5033, vivi_5061906
    die "Contextual %*REG not found"
    box $P5039, "Contextual %*REG not found"
    set $P5033, $P5039
  vivi_5061906:
    set $P5032, $P5033
  fallback1904:
    set $P5031, $P5032["fail"]
    unless_null $P5031, fallback1907
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5031, $P5040
  fallback1907:
    $P5041 = $P101."push_pirop"("ne", $P5021, 0, $P5031)
    set $P5447, $P5041
    goto if504_end1899
  if504_else1898:
    set $S5004, $P102
    iseq $I5002, $S5004, "eos"
    unless $I5002 goto if507_else1908 
.annotate 'line', 3077
.annotate 'line', 3078
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback1910
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback1911
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback1911:
    unless_null $P5044, vivi_5081912
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_5081912:
    set $P5043, $P5044
  fallback1910:
    set $P5042, $P5043["pos"]
    unless_null $P5042, fallback1913
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5042, $P5051
  fallback1913:
    find_dynamic_lex $P5053, "%*REG"
    unless_null $P5053, fallback1914
    get_hll_global $P5056, "GLOBAL"
    get_who $P5055, $P5056
    set $P5054, $P5055["%REG"]
    unless_null $P5054, fallback1915
    get_hll_global $P5058, "GLOBAL"
    get_who $P5057, $P5058
    new $P5059, 'Hash'
    set $P5057["%REG"], $P5059
    set $P5054, $P5059
  fallback1915:
    unless_null $P5054, vivi_5091916
    die "Contextual %*REG not found"
    box $P5060, "Contextual %*REG not found"
    set $P5054, $P5060
  vivi_5091916:
    set $P5053, $P5054
  fallback1914:
    set $P5052, $P5053["eos"]
    unless_null $P5052, fallback1917
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5052, $P5061
  fallback1917:
    find_dynamic_lex $P5063, "%*REG"
    unless_null $P5063, fallback1918
    get_hll_global $P5066, "GLOBAL"
    get_who $P5065, $P5066
    set $P5064, $P5065["%REG"]
    unless_null $P5064, fallback1919
    get_hll_global $P5068, "GLOBAL"
    get_who $P5067, $P5068
    new $P5069, 'Hash'
    set $P5067["%REG"], $P5069
    set $P5064, $P5069
  fallback1919:
    unless_null $P5064, vivi_5101920
    die "Contextual %*REG not found"
    box $P5070, "Contextual %*REG not found"
    set $P5064, $P5070
  vivi_5101920:
    set $P5063, $P5064
  fallback1918:
    set $P5062, $P5063["fail"]
    unless_null $P5062, fallback1921
    nqp_get_sc_object $P5071, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5062, $P5071
  fallback1921:
    $P5072 = $P101."push_pirop"("lt", $P5042, $P5052, $P5062)
    set $P5446, $P5072
    goto if507_end1909
  if507_else1908:
    set $S5005, $P102
    iseq $I5003, $S5005, "lwb"
    unless $I5003 goto if511_else1922 
.annotate 'line', 3080
.annotate 'line', 3081
    find_dynamic_lex $P5074, "%*REG"
    unless_null $P5074, fallback1924
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    set $P5075, $P5076["%REG"]
    unless_null $P5075, fallback1925
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    new $P5080, 'Hash'
    set $P5078["%REG"], $P5080
    set $P5075, $P5080
  fallback1925:
    unless_null $P5075, vivi_5121926
    die "Contextual %*REG not found"
    box $P5081, "Contextual %*REG not found"
    set $P5075, $P5081
  vivi_5121926:
    set $P5074, $P5075
  fallback1924:
    set $P5073, $P5074["pos"]
    unless_null $P5073, fallback1927
    nqp_get_sc_object $P5082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5073, $P5082
  fallback1927:
    find_dynamic_lex $P5084, "%*REG"
    unless_null $P5084, fallback1928
    get_hll_global $P5087, "GLOBAL"
    get_who $P5086, $P5087
    set $P5085, $P5086["%REG"]
    unless_null $P5085, fallback1929
    get_hll_global $P5089, "GLOBAL"
    get_who $P5088, $P5089
    new $P5090, 'Hash'
    set $P5088["%REG"], $P5090
    set $P5085, $P5090
  fallback1929:
    unless_null $P5085, vivi_5131930
    die "Contextual %*REG not found"
    box $P5091, "Contextual %*REG not found"
    set $P5085, $P5091
  vivi_5131930:
    set $P5084, $P5085
  fallback1928:
    set $P5083, $P5084["eos"]
    unless_null $P5083, fallback1931
    nqp_get_sc_object $P5092, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5083, $P5092
  fallback1931:
    find_dynamic_lex $P5094, "%*REG"
    unless_null $P5094, fallback1932
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    set $P5095, $P5096["%REG"]
    unless_null $P5095, fallback1933
    get_hll_global $P5099, "GLOBAL"
    get_who $P5098, $P5099
    new $P5100, 'Hash'
    set $P5098["%REG"], $P5100
    set $P5095, $P5100
  fallback1933:
    unless_null $P5095, vivi_5141934
    die "Contextual %*REG not found"
    box $P5101, "Contextual %*REG not found"
    set $P5095, $P5101
  vivi_5141934:
    set $P5094, $P5095
  fallback1932:
    set $P5093, $P5094["fail"]
    unless_null $P5093, fallback1935
    nqp_get_sc_object $P5102, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5093, $P5102
  fallback1935:
    $P5103 = $P101."push_pirop"("ge", $P5073, $P5083, $P5093)
.annotate 'line', 3082
    find_dynamic_lex $P5105, "%*REG"
    unless_null $P5105, fallback1936
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    set $P5106, $P5107["%REG"]
    unless_null $P5106, fallback1937
    get_hll_global $P5110, "GLOBAL"
    get_who $P5109, $P5110
    new $P5111, 'Hash'
    set $P5109["%REG"], $P5111
    set $P5106, $P5111
  fallback1937:
    unless_null $P5106, vivi_5151938
    die "Contextual %*REG not found"
    box $P5112, "Contextual %*REG not found"
    set $P5106, $P5112
  vivi_5151938:
    set $P5105, $P5106
  fallback1936:
    set $P5104, $P5105["tgt"]
    unless_null $P5104, fallback1939
    nqp_get_sc_object $P5113, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5104, $P5113
  fallback1939:
    find_dynamic_lex $P5115, "%*REG"
    unless_null $P5115, fallback1940
    get_hll_global $P5118, "GLOBAL"
    get_who $P5117, $P5118
    set $P5116, $P5117["%REG"]
    unless_null $P5116, fallback1941
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    new $P5121, 'Hash'
    set $P5119["%REG"], $P5121
    set $P5116, $P5121
  fallback1941:
    unless_null $P5116, vivi_5161942
    die "Contextual %*REG not found"
    box $P5122, "Contextual %*REG not found"
    set $P5116, $P5122
  vivi_5161942:
    set $P5115, $P5116
  fallback1940:
    set $P5114, $P5115["pos"]
    unless_null $P5114, fallback1943
    nqp_get_sc_object $P5123, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5114, $P5123
  fallback1943:
    $P5124 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5104, $P5114)
.annotate 'line', 3083
    find_dynamic_lex $P5126, "%*REG"
    unless_null $P5126, fallback1944
    get_hll_global $P5129, "GLOBAL"
    get_who $P5128, $P5129
    set $P5127, $P5128["%REG"]
    unless_null $P5127, fallback1945
    get_hll_global $P5131, "GLOBAL"
    get_who $P5130, $P5131
    new $P5132, 'Hash'
    set $P5130["%REG"], $P5132
    set $P5127, $P5132
  fallback1945:
    unless_null $P5127, vivi_5171946
    die "Contextual %*REG not found"
    box $P5133, "Contextual %*REG not found"
    set $P5127, $P5133
  vivi_5171946:
    set $P5126, $P5127
  fallback1944:
    set $P5125, $P5126["fail"]
    unless_null $P5125, fallback1947
    nqp_get_sc_object $P5134, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5125, $P5134
  fallback1947:
    $P5135 = $P101."push_pirop"("unless", "$I11", $P5125)
.annotate 'line', 3084
    find_dynamic_lex $P5137, "%*REG"
    unless_null $P5137, fallback1948
    get_hll_global $P5140, "GLOBAL"
    get_who $P5139, $P5140
    set $P5138, $P5139["%REG"]
    unless_null $P5138, fallback1949
    get_hll_global $P5142, "GLOBAL"
    get_who $P5141, $P5142
    new $P5143, 'Hash'
    set $P5141["%REG"], $P5143
    set $P5138, $P5143
  fallback1949:
    unless_null $P5138, vivi_5181950
    die "Contextual %*REG not found"
    box $P5144, "Contextual %*REG not found"
    set $P5138, $P5144
  vivi_5181950:
    set $P5137, $P5138
  fallback1948:
    set $P5136, $P5137["pos"]
    unless_null $P5136, fallback1951
    nqp_get_sc_object $P5145, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5136, $P5145
  fallback1951:
    $P5146 = $P101."push_pirop"("sub", "$I11", $P5136, 1)
.annotate 'line', 3085
    find_dynamic_lex $P5148, "%*REG"
    unless_null $P5148, fallback1952
    get_hll_global $P5151, "GLOBAL"
    get_who $P5150, $P5151
    set $P5149, $P5150["%REG"]
    unless_null $P5149, fallback1953
    get_hll_global $P5153, "GLOBAL"
    get_who $P5152, $P5153
    new $P5154, 'Hash'
    set $P5152["%REG"], $P5154
    set $P5149, $P5154
  fallback1953:
    unless_null $P5149, vivi_5191954
    die "Contextual %*REG not found"
    box $P5155, "Contextual %*REG not found"
    set $P5149, $P5155
  vivi_5191954:
    set $P5148, $P5149
  fallback1952:
    set $P5147, $P5148["tgt"]
    unless_null $P5147, fallback1955
    nqp_get_sc_object $P5156, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5147, $P5156
  fallback1955:
    $P5157 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5147, "$I11")
.annotate 'line', 3086
    find_dynamic_lex $P5159, "%*REG"
    unless_null $P5159, fallback1956
    get_hll_global $P5162, "GLOBAL"
    get_who $P5161, $P5162
    set $P5160, $P5161["%REG"]
    unless_null $P5160, fallback1957
    get_hll_global $P5164, "GLOBAL"
    get_who $P5163, $P5164
    new $P5165, 'Hash'
    set $P5163["%REG"], $P5165
    set $P5160, $P5165
  fallback1957:
    unless_null $P5160, vivi_5201958
    die "Contextual %*REG not found"
    box $P5166, "Contextual %*REG not found"
    set $P5160, $P5166
  vivi_5201958:
    set $P5159, $P5160
  fallback1956:
    set $P5158, $P5159["fail"]
    unless_null $P5158, fallback1959
    nqp_get_sc_object $P5167, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5158, $P5167
  fallback1959:
    $P5168 = $P101."push_pirop"("if", "$I11", $P5158)
    set $P5445, $P5168
    goto if511_end1923
  if511_else1922:
    set $S5006, $P102
    iseq $I5004, $S5006, "rwb"
    unless $I5004 goto if521_else1960 
.annotate 'line', 3088
.annotate 'line', 3089
    find_dynamic_lex $P5170, "%*REG"
    unless_null $P5170, fallback1962
    get_hll_global $P5173, "GLOBAL"
    get_who $P5172, $P5173
    set $P5171, $P5172["%REG"]
    unless_null $P5171, fallback1963
    get_hll_global $P5175, "GLOBAL"
    get_who $P5174, $P5175
    new $P5176, 'Hash'
    set $P5174["%REG"], $P5176
    set $P5171, $P5176
  fallback1963:
    unless_null $P5171, vivi_5221964
    die "Contextual %*REG not found"
    box $P5177, "Contextual %*REG not found"
    set $P5171, $P5177
  vivi_5221964:
    set $P5170, $P5171
  fallback1962:
    set $P5169, $P5170["pos"]
    unless_null $P5169, fallback1965
    nqp_get_sc_object $P5178, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5169, $P5178
  fallback1965:
    find_dynamic_lex $P5180, "%*REG"
    unless_null $P5180, fallback1966
    get_hll_global $P5183, "GLOBAL"
    get_who $P5182, $P5183
    set $P5181, $P5182["%REG"]
    unless_null $P5181, fallback1967
    get_hll_global $P5185, "GLOBAL"
    get_who $P5184, $P5185
    new $P5186, 'Hash'
    set $P5184["%REG"], $P5186
    set $P5181, $P5186
  fallback1967:
    unless_null $P5181, vivi_5231968
    die "Contextual %*REG not found"
    box $P5187, "Contextual %*REG not found"
    set $P5181, $P5187
  vivi_5231968:
    set $P5180, $P5181
  fallback1966:
    set $P5179, $P5180["fail"]
    unless_null $P5179, fallback1969
    nqp_get_sc_object $P5188, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5179, $P5188
  fallback1969:
    $P5189 = $P101."push_pirop"("le", $P5169, 0, $P5179)
.annotate 'line', 3090
    find_dynamic_lex $P5191, "%*REG"
    unless_null $P5191, fallback1970
    get_hll_global $P5194, "GLOBAL"
    get_who $P5193, $P5194
    set $P5192, $P5193["%REG"]
    unless_null $P5192, fallback1971
    get_hll_global $P5196, "GLOBAL"
    get_who $P5195, $P5196
    new $P5197, 'Hash'
    set $P5195["%REG"], $P5197
    set $P5192, $P5197
  fallback1971:
    unless_null $P5192, vivi_5241972
    die "Contextual %*REG not found"
    box $P5198, "Contextual %*REG not found"
    set $P5192, $P5198
  vivi_5241972:
    set $P5191, $P5192
  fallback1970:
    set $P5190, $P5191["tgt"]
    unless_null $P5190, fallback1973
    nqp_get_sc_object $P5199, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5190, $P5199
  fallback1973:
    find_dynamic_lex $P5201, "%*REG"
    unless_null $P5201, fallback1974
    get_hll_global $P5204, "GLOBAL"
    get_who $P5203, $P5204
    set $P5202, $P5203["%REG"]
    unless_null $P5202, fallback1975
    get_hll_global $P5206, "GLOBAL"
    get_who $P5205, $P5206
    new $P5207, 'Hash'
    set $P5205["%REG"], $P5207
    set $P5202, $P5207
  fallback1975:
    unless_null $P5202, vivi_5251976
    die "Contextual %*REG not found"
    box $P5208, "Contextual %*REG not found"
    set $P5202, $P5208
  vivi_5251976:
    set $P5201, $P5202
  fallback1974:
    set $P5200, $P5201["pos"]
    unless_null $P5200, fallback1977
    nqp_get_sc_object $P5209, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5200, $P5209
  fallback1977:
    $P5210 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5190, $P5200)
.annotate 'line', 3091
    find_dynamic_lex $P5212, "%*REG"
    unless_null $P5212, fallback1978
    get_hll_global $P5215, "GLOBAL"
    get_who $P5214, $P5215
    set $P5213, $P5214["%REG"]
    unless_null $P5213, fallback1979
    get_hll_global $P5217, "GLOBAL"
    get_who $P5216, $P5217
    new $P5218, 'Hash'
    set $P5216["%REG"], $P5218
    set $P5213, $P5218
  fallback1979:
    unless_null $P5213, vivi_5261980
    die "Contextual %*REG not found"
    box $P5219, "Contextual %*REG not found"
    set $P5213, $P5219
  vivi_5261980:
    set $P5212, $P5213
  fallback1978:
    set $P5211, $P5212["fail"]
    unless_null $P5211, fallback1981
    nqp_get_sc_object $P5220, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5211, $P5220
  fallback1981:
    $P5221 = $P101."push_pirop"("if", "$I11", $P5211)
.annotate 'line', 3092
    find_dynamic_lex $P5223, "%*REG"
    unless_null $P5223, fallback1982
    get_hll_global $P5226, "GLOBAL"
    get_who $P5225, $P5226
    set $P5224, $P5225["%REG"]
    unless_null $P5224, fallback1983
    get_hll_global $P5228, "GLOBAL"
    get_who $P5227, $P5228
    new $P5229, 'Hash'
    set $P5227["%REG"], $P5229
    set $P5224, $P5229
  fallback1983:
    unless_null $P5224, vivi_5271984
    die "Contextual %*REG not found"
    box $P5230, "Contextual %*REG not found"
    set $P5224, $P5230
  vivi_5271984:
    set $P5223, $P5224
  fallback1982:
    set $P5222, $P5223["pos"]
    unless_null $P5222, fallback1985
    nqp_get_sc_object $P5231, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5222, $P5231
  fallback1985:
    $P5232 = $P101."push_pirop"("sub", "$I11", $P5222, 1)
.annotate 'line', 3093
    find_dynamic_lex $P5234, "%*REG"
    unless_null $P5234, fallback1986
    get_hll_global $P5237, "GLOBAL"
    get_who $P5236, $P5237
    set $P5235, $P5236["%REG"]
    unless_null $P5235, fallback1987
    get_hll_global $P5239, "GLOBAL"
    get_who $P5238, $P5239
    new $P5240, 'Hash'
    set $P5238["%REG"], $P5240
    set $P5235, $P5240
  fallback1987:
    unless_null $P5235, vivi_5281988
    die "Contextual %*REG not found"
    box $P5241, "Contextual %*REG not found"
    set $P5235, $P5241
  vivi_5281988:
    set $P5234, $P5235
  fallback1986:
    set $P5233, $P5234["tgt"]
    unless_null $P5233, fallback1989
    nqp_get_sc_object $P5242, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5233, $P5242
  fallback1989:
    $P5243 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_WORD", $P5233, "$I11")
.annotate 'line', 3094
    find_dynamic_lex $P5245, "%*REG"
    unless_null $P5245, fallback1990
    get_hll_global $P5248, "GLOBAL"
    get_who $P5247, $P5248
    set $P5246, $P5247["%REG"]
    unless_null $P5246, fallback1991
    get_hll_global $P5250, "GLOBAL"
    get_who $P5249, $P5250
    new $P5251, 'Hash'
    set $P5249["%REG"], $P5251
    set $P5246, $P5251
  fallback1991:
    unless_null $P5246, vivi_5291992
    die "Contextual %*REG not found"
    box $P5252, "Contextual %*REG not found"
    set $P5246, $P5252
  vivi_5291992:
    set $P5245, $P5246
  fallback1990:
    set $P5244, $P5245["fail"]
    unless_null $P5244, fallback1993
    nqp_get_sc_object $P5253, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5244, $P5253
  fallback1993:
    $P5254 = $P101."push_pirop"("unless", "$I11", $P5244)
    set $P5444, $P5254
    goto if521_end1961
  if521_else1960:
    set $S5007, $P102
    iseq $I5005, $S5007, "bol"
    unless $I5005 goto if530_else1994 
.annotate 'line', 3096
.annotate 'line', 3097
    find_dynamic_lex $P5256, "%*REG"
    unless_null $P5256, fallback1996
    get_hll_global $P5259, "GLOBAL"
    get_who $P5258, $P5259
    set $P5257, $P5258["%REG"]
    unless_null $P5257, fallback1997
    get_hll_global $P5261, "GLOBAL"
    get_who $P5260, $P5261
    new $P5262, 'Hash'
    set $P5260["%REG"], $P5262
    set $P5257, $P5262
  fallback1997:
    unless_null $P5257, vivi_5311998
    die "Contextual %*REG not found"
    box $P5263, "Contextual %*REG not found"
    set $P5257, $P5263
  vivi_5311998:
    set $P5256, $P5257
  fallback1996:
    set $P5255, $P5256["pos"]
    unless_null $P5255, fallback1999
    nqp_get_sc_object $P5264, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5255, $P5264
  fallback1999:
    $P5265 = $P101."push_pirop"("eq", $P5255, 0, $P103)
.annotate 'line', 3098
    find_dynamic_lex $P5267, "%*REG"
    unless_null $P5267, fallback2000
    get_hll_global $P5270, "GLOBAL"
    get_who $P5269, $P5270
    set $P5268, $P5269["%REG"]
    unless_null $P5268, fallback2001
    get_hll_global $P5272, "GLOBAL"
    get_who $P5271, $P5272
    new $P5273, 'Hash'
    set $P5271["%REG"], $P5273
    set $P5268, $P5273
  fallback2001:
    unless_null $P5268, vivi_5322002
    die "Contextual %*REG not found"
    box $P5274, "Contextual %*REG not found"
    set $P5268, $P5274
  vivi_5322002:
    set $P5267, $P5268
  fallback2000:
    set $P5266, $P5267["pos"]
    unless_null $P5266, fallback2003
    nqp_get_sc_object $P5275, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5266, $P5275
  fallback2003:
    find_dynamic_lex $P5277, "%*REG"
    unless_null $P5277, fallback2004
    get_hll_global $P5280, "GLOBAL"
    get_who $P5279, $P5280
    set $P5278, $P5279["%REG"]
    unless_null $P5278, fallback2005
    get_hll_global $P5282, "GLOBAL"
    get_who $P5281, $P5282
    new $P5283, 'Hash'
    set $P5281["%REG"], $P5283
    set $P5278, $P5283
  fallback2005:
    unless_null $P5278, vivi_5332006
    die "Contextual %*REG not found"
    box $P5284, "Contextual %*REG not found"
    set $P5278, $P5284
  vivi_5332006:
    set $P5277, $P5278
  fallback2004:
    set $P5276, $P5277["eos"]
    unless_null $P5276, fallback2007
    nqp_get_sc_object $P5285, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5276, $P5285
  fallback2007:
    find_dynamic_lex $P5287, "%*REG"
    unless_null $P5287, fallback2008
    get_hll_global $P5290, "GLOBAL"
    get_who $P5289, $P5290
    set $P5288, $P5289["%REG"]
    unless_null $P5288, fallback2009
    get_hll_global $P5292, "GLOBAL"
    get_who $P5291, $P5292
    new $P5293, 'Hash'
    set $P5291["%REG"], $P5293
    set $P5288, $P5293
  fallback2009:
    unless_null $P5288, vivi_5342010
    die "Contextual %*REG not found"
    box $P5294, "Contextual %*REG not found"
    set $P5288, $P5294
  vivi_5342010:
    set $P5287, $P5288
  fallback2008:
    set $P5286, $P5287["fail"]
    unless_null $P5286, fallback2011
    nqp_get_sc_object $P5295, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5286, $P5295
  fallback2011:
    $P5296 = $P101."push_pirop"("ge", $P5266, $P5276, $P5286)
.annotate 'line', 3099
    find_dynamic_lex $P5298, "%*REG"
    unless_null $P5298, fallback2012
    get_hll_global $P5301, "GLOBAL"
    get_who $P5300, $P5301
    set $P5299, $P5300["%REG"]
    unless_null $P5299, fallback2013
    get_hll_global $P5303, "GLOBAL"
    get_who $P5302, $P5303
    new $P5304, 'Hash'
    set $P5302["%REG"], $P5304
    set $P5299, $P5304
  fallback2013:
    unless_null $P5299, vivi_5352014
    die "Contextual %*REG not found"
    box $P5305, "Contextual %*REG not found"
    set $P5299, $P5305
  vivi_5352014:
    set $P5298, $P5299
  fallback2012:
    set $P5297, $P5298["pos"]
    unless_null $P5297, fallback2015
    nqp_get_sc_object $P5306, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5297, $P5306
  fallback2015:
    $P5307 = $P101."push_pirop"("sub", "$I11", $P5297, 1)
.annotate 'line', 3100
    find_dynamic_lex $P5309, "%*REG"
    unless_null $P5309, fallback2016
    get_hll_global $P5312, "GLOBAL"
    get_who $P5311, $P5312
    set $P5310, $P5311["%REG"]
    unless_null $P5310, fallback2017
    get_hll_global $P5314, "GLOBAL"
    get_who $P5313, $P5314
    new $P5315, 'Hash'
    set $P5313["%REG"], $P5315
    set $P5310, $P5315
  fallback2017:
    unless_null $P5310, vivi_5362018
    die "Contextual %*REG not found"
    box $P5316, "Contextual %*REG not found"
    set $P5310, $P5316
  vivi_5362018:
    set $P5309, $P5310
  fallback2016:
    set $P5308, $P5309["tgt"]
    unless_null $P5308, fallback2019
    nqp_get_sc_object $P5317, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5308, $P5317
  fallback2019:
    $P5318 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P5308, "$I11")
.annotate 'line', 3101
    find_dynamic_lex $P5320, "%*REG"
    unless_null $P5320, fallback2020
    get_hll_global $P5323, "GLOBAL"
    get_who $P5322, $P5323
    set $P5321, $P5322["%REG"]
    unless_null $P5321, fallback2021
    get_hll_global $P5325, "GLOBAL"
    get_who $P5324, $P5325
    new $P5326, 'Hash'
    set $P5324["%REG"], $P5326
    set $P5321, $P5326
  fallback2021:
    unless_null $P5321, vivi_5372022
    die "Contextual %*REG not found"
    box $P5327, "Contextual %*REG not found"
    set $P5321, $P5327
  vivi_5372022:
    set $P5320, $P5321
  fallback2020:
    set $P5319, $P5320["fail"]
    unless_null $P5319, fallback2023
    nqp_get_sc_object $P5328, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5319, $P5328
  fallback2023:
    $P5329 = $P101."push_pirop"("unless", "$I11", $P5319)
.annotate 'line', 3102
    $P5330 = $P101."push"($P103)
    set $P5443, $P5330
    goto if530_end1995
  if530_else1994:
    set $S5008, $P102
    iseq $I5006, $S5008, "eol"
    unless $I5006 goto if538_else2024 
.annotate 'line', 3104
.annotate 'line', 3105
    find_dynamic_lex $P5332, "%*REG"
    unless_null $P5332, fallback2026
    get_hll_global $P5335, "GLOBAL"
    get_who $P5334, $P5335
    set $P5333, $P5334["%REG"]
    unless_null $P5333, fallback2027
    get_hll_global $P5337, "GLOBAL"
    get_who $P5336, $P5337
    new $P5338, 'Hash'
    set $P5336["%REG"], $P5338
    set $P5333, $P5338
  fallback2027:
    unless_null $P5333, vivi_5392028
    die "Contextual %*REG not found"
    box $P5339, "Contextual %*REG not found"
    set $P5333, $P5339
  vivi_5392028:
    set $P5332, $P5333
  fallback2026:
    set $P5331, $P5332["tgt"]
    unless_null $P5331, fallback2029
    nqp_get_sc_object $P5340, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5331, $P5340
  fallback2029:
    find_dynamic_lex $P5342, "%*REG"
    unless_null $P5342, fallback2030
    get_hll_global $P5345, "GLOBAL"
    get_who $P5344, $P5345
    set $P5343, $P5344["%REG"]
    unless_null $P5343, fallback2031
    get_hll_global $P5347, "GLOBAL"
    get_who $P5346, $P5347
    new $P5348, 'Hash'
    set $P5346["%REG"], $P5348
    set $P5343, $P5348
  fallback2031:
    unless_null $P5343, vivi_5402032
    die "Contextual %*REG not found"
    box $P5349, "Contextual %*REG not found"
    set $P5343, $P5349
  vivi_5402032:
    set $P5342, $P5343
  fallback2030:
    set $P5341, $P5342["pos"]
    unless_null $P5341, fallback2033
    nqp_get_sc_object $P5350, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5341, $P5350
  fallback2033:
    $P5351 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P5331, $P5341)
.annotate 'line', 3106
    $P5352 = $P101."push_pirop"("if", "$I11", $P103)
.annotate 'line', 3107
    find_dynamic_lex $P5354, "%*REG"
    unless_null $P5354, fallback2034
    get_hll_global $P5357, "GLOBAL"
    get_who $P5356, $P5357
    set $P5355, $P5356["%REG"]
    unless_null $P5355, fallback2035
    get_hll_global $P5359, "GLOBAL"
    get_who $P5358, $P5359
    new $P5360, 'Hash'
    set $P5358["%REG"], $P5360
    set $P5355, $P5360
  fallback2035:
    unless_null $P5355, vivi_5412036
    die "Contextual %*REG not found"
    box $P5361, "Contextual %*REG not found"
    set $P5355, $P5361
  vivi_5412036:
    set $P5354, $P5355
  fallback2034:
    set $P5353, $P5354["pos"]
    unless_null $P5353, fallback2037
    nqp_get_sc_object $P5362, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5353, $P5362
  fallback2037:
    find_dynamic_lex $P5364, "%*REG"
    unless_null $P5364, fallback2038
    get_hll_global $P5367, "GLOBAL"
    get_who $P5366, $P5367
    set $P5365, $P5366["%REG"]
    unless_null $P5365, fallback2039
    get_hll_global $P5369, "GLOBAL"
    get_who $P5368, $P5369
    new $P5370, 'Hash'
    set $P5368["%REG"], $P5370
    set $P5365, $P5370
  fallback2039:
    unless_null $P5365, vivi_5422040
    die "Contextual %*REG not found"
    box $P5371, "Contextual %*REG not found"
    set $P5365, $P5371
  vivi_5422040:
    set $P5364, $P5365
  fallback2038:
    set $P5363, $P5364["eos"]
    unless_null $P5363, fallback2041
    nqp_get_sc_object $P5372, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5363, $P5372
  fallback2041:
    find_dynamic_lex $P5374, "%*REG"
    unless_null $P5374, fallback2042
    get_hll_global $P5377, "GLOBAL"
    get_who $P5376, $P5377
    set $P5375, $P5376["%REG"]
    unless_null $P5375, fallback2043
    get_hll_global $P5379, "GLOBAL"
    get_who $P5378, $P5379
    new $P5380, 'Hash'
    set $P5378["%REG"], $P5380
    set $P5375, $P5380
  fallback2043:
    unless_null $P5375, vivi_5432044
    die "Contextual %*REG not found"
    box $P5381, "Contextual %*REG not found"
    set $P5375, $P5381
  vivi_5432044:
    set $P5374, $P5375
  fallback2042:
    set $P5373, $P5374["fail"]
    unless_null $P5373, fallback2045
    nqp_get_sc_object $P5382, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5373, $P5382
  fallback2045:
    $P5383 = $P101."push_pirop"("ne", $P5353, $P5363, $P5373)
.annotate 'line', 3108
    find_dynamic_lex $P5385, "%*REG"
    unless_null $P5385, fallback2046
    get_hll_global $P5388, "GLOBAL"
    get_who $P5387, $P5388
    set $P5386, $P5387["%REG"]
    unless_null $P5386, fallback2047
    get_hll_global $P5390, "GLOBAL"
    get_who $P5389, $P5390
    new $P5391, 'Hash'
    set $P5389["%REG"], $P5391
    set $P5386, $P5391
  fallback2047:
    unless_null $P5386, vivi_5442048
    die "Contextual %*REG not found"
    box $P5392, "Contextual %*REG not found"
    set $P5386, $P5392
  vivi_5442048:
    set $P5385, $P5386
  fallback2046:
    set $P5384, $P5385["pos"]
    unless_null $P5384, fallback2049
    nqp_get_sc_object $P5393, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5384, $P5393
  fallback2049:
    $P5394 = $P101."push_pirop"("eq", $P5384, 0, $P103)
.annotate 'line', 3109
    find_dynamic_lex $P5396, "%*REG"
    unless_null $P5396, fallback2050
    get_hll_global $P5399, "GLOBAL"
    get_who $P5398, $P5399
    set $P5397, $P5398["%REG"]
    unless_null $P5397, fallback2051
    get_hll_global $P5401, "GLOBAL"
    get_who $P5400, $P5401
    new $P5402, 'Hash'
    set $P5400["%REG"], $P5402
    set $P5397, $P5402
  fallback2051:
    unless_null $P5397, vivi_5452052
    die "Contextual %*REG not found"
    box $P5403, "Contextual %*REG not found"
    set $P5397, $P5403
  vivi_5452052:
    set $P5396, $P5397
  fallback2050:
    set $P5395, $P5396["pos"]
    unless_null $P5395, fallback2053
    nqp_get_sc_object $P5404, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5395, $P5404
  fallback2053:
    $P5405 = $P101."push_pirop"("sub", "$I11", $P5395, 1)
.annotate 'line', 3110
    find_dynamic_lex $P5407, "%*REG"
    unless_null $P5407, fallback2054
    get_hll_global $P5410, "GLOBAL"
    get_who $P5409, $P5410
    set $P5408, $P5409["%REG"]
    unless_null $P5408, fallback2055
    get_hll_global $P5412, "GLOBAL"
    get_who $P5411, $P5412
    new $P5413, 'Hash'
    set $P5411["%REG"], $P5413
    set $P5408, $P5413
  fallback2055:
    unless_null $P5408, vivi_5462056
    die "Contextual %*REG not found"
    box $P5414, "Contextual %*REG not found"
    set $P5408, $P5414
  vivi_5462056:
    set $P5407, $P5408
  fallback2054:
    set $P5406, $P5407["tgt"]
    unless_null $P5406, fallback2057
    nqp_get_sc_object $P5415, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5406, $P5415
  fallback2057:
    $P5416 = $P101."push_pirop"("is_cclass", "$I11", ".CCLASS_NEWLINE", $P5406, "$I11")
.annotate 'line', 3111
    find_dynamic_lex $P5418, "%*REG"
    unless_null $P5418, fallback2058
    get_hll_global $P5421, "GLOBAL"
    get_who $P5420, $P5421
    set $P5419, $P5420["%REG"]
    unless_null $P5419, fallback2059
    get_hll_global $P5423, "GLOBAL"
    get_who $P5422, $P5423
    new $P5424, 'Hash'
    set $P5422["%REG"], $P5424
    set $P5419, $P5424
  fallback2059:
    unless_null $P5419, vivi_5472060
    die "Contextual %*REG not found"
    box $P5425, "Contextual %*REG not found"
    set $P5419, $P5425
  vivi_5472060:
    set $P5418, $P5419
  fallback2058:
    set $P5417, $P5418["fail"]
    unless_null $P5417, fallback2061
    nqp_get_sc_object $P5426, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5417, $P5426
  fallback2061:
    $P5427 = $P101."push_pirop"("if", "$I11", $P5417)
.annotate 'line', 3112
    $P5428 = $P101."push"($P103)
    set $P5442, $P5428
    goto if538_end2025
  if538_else2024:
    set $S5009, $P102
    iseq $I5007, $S5009, "fail"
    box $P5441, $I5007
    set $P5440, $P5441
    unless $I5007 goto if548_end2063 
.annotate 'line', 3114
.annotate 'line', 3115
    find_dynamic_lex $P5430, "%*REG"
    unless_null $P5430, fallback2064
    get_hll_global $P5433, "GLOBAL"
    get_who $P5432, $P5433
    set $P5431, $P5432["%REG"]
    unless_null $P5431, fallback2065
    get_hll_global $P5435, "GLOBAL"
    get_who $P5434, $P5435
    new $P5436, 'Hash'
    set $P5434["%REG"], $P5436
    set $P5431, $P5436
  fallback2065:
    unless_null $P5431, vivi_5492066
    die "Contextual %*REG not found"
    box $P5437, "Contextual %*REG not found"
    set $P5431, $P5437
  vivi_5492066:
    set $P5430, $P5431
  fallback2064:
    set $P5429, $P5430["fail"]
    unless_null $P5429, fallback2067
    nqp_get_sc_object $P5438, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5429, $P5438
  fallback2067:
    $P5439 = $P101."push_pirop"("goto", $P5429)
    set $P5440, $P5439
  if548_end2063:
    set $P5442, $P5440
  if538_end2025:
    set $P5443, $P5442
  if530_end1995:
    set $P5444, $P5443
  if521_end1961:
    set $P5445, $P5444
  if511_end1923:
    set $P5446, $P5445
  if507_end1909:
    set $P5447, $P5446
  if504_end1899:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_134_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3131
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5069 = 'cuid_316_1347104163.3' 
    capture_lex $P5069 
    .lex "$ops", $P101 
    .lex "$subtype", $P102 
    .lex "$cclass", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 3132
    nqp_decontainerize $P5004, _lex_param_0
    find_dynamic_lex $P5006, "%*REG"
    unless_null $P5006, fallback2068
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["%REG"]
    unless_null $P5007, fallback2069
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%REG"], $P5012
    set $P5007, $P5012
  fallback2069:
    unless_null $P5007, vivi_5502070
    die "Contextual %*REG not found"
    box $P5013, "Contextual %*REG not found"
    set $P5007, $P5013
  vivi_5502070:
    set $P5006, $P5007
  fallback2068:
    set $P5005, $P5006["cur"]
    unless_null $P5005, fallback2071
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5014
  fallback2071:
    $P5015 = $P5004."post_new"("Ops", $P5005 :named("result"))
    set $P101, $P5015
.annotate 'line', 3133
    $P5016 = _lex_param_1."subtype"()
    set $P102, $P5016
.annotate 'line', 3134
    find_dynamic_lex $P5018, "%*REG"
    unless_null $P5018, fallback2072
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["%REG"]
    unless_null $P5019, fallback2073
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    new $P5024, 'Hash'
    set $P5022["%REG"], $P5024
    set $P5019, $P5024
  fallback2073:
    unless_null $P5019, vivi_5512074
    die "Contextual %*REG not found"
    box $P5025, "Contextual %*REG not found"
    set $P5019, $P5025
  vivi_5512074:
    set $P5018, $P5019
  fallback2072:
    set $P5017, $P5018["pos"]
    unless_null $P5017, fallback2075
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5026
  fallback2075:
    find_dynamic_lex $P5028, "%*REG"
    unless_null $P5028, fallback2076
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    set $P5029, $P5030["%REG"]
    unless_null $P5029, fallback2077
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    new $P5034, 'Hash'
    set $P5032["%REG"], $P5034
    set $P5029, $P5034
  fallback2077:
    unless_null $P5029, vivi_5522078
    die "Contextual %*REG not found"
    box $P5035, "Contextual %*REG not found"
    set $P5029, $P5035
  vivi_5522078:
    set $P5028, $P5029
  fallback2076:
    set $P5027, $P5028["eos"]
    unless_null $P5027, fallback2079
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5027, $P5036
  fallback2079:
    find_dynamic_lex $P5038, "%*REG"
    unless_null $P5038, fallback2080
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    set $P5039, $P5040["%REG"]
    unless_null $P5039, fallback2081
    get_hll_global $P5043, "GLOBAL"
    get_who $P5042, $P5043
    new $P5044, 'Hash'
    set $P5042["%REG"], $P5044
    set $P5039, $P5044
  fallback2081:
    unless_null $P5039, vivi_5532082
    die "Contextual %*REG not found"
    box $P5045, "Contextual %*REG not found"
    set $P5039, $P5045
  vivi_5532082:
    set $P5038, $P5039
  fallback2080:
    set $P5037, $P5038["fail"]
    unless_null $P5037, fallback2083
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5037, $P5046
  fallback2083:
    $P5047 = $P101."push_pirop"("ge", $P5017, $P5027, $P5037)
    find_lex $P5049, "%cclass_code"
    set $S5002, $P102
    downcase $S5001, $S5002
    set $P5048, $P5049[$S5001]
    unless_null $P5048, fallback2084
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5048, $P5050
  fallback2084:
    set $P103, $P5048
    set $P5053, $P103
    if $P103 goto unless554_end2086 
.annotate 'line', 3136
    nqp_decontainerize $P5051, _lex_param_0
    set $S5005, $P102
    concat $S5004, "Unrecognized subtype '", $S5005
    concat $S5003, $S5004, "' in QAST::Regex cclass"
    $P5052 = $P5051."panic"($S5003)
    set $P5053, $P5052
  unless554_end2086:
    set $S5006, $P103
    isne $I5001, $S5006, ".CCLASS_ANY"
    box $P5057, $I5001
    set $P5056, $P5057
    unless $I5001 goto if555_end2088 
    .const 'Sub' $P5054 = 'cuid_316_1347104163.3' 
    capture_lex $P5054
    $P5055 = $P5054()
    set $P5056, $P5055
  if555_end2088:
.annotate 'line', 3148
    find_dynamic_lex $P5059, "%*REG"
    unless_null $P5059, fallback2117
    get_hll_global $P5062, "GLOBAL"
    get_who $P5061, $P5062
    set $P5060, $P5061["%REG"]
    unless_null $P5060, fallback2118
    get_hll_global $P5064, "GLOBAL"
    get_who $P5063, $P5064
    new $P5065, 'Hash'
    set $P5063["%REG"], $P5065
    set $P5060, $P5065
  fallback2118:
    unless_null $P5060, vivi_5642119
    die "Contextual %*REG not found"
    box $P5066, "Contextual %*REG not found"
    set $P5060, $P5066
  vivi_5642119:
    set $P5059, $P5060
  fallback2117:
    set $P5058, $P5059["pos"]
    unless_null $P5058, fallback2120
    nqp_get_sc_object $P5067, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5058, $P5067
  fallback2120:
    $P5068 = $P101."push_pirop"("add", $P5058, 1)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_316_1347104163.3") :anon :lex :outer("cuid_134_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3138
    .lex "$testop", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 3139
    find_lex $P5002, "$node"
    $P5003 = $P5002."negate"()
    unless $P5003 goto if556_else2089 
    set $S5001, "if"
    goto if556_end2090
  if556_else2089:
    set $S5001, "unless"
  if556_end2090:
    box $P5004, $S5001
    set $P101, $P5004
.annotate 'line', 3140
    find_lex $P5005, "$ops"
    find_lex $P5006, "$cclass"
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2091
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2092
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2092:
    unless_null $P5009, vivi_5572093
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_5572093:
    set $P5008, $P5009
  fallback2091:
    set $P5007, $P5008["tgt"]
    unless_null $P5007, fallback2094
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5016
  fallback2094:
    find_dynamic_lex $P5018, "%*REG"
    unless_null $P5018, fallback2095
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    set $P5019, $P5020["%REG"]
    unless_null $P5019, fallback2096
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    new $P5024, 'Hash'
    set $P5022["%REG"], $P5024
    set $P5019, $P5024
  fallback2096:
    unless_null $P5019, vivi_5582097
    die "Contextual %*REG not found"
    box $P5025, "Contextual %*REG not found"
    set $P5019, $P5025
  vivi_5582097:
    set $P5018, $P5019
  fallback2095:
    set $P5017, $P5018["pos"]
    unless_null $P5017, fallback2098
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5026
  fallback2098:
    $P5027 = $P5005."push_pirop"("is_cclass", "$I11", $P5006, $P5007, $P5017)
.annotate 'line', 3141
    find_lex $P5028, "$ops"
    find_dynamic_lex $P5030, "%*REG"
    unless_null $P5030, fallback2099
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    set $P5031, $P5032["%REG"]
    unless_null $P5031, fallback2100
    get_hll_global $P5035, "GLOBAL"
    get_who $P5034, $P5035
    new $P5036, 'Hash'
    set $P5034["%REG"], $P5036
    set $P5031, $P5036
  fallback2100:
    unless_null $P5031, vivi_5592101
    die "Contextual %*REG not found"
    box $P5037, "Contextual %*REG not found"
    set $P5031, $P5037
  vivi_5592101:
    set $P5030, $P5031
  fallback2099:
    set $P5029, $P5030["fail"]
    unless_null $P5029, fallback2102
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5029, $P5038
  fallback2102:
    $P5039 = $P5028."push_pirop"($P101, "$I11", $P5029)
    find_lex $P5040, "$subtype"
    set $S5002, $P5040
    iseq $I5001, $S5002, "nl"
    box $P5078, $I5001
    set $P5077, $P5078
    unless $I5001 goto if560_end2104 
.annotate 'line', 3142
.annotate 'line', 3143
    find_lex $P5041, "$ops"
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback2105
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback2106
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback2106:
    unless_null $P5044, vivi_5612107
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_5612107:
    set $P5043, $P5044
  fallback2105:
    set $P5042, $P5043["tgt"]
    unless_null $P5042, fallback2108
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5042, $P5051
  fallback2108:
    find_dynamic_lex $P5053, "%*REG"
    unless_null $P5053, fallback2109
    get_hll_global $P5056, "GLOBAL"
    get_who $P5055, $P5056
    set $P5054, $P5055["%REG"]
    unless_null $P5054, fallback2110
    get_hll_global $P5058, "GLOBAL"
    get_who $P5057, $P5058
    new $P5059, 'Hash'
    set $P5057["%REG"], $P5059
    set $P5054, $P5059
  fallback2110:
    unless_null $P5054, vivi_5622111
    die "Contextual %*REG not found"
    box $P5060, "Contextual %*REG not found"
    set $P5054, $P5060
  vivi_5622111:
    set $P5053, $P5054
  fallback2109:
    set $P5052, $P5053["pos"]
    unless_null $P5052, fallback2112
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5052, $P5061
  fallback2112:
    $P5062 = $P5041."push_pirop"("substr", "$S10", $P5042, $P5052, 2)
.annotate 'line', 3144
    find_lex $P5063, "$ops"
    $P5064 = $P5063."push_pirop"("iseq", "$I11", "$S10", "\"\\r\\n\"")
.annotate 'line', 3145
    find_lex $P5065, "$ops"
    find_dynamic_lex $P5067, "%*REG"
    unless_null $P5067, fallback2113
    get_hll_global $P5070, "GLOBAL"
    get_who $P5069, $P5070
    set $P5068, $P5069["%REG"]
    unless_null $P5068, fallback2114
    get_hll_global $P5072, "GLOBAL"
    get_who $P5071, $P5072
    new $P5073, 'Hash'
    set $P5071["%REG"], $P5073
    set $P5068, $P5073
  fallback2114:
    unless_null $P5068, vivi_5632115
    die "Contextual %*REG not found"
    box $P5074, "Contextual %*REG not found"
    set $P5068, $P5074
  vivi_5632115:
    set $P5067, $P5068
  fallback2113:
    set $P5066, $P5067["pos"]
    unless_null $P5066, fallback2116
    nqp_get_sc_object $P5075, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5066, $P5075
  fallback2116:
    $P5076 = $P5065."push_pirop"("add", $P5066, "$I11")
    set $P5077, $P5076
  if560_end2104:
    .return ($P5077) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_135_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3152
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5020 = 'cuid_317_1347104163.3' 
    capture_lex $P5020 
    .lex "$ops", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 3153
    nqp_decontainerize $P5002, _lex_param_0
    find_dynamic_lex $P5004, "%*REG"
    unless_null $P5004, fallback2121
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["%REG"]
    unless_null $P5005, fallback2122
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%REG"], $P5010
    set $P5005, $P5010
  fallback2122:
    unless_null $P5005, vivi_5652123
    die "Contextual %*REG not found"
    box $P5011, "Contextual %*REG not found"
    set $P5005, $P5011
  vivi_5652123:
    set $P5004, $P5005
  fallback2121:
    set $P5003, $P5004["cur"]
    unless_null $P5003, fallback2124
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5003, $P5012
  fallback2124:
    $P5013 = $P5002."post_new"("Ops", $P5003 :named("result"))
    set $P101, $P5013
.annotate 'line', 3154
    $P5017 = _lex_param_1."list"()
    set $P5014, $P5017
    iter $P5016, $P5017
  for_next2125:
    unless $P5016, for_done2127
    shift $P5019, $P5016
  for_redo2126:
    .const 'Sub' $P5018 = 'cuid_317_1347104163.3' 
    capture_lex $P5018
    $P5014 = $P5018($P5019)
    goto for_next2125
  for_done2127:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_317_1347104163.3") :anon :lex :outer("cuid_135_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3154
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
.sub "conj" :subid("cuid_136_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3158
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
.sub "conjseq" :subid("cuid_137_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$conjlabel", $P103 
    .lex "$firstlabel", $P104 
    .lex "$iter", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
.annotate 'line', 3161
    nqp_decontainerize $P5006, _lex_param_0
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2128
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2129
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2129:
    unless_null $P5009, vivi_5662130
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_5662130:
    set $P5008, $P5009
  fallback2128:
    set $P5007, $P5008["cur"]
    unless_null $P5007, fallback2131
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5016
  fallback2131:
    $P5017 = $P5006."post_new"("Ops", $P5007 :named("result"))
    set $P101, $P5017
.annotate 'line', 3162
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxconj")
    set $S5002, $P5019
    concat $S5001, $S5002, "_"
    box $P5020, $S5001
    set $P102, $P5020
.annotate 'line', 3163
    nqp_decontainerize $P5021, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "fail"
    $P5022 = $P5021."post_new"("Label", $S5003 :named("name"))
    set $P103, $P5022
.annotate 'line', 3164
    nqp_decontainerize $P5023, _lex_param_0
    set $S5006, $P102
    concat $S5005, $S5006, "first"
    $P5024 = $P5023."post_new"("Label", $S5005 :named("name"))
    set $P104, $P5024
.annotate 'line', 3165
    $P5026 = _lex_param_1."list"()
    iter $P5025, $P5026
    set $P105, $P5025
.annotate 'line', 3167
    nqp_decontainerize $P5027, _lex_param_0
    find_dynamic_lex $P5029, "%*REG"
    unless_null $P5029, fallback2132
    get_hll_global $P5032, "GLOBAL"
    get_who $P5031, $P5032
    set $P5030, $P5031["%REG"]
    unless_null $P5030, fallback2133
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%REG"], $P5035
    set $P5030, $P5035
  fallback2133:
    unless_null $P5030, vivi_5672134
    die "Contextual %*REG not found"
    box $P5036, "Contextual %*REG not found"
    set $P5030, $P5036
  vivi_5672134:
    set $P5029, $P5030
  fallback2132:
    set $P5028, $P5029["pos"]
    unless_null $P5028, fallback2135
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5028, $P5037
  fallback2135:
    $P5038 = $P5027."regex_mark"($P101, $P103, $P5028, 0)
.annotate 'line', 3168
    $P5039 = $P101."push_pirop"("goto", $P104)
.annotate 'line', 3169
    $P5040 = $P101."push"($P103)
.annotate 'line', 3170
    find_dynamic_lex $P5042, "%*REG"
    unless_null $P5042, fallback2136
    get_hll_global $P5045, "GLOBAL"
    get_who $P5044, $P5045
    set $P5043, $P5044["%REG"]
    unless_null $P5043, fallback2137
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    new $P5048, 'Hash'
    set $P5046["%REG"], $P5048
    set $P5043, $P5048
  fallback2137:
    unless_null $P5043, vivi_5682138
    die "Contextual %*REG not found"
    box $P5049, "Contextual %*REG not found"
    set $P5043, $P5049
  vivi_5682138:
    set $P5042, $P5043
  fallback2136:
    set $P5041, $P5042["fail"]
    unless_null $P5041, fallback2139
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5041, $P5050
  fallback2139:
    $P5051 = $P101."push_pirop"("goto", $P5041)
.annotate 'line', 3172
    $P5052 = $P101."push"($P104)
.annotate 'line', 3173
    nqp_decontainerize $P5053, _lex_param_0
    shift $P5054, $P105
    $P5055 = $P5053."regex_post"($P5054)
    $P5056 = $P101."push"($P5055)
.annotate 'line', 3175
    nqp_decontainerize $P5057, _lex_param_0
    $P5058 = $P5057."regex_peek"($P101, $P103, "$I11")
.annotate 'line', 3176
    nqp_decontainerize $P5059, _lex_param_0
    find_dynamic_lex $P5061, "%*REG"
    unless_null $P5061, fallback2140
    get_hll_global $P5064, "GLOBAL"
    get_who $P5063, $P5064
    set $P5062, $P5063["%REG"]
    unless_null $P5062, fallback2141
    get_hll_global $P5066, "GLOBAL"
    get_who $P5065, $P5066
    new $P5067, 'Hash'
    set $P5065["%REG"], $P5067
    set $P5062, $P5067
  fallback2141:
    unless_null $P5062, vivi_5692142
    die "Contextual %*REG not found"
    box $P5068, "Contextual %*REG not found"
    set $P5062, $P5068
  vivi_5692142:
    set $P5061, $P5062
  fallback2140:
    set $P5060, $P5061["pos"]
    unless_null $P5060, fallback2143
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5060, $P5069
  fallback2143:
    $P5070 = $P5059."regex_mark"($P101, $P103, "$I11", $P5060)
  while570_test2144:
    set $P5109, $P105
    unless $P105 goto while570_done2148 
  while570_redo2146:
.annotate 'line', 3178
.annotate 'line', 3179
    find_dynamic_lex $P5072, "%*REG"
    unless_null $P5072, fallback2149
    get_hll_global $P5075, "GLOBAL"
    get_who $P5074, $P5075
    set $P5073, $P5074["%REG"]
    unless_null $P5073, fallback2150
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    new $P5078, 'Hash'
    set $P5076["%REG"], $P5078
    set $P5073, $P5078
  fallback2150:
    unless_null $P5073, vivi_5712151
    die "Contextual %*REG not found"
    box $P5079, "Contextual %*REG not found"
    set $P5073, $P5079
  vivi_5712151:
    set $P5072, $P5073
  fallback2149:
    set $P5071, $P5072["pos"]
    unless_null $P5071, fallback2152
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5071, $P5080
  fallback2152:
    $P5081 = $P101."push_pirop"("set", $P5071, "$I11")
.annotate 'line', 3180
    nqp_decontainerize $P5082, _lex_param_0
    shift $P5083, $P105
    $P5084 = $P5082."regex_post"($P5083)
    $P5085 = $P101."push"($P5084)
.annotate 'line', 3181
    nqp_decontainerize $P5086, _lex_param_0
    $P5087 = $P5086."regex_peek"($P101, $P103, "$I11", "$I12")
.annotate 'line', 3182
    find_dynamic_lex $P5089, "%*REG"
    unless_null $P5089, fallback2153
    get_hll_global $P5092, "GLOBAL"
    get_who $P5091, $P5092
    set $P5090, $P5091["%REG"]
    unless_null $P5090, fallback2154
    get_hll_global $P5094, "GLOBAL"
    get_who $P5093, $P5094
    new $P5095, 'Hash'
    set $P5093["%REG"], $P5095
    set $P5090, $P5095
  fallback2154:
    unless_null $P5090, vivi_5722155
    die "Contextual %*REG not found"
    box $P5096, "Contextual %*REG not found"
    set $P5090, $P5096
  vivi_5722155:
    set $P5089, $P5090
  fallback2153:
    set $P5088, $P5089["pos"]
    unless_null $P5088, fallback2156
    nqp_get_sc_object $P5097, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5088, $P5097
  fallback2156:
    find_dynamic_lex $P5099, "%*REG"
    unless_null $P5099, fallback2157
    get_hll_global $P5102, "GLOBAL"
    get_who $P5101, $P5102
    set $P5100, $P5101["%REG"]
    unless_null $P5100, fallback2158
    get_hll_global $P5104, "GLOBAL"
    get_who $P5103, $P5104
    new $P5105, 'Hash'
    set $P5103["%REG"], $P5105
    set $P5100, $P5105
  fallback2158:
    unless_null $P5100, vivi_5732159
    die "Contextual %*REG not found"
    box $P5106, "Contextual %*REG not found"
    set $P5100, $P5106
  vivi_5732159:
    set $P5099, $P5100
  fallback2157:
    set $P5098, $P5099["fail"]
    unless_null $P5098, fallback2160
    nqp_get_sc_object $P5107, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5098, $P5107
  fallback2160:
    $P5108 = $P101."push_pirop"("ne", $P5088, "$I12", $P5098)
    set $P5109, $P5108
    goto while570_test2144 
  while570_done2148:
.annotate 'line', 3184
    $P5110 = _lex_param_1."subtype"()
    set $S5007, $P5110
    iseq $I5001, $S5007, "zerowidth"
    box $P5123, $I5001
    set $P5122, $P5123
    unless $I5001 goto if574_end2162 
    find_dynamic_lex $P5112, "%*REG"
    unless_null $P5112, fallback2163
    get_hll_global $P5115, "GLOBAL"
    get_who $P5114, $P5115
    set $P5113, $P5114["%REG"]
    unless_null $P5113, fallback2164
    get_hll_global $P5117, "GLOBAL"
    get_who $P5116, $P5117
    new $P5118, 'Hash'
    set $P5116["%REG"], $P5118
    set $P5113, $P5118
  fallback2164:
    unless_null $P5113, vivi_5752165
    die "Contextual %*REG not found"
    box $P5119, "Contextual %*REG not found"
    set $P5113, $P5119
  vivi_5752165:
    set $P5112, $P5113
  fallback2163:
    set $P5111, $P5112["pos"]
    unless_null $P5111, fallback2166
    nqp_get_sc_object $P5120, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5111, $P5120
  fallback2166:
    $P5121 = $P101."push_pirop"("set", $P5111, "$I11")
    set $P5122, $P5121
  if574_end2162:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_138_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3188
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$charlist", $P102 
    .lex "$testop", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
.annotate 'line', 3189
    nqp_decontainerize $P5004, _lex_param_0
    find_dynamic_lex $P5006, "%*REG"
    unless_null $P5006, fallback2167
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["%REG"]
    unless_null $P5007, fallback2168
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%REG"], $P5012
    set $P5007, $P5012
  fallback2168:
    unless_null $P5007, vivi_5762169
    die "Contextual %*REG not found"
    box $P5013, "Contextual %*REG not found"
    set $P5007, $P5013
  vivi_5762169:
    set $P5006, $P5007
  fallback2167:
    set $P5005, $P5006["cur"]
    unless_null $P5005, fallback2170
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5005, $P5014
  fallback2170:
    $P5015 = $P5004."post_new"("Ops", $P5005 :named("result"))
    set $P101, $P5015
.annotate 'line', 3190
    nqp_decontainerize $P5016, _lex_param_0
    set $P5017, _lex_param_1[0]
    unless_null $P5017, fallback2171
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5018
  fallback2171:
    $P5019 = $P5016."rxescape"($P5017)
    set $P102, $P5019
.annotate 'line', 3191
    $P5020 = _lex_param_1."negate"()
    unless $P5020 goto if577_else2172 
    set $S5001, "ge"
    goto if577_end2173
  if577_else2172:
    set $S5001, "lt"
  if577_end2173:
    box $P5021, $S5001
    set $P103, $P5021
.annotate 'line', 3192
    find_dynamic_lex $P5023, "%*REG"
    unless_null $P5023, fallback2174
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    set $P5024, $P5025["%REG"]
    unless_null $P5024, fallback2175
    get_hll_global $P5028, "GLOBAL"
    get_who $P5027, $P5028
    new $P5029, 'Hash'
    set $P5027["%REG"], $P5029
    set $P5024, $P5029
  fallback2175:
    unless_null $P5024, vivi_5782176
    die "Contextual %*REG not found"
    box $P5030, "Contextual %*REG not found"
    set $P5024, $P5030
  vivi_5782176:
    set $P5023, $P5024
  fallback2174:
    set $P5022, $P5023["pos"]
    unless_null $P5022, fallback2177
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5022, $P5031
  fallback2177:
    find_dynamic_lex $P5033, "%*REG"
    unless_null $P5033, fallback2178
    get_hll_global $P5036, "GLOBAL"
    get_who $P5035, $P5036
    set $P5034, $P5035["%REG"]
    unless_null $P5034, fallback2179
    get_hll_global $P5038, "GLOBAL"
    get_who $P5037, $P5038
    new $P5039, 'Hash'
    set $P5037["%REG"], $P5039
    set $P5034, $P5039
  fallback2179:
    unless_null $P5034, vivi_5792180
    die "Contextual %*REG not found"
    box $P5040, "Contextual %*REG not found"
    set $P5034, $P5040
  vivi_5792180:
    set $P5033, $P5034
  fallback2178:
    set $P5032, $P5033["eos"]
    unless_null $P5032, fallback2181
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5032, $P5041
  fallback2181:
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback2182
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback2183
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback2183:
    unless_null $P5044, vivi_5802184
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_5802184:
    set $P5043, $P5044
  fallback2182:
    set $P5042, $P5043["fail"]
    unless_null $P5042, fallback2185
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5042, $P5051
  fallback2185:
    $P5052 = $P101."push_pirop"("ge", $P5022, $P5032, $P5042)
.annotate 'line', 3193
    find_dynamic_lex $P5054, "%*REG"
    unless_null $P5054, fallback2186
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    set $P5055, $P5056["%REG"]
    unless_null $P5055, fallback2187
    get_hll_global $P5059, "GLOBAL"
    get_who $P5058, $P5059
    new $P5060, 'Hash'
    set $P5058["%REG"], $P5060
    set $P5055, $P5060
  fallback2187:
    unless_null $P5055, vivi_5812188
    die "Contextual %*REG not found"
    box $P5061, "Contextual %*REG not found"
    set $P5055, $P5061
  vivi_5812188:
    set $P5054, $P5055
  fallback2186:
    set $P5053, $P5054["tgt"]
    unless_null $P5053, fallback2189
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5053, $P5062
  fallback2189:
    find_dynamic_lex $P5064, "%*REG"
    unless_null $P5064, fallback2190
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    set $P5065, $P5066["%REG"]
    unless_null $P5065, fallback2191
    get_hll_global $P5069, "GLOBAL"
    get_who $P5068, $P5069
    new $P5070, 'Hash'
    set $P5068["%REG"], $P5070
    set $P5065, $P5070
  fallback2191:
    unless_null $P5065, vivi_5822192
    die "Contextual %*REG not found"
    box $P5071, "Contextual %*REG not found"
    set $P5065, $P5071
  vivi_5822192:
    set $P5064, $P5065
  fallback2190:
    set $P5063, $P5064["pos"]
    unless_null $P5063, fallback2193
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5063, $P5072
  fallback2193:
    $P5073 = $P101."push_pirop"("substr", "$S11", $P5053, $P5063, 1)
.annotate 'line', 3194
    $P5074 = $P101."push_pirop"("index", "$I11", $P102, "$S11")
.annotate 'line', 3195
    find_dynamic_lex $P5076, "%*REG"
    unless_null $P5076, fallback2194
    get_hll_global $P5079, "GLOBAL"
    get_who $P5078, $P5079
    set $P5077, $P5078["%REG"]
    unless_null $P5077, fallback2195
    get_hll_global $P5081, "GLOBAL"
    get_who $P5080, $P5081
    new $P5082, 'Hash'
    set $P5080["%REG"], $P5082
    set $P5077, $P5082
  fallback2195:
    unless_null $P5077, vivi_5832196
    die "Contextual %*REG not found"
    box $P5083, "Contextual %*REG not found"
    set $P5077, $P5083
  vivi_5832196:
    set $P5076, $P5077
  fallback2194:
    set $P5075, $P5076["fail"]
    unless_null $P5075, fallback2197
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5075, $P5084
  fallback2197:
    $P5085 = $P101."push_pirop"($P103, "$I11", 0, $P5075)
.annotate 'line', 3196
    $P5086 = _lex_param_1."subtype"()
    set $S5002, $P5086
    iseq $I5001, $S5002, "zerowidth"
    box $P5099, $I5001
    set $P5098, $P5099
    if $I5001 goto unless584_end2199 
    find_dynamic_lex $P5088, "%*REG"
    unless_null $P5088, fallback2200
    get_hll_global $P5091, "GLOBAL"
    get_who $P5090, $P5091
    set $P5089, $P5090["%REG"]
    unless_null $P5089, fallback2201
    get_hll_global $P5093, "GLOBAL"
    get_who $P5092, $P5093
    new $P5094, 'Hash'
    set $P5092["%REG"], $P5094
    set $P5089, $P5094
  fallback2201:
    unless_null $P5089, vivi_5852202
    die "Contextual %*REG not found"
    box $P5095, "Contextual %*REG not found"
    set $P5089, $P5095
  vivi_5852202:
    set $P5088, $P5089
  fallback2200:
    set $P5087, $P5088["pos"]
    unless_null $P5087, fallback2203
    nqp_get_sc_object $P5096, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5087, $P5096
  fallback2203:
    $P5097 = $P101."push_pirop"("inc", $P5087)
    set $P5098, $P5097
  unless584_end2199:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_139_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3200
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$litconst", $P102 
    .lex "$litlen", $P103 
    .lex "$litpost", $P104 
    .lex "$cmpop", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
.annotate 'line', 3201
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."post_new"("Ops")
    set $P101, $P5007
    set $P5008, _lex_param_1[0]
    unless_null $P5008, fallback2204
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5009
  fallback2204:
    set $P102, $P5008
.annotate 'line', 3204
    $P5010 = _lex_param_1."subtype"()
    set $S5001, $P5010
    iseq $I5001, $S5001, "ignorecase"
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto if586_end2206 
    set $S5003, $P102
    downcase $S5002, $S5003
    box $P5011, $S5002
    set $P102, $P5011
    set $P5012, $P102
  if586_end2206:
    set $S5004, $P102
    length $I5002, $S5004
    box $P5014, $I5002
    set $P103, $P5014
.annotate 'line', 3206
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."rxescape"($P102)
    set $P104, $P5016
.annotate 'line', 3207
    $P5017 = _lex_param_1."negate"()
    unless $P5017 goto if587_else2207 
    set $S5005, "eq"
    goto if587_end2208
  if587_else2207:
    set $S5005, "ne"
  if587_end2208:
    box $P5018, $S5005
    set $P105, $P5018
.annotate 'line', 3208
    find_dynamic_lex $P5020, "%*REG"
    unless_null $P5020, fallback2209
    get_hll_global $P5023, "GLOBAL"
    get_who $P5022, $P5023
    set $P5021, $P5022["%REG"]
    unless_null $P5021, fallback2210
    get_hll_global $P5025, "GLOBAL"
    get_who $P5024, $P5025
    new $P5026, 'Hash'
    set $P5024["%REG"], $P5026
    set $P5021, $P5026
  fallback2210:
    unless_null $P5021, vivi_5882211
    die "Contextual %*REG not found"
    box $P5027, "Contextual %*REG not found"
    set $P5021, $P5027
  vivi_5882211:
    set $P5020, $P5021
  fallback2209:
    set $P5019, $P5020["pos"]
    unless_null $P5019, fallback2212
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5019, $P5028
  fallback2212:
    $P5029 = $P101."push_pirop"("add", "$I11", $P5019, $P103)
.annotate 'line', 3209
    find_dynamic_lex $P5031, "%*REG"
    unless_null $P5031, fallback2213
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    set $P5032, $P5033["%REG"]
    unless_null $P5032, fallback2214
    get_hll_global $P5036, "GLOBAL"
    get_who $P5035, $P5036
    new $P5037, 'Hash'
    set $P5035["%REG"], $P5037
    set $P5032, $P5037
  fallback2214:
    unless_null $P5032, vivi_5892215
    die "Contextual %*REG not found"
    box $P5038, "Contextual %*REG not found"
    set $P5032, $P5038
  vivi_5892215:
    set $P5031, $P5032
  fallback2213:
    set $P5030, $P5031["eos"]
    unless_null $P5030, fallback2216
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5030, $P5039
  fallback2216:
    find_dynamic_lex $P5041, "%*REG"
    unless_null $P5041, fallback2217
    get_hll_global $P5044, "GLOBAL"
    get_who $P5043, $P5044
    set $P5042, $P5043["%REG"]
    unless_null $P5042, fallback2218
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    new $P5047, 'Hash'
    set $P5045["%REG"], $P5047
    set $P5042, $P5047
  fallback2218:
    unless_null $P5042, vivi_5902219
    die "Contextual %*REG not found"
    box $P5048, "Contextual %*REG not found"
    set $P5042, $P5048
  vivi_5902219:
    set $P5041, $P5042
  fallback2217:
    set $P5040, $P5041["fail"]
    unless_null $P5040, fallback2220
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5040, $P5049
  fallback2220:
    $P5050 = $P101."push_pirop"("gt", "$I11", $P5030, $P5040)
.annotate 'line', 3210
    find_dynamic_lex $P5052, "%*REG"
    unless_null $P5052, fallback2221
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["%REG"]
    unless_null $P5053, fallback2222
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    new $P5058, 'Hash'
    set $P5056["%REG"], $P5058
    set $P5053, $P5058
  fallback2222:
    unless_null $P5053, vivi_5912223
    die "Contextual %*REG not found"
    box $P5059, "Contextual %*REG not found"
    set $P5053, $P5059
  vivi_5912223:
    set $P5052, $P5053
  fallback2221:
    set $P5051, $P5052["tgt"]
    unless_null $P5051, fallback2224
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5051, $P5060
  fallback2224:
    find_dynamic_lex $P5062, "%*REG"
    unless_null $P5062, fallback2225
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    set $P5063, $P5064["%REG"]
    unless_null $P5063, fallback2226
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    new $P5068, 'Hash'
    set $P5066["%REG"], $P5068
    set $P5063, $P5068
  fallback2226:
    unless_null $P5063, vivi_5922227
    die "Contextual %*REG not found"
    box $P5069, "Contextual %*REG not found"
    set $P5063, $P5069
  vivi_5922227:
    set $P5062, $P5063
  fallback2225:
    set $P5061, $P5062["pos"]
    unless_null $P5061, fallback2228
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5061, $P5070
  fallback2228:
    $P5071 = $P101."push_pirop"("substr", "$S10", $P5051, $P5061, $P103)
.annotate 'line', 3212
    $P5072 = _lex_param_1."subtype"()
    set $S5006, $P5072
    iseq $I5003, $S5006, "ignorecase"
    box $P5075, $I5003
    set $P5074, $P5075
    unless $I5003 goto if593_end2230 
.annotate 'line', 3211
    $P5073 = $P101."push_pirop"("downcase", "$S10", "$S10")
    set $P5074, $P5073
  if593_end2230:
.annotate 'line', 3213
    find_dynamic_lex $P5077, "%*REG"
    unless_null $P5077, fallback2231
    get_hll_global $P5080, "GLOBAL"
    get_who $P5079, $P5080
    set $P5078, $P5079["%REG"]
    unless_null $P5078, fallback2232
    get_hll_global $P5082, "GLOBAL"
    get_who $P5081, $P5082
    new $P5083, 'Hash'
    set $P5081["%REG"], $P5083
    set $P5078, $P5083
  fallback2232:
    unless_null $P5078, vivi_5942233
    die "Contextual %*REG not found"
    box $P5084, "Contextual %*REG not found"
    set $P5078, $P5084
  vivi_5942233:
    set $P5077, $P5078
  fallback2231:
    set $P5076, $P5077["fail"]
    unless_null $P5076, fallback2234
    nqp_get_sc_object $P5085, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5076, $P5085
  fallback2234:
    $P5086 = $P101."push_pirop"($P105, "$S10", $P104, $P5076)
.annotate 'line', 3214
    find_dynamic_lex $P5088, "%*REG"
    unless_null $P5088, fallback2235
    get_hll_global $P5091, "GLOBAL"
    get_who $P5090, $P5091
    set $P5089, $P5090["%REG"]
    unless_null $P5089, fallback2236
    get_hll_global $P5093, "GLOBAL"
    get_who $P5092, $P5093
    new $P5094, 'Hash'
    set $P5092["%REG"], $P5094
    set $P5089, $P5094
  fallback2236:
    unless_null $P5089, vivi_5952237
    die "Contextual %*REG not found"
    box $P5095, "Contextual %*REG not found"
    set $P5089, $P5095
  vivi_5952237:
    set $P5088, $P5089
  fallback2235:
    set $P5087, $P5088["pos"]
    unless_null $P5087, fallback2238
    nqp_get_sc_object $P5096, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5087, $P5096
  fallback2238:
    $P5097 = $P101."push_pirop"("add", $P5087, $P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "pass" :subid("cuid_140_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3218
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5056 = 'cuid_318_1347104163.3' 
    capture_lex $P5056 
    .lex "$ops", $P101 
    .lex "@backtrack", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 3219
    nqp_decontainerize $P5003, _lex_param_0
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2239
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2240
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2240:
    unless_null $P5006, vivi_5962241
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_5962241:
    set $P5005, $P5006
  fallback2239:
    set $P5004, $P5005["cur"]
    unless_null $P5004, fallback2242
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5013
  fallback2242:
    $P5014 = $P5003."post_new"("Ops", $P5004 :named("result"))
    set $P101, $P5014
.annotate 'line', 3221
    $P5015 = _lex_param_1."backtrack"()
    set $S5001, $P5015
    isne $I5001, $S5001, "r"
    box $P5019, $I5001
    set $P5018, $P5019
    unless $I5001 goto if597_end2244 
    new $P5016, 'ResizablePMCArray'
    box $P5017, "'backtrack'=>1"
    push $P5016, $P5017
    set $P102, $P5016
    set $P5018, $P102
  if597_end2244:
.annotate 'line', 3222
    $P5020 = _lex_param_1."name"()
    unless $P5020 goto if598_else2245 
    .const 'Sub' $P5021 = 'cuid_318_1347104163.3' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5044, $P5022
    goto if598_end2246
  if598_else2245:
.annotate 'line', 3226
.annotate 'line', 3227
    find_dynamic_lex $P5024, "%*REG"
    unless_null $P5024, fallback2255
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    set $P5025, $P5026["%REG"]
    unless_null $P5025, fallback2256
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    new $P5030, 'Hash'
    set $P5028["%REG"], $P5030
    set $P5025, $P5030
  fallback2256:
    unless_null $P5025, vivi_6012257
    die "Contextual %*REG not found"
    box $P5031, "Contextual %*REG not found"
    set $P5025, $P5031
  vivi_6012257:
    set $P5024, $P5025
  fallback2255:
    set $P5023, $P5024["cur"]
    unless_null $P5023, fallback2258
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5023, $P5032
  fallback2258:
    find_dynamic_lex $P5034, "%*REG"
    unless_null $P5034, fallback2259
    get_hll_global $P5037, "GLOBAL"
    get_who $P5036, $P5037
    set $P5035, $P5036["%REG"]
    unless_null $P5035, fallback2260
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    new $P5040, 'Hash'
    set $P5038["%REG"], $P5040
    set $P5035, $P5040
  fallback2260:
    unless_null $P5035, vivi_6022261
    die "Contextual %*REG not found"
    box $P5041, "Contextual %*REG not found"
    set $P5035, $P5041
  vivi_6022261:
    set $P5034, $P5035
  fallback2259:
    set $P5033, $P5034["pos"]
    unless_null $P5033, fallback2262
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5033, $P5042
  fallback2262:
    $P5043 = $P101."push_pirop"("callmethod", "\"!cursor_pass\"", $P5023, $P5033, $P102 :flat)
    set $P5044, $P5043
  if598_end2246:
.annotate 'line', 3229
    find_dynamic_lex $P5046, "%*REG"
    unless_null $P5046, fallback2263
    get_hll_global $P5049, "GLOBAL"
    get_who $P5048, $P5049
    set $P5047, $P5048["%REG"]
    unless_null $P5047, fallback2264
    get_hll_global $P5051, "GLOBAL"
    get_who $P5050, $P5051
    new $P5052, 'Hash'
    set $P5050["%REG"], $P5052
    set $P5047, $P5052
  fallback2264:
    unless_null $P5047, vivi_6032265
    die "Contextual %*REG not found"
    box $P5053, "Contextual %*REG not found"
    set $P5047, $P5053
  vivi_6032265:
    set $P5046, $P5047
  fallback2263:
    set $P5045, $P5046["cur"]
    unless_null $P5045, fallback2266
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5045, $P5054
  fallback2266:
    $P5055 = $P101."push_pirop"("return", $P5045)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_318_1347104163.3") :anon :lex :outer("cuid_140_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3222
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 3223
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$node"
    $P5005 = $P5004."name"()
    $P5006 = $P5002."escape"($P5005)
    set $P101, $P5006
.annotate 'line', 3224
    find_lex $P5007, "$ops"
    find_dynamic_lex $P5009, "%*REG"
    unless_null $P5009, fallback2247
    get_hll_global $P5012, "GLOBAL"
    get_who $P5011, $P5012
    set $P5010, $P5011["%REG"]
    unless_null $P5010, fallback2248
    get_hll_global $P5014, "GLOBAL"
    get_who $P5013, $P5014
    new $P5015, 'Hash'
    set $P5013["%REG"], $P5015
    set $P5010, $P5015
  fallback2248:
    unless_null $P5010, vivi_5992249
    die "Contextual %*REG not found"
    box $P5016, "Contextual %*REG not found"
    set $P5010, $P5016
  vivi_5992249:
    set $P5009, $P5010
  fallback2247:
    set $P5008, $P5009["cur"]
    unless_null $P5008, fallback2250
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5008, $P5017
  fallback2250:
    find_dynamic_lex $P5019, "%*REG"
    unless_null $P5019, fallback2251
    get_hll_global $P5022, "GLOBAL"
    get_who $P5021, $P5022
    set $P5020, $P5021["%REG"]
    unless_null $P5020, fallback2252
    get_hll_global $P5024, "GLOBAL"
    get_who $P5023, $P5024
    new $P5025, 'Hash'
    set $P5023["%REG"], $P5025
    set $P5020, $P5025
  fallback2252:
    unless_null $P5020, vivi_6002253
    die "Contextual %*REG not found"
    box $P5026, "Contextual %*REG not found"
    set $P5020, $P5026
  vivi_6002253:
    set $P5019, $P5020
  fallback2251:
    set $P5018, $P5019["pos"]
    unless_null $P5018, fallback2254
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5018, $P5027
  fallback2254:
    find_lex $P5028, "@backtrack"
    $P5029 = $P5007."push_pirop"("callmethod", "\"!cursor_pass\"", $P5008, $P5018, $P101, $P5028 :flat)
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_141_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3233
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$cpost", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 3234
    nqp_decontainerize $P5003, _lex_param_0
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2267
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2268
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2268:
    unless_null $P5006, vivi_6042269
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_6042269:
    set $P5005, $P5006
  fallback2267:
    set $P5004, $P5005["cur"]
    unless_null $P5004, fallback2270
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5013
  fallback2270:
    $P5014 = $P5003."post_new"("Ops", $P5004 :named("result"))
    set $P101, $P5014
.annotate 'line', 3235
    find_dynamic_lex $P5016, "%*REG"
    unless_null $P5016, fallback2271
    get_hll_global $P5019, "GLOBAL"
    get_who $P5018, $P5019
    set $P5017, $P5018["%REG"]
    unless_null $P5017, fallback2272
    get_hll_global $P5021, "GLOBAL"
    get_who $P5020, $P5021
    new $P5022, 'Hash'
    set $P5020["%REG"], $P5022
    set $P5017, $P5022
  fallback2272:
    unless_null $P5017, vivi_6052273
    die "Contextual %*REG not found"
    box $P5023, "Contextual %*REG not found"
    set $P5017, $P5023
  vivi_6052273:
    set $P5016, $P5017
  fallback2271:
    set $P5015, $P5016["cur"]
    unless_null $P5015, fallback2274
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5015, $P5024
  fallback2274:
    find_dynamic_lex $P5026, "%*REG"
    unless_null $P5026, fallback2275
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    set $P5027, $P5028["%REG"]
    unless_null $P5027, fallback2276
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    new $P5032, 'Hash'
    set $P5030["%REG"], $P5032
    set $P5027, $P5032
  fallback2276:
    unless_null $P5027, vivi_6062277
    die "Contextual %*REG not found"
    box $P5033, "Contextual %*REG not found"
    set $P5027, $P5033
  vivi_6062277:
    set $P5026, $P5027
  fallback2275:
    set $P5025, $P5026["curclass"]
    unless_null $P5025, fallback2278
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5025, $P5034
  fallback2278:
    find_dynamic_lex $P5036, "%*REG"
    unless_null $P5036, fallback2279
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    set $P5037, $P5038["%REG"]
    unless_null $P5037, fallback2280
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    new $P5042, 'Hash'
    set $P5040["%REG"], $P5042
    set $P5037, $P5042
  fallback2280:
    unless_null $P5037, vivi_6072281
    die "Contextual %*REG not found"
    box $P5043, "Contextual %*REG not found"
    set $P5037, $P5043
  vivi_6072281:
    set $P5036, $P5037
  fallback2279:
    set $P5035, $P5036["pos"]
    unless_null $P5035, fallback2282
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5035, $P5044
  fallback2282:
    $P5045 = $P101."push_pirop"("repr_bind_attr_int", $P5015, $P5025, "\"$!pos\"", $P5035)
.annotate 'line', 3236
    find_dynamic_lex $P5047, "%*REG"
    unless_null $P5047, fallback2283
    get_hll_global $P5050, "GLOBAL"
    get_who $P5049, $P5050
    set $P5048, $P5049["%REG"]
    unless_null $P5048, fallback2284
    get_hll_global $P5052, "GLOBAL"
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%REG"], $P5053
    set $P5048, $P5053
  fallback2284:
    unless_null $P5048, vivi_6082285
    die "Contextual %*REG not found"
    box $P5054, "Contextual %*REG not found"
    set $P5048, $P5054
  vivi_6082285:
    set $P5047, $P5048
  fallback2283:
    set $P5046, $P5047["cur"]
    unless_null $P5046, fallback2286
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5046, $P5055
  fallback2286:
    $P5056 = $P101."push_pirop"("store_lex", utf8:"unicode:\"$\\x{a2}\"", $P5046)
.annotate 'line', 3237
    nqp_decontainerize $P5057, _lex_param_0
    nqp_decontainerize $P5058, _lex_param_0
    set $P5059, _lex_param_1[0]
    unless_null $P5059, fallback2287
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5059, $P5060
  fallback2287:
    $P5061 = $P5058."as_post"($P5059)
    $P5062 = $P5057."coerce"($P5061, "P")
    set $P102, $P5062
.annotate 'line', 3238
    $P5063 = $P101."push"($P102)
.annotate 'line', 3239
    $P5064 = _lex_param_1."subtype"()
    set $S5001, $P5064
    iseq $I5001, $S5001, "zerowidth"
    box $P5078, $I5001
    set $P5077, $P5078
    unless $I5001 goto if609_end2289 
.annotate 'line', 3240
    $P5065 = _lex_param_1."negate"()
    unless $P5065 goto if610_else2290 
    set $S5002, "if"
    goto if610_end2291
  if610_else2290:
    set $S5002, "unless"
  if610_end2291:
    find_dynamic_lex $P5067, "%*REG"
    unless_null $P5067, fallback2292
    get_hll_global $P5070, "GLOBAL"
    get_who $P5069, $P5070
    set $P5068, $P5069["%REG"]
    unless_null $P5068, fallback2293
    get_hll_global $P5072, "GLOBAL"
    get_who $P5071, $P5072
    new $P5073, 'Hash'
    set $P5071["%REG"], $P5073
    set $P5068, $P5073
  fallback2293:
    unless_null $P5068, vivi_6112294
    die "Contextual %*REG not found"
    box $P5074, "Contextual %*REG not found"
    set $P5068, $P5074
  vivi_6112294:
    set $P5067, $P5068
  fallback2292:
    set $P5066, $P5067["fail"]
    unless_null $P5066, fallback2295
    nqp_get_sc_object $P5075, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5066, $P5075
  fallback2295:
    $P5076 = $P101."push_pirop"($S5002, $P102, $P5066)
    set $P5077, $P5076
  if609_end2289:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_142_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3245
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5160 = 'cuid_319_1347104163.3' 
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P110, $P5010
.annotate 'line', 3246
    nqp_decontainerize $P5011, _lex_param_0
    find_dynamic_lex $P5013, "%*REG"
    unless_null $P5013, fallback2296
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["%REG"]
    unless_null $P5014, fallback2297
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    new $P5019, 'Hash'
    set $P5017["%REG"], $P5019
    set $P5014, $P5019
  fallback2297:
    unless_null $P5014, vivi_6122298
    die "Contextual %*REG not found"
    box $P5020, "Contextual %*REG not found"
    set $P5014, $P5020
  vivi_6122298:
    set $P5013, $P5014
  fallback2296:
    set $P5012, $P5013["cur"]
    unless_null $P5012, fallback2299
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5012, $P5021
  fallback2299:
    $P5022 = $P5011."post_new"("Ops", $P5012 :named("result"))
    set $P101, $P5022
.annotate 'line', 3247
    $P5023 = _lex_param_1."backtrack"()
    set $P5024, $P5023
    if $P5023 goto unless613_end2301 
    box $P5025, "g"
    set $P5024, $P5025
  unless613_end2301:
    set $P102, $P5024
    set $P5026, _lex_param_1[1]
    unless_null $P5026, fallback2302
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5026, $P5027
  fallback2302:
    set $P103, $P5026
.annotate 'line', 3249
    nqp_decontainerize $P5028, _lex_param_0
    set $S5002, $P102
    concat $S5001, "rxquant", $S5002
    $P5029 = $P5028."unique"($S5001)
    set $P104, $P5029
.annotate 'line', 3250
    nqp_decontainerize $P5030, _lex_param_0
    set $S5004, $P104
    concat $S5003, $S5004, "_loop"
    $P5031 = $P5030."post_new"("Label", $S5003 :named("name"))
    set $P105, $P5031
.annotate 'line', 3251
    nqp_decontainerize $P5032, _lex_param_0
    set $S5006, $P104
    concat $S5005, $S5006, "_done"
    $P5033 = $P5032."post_new"("Label", $S5005 :named("name"))
    set $P106, $P5033
.annotate 'line', 3252
    $P5034 = _lex_param_1."min"()
    set $P107, $P5034
.annotate 'line', 3253
    $P5035 = _lex_param_1."max"()
    set $P108, $P5035
    set $N5001, $P107
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    set $I5003, $I5001
    if $I5001 goto unless614_end2304 
    set $N5003, $P108
    set $N5004, 1
    isgt $I5002, $N5003, $N5004
    set $I5003, $I5002
  unless614_end2304:
    box $P5036, $I5003
    set $P109, $P5036
    set $P5037, $P109
    if $P109 goto unless615_end2306 
    set $S5007, $P102
    iseq $I5004, $S5007, "r"
    box $P5038, $I5004
    set $P5037, $P5038
  unless615_end2306:
    set $P110, $P5037
    set $S5008, $P102
    iseq $I5005, $S5008, "f"
    unless $I5005 goto if616_else2307 
    .const 'Sub' $P5039 = 'cuid_319_1347104163.3' 
    capture_lex $P5039
    $P5040 = $P5039()
    set $P5159, $P5040
    goto if616_end2308
  if616_else2307:
.annotate 'line', 3280
    set $N5005, $P107
    set $N5006, 0
    iseq $I5006, $N5005, $N5006
    unless $I5006 goto if634_else2364 
.annotate 'line', 3281
    nqp_decontainerize $P5041, _lex_param_0
    find_dynamic_lex $P5043, "%*REG"
    unless_null $P5043, fallback2366
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    set $P5044, $P5045["%REG"]
    unless_null $P5044, fallback2367
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    new $P5049, 'Hash'
    set $P5047["%REG"], $P5049
    set $P5044, $P5049
  fallback2367:
    unless_null $P5044, vivi_6352368
    die "Contextual %*REG not found"
    box $P5050, "Contextual %*REG not found"
    set $P5044, $P5050
  vivi_6352368:
    set $P5043, $P5044
  fallback2366:
    set $P5042, $P5043["pos"]
    unless_null $P5042, fallback2369
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5042, $P5051
  fallback2369:
    $P5052 = $P5041."regex_mark"($P101, $P106, $P5042, 0)
    set $P5056, $P5052
    goto if634_end2365
  if634_else2364:
    set $P5055, $P110
    unless $P110 goto if636_end2371 
.annotate 'line', 3282
    nqp_decontainerize $P5053, _lex_param_0
    $P5054 = $P5053."regex_mark"($P101, $P106, -1, 0)
    set $P5055, $P5054
  if636_end2371:
    set $P5056, $P5055
  if634_end2365:
.annotate 'line', 3283
    $P5057 = $P101."push"($P105)
.annotate 'line', 3284
    nqp_decontainerize $P5058, _lex_param_0
    set $P5059, _lex_param_1[0]
    unless_null $P5059, fallback2372
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5059, $P5060
  fallback2372:
    $P5061 = $P5058."regex_post"($P5059)
    $P5062 = $P101."push"($P5061)
    set $P5104, $P110
    unless $P110 goto if637_end2374 
.annotate 'line', 3285
.annotate 'line', 3286
    nqp_decontainerize $P5063, _lex_param_0
    find_dynamic_lex $P5065, "%*REG"
    unless_null $P5065, fallback2375
    get_hll_global $P5068, "GLOBAL"
    get_who $P5067, $P5068
    set $P5066, $P5067["%REG"]
    unless_null $P5066, fallback2376
    get_hll_global $P5070, "GLOBAL"
    get_who $P5069, $P5070
    new $P5071, 'Hash'
    set $P5069["%REG"], $P5071
    set $P5066, $P5071
  fallback2376:
    unless_null $P5066, vivi_6382377
    die "Contextual %*REG not found"
    box $P5072, "Contextual %*REG not found"
    set $P5066, $P5072
  vivi_6382377:
    set $P5065, $P5066
  fallback2375:
    set $P5064, $P5065["rep"]
    unless_null $P5064, fallback2378
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5064, $P5073
  fallback2378:
    $P5074 = $P5063."regex_peek"($P101, $P106, "*", $P5064)
    set $S5009, $P102
    iseq $I5007, $S5009, "r"
    box $P5078, $I5007
    set $P5077, $P5078
    unless $I5007 goto if639_end2380 
.annotate 'line', 3287
    nqp_decontainerize $P5075, _lex_param_0
    $P5076 = $P5075."regex_commit"($P101, $P106)
    set $P5077, $P5076
  if639_end2380:
.annotate 'line', 3288
    find_dynamic_lex $P5080, "%*REG"
    unless_null $P5080, fallback2381
    get_hll_global $P5083, "GLOBAL"
    get_who $P5082, $P5083
    set $P5081, $P5082["%REG"]
    unless_null $P5081, fallback2382
    get_hll_global $P5085, "GLOBAL"
    get_who $P5084, $P5085
    new $P5086, 'Hash'
    set $P5084["%REG"], $P5086
    set $P5081, $P5086
  fallback2382:
    unless_null $P5081, vivi_6402383
    die "Contextual %*REG not found"
    box $P5087, "Contextual %*REG not found"
    set $P5081, $P5087
  vivi_6402383:
    set $P5080, $P5081
  fallback2381:
    set $P5079, $P5080["rep"]
    unless_null $P5079, fallback2384
    nqp_get_sc_object $P5088, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5079, $P5088
  fallback2384:
    $P5089 = $P101."push_pirop"("inc", $P5079)
    set $N5007, $P108
    set $N5008, 1
    isgt $I5008, $N5007, $N5008
    box $P5103, $I5008
    set $P5102, $P5103
    unless $I5008 goto if641_end2386 
.annotate 'line', 3289
    find_dynamic_lex $P5091, "%*REG"
    unless_null $P5091, fallback2387
    get_hll_global $P5094, "GLOBAL"
    get_who $P5093, $P5094
    set $P5092, $P5093["%REG"]
    unless_null $P5092, fallback2388
    get_hll_global $P5096, "GLOBAL"
    get_who $P5095, $P5096
    new $P5097, 'Hash'
    set $P5095["%REG"], $P5097
    set $P5092, $P5097
  fallback2388:
    unless_null $P5092, vivi_6422389
    die "Contextual %*REG not found"
    box $P5098, "Contextual %*REG not found"
    set $P5092, $P5098
  vivi_6422389:
    set $P5091, $P5092
  fallback2387:
    set $P5090, $P5091["rep"]
    unless_null $P5090, fallback2390
    nqp_get_sc_object $P5099, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5090, $P5099
  fallback2390:
    $P5100 = _lex_param_1."max"()
    $P5101 = $P101."push_pirop"("ge", $P5090, $P5100, $P106)
    set $P5102, $P5101
  if641_end2386:
    set $P5104, $P5102
  if637_end2374:
    set $N5009, $P108
    set $N5010, 1
    iseq $I5009, $N5009, $N5010
    box $P5133, $I5009
    set $P5132, $P5133
    if $I5009 goto unless643_end2392 
.annotate 'line', 3292
.annotate 'line', 3293
    nqp_decontainerize $P5105, _lex_param_0
    find_dynamic_lex $P5107, "%*REG"
    unless_null $P5107, fallback2393
    get_hll_global $P5110, "GLOBAL"
    get_who $P5109, $P5110
    set $P5108, $P5109["%REG"]
    unless_null $P5108, fallback2394
    get_hll_global $P5112, "GLOBAL"
    get_who $P5111, $P5112
    new $P5113, 'Hash'
    set $P5111["%REG"], $P5113
    set $P5108, $P5113
  fallback2394:
    unless_null $P5108, vivi_6442395
    die "Contextual %*REG not found"
    box $P5114, "Contextual %*REG not found"
    set $P5108, $P5114
  vivi_6442395:
    set $P5107, $P5108
  fallback2393:
    set $P5106, $P5107["pos"]
    unless_null $P5106, fallback2396
    nqp_get_sc_object $P5115, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5106, $P5115
  fallback2396:
    find_dynamic_lex $P5117, "%*REG"
    unless_null $P5117, fallback2397
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    set $P5118, $P5119["%REG"]
    unless_null $P5118, fallback2398
    get_hll_global $P5122, "GLOBAL"
    get_who $P5121, $P5122
    new $P5123, 'Hash'
    set $P5121["%REG"], $P5123
    set $P5118, $P5123
  fallback2398:
    unless_null $P5118, vivi_6452399
    die "Contextual %*REG not found"
    box $P5124, "Contextual %*REG not found"
    set $P5118, $P5124
  vivi_6452399:
    set $P5117, $P5118
  fallback2397:
    set $P5116, $P5117["rep"]
    unless_null $P5116, fallback2400
    nqp_get_sc_object $P5125, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5116, $P5125
  fallback2400:
    $P5126 = $P5105."regex_mark"($P101, $P106, $P5106, $P5116)
    set $P5130, $P103
    unless $P103 goto if646_end2402 
.annotate 'line', 3294
    nqp_decontainerize $P5127, _lex_param_0
    $P5128 = $P5127."regex_post"($P103)
    $P5129 = $P101."push"($P5128)
    set $P5130, $P5129
  if646_end2402:
.annotate 'line', 3295
    $P5131 = $P101."push_pirop"("goto", $P105)
    set $P5132, $P5131
  unless643_end2392:
.annotate 'line', 3297
    $P5134 = $P101."push"($P106)
    set $N5011, $P107
    set $N5012, 1
    isgt $I5010, $N5011, $N5012
    box $P5158, $I5010
    set $P5157, $P5158
    unless $I5010 goto if647_end2404 
.annotate 'line', 3298
    find_dynamic_lex $P5136, "%*REG"
    unless_null $P5136, fallback2405
    get_hll_global $P5139, "GLOBAL"
    get_who $P5138, $P5139
    set $P5137, $P5138["%REG"]
    unless_null $P5137, fallback2406
    get_hll_global $P5141, "GLOBAL"
    get_who $P5140, $P5141
    new $P5142, 'Hash'
    set $P5140["%REG"], $P5142
    set $P5137, $P5142
  fallback2406:
    unless_null $P5137, vivi_6482407
    die "Contextual %*REG not found"
    box $P5143, "Contextual %*REG not found"
    set $P5137, $P5143
  vivi_6482407:
    set $P5136, $P5137
  fallback2405:
    set $P5135, $P5136["rep"]
    unless_null $P5135, fallback2408
    nqp_get_sc_object $P5144, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5135, $P5144
  fallback2408:
    $P5145 = _lex_param_1."min"()
    set $N5013, $P5145
    find_dynamic_lex $P5147, "%*REG"
    unless_null $P5147, fallback2409
    get_hll_global $P5150, "GLOBAL"
    get_who $P5149, $P5150
    set $P5148, $P5149["%REG"]
    unless_null $P5148, fallback2410
    get_hll_global $P5152, "GLOBAL"
    get_who $P5151, $P5152
    new $P5153, 'Hash'
    set $P5151["%REG"], $P5153
    set $P5148, $P5153
  fallback2410:
    unless_null $P5148, vivi_6492411
    die "Contextual %*REG not found"
    box $P5154, "Contextual %*REG not found"
    set $P5148, $P5154
  vivi_6492411:
    set $P5147, $P5148
  fallback2409:
    set $P5146, $P5147["fail"]
    unless_null $P5146, fallback2412
    nqp_get_sc_object $P5155, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5146, $P5155
  fallback2412:
    $P5156 = $P101."push_pirop"("lt", $P5135, $N5013, $P5146)
    set $P5157, $P5156
  if647_end2404:
    set $P5159, $P5157
  if616_end2308:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_319_1347104163.3") :anon :lex :outer("cuid_142_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3259
    .lex "$seplabel", $P101 
    .lex "$ireg", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 3260
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$prefix"
    set $S5002, $P5005
    concat $S5001, $S5002, "_sep"
    $P5006 = $P5003."post_new"("Label", $S5001 :named("name"))
    set $P101, $P5006
    box $P5007, "$I12"
    set $P102, $P5007
.annotate 'line', 3262
    find_lex $P5008, "$ops"
    find_dynamic_lex $P5010, "%*REG"
    unless_null $P5010, fallback2309
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["%REG"]
    unless_null $P5011, fallback2310
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    new $P5016, 'Hash'
    set $P5014["%REG"], $P5016
    set $P5011, $P5016
  fallback2310:
    unless_null $P5011, vivi_6172311
    die "Contextual %*REG not found"
    box $P5017, "Contextual %*REG not found"
    set $P5011, $P5017
  vivi_6172311:
    set $P5010, $P5011
  fallback2309:
    set $P5009, $P5010["rep"]
    unless_null $P5009, fallback2312
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5009, $P5018
  fallback2312:
    $P5019 = $P5008."push_pirop"("set", $P5009, 0)
    find_lex $P5020, "$min"
    set $N5001, $P5020
    set $N5002, 1
    islt $I5001, $N5001, $N5002
    box $P5050, $I5001
    set $P5049, $P5050
    unless $I5001 goto if618_end2314 
.annotate 'line', 3263
.annotate 'line', 3264
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    find_lex $P5023, "$ops"
    find_lex $P5024, "$looplabel"
    find_dynamic_lex $P5026, "%*REG"
    unless_null $P5026, fallback2315
    get_hll_global $P5029, "GLOBAL"
    get_who $P5028, $P5029
    set $P5027, $P5028["%REG"]
    unless_null $P5027, fallback2316
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    new $P5032, 'Hash'
    set $P5030["%REG"], $P5032
    set $P5027, $P5032
  fallback2316:
    unless_null $P5027, vivi_6192317
    die "Contextual %*REG not found"
    box $P5033, "Contextual %*REG not found"
    set $P5027, $P5033
  vivi_6192317:
    set $P5026, $P5027
  fallback2315:
    set $P5025, $P5026["pos"]
    unless_null $P5025, fallback2318
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5025, $P5034
  fallback2318:
    find_dynamic_lex $P5036, "%*REG"
    unless_null $P5036, fallback2319
    get_hll_global $P5039, "GLOBAL"
    get_who $P5038, $P5039
    set $P5037, $P5038["%REG"]
    unless_null $P5037, fallback2320
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    new $P5042, 'Hash'
    set $P5040["%REG"], $P5042
    set $P5037, $P5042
  fallback2320:
    unless_null $P5037, vivi_6202321
    die "Contextual %*REG not found"
    box $P5043, "Contextual %*REG not found"
    set $P5037, $P5043
  vivi_6202321:
    set $P5036, $P5037
  fallback2319:
    set $P5035, $P5036["rep"]
    unless_null $P5035, fallback2322
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5035, $P5044
  fallback2322:
    $P5045 = $P5021."regex_mark"($P5023, $P5024, $P5025, $P5035)
.annotate 'line', 3265
    find_lex $P5046, "$ops"
    find_lex $P5047, "$donelabel"
    $P5048 = $P5046."push_pirop"("goto", $P5047)
    set $P5049, $P5048
  if618_end2314:
    find_lex $P5051, "$sep"
    set $P5054, $P5051
    unless $P5051 goto if621_end2324 
.annotate 'line', 3267
    find_lex $P5052, "$ops"
    $P5053 = $P5052."push_pirop"("goto", $P101)
    set $P5054, $P5053
  if621_end2324:
.annotate 'line', 3268
    find_lex $P5055, "$ops"
    find_lex $P5056, "$looplabel"
    $P5057 = $P5055."push"($P5056)
.annotate 'line', 3269
    find_lex $P5058, "$ops"
    find_dynamic_lex $P5060, "%*REG"
    unless_null $P5060, fallback2325
    get_hll_global $P5063, "GLOBAL"
    get_who $P5062, $P5063
    set $P5061, $P5062["%REG"]
    unless_null $P5061, fallback2326
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    new $P5066, 'Hash'
    set $P5064["%REG"], $P5066
    set $P5061, $P5066
  fallback2326:
    unless_null $P5061, vivi_6222327
    die "Contextual %*REG not found"
    box $P5067, "Contextual %*REG not found"
    set $P5061, $P5067
  vivi_6222327:
    set $P5060, $P5061
  fallback2325:
    set $P5059, $P5060["rep"]
    unless_null $P5059, fallback2328
    nqp_get_sc_object $P5068, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5059, $P5068
  fallback2328:
    $P5069 = $P5058."push_pirop"("set", $P102, $P5059)
    find_lex $P5070, "$sep"
    set $P5077, $P5070
    unless $P5070 goto if623_end2330 
.annotate 'line', 3270
    find_lex $P5071, "$ops"
    find_lex $P5073, "self"
    nqp_decontainerize $P5072, $P5073
    find_lex $P5074, "$sep"
    $P5075 = $P5072."regex_post"($P5074)
    $P5076 = $P5071."push"($P5075)
    set $P5077, $P5076
  if623_end2330:
    find_lex $P5078, "$sep"
    set $P5081, $P5078
    unless $P5078 goto if624_end2332 
.annotate 'line', 3271
    find_lex $P5079, "$ops"
    $P5080 = $P5079."push"($P101)
    set $P5081, $P5080
  if624_end2332:
.annotate 'line', 3272
    find_lex $P5082, "$ops"
    find_lex $P5084, "self"
    nqp_decontainerize $P5083, $P5084
    find_lex $P5086, "$node"
    set $P5085, $P5086[0]
    unless_null $P5085, fallback2333
    nqp_get_sc_object $P5087, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5085, $P5087
  fallback2333:
    $P5088 = $P5083."regex_post"($P5085)
    $P5089 = $P5082."push"($P5088)
.annotate 'line', 3273
    find_lex $P5090, "$ops"
    find_dynamic_lex $P5092, "%*REG"
    unless_null $P5092, fallback2334
    get_hll_global $P5095, "GLOBAL"
    get_who $P5094, $P5095
    set $P5093, $P5094["%REG"]
    unless_null $P5093, fallback2335
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    new $P5098, 'Hash'
    set $P5096["%REG"], $P5098
    set $P5093, $P5098
  fallback2335:
    unless_null $P5093, vivi_6252336
    die "Contextual %*REG not found"
    box $P5099, "Contextual %*REG not found"
    set $P5093, $P5099
  vivi_6252336:
    set $P5092, $P5093
  fallback2334:
    set $P5091, $P5092["rep"]
    unless_null $P5091, fallback2337
    nqp_get_sc_object $P5100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5091, $P5100
  fallback2337:
    $P5101 = $P5090."push_pirop"("set", $P5091, $P102)
.annotate 'line', 3274
    find_lex $P5102, "$ops"
    find_dynamic_lex $P5104, "%*REG"
    unless_null $P5104, fallback2338
    get_hll_global $P5107, "GLOBAL"
    get_who $P5106, $P5107
    set $P5105, $P5106["%REG"]
    unless_null $P5105, fallback2339
    get_hll_global $P5109, "GLOBAL"
    get_who $P5108, $P5109
    new $P5110, 'Hash'
    set $P5108["%REG"], $P5110
    set $P5105, $P5110
  fallback2339:
    unless_null $P5105, vivi_6262340
    die "Contextual %*REG not found"
    box $P5111, "Contextual %*REG not found"
    set $P5105, $P5111
  vivi_6262340:
    set $P5104, $P5105
  fallback2338:
    set $P5103, $P5104["rep"]
    unless_null $P5103, fallback2341
    nqp_get_sc_object $P5112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5103, $P5112
  fallback2341:
    $P5113 = $P5102."push_pirop"("inc", $P5103)
    find_lex $P5114, "$min"
    set $N5003, $P5114
    set $N5004, 1
    isgt $I5002, $N5003, $N5004
    box $P5130, $I5002
    set $P5129, $P5130
    unless $I5002 goto if627_end2343 
.annotate 'line', 3275
    find_lex $P5115, "$ops"
    find_dynamic_lex $P5117, "%*REG"
    unless_null $P5117, fallback2344
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    set $P5118, $P5119["%REG"]
    unless_null $P5118, fallback2345
    get_hll_global $P5122, "GLOBAL"
    get_who $P5121, $P5122
    new $P5123, 'Hash'
    set $P5121["%REG"], $P5123
    set $P5118, $P5123
  fallback2345:
    unless_null $P5118, vivi_6282346
    die "Contextual %*REG not found"
    box $P5124, "Contextual %*REG not found"
    set $P5118, $P5124
  vivi_6282346:
    set $P5117, $P5118
  fallback2344:
    set $P5116, $P5117["rep"]
    unless_null $P5116, fallback2347
    nqp_get_sc_object $P5125, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5116, $P5125
  fallback2347:
    find_lex $P5126, "$min"
    find_lex $P5127, "$looplabel"
    $P5128 = $P5115."push_pirop"("lt", $P5116, $P5126, $P5127)
    set $P5129, $P5128
  if627_end2343:
    find_lex $P5131, "$max"
    set $N5005, $P5131
    set $N5006, 1
    isgt $I5003, $N5005, $N5006
    box $P5147, $I5003
    set $P5146, $P5147
    unless $I5003 goto if629_end2349 
.annotate 'line', 3276
    find_lex $P5132, "$ops"
    find_dynamic_lex $P5134, "%*REG"
    unless_null $P5134, fallback2350
    get_hll_global $P5137, "GLOBAL"
    get_who $P5136, $P5137
    set $P5135, $P5136["%REG"]
    unless_null $P5135, fallback2351
    get_hll_global $P5139, "GLOBAL"
    get_who $P5138, $P5139
    new $P5140, 'Hash'
    set $P5138["%REG"], $P5140
    set $P5135, $P5140
  fallback2351:
    unless_null $P5135, vivi_6302352
    die "Contextual %*REG not found"
    box $P5141, "Contextual %*REG not found"
    set $P5135, $P5141
  vivi_6302352:
    set $P5134, $P5135
  fallback2350:
    set $P5133, $P5134["rep"]
    unless_null $P5133, fallback2353
    nqp_get_sc_object $P5142, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5133, $P5142
  fallback2353:
    find_lex $P5143, "$max"
    find_lex $P5144, "$donelabel"
    $P5145 = $P5132."push_pirop"("ge", $P5133, $P5143, $P5144)
    set $P5146, $P5145
  if629_end2349:
    find_lex $P5148, "$max"
    set $N5007, $P5148
    set $N5008, 1
    isne $I5004, $N5007, $N5008
    box $P5175, $I5004
    set $P5174, $P5175
    unless $I5004 goto if631_end2355 
.annotate 'line', 3277
    find_lex $P5150, "self"
    nqp_decontainerize $P5149, $P5150
    find_lex $P5151, "$ops"
    find_lex $P5152, "$looplabel"
    find_dynamic_lex $P5154, "%*REG"
    unless_null $P5154, fallback2356
    get_hll_global $P5157, "GLOBAL"
    get_who $P5156, $P5157
    set $P5155, $P5156["%REG"]
    unless_null $P5155, fallback2357
    get_hll_global $P5159, "GLOBAL"
    get_who $P5158, $P5159
    new $P5160, 'Hash'
    set $P5158["%REG"], $P5160
    set $P5155, $P5160
  fallback2357:
    unless_null $P5155, vivi_6322358
    die "Contextual %*REG not found"
    box $P5161, "Contextual %*REG not found"
    set $P5155, $P5161
  vivi_6322358:
    set $P5154, $P5155
  fallback2356:
    set $P5153, $P5154["pos"]
    unless_null $P5153, fallback2359
    nqp_get_sc_object $P5162, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5153, $P5162
  fallback2359:
    find_dynamic_lex $P5164, "%*REG"
    unless_null $P5164, fallback2360
    get_hll_global $P5167, "GLOBAL"
    get_who $P5166, $P5167
    set $P5165, $P5166["%REG"]
    unless_null $P5165, fallback2361
    get_hll_global $P5169, "GLOBAL"
    get_who $P5168, $P5169
    new $P5170, 'Hash'
    set $P5168["%REG"], $P5170
    set $P5165, $P5170
  fallback2361:
    unless_null $P5165, vivi_6332362
    die "Contextual %*REG not found"
    box $P5171, "Contextual %*REG not found"
    set $P5165, $P5171
  vivi_6332362:
    set $P5164, $P5165
  fallback2360:
    set $P5163, $P5164["rep"]
    unless_null $P5163, fallback2363
    nqp_get_sc_object $P5172, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5163, $P5172
  fallback2363:
    $P5173 = $P5149."regex_mark"($P5151, $P5152, $P5153, $P5163)
    set $P5174, $P5173
  if631_end2355:
.annotate 'line', 3278
    find_lex $P5176, "$ops"
    find_lex $P5177, "$donelabel"
    $P5178 = $P5176."push"($P5177)
    .return ($P5178) 
.end
.HLL "nqp"
.namespace []
.sub "scan" :subid("cuid_143_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3304
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$looplabel", $P103 
    .lex "$scanlabel", $P104 
    .lex "$donelabel", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
.annotate 'line', 3305
    nqp_decontainerize $P5006, _lex_param_0
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2413
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2414
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2414:
    unless_null $P5009, vivi_6502415
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_6502415:
    set $P5008, $P5009
  fallback2413:
    set $P5007, $P5008["cur"]
    unless_null $P5007, fallback2416
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5016
  fallback2416:
    $P5017 = $P5006."post_new"("Ops", $P5007 :named("result"))
    set $P101, $P5017
.annotate 'line', 3306
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxscan")
    set $P102, $P5019
.annotate 'line', 3307
    nqp_decontainerize $P5020, _lex_param_0
    set $S5002, $P102
    concat $S5001, $S5002, "_loop"
    $P5021 = $P5020."post_new"("Label", $S5001 :named("name"))
    set $P103, $P5021
.annotate 'line', 3308
    nqp_decontainerize $P5022, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "_scan"
    $P5023 = $P5022."post_new"("Label", $S5003 :named("name"))
    set $P104, $P5023
.annotate 'line', 3309
    nqp_decontainerize $P5024, _lex_param_0
    set $S5006, $P102
    concat $S5005, $S5006, "_done"
    $P5025 = $P5024."post_new"("Label", $S5005 :named("name"))
    set $P105, $P5025
.annotate 'line', 3310
    find_dynamic_lex $P5027, "%*REG"
    unless_null $P5027, fallback2417
    get_hll_global $P5030, "GLOBAL"
    get_who $P5029, $P5030
    set $P5028, $P5029["%REG"]
    unless_null $P5028, fallback2418
    get_hll_global $P5032, "GLOBAL"
    get_who $P5031, $P5032
    new $P5033, 'Hash'
    set $P5031["%REG"], $P5033
    set $P5028, $P5033
  fallback2418:
    unless_null $P5028, vivi_6512419
    die "Contextual %*REG not found"
    box $P5034, "Contextual %*REG not found"
    set $P5028, $P5034
  vivi_6512419:
    set $P5027, $P5028
  fallback2417:
    set $P5026, $P5027["curclass"]
    unless_null $P5026, fallback2420
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5026, $P5035
  fallback2420:
    $P5036 = $P101."push_pirop"("repr_get_attr_int", "$I11", "self", $P5026, "\"$!from\"")
.annotate 'line', 3311
    $P5037 = $P101."push_pirop"("ne", "$I11", -1, $P105)
.annotate 'line', 3312
    $P5038 = $P101."push_pirop"("goto", $P104)
.annotate 'line', 3313
    $P5039 = $P101."push"($P103)
.annotate 'line', 3314
    find_dynamic_lex $P5041, "%*REG"
    unless_null $P5041, fallback2421
    get_hll_global $P5044, "GLOBAL"
    get_who $P5043, $P5044
    set $P5042, $P5043["%REG"]
    unless_null $P5042, fallback2422
    get_hll_global $P5046, "GLOBAL"
    get_who $P5045, $P5046
    new $P5047, 'Hash'
    set $P5045["%REG"], $P5047
    set $P5042, $P5047
  fallback2422:
    unless_null $P5042, vivi_6522423
    die "Contextual %*REG not found"
    box $P5048, "Contextual %*REG not found"
    set $P5042, $P5048
  vivi_6522423:
    set $P5041, $P5042
  fallback2421:
    set $P5040, $P5041["pos"]
    unless_null $P5040, fallback2424
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5040, $P5049
  fallback2424:
    $P5050 = $P101."push_pirop"("inc", $P5040)
.annotate 'line', 3315
    find_dynamic_lex $P5052, "%*REG"
    unless_null $P5052, fallback2425
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["%REG"]
    unless_null $P5053, fallback2426
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    new $P5058, 'Hash'
    set $P5056["%REG"], $P5058
    set $P5053, $P5058
  fallback2426:
    unless_null $P5053, vivi_6532427
    die "Contextual %*REG not found"
    box $P5059, "Contextual %*REG not found"
    set $P5053, $P5059
  vivi_6532427:
    set $P5052, $P5053
  fallback2425:
    set $P5051, $P5052["pos"]
    unless_null $P5051, fallback2428
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5051, $P5060
  fallback2428:
    find_dynamic_lex $P5062, "%*REG"
    unless_null $P5062, fallback2429
    get_hll_global $P5065, "GLOBAL"
    get_who $P5064, $P5065
    set $P5063, $P5064["%REG"]
    unless_null $P5063, fallback2430
    get_hll_global $P5067, "GLOBAL"
    get_who $P5066, $P5067
    new $P5068, 'Hash'
    set $P5066["%REG"], $P5068
    set $P5063, $P5068
  fallback2430:
    unless_null $P5063, vivi_6542431
    die "Contextual %*REG not found"
    box $P5069, "Contextual %*REG not found"
    set $P5063, $P5069
  vivi_6542431:
    set $P5062, $P5063
  fallback2429:
    set $P5061, $P5062["eos"]
    unless_null $P5061, fallback2432
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5061, $P5070
  fallback2432:
    find_dynamic_lex $P5072, "%*REG"
    unless_null $P5072, fallback2433
    get_hll_global $P5075, "GLOBAL"
    get_who $P5074, $P5075
    set $P5073, $P5074["%REG"]
    unless_null $P5073, fallback2434
    get_hll_global $P5077, "GLOBAL"
    get_who $P5076, $P5077
    new $P5078, 'Hash'
    set $P5076["%REG"], $P5078
    set $P5073, $P5078
  fallback2434:
    unless_null $P5073, vivi_6552435
    die "Contextual %*REG not found"
    box $P5079, "Contextual %*REG not found"
    set $P5073, $P5079
  vivi_6552435:
    set $P5072, $P5073
  fallback2433:
    set $P5071, $P5072["fail"]
    unless_null $P5071, fallback2436
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5071, $P5080
  fallback2436:
    $P5081 = $P101."push_pirop"("gt", $P5051, $P5061, $P5071)
.annotate 'line', 3316
    find_dynamic_lex $P5083, "%*REG"
    unless_null $P5083, fallback2437
    get_hll_global $P5086, "GLOBAL"
    get_who $P5085, $P5086
    set $P5084, $P5085["%REG"]
    unless_null $P5084, fallback2438
    get_hll_global $P5088, "GLOBAL"
    get_who $P5087, $P5088
    new $P5089, 'Hash'
    set $P5087["%REG"], $P5089
    set $P5084, $P5089
  fallback2438:
    unless_null $P5084, vivi_6562439
    die "Contextual %*REG not found"
    box $P5090, "Contextual %*REG not found"
    set $P5084, $P5090
  vivi_6562439:
    set $P5083, $P5084
  fallback2437:
    set $P5082, $P5083["cur"]
    unless_null $P5082, fallback2440
    nqp_get_sc_object $P5091, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5082, $P5091
  fallback2440:
    find_dynamic_lex $P5093, "%*REG"
    unless_null $P5093, fallback2441
    get_hll_global $P5096, "GLOBAL"
    get_who $P5095, $P5096
    set $P5094, $P5095["%REG"]
    unless_null $P5094, fallback2442
    get_hll_global $P5098, "GLOBAL"
    get_who $P5097, $P5098
    new $P5099, 'Hash'
    set $P5097["%REG"], $P5099
    set $P5094, $P5099
  fallback2442:
    unless_null $P5094, vivi_6572443
    die "Contextual %*REG not found"
    box $P5100, "Contextual %*REG not found"
    set $P5094, $P5100
  vivi_6572443:
    set $P5093, $P5094
  fallback2441:
    set $P5092, $P5093["curclass"]
    unless_null $P5092, fallback2444
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5092, $P5101
  fallback2444:
    find_dynamic_lex $P5103, "%*REG"
    unless_null $P5103, fallback2445
    get_hll_global $P5106, "GLOBAL"
    get_who $P5105, $P5106
    set $P5104, $P5105["%REG"]
    unless_null $P5104, fallback2446
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    new $P5109, 'Hash'
    set $P5107["%REG"], $P5109
    set $P5104, $P5109
  fallback2446:
    unless_null $P5104, vivi_6582447
    die "Contextual %*REG not found"
    box $P5110, "Contextual %*REG not found"
    set $P5104, $P5110
  vivi_6582447:
    set $P5103, $P5104
  fallback2445:
    set $P5102, $P5103["pos"]
    unless_null $P5102, fallback2448
    nqp_get_sc_object $P5111, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5102, $P5111
  fallback2448:
    $P5112 = $P101."push_pirop"("repr_bind_attr_int", $P5082, $P5092, "\"$!from\"", $P5102)
.annotate 'line', 3317
    $P5113 = $P101."push"($P104)
.annotate 'line', 3318
    nqp_decontainerize $P5114, _lex_param_0
    find_dynamic_lex $P5116, "%*REG"
    unless_null $P5116, fallback2449
    get_hll_global $P5119, "GLOBAL"
    get_who $P5118, $P5119
    set $P5117, $P5118["%REG"]
    unless_null $P5117, fallback2450
    get_hll_global $P5121, "GLOBAL"
    get_who $P5120, $P5121
    new $P5122, 'Hash'
    set $P5120["%REG"], $P5122
    set $P5117, $P5122
  fallback2450:
    unless_null $P5117, vivi_6592451
    die "Contextual %*REG not found"
    box $P5123, "Contextual %*REG not found"
    set $P5117, $P5123
  vivi_6592451:
    set $P5116, $P5117
  fallback2449:
    set $P5115, $P5116["pos"]
    unless_null $P5115, fallback2452
    nqp_get_sc_object $P5124, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5115, $P5124
  fallback2452:
    $P5125 = $P5114."regex_mark"($P101, $P103, $P5115, 0)
.annotate 'line', 3319
    $P5126 = $P101."push"($P105)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_144_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3323
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$prefix", $P102 
    .lex "$donelabel", $P103 
    .lex "$faillabel", $P104 
    .lex "$name", $P105 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P105, $P5005
.annotate 'line', 3324
    nqp_decontainerize $P5006, _lex_param_0
    find_dynamic_lex $P5008, "%*REG"
    unless_null $P5008, fallback2453
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["%REG"]
    unless_null $P5009, fallback2454
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%REG"], $P5014
    set $P5009, $P5014
  fallback2454:
    unless_null $P5009, vivi_6602455
    die "Contextual %*REG not found"
    box $P5015, "Contextual %*REG not found"
    set $P5009, $P5015
  vivi_6602455:
    set $P5008, $P5009
  fallback2453:
    set $P5007, $P5008["cur"]
    unless_null $P5007, fallback2456
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5007, $P5016
  fallback2456:
    $P5017 = $P5006."post_new"("Ops", $P5007 :named("result"))
    set $P101, $P5017
.annotate 'line', 3325
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."unique"("rxcap")
    set $P102, $P5019
.annotate 'line', 3326
    nqp_decontainerize $P5020, _lex_param_0
    set $S5002, $P102
    concat $S5001, $S5002, "_done"
    $P5021 = $P5020."post_new"("Label", $S5001 :named("name"))
    set $P103, $P5021
.annotate 'line', 3327
    nqp_decontainerize $P5022, _lex_param_0
    set $S5004, $P102
    concat $S5003, $S5004, "_fail"
    $P5023 = $P5022."post_new"("Label", $S5003 :named("name"))
    set $P104, $P5023
.annotate 'line', 3328
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = _lex_param_1."name"()
    $P5026 = $P5024."escape"($P5025)
    set $P105, $P5026
.annotate 'line', 3329
    nqp_decontainerize $P5027, _lex_param_0
    find_dynamic_lex $P5029, "%*REG"
    unless_null $P5029, fallback2457
    get_hll_global $P5032, "GLOBAL"
    get_who $P5031, $P5032
    set $P5030, $P5031["%REG"]
    unless_null $P5030, fallback2458
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%REG"], $P5035
    set $P5030, $P5035
  fallback2458:
    unless_null $P5030, vivi_6612459
    die "Contextual %*REG not found"
    box $P5036, "Contextual %*REG not found"
    set $P5030, $P5036
  vivi_6612459:
    set $P5029, $P5030
  fallback2457:
    set $P5028, $P5029["pos"]
    unless_null $P5028, fallback2460
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5028, $P5037
  fallback2460:
    $P5038 = $P5027."regex_mark"($P101, $P104, $P5028, 0)
.annotate 'line', 3330
    nqp_decontainerize $P5039, _lex_param_0
    set $P5040, _lex_param_1[0]
    unless_null $P5040, fallback2461
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5040, $P5041
  fallback2461:
    $P5042 = $P5039."regex_post"($P5040)
    $P5043 = $P101."push"($P5042)
.annotate 'line', 3331
    nqp_decontainerize $P5044, _lex_param_0
    $P5045 = $P5044."regex_peek"($P101, $P104, "$I11")
.annotate 'line', 3332
    find_dynamic_lex $P5047, "%*REG"
    unless_null $P5047, fallback2462
    get_hll_global $P5050, "GLOBAL"
    get_who $P5049, $P5050
    set $P5048, $P5049["%REG"]
    unless_null $P5048, fallback2463
    get_hll_global $P5052, "GLOBAL"
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%REG"], $P5053
    set $P5048, $P5053
  fallback2463:
    unless_null $P5048, vivi_6622464
    die "Contextual %*REG not found"
    box $P5054, "Contextual %*REG not found"
    set $P5048, $P5054
  vivi_6622464:
    set $P5047, $P5048
  fallback2462:
    set $P5046, $P5047["cur"]
    unless_null $P5046, fallback2465
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5046, $P5055
  fallback2465:
    $P5056 = $P101."push_pirop"("callmethod", "\"!cursor_start_subcapture\"", $P5046, "$I11", "$P11" :named("result"))
.annotate 'line', 3333
    find_dynamic_lex $P5058, "%*REG"
    unless_null $P5058, fallback2466
    get_hll_global $P5061, "GLOBAL"
    get_who $P5060, $P5061
    set $P5059, $P5060["%REG"]
    unless_null $P5059, fallback2467
    get_hll_global $P5063, "GLOBAL"
    get_who $P5062, $P5063
    new $P5064, 'Hash'
    set $P5062["%REG"], $P5064
    set $P5059, $P5064
  fallback2467:
    unless_null $P5059, vivi_6632468
    die "Contextual %*REG not found"
    box $P5065, "Contextual %*REG not found"
    set $P5059, $P5065
  vivi_6632468:
    set $P5058, $P5059
  fallback2466:
    set $P5057, $P5058["pos"]
    unless_null $P5057, fallback2469
    nqp_get_sc_object $P5066, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5057, $P5066
  fallback2469:
    $P5067 = $P101."push_pirop"("callmethod", "\"!cursor_pass\"", "$P11", $P5057)
.annotate 'line', 3334
    find_dynamic_lex $P5069, "%*REG"
    unless_null $P5069, fallback2470
    get_hll_global $P5072, "GLOBAL"
    get_who $P5071, $P5072
    set $P5070, $P5071["%REG"]
    unless_null $P5070, fallback2471
    get_hll_global $P5074, "GLOBAL"
    get_who $P5073, $P5074
    new $P5075, 'Hash'
    set $P5073["%REG"], $P5075
    set $P5070, $P5075
  fallback2471:
    unless_null $P5070, vivi_6642472
    die "Contextual %*REG not found"
    box $P5076, "Contextual %*REG not found"
    set $P5070, $P5076
  vivi_6642472:
    set $P5069, $P5070
  fallback2470:
    set $P5068, $P5069["cur"]
    unless_null $P5068, fallback2473
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5068, $P5077
  fallback2473:
    find_dynamic_lex $P5079, "%*REG"
    unless_null $P5079, fallback2474
    get_hll_global $P5082, "GLOBAL"
    get_who $P5081, $P5082
    set $P5080, $P5081["%REG"]
    unless_null $P5080, fallback2475
    get_hll_global $P5084, "GLOBAL"
    get_who $P5083, $P5084
    new $P5085, 'Hash'
    set $P5083["%REG"], $P5085
    set $P5080, $P5085
  fallback2475:
    unless_null $P5080, vivi_6652476
    die "Contextual %*REG not found"
    box $P5086, "Contextual %*REG not found"
    set $P5080, $P5086
  vivi_6652476:
    set $P5079, $P5080
  fallback2474:
    set $P5078, $P5079["cstack"]
    unless_null $P5078, fallback2477
    nqp_get_sc_object $P5087, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5078, $P5087
  fallback2477:
    $P5088 = $P101."push_pirop"("callmethod", "\"!cursor_capture\"", $P5068, "$P11", $P105, $P5078 :named("result"))
.annotate 'line', 3336
    $P5089 = $P101."push_pirop"("goto", $P103)
.annotate 'line', 3337
    $P5090 = $P101."push"($P104)
.annotate 'line', 3338
    find_dynamic_lex $P5092, "%*REG"
    unless_null $P5092, fallback2478
    get_hll_global $P5095, "GLOBAL"
    get_who $P5094, $P5095
    set $P5093, $P5094["%REG"]
    unless_null $P5093, fallback2479
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    new $P5098, 'Hash'
    set $P5096["%REG"], $P5098
    set $P5093, $P5098
  fallback2479:
    unless_null $P5093, vivi_6662480
    die "Contextual %*REG not found"
    box $P5099, "Contextual %*REG not found"
    set $P5093, $P5099
  vivi_6662480:
    set $P5092, $P5093
  fallback2478:
    set $P5091, $P5092["fail"]
    unless_null $P5091, fallback2481
    nqp_get_sc_object $P5100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5091, $P5100
  fallback2481:
    $P5101 = $P101."push_pirop"("goto", $P5091)
.annotate 'line', 3339
    $P5102 = $P101."push"($P103)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_145_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3343
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5174 = 'cuid_321_1347104163.3' 
    capture_lex $P5174 
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P107, $P5007
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P108, $P5008
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P109, $P5009
.annotate 'line', 3344
    nqp_decontainerize $P5010, _lex_param_0
    find_dynamic_lex $P5012, "%*REG"
    unless_null $P5012, fallback2482
    get_hll_global $P5015, "GLOBAL"
    get_who $P5014, $P5015
    set $P5013, $P5014["%REG"]
    unless_null $P5013, fallback2483
    get_hll_global $P5017, "GLOBAL"
    get_who $P5016, $P5017
    new $P5018, 'Hash'
    set $P5016["%REG"], $P5018
    set $P5013, $P5018
  fallback2483:
    unless_null $P5013, vivi_6672484
    die "Contextual %*REG not found"
    box $P5019, "Contextual %*REG not found"
    set $P5013, $P5019
  vivi_6672484:
    set $P5012, $P5013
  fallback2482:
    set $P5011, $P5012["cur"]
    unless_null $P5011, fallback2485
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5011, $P5020
  fallback2485:
    $P5021 = $P5010."post_new"("Ops", $P5011 :named("result"))
    set $P101, $P5021
.annotate 'line', 3345
    $P5022 = _lex_param_1."name"()
    defined $I5001, $P5022
    unless $I5001 goto if668_else2486 
    nqp_decontainerize $P5023, _lex_param_0
    $P5024 = _lex_param_1."name"()
    $P5025 = $P5023."escape"($P5024)
    set $P5026, $P5025
    goto if668_end2487
  if668_else2486:
    box $P5027, ""
    set $P5026, $P5027
  if668_end2487:
    set $P102, $P5026
.annotate 'line', 3346
    $P5028 = _lex_param_1."subtype"()
    set $P103, $P5028
    set $P5029, _lex_param_1[0]
    unless_null $P5029, fallback2490
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5029, $P5030
  fallback2490:
    get_hll_global $P5034, "GLOBAL"
    nqp_get_package_through_who $P5033, $P5034, "QAST"
    get_who $P5032, $P5033
    set $P5031, $P5032["Node"]
    unless_null $P5031, fallback2491
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5031, $P5035
  fallback2491:
    type_check $I5002, $P5029, $P5031
    unless $I5002 goto if669_else2488 
.annotate 'line', 3348
    nqp_decontainerize $P5036, _lex_param_0
    set $P5037, _lex_param_1[0]
    unless_null $P5037, fallback2492
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5037, $P5038
  fallback2492:
    $P5039 = $P5036."children"($P5037)
    set $P5044, $P5039
    goto if669_end2489
  if669_else2488:
.annotate 'line', 3349
    nqp_decontainerize $P5040, _lex_param_0
    set $P5041, _lex_param_1[0]
    unless_null $P5041, fallback2493
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5041, $P5042
  fallback2493:
    $P5043 = $P5040."post_children"($P5041)
    set $P5044, $P5043
  if669_end2489:
    set $P104, $P5044
    set $P5046, $P104[1]
    unless_null $P5046, fallback2495
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5046, $P5047
  fallback2495:
    set $P5045, $P5046
    defined $I5003, $P5045
    if $I5003, defor2494
    new $P5048, 'ResizablePMCArray'
    set $P5045, $P5048
  defor2494:
    set $P105, $P5045
    set $P5050, $P104[2]
    unless_null $P5050, fallback2497
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5050, $P5051
  fallback2497:
    set $P5049, $P5050
    defined $I5004, $P5049
    if $I5004, defor2496
    new $P5052, 'ResizablePMCArray'
    set $P5049, $P5052
  defor2496:
    set $P106, $P5049
    shift $P5053, $P105
    set $P107, $P5053
.annotate 'line', 3353
    $P5054 = _lex_param_1."negate"()
    unless $P5054 goto if670_else2498 
    set $S5001, "ge"
    goto if670_end2499
  if670_else2498:
    set $S5001, "lt"
  if670_end2499:
    box $P5055, $S5001
    set $P108, $P5055
    box $P5056, 0
    set $P109, $P5056
.annotate 'line', 3355
    set $P5057, $P104[0]
    unless_null $P5057, fallback2500
    nqp_get_sc_object $P5058, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5057, $P5058
  fallback2500:
    $P5059 = $P101."push"($P5057)
.annotate 'line', 3356
    find_dynamic_lex $P5061, "%*REG"
    unless_null $P5061, fallback2501
    get_hll_global $P5064, "GLOBAL"
    get_who $P5063, $P5064
    set $P5062, $P5063["%REG"]
    unless_null $P5062, fallback2502
    get_hll_global $P5066, "GLOBAL"
    get_who $P5065, $P5066
    new $P5067, 'Hash'
    set $P5065["%REG"], $P5067
    set $P5062, $P5067
  fallback2502:
    unless_null $P5062, vivi_6712503
    die "Contextual %*REG not found"
    box $P5068, "Contextual %*REG not found"
    set $P5062, $P5068
  vivi_6712503:
    set $P5061, $P5062
  fallback2501:
    set $P5060, $P5061["cur"]
    unless_null $P5060, fallback2504
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5060, $P5069
  fallback2504:
    find_dynamic_lex $P5071, "%*REG"
    unless_null $P5071, fallback2505
    get_hll_global $P5074, "GLOBAL"
    get_who $P5073, $P5074
    set $P5072, $P5073["%REG"]
    unless_null $P5072, fallback2506
    get_hll_global $P5076, "GLOBAL"
    get_who $P5075, $P5076
    new $P5077, 'Hash'
    set $P5075["%REG"], $P5077
    set $P5072, $P5077
  fallback2506:
    unless_null $P5072, vivi_6722507
    die "Contextual %*REG not found"
    box $P5078, "Contextual %*REG not found"
    set $P5072, $P5078
  vivi_6722507:
    set $P5071, $P5072
  fallback2505:
    set $P5070, $P5071["curclass"]
    unless_null $P5070, fallback2508
    nqp_get_sc_object $P5079, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5070, $P5079
  fallback2508:
    find_dynamic_lex $P5081, "%*REG"
    unless_null $P5081, fallback2509
    get_hll_global $P5084, "GLOBAL"
    get_who $P5083, $P5084
    set $P5082, $P5083["%REG"]
    unless_null $P5082, fallback2510
    get_hll_global $P5086, "GLOBAL"
    get_who $P5085, $P5086
    new $P5087, 'Hash'
    set $P5085["%REG"], $P5087
    set $P5082, $P5087
  fallback2510:
    unless_null $P5082, vivi_6732511
    die "Contextual %*REG not found"
    box $P5088, "Contextual %*REG not found"
    set $P5082, $P5088
  vivi_6732511:
    set $P5081, $P5082
  fallback2509:
    set $P5080, $P5081["pos"]
    unless_null $P5080, fallback2512
    nqp_get_sc_object $P5089, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5080, $P5089
  fallback2512:
    $P5090 = $P101."push_pirop"("repr_bind_attr_int", $P5060, $P5070, "\"$!pos\"", $P5080)
.annotate 'line', 3357
    find_dynamic_lex $P5092, "%*REG"
    unless_null $P5092, fallback2513
    get_hll_global $P5095, "GLOBAL"
    get_who $P5094, $P5095
    set $P5093, $P5094["%REG"]
    unless_null $P5093, fallback2514
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    new $P5098, 'Hash'
    set $P5096["%REG"], $P5098
    set $P5093, $P5098
  fallback2514:
    unless_null $P5093, vivi_6742515
    die "Contextual %*REG not found"
    box $P5099, "Contextual %*REG not found"
    set $P5093, $P5099
  vivi_6742515:
    set $P5092, $P5093
  fallback2513:
    set $P5091, $P5092["cur"]
    unless_null $P5091, fallback2516
    nqp_get_sc_object $P5100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5091, $P5100
  fallback2516:
    $P5101 = $P101."push_pirop"("callmethod", $P107, $P5091, $P105 :flat, $P106 :flat, "$P11" :named("result"))
.annotate 'line', 3358
    find_dynamic_lex $P5103, "%*REG"
    unless_null $P5103, fallback2517
    get_hll_global $P5106, "GLOBAL"
    get_who $P5105, $P5106
    set $P5104, $P5105["%REG"]
    unless_null $P5104, fallback2518
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    new $P5109, 'Hash'
    set $P5107["%REG"], $P5109
    set $P5104, $P5109
  fallback2518:
    unless_null $P5104, vivi_6752519
    die "Contextual %*REG not found"
    box $P5110, "Contextual %*REG not found"
    set $P5104, $P5110
  vivi_6752519:
    set $P5103, $P5104
  fallback2517:
    set $P5102, $P5103["curclass"]
    unless_null $P5102, fallback2520
    nqp_get_sc_object $P5111, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5102, $P5111
  fallback2520:
    $P5112 = $P101."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P5102, "\"$!pos\"")
.annotate 'line', 3359
    find_dynamic_lex $P5114, "%*REG"
    unless_null $P5114, fallback2521
    get_hll_global $P5117, "GLOBAL"
    get_who $P5116, $P5117
    set $P5115, $P5116["%REG"]
    unless_null $P5115, fallback2522
    get_hll_global $P5119, "GLOBAL"
    get_who $P5118, $P5119
    new $P5120, 'Hash'
    set $P5118["%REG"], $P5120
    set $P5115, $P5120
  fallback2522:
    unless_null $P5115, vivi_6762523
    die "Contextual %*REG not found"
    box $P5121, "Contextual %*REG not found"
    set $P5115, $P5121
  vivi_6762523:
    set $P5114, $P5115
  fallback2521:
    set $P5113, $P5114["fail"]
    unless_null $P5113, fallback2524
    nqp_get_sc_object $P5122, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5113, $P5122
  fallback2524:
    $P5123 = $P101."push_pirop"($P108, "$I11", "0", $P5113)
    set $S5002, $P103
    isne $I5005, $S5002, "zerowidth"
    box $P5127, $I5005
    set $P5126, $P5127
    unless $I5005 goto if677_end2526 
    .const 'Sub' $P5124 = 'cuid_321_1347104163.3' 
    capture_lex $P5124
    $P5125 = $P5124()
    set $P5126, $P5125
  if677_end2526:
    isfalse $I5006, $P109
    set $I5008, $I5006
    unless $I5006 goto if694_end2584 
    set $S5003, $P103
    iseq $I5007, $S5003, "capture"
    set $I5008, $I5007
  if694_end2584:
    box $P5150, $I5008
    set $P5149, $P5150
    unless $I5008 goto if693_end2582 
.annotate 'line', 3394
    find_dynamic_lex $P5129, "%*REG"
    unless_null $P5129, fallback2585
    get_hll_global $P5132, "GLOBAL"
    get_who $P5131, $P5132
    set $P5130, $P5131["%REG"]
    unless_null $P5130, fallback2586
    get_hll_global $P5134, "GLOBAL"
    get_who $P5133, $P5134
    new $P5135, 'Hash'
    set $P5133["%REG"], $P5135
    set $P5130, $P5135
  fallback2586:
    unless_null $P5130, vivi_6952587
    die "Contextual %*REG not found"
    box $P5136, "Contextual %*REG not found"
    set $P5130, $P5136
  vivi_6952587:
    set $P5129, $P5130
  fallback2585:
    set $P5128, $P5129["cur"]
    unless_null $P5128, fallback2588
    nqp_get_sc_object $P5137, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5128, $P5137
  fallback2588:
    find_dynamic_lex $P5139, "%*REG"
    unless_null $P5139, fallback2589
    get_hll_global $P5142, "GLOBAL"
    get_who $P5141, $P5142
    set $P5140, $P5141["%REG"]
    unless_null $P5140, fallback2590
    get_hll_global $P5144, "GLOBAL"
    get_who $P5143, $P5144
    new $P5145, 'Hash'
    set $P5143["%REG"], $P5145
    set $P5140, $P5145
  fallback2590:
    unless_null $P5140, vivi_6962591
    die "Contextual %*REG not found"
    box $P5146, "Contextual %*REG not found"
    set $P5140, $P5146
  vivi_6962591:
    set $P5139, $P5140
  fallback2589:
    set $P5138, $P5139["cstack"]
    unless_null $P5138, fallback2592
    nqp_get_sc_object $P5147, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5138, $P5147
  fallback2592:
    $P5148 = $P101."push_pirop"("callmethod", "\"!cursor_capture\"", $P5128, "$P11", $P102, $P5138 :named("result"))
    set $P5149, $P5148
  if693_end2582:
    set $S5004, $P103
    iseq $I5009, $S5004, "zerowidth"
    box $P5173, $I5009
    set $P5172, $P5173
    if $I5009 goto unless697_end2594 
.annotate 'line', 3397
    find_dynamic_lex $P5152, "%*REG"
    unless_null $P5152, fallback2595
    get_hll_global $P5155, "GLOBAL"
    get_who $P5154, $P5155
    set $P5153, $P5154["%REG"]
    unless_null $P5153, fallback2596
    get_hll_global $P5157, "GLOBAL"
    get_who $P5156, $P5157
    new $P5158, 'Hash'
    set $P5156["%REG"], $P5158
    set $P5153, $P5158
  fallback2596:
    unless_null $P5153, vivi_6982597
    die "Contextual %*REG not found"
    box $P5159, "Contextual %*REG not found"
    set $P5153, $P5159
  vivi_6982597:
    set $P5152, $P5153
  fallback2595:
    set $P5151, $P5152["pos"]
    unless_null $P5151, fallback2598
    nqp_get_sc_object $P5160, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5151, $P5160
  fallback2598:
    find_dynamic_lex $P5162, "%*REG"
    unless_null $P5162, fallback2599
    get_hll_global $P5165, "GLOBAL"
    get_who $P5164, $P5165
    set $P5163, $P5164["%REG"]
    unless_null $P5163, fallback2600
    get_hll_global $P5167, "GLOBAL"
    get_who $P5166, $P5167
    new $P5168, 'Hash'
    set $P5166["%REG"], $P5168
    set $P5163, $P5168
  fallback2600:
    unless_null $P5163, vivi_6992601
    die "Contextual %*REG not found"
    box $P5169, "Contextual %*REG not found"
    set $P5163, $P5169
  vivi_6992601:
    set $P5162, $P5163
  fallback2599:
    set $P5161, $P5162["curclass"]
    unless_null $P5161, fallback2602
    nqp_get_sc_object $P5170, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5161, $P5170
  fallback2602:
    $P5171 = $P101."push_pirop"("repr_get_attr_int", $P5151, "$P11", $P5161, "\"$!pos\"")
    set $P5172, $P5171
  unless697_end2594:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_321_1347104163.3") :anon :lex :outer("cuid_145_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3360
    .const 'Sub' $P5023 = 'cuid_320_1347104163.3' 
    capture_lex $P5023 
    .lex "$rxname", $P101 
    .lex "$passlabel", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 3361
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."unique"("rxsubrule")
    set $P101, $P5005
.annotate 'line', 3362
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    set $S5002, $P101
    concat $S5001, $S5002, "_pass"
    $P5008 = $P5006."post_new"("Label", $S5001 :named("name"))
    set $P102, $P5008
.annotate 'line', 3363
    find_lex $P5009, "$node"
    $P5010 = $P5009."backtrack"()
    set $S5003, $P5010
    iseq $I5001, $S5003, "r"
    unless $I5001 goto if678_else2527 
    find_lex $P5011, "$subtype"
    set $S5004, $P5011
    iseq $I5002, $S5004, "method"
    box $P5019, $I5002
    set $P5018, $P5019
    if $I5002 goto unless679_end2530 
.annotate 'line', 3364
.annotate 'line', 3365
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$ops"
    $P5015 = $P5012."regex_mark"($P5014, $P102, -1, 0)
.annotate 'line', 3366
    find_lex $P5016, "$ops"
    $P5017 = $P5016."push"($P102)
    set $P5018, $P5017
  unless679_end2530:
    set $P5022, $P5018
    goto if678_end2528
  if678_else2527:
    .const 'Sub' $P5020 = 'cuid_320_1347104163.3' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5022, $P5021
  if678_end2528:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_320_1347104163.3") :anon :lex :outer("cuid_321_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3369
    .lex "$backlabel", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
.annotate 'line', 3370
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$rxname"
    set $S5002, $P5004
    concat $S5001, $S5002, "_back"
    $P5005 = $P5002."post_new"("Label", $S5001 :named("name"))
    set $P101, $P5005
.annotate 'line', 3371
    find_lex $P5006, "$ops"
    find_lex $P5007, "$passlabel"
    $P5008 = $P5006."push_pirop"("goto", $P5007)
.annotate 'line', 3372
    find_lex $P5009, "$ops"
    $P5010 = $P5009."push"($P101)
.annotate 'line', 3373
    find_lex $P5011, "$ops"
    $P5012 = $P5011."push_pirop"("callmethod", "\"!cursor_next\"", "$P11", "$P11" :named("result"))
.annotate 'line', 3374
    find_lex $P5013, "$ops"
    find_dynamic_lex $P5015, "%*REG"
    unless_null $P5015, fallback2531
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["%REG"]
    unless_null $P5016, fallback2532
    get_hll_global $P5020, "GLOBAL"
    get_who $P5019, $P5020
    new $P5021, 'Hash'
    set $P5019["%REG"], $P5021
    set $P5016, $P5021
  fallback2532:
    unless_null $P5016, vivi_6802533
    die "Contextual %*REG not found"
    box $P5022, "Contextual %*REG not found"
    set $P5016, $P5022
  vivi_6802533:
    set $P5015, $P5016
  fallback2531:
    set $P5014, $P5015["curclass"]
    unless_null $P5014, fallback2534
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5014, $P5023
  fallback2534:
    $P5024 = $P5013."push_pirop"("repr_get_attr_int", "$I11", "$P11", $P5014, "\"$!pos\"")
.annotate 'line', 3375
    find_lex $P5025, "$ops"
    find_lex $P5026, "$testop"
    find_dynamic_lex $P5028, "%*REG"
    unless_null $P5028, fallback2535
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    set $P5029, $P5030["%REG"]
    unless_null $P5029, fallback2536
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    new $P5034, 'Hash'
    set $P5032["%REG"], $P5034
    set $P5029, $P5034
  fallback2536:
    unless_null $P5029, vivi_6812537
    die "Contextual %*REG not found"
    box $P5035, "Contextual %*REG not found"
    set $P5029, $P5035
  vivi_6812537:
    set $P5028, $P5029
  fallback2535:
    set $P5027, $P5028["fail"]
    unless_null $P5027, fallback2538
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5027, $P5036
  fallback2538:
    $P5037 = $P5025."push_pirop"($P5026, "$I11", "0", $P5027)
.annotate 'line', 3376
    find_lex $P5038, "$ops"
    find_lex $P5039, "$passlabel"
    $P5040 = $P5038."push"($P5039)
    find_lex $P5041, "$subtype"
    set $S5003, $P5041
    iseq $I5001, $S5003, "capture"
    unless $I5001 goto if682_else2539 
.annotate 'line', 3377
.annotate 'line', 3378
    find_lex $P5042, "$ops"
    find_dynamic_lex $P5044, "%*REG"
    unless_null $P5044, fallback2541
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    set $P5045, $P5046["%REG"]
    unless_null $P5045, fallback2542
    get_hll_global $P5049, "GLOBAL"
    get_who $P5048, $P5049
    new $P5050, 'Hash'
    set $P5048["%REG"], $P5050
    set $P5045, $P5050
  fallback2542:
    unless_null $P5045, vivi_6832543
    die "Contextual %*REG not found"
    box $P5051, "Contextual %*REG not found"
    set $P5045, $P5051
  vivi_6832543:
    set $P5044, $P5045
  fallback2541:
    set $P5043, $P5044["cur"]
    unless_null $P5043, fallback2544
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5043, $P5052
  fallback2544:
    find_lex $P5053, "$name"
    find_dynamic_lex $P5055, "%*REG"
    unless_null $P5055, fallback2545
    get_hll_global $P5058, "GLOBAL"
    get_who $P5057, $P5058
    set $P5056, $P5057["%REG"]
    unless_null $P5056, fallback2546
    get_hll_global $P5060, "GLOBAL"
    get_who $P5059, $P5060
    new $P5061, 'Hash'
    set $P5059["%REG"], $P5061
    set $P5056, $P5061
  fallback2546:
    unless_null $P5056, vivi_6842547
    die "Contextual %*REG not found"
    box $P5062, "Contextual %*REG not found"
    set $P5056, $P5062
  vivi_6842547:
    set $P5055, $P5056
  fallback2545:
    set $P5054, $P5055["cstack"]
    unless_null $P5054, fallback2548
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5054, $P5063
  fallback2548:
    $P5064 = $P5042."push_pirop"("callmethod", "\"!cursor_capture\"", $P5043, "$P11", $P5053, $P5054 :named("result"))
    box $P5065, 1
    store_lex "$captured", $P5065
    set $P5088, $P5065
    goto if682_end2540
  if682_else2539:
.annotate 'line', 3382
.annotate 'line', 3383
    find_lex $P5066, "$ops"
    find_dynamic_lex $P5068, "%*REG"
    unless_null $P5068, fallback2549
    get_hll_global $P5071, "GLOBAL"
    get_who $P5070, $P5071
    set $P5069, $P5070["%REG"]
    unless_null $P5069, fallback2550
    get_hll_global $P5073, "GLOBAL"
    get_who $P5072, $P5073
    new $P5074, 'Hash'
    set $P5072["%REG"], $P5074
    set $P5069, $P5074
  fallback2550:
    unless_null $P5069, vivi_6852551
    die "Contextual %*REG not found"
    box $P5075, "Contextual %*REG not found"
    set $P5069, $P5075
  vivi_6852551:
    set $P5068, $P5069
  fallback2549:
    set $P5067, $P5068["cur"]
    unless_null $P5067, fallback2552
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5067, $P5076
  fallback2552:
    find_dynamic_lex $P5078, "%*REG"
    unless_null $P5078, fallback2553
    get_hll_global $P5081, "GLOBAL"
    get_who $P5080, $P5081
    set $P5079, $P5080["%REG"]
    unless_null $P5079, fallback2554
    get_hll_global $P5083, "GLOBAL"
    get_who $P5082, $P5083
    new $P5084, 'Hash'
    set $P5082["%REG"], $P5084
    set $P5079, $P5084
  fallback2554:
    unless_null $P5079, vivi_6862555
    die "Contextual %*REG not found"
    box $P5085, "Contextual %*REG not found"
    set $P5079, $P5085
  vivi_6862555:
    set $P5078, $P5079
  fallback2553:
    set $P5077, $P5078["cstack"]
    unless_null $P5077, fallback2556
    nqp_get_sc_object $P5086, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5077, $P5086
  fallback2556:
    $P5087 = $P5066."push_pirop"("callmethod", "\"!cursor_push_cstack\"", $P5067, "$P11", $P5077 :named("result"))
    set $P5088, $P5087
  if682_end2540:
.annotate 'line', 3386
    find_lex $P5089, "$ops"
    $P5090 = $P5089."push_pirop"("set_addr", "$I11", $P101)
.annotate 'line', 3387
    find_lex $P5091, "$ops"
    find_dynamic_lex $P5093, "%*REG"
    unless_null $P5093, fallback2557
    get_hll_global $P5096, "GLOBAL"
    get_who $P5095, $P5096
    set $P5094, $P5095["%REG"]
    unless_null $P5094, fallback2558
    get_hll_global $P5098, "GLOBAL"
    get_who $P5097, $P5098
    new $P5099, 'Hash'
    set $P5097["%REG"], $P5099
    set $P5094, $P5099
  fallback2558:
    unless_null $P5094, vivi_6872559
    die "Contextual %*REG not found"
    box $P5100, "Contextual %*REG not found"
    set $P5094, $P5100
  vivi_6872559:
    set $P5093, $P5094
  fallback2557:
    set $P5092, $P5093["bstack"]
    unless_null $P5092, fallback2560
    nqp_get_sc_object $P5101, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5092, $P5101
  fallback2560:
    $P5102 = $P5091."push_pirop"("push", $P5092, "$I11")
.annotate 'line', 3388
    find_lex $P5103, "$ops"
    find_dynamic_lex $P5105, "%*REG"
    unless_null $P5105, fallback2561
    get_hll_global $P5108, "GLOBAL"
    get_who $P5107, $P5108
    set $P5106, $P5107["%REG"]
    unless_null $P5106, fallback2562
    get_hll_global $P5110, "GLOBAL"
    get_who $P5109, $P5110
    new $P5111, 'Hash'
    set $P5109["%REG"], $P5111
    set $P5106, $P5111
  fallback2562:
    unless_null $P5106, vivi_6882563
    die "Contextual %*REG not found"
    box $P5112, "Contextual %*REG not found"
    set $P5106, $P5112
  vivi_6882563:
    set $P5105, $P5106
  fallback2561:
    set $P5104, $P5105["bstack"]
    unless_null $P5104, fallback2564
    nqp_get_sc_object $P5113, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5104, $P5113
  fallback2564:
    $P5114 = $P5103."push_pirop"("push", $P5104, 0)
.annotate 'line', 3389
    find_lex $P5115, "$ops"
    find_dynamic_lex $P5117, "%*REG"
    unless_null $P5117, fallback2565
    get_hll_global $P5120, "GLOBAL"
    get_who $P5119, $P5120
    set $P5118, $P5119["%REG"]
    unless_null $P5118, fallback2566
    get_hll_global $P5122, "GLOBAL"
    get_who $P5121, $P5122
    new $P5123, 'Hash'
    set $P5121["%REG"], $P5123
    set $P5118, $P5123
  fallback2566:
    unless_null $P5118, vivi_6892567
    die "Contextual %*REG not found"
    box $P5124, "Contextual %*REG not found"
    set $P5118, $P5124
  vivi_6892567:
    set $P5117, $P5118
  fallback2565:
    set $P5116, $P5117["bstack"]
    unless_null $P5116, fallback2568
    nqp_get_sc_object $P5125, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5116, $P5125
  fallback2568:
    find_dynamic_lex $P5127, "%*REG"
    unless_null $P5127, fallback2569
    get_hll_global $P5130, "GLOBAL"
    get_who $P5129, $P5130
    set $P5128, $P5129["%REG"]
    unless_null $P5128, fallback2570
    get_hll_global $P5132, "GLOBAL"
    get_who $P5131, $P5132
    new $P5133, 'Hash'
    set $P5131["%REG"], $P5133
    set $P5128, $P5133
  fallback2570:
    unless_null $P5128, vivi_6902571
    die "Contextual %*REG not found"
    box $P5134, "Contextual %*REG not found"
    set $P5128, $P5134
  vivi_6902571:
    set $P5127, $P5128
  fallback2569:
    set $P5126, $P5127["pos"]
    unless_null $P5126, fallback2572
    nqp_get_sc_object $P5135, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5126, $P5135
  fallback2572:
    $P5136 = $P5115."push_pirop"("push", $P5116, $P5126)
.annotate 'line', 3390
    find_lex $P5137, "$ops"
    find_dynamic_lex $P5139, "%*REG"
    unless_null $P5139, fallback2573
    get_hll_global $P5142, "GLOBAL"
    get_who $P5141, $P5142
    set $P5140, $P5141["%REG"]
    unless_null $P5140, fallback2574
    get_hll_global $P5144, "GLOBAL"
    get_who $P5143, $P5144
    new $P5145, 'Hash'
    set $P5143["%REG"], $P5145
    set $P5140, $P5145
  fallback2574:
    unless_null $P5140, vivi_6912575
    die "Contextual %*REG not found"
    box $P5146, "Contextual %*REG not found"
    set $P5140, $P5146
  vivi_6912575:
    set $P5139, $P5140
  fallback2573:
    set $P5138, $P5139["cstack"]
    unless_null $P5138, fallback2576
    nqp_get_sc_object $P5147, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5138, $P5147
  fallback2576:
    $P5148 = $P5137."push_pirop"("elements", "$I11", $P5138)
.annotate 'line', 3391
    find_lex $P5149, "$ops"
    find_dynamic_lex $P5151, "%*REG"
    unless_null $P5151, fallback2577
    get_hll_global $P5154, "GLOBAL"
    get_who $P5153, $P5154
    set $P5152, $P5153["%REG"]
    unless_null $P5152, fallback2578
    get_hll_global $P5156, "GLOBAL"
    get_who $P5155, $P5156
    new $P5157, 'Hash'
    set $P5155["%REG"], $P5157
    set $P5152, $P5157
  fallback2578:
    unless_null $P5152, vivi_6922579
    die "Contextual %*REG not found"
    box $P5158, "Contextual %*REG not found"
    set $P5152, $P5158
  vivi_6922579:
    set $P5151, $P5152
  fallback2577:
    set $P5150, $P5151["bstack"]
    unless_null $P5150, fallback2580
    nqp_get_sc_object $P5159, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5150, $P5159
  fallback2580:
    $P5160 = $P5149."push_pirop"("push", $P5150, "$I11")
    .return ($P5160) 
.end
.HLL "nqp"
.namespace []
.sub "uniprop" :subid("cuid_146_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3402
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ops", $P101 
    .lex "$cmpop", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P102, $P5002
.annotate 'line', 3403
    nqp_decontainerize $P5003, _lex_param_0
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2603
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2604
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2604:
    unless_null $P5006, vivi_7002605
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_7002605:
    set $P5005, $P5006
  fallback2603:
    set $P5004, $P5005["cur"]
    unless_null $P5004, fallback2606
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5013
  fallback2606:
    $P5014 = $P5003."post_new"("Ops", $P5004 :named("result"))
    set $P101, $P5014
.annotate 'line', 3404
    $P5015 = _lex_param_1."negate"()
    unless $P5015 goto if701_else2607 
    set $S5001, "ne"
    goto if701_end2608
  if701_else2607:
    set $S5001, "eq"
  if701_end2608:
    box $P5016, $S5001
    set $P102, $P5016
.annotate 'line', 3405
    set $P5017, _lex_param_1[0]
    unless_null $P5017, fallback2609
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5017, $P5018
  fallback2609:
    set $S5004, $P5017
    concat $S5003, "\"", $S5004
    concat $S5002, $S5003, "\""
    $P5019 = $P101."push_pirop"("assign", "$S10", $S5002)
.annotate 'line', 3406
    find_dynamic_lex $P5021, "%*REG"
    unless_null $P5021, fallback2610
    get_hll_global $P5024, "GLOBAL"
    get_who $P5023, $P5024
    set $P5022, $P5023["%REG"]
    unless_null $P5022, fallback2611
    get_hll_global $P5026, "GLOBAL"
    get_who $P5025, $P5026
    new $P5027, 'Hash'
    set $P5025["%REG"], $P5027
    set $P5022, $P5027
  fallback2611:
    unless_null $P5022, vivi_7022612
    die "Contextual %*REG not found"
    box $P5028, "Contextual %*REG not found"
    set $P5022, $P5028
  vivi_7022612:
    set $P5021, $P5022
  fallback2610:
    set $P5020, $P5021["tgt"]
    unless_null $P5020, fallback2613
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5020, $P5029
  fallback2613:
    find_dynamic_lex $P5031, "%*REG"
    unless_null $P5031, fallback2614
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    set $P5032, $P5033["%REG"]
    unless_null $P5032, fallback2615
    get_hll_global $P5036, "GLOBAL"
    get_who $P5035, $P5036
    new $P5037, 'Hash'
    set $P5035["%REG"], $P5037
    set $P5032, $P5037
  fallback2615:
    unless_null $P5032, vivi_7032616
    die "Contextual %*REG not found"
    box $P5038, "Contextual %*REG not found"
    set $P5032, $P5038
  vivi_7032616:
    set $P5031, $P5032
  fallback2614:
    set $P5030, $P5031["pos"]
    unless_null $P5030, fallback2617
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5030, $P5039
  fallback2617:
    $P5040 = $P101."push_pirop"("is_uprop", "$I11", "$S10", $P5020, $P5030)
.annotate 'line', 3407
    find_dynamic_lex $P5042, "%*REG"
    unless_null $P5042, fallback2618
    get_hll_global $P5045, "GLOBAL"
    get_who $P5044, $P5045
    set $P5043, $P5044["%REG"]
    unless_null $P5043, fallback2619
    get_hll_global $P5047, "GLOBAL"
    get_who $P5046, $P5047
    new $P5048, 'Hash'
    set $P5046["%REG"], $P5048
    set $P5043, $P5048
  fallback2619:
    unless_null $P5043, vivi_7042620
    die "Contextual %*REG not found"
    box $P5049, "Contextual %*REG not found"
    set $P5043, $P5049
  vivi_7042620:
    set $P5042, $P5043
  fallback2618:
    set $P5041, $P5042["fail"]
    unless_null $P5041, fallback2621
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5041, $P5050
  fallback2621:
    $P5051 = $P101."push_pirop"($P102, "$I11", 0, $P5041)
.annotate 'line', 3408
    $P5052 = _lex_param_1."subtype"()
    set $S5005, $P5052
    iseq $I5001, $S5005, "zerowidth"
    box $P5065, $I5001
    set $P5064, $P5065
    if $I5001 goto unless705_end2623 
    find_dynamic_lex $P5054, "%*REG"
    unless_null $P5054, fallback2624
    get_hll_global $P5057, "GLOBAL"
    get_who $P5056, $P5057
    set $P5055, $P5056["%REG"]
    unless_null $P5055, fallback2625
    get_hll_global $P5059, "GLOBAL"
    get_who $P5058, $P5059
    new $P5060, 'Hash'
    set $P5058["%REG"], $P5060
    set $P5055, $P5060
  fallback2625:
    unless_null $P5055, vivi_7062626
    die "Contextual %*REG not found"
    box $P5061, "Contextual %*REG not found"
    set $P5055, $P5061
  vivi_7062626:
    set $P5054, $P5055
  fallback2624:
    set $P5053, $P5054["pos"]
    unless_null $P5053, fallback2627
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5053, $P5062
  fallback2627:
    $P5063 = $P101."push_pirop"("inc", $P5053)
    set $P5064, $P5063
  unless705_end2623:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_147_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3413
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
.sub "regex_mark" :subid("cuid_148_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3415
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
.annotate 'line', 3416
    find_dynamic_lex $P5002, "%*REG"
    unless_null $P5002, fallback2628
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["%REG"]
    unless_null $P5003, fallback2629
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%REG"], $P5008
    set $P5003, $P5008
  fallback2629:
    unless_null $P5003, vivi_7072630
    die "Contextual %*REG not found"
    box $P5009, "Contextual %*REG not found"
    set $P5003, $P5009
  vivi_7072630:
    set $P5002, $P5003
  fallback2628:
    set $P5001, $P5002["bstack"]
    unless_null $P5001, fallback2631
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5010
  fallback2631:
    $P5011 = _lex_param_1."push_pirop"("nqp_rxmark", $P5001, _lex_param_2, _lex_param_3, _lex_param_4)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "regex_peek" :subid("cuid_149_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3419
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy 
    .const 'Sub' $P5017 = 'cuid_322_1347104163.3' 
    capture_lex $P5017 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
    .lex "@regs", _lex_param_3 
.annotate 'line', 3420
    find_dynamic_lex $P5002, "%*REG"
    unless_null $P5002, fallback2632
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["%REG"]
    unless_null $P5003, fallback2633
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%REG"], $P5008
    set $P5003, $P5008
  fallback2633:
    unless_null $P5003, vivi_7082634
    die "Contextual %*REG not found"
    box $P5009, "Contextual %*REG not found"
    set $P5003, $P5009
  vivi_7082634:
    set $P5002, $P5003
  fallback2632:
    set $P5001, $P5002["bstack"]
    unless_null $P5001, fallback2635
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5010
  fallback2635:
    $P5011 = _lex_param_1."push_pirop"("nqp_rxpeek", "$I19", $P5001, _lex_param_2)
    set $P5012, _lex_param_3
    iter $P5014, _lex_param_3
  for_next2642:
    unless $P5014, for_done2644
    shift $P5016, $P5014
  for_redo2643:
    .const 'Sub' $P5015 = 'cuid_322_1347104163.3' 
    capture_lex $P5015
    $P5012 = $P5015($P5016)
    goto for_next2642
  for_done2644:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_322_1347104163.3") :anon :lex :outer("cuid_149_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3421
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 3422
    find_lex $P5001, "$ops"
    $P5002 = $P5001."push_pirop"("inc", "$I19")
    set $S5001, _lex_param_0
    isne $I5001, $S5001, "*"
    box $P5016, $I5001
    set $P5015, $P5016
    unless $I5001 goto if709_end2637 
.annotate 'line', 3423
    find_lex $P5003, "$ops"
    find_dynamic_lex $P5005, "%*REG"
    unless_null $P5005, fallback2638
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    set $P5006, $P5007["%REG"]
    unless_null $P5006, fallback2639
    get_hll_global $P5010, "GLOBAL"
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%REG"], $P5011
    set $P5006, $P5011
  fallback2639:
    unless_null $P5006, vivi_7102640
    die "Contextual %*REG not found"
    box $P5012, "Contextual %*REG not found"
    set $P5006, $P5012
  vivi_7102640:
    set $P5005, $P5006
  fallback2638:
    set $P5004, $P5005["bstack"]
    unless_null $P5004, fallback2641
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5004, $P5013
  fallback2641:
    set $S5003, $P5004
    concat $S5002, $S5003, "[$I19]"
    $P5014 = $P5003."push_pirop"("set", _lex_param_0, $S5002)
    set $P5015, $P5014
  if709_end2637:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "regex_commit" :subid("cuid_150_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3427
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$ops", _lex_param_1 
    .lex "$mark", _lex_param_2 
.annotate 'line', 3428
    find_dynamic_lex $P5002, "%*REG"
    unless_null $P5002, fallback2645
    get_hll_global $P5005, "GLOBAL"
    get_who $P5004, $P5005
    set $P5003, $P5004["%REG"]
    unless_null $P5003, fallback2646
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%REG"], $P5008
    set $P5003, $P5008
  fallback2646:
    unless_null $P5003, vivi_7112647
    die "Contextual %*REG not found"
    box $P5009, "Contextual %*REG not found"
    set $P5003, $P5009
  vivi_7112647:
    set $P5002, $P5003
  fallback2645:
    set $P5001, $P5002["bstack"]
    unless_null $P5001, fallback2648
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5010
  fallback2648:
    $P5011 = _lex_param_1."push_pirop"("nqp_rxcommit", $P5001, _lex_param_2)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "as_post" :subid("cuid_151_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$unknown", _lex_param_1 
.annotate 'line', 3432
    get_how $P5001, _lex_param_1
    $P5002 = $P5001."name"(_lex_param_1)
    set $S5002, $P5002
    concat $S5001, "Unknown QAST node type ", $S5002
    box $P5003, $S5001
    die $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "operations" :subid("cuid_152_1347104163.3") :anon :lex :outer("cuid_59_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
.annotate 'line', 3435
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Operations"]
    unless_null $P5001, fallback2649
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058", 7
    set $P5001, $P5005
  fallback2649:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_324_1347104163.3") :load :init
.annotate 'file', "src\\stage2\\QAST.nqp"
    .const 'Sub' $P5001 = 'cuid_323_1347104163.3' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347104163.3" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("NQPHLL")
    nqp_create_sc $P5001, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316"
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
    push $P5003, "31F30E2EA0A0CB6981914C497B2A3F2107959CE1-1347104155.612"
    push $P5003, "src\\stage2\\QRegex.nqp"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "HLL"
    push $P5003, "CREATE"
    push $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347104153.058"
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
    push $P5003, "D737CC2BB1349B6A56A577BFE8CDA45716BAC586-1347104158.732"
    push $P5003, "src\\stage2\\gen\\NQPHLL.pm"
    push $P5003, "BUILD"
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
    push $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1347104149.883"
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
    push $P5003, "5999FA70DED24A5080F4680C3CF5A9B13CAD7450-1347104154.076"
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
    .const 'Sub' $P5004 = 'cuid_323_1347104163.3' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAGAAAAcAAAAA4AAADgAAAA7CAAANoAAACMLgAAGlsAAAAAAAAaWwAAAAAAABpbAAAaWwAAAAAAAAYAAAAHAAAADgAAAA8AAABGAAAARwAAANIAAAAAAAAA1AAAANUAAADjAAAA5AAAAAEAAAAAAAAAAQAAABgBAAABAAAAuAIAAAEAAAA2BAAAAQAAAHIHAAABAAAAqAkAAAEAAACICwAAAQAAANgNAAABAAAACBUAAAEAAACAFwAAAQAAANYbAAABAAAAqBwAAAEAAACEHgAAAQAAACwfAAAAAAAAlgAAAAAAAAAAAAAACgAJAAAAAgAAAAIAAAAAAJcAAAADAAAAAgAAAAAAmAAAAAQAAAACAAAAAACZAAAABQAAAAIAAQAAABkAAAAIAAAAAgABAAAAQwAAAAkAAAACAAEAAABQAAAACgAAAAIAAQAAAFYAAAALAAAAAgABAAAAWgAAAAwAAAACAAAAAACaAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAJsAAAAAAAAAAQAAAAoAAAAAAAoADgAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAACAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHAAAAAIAAAAAAAMAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAQAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAABAAAACgABAAAAHQAAAAQAAAAAAAAAAAAAAAAAnAAAAAAAAAAEAAAACgAAAAAACgAOAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAgAAAAsAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAAeAAAAAgAAAAAACwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAEAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAABAAAAAMAAAAAAJ0AAAAAAAAADAAAAAoAAAAAAAoAGwAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAAOAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHgAAAAIAAAAAAAsAAAAfAAAAAgAAAAAADQAAACAAAAACAAAAAAAPAAAAIQAAAAIAAAAAABAAAAAiAAAAAgAAAAAAEQAAACMAAAACAAAAAAASAAAAJAAAAAIAAAAAABMAAAAlAAAAAgAAAAAAFAAAACYAAAACAAAAAAAVAAAAJwAAAAIAAAAAABYAAAAcAAAAAgAAAAAAFwAAACgAAAACAAAAAAAYAAAAKQAAAAIAAAAAABkAAAAqAAAAAgAAAAAAGgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAMAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAQAAAABAAAAAAAAAAIAAAAEAAAAAQAAAAAAAAACAAAABAAAAAEAAAAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAAEAAAAAwACAAAAAAAMAAAACgAJAAAAKwAAAAQAAAAAAAAAAAAsAAAABAABAAAAAAAAAC0AAAAEAAIAAAAAAAAALgAAAAQAAwAAAAAAAAAvAAAABAAEAAAAAAAAADAAAAAEAAUAAAAAAAAAMQAAAAQABgAAAAAAAAAyAAAABAAHAAAAAAAAADMAAAAEAAgAAAAAAAAAAAAAAJ4AAAAAAAAAGwAAAAoAAAAAAAoAEwAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAAAcAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAAHgAAAAIAAAAAAAsAAAAgAAAAAgAAAAAAHQAAACEAAAACAAAAAAAeAAAAHAAAAAIAAAAAAB8AAAA0AAAAAgAAAAAAIAAAACkAAAACAAAAAAAhAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAABsAAAACAAAAAAAEAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQACAAIAAAAHAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAgAAAAcAAAADAAIAAAAAAAQAAAADAAIAAAAAABsAAAAKAAMAAAArAAAABAAAAAAAAAAAAB0AAAAEAAEAAAAAAAAANQAAAAQAAgAAAAAAAAAAAAAAnwAAAAAAAAAiAAAACgAAAAAACgARAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAAAAACMAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAAeAAAAAgAAAAAACwAAACQAAAACAAAAAAAkAAAAHAAAAAIAAAAAACUAAAApAAAAAgAAAAAAJgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAiAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAABAAAAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAAAAAAEAAAAAwACAAAAAAAiAAAACgABAAAALgAAAAQAAAAAAAAAAAAAAAAAoAAAAAAAAAAnAAAACgAAAAAACgAdAAAADQAAAAIAAgAAAAgAAAAQAAAAAgACAAAACQAAABEAAAACAAIAAAAKAAAAEgAAAAIAAgAAAAsAAAATAAAAAgACAAAADAAAABQAAAACAAIAAAAPAAAAFQAAAAIAAgAAABEAAAAWAAAAAgACAAAAEwAAABcAAAACAAIAAAAVAAAAGAAAAAIAAgAAABcAAAAZAAAAAgACAAAAGAAAABoAAAACAAIAAAAaAAAAGwAAAAIAAgAAABsAAAA2AAAAAgAAAAAAKAAAADcAAAACAAAAAAApAAAAOAAAAAIAAAAAACoAAAA5AAAAAgAAAAAAKwAAADoAAAACAAAAAAAsAAAAOwAAAAIAAAAAAC0AAAA8AAAAAgAAAAAALgAAAD0AAAACAAAAAAAvAAAAPgAAAAIAAAAAADAAAAA/AAAAAgAAAAAAMQAAAEAAAAACAAAAAAAyAAAAQQAAAAIAAAAAADMAAABCAAAAAgAAAAAANAAAAEMAAAACAAAAAAA1AAAARAAAAAIAAAAAADYAAABFAAAAAgAAAAAANwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAnAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAAJwAAAAMAAAAAAKEAAAAAAAAAOAAAAAoAAAAAAAoAXgAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAMAAABgAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAASAAAAAIAAwAAAGEAAABJAAAAAgADAAAAYgAAAEoAAAACAAMAAABjAAAASwAAAAIAAwAAAGQAAABMAAAAAgADAAAAZQAAAE0AAAACAAMAAABmAAAATgAAAAIAAwAAAGcAAABPAAAAAgADAAAAaAAAAFAAAAACAAMAAABpAAAAUQAAAAIAAwAAAGoAAABSAAAAAgADAAAAawAAAFMAAAACAAMAAABsAAAAVAAAAAIAAwAAAG0AAABVAAAAAgADAAAAbgAAAFYAAAACAAMAAABvAAAAVwAAAAIAAwAAAHAAAABYAAAAAgADAAAAcQAAAFkAAAACAAMAAAByAAAAWgAAAAIAAwAAAHMAAABbAAAAAgADAAAAdAAAAFwAAAACAAMAAAB1AAAAXQAAAAIAAwAAAHYAAABeAAAAAgADAAAAdwAAAF8AAAACAAMAAAB4AAAAYAAAAAIAAwAAAHkAAABhAAAAAgAAAAAAXgAAAGIAAAACAAMAAAB7AAAAKQAAAAIAAwAAAHwAAABjAAAAAgADAAAAfQAAAGQAAAACAAMAAAB+AAAAZQAAAAIAAwAAAH8AAABmAAAAAgADAAAAgAAAAGcAAAACAAMAAACBAAAAaAAAAAIAAwAAAIIAAABpAAAAAgADAAAAgwAAAGoAAAACAAMAAACEAAAAawAAAAIAAwAAAIUAAABsAAAAAgADAAAAhgAAAG0AAAACAAMAAACHAAAAbgAAAAIAAwAAAIgAAABvAAAAAgADAAAAiQAAAHAAAAACAAMAAACKAAAAcQAAAAIAAwAAAIsAAAByAAAAAgAAAAAAXwAAAHMAAAACAAAAAABgAAAAdAAAAAIAAAAAAGEAAAAfAAAAAgAAAAAAYgAAAHUAAAACAAAAAABjAAAAdgAAAAIAAAAAAGQAAAB3AAAAAgAAAAAAZgAAAHgAAAACAAAAAABrAAAAeQAAAAIAAAAAAGwAAAB6AAAAAgAAAAAAcQAAAHsAAAACAAAAAAByAAAAfAAAAAIAAAAAAHkAAAB9AAAAAgAAAAAAegAAAH4AAAACAAAAAAB8AAAAfwAAAAIAAAAAAH0AAACAAAAAAgAAAAAAfgAAAIEAAAACAAAAAAB/AAAAggAAAAIAAAAAAIAAAACDAAAAAgAAAAAAgQAAAIQAAAACAAAAAACCAAAAhQAAAAIAAAAAAIMAAACGAAAAAgAAAAAAhAAAAIcAAAACAAAAAACFAAAAiAAAAAIAAAAAAIYAAACJAAAAAgAAAAAAhwAAAIoAAAACAAAAAACIAAAAiwAAAAIAAAAAAIkAAACMAAAAAgAAAAAAigAAAI0AAAACAAAAAACLAAAAjgAAAAIAAAAAAIwAAACPAAAAAgAAAAAAjQAAAJAAAAACAAAAAACOAAAAkQAAAAIAAAAAAI8AAACSAAAAAgAAAAAAkAAAAJMAAAACAAAAAACRAAAAlAAAAAIAAAAAAJIAAACVAAAAAgAAAAAAkwAAAJYAAAACAAAAAACVAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAADgAAAACAAMAAABfAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAALAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQACAAIAAAAHAAAAAgACAAAABwAAAAEAAgACAAAABwAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAQACAAIAAAAHAAAAAQABAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAMAAABfAAAACgALAAAAlwAAAAQAAAAAAAAAAACYAAAABAABAAAAAAAAAJkAAAAEAAIAAAAAAAAAmgAAAAQAAwAAAAAAAACbAAAABAAEAAAAAAAAAJwAAAAEAAUAAAAAAAAAnQAAAAQABgAAAAAAAACeAAAABAAHAAAAAAAAAJ8AAAAEAAgAAAAAAAAAoAAAAAQACQAAAAAAAAChAAAABAAKAAAAAAAAAAIAAAAAADgAAAADAAAAAACiAAAAAAAAADkAAAAKAAAAAAAKABcAAAANAAAAAgACAAAACAAAABAAAAACAAIAAAAJAAAAEQAAAAIAAgAAAAoAAAASAAAAAgAAAAAAOgAAABMAAAACAAIAAAAMAAAAFAAAAAIAAgAAAA8AAAAVAAAAAgACAAAAEQAAABYAAAACAAIAAAATAAAAFwAAAAIAAgAAABUAAAAYAAAAAgACAAAAFwAAABkAAAACAAIAAAAYAAAAGgAAAAIAAgAAABoAAAAbAAAAAgACAAAAGwAAAKIAAAACAAAAAAA7AAAASAAAAAIAAAAAADwAAACjAAAAAgAAAAAAPQAAAKQAAAACAAAAAAA+AAAApQAAAAIAAAAAAD8AAACmAAAAAgAAAAAAQAAAAKcAAAACAAAAAABBAAAAqAAAAAIAAAAAAEIAAACpAAAAAgAAAAAAQwAAAKoAAAACAAAAAABEAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAADkAAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAABwAAAAMAAgAAAAAAOQAAAAoABAAAAKsAAAAEAAAAAAAAAAAArAAAAAQAAQAAAAAAAACtAAAABAACAAAAAAAAAK4AAAAEAAMAAAAAAAAAAAAAAKMAAAAAAAAARQAAAAoAAAAAAAoAJAAAAA0AAAACAAIAAAAIAAAAEAAAAAIAAgAAAAkAAAARAAAAAgACAAAACgAAABIAAAACAAAAAABGAAAAEwAAAAIAAgAAAAwAAAAUAAAAAgACAAAADwAAABUAAAACAAIAAAARAAAAFgAAAAIAAgAAABMAAAAXAAAAAgACAAAAFQAAABgAAAACAAIAAAAXAAAAGQAAAAIAAgAAABgAAAAaAAAAAgACAAAAGgAAABsAAAACAAIAAAAbAAAASAAAAAIAAAAAAEcAAACvAAAAAgAAAAAASAAAALAAAAACAAAAAABJAAAAsQAAAAIAAAAAAEoAAACyAAAAAgAAAAAASwAAALMAAAACAAAAAABMAAAAtAAAAAIAAAAAAE0AAAC1AAAAAgAAAAAATgAAALYAAAACAAAAAABPAAAAtwAAAAIAAAAAAFAAAAC4AAAAAgAAAAAAUQAAALkAAAACAAAAAABSAAAAugAAAAIAAAAAAFMAAAC7AAAAAgAAAAAAVAAAALwAAAACAAAAAABVAAAAvQAAAAIAAAAAAFYAAAC+AAAAAgAAAAAAVwAAAL8AAAACAAAAAABYAAAAJQAAAAIAAAAAAFkAAADAAAAAAgAAAAAAWgAAAMEAAAACAAAAAABbAAAAwgAAAAIAAAAAAFwAAADDAAAAAgAAAAAAXQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABFAAAAAgACAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAABwAAAAIAAgAAAAcAAAABAAEAAQABAAEAAQABAAEAAQABAAEAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAHAAAAAwACAAAAAABFAAAACgAPAAAAxAAAAAQAAAAAAAAAAADFAAAABAABAAAAAAAAAMYAAAAEAAIAAAAAAAAAxwAAAAQAAwAAAAAAAADIAAAABAAEAAAAAAAAAMkAAAAEAAUAAAAAAAAAygAAAAQABgAAAAAAAADLAAAABAAHAAAAAAAAAMwAAAAEAAgAAAAAAAAAzQAAAAQACQAAAAAAAAAxAAAABAAKAAAAAAAAAM4AAAAEAAsAAAAAAAAAzwAAAAQADAAAAAAAAADQAAAABAANAAAAAAAAANEAAAAEAA4AAAAAAAAAAAAAANYAAAAAAAAAlwAAAAoABQAAAOUAAAACAAAAAAABAAAA5gAAAAIAAAAAAAQAAADnAAAAAgAAAAAADAAAAOgAAAACAAAAAAAbAAAA6QAAAAIAAAAAACIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAlwAAAAMAAAAAANcAAAAAAAAAmAAAAAoAFwAAAOoAAAACAAYAAAABAAAA6wAAAAIABgAAAAYAAADmAAAAAgAGAAAACgAAAOwAAAACAAYAAAAlAAAA7QAAAAIABgAAAC0AAADuAAAAAgAGAAAAMQAAAO8AAAACAAYAAAA1AAAA8AAAAAIABgAAADkAAADxAAAAAgAGAAAAPAAAAPIAAAACAAYAAABAAAAA8wAAAAIABgAAAEUAAAD0AAAAAgAGAAAATQAAAPUAAAACAAYAAABPAAAA9gAAAAIABgAAAFUAAAD3AAAAAgAGAAAAWQAAAPgAAAACAAYAAABdAAAA+QAAAAIABgAAAGEAAAD6AAAAAgAGAAAAaQAAAPsAAAACAAYAAABsAAAA/AAAAAIABgAAAG8AAAD9AAAAAgAGAAAAeAAAAP4AAAACAAAAAAAnAAAA/wAAAAIAAAAAADgAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAmAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACYAAAAAwAAAAAA2AAAAAAAAACZAAAACgABAAAAAAEAAAIAAQAAAAEAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAmQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACZAAAAAwAAAAAA2QAAAAAAAACaAAAACgAFAAAAAQEAAAIAAwAAAAEAAAACAQAAAgADAAAAPQAAAP8AAAACAAMAAABfAAAAAwEAAAIAAwAAANEAAAAEAQAAAgADAAAAnQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACaAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAJoAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAgAAAAUAAAAAAAAAAQAAAAIAAAAFAAAAEAAAAAEAAAAAAAAAAgAAACAAAAAAAAAAAgAAAAUAAAAgAAAAAQAAAAIAAAAFAAAAMAAAAAEAAAACAAAABQAAAEAAAAABAAAAAgAAAAUAAABQAAAAAQAAAAIAAAAFAAAAYAAAAAEAAAACAAAABQAAAHAAAAABAAAAAgAAAAUAAACAAAAAAQAAAAAAAAADAAAAkAAAAAAAAAACAAAABQAAAJAAAAABAAAAAgAAAAUAAACgAAAAAQAAAAIAAAAFAAAAsAAAAAEAAAACAAAABQAAAMAAAAABAAAAAgAAAAUAAADQAAAAAQAAAAIAAAAFAAAA4AAAAAEAAAACAAAABQAAAPAAAAABAAAAAgAAAAUAAAAAAQAAAQAAAAIAAAAFAAAAEAEAAAEAAAACAAAABQAAACABAAABAAAAAgAAAAUAAAAwAQAAAQAAAAIAAAAFAAAAQAEAAAEAAAACAAAABQAAAFABAAABAAAAAgAAAAUAAABgAQAAAQAAAAAAAAAEAAAAcAEAAAAAAAACAAAABQAAAHABAAABAAAAAgAAAAUAAACAAQAAAQAAAAIAAAAFAAAAkAEAAAEAAAACAAAABQAAAKABAAABAAAAAgAAAAUAAACwAQAAAQAAAAIAAAAFAAAAwAEAAAEAAAAAAAAABQAAANABAAAAAAAAAgAAAAUAAADQAQAAAQAAAAIAAAAFAAAA4AEAAAEAAAACAAAABQAAAPABAAABAAAAAgAAAAUAAAAAAgAAAQAAAAAAAAAGAAAAEAIAAAAAAAACAAAABQAAABACAAABAAAAAgAAAAUAAAAgAgAAAQAAAAIAAAAFAAAAMAIAAAEAAAACAAAABQAAAEACAAABAAAAAgAAAAUAAABQAgAAAQAAAAIAAAAFAAAAYAIAAAEAAAACAAAABQAAAHACAAABAAAAAgAAAAUAAACAAgAAAQAAAAIAAAAFAAAAkAIAAAEAAAACAAAABQAAAKACAAABAAAAAgAAAAUAAACwAgAAAQAAAAIAAAAFAAAAwAIAAAEAAAACAAAABQAAANACAAABAAAAAgAAAAUAAADgAgAAAQAAAAIAAAAFAAAA8AIAAAEAAAACAAAABQAAAAADAAABAAAAAAAAAAcAAAAQAwAAAAAAAAAAAAAIAAAAEAMAAAAAAAACAAAABQAAABADAAABAAAAAgAAAAUAAAAgAwAAAQAAAAIAAAAFAAAAMAMAAAEAAAACAAAABQAAAEADAAABAAAAAgAAAAUAAABQAwAAAQAAAAIAAAAFAAAAYAMAAAEAAAACAAAABQAAAHADAAABAAAAAgAAAAUAAACAAwAAAQAAAAIAAAAFAAAAkAMAAAEAAAACAAAABQAAAKADAAABAAAAAgAAAAUAAACwAwAAAQAAAAAAAAAJAAAAwAMAAAAAAAACAAAABQAAAMADAAABAAAAAgAAAAUAAADQAwAAAQAAAAIAAAAFAAAA4AMAAAEAAAACAAAABQAAAPADAAABAAAAAgAAAAUAAAAABAAAAQAAAAIAAAAFAAAAEAQAAAEAAAACAAAABQAAACAEAAABAAAAAgAAAAUAAAAwBAAAAQAAAAIAAAAFAAAAQAQAAAEAAAACAAAABQAAAFAEAAABAAAAAgAAAAUAAABgBAAAAQAAAAIAAAAFAAAAcAQAAAEAAAACAAAABQAAAIAEAAABAAAAAgAAAAUAAACQBAAAAQAAAAIAAAAFAAAAoAQAAAEAAAACAAAABQAAALAEAAABAAAAAgAAAAUAAADABAAAAQAAAAIAAAAFAAAA0AQAAAEAAAACAAAABQAAAOAEAAABAAAAAgAAAAUAAADwBAAAAQAAAAIAAAAFAAAAAAUAAAEAAAACAAAABQAAABAFAAABAAAAAgAAAAUAAAAgBQAAAQAAAAIAAAAFAAAAMAUAAAEAAAACAAAABQAAAEAFAAABAAAAAgAAAAUAAABQBQAAAQAAAAIAAAAFAAAAYAUAAAEAAAACAAAABQAAAHAFAAABAAAAAgAAAAUAAACABQAAAQAAAAIAAAAFAAAAkAUAAAEAAAACAAAABQAAAKAFAAABAAAAAgAAAAUAAABeBgAAAQAAAAIAAAAFAAAAdgYAAAEAAAACAAAABQAAAIYGAAABAAAAAgAAAAUAAACeBgAAAQAAAAIAAAAFAAAAtgYAAAEAAAACAAAABQAAAM4GAAABAAAAAgAAAAUAAADmBgAAAQAAAAIAAAAFAAAA9gYAAAEAAAACAAAABQAAAAYHAAABAAAAAgAAAAUAAAAeBwAAAQAAAAIAAAAFAAAANgcAAAEAAAACAAAABQAAAE4HAAABAAAAAgAAAAUAAABmBwAAAQAAAAIAAAAFAAAAdgcAAAEAAAACAAAABQAAAIYHAAABAAAAAgAAAAUAAACeBwAAAQAAAAIAAAAFAAAAtgcAAAEAAAACAAAABQAAAM4HAAABAAAAAgAAAAUAAADmBwAAAQAAAAIAAAAFAAAA/gcAAAEAAAACAAAABQAAABYIAAABAAAAAgAAAAUAAAAmCAAAAQAAAAIAAAAFAAAANggAAAEAAAACAAAABQAAAE4IAAABAAAAAgAAAAUAAABeCAAAAQAAAAIAAAAFAAAAbggAAAEAAAACAAAABQAAAH4IAAABAAAAAgAAAAUAAACOCAAAAQAAAAIAAAAFAAAAnggAAAEAAAACAAAABQAAAK4IAAABAAAAAgAAAAUAAAC+CAAAAQAAAAIAAAAFAAAAzggAAAEAAAACAAAABQAAAN4IAAABAAAAAgAAAAUAAADuCAAAAQAAAAIAAAAFAAAA/ggAAAEAAAACAAAABQAAAA4JAAABAAAAAgAAAAUAAAAeCQAAAQAAAAIAAAAFAAAALgkAAAEAAAACAAAABQAAAD4JAAABAAAAAgAAAAUAAABOCQAAAQAAAAIAAAAFAAAAXgkAAAEAAAACAAAABQAAAG4JAAABAAAAAgAAAAUAAAB+CQAAAQAAAAIAAAAFAAAAjgkAAAEAAAACAAAABQAAAJ4JAAABAAAAAgAAAAUAAACuCQAAAQAAAAIAAAAFAAAAvgkAAAEAAAACAAAABQAAAM4JAAABAAAAAgAAAAUAAADmCQAAAQAAAAQAAAAAAAAA9gkAAAEAAAAAAAAACgAAAAYKAAAAAAAAAAAAAAsAAAAGCgAAAAAAAAAAAAAMAAAABgoAAAAAAAAAAAAADQAAAAYKAAAAAAAABQAAAAYAAAAGCgAAAQAAAAUAAAAGAAAAQAsAAAEAAAAFAAAABgAAAPoLAAABAAAABQAAAAYAAAAmEQAAAQAAAAUAAAAGAAAAdhMAAAEAAAAFAAAABgAAAOIUAAABAAAABQAAAAYAAAAEFwAAAQAAAAUAAAAGAAAAnB0AAAEAAAAFAAAABgAAALIfAAABAAAAAgAAAAYAAACaIwAAAQAAAAIAAAAGAAAAziMAAAEAAAACAAAABgAAAAIkAAABAAAAAgAAAAYAAAA2JAAAAQAAAAIAAAAGAAAAaiQAAAEAAAACAAAABgAAAJ4kAAABAAAAAgAAAAYAAADSJAAAAQAAAAIAAAAGAAAABiUAAAEAAAACAAAABgAAADolAAABAAAAAgAAAAYAAABuJQAAAQAAAAIAAAAGAAAAoiUAAAEAAAACAAAABgAAANYlAAABAAAAAgAAAAYAAAAKJgAAAQAAAAIAAAAGAAAAPiYAAAEAAAACAAAABgAAAHImAAABAAAAAgAAAAYAAACmJgAAAQAAAAIAAAAGAAAA2iYAAAEAAAAFAAAACAAAAAYnAAABAAAABQAAAAgAAAA2JwAAAQAAAAUAAAAIAAAAVicAAAEAAAAFAAAACAAAAIYnAAABAAAABQAAAAgAAAC2JwAAAQAAAAUAAAAIAAAA5icAAAEAAAAFAAAACAAAABYoAAABAAAABQAAAAgAAAA2KAAAAQAAAAUAAAAIAAAAVigAAAEAAAAFAAAACAAAAHYoAAABAAAABQAAAAgAAACmKAAAAQAAAAUAAAAIAAAAxigAAAEAAAAFAAAACAAAAPYoAAABAAAABQAAAAgAAAAeKQAAAQAAAAUAAAAIAAAATikAAAEAAAAFAAAACAAAAH4pAAABAAAABQAAAAgAAACuKQAAAQAAAAUAAAAIAAAA3ikAAAEAAAAFAAAACAAAAA4qAAABAAAABQAAAAgAAAA2KgAAAQAAAAUAAAAIAAAAXioAAAEAAAAFAAAACAAAAH4qAAABAAAABQAAAAgAAACeKgAAAQAAAAUAAAAIAAAAvioAAAEAAAAFAAAACAAAAN4qAAABAAAABQAAAAgAAAD+KgAAAQAAAAUAAAAIAAAAHisAAAEAAAAFAAAACAAAAD4rAAABAAAABQAAAAgAAABuKwAAAQAAAAUAAAAIAAAAjisAAAEAAAAFAAAACAAAAL4rAAABAAAABQAAAAgAAADuKwAAAQAAAAUAAAAIAAAAHiwAAAEAAAAEAAAAAAAAAE4sAAABAAAABAAAAAAAAABeLAAAAQAAAAQAAAAAAAAAbiwAAAEAAAAEAAAAAAAAAH4sAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEACwAAAAAAPAAAAAEAAQABAAsAAAAAAD0AAAABAAEAAQALAAAAAAA+AAAAAQABAAEACwAAAAAAPwAAAAEAAQABAAsAAAAAAEAAAAABAAEAAQALAAAAAABBAAAAAQABAAEACwAAAAAAQgAAAAEAAQABAAsAAAAAAEMAAAABAAEAAQALAAAAAABEAAAAAQABAAEACwAAAAAARQAAAAEAAQABAAsAAAAAAEYAAAABAAEAAQALAAAAAABHAAAAAQABAAEACwAAAAAASAAAAAEAAQABAAsAAAAAAEkAAAABAAEAAQALAAAAAABKAAAAAQABAAEACwAAAAAASwAAAAEAAQABAAsAAAAAAEwAAAABAAEAAQALAAAAAABNAAAAAQABAAEACwAAAAAATgAAAAEAAQABAAsAAAAAAE8AAAABAAEAAQALAAAAAABQAAAAAQABAAEACwAAAAAAUQAAAAEAAQABAAsAAAAAAFIAAAABAAEAAQALAAAAAABTAAAAAQABAAEACwAAAAAAVAAAAAEAAQABAAsAAAAAAFUAAAABAAEAAQALAAAAAABWAAAAAQABAAEACwAAAAAAVwAAAAEAAQABAAsAAAAAAFgAAAABAAEAAQALAAAAAABZAAAAAQABAAEACwAAAAAAWgAAAAEABwARAAAAAgAAAAAAZQAAAAIAAAAAAGcAAAACAAAAAABoAAAAAgAAAAAAaQAAAAIAAAAAAGoAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAewAAAAIAAAAAAJQAAAADAAsAAAAAAFsAAAACAAAAAACkAAAAAQABAAsAAAAAAFwAAAABAAEAAQALAAAAAABdAAAAAgAAAAAApQAAAAEAAQALAAAAAABeAAAAAgAAAAAApgAAAAEAAQALAAAAAABfAAAAAgAAAAAApwAAAAEAAQALAAAAAABgAAAAAgAAAAAAqAAAAAEAAQALAAAAAABhAAAAAQABAAEACwAAAAAAYgAAAAEAAQABAAsAAAAAAGMAAAACAAAAAACpAAAAAQABAAsAAAAAAGQAAAACAAAAAACqAAAAAQABAAsAAAAAAGUAAAACAAAAAACrAAAAAQABAAsAAAAAAGYAAAACAAAAAACsAAAAAQABAAsAAAAAAGcAAAABAAEAAQALAAAAAABoAAAAAQABAAEACwAAAAAAaQAAAAIAAAAAAK0AAAABAAEACwAAAAAAagAAAAIAAAAAAK4AAAABAAEACwAAAAAAawAAAAIAAAAAAK8AAAABAAEACwAAAAAAbAAAAAIAAAAAALAAAAABAAEACwAAAAAAbQAAAAIAAAAAALEAAAABAAEACwAAAAAAbgAAAAIAAAAAALIAAAABAAEACwAAAAAAbwAAAAEAAQABAAsAAAAAAHAAAAABAAEAAQALAAAAAABxAAAAAgAAAAAAswAAAAEAAQALAAAAAAByAAAAAQABAAEACwAAAAAAcwAAAAEAAQABAAsAAAAAAHQAAAABAAEAAQALAAAAAAB1AAAAAQABAAEACwAAAAAAdgAAAAEAAQABAAsAAAAAAHcAAAABAAEAAQALAAAAAAB4AAAAAQABAAEACwAAAAAAeQAAAAEAAQABAAsAAAAAAHoAAAABAAEAAQALAAAAAAB7AAAAAQABAAEACwAAAAAAfAAAAAEAAQABAAsAAAAAAH0AAAABAAEAAQALAAAAAAB+AAAAAQABAAEACwAAAAAAfwAAAAEAAQABAAsAAAAAAIAAAAABAAEAAQALAAAAAACBAAAAAQABAAEACwAAAAAAggAAAAEAAQABAAsAAAAAAIMAAAABAAEAAQALAAAAAACEAAAAAQABAAEACwAAAAAAhQAAAAEAAQABAAsAAAAAAIYAAAABAAEAAQALAAAAAACHAAAAAQABAAEACwAAAAAAiAAAAAEAAQABAAsAAAAAAIkAAAABAAEAAQALAAAAAACKAAAAAgAAAAAAtAAAAAEAAQALAAAAAACLAAAAAQABAAEA0wAAAAcAAAAAAAoAAAAAAAYA1gAAAAoAAQAAAB0AAAACAAAAAAC1AAAACgACAAAAEgAAAAIAAAAAAAIAAAAcAAAAAgAAAAAAAwAAAAcAAgAAAAIAAAAAAAIAAAACAAAAAAADAAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAAQAAAAIAAgAAAAcAAAAHAAAAAAAKAAEAAADXAAAAAgAAAAAAAwAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAEAAAAGABwAAAAGAB0AAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAQAAAAYAHAAAAAYAHQAAAAEABgDYAAAACgAAAAAACgABAAAAHgAAAAIAAAAAAAsAAAAHAAEAAAACAAAAAAALAAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgDZAAAACgAJAAAAKwAAAAIAAAAAALYAAAAsAAAAAgAAAAAAtwAAAC0AAAACAAAAAAC4AAAALgAAAAIAAAAAALkAAAAvAAAAAgAAAAAAugAAADAAAAACAAAAAAC7AAAAMQAAAAIAAAAAALwAAAAyAAAAAgAAAAAAvQAAADMAAAACAAAAAAC+AAAACgAOAAAAHwAAAAIAAAAAAA0AAAASAAAAAgAAAAAADgAAACAAAAACAAAAAAAPAAAAIQAAAAIAAAAAABAAAAAiAAAAAgAAAAAAEQAAACMAAAACAAAAAAASAAAAJAAAAAIAAAAAABMAAAAlAAAAAgAAAAAAFAAAACYAAAACAAAAAAAVAAAAJwAAAAIAAAAAABYAAAAcAAAAAgAAAAAAFwAAACgAAAACAAAAAAAYAAAAKQAAAAIAAAAAABkAAAAqAAAAAgAAAAAAGgAAAAcADgAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAABwAAAAAABwABAAAAAgAAAAAABAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAAwAAAACAAAAAAAEAAAAAgACAAAABwAAAAcAAAAAAAoAAQAAANcAAAACAAAAAAAXAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAADAAAAAYAfwAAAAYAKwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAiAAAABgAsAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACMAAAAGAC0AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAJAAAAAYALgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAmAAAABgAvAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAAwAAAAGACcAAAAGADAAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAADAAAAAYAJQAAAAYAMQAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAMAAAABgDaAAAABgAyAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGANsAAAAGADMAAAAHAAkAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAADAAAAAYAfwAAAAYAKwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAiAAAABgAsAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGACMAAAAGAC0AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAADAAAAAYAJAAAAAYALgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAMAAAABgAmAAAABgAvAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAAwAAAAGACcAAAAGADAAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAADAAAAAYAJQAAAAYAMQAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAMAAAABgDaAAAABgAyAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAwAAAAGANsAAAAGADMAAAABAAYA3AAAAAoAAwAAACsAAAACAAAAAAC/AAAAHQAAAAIAAAAAAMAAAAA1AAAAAgAAAAAAwQAAAAoABgAAABIAAAACAAAAAAAcAAAAIAAAAAIAAAAAAB0AAAAhAAAAAgAAAAAAHgAAABwAAAACAAAAAAAfAAAANAAAAAIAAAAAACAAAAApAAAAAgAAAAAAIQAAAAcABgAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIQAAAAcAAAAAAAcAAQAAAAIAAAAAAAQAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAAbAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAHAAAAAAAKAAEAAADXAAAAAgAAAAAAHwAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAEAAAABAACAAAAAAAAAAIAAAAAABsAAAAGAH8AAAAGACsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAGwAAAAYAHAAAAAYAHQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAbAAAABgA0AAAABgA1AAAABwADAAAABwAEAAAABAACAAAAAAAAAAIAAAAAABsAAAAGAH8AAAAGACsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAGwAAAAYAHAAAAAYAHQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAbAAAABgA0AAAABgA1AAAAAQAGAN0AAAAKAAEAAAAuAAAAAgAAAAAAwgAAAAoABAAAABIAAAACAAAAAAAjAAAAJAAAAAIAAAAAACQAAAAcAAAAAgAAAAAAJQAAACkAAAACAAAAAAAmAAAABwAEAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAcAAAAAAAcAAQAAAAIAAAAAAAQAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAAiAAAAAgAAAAAABAAAAAIAAgAAAAcAAAAHAAAAAAAKAAEAAADXAAAAAgAAAAAAJQAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAACIAAAAGACQAAAAGAC4AAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIgAAAAYAJAAAAAYALgAAAAEABgDeAAAACgAAAAAACgAQAAAANgAAAAIAAAAAACgAAAA3AAAAAgAAAAAAKQAAADgAAAACAAAAAAAqAAAAOQAAAAIAAAAAACsAAAA6AAAAAgAAAAAALAAAADsAAAACAAAAAAAtAAAAPAAAAAIAAAAAAC4AAAA9AAAAAgAAAAAALwAAAD4AAAACAAAAAAAwAAAAPwAAAAIAAAAAADEAAABAAAAAAgAAAAAAMgAAAEEAAAACAAAAAAAzAAAAQgAAAAIAAAAAADQAAABDAAAAAgAAAAAANQAAAEQAAAACAAAAAAA2AAAARQAAAAIAAAAAADcAAAAHABAAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAACAAAAAAAuAAAAAgAAAAAALwAAAAIAAAAAADAAAAACAAAAAAAxAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAAAgAAAAAANQAAAAIAAAAAADYAAAACAAAAAAA3AAAABwAAAAAABwABAAAAAgACAAAABwAAAAcAAAAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAJwAAAAIAAgAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgDfAAAACgAAAAAACgAnAAAAYQAAAAIAAAAAAF4AAAByAAAAAgAAAAAAXwAAAHMAAAACAAAAAABgAAAAdAAAAAIAAAAAAGEAAAAfAAAAAgAAAAAAYgAAAHUAAAACAAAAAABjAAAAdgAAAAIAAAAAAGQAAAB3AAAAAgAAAAAAZgAAAHgAAAACAAAAAABrAAAAeQAAAAIAAAAAAGwAAAB6AAAAAgAAAAAAcQAAAHsAAAACAAAAAAByAAAAfAAAAAIAAAAAAHkAAAB9AAAAAgAAAAAAegAAAH4AAAACAAAAAAB8AAAAfwAAAAIAAAAAAH0AAACAAAAAAgAAAAAAfgAAAIEAAAACAAAAAAB/AAAAggAAAAIAAAAAAIAAAACDAAAAAgAAAAAAgQAAAIQAAAACAAAAAACCAAAAhQAAAAIAAAAAAIMAAACGAAAAAgAAAAAAhAAAAIcAAAACAAAAAACFAAAAiAAAAAIAAAAAAIYAAACJAAAAAgAAAAAAhwAAAIoAAAACAAAAAACIAAAAiwAAAAIAAAAAAIkAAACMAAAAAgAAAAAAigAAAI0AAAACAAAAAACLAAAAjgAAAAIAAAAAAIwAAACPAAAAAgAAAAAAjQAAAJAAAAACAAAAAACOAAAAkQAAAAIAAAAAAI8AAACSAAAAAgAAAAAAkAAAAJMAAAACAAAAAACRAAAAlAAAAAIAAAAAAJIAAACVAAAAAgAAAAAAkwAAAJYAAAACAAAAAACVAAAABwAnAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZAAAAAIAAAAAAGYAAAACAAAAAABrAAAAAgAAAAAAbAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACVAAAABwARAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABlAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABnAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABoAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABpAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABqAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABtAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABuAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABvAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABwAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAABzAAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAAB0AAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAAB1AAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAAB2AAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAAB3AAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAAB4AAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAAB7AAAACgACAAAAJAAAAAYAdgAAAOAAAAACAAAAAACUAAAABwABAAAAAgADAAAAXwAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAADgAAAACAAMAAABfAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwACAAAABAAAAAAAAAAAAAIAAwAAAGEAAAAHAAIAAAAEAAAAAAAAAAAAAgADAAAAYQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAMAAABhAAAAAQAGAOEAAAAKAAQAAACrAAAAAgAAAAAAwwAAAKwAAAACAAAAAADEAAAArQAAAAIAAAAAAMUAAACuAAAAAgAAAAAAxgAAAAoACwAAABIAAAACAAAAAAA6AAAAogAAAAIAAAAAADsAAABIAAAAAgAAAAAAPAAAAKMAAAACAAAAAAA9AAAApAAAAAIAAAAAAD4AAAClAAAAAgAAAAAAPwAAAKYAAAACAAAAAABAAAAApwAAAAIAAAAAAEEAAACoAAAAAgAAAAAAQgAAAKkAAAACAAAAAABDAAAAqgAAAAIAAAAAAEQAAAAHAAsAAAACAAAAAAA6AAAAAgAAAAAAOwAAAAIAAAAAADwAAAACAAAAAAA9AAAAAgAAAAAAPgAAAAIAAAAAAD8AAAACAAAAAABAAAAAAgAAAAAAQQAAAAIAAAAAAEIAAAACAAAAAABDAAAAAgAAAAAARAAAAAcAAAAAAAcAAQAAAAIAAgAAAAcAAAAHAAAAAAACAAIAAAAHAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAADkAAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAPAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAA8AAAAAQAGAOIAAAAKAA8AAADEAAAAAgAAAAAAxwAAAMUAAAACAAAAAADIAAAAxgAAAAIAAAAAAMkAAADHAAAAAgAAAAAAygAAAMgAAAACAAAAAADLAAAAyQAAAAIAAAAAAMwAAADKAAAAAgAAAAAAzQAAAMsAAAACAAAAAADOAAAAzAAAAAIAAAAAAM8AAADNAAAAAgAAAAAA0AAAADEAAAACAAAAAADRAAAAzgAAAAIAAAAAANIAAADPAAAAAgAAAAAA0wAAANAAAAACAAAAAADUAAAA0QAAAAIAAAAAANUAAAAKABgAAAASAAAAAgAAAAAARgAAAEgAAAACAAAAAABHAAAArwAAAAIAAAAAAEgAAACwAAAAAgAAAAAASQAAALEAAAACAAAAAABKAAAAsgAAAAIAAAAAAEsAAACzAAAAAgAAAAAATAAAALQAAAACAAAAAABNAAAAtQAAAAIAAAAAAE4AAAC2AAAAAgAAAAAATwAAALcAAAACAAAAAABQAAAAuAAAAAIAAAAAAFEAAAC5AAAAAgAAAAAAUgAAALoAAAACAAAAAABTAAAAuwAAAAIAAAAAAFQAAAC8AAAAAgAAAAAAVQAAAL0AAAACAAAAAABWAAAAvgAAAAIAAAAAAFcAAAC/AAAAAgAAAAAAWAAAACUAAAACAAAAAABZAAAAwAAAAAIAAAAAAFoAAADBAAAAAgAAAAAAWwAAAMIAAAACAAAAAABcAAAAwwAAAAIAAAAAAF0AAAAHABgAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAIAAAAAAFEAAAACAAAAAABSAAAAAgAAAAAAUwAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAAHAAAAAAAHAAEAAAACAAIAAAAHAAAABwAAAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABFAAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAEcAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAARwAAAAEABwACAAAAAgAAAAAAOAAAAAIABgAAAG8AAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABhAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAaQAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAFkAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABdAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAATwAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAFUAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAABFAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAATQAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAAEAAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAAAtAAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAMQAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAADUAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAACAAYAAAA5AAAABwACAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAA4AAAAAgAGAAAAPAAAAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAAOAAAAAIABgAAACUAAAAHAAIAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAADgAAAADAAcAAgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABgAdAAAAAgACAAAABAAAAAQAAQAAAAAAAAADAAIAAgAAAAQAAAAEAAEAAAAAAAAABgArAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGACwAAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAC0AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAC4AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAC8AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGADAAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAMQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgAyAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGADMAAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGACsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAHQAAAAIAAgAAAAQAAAAEAAEAAAAAAAAAAwACAAIAAAAEAAAABAABAAAAAAAAAAYANQAAAAMABAAAAAAAAAAAAAMAAgACAAAABwAAAAQAAQAAAAAAAAAGAC4AAAACAAIAAAAEAAAABAABAAAAAAAAAAMAAgACAAAABAAAAAQAAQAAAAAAAAAGAKsAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGAKwAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGAK0AAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGAK4AAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGAMQAAAADAAQAAAAAAAAAAAADAAIAAgAAAAcAAAAEAAEAAAAAAAAABgDFAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAHAAAABAABAAAAAAAAAAYAxgAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDHAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMgAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAyQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDKAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAzAAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDNAAAAAgACAAAAAgAAAAQAAQAAAAAAAAADAAIAAgAAAAIAAAAEAAEAAAAAAAAABgAxAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAM4AAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGAM8AAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGANAAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAAGANEAAAACAAIAAAACAAAABAABAAAAAAAAAAMAAgACAAAAAgAAAAQAAQAAAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAQAAAAHAAAAAAAKAAAAAAAMAAAABwAAAAAACgAAAAAA", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 2
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 3
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_4_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_4_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_4_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_4_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_5_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 11
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_14_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_15_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 26
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_29_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_29_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_29_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 12
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_29_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_30_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 33
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_36_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_37_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 38
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_41_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 34
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_41_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_41_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 34
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_41_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_42_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 55
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_58_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 39
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_58_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_58_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 39
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_58_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_59_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    $P5003 = $P5001."set_static_lexpad_value"("RegAlloc", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_60_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 68
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_71_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_71_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_71_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 57
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_71_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_59_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    $P5003 = $P5001."set_static_lexpad_value"("BlockInfo", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_72_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 93
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_96_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_96_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_96_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_96_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_97_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1347104163.3" 
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 149
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_59_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 56
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_59_1347104163.3"
    nqp_get_sc_object $P5002, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 56
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_59_1347104163.3"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "19C2197C09D429238B4C6399935462C789E37C01-1347104163.316", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_323_1347104163.3") :anon :lex :outer("cuid_324_1347104163.3")
.annotate 'file', "src\\stage2\\QAST.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1347104163.3" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1347104163.3" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_325_1347104163.3") :load
.annotate 'file', "src\\stage2\\QAST.nqp"
    .const 'Sub' $P5001 = "cuid_1_1347104163.3" 
    $P5002 = $P5001()
    .return ($P5002) 
.end