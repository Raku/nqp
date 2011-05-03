
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304459385.051")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2844 = "257_1304459385.051" 
    capture_lex $P2844
    .const 'Sub' $P2415 = "238_1304459385.051" 
    capture_lex $P2415
    .const 'Sub' $P2337 = "231_1304459385.051" 
    capture_lex $P2337
    .const 'Sub' $P1163 = "165_1304459385.051" 
    capture_lex $P1163
    .const 'Sub' $P478 = "119_1304459385.051" 
    capture_lex $P478
    .const 'Sub' $P18 = "11_1304459385.051" 
    capture_lex $P18
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 1791
    new $P16, "Undef"
    .lex "$compiler", $P16
.annotate 'line', 1065
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1064
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P18 = "11_1304459385.051" 
    capture_lex $P18
    $P18()
.annotate 'line', 867
    .const 'Sub' $P478 = "119_1304459385.051" 
    capture_lex $P478
    $P478()
.annotate 'line', 1072
    .const 'Sub' $P1163 = "165_1304459385.051" 
    capture_lex $P1163
    $P1163()
.annotate 'line', 1791
    get_hll_global $P2330, "GLOBAL"
    nqp_get_package_through_who $P2331, $P2330, "HLL"
    get_who $P2332, $P2331
    set $P2333, $P2332["Compiler"]
    $P2334 = $P2333."new"()
    store_lex "$compiler", $P2334
.annotate 'line', 1792
    find_lex $P2335, "$compiler"
    unless_null $P2335, vivify_1027
    new $P2335, "Undef"
  vivify_1027:
    $P2335."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2337 = "231_1304459385.051" 
    capture_lex $P2337
    $P2337()
.annotate 'line', 1918
    .const 'Sub' $P2415 = "238_1304459385.051" 
    capture_lex $P2415
    $P2415()
.annotate 'line', 2096
    .const 'Sub' $P2844 = "257_1304459385.051" 
    capture_lex $P2844
    $P2844()
    find_lex $P3953, "@ARGS"
    if $P3953, if_3952
    set $P3951, $P3953
    goto if_3952_end
  if_3952:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3954, "ModuleLoader"
    getinterp $P3955
    set $P3956, $P3955["context"]
    $P3957 = $P3954."set_mainline_module"($P3956)
    set $P3951, $P3957
  if_3952_end:
.annotate 'line', 1
    .return ($P3951)
.annotate 'line', 1064
    .const 'Sub' $P3959 = "298_1304459385.051" 
.annotate 'line', 1
    .return ($P3959)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post299") :outer("10_1304459385.051")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304459385.051" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3963, "1304459375.825"
    isnull $I3964, $P3963
    if $I3964, if_3962
    .const 'Sub' $P5123 = "10_1304459385.051" 
    $P5124 = $P5123."get_lexinfo"()
    nqp_get_sc_object $P5125, "1304459375.825", 0
    $P5124."set_static_lexpad_value"("GLOBALish", $P5125)
    .const 'Sub' $P5126 = "10_1304459385.051" 
    $P5127 = $P5126."get_lexinfo"()
    $P5127."finish_static_lexpad"()
    .const 'Sub' $P5128 = "10_1304459385.051" 
    $P5129 = $P5128."get_lexinfo"()
    nqp_get_sc_object $P5130, "1304459375.825", 0
    $P5129."set_static_lexpad_value"("$?PACKAGE", $P5130)
    .const 'Sub' $P5131 = "10_1304459385.051" 
    $P5132 = $P5131."get_lexinfo"()
    $P5132."finish_static_lexpad"()
    nqp_get_sc_object $P5133, "1304459375.825", 2
    .const 'Sub' $P5134 = "12_1304459385.051" 
    assign $P5133, $P5134
    nqp_get_sc_object $P5135, "1304459375.825", 3
    .const 'Sub' $P5136 = "13_1304459385.051" 
    assign $P5135, $P5136
    nqp_get_sc_object $P5137, "1304459375.825", 4
    .const 'Sub' $P5138 = "14_1304459385.051" 
    assign $P5137, $P5138
    nqp_get_sc_object $P5139, "1304459375.825", 5
    .const 'Sub' $P5140 = "15_1304459385.051" 
    assign $P5139, $P5140
    nqp_get_sc_object $P5141, "1304459375.825", 6
    .const 'Sub' $P5142 = "16_1304459385.051" 
    assign $P5141, $P5142
    nqp_get_sc_object $P5143, "1304459375.825", 7
    .const 'Sub' $P5144 = "17_1304459385.051" 
    assign $P5143, $P5144
    nqp_get_sc_object $P5145, "1304459375.825", 8
    .const 'Sub' $P5146 = "18_1304459385.051" 
    assign $P5145, $P5146
    nqp_get_sc_object $P5147, "1304459375.825", 9
    .const 'Sub' $P5148 = "19_1304459385.051" 
    assign $P5147, $P5148
    nqp_get_sc_object $P5149, "1304459375.825", 10
    .const 'Sub' $P5150 = "20_1304459385.051" 
    assign $P5149, $P5150
    nqp_get_sc_object $P5151, "1304459375.825", 11
    .const 'Sub' $P5152 = "21_1304459385.051" 
    assign $P5151, $P5152
    nqp_get_sc_object $P5153, "1304459375.825", 12
    .const 'Sub' $P5154 = "22_1304459385.051" 
    assign $P5153, $P5154
    nqp_get_sc_object $P5155, "1304459375.825", 13
    .const 'Sub' $P5156 = "23_1304459385.051" 
    assign $P5155, $P5156
    nqp_get_sc_object $P5157, "1304459375.825", 14
    .const 'Sub' $P5158 = "24_1304459385.051" 
    assign $P5157, $P5158
    nqp_get_sc_object $P5159, "1304459375.825", 15
    .const 'Sub' $P5160 = "25_1304459385.051" 
    assign $P5159, $P5160
    nqp_get_sc_object $P5161, "1304459375.825", 16
    .const 'Sub' $P5162 = "26_1304459385.051" 
    assign $P5161, $P5162
    nqp_get_sc_object $P5163, "1304459375.825", 17
    .const 'Sub' $P5164 = "27_1304459385.051" 
    assign $P5163, $P5164
    nqp_get_sc_object $P5165, "1304459375.825", 18
    .const 'Sub' $P5166 = "28_1304459385.051" 
    assign $P5165, $P5166
    nqp_get_sc_object $P5167, "1304459375.825", 19
    .const 'Sub' $P5168 = "29_1304459385.051" 
    assign $P5167, $P5168
    nqp_get_sc_object $P5169, "1304459375.825", 20
    .const 'Sub' $P5170 = "30_1304459385.051" 
    assign $P5169, $P5170
    nqp_get_sc_object $P5171, "1304459375.825", 21
    .const 'Sub' $P5172 = "31_1304459385.051" 
    assign $P5171, $P5172
    nqp_get_sc_object $P5173, "1304459375.825", 22
    .const 'Sub' $P5174 = "32_1304459385.051" 
    assign $P5173, $P5174
    nqp_get_sc_object $P5175, "1304459375.825", 23
    .const 'Sub' $P5176 = "33_1304459385.051" 
    assign $P5175, $P5176
    nqp_get_sc_object $P5177, "1304459375.825", 24
    .const 'Sub' $P5178 = "34_1304459385.051" 
    assign $P5177, $P5178
    nqp_get_sc_object $P5179, "1304459375.825", 25
    .const 'Sub' $P5180 = "35_1304459385.051" 
    assign $P5179, $P5180
    nqp_get_sc_object $P5181, "1304459375.825", 26
    .const 'Sub' $P5182 = "36_1304459385.051" 
    assign $P5181, $P5182
    nqp_get_sc_object $P5183, "1304459375.825", 27
    .const 'Sub' $P5184 = "37_1304459385.051" 
    assign $P5183, $P5184
    nqp_get_sc_object $P5185, "1304459375.825", 28
    .const 'Sub' $P5186 = "38_1304459385.051" 
    assign $P5185, $P5186
    nqp_get_sc_object $P5187, "1304459375.825", 29
    .const 'Sub' $P5188 = "39_1304459385.051" 
    assign $P5187, $P5188
    nqp_get_sc_object $P5189, "1304459375.825", 30
    .const 'Sub' $P5190 = "40_1304459385.051" 
    assign $P5189, $P5190
    nqp_get_sc_object $P5191, "1304459375.825", 31
    .const 'Sub' $P5192 = "41_1304459385.051" 
    assign $P5191, $P5192
    nqp_get_sc_object $P5193, "1304459375.825", 32
    .const 'Sub' $P5194 = "42_1304459385.051" 
    assign $P5193, $P5194
    nqp_get_sc_object $P5195, "1304459375.825", 33
    .const 'Sub' $P5196 = "43_1304459385.051" 
    assign $P5195, $P5196
    nqp_get_sc_object $P5197, "1304459375.825", 34
    .const 'Sub' $P5198 = "44_1304459385.051" 
    assign $P5197, $P5198
    nqp_get_sc_object $P5199, "1304459375.825", 35
    .const 'Sub' $P5200 = "45_1304459385.051" 
    assign $P5199, $P5200
    nqp_get_sc_object $P5201, "1304459375.825", 36
    .const 'Sub' $P5202 = "46_1304459385.051" 
    assign $P5201, $P5202
    nqp_get_sc_object $P5203, "1304459375.825", 37
    .const 'Sub' $P5204 = "47_1304459385.051" 
    assign $P5203, $P5204
    nqp_get_sc_object $P5205, "1304459375.825", 38
    .const 'Sub' $P5206 = "48_1304459385.051" 
    assign $P5205, $P5206
    nqp_get_sc_object $P5207, "1304459375.825", 39
    .const 'Sub' $P5208 = "49_1304459385.051" 
    assign $P5207, $P5208
    nqp_get_sc_object $P5209, "1304459375.825", 40
    .const 'Sub' $P5210 = "50_1304459385.051" 
    assign $P5209, $P5210
    nqp_get_sc_object $P5211, "1304459375.825", 41
    .const 'Sub' $P5212 = "51_1304459385.051" 
    assign $P5211, $P5212
    nqp_get_sc_object $P5213, "1304459375.825", 42
    .const 'Sub' $P5214 = "52_1304459385.051" 
    assign $P5213, $P5214
    nqp_get_sc_object $P5215, "1304459375.825", 43
    .const 'Sub' $P5216 = "53_1304459385.051" 
    assign $P5215, $P5216
    nqp_get_sc_object $P5217, "1304459375.825", 44
    .const 'Sub' $P5218 = "54_1304459385.051" 
    assign $P5217, $P5218
    nqp_get_sc_object $P5219, "1304459375.825", 45
    .const 'Sub' $P5220 = "55_1304459385.051" 
    assign $P5219, $P5220
    nqp_get_sc_object $P5221, "1304459375.825", 46
    .const 'Sub' $P5222 = "56_1304459385.051" 
    assign $P5221, $P5222
    nqp_get_sc_object $P5223, "1304459375.825", 47
    .const 'Sub' $P5224 = "57_1304459385.051" 
    assign $P5223, $P5224
    nqp_get_sc_object $P5225, "1304459375.825", 48
    .const 'Sub' $P5226 = "58_1304459385.051" 
    assign $P5225, $P5226
    nqp_get_sc_object $P5227, "1304459375.825", 49
    .const 'Sub' $P5228 = "59_1304459385.051" 
    assign $P5227, $P5228
    nqp_get_sc_object $P5229, "1304459375.825", 50
    .const 'Sub' $P5230 = "60_1304459385.051" 
    assign $P5229, $P5230
    nqp_get_sc_object $P5231, "1304459375.825", 51
    .const 'Sub' $P5232 = "61_1304459385.051" 
    assign $P5231, $P5232
    nqp_get_sc_object $P5233, "1304459375.825", 52
    .const 'Sub' $P5234 = "62_1304459385.051" 
    assign $P5233, $P5234
    nqp_get_sc_object $P5235, "1304459375.825", 53
    .const 'Sub' $P5236 = "63_1304459385.051" 
    assign $P5235, $P5236
    nqp_get_sc_object $P5237, "1304459375.825", 54
    .const 'Sub' $P5238 = "64_1304459385.051" 
    assign $P5237, $P5238
    nqp_get_sc_object $P5239, "1304459375.825", 55
    .const 'Sub' $P5240 = "65_1304459385.051" 
    assign $P5239, $P5240
    nqp_get_sc_object $P5241, "1304459375.825", 56
    .const 'Sub' $P5242 = "66_1304459385.051" 
    assign $P5241, $P5242
    nqp_get_sc_object $P5243, "1304459375.825", 57
    .const 'Sub' $P5244 = "67_1304459385.051" 
    assign $P5243, $P5244
    nqp_get_sc_object $P5245, "1304459375.825", 58
    .const 'Sub' $P5246 = "68_1304459385.051" 
    assign $P5245, $P5246
    nqp_get_sc_object $P5247, "1304459375.825", 59
    .const 'Sub' $P5248 = "69_1304459385.051" 
    assign $P5247, $P5248
    nqp_get_sc_object $P5249, "1304459375.825", 60
    .const 'Sub' $P5250 = "70_1304459385.051" 
    assign $P5249, $P5250
    nqp_get_sc_object $P5251, "1304459375.825", 61
    .const 'Sub' $P5252 = "71_1304459385.051" 
    assign $P5251, $P5252
    nqp_get_sc_object $P5253, "1304459375.825", 62
    .const 'Sub' $P5254 = "72_1304459385.051" 
    assign $P5253, $P5254
    nqp_get_sc_object $P5255, "1304459375.825", 63
    .const 'Sub' $P5256 = "73_1304459385.051" 
    assign $P5255, $P5256
    nqp_get_sc_object $P5257, "1304459375.825", 64
    .const 'Sub' $P5258 = "74_1304459385.051" 
    assign $P5257, $P5258
    nqp_get_sc_object $P5259, "1304459375.825", 65
    .const 'Sub' $P5260 = "75_1304459385.051" 
    assign $P5259, $P5260
    nqp_get_sc_object $P5261, "1304459375.825", 66
    .const 'Sub' $P5262 = "76_1304459385.051" 
    assign $P5261, $P5262
    nqp_get_sc_object $P5263, "1304459375.825", 67
    .const 'Sub' $P5264 = "77_1304459385.051" 
    assign $P5263, $P5264
    nqp_get_sc_object $P5265, "1304459375.825", 68
    .const 'Sub' $P5266 = "78_1304459385.051" 
    assign $P5265, $P5266
    nqp_get_sc_object $P5267, "1304459375.825", 69
    .const 'Sub' $P5268 = "79_1304459385.051" 
    assign $P5267, $P5268
    nqp_get_sc_object $P5269, "1304459375.825", 70
    .const 'Sub' $P5270 = "80_1304459385.051" 
    assign $P5269, $P5270
    nqp_get_sc_object $P5271, "1304459375.825", 71
    .const 'Sub' $P5272 = "81_1304459385.051" 
    assign $P5271, $P5272
    nqp_get_sc_object $P5273, "1304459375.825", 72
    .const 'Sub' $P5274 = "82_1304459385.051" 
    assign $P5273, $P5274
    nqp_get_sc_object $P5275, "1304459375.825", 73
    .const 'Sub' $P5276 = "83_1304459385.051" 
    assign $P5275, $P5276
    nqp_get_sc_object $P5277, "1304459375.825", 74
    .const 'Sub' $P5278 = "84_1304459385.051" 
    assign $P5277, $P5278
    nqp_get_sc_object $P5279, "1304459375.825", 75
    .const 'Sub' $P5280 = "85_1304459385.051" 
    assign $P5279, $P5280
    nqp_get_sc_object $P5281, "1304459375.825", 76
    .const 'Sub' $P5282 = "86_1304459385.051" 
    assign $P5281, $P5282
    nqp_get_sc_object $P5283, "1304459375.825", 77
    .const 'Sub' $P5284 = "87_1304459385.051" 
    assign $P5283, $P5284
    nqp_get_sc_object $P5285, "1304459375.825", 78
    .const 'Sub' $P5286 = "88_1304459385.051" 
    assign $P5285, $P5286
    nqp_get_sc_object $P5287, "1304459375.825", 79
    .const 'Sub' $P5288 = "89_1304459385.051" 
    assign $P5287, $P5288
    nqp_get_sc_object $P5289, "1304459375.825", 80
    .const 'Sub' $P5290 = "90_1304459385.051" 
    assign $P5289, $P5290
    nqp_get_sc_object $P5291, "1304459375.825", 81
    .const 'Sub' $P5292 = "91_1304459385.051" 
    assign $P5291, $P5292
    nqp_get_sc_object $P5293, "1304459375.825", 82
    .const 'Sub' $P5294 = "92_1304459385.051" 
    assign $P5293, $P5294
    nqp_get_sc_object $P5295, "1304459375.825", 83
    .const 'Sub' $P5296 = "93_1304459385.051" 
    assign $P5295, $P5296
    nqp_get_sc_object $P5297, "1304459375.825", 84
    .const 'Sub' $P5298 = "97_1304459385.051" 
    assign $P5297, $P5298
    nqp_get_sc_object $P5299, "1304459375.825", 85
    .const 'Sub' $P5300 = "98_1304459385.051" 
    assign $P5299, $P5300
    nqp_get_sc_object $P5301, "1304459375.825", 86
    .const 'Sub' $P5302 = "100_1304459385.051" 
    assign $P5301, $P5302
    nqp_get_sc_object $P5303, "1304459375.825", 87
    .const 'Sub' $P5304 = "101_1304459385.051" 
    assign $P5303, $P5304
    nqp_get_sc_object $P5305, "1304459375.825", 88
    .const 'Sub' $P5306 = "102_1304459385.051" 
    assign $P5305, $P5306
    nqp_get_sc_object $P5307, "1304459375.825", 89
    .const 'Sub' $P5308 = "103_1304459385.051" 
    assign $P5307, $P5308
    nqp_get_sc_object $P5309, "1304459375.825", 90
    .const 'Sub' $P5310 = "104_1304459385.051" 
    assign $P5309, $P5310
    nqp_get_sc_object $P5311, "1304459375.825", 91
    .const 'Sub' $P5312 = "105_1304459385.051" 
    assign $P5311, $P5312
    nqp_get_sc_object $P5313, "1304459375.825", 92
    .const 'Sub' $P5314 = "106_1304459385.051" 
    assign $P5313, $P5314
    nqp_get_sc_object $P5315, "1304459375.825", 93
    .const 'Sub' $P5316 = "107_1304459385.051" 
    assign $P5315, $P5316
    nqp_get_sc_object $P5317, "1304459375.825", 94
    .const 'Sub' $P5318 = "108_1304459385.051" 
    assign $P5317, $P5318
    nqp_get_sc_object $P5319, "1304459375.825", 95
    .const 'Sub' $P5320 = "109_1304459385.051" 
    assign $P5319, $P5320
    .const 'Sub' $P5321 = "109_1304459385.051" 
    nqp_get_sc_object $P5322, "1304459375.825", 1
    get_who $P5323, $P5322
    set $P5323["quotemod_check"], $P5321
    nqp_get_sc_object $P5324, "1304459375.825", 96
    .const 'Sub' $P5325 = "110_1304459385.051" 
    assign $P5324, $P5325
    nqp_get_sc_object $P5326, "1304459375.825", 97
    .const 'Sub' $P5327 = "111_1304459385.051" 
    assign $P5326, $P5327
    nqp_get_sc_object $P5328, "1304459375.825", 98
    .const 'Sub' $P5329 = "112_1304459385.051" 
    assign $P5328, $P5329
    .const 'Sub' $P5330 = "112_1304459385.051" 
    nqp_get_sc_object $P5331, "1304459375.825", 1
    get_who $P5332, $P5331
    set $P5332["split_words"], $P5330
    nqp_get_sc_object $P5333, "1304459375.825", 99
    .const 'Sub' $P5334 = "113_1304459385.051" 
    assign $P5333, $P5334
    nqp_get_sc_object $P5335, "1304459375.825", 100
    .const 'Sub' $P5336 = "114_1304459385.051" 
    assign $P5335, $P5336
    nqp_get_sc_object $P5337, "1304459375.825", 101
    .const 'Sub' $P5338 = "115_1304459385.051" 
    assign $P5337, $P5338
    nqp_get_sc_object $P5339, "1304459375.825", 102
    .const 'Sub' $P5340 = "116_1304459385.051" 
    assign $P5339, $P5340
    nqp_get_sc_object $P5341, "1304459375.825", 103
    .const 'Sub' $P5342 = "117_1304459385.051" 
    assign $P5341, $P5342
    nqp_get_sc_object $P5343, "1304459375.825", 104
    .const 'Sub' $P5344 = "118_1304459385.051" 
    assign $P5343, $P5344
    .const 'Sub' $P5345 = "11_1304459385.051" 
    $P5346 = $P5345."get_lexinfo"()
    nqp_get_sc_object $P5347, "1304459375.825", 1
    $P5346."set_static_lexpad_value"("$?PACKAGE", $P5347)
    .const 'Sub' $P5348 = "11_1304459385.051" 
    $P5349 = $P5348."get_lexinfo"()
    $P5349."finish_static_lexpad"()
    .const 'Sub' $P5350 = "11_1304459385.051" 
    $P5351 = $P5350."get_lexinfo"()
    nqp_get_sc_object $P5352, "1304459375.825", 1
    $P5351."set_static_lexpad_value"("$?CLASS", $P5352)
    .const 'Sub' $P5353 = "11_1304459385.051" 
    $P5354 = $P5353."get_lexinfo"()
    $P5354."finish_static_lexpad"()
    .const 'Sub' $P5355 = "120_1304459385.051" 
    nqp_get_sc_object $P5356, "1304459375.825", 105
    get_who $P5357, $P5356
    set $P5357["string_to_int"], $P5355
    .const 'Sub' $P5358 = "122_1304459385.051" 
    nqp_get_sc_object $P5359, "1304459375.825", 105
    get_who $P5360, $P5359
    set $P5360["ints_to_string"], $P5358
    nqp_get_sc_object $P5361, "1304459375.825", 106
    .const 'Sub' $P5362 = "125_1304459385.051" 
    assign $P5361, $P5362
    nqp_get_sc_object $P5363, "1304459375.825", 107
    .const 'Sub' $P5364 = "126_1304459385.051" 
    assign $P5363, $P5364
    nqp_get_sc_object $P5365, "1304459375.825", 108
    .const 'Sub' $P5366 = "129_1304459385.051" 
    assign $P5365, $P5366
    nqp_get_sc_object $P5367, "1304459375.825", 109
    .const 'Sub' $P5368 = "132_1304459385.051" 
    assign $P5367, $P5368
    nqp_get_sc_object $P5369, "1304459375.825", 110
    .const 'Sub' $P5370 = "133_1304459385.051" 
    assign $P5369, $P5370
    nqp_get_sc_object $P5371, "1304459375.825", 111
    .const 'Sub' $P5372 = "134_1304459385.051" 
    assign $P5371, $P5372
    nqp_get_sc_object $P5373, "1304459375.825", 112
    .const 'Sub' $P5374 = "135_1304459385.051" 
    assign $P5373, $P5374
    nqp_get_sc_object $P5375, "1304459375.825", 113
    .const 'Sub' $P5376 = "136_1304459385.051" 
    assign $P5375, $P5376
    nqp_get_sc_object $P5377, "1304459375.825", 114
    .const 'Sub' $P5378 = "137_1304459385.051" 
    assign $P5377, $P5378
    nqp_get_sc_object $P5379, "1304459375.825", 115
    .const 'Sub' $P5380 = "138_1304459385.051" 
    assign $P5379, $P5380
    nqp_get_sc_object $P5381, "1304459375.825", 116
    .const 'Sub' $P5382 = "139_1304459385.051" 
    assign $P5381, $P5382
    nqp_get_sc_object $P5383, "1304459375.825", 117
    .const 'Sub' $P5384 = "140_1304459385.051" 
    assign $P5383, $P5384
    nqp_get_sc_object $P5385, "1304459375.825", 118
    .const 'Sub' $P5386 = "141_1304459385.051" 
    assign $P5385, $P5386
    nqp_get_sc_object $P5387, "1304459375.825", 119
    .const 'Sub' $P5388 = "142_1304459385.051" 
    assign $P5387, $P5388
    nqp_get_sc_object $P5389, "1304459375.825", 120
    .const 'Sub' $P5390 = "145_1304459385.051" 
    assign $P5389, $P5390
    nqp_get_sc_object $P5391, "1304459375.825", 121
    .const 'Sub' $P5392 = "147_1304459385.051" 
    assign $P5391, $P5392
    nqp_get_sc_object $P5393, "1304459375.825", 122
    .const 'Sub' $P5394 = "148_1304459385.051" 
    assign $P5393, $P5394
    nqp_get_sc_object $P5395, "1304459375.825", 123
    .const 'Sub' $P5396 = "149_1304459385.051" 
    assign $P5395, $P5396
    nqp_get_sc_object $P5397, "1304459375.825", 124
    .const 'Sub' $P5398 = "150_1304459385.051" 
    assign $P5397, $P5398
    nqp_get_sc_object $P5399, "1304459375.825", 125
    .const 'Sub' $P5400 = "151_1304459385.051" 
    assign $P5399, $P5400
    nqp_get_sc_object $P5401, "1304459375.825", 126
    .const 'Sub' $P5402 = "152_1304459385.051" 
    assign $P5401, $P5402
    nqp_get_sc_object $P5403, "1304459375.825", 127
    .const 'Sub' $P5404 = "153_1304459385.051" 
    assign $P5403, $P5404
    nqp_get_sc_object $P5405, "1304459375.825", 128
    .const 'Sub' $P5406 = "154_1304459385.051" 
    assign $P5405, $P5406
    nqp_get_sc_object $P5407, "1304459375.825", 129
    .const 'Sub' $P5408 = "155_1304459385.051" 
    assign $P5407, $P5408
    nqp_get_sc_object $P5409, "1304459375.825", 130
    .const 'Sub' $P5410 = "156_1304459385.051" 
    assign $P5409, $P5410
    nqp_get_sc_object $P5411, "1304459375.825", 131
    .const 'Sub' $P5412 = "157_1304459385.051" 
    assign $P5411, $P5412
    nqp_get_sc_object $P5413, "1304459375.825", 132
    .const 'Sub' $P5414 = "158_1304459385.051" 
    assign $P5413, $P5414
    nqp_get_sc_object $P5415, "1304459375.825", 133
    .const 'Sub' $P5416 = "159_1304459385.051" 
    assign $P5415, $P5416
    nqp_get_sc_object $P5417, "1304459375.825", 134
    .const 'Sub' $P5418 = "160_1304459385.051" 
    assign $P5417, $P5418
    nqp_get_sc_object $P5419, "1304459375.825", 135
    .const 'Sub' $P5420 = "161_1304459385.051" 
    assign $P5419, $P5420
    nqp_get_sc_object $P5421, "1304459375.825", 136
    .const 'Sub' $P5422 = "162_1304459385.051" 
    assign $P5421, $P5422
    nqp_get_sc_object $P5423, "1304459375.825", 137
    .const 'Sub' $P5424 = "164_1304459385.051" 
    assign $P5423, $P5424
    .const 'Sub' $P5425 = "119_1304459385.051" 
    $P5426 = $P5425."get_lexinfo"()
    nqp_get_sc_object $P5427, "1304459375.825", 105
    $P5426."set_static_lexpad_value"("$?PACKAGE", $P5427)
    .const 'Sub' $P5428 = "119_1304459385.051" 
    $P5429 = $P5428."get_lexinfo"()
    $P5429."finish_static_lexpad"()
    .const 'Sub' $P5430 = "119_1304459385.051" 
    $P5431 = $P5430."get_lexinfo"()
    nqp_get_sc_object $P5432, "1304459375.825", 105
    $P5431."set_static_lexpad_value"("$?CLASS", $P5432)
    .const 'Sub' $P5433 = "119_1304459385.051" 
    $P5434 = $P5433."get_lexinfo"()
    $P5434."finish_static_lexpad"()
    nqp_get_sc_object $P5435, "1304459375.825", 139
    .const 'Sub' $P5436 = "168_1304459385.051" 
    assign $P5435, $P5436
    nqp_get_sc_object $P5437, "1304459375.825", 140
    .const 'Sub' $P5438 = "169_1304459385.051" 
    assign $P5437, $P5438
    nqp_get_sc_object $P5439, "1304459375.825", 141
    .const 'Sub' $P5440 = "171_1304459385.051" 
    assign $P5439, $P5440
    nqp_get_sc_object $P5441, "1304459375.825", 142
    .const 'Sub' $P5442 = "174_1304459385.051" 
    assign $P5441, $P5442
    nqp_get_sc_object $P5443, "1304459375.825", 143
    .const 'Sub' $P5444 = "175_1304459385.051" 
    assign $P5443, $P5444
    nqp_get_sc_object $P5445, "1304459375.825", 144
    .const 'Sub' $P5446 = "176_1304459385.051" 
    assign $P5445, $P5446
    nqp_get_sc_object $P5447, "1304459375.825", 145
    .const 'Sub' $P5448 = "178_1304459385.051" 
    assign $P5447, $P5448
    nqp_get_sc_object $P5449, "1304459375.825", 146
    .const 'Sub' $P5450 = "183_1304459385.051" 
    assign $P5449, $P5450
    nqp_get_sc_object $P5451, "1304459375.825", 147
    .const 'Sub' $P5452 = "184_1304459385.051" 
    assign $P5451, $P5452
    nqp_get_sc_object $P5453, "1304459375.825", 148
    .const 'Sub' $P5454 = "191_1304459385.051" 
    assign $P5453, $P5454
    nqp_get_sc_object $P5455, "1304459375.825", 149
    .const 'Sub' $P5456 = "193_1304459385.051" 
    assign $P5455, $P5456
    nqp_get_sc_object $P5457, "1304459375.825", 150
    .const 'Sub' $P5458 = "194_1304459385.051" 
    assign $P5457, $P5458
    nqp_get_sc_object $P5459, "1304459375.825", 151
    .const 'Sub' $P5460 = "195_1304459385.051" 
    assign $P5459, $P5460
    nqp_get_sc_object $P5461, "1304459375.825", 152
    .const 'Sub' $P5462 = "196_1304459385.051" 
    assign $P5461, $P5462
    nqp_get_sc_object $P5463, "1304459375.825", 153
    .const 'Sub' $P5464 = "197_1304459385.051" 
    assign $P5463, $P5464
    nqp_get_sc_object $P5465, "1304459375.825", 154
    .const 'Sub' $P5466 = "198_1304459385.051" 
    assign $P5465, $P5466
    nqp_get_sc_object $P5467, "1304459375.825", 155
    .const 'Sub' $P5468 = "199_1304459385.051" 
    assign $P5467, $P5468
    nqp_get_sc_object $P5469, "1304459375.825", 156
    .const 'Sub' $P5470 = "200_1304459385.051" 
    assign $P5469, $P5470
    nqp_get_sc_object $P5471, "1304459375.825", 157
    .const 'Sub' $P5472 = "201_1304459385.051" 
    assign $P5471, $P5472
    nqp_get_sc_object $P5473, "1304459375.825", 158
    .const 'Sub' $P5474 = "202_1304459385.051" 
    assign $P5473, $P5474
    nqp_get_sc_object $P5475, "1304459375.825", 159
    .const 'Sub' $P5476 = "203_1304459385.051" 
    assign $P5475, $P5476
    nqp_get_sc_object $P5477, "1304459375.825", 160
    .const 'Sub' $P5478 = "205_1304459385.051" 
    assign $P5477, $P5478
    nqp_get_sc_object $P5479, "1304459375.825", 161
    .const 'Sub' $P5480 = "208_1304459385.051" 
    assign $P5479, $P5480
    nqp_get_sc_object $P5481, "1304459375.825", 162
    .const 'Sub' $P5482 = "212_1304459385.051" 
    assign $P5481, $P5482
    nqp_get_sc_object $P5483, "1304459375.825", 163
    .const 'Sub' $P5484 = "214_1304459385.051" 
    assign $P5483, $P5484
    nqp_get_sc_object $P5485, "1304459375.825", 164
    .const 'Sub' $P5486 = "215_1304459385.051" 
    assign $P5485, $P5486
    nqp_get_sc_object $P5487, "1304459375.825", 165
    .const 'Sub' $P5488 = "216_1304459385.051" 
    assign $P5487, $P5488
    nqp_get_sc_object $P5489, "1304459375.825", 166
    .const 'Sub' $P5490 = "217_1304459385.051" 
    assign $P5489, $P5490
    nqp_get_sc_object $P5491, "1304459375.825", 167
    .const 'Sub' $P5492 = "218_1304459385.051" 
    assign $P5491, $P5492
    nqp_get_sc_object $P5493, "1304459375.825", 168
    .const 'Sub' $P5494 = "219_1304459385.051" 
    assign $P5493, $P5494
    nqp_get_sc_object $P5495, "1304459375.825", 169
    .const 'Sub' $P5496 = "221_1304459385.051" 
    assign $P5495, $P5496
    nqp_get_sc_object $P5497, "1304459375.825", 170
    .const 'Sub' $P5498 = "222_1304459385.051" 
    assign $P5497, $P5498
    nqp_get_sc_object $P5499, "1304459375.825", 171
    .const 'Sub' $P5500 = "223_1304459385.051" 
    assign $P5499, $P5500
    nqp_get_sc_object $P5501, "1304459375.825", 172
    .const 'Sub' $P5502 = "225_1304459385.051" 
    assign $P5501, $P5502
    nqp_get_sc_object $P5503, "1304459375.825", 173
    .const 'Sub' $P5504 = "228_1304459385.051" 
    assign $P5503, $P5504
    nqp_get_sc_object $P5505, "1304459375.825", 174
    .const 'Sub' $P5506 = "230_1304459385.051" 
    assign $P5505, $P5506
    .const 'Sub' $P5507 = "165_1304459385.051" 
    $P5508 = $P5507."get_lexinfo"()
    nqp_get_sc_object $P5509, "1304459375.825", 138
    $P5508."set_static_lexpad_value"("$?PACKAGE", $P5509)
    .const 'Sub' $P5510 = "165_1304459385.051" 
    $P5511 = $P5510."get_lexinfo"()
    $P5511."finish_static_lexpad"()
    .const 'Sub' $P5512 = "165_1304459385.051" 
    $P5513 = $P5512."get_lexinfo"()
    nqp_get_sc_object $P5514, "1304459375.825", 138
    $P5513."set_static_lexpad_value"("$?CLASS", $P5514)
    .const 'Sub' $P5515 = "165_1304459385.051" 
    $P5516 = $P5515."get_lexinfo"()
    $P5516."finish_static_lexpad"()
    nqp_get_sc_object $P5517, "1304459375.825", 176
    .const 'Sub' $P5518 = "232_1304459385.051" 
    assign $P5517, $P5518
    nqp_get_sc_object $P5519, "1304459375.825", 177
    .const 'Sub' $P5520 = "233_1304459385.051" 
    assign $P5519, $P5520
    nqp_get_sc_object $P5521, "1304459375.825", 178
    .const 'Sub' $P5522 = "234_1304459385.051" 
    assign $P5521, $P5522
    nqp_get_sc_object $P5523, "1304459375.825", 179
    .const 'Sub' $P5524 = "235_1304459385.051" 
    assign $P5523, $P5524
    nqp_get_sc_object $P5525, "1304459375.825", 180
    .const 'Sub' $P5526 = "236_1304459385.051" 
    assign $P5525, $P5526
    .const 'Sub' $P5527 = "231_1304459385.051" 
    $P5528 = $P5527."get_lexinfo"()
    nqp_get_sc_object $P5529, "1304459375.825", 175
    $P5528."set_static_lexpad_value"("$?PACKAGE", $P5529)
    .const 'Sub' $P5530 = "231_1304459385.051" 
    $P5531 = $P5530."get_lexinfo"()
    $P5531."finish_static_lexpad"()
    .const 'Sub' $P5532 = "231_1304459385.051" 
    $P5533 = $P5532."get_lexinfo"()
    nqp_get_sc_object $P5534, "1304459375.825", 175
    $P5533."set_static_lexpad_value"("$?CLASS", $P5534)
    .const 'Sub' $P5535 = "231_1304459385.051" 
    $P5536 = $P5535."get_lexinfo"()
    $P5536."finish_static_lexpad"()
    nqp_get_sc_object $P5537, "1304459375.825", 182
    .const 'Sub' $P5538 = "239_1304459385.051" 
    assign $P5537, $P5538
    nqp_get_sc_object $P5539, "1304459375.825", 183
    .const 'Sub' $P5540 = "240_1304459385.051" 
    assign $P5539, $P5540
    nqp_get_sc_object $P5541, "1304459375.825", 184
    .const 'Sub' $P5542 = "241_1304459385.051" 
    assign $P5541, $P5542
    nqp_get_sc_object $P5543, "1304459375.825", 185
    .const 'Sub' $P5544 = "243_1304459385.051" 
    assign $P5543, $P5544
    nqp_get_sc_object $P5545, "1304459375.825", 186
    .const 'Sub' $P5546 = "244_1304459385.051" 
    assign $P5545, $P5546
    nqp_get_sc_object $P5547, "1304459375.825", 187
    .const 'Sub' $P5548 = "245_1304459385.051" 
    assign $P5547, $P5548
    nqp_get_sc_object $P5549, "1304459375.825", 188
    .const 'Sub' $P5550 = "247_1304459385.051" 
    assign $P5549, $P5550
    nqp_get_sc_object $P5551, "1304459375.825", 189
    .const 'Sub' $P5552 = "248_1304459385.051" 
    assign $P5551, $P5552
    nqp_get_sc_object $P5553, "1304459375.825", 190
    .const 'Sub' $P5554 = "249_1304459385.051" 
    assign $P5553, $P5554
    .const 'Sub' $P5555 = "238_1304459385.051" 
    $P5556 = $P5555."get_lexinfo"()
    nqp_get_sc_object $P5557, "1304459375.825", 181
    $P5556."set_static_lexpad_value"("$?PACKAGE", $P5557)
    .const 'Sub' $P5558 = "238_1304459385.051" 
    $P5559 = $P5558."get_lexinfo"()
    $P5559."finish_static_lexpad"()
    .const 'Sub' $P5560 = "238_1304459385.051" 
    $P5561 = $P5560."get_lexinfo"()
    nqp_get_sc_object $P5562, "1304459375.825", 181
    $P5561."set_static_lexpad_value"("$?CLASS", $P5562)
    .const 'Sub' $P5563 = "238_1304459385.051" 
    $P5564 = $P5563."get_lexinfo"()
    $P5564."finish_static_lexpad"()
    .const 'Sub' $P5565 = "257_1304459385.051" 
    $P5566 = $P5565."get_lexinfo"()
    nqp_get_sc_object $P5567, "1304459375.825", 192
    $P5566."set_static_lexpad_value"("Event", $P5567)
    .const 'Sub' $P5568 = "257_1304459385.051" 
    $P5569 = $P5568."get_lexinfo"()
    $P5569."finish_static_lexpad"()
    nqp_get_sc_object $P5570, "1304459375.825", 193
    .const 'Sub' $P5571 = "260_1304459385.051" 
    assign $P5570, $P5571
    nqp_get_sc_object $P5572, "1304459375.825", 194
    .const 'Sub' $P5573 = "261_1304459385.051" 
    assign $P5572, $P5573
    .const 'Sub' $P5574 = "259_1304459385.051" 
    $P5575 = $P5574."get_lexinfo"()
    nqp_get_sc_object $P5576, "1304459375.825", 192
    $P5575."set_static_lexpad_value"("$?PACKAGE", $P5576)
    .const 'Sub' $P5577 = "259_1304459385.051" 
    $P5578 = $P5577."get_lexinfo"()
    $P5578."finish_static_lexpad"()
    .const 'Sub' $P5579 = "259_1304459385.051" 
    $P5580 = $P5579."get_lexinfo"()
    nqp_get_sc_object $P5581, "1304459375.825", 192
    $P5580."set_static_lexpad_value"("$?CLASS", $P5581)
    .const 'Sub' $P5582 = "259_1304459385.051" 
    $P5583 = $P5582."get_lexinfo"()
    $P5583."finish_static_lexpad"()
    nqp_get_sc_object $P5584, "1304459375.825", 195
    .const 'Sub' $P5585 = "262_1304459385.051" 
    assign $P5584, $P5585
    nqp_get_sc_object $P5586, "1304459375.825", 196
    .const 'Sub' $P5587 = "263_1304459385.051" 
    assign $P5586, $P5587
    nqp_get_sc_object $P5588, "1304459375.825", 197
    .const 'Sub' $P5589 = "264_1304459385.051" 
    assign $P5588, $P5589
    nqp_get_sc_object $P5590, "1304459375.825", 198
    .const 'Sub' $P5591 = "265_1304459385.051" 
    assign $P5590, $P5591
    nqp_get_sc_object $P5592, "1304459375.825", 199
    .const 'Sub' $P5593 = "266_1304459385.051" 
    assign $P5592, $P5593
    nqp_get_sc_object $P5594, "1304459375.825", 200
    .const 'Sub' $P5595 = "267_1304459385.051" 
    assign $P5594, $P5595
    nqp_get_sc_object $P5596, "1304459375.825", 201
    .const 'Sub' $P5597 = "268_1304459385.051" 
    assign $P5596, $P5597
    nqp_get_sc_object $P5598, "1304459375.825", 202
    .const 'Sub' $P5599 = "269_1304459385.051" 
    assign $P5598, $P5599
    nqp_get_sc_object $P5600, "1304459375.825", 203
    .const 'Sub' $P5601 = "270_1304459385.051" 
    assign $P5600, $P5601
    nqp_get_sc_object $P5602, "1304459375.825", 204
    .const 'Sub' $P5603 = "271_1304459385.051" 
    assign $P5602, $P5603
    nqp_get_sc_object $P5604, "1304459375.825", 205
    .const 'Sub' $P5605 = "272_1304459385.051" 
    assign $P5604, $P5605
    nqp_get_sc_object $P5606, "1304459375.825", 206
    .const 'Sub' $P5607 = "274_1304459385.051" 
    assign $P5606, $P5607
    nqp_get_sc_object $P5608, "1304459375.825", 207
    .const 'Sub' $P5609 = "275_1304459385.051" 
    assign $P5608, $P5609
    nqp_get_sc_object $P5610, "1304459375.825", 208
    .const 'Sub' $P5611 = "278_1304459385.051" 
    assign $P5610, $P5611
    nqp_get_sc_object $P5612, "1304459375.825", 209
    .const 'Sub' $P5613 = "279_1304459385.051" 
    assign $P5612, $P5613
    nqp_get_sc_object $P5614, "1304459375.825", 210
    .const 'Sub' $P5615 = "280_1304459385.051" 
    assign $P5614, $P5615
    nqp_get_sc_object $P5616, "1304459375.825", 211
    .const 'Sub' $P5617 = "281_1304459385.051" 
    assign $P5616, $P5617
    nqp_get_sc_object $P5618, "1304459375.825", 212
    .const 'Sub' $P5619 = "285_1304459385.051" 
    assign $P5618, $P5619
    nqp_get_sc_object $P5620, "1304459375.825", 213
    .const 'Sub' $P5621 = "287_1304459385.051" 
    assign $P5620, $P5621
    nqp_get_sc_object $P5622, "1304459375.825", 214
    .const 'Sub' $P5623 = "288_1304459385.051" 
    assign $P5622, $P5623
    nqp_get_sc_object $P5624, "1304459375.825", 215
    .const 'Sub' $P5625 = "293_1304459385.051" 
    assign $P5624, $P5625
    nqp_get_sc_object $P5626, "1304459375.825", 216
    .const 'Sub' $P5627 = "294_1304459385.051" 
    assign $P5626, $P5627
    nqp_get_sc_object $P5628, "1304459375.825", 217
    .const 'Sub' $P5629 = "295_1304459385.051" 
    assign $P5628, $P5629
    nqp_get_sc_object $P5630, "1304459375.825", 218
    .const 'Sub' $P5631 = "296_1304459385.051" 
    assign $P5630, $P5631
    .const 'Sub' $P5632 = "257_1304459385.051" 
    $P5633 = $P5632."get_lexinfo"()
    nqp_get_sc_object $P5634, "1304459375.825", 191
    $P5633."set_static_lexpad_value"("$?PACKAGE", $P5634)
    .const 'Sub' $P5635 = "257_1304459385.051" 
    $P5636 = $P5635."get_lexinfo"()
    $P5636."finish_static_lexpad"()
    .const 'Sub' $P5637 = "257_1304459385.051" 
    $P5638 = $P5637."get_lexinfo"()
    nqp_get_sc_object $P5639, "1304459375.825", 191
    $P5638."set_static_lexpad_value"("$?CLASS", $P5639)
    .const 'Sub' $P5640 = "257_1304459385.051" 
    $P5641 = $P5640."get_lexinfo"()
    $P5641."finish_static_lexpad"()
    goto if_3962_end
  if_3962:
    nqp_dynop_setup 
    getinterp $P3965
    get_class $P3966, "LexPad"
    get_class $P3967, "NQPLexPad"
    $P3965."hll_map"($P3966, $P3967)
    nqp_create_sc $P3968, "1304459375.825"
    .local pmc cur_sc
    set cur_sc, $P3968
    nqp_get_sc_object $P3969, "__6MODEL_CORE__", 0
    $P3970 = $P3969."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3970, cur_sc
    nqp_set_sc_object "1304459375.825", 0, $P3970
    .const 'Sub' $P3971 = "10_1304459385.051" 
    $P3972 = $P3971."get_lexinfo"()
    nqp_get_sc_object $P3973, "1304459375.825", 0
    $P3972."set_static_lexpad_value"("GLOBALish", $P3973)
    .const 'Sub' $P3974 = "10_1304459385.051" 
    $P3975 = $P3974."get_lexinfo"()
    $P3975."finish_static_lexpad"()
    .const 'Sub' $P3976 = "10_1304459385.051" 
    $P3977 = $P3976."get_lexinfo"()
    nqp_get_sc_object $P3978, "1304459375.825", 0
    $P3977."set_static_lexpad_value"("$?PACKAGE", $P3978)
    .const 'Sub' $P3979 = "10_1304459385.051" 
    $P3980 = $P3979."get_lexinfo"()
    $P3980."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3981, "ModuleLoader"
    $P3982 = $P3981."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3982)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3983, "ModuleLoader"
    nqp_get_sc_object $P3984, "1304459375.825", 0
    $P3983."load_module"("NQPRegex", $P3984)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3985, "ModuleLoader"
    nqp_get_sc_object $P3986, "1304459375.825", 0
    $P3985."load_module"("NQPRegex", $P3986)
    nqp_get_sc_object $P3987, "1304459368.206", 41
    $P3988 = $P3987."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3988, cur_sc
    nqp_set_sc_object "1304459375.825", 1, $P3988
    nqp_get_sc_object $P3989, "1304459375.825", 1
    nqp_get_sc_object $P3990, "1304459375.825", 0
    nqp_get_package_through_who $P3991, $P3990, "HLL"
    get_who $P3992, $P3991
    set $P3992["Grammar"], $P3989
    nqp_get_sc_object $P3993, "1304459375.825", 1
    get_how $P3994, $P3993
    nqp_get_sc_object $P3995, "1304459375.825", 1
    .const 'Sub' $P3996 = "12_1304459385.051" 
    $P3994."add_method"($P3995, "ws", $P3996)
    nqp_get_sc_object $P3997, "1304459375.825", 1
    get_how $P3998, $P3997
    nqp_get_sc_object $P3999, "1304459375.825", 1
    .const 'Sub' $P4000 = "13_1304459385.051" 
    $P3998."add_method"($P3999, "!PREFIX__ws", $P4000)
    nqp_get_sc_object $P4001, "1304459375.825", 1
    get_how $P4002, $P4001
    nqp_get_sc_object $P4003, "1304459375.825", 1
    .const 'Sub' $P4004 = "14_1304459385.051" 
    $P4002."add_method"($P4003, "termish", $P4004)
    nqp_get_sc_object $P4005, "1304459375.825", 1
    get_how $P4006, $P4005
    nqp_get_sc_object $P4007, "1304459375.825", 1
    .const 'Sub' $P4008 = "15_1304459385.051" 
    $P4006."add_method"($P4007, "!PREFIX__termish", $P4008)
    nqp_get_sc_object $P4009, "1304459375.825", 1
    get_how $P4010, $P4009
    nqp_get_sc_object $P4011, "1304459375.825", 1
    .const 'Sub' $P4012 = "16_1304459385.051" 
    $P4010."add_method"($P4011, "term", $P4012)
    nqp_get_sc_object $P4013, "1304459375.825", 1
    get_how $P4014, $P4013
    nqp_get_sc_object $P4015, "1304459375.825", 1
    .const 'Sub' $P4016 = "17_1304459385.051" 
    $P4014."add_method"($P4015, "!PREFIX__term", $P4016)
    nqp_get_sc_object $P4017, "1304459375.825", 1
    get_how $P4018, $P4017
    nqp_get_sc_object $P4019, "1304459375.825", 1
    .const 'Sub' $P4020 = "18_1304459385.051" 
    $P4018."add_method"($P4019, "infix", $P4020)
    nqp_get_sc_object $P4021, "1304459375.825", 1
    get_how $P4022, $P4021
    nqp_get_sc_object $P4023, "1304459375.825", 1
    .const 'Sub' $P4024 = "19_1304459385.051" 
    $P4022."add_method"($P4023, "!PREFIX__infix", $P4024)
    nqp_get_sc_object $P4025, "1304459375.825", 1
    get_how $P4026, $P4025
    nqp_get_sc_object $P4027, "1304459375.825", 1
    .const 'Sub' $P4028 = "20_1304459385.051" 
    $P4026."add_method"($P4027, "prefix", $P4028)
    nqp_get_sc_object $P4029, "1304459375.825", 1
    get_how $P4030, $P4029
    nqp_get_sc_object $P4031, "1304459375.825", 1
    .const 'Sub' $P4032 = "21_1304459385.051" 
    $P4030."add_method"($P4031, "!PREFIX__prefix", $P4032)
    nqp_get_sc_object $P4033, "1304459375.825", 1
    get_how $P4034, $P4033
    nqp_get_sc_object $P4035, "1304459375.825", 1
    .const 'Sub' $P4036 = "22_1304459385.051" 
    $P4034."add_method"($P4035, "postfix", $P4036)
    nqp_get_sc_object $P4037, "1304459375.825", 1
    get_how $P4038, $P4037
    nqp_get_sc_object $P4039, "1304459375.825", 1
    .const 'Sub' $P4040 = "23_1304459385.051" 
    $P4038."add_method"($P4039, "!PREFIX__postfix", $P4040)
    nqp_get_sc_object $P4041, "1304459375.825", 1
    get_how $P4042, $P4041
    nqp_get_sc_object $P4043, "1304459375.825", 1
    .const 'Sub' $P4044 = "24_1304459385.051" 
    $P4042."add_method"($P4043, "circumfix", $P4044)
    nqp_get_sc_object $P4045, "1304459375.825", 1
    get_how $P4046, $P4045
    nqp_get_sc_object $P4047, "1304459375.825", 1
    .const 'Sub' $P4048 = "25_1304459385.051" 
    $P4046."add_method"($P4047, "!PREFIX__circumfix", $P4048)
    nqp_get_sc_object $P4049, "1304459375.825", 1
    get_how $P4050, $P4049
    nqp_get_sc_object $P4051, "1304459375.825", 1
    .const 'Sub' $P4052 = "26_1304459385.051" 
    $P4050."add_method"($P4051, "postcircumfix", $P4052)
    nqp_get_sc_object $P4053, "1304459375.825", 1
    get_how $P4054, $P4053
    nqp_get_sc_object $P4055, "1304459375.825", 1
    .const 'Sub' $P4056 = "27_1304459385.051" 
    $P4054."add_method"($P4055, "!PREFIX__postcircumfix", $P4056)
    nqp_get_sc_object $P4057, "1304459375.825", 1
    get_how $P4058, $P4057
    nqp_get_sc_object $P4059, "1304459375.825", 1
    .const 'Sub' $P4060 = "28_1304459385.051" 
    $P4058."add_method"($P4059, "term:sym<circumfix>", $P4060)
    nqp_get_sc_object $P4061, "1304459375.825", 1
    get_how $P4062, $P4061
    nqp_get_sc_object $P4063, "1304459375.825", 1
    .const 'Sub' $P4064 = "29_1304459385.051" 
    $P4062."add_method"($P4063, "!PREFIX__term:sym<circumfix>", $P4064)
    nqp_get_sc_object $P4065, "1304459375.825", 1
    get_how $P4066, $P4065
    nqp_get_sc_object $P4067, "1304459375.825", 1
    .const 'Sub' $P4068 = "30_1304459385.051" 
    $P4066."add_method"($P4067, "infixish", $P4068)
    nqp_get_sc_object $P4069, "1304459375.825", 1
    get_how $P4070, $P4069
    nqp_get_sc_object $P4071, "1304459375.825", 1
    .const 'Sub' $P4072 = "31_1304459385.051" 
    $P4070."add_method"($P4071, "!PREFIX__infixish", $P4072)
    nqp_get_sc_object $P4073, "1304459375.825", 1
    get_how $P4074, $P4073
    nqp_get_sc_object $P4075, "1304459375.825", 1
    .const 'Sub' $P4076 = "32_1304459385.051" 
    $P4074."add_method"($P4075, "prefixish", $P4076)
    nqp_get_sc_object $P4077, "1304459375.825", 1
    get_how $P4078, $P4077
    nqp_get_sc_object $P4079, "1304459375.825", 1
    .const 'Sub' $P4080 = "33_1304459385.051" 
    $P4078."add_method"($P4079, "!PREFIX__prefixish", $P4080)
    nqp_get_sc_object $P4081, "1304459375.825", 1
    get_how $P4082, $P4081
    nqp_get_sc_object $P4083, "1304459375.825", 1
    .const 'Sub' $P4084 = "34_1304459385.051" 
    $P4082."add_method"($P4083, "postfixish", $P4084)
    nqp_get_sc_object $P4085, "1304459375.825", 1
    get_how $P4086, $P4085
    nqp_get_sc_object $P4087, "1304459375.825", 1
    .const 'Sub' $P4088 = "35_1304459385.051" 
    $P4086."add_method"($P4087, "!PREFIX__postfixish", $P4088)
    nqp_get_sc_object $P4089, "1304459375.825", 1
    get_how $P4090, $P4089
    nqp_get_sc_object $P4091, "1304459375.825", 1
    .const 'Sub' $P4092 = "36_1304459385.051" 
    $P4090."add_method"($P4091, "nullterm", $P4092)
    nqp_get_sc_object $P4093, "1304459375.825", 1
    get_how $P4094, $P4093
    nqp_get_sc_object $P4095, "1304459375.825", 1
    .const 'Sub' $P4096 = "37_1304459385.051" 
    $P4094."add_method"($P4095, "!PREFIX__nullterm", $P4096)
    nqp_get_sc_object $P4097, "1304459375.825", 1
    get_how $P4098, $P4097
    nqp_get_sc_object $P4099, "1304459375.825", 1
    .const 'Sub' $P4100 = "38_1304459385.051" 
    $P4098."add_method"($P4099, "nullterm_alt", $P4100)
    nqp_get_sc_object $P4101, "1304459375.825", 1
    get_how $P4102, $P4101
    nqp_get_sc_object $P4103, "1304459375.825", 1
    .const 'Sub' $P4104 = "39_1304459385.051" 
    $P4102."add_method"($P4103, "!PREFIX__nullterm_alt", $P4104)
    nqp_get_sc_object $P4105, "1304459375.825", 1
    get_how $P4106, $P4105
    nqp_get_sc_object $P4107, "1304459375.825", 1
    .const 'Sub' $P4108 = "40_1304459385.051" 
    $P4106."add_method"($P4107, "nulltermish", $P4108)
    nqp_get_sc_object $P4109, "1304459375.825", 1
    get_how $P4110, $P4109
    nqp_get_sc_object $P4111, "1304459375.825", 1
    .const 'Sub' $P4112 = "41_1304459385.051" 
    $P4110."add_method"($P4111, "quote_delimited", $P4112)
    nqp_get_sc_object $P4113, "1304459375.825", 1
    get_how $P4114, $P4113
    nqp_get_sc_object $P4115, "1304459375.825", 1
    .const 'Sub' $P4116 = "42_1304459385.051" 
    $P4114."add_method"($P4115, "!PREFIX__quote_delimited", $P4116)
    nqp_get_sc_object $P4117, "1304459375.825", 1
    get_how $P4118, $P4117
    nqp_get_sc_object $P4119, "1304459375.825", 1
    .const 'Sub' $P4120 = "43_1304459385.051" 
    $P4118."add_method"($P4119, "quote_atom", $P4120)
    nqp_get_sc_object $P4121, "1304459375.825", 1
    get_how $P4122, $P4121
    nqp_get_sc_object $P4123, "1304459375.825", 1
    .const 'Sub' $P4124 = "44_1304459385.051" 
    $P4122."add_method"($P4123, "!PREFIX__quote_atom", $P4124)
    nqp_get_sc_object $P4125, "1304459375.825", 1
    get_how $P4126, $P4125
    nqp_get_sc_object $P4127, "1304459375.825", 1
    .const 'Sub' $P4128 = "45_1304459385.051" 
    $P4126."add_method"($P4127, "decint", $P4128)
    nqp_get_sc_object $P4129, "1304459375.825", 1
    get_how $P4130, $P4129
    nqp_get_sc_object $P4131, "1304459375.825", 1
    .const 'Sub' $P4132 = "46_1304459385.051" 
    $P4130."add_method"($P4131, "!PREFIX__decint", $P4132)
    nqp_get_sc_object $P4133, "1304459375.825", 1
    get_how $P4134, $P4133
    nqp_get_sc_object $P4135, "1304459375.825", 1
    .const 'Sub' $P4136 = "47_1304459385.051" 
    $P4134."add_method"($P4135, "decints", $P4136)
    nqp_get_sc_object $P4137, "1304459375.825", 1
    get_how $P4138, $P4137
    nqp_get_sc_object $P4139, "1304459375.825", 1
    .const 'Sub' $P4140 = "48_1304459385.051" 
    $P4138."add_method"($P4139, "!PREFIX__decints", $P4140)
    nqp_get_sc_object $P4141, "1304459375.825", 1
    get_how $P4142, $P4141
    nqp_get_sc_object $P4143, "1304459375.825", 1
    .const 'Sub' $P4144 = "49_1304459385.051" 
    $P4142."add_method"($P4143, "hexint", $P4144)
    nqp_get_sc_object $P4145, "1304459375.825", 1
    get_how $P4146, $P4145
    nqp_get_sc_object $P4147, "1304459375.825", 1
    .const 'Sub' $P4148 = "50_1304459385.051" 
    $P4146."add_method"($P4147, "!PREFIX__hexint", $P4148)
    nqp_get_sc_object $P4149, "1304459375.825", 1
    get_how $P4150, $P4149
    nqp_get_sc_object $P4151, "1304459375.825", 1
    .const 'Sub' $P4152 = "51_1304459385.051" 
    $P4150."add_method"($P4151, "hexints", $P4152)
    nqp_get_sc_object $P4153, "1304459375.825", 1
    get_how $P4154, $P4153
    nqp_get_sc_object $P4155, "1304459375.825", 1
    .const 'Sub' $P4156 = "52_1304459385.051" 
    $P4154."add_method"($P4155, "!PREFIX__hexints", $P4156)
    nqp_get_sc_object $P4157, "1304459375.825", 1
    get_how $P4158, $P4157
    nqp_get_sc_object $P4159, "1304459375.825", 1
    .const 'Sub' $P4160 = "53_1304459385.051" 
    $P4158."add_method"($P4159, "octint", $P4160)
    nqp_get_sc_object $P4161, "1304459375.825", 1
    get_how $P4162, $P4161
    nqp_get_sc_object $P4163, "1304459375.825", 1
    .const 'Sub' $P4164 = "54_1304459385.051" 
    $P4162."add_method"($P4163, "!PREFIX__octint", $P4164)
    nqp_get_sc_object $P4165, "1304459375.825", 1
    get_how $P4166, $P4165
    nqp_get_sc_object $P4167, "1304459375.825", 1
    .const 'Sub' $P4168 = "55_1304459385.051" 
    $P4166."add_method"($P4167, "octints", $P4168)
    nqp_get_sc_object $P4169, "1304459375.825", 1
    get_how $P4170, $P4169
    nqp_get_sc_object $P4171, "1304459375.825", 1
    .const 'Sub' $P4172 = "56_1304459385.051" 
    $P4170."add_method"($P4171, "!PREFIX__octints", $P4172)
    nqp_get_sc_object $P4173, "1304459375.825", 1
    get_how $P4174, $P4173
    nqp_get_sc_object $P4175, "1304459375.825", 1
    .const 'Sub' $P4176 = "57_1304459385.051" 
    $P4174."add_method"($P4175, "binint", $P4176)
    nqp_get_sc_object $P4177, "1304459375.825", 1
    get_how $P4178, $P4177
    nqp_get_sc_object $P4179, "1304459375.825", 1
    .const 'Sub' $P4180 = "58_1304459385.051" 
    $P4178."add_method"($P4179, "!PREFIX__binint", $P4180)
    nqp_get_sc_object $P4181, "1304459375.825", 1
    get_how $P4182, $P4181
    nqp_get_sc_object $P4183, "1304459375.825", 1
    .const 'Sub' $P4184 = "59_1304459385.051" 
    $P4182."add_method"($P4183, "binints", $P4184)
    nqp_get_sc_object $P4185, "1304459375.825", 1
    get_how $P4186, $P4185
    nqp_get_sc_object $P4187, "1304459375.825", 1
    .const 'Sub' $P4188 = "60_1304459385.051" 
    $P4186."add_method"($P4187, "!PREFIX__binints", $P4188)
    nqp_get_sc_object $P4189, "1304459375.825", 1
    get_how $P4190, $P4189
    nqp_get_sc_object $P4191, "1304459375.825", 1
    .const 'Sub' $P4192 = "61_1304459385.051" 
    $P4190."add_method"($P4191, "integer", $P4192)
    nqp_get_sc_object $P4193, "1304459375.825", 1
    get_how $P4194, $P4193
    nqp_get_sc_object $P4195, "1304459375.825", 1
    .const 'Sub' $P4196 = "62_1304459385.051" 
    $P4194."add_method"($P4195, "!PREFIX__integer", $P4196)
    nqp_get_sc_object $P4197, "1304459375.825", 1
    get_how $P4198, $P4197
    nqp_get_sc_object $P4199, "1304459375.825", 1
    .const 'Sub' $P4200 = "63_1304459385.051" 
    $P4198."add_method"($P4199, "dec_number", $P4200)
    nqp_get_sc_object $P4201, "1304459375.825", 1
    get_how $P4202, $P4201
    nqp_get_sc_object $P4203, "1304459375.825", 1
    .const 'Sub' $P4204 = "64_1304459385.051" 
    $P4202."add_method"($P4203, "!PREFIX__dec_number", $P4204)
    nqp_get_sc_object $P4205, "1304459375.825", 1
    get_how $P4206, $P4205
    nqp_get_sc_object $P4207, "1304459375.825", 1
    .const 'Sub' $P4208 = "65_1304459385.051" 
    $P4206."add_method"($P4207, "escale", $P4208)
    nqp_get_sc_object $P4209, "1304459375.825", 1
    get_how $P4210, $P4209
    nqp_get_sc_object $P4211, "1304459375.825", 1
    .const 'Sub' $P4212 = "66_1304459385.051" 
    $P4210."add_method"($P4211, "!PREFIX__escale", $P4212)
    nqp_get_sc_object $P4213, "1304459375.825", 1
    get_how $P4214, $P4213
    nqp_get_sc_object $P4215, "1304459375.825", 1
    .const 'Sub' $P4216 = "67_1304459385.051" 
    $P4214."add_method"($P4215, "quote_escape", $P4216)
    nqp_get_sc_object $P4217, "1304459375.825", 1
    get_how $P4218, $P4217
    nqp_get_sc_object $P4219, "1304459375.825", 1
    .const 'Sub' $P4220 = "68_1304459385.051" 
    $P4218."add_method"($P4219, "!PREFIX__quote_escape", $P4220)
    nqp_get_sc_object $P4221, "1304459375.825", 1
    get_how $P4222, $P4221
    nqp_get_sc_object $P4223, "1304459375.825", 1
    .const 'Sub' $P4224 = "69_1304459385.051" 
    $P4222."add_method"($P4223, "quote_escape:sym<backslash>", $P4224)
    nqp_get_sc_object $P4225, "1304459375.825", 1
    get_how $P4226, $P4225
    nqp_get_sc_object $P4227, "1304459375.825", 1
    .const 'Sub' $P4228 = "70_1304459385.051" 
    $P4226."add_method"($P4227, "!PREFIX__quote_escape:sym<backslash>", $P4228)
    nqp_get_sc_object $P4229, "1304459375.825", 1
    get_how $P4230, $P4229
    nqp_get_sc_object $P4231, "1304459375.825", 1
    .const 'Sub' $P4232 = "71_1304459385.051" 
    $P4230."add_method"($P4231, "quote_escape:sym<stopper>", $P4232)
    nqp_get_sc_object $P4233, "1304459375.825", 1
    get_how $P4234, $P4233
    nqp_get_sc_object $P4235, "1304459375.825", 1
    .const 'Sub' $P4236 = "72_1304459385.051" 
    $P4234."add_method"($P4235, "!PREFIX__quote_escape:sym<stopper>", $P4236)
    nqp_get_sc_object $P4237, "1304459375.825", 1
    get_how $P4238, $P4237
    nqp_get_sc_object $P4239, "1304459375.825", 1
    .const 'Sub' $P4240 = "73_1304459385.051" 
    $P4238."add_method"($P4239, "quote_escape:sym<bs>", $P4240)
    nqp_get_sc_object $P4241, "1304459375.825", 1
    get_how $P4242, $P4241
    nqp_get_sc_object $P4243, "1304459375.825", 1
    .const 'Sub' $P4244 = "74_1304459385.051" 
    $P4242."add_method"($P4243, "!PREFIX__quote_escape:sym<bs>", $P4244)
    nqp_get_sc_object $P4245, "1304459375.825", 1
    get_how $P4246, $P4245
    nqp_get_sc_object $P4247, "1304459375.825", 1
    .const 'Sub' $P4248 = "75_1304459385.051" 
    $P4246."add_method"($P4247, "quote_escape:sym<nl>", $P4248)
    nqp_get_sc_object $P4249, "1304459375.825", 1
    get_how $P4250, $P4249
    nqp_get_sc_object $P4251, "1304459375.825", 1
    .const 'Sub' $P4252 = "76_1304459385.051" 
    $P4250."add_method"($P4251, "!PREFIX__quote_escape:sym<nl>", $P4252)
    nqp_get_sc_object $P4253, "1304459375.825", 1
    get_how $P4254, $P4253
    nqp_get_sc_object $P4255, "1304459375.825", 1
    .const 'Sub' $P4256 = "77_1304459385.051" 
    $P4254."add_method"($P4255, "quote_escape:sym<cr>", $P4256)
    nqp_get_sc_object $P4257, "1304459375.825", 1
    get_how $P4258, $P4257
    nqp_get_sc_object $P4259, "1304459375.825", 1
    .const 'Sub' $P4260 = "78_1304459385.051" 
    $P4258."add_method"($P4259, "!PREFIX__quote_escape:sym<cr>", $P4260)
    nqp_get_sc_object $P4261, "1304459375.825", 1
    get_how $P4262, $P4261
    nqp_get_sc_object $P4263, "1304459375.825", 1
    .const 'Sub' $P4264 = "79_1304459385.051" 
    $P4262."add_method"($P4263, "quote_escape:sym<tab>", $P4264)
    nqp_get_sc_object $P4265, "1304459375.825", 1
    get_how $P4266, $P4265
    nqp_get_sc_object $P4267, "1304459375.825", 1
    .const 'Sub' $P4268 = "80_1304459385.051" 
    $P4266."add_method"($P4267, "!PREFIX__quote_escape:sym<tab>", $P4268)
    nqp_get_sc_object $P4269, "1304459375.825", 1
    get_how $P4270, $P4269
    nqp_get_sc_object $P4271, "1304459375.825", 1
    .const 'Sub' $P4272 = "81_1304459385.051" 
    $P4270."add_method"($P4271, "quote_escape:sym<ff>", $P4272)
    nqp_get_sc_object $P4273, "1304459375.825", 1
    get_how $P4274, $P4273
    nqp_get_sc_object $P4275, "1304459375.825", 1
    .const 'Sub' $P4276 = "82_1304459385.051" 
    $P4274."add_method"($P4275, "!PREFIX__quote_escape:sym<ff>", $P4276)
    nqp_get_sc_object $P4277, "1304459375.825", 1
    get_how $P4278, $P4277
    nqp_get_sc_object $P4279, "1304459375.825", 1
    .const 'Sub' $P4280 = "83_1304459385.051" 
    $P4278."add_method"($P4279, "quote_escape:sym<esc>", $P4280)
    nqp_get_sc_object $P4281, "1304459375.825", 1
    get_how $P4282, $P4281
    nqp_get_sc_object $P4283, "1304459375.825", 1
    .const 'Sub' $P4284 = "84_1304459385.051" 
    $P4282."add_method"($P4283, "!PREFIX__quote_escape:sym<esc>", $P4284)
    nqp_get_sc_object $P4285, "1304459375.825", 1
    get_how $P4286, $P4285
    nqp_get_sc_object $P4287, "1304459375.825", 1
    .const 'Sub' $P4288 = "85_1304459385.051" 
    $P4286."add_method"($P4287, "quote_escape:sym<hex>", $P4288)
    nqp_get_sc_object $P4289, "1304459375.825", 1
    get_how $P4290, $P4289
    nqp_get_sc_object $P4291, "1304459375.825", 1
    .const 'Sub' $P4292 = "86_1304459385.051" 
    $P4290."add_method"($P4291, "!PREFIX__quote_escape:sym<hex>", $P4292)
    nqp_get_sc_object $P4293, "1304459375.825", 1
    get_how $P4294, $P4293
    nqp_get_sc_object $P4295, "1304459375.825", 1
    .const 'Sub' $P4296 = "87_1304459385.051" 
    $P4294."add_method"($P4295, "quote_escape:sym<oct>", $P4296)
    nqp_get_sc_object $P4297, "1304459375.825", 1
    get_how $P4298, $P4297
    nqp_get_sc_object $P4299, "1304459375.825", 1
    .const 'Sub' $P4300 = "88_1304459385.051" 
    $P4298."add_method"($P4299, "!PREFIX__quote_escape:sym<oct>", $P4300)
    nqp_get_sc_object $P4301, "1304459375.825", 1
    get_how $P4302, $P4301
    nqp_get_sc_object $P4303, "1304459375.825", 1
    .const 'Sub' $P4304 = "89_1304459385.051" 
    $P4302."add_method"($P4303, "quote_escape:sym<chr>", $P4304)
    nqp_get_sc_object $P4305, "1304459375.825", 1
    get_how $P4306, $P4305
    nqp_get_sc_object $P4307, "1304459375.825", 1
    .const 'Sub' $P4308 = "90_1304459385.051" 
    $P4306."add_method"($P4307, "!PREFIX__quote_escape:sym<chr>", $P4308)
    nqp_get_sc_object $P4309, "1304459375.825", 1
    get_how $P4310, $P4309
    nqp_get_sc_object $P4311, "1304459375.825", 1
    .const 'Sub' $P4312 = "91_1304459385.051" 
    $P4310."add_method"($P4311, "quote_escape:sym<0>", $P4312)
    nqp_get_sc_object $P4313, "1304459375.825", 1
    get_how $P4314, $P4313
    nqp_get_sc_object $P4315, "1304459375.825", 1
    .const 'Sub' $P4316 = "92_1304459385.051" 
    $P4314."add_method"($P4315, "!PREFIX__quote_escape:sym<0>", $P4316)
    nqp_get_sc_object $P4317, "1304459375.825", 1
    get_how $P4318, $P4317
    nqp_get_sc_object $P4319, "1304459375.825", 1
    .const 'Sub' $P4320 = "93_1304459385.051" 
    $P4318."add_method"($P4319, "quote_escape:sym<misc>", $P4320)
    nqp_get_sc_object $P4321, "1304459375.825", 1
    get_how $P4322, $P4321
    nqp_get_sc_object $P4323, "1304459375.825", 1
    .const 'Sub' $P4324 = "97_1304459385.051" 
    $P4322."add_method"($P4323, "!PREFIX__quote_escape:sym<misc>", $P4324)
    nqp_get_sc_object $P4325, "1304459375.825", 1
    get_how $P4326, $P4325
    nqp_get_sc_object $P4327, "1304459375.825", 1
    .const 'Sub' $P4328 = "98_1304459385.051" 
    $P4326."add_method"($P4327, "charname", $P4328)
    nqp_get_sc_object $P4329, "1304459375.825", 1
    get_how $P4330, $P4329
    nqp_get_sc_object $P4331, "1304459375.825", 1
    .const 'Sub' $P4332 = "100_1304459385.051" 
    $P4330."add_method"($P4331, "!PREFIX__charname", $P4332)
    nqp_get_sc_object $P4333, "1304459375.825", 1
    get_how $P4334, $P4333
    nqp_get_sc_object $P4335, "1304459375.825", 1
    .const 'Sub' $P4336 = "101_1304459385.051" 
    $P4334."add_method"($P4335, "charnames", $P4336)
    nqp_get_sc_object $P4337, "1304459375.825", 1
    get_how $P4338, $P4337
    nqp_get_sc_object $P4339, "1304459375.825", 1
    .const 'Sub' $P4340 = "102_1304459385.051" 
    $P4338."add_method"($P4339, "!PREFIX__charnames", $P4340)
    nqp_get_sc_object $P4341, "1304459375.825", 1
    get_how $P4342, $P4341
    nqp_get_sc_object $P4343, "1304459375.825", 1
    .const 'Sub' $P4344 = "103_1304459385.051" 
    $P4342."add_method"($P4343, "charspec", $P4344)
    nqp_get_sc_object $P4345, "1304459375.825", 1
    get_how $P4346, $P4345
    nqp_get_sc_object $P4347, "1304459375.825", 1
    .const 'Sub' $P4348 = "104_1304459385.051" 
    $P4346."add_method"($P4347, "!PREFIX__charspec", $P4348)
    nqp_get_sc_object $P4349, "1304459375.825", 1
    get_how $P4350, $P4349
    nqp_get_sc_object $P4351, "1304459375.825", 1
    .const 'Sub' $P4352 = "105_1304459385.051" 
    $P4350."add_method"($P4351, "O", $P4352)
    nqp_get_sc_object $P4353, "1304459375.825", 1
    get_how $P4354, $P4353
    nqp_get_sc_object $P4355, "1304459375.825", 1
    .const 'Sub' $P4356 = "106_1304459385.051" 
    $P4354."add_method"($P4355, "panic", $P4356)
    nqp_get_sc_object $P4357, "1304459375.825", 1
    get_how $P4358, $P4357
    nqp_get_sc_object $P4359, "1304459375.825", 1
    .const 'Sub' $P4360 = "107_1304459385.051" 
    $P4358."add_method"($P4359, "peek_delimiters", $P4360)
    nqp_get_sc_object $P4361, "1304459375.825", 1
    get_how $P4362, $P4361
    nqp_get_sc_object $P4363, "1304459375.825", 1
    .const 'Sub' $P4364 = "108_1304459385.051" 
    $P4362."add_method"($P4363, "quote_EXPR", $P4364)
    nqp_get_sc_object $P4365, "1304459375.825", 1
    get_how $P4366, $P4365
    nqp_get_sc_object $P4367, "1304459375.825", 1
    .const 'Sub' $P4368 = "109_1304459385.051" 
    $P4366."add_method"($P4367, "quotemod_check", $P4368)
    .const 'Sub' $P4369 = "109_1304459385.051" 
    nqp_get_sc_object $P4370, "1304459375.825", 1
    get_who $P4371, $P4370
    set $P4371["quotemod_check"], $P4369
    nqp_get_sc_object $P4372, "1304459375.825", 1
    get_how $P4373, $P4372
    nqp_get_sc_object $P4374, "1304459375.825", 1
    .const 'Sub' $P4375 = "110_1304459385.051" 
    $P4373."add_method"($P4374, "starter", $P4375)
    nqp_get_sc_object $P4376, "1304459375.825", 1
    get_how $P4377, $P4376
    nqp_get_sc_object $P4378, "1304459375.825", 1
    .const 'Sub' $P4379 = "111_1304459385.051" 
    $P4377."add_method"($P4378, "stopper", $P4379)
    nqp_get_sc_object $P4380, "1304459375.825", 1
    get_how $P4381, $P4380
    nqp_get_sc_object $P4382, "1304459375.825", 1
    .const 'Sub' $P4383 = "112_1304459385.051" 
    $P4381."add_method"($P4382, "split_words", $P4383)
    .const 'Sub' $P4384 = "112_1304459385.051" 
    nqp_get_sc_object $P4385, "1304459375.825", 1
    get_who $P4386, $P4385
    set $P4386["split_words"], $P4384
    nqp_get_sc_object $P4387, "1304459375.825", 1
    get_how $P4388, $P4387
    nqp_get_sc_object $P4389, "1304459375.825", 1
    .const 'Sub' $P4390 = "113_1304459385.051" 
    $P4388."add_method"($P4389, "EXPR", $P4390)
    nqp_get_sc_object $P4391, "1304459375.825", 1
    get_how $P4392, $P4391
    nqp_get_sc_object $P4393, "1304459375.825", 1
    .const 'Sub' $P4394 = "114_1304459385.051" 
    $P4392."add_method"($P4393, "EXPR_reduce", $P4394)
    nqp_get_sc_object $P4395, "1304459375.825", 1
    get_how $P4396, $P4395
    nqp_get_sc_object $P4397, "1304459375.825", 1
    .const 'Sub' $P4398 = "115_1304459385.051" 
    $P4396."add_method"($P4397, "ternary", $P4398)
    nqp_get_sc_object $P4399, "1304459375.825", 1
    get_how $P4400, $P4399
    nqp_get_sc_object $P4401, "1304459375.825", 1
    .const 'Sub' $P4402 = "116_1304459385.051" 
    $P4400."add_method"($P4401, "MARKER", $P4402)
    nqp_get_sc_object $P4403, "1304459375.825", 1
    get_how $P4404, $P4403
    nqp_get_sc_object $P4405, "1304459375.825", 1
    .const 'Sub' $P4406 = "117_1304459385.051" 
    $P4404."add_method"($P4405, "MARKED", $P4406)
    nqp_get_sc_object $P4407, "1304459375.825", 1
    get_how $P4408, $P4407
    nqp_get_sc_object $P4409, "1304459375.825", 1
    .const 'Sub' $P4410 = "118_1304459385.051" 
    $P4408."add_method"($P4409, "LANG", $P4410)
    .const 'Sub' $P4411 = "11_1304459385.051" 
    $P4412 = $P4411."get_lexinfo"()
    nqp_get_sc_object $P4413, "1304459375.825", 1
    $P4412."set_static_lexpad_value"("$?PACKAGE", $P4413)
    .const 'Sub' $P4414 = "11_1304459385.051" 
    $P4415 = $P4414."get_lexinfo"()
    $P4415."finish_static_lexpad"()
    .const 'Sub' $P4416 = "11_1304459385.051" 
    $P4417 = $P4416."get_lexinfo"()
    nqp_get_sc_object $P4418, "1304459375.825", 1
    $P4417."set_static_lexpad_value"("$?CLASS", $P4418)
    .const 'Sub' $P4419 = "11_1304459385.051" 
    $P4420 = $P4419."get_lexinfo"()
    $P4420."finish_static_lexpad"()
    nqp_get_sc_object $P4421, "1304459375.825", 1
    get_how $P4422, $P4421
    nqp_get_sc_object $P4423, "1304459375.825", 1
    nqp_get_sc_object $P4424, "__REGEX_CORE_SC__", 0
    $P4422."set_default_parent"($P4423, $P4424)
    nqp_get_sc_object $P4425, "1304459375.825", 1
    get_how $P4426, $P4425
    nqp_get_sc_object $P4427, "1304459375.825", 1
    $P4426."compose"($P4427)
    nqp_get_sc_object $P4428, "1304459368.206", 41
    $P4429 = $P4428."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P4429, cur_sc
    nqp_set_sc_object "1304459375.825", 105, $P4429
    nqp_get_sc_object $P4430, "1304459375.825", 105
    nqp_get_sc_object $P4431, "1304459375.825", 0
    nqp_get_package_through_who $P4432, $P4431, "HLL"
    get_who $P4433, $P4432
    set $P4433["Actions"], $P4430
    .const 'Sub' $P4434 = "120_1304459385.051" 
    nqp_get_sc_object $P4435, "1304459375.825", 105
    get_who $P4436, $P4435
    set $P4436["string_to_int"], $P4434
    .const 'Sub' $P4437 = "122_1304459385.051" 
    nqp_get_sc_object $P4438, "1304459375.825", 105
    get_who $P4439, $P4438
    set $P4439["ints_to_string"], $P4437
    nqp_get_sc_object $P4440, "1304459375.825", 105
    get_how $P4441, $P4440
    nqp_get_sc_object $P4442, "1304459375.825", 105
    .const 'Sub' $P4443 = "125_1304459385.051" 
    $P4441."add_method"($P4442, "CTXSAVE", $P4443)
    nqp_get_sc_object $P4444, "1304459375.825", 105
    get_how $P4445, $P4444
    nqp_get_sc_object $P4446, "1304459375.825", 105
    .const 'Sub' $P4447 = "126_1304459385.051" 
    $P4445."add_method"($P4446, "SET_BLOCK_OUTER_CTX", $P4447)
    nqp_get_sc_object $P4448, "1304459375.825", 105
    get_how $P4449, $P4448
    nqp_get_sc_object $P4450, "1304459375.825", 105
    .const 'Sub' $P4451 = "129_1304459385.051" 
    $P4449."add_method"($P4450, "EXPR", $P4451)
    nqp_get_sc_object $P4452, "1304459375.825", 105
    get_how $P4453, $P4452
    nqp_get_sc_object $P4454, "1304459375.825", 105
    .const 'Sub' $P4455 = "132_1304459385.051" 
    $P4453."add_method"($P4454, "term:sym<circumfix>", $P4455)
    nqp_get_sc_object $P4456, "1304459375.825", 105
    get_how $P4457, $P4456
    nqp_get_sc_object $P4458, "1304459375.825", 105
    .const 'Sub' $P4459 = "133_1304459385.051" 
    $P4457."add_method"($P4458, "termish", $P4459)
    nqp_get_sc_object $P4460, "1304459375.825", 105
    get_how $P4461, $P4460
    nqp_get_sc_object $P4462, "1304459375.825", 105
    .const 'Sub' $P4463 = "134_1304459385.051" 
    $P4461."add_method"($P4462, "nullterm", $P4463)
    nqp_get_sc_object $P4464, "1304459375.825", 105
    get_how $P4465, $P4464
    nqp_get_sc_object $P4466, "1304459375.825", 105
    .const 'Sub' $P4467 = "135_1304459385.051" 
    $P4465."add_method"($P4466, "nullterm_alt", $P4467)
    nqp_get_sc_object $P4468, "1304459375.825", 105
    get_how $P4469, $P4468
    nqp_get_sc_object $P4470, "1304459375.825", 105
    .const 'Sub' $P4471 = "136_1304459385.051" 
    $P4469."add_method"($P4470, "integer", $P4471)
    nqp_get_sc_object $P4472, "1304459375.825", 105
    get_how $P4473, $P4472
    nqp_get_sc_object $P4474, "1304459375.825", 105
    .const 'Sub' $P4475 = "137_1304459385.051" 
    $P4473."add_method"($P4474, "dec_number", $P4475)
    nqp_get_sc_object $P4476, "1304459375.825", 105
    get_how $P4477, $P4476
    nqp_get_sc_object $P4478, "1304459375.825", 105
    .const 'Sub' $P4479 = "138_1304459385.051" 
    $P4477."add_method"($P4478, "decint", $P4479)
    nqp_get_sc_object $P4480, "1304459375.825", 105
    get_how $P4481, $P4480
    nqp_get_sc_object $P4482, "1304459375.825", 105
    .const 'Sub' $P4483 = "139_1304459385.051" 
    $P4481."add_method"($P4482, "hexint", $P4483)
    nqp_get_sc_object $P4484, "1304459375.825", 105
    get_how $P4485, $P4484
    nqp_get_sc_object $P4486, "1304459375.825", 105
    .const 'Sub' $P4487 = "140_1304459385.051" 
    $P4485."add_method"($P4486, "octint", $P4487)
    nqp_get_sc_object $P4488, "1304459375.825", 105
    get_how $P4489, $P4488
    nqp_get_sc_object $P4490, "1304459375.825", 105
    .const 'Sub' $P4491 = "141_1304459385.051" 
    $P4489."add_method"($P4490, "binint", $P4491)
    nqp_get_sc_object $P4492, "1304459375.825", 105
    get_how $P4493, $P4492
    nqp_get_sc_object $P4494, "1304459375.825", 105
    .const 'Sub' $P4495 = "142_1304459385.051" 
    $P4493."add_method"($P4494, "quote_EXPR", $P4495)
    nqp_get_sc_object $P4496, "1304459375.825", 105
    get_how $P4497, $P4496
    nqp_get_sc_object $P4498, "1304459375.825", 105
    .const 'Sub' $P4499 = "145_1304459385.051" 
    $P4497."add_method"($P4498, "quote_delimited", $P4499)
    nqp_get_sc_object $P4500, "1304459375.825", 105
    get_how $P4501, $P4500
    nqp_get_sc_object $P4502, "1304459375.825", 105
    .const 'Sub' $P4503 = "147_1304459385.051" 
    $P4501."add_method"($P4502, "quote_atom", $P4503)
    nqp_get_sc_object $P4504, "1304459375.825", 105
    get_how $P4505, $P4504
    nqp_get_sc_object $P4506, "1304459375.825", 105
    .const 'Sub' $P4507 = "148_1304459385.051" 
    $P4505."add_method"($P4506, "quote_escape:sym<backslash>", $P4507)
    nqp_get_sc_object $P4508, "1304459375.825", 105
    get_how $P4509, $P4508
    nqp_get_sc_object $P4510, "1304459375.825", 105
    .const 'Sub' $P4511 = "149_1304459385.051" 
    $P4509."add_method"($P4510, "quote_escape:sym<stopper>", $P4511)
    nqp_get_sc_object $P4512, "1304459375.825", 105
    get_how $P4513, $P4512
    nqp_get_sc_object $P4514, "1304459375.825", 105
    .const 'Sub' $P4515 = "150_1304459385.051" 
    $P4513."add_method"($P4514, "quote_escape:sym<bs>", $P4515)
    nqp_get_sc_object $P4516, "1304459375.825", 105
    get_how $P4517, $P4516
    nqp_get_sc_object $P4518, "1304459375.825", 105
    .const 'Sub' $P4519 = "151_1304459385.051" 
    $P4517."add_method"($P4518, "quote_escape:sym<nl>", $P4519)
    nqp_get_sc_object $P4520, "1304459375.825", 105
    get_how $P4521, $P4520
    nqp_get_sc_object $P4522, "1304459375.825", 105
    .const 'Sub' $P4523 = "152_1304459385.051" 
    $P4521."add_method"($P4522, "quote_escape:sym<cr>", $P4523)
    nqp_get_sc_object $P4524, "1304459375.825", 105
    get_how $P4525, $P4524
    nqp_get_sc_object $P4526, "1304459375.825", 105
    .const 'Sub' $P4527 = "153_1304459385.051" 
    $P4525."add_method"($P4526, "quote_escape:sym<tab>", $P4527)
    nqp_get_sc_object $P4528, "1304459375.825", 105
    get_how $P4529, $P4528
    nqp_get_sc_object $P4530, "1304459375.825", 105
    .const 'Sub' $P4531 = "154_1304459385.051" 
    $P4529."add_method"($P4530, "quote_escape:sym<ff>", $P4531)
    nqp_get_sc_object $P4532, "1304459375.825", 105
    get_how $P4533, $P4532
    nqp_get_sc_object $P4534, "1304459375.825", 105
    .const 'Sub' $P4535 = "155_1304459385.051" 
    $P4533."add_method"($P4534, "quote_escape:sym<esc>", $P4535)
    nqp_get_sc_object $P4536, "1304459375.825", 105
    get_how $P4537, $P4536
    nqp_get_sc_object $P4538, "1304459375.825", 105
    .const 'Sub' $P4539 = "156_1304459385.051" 
    $P4537."add_method"($P4538, "quote_escape:sym<hex>", $P4539)
    nqp_get_sc_object $P4540, "1304459375.825", 105
    get_how $P4541, $P4540
    nqp_get_sc_object $P4542, "1304459375.825", 105
    .const 'Sub' $P4543 = "157_1304459385.051" 
    $P4541."add_method"($P4542, "quote_escape:sym<oct>", $P4543)
    nqp_get_sc_object $P4544, "1304459375.825", 105
    get_how $P4545, $P4544
    nqp_get_sc_object $P4546, "1304459375.825", 105
    .const 'Sub' $P4547 = "158_1304459385.051" 
    $P4545."add_method"($P4546, "quote_escape:sym<chr>", $P4547)
    nqp_get_sc_object $P4548, "1304459375.825", 105
    get_how $P4549, $P4548
    nqp_get_sc_object $P4550, "1304459375.825", 105
    .const 'Sub' $P4551 = "159_1304459385.051" 
    $P4549."add_method"($P4550, "quote_escape:sym<0>", $P4551)
    nqp_get_sc_object $P4552, "1304459375.825", 105
    get_how $P4553, $P4552
    nqp_get_sc_object $P4554, "1304459375.825", 105
    .const 'Sub' $P4555 = "160_1304459385.051" 
    $P4553."add_method"($P4554, "quote_escape:sym<misc>", $P4555)
    nqp_get_sc_object $P4556, "1304459375.825", 105
    get_how $P4557, $P4556
    nqp_get_sc_object $P4558, "1304459375.825", 105
    .const 'Sub' $P4559 = "161_1304459385.051" 
    $P4557."add_method"($P4558, "charname", $P4559)
    nqp_get_sc_object $P4560, "1304459375.825", 105
    get_how $P4561, $P4560
    nqp_get_sc_object $P4562, "1304459375.825", 105
    .const 'Sub' $P4563 = "162_1304459385.051" 
    $P4561."add_method"($P4562, "charnames", $P4563)
    nqp_get_sc_object $P4564, "1304459375.825", 105
    get_how $P4565, $P4564
    nqp_get_sc_object $P4566, "1304459375.825", 105
    .const 'Sub' $P4567 = "164_1304459385.051" 
    $P4565."add_method"($P4566, "charspec", $P4567)
    .const 'Sub' $P4568 = "119_1304459385.051" 
    $P4569 = $P4568."get_lexinfo"()
    nqp_get_sc_object $P4570, "1304459375.825", 105
    $P4569."set_static_lexpad_value"("$?PACKAGE", $P4570)
    .const 'Sub' $P4571 = "119_1304459385.051" 
    $P4572 = $P4571."get_lexinfo"()
    $P4572."finish_static_lexpad"()
    .const 'Sub' $P4573 = "119_1304459385.051" 
    $P4574 = $P4573."get_lexinfo"()
    nqp_get_sc_object $P4575, "1304459375.825", 105
    $P4574."set_static_lexpad_value"("$?CLASS", $P4575)
    .const 'Sub' $P4576 = "119_1304459385.051" 
    $P4577 = $P4576."get_lexinfo"()
    $P4577."finish_static_lexpad"()
    nqp_get_sc_object $P4578, "1304459375.825", 105
    get_how $P4579, $P4578
    nqp_get_sc_object $P4580, "1304459375.825", 105
    nqp_get_sc_object $P4581, "1304459374.119", 5
    $P4579."set_default_parent"($P4580, $P4581)
    nqp_get_sc_object $P4582, "1304459375.825", 105
    get_how $P4583, $P4582
    nqp_get_sc_object $P4584, "1304459375.825", 105
    $P4583."compose"($P4584)
    nqp_get_sc_object $P4585, "1304459368.206", 41
    $P4586 = $P4585."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P4586, cur_sc
    nqp_set_sc_object "1304459375.825", 138, $P4586
    nqp_get_sc_object $P4587, "1304459375.825", 138
    nqp_get_sc_object $P4588, "1304459375.825", 0
    nqp_get_package_through_who $P4589, $P4588, "HLL"
    get_who $P4590, $P4589
    set $P4590["Compiler"], $P4587
    nqp_get_sc_object $P4591, "1304459375.825", 138
    get_how $P4592, $P4591
    nqp_get_sc_object $P4593, "1304459375.825", 138
    nqp_get_sc_object $P4594, "1304459368.206", 77
    $P4595 = $P4594."new"("@!stages" :named("name"))
    $P4592."add_attribute"($P4593, $P4595)
    nqp_get_sc_object $P4596, "1304459375.825", 138
    get_how $P4597, $P4596
    nqp_get_sc_object $P4598, "1304459375.825", 138
    nqp_get_sc_object $P4599, "1304459368.206", 77
    $P4600 = $P4599."new"("$!parsegrammar" :named("name"))
    $P4597."add_attribute"($P4598, $P4600)
    nqp_get_sc_object $P4601, "1304459375.825", 138
    get_how $P4602, $P4601
    nqp_get_sc_object $P4603, "1304459375.825", 138
    nqp_get_sc_object $P4604, "1304459368.206", 77
    $P4605 = $P4604."new"("$!parseactions" :named("name"))
    $P4602."add_attribute"($P4603, $P4605)
    nqp_get_sc_object $P4606, "1304459375.825", 138
    get_how $P4607, $P4606
    nqp_get_sc_object $P4608, "1304459375.825", 138
    nqp_get_sc_object $P4609, "1304459368.206", 77
    $P4610 = $P4609."new"("$!astgrammar" :named("name"))
    $P4607."add_attribute"($P4608, $P4610)
    nqp_get_sc_object $P4611, "1304459375.825", 138
    get_how $P4612, $P4611
    nqp_get_sc_object $P4613, "1304459375.825", 138
    nqp_get_sc_object $P4614, "1304459368.206", 77
    $P4615 = $P4614."new"("$!commandline_banner" :named("name"))
    $P4612."add_attribute"($P4613, $P4615)
    nqp_get_sc_object $P4616, "1304459375.825", 138
    get_how $P4617, $P4616
    nqp_get_sc_object $P4618, "1304459375.825", 138
    nqp_get_sc_object $P4619, "1304459368.206", 77
    $P4620 = $P4619."new"("$!commandline_prompt" :named("name"))
    $P4617."add_attribute"($P4618, $P4620)
    nqp_get_sc_object $P4621, "1304459375.825", 138
    get_how $P4622, $P4621
    nqp_get_sc_object $P4623, "1304459375.825", 138
    nqp_get_sc_object $P4624, "1304459368.206", 77
    $P4625 = $P4624."new"("@!cmdoptions" :named("name"))
    $P4622."add_attribute"($P4623, $P4625)
    nqp_get_sc_object $P4626, "1304459375.825", 138
    get_how $P4627, $P4626
    nqp_get_sc_object $P4628, "1304459375.825", 138
    nqp_get_sc_object $P4629, "1304459368.206", 77
    $P4630 = $P4629."new"("$!usage" :named("name"))
    $P4627."add_attribute"($P4628, $P4630)
    nqp_get_sc_object $P4631, "1304459375.825", 138
    get_how $P4632, $P4631
    nqp_get_sc_object $P4633, "1304459375.825", 138
    nqp_get_sc_object $P4634, "1304459368.206", 77
    $P4635 = $P4634."new"("$!version" :named("name"))
    $P4632."add_attribute"($P4633, $P4635)
    nqp_get_sc_object $P4636, "1304459375.825", 138
    get_how $P4637, $P4636
    nqp_get_sc_object $P4638, "1304459375.825", 138
    nqp_get_sc_object $P4639, "1304459368.206", 77
    $P4640 = $P4639."new"("$!compiler_progname" :named("name"))
    $P4637."add_attribute"($P4638, $P4640)
    nqp_get_sc_object $P4641, "1304459375.825", 138
    get_how $P4642, $P4641
    nqp_get_sc_object $P4643, "1304459375.825", 138
    nqp_get_sc_object $P4644, "1304459368.206", 77
    $P4645 = $P4644."new"("$!language" :named("name"))
    $P4642."add_attribute"($P4643, $P4645)
    nqp_get_sc_object $P4646, "1304459375.825", 138
    get_how $P4647, $P4646
    nqp_get_sc_object $P4648, "1304459375.825", 138
    .const 'Sub' $P4649 = "168_1304459385.051" 
    $P4647."add_method"($P4648, "new", $P4649)
    nqp_get_sc_object $P4650, "1304459375.825", 138
    get_how $P4651, $P4650
    nqp_get_sc_object $P4652, "1304459375.825", 138
    .const 'Sub' $P4653 = "169_1304459385.051" 
    $P4651."add_method"($P4652, "BUILD", $P4653)
    nqp_get_sc_object $P4654, "1304459375.825", 138
    get_how $P4655, $P4654
    nqp_get_sc_object $P4656, "1304459375.825", 138
    .const 'Sub' $P4657 = "171_1304459385.051" 
    $P4655."add_method"($P4656, "get_exports", $P4657)
    nqp_get_sc_object $P4658, "1304459375.825", 138
    get_how $P4659, $P4658
    nqp_get_sc_object $P4660, "1304459375.825", 138
    .const 'Sub' $P4661 = "174_1304459385.051" 
    $P4659."add_method"($P4660, "get_module", $P4661)
    nqp_get_sc_object $P4662, "1304459375.825", 138
    get_how $P4663, $P4662
    nqp_get_sc_object $P4664, "1304459375.825", 138
    .const 'Sub' $P4665 = "175_1304459385.051" 
    $P4663."add_method"($P4664, "language", $P4665)
    nqp_get_sc_object $P4666, "1304459375.825", 138
    get_how $P4667, $P4666
    nqp_get_sc_object $P4668, "1304459375.825", 138
    .const 'Sub' $P4669 = "176_1304459385.051" 
    $P4667."add_method"($P4668, "load_module", $P4669)
    nqp_get_sc_object $P4670, "1304459375.825", 138
    get_how $P4671, $P4670
    nqp_get_sc_object $P4672, "1304459375.825", 138
    .const 'Sub' $P4673 = "178_1304459385.051" 
    $P4671."add_method"($P4672, "import", $P4673)
    nqp_get_sc_object $P4674, "1304459375.825", 138
    get_how $P4675, $P4674
    nqp_get_sc_object $P4676, "1304459375.825", 138
    .const 'Sub' $P4677 = "183_1304459385.051" 
    $P4675."add_method"($P4676, "autoprint", $P4677)
    nqp_get_sc_object $P4678, "1304459375.825", 138
    get_how $P4679, $P4678
    nqp_get_sc_object $P4680, "1304459375.825", 138
    .const 'Sub' $P4681 = "184_1304459385.051" 
    $P4679."add_method"($P4680, "interactive", $P4681)
    nqp_get_sc_object $P4682, "1304459375.825", 138
    get_how $P4683, $P4682
    nqp_get_sc_object $P4684, "1304459375.825", 138
    .const 'Sub' $P4685 = "191_1304459385.051" 
    $P4683."add_method"($P4684, "eval", $P4685)
    nqp_get_sc_object $P4686, "1304459375.825", 138
    get_how $P4687, $P4686
    nqp_get_sc_object $P4688, "1304459375.825", 138
    .const 'Sub' $P4689 = "193_1304459385.051" 
    $P4687."add_method"($P4688, "ctxsave", $P4689)
    nqp_get_sc_object $P4690, "1304459375.825", 138
    get_how $P4691, $P4690
    nqp_get_sc_object $P4692, "1304459375.825", 138
    .const 'Sub' $P4693 = "194_1304459385.051" 
    $P4691."add_method"($P4692, "panic", $P4693)
    nqp_get_sc_object $P4694, "1304459375.825", 138
    get_how $P4695, $P4694
    nqp_get_sc_object $P4696, "1304459375.825", 138
    .const 'Sub' $P4697 = "195_1304459385.051" 
    $P4695."add_method"($P4696, "stages", $P4697)
    nqp_get_sc_object $P4698, "1304459375.825", 138
    get_how $P4699, $P4698
    nqp_get_sc_object $P4700, "1304459375.825", 138
    .const 'Sub' $P4701 = "196_1304459385.051" 
    $P4699."add_method"($P4700, "parsegrammar", $P4701)
    nqp_get_sc_object $P4702, "1304459375.825", 138
    get_how $P4703, $P4702
    nqp_get_sc_object $P4704, "1304459375.825", 138
    .const 'Sub' $P4705 = "197_1304459385.051" 
    $P4703."add_method"($P4704, "parseactions", $P4705)
    nqp_get_sc_object $P4706, "1304459375.825", 138
    get_how $P4707, $P4706
    nqp_get_sc_object $P4708, "1304459375.825", 138
    .const 'Sub' $P4709 = "198_1304459385.051" 
    $P4707."add_method"($P4708, "astgrammar", $P4709)
    nqp_get_sc_object $P4710, "1304459375.825", 138
    get_how $P4711, $P4710
    nqp_get_sc_object $P4712, "1304459375.825", 138
    .const 'Sub' $P4713 = "199_1304459385.051" 
    $P4711."add_method"($P4712, "commandline_banner", $P4713)
    nqp_get_sc_object $P4714, "1304459375.825", 138
    get_how $P4715, $P4714
    nqp_get_sc_object $P4716, "1304459375.825", 138
    .const 'Sub' $P4717 = "200_1304459385.051" 
    $P4715."add_method"($P4716, "commandline_prompt", $P4717)
    nqp_get_sc_object $P4718, "1304459375.825", 138
    get_how $P4719, $P4718
    nqp_get_sc_object $P4720, "1304459375.825", 138
    .const 'Sub' $P4721 = "201_1304459385.051" 
    $P4719."add_method"($P4720, "compiler_progname", $P4721)
    nqp_get_sc_object $P4722, "1304459375.825", 138
    get_how $P4723, $P4722
    nqp_get_sc_object $P4724, "1304459375.825", 138
    .const 'Sub' $P4725 = "202_1304459385.051" 
    $P4723."add_method"($P4724, "commandline_options", $P4725)
    nqp_get_sc_object $P4726, "1304459375.825", 138
    get_how $P4727, $P4726
    nqp_get_sc_object $P4728, "1304459375.825", 138
    .const 'Sub' $P4729 = "203_1304459385.051" 
    $P4727."add_method"($P4728, "command_line", $P4729)
    nqp_get_sc_object $P4730, "1304459375.825", 138
    get_how $P4731, $P4730
    nqp_get_sc_object $P4732, "1304459375.825", 138
    .const 'Sub' $P4733 = "205_1304459385.051" 
    $P4731."add_method"($P4732, "process_args", $P4733)
    nqp_get_sc_object $P4734, "1304459375.825", 138
    get_how $P4735, $P4734
    nqp_get_sc_object $P4736, "1304459375.825", 138
    .const 'Sub' $P4737 = "208_1304459385.051" 
    $P4735."add_method"($P4736, "evalfiles", $P4737)
    nqp_get_sc_object $P4738, "1304459375.825", 138
    get_how $P4739, $P4738
    nqp_get_sc_object $P4740, "1304459375.825", 138
    .const 'Sub' $P4741 = "212_1304459385.051" 
    $P4739."add_method"($P4740, "compile", $P4741)
    nqp_get_sc_object $P4742, "1304459375.825", 138
    get_how $P4743, $P4742
    nqp_get_sc_object $P4744, "1304459375.825", 138
    .const 'Sub' $P4745 = "214_1304459385.051" 
    $P4743."add_method"($P4744, "parse", $P4745)
    nqp_get_sc_object $P4746, "1304459375.825", 138
    get_how $P4747, $P4746
    nqp_get_sc_object $P4748, "1304459375.825", 138
    .const 'Sub' $P4749 = "215_1304459385.051" 
    $P4747."add_method"($P4748, "past", $P4749)
    nqp_get_sc_object $P4750, "1304459375.825", 138
    get_how $P4751, $P4750
    nqp_get_sc_object $P4752, "1304459375.825", 138
    .const 'Sub' $P4753 = "216_1304459385.051" 
    $P4751."add_method"($P4752, "post", $P4753)
    nqp_get_sc_object $P4754, "1304459375.825", 138
    get_how $P4755, $P4754
    nqp_get_sc_object $P4756, "1304459375.825", 138
    .const 'Sub' $P4757 = "217_1304459385.051" 
    $P4755."add_method"($P4756, "pir", $P4757)
    nqp_get_sc_object $P4758, "1304459375.825", 138
    get_how $P4759, $P4758
    nqp_get_sc_object $P4760, "1304459375.825", 138
    .const 'Sub' $P4761 = "218_1304459385.051" 
    $P4759."add_method"($P4760, "evalpmc", $P4761)
    nqp_get_sc_object $P4762, "1304459375.825", 138
    get_how $P4763, $P4762
    nqp_get_sc_object $P4764, "1304459375.825", 138
    .const 'Sub' $P4765 = "219_1304459385.051" 
    $P4763."add_method"($P4764, "dumper", $P4765)
    nqp_get_sc_object $P4766, "1304459375.825", 138
    get_how $P4767, $P4766
    nqp_get_sc_object $P4768, "1304459375.825", 138
    .const 'Sub' $P4769 = "221_1304459385.051" 
    $P4767."add_method"($P4768, "usage", $P4769)
    nqp_get_sc_object $P4770, "1304459375.825", 138
    get_how $P4771, $P4770
    nqp_get_sc_object $P4772, "1304459375.825", 138
    .const 'Sub' $P4773 = "222_1304459385.051" 
    $P4771."add_method"($P4772, "version", $P4773)
    nqp_get_sc_object $P4774, "1304459375.825", 138
    get_how $P4775, $P4774
    nqp_get_sc_object $P4776, "1304459375.825", 138
    .const 'Sub' $P4777 = "223_1304459385.051" 
    $P4775."add_method"($P4776, "removestage", $P4777)
    nqp_get_sc_object $P4778, "1304459375.825", 138
    get_how $P4779, $P4778
    nqp_get_sc_object $P4780, "1304459375.825", 138
    .const 'Sub' $P4781 = "225_1304459385.051" 
    $P4779."add_method"($P4780, "addstage", $P4781)
    nqp_get_sc_object $P4782, "1304459375.825", 138
    get_how $P4783, $P4782
    nqp_get_sc_object $P4784, "1304459375.825", 138
    .const 'Sub' $P4785 = "228_1304459385.051" 
    $P4783."add_method"($P4784, "parse_name", $P4785)
    nqp_get_sc_object $P4786, "1304459375.825", 138
    get_how $P4787, $P4786
    nqp_get_sc_object $P4788, "1304459375.825", 138
    .const 'Sub' $P4789 = "230_1304459385.051" 
    $P4787."add_method"($P4788, "lineof", $P4789)
    .const 'Sub' $P4790 = "165_1304459385.051" 
    $P4791 = $P4790."get_lexinfo"()
    nqp_get_sc_object $P4792, "1304459375.825", 138
    $P4791."set_static_lexpad_value"("$?PACKAGE", $P4792)
    .const 'Sub' $P4793 = "165_1304459385.051" 
    $P4794 = $P4793."get_lexinfo"()
    $P4794."finish_static_lexpad"()
    .const 'Sub' $P4795 = "165_1304459385.051" 
    $P4796 = $P4795."get_lexinfo"()
    nqp_get_sc_object $P4797, "1304459375.825", 138
    $P4796."set_static_lexpad_value"("$?CLASS", $P4797)
    .const 'Sub' $P4798 = "165_1304459385.051" 
    $P4799 = $P4798."get_lexinfo"()
    $P4799."finish_static_lexpad"()
    nqp_get_sc_object $P4800, "1304459375.825", 138
    get_how $P4801, $P4800
    nqp_get_sc_object $P4802, "1304459375.825", 138
    nqp_get_sc_object $P4803, "1304459374.119", 5
    $P4801."set_default_parent"($P4802, $P4803)
    nqp_get_sc_object $P4804, "1304459375.825", 138
    get_how $P4805, $P4804
    nqp_get_sc_object $P4806, "1304459375.825", 138
    $P4805."compose"($P4806)
    nqp_get_sc_object $P4807, "1304459368.206", 41
    $P4808 = $P4807."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4808, cur_sc
    nqp_set_sc_object "1304459375.825", 175, $P4808
    nqp_get_sc_object $P4809, "1304459375.825", 175
    nqp_get_sc_object $P4810, "1304459375.825", 0
    nqp_get_package_through_who $P4811, $P4810, "HLL"
    nqp_get_package_through_who $P4812, $P4811, "CommandLine"
    get_who $P4813, $P4812
    set $P4813["Result"], $P4809
    nqp_get_sc_object $P4814, "1304459375.825", 175
    get_how $P4815, $P4814
    nqp_get_sc_object $P4816, "1304459375.825", 175
    nqp_get_sc_object $P4817, "1304459368.206", 77
    $P4818 = $P4817."new"("@!arguments" :named("name"))
    $P4815."add_attribute"($P4816, $P4818)
    nqp_get_sc_object $P4819, "1304459375.825", 175
    get_how $P4820, $P4819
    nqp_get_sc_object $P4821, "1304459375.825", 175
    nqp_get_sc_object $P4822, "1304459368.206", 77
    $P4823 = $P4822."new"("%!options" :named("name"))
    $P4820."add_attribute"($P4821, $P4823)
    nqp_get_sc_object $P4824, "1304459375.825", 175
    get_how $P4825, $P4824
    nqp_get_sc_object $P4826, "1304459375.825", 175
    .const 'Sub' $P4827 = "232_1304459385.051" 
    $P4825."add_method"($P4826, "init", $P4827)
    nqp_get_sc_object $P4828, "1304459375.825", 175
    get_how $P4829, $P4828
    nqp_get_sc_object $P4830, "1304459375.825", 175
    .const 'Sub' $P4831 = "233_1304459385.051" 
    $P4829."add_method"($P4830, "arguments", $P4831)
    nqp_get_sc_object $P4832, "1304459375.825", 175
    get_how $P4833, $P4832
    nqp_get_sc_object $P4834, "1304459375.825", 175
    .const 'Sub' $P4835 = "234_1304459385.051" 
    $P4833."add_method"($P4834, "options", $P4835)
    nqp_get_sc_object $P4836, "1304459375.825", 175
    get_how $P4837, $P4836
    nqp_get_sc_object $P4838, "1304459375.825", 175
    .const 'Sub' $P4839 = "235_1304459385.051" 
    $P4837."add_method"($P4838, "add-argument", $P4839)
    nqp_get_sc_object $P4840, "1304459375.825", 175
    get_how $P4841, $P4840
    nqp_get_sc_object $P4842, "1304459375.825", 175
    .const 'Sub' $P4843 = "236_1304459385.051" 
    $P4841."add_method"($P4842, "add-option", $P4843)
    .const 'Sub' $P4844 = "231_1304459385.051" 
    $P4845 = $P4844."get_lexinfo"()
    nqp_get_sc_object $P4846, "1304459375.825", 175
    $P4845."set_static_lexpad_value"("$?PACKAGE", $P4846)
    .const 'Sub' $P4847 = "231_1304459385.051" 
    $P4848 = $P4847."get_lexinfo"()
    $P4848."finish_static_lexpad"()
    .const 'Sub' $P4849 = "231_1304459385.051" 
    $P4850 = $P4849."get_lexinfo"()
    nqp_get_sc_object $P4851, "1304459375.825", 175
    $P4850."set_static_lexpad_value"("$?CLASS", $P4851)
    .const 'Sub' $P4852 = "231_1304459385.051" 
    $P4853 = $P4852."get_lexinfo"()
    $P4853."finish_static_lexpad"()
    nqp_get_sc_object $P4854, "1304459375.825", 175
    get_how $P4855, $P4854
    nqp_get_sc_object $P4856, "1304459375.825", 175
    nqp_get_sc_object $P4857, "1304459374.119", 5
    $P4855."set_default_parent"($P4856, $P4857)
    nqp_get_sc_object $P4858, "1304459375.825", 175
    get_how $P4859, $P4858
    nqp_get_sc_object $P4860, "1304459375.825", 175
    $P4859."compose"($P4860)
    nqp_get_sc_object $P4861, "1304459368.206", 41
    $P4862 = $P4861."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4862, cur_sc
    nqp_set_sc_object "1304459375.825", 181, $P4862
    nqp_get_sc_object $P4863, "1304459375.825", 181
    nqp_get_sc_object $P4864, "1304459375.825", 0
    nqp_get_package_through_who $P4865, $P4864, "HLL"
    nqp_get_package_through_who $P4866, $P4865, "CommandLine"
    get_who $P4867, $P4866
    set $P4867["Parser"], $P4863
    nqp_get_sc_object $P4868, "1304459375.825", 181
    get_how $P4869, $P4868
    nqp_get_sc_object $P4870, "1304459375.825", 181
    nqp_get_sc_object $P4871, "1304459368.206", 77
    $P4872 = $P4871."new"("@!specs" :named("name"))
    $P4869."add_attribute"($P4870, $P4872)
    nqp_get_sc_object $P4873, "1304459375.825", 181
    get_how $P4874, $P4873
    nqp_get_sc_object $P4875, "1304459375.825", 181
    nqp_get_sc_object $P4876, "1304459368.206", 77
    $P4877 = $P4876."new"("%!options" :named("name"))
    $P4874."add_attribute"($P4875, $P4877)
    nqp_get_sc_object $P4878, "1304459375.825", 181
    get_how $P4879, $P4878
    nqp_get_sc_object $P4880, "1304459375.825", 181
    nqp_get_sc_object $P4881, "1304459368.206", 77
    $P4882 = $P4881."new"("%!stopper" :named("name"))
    $P4879."add_attribute"($P4880, $P4882)
    nqp_get_sc_object $P4883, "1304459375.825", 181
    get_how $P4884, $P4883
    nqp_get_sc_object $P4885, "1304459375.825", 181
    nqp_get_sc_object $P4886, "1304459368.206", 77
    $P4887 = $P4886."new"("$!stop-after-first-arg" :named("name"))
    $P4884."add_attribute"($P4885, $P4887)
    nqp_get_sc_object $P4888, "1304459375.825", 181
    get_how $P4889, $P4888
    nqp_get_sc_object $P4890, "1304459375.825", 181
    .const 'Sub' $P4891 = "239_1304459385.051" 
    $P4889."add_method"($P4890, "new", $P4891)
    nqp_get_sc_object $P4892, "1304459375.825", 181
    get_how $P4893, $P4892
    nqp_get_sc_object $P4894, "1304459375.825", 181
    .const 'Sub' $P4895 = "240_1304459385.051" 
    $P4893."add_method"($P4894, "stop-after-first-arg", $P4895)
    nqp_get_sc_object $P4896, "1304459375.825", 181
    get_how $P4897, $P4896
    nqp_get_sc_object $P4898, "1304459375.825", 181
    .const 'Sub' $P4899 = "241_1304459385.051" 
    $P4897."add_method"($P4898, "BUILD", $P4899)
    nqp_get_sc_object $P4900, "1304459375.825", 181
    get_how $P4901, $P4900
    nqp_get_sc_object $P4902, "1304459375.825", 181
    .const 'Sub' $P4903 = "243_1304459385.051" 
    $P4901."add_method"($P4902, "add-stopper", $P4903)
    nqp_get_sc_object $P4904, "1304459375.825", 181
    get_how $P4905, $P4904
    nqp_get_sc_object $P4906, "1304459375.825", 181
    .const 'Sub' $P4907 = "244_1304459385.051" 
    $P4905."add_method"($P4906, "split-option-aliases", $P4907)
    nqp_get_sc_object $P4908, "1304459375.825", 181
    get_how $P4909, $P4908
    nqp_get_sc_object $P4910, "1304459375.825", 181
    .const 'Sub' $P4911 = "245_1304459385.051" 
    $P4909."add_method"($P4910, "add-spec", $P4911)
    nqp_get_sc_object $P4912, "1304459375.825", 181
    get_how $P4913, $P4912
    nqp_get_sc_object $P4914, "1304459375.825", 181
    .const 'Sub' $P4915 = "247_1304459385.051" 
    $P4913."add_method"($P4914, "is-option", $P4915)
    nqp_get_sc_object $P4916, "1304459375.825", 181
    get_how $P4917, $P4916
    nqp_get_sc_object $P4918, "1304459375.825", 181
    .const 'Sub' $P4919 = "248_1304459385.051" 
    $P4917."add_method"($P4918, "wants-value", $P4919)
    nqp_get_sc_object $P4920, "1304459375.825", 181
    get_how $P4921, $P4920
    nqp_get_sc_object $P4922, "1304459375.825", 181
    .const 'Sub' $P4923 = "249_1304459385.051" 
    $P4921."add_method"($P4922, "parse", $P4923)
    .const 'Sub' $P4924 = "238_1304459385.051" 
    $P4925 = $P4924."get_lexinfo"()
    nqp_get_sc_object $P4926, "1304459375.825", 181
    $P4925."set_static_lexpad_value"("$?PACKAGE", $P4926)
    .const 'Sub' $P4927 = "238_1304459385.051" 
    $P4928 = $P4927."get_lexinfo"()
    $P4928."finish_static_lexpad"()
    .const 'Sub' $P4929 = "238_1304459385.051" 
    $P4930 = $P4929."get_lexinfo"()
    nqp_get_sc_object $P4931, "1304459375.825", 181
    $P4930."set_static_lexpad_value"("$?CLASS", $P4931)
    .const 'Sub' $P4932 = "238_1304459385.051" 
    $P4933 = $P4932."get_lexinfo"()
    $P4933."finish_static_lexpad"()
    nqp_get_sc_object $P4934, "1304459375.825", 181
    get_how $P4935, $P4934
    nqp_get_sc_object $P4936, "1304459375.825", 181
    nqp_get_sc_object $P4937, "1304459374.119", 5
    $P4935."set_default_parent"($P4936, $P4937)
    nqp_get_sc_object $P4938, "1304459375.825", 181
    get_how $P4939, $P4938
    nqp_get_sc_object $P4940, "1304459375.825", 181
    $P4939."compose"($P4940)
    nqp_get_sc_object $P4941, "1304459368.206", 41
    $P4942 = $P4941."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4942, cur_sc
    nqp_set_sc_object "1304459375.825", 191, $P4942
    nqp_get_sc_object $P4943, "1304459375.825", 191
    nqp_get_sc_object $P4944, "1304459375.825", 0
    nqp_get_package_through_who $P4945, $P4944, "HLL"
    nqp_get_package_through_who $P4946, $P4945, "Compiler"
    get_who $P4947, $P4946
    set $P4947["SerializationContextBuilder"], $P4943
    nqp_get_sc_object $P4948, "1304459368.206", 41
    $P4949 = $P4948."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4949, cur_sc
    nqp_set_sc_object "1304459375.825", 192, $P4949
    .const 'Sub' $P4950 = "257_1304459385.051" 
    $P4951 = $P4950."get_lexinfo"()
    nqp_get_sc_object $P4952, "1304459375.825", 192
    $P4951."set_static_lexpad_value"("Event", $P4952)
    .const 'Sub' $P4953 = "257_1304459385.051" 
    $P4954 = $P4953."get_lexinfo"()
    $P4954."finish_static_lexpad"()
    nqp_get_sc_object $P4955, "1304459375.825", 192
    get_how $P4956, $P4955
    nqp_get_sc_object $P4957, "1304459375.825", 192
    nqp_get_sc_object $P4958, "1304459368.206", 77
    $P4959 = $P4958."new"("$!deserialize_past" :named("name"))
    $P4956."add_attribute"($P4957, $P4959)
    nqp_get_sc_object $P4960, "1304459375.825", 192
    get_how $P4961, $P4960
    nqp_get_sc_object $P4962, "1304459375.825", 192
    .const 'Sub' $P4963 = "260_1304459385.051" 
    $P4961."add_method"($P4962, "deserialize_past", $P4963)
    nqp_get_sc_object $P4964, "1304459375.825", 192
    get_how $P4965, $P4964
    nqp_get_sc_object $P4966, "1304459375.825", 192
    nqp_get_sc_object $P4967, "1304459368.206", 77
    $P4968 = $P4967."new"("$!fixup_past" :named("name"))
    $P4965."add_attribute"($P4966, $P4968)
    nqp_get_sc_object $P4969, "1304459375.825", 192
    get_how $P4970, $P4969
    nqp_get_sc_object $P4971, "1304459375.825", 192
    .const 'Sub' $P4972 = "261_1304459385.051" 
    $P4970."add_method"($P4971, "fixup_past", $P4972)
    .const 'Sub' $P4973 = "259_1304459385.051" 
    $P4974 = $P4973."get_lexinfo"()
    nqp_get_sc_object $P4975, "1304459375.825", 192
    $P4974."set_static_lexpad_value"("$?PACKAGE", $P4975)
    .const 'Sub' $P4976 = "259_1304459385.051" 
    $P4977 = $P4976."get_lexinfo"()
    $P4977."finish_static_lexpad"()
    .const 'Sub' $P4978 = "259_1304459385.051" 
    $P4979 = $P4978."get_lexinfo"()
    nqp_get_sc_object $P4980, "1304459375.825", 192
    $P4979."set_static_lexpad_value"("$?CLASS", $P4980)
    .const 'Sub' $P4981 = "259_1304459385.051" 
    $P4982 = $P4981."get_lexinfo"()
    $P4982."finish_static_lexpad"()
    nqp_get_sc_object $P4983, "1304459375.825", 192
    get_how $P4984, $P4983
    nqp_get_sc_object $P4985, "1304459375.825", 192
    nqp_get_sc_object $P4986, "1304459374.119", 5
    $P4984."set_default_parent"($P4985, $P4986)
    nqp_get_sc_object $P4987, "1304459375.825", 192
    get_how $P4988, $P4987
    nqp_get_sc_object $P4989, "1304459375.825", 192
    $P4988."compose"($P4989)
    nqp_get_sc_object $P4990, "1304459375.825", 191
    get_how $P4991, $P4990
    nqp_get_sc_object $P4992, "1304459375.825", 191
    nqp_get_sc_object $P4993, "1304459368.206", 77
    $P4994 = $P4993."new"("$!sc" :named("name"))
    $P4991."add_attribute"($P4992, $P4994)
    nqp_get_sc_object $P4995, "1304459375.825", 191
    get_how $P4996, $P4995
    nqp_get_sc_object $P4997, "1304459375.825", 191
    nqp_get_sc_object $P4998, "1304459368.206", 77
    $P4999 = $P4998."new"("$!handle" :named("name"))
    $P4996."add_attribute"($P4997, $P4999)
    nqp_get_sc_object $P5000, "1304459375.825", 191
    get_how $P5001, $P5000
    nqp_get_sc_object $P5002, "1304459375.825", 191
    nqp_get_sc_object $P5003, "1304459368.206", 77
    $P5004 = $P5003."new"("%!addr_to_slot" :named("name"))
    $P5001."add_attribute"($P5002, $P5004)
    nqp_get_sc_object $P5005, "1304459375.825", 191
    get_how $P5006, $P5005
    nqp_get_sc_object $P5007, "1304459375.825", 191
    nqp_get_sc_object $P5008, "1304459368.206", 77
    $P5009 = $P5008."new"("@!event_stream" :named("name"))
    $P5006."add_attribute"($P5007, $P5009)
    nqp_get_sc_object $P5010, "1304459375.825", 191
    get_how $P5011, $P5010
    nqp_get_sc_object $P5012, "1304459375.825", 191
    .const 'Sub' $P5013 = "262_1304459385.051" 
    $P5011."add_method"($P5012, "new", $P5013)
    nqp_get_sc_object $P5014, "1304459375.825", 191
    get_how $P5015, $P5014
    nqp_get_sc_object $P5016, "1304459375.825", 191
    .const 'Sub' $P5017 = "263_1304459385.051" 
    $P5015."add_method"($P5016, "BUILD", $P5017)
    nqp_get_sc_object $P5018, "1304459375.825", 191
    get_how $P5019, $P5018
    nqp_get_sc_object $P5020, "1304459375.825", 191
    .const 'Sub' $P5021 = "264_1304459385.051" 
    $P5019."add_method"($P5020, "slot_for_object", $P5021)
    nqp_get_sc_object $P5022, "1304459375.825", 191
    get_how $P5023, $P5022
    nqp_get_sc_object $P5024, "1304459375.825", 191
    .const 'Sub' $P5025 = "265_1304459385.051" 
    $P5023."add_method"($P5024, "get_slot_past_for_object", $P5025)
    nqp_get_sc_object $P5026, "1304459375.825", 191
    get_how $P5027, $P5026
    nqp_get_sc_object $P5028, "1304459375.825", 191
    .const 'Sub' $P5029 = "266_1304459385.051" 
    $P5027."add_method"($P5028, "set_slot_past", $P5029)
    nqp_get_sc_object $P5030, "1304459375.825", 191
    get_how $P5031, $P5030
    nqp_get_sc_object $P5032, "1304459375.825", 191
    .const 'Sub' $P5033 = "267_1304459385.051" 
    $P5031."add_method"($P5032, "set_cur_sc", $P5033)
    nqp_get_sc_object $P5034, "1304459375.825", 191
    get_how $P5035, $P5034
    nqp_get_sc_object $P5036, "1304459375.825", 191
    .const 'Sub' $P5037 = "268_1304459385.051" 
    $P5035."add_method"($P5036, "add_object", $P5037)
    nqp_get_sc_object $P5038, "1304459375.825", 191
    get_how $P5039, $P5038
    nqp_get_sc_object $P5040, "1304459375.825", 191
    .const 'Sub' $P5041 = "269_1304459385.051" 
    $P5039."add_method"($P5040, "add_code", $P5041)
    nqp_get_sc_object $P5042, "1304459375.825", 191
    get_how $P5043, $P5042
    nqp_get_sc_object $P5044, "1304459375.825", 191
    .const 'Sub' $P5045 = "270_1304459385.051" 
    $P5043."add_method"($P5044, "add_event", $P5045)
    nqp_get_sc_object $P5046, "1304459375.825", 191
    get_how $P5047, $P5046
    nqp_get_sc_object $P5048, "1304459375.825", 191
    .const 'Sub' $P5049 = "271_1304459385.051" 
    $P5047."add_method"($P5048, "get_object_sc_ref_past", $P5049)
    nqp_get_sc_object $P5050, "1304459375.825", 191
    get_how $P5051, $P5050
    nqp_get_sc_object $P5052, "1304459375.825", 191
    .const 'Sub' $P5053 = "272_1304459385.051" 
    $P5051."add_method"($P5052, "load_setting", $P5053)
    nqp_get_sc_object $P5054, "1304459375.825", 191
    get_how $P5055, $P5054
    nqp_get_sc_object $P5056, "1304459375.825", 191
    .const 'Sub' $P5057 = "274_1304459385.051" 
    $P5055."add_method"($P5056, "load_module", $P5057)
    nqp_get_sc_object $P5058, "1304459375.825", 191
    get_how $P5059, $P5058
    nqp_get_sc_object $P5060, "1304459375.825", 191
    .const 'Sub' $P5061 = "275_1304459385.051" 
    $P5059."add_method"($P5060, "install_package_symbol", $P5061)
    nqp_get_sc_object $P5062, "1304459375.825", 191
    get_how $P5063, $P5062
    nqp_get_sc_object $P5064, "1304459375.825", 191
    .const 'Sub' $P5065 = "278_1304459385.051" 
    $P5063."add_method"($P5064, "install_lexical_symbol", $P5065)
    nqp_get_sc_object $P5066, "1304459375.825", 191
    get_how $P5067, $P5066
    nqp_get_sc_object $P5068, "1304459375.825", 191
    .const 'Sub' $P5069 = "279_1304459385.051" 
    $P5067."add_method"($P5068, "install_package_routine", $P5069)
    nqp_get_sc_object $P5070, "1304459375.825", 191
    get_how $P5071, $P5070
    nqp_get_sc_object $P5072, "1304459375.825", 191
    .const 'Sub' $P5073 = "280_1304459385.051" 
    $P5071."add_method"($P5072, "pkg_create_mo", $P5073)
    nqp_get_sc_object $P5074, "1304459375.825", 191
    get_how $P5075, $P5074
    nqp_get_sc_object $P5076, "1304459375.825", 191
    .const 'Sub' $P5077 = "281_1304459385.051" 
    $P5075."add_method"($P5076, "pkg_add_attribute", $P5077)
    nqp_get_sc_object $P5078, "1304459375.825", 191
    get_how $P5079, $P5078
    nqp_get_sc_object $P5080, "1304459375.825", 191
    .const 'Sub' $P5081 = "285_1304459385.051" 
    $P5079."add_method"($P5080, "pkg_add_method", $P5081)
    nqp_get_sc_object $P5082, "1304459375.825", 191
    get_how $P5083, $P5082
    nqp_get_sc_object $P5084, "1304459375.825", 191
    .const 'Sub' $P5085 = "287_1304459385.051" 
    $P5083."add_method"($P5084, "set_routine_signature", $P5085)
    nqp_get_sc_object $P5086, "1304459375.825", 191
    get_how $P5087, $P5086
    nqp_get_sc_object $P5088, "1304459375.825", 191
    .const 'Sub' $P5089 = "288_1304459385.051" 
    $P5087."add_method"($P5088, "pkg_set_body_block", $P5089)
    nqp_get_sc_object $P5090, "1304459375.825", 191
    get_how $P5091, $P5090
    nqp_get_sc_object $P5092, "1304459375.825", 191
    .const 'Sub' $P5093 = "293_1304459385.051" 
    $P5091."add_method"($P5092, "pkg_add_parent_or_role", $P5093)
    nqp_get_sc_object $P5094, "1304459375.825", 191
    get_how $P5095, $P5094
    nqp_get_sc_object $P5096, "1304459375.825", 191
    .const 'Sub' $P5097 = "294_1304459385.051" 
    $P5095."add_method"($P5096, "pkg_compose", $P5097)
    nqp_get_sc_object $P5098, "1304459375.825", 191
    get_how $P5099, $P5098
    nqp_get_sc_object $P5100, "1304459375.825", 191
    .const 'Sub' $P5101 = "295_1304459385.051" 
    $P5099."add_method"($P5100, "sc", $P5101)
    nqp_get_sc_object $P5102, "1304459375.825", 191
    get_how $P5103, $P5102
    nqp_get_sc_object $P5104, "1304459375.825", 191
    .const 'Sub' $P5105 = "296_1304459385.051" 
    $P5103."add_method"($P5104, "to_past", $P5105)
    .const 'Sub' $P5106 = "257_1304459385.051" 
    $P5107 = $P5106."get_lexinfo"()
    nqp_get_sc_object $P5108, "1304459375.825", 191
    $P5107."set_static_lexpad_value"("$?PACKAGE", $P5108)
    .const 'Sub' $P5109 = "257_1304459385.051" 
    $P5110 = $P5109."get_lexinfo"()
    $P5110."finish_static_lexpad"()
    .const 'Sub' $P5111 = "257_1304459385.051" 
    $P5112 = $P5111."get_lexinfo"()
    nqp_get_sc_object $P5113, "1304459375.825", 191
    $P5112."set_static_lexpad_value"("$?CLASS", $P5113)
    .const 'Sub' $P5114 = "257_1304459385.051" 
    $P5115 = $P5114."get_lexinfo"()
    $P5115."finish_static_lexpad"()
    nqp_get_sc_object $P5116, "1304459375.825", 191
    get_how $P5117, $P5116
    nqp_get_sc_object $P5118, "1304459375.825", 191
    nqp_get_sc_object $P5119, "1304459374.119", 5
    $P5117."set_default_parent"($P5118, $P5119)
    nqp_get_sc_object $P5120, "1304459375.825", 191
    get_how $P5121, $P5120
    nqp_get_sc_object $P5122, "1304459375.825", 191
    $P5121."compose"($P5122)
  if_3962_end:
    nqp_get_sc_object $P5642, "1304459375.825", 0
    set_hll_global "GLOBAL", $P5642
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block17"  :subid("11_1304459385.051") :outer("10_1304459385.051")
.annotate 'line', 9
    .const 'Sub' $P453 = "118_1304459385.051" 
    capture_lex $P453
    .const 'Sub' $P448 = "117_1304459385.051" 
    capture_lex $P448
    .const 'Sub' $P433 = "116_1304459385.051" 
    capture_lex $P433
    .const 'Sub' $P423 = "115_1304459385.051" 
    capture_lex $P423
    .const 'Sub' $P419 = "114_1304459385.051" 
    capture_lex $P419
    .const 'Sub' $P415 = "113_1304459385.051" 
    capture_lex $P415
    .const 'Sub' $P412 = "112_1304459385.051" 
    capture_lex $P412
    .const 'Sub' $P410 = "111_1304459385.051" 
    capture_lex $P410
    .const 'Sub' $P408 = "110_1304459385.051" 
    capture_lex $P408
    .const 'Sub' $P400 = "109_1304459385.051" 
    capture_lex $P400
    .const 'Sub' $P397 = "108_1304459385.051" 
    capture_lex $P397
    .const 'Sub' $P393 = "107_1304459385.051" 
    capture_lex $P393
    .const 'Sub' $P359 = "106_1304459385.051" 
    capture_lex $P359
    .const 'Sub' $P354 = "105_1304459385.051" 
    capture_lex $P354
    .const 'Sub' $P350 = "104_1304459385.051" 
    capture_lex $P350
    .const 'Sub' $P345 = "103_1304459385.051" 
    capture_lex $P345
    .const 'Sub' $P343 = "102_1304459385.051" 
    capture_lex $P343
    .const 'Sub' $P339 = "101_1304459385.051" 
    capture_lex $P339
    .const 'Sub' $P336 = "100_1304459385.051" 
    capture_lex $P336
    .const 'Sub' $P326 = "98_1304459385.051" 
    capture_lex $P326
    .const 'Sub' $P324 = "97_1304459385.051" 
    capture_lex $P324
    .const 'Sub' $P294 = "93_1304459385.051" 
    capture_lex $P294
    .const 'Sub' $P292 = "92_1304459385.051" 
    capture_lex $P292
    .const 'Sub' $P288 = "91_1304459385.051" 
    capture_lex $P288
    .const 'Sub' $P286 = "90_1304459385.051" 
    capture_lex $P286
    .const 'Sub' $P283 = "89_1304459385.051" 
    capture_lex $P283
    .const 'Sub' $P281 = "88_1304459385.051" 
    capture_lex $P281
    .const 'Sub' $P277 = "87_1304459385.051" 
    capture_lex $P277
    .const 'Sub' $P275 = "86_1304459385.051" 
    capture_lex $P275
    .const 'Sub' $P271 = "85_1304459385.051" 
    capture_lex $P271
    .const 'Sub' $P269 = "84_1304459385.051" 
    capture_lex $P269
    .const 'Sub' $P266 = "83_1304459385.051" 
    capture_lex $P266
    .const 'Sub' $P264 = "82_1304459385.051" 
    capture_lex $P264
    .const 'Sub' $P261 = "81_1304459385.051" 
    capture_lex $P261
    .const 'Sub' $P259 = "80_1304459385.051" 
    capture_lex $P259
    .const 'Sub' $P256 = "79_1304459385.051" 
    capture_lex $P256
    .const 'Sub' $P254 = "78_1304459385.051" 
    capture_lex $P254
    .const 'Sub' $P251 = "77_1304459385.051" 
    capture_lex $P251
    .const 'Sub' $P249 = "76_1304459385.051" 
    capture_lex $P249
    .const 'Sub' $P246 = "75_1304459385.051" 
    capture_lex $P246
    .const 'Sub' $P244 = "74_1304459385.051" 
    capture_lex $P244
    .const 'Sub' $P241 = "73_1304459385.051" 
    capture_lex $P241
    .const 'Sub' $P239 = "72_1304459385.051" 
    capture_lex $P239
    .const 'Sub' $P236 = "71_1304459385.051" 
    capture_lex $P236
    .const 'Sub' $P234 = "70_1304459385.051" 
    capture_lex $P234
    .const 'Sub' $P231 = "69_1304459385.051" 
    capture_lex $P231
    .const 'Sub' $P223 = "66_1304459385.051" 
    capture_lex $P223
    .const 'Sub' $P219 = "65_1304459385.051" 
    capture_lex $P219
    .const 'Sub' $P217 = "64_1304459385.051" 
    capture_lex $P217
    .const 'Sub' $P206 = "63_1304459385.051" 
    capture_lex $P206
    .const 'Sub' $P199 = "62_1304459385.051" 
    capture_lex $P199
    .const 'Sub' $P194 = "61_1304459385.051" 
    capture_lex $P194
    .const 'Sub' $P192 = "60_1304459385.051" 
    capture_lex $P192
    .const 'Sub' $P188 = "59_1304459385.051" 
    capture_lex $P188
    .const 'Sub' $P186 = "58_1304459385.051" 
    capture_lex $P186
    .const 'Sub' $P181 = "57_1304459385.051" 
    capture_lex $P181
    .const 'Sub' $P179 = "56_1304459385.051" 
    capture_lex $P179
    .const 'Sub' $P175 = "55_1304459385.051" 
    capture_lex $P175
    .const 'Sub' $P173 = "54_1304459385.051" 
    capture_lex $P173
    .const 'Sub' $P168 = "53_1304459385.051" 
    capture_lex $P168
    .const 'Sub' $P166 = "52_1304459385.051" 
    capture_lex $P166
    .const 'Sub' $P162 = "51_1304459385.051" 
    capture_lex $P162
    .const 'Sub' $P160 = "50_1304459385.051" 
    capture_lex $P160
    .const 'Sub' $P155 = "49_1304459385.051" 
    capture_lex $P155
    .const 'Sub' $P153 = "48_1304459385.051" 
    capture_lex $P153
    .const 'Sub' $P149 = "47_1304459385.051" 
    capture_lex $P149
    .const 'Sub' $P147 = "46_1304459385.051" 
    capture_lex $P147
    .const 'Sub' $P143 = "45_1304459385.051" 
    capture_lex $P143
    .const 'Sub' $P141 = "44_1304459385.051" 
    capture_lex $P141
    .const 'Sub' $P134 = "43_1304459385.051" 
    capture_lex $P134
    .const 'Sub' $P131 = "42_1304459385.051" 
    capture_lex $P131
    .const 'Sub' $P126 = "41_1304459385.051" 
    capture_lex $P126
    .const 'Sub' $P118 = "40_1304459385.051" 
    capture_lex $P118
    .const 'Sub' $P115 = "39_1304459385.051" 
    capture_lex $P115
    .const 'Sub' $P112 = "38_1304459385.051" 
    capture_lex $P112
    .const 'Sub' $P110 = "37_1304459385.051" 
    capture_lex $P110
    .const 'Sub' $P107 = "36_1304459385.051" 
    capture_lex $P107
    .const 'Sub' $P103 = "35_1304459385.051" 
    capture_lex $P103
    .const 'Sub' $P99 = "34_1304459385.051" 
    capture_lex $P99
    .const 'Sub' $P96 = "33_1304459385.051" 
    capture_lex $P96
    .const 'Sub' $P93 = "32_1304459385.051" 
    capture_lex $P93
    .const 'Sub' $P90 = "31_1304459385.051" 
    capture_lex $P90
    .const 'Sub' $P87 = "30_1304459385.051" 
    capture_lex $P87
    .const 'Sub' $P84 = "29_1304459385.051" 
    capture_lex $P84
    .const 'Sub' $P81 = "28_1304459385.051" 
    capture_lex $P81
    .const 'Sub' $P43 = "15_1304459385.051" 
    capture_lex $P43
    .const 'Sub' $P36 = "14_1304459385.051" 
    capture_lex $P36
    .const 'Sub' $P34 = "13_1304459385.051" 
    capture_lex $P34
    .const 'Sub' $P29 = "12_1304459385.051" 
    capture_lex $P29
.annotate 'line', 10
    new $P19, "Undef"
    .lex "$brackets", $P19
.annotate 'line', 12
    new $P20, "Undef"
    .lex "$cursor_class", $P20
    .lex "$?PACKAGE", $P21
    .lex "$?CLASS", $P22
.annotate 'line', 10
    new $P23, "String"
    assign $P23, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P23
.annotate 'line', 12
    find_lex $P24, "GLOBALish"
    get_who $P25, $P24
    set $P26, $P25["Regex"]
    unless_null $P26, vivify_300
    new $P26, "Undef"
  vivify_300:
    get_who $P27, $P26
    set $P28, $P27["Cursor"]
    unless_null $P28, vivify_301
    new $P28, "Undef"
  vivify_301:
    store_lex "$cursor_class", $P28
.annotate 'line', 851
    .const 'Sub' $P453 = "118_1304459385.051" 
    newclosure $P476, $P453
.annotate 'line', 9
    .return ($P476)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx30_tgt
    .local int rx30_pos
    .local int rx30_off
    .local int rx30_eos
    .local int rx30_rep
    .local pmc rx30_cur
    .local pmc rx30_debug
    (rx30_cur, rx30_pos, rx30_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx30_cur
    .local pmc match
    .lex "$/", match
    length rx30_eos, rx30_tgt
    gt rx30_pos, rx30_eos, rx30_done
    set rx30_off, 0
    lt rx30_pos, 2, rx30_start
    sub rx30_off, rx30_pos, 1
    substr rx30_tgt, rx30_tgt, rx30_off
  rx30_start:
    eq $I10, 1, rx30_restart
    if_null rx30_debug, debug_302
    rx30_cur."!cursor_debug"("START", "ws")
  debug_302:
    $I10 = self.'from'()
    ne $I10, -1, rxscan31_done
    goto rxscan31_scan
  rxscan31_loop:
    (rx30_pos) = rx30_cur."from"()
    inc rx30_pos
    rx30_cur."!cursor_from"(rx30_pos)
    ge rx30_pos, rx30_eos, rxscan31_done
  rxscan31_scan:
    set_addr $I10, rxscan31_loop
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxscan31_done:
.annotate 'line', 14
  # rx subrule "ww" subtype=zerowidth negate=1
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."ww"()
    if $P10, rx30_fail
  # rx rxquantr32 ** 0..*
    set_addr $I10, rxquantr32_done
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxquantr32_loop:
  alt33_0:
    set_addr $I10, alt33_1
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx30_pos, rx30_off
    find_not_cclass $I11, 32, rx30_tgt, $I10, rx30_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx30_fail
    add rx30_pos, rx30_off, $I11
    goto alt33_end
  alt33_1:
  # rx literal  "#"
    add $I11, rx30_pos, 1
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    ord $I11, rx30_tgt, $I11
    ne $I11, 35, rx30_fail
    add rx30_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx30_pos, rx30_off
    find_cclass $I11, 4096, rx30_tgt, $I10, rx30_eos
    add rx30_pos, rx30_off, $I11
  alt33_end:
    set_addr $I10, rxquantr32_done
    (rx30_rep) = rx30_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr32_done
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I10)
    goto rxquantr32_loop
  rxquantr32_done:
  # rx pass
    rx30_cur."!cursor_pass"(rx30_pos, "ws")
    if_null rx30_debug, debug_303
    rx30_cur."!cursor_debug"("PASS", "ws", " at pos=", rx30_pos)
  debug_303:
    .return (rx30_cur)
  rx30_restart:
.annotate 'line', 12
    if_null rx30_debug, debug_304
    rx30_cur."!cursor_debug"("NEXT", "ws")
  debug_304:
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    if_null rx30_debug, debug_305
    rx30_cur."!cursor_debug"("FAIL", "ws")
  debug_305:
    .return (rx30_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    new $P35, "ResizablePMCArray"
    push $P35, ""
    .return ($P35)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    .local pmc rx37_debug
    (rx37_cur, rx37_pos, rx37_tgt, $I10) = self."!cursor_start"()
    rx37_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx37_cur
    .local pmc match
    .lex "$/", match
    length rx37_eos, rx37_tgt
    gt rx37_pos, rx37_eos, rx37_done
    set rx37_off, 0
    lt rx37_pos, 2, rx37_start
    sub rx37_off, rx37_pos, 1
    substr rx37_tgt, rx37_tgt, rx37_off
  rx37_start:
    eq $I10, 1, rx37_restart
    if_null rx37_debug, debug_306
    rx37_cur."!cursor_debug"("START", "termish")
  debug_306:
    $I10 = self.'from'()
    ne $I10, -1, rxscan38_done
    goto rxscan38_scan
  rxscan38_loop:
    (rx37_pos) = rx37_cur."from"()
    inc rx37_pos
    rx37_cur."!cursor_from"(rx37_pos)
    ge rx37_pos, rx37_eos, rxscan38_done
  rxscan38_scan:
    set_addr $I10, rxscan38_loop
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxscan38_done:
.annotate 'line', 17
  # rx rxquantr39 ** 0..*
    set_addr $I10, rxquantr39_done
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxquantr39_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."prefixish"()
    unless $P10, rx37_fail
    goto rxsubrule40_pass
  rxsubrule40_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx37_fail
  rxsubrule40_pass:
    set_addr $I10, rxsubrule40_back
    rx37_cur."!mark_push"(0, rx37_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx37_pos = $P10."pos"()
    set_addr $I10, rxquantr39_done
    (rx37_rep) = rx37_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr39_done
    rx37_cur."!mark_push"(rx37_rep, rx37_pos, $I10)
    goto rxquantr39_loop
  rxquantr39_done:
.annotate 'line', 18
  # rx subrule "term" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."term"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx37_pos = $P10."pos"()
.annotate 'line', 19
  # rx rxquantr41 ** 0..*
    set_addr $I10, rxquantr41_done
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxquantr41_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."postfixish"()
    unless $P10, rx37_fail
    goto rxsubrule42_pass
  rxsubrule42_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx37_fail
  rxsubrule42_pass:
    set_addr $I10, rxsubrule42_back
    rx37_cur."!mark_push"(0, rx37_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx37_pos = $P10."pos"()
    set_addr $I10, rxquantr41_done
    (rx37_rep) = rx37_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr41_done
    rx37_cur."!mark_push"(rx37_rep, rx37_pos, $I10)
    goto rxquantr41_loop
  rxquantr41_done:
.annotate 'line', 16
  # rx pass
    rx37_cur."!cursor_pass"(rx37_pos, "termish")
    if_null rx37_debug, debug_307
    rx37_cur."!cursor_debug"("PASS", "termish", " at pos=", rx37_pos)
  debug_307:
    .return (rx37_cur)
  rx37_restart:
.annotate 'line', 12
    if_null rx37_debug, debug_308
    rx37_cur."!cursor_debug"("NEXT", "termish")
  debug_308:
  rx37_fail:
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    if_null rx37_debug, debug_309
    rx37_cur."!cursor_debug"("FAIL", "termish")
  debug_309:
    .return (rx37_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    new $P44, "ResizablePMCArray"
    push $P44, ""
    .return ($P44)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1304459385.051")
    .param pmc param_46
.annotate 'line', 22
    .lex "self", param_46
    $P47 = param_46."!protoregex"("term")
    .return ($P47)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1304459385.051")
    .param pmc param_49
.annotate 'line', 22
    .lex "self", param_49
    $P50 = param_49."!PREFIX__!protoregex"("term")
    .return ($P50)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1304459385.051")
    .param pmc param_52
.annotate 'line', 23
    .lex "self", param_52
    $P53 = param_52."!protoregex"("infix")
    .return ($P53)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1304459385.051")
    .param pmc param_55
.annotate 'line', 23
    .lex "self", param_55
    $P56 = param_55."!PREFIX__!protoregex"("infix")
    .return ($P56)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1304459385.051")
    .param pmc param_58
.annotate 'line', 24
    .lex "self", param_58
    $P59 = param_58."!protoregex"("prefix")
    .return ($P59)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1304459385.051")
    .param pmc param_61
.annotate 'line', 24
    .lex "self", param_61
    $P62 = param_61."!PREFIX__!protoregex"("prefix")
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1304459385.051")
    .param pmc param_64
.annotate 'line', 25
    .lex "self", param_64
    $P65 = param_64."!protoregex"("postfix")
    .return ($P65)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1304459385.051")
    .param pmc param_67
.annotate 'line', 25
    .lex "self", param_67
    $P68 = param_67."!PREFIX__!protoregex"("postfix")
    .return ($P68)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1304459385.051")
    .param pmc param_70
.annotate 'line', 26
    .lex "self", param_70
    $P71 = param_70."!protoregex"("circumfix")
    .return ($P71)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1304459385.051")
    .param pmc param_73
.annotate 'line', 26
    .lex "self", param_73
    $P74 = param_73."!PREFIX__!protoregex"("circumfix")
    .return ($P74)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1304459385.051")
    .param pmc param_76
.annotate 'line', 27
    .lex "self", param_76
    $P77 = param_76."!protoregex"("postcircumfix")
    .return ($P77)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1304459385.051")
    .param pmc param_79
.annotate 'line', 27
    .lex "self", param_79
    $P80 = param_79."!PREFIX__!protoregex"("postcircumfix")
    .return ($P80)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx82_tgt
    .local int rx82_pos
    .local int rx82_off
    .local int rx82_eos
    .local int rx82_rep
    .local pmc rx82_cur
    .local pmc rx82_debug
    (rx82_cur, rx82_pos, rx82_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx82_cur
    .local pmc match
    .lex "$/", match
    length rx82_eos, rx82_tgt
    gt rx82_pos, rx82_eos, rx82_done
    set rx82_off, 0
    lt rx82_pos, 2, rx82_start
    sub rx82_off, rx82_pos, 1
    substr rx82_tgt, rx82_tgt, rx82_off
  rx82_start:
    eq $I10, 1, rx82_restart
    if_null rx82_debug, debug_310
    rx82_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_310:
    $I10 = self.'from'()
    ne $I10, -1, rxscan83_done
    goto rxscan83_scan
  rxscan83_loop:
    (rx82_pos) = rx82_cur."from"()
    inc rx82_pos
    rx82_cur."!cursor_from"(rx82_pos)
    ge rx82_pos, rx82_eos, rxscan83_done
  rxscan83_scan:
    set_addr $I10, rxscan83_loop
    rx82_cur."!mark_push"(0, rx82_pos, $I10)
  rxscan83_done:
.annotate 'line', 29
  # rx subrule "circumfix" subtype=capture negate=
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."circumfix"()
    unless $P10, rx82_fail
    rx82_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx82_pos = $P10."pos"()
  # rx pass
    rx82_cur."!cursor_pass"(rx82_pos, "term:sym<circumfix>")
    if_null rx82_debug, debug_311
    rx82_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx82_pos)
  debug_311:
    .return (rx82_cur)
  rx82_restart:
.annotate 'line', 12
    if_null rx82_debug, debug_312
    rx82_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_312:
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    if_null rx82_debug, debug_313
    rx82_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_313:
    .return (rx82_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    $P85 = self."!PREFIX__!subrule"("circumfix", "")
    new $P86, "ResizablePMCArray"
    push $P86, $P85
    .return ($P86)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx88_cur
    .local pmc match
    .lex "$/", match
    length rx88_eos, rx88_tgt
    gt rx88_pos, rx88_eos, rx88_done
    set rx88_off, 0
    lt rx88_pos, 2, rx88_start
    sub rx88_off, rx88_pos, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
    eq $I10, 1, rx88_restart
    if_null rx88_debug, debug_314
    rx88_cur."!cursor_debug"("START", "infixish")
  debug_314:
    $I10 = self.'from'()
    ne $I10, -1, rxscan89_done
    goto rxscan89_scan
  rxscan89_loop:
    (rx88_pos) = rx88_cur."from"()
    inc rx88_pos
    rx88_cur."!cursor_from"(rx88_pos)
    ge rx88_pos, rx88_eos, rxscan89_done
  rxscan89_scan:
    set_addr $I10, rxscan89_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan89_done:
.annotate 'line', 31
  # rx subrule "infix" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."infix"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx88_pos = $P10."pos"()
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "infixish")
    if_null rx88_debug, debug_315
    rx88_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx88_pos)
  debug_315:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 12
    if_null rx88_debug, debug_316
    rx88_cur."!cursor_debug"("NEXT", "infixish")
  debug_316:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_317
    rx88_cur."!cursor_debug"("FAIL", "infixish")
  debug_317:
    .return (rx88_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    $P91 = self."!PREFIX__!subrule"("infix", "")
    new $P92, "ResizablePMCArray"
    push $P92, $P91
    .return ($P92)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx94_tgt
    .local int rx94_pos
    .local int rx94_off
    .local int rx94_eos
    .local int rx94_rep
    .local pmc rx94_cur
    .local pmc rx94_debug
    (rx94_cur, rx94_pos, rx94_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx94_cur
    .local pmc match
    .lex "$/", match
    length rx94_eos, rx94_tgt
    gt rx94_pos, rx94_eos, rx94_done
    set rx94_off, 0
    lt rx94_pos, 2, rx94_start
    sub rx94_off, rx94_pos, 1
    substr rx94_tgt, rx94_tgt, rx94_off
  rx94_start:
    eq $I10, 1, rx94_restart
    if_null rx94_debug, debug_318
    rx94_cur."!cursor_debug"("START", "prefixish")
  debug_318:
    $I10 = self.'from'()
    ne $I10, -1, rxscan95_done
    goto rxscan95_scan
  rxscan95_loop:
    (rx94_pos) = rx94_cur."from"()
    inc rx94_pos
    rx94_cur."!cursor_from"(rx94_pos)
    ge rx94_pos, rx94_eos, rxscan95_done
  rxscan95_scan:
    set_addr $I10, rxscan95_loop
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  rxscan95_done:
.annotate 'line', 32
  # rx subrule "prefix" subtype=capture negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."prefix"()
    unless $P10, rx94_fail
    rx94_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx94_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."ws"()
    unless $P10, rx94_fail
    rx94_pos = $P10."pos"()
  # rx pass
    rx94_cur."!cursor_pass"(rx94_pos, "prefixish")
    if_null rx94_debug, debug_319
    rx94_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx94_pos)
  debug_319:
    .return (rx94_cur)
  rx94_restart:
.annotate 'line', 12
    if_null rx94_debug, debug_320
    rx94_cur."!cursor_debug"("NEXT", "prefixish")
  debug_320:
  rx94_fail:
    (rx94_rep, rx94_pos, $I10, $P10) = rx94_cur."!mark_fail"(0)
    lt rx94_pos, -1, rx94_done
    eq rx94_pos, -1, rx94_fail
    jump $I10
  rx94_done:
    rx94_cur."!cursor_fail"()
    if_null rx94_debug, debug_321
    rx94_cur."!cursor_debug"("FAIL", "prefixish")
  debug_321:
    .return (rx94_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    $P97 = self."!PREFIX__!subrule"("prefix", "")
    new $P98, "ResizablePMCArray"
    push $P98, $P97
    .return ($P98)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx100_tgt
    .local int rx100_pos
    .local int rx100_off
    .local int rx100_eos
    .local int rx100_rep
    .local pmc rx100_cur
    .local pmc rx100_debug
    (rx100_cur, rx100_pos, rx100_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx100_cur
    .local pmc match
    .lex "$/", match
    length rx100_eos, rx100_tgt
    gt rx100_pos, rx100_eos, rx100_done
    set rx100_off, 0
    lt rx100_pos, 2, rx100_start
    sub rx100_off, rx100_pos, 1
    substr rx100_tgt, rx100_tgt, rx100_off
  rx100_start:
    eq $I10, 1, rx100_restart
    if_null rx100_debug, debug_322
    rx100_cur."!cursor_debug"("START", "postfixish")
  debug_322:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    (rx100_pos) = rx100_cur."from"()
    inc rx100_pos
    rx100_cur."!cursor_from"(rx100_pos)
    ge rx100_pos, rx100_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
  rxscan101_done:
  alt102_0:
.annotate 'line', 33
    set_addr $I10, alt102_1
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
.annotate 'line', 34
  # rx subrule "postfix" subtype=capture negate=
    rx100_cur."!cursor_pos"(rx100_pos)
    $P10 = rx100_cur."postfix"()
    unless $P10, rx100_fail
    rx100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx100_pos = $P10."pos"()
    goto alt102_end
  alt102_1:
.annotate 'line', 35
  # rx subrule "postcircumfix" subtype=capture negate=
    rx100_cur."!cursor_pos"(rx100_pos)
    $P10 = rx100_cur."postcircumfix"()
    unless $P10, rx100_fail
    rx100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx100_pos = $P10."pos"()
  alt102_end:
.annotate 'line', 33
  # rx pass
    rx100_cur."!cursor_pass"(rx100_pos, "postfixish")
    if_null rx100_debug, debug_323
    rx100_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx100_pos)
  debug_323:
    .return (rx100_cur)
  rx100_restart:
.annotate 'line', 12
    if_null rx100_debug, debug_324
    rx100_cur."!cursor_debug"("NEXT", "postfixish")
  debug_324:
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    if_null rx100_debug, debug_325
    rx100_cur."!cursor_debug"("FAIL", "postfixish")
  debug_325:
    .return (rx100_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    $P104 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P105 = self."!PREFIX__!subrule"("postfix", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    .local pmc rx108_debug
    (rx108_cur, rx108_pos, rx108_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx108_cur
    .local pmc match
    .lex "$/", match
    length rx108_eos, rx108_tgt
    gt rx108_pos, rx108_eos, rx108_done
    set rx108_off, 0
    lt rx108_pos, 2, rx108_start
    sub rx108_off, rx108_pos, 1
    substr rx108_tgt, rx108_tgt, rx108_off
  rx108_start:
    eq $I10, 1, rx108_restart
    if_null rx108_debug, debug_326
    rx108_cur."!cursor_debug"("START", "nullterm")
  debug_326:
    $I10 = self.'from'()
    ne $I10, -1, rxscan109_done
    goto rxscan109_scan
  rxscan109_loop:
    (rx108_pos) = rx108_cur."from"()
    inc rx108_pos
    rx108_cur."!cursor_from"(rx108_pos)
    ge rx108_pos, rx108_eos, rxscan109_done
  rxscan109_scan:
    set_addr $I10, rxscan109_loop
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  rxscan109_done:
.annotate 'line', 38
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "nullterm")
    if_null rx108_debug, debug_327
    rx108_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx108_pos)
  debug_327:
    .return (rx108_cur)
  rx108_restart:
.annotate 'line', 12
    if_null rx108_debug, debug_328
    rx108_cur."!cursor_debug"("NEXT", "nullterm")
  debug_328:
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    if_null rx108_debug, debug_329
    rx108_cur."!cursor_debug"("FAIL", "nullterm")
  debug_329:
    .return (rx108_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    new $P111, "ResizablePMCArray"
    push $P111, ""
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    .local pmc rx113_debug
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx113_cur
    .local pmc match
    .lex "$/", match
    length rx113_eos, rx113_tgt
    gt rx113_pos, rx113_eos, rx113_done
    set rx113_off, 0
    lt rx113_pos, 2, rx113_start
    sub rx113_off, rx113_pos, 1
    substr rx113_tgt, rx113_tgt, rx113_off
  rx113_start:
    eq $I10, 1, rx113_restart
    if_null rx113_debug, debug_330
    rx113_cur."!cursor_debug"("START", "nullterm_alt")
  debug_330:
    $I10 = self.'from'()
    ne $I10, -1, rxscan114_done
    goto rxscan114_scan
  rxscan114_loop:
    (rx113_pos) = rx113_cur."from"()
    inc rx113_pos
    rx113_cur."!cursor_from"(rx113_pos)
    ge rx113_pos, rx113_eos, rxscan114_done
  rxscan114_scan:
    set_addr $I10, rxscan114_loop
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxscan114_done:
.annotate 'line', 39
  # rx subrule "nullterm" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."nullterm"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx113_pos = $P10."pos"()
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "nullterm_alt")
    if_null rx113_debug, debug_331
    rx113_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx113_pos)
  debug_331:
    .return (rx113_cur)
  rx113_restart:
.annotate 'line', 12
    if_null rx113_debug, debug_332
    rx113_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_332:
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    if_null rx113_debug, debug_333
    rx113_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_333:
    .return (rx113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 12
    $P116 = self."!PREFIX__!subrule"("nullterm", "")
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_119
.annotate 'line', 42
    .lex "self", param_119
    find_lex $P122, "self"
    $P123 = $P122."termish"()
    unless $P123, unless_121
    set $P120, $P123
    goto unless_121_end
  unless_121:
    find_lex $P124, "self"
    $P125 = $P124."nullterm_alt"()
    set $P120, $P125
  unless_121_end:
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx127_tgt
    .local int rx127_pos
    .local int rx127_off
    .local int rx127_eos
    .local int rx127_rep
    .local pmc rx127_cur
    .local pmc rx127_debug
    (rx127_cur, rx127_pos, rx127_tgt, $I10) = self."!cursor_start"()
    rx127_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx127_cur
    .local pmc match
    .lex "$/", match
    length rx127_eos, rx127_tgt
    gt rx127_pos, rx127_eos, rx127_done
    set rx127_off, 0
    lt rx127_pos, 2, rx127_start
    sub rx127_off, rx127_pos, 1
    substr rx127_tgt, rx127_tgt, rx127_off
  rx127_start:
    eq $I10, 1, rx127_restart
    if_null rx127_debug, debug_334
    rx127_cur."!cursor_debug"("START", "quote_delimited")
  debug_334:
    $I10 = self.'from'()
    ne $I10, -1, rxscan128_done
    goto rxscan128_scan
  rxscan128_loop:
    (rx127_pos) = rx127_cur."from"()
    inc rx127_pos
    rx127_cur."!cursor_from"(rx127_pos)
    ge rx127_pos, rx127_eos, rxscan128_done
  rxscan128_scan:
    set_addr $I10, rxscan128_loop
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  rxscan128_done:
.annotate 'line', 46
  # rx subrule "starter" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."starter"()
    unless $P10, rx127_fail
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx127_pos = $P10."pos"()
  # rx rxquantr129 ** 0..*
    set_addr $I10, rxquantr129_done
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  rxquantr129_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."quote_atom"()
    unless $P10, rx127_fail
    goto rxsubrule130_pass
  rxsubrule130_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx127_fail
  rxsubrule130_pass:
    set_addr $I10, rxsubrule130_back
    rx127_cur."!mark_push"(0, rx127_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx127_pos = $P10."pos"()
    set_addr $I10, rxquantr129_done
    (rx127_rep) = rx127_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr129_done
    rx127_cur."!mark_push"(rx127_rep, rx127_pos, $I10)
    goto rxquantr129_loop
  rxquantr129_done:
  # rx subrule "stopper" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."stopper"()
    unless $P10, rx127_fail
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx127_pos = $P10."pos"()
.annotate 'line', 45
  # rx pass
    rx127_cur."!cursor_pass"(rx127_pos, "quote_delimited")
    if_null rx127_debug, debug_335
    rx127_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx127_pos)
  debug_335:
    .return (rx127_cur)
  rx127_restart:
.annotate 'line', 42
    if_null rx127_debug, debug_336
    rx127_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_336:
  rx127_fail:
    (rx127_rep, rx127_pos, $I10, $P10) = rx127_cur."!mark_fail"(0)
    lt rx127_pos, -1, rx127_done
    eq rx127_pos, -1, rx127_fail
    jump $I10
  rx127_done:
    rx127_cur."!cursor_fail"()
    if_null rx127_debug, debug_337
    rx127_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_337:
    .return (rx127_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    $P132 = self."!PREFIX__!subrule"("starter", "")
    new $P133, "ResizablePMCArray"
    push $P133, $P132
    .return ($P133)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    .local pmc rx135_debug
    (rx135_cur, rx135_pos, rx135_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx135_cur
    .local pmc match
    .lex "$/", match
    length rx135_eos, rx135_tgt
    gt rx135_pos, rx135_eos, rx135_done
    set rx135_off, 0
    lt rx135_pos, 2, rx135_start
    sub rx135_off, rx135_pos, 1
    substr rx135_tgt, rx135_tgt, rx135_off
  rx135_start:
    eq $I10, 1, rx135_restart
    if_null rx135_debug, debug_338
    rx135_cur."!cursor_debug"("START", "quote_atom")
  debug_338:
    $I10 = self.'from'()
    ne $I10, -1, rxscan136_done
    goto rxscan136_scan
  rxscan136_loop:
    (rx135_pos) = rx135_cur."from"()
    inc rx135_pos
    rx135_cur."!cursor_from"(rx135_pos)
    ge rx135_pos, rx135_eos, rxscan136_done
  rxscan136_scan:
    set_addr $I10, rxscan136_loop
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  rxscan136_done:
.annotate 'line', 50
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."stopper"()
    if $P10, rx135_fail
  alt137_0:
.annotate 'line', 51
    set_addr $I10, alt137_1
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
.annotate 'line', 52
  # rx subrule "quote_escape" subtype=capture negate=
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."quote_escape"()
    unless $P10, rx135_fail
    rx135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx135_pos = $P10."pos"()
    goto alt137_end
  alt137_1:
.annotate 'line', 53
  # rx rxquantr138 ** 1..*
    set_addr $I10, rxquantr138_done
    rx135_cur."!mark_push"(0, -1, $I10)
  rxquantr138_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."stopper"()
    if $P10, rx135_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."quote_escape"()
    if $P10, rx135_fail
  # rx charclass .
    ge rx135_pos, rx135_eos, rx135_fail
    inc rx135_pos
    set_addr $I10, rxquantr138_done
    (rx135_rep) = rx135_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr138_done
    rx135_cur."!mark_push"(rx135_rep, rx135_pos, $I10)
    goto rxquantr138_loop
  rxquantr138_done:
  alt137_end:
.annotate 'line', 49
  # rx pass
    rx135_cur."!cursor_pass"(rx135_pos, "quote_atom")
    if_null rx135_debug, debug_339
    rx135_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx135_pos)
  debug_339:
    .return (rx135_cur)
  rx135_restart:
.annotate 'line', 42
    if_null rx135_debug, debug_340
    rx135_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_340:
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    if_null rx135_debug, debug_341
    rx135_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_341:
    .return (rx135_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P142, "ResizablePMCArray"
    push $P142, ""
    .return ($P142)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    .local pmc rx144_debug
    (rx144_cur, rx144_pos, rx144_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx144_cur
    .local pmc match
    .lex "$/", match
    length rx144_eos, rx144_tgt
    gt rx144_pos, rx144_eos, rx144_done
    set rx144_off, 0
    lt rx144_pos, 2, rx144_start
    sub rx144_off, rx144_pos, 1
    substr rx144_tgt, rx144_tgt, rx144_off
  rx144_start:
    eq $I10, 1, rx144_restart
    if_null rx144_debug, debug_342
    rx144_cur."!cursor_debug"("START", "decint")
  debug_342:
    $I10 = self.'from'()
    ne $I10, -1, rxscan145_done
    goto rxscan145_scan
  rxscan145_loop:
    (rx144_pos) = rx144_cur."from"()
    inc rx144_pos
    rx144_cur."!cursor_from"(rx144_pos)
    ge rx144_pos, rx144_eos, rxscan145_done
  rxscan145_scan:
    set_addr $I10, rxscan145_loop
    rx144_cur."!mark_push"(0, rx144_pos, $I10)
  rxscan145_done:
.annotate 'line', 57
  # rx rxquantr146 ** 1..*
    set_addr $I10, rxquantr146_done
    rx144_cur."!mark_push"(0, -1, $I10)
  rxquantr146_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx144_pos, rx144_off
    find_not_cclass $I11, 8, rx144_tgt, $I10, rx144_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx144_fail
    add rx144_pos, rx144_off, $I11
    set_addr $I10, rxquantr146_done
    (rx144_rep) = rx144_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr146_done
    rx144_cur."!mark_push"(rx144_rep, rx144_pos, $I10)
  # rx literal  "_"
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail
    sub $I11, rx144_pos, rx144_off
    ord $I11, rx144_tgt, $I11
    ne $I11, 95, rx144_fail
    add rx144_pos, 1
    goto rxquantr146_loop
  rxquantr146_done:
  # rx pass
    rx144_cur."!cursor_pass"(rx144_pos, "decint")
    if_null rx144_debug, debug_343
    rx144_cur."!cursor_debug"("PASS", "decint", " at pos=", rx144_pos)
  debug_343:
    .return (rx144_cur)
  rx144_restart:
.annotate 'line', 42
    if_null rx144_debug, debug_344
    rx144_cur."!cursor_debug"("NEXT", "decint")
  debug_344:
  rx144_fail:
    (rx144_rep, rx144_pos, $I10, $P10) = rx144_cur."!mark_fail"(0)
    lt rx144_pos, -1, rx144_done
    eq rx144_pos, -1, rx144_fail
    jump $I10
  rx144_done:
    rx144_cur."!cursor_fail"()
    if_null rx144_debug, debug_345
    rx144_cur."!cursor_debug"("FAIL", "decint")
  debug_345:
    .return (rx144_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P148, "ResizablePMCArray"
    push $P148, ""
    .return ($P148)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    .local pmc rx150_debug
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    rx150_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx150_cur
    .local pmc match
    .lex "$/", match
    length rx150_eos, rx150_tgt
    gt rx150_pos, rx150_eos, rx150_done
    set rx150_off, 0
    lt rx150_pos, 2, rx150_start
    sub rx150_off, rx150_pos, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
    eq $I10, 1, rx150_restart
    if_null rx150_debug, debug_346
    rx150_cur."!cursor_debug"("START", "decints")
  debug_346:
    $I10 = self.'from'()
    ne $I10, -1, rxscan151_done
    goto rxscan151_scan
  rxscan151_loop:
    (rx150_pos) = rx150_cur."from"()
    inc rx150_pos
    rx150_cur."!cursor_from"(rx150_pos)
    ge rx150_pos, rx150_eos, rxscan151_done
  rxscan151_scan:
    set_addr $I10, rxscan151_loop
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  rxscan151_done:
.annotate 'line', 58
  # rx rxquantr152 ** 1..*
    set_addr $I10, rxquantr152_done
    rx150_cur."!mark_push"(0, -1, $I10)
  rxquantr152_loop:
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."decint"()
    unless $P10, rx150_fail
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx150_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
    set_addr $I10, rxquantr152_done
    (rx150_rep) = rx150_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr152_done
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I10)
  # rx literal  ","
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    ord $I11, rx150_tgt, $I11
    ne $I11, 44, rx150_fail
    add rx150_pos, 1
    goto rxquantr152_loop
  rxquantr152_done:
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "decints")
    if_null rx150_debug, debug_347
    rx150_cur."!cursor_debug"("PASS", "decints", " at pos=", rx150_pos)
  debug_347:
    .return (rx150_cur)
  rx150_restart:
.annotate 'line', 42
    if_null rx150_debug, debug_348
    rx150_cur."!cursor_debug"("NEXT", "decints")
  debug_348:
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    if_null rx150_debug, debug_349
    rx150_cur."!cursor_debug"("FAIL", "decints")
  debug_349:
    .return (rx150_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P154, "ResizablePMCArray"
    push $P154, ""
    .return ($P154)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_debug
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx156_cur
    .local pmc match
    .lex "$/", match
    length rx156_eos, rx156_tgt
    gt rx156_pos, rx156_eos, rx156_done
    set rx156_off, 0
    lt rx156_pos, 2, rx156_start
    sub rx156_off, rx156_pos, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
    eq $I10, 1, rx156_restart
    if_null rx156_debug, debug_350
    rx156_cur."!cursor_debug"("START", "hexint")
  debug_350:
    $I10 = self.'from'()
    ne $I10, -1, rxscan157_done
    goto rxscan157_scan
  rxscan157_loop:
    (rx156_pos) = rx156_cur."from"()
    inc rx156_pos
    rx156_cur."!cursor_from"(rx156_pos)
    ge rx156_pos, rx156_eos, rxscan157_done
  rxscan157_scan:
    set_addr $I10, rxscan157_loop
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  rxscan157_done:
.annotate 'line', 60
  # rx rxquantr158 ** 1..*
    set_addr $I10, rxquantr158_done
    rx156_cur."!mark_push"(0, -1, $I10)
  rxquantr158_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx156_pos, rx156_off
    set rx156_rep, 0
    sub $I12, rx156_eos, rx156_pos
  rxenumcharlistq159_loop:
    le $I12, 0, rxenumcharlistq159_done
    substr $S10, rx156_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq159_done
    inc rx156_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq159_loop
  rxenumcharlistq159_done:
    lt rx156_rep, 1, rx156_fail
    add rx156_pos, rx156_pos, rx156_rep
    set_addr $I10, rxquantr158_done
    (rx156_rep) = rx156_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr158_done
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I10)
  # rx literal  "_"
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    ord $I11, rx156_tgt, $I11
    ne $I11, 95, rx156_fail
    add rx156_pos, 1
    goto rxquantr158_loop
  rxquantr158_done:
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "hexint")
    if_null rx156_debug, debug_351
    rx156_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx156_pos)
  debug_351:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 42
    if_null rx156_debug, debug_352
    rx156_cur."!cursor_debug"("NEXT", "hexint")
  debug_352:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_353
    rx156_cur."!cursor_debug"("FAIL", "hexint")
  debug_353:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P161, "ResizablePMCArray"
    push $P161, ""
    .return ($P161)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    .local pmc rx163_debug
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx163_cur
    .local pmc match
    .lex "$/", match
    length rx163_eos, rx163_tgt
    gt rx163_pos, rx163_eos, rx163_done
    set rx163_off, 0
    lt rx163_pos, 2, rx163_start
    sub rx163_off, rx163_pos, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
    eq $I10, 1, rx163_restart
    if_null rx163_debug, debug_354
    rx163_cur."!cursor_debug"("START", "hexints")
  debug_354:
    $I10 = self.'from'()
    ne $I10, -1, rxscan164_done
    goto rxscan164_scan
  rxscan164_loop:
    (rx163_pos) = rx163_cur."from"()
    inc rx163_pos
    rx163_cur."!cursor_from"(rx163_pos)
    ge rx163_pos, rx163_eos, rxscan164_done
  rxscan164_scan:
    set_addr $I10, rxscan164_loop
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  rxscan164_done:
.annotate 'line', 61
  # rx rxquantr165 ** 1..*
    set_addr $I10, rxquantr165_done
    rx163_cur."!mark_push"(0, -1, $I10)
  rxquantr165_loop:
  # rx subrule "ws" subtype=method negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."ws"()
    unless $P10, rx163_fail
    rx163_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."hexint"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx163_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."ws"()
    unless $P10, rx163_fail
    rx163_pos = $P10."pos"()
    set_addr $I10, rxquantr165_done
    (rx163_rep) = rx163_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr165_done
    rx163_cur."!mark_push"(rx163_rep, rx163_pos, $I10)
  # rx literal  ","
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    ord $I11, rx163_tgt, $I11
    ne $I11, 44, rx163_fail
    add rx163_pos, 1
    goto rxquantr165_loop
  rxquantr165_done:
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "hexints")
    if_null rx163_debug, debug_355
    rx163_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx163_pos)
  debug_355:
    .return (rx163_cur)
  rx163_restart:
.annotate 'line', 42
    if_null rx163_debug, debug_356
    rx163_cur."!cursor_debug"("NEXT", "hexints")
  debug_356:
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    if_null rx163_debug, debug_357
    rx163_cur."!cursor_debug"("FAIL", "hexints")
  debug_357:
    .return (rx163_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P167, "ResizablePMCArray"
    push $P167, ""
    .return ($P167)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    .local pmc rx169_debug
    (rx169_cur, rx169_pos, rx169_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    gt rx169_pos, rx169_eos, rx169_done
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    eq $I10, 1, rx169_restart
    if_null rx169_debug, debug_358
    rx169_cur."!cursor_debug"("START", "octint")
  debug_358:
    $I10 = self.'from'()
    ne $I10, -1, rxscan170_done
    goto rxscan170_scan
  rxscan170_loop:
    (rx169_pos) = rx169_cur."from"()
    inc rx169_pos
    rx169_cur."!cursor_from"(rx169_pos)
    ge rx169_pos, rx169_eos, rxscan170_done
  rxscan170_scan:
    set_addr $I10, rxscan170_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan170_done:
.annotate 'line', 63
  # rx rxquantr171 ** 1..*
    set_addr $I10, rxquantr171_done
    rx169_cur."!mark_push"(0, -1, $I10)
  rxquantr171_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx169_pos, rx169_off
    set rx169_rep, 0
    sub $I12, rx169_eos, rx169_pos
  rxenumcharlistq172_loop:
    le $I12, 0, rxenumcharlistq172_done
    substr $S10, rx169_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq172_done
    inc rx169_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq172_loop
  rxenumcharlistq172_done:
    lt rx169_rep, 1, rx169_fail
    add rx169_pos, rx169_pos, rx169_rep
    set_addr $I10, rxquantr171_done
    (rx169_rep) = rx169_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr171_done
    rx169_cur."!mark_push"(rx169_rep, rx169_pos, $I10)
  # rx literal  "_"
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    ord $I11, rx169_tgt, $I11
    ne $I11, 95, rx169_fail
    add rx169_pos, 1
    goto rxquantr171_loop
  rxquantr171_done:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "octint")
    if_null rx169_debug, debug_359
    rx169_cur."!cursor_debug"("PASS", "octint", " at pos=", rx169_pos)
  debug_359:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 42
    if_null rx169_debug, debug_360
    rx169_cur."!cursor_debug"("NEXT", "octint")
  debug_360:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_361
    rx169_cur."!cursor_debug"("FAIL", "octint")
  debug_361:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P174, "ResizablePMCArray"
    push $P174, ""
    .return ($P174)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_debug
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    rx176_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx176_cur
    .local pmc match
    .lex "$/", match
    length rx176_eos, rx176_tgt
    gt rx176_pos, rx176_eos, rx176_done
    set rx176_off, 0
    lt rx176_pos, 2, rx176_start
    sub rx176_off, rx176_pos, 1
    substr rx176_tgt, rx176_tgt, rx176_off
  rx176_start:
    eq $I10, 1, rx176_restart
    if_null rx176_debug, debug_362
    rx176_cur."!cursor_debug"("START", "octints")
  debug_362:
    $I10 = self.'from'()
    ne $I10, -1, rxscan177_done
    goto rxscan177_scan
  rxscan177_loop:
    (rx176_pos) = rx176_cur."from"()
    inc rx176_pos
    rx176_cur."!cursor_from"(rx176_pos)
    ge rx176_pos, rx176_eos, rxscan177_done
  rxscan177_scan:
    set_addr $I10, rxscan177_loop
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxscan177_done:
.annotate 'line', 64
  # rx rxquantr178 ** 1..*
    set_addr $I10, rxquantr178_done
    rx176_cur."!mark_push"(0, -1, $I10)
  rxquantr178_loop:
  # rx subrule "ws" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."ws"()
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."octint"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx176_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."ws"()
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
    set_addr $I10, rxquantr178_done
    (rx176_rep) = rx176_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr178_done
    rx176_cur."!mark_push"(rx176_rep, rx176_pos, $I10)
  # rx literal  ","
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    ord $I11, rx176_tgt, $I11
    ne $I11, 44, rx176_fail
    add rx176_pos, 1
    goto rxquantr178_loop
  rxquantr178_done:
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "octints")
    if_null rx176_debug, debug_363
    rx176_cur."!cursor_debug"("PASS", "octints", " at pos=", rx176_pos)
  debug_363:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 42
    if_null rx176_debug, debug_364
    rx176_cur."!cursor_debug"("NEXT", "octints")
  debug_364:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_365
    rx176_cur."!cursor_debug"("FAIL", "octints")
  debug_365:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P180, "ResizablePMCArray"
    push $P180, ""
    .return ($P180)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_debug
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    gt rx182_pos, rx182_eos, rx182_done
    set rx182_off, 0
    lt rx182_pos, 2, rx182_start
    sub rx182_off, rx182_pos, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
    eq $I10, 1, rx182_restart
    if_null rx182_debug, debug_366
    rx182_cur."!cursor_debug"("START", "binint")
  debug_366:
    $I10 = self.'from'()
    ne $I10, -1, rxscan183_done
    goto rxscan183_scan
  rxscan183_loop:
    (rx182_pos) = rx182_cur."from"()
    inc rx182_pos
    rx182_cur."!cursor_from"(rx182_pos)
    ge rx182_pos, rx182_eos, rxscan183_done
  rxscan183_scan:
    set_addr $I10, rxscan183_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  rxscan183_done:
.annotate 'line', 66
  # rx rxquantr184 ** 1..*
    set_addr $I10, rxquantr184_done
    rx182_cur."!mark_push"(0, -1, $I10)
  rxquantr184_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx182_pos, rx182_off
    set rx182_rep, 0
    sub $I12, rx182_eos, rx182_pos
  rxenumcharlistq185_loop:
    le $I12, 0, rxenumcharlistq185_done
    substr $S10, rx182_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq185_done
    inc rx182_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq185_loop
  rxenumcharlistq185_done:
    lt rx182_rep, 1, rx182_fail
    add rx182_pos, rx182_pos, rx182_rep
    set_addr $I10, rxquantr184_done
    (rx182_rep) = rx182_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr184_done
    rx182_cur."!mark_push"(rx182_rep, rx182_pos, $I10)
  # rx literal  "_"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 95, rx182_fail
    add rx182_pos, 1
    goto rxquantr184_loop
  rxquantr184_done:
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "binint")
    if_null rx182_debug, debug_367
    rx182_cur."!cursor_debug"("PASS", "binint", " at pos=", rx182_pos)
  debug_367:
    .return (rx182_cur)
  rx182_restart:
.annotate 'line', 42
    if_null rx182_debug, debug_368
    rx182_cur."!cursor_debug"("NEXT", "binint")
  debug_368:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_369
    rx182_cur."!cursor_debug"("FAIL", "binint")
  debug_369:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P187, "ResizablePMCArray"
    push $P187, ""
    .return ($P187)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    .local pmc rx189_debug
    (rx189_cur, rx189_pos, rx189_tgt, $I10) = self."!cursor_start"()
    rx189_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx189_cur
    .local pmc match
    .lex "$/", match
    length rx189_eos, rx189_tgt
    gt rx189_pos, rx189_eos, rx189_done
    set rx189_off, 0
    lt rx189_pos, 2, rx189_start
    sub rx189_off, rx189_pos, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
    eq $I10, 1, rx189_restart
    if_null rx189_debug, debug_370
    rx189_cur."!cursor_debug"("START", "binints")
  debug_370:
    $I10 = self.'from'()
    ne $I10, -1, rxscan190_done
    goto rxscan190_scan
  rxscan190_loop:
    (rx189_pos) = rx189_cur."from"()
    inc rx189_pos
    rx189_cur."!cursor_from"(rx189_pos)
    ge rx189_pos, rx189_eos, rxscan190_done
  rxscan190_scan:
    set_addr $I10, rxscan190_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxscan190_done:
.annotate 'line', 67
  # rx rxquantr191 ** 1..*
    set_addr $I10, rxquantr191_done
    rx189_cur."!mark_push"(0, -1, $I10)
  rxquantr191_loop:
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."binint"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx189_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
    set_addr $I10, rxquantr191_done
    (rx189_rep) = rx189_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr191_done
    rx189_cur."!mark_push"(rx189_rep, rx189_pos, $I10)
  # rx literal  ","
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail
    sub $I11, rx189_pos, rx189_off
    ord $I11, rx189_tgt, $I11
    ne $I11, 44, rx189_fail
    add rx189_pos, 1
    goto rxquantr191_loop
  rxquantr191_done:
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "binints")
    if_null rx189_debug, debug_371
    rx189_cur."!cursor_debug"("PASS", "binints", " at pos=", rx189_pos)
  debug_371:
    .return (rx189_cur)
  rx189_restart:
.annotate 'line', 42
    if_null rx189_debug, debug_372
    rx189_cur."!cursor_debug"("NEXT", "binints")
  debug_372:
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    if_null rx189_debug, debug_373
    rx189_cur."!cursor_debug"("FAIL", "binints")
  debug_373:
    .return (rx189_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P193, "ResizablePMCArray"
    push $P193, ""
    .return ($P193)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_debug
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx195_cur
    .local pmc match
    .lex "$/", match
    length rx195_eos, rx195_tgt
    gt rx195_pos, rx195_eos, rx195_done
    set rx195_off, 0
    lt rx195_pos, 2, rx195_start
    sub rx195_off, rx195_pos, 1
    substr rx195_tgt, rx195_tgt, rx195_off
  rx195_start:
    eq $I10, 1, rx195_restart
    if_null rx195_debug, debug_374
    rx195_cur."!cursor_debug"("START", "integer")
  debug_374:
    $I10 = self.'from'()
    ne $I10, -1, rxscan196_done
    goto rxscan196_scan
  rxscan196_loop:
    (rx195_pos) = rx195_cur."from"()
    inc rx195_pos
    rx195_cur."!cursor_from"(rx195_pos)
    ge rx195_pos, rx195_eos, rxscan196_done
  rxscan196_scan:
    set_addr $I10, rxscan196_loop
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxscan196_done:
  alt197_0:
.annotate 'line', 70
    set_addr $I10, alt197_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 71
  # rx literal  "0"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 48, rx195_fail
    add rx195_pos, 1
  alt198_0:
    set_addr $I10, alt198_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx literal  "b"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 98, rx195_fail
    add rx195_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."binint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx195_pos = $P10."pos"()
    goto alt198_end
  alt198_1:
    set_addr $I10, alt198_2
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 72
  # rx literal  "o"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 111, rx195_fail
    add rx195_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."octint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx195_pos = $P10."pos"()
    goto alt198_end
  alt198_2:
    set_addr $I10, alt198_3
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 73
  # rx literal  "x"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 120, rx195_fail
    add rx195_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."hexint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx195_pos = $P10."pos"()
    goto alt198_end
  alt198_3:
.annotate 'line', 74
  # rx literal  "d"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 100, rx195_fail
    add rx195_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."decint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx195_pos = $P10."pos"()
  alt198_end:
.annotate 'line', 71
    goto alt197_end
  alt197_1:
.annotate 'line', 76
  # rx subrule "decint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."decint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx195_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 69
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "integer")
    if_null rx195_debug, debug_375
    rx195_cur."!cursor_debug"("PASS", "integer", " at pos=", rx195_pos)
  debug_375:
    .return (rx195_cur)
  rx195_restart:
.annotate 'line', 42
    if_null rx195_debug, debug_376
    rx195_cur."!cursor_debug"("NEXT", "integer")
  debug_376:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_377
    rx195_cur."!cursor_debug"("FAIL", "integer")
  debug_377:
    .return (rx195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    $P200 = self."!PREFIX__!subrule"("decint", "")
    $P201 = self."!PREFIX__!subrule"("decint", "0d")
    $P202 = self."!PREFIX__!subrule"("hexint", "0x")
    $P203 = self."!PREFIX__!subrule"("octint", "0o")
    $P204 = self."!PREFIX__!subrule"("binint", "0b")
    new $P205, "ResizablePMCArray"
    push $P205, $P200
    push $P205, $P201
    push $P205, $P202
    push $P205, $P203
    push $P205, $P204
    .return ($P205)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx207_tgt
    .local int rx207_pos
    .local int rx207_off
    .local int rx207_eos
    .local int rx207_rep
    .local pmc rx207_cur
    .local pmc rx207_debug
    (rx207_cur, rx207_pos, rx207_tgt, $I10) = self."!cursor_start"()
    rx207_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx207_cur
    .local pmc match
    .lex "$/", match
    length rx207_eos, rx207_tgt
    gt rx207_pos, rx207_eos, rx207_done
    set rx207_off, 0
    lt rx207_pos, 2, rx207_start
    sub rx207_off, rx207_pos, 1
    substr rx207_tgt, rx207_tgt, rx207_off
  rx207_start:
    eq $I10, 1, rx207_restart
    if_null rx207_debug, debug_378
    rx207_cur."!cursor_debug"("START", "dec_number")
  debug_378:
    $I10 = self.'from'()
    ne $I10, -1, rxscan208_done
    goto rxscan208_scan
  rxscan208_loop:
    (rx207_pos) = rx207_cur."from"()
    inc rx207_pos
    rx207_cur."!cursor_from"(rx207_pos)
    ge rx207_pos, rx207_eos, rxscan208_done
  rxscan208_scan:
    set_addr $I10, rxscan208_loop
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxscan208_done:
  alt209_0:
.annotate 'line', 80
    set_addr $I10, alt209_1
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_210_fail
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  # rx literal  "."
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    ord $I11, rx207_tgt, $I11
    ne $I11, 46, rx207_fail
    add rx207_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
    set_addr $I10, rxcap_210_fail
    ($I12, $I11) = rx207_cur."!mark_peek"($I10)
    rx207_cur."!cursor_pos"($I11)
    ($P10) = rx207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx207_pos, "")
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_210_done
  rxcap_210_fail:
    goto rx207_fail
  rxcap_210_done:
  # rx rxquantr211 ** 0..1
    set_addr $I10, rxquantr211_done
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxquantr211_loop:
  # rx subrule "escale" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."escale"()
    unless $P10, rx207_fail
    goto rxsubrule212_pass
  rxsubrule212_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx207_fail
  rxsubrule212_pass:
    set_addr $I10, rxsubrule212_back
    rx207_cur."!mark_push"(0, rx207_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx207_pos = $P10."pos"()
    set_addr $I10, rxquantr211_done
    (rx207_rep) = rx207_cur."!mark_commit"($I10)
  rxquantr211_done:
    goto alt209_end
  alt209_1:
    set_addr $I10, alt209_2
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate 'line', 82
  # rx subcapture "coeff"
    set_addr $I10, rxcap_213_fail
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
  # rx literal  "."
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    ord $I11, rx207_tgt, $I11
    ne $I11, 46, rx207_fail
    add rx207_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
    set_addr $I10, rxcap_213_fail
    ($I12, $I11) = rx207_cur."!mark_peek"($I10)
    rx207_cur."!cursor_pos"($I11)
    ($P10) = rx207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx207_pos, "")
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_213_done
  rxcap_213_fail:
    goto rx207_fail
  rxcap_213_done:
  # rx rxquantr214 ** 0..1
    set_addr $I10, rxquantr214_done
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxquantr214_loop:
  # rx subrule "escale" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."escale"()
    unless $P10, rx207_fail
    goto rxsubrule215_pass
  rxsubrule215_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx207_fail
  rxsubrule215_pass:
    set_addr $I10, rxsubrule215_back
    rx207_cur."!mark_push"(0, rx207_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx207_pos = $P10."pos"()
    set_addr $I10, rxquantr214_done
    (rx207_rep) = rx207_cur."!mark_commit"($I10)
  rxquantr214_done:
    goto alt209_end
  alt209_2:
.annotate 'line', 83
  # rx subcapture "coeff"
    set_addr $I10, rxcap_216_fail
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
    set_addr $I10, rxcap_216_fail
    ($I12, $I11) = rx207_cur."!mark_peek"($I10)
    rx207_cur."!cursor_pos"($I11)
    ($P10) = rx207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx207_pos, "")
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_216_done
  rxcap_216_fail:
    goto rx207_fail
  rxcap_216_done:
  # rx subrule "escale" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."escale"()
    unless $P10, rx207_fail
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx207_pos = $P10."pos"()
  alt209_end:
.annotate 'line', 80
  # rx pass
    rx207_cur."!cursor_pass"(rx207_pos, "dec_number")
    if_null rx207_debug, debug_379
    rx207_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx207_pos)
  debug_379:
    .return (rx207_cur)
  rx207_restart:
.annotate 'line', 42
    if_null rx207_debug, debug_380
    rx207_cur."!cursor_debug"("NEXT", "dec_number")
  debug_380:
  rx207_fail:
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    if_null rx207_debug, debug_381
    rx207_cur."!cursor_debug"("FAIL", "dec_number")
  debug_381:
    .return (rx207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P218, "ResizablePMCArray"
    push $P218, ""
    push $P218, ""
    push $P218, "."
    .return ($P218)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    .local pmc rx220_debug
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx220_cur
    .local pmc match
    .lex "$/", match
    length rx220_eos, rx220_tgt
    gt rx220_pos, rx220_eos, rx220_done
    set rx220_off, 0
    lt rx220_pos, 2, rx220_start
    sub rx220_off, rx220_pos, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
    eq $I10, 1, rx220_restart
    if_null rx220_debug, debug_382
    rx220_cur."!cursor_debug"("START", "escale")
  debug_382:
    $I10 = self.'from'()
    ne $I10, -1, rxscan221_done
    goto rxscan221_scan
  rxscan221_loop:
    (rx220_pos) = rx220_cur."from"()
    inc rx220_pos
    rx220_cur."!cursor_from"(rx220_pos)
    ge rx220_pos, rx220_eos, rxscan221_done
  rxscan221_scan:
    set_addr $I10, rxscan221_loop
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  rxscan221_done:
.annotate 'line', 86
  # rx enumcharlist negate=0 
    ge rx220_pos, rx220_eos, rx220_fail
    sub $I10, rx220_pos, rx220_off
    substr $S10, rx220_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx220_fail
    inc rx220_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx220_pos, rx220_off
    set rx220_rep, 0
    sub $I12, rx220_eos, rx220_pos
    le $I12, 1, rxenumcharlistq222_loop
    set $I12, 1
  rxenumcharlistq222_loop:
    le $I12, 0, rxenumcharlistq222_done
    substr $S10, rx220_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq222_done
    inc rx220_rep
  rxenumcharlistq222_done:
    add rx220_pos, rx220_pos, rx220_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx220_pos, rx220_off
    find_not_cclass $I11, 8, rx220_tgt, $I10, rx220_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx220_fail
    add rx220_pos, rx220_off, $I11
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "escale")
    if_null rx220_debug, debug_383
    rx220_cur."!cursor_debug"("PASS", "escale", " at pos=", rx220_pos)
  debug_383:
    .return (rx220_cur)
  rx220_restart:
.annotate 'line', 42
    if_null rx220_debug, debug_384
    rx220_cur."!cursor_debug"("NEXT", "escale")
  debug_384:
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    if_null rx220_debug, debug_385
    rx220_cur."!cursor_debug"("FAIL", "escale")
  debug_385:
    .return (rx220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P224, "ResizablePMCArray"
    push $P224, "e"
    push $P224, "E"
    .return ($P224)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1304459385.051")
    .param pmc param_226
.annotate 'line', 88
    .lex "self", param_226
    $P227 = param_226."!protoregex"("quote_escape")
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1304459385.051")
    .param pmc param_229
.annotate 'line', 88
    .lex "self", param_229
    $P230 = param_229."!PREFIX__!protoregex"("quote_escape")
    .return ($P230)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    .local pmc rx232_debug
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx232_cur
    .local pmc match
    .lex "$/", match
    length rx232_eos, rx232_tgt
    gt rx232_pos, rx232_eos, rx232_done
    set rx232_off, 0
    lt rx232_pos, 2, rx232_start
    sub rx232_off, rx232_pos, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
    eq $I10, 1, rx232_restart
    if_null rx232_debug, debug_386
    rx232_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_386:
    $I10 = self.'from'()
    ne $I10, -1, rxscan233_done
    goto rxscan233_scan
  rxscan233_loop:
    (rx232_pos) = rx232_cur."from"()
    inc rx232_pos
    rx232_cur."!cursor_from"(rx232_pos)
    ge rx232_pos, rx232_eos, rxscan233_done
  rxscan233_scan:
    set_addr $I10, rxscan233_loop
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  rxscan233_done:
.annotate 'line', 89
  # rx literal  "\\\\"
    add $I11, rx232_pos, 2
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 2
    ne $S10, "\\\\", rx232_fail
    add rx232_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."quotemod_check"("q")
    unless $P10, rx232_fail
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "quote_escape:sym<backslash>")
    if_null rx232_debug, debug_387
    rx232_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx232_pos)
  debug_387:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 42
    if_null rx232_debug, debug_388
    rx232_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_388:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_389
    rx232_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_389:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P235, "ResizablePMCArray"
    push $P235, "\\\\"
    .return ($P235)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx237_tgt
    .local int rx237_pos
    .local int rx237_off
    .local int rx237_eos
    .local int rx237_rep
    .local pmc rx237_cur
    .local pmc rx237_debug
    (rx237_cur, rx237_pos, rx237_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx237_cur
    .local pmc match
    .lex "$/", match
    length rx237_eos, rx237_tgt
    gt rx237_pos, rx237_eos, rx237_done
    set rx237_off, 0
    lt rx237_pos, 2, rx237_start
    sub rx237_off, rx237_pos, 1
    substr rx237_tgt, rx237_tgt, rx237_off
  rx237_start:
    eq $I10, 1, rx237_restart
    if_null rx237_debug, debug_390
    rx237_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_390:
    $I10 = self.'from'()
    ne $I10, -1, rxscan238_done
    goto rxscan238_scan
  rxscan238_loop:
    (rx237_pos) = rx237_cur."from"()
    inc rx237_pos
    rx237_cur."!cursor_from"(rx237_pos)
    ge rx237_pos, rx237_eos, rxscan238_done
  rxscan238_scan:
    set_addr $I10, rxscan238_loop
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  rxscan238_done:
.annotate 'line', 90
  # rx literal  "\\"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 92, rx237_fail
    add rx237_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."quotemod_check"("q")
    unless $P10, rx237_fail
  # rx subrule "stopper" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."stopper"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx237_pos = $P10."pos"()
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "quote_escape:sym<stopper>")
    if_null rx237_debug, debug_391
    rx237_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx237_pos)
  debug_391:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 42
    if_null rx237_debug, debug_392
    rx237_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_392:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_393
    rx237_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_393:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P240, "ResizablePMCArray"
    push $P240, "\\"
    .return ($P240)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    .local pmc rx242_debug
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx242_cur
    .local pmc match
    .lex "$/", match
    length rx242_eos, rx242_tgt
    gt rx242_pos, rx242_eos, rx242_done
    set rx242_off, 0
    lt rx242_pos, 2, rx242_start
    sub rx242_off, rx242_pos, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
    eq $I10, 1, rx242_restart
    if_null rx242_debug, debug_394
    rx242_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_394:
    $I10 = self.'from'()
    ne $I10, -1, rxscan243_done
    goto rxscan243_scan
  rxscan243_loop:
    (rx242_pos) = rx242_cur."from"()
    inc rx242_pos
    rx242_cur."!cursor_from"(rx242_pos)
    ge rx242_pos, rx242_eos, rxscan243_done
  rxscan243_scan:
    set_addr $I10, rxscan243_loop
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  rxscan243_done:
.annotate 'line', 92
  # rx literal  "\\b"
    add $I11, rx242_pos, 2
    gt $I11, rx242_eos, rx242_fail
    sub $I11, rx242_pos, rx242_off
    substr $S10, rx242_tgt, $I11, 2
    ne $S10, "\\b", rx242_fail
    add rx242_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."quotemod_check"("b")
    unless $P10, rx242_fail
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "quote_escape:sym<bs>")
    if_null rx242_debug, debug_395
    rx242_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx242_pos)
  debug_395:
    .return (rx242_cur)
  rx242_restart:
.annotate 'line', 42
    if_null rx242_debug, debug_396
    rx242_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_396:
  rx242_fail:
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    if_null rx242_debug, debug_397
    rx242_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_397:
    .return (rx242_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P245, "ResizablePMCArray"
    push $P245, "\\b"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    .local pmc rx247_debug
    (rx247_cur, rx247_pos, rx247_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx247_cur
    .local pmc match
    .lex "$/", match
    length rx247_eos, rx247_tgt
    gt rx247_pos, rx247_eos, rx247_done
    set rx247_off, 0
    lt rx247_pos, 2, rx247_start
    sub rx247_off, rx247_pos, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
    eq $I10, 1, rx247_restart
    if_null rx247_debug, debug_398
    rx247_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_398:
    $I10 = self.'from'()
    ne $I10, -1, rxscan248_done
    goto rxscan248_scan
  rxscan248_loop:
    (rx247_pos) = rx247_cur."from"()
    inc rx247_pos
    rx247_cur."!cursor_from"(rx247_pos)
    ge rx247_pos, rx247_eos, rxscan248_done
  rxscan248_scan:
    set_addr $I10, rxscan248_loop
    rx247_cur."!mark_push"(0, rx247_pos, $I10)
  rxscan248_done:
.annotate 'line', 93
  # rx literal  "\\n"
    add $I11, rx247_pos, 2
    gt $I11, rx247_eos, rx247_fail
    sub $I11, rx247_pos, rx247_off
    substr $S10, rx247_tgt, $I11, 2
    ne $S10, "\\n", rx247_fail
    add rx247_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."quotemod_check"("b")
    unless $P10, rx247_fail
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "quote_escape:sym<nl>")
    if_null rx247_debug, debug_399
    rx247_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx247_pos)
  debug_399:
    .return (rx247_cur)
  rx247_restart:
.annotate 'line', 42
    if_null rx247_debug, debug_400
    rx247_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_400:
  rx247_fail:
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    if_null rx247_debug, debug_401
    rx247_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_401:
    .return (rx247_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P250, "ResizablePMCArray"
    push $P250, "\\n"
    .return ($P250)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    .local pmc rx252_debug
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx252_cur
    .local pmc match
    .lex "$/", match
    length rx252_eos, rx252_tgt
    gt rx252_pos, rx252_eos, rx252_done
    set rx252_off, 0
    lt rx252_pos, 2, rx252_start
    sub rx252_off, rx252_pos, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
    eq $I10, 1, rx252_restart
    if_null rx252_debug, debug_402
    rx252_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_402:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    (rx252_pos) = rx252_cur."from"()
    inc rx252_pos
    rx252_cur."!cursor_from"(rx252_pos)
    ge rx252_pos, rx252_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  rxscan253_done:
.annotate 'line', 94
  # rx literal  "\\r"
    add $I11, rx252_pos, 2
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 2
    ne $S10, "\\r", rx252_fail
    add rx252_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."quotemod_check"("b")
    unless $P10, rx252_fail
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "quote_escape:sym<cr>")
    if_null rx252_debug, debug_403
    rx252_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx252_pos)
  debug_403:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 42
    if_null rx252_debug, debug_404
    rx252_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_404:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_405
    rx252_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_405:
    .return (rx252_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P255, "ResizablePMCArray"
    push $P255, "\\r"
    .return ($P255)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    .local pmc rx257_debug
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx257_cur
    .local pmc match
    .lex "$/", match
    length rx257_eos, rx257_tgt
    gt rx257_pos, rx257_eos, rx257_done
    set rx257_off, 0
    lt rx257_pos, 2, rx257_start
    sub rx257_off, rx257_pos, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
    eq $I10, 1, rx257_restart
    if_null rx257_debug, debug_406
    rx257_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_406:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    (rx257_pos) = rx257_cur."from"()
    inc rx257_pos
    rx257_cur."!cursor_from"(rx257_pos)
    ge rx257_pos, rx257_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  rxscan258_done:
.annotate 'line', 95
  # rx literal  "\\t"
    add $I11, rx257_pos, 2
    gt $I11, rx257_eos, rx257_fail
    sub $I11, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I11, 2
    ne $S10, "\\t", rx257_fail
    add rx257_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."quotemod_check"("b")
    unless $P10, rx257_fail
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "quote_escape:sym<tab>")
    if_null rx257_debug, debug_407
    rx257_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx257_pos)
  debug_407:
    .return (rx257_cur)
  rx257_restart:
.annotate 'line', 42
    if_null rx257_debug, debug_408
    rx257_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_408:
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    if_null rx257_debug, debug_409
    rx257_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_409:
    .return (rx257_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P260, "ResizablePMCArray"
    push $P260, "\\t"
    .return ($P260)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    .local pmc rx262_debug
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx262_cur
    .local pmc match
    .lex "$/", match
    length rx262_eos, rx262_tgt
    gt rx262_pos, rx262_eos, rx262_done
    set rx262_off, 0
    lt rx262_pos, 2, rx262_start
    sub rx262_off, rx262_pos, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
    eq $I10, 1, rx262_restart
    if_null rx262_debug, debug_410
    rx262_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_410:
    $I10 = self.'from'()
    ne $I10, -1, rxscan263_done
    goto rxscan263_scan
  rxscan263_loop:
    (rx262_pos) = rx262_cur."from"()
    inc rx262_pos
    rx262_cur."!cursor_from"(rx262_pos)
    ge rx262_pos, rx262_eos, rxscan263_done
  rxscan263_scan:
    set_addr $I10, rxscan263_loop
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  rxscan263_done:
.annotate 'line', 96
  # rx literal  "\\f"
    add $I11, rx262_pos, 2
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I11, 2
    ne $S10, "\\f", rx262_fail
    add rx262_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."quotemod_check"("b")
    unless $P10, rx262_fail
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "quote_escape:sym<ff>")
    if_null rx262_debug, debug_411
    rx262_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx262_pos)
  debug_411:
    .return (rx262_cur)
  rx262_restart:
.annotate 'line', 42
    if_null rx262_debug, debug_412
    rx262_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_412:
  rx262_fail:
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    if_null rx262_debug, debug_413
    rx262_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_413:
    .return (rx262_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P265, "ResizablePMCArray"
    push $P265, "\\f"
    .return ($P265)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    .local pmc rx267_debug
    (rx267_cur, rx267_pos, rx267_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx267_cur
    .local pmc match
    .lex "$/", match
    length rx267_eos, rx267_tgt
    gt rx267_pos, rx267_eos, rx267_done
    set rx267_off, 0
    lt rx267_pos, 2, rx267_start
    sub rx267_off, rx267_pos, 1
    substr rx267_tgt, rx267_tgt, rx267_off
  rx267_start:
    eq $I10, 1, rx267_restart
    if_null rx267_debug, debug_414
    rx267_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_414:
    $I10 = self.'from'()
    ne $I10, -1, rxscan268_done
    goto rxscan268_scan
  rxscan268_loop:
    (rx267_pos) = rx267_cur."from"()
    inc rx267_pos
    rx267_cur."!cursor_from"(rx267_pos)
    ge rx267_pos, rx267_eos, rxscan268_done
  rxscan268_scan:
    set_addr $I10, rxscan268_loop
    rx267_cur."!mark_push"(0, rx267_pos, $I10)
  rxscan268_done:
.annotate 'line', 97
  # rx literal  "\\e"
    add $I11, rx267_pos, 2
    gt $I11, rx267_eos, rx267_fail
    sub $I11, rx267_pos, rx267_off
    substr $S10, rx267_tgt, $I11, 2
    ne $S10, "\\e", rx267_fail
    add rx267_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx267_cur."!cursor_pos"(rx267_pos)
    $P10 = rx267_cur."quotemod_check"("b")
    unless $P10, rx267_fail
  # rx pass
    rx267_cur."!cursor_pass"(rx267_pos, "quote_escape:sym<esc>")
    if_null rx267_debug, debug_415
    rx267_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx267_pos)
  debug_415:
    .return (rx267_cur)
  rx267_restart:
.annotate 'line', 42
    if_null rx267_debug, debug_416
    rx267_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_416:
  rx267_fail:
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    if_null rx267_debug, debug_417
    rx267_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_417:
    .return (rx267_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P270, "ResizablePMCArray"
    push $P270, "\\e"
    .return ($P270)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    .local pmc rx272_debug
    (rx272_cur, rx272_pos, rx272_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx272_cur
    .local pmc match
    .lex "$/", match
    length rx272_eos, rx272_tgt
    gt rx272_pos, rx272_eos, rx272_done
    set rx272_off, 0
    lt rx272_pos, 2, rx272_start
    sub rx272_off, rx272_pos, 1
    substr rx272_tgt, rx272_tgt, rx272_off
  rx272_start:
    eq $I10, 1, rx272_restart
    if_null rx272_debug, debug_418
    rx272_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_418:
    $I10 = self.'from'()
    ne $I10, -1, rxscan273_done
    goto rxscan273_scan
  rxscan273_loop:
    (rx272_pos) = rx272_cur."from"()
    inc rx272_pos
    rx272_cur."!cursor_from"(rx272_pos)
    ge rx272_pos, rx272_eos, rxscan273_done
  rxscan273_scan:
    set_addr $I10, rxscan273_loop
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  rxscan273_done:
.annotate 'line', 99
  # rx literal  unicode:"\\x"
    add $I11, rx272_pos, 2
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx272_fail
    add rx272_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."quotemod_check"("b")
    unless $P10, rx272_fail
  alt274_0:
.annotate 'line', 100
    set_addr $I10, alt274_1
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."hexint"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx272_pos = $P10."pos"()
    goto alt274_end
  alt274_1:
  # rx literal  "["
    add $I11, rx272_pos, 1
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    ord $I11, rx272_tgt, $I11
    ne $I11, 91, rx272_fail
    add rx272_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."hexints"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx272_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx272_pos, 1
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    ord $I11, rx272_tgt, $I11
    ne $I11, 93, rx272_fail
    add rx272_pos, 1
  alt274_end:
.annotate 'line', 98
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "quote_escape:sym<hex>")
    if_null rx272_debug, debug_419
    rx272_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx272_pos)
  debug_419:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 42
    if_null rx272_debug, debug_420
    rx272_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_420:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_421
    rx272_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_421:
    .return (rx272_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P276, "ResizablePMCArray"
    push $P276, unicode:"\\x"
    .return ($P276)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx278_tgt
    .local int rx278_pos
    .local int rx278_off
    .local int rx278_eos
    .local int rx278_rep
    .local pmc rx278_cur
    .local pmc rx278_debug
    (rx278_cur, rx278_pos, rx278_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx278_cur
    .local pmc match
    .lex "$/", match
    length rx278_eos, rx278_tgt
    gt rx278_pos, rx278_eos, rx278_done
    set rx278_off, 0
    lt rx278_pos, 2, rx278_start
    sub rx278_off, rx278_pos, 1
    substr rx278_tgt, rx278_tgt, rx278_off
  rx278_start:
    eq $I10, 1, rx278_restart
    if_null rx278_debug, debug_422
    rx278_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_422:
    $I10 = self.'from'()
    ne $I10, -1, rxscan279_done
    goto rxscan279_scan
  rxscan279_loop:
    (rx278_pos) = rx278_cur."from"()
    inc rx278_pos
    rx278_cur."!cursor_from"(rx278_pos)
    ge rx278_pos, rx278_eos, rxscan279_done
  rxscan279_scan:
    set_addr $I10, rxscan279_loop
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  rxscan279_done:
.annotate 'line', 103
  # rx literal  "\\o"
    add $I11, rx278_pos, 2
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 2
    ne $S10, "\\o", rx278_fail
    add rx278_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."quotemod_check"("b")
    unless $P10, rx278_fail
  alt280_0:
.annotate 'line', 104
    set_addr $I10, alt280_1
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."octint"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx278_pos = $P10."pos"()
    goto alt280_end
  alt280_1:
  # rx literal  "["
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    ord $I11, rx278_tgt, $I11
    ne $I11, 91, rx278_fail
    add rx278_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."octints"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx278_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    ord $I11, rx278_tgt, $I11
    ne $I11, 93, rx278_fail
    add rx278_pos, 1
  alt280_end:
.annotate 'line', 102
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "quote_escape:sym<oct>")
    if_null rx278_debug, debug_423
    rx278_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx278_pos)
  debug_423:
    .return (rx278_cur)
  rx278_restart:
.annotate 'line', 42
    if_null rx278_debug, debug_424
    rx278_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_424:
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    if_null rx278_debug, debug_425
    rx278_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_425:
    .return (rx278_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P282, "ResizablePMCArray"
    push $P282, "\\o"
    .return ($P282)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx284_tgt
    .local int rx284_pos
    .local int rx284_off
    .local int rx284_eos
    .local int rx284_rep
    .local pmc rx284_cur
    .local pmc rx284_debug
    (rx284_cur, rx284_pos, rx284_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx284_cur
    .local pmc match
    .lex "$/", match
    length rx284_eos, rx284_tgt
    gt rx284_pos, rx284_eos, rx284_done
    set rx284_off, 0
    lt rx284_pos, 2, rx284_start
    sub rx284_off, rx284_pos, 1
    substr rx284_tgt, rx284_tgt, rx284_off
  rx284_start:
    eq $I10, 1, rx284_restart
    if_null rx284_debug, debug_426
    rx284_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_426:
    $I10 = self.'from'()
    ne $I10, -1, rxscan285_done
    goto rxscan285_scan
  rxscan285_loop:
    (rx284_pos) = rx284_cur."from"()
    inc rx284_pos
    rx284_cur."!cursor_from"(rx284_pos)
    ge rx284_pos, rx284_eos, rxscan285_done
  rxscan285_scan:
    set_addr $I10, rxscan285_loop
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  rxscan285_done:
.annotate 'line', 106
  # rx literal  "\\c"
    add $I11, rx284_pos, 2
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 2
    ne $S10, "\\c", rx284_fail
    add rx284_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."quotemod_check"("b")
    unless $P10, rx284_fail
  # rx subrule "charspec" subtype=capture negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."charspec"()
    unless $P10, rx284_fail
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx284_pos = $P10."pos"()
  # rx pass
    rx284_cur."!cursor_pass"(rx284_pos, "quote_escape:sym<chr>")
    if_null rx284_debug, debug_427
    rx284_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx284_pos)
  debug_427:
    .return (rx284_cur)
  rx284_restart:
.annotate 'line', 42
    if_null rx284_debug, debug_428
    rx284_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_428:
  rx284_fail:
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    if_null rx284_debug, debug_429
    rx284_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_429:
    .return (rx284_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P287, "ResizablePMCArray"
    push $P287, "\\c"
    .return ($P287)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx289_tgt
    .local int rx289_pos
    .local int rx289_off
    .local int rx289_eos
    .local int rx289_rep
    .local pmc rx289_cur
    .local pmc rx289_debug
    (rx289_cur, rx289_pos, rx289_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx289_cur
    .local pmc match
    .lex "$/", match
    length rx289_eos, rx289_tgt
    gt rx289_pos, rx289_eos, rx289_done
    set rx289_off, 0
    lt rx289_pos, 2, rx289_start
    sub rx289_off, rx289_pos, 1
    substr rx289_tgt, rx289_tgt, rx289_off
  rx289_start:
    eq $I10, 1, rx289_restart
    if_null rx289_debug, debug_430
    rx289_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan290_done
    goto rxscan290_scan
  rxscan290_loop:
    (rx289_pos) = rx289_cur."from"()
    inc rx289_pos
    rx289_cur."!cursor_from"(rx289_pos)
    ge rx289_pos, rx289_eos, rxscan290_done
  rxscan290_scan:
    set_addr $I10, rxscan290_loop
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  rxscan290_done:
.annotate 'line', 107
  # rx literal  "\\"
    add $I11, rx289_pos, 1
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    ord $I11, rx289_tgt, $I11
    ne $I11, 92, rx289_fail
    add rx289_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_291_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx literal  "0"
    add $I11, rx289_pos, 1
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    ord $I11, rx289_tgt, $I11
    ne $I11, 48, rx289_fail
    add rx289_pos, 1
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx289_fail
  rxcap_291_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx289_cur."!cursor_pos"(rx289_pos)
    $P10 = rx289_cur."quotemod_check"("b")
    unless $P10, rx289_fail
  # rx pass
    rx289_cur."!cursor_pass"(rx289_pos, "quote_escape:sym<0>")
    if_null rx289_debug, debug_431
    rx289_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx289_pos)
  debug_431:
    .return (rx289_cur)
  rx289_restart:
.annotate 'line', 42
    if_null rx289_debug, debug_432
    rx289_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_432:
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    if_null rx289_debug, debug_433
    rx289_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_433:
    .return (rx289_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P293, "ResizablePMCArray"
    push $P293, "\\0"
    .return ($P293)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .const 'Sub' $P312 = "96_1304459385.051" 
    capture_lex $P312
    .const 'Sub' $P305 = "95_1304459385.051" 
    capture_lex $P305
    .const 'Sub' $P300 = "94_1304459385.051" 
    capture_lex $P300
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    .local pmc rx295_debug
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    gt rx295_pos, rx295_eos, rx295_done
    set rx295_off, 0
    lt rx295_pos, 2, rx295_start
    sub rx295_off, rx295_pos, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
    eq $I10, 1, rx295_restart
    if_null rx295_debug, debug_434
    rx295_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_434:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    (rx295_pos) = rx295_cur."from"()
    inc rx295_pos
    rx295_cur."!cursor_from"(rx295_pos)
    ge rx295_pos, rx295_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  rxscan296_done:
.annotate 'line', 109
    rx295_cur."!cursor_pos"(rx295_pos)
    find_lex $P297, unicode:"$\x{a2}"
    $P298 = $P297."MATCH"()
    store_lex "$/", $P298
    .const 'Sub' $P300 = "94_1304459385.051" 
    capture_lex $P300
    $P301 = $P300()
  # rx literal  "\\"
    add $I11, rx295_pos, 1
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    ord $I11, rx295_tgt, $I11
    ne $I11, 92, rx295_fail
    add rx295_pos, 1
  alt302_0:
.annotate 'line', 110
    set_addr $I10, alt302_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate 'line', 111
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."quotemod_check"("b")
    unless $P10, rx295_fail
  alt303_0:
.annotate 'line', 112
    set_addr $I10, alt303_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate 'line', 113
  # rx subrule $P305 subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    .const 'Sub' $P305 = "95_1304459385.051" 
    capture_lex $P305
    $P10 = rx295_cur.$P305()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx295_pos = $P10."pos"()
    goto alt303_end
  alt303_1:
.annotate 'line', 114
  # rx subcapture "x"
    set_addr $I10, rxcap_308_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx charclass w
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    is_cclass $I11, 8192, rx295_tgt, $I10
    unless $I11, rx295_fail
    inc rx295_pos
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx295_fail
  rxcap_308_done:
    rx295_cur."!cursor_pos"(rx295_pos)
    find_lex $P309, unicode:"$\x{a2}"
    $P310 = $P309."MATCH"()
    store_lex "$/", $P310
    .const 'Sub' $P312 = "96_1304459385.051" 
    capture_lex $P312
    $P322 = $P312()
  alt303_end:
.annotate 'line', 111
    goto alt302_end
  alt302_1:
.annotate 'line', 116
  # rx subcapture "textq"
    set_addr $I10, rxcap_323_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx charclass .
    ge rx295_pos, rx295_eos, rx295_fail
    inc rx295_pos
    set_addr $I10, rxcap_323_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_323_done
  rxcap_323_fail:
    goto rx295_fail
  rxcap_323_done:
  alt302_end:
.annotate 'line', 108
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "quote_escape:sym<misc>")
    if_null rx295_debug, debug_442
    rx295_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx295_pos)
  debug_442:
    .return (rx295_cur)
  rx295_restart:
.annotate 'line', 42
    if_null rx295_debug, debug_443
    rx295_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_443:
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    if_null rx295_debug, debug_444
    rx295_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_444:
    .return (rx295_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("94_1304459385.051") :outer("93_1304459385.051")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block304"  :anon :subid("95_1304459385.051") :method :outer("93_1304459385.051")
.annotate 'line', 113
    .local string rx306_tgt
    .local int rx306_pos
    .local int rx306_off
    .local int rx306_eos
    .local int rx306_rep
    .local pmc rx306_cur
    .local pmc rx306_debug
    (rx306_cur, rx306_pos, rx306_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx306_cur
    .local pmc match
    .lex "$/", match
    length rx306_eos, rx306_tgt
    gt rx306_pos, rx306_eos, rx306_done
    set rx306_off, 0
    lt rx306_pos, 2, rx306_start
    sub rx306_off, rx306_pos, 1
    substr rx306_tgt, rx306_tgt, rx306_off
  rx306_start:
    eq $I10, 1, rx306_restart
    if_null rx306_debug, debug_435
    rx306_cur."!cursor_debug"("START", "")
  debug_435:
    $I10 = self.'from'()
    ne $I10, -1, rxscan307_done
    goto rxscan307_scan
  rxscan307_loop:
    (rx306_pos) = rx306_cur."from"()
    inc rx306_pos
    rx306_cur."!cursor_from"(rx306_pos)
    ge rx306_pos, rx306_eos, rxscan307_done
  rxscan307_scan:
    set_addr $I10, rxscan307_loop
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  rxscan307_done:
  # rx charclass W
    ge rx306_pos, rx306_eos, rx306_fail
    sub $I10, rx306_pos, rx306_off
    is_cclass $I11, 8192, rx306_tgt, $I10
    if $I11, rx306_fail
    inc rx306_pos
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "")
    if_null rx306_debug, debug_436
    rx306_cur."!cursor_debug"("PASS", "", " at pos=", rx306_pos)
  debug_436:
    .return (rx306_cur)
  rx306_restart:
    if_null rx306_debug, debug_437
    rx306_cur."!cursor_debug"("NEXT", "")
  debug_437:
  rx306_fail:
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    if_null rx306_debug, debug_438
    rx306_cur."!cursor_debug"("FAIL", "")
  debug_438:
    .return (rx306_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block311"  :anon :subid("96_1304459385.051") :outer("93_1304459385.051")
.annotate 'line', 114
    find_lex $P313, "$/"
    unless_null $P313, vivify_439
    new $P313, "Undef"
  vivify_439:
    $P314 = $P313."CURSOR"()
    new $P315, "String"
    assign $P315, "Unrecognized backslash sequence: '\\"
    find_lex $P316, "$/"
    unless_null $P316, vivify_440
    $P316 = root_new ['parrot';'Hash']
  vivify_440:
    set $P317, $P316["x"]
    unless_null $P317, vivify_441
    new $P317, "Undef"
  vivify_441:
    $S318 = $P317."Str"()
    concat $P319, $P315, $S318
    concat $P320, $P319, "'"
    $P321 = $P314."panic"($P320)
    .return ($P321)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P325, "ResizablePMCArray"
    push $P325, ""
    .return ($P325)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .const 'Sub' $P333 = "99_1304459385.051" 
    capture_lex $P333
    .local string rx327_tgt
    .local int rx327_pos
    .local int rx327_off
    .local int rx327_eos
    .local int rx327_rep
    .local pmc rx327_cur
    .local pmc rx327_debug
    (rx327_cur, rx327_pos, rx327_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx327_cur
    .local pmc match
    .lex "$/", match
    length rx327_eos, rx327_tgt
    gt rx327_pos, rx327_eos, rx327_done
    set rx327_off, 0
    lt rx327_pos, 2, rx327_start
    sub rx327_off, rx327_pos, 1
    substr rx327_tgt, rx327_tgt, rx327_off
  rx327_start:
    eq $I10, 1, rx327_restart
    if_null rx327_debug, debug_445
    rx327_cur."!cursor_debug"("START", "charname")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan328_done
    goto rxscan328_scan
  rxscan328_loop:
    (rx327_pos) = rx327_cur."from"()
    inc rx327_pos
    rx327_cur."!cursor_from"(rx327_pos)
    ge rx327_pos, rx327_eos, rxscan328_done
  rxscan328_scan:
    set_addr $I10, rxscan328_loop
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
  rxscan328_done:
  alt329_0:
.annotate 'line', 120
    set_addr $I10, alt329_1
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
.annotate 'line', 121
  # rx subrule "integer" subtype=capture negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."integer"()
    unless $P10, rx327_fail
    rx327_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx327_pos = $P10."pos"()
    goto alt329_end
  alt329_1:
.annotate 'line', 122
  # rx enumcharlist negate=0 
    ge rx327_pos, rx327_eos, rx327_fail
    sub $I10, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx327_fail
    inc rx327_pos
  # rx rxquantf330 ** 0..*
    set_addr $I10, rxquantf330_loop
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
    goto rxquantf330_done
  rxquantf330_loop:
  # rx enumcharlist negate=1 
    ge rx327_pos, rx327_eos, rx327_fail
    sub $I10, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx327_fail
    inc rx327_pos
    set_addr $I10, rxquantf330_loop
    rx327_cur."!mark_push"(rx327_rep, rx327_pos, $I10)
  rxquantf330_done:
  # rx enumcharlist negate=0 
    ge rx327_pos, rx327_eos, rx327_fail
    sub $I10, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx327_fail
    inc rx327_pos
.annotate 'line', 123
  # rx subrule "before" subtype=zerowidth negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    .const 'Sub' $P333 = "99_1304459385.051" 
    capture_lex $P333
    $P10 = rx327_cur."before"($P333)
    unless $P10, rx327_fail
  alt329_end:
.annotate 'line', 120
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "charname")
    if_null rx327_debug, debug_450
    rx327_cur."!cursor_debug"("PASS", "charname", " at pos=", rx327_pos)
  debug_450:
    .return (rx327_cur)
  rx327_restart:
.annotate 'line', 42
    if_null rx327_debug, debug_451
    rx327_cur."!cursor_debug"("NEXT", "charname")
  debug_451:
  rx327_fail:
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    if_null rx327_debug, debug_452
    rx327_cur."!cursor_debug"("FAIL", "charname")
  debug_452:
    .return (rx327_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block332"  :anon :subid("99_1304459385.051") :method :outer("98_1304459385.051")
.annotate 'line', 123
    .local string rx334_tgt
    .local int rx334_pos
    .local int rx334_off
    .local int rx334_eos
    .local int rx334_rep
    .local pmc rx334_cur
    .local pmc rx334_debug
    (rx334_cur, rx334_pos, rx334_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx334_cur
    .local pmc match
    .lex "$/", match
    length rx334_eos, rx334_tgt
    gt rx334_pos, rx334_eos, rx334_done
    set rx334_off, 0
    lt rx334_pos, 2, rx334_start
    sub rx334_off, rx334_pos, 1
    substr rx334_tgt, rx334_tgt, rx334_off
  rx334_start:
    eq $I10, 1, rx334_restart
    if_null rx334_debug, debug_446
    rx334_cur."!cursor_debug"("START", "")
  debug_446:
    $I10 = self.'from'()
    ne $I10, -1, rxscan335_done
    goto rxscan335_scan
  rxscan335_loop:
    (rx334_pos) = rx334_cur."from"()
    inc rx334_pos
    rx334_cur."!cursor_from"(rx334_pos)
    ge rx334_pos, rx334_eos, rxscan335_done
  rxscan335_scan:
    set_addr $I10, rxscan335_loop
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  rxscan335_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx334_pos, rx334_off
    find_not_cclass $I11, 32, rx334_tgt, $I10, rx334_eos
    add rx334_pos, rx334_off, $I11
  # rx enumcharlist negate=0 
    ge rx334_pos, rx334_eos, rx334_fail
    sub $I10, rx334_pos, rx334_off
    substr $S10, rx334_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx334_fail
    inc rx334_pos
  # rx pass
    rx334_cur."!cursor_pass"(rx334_pos, "")
    if_null rx334_debug, debug_447
    rx334_cur."!cursor_debug"("PASS", "", " at pos=", rx334_pos)
  debug_447:
    .return (rx334_cur)
  rx334_restart:
    if_null rx334_debug, debug_448
    rx334_cur."!cursor_debug"("NEXT", "")
  debug_448:
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    if_null rx334_debug, debug_449
    rx334_cur."!cursor_debug"("FAIL", "")
  debug_449:
    .return (rx334_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    $P337 = self."!PREFIX__!subrule"("integer", "")
    new $P338, "ResizablePMCArray"
    push $P338, "Z"
    push $P338, "Y"
    push $P338, "X"
    push $P338, "W"
    push $P338, "V"
    push $P338, "U"
    push $P338, "T"
    push $P338, "S"
    push $P338, "R"
    push $P338, "Q"
    push $P338, "P"
    push $P338, "O"
    push $P338, "N"
    push $P338, "M"
    push $P338, "L"
    push $P338, "K"
    push $P338, "J"
    push $P338, "I"
    push $P338, "H"
    push $P338, "G"
    push $P338, "F"
    push $P338, "E"
    push $P338, "D"
    push $P338, "C"
    push $P338, "B"
    push $P338, "A"
    push $P338, "z"
    push $P338, "y"
    push $P338, "x"
    push $P338, "w"
    push $P338, "v"
    push $P338, "u"
    push $P338, "t"
    push $P338, "s"
    push $P338, "r"
    push $P338, "q"
    push $P338, "p"
    push $P338, "o"
    push $P338, "n"
    push $P338, "m"
    push $P338, "l"
    push $P338, "k"
    push $P338, "j"
    push $P338, "i"
    push $P338, "h"
    push $P338, "g"
    push $P338, "f"
    push $P338, "e"
    push $P338, "d"
    push $P338, "c"
    push $P338, "b"
    push $P338, "a"
    push $P338, $P337
    .return ($P338)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx340_tgt
    .local int rx340_pos
    .local int rx340_off
    .local int rx340_eos
    .local int rx340_rep
    .local pmc rx340_cur
    .local pmc rx340_debug
    (rx340_cur, rx340_pos, rx340_tgt, $I10) = self."!cursor_start"()
    rx340_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx340_cur
    .local pmc match
    .lex "$/", match
    length rx340_eos, rx340_tgt
    gt rx340_pos, rx340_eos, rx340_done
    set rx340_off, 0
    lt rx340_pos, 2, rx340_start
    sub rx340_off, rx340_pos, 1
    substr rx340_tgt, rx340_tgt, rx340_off
  rx340_start:
    eq $I10, 1, rx340_restart
    if_null rx340_debug, debug_453
    rx340_cur."!cursor_debug"("START", "charnames")
  debug_453:
    $I10 = self.'from'()
    ne $I10, -1, rxscan341_done
    goto rxscan341_scan
  rxscan341_loop:
    (rx340_pos) = rx340_cur."from"()
    inc rx340_pos
    rx340_cur."!cursor_from"(rx340_pos)
    ge rx340_pos, rx340_eos, rxscan341_done
  rxscan341_scan:
    set_addr $I10, rxscan341_loop
    rx340_cur."!mark_push"(0, rx340_pos, $I10)
  rxscan341_done:
.annotate 'line', 125
  # rx rxquantr342 ** 1..*
    set_addr $I10, rxquantr342_done
    rx340_cur."!mark_push"(0, -1, $I10)
  rxquantr342_loop:
  # rx subrule "ws" subtype=method negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."ws"()
    unless $P10, rx340_fail
    rx340_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."charname"()
    unless $P10, rx340_fail
    rx340_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx340_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."ws"()
    unless $P10, rx340_fail
    rx340_pos = $P10."pos"()
    set_addr $I10, rxquantr342_done
    (rx340_rep) = rx340_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr342_done
    rx340_cur."!mark_push"(rx340_rep, rx340_pos, $I10)
  # rx literal  ","
    add $I11, rx340_pos, 1
    gt $I11, rx340_eos, rx340_fail
    sub $I11, rx340_pos, rx340_off
    ord $I11, rx340_tgt, $I11
    ne $I11, 44, rx340_fail
    add rx340_pos, 1
    goto rxquantr342_loop
  rxquantr342_done:
  # rx pass
    rx340_cur."!cursor_pass"(rx340_pos, "charnames")
    if_null rx340_debug, debug_454
    rx340_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx340_pos)
  debug_454:
    .return (rx340_cur)
  rx340_restart:
.annotate 'line', 42
    if_null rx340_debug, debug_455
    rx340_cur."!cursor_debug"("NEXT", "charnames")
  debug_455:
  rx340_fail:
    (rx340_rep, rx340_pos, $I10, $P10) = rx340_cur."!mark_fail"(0)
    lt rx340_pos, -1, rx340_done
    eq rx340_pos, -1, rx340_fail
    jump $I10
  rx340_done:
    rx340_cur."!cursor_fail"()
    if_null rx340_debug, debug_456
    rx340_cur."!cursor_debug"("FAIL", "charnames")
  debug_456:
    .return (rx340_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    new $P344, "ResizablePMCArray"
    push $P344, ""
    .return ($P344)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    .local string rx346_tgt
    .local int rx346_pos
    .local int rx346_off
    .local int rx346_eos
    .local int rx346_rep
    .local pmc rx346_cur
    .local pmc rx346_debug
    (rx346_cur, rx346_pos, rx346_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx346_cur
    .local pmc match
    .lex "$/", match
    length rx346_eos, rx346_tgt
    gt rx346_pos, rx346_eos, rx346_done
    set rx346_off, 0
    lt rx346_pos, 2, rx346_start
    sub rx346_off, rx346_pos, 1
    substr rx346_tgt, rx346_tgt, rx346_off
  rx346_start:
    eq $I10, 1, rx346_restart
    if_null rx346_debug, debug_457
    rx346_cur."!cursor_debug"("START", "charspec")
  debug_457:
    $I10 = self.'from'()
    ne $I10, -1, rxscan347_done
    goto rxscan347_scan
  rxscan347_loop:
    (rx346_pos) = rx346_cur."from"()
    inc rx346_pos
    rx346_cur."!cursor_from"(rx346_pos)
    ge rx346_pos, rx346_eos, rxscan347_done
  rxscan347_scan:
    set_addr $I10, rxscan347_loop
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
  rxscan347_done:
  alt348_0:
.annotate 'line', 127
    set_addr $I10, alt348_1
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate 'line', 128
  # rx literal  "["
    add $I11, rx346_pos, 1
    gt $I11, rx346_eos, rx346_fail
    sub $I11, rx346_pos, rx346_off
    ord $I11, rx346_tgt, $I11
    ne $I11, 91, rx346_fail
    add rx346_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."charnames"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx346_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx346_pos, 1
    gt $I11, rx346_eos, rx346_fail
    sub $I11, rx346_pos, rx346_off
    ord $I11, rx346_tgt, $I11
    ne $I11, 93, rx346_fail
    add rx346_pos, 1
    goto alt348_end
  alt348_1:
    set_addr $I10, alt348_2
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate 'line', 129
  # rx charclass_q d r 1..-1
    sub $I10, rx346_pos, rx346_off
    find_not_cclass $I11, 8, rx346_tgt, $I10, rx346_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx346_fail
    add rx346_pos, rx346_off, $I11
  # rx rxquantr349 ** 0..*
    set_addr $I10, rxquantr349_done
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
  rxquantr349_loop:
  # rx literal  "_"
    add $I11, rx346_pos, 1
    gt $I11, rx346_eos, rx346_fail
    sub $I11, rx346_pos, rx346_off
    ord $I11, rx346_tgt, $I11
    ne $I11, 95, rx346_fail
    add rx346_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx346_pos, rx346_off
    find_not_cclass $I11, 8, rx346_tgt, $I10, rx346_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx346_fail
    add rx346_pos, rx346_off, $I11
    set_addr $I10, rxquantr349_done
    (rx346_rep) = rx346_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr349_done
    rx346_cur."!mark_push"(rx346_rep, rx346_pos, $I10)
    goto rxquantr349_loop
  rxquantr349_done:
    goto alt348_end
  alt348_2:
    set_addr $I10, alt348_3
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate 'line', 130
  # rx enumcharlist negate=0 
    ge rx346_pos, rx346_eos, rx346_fail
    sub $I10, rx346_pos, rx346_off
    substr $S10, rx346_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx346_fail
    inc rx346_pos
    goto alt348_end
  alt348_3:
.annotate 'line', 131
  # rx subrule "panic" subtype=method negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."panic"("Unrecognized \\c character")
    unless $P10, rx346_fail
    rx346_pos = $P10."pos"()
  alt348_end:
.annotate 'line', 126
  # rx pass
    rx346_cur."!cursor_pass"(rx346_pos, "charspec")
    if_null rx346_debug, debug_458
    rx346_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx346_pos)
  debug_458:
    .return (rx346_cur)
  rx346_restart:
.annotate 'line', 42
    if_null rx346_debug, debug_459
    rx346_cur."!cursor_debug"("NEXT", "charspec")
  debug_459:
  rx346_fail:
    (rx346_rep, rx346_pos, $I10, $P10) = rx346_cur."!mark_fail"(0)
    lt rx346_pos, -1, rx346_done
    eq rx346_pos, -1, rx346_fail
    jump $I10
  rx346_done:
    rx346_cur."!cursor_fail"()
    if_null rx346_debug, debug_460
    rx346_cur."!cursor_debug"("FAIL", "charspec")
  debug_460:
    .return (rx346_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1304459385.051") :method :outer("11_1304459385.051")
.annotate 'line', 42
    $P351 = self."!PREFIX__!subrule"("panic", "")
    $P352 = self."!PREFIX__!subrule"("charnames", "[")
    new $P353, "ResizablePMCArray"
    push $P353, $P351
    push $P353, "?"
    push $P353, "@"
    push $P353, "A"
    push $P353, "B"
    push $P353, "C"
    push $P353, "D"
    push $P353, "E"
    push $P353, "F"
    push $P353, "G"
    push $P353, "H"
    push $P353, "I"
    push $P353, "J"
    push $P353, "K"
    push $P353, "L"
    push $P353, "M"
    push $P353, "N"
    push $P353, "O"
    push $P353, "P"
    push $P353, "Q"
    push $P353, "R"
    push $P353, "S"
    push $P353, "T"
    push $P353, "U"
    push $P353, "V"
    push $P353, "W"
    push $P353, "X"
    push $P353, "Y"
    push $P353, "Z"
    push $P353, ""
    push $P353, $P352
    .return ($P353)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357 :optional
    .param int has_param_357 :opt_flag
.annotate 'line', 177
    .lex "self", param_355
    .lex "$spec", param_356
    if has_param_357, optparam_461
    new $P358, "Undef"
    set param_357, $P358
  optparam_461:
    .lex "$save", param_357
.annotate 'line', 178

            .include 'cclass.pasm'
            
            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            $P0 = find_lex '$spec'
            spec = $P0
            has_save = 0
            $P0 = find_lex '$save'
            unless $P0 goto no_save
            save = $P0
            has_save = 1
          no_save:

            # First, get the hash cache.  Right now we have one
            # cache for all grammars; eventually we may need a way to
            # separate them out by cursor type.
            .local pmc ohash
            ohash = get_global '%!ohash'
            unless null ohash goto have_ohash
            ohash = new ['Hash']
            set_global '%!ohash', ohash
          have_ohash:

            # See if we've already created a Hash for the current
            # specification string -- if so, use that.
            .local pmc hash
            hash = ohash[spec]
            unless null hash goto hash_done

            # Otherwise, we need to build a new one.
            hash = new ['Hash']
            .local int pos, eos
            pos = 0
            eos = length spec
          spec_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, spec, pos, eos
            if pos >= eos goto spec_done
            $S0 = substr spec, pos, 1
            if $S0 == ',' goto spec_comma
            if $S0 == ':' goto spec_pair

            # If whatever we found doesn't start with a colon, treat it
            # as a lookup of a previously saved hash to be merged in.
            .local string lookup
            .local int lpos
            # Find the first whitespace or comma
            lpos = find_cclass .CCLASS_WHITESPACE, spec, pos, eos
            $I0 = index spec, ',', pos
            if $I0 < 0 goto have_lookup_lpos
            if $I0 >= lpos goto have_lookup_lpos
            lpos = $I0
          have_lookup_lpos:
            $I0 = lpos - pos
            lookup = substr spec, pos, $I0
            .local pmc lhash, lhash_it
            lhash = ohash[lookup]
            if null lhash goto err_lookup
            lhash_it = iter lhash
          lhash_loop:
            unless lhash_it goto lhash_done
            $S0 = shift lhash_it
            $P0 = lhash[$S0]
            hash[$S0] = $P0
            goto lhash_loop
          lhash_done:
            pos = lpos
            goto spec_loop

            # We just ignore commas between elements for now.
          spec_comma:
            inc pos
            goto spec_loop

            # If we see a colon, then we want to parse whatever
            # comes next like a pair.
          spec_pair:
            # eat colon
            inc pos
            .local string name
            .local pmc value
            value = new ['Boolean']

            # If the pair is of the form :!name, then reverse the value
            # and skip the colon.
            $S0 = substr spec, pos, 1
            $I0 = iseq $S0, '!'
            pos += $I0
            $I0 = not $I0
            value = $I0

            # Get the name of the pair.
            lpos = find_not_cclass .CCLASS_WORD, spec, pos, eos
            $I0 = lpos - pos
            name = substr spec, pos, $I0
            pos = lpos

            # Look for a <...> that follows.
            $S0 = substr spec, pos, 1
            unless $S0 == '<' goto have_value
            inc pos
            lpos = index spec, '>', pos
            $I0 = lpos - pos
            $S0 = substr spec, pos, $I0
            value = box $S0
            pos = lpos + 1
          have_value:
            # Done processing the pair, store it in the hash.
            hash[name] = value
            goto spec_loop
          spec_done:
            # Done processing the spec string, cache the hash for later.
            ohash[spec] = hash
          hash_done:

            # If we've been called as a subrule, then build a pass-cursor
            # to indicate success and set the hash as the subrule's match object.
            if has_save goto save_hash
            ($P0, $I0) = self.'!cursor_start'()
            $P0.'!cursor_pass'($I0, '')
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        
.annotate 'line', 177
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic"  :subid("106_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_360
    .param pmc param_361 :slurpy
.annotate 'line', 325
    .lex "self", param_360
    .lex "@args", param_361
.annotate 'line', 326
    new $P362, "Undef"
    .lex "$pos", $P362
.annotate 'line', 327
    new $P363, "Undef"
    .lex "$target", $P363
.annotate 'line', 326
    find_lex $P364, "self"
    $P365 = $P364."pos"()
    store_lex "$pos", $P365
.annotate 'line', 327
    find_lex $P366, "self"
    get_hll_global $P367, "GLOBAL"
    nqp_get_package_through_who $P368, $P367, "Regex"
    get_who $P369, $P368
    set $P370, $P369["Cursor"]
    getattribute $P371, $P366, $P370, "$!target"
    store_lex "$target", $P371
.annotate 'line', 328
    find_lex $P372, "@args"
    unless_null $P372, vivify_462
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    $P372."push"(" at line ")
.annotate 'line', 329
    find_lex $P373, "@args"
    unless_null $P373, vivify_463
    $P373 = root_new ['parrot';'ResizablePMCArray']
  vivify_463:
    get_hll_global $P374, "GLOBAL"
    nqp_get_package_through_who $P375, $P374, "HLL"
    get_who $P376, $P375
    set $P377, $P376["Compiler"]
    find_lex $P378, "$target"
    unless_null $P378, vivify_464
    new $P378, "Undef"
  vivify_464:
    find_lex $P379, "$pos"
    unless_null $P379, vivify_465
    new $P379, "Undef"
  vivify_465:
    $P380 = $P377."lineof"($P378, $P379)
    add $P381, $P380, 1
    $P373."push"($P381)
.annotate 'line', 330
    find_lex $P382, "@args"
    unless_null $P382, vivify_466
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    $P382."push"(", near \"")
.annotate 'line', 331
    find_lex $P383, "@args"
    unless_null $P383, vivify_467
    $P383 = root_new ['parrot';'ResizablePMCArray']
  vivify_467:
    find_lex $P384, "$target"
    unless_null $P384, vivify_468
    new $P384, "Undef"
  vivify_468:
    set $S385, $P384
    find_lex $P386, "$pos"
    unless_null $P386, vivify_469
    new $P386, "Undef"
  vivify_469:
    set $I387, $P386
    substr $S388, $S385, $I387, 10
    escape $S389, $S388
    $P383."push"($S389)
.annotate 'line', 332
    find_lex $P390, "@args"
    unless_null $P390, vivify_470
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_470:
    $P390."push"("\"")
.annotate 'line', 333
    find_lex $P391, "@args"
    unless_null $P391, vivify_471
    $P391 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
    join $S392, "", $P391
    die $S392
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_394
    .param pmc param_395
    .param pmc param_396
.annotate 'line', 346
    .lex "self", param_394
    .lex "$target", param_395
    .lex "$pos", param_396
.annotate 'line', 347

            .local pmc self
            self = find_lex 'self'
            .local string target
            $P0 = find_lex '$target'
            target = $P0
            .local int pos
            $P0 = find_lex '$pos'
            pos = $P0

            .local string brackets, start, stop
            $P0 = find_lex '$brackets'
            brackets = $P0

            # peek at the next character
            start = substr target, pos, 1
            # colon and word characters aren't valid delimiters
            if start == ':' goto err_colon_delim
            $I0 = is_cclass .CCLASS_WORD, start, 0
            if $I0 goto err_word_delim
            $I0 = is_cclass .CCLASS_WHITESPACE, start, 0
            if $I0 goto err_ws_delim

            # assume stop delim is same as start, for the moment
            stop = start

            # see if we have an opener or closer
            $I0 = index brackets, start
            if $I0 < 0 goto bracket_end
            # if it's a closing bracket, that's an error also
            $I1 = $I0 % 2
            if $I1 goto err_close
            # it's an opener, so get the closing bracket
            inc $I0
            stop = substr brackets, $I0, 1

            # see if the opening bracket is repeated
            .local int len
            len = 0
          bracket_loop:
            inc pos
            inc len
            $S0 = substr target, pos, 1
            if $S0 == start goto bracket_loop
            if len == 1 goto bracket_end
            start = repeat start, len
            stop = repeat stop, len
          bracket_end:
            .return (start, stop, pos)

          err_colon_delim:
            self.'panic'('Colons may not be used to delimit quoting constructs')
          err_word_delim:
            self.'panic'('Alphanumeric character is not allowed as a delimiter')
          err_ws_delim:
            self.'panic'('Whitespace character is not allowed as a delimiter')
          err_close:
            self.'panic'('Use of a closing delimiter for an opener is reserved')
        
.annotate 'line', 346
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR"  :subid("108_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_398
    .param pmc param_399 :slurpy
.annotate 'line', 408
    .lex "self", param_398
    .lex "@args", param_399
.annotate 'line', 409

            .include 'src/Regex/constants.pir'
            
            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            args = find_lex '@args'

            .local pmc cur, debug
            .local string target
            .local int pos

            (cur, pos, target) = self.'!cursor_start'()
            debug = getattribute cur, cur_class, '$!debug'
            if null debug goto debug_1
            cur.'!cursor_debug'('START', 'quote_EXPR')
          debug_1:

            .local pmc quotemod, true
            .lex '%*QUOTEMOD', quotemod
            quotemod = new ['Hash']

            true = box 1


          args_loop:
            unless args goto args_done
            .local string mod
            mod = shift args
            mod = substr mod, 1
            quotemod[mod] = true
            if mod == 'qq' goto opt_qq
            if mod == 'b' goto opt_b
            goto args_loop
          opt_qq:
            quotemod['s'] = true
            quotemod['a'] = true
            quotemod['h'] = true
            quotemod['f'] = true
            quotemod['c'] = true
            quotemod['b'] = true
          opt_b:
            quotemod['q'] = true
            goto args_loop
          args_done:


            .local pmc start, stop
            (start, stop) = self.'peek_delimiters'(target, pos)

            .lex '$*QUOTE_START', start
            .lex '$*QUOTE_STOP', stop

            $P10 = cur.'quote_delimited'()
            unless $P10 goto fail
            cur.'!mark_push'(0, CURSOR_FAIL, 0, $P10)
            $P10.'!cursor_names'('quote_delimited')
            pos = $P10.'pos'()
            cur.'!cursor_pass'(pos, 'quote_EXPR')
            if null debug goto done
            cur.'!cursor_debug'('PASS', 'quote_EXPR')
            goto done
          fail:
            if null debug goto done
            cur.'!cursor_debug'('FAIL', 'quote_EXPR')
          done:
            .return (cur)
        
.annotate 'line', 408
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check"  :subid("109_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_401
    .param pmc param_402
.annotate 'line', 479
    .lex "self", param_401
    .lex "$mod", param_402
    find_lex $P403, "$mod"
    unless_null $P403, vivify_472
    new $P403, "Undef"
  vivify_472:
    find_dynamic_lex $P406, "%*QUOTEMOD"
    unless_null $P406, vivify_473
    get_hll_global $P404, "GLOBAL"
    get_who $P405, $P404
    set $P406, $P405["%QUOTEMOD"]
    unless_null $P406, vivify_474
    die "Contextual %*QUOTEMOD not found"
  vivify_474:
  vivify_473:
    set $P407, $P406[$P403]
    unless_null $P407, vivify_475
    new $P407, "Undef"
  vivify_475:
    .return ($P407)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_409
.annotate 'line', 483
    .lex "self", param_409
.annotate 'line', 484

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_START'
            if null $P0 goto fail
            start = $P0

            $I0 = length start
            $S0 = substr target, pos, $I0
            unless $S0 == start goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'starter')
          fail:
            .return (cur)
        
.annotate 'line', 483
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper"  :subid("111_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_411
.annotate 'line', 506
    .lex "self", param_411
.annotate 'line', 507

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_STOP'
            if null $P0 goto fail
            stop = $P0

            $I0 = length stop
            $S0 = substr target, pos, $I0
            unless $S0 == stop goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'stopper')
          fail:
            .return (cur)
        
.annotate 'line', 506
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words"  :subid("112_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_413
    .param pmc param_414
.annotate 'line', 529
    .lex "self", param_413
    .lex "$words", param_414
.annotate 'line', 530

            .local string words
            $P0 = find_lex '$words'
            words = $P0
            .local int pos, eos
            .local pmc result
            pos = 0
            eos = length words
            result = new ['ResizablePMCArray']
          split_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, words, pos, eos
            unless pos < eos goto split_done
            $I0 = find_cclass .CCLASS_WHITESPACE, words, pos, eos
            $I1 = $I0 - pos
            $S0 = substr words, pos, $I1
            push result, $S0
            pos = $I0
            goto split_loop
          split_done:
            .return (result)
        
.annotate 'line', 529
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR"  :subid("113_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_416
    .param pmc param_417 :optional
    .param int has_param_417 :opt_flag
.annotate 'line', 561
    .lex "self", param_416
    if has_param_417, optparam_476
    new $P418, "String"
    assign $P418, ""
    set param_417, $P418
  optparam_476:
    .lex "$preclim", param_417
.annotate 'line', 562

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here, debug
            .local int pos
            (here, pos) = self.'!cursor_start'()
            debug = getattribute here, cur_class, '$!debug'
            if null debug goto debug_1
            here.'!cursor_debug'('START', 'EXPR')
          debug_1:

            .const 'Sub' reduce = 'EXPR_reduce'
            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            here = here.termishrx()
            unless here goto fail
            .local pmc termish
            termish = here.'MATCH'()

            # interleave any prefix/postfix we might have found
            .local pmc termOPER, prefixish, postfixish
            termOPER = termish
          termOPER_loop:
            $I0 = exists termOPER['OPER']
            unless $I0 goto termOPER_done
            termOPER = termOPER['OPER']
            goto termOPER_loop
          termOPER_done:
            prefixish = termOPER['prefixish']
            postfixish = termOPER['postfixish']
            if null prefixish goto prefix_done

          prepostfix_loop:
            unless prefixish goto prepostfix_done
            unless postfixish goto prepostfix_done
            .local pmc preO, postO
            .local string preprec, postprec
            $P0 = prefixish[0]
            $P0 = $P0['OPER']
            preO = $P0['O']
            preprec = preO['prec']
            $P0 = postfixish[-1]
            $P0 = $P0['OPER']
            postO = $P0['O']
            postprec = postO['prec']
            if postprec < preprec goto post_shift
            if postprec > preprec goto pre_shift
            $S0 = postO['uassoc']
            if $S0 == 'right' goto pre_shift
          post_shift:
            $P0 = pop postfixish
            push opstack, $P0
            goto prepostfix_loop
          pre_shift:
            $P0 = shift prefixish
            push opstack, $P0
            goto prepostfix_loop
          prepostfix_done:

          prefix_loop:
            unless prefixish goto prefix_done
            $P0 = shift prefixish
            push opstack, $P0
            goto prefix_loop
          prefix_done:
            delete termish['prefixish']

          postfix_loop:
            if null postfixish goto postfix_done
            unless postfixish goto postfix_done
            $P0 = pop postfixish
            push opstack, $P0
            goto postfix_loop
          postfix_done:
            delete termish['postfixish']

            $P0 = termish['term']
            push termstack, $P0

            # Now see if we can fetch an infix operator
            .local pmc infixcur, infix
            here = here.'ws'()
            infixcur = here.'infixish'()
            unless infixcur goto term_done
            infix = infixcur.'MATCH'()

            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec <= preclim goto term_done
            inassoc = inO['assoc']

            $P0 = inO['sub']
            if null $P0 goto subprec_done
            inO['prec'] = $P0
          subprec_done:

          reduce_loop:
            unless opstack goto reduce_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['O']
            opprec = $P0['prec']
            unless opprec > inprec goto reduce_gt_done
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            capture_lex reduce
            self.reduce(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start'()
            repr_bind_attr_int here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            if null debug goto done
            here.'!cursor_debug'('PASS', 'EXPR')
            goto done

          fail:
            if null debug goto done
            here.'!cursor_debug'('FAIL', 'EXPR')
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        
.annotate 'line', 561
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce"  :subid("114_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_420
    .param pmc param_421
    .param pmc param_422
.annotate 'line', 739
    .lex "self", param_420
    .lex "$termstack", param_421
    .lex "$opstack", param_422
.annotate 'line', 740

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            opOPER = op['OPER']
            opO = opOPER['O']
            $P0 = opO['assoc']
            opassoc = $P0
            if opassoc == 'unary' goto op_unary
            if opassoc == 'list' goto op_list
          op_infix:
            .local pmc right, left
            right = pop termstack
            left = pop termstack
            op[0] = left
            op[1] = right
            $P0 = opO['reducecheck']
            if null $P0 goto op_infix_1
            $S0 = $P0
            self.$S0(op)
          op_infix_1:
            self.'!reduce'('EXPR', 'INFIX', op)
            goto done

          op_unary:
            .local pmc arg, afrom, ofrom
            arg = pop termstack
            op[0] = arg
            afrom = arg.'from'()
            ofrom = op.'from'()
            if afrom < ofrom goto op_postfix
          op_prefix:
            self.'!reduce'('EXPR', 'PREFIX', op)
            goto done
          op_postfix:
            self.'!reduce'('EXPR', 'POSTFIX', op)
            goto done

          op_list:
            .local string sym
            $P0 = opOPER['sym']
            sym = $P0
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            $S0 = $P0
            if sym != $S0 goto op_sym_done
            arg = pop termstack
            unshift op, arg
            $P0 = pop opstack
            goto op_sym_loop
          op_sym_done:
            arg = pop termstack
            unshift op, arg
            self.'!reduce'('EXPR', 'LIST', op)
            goto done

          done:
            push termstack, op
        
.annotate 'line', 739
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary"  :subid("115_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_424
    .param pmc param_425
.annotate 'line', 811
    .lex "self", param_424
    .lex "$match", param_425
.annotate 'line', 812
    find_lex $P426, "$match"
    unless_null $P426, vivify_477
    $P426 = root_new ['parrot';'ResizablePMCArray']
  vivify_477:
    set $P427, $P426[1]
    unless_null $P427, vivify_478
    new $P427, "Undef"
  vivify_478:
    find_lex $P428, "$match"
    unless_null $P428, vivify_479
    $P428 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P428
  vivify_479:
    set $P428[2], $P427
.annotate 'line', 813
    find_lex $P429, "$match"
    unless_null $P429, vivify_480
    $P429 = root_new ['parrot';'Hash']
  vivify_480:
    set $P430, $P429["infix"]
    unless_null $P430, vivify_481
    $P430 = root_new ['parrot';'Hash']
  vivify_481:
    set $P431, $P430["EXPR"]
    unless_null $P431, vivify_482
    new $P431, "Undef"
  vivify_482:
    find_lex $P432, "$match"
    unless_null $P432, vivify_483
    $P432 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P432
  vivify_483:
    set $P432[1], $P431
.annotate 'line', 811
    .return ($P431)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_434
    .param pmc param_435
.annotate 'line', 816
    .lex "self", param_434
    .lex "$markname", param_435
.annotate 'line', 817
    new $P436, "Undef"
    .lex "$pos", $P436
.annotate 'line', 819
    $P437 = root_new ['parrot';'Hash']
    .lex "%markhash", $P437
.annotate 'line', 817
    find_lex $P438, "self"
    $P439 = $P438."pos"()
    store_lex "$pos", $P439
.annotate 'line', 818
    find_lex $P440, "self"
    find_lex $P441, "$markname"
    unless_null $P441, vivify_484
    new $P441, "Undef"
  vivify_484:
    find_lex $P442, "$pos"
    unless_null $P442, vivify_485
    new $P442, "Undef"
  vivify_485:
    $P440."!cursor_debug"("START", "MARKER name=", $P441, ", pos=", $P442)
.annotate 'line', 819

            $P443 = get_global '%!MARKHASH'
            unless null $P443 goto have_markhash
            $P443 = new ['Hash']
            set_global '%!MARKHASH', $P443
          have_markhash:
        
    store_lex "%markhash", $P443
.annotate 'line', 826
    find_lex $P444, "$pos"
    unless_null $P444, vivify_486
    new $P444, "Undef"
  vivify_486:
    find_lex $P445, "$markname"
    unless_null $P445, vivify_487
    new $P445, "Undef"
  vivify_487:
    find_lex $P446, "%markhash"
    unless_null $P446, vivify_488
    $P446 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P446
  vivify_488:
    set $P446[$P445], $P444
.annotate 'line', 827
    find_lex $P447, "self"
    $P447."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_449
    .param pmc param_450
.annotate 'line', 831
    .lex "self", param_449
    .lex "$markname", param_450
.annotate 'line', 832
    find_lex $P451, "self"
    find_lex $P452, "$markname"
    unless_null $P452, vivify_489
    new $P452, "Undef"
  vivify_489:
    $P451."!cursor_debug"("START", "MARKED name=", $P452)
.annotate 'line', 833

            .local pmc self, markname, markhash
            self = find_lex 'self'
            markname = find_lex '$markname'
            markhash = get_global '%!MARKHASH'
            if null markhash goto fail
            $P0 = markhash[markname]
            if null $P0 goto fail
            $P1 = self.'pos'()
            unless $P0 == $P1 goto fail
            self.'!cursor_debug'('PASS','MARKED')
            .return (1)
          fail:
            self.'!cursor_debug'('FAIL','MARKED')
            .return (0)
        
.annotate 'line', 831
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG"  :subid("118_1304459385.051") :outer("11_1304459385.051")
    .param pmc param_454
    .param pmc param_455
    .param pmc param_456
.annotate 'line', 851
    .lex "self", param_454
    .lex "$lang", param_455
    .lex "$regex", param_456
.annotate 'line', 852
    new $P457, "Undef"
    .lex "$lang_cursor", $P457
.annotate 'line', 853
    new $P458, "Undef"
    .lex "$*ACTIONS", $P458
.annotate 'line', 854
    new $P459, "Undef"
    .lex "$cur", $P459
.annotate 'line', 852
    find_lex $P460, "$lang"
    unless_null $P460, vivify_490
    new $P460, "Undef"
  vivify_490:
    find_dynamic_lex $P463, "%*LANG"
    unless_null $P463, vivify_491
    get_hll_global $P461, "GLOBAL"
    get_who $P462, $P461
    set $P463, $P462["%LANG"]
    unless_null $P463, vivify_492
    die "Contextual %*LANG not found"
  vivify_492:
  vivify_491:
    set $P464, $P463[$P460]
    unless_null $P464, vivify_493
    new $P464, "Undef"
  vivify_493:
    store_lex "$lang_cursor", $P464
.annotate 'line', 853
    find_lex $P465, "$lang"
    unless_null $P465, vivify_494
    new $P465, "Undef"
  vivify_494:
    concat $P466, $P465, "-actions"
    find_dynamic_lex $P469, "%*LANG"
    unless_null $P469, vivify_495
    get_hll_global $P467, "GLOBAL"
    get_who $P468, $P467
    set $P469, $P468["%LANG"]
    unless_null $P469, vivify_496
    die "Contextual %*LANG not found"
  vivify_496:
  vivify_495:
    set $P470, $P469[$P466]
    unless_null $P470, vivify_497
    new $P470, "Undef"
  vivify_497:
    store_lex "$*ACTIONS", $P470
.annotate 'line', 854

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P471, pos) = self.'!cursor_start'($P0)
            $P471.'!cursor_pos'(pos)
        
    store_lex "$cur", $P471
.annotate 'line', 862
    find_lex $P472, "$cur"
    unless_null $P472, vivify_498
    new $P472, "Undef"
  vivify_498:
    find_lex $P473, "$regex"
    unless_null $P473, vivify_499
    new $P473, "Undef"
  vivify_499:
    set $S474, $P473
    $P475 = $P472.$S474()
.annotate 'line', 851
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block477"  :subid("119_1304459385.051") :outer("10_1304459385.051")
.annotate 'line', 867
    .const 'Sub' $P1146 = "164_1304459385.051" 
    capture_lex $P1146
    .const 'Sub' $P1123 = "162_1304459385.051" 
    capture_lex $P1123
    .const 'Sub' $P1095 = "161_1304459385.051" 
    capture_lex $P1095
    .const 'Sub' $P1078 = "160_1304459385.051" 
    capture_lex $P1078
    .const 'Sub' $P1073 = "159_1304459385.051" 
    capture_lex $P1073
    .const 'Sub' $P1065 = "158_1304459385.051" 
    capture_lex $P1065
    .const 'Sub' $P1050 = "157_1304459385.051" 
    capture_lex $P1050
    .const 'Sub' $P1035 = "156_1304459385.051" 
    capture_lex $P1035
    .const 'Sub' $P1030 = "155_1304459385.051" 
    capture_lex $P1030
    .const 'Sub' $P1025 = "154_1304459385.051" 
    capture_lex $P1025
    .const 'Sub' $P1020 = "153_1304459385.051" 
    capture_lex $P1020
    .const 'Sub' $P1015 = "152_1304459385.051" 
    capture_lex $P1015
    .const 'Sub' $P1010 = "151_1304459385.051" 
    capture_lex $P1010
    .const 'Sub' $P1005 = "150_1304459385.051" 
    capture_lex $P1005
    .const 'Sub' $P997 = "149_1304459385.051" 
    capture_lex $P997
    .const 'Sub' $P992 = "148_1304459385.051" 
    capture_lex $P992
    .const 'Sub' $P978 = "147_1304459385.051" 
    capture_lex $P978
    .const 'Sub' $P896 = "145_1304459385.051" 
    capture_lex $P896
    .const 'Sub' $P819 = "142_1304459385.051" 
    capture_lex $P819
    .const 'Sub' $P812 = "141_1304459385.051" 
    capture_lex $P812
    .const 'Sub' $P805 = "140_1304459385.051" 
    capture_lex $P805
    .const 'Sub' $P798 = "139_1304459385.051" 
    capture_lex $P798
    .const 'Sub' $P791 = "138_1304459385.051" 
    capture_lex $P791
    .const 'Sub' $P784 = "137_1304459385.051" 
    capture_lex $P784
    .const 'Sub' $P776 = "136_1304459385.051" 
    capture_lex $P776
    .const 'Sub' $P768 = "135_1304459385.051" 
    capture_lex $P768
    .const 'Sub' $P762 = "134_1304459385.051" 
    capture_lex $P762
    .const 'Sub' $P754 = "133_1304459385.051" 
    capture_lex $P754
    .const 'Sub' $P746 = "132_1304459385.051" 
    capture_lex $P746
    .const 'Sub' $P638 = "129_1304459385.051" 
    capture_lex $P638
    .const 'Sub' $P598 = "126_1304459385.051" 
    capture_lex $P598
    .const 'Sub' $P590 = "125_1304459385.051" 
    capture_lex $P590
    .const 'Sub' $P551 = "122_1304459385.051" 
    capture_lex $P551
    .const 'Sub' $P479 = "120_1304459385.051" 
    capture_lex $P479
.annotate 'line', 868
    .const 'Sub' $P479 = "120_1304459385.051" 
    newclosure $P547, $P479
    .lex "string_to_int", $P547
.annotate 'line', 867
    find_lex $P548, "string_to_int"
    find_lex $P549, "$?PACKAGE"
    get_who $P550, $P549
    set $P550["string_to_int"], $P548
.annotate 'line', 887
    .const 'Sub' $P551 = "122_1304459385.051" 
    newclosure $P582, $P551
    .lex "ints_to_string", $P582
.annotate 'line', 867
    find_lex $P583, "ints_to_string"
    find_lex $P584, "$?PACKAGE"
    get_who $P585, $P584
    set $P585["ints_to_string"], $P583
    .lex "$?PACKAGE", $P586
    .lex "$?CLASS", $P587
    find_lex $P588, "string_to_int"
    find_lex $P589, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1146 = "164_1304459385.051" 
    newclosure $P1161, $P1146
.annotate 'line', 867
    .return ($P1161)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("120_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_480
    .param pmc param_481
.annotate 'line', 868
    .const 'Sub' $P497 = "121_1304459385.051" 
    capture_lex $P497
    .lex "$src", param_480
    .lex "$base", param_481
.annotate 'line', 869
    new $P482, "Undef"
    .lex "$len", $P482
.annotate 'line', 870
    new $P483, "Undef"
    .lex "$i", $P483
.annotate 'line', 871
    new $P484, "Undef"
    .lex "$result", $P484
.annotate 'line', 869
    find_lex $P485, "$src"
    unless_null $P485, vivify_500
    new $P485, "Undef"
  vivify_500:
    set $S486, $P485
    length $I487, $S486
    new $P488, 'Integer'
    set $P488, $I487
    store_lex "$len", $P488
.annotate 'line', 870
    new $P489, "Integer"
    assign $P489, 0
    store_lex "$i", $P489
.annotate 'line', 871
    new $P490, "Integer"
    assign $P490, 0
    store_lex "$result", $P490
.annotate 'line', 873
    new $P544, 'ExceptionHandler'
    set_label $P544, loop543_handler
    $P544."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P544
  loop543_test:
    find_lex $P491, "$i"
    unless_null $P491, vivify_501
    new $P491, "Undef"
  vivify_501:
    set $N492, $P491
    find_lex $P493, "$len"
    unless_null $P493, vivify_502
    new $P493, "Undef"
  vivify_502:
    set $N494, $P493
    islt $I495, $N492, $N494
    unless $I495, loop543_done
  loop543_redo:
    .const 'Sub' $P497 = "121_1304459385.051" 
    capture_lex $P497
    $P497()
  loop543_next:
    goto loop543_test
  loop543_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P545, exception, 'type'
    eq $P545, .CONTROL_LOOP_NEXT, loop543_next
    eq $P545, .CONTROL_LOOP_REDO, loop543_redo
  loop543_done:
    pop_eh 
    find_lex $P546, "$result"
    unless_null $P546, vivify_517
    new $P546, "Undef"
  vivify_517:
.annotate 'line', 868
    .return ($P546)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block496"  :anon :subid("121_1304459385.051") :outer("120_1304459385.051")
.annotate 'line', 874
    new $P498, "Undef"
    .lex "$char", $P498
.annotate 'line', 876
    new $P499, "Undef"
    .lex "$digitval", $P499
.annotate 'line', 874
    find_lex $P500, "$src"
    unless_null $P500, vivify_503
    new $P500, "Undef"
  vivify_503:
    set $S501, $P500
    find_lex $P502, "$i"
    unless_null $P502, vivify_504
    new $P502, "Undef"
  vivify_504:
    set $I503, $P502
    substr $S504, $S501, $I503, 1
    new $P505, 'String'
    set $P505, $S504
    store_lex "$char", $P505
.annotate 'line', 875
    find_lex $P507, "$char"
    unless_null $P507, vivify_505
    new $P507, "Undef"
  vivify_505:
    set $S508, $P507
    iseq $I509, $S508, "_"
    unless $I509, if_506_end
    set $I510, .CONTROL_LOOP_NEXT
    die 0, $I510
  if_506_end:
.annotate 'line', 876
    find_lex $P511, "$char"
    unless_null $P511, vivify_506
    new $P511, "Undef"
  vivify_506:
    set $S512, $P511
    index $I513, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S512
    new $P514, 'Integer'
    set $P514, $I513
    store_lex "$digitval", $P514
.annotate 'line', 877
    find_lex $P515, "$digitval"
    unless_null $P515, vivify_507
    new $P515, "Undef"
  vivify_507:
    div $P516, $P515, 2
    set $I517, $P516
    new $P518, 'Integer'
    set $P518, $I517
    store_lex "$digitval", $P518
.annotate 'line', 878
    find_lex $P522, "$digitval"
    unless_null $P522, vivify_508
    new $P522, "Undef"
  vivify_508:
    set $N523, $P522
    islt $I524, $N523, 0.0
    unless $I524, unless_521
    new $P520, 'Integer'
    set $P520, $I524
    goto unless_521_end
  unless_521:
    find_lex $P525, "$digitval"
    unless_null $P525, vivify_509
    new $P525, "Undef"
  vivify_509:
    set $N526, $P525
    find_lex $P527, "$base"
    unless_null $P527, vivify_510
    new $P527, "Undef"
  vivify_510:
    set $N528, $P527
    isge $I529, $N526, $N528
    new $P520, 'Integer'
    set $P520, $I529
  unless_521_end:
    unless $P520, if_519_end
.annotate 'line', 879
    find_lex $P530, "$src"
    unless_null $P530, vivify_511
    new $P530, "Undef"
  vivify_511:
    new $P531, 'String'
    set $P531, "Invalid radix conversion of character '"
    find_lex $P532, "$char"
    unless_null $P532, vivify_512
    new $P532, "Undef"
  vivify_512:
    concat $P533, $P531, $P532
    concat $P534, $P533, "'"
    $P530."panic"($P534)
  if_519_end:
.annotate 'line', 881
    find_lex $P535, "$base"
    unless_null $P535, vivify_513
    new $P535, "Undef"
  vivify_513:
    find_lex $P536, "$result"
    unless_null $P536, vivify_514
    new $P536, "Undef"
  vivify_514:
    mul $P537, $P535, $P536
    find_lex $P538, "$digitval"
    unless_null $P538, vivify_515
    new $P538, "Undef"
  vivify_515:
    add $P539, $P537, $P538
    store_lex "$result", $P539
.annotate 'line', 882
    find_lex $P540, "$i"
    unless_null $P540, vivify_516
    new $P540, "Undef"
  vivify_516:
    add $P541, $P540, 1
    store_lex "$i", $P541
    new $P542, "ResizablePMCArray"
    push $P542, $P539
    push $P542, $P541
.annotate 'line', 873
    .return ($P542)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("122_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_552
.annotate 'line', 887
    .const 'Sub' $P558 = "123_1304459385.051" 
    capture_lex $P558
    .lex "$ints", param_552
.annotate 'line', 888
    find_lex $P555, "$ints"
    unless_null $P555, vivify_518
    new $P555, "Undef"
  vivify_518:
    does $I556, $P555, "array"
    if $I556, if_554
.annotate 'line', 895
    find_lex $P578, "$ints"
    unless_null $P578, vivify_519
    new $P578, "Undef"
  vivify_519:
    $I579 = $P578."ast"()
    chr $S580, $I579
    new $P581, 'String'
    set $P581, $S580
.annotate 'line', 894
    set $P553, $P581
.annotate 'line', 888
    goto if_554_end
  if_554:
    .const 'Sub' $P558 = "123_1304459385.051" 
    capture_lex $P558
    $P577 = $P558()
    set $P553, $P577
  if_554_end:
.annotate 'line', 887
    .return ($P553)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block557"  :anon :subid("123_1304459385.051") :outer("122_1304459385.051")
.annotate 'line', 888
    .const 'Sub' $P566 = "124_1304459385.051" 
    capture_lex $P566
.annotate 'line', 889
    new $P559, "Undef"
    .lex "$result", $P559
    new $P560, "String"
    assign $P560, ""
    store_lex "$result", $P560
.annotate 'line', 890
    find_lex $P562, "$ints"
    unless_null $P562, vivify_520
    new $P562, "Undef"
  vivify_520:
    defined $I563, $P562
    unless $I563, for_undef_521
    iter $P561, $P562
    new $P574, 'ExceptionHandler'
    set_label $P574, loop573_handler
    $P574."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P574
  loop573_test:
    unless $P561, loop573_done
    shift $P564, $P561
  loop573_redo:
    .const 'Sub' $P566 = "124_1304459385.051" 
    capture_lex $P566
    $P566($P564)
  loop573_next:
    goto loop573_test
  loop573_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P575, exception, 'type'
    eq $P575, .CONTROL_LOOP_NEXT, loop573_next
    eq $P575, .CONTROL_LOOP_REDO, loop573_redo
  loop573_done:
    pop_eh 
  for_undef_521:
    find_lex $P576, "$result"
    unless_null $P576, vivify_524
    new $P576, "Undef"
  vivify_524:
.annotate 'line', 888
    .return ($P576)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block565"  :anon :subid("124_1304459385.051") :outer("123_1304459385.051")
    .param pmc param_567
.annotate 'line', 890
    .lex "$_", param_567
.annotate 'line', 891
    find_lex $P568, "$result"
    unless_null $P568, vivify_522
    new $P568, "Undef"
  vivify_522:
    find_lex $P569, "$_"
    unless_null $P569, vivify_523
    new $P569, "Undef"
  vivify_523:
    $I570 = $P569."ast"()
    chr $S571, $I570
    concat $P572, $P568, $S571
    store_lex "$result", $P572
.annotate 'line', 890
    .return ($P572)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("125_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_591
.annotate 'line', 900
    .lex "self", param_591
.annotate 'line', 901
    get_hll_global $P592, "GLOBAL"
    nqp_get_package_through_who $P593, $P592, "PAST"
    get_who $P594, $P593
    set $P595, $P594["Op"]
.annotate 'line', 907
    new $P596, "ResizablePMCArray"
    push $P596, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P596, "    if null $P0 goto ctxsave_done"
    push $P596, "    $I0 = can $P0, \"ctxsave\""
    push $P596, "    unless $I0 goto ctxsave_done"
    push $P596, "    $P0.\"ctxsave\"()"
    push $P596, "  ctxsave_done:"
    $P597 = $P595."new"($P596 :named("inline"))
.annotate 'line', 900
    .return ($P597)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("126_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_599
    .param pmc param_600
.annotate 'line', 914
    .const 'Sub' $P612 = "127_1304459385.051" 
    capture_lex $P612
    .lex "self", param_599
    .lex "$block", param_600
.annotate 'line', 915
    new $P601, "Undef"
    .lex "$outer_ctx", $P601
    find_dynamic_lex $P604, "%*COMPILING"
    unless_null $P604, vivify_525
    get_hll_global $P602, "GLOBAL"
    get_who $P603, $P602
    set $P604, $P603["%COMPILING"]
    unless_null $P604, vivify_526
    die "Contextual %*COMPILING not found"
  vivify_526:
  vivify_525:
    set $P605, $P604["%?OPTIONS"]
    unless_null $P605, vivify_527
    $P605 = root_new ['parrot';'Hash']
  vivify_527:
    set $P606, $P605["outer_ctx"]
    unless_null $P606, vivify_528
    new $P606, "Undef"
  vivify_528:
    store_lex "$outer_ctx", $P606
.annotate 'line', 916
    find_lex $P609, "$outer_ctx"
    unless_null $P609, vivify_529
    new $P609, "Undef"
  vivify_529:
    defined $I610, $P609
    if $I610, if_608
    new $P607, 'Integer'
    set $P607, $I610
    goto if_608_end
  if_608:
    .const 'Sub' $P612 = "127_1304459385.051" 
    capture_lex $P612
    $P637 = $P612()
    set $P607, $P637
  if_608_end:
.annotate 'line', 914
    .return ($P607)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block611"  :anon :subid("127_1304459385.051") :outer("126_1304459385.051")
.annotate 'line', 916
    .const 'Sub' $P626 = "128_1304459385.051" 
    capture_lex $P626
.annotate 'line', 917
    $P613 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P613
    find_lex $P614, "$outer_ctx"
    unless_null $P614, vivify_530
    new $P614, "Undef"
  vivify_530:
    getattribute $P615, $P614, "current_namespace"
    $P616 = $P615."get_name"()
    store_lex "@ns", $P616
.annotate 'line', 918
    find_lex $P617, "@ns"
    unless_null $P617, vivify_531
    $P617 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    $P617."shift"()
.annotate 'line', 919
    find_lex $P618, "$block"
    unless_null $P618, vivify_532
    new $P618, "Undef"
  vivify_532:
    find_lex $P619, "@ns"
    unless_null $P619, vivify_533
    $P619 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    $P618."namespace"($P619)
.annotate 'line', 920
    find_lex $P621, "$outer_ctx"
    unless_null $P621, vivify_534
    new $P621, "Undef"
  vivify_534:
    $P622 = $P621."lexpad_full"()
    defined $I623, $P622
    unless $I623, for_undef_535
    iter $P620, $P622
    new $P635, 'ExceptionHandler'
    set_label $P635, loop634_handler
    $P635."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P635
  loop634_test:
    unless $P620, loop634_done
    shift $P624, $P620
  loop634_redo:
    .const 'Sub' $P626 = "128_1304459385.051" 
    capture_lex $P626
    $P626($P624)
  loop634_next:
    goto loop634_test
  loop634_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P636, exception, 'type'
    eq $P636, .CONTROL_LOOP_NEXT, loop634_next
    eq $P636, .CONTROL_LOOP_REDO, loop634_redo
  loop634_done:
    pop_eh 
  for_undef_535:
.annotate 'line', 916
    .return ($P620)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block625"  :anon :subid("128_1304459385.051") :outer("127_1304459385.051")
    .param pmc param_627
.annotate 'line', 920
    .lex "$_", param_627
.annotate 'line', 921
    find_lex $P628, "$block"
    unless_null $P628, vivify_536
    new $P628, "Undef"
  vivify_536:
    find_lex $P629, "$_"
    unless_null $P629, vivify_537
    new $P629, "Undef"
  vivify_537:
    $P630 = $P629."key"()
    find_lex $P631, "$_"
    unless_null $P631, vivify_538
    new $P631, "Undef"
  vivify_538:
    $P632 = $P631."value"()
    $P633 = $P628."symbol"($P630, "lexical" :named("scope"), $P632 :named("value"))
.annotate 'line', 920
    .return ($P633)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("129_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_641
    .param pmc param_642
    .param pmc param_643 :optional
    .param int has_param_643 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P728 = "131_1304459385.051" 
    capture_lex $P728
    .const 'Sub' $P692 = "130_1304459385.051" 
    capture_lex $P692
    new $P640, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P640, control_639
    push_eh $P640
    .lex "self", param_641
    .lex "$/", param_642
    if has_param_643, optparam_539
    new $P644, "Undef"
    set param_643, $P644
  optparam_539:
    .lex "$key", param_643
.annotate 'line', 929
    new $P645, "Undef"
    .lex "$past", $P645
.annotate 'line', 928
    find_lex $P647, "$key"
    unless_null $P647, vivify_540
    new $P647, "Undef"
  vivify_540:
    if $P647, unless_646_end
    new $P648, "Exception"
    set $P648['type'], .CONTROL_RETURN
    new $P649, "Integer"
    assign $P649, 0
    setattribute $P648, 'payload', $P649
    throw $P648
  unless_646_end:
.annotate 'line', 929
    find_lex $P651, "$/"
    unless_null $P651, vivify_541
    new $P651, "Undef"
  vivify_541:
    $P652 = $P651."ast"()
    set $P650, $P652
    defined $I654, $P650
    if $I654, default_653
    find_lex $P655, "$/"
    unless_null $P655, vivify_542
    $P655 = root_new ['parrot';'Hash']
  vivify_542:
    set $P656, $P655["OPER"]
    unless_null $P656, vivify_543
    new $P656, "Undef"
  vivify_543:
    $P657 = $P656."ast"()
    set $P650, $P657
  default_653:
    store_lex "$past", $P650
.annotate 'line', 930
    find_lex $P659, "$past"
    unless_null $P659, vivify_544
    new $P659, "Undef"
  vivify_544:
    if $P659, unless_658_end
.annotate 'line', 931
    get_hll_global $P660, "GLOBAL"
    nqp_get_package_through_who $P661, $P660, "PAST"
    get_who $P662, $P661
    set $P663, $P662["Op"]
    find_lex $P664, "$/"
    unless_null $P664, vivify_545
    new $P664, "Undef"
  vivify_545:
    $P665 = $P663."new"($P664 :named("node"))
    store_lex "$past", $P665
.annotate 'line', 932
    find_lex $P667, "$/"
    unless_null $P667, vivify_546
    $P667 = root_new ['parrot';'Hash']
  vivify_546:
    set $P668, $P667["OPER"]
    unless_null $P668, vivify_547
    $P668 = root_new ['parrot';'Hash']
  vivify_547:
    set $P669, $P668["O"]
    unless_null $P669, vivify_548
    $P669 = root_new ['parrot';'Hash']
  vivify_548:
    set $P670, $P669["pasttype"]
    unless_null $P670, vivify_549
    new $P670, "Undef"
  vivify_549:
    if $P670, if_666
.annotate 'line', 933
    find_lex $P678, "$/"
    unless_null $P678, vivify_550
    $P678 = root_new ['parrot';'Hash']
  vivify_550:
    set $P679, $P678["OPER"]
    unless_null $P679, vivify_551
    $P679 = root_new ['parrot';'Hash']
  vivify_551:
    set $P680, $P679["O"]
    unless_null $P680, vivify_552
    $P680 = root_new ['parrot';'Hash']
  vivify_552:
    set $P681, $P680["pirop"]
    unless_null $P681, vivify_553
    new $P681, "Undef"
  vivify_553:
    unless $P681, if_677_end
    find_lex $P682, "$past"
    unless_null $P682, vivify_554
    new $P682, "Undef"
  vivify_554:
    find_lex $P683, "$/"
    unless_null $P683, vivify_555
    $P683 = root_new ['parrot';'Hash']
  vivify_555:
    set $P684, $P683["OPER"]
    unless_null $P684, vivify_556
    $P684 = root_new ['parrot';'Hash']
  vivify_556:
    set $P685, $P684["O"]
    unless_null $P685, vivify_557
    $P685 = root_new ['parrot';'Hash']
  vivify_557:
    set $P686, $P685["pirop"]
    unless_null $P686, vivify_558
    new $P686, "Undef"
  vivify_558:
    set $S687, $P686
    $P682."pirop"($S687)
  if_677_end:
    goto if_666_end
  if_666:
.annotate 'line', 932
    find_lex $P671, "$past"
    unless_null $P671, vivify_559
    new $P671, "Undef"
  vivify_559:
    find_lex $P672, "$/"
    unless_null $P672, vivify_560
    $P672 = root_new ['parrot';'Hash']
  vivify_560:
    set $P673, $P672["OPER"]
    unless_null $P673, vivify_561
    $P673 = root_new ['parrot';'Hash']
  vivify_561:
    set $P674, $P673["O"]
    unless_null $P674, vivify_562
    $P674 = root_new ['parrot';'Hash']
  vivify_562:
    set $P675, $P674["pasttype"]
    unless_null $P675, vivify_563
    new $P675, "Undef"
  vivify_563:
    set $S676, $P675
    $P671."pasttype"($S676)
  if_666_end:
.annotate 'line', 934
    find_lex $P689, "$past"
    unless_null $P689, vivify_564
    new $P689, "Undef"
  vivify_564:
    $P690 = $P689."name"()
    if $P690, unless_688_end
    .const 'Sub' $P692 = "130_1304459385.051" 
    capture_lex $P692
    $P692()
  unless_688_end:
  unless_658_end:
.annotate 'line', 940
    find_lex $P715, "$key"
    unless_null $P715, vivify_572
    new $P715, "Undef"
  vivify_572:
    set $S716, $P715
    iseq $I717, $S716, "POSTFIX"
    if $I717, if_714
.annotate 'line', 942
    find_lex $P723, "$/"
    unless_null $P723, vivify_573
    new $P723, "Undef"
  vivify_573:
    $P724 = $P723."list"()
    defined $I725, $P724
    unless $I725, for_undef_574
    iter $P722, $P724
    new $P740, 'ExceptionHandler'
    set_label $P740, loop739_handler
    $P740."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P740
  loop739_test:
    unless $P722, loop739_done
    shift $P726, $P722
  loop739_redo:
    .const 'Sub' $P728 = "131_1304459385.051" 
    capture_lex $P728
    $P728($P726)
  loop739_next:
    goto loop739_test
  loop739_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P741, exception, 'type'
    eq $P741, .CONTROL_LOOP_NEXT, loop739_next
    eq $P741, .CONTROL_LOOP_REDO, loop739_redo
  loop739_done:
    pop_eh 
  for_undef_574:
.annotate 'line', 941
    goto if_714_end
  if_714:
.annotate 'line', 940
    find_lex $P718, "$past"
    unless_null $P718, vivify_578
    new $P718, "Undef"
  vivify_578:
    find_lex $P719, "$/"
    unless_null $P719, vivify_579
    $P719 = root_new ['parrot';'ResizablePMCArray']
  vivify_579:
    set $P720, $P719[0]
    unless_null $P720, vivify_580
    new $P720, "Undef"
  vivify_580:
    $P721 = $P720."ast"()
    $P718."unshift"($P721)
  if_714_end:
.annotate 'line', 944
    find_lex $P742, "$/"
    find_lex $P743, "$past"
    unless_null $P743, vivify_581
    new $P743, "Undef"
  vivify_581:
    $P744 = $P742."!make"($P743)
.annotate 'line', 927
    .return ($P744)
  control_639:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P745, exception, "payload"
    .return ($P745)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block691"  :anon :subid("130_1304459385.051") :outer("129_1304459385.051")
.annotate 'line', 936
    new $P693, "Undef"
    .lex "$name", $P693
.annotate 'line', 935
    find_lex $P695, "$key"
    unless_null $P695, vivify_565
    new $P695, "Undef"
  vivify_565:
    set $S696, $P695
    iseq $I697, $S696, "LIST"
    unless $I697, if_694_end
    new $P698, "String"
    assign $P698, "infix"
    store_lex "$key", $P698
  if_694_end:
.annotate 'line', 936
    find_lex $P699, "$key"
    unless_null $P699, vivify_566
    new $P699, "Undef"
  vivify_566:
    set $S700, $P699
    downcase $S701, $S700
    new $P702, 'String'
    set $P702, $S701
    concat $P703, $P702, ":<"
    find_lex $P704, "$/"
    unless_null $P704, vivify_567
    $P704 = root_new ['parrot';'Hash']
  vivify_567:
    set $P705, $P704["OPER"]
    unless_null $P705, vivify_568
    $P705 = root_new ['parrot';'Hash']
  vivify_568:
    set $P706, $P705["sym"]
    unless_null $P706, vivify_569
    new $P706, "Undef"
  vivify_569:
    concat $P707, $P703, $P706
    concat $P708, $P707, ">"
    store_lex "$name", $P708
.annotate 'line', 937
    find_lex $P709, "$past"
    unless_null $P709, vivify_570
    new $P709, "Undef"
  vivify_570:
    new $P710, "String"
    assign $P710, "&"
    find_lex $P711, "$name"
    unless_null $P711, vivify_571
    new $P711, "Undef"
  vivify_571:
    concat $P712, $P710, $P711
    $P713 = $P709."name"($P712)
.annotate 'line', 934
    .return ($P713)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block727"  :anon :subid("131_1304459385.051") :outer("129_1304459385.051")
    .param pmc param_729
.annotate 'line', 942
    .lex "$_", param_729
    find_lex $P732, "$_"
    unless_null $P732, vivify_575
    new $P732, "Undef"
  vivify_575:
    $P733 = $P732."ast"()
    defined $I734, $P733
    if $I734, if_731
    new $P730, 'Integer'
    set $P730, $I734
    goto if_731_end
  if_731:
    find_lex $P735, "$past"
    unless_null $P735, vivify_576
    new $P735, "Undef"
  vivify_576:
    find_lex $P736, "$_"
    unless_null $P736, vivify_577
    new $P736, "Undef"
  vivify_577:
    $P737 = $P736."ast"()
    $P738 = $P735."push"($P737)
    set $P730, $P738
  if_731_end:
    .return ($P730)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("132_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_747
    .param pmc param_748
.annotate 'line', 947
    .lex "self", param_747
    .lex "$/", param_748
    find_lex $P749, "$/"
    find_lex $P750, "$/"
    unless_null $P750, vivify_582
    $P750 = root_new ['parrot';'Hash']
  vivify_582:
    set $P751, $P750["circumfix"]
    unless_null $P751, vivify_583
    new $P751, "Undef"
  vivify_583:
    $P752 = $P751."ast"()
    $P753 = $P749."!make"($P752)
    .return ($P753)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("133_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_755
    .param pmc param_756
.annotate 'line', 949
    .lex "self", param_755
    .lex "$/", param_756
    find_lex $P757, "$/"
    find_lex $P758, "$/"
    unless_null $P758, vivify_584
    $P758 = root_new ['parrot';'Hash']
  vivify_584:
    set $P759, $P758["term"]
    unless_null $P759, vivify_585
    new $P759, "Undef"
  vivify_585:
    $P760 = $P759."ast"()
    $P761 = $P757."!make"($P760)
    .return ($P761)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("134_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_763
    .param pmc param_764
.annotate 'line', 950
    .lex "self", param_763
    .lex "$/", param_764
    find_lex $P765, "$/"
    new $P766, "Undef"
    $P767 = $P765."!make"($P766)
    .return ($P767)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("135_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_769
    .param pmc param_770
.annotate 'line', 951
    .lex "self", param_769
    .lex "$/", param_770
    find_lex $P771, "$/"
    find_lex $P772, "$/"
    unless_null $P772, vivify_586
    $P772 = root_new ['parrot';'Hash']
  vivify_586:
    set $P773, $P772["term"]
    unless_null $P773, vivify_587
    new $P773, "Undef"
  vivify_587:
    $P774 = $P773."ast"()
    $P775 = $P771."!make"($P774)
    .return ($P775)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("136_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_777
    .param pmc param_778
.annotate 'line', 953
    .lex "self", param_777
    .lex "$/", param_778
    find_lex $P779, "$/"
    find_lex $P780, "$/"
    unless_null $P780, vivify_588
    $P780 = root_new ['parrot';'Hash']
  vivify_588:
    set $P781, $P780["VALUE"]
    unless_null $P781, vivify_589
    new $P781, "Undef"
  vivify_589:
    $P782 = $P781."ast"()
    $P783 = $P779."!make"($P782)
    .return ($P783)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("137_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_785
    .param pmc param_786
.annotate 'line', 955
    .lex "self", param_785
    .lex "$/", param_786
    find_lex $P787, "$/"
    find_lex $P788, "$/"
    unless_null $P788, vivify_590
    new $P788, "Undef"
  vivify_590:
    set $N789, $P788
    $P790 = $P787."!make"($N789)
    .return ($P790)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("138_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_792
    .param pmc param_793
.annotate 'line', 957
    .lex "self", param_792
    .lex "$/", param_793
    find_lex $P794, "$/"
    find_lex $P795, "$/"
    unless_null $P795, vivify_591
    new $P795, "Undef"
  vivify_591:
    $P796 = "string_to_int"($P795, 10)
    $P797 = $P794."!make"($P796)
    .return ($P797)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("139_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_799
    .param pmc param_800
.annotate 'line', 958
    .lex "self", param_799
    .lex "$/", param_800
    find_lex $P801, "$/"
    find_lex $P802, "$/"
    unless_null $P802, vivify_592
    new $P802, "Undef"
  vivify_592:
    $P803 = "string_to_int"($P802, 16)
    $P804 = $P801."!make"($P803)
    .return ($P804)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("140_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_806
    .param pmc param_807
.annotate 'line', 959
    .lex "self", param_806
    .lex "$/", param_807
    find_lex $P808, "$/"
    find_lex $P809, "$/"
    unless_null $P809, vivify_593
    new $P809, "Undef"
  vivify_593:
    $P810 = "string_to_int"($P809, 8)
    $P811 = $P808."!make"($P810)
    .return ($P811)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("141_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_813
    .param pmc param_814
.annotate 'line', 960
    .lex "self", param_813
    .lex "$/", param_814
    find_lex $P815, "$/"
    find_lex $P816, "$/"
    unless_null $P816, vivify_594
    new $P816, "Undef"
  vivify_594:
    $P817 = "string_to_int"($P816, 2)
    $P818 = $P815."!make"($P817)
    .return ($P818)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("142_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_820
    .param pmc param_821
.annotate 'line', 962
    .const 'Sub' $P840 = "143_1304459385.051" 
    capture_lex $P840
    .lex "self", param_820
    .lex "$/", param_821
.annotate 'line', 963
    new $P822, "Undef"
    .lex "$past", $P822
    find_lex $P823, "$/"
    unless_null $P823, vivify_595
    $P823 = root_new ['parrot';'Hash']
  vivify_595:
    set $P824, $P823["quote_delimited"]
    unless_null $P824, vivify_596
    new $P824, "Undef"
  vivify_596:
    $P825 = $P824."ast"()
    store_lex "$past", $P825
.annotate 'line', 964
    find_lex $P827, "$/"
    unless_null $P827, vivify_597
    new $P827, "Undef"
  vivify_597:
    $P828 = $P827."CURSOR"()
    $P829 = $P828."quotemod_check"("w")
    unless $P829, if_826_end
.annotate 'line', 965
    get_hll_global $P831, "GLOBAL"
    nqp_get_package_through_who $P832, $P831, "PAST"
    get_who $P833, $P832
    set $P834, $P833["Node"]
    find_lex $P835, "$past"
    unless_null $P835, vivify_598
    new $P835, "Undef"
  vivify_598:
    $P836 = $P834."ACCEPTS"($P835)
    if $P836, if_830
.annotate 'line', 968
    .const 'Sub' $P840 = "143_1304459385.051" 
    capture_lex $P840
    $P840()
    goto if_830_end
  if_830:
.annotate 'line', 966
    find_lex $P837, "$/"
    unless_null $P837, vivify_609
    new $P837, "Undef"
  vivify_609:
    $P838 = $P837."CURSOR"()
    $P838."panic"("Can't form :w list from non-constant strings (yet)")
  if_830_end:
  if_826_end:
.annotate 'line', 979
    get_hll_global $P879, "GLOBAL"
    nqp_get_package_through_who $P880, $P879, "PAST"
    get_who $P881, $P880
    set $P882, $P881["Node"]
    find_lex $P883, "$past"
    unless_null $P883, vivify_610
    new $P883, "Undef"
  vivify_610:
    $P884 = $P882."ACCEPTS"($P883)
    isfalse $I885, $P884
    unless $I885, if_878_end
.annotate 'line', 980
    get_hll_global $P886, "GLOBAL"
    nqp_get_package_through_who $P887, $P886, "PAST"
    get_who $P888, $P887
    set $P889, $P888["Val"]
    find_lex $P890, "$past"
    unless_null $P890, vivify_611
    new $P890, "Undef"
  vivify_611:
    set $S891, $P890
    $P892 = $P889."new"($S891 :named("value"))
    store_lex "$past", $P892
  if_878_end:
.annotate 'line', 982
    find_lex $P893, "$/"
    find_lex $P894, "$past"
    unless_null $P894, vivify_612
    new $P894, "Undef"
  vivify_612:
    $P895 = $P893."!make"($P894)
.annotate 'line', 962
    .return ($P895)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block839"  :anon :subid("143_1304459385.051") :outer("142_1304459385.051")
.annotate 'line', 968
    .const 'Sub' $P866 = "144_1304459385.051" 
    capture_lex $P866
.annotate 'line', 969
    $P841 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P841
    get_hll_global $P842, "GLOBAL"
    nqp_get_package_through_who $P843, $P842, "HLL"
    nqp_get_package_through_who $P844, $P843, "Grammar"
    get_who $P845, $P844
    set $P846, $P845["split_words"]
    find_lex $P847, "$/"
    unless_null $P847, vivify_599
    new $P847, "Undef"
  vivify_599:
    find_lex $P848, "$past"
    unless_null $P848, vivify_600
    new $P848, "Undef"
  vivify_600:
    $P849 = $P846($P847, $P848)
    store_lex "@words", $P849
.annotate 'line', 970
    find_lex $P852, "@words"
    unless_null $P852, vivify_601
    $P852 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    set $N853, $P852
    isne $I854, $N853, 1.0
    if $I854, if_851
.annotate 'line', 975
    find_lex $P874, "@words"
    unless_null $P874, vivify_602
    $P874 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    set $P875, $P874[0]
    unless_null $P875, vivify_603
    new $P875, "Undef"
  vivify_603:
    set $S876, $P875
    new $P877, 'String'
    set $P877, $S876
    store_lex "$past", $P877
.annotate 'line', 974
    set $P850, $P877
.annotate 'line', 970
    goto if_851_end
  if_851:
.annotate 'line', 971
    get_hll_global $P855, "GLOBAL"
    nqp_get_package_through_who $P856, $P855, "PAST"
    get_who $P857, $P856
    set $P858, $P857["Op"]
    find_lex $P859, "$/"
    unless_null $P859, vivify_604
    new $P859, "Undef"
  vivify_604:
    $P860 = $P858."new"("list" :named("pasttype"), $P859 :named("node"))
    store_lex "$past", $P860
.annotate 'line', 972
    find_lex $P862, "@words"
    unless_null $P862, vivify_605
    $P862 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    defined $I863, $P862
    unless $I863, for_undef_606
    iter $P861, $P862
    new $P872, 'ExceptionHandler'
    set_label $P872, loop871_handler
    $P872."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P872
  loop871_test:
    unless $P861, loop871_done
    shift $P864, $P861
  loop871_redo:
    .const 'Sub' $P866 = "144_1304459385.051" 
    capture_lex $P866
    $P866($P864)
  loop871_next:
    goto loop871_test
  loop871_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P873, exception, 'type'
    eq $P873, .CONTROL_LOOP_NEXT, loop871_next
    eq $P873, .CONTROL_LOOP_REDO, loop871_redo
  loop871_done:
    pop_eh 
  for_undef_606:
.annotate 'line', 970
    set $P850, $P861
  if_851_end:
.annotate 'line', 968
    .return ($P850)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block865"  :anon :subid("144_1304459385.051") :outer("143_1304459385.051")
    .param pmc param_867
.annotate 'line', 972
    .lex "$_", param_867
    find_lex $P868, "$past"
    unless_null $P868, vivify_607
    new $P868, "Undef"
  vivify_607:
    find_lex $P869, "$_"
    unless_null $P869, vivify_608
    new $P869, "Undef"
  vivify_608:
    $P870 = $P868."push"($P869)
    .return ($P870)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("145_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_897
    .param pmc param_898
.annotate 'line', 985
    .const 'Sub' $P910 = "146_1304459385.051" 
    capture_lex $P910
    .lex "self", param_897
    .lex "$/", param_898
.annotate 'line', 986
    $P899 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P899
.annotate 'line', 987
    new $P900, "Undef"
    .lex "$lastlit", $P900
.annotate 'line', 1003
    new $P901, "Undef"
    .lex "$past", $P901
.annotate 'line', 985
    find_lex $P902, "@parts"
    unless_null $P902, vivify_613
    $P902 = root_new ['parrot';'ResizablePMCArray']
  vivify_613:
.annotate 'line', 987
    new $P903, "String"
    assign $P903, ""
    store_lex "$lastlit", $P903
.annotate 'line', 988
    find_lex $P905, "$/"
    unless_null $P905, vivify_614
    $P905 = root_new ['parrot';'Hash']
  vivify_614:
    set $P906, $P905["quote_atom"]
    unless_null $P906, vivify_615
    new $P906, "Undef"
  vivify_615:
    defined $I907, $P906
    unless $I907, for_undef_616
    iter $P904, $P906
    new $P949, 'ExceptionHandler'
    set_label $P949, loop948_handler
    $P949."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P949
  loop948_test:
    unless $P904, loop948_done
    shift $P908, $P904
  loop948_redo:
    .const 'Sub' $P910 = "146_1304459385.051" 
    capture_lex $P910
    $P910($P908)
  loop948_next:
    goto loop948_test
  loop948_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P950, exception, 'type'
    eq $P950, .CONTROL_LOOP_NEXT, loop948_next
    eq $P950, .CONTROL_LOOP_REDO, loop948_redo
  loop948_done:
    pop_eh 
  for_undef_616:
.annotate 'line', 1002
    find_lex $P952, "$lastlit"
    unless_null $P952, vivify_629
    new $P952, "Undef"
  vivify_629:
    set $S953, $P952
    isgt $I954, $S953, ""
    unless $I954, if_951_end
    find_lex $P955, "@parts"
    unless_null $P955, vivify_630
    $P955 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    find_lex $P956, "$lastlit"
    unless_null $P956, vivify_631
    new $P956, "Undef"
  vivify_631:
    $P955."push"($P956)
  if_951_end:
.annotate 'line', 1003
    find_lex $P959, "@parts"
    unless_null $P959, vivify_632
    $P959 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    if $P959, if_958
    new $P962, "String"
    assign $P962, ""
    set $P957, $P962
    goto if_958_end
  if_958:
    find_lex $P960, "@parts"
    unless_null $P960, vivify_633
    $P960 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    $P961 = $P960."shift"()
    set $P957, $P961
  if_958_end:
    store_lex "$past", $P957
.annotate 'line', 1004
    new $P973, 'ExceptionHandler'
    set_label $P973, loop972_handler
    $P973."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P973
  loop972_test:
    find_lex $P963, "@parts"
    unless_null $P963, vivify_634
    $P963 = root_new ['parrot';'ResizablePMCArray']
  vivify_634:
    unless $P963, loop972_done
  loop972_redo:
.annotate 'line', 1005
    get_hll_global $P964, "GLOBAL"
    nqp_get_package_through_who $P965, $P964, "PAST"
    get_who $P966, $P965
    set $P967, $P966["Op"]
    find_lex $P968, "$past"
    unless_null $P968, vivify_635
    new $P968, "Undef"
  vivify_635:
    find_lex $P969, "@parts"
    unless_null $P969, vivify_636
    $P969 = root_new ['parrot';'ResizablePMCArray']
  vivify_636:
    $P970 = $P969."shift"()
    $P971 = $P967."new"($P968, $P970, "concat" :named("pirop"))
    store_lex "$past", $P971
  loop972_next:
.annotate 'line', 1004
    goto loop972_test
  loop972_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P974, exception, 'type'
    eq $P974, .CONTROL_LOOP_NEXT, loop972_next
    eq $P974, .CONTROL_LOOP_REDO, loop972_redo
  loop972_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P975, "$/"
    find_lex $P976, "$past"
    unless_null $P976, vivify_637
    new $P976, "Undef"
  vivify_637:
    $P977 = $P975."!make"($P976)
.annotate 'line', 985
    .return ($P977)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block909"  :anon :subid("146_1304459385.051") :outer("145_1304459385.051")
    .param pmc param_912
.annotate 'line', 989
    new $P911, "Undef"
    .lex "$ast", $P911
    .lex "$_", param_912
    find_lex $P913, "$_"
    unless_null $P913, vivify_617
    new $P913, "Undef"
  vivify_617:
    $P914 = $P913."ast"()
    store_lex "$ast", $P914
.annotate 'line', 990
    get_hll_global $P917, "GLOBAL"
    nqp_get_package_through_who $P918, $P917, "PAST"
    get_who $P919, $P918
    set $P920, $P919["Node"]
    find_lex $P921, "$ast"
    unless_null $P921, vivify_618
    new $P921, "Undef"
  vivify_618:
    $P922 = $P920."ACCEPTS"($P921)
    isfalse $I923, $P922
    if $I923, if_916
.annotate 'line', 993
    find_lex $P929, "$ast"
    unless_null $P929, vivify_619
    new $P929, "Undef"
  vivify_619:
    get_hll_global $P930, "GLOBAL"
    nqp_get_package_through_who $P931, $P930, "PAST"
    get_who $P932, $P931
    set $P933, $P932["Val"]
    $P934 = $P929."isa"($P933)
    if $P934, if_928
.annotate 'line', 997
    find_lex $P940, "$lastlit"
    unless_null $P940, vivify_620
    new $P940, "Undef"
  vivify_620:
    set $S941, $P940
    isgt $I942, $S941, ""
    unless $I942, if_939_end
    find_lex $P943, "@parts"
    unless_null $P943, vivify_621
    $P943 = root_new ['parrot';'ResizablePMCArray']
  vivify_621:
    find_lex $P944, "$lastlit"
    unless_null $P944, vivify_622
    new $P944, "Undef"
  vivify_622:
    $P943."push"($P944)
  if_939_end:
.annotate 'line', 998
    find_lex $P945, "@parts"
    unless_null $P945, vivify_623
    $P945 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    find_lex $P946, "$ast"
    unless_null $P946, vivify_624
    new $P946, "Undef"
  vivify_624:
    $P945."push"($P946)
.annotate 'line', 999
    new $P947, "String"
    assign $P947, ""
    store_lex "$lastlit", $P947
.annotate 'line', 996
    set $P927, $P947
.annotate 'line', 993
    goto if_928_end
  if_928:
.annotate 'line', 994
    find_lex $P935, "$lastlit"
    unless_null $P935, vivify_625
    new $P935, "Undef"
  vivify_625:
    find_lex $P936, "$ast"
    unless_null $P936, vivify_626
    new $P936, "Undef"
  vivify_626:
    $S937 = $P936."value"()
    concat $P938, $P935, $S937
    store_lex "$lastlit", $P938
.annotate 'line', 993
    set $P927, $P938
  if_928_end:
    set $P915, $P927
.annotate 'line', 990
    goto if_916_end
  if_916:
.annotate 'line', 991
    find_lex $P924, "$lastlit"
    unless_null $P924, vivify_627
    new $P924, "Undef"
  vivify_627:
    find_lex $P925, "$ast"
    unless_null $P925, vivify_628
    new $P925, "Undef"
  vivify_628:
    concat $P926, $P924, $P925
    store_lex "$lastlit", $P926
.annotate 'line', 990
    set $P915, $P926
  if_916_end:
.annotate 'line', 988
    .return ($P915)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("147_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 1010
    .lex "self", param_979
    .lex "$/", param_980
.annotate 'line', 1011
    find_lex $P981, "$/"
    find_lex $P984, "$/"
    unless_null $P984, vivify_638
    $P984 = root_new ['parrot';'Hash']
  vivify_638:
    set $P985, $P984["quote_escape"]
    unless_null $P985, vivify_639
    new $P985, "Undef"
  vivify_639:
    if $P985, if_983
    find_lex $P989, "$/"
    unless_null $P989, vivify_640
    new $P989, "Undef"
  vivify_640:
    set $S990, $P989
    new $P982, 'String'
    set $P982, $S990
    goto if_983_end
  if_983:
    find_lex $P986, "$/"
    unless_null $P986, vivify_641
    $P986 = root_new ['parrot';'Hash']
  vivify_641:
    set $P987, $P986["quote_escape"]
    unless_null $P987, vivify_642
    new $P987, "Undef"
  vivify_642:
    $P988 = $P987."ast"()
    set $P982, $P988
  if_983_end:
    $P991 = $P981."!make"($P982)
.annotate 'line', 1010
    .return ($P991)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("148_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_993
    .param pmc param_994
.annotate 'line', 1014
    .lex "self", param_993
    .lex "$/", param_994
    find_lex $P995, "$/"
    $P996 = $P995."!make"("\\")
    .return ($P996)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("149_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_998
    .param pmc param_999
.annotate 'line', 1015
    .lex "self", param_998
    .lex "$/", param_999
    find_lex $P1000, "$/"
    find_lex $P1001, "$/"
    unless_null $P1001, vivify_643
    $P1001 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1002, $P1001["stopper"]
    unless_null $P1002, vivify_644
    new $P1002, "Undef"
  vivify_644:
    set $S1003, $P1002
    $P1004 = $P1000."!make"($S1003)
    .return ($P1004)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("150_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1006
    .param pmc param_1007
.annotate 'line', 1017
    .lex "self", param_1006
    .lex "$/", param_1007
    find_lex $P1008, "$/"
    $P1009 = $P1008."!make"("\b")
    .return ($P1009)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("151_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1011
    .param pmc param_1012
.annotate 'line', 1018
    .lex "self", param_1011
    .lex "$/", param_1012
    find_lex $P1013, "$/"
    $P1014 = $P1013."!make"("\n")
    .return ($P1014)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("152_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1016
    .param pmc param_1017
.annotate 'line', 1019
    .lex "self", param_1016
    .lex "$/", param_1017
    find_lex $P1018, "$/"
    $P1019 = $P1018."!make"("\r")
    .return ($P1019)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("153_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1021
    .param pmc param_1022
.annotate 'line', 1020
    .lex "self", param_1021
    .lex "$/", param_1022
    find_lex $P1023, "$/"
    $P1024 = $P1023."!make"("\t")
    .return ($P1024)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("154_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1026
    .param pmc param_1027
.annotate 'line', 1021
    .lex "self", param_1026
    .lex "$/", param_1027
    find_lex $P1028, "$/"
    $P1029 = $P1028."!make"("\f")
    .return ($P1029)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("155_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1031
    .param pmc param_1032
.annotate 'line', 1022
    .lex "self", param_1031
    .lex "$/", param_1032
    find_lex $P1033, "$/"
    $P1034 = $P1033."!make"("\e")
    .return ($P1034)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("156_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1036
    .param pmc param_1037
.annotate 'line', 1024
    .lex "self", param_1036
    .lex "$/", param_1037
.annotate 'line', 1025
    find_lex $P1038, "$/"
    find_lex $P1041, "$/"
    unless_null $P1041, vivify_645
    $P1041 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1042, $P1041["hexint"]
    unless_null $P1042, vivify_646
    new $P1042, "Undef"
  vivify_646:
    if $P1042, if_1040
    find_lex $P1045, "$/"
    unless_null $P1045, vivify_647
    $P1045 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1046, $P1045["hexints"]
    unless_null $P1046, vivify_648
    $P1046 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1047, $P1046["hexint"]
    unless_null $P1047, vivify_649
    new $P1047, "Undef"
  vivify_649:
    set $P1039, $P1047
    goto if_1040_end
  if_1040:
    find_lex $P1043, "$/"
    unless_null $P1043, vivify_650
    $P1043 = root_new ['parrot';'Hash']
  vivify_650:
    set $P1044, $P1043["hexint"]
    unless_null $P1044, vivify_651
    new $P1044, "Undef"
  vivify_651:
    set $P1039, $P1044
  if_1040_end:
    $P1048 = "ints_to_string"($P1039)
    $P1049 = $P1038."!make"($P1048)
.annotate 'line', 1024
    .return ($P1049)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("157_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1051
    .param pmc param_1052
.annotate 'line', 1028
    .lex "self", param_1051
    .lex "$/", param_1052
.annotate 'line', 1029
    find_lex $P1053, "$/"
    find_lex $P1056, "$/"
    unless_null $P1056, vivify_652
    $P1056 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1057, $P1056["octint"]
    unless_null $P1057, vivify_653
    new $P1057, "Undef"
  vivify_653:
    if $P1057, if_1055
    find_lex $P1060, "$/"
    unless_null $P1060, vivify_654
    $P1060 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1061, $P1060["octints"]
    unless_null $P1061, vivify_655
    $P1061 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1062, $P1061["octint"]
    unless_null $P1062, vivify_656
    new $P1062, "Undef"
  vivify_656:
    set $P1054, $P1062
    goto if_1055_end
  if_1055:
    find_lex $P1058, "$/"
    unless_null $P1058, vivify_657
    $P1058 = root_new ['parrot';'Hash']
  vivify_657:
    set $P1059, $P1058["octint"]
    unless_null $P1059, vivify_658
    new $P1059, "Undef"
  vivify_658:
    set $P1054, $P1059
  if_1055_end:
    $P1063 = "ints_to_string"($P1054)
    $P1064 = $P1053."!make"($P1063)
.annotate 'line', 1028
    .return ($P1064)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("158_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1066
    .param pmc param_1067
.annotate 'line', 1032
    .lex "self", param_1066
    .lex "$/", param_1067
.annotate 'line', 1033
    find_lex $P1068, "$/"
    find_lex $P1069, "$/"
    unless_null $P1069, vivify_659
    $P1069 = root_new ['parrot';'Hash']
  vivify_659:
    set $P1070, $P1069["charspec"]
    unless_null $P1070, vivify_660
    new $P1070, "Undef"
  vivify_660:
    $P1071 = $P1070."ast"()
    $P1072 = $P1068."!make"($P1071)
.annotate 'line', 1032
    .return ($P1072)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("159_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1074
    .param pmc param_1075
.annotate 'line', 1036
    .lex "self", param_1074
    .lex "$/", param_1075
.annotate 'line', 1037
    find_lex $P1076, "$/"
    $P1077 = $P1076."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1077)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("160_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1079
    .param pmc param_1080
.annotate 'line', 1040
    .lex "self", param_1079
    .lex "$/", param_1080
.annotate 'line', 1041
    find_lex $P1081, "$/"
    find_lex $P1084, "$/"
    unless_null $P1084, vivify_661
    $P1084 = root_new ['parrot';'Hash']
  vivify_661:
    set $P1085, $P1084["textq"]
    unless_null $P1085, vivify_662
    new $P1085, "Undef"
  vivify_662:
    if $P1085, if_1083
    find_lex $P1091, "$/"
    unless_null $P1091, vivify_663
    $P1091 = root_new ['parrot';'Hash']
  vivify_663:
    set $P1092, $P1091["textqq"]
    unless_null $P1092, vivify_664
    new $P1092, "Undef"
  vivify_664:
    $P1093 = $P1092."Str"()
    set $P1082, $P1093
    goto if_1083_end
  if_1083:
    new $P1086, "String"
    assign $P1086, "\\"
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_665
    $P1087 = root_new ['parrot';'Hash']
  vivify_665:
    set $P1088, $P1087["textq"]
    unless_null $P1088, vivify_666
    new $P1088, "Undef"
  vivify_666:
    $S1089 = $P1088."Str"()
    concat $P1090, $P1086, $S1089
    set $P1082, $P1090
  if_1083_end:
    $P1094 = $P1081."!make"($P1082)
.annotate 'line', 1040
    .return ($P1094)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("161_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1096
    .param pmc param_1097
.annotate 'line', 1044
    .lex "self", param_1096
    .lex "$/", param_1097
.annotate 'line', 1045
    new $P1098, "Undef"
    .lex "$codepoint", $P1098
.annotate 'line', 1046
    find_lex $P1101, "$/"
    unless_null $P1101, vivify_667
    $P1101 = root_new ['parrot';'Hash']
  vivify_667:
    set $P1102, $P1101["integer"]
    unless_null $P1102, vivify_668
    new $P1102, "Undef"
  vivify_668:
    if $P1102, if_1100
.annotate 'line', 1047
    find_lex $P1106, "$/"
    unless_null $P1106, vivify_669
    new $P1106, "Undef"
  vivify_669:
    set $S1107, $P1106
    find_codepoint $I1108, $S1107
    new $P1099, 'Integer'
    set $P1099, $I1108
.annotate 'line', 1046
    goto if_1100_end
  if_1100:
    find_lex $P1103, "$/"
    unless_null $P1103, vivify_670
    $P1103 = root_new ['parrot';'Hash']
  vivify_670:
    set $P1104, $P1103["integer"]
    unless_null $P1104, vivify_671
    new $P1104, "Undef"
  vivify_671:
    $P1105 = $P1104."ast"()
    set $P1099, $P1105
  if_1100_end:
    store_lex "$codepoint", $P1099
.annotate 'line', 1048
    find_lex $P1110, "$codepoint"
    unless_null $P1110, vivify_672
    new $P1110, "Undef"
  vivify_672:
    set $N1111, $P1110
    islt $I1112, $N1111, 0.0
    unless $I1112, if_1109_end
    find_lex $P1113, "$/"
    unless_null $P1113, vivify_673
    new $P1113, "Undef"
  vivify_673:
    $P1114 = $P1113."CURSOR"()
    new $P1115, 'String'
    set $P1115, "Unrecognized character name "
    find_lex $P1116, "$/"
    unless_null $P1116, vivify_674
    new $P1116, "Undef"
  vivify_674:
    concat $P1117, $P1115, $P1116
    $P1114."panic"($P1117)
  if_1109_end:
.annotate 'line', 1049
    find_lex $P1118, "$/"
    find_lex $P1119, "$codepoint"
    unless_null $P1119, vivify_675
    new $P1119, "Undef"
  vivify_675:
    set $I1120, $P1119
    chr $S1121, $I1120
    $P1122 = $P1118."!make"($S1121)
.annotate 'line', 1044
    .return ($P1122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("162_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1124
    .param pmc param_1125
.annotate 'line', 1052
    .const 'Sub' $P1134 = "163_1304459385.051" 
    capture_lex $P1134
    .lex "self", param_1124
    .lex "$/", param_1125
.annotate 'line', 1053
    new $P1126, "Undef"
    .lex "$str", $P1126
    new $P1127, "String"
    assign $P1127, ""
    store_lex "$str", $P1127
.annotate 'line', 1054
    find_lex $P1129, "$/"
    unless_null $P1129, vivify_676
    $P1129 = root_new ['parrot';'Hash']
  vivify_676:
    set $P1130, $P1129["charname"]
    unless_null $P1130, vivify_677
    new $P1130, "Undef"
  vivify_677:
    defined $I1131, $P1130
    unless $I1131, for_undef_678
    iter $P1128, $P1130
    new $P1141, 'ExceptionHandler'
    set_label $P1141, loop1140_handler
    $P1141."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1141
  loop1140_test:
    unless $P1128, loop1140_done
    shift $P1132, $P1128
  loop1140_redo:
    .const 'Sub' $P1134 = "163_1304459385.051" 
    capture_lex $P1134
    $P1134($P1132)
  loop1140_next:
    goto loop1140_test
  loop1140_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1142, exception, 'type'
    eq $P1142, .CONTROL_LOOP_NEXT, loop1140_next
    eq $P1142, .CONTROL_LOOP_REDO, loop1140_redo
  loop1140_done:
    pop_eh 
  for_undef_678:
.annotate 'line', 1055
    find_lex $P1143, "$/"
    find_lex $P1144, "$str"
    unless_null $P1144, vivify_681
    new $P1144, "Undef"
  vivify_681:
    $P1145 = $P1143."!make"($P1144)
.annotate 'line', 1052
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1133"  :anon :subid("163_1304459385.051") :outer("162_1304459385.051")
    .param pmc param_1135
.annotate 'line', 1054
    .lex "$_", param_1135
    find_lex $P1136, "$str"
    unless_null $P1136, vivify_679
    new $P1136, "Undef"
  vivify_679:
    find_lex $P1137, "$_"
    unless_null $P1137, vivify_680
    new $P1137, "Undef"
  vivify_680:
    $S1138 = $P1137."ast"()
    concat $P1139, $P1136, $S1138
    store_lex "$str", $P1139
    .return ($P1139)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("164_1304459385.051") :outer("119_1304459385.051")
    .param pmc param_1147
    .param pmc param_1148
.annotate 'line', 1058
    .lex "self", param_1147
    .lex "$/", param_1148
.annotate 'line', 1059
    find_lex $P1149, "$/"
    find_lex $P1152, "$/"
    unless_null $P1152, vivify_682
    $P1152 = root_new ['parrot';'Hash']
  vivify_682:
    set $P1153, $P1152["charnames"]
    unless_null $P1153, vivify_683
    new $P1153, "Undef"
  vivify_683:
    if $P1153, if_1151
    find_lex $P1157, "$/"
    unless_null $P1157, vivify_684
    new $P1157, "Undef"
  vivify_684:
    $I1158 = "string_to_int"($P1157, 10)
    chr $S1159, $I1158
    new $P1150, 'String'
    set $P1150, $S1159
    goto if_1151_end
  if_1151:
    find_lex $P1154, "$/"
    unless_null $P1154, vivify_685
    $P1154 = root_new ['parrot';'Hash']
  vivify_685:
    set $P1155, $P1154["charnames"]
    unless_null $P1155, vivify_686
    new $P1155, "Undef"
  vivify_686:
    $P1156 = $P1155."ast"()
    set $P1150, $P1156
  if_1151_end:
    $P1160 = $P1149."!make"($P1150)
.annotate 'line', 1058
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1162"  :subid("165_1304459385.051") :outer("10_1304459385.051")
.annotate 'line', 1072
    .const 'Sub' $P2323 = "230_1304459385.051" 
    capture_lex $P2323
    .const 'Sub' $P2270 = "228_1304459385.051" 
    capture_lex $P2270
    .const 'Sub' $P2197 = "225_1304459385.051" 
    capture_lex $P2197
    .const 'Sub' $P2167 = "223_1304459385.051" 
    capture_lex $P2167
    .const 'Sub' $P2162 = "222_1304459385.051" 
    capture_lex $P2162
    .const 'Sub' $P2152 = "221_1304459385.051" 
    capture_lex $P2152
    .const 'Sub' $P2123 = "219_1304459385.051" 
    capture_lex $P2123
    .const 'Sub' $P2114 = "218_1304459385.051" 
    capture_lex $P2114
    .const 'Sub' $P2106 = "217_1304459385.051" 
    capture_lex $P2106
    .const 'Sub' $P2098 = "216_1304459385.051" 
    capture_lex $P2098
    .const 'Sub' $P2094 = "215_1304459385.051" 
    capture_lex $P2094
    .const 'Sub' $P2090 = "214_1304459385.051" 
    capture_lex $P2090
    .const 'Sub' $P2021 = "212_1304459385.051" 
    capture_lex $P2021
    .const 'Sub' $P1925 = "208_1304459385.051" 
    capture_lex $P1925
    .const 'Sub' $P1885 = "205_1304459385.051" 
    capture_lex $P1885
    .const 'Sub' $P1837 = "203_1304459385.051" 
    capture_lex $P1837
    .const 'Sub' $P1824 = "202_1304459385.051" 
    capture_lex $P1824
    .const 'Sub' $P1811 = "201_1304459385.051" 
    capture_lex $P1811
    .const 'Sub' $P1798 = "200_1304459385.051" 
    capture_lex $P1798
    .const 'Sub' $P1785 = "199_1304459385.051" 
    capture_lex $P1785
    .const 'Sub' $P1772 = "198_1304459385.051" 
    capture_lex $P1772
    .const 'Sub' $P1759 = "197_1304459385.051" 
    capture_lex $P1759
    .const 'Sub' $P1746 = "196_1304459385.051" 
    capture_lex $P1746
    .const 'Sub' $P1733 = "195_1304459385.051" 
    capture_lex $P1733
    .const 'Sub' $P1728 = "194_1304459385.051" 
    capture_lex $P1728
    .const 'Sub' $P1724 = "193_1304459385.051" 
    capture_lex $P1724
    .const 'Sub' $P1684 = "191_1304459385.051" 
    capture_lex $P1684
    .const 'Sub' $P1525 = "184_1304459385.051" 
    capture_lex $P1525
    .const 'Sub' $P1510 = "183_1304459385.051" 
    capture_lex $P1510
    .const 'Sub' $P1417 = "178_1304459385.051" 
    capture_lex $P1417
    .const 'Sub' $P1384 = "176_1304459385.051" 
    capture_lex $P1384
    .const 'Sub' $P1369 = "175_1304459385.051" 
    capture_lex $P1369
    .const 'Sub' $P1354 = "174_1304459385.051" 
    capture_lex $P1354
    .const 'Sub' $P1267 = "171_1304459385.051" 
    capture_lex $P1267
    .const 'Sub' $P1208 = "169_1304459385.051" 
    capture_lex $P1208
    .const 'Sub' $P1201 = "168_1304459385.051" 
    capture_lex $P1201
    .const 'Sub' $P1181 = "167_1304459385.051" 
    capture_lex $P1181
    .const 'Sub' $P1164 = "166_1304459385.051" 
    capture_lex $P1164
.annotate 'line', 1132
    .const 'Sub' $P1164 = "166_1304459385.051" 
    newclosure $P1177, $P1164
    .lex "value_type", $P1177
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1178
    .lex "$?CLASS", $P1179
.annotate 'line', 1094
    .const 'Sub' $P1181 = "167_1304459385.051" 
    capture_lex $P1181
    $P1181()
.annotate 'line', 1072
    find_lex $P1195, "$?PACKAGE"
    get_who $P1196, $P1195
    set $P1197, $P1196["$interactive_ctx"]
    unless_null $P1197, vivify_693
    new $P1197, "Undef"
  vivify_693:
    find_lex $P1198, "$?PACKAGE"
    get_who $P1199, $P1198
    set $P1200, $P1199["%interactive_pad"]
    unless_null $P1200, vivify_694
    $P1200 = root_new ['parrot';'Hash']
  vivify_694:
.annotate 'line', 1112
    find_lex $P1266, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2323 = "230_1304459385.051" 
    newclosure $P2329, $P2323
.annotate 'line', 1072
    .return ($P2329)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("166_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1165
.annotate 'line', 1132
    .lex "$value", param_1165
.annotate 'line', 1133
    find_lex $P1168, "$value"
    unless_null $P1168, vivify_687
    new $P1168, "Undef"
  vivify_687:
    isa $I1169, $P1168, "NameSpace"
    if $I1169, if_1167
.annotate 'line', 1135
    find_lex $P1173, "$value"
    unless_null $P1173, vivify_688
    new $P1173, "Undef"
  vivify_688:
    isa $I1174, $P1173, "Sub"
    if $I1174, if_1172
    new $P1176, "String"
    assign $P1176, "var"
    set $P1171, $P1176
    goto if_1172_end
  if_1172:
    new $P1175, "String"
    assign $P1175, "sub"
    set $P1171, $P1175
  if_1172_end:
    set $P1166, $P1171
.annotate 'line', 1133
    goto if_1167_end
  if_1167:
    new $P1170, "String"
    assign $P1170, "namespace"
    set $P1166, $P1170
  if_1167_end:
.annotate 'line', 1132
    .return ($P1166)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1180"  :anon :subid("167_1304459385.051") :outer("165_1304459385.051")
.annotate 'line', 1099
    $P1182 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1182
.annotate 'line', 1096
    getinterp $P1183
    set $P1184, $P1183["context"]
    unless_null $P1184, vivify_689
    new $P1184, "Undef"
  vivify_689:
    find_lex $P1185, "$?PACKAGE"
    get_who $P1186, $P1185
    set $P1186["$interactive_ctx"], $P1184
    find_lex $P1187, "%pad_contents"
    unless_null $P1187, vivify_690
    $P1187 = root_new ['parrot';'Hash']
  vivify_690:
.annotate 'line', 1101
    find_lex $P1188, "$?PACKAGE"
    get_who $P1189, $P1188
    set $P1190, $P1189["$interactive_ctx"]
    unless_null $P1190, vivify_691
    new $P1190, "Undef"
  vivify_691:
    getattribute $P1191, $P1190, "lex_pad"
    find_lex $P1192, "%pad_contents"
    unless_null $P1192, vivify_692
    $P1192 = root_new ['parrot';'Hash']
  vivify_692:
    copy $P1191, $P1192
.annotate 'line', 1100
    find_lex $P1193, "$?PACKAGE"
    get_who $P1194, $P1193
    set $P1194["%interactive_pad"], $P1191
.annotate 'line', 1094
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("168_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1202
.annotate 'line', 1106
    .lex "self", param_1202
.annotate 'line', 1107
    new $P1203, "Undef"
    .lex "$obj", $P1203
    find_lex $P1204, "self"
    repr_instance_of $P1205, $P1204
    store_lex "$obj", $P1205
.annotate 'line', 1108
    find_lex $P1206, "$obj"
    unless_null $P1206, vivify_695
    new $P1206, "Undef"
  vivify_695:
    $P1206."BUILD"()
    find_lex $P1207, "$obj"
    unless_null $P1207, vivify_696
    new $P1207, "Undef"
  vivify_696:
.annotate 'line', 1106
    .return ($P1207)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("169_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1209
.annotate 'line', 1112
    .const 'Sub' $P1230 = "170_1304459385.051" 
    capture_lex $P1230
    .lex "self", param_1209
.annotate 'line', 1122
    new $P1210, "Undef"
    .lex "$config_hash_idx", $P1210
.annotate 'line', 1126
    $P1211 = root_new ['parrot';'Hash']
    .lex "%config", $P1211
.annotate 'line', 1127
    new $P1212, "Undef"
    .lex "$version", $P1212
.annotate 'line', 1128
    new $P1213, "Undef"
    .lex "$revision", $P1213
.annotate 'line', 1114
    split $P1214, " ", "parse past post pir evalpmc"
    find_lex $P1215, "self"
    find_lex $P1216, "$?CLASS"
    setattribute $P1215, $P1216, "@!stages", $P1214
.annotate 'line', 1117
    split $P1217, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1218, "self"
    find_lex $P1219, "$?CLASS"
    setattribute $P1218, $P1219, "@!cmdoptions", $P1217
.annotate 'line', 1118
    new $P1220, "String"
    assign $P1220, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1221, "self"
    find_lex $P1222, "$?CLASS"
    setattribute $P1221, $P1222, "$!usage", $P1220
.annotate 'line', 1119
    find_lex $P1224, "self"
    find_lex $P1225, "$?CLASS"
    getattribute $P1226, $P1224, $P1225, "@!cmdoptions"
    unless_null $P1226, vivify_697
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    defined $I1227, $P1226
    unless $I1227, for_undef_698
    iter $P1223, $P1226
    new $P1243, 'ExceptionHandler'
    set_label $P1243, loop1242_handler
    $P1243."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1243
  loop1242_test:
    unless $P1223, loop1242_done
    shift $P1228, $P1223
  loop1242_redo:
    .const 'Sub' $P1230 = "170_1304459385.051" 
    capture_lex $P1230
    $P1230($P1228)
  loop1242_next:
    goto loop1242_test
  loop1242_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1244, exception, 'type'
    eq $P1244, .CONTROL_LOOP_NEXT, loop1242_next
    eq $P1244, .CONTROL_LOOP_REDO, loop1242_redo
  loop1242_done:
    pop_eh 
  for_undef_698:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1245 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1245
.annotate 'line', 1126
    find_lex $P1246, "$config_hash_idx"
    unless_null $P1246, vivify_701
    new $P1246, "Undef"
  vivify_701:
    set $I1247, $P1246
    getinterp $P1248
    set $P1249, $P1248[$I1247]
    unless_null $P1249, vivify_702
    new $P1249, "Undef"
  vivify_702:
    store_lex "%config", $P1249
.annotate 'line', 1127
    find_lex $P1250, "%config"
    unless_null $P1250, vivify_703
    $P1250 = root_new ['parrot';'Hash']
  vivify_703:
    set $P1251, $P1250["VERSION"]
    unless_null $P1251, vivify_704
    new $P1251, "Undef"
  vivify_704:
    store_lex "$version", $P1251
.annotate 'line', 1128
    find_lex $P1253, "%config"
    unless_null $P1253, vivify_705
    $P1253 = root_new ['parrot';'Hash']
  vivify_705:
    set $P1254, $P1253["git_describe"]
    unless_null $P1254, vivify_706
    new $P1254, "Undef"
  vivify_706:
    set $P1252, $P1254
    defined $I1256, $P1252
    if $I1256, default_1255
    new $P1257, "String"
    assign $P1257, "(unknown)"
    set $P1252, $P1257
  default_1255:
    store_lex "$revision", $P1252
.annotate 'line', 1129
    new $P1258, 'String'
    set $P1258, "This compiler is built with NQP, parrot "
    find_lex $P1259, "$version"
    unless_null $P1259, vivify_707
    new $P1259, "Undef"
  vivify_707:
    concat $P1260, $P1258, $P1259
    concat $P1261, $P1260, ", revision "
    find_lex $P1262, "$revision"
    unless_null $P1262, vivify_708
    new $P1262, "Undef"
  vivify_708:
    concat $P1263, $P1261, $P1262
    find_lex $P1264, "self"
    find_lex $P1265, "$?CLASS"
    setattribute $P1264, $P1265, "$!version", $P1263
.annotate 'line', 1112
    .return ($P1263)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1229"  :anon :subid("170_1304459385.051") :outer("169_1304459385.051")
    .param pmc param_1231
.annotate 'line', 1119
    .lex "$_", param_1231
.annotate 'line', 1120
    find_lex $P1232, "self"
    find_lex $P1233, "$?CLASS"
    getattribute $P1234, $P1232, $P1233, "$!usage"
    unless_null $P1234, vivify_699
    new $P1234, "Undef"
  vivify_699:
    new $P1235, 'String'
    set $P1235, "    "
    find_lex $P1236, "$_"
    unless_null $P1236, vivify_700
    new $P1236, "Undef"
  vivify_700:
    concat $P1237, $P1235, $P1236
    concat $P1238, $P1237, "\n"
    concat $P1239, $P1234, $P1238
    find_lex $P1240, "self"
    find_lex $P1241, "$?CLASS"
    setattribute $P1240, $P1241, "$!usage", $P1239
.annotate 'line', 1119
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("171_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1268
    .param pmc param_1269
    .param pmc param_1272 :slurpy
    .param pmc param_1270 :optional :named("tagset")
    .param int has_param_1270 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1338 = "173_1304459385.051" 
    capture_lex $P1338
    .const 'Sub' $P1317 = "172_1304459385.051" 
    capture_lex $P1317
    .lex "self", param_1268
    .lex "$module", param_1269
    if has_param_1270, optparam_709
    new $P1271, "Undef"
    set param_1270, $P1271
  optparam_709:
    .lex "$tagset", param_1270
    .lex "@symbols", param_1272
.annotate 'line', 1145
    $P1273 = root_new ['parrot';'Hash']
    .lex "%exports", $P1273
.annotate 'line', 1146
    $P1274 = root_new ['parrot';'Hash']
    .lex "%source", $P1274
.annotate 'line', 1140
    find_lex $P1276, "$module"
    unless_null $P1276, vivify_710
    new $P1276, "Undef"
  vivify_710:
    does $I1277, $P1276, "hash"
    new $P1278, 'Integer'
    set $P1278, $I1277
    isfalse $I1279, $P1278
    unless $I1279, if_1275_end
.annotate 'line', 1141
    find_lex $P1280, "self"
    find_lex $P1281, "$module"
    unless_null $P1281, vivify_711
    new $P1281, "Undef"
  vivify_711:
    $P1282 = $P1280."get_module"($P1281)
    store_lex "$module", $P1282
  if_1275_end:
.annotate 'line', 1144
    find_lex $P1284, "$tagset"
    unless_null $P1284, vivify_712
    new $P1284, "Undef"
  vivify_712:
    set $P1283, $P1284
    defined $I1286, $P1283
    if $I1286, default_1285
    find_lex $P1289, "@symbols"
    unless_null $P1289, vivify_713
    $P1289 = root_new ['parrot';'ResizablePMCArray']
  vivify_713:
    if $P1289, if_1288
    new $P1291, "String"
    assign $P1291, "DEFAULT"
    set $P1287, $P1291
    goto if_1288_end
  if_1288:
    new $P1290, "String"
    assign $P1290, "ALL"
    set $P1287, $P1290
  if_1288_end:
    set $P1283, $P1287
  default_1285:
    store_lex "$tagset", $P1283
    find_lex $P1292, "%exports"
    unless_null $P1292, vivify_714
    $P1292 = root_new ['parrot';'Hash']
  vivify_714:
.annotate 'line', 1146
    find_lex $P1293, "$tagset"
    unless_null $P1293, vivify_715
    new $P1293, "Undef"
  vivify_715:
    set $S1294, $P1293
    find_lex $P1295, "$module"
    unless_null $P1295, vivify_716
    $P1295 = root_new ['parrot';'Hash']
  vivify_716:
    set $P1296, $P1295["EXPORT"]
    unless_null $P1296, vivify_717
    $P1296 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1297, $P1296[$S1294]
    unless_null $P1297, vivify_718
    new $P1297, "Undef"
  vivify_718:
    store_lex "%source", $P1297
.annotate 'line', 1147
    find_lex $P1299, "%source"
    unless_null $P1299, vivify_719
    $P1299 = root_new ['parrot';'Hash']
  vivify_719:
    defined $I1300, $P1299
    new $P1301, 'Integer'
    set $P1301, $I1300
    isfalse $I1302, $P1301
    unless $I1302, if_1298_end
.annotate 'line', 1148
    find_lex $P1305, "$tagset"
    unless_null $P1305, vivify_720
    new $P1305, "Undef"
  vivify_720:
    set $S1306, $P1305
    iseq $I1307, $S1306, "ALL"
    if $I1307, if_1304
    $P1309 = root_new ['parrot';'Hash']
    set $P1303, $P1309
    goto if_1304_end
  if_1304:
    find_lex $P1308, "$module"
    unless_null $P1308, vivify_721
    new $P1308, "Undef"
  vivify_721:
    set $P1303, $P1308
  if_1304_end:
    store_lex "%source", $P1303
  if_1298_end:
.annotate 'line', 1150
    find_lex $P1311, "@symbols"
    unless_null $P1311, vivify_722
    $P1311 = root_new ['parrot';'ResizablePMCArray']
  vivify_722:
    if $P1311, if_1310
.annotate 'line', 1157
    find_lex $P1334, "%source"
    unless_null $P1334, vivify_723
    $P1334 = root_new ['parrot';'Hash']
  vivify_723:
    defined $I1335, $P1334
    unless $I1335, for_undef_724
    iter $P1333, $P1334
    new $P1351, 'ExceptionHandler'
    set_label $P1351, loop1350_handler
    $P1351."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1351
  loop1350_test:
    unless $P1333, loop1350_done
    shift $P1336, $P1333
  loop1350_redo:
    .const 'Sub' $P1338 = "173_1304459385.051" 
    capture_lex $P1338
    $P1338($P1336)
  loop1350_next:
    goto loop1350_test
  loop1350_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1352, exception, 'type'
    eq $P1352, .CONTROL_LOOP_NEXT, loop1350_next
    eq $P1352, .CONTROL_LOOP_REDO, loop1350_redo
  loop1350_done:
    pop_eh 
  for_undef_724:
.annotate 'line', 1156
    goto if_1310_end
  if_1310:
.annotate 'line', 1151
    find_lex $P1313, "@symbols"
    unless_null $P1313, vivify_731
    $P1313 = root_new ['parrot';'ResizablePMCArray']
  vivify_731:
    defined $I1314, $P1313
    unless $I1314, for_undef_732
    iter $P1312, $P1313
    new $P1331, 'ExceptionHandler'
    set_label $P1331, loop1330_handler
    $P1331."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1331
  loop1330_test:
    unless $P1312, loop1330_done
    shift $P1315, $P1312
  loop1330_redo:
    .const 'Sub' $P1317 = "172_1304459385.051" 
    capture_lex $P1317
    $P1317($P1315)
  loop1330_next:
    goto loop1330_test
  loop1330_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1332, exception, 'type'
    eq $P1332, .CONTROL_LOOP_NEXT, loop1330_next
    eq $P1332, .CONTROL_LOOP_REDO, loop1330_redo
  loop1330_done:
    pop_eh 
  for_undef_732:
  if_1310_end:
.annotate 'line', 1150
    find_lex $P1353, "%exports"
    unless_null $P1353, vivify_741
    $P1353 = root_new ['parrot';'Hash']
  vivify_741:
.annotate 'line', 1138
    .return ($P1353)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1337"  :anon :subid("173_1304459385.051") :outer("171_1304459385.051")
    .param pmc param_1340
.annotate 'line', 1158
    new $P1339, "Undef"
    .lex "$value", $P1339
    .lex "$_", param_1340
    find_lex $P1341, "$_"
    unless_null $P1341, vivify_725
    new $P1341, "Undef"
  vivify_725:
    $P1342 = $P1341."value"()
    store_lex "$value", $P1342
.annotate 'line', 1159
    find_lex $P1343, "$value"
    unless_null $P1343, vivify_726
    new $P1343, "Undef"
  vivify_726:
    find_lex $P1344, "$_"
    unless_null $P1344, vivify_727
    new $P1344, "Undef"
  vivify_727:
    $P1345 = $P1344."key"()
    find_lex $P1346, "$value"
    unless_null $P1346, vivify_728
    new $P1346, "Undef"
  vivify_728:
    $P1347 = "value_type"($P1346)
    find_lex $P1348, "%exports"
    unless_null $P1348, vivify_729
    $P1348 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1348
  vivify_729:
    set $P1349, $P1348[$P1347]
    unless_null $P1349, vivify_730
    $P1349 = root_new ['parrot';'Hash']
    set $P1348[$P1347], $P1349
  vivify_730:
    set $P1349[$P1345], $P1343
.annotate 'line', 1157
    .return ($P1343)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1316"  :anon :subid("172_1304459385.051") :outer("171_1304459385.051")
    .param pmc param_1319
.annotate 'line', 1152
    new $P1318, "Undef"
    .lex "$value", $P1318
    .lex "$_", param_1319
    find_lex $P1320, "$_"
    unless_null $P1320, vivify_733
    new $P1320, "Undef"
  vivify_733:
    set $S1321, $P1320
    find_lex $P1322, "%source"
    unless_null $P1322, vivify_734
    $P1322 = root_new ['parrot';'Hash']
  vivify_734:
    set $P1323, $P1322[$S1321]
    unless_null $P1323, vivify_735
    new $P1323, "Undef"
  vivify_735:
    store_lex "$value", $P1323
.annotate 'line', 1153
    find_lex $P1324, "$value"
    unless_null $P1324, vivify_736
    new $P1324, "Undef"
  vivify_736:
    find_lex $P1325, "$_"
    unless_null $P1325, vivify_737
    new $P1325, "Undef"
  vivify_737:
    find_lex $P1326, "$value"
    unless_null $P1326, vivify_738
    new $P1326, "Undef"
  vivify_738:
    $P1327 = "value_type"($P1326)
    find_lex $P1328, "%exports"
    unless_null $P1328, vivify_739
    $P1328 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1328
  vivify_739:
    set $P1329, $P1328[$P1327]
    unless_null $P1329, vivify_740
    $P1329 = root_new ['parrot';'Hash']
    set $P1328[$P1327], $P1329
  vivify_740:
    set $P1329[$P1325], $P1324
.annotate 'line', 1151
    .return ($P1324)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("174_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1355
    .param pmc param_1356
.annotate 'line', 1165
    .lex "self", param_1355
    .lex "$name", param_1356
.annotate 'line', 1166
    $P1357 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1357
    find_lex $P1358, "self"
    find_lex $P1359, "$name"
    unless_null $P1359, vivify_742
    new $P1359, "Undef"
  vivify_742:
    $P1360 = $P1358."parse_name"($P1359)
    store_lex "@name", $P1360
.annotate 'line', 1167
    find_lex $P1361, "@name"
    unless_null $P1361, vivify_743
    $P1361 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    find_lex $P1362, "self"
    find_lex $P1363, "$?CLASS"
    getattribute $P1364, $P1362, $P1363, "$!language"
    unless_null $P1364, vivify_744
    new $P1364, "Undef"
  vivify_744:
    set $S1365, $P1364
    downcase $S1366, $S1365
    $P1361."unshift"($S1366)
.annotate 'line', 1168
    find_lex $P1367, "@name"
    unless_null $P1367, vivify_745
    $P1367 = root_new ['parrot';'ResizablePMCArray']
  vivify_745:
    get_root_namespace $P1368, $P1367
.annotate 'line', 1165
    .return ($P1368)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("175_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1370
    .param pmc param_1371 :optional
    .param int has_param_1371 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1370
    if has_param_1371, optparam_746
    new $P1372, "Undef"
    set param_1371, $P1372
  optparam_746:
    .lex "$name", param_1371
.annotate 'line', 1172
    find_lex $P1374, "$name"
    unless_null $P1374, vivify_747
    new $P1374, "Undef"
  vivify_747:
    unless $P1374, if_1373_end
.annotate 'line', 1173
    find_lex $P1375, "$name"
    unless_null $P1375, vivify_748
    new $P1375, "Undef"
  vivify_748:
    find_lex $P1376, "self"
    find_lex $P1377, "$?CLASS"
    setattribute $P1376, $P1377, "$!language", $P1375
.annotate 'line', 1174
    find_lex $P1378, "$name"
    unless_null $P1378, vivify_749
    new $P1378, "Undef"
  vivify_749:
    set $S1379, $P1378
    find_lex $P1380, "self"
    compreg $S1379, $P1380
  if_1373_end:
.annotate 'line', 1172
    find_lex $P1381, "self"
    find_lex $P1382, "$?CLASS"
    getattribute $P1383, $P1381, $P1382, "$!language"
    unless_null $P1383, vivify_750
    new $P1383, "Undef"
  vivify_750:
.annotate 'line', 1171
    .return ($P1383)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("176_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1385
    .param pmc param_1386
.annotate 'line', 1179
    .const 'Sub' $P1396 = "177_1304459385.051" 
    capture_lex $P1396
    .lex "self", param_1385
    .lex "$name", param_1386
.annotate 'line', 1180
    new $P1387, "Undef"
    .lex "$base", $P1387
.annotate 'line', 1181
    new $P1388, "Undef"
    .lex "$loaded", $P1388
.annotate 'line', 1180
    find_lex $P1389, "self"
    find_lex $P1390, "$name"
    unless_null $P1390, vivify_751
    new $P1390, "Undef"
  vivify_751:
    $P1391 = $P1389."parse_name"($P1390)
    join $S1392, "/", $P1391
    new $P1393, 'String'
    set $P1393, $S1392
    store_lex "$base", $P1393
.annotate 'line', 1181
    new $P1394, "Integer"
    assign $P1394, 0
    store_lex "$loaded", $P1394
.annotate 'line', 1182
    .const 'Sub' $P1396 = "177_1304459385.051" 
    capture_lex $P1396
    $P1396()
.annotate 'line', 1183
    find_lex $P1409, "$loaded"
    unless_null $P1409, vivify_753
    new $P1409, "Undef"
  vivify_753:
    if $P1409, unless_1408_end
    find_lex $P1410, "$base"
    unless_null $P1410, vivify_754
    new $P1410, "Undef"
  vivify_754:
    concat $P1411, $P1410, ".pir"
    set $S1412, $P1411
    load_bytecode $S1412
    new $P1413, "Integer"
    assign $P1413, 1
    store_lex "$loaded", $P1413
  unless_1408_end:
.annotate 'line', 1184
    find_lex $P1414, "self"
    find_lex $P1415, "$name"
    unless_null $P1415, vivify_755
    new $P1415, "Undef"
  vivify_755:
    $P1416 = $P1414."get_module"($P1415)
.annotate 'line', 1179
    .return ($P1416)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1395"  :anon :subid("177_1304459385.051") :outer("176_1304459385.051")
.annotate 'line', 1182
    new $P1403, 'ExceptionHandler'
    set_label $P1403, control_1402
    $P1403."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1403
    find_lex $P1397, "$base"
    unless_null $P1397, vivify_752
    new $P1397, "Undef"
  vivify_752:
    concat $P1398, $P1397, ".pbc"
    set $S1399, $P1398
    load_bytecode $S1399
    new $P1400, "Integer"
    assign $P1400, 1
    store_lex "$loaded", $P1400
    pop_eh 
    goto skip_handler_1401
  control_1402:
    .local pmc exception 
    .get_results (exception) 
    new $P1406, 'Integer'
    set $P1406, 1
    set exception["handled"], $P1406
    set $I1407, exception["handled"]
    ne $I1407, 1, nothandled_1405
  handled_1404:
    .return (exception)
  nothandled_1405:
    rethrow exception
  skip_handler_1401:
    .return ($P1400)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("178_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1418
    .param pmc param_1419
    .param pmc param_1420
.annotate 'line', 1187
    .const 'Sub' $P1426 = "179_1304459385.051" 
    capture_lex $P1426
    .lex "self", param_1418
    .lex "$target", param_1419
    .lex "%exports", param_1420
.annotate 'line', 1188
    find_lex $P1422, "%exports"
    unless_null $P1422, vivify_756
    $P1422 = root_new ['parrot';'Hash']
  vivify_756:
    defined $I1423, $P1422
    unless $I1423, for_undef_757
    iter $P1421, $P1422
    new $P1508, 'ExceptionHandler'
    set_label $P1508, loop1507_handler
    $P1508."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1508
  loop1507_test:
    unless $P1421, loop1507_done
    shift $P1424, $P1421
  loop1507_redo:
    .const 'Sub' $P1426 = "179_1304459385.051" 
    capture_lex $P1426
    $P1426($P1424)
  loop1507_next:
    goto loop1507_test
  loop1507_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1509, exception, 'type'
    eq $P1509, .CONTROL_LOOP_NEXT, loop1507_next
    eq $P1509, .CONTROL_LOOP_REDO, loop1507_redo
  loop1507_done:
    pop_eh 
  for_undef_757:
.annotate 'line', 1187
    .return ($P1421)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1425"  :anon :subid("179_1304459385.051") :outer("178_1304459385.051")
    .param pmc param_1429
.annotate 'line', 1188
    .const 'Sub' $P1496 = "182_1304459385.051" 
    capture_lex $P1496
    .const 'Sub' $P1476 = "181_1304459385.051" 
    capture_lex $P1476
    .const 'Sub' $P1447 = "180_1304459385.051" 
    capture_lex $P1447
.annotate 'line', 1189
    new $P1427, "Undef"
    .lex "$type", $P1427
.annotate 'line', 1190
    $P1428 = root_new ['parrot';'Hash']
    .lex "%items", $P1428
    .lex "$_", param_1429
.annotate 'line', 1189
    find_lex $P1430, "$_"
    unless_null $P1430, vivify_758
    new $P1430, "Undef"
  vivify_758:
    $P1431 = $P1430."key"()
    store_lex "$type", $P1431
.annotate 'line', 1190
    find_lex $P1432, "$_"
    unless_null $P1432, vivify_759
    new $P1432, "Undef"
  vivify_759:
    $P1433 = $P1432."value"()
    store_lex "%items", $P1433
.annotate 'line', 1191
    find_lex $P1436, "self"
    new $P1437, 'String'
    set $P1437, "import_"
    find_lex $P1438, "$type"
    unless_null $P1438, vivify_760
    new $P1438, "Undef"
  vivify_760:
    concat $P1439, $P1437, $P1438
    set $S1440, $P1439
    can $I1441, $P1436, $S1440
    if $I1441, if_1435
.annotate 'line', 1194
    find_lex $P1465, "$target"
    unless_null $P1465, vivify_761
    new $P1465, "Undef"
  vivify_761:
    new $P1466, 'String'
    set $P1466, "add_"
    find_lex $P1467, "$type"
    unless_null $P1467, vivify_762
    new $P1467, "Undef"
  vivify_762:
    concat $P1468, $P1466, $P1467
    set $S1469, $P1468
    can $I1470, $P1465, $S1469
    if $I1470, if_1464
.annotate 'line', 1198
    find_lex $P1492, "%items"
    unless_null $P1492, vivify_763
    $P1492 = root_new ['parrot';'Hash']
  vivify_763:
    defined $I1493, $P1492
    unless $I1493, for_undef_764
    iter $P1491, $P1492
    new $P1505, 'ExceptionHandler'
    set_label $P1505, loop1504_handler
    $P1505."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1505
  loop1504_test:
    unless $P1491, loop1504_done
    shift $P1494, $P1491
  loop1504_redo:
    .const 'Sub' $P1496 = "182_1304459385.051" 
    capture_lex $P1496
    $P1496($P1494)
  loop1504_next:
    goto loop1504_test
  loop1504_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1506, exception, 'type'
    eq $P1506, .CONTROL_LOOP_NEXT, loop1504_next
    eq $P1506, .CONTROL_LOOP_REDO, loop1504_redo
  loop1504_done:
    pop_eh 
  for_undef_764:
.annotate 'line', 1197
    set $P1463, $P1491
.annotate 'line', 1194
    goto if_1464_end
  if_1464:
.annotate 'line', 1195
    find_lex $P1472, "%items"
    unless_null $P1472, vivify_768
    $P1472 = root_new ['parrot';'Hash']
  vivify_768:
    defined $I1473, $P1472
    unless $I1473, for_undef_769
    iter $P1471, $P1472
    new $P1489, 'ExceptionHandler'
    set_label $P1489, loop1488_handler
    $P1489."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1489
  loop1488_test:
    unless $P1471, loop1488_done
    shift $P1474, $P1471
  loop1488_redo:
    .const 'Sub' $P1476 = "181_1304459385.051" 
    capture_lex $P1476
    $P1476($P1474)
  loop1488_next:
    goto loop1488_test
  loop1488_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1490, exception, 'type'
    eq $P1490, .CONTROL_LOOP_NEXT, loop1488_next
    eq $P1490, .CONTROL_LOOP_REDO, loop1488_redo
  loop1488_done:
    pop_eh 
  for_undef_769:
.annotate 'line', 1194
    set $P1463, $P1471
  if_1464_end:
    set $P1434, $P1463
.annotate 'line', 1191
    goto if_1435_end
  if_1435:
.annotate 'line', 1192
    find_lex $P1443, "%items"
    unless_null $P1443, vivify_774
    $P1443 = root_new ['parrot';'Hash']
  vivify_774:
    defined $I1444, $P1443
    unless $I1444, for_undef_775
    iter $P1442, $P1443
    new $P1461, 'ExceptionHandler'
    set_label $P1461, loop1460_handler
    $P1461."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1461
  loop1460_test:
    unless $P1442, loop1460_done
    shift $P1445, $P1442
  loop1460_redo:
    .const 'Sub' $P1447 = "180_1304459385.051" 
    capture_lex $P1447
    $P1447($P1445)
  loop1460_next:
    goto loop1460_test
  loop1460_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1462, exception, 'type'
    eq $P1462, .CONTROL_LOOP_NEXT, loop1460_next
    eq $P1462, .CONTROL_LOOP_REDO, loop1460_redo
  loop1460_done:
    pop_eh 
  for_undef_775:
.annotate 'line', 1191
    set $P1434, $P1442
  if_1435_end:
.annotate 'line', 1188
    .return ($P1434)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1495"  :anon :subid("182_1304459385.051") :outer("179_1304459385.051")
    .param pmc param_1497
.annotate 'line', 1198
    .lex "$_", param_1497
    find_lex $P1498, "$_"
    unless_null $P1498, vivify_765
    new $P1498, "Undef"
  vivify_765:
    $P1499 = $P1498."value"()
    find_lex $P1500, "$_"
    unless_null $P1500, vivify_766
    new $P1500, "Undef"
  vivify_766:
    $P1501 = $P1500."key"()
    set $S1502, $P1501
    find_lex $P1503, "$target"
    unless_null $P1503, vivify_767
    $P1503 = root_new ['parrot';'Hash']
    store_lex "$target", $P1503
  vivify_767:
    set $P1503[$S1502], $P1499
    .return ($P1499)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1475"  :anon :subid("181_1304459385.051") :outer("179_1304459385.051")
    .param pmc param_1477
.annotate 'line', 1195
    .lex "$_", param_1477
    find_lex $P1478, "$target"
    unless_null $P1478, vivify_770
    new $P1478, "Undef"
  vivify_770:
    find_lex $P1479, "$_"
    unless_null $P1479, vivify_771
    new $P1479, "Undef"
  vivify_771:
    $P1480 = $P1479."key"()
    find_lex $P1481, "$_"
    unless_null $P1481, vivify_772
    new $P1481, "Undef"
  vivify_772:
    $P1482 = $P1481."value"()
    new $P1483, 'String'
    set $P1483, "add_"
    find_lex $P1484, "$type"
    unless_null $P1484, vivify_773
    new $P1484, "Undef"
  vivify_773:
    concat $P1485, $P1483, $P1484
    set $S1486, $P1485
    $P1487 = $P1478.$S1486($P1480, $P1482)
    .return ($P1487)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1446"  :anon :subid("180_1304459385.051") :outer("179_1304459385.051")
    .param pmc param_1448
.annotate 'line', 1192
    .lex "$_", param_1448
    find_lex $P1449, "self"
    find_lex $P1450, "$target"
    unless_null $P1450, vivify_776
    new $P1450, "Undef"
  vivify_776:
    find_lex $P1451, "$_"
    unless_null $P1451, vivify_777
    new $P1451, "Undef"
  vivify_777:
    $P1452 = $P1451."key"()
    find_lex $P1453, "$_"
    unless_null $P1453, vivify_778
    new $P1453, "Undef"
  vivify_778:
    $P1454 = $P1453."value"()
    new $P1455, 'String'
    set $P1455, "import_"
    find_lex $P1456, "$type"
    unless_null $P1456, vivify_779
    new $P1456, "Undef"
  vivify_779:
    concat $P1457, $P1455, $P1456
    set $S1458, $P1457
    $P1459 = $P1449.$S1458($P1450, $P1452, $P1454)
    .return ($P1459)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("183_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1511
    .param pmc param_1512
.annotate 'line', 1203
    .lex "self", param_1511
    .lex "$value", param_1512
.annotate 'line', 1205
    getinterp $P1515
    $P1516 = $P1515."stdout_handle"()
    $N1517 = $P1516."tell"()
    find_dynamic_lex $P1520, "$*AUTOPRINTPOS"
    unless_null $P1520, vivify_780
    get_hll_global $P1518, "GLOBAL"
    get_who $P1519, $P1518
    set $P1520, $P1519["$AUTOPRINTPOS"]
    unless_null $P1520, vivify_781
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_781:
  vivify_780:
    set $N1521, $P1520
    isgt $I1522, $N1517, $N1521
    unless $I1522, unless_1514
    new $P1513, 'Integer'
    set $P1513, $I1522
    goto unless_1514_end
  unless_1514:
.annotate 'line', 1204
    find_lex $P1523, "$value"
    unless_null $P1523, vivify_782
    new $P1523, "Undef"
  vivify_782:
    set $S1524, $P1523
    say $S1524
  unless_1514_end:
.annotate 'line', 1203
    .return ($P1513)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("184_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1526
    .param pmc param_1527 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1559 = "185_1304459385.051" 
    capture_lex $P1559
    .lex "self", param_1526
    .lex "%adverbs", param_1527
.annotate 'line', 1209
    new $P1528, "Undef"
    .lex "$target", $P1528
.annotate 'line', 1213
    new $P1529, "Undef"
    .lex "$stdin", $P1529
.annotate 'line', 1214
    new $P1530, "Undef"
    .lex "$encoding", $P1530
.annotate 'line', 1219
    new $P1531, "Undef"
    .lex "$save_ctx", $P1531
.annotate 'line', 1209
    find_lex $P1532, "%adverbs"
    unless_null $P1532, vivify_783
    $P1532 = root_new ['parrot';'Hash']
  vivify_783:
    set $P1533, $P1532["target"]
    unless_null $P1533, vivify_784
    new $P1533, "Undef"
  vivify_784:
    set $S1534, $P1533
    downcase $S1535, $S1534
    new $P1536, 'String'
    set $P1536, $S1535
    store_lex "$target", $P1536
.annotate 'line', 1211
    getinterp $P1537
    $P1538 = $P1537."stderr_handle"()
    find_lex $P1539, "self"
    $S1540 = $P1539."commandline_banner"()
    print $P1538, $S1540
.annotate 'line', 1213
    getinterp $P1541
    $P1542 = $P1541."stdin_handle"()
    store_lex "$stdin", $P1542
.annotate 'line', 1214
    find_lex $P1543, "%adverbs"
    unless_null $P1543, vivify_785
    $P1543 = root_new ['parrot';'Hash']
  vivify_785:
    set $P1544, $P1543["encoding"]
    unless_null $P1544, vivify_786
    new $P1544, "Undef"
  vivify_786:
    set $S1545, $P1544
    new $P1546, 'String'
    set $P1546, $S1545
    store_lex "$encoding", $P1546
.annotate 'line', 1215
    find_lex $P1550, "$encoding"
    unless_null $P1550, vivify_787
    new $P1550, "Undef"
  vivify_787:
    if $P1550, if_1549
    set $P1548, $P1550
    goto if_1549_end
  if_1549:
    find_lex $P1551, "$encoding"
    unless_null $P1551, vivify_788
    new $P1551, "Undef"
  vivify_788:
    set $S1552, $P1551
    isne $I1553, $S1552, "fixed_8"
    new $P1548, 'Integer'
    set $P1548, $I1553
  if_1549_end:
    unless $P1548, if_1547_end
.annotate 'line', 1216
    find_lex $P1554, "$stdin"
    unless_null $P1554, vivify_789
    new $P1554, "Undef"
  vivify_789:
    find_lex $P1555, "$encoding"
    unless_null $P1555, vivify_790
    new $P1555, "Undef"
  vivify_790:
    $P1554."encoding"($P1555)
  if_1547_end:
.annotate 'line', 1215
    find_lex $P1556, "$save_ctx"
    unless_null $P1556, vivify_791
    new $P1556, "Undef"
  vivify_791:
.annotate 'line', 1220
    new $P1682, 'ExceptionHandler'
    set_label $P1682, loop1681_handler
    $P1682."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1682
  loop1681_test:
    new $P1557, "Integer"
    assign $P1557, 1
    unless $P1557, loop1681_done
  loop1681_redo:
    .const 'Sub' $P1559 = "185_1304459385.051" 
    capture_lex $P1559
    $P1559()
  loop1681_next:
    goto loop1681_test
  loop1681_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1683, exception, 'type'
    eq $P1683, .CONTROL_LOOP_NEXT, loop1681_next
    eq $P1683, .CONTROL_LOOP_REDO, loop1681_redo
  loop1681_done:
    pop_eh 
.annotate 'line', 1208
    .return ($P1557)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1558"  :anon :subid("185_1304459385.051") :outer("184_1304459385.051")
.annotate 'line', 1220
    .const 'Sub' $P1593 = "186_1304459385.051" 
    capture_lex $P1593
.annotate 'line', 1223
    new $P1560, "Undef"
    .lex "$prompt", $P1560
.annotate 'line', 1224
    new $P1561, "Undef"
    .lex "$code", $P1561
.annotate 'line', 1229
    new $P1562, "Undef"
    .lex "$*AUTOPRINTPOS", $P1562
.annotate 'line', 1230
    new $P1563, "Undef"
    .lex "$*CTXSAVE", $P1563
.annotate 'line', 1231
    new $P1564, "Undef"
    .lex "$*MAIN_CTX", $P1564
.annotate 'line', 1221
    find_lex $P1566, "$stdin"
    unless_null $P1566, vivify_792
    new $P1566, "Undef"
  vivify_792:
    if $P1566, unless_1565_end
    set $I1567, .CONTROL_LOOP_LAST
    die 0, $I1567
  unless_1565_end:
.annotate 'line', 1223
    find_lex $P1569, "self"
    $P1570 = $P1569."commandline_prompt"()
    set $P1568, $P1570
    defined $I1572, $P1568
    if $I1572, default_1571
    new $P1573, "String"
    assign $P1573, "> "
    set $P1568, $P1573
  default_1571:
    store_lex "$prompt", $P1568
.annotate 'line', 1224
    find_lex $P1574, "$stdin"
    unless_null $P1574, vivify_793
    new $P1574, "Undef"
  vivify_793:
    find_lex $P1575, "$prompt"
    unless_null $P1575, vivify_794
    new $P1575, "Undef"
  vivify_794:
    set $S1576, $P1575
    $P1577 = $P1574."readline_interactive"($S1576)
    store_lex "$code", $P1577
.annotate 'line', 1226
    find_lex $P1579, "$code"
    unless_null $P1579, vivify_795
    new $P1579, "Undef"
  vivify_795:
    isnull $I1580, $P1579
    unless $I1580, if_1578_end
    set $I1581, .CONTROL_LOOP_LAST
    die 0, $I1581
  if_1578_end:
.annotate 'line', 1229
    getinterp $P1582
    $P1583 = $P1582."stdout_handle"()
    $P1584 = $P1583."tell"()
    store_lex "$*AUTOPRINTPOS", $P1584
.annotate 'line', 1230
    find_lex $P1585, "self"
    store_lex "$*CTXSAVE", $P1585
    find_lex $P1588, "$*MAIN_CTX"
    unless_null $P1588, vivify_796
    get_hll_global $P1586, "GLOBAL"
    get_who $P1587, $P1586
    set $P1588, $P1587["$MAIN_CTX"]
    unless_null $P1588, vivify_797
    die "Contextual $*MAIN_CTX not found"
  vivify_797:
  vivify_796:
.annotate 'line', 1233
    find_lex $P1591, "$code"
    unless_null $P1591, vivify_798
    new $P1591, "Undef"
  vivify_798:
    if $P1591, if_1590
    set $P1589, $P1591
    goto if_1590_end
  if_1590:
    .const 'Sub' $P1593 = "186_1304459385.051" 
    capture_lex $P1593
    $P1680 = $P1593()
    set $P1589, $P1680
  if_1590_end:
.annotate 'line', 1220
    .return ($P1589)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1592"  :anon :subid("186_1304459385.051") :outer("185_1304459385.051")
.annotate 'line', 1233
    .const 'Sub' $P1628 = "189_1304459385.051" 
    capture_lex $P1628
    .const 'Sub' $P1599 = "187_1304459385.051" 
    capture_lex $P1599
.annotate 'line', 1235
    new $P1594, "Undef"
    .lex "$output", $P1594
.annotate 'line', 1234
    find_lex $P1595, "$code"
    unless_null $P1595, vivify_799
    new $P1595, "Undef"
  vivify_799:
    concat $P1596, $P1595, "\n"
    store_lex "$code", $P1596
    find_lex $P1597, "$output"
    unless_null $P1597, vivify_800
    new $P1597, "Undef"
  vivify_800:
.annotate 'line', 1236
    .const 'Sub' $P1599 = "187_1304459385.051" 
    capture_lex $P1599
    $P1599()
.annotate 'line', 1243
    find_dynamic_lex $P1625, "$*MAIN_CTX"
    unless_null $P1625, vivify_805
    get_hll_global $P1623, "GLOBAL"
    get_who $P1624, $P1623
    set $P1625, $P1624["$MAIN_CTX"]
    unless_null $P1625, vivify_806
    die "Contextual $*MAIN_CTX not found"
  vivify_806:
  vivify_805:
    defined $I1626, $P1625
    unless $I1626, if_1622_end
    .const 'Sub' $P1628 = "189_1304459385.051" 
    capture_lex $P1628
    $P1628()
  if_1622_end:
.annotate 'line', 1251
    find_lex $P1659, "$output"
    unless_null $P1659, vivify_816
    new $P1659, "Undef"
  vivify_816:
    isnull $I1660, $P1659
    unless $I1660, if_1658_end
    set $I1661, .CONTROL_LOOP_NEXT
    die 0, $I1661
  if_1658_end:
.annotate 'line', 1253
    find_lex $P1664, "$target"
    unless_null $P1664, vivify_817
    new $P1664, "Undef"
  vivify_817:
    isfalse $I1665, $P1664
    if $I1665, if_1663
.annotate 'line', 1255
    find_lex $P1671, "$target"
    unless_null $P1671, vivify_818
    new $P1671, "Undef"
  vivify_818:
    set $S1672, $P1671
    iseq $I1673, $S1672, "pir"
    if $I1673, if_1670
.annotate 'line', 1258
    find_lex $P1675, "self"
    find_lex $P1676, "$output"
    unless_null $P1676, vivify_819
    new $P1676, "Undef"
  vivify_819:
    find_lex $P1677, "$target"
    unless_null $P1677, vivify_820
    new $P1677, "Undef"
  vivify_820:
    find_lex $P1678, "%adverbs"
    unless_null $P1678, vivify_821
    $P1678 = root_new ['parrot';'Hash']
  vivify_821:
    $P1679 = $P1675."dumper"($P1676, $P1677, $P1678 :flat)
.annotate 'line', 1257
    set $P1669, $P1679
.annotate 'line', 1255
    goto if_1670_end
  if_1670:
.annotate 'line', 1256
    find_lex $P1674, "$output"
    unless_null $P1674, vivify_822
    new $P1674, "Undef"
  vivify_822:
    say $P1674
  if_1670_end:
.annotate 'line', 1255
    set $P1662, $P1669
.annotate 'line', 1253
    goto if_1663_end
  if_1663:
.annotate 'line', 1254
    find_lex $P1666, "self"
    find_lex $P1667, "$output"
    unless_null $P1667, vivify_823
    new $P1667, "Undef"
  vivify_823:
    $P1668 = $P1666."autoprint"($P1667)
.annotate 'line', 1253
    set $P1662, $P1668
  if_1663_end:
.annotate 'line', 1233
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1598"  :anon :subid("187_1304459385.051") :outer("186_1304459385.051")
.annotate 'line', 1236
    .const 'Sub' $P1611 = "188_1304459385.051" 
    capture_lex $P1611
    new $P1607, 'ExceptionHandler'
    set_label $P1607, control_1606
    $P1607."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1607
.annotate 'line', 1237
    find_lex $P1600, "self"
    find_lex $P1601, "$code"
    unless_null $P1601, vivify_801
    new $P1601, "Undef"
  vivify_801:
    find_lex $P1602, "$save_ctx"
    unless_null $P1602, vivify_802
    new $P1602, "Undef"
  vivify_802:
    find_lex $P1603, "%adverbs"
    unless_null $P1603, vivify_803
    $P1603 = root_new ['parrot';'Hash']
  vivify_803:
    $P1604 = $P1600."eval"($P1601, $P1603 :flat, $P1602 :named("outer_ctx"))
    store_lex "$output", $P1604
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1605
  control_1606:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1611 = "188_1304459385.051" 
    newclosure $P1619, $P1611
    $P1619(exception)
    new $P1620, 'Integer'
    set $P1620, 1
    set exception["handled"], $P1620
    set $I1621, exception["handled"]
    ne $I1621, 1, nothandled_1609
  handled_1608:
    .return (exception)
  nothandled_1609:
    rethrow exception
  skip_handler_1605:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1610"  :anon :subid("188_1304459385.051") :outer("187_1304459385.051")
    .param pmc param_1612
.annotate 'line', 1238
    .lex "$_", param_1612
    find_lex $P1613, "$_"
    .lex "$!", $P1613
.annotate 'line', 1239
    find_lex $P1614, "$!"
    unless_null $P1614, vivify_804
    new $P1614, "Undef"
  vivify_804:
    set $S1615, $P1614
    new $P1616, 'String'
    set $P1616, $S1615
    concat $P1617, $P1616, "\n"
    print $P1617
.annotate 'line', 1240
    set $I1618, .CONTROL_LOOP_NEXT
    die 0, $I1618
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1627"  :anon :subid("189_1304459385.051") :outer("186_1304459385.051")
.annotate 'line', 1243
    .const 'Sub' $P1643 = "190_1304459385.051" 
    capture_lex $P1643
    find_lex $P1629, "$?PACKAGE"
    get_who $P1630, $P1629
    set $P1631, $P1630["$interactive_ctx"]
    unless_null $P1631, vivify_807
    new $P1631, "Undef"
  vivify_807:
    find_lex $P1632, "$?PACKAGE"
    get_who $P1633, $P1632
    set $P1634, $P1633["%interactive_pad"]
    unless_null $P1634, vivify_808
    $P1634 = root_new ['parrot';'Hash']
  vivify_808:
.annotate 'line', 1246
    find_dynamic_lex $P1638, "$*MAIN_CTX"
    unless_null $P1638, vivify_809
    get_hll_global $P1636, "GLOBAL"
    get_who $P1637, $P1636
    set $P1638, $P1637["$MAIN_CTX"]
    unless_null $P1638, vivify_810
    die "Contextual $*MAIN_CTX not found"
  vivify_810:
  vivify_809:
    $P1639 = $P1638."lexpad_full"()
    defined $I1640, $P1639
    unless $I1640, for_undef_811
    iter $P1635, $P1639
    new $P1653, 'ExceptionHandler'
    set_label $P1653, loop1652_handler
    $P1653."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1653
  loop1652_test:
    unless $P1635, loop1652_done
    shift $P1641, $P1635
  loop1652_redo:
    .const 'Sub' $P1643 = "190_1304459385.051" 
    capture_lex $P1643
    $P1643($P1641)
  loop1652_next:
    goto loop1652_test
  loop1652_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1654, exception, 'type'
    eq $P1654, .CONTROL_LOOP_NEXT, loop1652_next
    eq $P1654, .CONTROL_LOOP_REDO, loop1652_redo
  loop1652_done:
    pop_eh 
  for_undef_811:
.annotate 'line', 1249
    find_lex $P1655, "$?PACKAGE"
    get_who $P1656, $P1655
    set $P1657, $P1656["$interactive_ctx"]
    unless_null $P1657, vivify_815
    new $P1657, "Undef"
  vivify_815:
    store_lex "$save_ctx", $P1657
.annotate 'line', 1243
    .return ($P1657)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1642"  :anon :subid("190_1304459385.051") :outer("189_1304459385.051")
    .param pmc param_1644
.annotate 'line', 1246
    .lex "$_", param_1644
.annotate 'line', 1247
    find_lex $P1645, "$_"
    unless_null $P1645, vivify_812
    new $P1645, "Undef"
  vivify_812:
    $P1646 = $P1645."value"()
    find_lex $P1647, "$_"
    unless_null $P1647, vivify_813
    new $P1647, "Undef"
  vivify_813:
    $P1648 = $P1647."key"()
    find_lex $P1649, "$?PACKAGE"
    get_who $P1650, $P1649
    set $P1651, $P1650["%interactive_pad"]
    unless_null $P1651, vivify_814
    $P1651 = root_new ['parrot';'Hash']
    set $P1650["%interactive_pad"], $P1651
  vivify_814:
    set $P1651[$P1648], $P1646
.annotate 'line', 1246
    .return ($P1646)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("191_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1685
    .param pmc param_1686
    .param pmc param_1687 :slurpy
    .param pmc param_1688 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1707 = "192_1304459385.051" 
    capture_lex $P1707
    .lex "self", param_1685
    .lex "$code", param_1686
    .lex "@args", param_1687
    .lex "%adverbs", param_1688
.annotate 'line', 1265
    new $P1689, "Undef"
    .lex "$output", $P1689
.annotate 'line', 1264
    find_lex $P1690, "$output"
    unless_null $P1690, vivify_824
    new $P1690, "Undef"
  vivify_824:
.annotate 'line', 1266
    find_lex $P1691, "self"
    find_lex $P1692, "$code"
    unless_null $P1692, vivify_825
    new $P1692, "Undef"
  vivify_825:
    find_lex $P1693, "%adverbs"
    unless_null $P1693, vivify_826
    $P1693 = root_new ['parrot';'Hash']
  vivify_826:
    $P1694 = $P1691."compile"($P1692, $P1693 :flat)
    store_lex "$output", $P1694
.annotate 'line', 1268
    find_lex $P1698, "$output"
    unless_null $P1698, vivify_827
    new $P1698, "Undef"
  vivify_827:
    isa $I1699, $P1698, "String"
    new $P1700, 'Integer'
    set $P1700, $I1699
    isfalse $I1701, $P1700
    if $I1701, if_1697
    new $P1696, 'Integer'
    set $P1696, $I1701
    goto if_1697_end
  if_1697:
.annotate 'line', 1269
    find_lex $P1702, "%adverbs"
    unless_null $P1702, vivify_828
    $P1702 = root_new ['parrot';'Hash']
  vivify_828:
    set $P1703, $P1702["target"]
    unless_null $P1703, vivify_829
    new $P1703, "Undef"
  vivify_829:
    set $S1704, $P1703
    iseq $I1705, $S1704, ""
    new $P1696, 'Integer'
    set $P1696, $I1705
  if_1697_end:
    unless $P1696, if_1695_end
    .const 'Sub' $P1707 = "192_1304459385.051" 
    capture_lex $P1707
    $P1707()
  if_1695_end:
.annotate 'line', 1268
    find_lex $P1723, "$output"
    unless_null $P1723, vivify_840
    new $P1723, "Undef"
  vivify_840:
.annotate 'line', 1264
    .return ($P1723)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1706"  :anon :subid("192_1304459385.051") :outer("191_1304459385.051")
.annotate 'line', 1270
    new $P1708, "Undef"
    .lex "$outer_ctx", $P1708
    find_lex $P1709, "%adverbs"
    unless_null $P1709, vivify_830
    $P1709 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1710, $P1709["outer_ctx"]
    unless_null $P1710, vivify_831
    new $P1710, "Undef"
  vivify_831:
    store_lex "$outer_ctx", $P1710
.annotate 'line', 1271
    find_lex $P1712, "$outer_ctx"
    unless_null $P1712, vivify_832
    new $P1712, "Undef"
  vivify_832:
    defined $I1713, $P1712
    unless $I1713, if_1711_end
.annotate 'line', 1272
    find_lex $P1714, "$output"
    unless_null $P1714, vivify_833
    $P1714 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    set $P1715, $P1714[0]
    unless_null $P1715, vivify_834
    new $P1715, "Undef"
  vivify_834:
    find_lex $P1716, "$outer_ctx"
    unless_null $P1716, vivify_835
    new $P1716, "Undef"
  vivify_835:
    $P1715."set_outer_ctx"($P1716)
  if_1711_end:
.annotate 'line', 1275
    find_lex $P1717, "%adverbs"
    unless_null $P1717, vivify_836
    $P1717 = root_new ['parrot';'Hash']
  vivify_836:
    set $P1718, $P1717["trace"]
    unless_null $P1718, vivify_837
    new $P1718, "Undef"
  vivify_837:
    set $I1719, $P1718
    trace $I1719
.annotate 'line', 1276
    find_lex $P1720, "$output"
    unless_null $P1720, vivify_838
    new $P1720, "Undef"
  vivify_838:
    find_lex $P1721, "@args"
    unless_null $P1721, vivify_839
    $P1721 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    $P1722 = $P1720($P1721 :flat)
    store_lex "$output", $P1722
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("193_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1725
.annotate 'line', 1283
    .lex "self", param_1725
.annotate 'line', 1285

                $P0 = getinterp
                $P1726 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1726
.annotate 'line', 1289
    new $P1727, "Integer"
    assign $P1727, 0
    store_dynamic_lex "$*CTXSAVE", $P1727
.annotate 'line', 1283
    .return ($P1727)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("194_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1729
    .param pmc param_1730 :slurpy
.annotate 'line', 1292
    .lex "self", param_1729
    .lex "@args", param_1730
.annotate 'line', 1293
    find_lex $P1731, "@args"
    unless_null $P1731, vivify_841
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    join $S1732, "", $P1731
    die $S1732
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("195_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1734
    .param pmc param_1735 :optional
    .param int has_param_1735 :opt_flag
.annotate 'line', 1296
    .lex "self", param_1734
    if has_param_1735, optparam_842
    $P1736 = root_new ['parrot';'ResizablePMCArray']
    set param_1735, $P1736
  optparam_842:
    .lex "@value", param_1735
.annotate 'line', 1297
    find_lex $P1738, "@value"
    unless_null $P1738, vivify_843
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
    set $N1739, $P1738
    unless $N1739, if_1737_end
.annotate 'line', 1298
    find_lex $P1740, "@value"
    unless_null $P1740, vivify_844
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    find_lex $P1741, "self"
    find_lex $P1742, "$?CLASS"
    setattribute $P1741, $P1742, "@!stages", $P1740
  if_1737_end:
.annotate 'line', 1297
    find_lex $P1743, "self"
    find_lex $P1744, "$?CLASS"
    getattribute $P1745, $P1743, $P1744, "@!stages"
    unless_null $P1745, vivify_845
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
.annotate 'line', 1296
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("196_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1747
    .param pmc param_1748 :slurpy
.annotate 'line', 1303
    .lex "self", param_1747
    .lex "@value", param_1748
.annotate 'line', 1304
    find_lex $P1750, "@value"
    unless_null $P1750, vivify_846
    $P1750 = root_new ['parrot';'ResizablePMCArray']
  vivify_846:
    set $N1751, $P1750
    unless $N1751, if_1749_end
.annotate 'line', 1305
    find_lex $P1752, "@value"
    unless_null $P1752, vivify_847
    $P1752 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    set $P1753, $P1752[0]
    unless_null $P1753, vivify_848
    new $P1753, "Undef"
  vivify_848:
    find_lex $P1754, "self"
    find_lex $P1755, "$?CLASS"
    setattribute $P1754, $P1755, "$!parsegrammar", $P1753
  if_1749_end:
.annotate 'line', 1304
    find_lex $P1756, "self"
    find_lex $P1757, "$?CLASS"
    getattribute $P1758, $P1756, $P1757, "$!parsegrammar"
    unless_null $P1758, vivify_849
    new $P1758, "Undef"
  vivify_849:
.annotate 'line', 1303
    .return ($P1758)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("197_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1760
    .param pmc param_1761 :slurpy
.annotate 'line', 1310
    .lex "self", param_1760
    .lex "@value", param_1761
.annotate 'line', 1311
    find_lex $P1763, "@value"
    unless_null $P1763, vivify_850
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    set $N1764, $P1763
    unless $N1764, if_1762_end
.annotate 'line', 1312
    find_lex $P1765, "@value"
    unless_null $P1765, vivify_851
    $P1765 = root_new ['parrot';'ResizablePMCArray']
  vivify_851:
    set $P1766, $P1765[0]
    unless_null $P1766, vivify_852
    new $P1766, "Undef"
  vivify_852:
    find_lex $P1767, "self"
    find_lex $P1768, "$?CLASS"
    setattribute $P1767, $P1768, "$!parseactions", $P1766
  if_1762_end:
.annotate 'line', 1311
    find_lex $P1769, "self"
    find_lex $P1770, "$?CLASS"
    getattribute $P1771, $P1769, $P1770, "$!parseactions"
    unless_null $P1771, vivify_853
    new $P1771, "Undef"
  vivify_853:
.annotate 'line', 1310
    .return ($P1771)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("198_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1773
    .param pmc param_1774 :slurpy
.annotate 'line', 1317
    .lex "self", param_1773
    .lex "@value", param_1774
.annotate 'line', 1318
    find_lex $P1776, "@value"
    unless_null $P1776, vivify_854
    $P1776 = root_new ['parrot';'ResizablePMCArray']
  vivify_854:
    set $N1777, $P1776
    unless $N1777, if_1775_end
.annotate 'line', 1319
    find_lex $P1778, "@value"
    unless_null $P1778, vivify_855
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1779, $P1778[0]
    unless_null $P1779, vivify_856
    new $P1779, "Undef"
  vivify_856:
    find_lex $P1780, "self"
    find_lex $P1781, "$?CLASS"
    setattribute $P1780, $P1781, "$!astgrammar", $P1779
  if_1775_end:
.annotate 'line', 1318
    find_lex $P1782, "self"
    find_lex $P1783, "$?CLASS"
    getattribute $P1784, $P1782, $P1783, "$!astgrammar"
    unless_null $P1784, vivify_857
    new $P1784, "Undef"
  vivify_857:
.annotate 'line', 1317
    .return ($P1784)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("199_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1786
    .param pmc param_1787 :optional
    .param int has_param_1787 :opt_flag
.annotate 'line', 1324
    .lex "self", param_1786
    if has_param_1787, optparam_858
    new $P1788, "Undef"
    set param_1787, $P1788
  optparam_858:
    .lex "$value", param_1787
.annotate 'line', 1325
    find_lex $P1790, "$value"
    unless_null $P1790, vivify_859
    new $P1790, "Undef"
  vivify_859:
    defined $I1791, $P1790
    unless $I1791, if_1789_end
.annotate 'line', 1326
    find_lex $P1792, "$value"
    unless_null $P1792, vivify_860
    new $P1792, "Undef"
  vivify_860:
    find_lex $P1793, "self"
    find_lex $P1794, "$?CLASS"
    setattribute $P1793, $P1794, "$!commandline_banner", $P1792
  if_1789_end:
.annotate 'line', 1325
    find_lex $P1795, "self"
    find_lex $P1796, "$?CLASS"
    getattribute $P1797, $P1795, $P1796, "$!commandline_banner"
    unless_null $P1797, vivify_861
    new $P1797, "Undef"
  vivify_861:
.annotate 'line', 1324
    .return ($P1797)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("200_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1799
    .param pmc param_1800 :optional
    .param int has_param_1800 :opt_flag
.annotate 'line', 1331
    .lex "self", param_1799
    if has_param_1800, optparam_862
    new $P1801, "Undef"
    set param_1800, $P1801
  optparam_862:
    .lex "$value", param_1800
.annotate 'line', 1332
    find_lex $P1803, "$value"
    unless_null $P1803, vivify_863
    new $P1803, "Undef"
  vivify_863:
    defined $I1804, $P1803
    unless $I1804, if_1802_end
.annotate 'line', 1333
    find_lex $P1805, "$value"
    unless_null $P1805, vivify_864
    new $P1805, "Undef"
  vivify_864:
    find_lex $P1806, "self"
    find_lex $P1807, "$?CLASS"
    setattribute $P1806, $P1807, "$!commandline_prompt", $P1805
  if_1802_end:
.annotate 'line', 1332
    find_lex $P1808, "self"
    find_lex $P1809, "$?CLASS"
    getattribute $P1810, $P1808, $P1809, "$!commandline_prompt"
    unless_null $P1810, vivify_865
    new $P1810, "Undef"
  vivify_865:
.annotate 'line', 1331
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("201_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1812
    .param pmc param_1813 :optional
    .param int has_param_1813 :opt_flag
.annotate 'line', 1338
    .lex "self", param_1812
    if has_param_1813, optparam_866
    new $P1814, "Undef"
    set param_1813, $P1814
  optparam_866:
    .lex "$value", param_1813
.annotate 'line', 1339
    find_lex $P1816, "$value"
    unless_null $P1816, vivify_867
    new $P1816, "Undef"
  vivify_867:
    defined $I1817, $P1816
    unless $I1817, if_1815_end
.annotate 'line', 1340
    find_lex $P1818, "$value"
    unless_null $P1818, vivify_868
    new $P1818, "Undef"
  vivify_868:
    find_lex $P1819, "self"
    find_lex $P1820, "$?CLASS"
    setattribute $P1819, $P1820, "$!compiler_progname", $P1818
  if_1815_end:
.annotate 'line', 1339
    find_lex $P1821, "self"
    find_lex $P1822, "$?CLASS"
    getattribute $P1823, $P1821, $P1822, "$!compiler_progname"
    unless_null $P1823, vivify_869
    new $P1823, "Undef"
  vivify_869:
.annotate 'line', 1338
    .return ($P1823)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("202_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1825
    .param pmc param_1826 :optional
    .param int has_param_1826 :opt_flag
.annotate 'line', 1345
    .lex "self", param_1825
    if has_param_1826, optparam_870
    $P1827 = root_new ['parrot';'ResizablePMCArray']
    set param_1826, $P1827
  optparam_870:
    .lex "@value", param_1826
.annotate 'line', 1346
    find_lex $P1829, "@value"
    unless_null $P1829, vivify_871
    $P1829 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
    set $N1830, $P1829
    unless $N1830, if_1828_end
.annotate 'line', 1347
    find_lex $P1831, "@value"
    unless_null $P1831, vivify_872
    $P1831 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    find_lex $P1832, "self"
    find_lex $P1833, "$?CLASS"
    setattribute $P1832, $P1833, "@!cmdoptions", $P1831
  if_1828_end:
.annotate 'line', 1346
    find_lex $P1834, "self"
    find_lex $P1835, "$?CLASS"
    getattribute $P1836, $P1834, $P1835, "@!cmdoptions"
    unless_null $P1836, vivify_873
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
.annotate 'line', 1345
    .return ($P1836)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("203_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1838
    .param pmc param_1839
    .param pmc param_1840 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P1866 = "204_1304459385.051" 
    capture_lex $P1866
    .lex "self", param_1838
    .lex "@args", param_1839
    .lex "%adverbs", param_1840
.annotate 'line', 1365
    new $P1841, "Undef"
    .lex "$program-name", $P1841
.annotate 'line', 1366
    new $P1842, "Undef"
    .lex "$res", $P1842
.annotate 'line', 1367
    $P1843 = root_new ['parrot';'Hash']
    .lex "%opts", $P1843
.annotate 'line', 1368
    $P1844 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P1844
.annotate 'line', 1361
    find_lex $P1846, "@args"
    unless_null $P1846, vivify_874
    $P1846 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
    set $P1847, $P1846[2]
    unless_null $P1847, vivify_875
    new $P1847, "Undef"
  vivify_875:
    set $S1848, $P1847
    index $I1849, $S1848, "@INC"
    set $N1850, $I1849
    isge $I1851, $N1850, 0.0
    unless $I1851, if_1845_end
.annotate 'line', 1362
    exit 0
  if_1845_end:
.annotate 'line', 1365
    find_lex $P1852, "@args"
    unless_null $P1852, vivify_876
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    set $P1853, $P1852[0]
    unless_null $P1853, vivify_877
    new $P1853, "Undef"
  vivify_877:
    store_lex "$program-name", $P1853
.annotate 'line', 1366
    find_lex $P1854, "self"
    find_lex $P1855, "@args"
    unless_null $P1855, vivify_878
    $P1855 = root_new ['parrot';'ResizablePMCArray']
  vivify_878:
    $P1856 = $P1854."process_args"($P1855)
    store_lex "$res", $P1856
.annotate 'line', 1367
    find_lex $P1857, "$res"
    unless_null $P1857, vivify_879
    new $P1857, "Undef"
  vivify_879:
    $P1858 = $P1857."options"()
    store_lex "%opts", $P1858
.annotate 'line', 1368
    find_lex $P1859, "$res"
    unless_null $P1859, vivify_880
    new $P1859, "Undef"
  vivify_880:
    $P1860 = $P1859."arguments"()
    store_lex "@a", $P1860
.annotate 'line', 1370
    find_lex $P1862, "%opts"
    unless_null $P1862, vivify_881
    $P1862 = root_new ['parrot';'Hash']
  vivify_881:
    defined $I1863, $P1862
    unless $I1863, for_undef_882
    iter $P1861, $P1862
    new $P1874, 'ExceptionHandler'
    set_label $P1874, loop1873_handler
    $P1874."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1874
  loop1873_test:
    unless $P1861, loop1873_done
    shift $P1864, $P1861
  loop1873_redo:
    .const 'Sub' $P1866 = "204_1304459385.051" 
    capture_lex $P1866
    $P1866($P1864)
  loop1873_next:
    goto loop1873_test
  loop1873_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1875, exception, 'type'
    eq $P1875, .CONTROL_LOOP_NEXT, loop1873_next
    eq $P1875, .CONTROL_LOOP_REDO, loop1873_redo
  loop1873_done:
    pop_eh 
  for_undef_882:
.annotate 'line', 1373
    find_lex $P1877, "%adverbs"
    unless_null $P1877, vivify_888
    $P1877 = root_new ['parrot';'Hash']
  vivify_888:
    set $P1878, $P1877["help"]
    unless_null $P1878, vivify_889
    new $P1878, "Undef"
  vivify_889:
    unless $P1878, if_1876_end
    find_lex $P1879, "self"
    find_lex $P1880, "$program-name"
    unless_null $P1880, vivify_890
    new $P1880, "Undef"
  vivify_890:
    $P1879."usage"($P1880)
  if_1876_end:
.annotate 'line', 1374
    find_lex $P1882, "%adverbs"
    unless_null $P1882, vivify_891
    $P1882 = root_new ['parrot';'Hash']
  vivify_891:
    set $P1883, $P1882["version"]
    unless_null $P1883, vivify_892
    new $P1883, "Undef"
  vivify_892:
    unless $P1883, if_1881_end
    find_lex $P1884, "self"
    $P1884."version"()
  if_1881_end:
.annotate 'line', 1376

            .include 'except_severity.pasm'
            .local pmc args, adverbs, self
            args = find_lex '@a'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'


            .local int can_backtrace, ll_backtrace
            can_backtrace = can self, 'backtrace'
            unless can_backtrace goto no_push_eh
            ll_backtrace = adverbs['ll-backtrace']
            if ll_backtrace goto no_push_eh
            push_eh uncaught_exception
          no_push_eh:

            $S0 = adverbs['e']
            $I0 = exists adverbs['e']
            if $I0 goto eval_line
            .local pmc result
            result = box ''
            unless args goto interactive
            $I0 = adverbs['combine']
            if $I0 goto combine
            $S0 = args[0]
            result = self.'evalfiles'($S0, args :flat, adverbs :flat :named)
            goto save_output
          combine:
            result = self.'evalfiles'(args, adverbs :flat :named)
            goto save_output
          interactive:
            self.'interactive'(args :flat, adverbs :flat :named)
            goto save_output
          eval_line:
            result = self.'eval'($S0, '-e', args :flat, adverbs :flat :named)

          save_output:
            unless can_backtrace goto no_pop_eh
            pop_eh
          no_pop_eh:
            if null result goto end
            $I0 = defined result
            unless $I0 goto end
            .local string target
            target = adverbs['target']
            target = downcase target
            if target != 'pir' goto end
            .local string output
            .local pmc ofh
            $P0 = getinterp
            ofh = $P0.'stdout_handle'()
            output = adverbs['output']
            if output == '' goto save_output_1
            if output == '-' goto save_output_1
            ofh = new ['FileHandle']
            ofh.'open'(output, 'w')
            unless ofh goto err_output
          save_output_1:
            print ofh, result
            ofh.'close'()
          end:
            .return ()

          err_output:
            .tailcall self.'panic'('Error: file cannot be written: ', output)

            # If we get an uncaught exception in the program and the HLL provides
            # a backtrace method, we end up here. We pass it the exception object
            # so it can render a backtrace, unless the severity is exit or warning
            # in which case it needs special handling.
          uncaught_exception:
            .get_results ($P0)
            pop_eh
            $P1 = getinterp
            $P1 = $P1.'stderr_handle'()
            $I0 = $P0['severity']
            if $I0 == .EXCEPT_EXIT goto do_exit
            $S0 = self.'backtrace'($P0)
            print $P1, $S0
            if $I0 <= .EXCEPT_WARNING goto do_warning
            exit 1
          do_exit:
            $I0 = $P0['exit_code']
            exit $I0
          do_warning:
            $P0 = $P0["resume"]
            push_eh uncaught_exception # Otherwise we get errors about no handler to delete
            $P0()
        
.annotate 'line', 1352
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1865"  :anon :subid("204_1304459385.051") :outer("203_1304459385.051")
    .param pmc param_1867
.annotate 'line', 1370
    .lex "$k", param_1867
.annotate 'line', 1371
    find_lex $P1868, "$k"
    unless_null $P1868, vivify_883
    new $P1868, "Undef"
  vivify_883:
    find_lex $P1869, "%opts"
    unless_null $P1869, vivify_884
    $P1869 = root_new ['parrot';'Hash']
  vivify_884:
    set $P1870, $P1869[$P1868]
    unless_null $P1870, vivify_885
    new $P1870, "Undef"
  vivify_885:
    find_lex $P1871, "$k"
    unless_null $P1871, vivify_886
    new $P1871, "Undef"
  vivify_886:
    find_lex $P1872, "%adverbs"
    unless_null $P1872, vivify_887
    $P1872 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1872
  vivify_887:
    set $P1872[$P1871], $P1870
.annotate 'line', 1370
    .return ($P1870)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("205_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1886
    .param pmc param_1887
.annotate 'line', 1470
    .const 'Sub' $P1906 = "206_1304459385.051" 
    capture_lex $P1906
    .lex "self", param_1886
    .lex "@args", param_1887
.annotate 'line', 1474
    new $P1888, "Undef"
    .lex "$p", $P1888
.annotate 'line', 1477
    new $P1889, "Undef"
    .lex "$res", $P1889
.annotate 'line', 1472
    find_lex $P1890, "self"
    find_lex $P1891, "@args"
    unless_null $P1891, vivify_893
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    $P1892 = $P1891."shift"()
    $P1890."compiler_progname"($P1892)
.annotate 'line', 1474
    get_hll_global $P1893, "GLOBAL"
    nqp_get_package_through_who $P1894, $P1893, "HLL"
    nqp_get_package_through_who $P1895, $P1894, "CommandLine"
    get_who $P1896, $P1895
    set $P1897, $P1896["Parser"]
    find_lex $P1898, "self"
    find_lex $P1899, "$?CLASS"
    getattribute $P1900, $P1898, $P1899, "@!cmdoptions"
    unless_null $P1900, vivify_894
    $P1900 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
    $P1901 = $P1897."new"($P1900)
    store_lex "$p", $P1901
.annotate 'line', 1475
    find_lex $P1902, "$p"
    unless_null $P1902, vivify_895
    new $P1902, "Undef"
  vivify_895:
    $P1902."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P1903, "$p"
    unless_null $P1903, vivify_896
    new $P1903, "Undef"
  vivify_896:
    $P1903."stop-after-first-arg"()
    find_lex $P1904, "$res"
    unless_null $P1904, vivify_897
    new $P1904, "Undef"
  vivify_897:
.annotate 'line', 1478
    .const 'Sub' $P1906 = "206_1304459385.051" 
    capture_lex $P1906
    $P1906()
    find_lex $P1924, "$res"
    unless_null $P1924, vivify_901
    new $P1924, "Undef"
  vivify_901:
.annotate 'line', 1470
    .return ($P1924)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1905"  :anon :subid("206_1304459385.051") :outer("205_1304459385.051")
.annotate 'line', 1478
    .const 'Sub' $P1916 = "207_1304459385.051" 
    capture_lex $P1916
    new $P1912, 'ExceptionHandler'
    set_label $P1912, control_1911
    $P1912."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1912
.annotate 'line', 1479
    find_lex $P1907, "$p"
    unless_null $P1907, vivify_898
    new $P1907, "Undef"
  vivify_898:
    find_lex $P1908, "@args"
    unless_null $P1908, vivify_899
    $P1908 = root_new ['parrot';'ResizablePMCArray']
  vivify_899:
    $P1909 = $P1907."parse"($P1908)
    store_lex "$res", $P1909
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_1910
  control_1911:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1916 = "207_1304459385.051" 
    newclosure $P1921, $P1916
    $P1921(exception)
    new $P1922, 'Integer'
    set $P1922, 1
    set exception["handled"], $P1922
    set $I1923, exception["handled"]
    ne $I1923, 1, nothandled_1914
  handled_1913:
    .return (exception)
  nothandled_1914:
    rethrow exception
  skip_handler_1910:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1915"  :anon :subid("207_1304459385.051") :outer("206_1304459385.051")
    .param pmc param_1917
.annotate 'line', 1480
    .lex "$_", param_1917
    find_lex $P1918, "$_"
    .lex "$!", $P1918
.annotate 'line', 1481
    find_lex $P1919, "$_"
    unless_null $P1919, vivify_900
    new $P1919, "Undef"
  vivify_900:
    say $P1919
.annotate 'line', 1482
    find_lex $P1920, "self"
    $P1920."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("208_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_1928
    .param pmc param_1929
    .param pmc param_1930 :slurpy
    .param pmc param_1931 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P1956 = "209_1304459385.051" 
    capture_lex $P1956
    new $P1927, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1927, control_1926
    push_eh $P1927
    .lex "self", param_1928
    .lex "$files", param_1929
    .lex "@args", param_1930
    .lex "%adverbs", param_1931
.annotate 'line', 1490
    new $P1932, "Undef"
    .lex "$target", $P1932
.annotate 'line', 1491
    new $P1933, "Undef"
    .lex "$encoding", $P1933
.annotate 'line', 1492
    $P1934 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P1934
.annotate 'line', 1493
    $P1935 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P1935
.annotate 'line', 1490
    find_lex $P1936, "%adverbs"
    unless_null $P1936, vivify_902
    $P1936 = root_new ['parrot';'Hash']
  vivify_902:
    set $P1937, $P1936["target"]
    unless_null $P1937, vivify_903
    new $P1937, "Undef"
  vivify_903:
    set $S1938, $P1937
    downcase $S1939, $S1938
    new $P1940, 'String'
    set $P1940, $S1939
    store_lex "$target", $P1940
.annotate 'line', 1491
    find_lex $P1941, "%adverbs"
    unless_null $P1941, vivify_904
    $P1941 = root_new ['parrot';'Hash']
  vivify_904:
    set $P1942, $P1941["encoding"]
    unless_null $P1942, vivify_905
    new $P1942, "Undef"
  vivify_905:
    store_lex "$encoding", $P1942
.annotate 'line', 1492
    find_lex $P1945, "$files"
    unless_null $P1945, vivify_906
    new $P1945, "Undef"
  vivify_906:
    does $I1946, $P1945, "array"
    if $I1946, if_1944
    find_lex $P1948, "$files"
    unless_null $P1948, vivify_907
    new $P1948, "Undef"
  vivify_907:
    new $P1949, "ResizablePMCArray"
    push $P1949, $P1948
    set $P1943, $P1949
    goto if_1944_end
  if_1944:
    find_lex $P1947, "$files"
    unless_null $P1947, vivify_908
    new $P1947, "Undef"
  vivify_908:
    set $P1943, $P1947
  if_1944_end:
    store_lex "@files", $P1943
    find_lex $P1950, "@codes"
    unless_null $P1950, vivify_909
    $P1950 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
.annotate 'line', 1494
    find_lex $P1952, "@files"
    unless_null $P1952, vivify_910
    $P1952 = root_new ['parrot';'ResizablePMCArray']
  vivify_910:
    defined $I1953, $P1952
    unless $I1953, for_undef_911
    iter $P1951, $P1952
    new $P2018, 'ExceptionHandler'
    set_label $P2018, loop2017_handler
    $P2018."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2018
  loop2017_test:
    unless $P1951, loop2017_done
    shift $P1954, $P1951
  loop2017_redo:
    .const 'Sub' $P1956 = "209_1304459385.051" 
    capture_lex $P1956
    $P1956($P1954)
  loop2017_next:
    goto loop2017_test
  loop2017_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2019, exception, 'type'
    eq $P2019, .CONTROL_LOOP_NEXT, loop2017_next
    eq $P2019, .CONTROL_LOOP_REDO, loop2017_redo
  loop2017_done:
    pop_eh 
  for_undef_911:
.annotate 'line', 1489
    .return ($P1951)
  control_1926:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2020, exception, "payload"
    .return ($P2020)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1955"  :anon :subid("209_1304459385.051") :outer("208_1304459385.051")
    .param pmc param_1961
.annotate 'line', 1494
    .const 'Sub' $P1965 = "210_1304459385.051" 
    capture_lex $P1965
.annotate 'line', 1495
    new $P1957, "Undef"
    .lex "$in-handle", $P1957
.annotate 'line', 1496
    new $P1958, "Undef"
    .lex "$err", $P1958
.annotate 'line', 1509
    new $P1959, "Undef"
    .lex "$code", $P1959
.annotate 'line', 1511
    new $P1960, "Undef"
    .lex "$r", $P1960
    .lex "$_", param_1961
.annotate 'line', 1495
    new $P1962, "FileHandle"
    store_lex "$in-handle", $P1962
.annotate 'line', 1496
    new $P1963, "Integer"
    assign $P1963, 0
    store_lex "$err", $P1963
.annotate 'line', 1497
    .const 'Sub' $P1965 = "210_1304459385.051" 
    capture_lex $P1965
    $P1965()
.annotate 'line', 1508
    find_lex $P1989, "$err"
    unless_null $P1989, vivify_919
    new $P1989, "Undef"
  vivify_919:
    unless $P1989, if_1988_end
    find_lex $P1990, "$err"
    unless_null $P1990, vivify_920
    new $P1990, "Undef"
  vivify_920:
    die $P1990
  if_1988_end:
.annotate 'line', 1509
    find_lex $P1991, "@codes"
    unless_null $P1991, vivify_921
    $P1991 = root_new ['parrot';'ResizablePMCArray']
  vivify_921:
    join $S1992, "", $P1991
    new $P1993, 'String'
    set $P1993, $S1992
    store_lex "$code", $P1993
.annotate 'line', 1511
    find_lex $P1994, "self"
    find_lex $P1995, "$code"
    unless_null $P1995, vivify_922
    new $P1995, "Undef"
  vivify_922:
    find_lex $P1996, "@args"
    unless_null $P1996, vivify_923
    $P1996 = root_new ['parrot';'ResizablePMCArray']
  vivify_923:
    find_lex $P1997, "%adverbs"
    unless_null $P1997, vivify_924
    $P1997 = root_new ['parrot';'Hash']
  vivify_924:
    $P1998 = $P1994."eval"($P1995, $P1996 :flat, $P1997 :flat)
    store_lex "$r", $P1998
.annotate 'line', 1512
    find_lex $P2003, "$target"
    unless_null $P2003, vivify_925
    new $P2003, "Undef"
  vivify_925:
    set $S2004, $P2003
    iseq $I2005, $S2004, ""
    unless $I2005, unless_2002
    new $P2001, 'Integer'
    set $P2001, $I2005
    goto unless_2002_end
  unless_2002:
    find_lex $P2006, "$target"
    unless_null $P2006, vivify_926
    new $P2006, "Undef"
  vivify_926:
    set $S2007, $P2006
    iseq $I2008, $S2007, "pir"
    new $P2001, 'Integer'
    set $P2001, $I2008
  unless_2002_end:
    if $P2001, if_2000
.annotate 'line', 1515
    new $P2011, "Exception"
    set $P2011['type'], .CONTROL_RETURN
    find_lex $P2012, "self"
    find_lex $P2013, "$r"
    unless_null $P2013, vivify_927
    new $P2013, "Undef"
  vivify_927:
    find_lex $P2014, "$target"
    unless_null $P2014, vivify_928
    new $P2014, "Undef"
  vivify_928:
    find_lex $P2015, "%adverbs"
    unless_null $P2015, vivify_929
    $P2015 = root_new ['parrot';'Hash']
  vivify_929:
    $P2016 = $P2012."dumper"($P2013, $P2014, $P2015 :flat)
    setattribute $P2011, 'payload', $P2016
    throw $P2011
.annotate 'line', 1514
    goto if_2000_end
  if_2000:
.annotate 'line', 1513
    new $P2009, "Exception"
    set $P2009['type'], .CONTROL_RETURN
    find_lex $P2010, "$r"
    unless_null $P2010, vivify_930
    new $P2010, "Undef"
  vivify_930:
    setattribute $P2009, 'payload', $P2010
    throw $P2009
  if_2000_end:
.annotate 'line', 1494
    .return ($P1999)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1964"  :anon :subid("210_1304459385.051") :outer("209_1304459385.051")
.annotate 'line', 1497
    .const 'Sub' $P1979 = "211_1304459385.051" 
    capture_lex $P1979
    new $P1975, 'ExceptionHandler'
    set_label $P1975, control_1974
    $P1975."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1975
.annotate 'line', 1501
    find_lex $P1966, "$in-handle"
    unless_null $P1966, vivify_912
    new $P1966, "Undef"
  vivify_912:
    find_lex $P1967, "$encoding"
    unless_null $P1967, vivify_913
    new $P1967, "Undef"
  vivify_913:
    $P1966."encoding"($P1967)
.annotate 'line', 1502
    find_lex $P1968, "@codes"
    unless_null $P1968, vivify_914
    $P1968 = root_new ['parrot';'ResizablePMCArray']
  vivify_914:
    find_lex $P1969, "$in-handle"
    unless_null $P1969, vivify_915
    new $P1969, "Undef"
  vivify_915:
    find_lex $P1970, "$_"
    unless_null $P1970, vivify_916
    new $P1970, "Undef"
  vivify_916:
    $P1971 = $P1969."readall"($P1970)
    push $P1968, $P1971
.annotate 'line', 1503
    find_lex $P1972, "$in-handle"
    unless_null $P1972, vivify_917
    new $P1972, "Undef"
  vivify_917:
    $P1972."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_1973
  control_1974:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1979 = "211_1304459385.051" 
    newclosure $P1985, $P1979
    $P1985(exception)
    new $P1986, 'Integer'
    set $P1986, 1
    set exception["handled"], $P1986
    set $I1987, exception["handled"]
    ne $I1987, 1, nothandled_1977
  handled_1976:
    .return (exception)
  nothandled_1977:
    rethrow exception
  skip_handler_1973:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1978"  :anon :subid("211_1304459385.051") :outer("210_1304459385.051")
    .param pmc param_1980
.annotate 'line', 1504
    .lex "$_", param_1980
    find_lex $P1981, "$_"
    .lex "$!", $P1981
.annotate 'line', 1505
    new $P1982, 'String'
    set $P1982, "Error while reading from file: "
    find_lex $P1983, "$_"
    unless_null $P1983, vivify_918
    new $P1983, "Undef"
  vivify_918:
    concat $P1984, $P1982, $P1983
    store_lex "$err", $P1984
.annotate 'line', 1504
    .return ($P1984)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("212_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2024
    .param pmc param_2025
    .param pmc param_2026 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2049 = "213_1304459385.051" 
    capture_lex $P2049
    new $P2023, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2023, control_2022
    push_eh $P2023
    .lex "self", param_2024
    .lex "$source", param_2025
    .lex "%adverbs", param_2026
.annotate 'line', 1522
    $P2027 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2027
.annotate 'line', 1524
    new $P2028, "Undef"
    .lex "$target", $P2028
.annotate 'line', 1525
    new $P2029, "Undef"
    .lex "$result", $P2029
.annotate 'line', 1526
    new $P2030, "Undef"
    .lex "$stderr", $P2030
.annotate 'line', 1522
    find_lex $P2031, "%adverbs"
    unless_null $P2031, vivify_931
    $P2031 = root_new ['parrot';'Hash']
  vivify_931:
    find_lex $P2034, "%*COMPILING"
    unless_null $P2034, vivify_932
    get_hll_global $P2032, "GLOBAL"
    get_who $P2033, $P2032
    set $P2034, $P2033["%COMPILING"]
    unless_null $P2034, vivify_933
    die "Contextual %*COMPILING not found"
  vivify_933:
    store_lex "%*COMPILING", $P2034
  vivify_932:
    set $P2034["%?OPTIONS"], $P2031
.annotate 'line', 1524
    find_lex $P2035, "%adverbs"
    unless_null $P2035, vivify_934
    $P2035 = root_new ['parrot';'Hash']
  vivify_934:
    set $P2036, $P2035["target"]
    unless_null $P2036, vivify_935
    new $P2036, "Undef"
  vivify_935:
    set $S2037, $P2036
    downcase $S2038, $S2037
    new $P2039, 'String'
    set $P2039, $S2038
    store_lex "$target", $P2039
.annotate 'line', 1525
    find_lex $P2040, "$source"
    unless_null $P2040, vivify_936
    new $P2040, "Undef"
  vivify_936:
    store_lex "$result", $P2040
.annotate 'line', 1526
    getinterp $P2041
    $P2042 = $P2041."stderr_handle"()
    store_lex "$stderr", $P2042
.annotate 'line', 1527
    find_lex $P2044, "self"
    $P2045 = $P2044."stages"()
    defined $I2046, $P2045
    unless $I2046, for_undef_937
    iter $P2043, $P2045
    new $P2085, 'ExceptionHandler'
    set_label $P2085, loop2084_handler
    $P2085."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2085
  loop2084_test:
    unless $P2043, loop2084_done
    shift $P2047, $P2043
  loop2084_redo:
    .const 'Sub' $P2049 = "213_1304459385.051" 
    capture_lex $P2049
    $P2049($P2047)
  loop2084_next:
    goto loop2084_test
  loop2084_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2086, exception, 'type'
    eq $P2086, .CONTROL_LOOP_NEXT, loop2084_next
    eq $P2086, .CONTROL_LOOP_REDO, loop2084_redo
  loop2084_done:
    pop_eh 
  for_undef_937:
.annotate 'line', 1537
    new $P2087, "Exception"
    set $P2087['type'], .CONTROL_RETURN
    find_lex $P2088, "$result"
    unless_null $P2088, vivify_949
    new $P2088, "Undef"
  vivify_949:
    setattribute $P2087, 'payload', $P2088
    throw $P2087
.annotate 'line', 1521
    .return ()
  control_2022:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2089, exception, "payload"
    .return ($P2089)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2048"  :anon :subid("213_1304459385.051") :outer("212_1304459385.051")
    .param pmc param_2052
.annotate 'line', 1528
    new $P2050, "Undef"
    .lex "$timestamp", $P2050
.annotate 'line', 1530
    new $P2051, "Undef"
    .lex "$diff", $P2051
    .lex "$_", param_2052
.annotate 'line', 1528
    time $N2053
    new $P2054, 'Float'
    set $P2054, $N2053
    store_lex "$timestamp", $P2054
.annotate 'line', 1529
    find_lex $P2055, "self"
    find_lex $P2056, "$result"
    unless_null $P2056, vivify_938
    new $P2056, "Undef"
  vivify_938:
    find_lex $P2057, "%adverbs"
    unless_null $P2057, vivify_939
    $P2057 = root_new ['parrot';'Hash']
  vivify_939:
    find_lex $P2058, "$_"
    unless_null $P2058, vivify_940
    new $P2058, "Undef"
  vivify_940:
    set $S2059, $P2058
    $P2060 = $P2055.$S2059($P2056, $P2057 :flat)
    store_lex "$result", $P2060
.annotate 'line', 1530
    time $N2061
    new $P2062, 'Float'
    set $P2062, $N2061
    find_lex $P2063, "$timestamp"
    unless_null $P2063, vivify_941
    new $P2063, "Undef"
  vivify_941:
    sub $P2064, $P2062, $P2063
    store_lex "$diff", $P2064
.annotate 'line', 1531
    find_lex $P2066, "%adverbs"
    unless_null $P2066, vivify_942
    $P2066 = root_new ['parrot';'Hash']
  vivify_942:
    set $P2067, $P2066["stagestats"]
    unless_null $P2067, vivify_943
    new $P2067, "Undef"
  vivify_943:
    unless $P2067, if_2065_end
.annotate 'line', 1533
    find_lex $P2068, "$stderr"
    unless_null $P2068, vivify_944
    new $P2068, "Undef"
  vivify_944:
    new $P2069, 'String'
    set $P2069, "Stage "
    find_lex $P2070, "$_"
    unless_null $P2070, vivify_945
    new $P2070, "Undef"
  vivify_945:
    concat $P2071, $P2069, $P2070
    concat $P2072, $P2071, ": "
    find_lex $P2073, "$diff"
    unless_null $P2073, vivify_946
    new $P2073, "Undef"
  vivify_946:
    concat $P2074, $P2072, $P2073
    concat $P2075, $P2074, "\n"
    $P2068."print__N"($P2075)
  if_2065_end:
.annotate 'line', 1535
    find_lex $P2078, "$_"
    unless_null $P2078, vivify_947
    new $P2078, "Undef"
  vivify_947:
    set $S2079, $P2078
    find_lex $P2080, "$target"
    unless_null $P2080, vivify_948
    new $P2080, "Undef"
  vivify_948:
    set $S2081, $P2080
    iseq $I2082, $S2079, $S2081
    if $I2082, if_2077
    new $P2076, 'Integer'
    set $P2076, $I2082
    goto if_2077_end
  if_2077:
    set $I2083, .CONTROL_LOOP_LAST
    die 0, $I2083
  if_2077_end:
.annotate 'line', 1527
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("214_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2091
    .param pmc param_2092
    .param pmc param_2093 :slurpy :named
.annotate 'line', 1540
    .lex "self", param_2091
    .lex "$source", param_2092
    .lex "%adverbs", param_2093
.annotate 'line', 1541

            .local pmc source, options, self
            source = find_lex '$source'
            options = find_lex '%adverbs'
            self = find_lex 'self'

            .local string tcode
            tcode = options['transcode']
            unless tcode goto transcode_done
            .local pmc tcode_it
            $P0 = split ' ', tcode
            tcode_it = iter $P0
          tcode_loop:
            unless tcode_it goto transcode_done
            tcode = shift tcode_it
            push_eh tcode_fail
            $I0 = find_encoding tcode
            $S0 = source
            $S0 = trans_encoding $S0, $I0
            assign source, $S0
            pop_eh
            goto transcode_done
          tcode_fail:
            pop_eh
            goto tcode_loop
          transcode_done:

            .local pmc parsegrammar, parseactions, match
            parsegrammar = self.'parsegrammar'()

            null parseactions
            $S0 = options['target']
            if $S0 == 'parse' goto have_parseactions
            parseactions = self.'parseactions'()
          have_parseactions:

            .local int rxtrace
            rxtrace = options['parsetrace']
            match = parsegrammar.'parse'(source, 'p'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
            unless match goto err_parsefail
            .return (match)

          err_parsefail:
            self.'panic'('Unable to parse source')
            .return (match)
        
.annotate 'line', 1540
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past"  :subid("215_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2095
    .param pmc param_2096
    .param pmc param_2097 :slurpy :named
.annotate 'line', 1589
    .lex "self", param_2095
    .lex "$source", param_2096
    .lex "%adverbs", param_2097
.annotate 'line', 1590

            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

          compile_astgrammar:
            .local pmc astgrammar_name
            astgrammar_name = self.'astgrammar'()
            $S0 = typeof astgrammar_name
            eq $S0, 'NameSpace', astgrammar_ns
            unless astgrammar_name goto compile_match

            .local pmc astgrammar_namelist
            .local pmc astgrammar, astbuilder
            astgrammar_namelist = self.'parse_name'(astgrammar_name)
            unless astgrammar_namelist goto err_past
            astgrammar = new astgrammar_namelist
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')
          astgrammar_ns:
            $P0 = get_class astgrammar_name
            astgrammar = new $P0
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')

          compile_match:
            .local pmc ast
            ast = source.'ast'()
            $I0 = isa ast, ['PAST';'Node']
            unless $I0 goto err_past
            .return (ast)

          err_past:
            $S0 = typeof source
            .tailcall self.'panic'('Unable to obtain PAST from ', $S0)
        
.annotate 'line', 1589
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post"  :subid("216_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2099
    .param pmc param_2100
    .param pmc param_2101 :slurpy :named
.annotate 'line', 1629
    .lex "self", param_2099
    .lex "$source", param_2100
    .lex "%adverbs", param_2101
.annotate 'line', 1630
    compreg $P2102, "PAST"
    find_lex $P2103, "$source"
    unless_null $P2103, vivify_950
    new $P2103, "Undef"
  vivify_950:
    find_lex $P2104, "%adverbs"
    unless_null $P2104, vivify_951
    $P2104 = root_new ['parrot';'Hash']
  vivify_951:
    $P2105 = $P2102."to_post"($P2103, $P2104 :flat)
.annotate 'line', 1629
    .return ($P2105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("217_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2107
    .param pmc param_2108
    .param pmc param_2109 :slurpy :named
.annotate 'line', 1633
    .lex "self", param_2107
    .lex "$source", param_2108
    .lex "%adverbs", param_2109
.annotate 'line', 1634
    compreg $P2110, "POST"
    find_lex $P2111, "$source"
    unless_null $P2111, vivify_952
    new $P2111, "Undef"
  vivify_952:
    find_lex $P2112, "%adverbs"
    unless_null $P2112, vivify_953
    $P2112 = root_new ['parrot';'Hash']
  vivify_953:
    $P2113 = $P2110."to_pir"($P2111, $P2112 :flat)
.annotate 'line', 1633
    .return ($P2113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("218_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2115
    .param pmc param_2116
    .param pmc param_2117 :slurpy :named
.annotate 'line', 1637
    .lex "self", param_2115
    .lex "$source", param_2116
    .lex "%adverbs", param_2117
.annotate 'line', 1638
    new $P2118, "Undef"
    .lex "$compiler", $P2118
    compreg $P2119, "PIR"
    store_lex "$compiler", $P2119
.annotate 'line', 1639
    find_lex $P2120, "$compiler"
    unless_null $P2120, vivify_954
    new $P2120, "Undef"
  vivify_954:
    find_lex $P2121, "$source"
    unless_null $P2121, vivify_955
    new $P2121, "Undef"
  vivify_955:
    $P2122 = $P2120($P2121)
.annotate 'line', 1637
    .return ($P2122)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("219_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2124
    .param pmc param_2125
    .param pmc param_2126
    .param pmc param_2127 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2133 = "220_1304459385.051" 
    capture_lex $P2133
    .lex "self", param_2124
    .lex "$obj", param_2125
    .lex "$name", param_2126
    .lex "%options", param_2127
.annotate 'line', 1643
    find_lex $P2130, "%options"
    unless_null $P2130, vivify_956
    $P2130 = root_new ['parrot';'Hash']
  vivify_956:
    set $P2131, $P2130["dumper"]
    unless_null $P2131, vivify_957
    new $P2131, "Undef"
  vivify_957:
    if $P2131, if_2129
.annotate 'line', 1649
    find_lex $P2149, "$obj"
    unless_null $P2149, vivify_958
    new $P2149, "Undef"
  vivify_958:
    find_lex $P2150, "$name"
    unless_null $P2150, vivify_959
    new $P2150, "Undef"
  vivify_959:
    $P2151 = "_dumper"($P2149, $P2150)
.annotate 'line', 1648
    set $P2128, $P2151
.annotate 'line', 1643
    goto if_2129_end
  if_2129:
    .const 'Sub' $P2133 = "220_1304459385.051" 
    capture_lex $P2133
    $P2148 = $P2133()
    set $P2128, $P2148
  if_2129_end:
.annotate 'line', 1642
    .return ($P2128)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2132"  :anon :subid("220_1304459385.051") :outer("219_1304459385.051")
.annotate 'line', 1645
    new $P2134, "Undef"
    .lex "$dumper", $P2134
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2135, "%options"
    unless_null $P2135, vivify_960
    $P2135 = root_new ['parrot';'Hash']
  vivify_960:
    set $P2136, $P2135["dumper"]
    unless_null $P2136, vivify_961
    new $P2136, "Undef"
  vivify_961:
    set $S2137, $P2136
    downcase $S2138, $S2137
    get_hll_global $P2139, "GLOBAL"
    nqp_get_package_through_who $P2140, $P2139, "PCT"
    get_who $P2141, $P2140
    set $P2142, $P2141["Dumper"]
    unless_null $P2142, vivify_962
    $P2142 = root_new ['parrot';'Hash']
  vivify_962:
    set $P2143, $P2142[$S2138]
    unless_null $P2143, vivify_963
    new $P2143, "Undef"
  vivify_963:
    store_lex "$dumper", $P2143
.annotate 'line', 1646
    find_lex $P2144, "$dumper"
    unless_null $P2144, vivify_964
    new $P2144, "Undef"
  vivify_964:
    find_lex $P2145, "$obj"
    unless_null $P2145, vivify_965
    new $P2145, "Undef"
  vivify_965:
    find_lex $P2146, "$name"
    unless_null $P2146, vivify_966
    new $P2146, "Undef"
  vivify_966:
    $P2147 = $P2144($P2145, $P2146)
.annotate 'line', 1643
    .return ($P2147)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("221_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2153
    .param pmc param_2154 :optional
    .param int has_param_2154 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2153
    if has_param_2154, optparam_967
    new $P2155, "Undef"
    set param_2154, $P2155
  optparam_967:
    .lex "$name", param_2154
.annotate 'line', 1654
    find_lex $P2157, "$name"
    unless_null $P2157, vivify_968
    new $P2157, "Undef"
  vivify_968:
    unless $P2157, if_2156_end
.annotate 'line', 1655
    find_lex $P2158, "$name"
    unless_null $P2158, vivify_969
    new $P2158, "Undef"
  vivify_969:
    "say"($P2158)
  if_2156_end:
.annotate 'line', 1657
    find_lex $P2159, "self"
    find_lex $P2160, "$?CLASS"
    getattribute $P2161, $P2159, $P2160, "$!usage"
    unless_null $P2161, vivify_970
    new $P2161, "Undef"
  vivify_970:
    say $P2161
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("222_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2163
.annotate 'line', 1661
    .lex "self", param_2163
.annotate 'line', 1662
    find_lex $P2164, "self"
    find_lex $P2165, "$?CLASS"
    getattribute $P2166, $P2164, $P2165, "$!version"
    unless_null $P2166, vivify_971
    new $P2166, "Undef"
  vivify_971:
    say $P2166
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("223_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2168
    .param pmc param_2169
.annotate 'line', 1666
    .const 'Sub' $P2179 = "224_1304459385.051" 
    capture_lex $P2179
    .lex "self", param_2168
    .lex "$stagename", param_2169
.annotate 'line', 1667
    $P2170 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2170
    new $P2171, "ResizableStringArray"
    store_lex "@new_stages", $P2171
.annotate 'line', 1668
    find_lex $P2173, "self"
    find_lex $P2174, "$?CLASS"
    getattribute $P2175, $P2173, $P2174, "@!stages"
    unless_null $P2175, vivify_972
    $P2175 = root_new ['parrot';'ResizablePMCArray']
  vivify_972:
    defined $I2176, $P2175
    unless $I2176, for_undef_973
    iter $P2172, $P2175
    new $P2192, 'ExceptionHandler'
    set_label $P2192, loop2191_handler
    $P2192."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2192
  loop2191_test:
    unless $P2172, loop2191_done
    shift $P2177, $P2172
  loop2191_redo:
    .const 'Sub' $P2179 = "224_1304459385.051" 
    capture_lex $P2179
    $P2179($P2177)
  loop2191_next:
    goto loop2191_test
  loop2191_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2193, exception, 'type'
    eq $P2193, .CONTROL_LOOP_NEXT, loop2191_next
    eq $P2193, .CONTROL_LOOP_REDO, loop2191_redo
  loop2191_done:
    pop_eh 
  for_undef_973:
.annotate 'line', 1673
    find_lex $P2194, "@new_stages"
    unless_null $P2194, vivify_978
    $P2194 = root_new ['parrot';'ResizablePMCArray']
  vivify_978:
    find_lex $P2195, "self"
    find_lex $P2196, "$?CLASS"
    setattribute $P2195, $P2196, "@!stages", $P2194
.annotate 'line', 1666
    .return ($P2194)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2178"  :anon :subid("224_1304459385.051") :outer("223_1304459385.051")
    .param pmc param_2180
.annotate 'line', 1668
    .lex "$_", param_2180
.annotate 'line', 1669
    find_lex $P2183, "$_"
    unless_null $P2183, vivify_974
    new $P2183, "Undef"
  vivify_974:
    set $S2184, $P2183
    find_lex $P2185, "$stagename"
    unless_null $P2185, vivify_975
    new $P2185, "Undef"
  vivify_975:
    set $S2186, $P2185
    isne $I2187, $S2184, $S2186
    if $I2187, if_2182
    new $P2181, 'Integer'
    set $P2181, $I2187
    goto if_2182_end
  if_2182:
.annotate 'line', 1670
    find_lex $P2188, "@new_stages"
    unless_null $P2188, vivify_976
    $P2188 = root_new ['parrot';'ResizablePMCArray']
  vivify_976:
    find_lex $P2189, "$_"
    unless_null $P2189, vivify_977
    new $P2189, "Undef"
  vivify_977:
    $P2190 = $P2188."push"($P2189)
.annotate 'line', 1669
    set $P2181, $P2190
  if_2182_end:
.annotate 'line', 1668
    .return ($P2181)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("225_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2200
    .param pmc param_2201
    .param pmc param_2202 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2239 = "227_1304459385.051" 
    capture_lex $P2239
    .const 'Sub' $P2221 = "226_1304459385.051" 
    capture_lex $P2221
    new $P2199, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2199, control_2198
    push_eh $P2199
    .lex "self", param_2200
    .lex "$stagename", param_2201
    .lex "%adverbs", param_2202
.annotate 'line', 1677
    new $P2203, "Undef"
    .lex "$position", $P2203
.annotate 'line', 1678
    new $P2204, "Undef"
    .lex "$where", $P2204
.annotate 'line', 1691
    $P2205 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2205
.annotate 'line', 1676
    find_lex $P2206, "$position"
    unless_null $P2206, vivify_979
    new $P2206, "Undef"
  vivify_979:
    find_lex $P2207, "$where"
    unless_null $P2207, vivify_980
    new $P2207, "Undef"
  vivify_980:
.annotate 'line', 1679
    find_lex $P2209, "%adverbs"
    unless_null $P2209, vivify_981
    $P2209 = root_new ['parrot';'Hash']
  vivify_981:
    set $P2210, $P2209["before"]
    unless_null $P2210, vivify_982
    new $P2210, "Undef"
  vivify_982:
    if $P2210, if_2208
.annotate 'line', 1682
    find_lex $P2215, "%adverbs"
    unless_null $P2215, vivify_983
    $P2215 = root_new ['parrot';'Hash']
  vivify_983:
    set $P2216, $P2215["after"]
    unless_null $P2216, vivify_984
    new $P2216, "Undef"
  vivify_984:
    if $P2216, if_2214
.annotate 'line', 1685
    .const 'Sub' $P2221 = "226_1304459385.051" 
    capture_lex $P2221
    $P2221()
    goto if_2214_end
  if_2214:
.annotate 'line', 1683
    find_lex $P2217, "%adverbs"
    unless_null $P2217, vivify_988
    $P2217 = root_new ['parrot';'Hash']
  vivify_988:
    set $P2218, $P2217["after"]
    unless_null $P2218, vivify_989
    new $P2218, "Undef"
  vivify_989:
    store_lex "$where", $P2218
.annotate 'line', 1684
    new $P2219, "String"
    assign $P2219, "after"
    store_lex "$position", $P2219
  if_2214_end:
.annotate 'line', 1682
    goto if_2208_end
  if_2208:
.annotate 'line', 1680
    find_lex $P2211, "%adverbs"
    unless_null $P2211, vivify_990
    $P2211 = root_new ['parrot';'Hash']
  vivify_990:
    set $P2212, $P2211["before"]
    unless_null $P2212, vivify_991
    new $P2212, "Undef"
  vivify_991:
    store_lex "$where", $P2212
.annotate 'line', 1681
    new $P2213, "String"
    assign $P2213, "before"
    store_lex "$position", $P2213
  if_2208_end:
.annotate 'line', 1691
    new $P2232, "ResizableStringArray"
    store_lex "@new-stages", $P2232
.annotate 'line', 1692
    find_lex $P2234, "self"
    $P2235 = $P2234."stages"()
    defined $I2236, $P2235
    unless $I2236, for_undef_992
    iter $P2233, $P2235
    new $P2264, 'ExceptionHandler'
    set_label $P2264, loop2263_handler
    $P2264."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2264
  loop2263_test:
    unless $P2233, loop2263_done
    shift $P2237, $P2233
  loop2263_redo:
    .const 'Sub' $P2239 = "227_1304459385.051" 
    capture_lex $P2239
    $P2239($P2237)
  loop2263_next:
    goto loop2263_test
  loop2263_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2265, exception, 'type'
    eq $P2265, .CONTROL_LOOP_NEXT, loop2263_next
    eq $P2265, .CONTROL_LOOP_REDO, loop2263_redo
  loop2263_done:
    pop_eh 
  for_undef_992:
.annotate 'line', 1705
    find_lex $P2266, "self"
    find_lex $P2267, "@new-stages"
    unless_null $P2267, vivify_1006
    $P2267 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    $P2268 = $P2266."stages"($P2267)
.annotate 'line', 1676
    .return ($P2268)
  control_2198:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2269, exception, "payload"
    .return ($P2269)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2220"  :anon :subid("226_1304459385.051") :outer("225_1304459385.051")
.annotate 'line', 1686
    $P2222 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2222
    find_lex $P2223, "self"
    $P2224 = $P2223."stages"()
    clone $P2225, $P2224
    store_lex "@new-stages", $P2225
.annotate 'line', 1687
    find_lex $P2226, "@new-stages"
    unless_null $P2226, vivify_985
    $P2226 = root_new ['parrot';'ResizablePMCArray']
  vivify_985:
    find_lex $P2227, "$stagename"
    unless_null $P2227, vivify_986
    new $P2227, "Undef"
  vivify_986:
    push $P2226, $P2227
.annotate 'line', 1688
    find_lex $P2228, "self"
    find_lex $P2229, "@new-stages"
    unless_null $P2229, vivify_987
    $P2229 = root_new ['parrot';'ResizablePMCArray']
  vivify_987:
    $P2228."stages"($P2229)
.annotate 'line', 1689
    new $P2230, "Exception"
    set $P2230['type'], .CONTROL_RETURN
    new $P2231, "Integer"
    assign $P2231, 1
    setattribute $P2230, 'payload', $P2231
    throw $P2230
.annotate 'line', 1685
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2238"  :anon :subid("227_1304459385.051") :outer("225_1304459385.051")
    .param pmc param_2240
.annotate 'line', 1692
    .lex "$_", param_2240
.annotate 'line', 1693
    find_lex $P2243, "$_"
    unless_null $P2243, vivify_993
    new $P2243, "Undef"
  vivify_993:
    set $S2244, $P2243
    find_lex $P2245, "$where"
    unless_null $P2245, vivify_994
    new $P2245, "Undef"
  vivify_994:
    set $S2246, $P2245
    iseq $I2247, $S2244, $S2246
    if $I2247, if_2242
.annotate 'line', 1702
    find_lex $P2261, "@new-stages"
    unless_null $P2261, vivify_995
    $P2261 = root_new ['parrot';'ResizablePMCArray']
  vivify_995:
    find_lex $P2262, "$_"
    unless_null $P2262, vivify_996
    new $P2262, "Undef"
  vivify_996:
    push $P2261, $P2262
.annotate 'line', 1701
    set $P2241, $P2261
.annotate 'line', 1693
    goto if_2242_end
  if_2242:
.annotate 'line', 1694
    find_lex $P2250, "$position"
    unless_null $P2250, vivify_997
    new $P2250, "Undef"
  vivify_997:
    set $S2251, $P2250
    iseq $I2252, $S2251, "before"
    if $I2252, if_2249
.annotate 'line', 1698
    find_lex $P2257, "@new-stages"
    unless_null $P2257, vivify_998
    $P2257 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    find_lex $P2258, "$_"
    unless_null $P2258, vivify_999
    new $P2258, "Undef"
  vivify_999:
    push $P2257, $P2258
.annotate 'line', 1699
    find_lex $P2259, "@new-stages"
    unless_null $P2259, vivify_1000
    $P2259 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    find_lex $P2260, "$stagename"
    unless_null $P2260, vivify_1001
    new $P2260, "Undef"
  vivify_1001:
    push $P2259, $P2260
.annotate 'line', 1697
    set $P2248, $P2259
.annotate 'line', 1694
    goto if_2249_end
  if_2249:
.annotate 'line', 1695
    find_lex $P2253, "@new-stages"
    unless_null $P2253, vivify_1002
    $P2253 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    find_lex $P2254, "$stagename"
    unless_null $P2254, vivify_1003
    new $P2254, "Undef"
  vivify_1003:
    push $P2253, $P2254
.annotate 'line', 1696
    find_lex $P2255, "@new-stages"
    unless_null $P2255, vivify_1004
    $P2255 = root_new ['parrot';'ResizablePMCArray']
  vivify_1004:
    find_lex $P2256, "$_"
    unless_null $P2256, vivify_1005
    new $P2256, "Undef"
  vivify_1005:
    push $P2255, $P2256
.annotate 'line', 1694
    set $P2248, $P2255
  if_2249_end:
.annotate 'line', 1693
    set $P2241, $P2248
  if_2242_end:
.annotate 'line', 1692
    .return ($P2241)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("228_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2271
    .param pmc param_2272
.annotate 'line', 1708
    .const 'Sub' $P2310 = "229_1304459385.051" 
    capture_lex $P2310
    .lex "self", param_2271
    .lex "$name", param_2272
.annotate 'line', 1709
    $P2273 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2273
.annotate 'line', 1710
    new $P2274, "Undef"
    .lex "$sigil", $P2274
.annotate 'line', 1713
    new $P2275, "Undef"
    .lex "$idx", $P2275
.annotate 'line', 1721
    $P2276 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2276
.annotate 'line', 1709
    find_lex $P2277, "$name"
    unless_null $P2277, vivify_1007
    new $P2277, "Undef"
  vivify_1007:
    set $S2278, $P2277
    split $P2279, "::", $S2278
    store_lex "@ns", $P2279
.annotate 'line', 1710
    find_lex $P2280, "@ns"
    unless_null $P2280, vivify_1008
    $P2280 = root_new ['parrot';'ResizablePMCArray']
  vivify_1008:
    set $P2281, $P2280[0]
    unless_null $P2281, vivify_1009
    new $P2281, "Undef"
  vivify_1009:
    set $S2282, $P2281
    substr $S2283, $S2282, 0, 1
    new $P2284, 'String'
    set $P2284, $S2283
    store_lex "$sigil", $P2284
.annotate 'line', 1713
    find_lex $P2285, "$sigil"
    unless_null $P2285, vivify_1010
    new $P2285, "Undef"
  vivify_1010:
    set $S2286, $P2285
    index $I2287, "$@%&", $S2286
    new $P2288, 'Integer'
    set $P2288, $I2287
    store_lex "$idx", $P2288
.annotate 'line', 1714
    find_lex $P2290, "$idx"
    unless_null $P2290, vivify_1011
    new $P2290, "Undef"
  vivify_1011:
    set $N2291, $P2290
    isge $I2292, $N2291, 0.0
    unless $I2292, if_2289_end
.annotate 'line', 1715
    find_lex $P2293, "@ns"
    unless_null $P2293, vivify_1012
    $P2293 = root_new ['parrot';'ResizablePMCArray']
  vivify_1012:
    set $P2294, $P2293[0]
    unless_null $P2294, vivify_1013
    new $P2294, "Undef"
  vivify_1013:
    set $S2295, $P2294
    substr $S2296, $S2295, 1
    new $P2297, 'String'
    set $P2297, $S2296
    find_lex $P2298, "@ns"
    unless_null $P2298, vivify_1014
    $P2298 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2298
  vivify_1014:
    set $P2298[0], $P2297
.annotate 'line', 1716
    find_lex $P2299, "$sigil"
    unless_null $P2299, vivify_1015
    new $P2299, "Undef"
  vivify_1015:
    find_lex $P2300, "@ns"
    unless_null $P2300, vivify_1016
    $P2300 = root_new ['parrot';'ResizablePMCArray']
  vivify_1016:
    set $P2301, $P2300[-1]
    unless_null $P2301, vivify_1017
    new $P2301, "Undef"
  vivify_1017:
    concat $P2302, $P2299, $P2301
    find_lex $P2303, "@ns"
    unless_null $P2303, vivify_1018
    $P2303 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2303
  vivify_1018:
    set $P2303[-1], $P2302
  if_2289_end:
.annotate 'line', 1714
    find_lex $P2304, "@actual_ns"
    unless_null $P2304, vivify_1019
    $P2304 = root_new ['parrot';'ResizablePMCArray']
  vivify_1019:
.annotate 'line', 1722
    find_lex $P2306, "@ns"
    unless_null $P2306, vivify_1020
    $P2306 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
    defined $I2307, $P2306
    unless $I2307, for_undef_1021
    iter $P2305, $P2306
    new $P2320, 'ExceptionHandler'
    set_label $P2320, loop2319_handler
    $P2320."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2320
  loop2319_test:
    unless $P2305, loop2319_done
    shift $P2308, $P2305
  loop2319_redo:
    .const 'Sub' $P2310 = "229_1304459385.051" 
    capture_lex $P2310
    $P2310($P2308)
  loop2319_next:
    goto loop2319_test
  loop2319_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2321, exception, 'type'
    eq $P2321, .CONTROL_LOOP_NEXT, loop2319_next
    eq $P2321, .CONTROL_LOOP_REDO, loop2319_redo
  loop2319_done:
    pop_eh 
  for_undef_1021:
    find_lex $P2322, "@actual_ns"
    unless_null $P2322, vivify_1025
    $P2322 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
.annotate 'line', 1708
    .return ($P2322)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2309"  :anon :subid("229_1304459385.051") :outer("228_1304459385.051")
    .param pmc param_2311
.annotate 'line', 1722
    .lex "$_", param_2311
.annotate 'line', 1723
    find_lex $P2314, "$_"
    unless_null $P2314, vivify_1022
    new $P2314, "Undef"
  vivify_1022:
    set $S2315, $P2314
    iseq $I2316, $S2315, ""
    unless $I2316, unless_2313
    new $P2312, 'Integer'
    set $P2312, $I2316
    goto unless_2313_end
  unless_2313:
    find_lex $P2317, "@actual_ns"
    unless_null $P2317, vivify_1023
    $P2317 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    find_lex $P2318, "$_"
    unless_null $P2318, vivify_1024
    new $P2318, "Undef"
  vivify_1024:
    push $P2317, $P2318
    set $P2312, $P2317
  unless_2313_end:
.annotate 'line', 1722
    .return ($P2312)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("230_1304459385.051") :outer("165_1304459385.051")
    .param pmc param_2324
    .param pmc param_2325
    .param pmc param_2326
    .param pmc param_2327 :optional :named("cache")
    .param int has_param_2327 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2324
    .lex "$target", param_2325
    .lex "$pos", param_2326
    if has_param_2327, optparam_1026
    new $P2328, "Undef"
    set param_2327, $P2328
  optparam_1026:
    .lex "$cache", param_2327
.annotate 'line', 1729

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            .include 'cclass.pasm'

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop '!linepos', target
            unless null linepos goto linepos_done

            # calculate a new linepos array.
          linepos_build:
            linepos = new ['ResizableIntegerArray']
            unless cache goto linepos_build_1
            setprop target, '!linepos', linepos
          linepos_build_1:
            .local string s
            .local int jpos, eos
            s = target
            eos = length s
            jpos = 0
            # Search for all of the newline markers in C<target>.  When we
            # find one, mark the ending offset of the line in C<linepos>.
          linepos_loop:
            jpos = find_cclass .CCLASS_NEWLINE, s, jpos, eos
            unless jpos < eos goto linepos_done
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
          linepos_done:

            # We have C<linepos>, so now we search the array for the largest
            # element that is not greater than C<pos>.  The index of that
            # element is the line number to be returned.
            # (Potential optimization: use a binary search.)
            .local int line, count
            count = elements linepos
            line = 0
          line_loop:
            if line >= count goto line_done
            $I0 = linepos[line]
            if $I0 > pos goto line_done
            inc line
            goto line_loop
          line_done:
            .return (line)
        
.annotate 'line', 1728
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2336"  :subid("231_1304459385.051") :outer("10_1304459385.051")
.annotate 'line', 1885
    .const 'Sub' $P2365 = "236_1304459385.051" 
    capture_lex $P2365
    .const 'Sub' $P2358 = "235_1304459385.051" 
    capture_lex $P2358
    .const 'Sub' $P2353 = "234_1304459385.051" 
    capture_lex $P2353
    .const 'Sub' $P2348 = "233_1304459385.051" 
    capture_lex $P2348
    .const 'Sub' $P2340 = "232_1304459385.051" 
    capture_lex $P2340
    .lex "$?PACKAGE", $P2338
    .lex "$?CLASS", $P2339
.annotate 'line', 1901
    .const 'Sub' $P2365 = "236_1304459385.051" 
    newclosure $P2413, $P2365
.annotate 'line', 1885
    .return ($P2413)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("232_1304459385.051") :outer("231_1304459385.051")
    .param pmc param_2341
.annotate 'line', 1889
    .lex "self", param_2341
.annotate 'line', 1890
    new $P2342, "ResizablePMCArray"
    find_lex $P2343, "self"
    find_lex $P2344, "$?CLASS"
    setattribute $P2343, $P2344, "@!arguments", $P2342
.annotate 'line', 1891
    new $P2345, "Hash"
    find_lex $P2346, "self"
    find_lex $P2347, "$?CLASS"
    setattribute $P2346, $P2347, "%!options", $P2345
.annotate 'line', 1889
    .return ($P2345)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("233_1304459385.051") :outer("231_1304459385.051")
    .param pmc param_2349
.annotate 'line', 1894
    .lex "self", param_2349
    find_lex $P2350, "self"
    find_lex $P2351, "$?CLASS"
    getattribute $P2352, $P2350, $P2351, "@!arguments"
    unless_null $P2352, vivify_1028
    $P2352 = root_new ['parrot';'ResizablePMCArray']
  vivify_1028:
    .return ($P2352)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("234_1304459385.051") :outer("231_1304459385.051")
    .param pmc param_2354
.annotate 'line', 1895
    .lex "self", param_2354
    find_lex $P2355, "self"
    find_lex $P2356, "$?CLASS"
    getattribute $P2357, $P2355, $P2356, "%!options"
    unless_null $P2357, vivify_1029
    $P2357 = root_new ['parrot';'Hash']
  vivify_1029:
    .return ($P2357)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("235_1304459385.051") :outer("231_1304459385.051")
    .param pmc param_2359
    .param pmc param_2360
.annotate 'line', 1897
    .lex "self", param_2359
    .lex "$x", param_2360
.annotate 'line', 1898
    find_lex $P2361, "self"
    find_lex $P2362, "$?CLASS"
    getattribute $P2363, $P2361, $P2362, "@!arguments"
    unless_null $P2363, vivify_1030
    $P2363 = root_new ['parrot';'ResizablePMCArray']
  vivify_1030:
    find_lex $P2364, "$x"
    unless_null $P2364, vivify_1031
    new $P2364, "Undef"
  vivify_1031:
    push $P2363, $P2364
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("236_1304459385.051") :outer("231_1304459385.051")
    .param pmc param_2366
    .param pmc param_2367
    .param pmc param_2368
.annotate 'line', 1901
    .const 'Sub' $P2377 = "237_1304459385.051" 
    capture_lex $P2377
    .lex "self", param_2366
    .lex "$name", param_2367
    .lex "$value", param_2368
.annotate 'line', 1904
    find_lex $P2374, "$name"
    unless_null $P2374, vivify_1032
    new $P2374, "Undef"
  vivify_1032:
    find_lex $P2371, "self"
    find_lex $P2372, "$?CLASS"
    getattribute $P2373, $P2371, $P2372, "%!options"
    unless_null $P2373, vivify_1033
    $P2373 = root_new ['parrot';'Hash']
  vivify_1033:
    exists $I2375, $P2373[$P2374]
    if $I2375, if_2370
.annotate 'line', 1913
    find_lex $P2408, "$value"
    unless_null $P2408, vivify_1034
    new $P2408, "Undef"
  vivify_1034:
    find_lex $P2409, "$name"
    unless_null $P2409, vivify_1035
    new $P2409, "Undef"
  vivify_1035:
    find_lex $P2410, "self"
    find_lex $P2411, "$?CLASS"
    getattribute $P2412, $P2410, $P2411, "%!options"
    unless_null $P2412, vivify_1036
    $P2412 = root_new ['parrot';'Hash']
    setattribute $P2410, $P2411, "%!options", $P2412
  vivify_1036:
    set $P2412[$P2409], $P2408
.annotate 'line', 1912
    set $P2369, $P2408
.annotate 'line', 1904
    goto if_2370_end
  if_2370:
    .const 'Sub' $P2377 = "237_1304459385.051" 
    capture_lex $P2377
    $P2407 = $P2377()
    set $P2369, $P2407
  if_2370_end:
.annotate 'line', 1901
    .return ($P2369)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2376"  :anon :subid("237_1304459385.051") :outer("236_1304459385.051")
.annotate 'line', 1905
    new $P2378, "Undef"
    .lex "$t", $P2378
    find_lex $P2379, "self"
    find_lex $P2380, "$?CLASS"
    getattribute $P2381, $P2379, $P2380, "%!options"
    unless_null $P2381, vivify_1037
    $P2381 = root_new ['parrot';'Hash']
  vivify_1037:
    typeof $S2382, $P2381
    new $P2383, 'String'
    set $P2383, $S2382
    store_lex "$t", $P2383
.annotate 'line', 1906
    find_lex $P2384, "$t"
    unless_null $P2384, vivify_1038
    new $P2384, "Undef"
  vivify_1038:
    "say"($P2384)
.annotate 'line', 1907
    find_lex $P2387, "$t"
    unless_null $P2387, vivify_1039
    new $P2387, "Undef"
  vivify_1039:
    set $S2388, $P2387
    iseq $I2389, $S2388, "ResizablePMCArray"
    if $I2389, if_2386
.annotate 'line', 1910
    find_lex $P2396, "$name"
    unless_null $P2396, vivify_1040
    new $P2396, "Undef"
  vivify_1040:
    find_lex $P2397, "self"
    find_lex $P2398, "$?CLASS"
    getattribute $P2399, $P2397, $P2398, "%!options"
    unless_null $P2399, vivify_1041
    $P2399 = root_new ['parrot';'Hash']
  vivify_1041:
    set $P2400, $P2399[$P2396]
    unless_null $P2400, vivify_1042
    new $P2400, "Undef"
  vivify_1042:
    find_lex $P2401, "$name"
    unless_null $P2401, vivify_1043
    new $P2401, "Undef"
  vivify_1043:
    new $P2402, "ResizablePMCArray"
    push $P2402, $P2400
    push $P2402, $P2401
    find_lex $P2403, "$name"
    unless_null $P2403, vivify_1044
    new $P2403, "Undef"
  vivify_1044:
    find_lex $P2404, "self"
    find_lex $P2405, "$?CLASS"
    getattribute $P2406, $P2404, $P2405, "%!options"
    unless_null $P2406, vivify_1045
    $P2406 = root_new ['parrot';'Hash']
    setattribute $P2404, $P2405, "%!options", $P2406
  vivify_1045:
    set $P2406[$P2403], $P2402
.annotate 'line', 1909
    set $P2385, $P2402
.annotate 'line', 1907
    goto if_2386_end
  if_2386:
.annotate 'line', 1908
    find_lex $P2390, "$name"
    unless_null $P2390, vivify_1046
    new $P2390, "Undef"
  vivify_1046:
    find_lex $P2391, "self"
    find_lex $P2392, "$?CLASS"
    getattribute $P2393, $P2391, $P2392, "%!options"
    unless_null $P2393, vivify_1047
    $P2393 = root_new ['parrot';'Hash']
  vivify_1047:
    set $P2394, $P2393[$P2390]
    unless_null $P2394, vivify_1048
    new $P2394, "Undef"
  vivify_1048:
    find_lex $P2395, "$value"
    unless_null $P2395, vivify_1049
    new $P2395, "Undef"
  vivify_1049:
    push $P2394, $P2395
.annotate 'line', 1907
    set $P2385, $P2394
  if_2386_end:
.annotate 'line', 1904
    .return ($P2385)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2414"  :subid("238_1304459385.051") :outer("10_1304459385.051")
.annotate 'line', 1918
    .const 'Sub' $P2555 = "249_1304459385.051" 
    capture_lex $P2555
    .const 'Sub' $P2543 = "248_1304459385.051" 
    capture_lex $P2543
    .const 'Sub' $P2519 = "247_1304459385.051" 
    capture_lex $P2519
    .const 'Sub' $P2470 = "245_1304459385.051" 
    capture_lex $P2470
    .const 'Sub' $P2464 = "244_1304459385.051" 
    capture_lex $P2464
    .const 'Sub' $P2456 = "243_1304459385.051" 
    capture_lex $P2456
    .const 'Sub' $P2432 = "241_1304459385.051" 
    capture_lex $P2432
    .const 'Sub' $P2427 = "240_1304459385.051" 
    capture_lex $P2427
    .const 'Sub' $P2418 = "239_1304459385.051" 
    capture_lex $P2418
    .lex "$?PACKAGE", $P2416
    .lex "$?CLASS", $P2417
.annotate 'line', 1978
    .const 'Sub' $P2555 = "249_1304459385.051" 
    newclosure $P2842, $P2555
.annotate 'line', 1918
    .return ($P2842)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("239_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2419
    .param pmc param_2420
.annotate 'line', 1924
    .lex "self", param_2419
    .lex "@specs", param_2420
.annotate 'line', 1925
    new $P2421, "Undef"
    .lex "$obj", $P2421
    find_lex $P2422, "self"
    $P2423 = $P2422."CREATE"()
    store_lex "$obj", $P2423
.annotate 'line', 1926
    find_lex $P2424, "$obj"
    unless_null $P2424, vivify_1050
    new $P2424, "Undef"
  vivify_1050:
    find_lex $P2425, "@specs"
    unless_null $P2425, vivify_1051
    $P2425 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    $P2424."BUILD"($P2425 :named("specs"))
    find_lex $P2426, "$obj"
    unless_null $P2426, vivify_1052
    new $P2426, "Undef"
  vivify_1052:
.annotate 'line', 1924
    .return ($P2426)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("240_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2428
.annotate 'line', 1930
    .lex "self", param_2428
.annotate 'line', 1931
    new $P2429, "Integer"
    assign $P2429, 1
    find_lex $P2430, "self"
    find_lex $P2431, "$?CLASS"
    setattribute $P2430, $P2431, "$!stop-after-first-arg", $P2429
.annotate 'line', 1930
    .return ($P2429)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("241_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2433
    .param pmc param_2434 :optional :named("specs")
    .param int has_param_2434 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2448 = "242_1304459385.051" 
    capture_lex $P2448
    .lex "self", param_2433
    if has_param_2434, optparam_1053
    $P2435 = root_new ['parrot';'ResizablePMCArray']
    set param_2434, $P2435
  optparam_1053:
    .lex "@specs", param_2434
.annotate 'line', 1935
    new $P2436, "Integer"
    assign $P2436, 1
    find_lex $P2437, "self"
    find_lex $P2438, "$?CLASS"
    getattribute $P2439, $P2437, $P2438, "%!stopper"
    unless_null $P2439, vivify_1054
    $P2439 = root_new ['parrot';'Hash']
    setattribute $P2437, $P2438, "%!stopper", $P2439
  vivify_1054:
    set $P2439["--"], $P2436
.annotate 'line', 1936
    new $P2440, "Integer"
    assign $P2440, 0
    find_lex $P2441, "self"
    find_lex $P2442, "$?CLASS"
    setattribute $P2441, $P2442, "$!stop-after-first-arg", $P2440
.annotate 'line', 1937
    find_lex $P2444, "@specs"
    unless_null $P2444, vivify_1055
    $P2444 = root_new ['parrot';'ResizablePMCArray']
  vivify_1055:
    defined $I2445, $P2444
    unless $I2445, for_undef_1056
    iter $P2443, $P2444
    new $P2454, 'ExceptionHandler'
    set_label $P2454, loop2453_handler
    $P2454."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2454
  loop2453_test:
    unless $P2443, loop2453_done
    shift $P2446, $P2443
  loop2453_redo:
    .const 'Sub' $P2448 = "242_1304459385.051" 
    capture_lex $P2448
    $P2448($P2446)
  loop2453_next:
    goto loop2453_test
  loop2453_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2455, exception, 'type'
    eq $P2455, .CONTROL_LOOP_NEXT, loop2453_next
    eq $P2455, .CONTROL_LOOP_REDO, loop2453_redo
  loop2453_done:
    pop_eh 
  for_undef_1056:
.annotate 'line', 1934
    .return ($P2443)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2447"  :anon :subid("242_1304459385.051") :outer("241_1304459385.051")
    .param pmc param_2449
.annotate 'line', 1937
    .lex "$_", param_2449
.annotate 'line', 1938
    find_lex $P2450, "self"
    find_lex $P2451, "$_"
    unless_null $P2451, vivify_1057
    new $P2451, "Undef"
  vivify_1057:
    $P2452 = $P2450."add-spec"($P2451)
.annotate 'line', 1937
    .return ($P2452)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("243_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2457
    .param pmc param_2458
.annotate 'line', 1941
    .lex "self", param_2457
    .lex "$x", param_2458
.annotate 'line', 1942
    new $P2459, "Integer"
    assign $P2459, 1
    find_lex $P2460, "$x"
    unless_null $P2460, vivify_1058
    new $P2460, "Undef"
  vivify_1058:
    find_lex $P2461, "self"
    find_lex $P2462, "$?CLASS"
    getattribute $P2463, $P2461, $P2462, "%!stopper"
    unless_null $P2463, vivify_1059
    $P2463 = root_new ['parrot';'Hash']
    setattribute $P2461, $P2462, "%!stopper", $P2463
  vivify_1059:
    set $P2463[$P2460], $P2459
.annotate 'line', 1941
    .return ($P2459)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("244_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2465
    .param pmc param_2466
.annotate 'line', 1945
    .lex "self", param_2465
    .lex "$s", param_2466
.annotate 'line', 1946
    find_lex $P2467, "$s"
    unless_null $P2467, vivify_1060
    new $P2467, "Undef"
  vivify_1060:
    set $S2468, $P2467
    split $P2469, "|", $S2468
.annotate 'line', 1945
    .return ($P2469)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("245_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2471
    .param pmc param_2472
.annotate 'line', 1950
    .const 'Sub' $P2509 = "246_1304459385.051" 
    capture_lex $P2509
    .lex "self", param_2471
    .lex "$s", param_2472
.annotate 'line', 1951
    new $P2473, "Undef"
    .lex "$i", $P2473
.annotate 'line', 1952
    new $P2474, "Undef"
    .lex "$type", $P2474
.annotate 'line', 1953
    $P2475 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2475
.annotate 'line', 1951
    find_lex $P2476, "$s"
    unless_null $P2476, vivify_1061
    new $P2476, "Undef"
  vivify_1061:
    set $S2477, $P2476
    index $I2478, $S2477, "="
    new $P2479, 'Integer'
    set $P2479, $I2478
    store_lex "$i", $P2479
    find_lex $P2480, "$type"
    unless_null $P2480, vivify_1062
    new $P2480, "Undef"
  vivify_1062:
    find_lex $P2481, "@options"
    unless_null $P2481, vivify_1063
    $P2481 = root_new ['parrot';'ResizablePMCArray']
  vivify_1063:
.annotate 'line', 1954
    find_lex $P2483, "$i"
    unless_null $P2483, vivify_1064
    new $P2483, "Undef"
  vivify_1064:
    set $N2484, $P2483
    islt $I2485, $N2484, 0.0
    if $I2485, if_2482
.annotate 'line', 1958
    find_lex $P2490, "$s"
    unless_null $P2490, vivify_1065
    new $P2490, "Undef"
  vivify_1065:
    set $S2491, $P2490
    find_lex $P2492, "$i"
    unless_null $P2492, vivify_1066
    new $P2492, "Undef"
  vivify_1066:
    add $P2493, $P2492, 1
    set $I2494, $P2493
    substr $S2495, $S2491, $I2494
    new $P2496, 'String'
    set $P2496, $S2495
    store_lex "$type", $P2496
.annotate 'line', 1959
    find_lex $P2497, "self"
    find_lex $P2498, "$s"
    unless_null $P2498, vivify_1067
    new $P2498, "Undef"
  vivify_1067:
    set $S2499, $P2498
    find_lex $P2500, "$i"
    unless_null $P2500, vivify_1068
    new $P2500, "Undef"
  vivify_1068:
    set $I2501, $P2500
    substr $S2502, $S2499, 0, $I2501
    $P2503 = $P2497."split-option-aliases"($S2502)
    store_lex "@options", $P2503
.annotate 'line', 1957
    goto if_2482_end
  if_2482:
.annotate 'line', 1955
    new $P2486, "String"
    assign $P2486, "b"
    store_lex "$type", $P2486
.annotate 'line', 1956
    find_lex $P2487, "self"
    find_lex $P2488, "$s"
    unless_null $P2488, vivify_1069
    new $P2488, "Undef"
  vivify_1069:
    $P2489 = $P2487."split-option-aliases"($P2488)
    store_lex "@options", $P2489
  if_2482_end:
.annotate 'line', 1961
    find_lex $P2505, "@options"
    unless_null $P2505, vivify_1070
    $P2505 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    defined $I2506, $P2505
    unless $I2506, for_undef_1071
    iter $P2504, $P2505
    new $P2517, 'ExceptionHandler'
    set_label $P2517, loop2516_handler
    $P2517."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2517
  loop2516_test:
    unless $P2504, loop2516_done
    shift $P2507, $P2504
  loop2516_redo:
    .const 'Sub' $P2509 = "246_1304459385.051" 
    capture_lex $P2509
    $P2509($P2507)
  loop2516_next:
    goto loop2516_test
  loop2516_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2518, exception, 'type'
    eq $P2518, .CONTROL_LOOP_NEXT, loop2516_next
    eq $P2518, .CONTROL_LOOP_REDO, loop2516_redo
  loop2516_done:
    pop_eh 
  for_undef_1071:
.annotate 'line', 1950
    .return ($P2504)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2508"  :anon :subid("246_1304459385.051") :outer("245_1304459385.051")
    .param pmc param_2510
.annotate 'line', 1961
    .lex "$_", param_2510
.annotate 'line', 1962
    find_lex $P2511, "$type"
    unless_null $P2511, vivify_1072
    new $P2511, "Undef"
  vivify_1072:
    find_lex $P2512, "$_"
    unless_null $P2512, vivify_1073
    new $P2512, "Undef"
  vivify_1073:
    find_lex $P2513, "self"
    find_lex $P2514, "$?CLASS"
    getattribute $P2515, $P2513, $P2514, "%!options"
    unless_null $P2515, vivify_1074
    $P2515 = root_new ['parrot';'Hash']
    setattribute $P2513, $P2514, "%!options", $P2515
  vivify_1074:
    set $P2515[$P2512], $P2511
.annotate 'line', 1961
    .return ($P2511)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("247_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2522
    .param pmc param_2523
.annotate 'line', 1967
    new $P2521, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2521, control_2520
    push_eh $P2521
    .lex "self", param_2522
    .lex "$x", param_2523
.annotate 'line', 1968
    find_lex $P2527, "$x"
    unless_null $P2527, vivify_1075
    new $P2527, "Undef"
  vivify_1075:
    set $S2528, $P2527
    iseq $I2529, $S2528, "-"
    unless $I2529, unless_2526
    new $P2525, 'Integer'
    set $P2525, $I2529
    goto unless_2526_end
  unless_2526:
    find_lex $P2530, "$x"
    unless_null $P2530, vivify_1076
    new $P2530, "Undef"
  vivify_1076:
    set $S2531, $P2530
    iseq $I2532, $S2531, "--"
    new $P2525, 'Integer'
    set $P2525, $I2532
  unless_2526_end:
    unless $P2525, if_2524_end
    new $P2533, "Exception"
    set $P2533['type'], .CONTROL_RETURN
    new $P2534, "Integer"
    assign $P2534, 0
    setattribute $P2533, 'payload', $P2534
    throw $P2533
  if_2524_end:
.annotate 'line', 1969
    find_lex $P2536, "$x"
    unless_null $P2536, vivify_1077
    new $P2536, "Undef"
  vivify_1077:
    set $S2537, $P2536
    substr $S2538, $S2537, 0, 1
    iseq $I2539, $S2538, "-"
    unless $I2539, if_2535_end
    new $P2540, "Exception"
    set $P2540['type'], .CONTROL_RETURN
    new $P2541, "Integer"
    assign $P2541, 1
    setattribute $P2540, 'payload', $P2541
    throw $P2540
  if_2535_end:
.annotate 'line', 1967
    .return (0)
  control_2520:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2542, exception, "payload"
    .return ($P2542)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("248_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2544
    .param pmc param_2545
.annotate 'line', 1973
    .lex "self", param_2544
    .lex "$x", param_2545
.annotate 'line', 1974
    new $P2546, "Undef"
    .lex "$spec", $P2546
    find_lex $P2547, "$x"
    unless_null $P2547, vivify_1078
    new $P2547, "Undef"
  vivify_1078:
    find_lex $P2548, "self"
    find_lex $P2549, "$?CLASS"
    getattribute $P2550, $P2548, $P2549, "%!options"
    unless_null $P2550, vivify_1079
    $P2550 = root_new ['parrot';'Hash']
  vivify_1079:
    set $P2551, $P2550[$P2547]
    unless_null $P2551, vivify_1080
    new $P2551, "Undef"
  vivify_1080:
    store_lex "$spec", $P2551
.annotate 'line', 1975
    find_lex $P2552, "$spec"
    unless_null $P2552, vivify_1081
    new $P2552, "Undef"
  vivify_1081:
    set $S2553, $P2552
    iseq $I2554, $S2553, "s"
.annotate 'line', 1973
    .return ($I2554)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("249_1304459385.051") :outer("238_1304459385.051")
    .param pmc param_2558
    .param pmc param_2559
.annotate 'line', 1978
    .const 'Sub' $P2650 = "252_1304459385.051" 
    capture_lex $P2650
    .const 'Sub' $P2612 = "251_1304459385.051" 
    capture_lex $P2612
    .const 'Sub' $P2563 = "250_1304459385.051" 
    capture_lex $P2563
    new $P2557, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2557, control_2556
    push_eh $P2557
    .lex "self", param_2558
    .lex "@args", param_2559
.annotate 'line', 1979
    new $P2560, "Undef"
    .lex "$i", $P2560
.annotate 'line', 1980
    new $P2561, "Undef"
    .lex "$arg-count", $P2561
.annotate 'line', 1982
    new $P2562, "Undef"
    .lex "$result", $P2562
.annotate 'line', 1986
    .const 'Sub' $P2563 = "250_1304459385.051" 
    newclosure $P2611, $P2563
    .lex "get-value", $P2611
.annotate 'line', 2001
    .const 'Sub' $P2612 = "251_1304459385.051" 
    newclosure $P2630, $P2612
    .lex "slurp-rest", $P2630
.annotate 'line', 1979
    new $P2631, "Integer"
    assign $P2631, 0
    store_lex "$i", $P2631
.annotate 'line', 1980
    find_lex $P2632, "@args"
    unless_null $P2632, vivify_1107
    $P2632 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $N2633, $P2632
    new $P2634, 'Float'
    set $P2634, $N2633
    store_lex "$arg-count", $P2634
.annotate 'line', 1982
    get_hll_global $P2635, "GLOBAL"
    nqp_get_package_through_who $P2636, $P2635, "HLL"
    nqp_get_package_through_who $P2637, $P2636, "CommandLine"
    get_who $P2638, $P2637
    set $P2639, $P2638["Result"]
    $P2640 = $P2639."new"()
    store_lex "$result", $P2640
.annotate 'line', 1983
    find_lex $P2641, "$result"
    unless_null $P2641, vivify_1108
    new $P2641, "Undef"
  vivify_1108:
    $P2641."init"()
    find_lex $P2642, "get-value"
    find_lex $P2643, "slurp-rest"
.annotate 'line', 2009
    new $P2837, 'ExceptionHandler'
    set_label $P2837, loop2836_handler
    $P2837."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2837
  loop2836_test:
    find_lex $P2644, "$i"
    unless_null $P2644, vivify_1109
    new $P2644, "Undef"
  vivify_1109:
    set $N2645, $P2644
    find_lex $P2646, "$arg-count"
    unless_null $P2646, vivify_1110
    new $P2646, "Undef"
  vivify_1110:
    set $N2647, $P2646
    islt $I2648, $N2645, $N2647
    unless $I2648, loop2836_done
  loop2836_redo:
    .const 'Sub' $P2650 = "252_1304459385.051" 
    capture_lex $P2650
    $P2650()
  loop2836_next:
    goto loop2836_test
  loop2836_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2838, exception, 'type'
    eq $P2838, .CONTROL_LOOP_NEXT, loop2836_next
    eq $P2838, .CONTROL_LOOP_REDO, loop2836_redo
  loop2836_done:
    pop_eh 
.annotate 'line', 2061
    new $P2839, "Exception"
    set $P2839['type'], .CONTROL_RETURN
    find_lex $P2840, "$result"
    unless_null $P2840, vivify_1171
    new $P2840, "Undef"
  vivify_1171:
    setattribute $P2839, 'payload', $P2840
    throw $P2839
.annotate 'line', 1978
    .return ()
  control_2556:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2841, exception, "payload"
    .return ($P2841)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("250_1304459385.051") :outer("249_1304459385.051")
    .param pmc param_2564
.annotate 'line', 1986
    .lex "$opt", param_2564
.annotate 'line', 1987
    find_lex $P2567, "$i"
    unless_null $P2567, vivify_1082
    new $P2567, "Undef"
  vivify_1082:
    set $N2568, $P2567
    find_lex $P2569, "$arg-count"
    unless_null $P2569, vivify_1083
    new $P2569, "Undef"
  vivify_1083:
    sub $P2570, $P2569, 1
    set $N2571, $P2570
    iseq $I2572, $N2568, $N2571
    if $I2572, if_2566
.annotate 'line', 1989
    find_lex $P2579, "self"
    find_lex $P2580, "$i"
    unless_null $P2580, vivify_1084
    new $P2580, "Undef"
  vivify_1084:
    add $P2581, $P2580, 1
    set $I2582, $P2581
    find_lex $P2583, "@args"
    unless_null $P2583, vivify_1085
    $P2583 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2584, $P2583[$I2582]
    unless_null $P2584, vivify_1086
    new $P2584, "Undef"
  vivify_1086:
    $P2585 = $P2579."is-option"($P2584)
    if $P2585, if_2578
.annotate 'line', 1991
    find_lex $P2592, "$i"
    unless_null $P2592, vivify_1087
    new $P2592, "Undef"
  vivify_1087:
    add $P2593, $P2592, 1
    set $I2594, $P2593
    find_lex $P2595, "@args"
    unless_null $P2595, vivify_1088
    $P2595 = root_new ['parrot';'ResizablePMCArray']
  vivify_1088:
    set $P2596, $P2595[$I2594]
    unless_null $P2596, vivify_1089
    new $P2596, "Undef"
  vivify_1089:
    find_lex $P2597, "self"
    find_lex $P2598, "$?CLASS"
    getattribute $P2599, $P2597, $P2598, "%!stopper"
    unless_null $P2599, vivify_1090
    $P2599 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P2600, $P2599[$P2596]
    unless_null $P2600, vivify_1091
    new $P2600, "Undef"
  vivify_1091:
    if $P2600, if_2591
.annotate 'line', 1993
    find_lex $P2605, "$i"
    unless_null $P2605, vivify_1092
    new $P2605, "Undef"
  vivify_1092:
    clone $P2606, $P2605
    inc $P2605
    find_lex $P2607, "$i"
    unless_null $P2607, vivify_1093
    new $P2607, "Undef"
  vivify_1093:
    set $I2608, $P2607
    find_lex $P2609, "@args"
    unless_null $P2609, vivify_1094
    $P2609 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P2610, $P2609[$I2608]
    unless_null $P2610, vivify_1095
    new $P2610, "Undef"
  vivify_1095:
    set $P2590, $P2610
.annotate 'line', 1991
    goto if_2591_end
  if_2591:
.annotate 'line', 1992
    new $P2601, 'String'
    set $P2601, "Option "
    find_lex $P2602, "$opt"
    unless_null $P2602, vivify_1096
    new $P2602, "Undef"
  vivify_1096:
    concat $P2603, $P2601, $P2602
    concat $P2604, $P2603, " needs a value, but is followed by a stopper"
    die $P2604
  if_2591_end:
.annotate 'line', 1991
    set $P2577, $P2590
.annotate 'line', 1989
    goto if_2578_end
  if_2578:
.annotate 'line', 1990
    new $P2586, 'String'
    set $P2586, "Option "
    find_lex $P2587, "$opt"
    unless_null $P2587, vivify_1097
    new $P2587, "Undef"
  vivify_1097:
    concat $P2588, $P2586, $P2587
    concat $P2589, $P2588, " needs a value, but is followed by an option"
    die $P2589
  if_2578_end:
.annotate 'line', 1989
    set $P2565, $P2577
.annotate 'line', 1987
    goto if_2566_end
  if_2566:
.annotate 'line', 1988
    new $P2573, 'String'
    set $P2573, "Option "
    find_lex $P2574, "$opt"
    unless_null $P2574, vivify_1098
    new $P2574, "Undef"
  vivify_1098:
    concat $P2575, $P2573, $P2574
    concat $P2576, $P2575, " needs a value"
    die $P2576
  if_2566_end:
.annotate 'line', 1986
    .return ($P2565)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("251_1304459385.051") :outer("249_1304459385.051")
.annotate 'line', 2001
    find_lex $P2613, "$i"
    unless_null $P2613, vivify_1099
    new $P2613, "Undef"
  vivify_1099:
    clone $P2614, $P2613
    inc $P2613
.annotate 'line', 2003
    new $P2628, 'ExceptionHandler'
    set_label $P2628, loop2627_handler
    $P2628."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2628
  loop2627_test:
    find_lex $P2615, "$i"
    unless_null $P2615, vivify_1100
    new $P2615, "Undef"
  vivify_1100:
    set $N2616, $P2615
    find_lex $P2617, "$arg-count"
    unless_null $P2617, vivify_1101
    new $P2617, "Undef"
  vivify_1101:
    set $N2618, $P2617
    islt $I2619, $N2616, $N2618
    unless $I2619, loop2627_done
  loop2627_redo:
.annotate 'line', 2004
    find_lex $P2620, "$result"
    unless_null $P2620, vivify_1102
    new $P2620, "Undef"
  vivify_1102:
    find_lex $P2621, "$i"
    unless_null $P2621, vivify_1103
    new $P2621, "Undef"
  vivify_1103:
    set $I2622, $P2621
    find_lex $P2623, "@args"
    unless_null $P2623, vivify_1104
    $P2623 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    set $P2624, $P2623[$I2622]
    unless_null $P2624, vivify_1105
    new $P2624, "Undef"
  vivify_1105:
    $P2620."add-argument"($P2624)
    find_lex $P2625, "$i"
    unless_null $P2625, vivify_1106
    new $P2625, "Undef"
  vivify_1106:
    clone $P2626, $P2625
    inc $P2625
  loop2627_next:
.annotate 'line', 2003
    goto loop2627_test
  loop2627_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2629, exception, 'type'
    eq $P2629, .CONTROL_LOOP_NEXT, loop2627_next
    eq $P2629, .CONTROL_LOOP_REDO, loop2627_redo
  loop2627_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I2619)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2649"  :anon :subid("252_1304459385.051") :outer("249_1304459385.051")
.annotate 'line', 2009
    .const 'Sub' $P2752 = "254_1304459385.051" 
    capture_lex $P2752
    .const 'Sub' $P2666 = "253_1304459385.051" 
    capture_lex $P2666
.annotate 'line', 2010
    new $P2651, "Undef"
    .lex "$cur", $P2651
    find_lex $P2652, "$i"
    unless_null $P2652, vivify_1111
    new $P2652, "Undef"
  vivify_1111:
    set $I2653, $P2652
    find_lex $P2654, "@args"
    unless_null $P2654, vivify_1112
    $P2654 = root_new ['parrot';'ResizablePMCArray']
  vivify_1112:
    set $P2655, $P2654[$I2653]
    unless_null $P2655, vivify_1113
    new $P2655, "Undef"
  vivify_1113:
    store_lex "$cur", $P2655
.annotate 'line', 2011
    find_lex $P2657, "self"
    find_lex $P2658, "$cur"
    unless_null $P2658, vivify_1114
    new $P2658, "Undef"
  vivify_1114:
    $P2659 = $P2657."is-option"($P2658)
    if $P2659, if_2656
.annotate 'line', 2053
    find_lex $P2823, "$cur"
    unless_null $P2823, vivify_1115
    new $P2823, "Undef"
  vivify_1115:
    find_lex $P2824, "self"
    find_lex $P2825, "$?CLASS"
    getattribute $P2826, $P2824, $P2825, "%!stopper"
    unless_null $P2826, vivify_1116
    $P2826 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P2827, $P2826[$P2823]
    unless_null $P2827, vivify_1117
    new $P2827, "Undef"
  vivify_1117:
    if $P2827, if_2822
.annotate 'line', 2056
    find_lex $P2828, "$result"
    unless_null $P2828, vivify_1118
    new $P2828, "Undef"
  vivify_1118:
    find_lex $P2829, "$cur"
    unless_null $P2829, vivify_1119
    new $P2829, "Undef"
  vivify_1119:
    $P2828."add-argument"($P2829)
.annotate 'line', 2057
    find_lex $P2831, "self"
    find_lex $P2832, "$?CLASS"
    getattribute $P2833, $P2831, $P2832, "$!stop-after-first-arg"
    unless_null $P2833, vivify_1120
    new $P2833, "Undef"
  vivify_1120:
    unless $P2833, if_2830_end
    "slurp-rest"()
  if_2830_end:
.annotate 'line', 2055
    goto if_2822_end
  if_2822:
.annotate 'line', 2054
    "slurp-rest"()
  if_2822_end:
.annotate 'line', 2053
    goto if_2656_end
  if_2656:
.annotate 'line', 2012
    find_lex $P2661, "$cur"
    unless_null $P2661, vivify_1121
    new $P2661, "Undef"
  vivify_1121:
    set $S2662, $P2661
    substr $S2663, $S2662, 0, 2
    iseq $I2664, $S2663, "--"
    if $I2664, if_2660
.annotate 'line', 2031
    .const 'Sub' $P2752 = "254_1304459385.051" 
    capture_lex $P2752
    $P2752()
    goto if_2660_end
  if_2660:
.annotate 'line', 2012
    .const 'Sub' $P2666 = "253_1304459385.051" 
    capture_lex $P2666
    $P2666()
  if_2660_end:
  if_2656_end:
.annotate 'line', 2011
    find_lex $P2834, "$i"
    unless_null $P2834, vivify_1170
    new $P2834, "Undef"
  vivify_1170:
    clone $P2835, $P2834
    inc $P2834
.annotate 'line', 2009
    .return ($P2835)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2751"  :anon :subid("254_1304459385.051") :outer("252_1304459385.051")
.annotate 'line', 2031
    .const 'Sub' $P2797 = "255_1304459385.051" 
    capture_lex $P2797
.annotate 'line', 2032
    new $P2753, "Undef"
    .lex "$opt", $P2753
    find_lex $P2754, "$cur"
    unless_null $P2754, vivify_1122
    new $P2754, "Undef"
  vivify_1122:
    set $S2755, $P2754
    substr $S2756, $S2755, 1
    new $P2757, 'String'
    set $P2757, $S2756
    store_lex "$opt", $P2757
.annotate 'line', 2033
    find_lex $P2760, "$opt"
    unless_null $P2760, vivify_1123
    new $P2760, "Undef"
  vivify_1123:
    set $S2761, $P2760
    length $I2762, $S2761
    set $N2763, $I2762
    iseq $I2764, $N2763, 1.0
    if $I2764, if_2759
.annotate 'line', 2043
    .const 'Sub' $P2797 = "255_1304459385.051" 
    capture_lex $P2797
    $P2821 = $P2797()
    set $P2758, $P2821
.annotate 'line', 2033
    goto if_2759_end
  if_2759:
.annotate 'line', 2035
    find_lex $P2766, "$opt"
    unless_null $P2766, vivify_1131
    new $P2766, "Undef"
  vivify_1131:
    find_lex $P2767, "self"
    find_lex $P2768, "$?CLASS"
    getattribute $P2769, $P2767, $P2768, "%!options"
    unless_null $P2769, vivify_1132
    $P2769 = root_new ['parrot';'Hash']
  vivify_1132:
    set $P2770, $P2769[$P2766]
    unless_null $P2770, vivify_1133
    new $P2770, "Undef"
  vivify_1133:
    if $P2770, unless_2765_end
    new $P2771, 'String'
    set $P2771, "No such option -"
    find_lex $P2772, "$opt"
    unless_null $P2772, vivify_1134
    new $P2772, "Undef"
  vivify_1134:
    concat $P2773, $P2771, $P2772
    die $P2773
  unless_2765_end:
.annotate 'line', 2036
    find_lex $P2775, "self"
    find_lex $P2776, "$opt"
    unless_null $P2776, vivify_1135
    new $P2776, "Undef"
  vivify_1135:
    $P2777 = $P2775."wants-value"($P2776)
    if $P2777, if_2774
.annotate 'line', 2040
    find_lex $P2784, "$result"
    unless_null $P2784, vivify_1136
    new $P2784, "Undef"
  vivify_1136:
    find_lex $P2785, "$opt"
    unless_null $P2785, vivify_1137
    new $P2785, "Undef"
  vivify_1137:
    $P2784."add-option"($P2785, 1)
.annotate 'line', 2039
    goto if_2774_end
  if_2774:
.annotate 'line', 2037
    find_lex $P2778, "$result"
    unless_null $P2778, vivify_1138
    new $P2778, "Undef"
  vivify_1138:
    find_lex $P2779, "$opt"
    unless_null $P2779, vivify_1139
    new $P2779, "Undef"
  vivify_1139:
.annotate 'line', 2038
    new $P2780, 'String'
    set $P2780, "-"
    find_lex $P2781, "$opt"
    unless_null $P2781, vivify_1140
    new $P2781, "Undef"
  vivify_1140:
    concat $P2782, $P2780, $P2781
    $P2783 = "get-value"($P2782)
    $P2778."add-option"($P2779, $P2783)
  if_2774_end:
.annotate 'line', 2042
    new $P2788, 'String'
    set $P2788, "-"
    find_lex $P2789, "$opt"
    unless_null $P2789, vivify_1141
    new $P2789, "Undef"
  vivify_1141:
    concat $P2790, $P2788, $P2789
    find_lex $P2791, "self"
    find_lex $P2792, "$?CLASS"
    getattribute $P2793, $P2791, $P2792, "%!stopper"
    unless_null $P2793, vivify_1142
    $P2793 = root_new ['parrot';'Hash']
  vivify_1142:
    set $P2794, $P2793[$P2790]
    unless_null $P2794, vivify_1143
    new $P2794, "Undef"
  vivify_1143:
    if $P2794, if_2787
    set $P2786, $P2794
    goto if_2787_end
  if_2787:
    $P2795 = "slurp-rest"()
    set $P2786, $P2795
  if_2787_end:
.annotate 'line', 2033
    set $P2758, $P2786
  if_2759_end:
.annotate 'line', 2031
    .return ($P2758)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2796"  :anon :subid("255_1304459385.051") :outer("254_1304459385.051")
.annotate 'line', 2043
    .const 'Sub' $P2803 = "256_1304459385.051" 
    capture_lex $P2803
.annotate 'line', 2045
    new $P2798, "Undef"
    .lex "$iter", $P2798
    find_lex $P2799, "$opt"
    unless_null $P2799, vivify_1124
    new $P2799, "Undef"
  vivify_1124:
    iter $P2800, $P2799
    store_lex "$iter", $P2800
.annotate 'line', 2046
    new $P2819, 'ExceptionHandler'
    set_label $P2819, loop2818_handler
    $P2819."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2819
  loop2818_test:
    find_lex $P2801, "$iter"
    unless_null $P2801, vivify_1125
    new $P2801, "Undef"
  vivify_1125:
    unless $P2801, loop2818_done
  loop2818_redo:
    .const 'Sub' $P2803 = "256_1304459385.051" 
    capture_lex $P2803
    $P2803()
  loop2818_next:
    goto loop2818_test
  loop2818_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2820, exception, 'type'
    eq $P2820, .CONTROL_LOOP_NEXT, loop2818_next
    eq $P2820, .CONTROL_LOOP_REDO, loop2818_redo
  loop2818_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P2801)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2802"  :anon :subid("256_1304459385.051") :outer("255_1304459385.051")
.annotate 'line', 2047
    new $P2804, "Undef"
    .lex "$o", $P2804
    find_lex $P2805, "$iter"
    unless_null $P2805, vivify_1126
    new $P2805, "Undef"
  vivify_1126:
    shift $P2806, $P2805
    store_lex "$o", $P2806
.annotate 'line', 2048
    find_lex $P2808, "self"
    find_lex $P2809, "$o"
    unless_null $P2809, vivify_1127
    new $P2809, "Undef"
  vivify_1127:
    $P2810 = $P2808."wants-value"($P2809)
    unless $P2810, if_2807_end
    new $P2811, 'String'
    set $P2811, "Option -"
    find_lex $P2812, "$o"
    unless_null $P2812, vivify_1128
    new $P2812, "Undef"
  vivify_1128:
    concat $P2813, $P2811, $P2812
    concat $P2814, $P2813, " requires a value and cannot be grouped"
    die $P2814
  if_2807_end:
.annotate 'line', 2049
    find_lex $P2815, "$result"
    unless_null $P2815, vivify_1129
    new $P2815, "Undef"
  vivify_1129:
    find_lex $P2816, "$o"
    unless_null $P2816, vivify_1130
    new $P2816, "Undef"
  vivify_1130:
    $P2817 = $P2815."add-option"($P2816, 1)
.annotate 'line', 2046
    .return ($P2817)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2665"  :anon :subid("253_1304459385.051") :outer("252_1304459385.051")
.annotate 'line', 2014
    new $P2667, "Undef"
    .lex "$opt", $P2667
.annotate 'line', 2015
    new $P2668, "Undef"
    .lex "$idx", $P2668
.annotate 'line', 2016
    new $P2669, "Undef"
    .lex "$value", $P2669
.annotate 'line', 2017
    new $P2670, "Undef"
    .lex "$has-value", $P2670
.annotate 'line', 2014
    find_lex $P2671, "$i"
    unless_null $P2671, vivify_1144
    new $P2671, "Undef"
  vivify_1144:
    set $I2672, $P2671
    find_lex $P2673, "@args"
    unless_null $P2673, vivify_1145
    $P2673 = root_new ['parrot';'ResizablePMCArray']
  vivify_1145:
    set $P2674, $P2673[$I2672]
    unless_null $P2674, vivify_1146
    new $P2674, "Undef"
  vivify_1146:
    set $S2675, $P2674
    substr $S2676, $S2675, 2
    new $P2677, 'String'
    set $P2677, $S2676
    store_lex "$opt", $P2677
.annotate 'line', 2015
    find_lex $P2678, "$opt"
    unless_null $P2678, vivify_1147
    new $P2678, "Undef"
  vivify_1147:
    set $S2679, $P2678
    index $I2680, $S2679, "="
    new $P2681, 'Integer'
    set $P2681, $I2680
    store_lex "$idx", $P2681
.annotate 'line', 2016
    new $P2682, "Integer"
    assign $P2682, 1
    store_lex "$value", $P2682
.annotate 'line', 2017
    new $P2683, "Integer"
    assign $P2683, 0
    store_lex "$has-value", $P2683
.annotate 'line', 2019
    find_lex $P2685, "$idx"
    unless_null $P2685, vivify_1148
    new $P2685, "Undef"
  vivify_1148:
    set $N2686, $P2685
    isge $I2687, $N2686, 0.0
    unless $I2687, if_2684_end
.annotate 'line', 2020
    find_lex $P2688, "$opt"
    unless_null $P2688, vivify_1149
    new $P2688, "Undef"
  vivify_1149:
    set $S2689, $P2688
    find_lex $P2690, "$idx"
    unless_null $P2690, vivify_1150
    new $P2690, "Undef"
  vivify_1150:
    add $P2691, $P2690, 1
    set $I2692, $P2691
    substr $S2693, $S2689, $I2692
    new $P2694, 'String'
    set $P2694, $S2693
    store_lex "$value", $P2694
.annotate 'line', 2021
    find_lex $P2695, "$opt"
    unless_null $P2695, vivify_1151
    new $P2695, "Undef"
  vivify_1151:
    set $S2696, $P2695
    find_lex $P2697, "$idx"
    unless_null $P2697, vivify_1152
    new $P2697, "Undef"
  vivify_1152:
    set $I2698, $P2697
    substr $S2699, $S2696, 0, $I2698
    new $P2700, 'String'
    set $P2700, $S2699
    store_lex "$opt", $P2700
.annotate 'line', 2022
    new $P2701, "Integer"
    assign $P2701, 1
    store_lex "$has-value", $P2701
  if_2684_end:
.annotate 'line', 2024
    find_lex $P2706, "$opt"
    unless_null $P2706, vivify_1153
    new $P2706, "Undef"
  vivify_1153:
    find_lex $P2703, "self"
    find_lex $P2704, "$?CLASS"
    getattribute $P2705, $P2703, $P2704, "%!options"
    unless_null $P2705, vivify_1154
    $P2705 = root_new ['parrot';'Hash']
  vivify_1154:
    exists $I2707, $P2705[$P2706]
    if $I2707, unless_2702_end
    new $P2708, 'String'
    set $P2708, "Illegal option --"
    find_lex $P2709, "$opt"
    unless_null $P2709, vivify_1155
    new $P2709, "Undef"
  vivify_1155:
    concat $P2710, $P2708, $P2709
    die $P2710
  unless_2702_end:
.annotate 'line', 2025
    find_lex $P2714, "$opt"
    unless_null $P2714, vivify_1156
    new $P2714, "Undef"
  vivify_1156:
    find_lex $P2715, "self"
    find_lex $P2716, "$?CLASS"
    getattribute $P2717, $P2715, $P2716, "%!options"
    unless_null $P2717, vivify_1157
    $P2717 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P2718, $P2717[$P2714]
    unless_null $P2718, vivify_1158
    new $P2718, "Undef"
  vivify_1158:
    set $S2719, $P2718
    isne $I2720, $S2719, "s"
    if $I2720, if_2713
    new $P2712, 'Integer'
    set $P2712, $I2720
    goto if_2713_end
  if_2713:
    find_lex $P2721, "$has-value"
    unless_null $P2721, vivify_1159
    new $P2721, "Undef"
  vivify_1159:
    set $P2712, $P2721
  if_2713_end:
    unless $P2712, if_2711_end
    new $P2722, 'String'
    set $P2722, "Option --"
    find_lex $P2723, "$opt"
    unless_null $P2723, vivify_1160
    new $P2723, "Undef"
  vivify_1160:
    concat $P2724, $P2722, $P2723
    concat $P2725, $P2724, " does not allow a value"
    die $P2725
  if_2711_end:
.annotate 'line', 2026
    find_lex $P2729, "$has-value"
    unless_null $P2729, vivify_1161
    new $P2729, "Undef"
  vivify_1161:
    isfalse $I2730, $P2729
    if $I2730, if_2728
    new $P2727, 'Integer'
    set $P2727, $I2730
    goto if_2728_end
  if_2728:
    find_lex $P2731, "self"
    find_lex $P2732, "$opt"
    unless_null $P2732, vivify_1162
    new $P2732, "Undef"
  vivify_1162:
    $P2733 = $P2731."wants-value"($P2732)
    set $P2727, $P2733
  if_2728_end:
    unless $P2727, if_2726_end
.annotate 'line', 2027
    new $P2734, 'String'
    set $P2734, "--"
    find_lex $P2735, "$opt"
    unless_null $P2735, vivify_1163
    new $P2735, "Undef"
  vivify_1163:
    concat $P2736, $P2734, $P2735
    $P2737 = "get-value"($P2736)
    store_lex "$value", $P2737
  if_2726_end:
.annotate 'line', 2029
    find_lex $P2738, "$result"
    unless_null $P2738, vivify_1164
    new $P2738, "Undef"
  vivify_1164:
    find_lex $P2739, "$opt"
    unless_null $P2739, vivify_1165
    new $P2739, "Undef"
  vivify_1165:
    find_lex $P2740, "$value"
    unless_null $P2740, vivify_1166
    new $P2740, "Undef"
  vivify_1166:
    $P2738."add-option"($P2739, $P2740)
.annotate 'line', 2030
    new $P2743, 'String'
    set $P2743, "--"
    find_lex $P2744, "$opt"
    unless_null $P2744, vivify_1167
    new $P2744, "Undef"
  vivify_1167:
    concat $P2745, $P2743, $P2744
    find_lex $P2746, "self"
    find_lex $P2747, "$?CLASS"
    getattribute $P2748, $P2746, $P2747, "%!stopper"
    unless_null $P2748, vivify_1168
    $P2748 = root_new ['parrot';'Hash']
  vivify_1168:
    set $P2749, $P2748[$P2745]
    unless_null $P2749, vivify_1169
    new $P2749, "Undef"
  vivify_1169:
    if $P2749, if_2742
    set $P2741, $P2749
    goto if_2742_end
  if_2742:
    find_lex $P2750, "slurp-rest"
    set $P2741, $P2750
  if_2742_end:
.annotate 'line', 2012
    .return ($P2741)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2843"  :subid("257_1304459385.051") :outer("10_1304459385.051")
.annotate 'line', 2096
    .const 'Sub' $P3838 = "296_1304459385.051" 
    capture_lex $P3838
    .const 'Sub' $P3833 = "295_1304459385.051" 
    capture_lex $P3833
    .const 'Sub' $P3809 = "294_1304459385.051" 
    capture_lex $P3809
    .const 'Sub' $P3776 = "293_1304459385.051" 
    capture_lex $P3776
    .const 'Sub' $P3661 = "288_1304459385.051" 
    capture_lex $P3661
    .const 'Sub' $P3614 = "287_1304459385.051" 
    capture_lex $P3614
    .const 'Sub' $P3503 = "285_1304459385.051" 
    capture_lex $P3503
    .const 'Sub' $P3499 = "284_1304459385.051" 
    capture_lex $P3499
    .const 'Sub' $P3413 = "281_1304459385.051" 
    capture_lex $P3413
    .const 'Sub' $P3336 = "280_1304459385.051" 
    capture_lex $P3336
    .const 'Sub' $P3300 = "279_1304459385.051" 
    capture_lex $P3300
    .const 'Sub' $P3237 = "278_1304459385.051" 
    capture_lex $P3237
    .const 'Sub' $P3161 = "275_1304459385.051" 
    capture_lex $P3161
    .const 'Sub' $P3120 = "274_1304459385.051" 
    capture_lex $P3120
    .const 'Sub' $P3062 = "272_1304459385.051" 
    capture_lex $P3062
    .const 'Sub' $P3024 = "271_1304459385.051" 
    capture_lex $P3024
    .const 'Sub' $P3010 = "270_1304459385.051" 
    capture_lex $P3010
    .const 'Sub' $P2989 = "269_1304459385.051" 
    capture_lex $P2989
    .const 'Sub' $P2964 = "268_1304459385.051" 
    capture_lex $P2964
    .const 'Sub' $P2950 = "267_1304459385.051" 
    capture_lex $P2950
    .const 'Sub' $P2932 = "266_1304459385.051" 
    capture_lex $P2932
    .const 'Sub' $P2912 = "265_1304459385.051" 
    capture_lex $P2912
    .const 'Sub' $P2898 = "264_1304459385.051" 
    capture_lex $P2898
    .const 'Sub' $P2880 = "263_1304459385.051" 
    capture_lex $P2880
    .const 'Sub' $P2871 = "262_1304459385.051" 
    capture_lex $P2871
    .const 'Sub' $P2856 = "259_1304459385.051" 
    capture_lex $P2856
    .const 'Sub' $P2846 = "258_1304459385.051" 
    capture_lex $P2846
    .lex "Event", $P2845
.annotate 'line', 2117
    .const 'Sub' $P2846 = "258_1304459385.051" 
    newclosure $P2850, $P2846
    .lex "addr", $P2850
.annotate 'line', 2224
    new $P2851, "Undef"
    .lex "$loader", $P2851
.annotate 'line', 2420
    new $P2852, "Undef"
    .lex "$stub_code", $P2852
    .lex "$?PACKAGE", $P2853
    .lex "$?CLASS", $P2854
.annotate 'line', 2098
    .const 'Sub' $P2856 = "259_1304459385.051" 
    capture_lex $P2856
    $P2856()
    find_lex $P2870, "addr"
.annotate 'line', 2224
    get_hll_global $P3061, "ModuleLoader"
    store_lex "$loader", $P3061
.annotate 'line', 2420
    .const 'Sub' $P3499 = "284_1304459385.051" 
    newclosure $P3502, $P3499
    store_lex "$stub_code", $P3502
.annotate 'line', 2600
    .const 'Sub' $P3838 = "296_1304459385.051" 
    newclosure $P3950, $P3838
.annotate 'line', 2096
    .return ($P3950)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("258_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2847
.annotate 'line', 2117
    .lex "$obj", param_2847
.annotate 'line', 2118
    find_lex $P2848, "$obj"
    unless_null $P2848, vivify_1172
    new $P2848, "Undef"
  vivify_1172:
    get_addr $I2849, $P2848
.annotate 'line', 2117
    .return ($I2849)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2855"  :anon :subid("259_1304459385.051") :outer("257_1304459385.051")
.annotate 'line', 2098
    .const 'Sub' $P2864 = "261_1304459385.051" 
    capture_lex $P2864
    .const 'Sub' $P2859 = "260_1304459385.051" 
    capture_lex $P2859
    .lex "$?PACKAGE", $P2857
    .lex "$?CLASS", $P2858
.annotate 'line', 2105
    .const 'Sub' $P2864 = "261_1304459385.051" 
    newclosure $P2869, $P2864
.annotate 'line', 2098
    .return ($P2869)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("260_1304459385.051") :outer("259_1304459385.051")
    .param pmc param_2860
.annotate 'line', 2101
    .lex "self", param_2860
    find_lex $P2861, "self"
    find_lex $P2862, "$?CLASS"
    getattribute $P2863, $P2861, $P2862, "$!deserialize_past"
    unless_null $P2863, vivify_1173
    new $P2863, "Undef"
  vivify_1173:
    .return ($P2863)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("261_1304459385.051") :outer("259_1304459385.051")
    .param pmc param_2865
.annotate 'line', 2105
    .lex "self", param_2865
    find_lex $P2866, "self"
    find_lex $P2867, "$?CLASS"
    getattribute $P2868, $P2866, $P2867, "$!fixup_past"
    unless_null $P2868, vivify_1174
    new $P2868, "Undef"
  vivify_1174:
    .return ($P2868)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("262_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2872
    .param pmc param_2873 :named("handle")
.annotate 'line', 2125
    .lex "self", param_2872
    .lex "$handle", param_2873
.annotate 'line', 2126
    new $P2874, "Undef"
    .lex "$obj", $P2874
    find_lex $P2875, "self"
    $P2876 = $P2875."CREATE"()
    store_lex "$obj", $P2876
.annotate 'line', 2127
    find_lex $P2877, "$obj"
    unless_null $P2877, vivify_1175
    new $P2877, "Undef"
  vivify_1175:
    find_lex $P2878, "$handle"
    unless_null $P2878, vivify_1176
    new $P2878, "Undef"
  vivify_1176:
    $P2877."BUILD"($P2878 :named("handle"))
    find_lex $P2879, "$obj"
    unless_null $P2879, vivify_1177
    new $P2879, "Undef"
  vivify_1177:
.annotate 'line', 2125
    .return ($P2879)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("263_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2881
    .param pmc param_2882 :optional :named("handle")
    .param int has_param_2882 :opt_flag
.annotate 'line', 2131
    .lex "self", param_2881
    if has_param_2882, optparam_1178
    new $P2883, "Undef"
    set param_2882, $P2883
  optparam_1178:
    .lex "$handle", param_2882
.annotate 'line', 2132
    find_lex $P2884, "$handle"
    unless_null $P2884, vivify_1179
    new $P2884, "Undef"
  vivify_1179:
    set $S2885, $P2884
    nqp_create_sc $P2886, $S2885
    find_lex $P2887, "self"
    find_lex $P2888, "$?CLASS"
    setattribute $P2887, $P2888, "$!sc", $P2886
.annotate 'line', 2133
    find_lex $P2889, "$handle"
    unless_null $P2889, vivify_1180
    new $P2889, "Undef"
  vivify_1180:
    find_lex $P2890, "self"
    find_lex $P2891, "$?CLASS"
    setattribute $P2890, $P2891, "$!handle", $P2889
.annotate 'line', 2134
    new $P2892, "Hash"
    find_lex $P2893, "self"
    find_lex $P2894, "$?CLASS"
    setattribute $P2893, $P2894, "%!addr_to_slot", $P2892
.annotate 'line', 2135
    new $P2895, "ResizablePMCArray"
    find_lex $P2896, "self"
    find_lex $P2897, "$?CLASS"
    setattribute $P2896, $P2897, "@!event_stream", $P2895
.annotate 'line', 2131
    .return ($P2895)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("264_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2899
    .param pmc param_2900
.annotate 'line', 2139
    .lex "self", param_2899
    .lex "$obj", param_2900
.annotate 'line', 2140
    new $P2901, "Undef"
    .lex "$slot", $P2901
    find_lex $P2902, "$obj"
    unless_null $P2902, vivify_1181
    new $P2902, "Undef"
  vivify_1181:
    $P2903 = "addr"($P2902)
    find_lex $P2904, "self"
    find_lex $P2905, "$?CLASS"
    getattribute $P2906, $P2904, $P2905, "%!addr_to_slot"
    unless_null $P2906, vivify_1182
    $P2906 = root_new ['parrot';'Hash']
  vivify_1182:
    set $P2907, $P2906[$P2903]
    unless_null $P2907, vivify_1183
    new $P2907, "Undef"
  vivify_1183:
    store_lex "$slot", $P2907
.annotate 'line', 2141
    find_lex $P2909, "$slot"
    unless_null $P2909, vivify_1184
    new $P2909, "Undef"
  vivify_1184:
    defined $I2910, $P2909
    if $I2910, unless_2908_end
.annotate 'line', 2142
    die "slot_for_object called on object not in context"
  unless_2908_end:
.annotate 'line', 2141
    find_lex $P2911, "$slot"
    unless_null $P2911, vivify_1185
    new $P2911, "Undef"
  vivify_1185:
.annotate 'line', 2139
    .return ($P2911)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("265_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2915
    .param pmc param_2916
.annotate 'line', 2151
    new $P2914, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2914, control_2913
    push_eh $P2914
    .lex "self", param_2915
    .lex "$obj", param_2916
.annotate 'line', 2152
    new $P2917, "Undef"
    .lex "$slot", $P2917
    find_lex $P2918, "self"
    find_lex $P2919, "$obj"
    unless_null $P2919, vivify_1186
    new $P2919, "Undef"
  vivify_1186:
    $P2920 = $P2918."slot_for_object"($P2919)
    store_lex "$slot", $P2920
.annotate 'line', 2153
    new $P2921, "Exception"
    set $P2921['type'], .CONTROL_RETURN
    get_hll_global $P2922, "GLOBAL"
    nqp_get_package_through_who $P2923, $P2922, "PAST"
    get_who $P2924, $P2923
    set $P2925, $P2924["Op"]
    find_lex $P2926, "self"
    find_lex $P2927, "$?CLASS"
    getattribute $P2928, $P2926, $P2927, "$!handle"
    unless_null $P2928, vivify_1187
    new $P2928, "Undef"
  vivify_1187:
    find_lex $P2929, "$slot"
    unless_null $P2929, vivify_1188
    new $P2929, "Undef"
  vivify_1188:
    $P2930 = $P2925."new"($P2928, $P2929, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P2921, 'payload', $P2930
    throw $P2921
.annotate 'line', 2151
    .return ()
  control_2913:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2931, exception, "payload"
    .return ($P2931)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("266_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2935
    .param pmc param_2936
    .param pmc param_2937
.annotate 'line', 2157
    new $P2934, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2934, control_2933
    push_eh $P2934
    .lex "self", param_2935
    .lex "$slot", param_2936
    .lex "$past_to_set", param_2937
.annotate 'line', 2158
    new $P2938, "Exception"
    set $P2938['type'], .CONTROL_RETURN
    get_hll_global $P2939, "GLOBAL"
    nqp_get_package_through_who $P2940, $P2939, "PAST"
    get_who $P2941, $P2940
    set $P2942, $P2941["Op"]
    find_lex $P2943, "self"
    find_lex $P2944, "$?CLASS"
    getattribute $P2945, $P2943, $P2944, "$!handle"
    unless_null $P2945, vivify_1189
    new $P2945, "Undef"
  vivify_1189:
    find_lex $P2946, "$slot"
    unless_null $P2946, vivify_1190
    new $P2946, "Undef"
  vivify_1190:
    find_lex $P2947, "$past_to_set"
    unless_null $P2947, vivify_1191
    new $P2947, "Undef"
  vivify_1191:
    $P2948 = $P2942."new"($P2945, $P2946, $P2947, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P2938, 'payload', $P2948
    throw $P2938
.annotate 'line', 2157
    .return ()
  control_2933:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2949, exception, "payload"
    .return ($P2949)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("267_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2951
    .param pmc param_2952
.annotate 'line', 2164
    .lex "self", param_2951
    .lex "$to_wrap", param_2952
.annotate 'line', 2165
    get_hll_global $P2953, "GLOBAL"
    nqp_get_package_through_who $P2954, $P2953, "PAST"
    get_who $P2955, $P2954
    set $P2956, $P2955["Op"]
    find_lex $P2957, "$to_wrap"
    unless_null $P2957, vivify_1192
    new $P2957, "Undef"
  vivify_1192:
.annotate 'line', 2168
    get_hll_global $P2958, "GLOBAL"
    nqp_get_package_through_who $P2959, $P2958, "PAST"
    get_who $P2960, $P2959
    set $P2961, $P2960["Var"]
    $P2962 = $P2961."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P2963 = $P2956."new"($P2957, $P2962, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2164
    .return ($P2963)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("268_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2965
    .param pmc param_2966
.annotate 'line', 2173
    .lex "self", param_2965
    .lex "$obj", param_2966
.annotate 'line', 2175
    new $P2967, "Undef"
    .lex "$idx", $P2967
.annotate 'line', 2174
    find_lex $P2968, "$obj"
    unless_null $P2968, vivify_1193
    new $P2968, "Undef"
  vivify_1193:
    find_lex $P2969, "self"
    find_lex $P2970, "$?CLASS"
    getattribute $P2971, $P2969, $P2970, "$!sc"
    unless_null $P2971, vivify_1194
    new $P2971, "Undef"
  vivify_1194:
    nqp_set_sc_for_object $P2968, $P2971
.annotate 'line', 2175
    find_lex $P2972, "self"
    find_lex $P2973, "$?CLASS"
    getattribute $P2974, $P2972, $P2973, "$!sc"
    unless_null $P2974, vivify_1195
    new $P2974, "Undef"
  vivify_1195:
    $P2975 = $P2974."elems"()
    store_lex "$idx", $P2975
.annotate 'line', 2176
    find_lex $P2976, "$obj"
    unless_null $P2976, vivify_1196
    new $P2976, "Undef"
  vivify_1196:
    find_lex $P2977, "$idx"
    unless_null $P2977, vivify_1197
    new $P2977, "Undef"
  vivify_1197:
    set $I2978, $P2977
    find_lex $P2979, "self"
    find_lex $P2980, "$?CLASS"
    getattribute $P2981, $P2979, $P2980, "$!sc"
    unless_null $P2981, vivify_1198
    $P2981 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P2979, $P2980, "$!sc", $P2981
  vivify_1198:
    set $P2981[$I2978], $P2976
.annotate 'line', 2177
    find_lex $P2982, "$idx"
    unless_null $P2982, vivify_1199
    new $P2982, "Undef"
  vivify_1199:
    find_lex $P2983, "$obj"
    unless_null $P2983, vivify_1200
    new $P2983, "Undef"
  vivify_1200:
    $P2984 = "addr"($P2983)
    find_lex $P2985, "self"
    find_lex $P2986, "$?CLASS"
    getattribute $P2987, $P2985, $P2986, "%!addr_to_slot"
    unless_null $P2987, vivify_1201
    $P2987 = root_new ['parrot';'Hash']
    setattribute $P2985, $P2986, "%!addr_to_slot", $P2987
  vivify_1201:
    set $P2987[$P2984], $P2982
    find_lex $P2988, "$idx"
    unless_null $P2988, vivify_1202
    new $P2988, "Undef"
  vivify_1202:
.annotate 'line', 2173
    .return ($P2988)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code"  :subid("269_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_2990
    .param pmc param_2991
.annotate 'line', 2182
    .lex "self", param_2990
    .lex "$obj", param_2991
.annotate 'line', 2183
    new $P2992, "Undef"
    .lex "$idx", $P2992
    find_lex $P2993, "self"
    find_lex $P2994, "$?CLASS"
    getattribute $P2995, $P2993, $P2994, "$!sc"
    unless_null $P2995, vivify_1203
    new $P2995, "Undef"
  vivify_1203:
    $P2996 = $P2995."elems"()
    store_lex "$idx", $P2996
.annotate 'line', 2184
    find_lex $P2997, "$obj"
    unless_null $P2997, vivify_1204
    new $P2997, "Undef"
  vivify_1204:
    find_lex $P2998, "$idx"
    unless_null $P2998, vivify_1205
    new $P2998, "Undef"
  vivify_1205:
    set $I2999, $P2998
    find_lex $P3000, "self"
    find_lex $P3001, "$?CLASS"
    getattribute $P3002, $P3000, $P3001, "$!sc"
    unless_null $P3002, vivify_1206
    $P3002 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3000, $P3001, "$!sc", $P3002
  vivify_1206:
    set $P3002[$I2999], $P2997
.annotate 'line', 2185
    find_lex $P3003, "$idx"
    unless_null $P3003, vivify_1207
    new $P3003, "Undef"
  vivify_1207:
    find_lex $P3004, "$obj"
    unless_null $P3004, vivify_1208
    new $P3004, "Undef"
  vivify_1208:
    $P3005 = "addr"($P3004)
    find_lex $P3006, "self"
    find_lex $P3007, "$?CLASS"
    getattribute $P3008, $P3006, $P3007, "%!addr_to_slot"
    unless_null $P3008, vivify_1209
    $P3008 = root_new ['parrot';'Hash']
    setattribute $P3006, $P3007, "%!addr_to_slot", $P3008
  vivify_1209:
    set $P3008[$P3005], $P3003
    find_lex $P3009, "$idx"
    unless_null $P3009, vivify_1210
    new $P3009, "Undef"
  vivify_1210:
.annotate 'line', 2182
    .return ($P3009)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("270_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3011
    .param pmc param_3012 :optional :named("deserialize_past")
    .param int has_param_3012 :opt_flag
    .param pmc param_3014 :optional :named("fixup_past")
    .param int has_param_3014 :opt_flag
.annotate 'line', 2190
    .lex "self", param_3011
    if has_param_3012, optparam_1211
    new $P3013, "Undef"
    set param_3012, $P3013
  optparam_1211:
    .lex "$deserialize_past", param_3012
    if has_param_3014, optparam_1212
    new $P3015, "Undef"
    set param_3014, $P3015
  optparam_1212:
    .lex "$fixup_past", param_3014
.annotate 'line', 2191
    find_lex $P3016, "self"
    find_lex $P3017, "$?CLASS"
    getattribute $P3018, $P3016, $P3017, "@!event_stream"
    unless_null $P3018, vivify_1213
    $P3018 = root_new ['parrot';'ResizablePMCArray']
  vivify_1213:
    find_lex $P3019, "Event"
    find_lex $P3020, "$deserialize_past"
    unless_null $P3020, vivify_1214
    new $P3020, "Undef"
  vivify_1214:
    find_lex $P3021, "$fixup_past"
    unless_null $P3021, vivify_1215
    new $P3021, "Undef"
  vivify_1215:
    $P3022 = $P3019."new"($P3020 :named("deserialize_past"), $P3021 :named("fixup_past"))
    $P3023 = $P3018."push"($P3022)
.annotate 'line', 2190
    .return ($P3023)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("271_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3025
    .param pmc param_3026
.annotate 'line', 2198
    .lex "self", param_3025
    .lex "$obj", param_3026
.annotate 'line', 2201
    new $P3027, "Undef"
    .lex "$sc", $P3027
    find_lex $P3028, "$obj"
    unless_null $P3028, vivify_1216
    new $P3028, "Undef"
  vivify_1216:
    nqp_get_sc_for_object $P3029, $P3028
    store_lex "$sc", $P3029
.annotate 'line', 2202
    find_lex $P3031, "$sc"
    unless_null $P3031, vivify_1217
    new $P3031, "Undef"
  vivify_1217:
    defined $I3032, $P3031
    if $I3032, unless_3030_end
.annotate 'line', 2203
    new $P3033, "String"
    assign $P3033, "Object of type '"
    find_lex $P3034, "$obj"
    unless_null $P3034, vivify_1218
    new $P3034, "Undef"
  vivify_1218:
    get_how $P3035, $P3034
    find_lex $P3036, "$obj"
    unless_null $P3036, vivify_1219
    new $P3036, "Undef"
  vivify_1219:
    $S3037 = $P3035."name"($P3036)
    concat $P3038, $P3033, $S3037
    concat $P3039, $P3038, "' cannot be referenced without having been "
    concat $P3040, $P3039, "assigned a serialization context"
.annotate 'line', 2204
    die $P3040
  unless_3030_end:
.annotate 'line', 2210
    find_lex $P3043, "$sc"
    unless_null $P3043, vivify_1220
    new $P3043, "Undef"
  vivify_1220:
    find_lex $P3044, "self"
    find_lex $P3045, "$?CLASS"
    getattribute $P3046, $P3044, $P3045, "$!sc"
    unless_null $P3046, vivify_1221
    new $P3046, "Undef"
  vivify_1221:
    issame $I3047, $P3043, $P3046
    if $I3047, if_3042
.annotate 'line', 2214
    get_hll_global $P3051, "GLOBAL"
    nqp_get_package_through_who $P3052, $P3051, "PAST"
    get_who $P3053, $P3052
    set $P3054, $P3053["Op"]
.annotate 'line', 2215
    find_lex $P3055, "$sc"
    unless_null $P3055, vivify_1222
    new $P3055, "Undef"
  vivify_1222:
    $P3056 = $P3055."handle"()
    find_lex $P3057, "$sc"
    unless_null $P3057, vivify_1223
    new $P3057, "Undef"
  vivify_1223:
    find_lex $P3058, "$obj"
    unless_null $P3058, vivify_1224
    new $P3058, "Undef"
  vivify_1224:
    $P3059 = $P3057."slot_index_for"($P3058)
    $P3060 = $P3054."new"($P3056, $P3059, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2213
    set $P3041, $P3060
.annotate 'line', 2210
    goto if_3042_end
  if_3042:
.annotate 'line', 2211
    find_lex $P3048, "self"
    find_lex $P3049, "$obj"
    unless_null $P3049, vivify_1225
    new $P3049, "Undef"
  vivify_1225:
    $P3050 = $P3048."get_slot_past_for_object"($P3049)
.annotate 'line', 2210
    set $P3041, $P3050
  if_3042_end:
.annotate 'line', 2198
    .return ($P3041)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_setting"  :subid("272_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3065
    .param pmc param_3066
.annotate 'line', 2227
    .const 'Sub' $P3073 = "273_1304459385.051" 
    capture_lex $P3073
    new $P3064, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3064, control_3063
    push_eh $P3064
    .lex "self", param_3065
    .lex "$setting_name", param_3066
.annotate 'line', 2229
    find_lex $P3069, "$setting_name"
    unless_null $P3069, vivify_1226
    new $P3069, "Undef"
  vivify_1226:
    set $S3070, $P3069
    isne $I3071, $S3070, "NULL"
    if $I3071, if_3068
    new $P3067, 'Integer'
    set $P3067, $I3071
    goto if_3068_end
  if_3068:
    .const 'Sub' $P3073 = "273_1304459385.051" 
    capture_lex $P3073
    $P3118 = $P3073()
    set $P3067, $P3118
  if_3068_end:
.annotate 'line', 2227
    .return ($P3067)
  control_3063:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3119, exception, "payload"
    .return ($P3119)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3072"  :anon :subid("273_1304459385.051") :outer("272_1304459385.051")
.annotate 'line', 2233
    new $P3074, "Undef"
    .lex "$setting", $P3074
.annotate 'line', 2234
    find_lex $P3075, "$loader"
    unless_null $P3075, vivify_1227
    new $P3075, "Undef"
  vivify_1227:
    find_lex $P3076, "$setting_name"
    unless_null $P3076, vivify_1228
    new $P3076, "Undef"
  vivify_1228:
    $P3077 = $P3075."load_setting"($P3076)
    find_dynamic_lex $P3080, "%*COMPILING"
    unless_null $P3080, vivify_1229
    get_hll_global $P3078, "GLOBAL"
    get_who $P3079, $P3078
    set $P3080, $P3079["%COMPILING"]
    unless_null $P3080, vivify_1230
    die "Contextual %*COMPILING not found"
  vivify_1230:
    store_dynamic_lex "%*COMPILING", $P3080
  vivify_1229:
    set $P3081, $P3080["%?OPTIONS"]
    unless_null $P3081, vivify_1231
    $P3081 = root_new ['parrot';'Hash']
    set $P3080["%?OPTIONS"], $P3081
  vivify_1231:
    set $P3081["outer_ctx"], $P3077
    store_lex "$setting", $P3077
.annotate 'line', 2237
    find_lex $P3082, "self"
    get_hll_global $P3083, "GLOBAL"
    nqp_get_package_through_who $P3084, $P3083, "PAST"
    get_who $P3085, $P3084
    set $P3086, $P3085["Stmts"]
.annotate 'line', 2238
    get_hll_global $P3087, "GLOBAL"
    nqp_get_package_through_who $P3088, $P3087, "PAST"
    get_who $P3089, $P3088
    set $P3090, $P3089["Op"]
    $P3091 = $P3090."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2241
    get_hll_global $P3092, "GLOBAL"
    nqp_get_package_through_who $P3093, $P3092, "PAST"
    get_who $P3094, $P3093
    set $P3095, $P3094["Op"]
.annotate 'line', 2243
    get_hll_global $P3096, "GLOBAL"
    nqp_get_package_through_who $P3097, $P3096, "PAST"
    get_who $P3098, $P3097
    set $P3099, $P3098["Var"]
    $P3100 = $P3099."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2244
    get_hll_global $P3101, "GLOBAL"
    nqp_get_package_through_who $P3102, $P3101, "PAST"
    get_who $P3103, $P3102
    set $P3104, $P3103["Op"]
.annotate 'line', 2246
    get_hll_global $P3105, "GLOBAL"
    nqp_get_package_through_who $P3106, $P3105, "PAST"
    get_who $P3107, $P3106
    set $P3108, $P3107["Var"]
    new $P3109, "ResizablePMCArray"
    $P3110 = $P3108."new"("ModuleLoader" :named("name"), $P3109 :named("namespace"), "package" :named("scope"))
    find_lex $P3111, "$setting_name"
    unless_null $P3111, vivify_1232
    new $P3111, "Undef"
  vivify_1232:
    $P3112 = $P3104."new"($P3110, $P3111, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2244
    $P3113 = $P3095."new"($P3100, $P3112, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2241
    $P3114 = $P3086."new"($P3091, $P3113)
.annotate 'line', 2237
    $P3082."add_event"($P3114 :named("deserialize_past"))
.annotate 'line', 2252
    new $P3115, "Exception"
    set $P3115['type'], .CONTROL_RETURN
    find_lex $P3116, "$setting"
    unless_null $P3116, vivify_1233
    new $P3116, "Undef"
  vivify_1233:
    getattribute $P3117, $P3116, "lex_pad"
    setattribute $P3115, 'payload', $P3117
    throw $P3115
.annotate 'line', 2229
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_module"  :subid("274_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3123
    .param pmc param_3124
    .param pmc param_3125
.annotate 'line', 2258
    new $P3122, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3122, control_3121
    push_eh $P3122
    .lex "self", param_3123
    .lex "$module_name", param_3124
    .lex "$cur_GLOBALish", param_3125
.annotate 'line', 2260
    new $P3126, "Undef"
    .lex "$module", $P3126
    find_lex $P3127, "$loader"
    unless_null $P3127, vivify_1234
    new $P3127, "Undef"
  vivify_1234:
    find_lex $P3128, "$module_name"
    unless_null $P3128, vivify_1235
    new $P3128, "Undef"
  vivify_1235:
    find_lex $P3129, "$cur_GLOBALish"
    unless_null $P3129, vivify_1236
    new $P3129, "Undef"
  vivify_1236:
    $P3130 = $P3127."load_module"($P3128, $P3129)
    store_lex "$module", $P3130
.annotate 'line', 2263
    find_lex $P3131, "self"
    get_hll_global $P3132, "GLOBAL"
    nqp_get_package_through_who $P3133, $P3132, "PAST"
    get_who $P3134, $P3133
    set $P3135, $P3134["Stmts"]
.annotate 'line', 2264
    get_hll_global $P3136, "GLOBAL"
    nqp_get_package_through_who $P3137, $P3136, "PAST"
    get_who $P3138, $P3137
    set $P3139, $P3138["Op"]
    $P3140 = $P3139."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2267
    get_hll_global $P3141, "GLOBAL"
    nqp_get_package_through_who $P3142, $P3141, "PAST"
    get_who $P3143, $P3142
    set $P3144, $P3143["Op"]
.annotate 'line', 2269
    get_hll_global $P3145, "GLOBAL"
    nqp_get_package_through_who $P3146, $P3145, "PAST"
    get_who $P3147, $P3146
    set $P3148, $P3147["Var"]
    new $P3149, "ResizablePMCArray"
    $P3150 = $P3148."new"("ModuleLoader" :named("name"), $P3149 :named("namespace"), "package" :named("scope"))
    find_lex $P3151, "$module_name"
    unless_null $P3151, vivify_1237
    new $P3151, "Undef"
  vivify_1237:
.annotate 'line', 2271
    find_lex $P3152, "self"
    find_lex $P3153, "$cur_GLOBALish"
    unless_null $P3153, vivify_1238
    new $P3153, "Undef"
  vivify_1238:
    $P3154 = $P3152."get_slot_past_for_object"($P3153)
    $P3155 = $P3144."new"($P3150, $P3151, $P3154, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2267
    $P3156 = $P3135."new"($P3140, $P3155)
.annotate 'line', 2263
    $P3131."add_event"($P3156 :named("deserialize_past"))
.annotate 'line', 2274
    new $P3157, "Exception"
    set $P3157['type'], .CONTROL_RETURN
    find_lex $P3158, "$module"
    unless_null $P3158, vivify_1239
    new $P3158, "Undef"
  vivify_1239:
    getattribute $P3159, $P3158, "lex_pad"
    setattribute $P3157, 'payload', $P3159
    throw $P3157
.annotate 'line', 2258
    .return ()
  control_3121:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3160, exception, "payload"
    .return ($P3160)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("275_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3162
    .param pmc param_3163
    .param pmc param_3164
    .param pmc param_3165
.annotate 'line', 2279
    .const 'Sub' $P3202 = "277_1304459385.051" 
    capture_lex $P3202
    .const 'Sub' $P3181 = "276_1304459385.051" 
    capture_lex $P3181
    .lex "self", param_3162
    .lex "$package", param_3163
    .lex "@sym", param_3164
    .lex "$obj", param_3165
.annotate 'line', 2281
    new $P3166, "Undef"
    .lex "$name", $P3166
.annotate 'line', 2284
    new $P3167, "Undef"
    .lex "$target", $P3167
.annotate 'line', 2291
    new $P3168, "Undef"
    .lex "$path", $P3168
.annotate 'line', 2280
    find_lex $P3169, "@sym"
    unless_null $P3169, vivify_1240
    $P3169 = root_new ['parrot';'ResizablePMCArray']
  vivify_1240:
    clone $P3170, $P3169
    store_lex "@sym", $P3170
.annotate 'line', 2281
    find_lex $P3171, "@sym"
    unless_null $P3171, vivify_1241
    $P3171 = root_new ['parrot';'ResizablePMCArray']
  vivify_1241:
    $P3172 = $P3171."pop"()
    set $S3173, $P3172
    new $P3174, 'String'
    set $P3174, $S3173
    store_lex "$name", $P3174
.annotate 'line', 2284
    find_lex $P3175, "$package"
    unless_null $P3175, vivify_1242
    new $P3175, "Undef"
  vivify_1242:
    store_lex "$target", $P3175
.annotate 'line', 2285
    find_lex $P3177, "@sym"
    unless_null $P3177, vivify_1243
    $P3177 = root_new ['parrot';'ResizablePMCArray']
  vivify_1243:
    defined $I3178, $P3177
    unless $I3178, for_undef_1244
    iter $P3176, $P3177
    new $P3188, 'ExceptionHandler'
    set_label $P3188, loop3187_handler
    $P3188."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3188
  loop3187_test:
    unless $P3176, loop3187_done
    shift $P3179, $P3176
  loop3187_redo:
    .const 'Sub' $P3181 = "276_1304459385.051" 
    capture_lex $P3181
    $P3181($P3179)
  loop3187_next:
    goto loop3187_test
  loop3187_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3189, exception, 'type'
    eq $P3189, .CONTROL_LOOP_NEXT, loop3187_next
    eq $P3189, .CONTROL_LOOP_REDO, loop3187_redo
  loop3187_done:
    pop_eh 
  for_undef_1244:
.annotate 'line', 2288
    find_lex $P3190, "$obj"
    unless_null $P3190, vivify_1247
    new $P3190, "Undef"
  vivify_1247:
    find_lex $P3191, "$name"
    unless_null $P3191, vivify_1248
    new $P3191, "Undef"
  vivify_1248:
    find_lex $P3192, "$target"
    unless_null $P3192, vivify_1249
    new $P3192, "Undef"
    store_lex "$target", $P3192
  vivify_1249:
    get_who $P3193, $P3192
    set $P3193[$P3191], $P3190
.annotate 'line', 2291
    find_lex $P3194, "self"
    find_lex $P3195, "$package"
    unless_null $P3195, vivify_1250
    new $P3195, "Undef"
  vivify_1250:
    $P3196 = $P3194."get_slot_past_for_object"($P3195)
    store_lex "$path", $P3196
.annotate 'line', 2292
    find_lex $P3198, "@sym"
    unless_null $P3198, vivify_1251
    $P3198 = root_new ['parrot';'ResizablePMCArray']
  vivify_1251:
    defined $I3199, $P3198
    unless $I3199, for_undef_1252
    iter $P3197, $P3198
    new $P3213, 'ExceptionHandler'
    set_label $P3213, loop3212_handler
    $P3213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3213
  loop3212_test:
    unless $P3197, loop3212_done
    shift $P3200, $P3197
  loop3212_redo:
    .const 'Sub' $P3202 = "277_1304459385.051" 
    capture_lex $P3202
    $P3202($P3200)
  loop3212_next:
    goto loop3212_test
  loop3212_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3214, exception, 'type'
    eq $P3214, .CONTROL_LOOP_NEXT, loop3212_next
    eq $P3214, .CONTROL_LOOP_REDO, loop3212_redo
  loop3212_done:
    pop_eh 
  for_undef_1252:
.annotate 'line', 2295
    find_lex $P3215, "self"
    get_hll_global $P3216, "GLOBAL"
    nqp_get_package_through_who $P3217, $P3216, "PAST"
    get_who $P3218, $P3217
    set $P3219, $P3218["Op"]
.annotate 'line', 2297
    get_hll_global $P3220, "GLOBAL"
    nqp_get_package_through_who $P3221, $P3220, "PAST"
    get_who $P3222, $P3221
    set $P3223, $P3222["Var"]
.annotate 'line', 2299
    get_hll_global $P3224, "GLOBAL"
    nqp_get_package_through_who $P3225, $P3224, "PAST"
    get_who $P3226, $P3225
    set $P3227, $P3226["Op"]
    find_lex $P3228, "$path"
    unless_null $P3228, vivify_1255
    new $P3228, "Undef"
  vivify_1255:
    $P3229 = $P3227."new"($P3228, "get_who PP" :named("pirop"))
    find_lex $P3230, "$name"
    unless_null $P3230, vivify_1256
    new $P3230, "Undef"
  vivify_1256:
    $P3231 = $P3223."new"($P3229, $P3230, "keyed" :named("scope"))
.annotate 'line', 2302
    find_lex $P3232, "self"
    find_lex $P3233, "$obj"
    unless_null $P3233, vivify_1257
    new $P3233, "Undef"
  vivify_1257:
    $P3234 = $P3232."get_slot_past_for_object"($P3233)
    $P3235 = $P3219."new"($P3231, $P3234, "bind" :named("pasttype"))
.annotate 'line', 2295
    $P3236 = $P3215."add_event"($P3235 :named("deserialize_past"))
.annotate 'line', 2279
    .return ($P3236)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3180"  :anon :subid("276_1304459385.051") :outer("275_1304459385.051")
    .param pmc param_3182
.annotate 'line', 2285
    .lex "$_", param_3182
.annotate 'line', 2286
    find_lex $P3183, "$target"
    unless_null $P3183, vivify_1245
    new $P3183, "Undef"
  vivify_1245:
    find_lex $P3184, "$_"
    unless_null $P3184, vivify_1246
    new $P3184, "Undef"
  vivify_1246:
    set $S3185, $P3184
    nqp_get_package_through_who $P3186, $P3183, $S3185
    store_lex "$target", $P3186
.annotate 'line', 2285
    .return ($P3186)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3201"  :anon :subid("277_1304459385.051") :outer("275_1304459385.051")
    .param pmc param_3203
.annotate 'line', 2292
    .lex "$_", param_3203
.annotate 'line', 2293
    get_hll_global $P3204, "GLOBAL"
    nqp_get_package_through_who $P3205, $P3204, "PAST"
    get_who $P3206, $P3205
    set $P3207, $P3206["Op"]
    find_lex $P3208, "$path"
    unless_null $P3208, vivify_1253
    new $P3208, "Undef"
  vivify_1253:
    find_lex $P3209, "$_"
    unless_null $P3209, vivify_1254
    new $P3209, "Undef"
  vivify_1254:
    set $S3210, $P3209
    $P3211 = $P3207."new"($P3208, $S3210, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3211
.annotate 'line', 2292
    .return ($P3211)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("278_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3238
    .param pmc param_3239
    .param pmc param_3240
    .param pmc param_3241
.annotate 'line', 2310
    .lex "self", param_3238
    .lex "$block", param_3239
    .lex "$name", param_3240
    .lex "$obj", param_3241
.annotate 'line', 2316
    new $P3242, "Undef"
    .lex "$fixup", $P3242
.annotate 'line', 2312
    find_lex $P3243, "$block"
    unless_null $P3243, vivify_1258
    new $P3243, "Undef"
  vivify_1258:
    find_lex $P3244, "$name"
    unless_null $P3244, vivify_1259
    new $P3244, "Undef"
  vivify_1259:
    find_lex $P3245, "$obj"
    unless_null $P3245, vivify_1260
    new $P3245, "Undef"
  vivify_1260:
    $P3243."symbol"($P3244, "lexical" :named("scope"), $P3245 :named("value"))
.annotate 'line', 2313
    find_lex $P3246, "$block"
    unless_null $P3246, vivify_1261
    $P3246 = root_new ['parrot';'ResizablePMCArray']
  vivify_1261:
    set $P3247, $P3246[0]
    unless_null $P3247, vivify_1262
    new $P3247, "Undef"
  vivify_1262:
    get_hll_global $P3248, "GLOBAL"
    nqp_get_package_through_who $P3249, $P3248, "PAST"
    get_who $P3250, $P3249
    set $P3251, $P3250["Var"]
    find_lex $P3252, "$name"
    unless_null $P3252, vivify_1263
    new $P3252, "Undef"
  vivify_1263:
    $P3253 = $P3251."new"("lexical" :named("scope"), $P3252 :named("name"), 1 :named("isdecl"))
    $P3247."push"($P3253)
.annotate 'line', 2316
    get_hll_global $P3254, "GLOBAL"
    nqp_get_package_through_who $P3255, $P3254, "PAST"
    get_who $P3256, $P3255
    set $P3257, $P3256["Stmts"]
.annotate 'line', 2317
    get_hll_global $P3258, "GLOBAL"
    nqp_get_package_through_who $P3259, $P3258, "PAST"
    get_who $P3260, $P3259
    set $P3261, $P3260["Op"]
.annotate 'line', 2319
    get_hll_global $P3262, "GLOBAL"
    nqp_get_package_through_who $P3263, $P3262, "PAST"
    get_who $P3264, $P3263
    set $P3265, $P3264["Op"]
.annotate 'line', 2321
    get_hll_global $P3266, "GLOBAL"
    nqp_get_package_through_who $P3267, $P3266, "PAST"
    get_who $P3268, $P3267
    set $P3269, $P3268["Val"]
    find_lex $P3270, "$block"
    unless_null $P3270, vivify_1264
    new $P3270, "Undef"
  vivify_1264:
    $P3271 = $P3269."new"($P3270 :named("value"))
    $P3272 = $P3265."new"($P3271, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2323
    find_lex $P3273, "$name"
    unless_null $P3273, vivify_1265
    new $P3273, "Undef"
  vivify_1265:
    set $S3274, $P3273
    find_lex $P3275, "self"
    find_lex $P3276, "$obj"
    unless_null $P3276, vivify_1266
    new $P3276, "Undef"
  vivify_1266:
    $P3277 = $P3275."get_slot_past_for_object"($P3276)
    $P3278 = $P3261."new"($P3272, $S3274, $P3277, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2327
    get_hll_global $P3279, "GLOBAL"
    nqp_get_package_through_who $P3280, $P3279, "PAST"
    get_who $P3281, $P3280
    set $P3282, $P3281["Op"]
.annotate 'line', 2329
    get_hll_global $P3283, "GLOBAL"
    nqp_get_package_through_who $P3284, $P3283, "PAST"
    get_who $P3285, $P3284
    set $P3286, $P3285["Op"]
.annotate 'line', 2331
    get_hll_global $P3287, "GLOBAL"
    nqp_get_package_through_who $P3288, $P3287, "PAST"
    get_who $P3289, $P3288
    set $P3290, $P3289["Val"]
    find_lex $P3291, "$block"
    unless_null $P3291, vivify_1267
    new $P3291, "Undef"
  vivify_1267:
    $P3292 = $P3290."new"($P3291 :named("value"))
    $P3293 = $P3286."new"($P3292, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2329
    $P3294 = $P3282."new"($P3293, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2327
    $P3295 = $P3257."new"($P3278, $P3294)
.annotate 'line', 2316
    store_lex "$fixup", $P3295
.annotate 'line', 2335
    find_lex $P3296, "self"
    find_lex $P3297, "$fixup"
    unless_null $P3297, vivify_1268
    new $P3297, "Undef"
  vivify_1268:
    find_lex $P3298, "$fixup"
    unless_null $P3298, vivify_1269
    new $P3298, "Undef"
  vivify_1269:
    $P3299 = $P3296."add_event"($P3297 :named("deserialize_past"), $P3298 :named("fixup_past"))
.annotate 'line', 2310
    .return ($P3299)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("279_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3301
    .param pmc param_3302
    .param pmc param_3303
    .param pmc param_3304
.annotate 'line', 2340
    .lex "self", param_3301
    .lex "$package", param_3302
    .lex "$name", param_3303
    .lex "$past_block", param_3304
.annotate 'line', 2341
    new $P3305, "Undef"
    .lex "$fixup", $P3305
    get_hll_global $P3306, "GLOBAL"
    nqp_get_package_through_who $P3307, $P3306, "PAST"
    get_who $P3308, $P3307
    set $P3309, $P3308["Op"]
.annotate 'line', 2343
    get_hll_global $P3310, "GLOBAL"
    nqp_get_package_through_who $P3311, $P3310, "PAST"
    get_who $P3312, $P3311
    set $P3313, $P3312["Var"]
.annotate 'line', 2345
    get_hll_global $P3314, "GLOBAL"
    nqp_get_package_through_who $P3315, $P3314, "PAST"
    get_who $P3316, $P3315
    set $P3317, $P3316["Op"]
    find_lex $P3318, "self"
    find_lex $P3319, "$package"
    unless_null $P3319, vivify_1270
    new $P3319, "Undef"
  vivify_1270:
    $P3320 = $P3318."get_slot_past_for_object"($P3319)
    $P3321 = $P3317."new"($P3320, "get_who PP" :named("pirop"))
.annotate 'line', 2346
    find_lex $P3322, "$name"
    unless_null $P3322, vivify_1271
    new $P3322, "Undef"
  vivify_1271:
    set $S3323, $P3322
    $P3324 = $P3313."new"($P3321, $S3323, "keyed" :named("scope"))
.annotate 'line', 2348
    get_hll_global $P3325, "GLOBAL"
    nqp_get_package_through_who $P3326, $P3325, "PAST"
    get_who $P3327, $P3326
    set $P3328, $P3327["Val"]
    find_lex $P3329, "$past_block"
    unless_null $P3329, vivify_1272
    new $P3329, "Undef"
  vivify_1272:
    $P3330 = $P3328."new"($P3329 :named("value"))
    $P3331 = $P3309."new"($P3324, $P3330, "bind" :named("pasttype"))
.annotate 'line', 2341
    store_lex "$fixup", $P3331
.annotate 'line', 2350
    find_lex $P3332, "self"
    find_lex $P3333, "$fixup"
    unless_null $P3333, vivify_1273
    new $P3333, "Undef"
  vivify_1273:
    find_lex $P3334, "$fixup"
    unless_null $P3334, vivify_1274
    new $P3334, "Undef"
  vivify_1274:
    $P3335 = $P3332."add_event"($P3333 :named("deserialize_past"), $P3334 :named("fixup_past"))
.annotate 'line', 2340
    .return ($P3335)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("280_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3339
    .param pmc param_3340
    .param pmc param_3341 :optional :named("name")
    .param int has_param_3341 :opt_flag
    .param pmc param_3343 :optional :named("repr")
    .param int has_param_3343 :opt_flag
.annotate 'line', 2355
    new $P3338, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3338, control_3337
    push_eh $P3338
    .lex "self", param_3339
    .lex "$how", param_3340
    if has_param_3341, optparam_1275
    new $P3342, "Undef"
    set param_3341, $P3342
  optparam_1275:
    .lex "$name", param_3341
    if has_param_3343, optparam_1276
    new $P3344, "Undef"
    set param_3343, $P3344
  optparam_1276:
    .lex "$repr", param_3343
.annotate 'line', 2357
    $P3345 = root_new ['parrot';'Hash']
    .lex "%args", $P3345
.annotate 'line', 2360
    new $P3346, "Undef"
    .lex "$mo", $P3346
.annotate 'line', 2361
    new $P3347, "Undef"
    .lex "$slot", $P3347
.annotate 'line', 2365
    $P3348 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3348
.annotate 'line', 2366
    new $P3349, "Undef"
    .lex "$how_name", $P3349
.annotate 'line', 2367
    new $P3350, "Undef"
    .lex "$setup_call", $P3350
.annotate 'line', 2355
    find_lex $P3351, "%args"
    unless_null $P3351, vivify_1277
    $P3351 = root_new ['parrot';'Hash']
  vivify_1277:
.annotate 'line', 2358
    find_lex $P3353, "$name"
    unless_null $P3353, vivify_1278
    new $P3353, "Undef"
  vivify_1278:
    defined $I3354, $P3353
    unless $I3354, if_3352_end
    find_lex $P3355, "$name"
    unless_null $P3355, vivify_1279
    new $P3355, "Undef"
  vivify_1279:
    find_lex $P3356, "%args"
    unless_null $P3356, vivify_1280
    $P3356 = root_new ['parrot';'Hash']
    store_lex "%args", $P3356
  vivify_1280:
    set $P3356["name"], $P3355
  if_3352_end:
.annotate 'line', 2359
    find_lex $P3358, "$repr"
    unless_null $P3358, vivify_1281
    new $P3358, "Undef"
  vivify_1281:
    defined $I3359, $P3358
    unless $I3359, if_3357_end
    find_lex $P3360, "$repr"
    unless_null $P3360, vivify_1282
    new $P3360, "Undef"
  vivify_1282:
    find_lex $P3361, "%args"
    unless_null $P3361, vivify_1283
    $P3361 = root_new ['parrot';'Hash']
    store_lex "%args", $P3361
  vivify_1283:
    set $P3361["repr"], $P3360
  if_3357_end:
.annotate 'line', 2360
    find_lex $P3362, "$how"
    unless_null $P3362, vivify_1284
    new $P3362, "Undef"
  vivify_1284:
    find_lex $P3363, "%args"
    unless_null $P3363, vivify_1285
    $P3363 = root_new ['parrot';'Hash']
  vivify_1285:
    $P3364 = $P3362."new_type"($P3363 :flat)
    store_lex "$mo", $P3364
.annotate 'line', 2361
    find_lex $P3365, "self"
    find_lex $P3366, "$mo"
    unless_null $P3366, vivify_1286
    new $P3366, "Undef"
  vivify_1286:
    $P3367 = $P3365."add_object"($P3366)
    store_lex "$slot", $P3367
.annotate 'line', 2365
    find_lex $P3368, "$how"
    unless_null $P3368, vivify_1287
    new $P3368, "Undef"
  vivify_1287:
    get_how $P3369, $P3368
    find_lex $P3370, "$how"
    unless_null $P3370, vivify_1288
    new $P3370, "Undef"
  vivify_1288:
    $S3371 = $P3369."name"($P3370)
    split $P3372, "::", $S3371
    store_lex "@how_ns", $P3372
.annotate 'line', 2366
    find_lex $P3373, "@how_ns"
    unless_null $P3373, vivify_1289
    $P3373 = root_new ['parrot';'ResizablePMCArray']
  vivify_1289:
    $P3374 = $P3373."pop"()
    store_lex "$how_name", $P3374
.annotate 'line', 2367
    get_hll_global $P3375, "GLOBAL"
    nqp_get_package_through_who $P3376, $P3375, "PAST"
    get_who $P3377, $P3376
    set $P3378, $P3377["Op"]
.annotate 'line', 2369
    find_lex $P3379, "self"
    find_lex $P3380, "$how"
    unless_null $P3380, vivify_1290
    new $P3380, "Undef"
  vivify_1290:
    $P3381 = $P3379."get_object_sc_ref_past"($P3380)
    $P3382 = $P3378."new"($P3381, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2367
    store_lex "$setup_call", $P3382
.annotate 'line', 2371
    find_lex $P3384, "$name"
    unless_null $P3384, vivify_1291
    new $P3384, "Undef"
  vivify_1291:
    defined $I3385, $P3384
    unless $I3385, if_3383_end
.annotate 'line', 2372
    find_lex $P3386, "$setup_call"
    unless_null $P3386, vivify_1292
    new $P3386, "Undef"
  vivify_1292:
    get_hll_global $P3387, "GLOBAL"
    nqp_get_package_through_who $P3388, $P3387, "PAST"
    get_who $P3389, $P3388
    set $P3390, $P3389["Val"]
    find_lex $P3391, "$name"
    unless_null $P3391, vivify_1293
    new $P3391, "Undef"
  vivify_1293:
    $P3392 = $P3390."new"($P3391 :named("value"), "name" :named("named"))
    $P3386."push"($P3392)
  if_3383_end:
.annotate 'line', 2374
    find_lex $P3394, "$repr"
    unless_null $P3394, vivify_1294
    new $P3394, "Undef"
  vivify_1294:
    defined $I3395, $P3394
    unless $I3395, if_3393_end
.annotate 'line', 2375
    find_lex $P3396, "$setup_call"
    unless_null $P3396, vivify_1295
    new $P3396, "Undef"
  vivify_1295:
    get_hll_global $P3397, "GLOBAL"
    nqp_get_package_through_who $P3398, $P3397, "PAST"
    get_who $P3399, $P3398
    set $P3400, $P3399["Val"]
    find_lex $P3401, "$repr"
    unless_null $P3401, vivify_1296
    new $P3401, "Undef"
  vivify_1296:
    $P3402 = $P3400."new"($P3401 :named("value"), "repr" :named("named"))
    $P3396."push"($P3402)
  if_3393_end:
.annotate 'line', 2377
    find_lex $P3403, "self"
.annotate 'line', 2378
    find_lex $P3404, "self"
    find_lex $P3405, "$slot"
    unless_null $P3405, vivify_1297
    new $P3405, "Undef"
  vivify_1297:
    find_lex $P3406, "self"
    find_lex $P3407, "$setup_call"
    unless_null $P3407, vivify_1298
    new $P3407, "Undef"
  vivify_1298:
    $P3408 = $P3406."set_cur_sc"($P3407)
    $P3409 = $P3404."set_slot_past"($P3405, $P3408)
    $P3403."add_event"($P3409 :named("deserialize_past"))
.annotate 'line', 2381
    new $P3410, "Exception"
    set $P3410['type'], .CONTROL_RETURN
    find_lex $P3411, "$mo"
    unless_null $P3411, vivify_1299
    new $P3411, "Undef"
  vivify_1299:
    setattribute $P3410, 'payload', $P3411
    throw $P3410
.annotate 'line', 2355
    .return ()
  control_3337:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3412, exception, "payload"
    .return ($P3412)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_add_attribute"  :subid("281_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3414
    .param pmc param_3415
    .param pmc param_3416
    .param pmc param_3417
    .param pmc param_3418
.annotate 'line', 2389
    .const 'Sub' $P3464 = "283_1304459385.051" 
    capture_lex $P3464
    .const 'Sub' $P3443 = "282_1304459385.051" 
    capture_lex $P3443
    .lex "self", param_3414
    .lex "$obj", param_3415
    .lex "$meta_attr", param_3416
    .lex "%lit_args", param_3417
    .lex "%obj_args", param_3418
.annotate 'line', 2391
    new $P3419, "Undef"
    .lex "$attr", $P3419
.annotate 'line', 2395
    new $P3420, "Undef"
    .lex "$create_call", $P3420
.annotate 'line', 2407
    new $P3421, "Undef"
    .lex "$obj_slot_past", $P3421
.annotate 'line', 2391
    find_lex $P3422, "$meta_attr"
    unless_null $P3422, vivify_1300
    new $P3422, "Undef"
  vivify_1300:
    find_lex $P3423, "%lit_args"
    unless_null $P3423, vivify_1301
    $P3423 = root_new ['parrot';'Hash']
  vivify_1301:
    find_lex $P3424, "%obj_args"
    unless_null $P3424, vivify_1302
    $P3424 = root_new ['parrot';'Hash']
  vivify_1302:
    $P3425 = $P3422."new"($P3423 :flat, $P3424 :flat)
    store_lex "$attr", $P3425
.annotate 'line', 2392
    find_lex $P3426, "$obj"
    unless_null $P3426, vivify_1303
    new $P3426, "Undef"
  vivify_1303:
    get_how $P3427, $P3426
    find_lex $P3428, "$obj"
    unless_null $P3428, vivify_1304
    new $P3428, "Undef"
  vivify_1304:
    find_lex $P3429, "$attr"
    unless_null $P3429, vivify_1305
    new $P3429, "Undef"
  vivify_1305:
    $P3427."add_attribute"($P3428, $P3429)
.annotate 'line', 2395
    get_hll_global $P3430, "GLOBAL"
    nqp_get_package_through_who $P3431, $P3430, "PAST"
    get_who $P3432, $P3431
    set $P3433, $P3432["Op"]
.annotate 'line', 2397
    find_lex $P3434, "self"
    find_lex $P3435, "$meta_attr"
    unless_null $P3435, vivify_1306
    new $P3435, "Undef"
  vivify_1306:
    $P3436 = $P3434."get_object_sc_ref_past"($P3435)
    $P3437 = $P3433."new"($P3436, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 2395
    store_lex "$create_call", $P3437
.annotate 'line', 2399
    find_lex $P3439, "%lit_args"
    unless_null $P3439, vivify_1307
    $P3439 = root_new ['parrot';'Hash']
  vivify_1307:
    defined $I3440, $P3439
    unless $I3440, for_undef_1308
    iter $P3438, $P3439
    new $P3457, 'ExceptionHandler'
    set_label $P3457, loop3456_handler
    $P3457."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3457
  loop3456_test:
    unless $P3438, loop3456_done
    shift $P3441, $P3438
  loop3456_redo:
    .const 'Sub' $P3443 = "282_1304459385.051" 
    capture_lex $P3443
    $P3443($P3441)
  loop3456_next:
    goto loop3456_test
  loop3456_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3458, exception, 'type'
    eq $P3458, .CONTROL_LOOP_NEXT, loop3456_next
    eq $P3458, .CONTROL_LOOP_REDO, loop3456_redo
  loop3456_done:
    pop_eh 
  for_undef_1308:
.annotate 'line', 2402
    find_lex $P3460, "%obj_args"
    unless_null $P3460, vivify_1312
    $P3460 = root_new ['parrot';'Hash']
  vivify_1312:
    defined $I3461, $P3460
    unless $I3461, for_undef_1313
    iter $P3459, $P3460
    new $P3478, 'ExceptionHandler'
    set_label $P3478, loop3477_handler
    $P3478."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3478
  loop3477_test:
    unless $P3459, loop3477_done
    shift $P3462, $P3459
  loop3477_redo:
    .const 'Sub' $P3464 = "283_1304459385.051" 
    capture_lex $P3464
    $P3464($P3462)
  loop3477_next:
    goto loop3477_test
  loop3477_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3479, exception, 'type'
    eq $P3479, .CONTROL_LOOP_NEXT, loop3477_next
    eq $P3479, .CONTROL_LOOP_REDO, loop3477_redo
  loop3477_done:
    pop_eh 
  for_undef_1313:
.annotate 'line', 2407
    find_lex $P3480, "self"
    find_lex $P3481, "$obj"
    unless_null $P3481, vivify_1319
    new $P3481, "Undef"
  vivify_1319:
    $P3482 = $P3480."get_slot_past_for_object"($P3481)
    store_lex "$obj_slot_past", $P3482
.annotate 'line', 2408
    find_lex $P3483, "self"
    get_hll_global $P3484, "GLOBAL"
    nqp_get_package_through_who $P3485, $P3484, "PAST"
    get_who $P3486, $P3485
    set $P3487, $P3486["Op"]
.annotate 'line', 2410
    get_hll_global $P3488, "GLOBAL"
    nqp_get_package_through_who $P3489, $P3488, "PAST"
    get_who $P3490, $P3489
    set $P3491, $P3490["Op"]
    find_lex $P3492, "$obj_slot_past"
    unless_null $P3492, vivify_1320
    new $P3492, "Undef"
  vivify_1320:
    $P3493 = $P3491."new"($P3492, "get_how PP" :named("pirop"))
    find_lex $P3494, "$obj_slot_past"
    unless_null $P3494, vivify_1321
    new $P3494, "Undef"
  vivify_1321:
    find_lex $P3495, "$create_call"
    unless_null $P3495, vivify_1322
    new $P3495, "Undef"
  vivify_1322:
    $P3496 = $P3487."new"($P3493, $P3494, $P3495, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
.annotate 'line', 2408
    $P3497 = $P3483."add_event"($P3496 :named("deserialize_past"))
.annotate 'line', 2389
    .return ($P3497)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3442"  :anon :subid("282_1304459385.051") :outer("281_1304459385.051")
    .param pmc param_3444
.annotate 'line', 2399
    .lex "$_", param_3444
.annotate 'line', 2400
    find_lex $P3445, "$create_call"
    unless_null $P3445, vivify_1309
    new $P3445, "Undef"
  vivify_1309:
    get_hll_global $P3446, "GLOBAL"
    nqp_get_package_through_who $P3447, $P3446, "PAST"
    get_who $P3448, $P3447
    set $P3449, $P3448["Val"]
    find_lex $P3450, "$_"
    unless_null $P3450, vivify_1310
    new $P3450, "Undef"
  vivify_1310:
    $P3451 = $P3450."value"()
    find_lex $P3452, "$_"
    unless_null $P3452, vivify_1311
    new $P3452, "Undef"
  vivify_1311:
    $P3453 = $P3452."key"()
    $P3454 = $P3449."new"($P3451 :named("value"), $P3453 :named("named"))
    $P3455 = $P3445."push"($P3454)
.annotate 'line', 2399
    .return ($P3455)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3463"  :anon :subid("283_1304459385.051") :outer("281_1304459385.051")
    .param pmc param_3466
.annotate 'line', 2403
    new $P3465, "Undef"
    .lex "$lookup", $P3465
    .lex "$_", param_3466
    find_lex $P3467, "self"
    find_lex $P3468, "$_"
    unless_null $P3468, vivify_1314
    new $P3468, "Undef"
  vivify_1314:
    $P3469 = $P3468."value"()
    $P3470 = $P3467."get_object_sc_ref_past"($P3469)
    store_lex "$lookup", $P3470
.annotate 'line', 2404
    find_lex $P3471, "$lookup"
    unless_null $P3471, vivify_1315
    new $P3471, "Undef"
  vivify_1315:
    find_lex $P3472, "$_"
    unless_null $P3472, vivify_1316
    new $P3472, "Undef"
  vivify_1316:
    $P3473 = $P3472."key"()
    $P3471."named"($P3473)
.annotate 'line', 2405
    find_lex $P3474, "$create_call"
    unless_null $P3474, vivify_1317
    new $P3474, "Undef"
  vivify_1317:
    find_lex $P3475, "$lookup"
    unless_null $P3475, vivify_1318
    new $P3475, "Undef"
  vivify_1318:
    $P3476 = $P3474."push"($P3475)
.annotate 'line', 2402
    .return ($P3476)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3498"  :anon :subid("284_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3500 :slurpy
    .param pmc param_3501 :slurpy :named
.annotate 'line', 2420
    .lex "@args", param_3500
    .lex "%named", param_3501
.annotate 'line', 2421
    die "Cannot run code that has not yet been compiled."
.annotate 'line', 2420
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("285_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3504
    .param pmc param_3505
    .param pmc param_3506
    .param pmc param_3507
    .param pmc param_3508
    .param pmc param_3509
.annotate 'line', 2427
    .const 'Sub' $P3532 = "286_1304459385.051" 
    capture_lex $P3532
    .lex "self", param_3504
    .lex "$obj", param_3505
    .lex "$meta_method_name", param_3506
    .lex "$name", param_3507
    .lex "$method_past", param_3508
    .lex "$is_dispatcher", param_3509
.annotate 'line', 2429
    new $P3510, "Undef"
    .lex "$fixups", $P3510
.annotate 'line', 2430
    new $P3511, "Undef"
    .lex "$dummy", $P3511
.annotate 'line', 2475
    new $P3512, "Undef"
    .lex "$slot_past", $P3512
.annotate 'line', 2429
    get_hll_global $P3513, "GLOBAL"
    nqp_get_package_through_who $P3514, $P3513, "PAST"
    get_who $P3515, $P3514
    set $P3516, $P3515["Stmts"]
    $P3517 = $P3516."new"()
    store_lex "$fixups", $P3517
    find_lex $P3518, "$dummy"
    unless_null $P3518, vivify_1323
    new $P3518, "Undef"
  vivify_1323:
.annotate 'line', 2431
    find_lex $P3520, "$method_past"
    unless_null $P3520, vivify_1324
    $P3520 = root_new ['parrot';'Hash']
  vivify_1324:
    set $P3521, $P3520["compile_time_dummy"]
    unless_null $P3521, vivify_1325
    new $P3521, "Undef"
  vivify_1325:
    defined $I3522, $P3521
    if $I3522, if_3519
.annotate 'line', 2438
    find_lex $P3526, "$is_dispatcher"
    unless_null $P3526, vivify_1326
    new $P3526, "Undef"
  vivify_1326:
    if $P3526, if_3525
.annotate 'line', 2454
    find_lex $P3555, "$stub_code"
    unless_null $P3555, vivify_1327
    new $P3555, "Undef"
  vivify_1327:
    clone $P3556, $P3555
    store_lex "$dummy", $P3556
.annotate 'line', 2453
    goto if_3525_end
  if_3525:
.annotate 'line', 2439
    find_lex $P3527, "$method_past"
    unless_null $P3527, vivify_1328
    new $P3527, "Undef"
  vivify_1328:
    $P3527."pirflags"(":instanceof(\"DispatcherSub\")")
.annotate 'line', 2440
    new $P3528, "DispatcherSub"
    find_lex $P3529, "$stub_code"
    unless_null $P3529, vivify_1329
    new $P3529, "Undef"
  vivify_1329:
    assign $P3528, $P3529
    store_lex "$dummy", $P3528
.annotate 'line', 2444
    find_lex $P3530, "$dummy"
    unless_null $P3530, vivify_1330
    new $P3530, "Undef"
  vivify_1330:
    .const 'Sub' $P3532 = "286_1304459385.051" 
    newclosure $P3554, $P3532
    setprop $P3530, "CLONE_CALLBACK", $P3554
  if_3525_end:
.annotate 'line', 2456
    find_lex $P3557, "$dummy"
    unless_null $P3557, vivify_1335
    new $P3557, "Undef"
  vivify_1335:
    find_lex $P3558, "$name"
    unless_null $P3558, vivify_1336
    new $P3558, "Undef"
  vivify_1336:
    set $S3559, $P3558
    assign $P3557, $S3559
.annotate 'line', 2457
    find_lex $P3560, "self"
    find_lex $P3561, "$dummy"
    unless_null $P3561, vivify_1337
    new $P3561, "Undef"
  vivify_1337:
    $P3560."add_code"($P3561)
.annotate 'line', 2458
    find_lex $P3562, "$dummy"
    unless_null $P3562, vivify_1338
    new $P3562, "Undef"
  vivify_1338:
    find_lex $P3563, "$method_past"
    unless_null $P3563, vivify_1339
    $P3563 = root_new ['parrot';'Hash']
    store_lex "$method_past", $P3563
  vivify_1339:
    set $P3563["compile_time_dummy"], $P3562
.annotate 'line', 2434
    goto if_3519_end
  if_3519:
.annotate 'line', 2432
    find_lex $P3523, "$method_past"
    unless_null $P3523, vivify_1340
    $P3523 = root_new ['parrot';'Hash']
  vivify_1340:
    set $P3524, $P3523["compile_time_dummy"]
    unless_null $P3524, vivify_1341
    new $P3524, "Undef"
  vivify_1341:
    store_lex "$dummy", $P3524
  if_3519_end:
.annotate 'line', 2462
    find_lex $P3564, "$dummy"
    unless_null $P3564, vivify_1342
    new $P3564, "Undef"
  vivify_1342:
    find_lex $P3565, "$method_past"
    unless_null $P3565, vivify_1343
    new $P3565, "Undef"
  vivify_1343:
    setprop $P3564, "PAST", $P3565
.annotate 'line', 2465
    find_lex $P3566, "$obj"
    unless_null $P3566, vivify_1344
    new $P3566, "Undef"
  vivify_1344:
    get_how $P3567, $P3566
    find_lex $P3568, "$obj"
    unless_null $P3568, vivify_1345
    new $P3568, "Undef"
  vivify_1345:
    find_lex $P3569, "$name"
    unless_null $P3569, vivify_1346
    new $P3569, "Undef"
  vivify_1346:
    find_lex $P3570, "$dummy"
    unless_null $P3570, vivify_1347
    new $P3570, "Undef"
  vivify_1347:
    find_lex $P3571, "$meta_method_name"
    unless_null $P3571, vivify_1348
    new $P3571, "Undef"
  vivify_1348:
    set $S3572, $P3571
    $P3567.$S3572($P3568, $P3569, $P3570)
.annotate 'line', 2470
    find_lex $P3573, "$fixups"
    unless_null $P3573, vivify_1349
    new $P3573, "Undef"
  vivify_1349:
    get_hll_global $P3574, "GLOBAL"
    nqp_get_package_through_who $P3575, $P3574, "PAST"
    get_who $P3576, $P3575
    set $P3577, $P3576["Op"]
.annotate 'line', 2472
    find_lex $P3578, "self"
    find_lex $P3579, "$dummy"
    unless_null $P3579, vivify_1350
    new $P3579, "Undef"
  vivify_1350:
    $P3580 = $P3578."get_slot_past_for_object"($P3579)
.annotate 'line', 2473
    get_hll_global $P3581, "GLOBAL"
    nqp_get_package_through_who $P3582, $P3581, "PAST"
    get_who $P3583, $P3582
    set $P3584, $P3583["Val"]
    find_lex $P3585, "$method_past"
    unless_null $P3585, vivify_1351
    new $P3585, "Undef"
  vivify_1351:
    $P3586 = $P3584."new"($P3585 :named("value"))
    $P3587 = $P3577."new"($P3580, $P3586, "assign vPP" :named("pirop"))
.annotate 'line', 2470
    $P3573."push"($P3587)
.annotate 'line', 2475
    find_lex $P3588, "self"
    find_lex $P3589, "$obj"
    unless_null $P3589, vivify_1352
    new $P3589, "Undef"
  vivify_1352:
    $P3590 = $P3588."get_slot_past_for_object"($P3589)
    store_lex "$slot_past", $P3590
.annotate 'line', 2476
    find_lex $P3591, "self"
.annotate 'line', 2477
    get_hll_global $P3592, "GLOBAL"
    nqp_get_package_through_who $P3593, $P3592, "PAST"
    get_who $P3594, $P3593
    set $P3595, $P3594["Op"]
    find_lex $P3596, "$meta_method_name"
    unless_null $P3596, vivify_1353
    new $P3596, "Undef"
  vivify_1353:
.annotate 'line', 2479
    get_hll_global $P3597, "GLOBAL"
    nqp_get_package_through_who $P3598, $P3597, "PAST"
    get_who $P3599, $P3598
    set $P3600, $P3599["Op"]
    find_lex $P3601, "$slot_past"
    unless_null $P3601, vivify_1354
    new $P3601, "Undef"
  vivify_1354:
    $P3602 = $P3600."new"($P3601, "get_how PP" :named("pirop"))
    find_lex $P3603, "$slot_past"
    unless_null $P3603, vivify_1355
    new $P3603, "Undef"
  vivify_1355:
    find_lex $P3604, "$name"
    unless_null $P3604, vivify_1356
    new $P3604, "Undef"
  vivify_1356:
.annotate 'line', 2482
    get_hll_global $P3605, "GLOBAL"
    nqp_get_package_through_who $P3606, $P3605, "PAST"
    get_who $P3607, $P3606
    set $P3608, $P3607["Val"]
    find_lex $P3609, "$method_past"
    unless_null $P3609, vivify_1357
    new $P3609, "Undef"
  vivify_1357:
    $P3610 = $P3608."new"($P3609 :named("value"))
    $P3611 = $P3595."new"($P3602, $P3603, $P3604, $P3610, "callmethod" :named("pasttype"), $P3596 :named("name"))
.annotate 'line', 2477
    find_lex $P3612, "$fixups"
    unless_null $P3612, vivify_1358
    new $P3612, "Undef"
  vivify_1358:
    $P3613 = $P3591."add_event"($P3611 :named("deserialize_past"), $P3612 :named("fixup_past"))
.annotate 'line', 2427
    .return ($P3613)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3531"  :anon :subid("286_1304459385.051") :outer("285_1304459385.051")
    .param pmc param_3533
    .param pmc param_3534
.annotate 'line', 2444
    .lex "$orig", param_3533
    .lex "$clone", param_3534
.annotate 'line', 2445
    find_lex $P3535, "self"
    find_lex $P3536, "$clone"
    unless_null $P3536, vivify_1331
    new $P3536, "Undef"
  vivify_1331:
    $P3535."add_code"($P3536)
.annotate 'line', 2446
    find_lex $P3537, "$fixups"
    unless_null $P3537, vivify_1332
    new $P3537, "Undef"
  vivify_1332:
    get_hll_global $P3538, "GLOBAL"
    nqp_get_package_through_who $P3539, $P3538, "PAST"
    get_who $P3540, $P3539
    set $P3541, $P3540["Op"]
.annotate 'line', 2448
    find_lex $P3542, "self"
    find_lex $P3543, "$clone"
    unless_null $P3543, vivify_1333
    new $P3543, "Undef"
  vivify_1333:
    $P3544 = $P3542."get_slot_past_for_object"($P3543)
.annotate 'line', 2449
    get_hll_global $P3545, "GLOBAL"
    nqp_get_package_through_who $P3546, $P3545, "PAST"
    get_who $P3547, $P3546
    set $P3548, $P3547["Val"]
    find_lex $P3549, "$orig"
    unless_null $P3549, vivify_1334
    new $P3549, "Undef"
  vivify_1334:
    getprop $P3550, "PAST", $P3549
    $P3551 = $P3548."new"($P3550 :named("value"))
    $P3552 = $P3541."new"($P3544, $P3551, "assign vPP" :named("pirop"))
.annotate 'line', 2446
    $P3553 = $P3537."push"($P3552)
.annotate 'line', 2444
    .return ($P3553)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_routine_signature"  :subid("287_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3615
    .param pmc param_3616
    .param pmc param_3617
    .param pmc param_3618
.annotate 'line', 2488
    .lex "self", param_3615
    .lex "$routine", param_3616
    .lex "$types", param_3617
    .lex "$definednesses", param_3618
.annotate 'line', 2491
    new $P3619, "Undef"
    .lex "$fixup", $P3619
.annotate 'line', 2498
    new $P3620, "Undef"
    .lex "$des", $P3620
.annotate 'line', 2491
    get_hll_global $P3621, "GLOBAL"
    nqp_get_package_through_who $P3622, $P3621, "PAST"
    get_who $P3623, $P3622
    set $P3624, $P3623["Op"]
    find_lex $P3625, "$types"
    unless_null $P3625, vivify_1359
    new $P3625, "Undef"
  vivify_1359:
    find_lex $P3626, "$definednesses"
    unless_null $P3626, vivify_1360
    new $P3626, "Undef"
  vivify_1360:
    $P3627 = $P3624."new"($P3625, $P3626, "set_sub_multisig vPPP" :named("pirop"))
    store_lex "$fixup", $P3627
.annotate 'line', 2492
    find_lex $P3629, "$routine"
    unless_null $P3629, vivify_1361
    $P3629 = root_new ['parrot';'Hash']
  vivify_1361:
    set $P3630, $P3629["compile_time_dummy"]
    unless_null $P3630, vivify_1362
    new $P3630, "Undef"
  vivify_1362:
    defined $I3631, $P3630
    if $I3631, if_3628
.annotate 'line', 2496
    find_lex $P3637, "$fixup"
    unless_null $P3637, vivify_1363
    new $P3637, "Undef"
  vivify_1363:
    get_hll_global $P3638, "GLOBAL"
    nqp_get_package_through_who $P3639, $P3638, "PAST"
    get_who $P3640, $P3639
    set $P3641, $P3640["Val"]
    find_lex $P3642, "$routine"
    unless_null $P3642, vivify_1364
    new $P3642, "Undef"
  vivify_1364:
    $P3643 = $P3641."new"($P3642 :named("value"))
    $P3637."unshift"($P3643)
.annotate 'line', 2495
    goto if_3628_end
  if_3628:
.annotate 'line', 2493
    find_lex $P3632, "$fixup"
    unless_null $P3632, vivify_1365
    new $P3632, "Undef"
  vivify_1365:
    find_lex $P3633, "self"
    find_lex $P3634, "$routine"
    unless_null $P3634, vivify_1366
    $P3634 = root_new ['parrot';'Hash']
  vivify_1366:
    set $P3635, $P3634["compile_time_dummy"]
    unless_null $P3635, vivify_1367
    new $P3635, "Undef"
  vivify_1367:
    $P3636 = $P3633."get_slot_past_for_object"($P3635)
    $P3632."unshift"($P3636)
  if_3628_end:
.annotate 'line', 2498
    get_hll_global $P3644, "GLOBAL"
    nqp_get_package_through_who $P3645, $P3644, "PAST"
    get_who $P3646, $P3645
    set $P3647, $P3646["Op"]
.annotate 'line', 2499
    get_hll_global $P3648, "GLOBAL"
    nqp_get_package_through_who $P3649, $P3648, "PAST"
    get_who $P3650, $P3649
    set $P3651, $P3650["Val"]
    find_lex $P3652, "$routine"
    unless_null $P3652, vivify_1368
    new $P3652, "Undef"
  vivify_1368:
    $P3653 = $P3651."new"($P3652 :named("value"))
    find_lex $P3654, "$types"
    unless_null $P3654, vivify_1369
    new $P3654, "Undef"
  vivify_1369:
    find_lex $P3655, "$definednesses"
    unless_null $P3655, vivify_1370
    new $P3655, "Undef"
  vivify_1370:
    $P3656 = $P3647."new"($P3653, $P3654, $P3655, "set_sub_multisig vPPP" :named("pirop"))
.annotate 'line', 2498
    store_lex "$des", $P3656
.annotate 'line', 2501
    find_lex $P3657, "self"
    find_lex $P3658, "$des"
    unless_null $P3658, vivify_1371
    new $P3658, "Undef"
  vivify_1371:
    find_lex $P3659, "$fixup"
    unless_null $P3659, vivify_1372
    new $P3659, "Undef"
  vivify_1372:
    $P3660 = $P3657."add_event"($P3658 :named("deserialize_past"), $P3659 :named("fixup_past"))
.annotate 'line', 2488
    .return ($P3660)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_set_body_block"  :subid("288_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3662
    .param pmc param_3663
    .param pmc param_3664
.annotate 'line', 2505
    .const 'Sub' $P3675 = "289_1304459385.051" 
    capture_lex $P3675
    .lex "self", param_3662
    .lex "$obj", param_3663
    .lex "$body_past", param_3664
.annotate 'line', 2516
    new $P3665, "Undef"
    .lex "$fixups", $P3665
.annotate 'line', 2517
    new $P3666, "Undef"
    .lex "$dummy", $P3666
.annotate 'line', 2552
    new $P3667, "Undef"
    .lex "$slot_past", $P3667
.annotate 'line', 2553
    new $P3668, "Undef"
    .lex "$des", $P3668
.annotate 'line', 2516
    get_hll_global $P3669, "GLOBAL"
    nqp_get_package_through_who $P3670, $P3669, "PAST"
    get_who $P3671, $P3670
    set $P3672, $P3671["Stmts"]
    $P3673 = $P3672."new"()
    store_lex "$fixups", $P3673
.annotate 'line', 2517
    .const 'Sub' $P3675 = "289_1304459385.051" 
    newclosure $P3746, $P3675
    store_lex "$dummy", $P3746
.annotate 'line', 2549
    find_lex $P3747, "$obj"
    unless_null $P3747, vivify_1390
    new $P3747, "Undef"
  vivify_1390:
    get_how $P3748, $P3747
    find_lex $P3749, "$obj"
    unless_null $P3749, vivify_1391
    new $P3749, "Undef"
  vivify_1391:
    find_lex $P3750, "$dummy"
    unless_null $P3750, vivify_1392
    new $P3750, "Undef"
  vivify_1392:
    $P3748."set_body_block"($P3749, $P3750)
.annotate 'line', 2552
    find_lex $P3751, "self"
    find_lex $P3752, "$obj"
    unless_null $P3752, vivify_1393
    new $P3752, "Undef"
  vivify_1393:
    $P3753 = $P3751."get_slot_past_for_object"($P3752)
    store_lex "$slot_past", $P3753
.annotate 'line', 2553
    get_hll_global $P3754, "GLOBAL"
    nqp_get_package_through_who $P3755, $P3754, "PAST"
    get_who $P3756, $P3755
    set $P3757, $P3756["Op"]
.annotate 'line', 2555
    get_hll_global $P3758, "GLOBAL"
    nqp_get_package_through_who $P3759, $P3758, "PAST"
    get_who $P3760, $P3759
    set $P3761, $P3760["Op"]
    find_lex $P3762, "$slot_past"
    unless_null $P3762, vivify_1394
    new $P3762, "Undef"
  vivify_1394:
    $P3763 = $P3761."new"($P3762, "get_how PP" :named("pirop"))
    find_lex $P3764, "$slot_past"
    unless_null $P3764, vivify_1395
    new $P3764, "Undef"
  vivify_1395:
.annotate 'line', 2557
    get_hll_global $P3765, "GLOBAL"
    nqp_get_package_through_who $P3766, $P3765, "PAST"
    get_who $P3767, $P3766
    set $P3768, $P3767["Val"]
    find_lex $P3769, "$body_past"
    unless_null $P3769, vivify_1396
    new $P3769, "Undef"
  vivify_1396:
    $P3770 = $P3768."new"($P3769 :named("value"))
    $P3771 = $P3757."new"($P3763, $P3764, $P3770, "callmethod" :named("pasttype"), "set_body_block" :named("name"))
.annotate 'line', 2553
    store_lex "$des", $P3771
.annotate 'line', 2560
    find_lex $P3772, "self"
    find_lex $P3773, "$des"
    unless_null $P3773, vivify_1397
    new $P3773, "Undef"
  vivify_1397:
    find_lex $P3774, "$fixups"
    unless_null $P3774, vivify_1398
    new $P3774, "Undef"
  vivify_1398:
    $P3775 = $P3772."add_event"($P3773 :named("deserialize_past"), $P3774 :named("fixup_past"))
.annotate 'line', 2505
    .return ($P3775)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3674"  :anon :subid("289_1304459385.051") :outer("288_1304459385.051")
    .param pmc param_3676 :slurpy
.annotate 'line', 2517
    .const 'Sub' $P3714 = "291_1304459385.051" 
    capture_lex $P3714
    .const 'Sub' $P3694 = "290_1304459385.051" 
    capture_lex $P3694
    .lex "@type_args", param_3676
.annotate 'line', 2519
    new $P3677, "Undef"
    .lex "$invoke_body", $P3677
    get_hll_global $P3678, "GLOBAL"
    nqp_get_package_through_who $P3679, $P3678, "PAST"
    get_who $P3680, $P3679
    set $P3681, $P3680["Op"]
.annotate 'line', 2521
    get_hll_global $P3682, "GLOBAL"
    nqp_get_package_through_who $P3683, $P3682, "PAST"
    get_who $P3684, $P3683
    set $P3685, $P3684["Val"]
    find_lex $P3686, "$body_past"
    unless_null $P3686, vivify_1373
    new $P3686, "Undef"
  vivify_1373:
    $P3687 = $P3685."new"($P3686 :named("value"))
    $P3688 = $P3681."new"($P3687, "call" :named("pasttype"))
.annotate 'line', 2519
    store_lex "$invoke_body", $P3688
.annotate 'line', 2523
    find_lex $P3690, "@type_args"
    unless_null $P3690, vivify_1374
    $P3690 = root_new ['parrot';'ResizablePMCArray']
  vivify_1374:
    defined $I3691, $P3690
    unless $I3691, for_undef_1375
    iter $P3689, $P3690
    new $P3702, 'ExceptionHandler'
    set_label $P3702, loop3701_handler
    $P3702."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3702
  loop3701_test:
    unless $P3689, loop3701_done
    shift $P3692, $P3689
  loop3701_redo:
    .const 'Sub' $P3694 = "290_1304459385.051" 
    capture_lex $P3694
    $P3694($P3692)
  loop3701_next:
    goto loop3701_test
  loop3701_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3703, exception, 'type'
    eq $P3703, .CONTROL_LOOP_NEXT, loop3701_next
    eq $P3703, .CONTROL_LOOP_REDO, loop3701_redo
  loop3701_done:
    pop_eh 
  for_undef_1375:
.annotate 'line', 2526
    find_lex $P3704, "$fixups"
    unless_null $P3704, vivify_1378
    new $P3704, "Undef"
  vivify_1378:
    find_lex $P3705, "$invoke_body"
    unless_null $P3705, vivify_1379
    new $P3705, "Undef"
  vivify_1379:
    $P3704."push"($P3705)
.annotate 'line', 2529
    find_lex $P3707, "$obj"
    unless_null $P3707, vivify_1380
    new $P3707, "Undef"
  vivify_1380:
    get_how $P3708, $P3707
    find_lex $P3709, "$obj"
    unless_null $P3709, vivify_1381
    new $P3709, "Undef"
  vivify_1381:
    $P3710 = $P3708."methods"($P3709, 1 :named("local"))
    defined $I3711, $P3710
    unless $I3711, for_undef_1382
    iter $P3706, $P3710
    new $P3744, 'ExceptionHandler'
    set_label $P3744, loop3743_handler
    $P3744."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3744
  loop3743_test:
    unless $P3706, loop3743_done
    shift $P3712, $P3706
  loop3743_redo:
    .const 'Sub' $P3714 = "291_1304459385.051" 
    capture_lex $P3714
    $P3714($P3712)
  loop3743_next:
    goto loop3743_test
  loop3743_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3745, exception, 'type'
    eq $P3745, .CONTROL_LOOP_NEXT, loop3743_next
    eq $P3745, .CONTROL_LOOP_REDO, loop3743_redo
  loop3743_done:
    pop_eh 
  for_undef_1382:
.annotate 'line', 2517
    .return ($P3706)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3693"  :anon :subid("290_1304459385.051") :outer("289_1304459385.051")
    .param pmc param_3695
.annotate 'line', 2523
    .lex "$_", param_3695
.annotate 'line', 2524
    find_lex $P3696, "$invoke_body"
    unless_null $P3696, vivify_1376
    new $P3696, "Undef"
  vivify_1376:
    find_lex $P3697, "self"
    find_lex $P3698, "$_"
    unless_null $P3698, vivify_1377
    new $P3698, "Undef"
  vivify_1377:
    $P3699 = $P3697."get_slot_past_for_object"($P3698)
    $P3700 = $P3696."push"($P3699)
.annotate 'line', 2523
    .return ($P3700)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3713"  :anon :subid("291_1304459385.051") :outer("289_1304459385.051")
    .param pmc param_3715
.annotate 'line', 2529
    .const 'Sub' $P3718 = "292_1304459385.051" 
    capture_lex $P3718
    .lex "$_", param_3715
.annotate 'line', 2530
    find_lex $P3716, "$_"
    unless_null $P3716, vivify_1383
    new $P3716, "Undef"
  vivify_1383:
    .const 'Sub' $P3718 = "292_1304459385.051" 
    newclosure $P3742, $P3718
    setprop $P3716, "REIFY_CALLBACK", $P3742
.annotate 'line', 2529
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3717"  :anon :subid("292_1304459385.051") :outer("291_1304459385.051")
    .param pmc param_3719
.annotate 'line', 2530
    .lex "$meth", param_3719
.annotate 'line', 2532
    new $P3720, "Undef"
    .lex "$clone", $P3720
    find_lex $P3721, "$meth"
    unless_null $P3721, vivify_1384
    new $P3721, "Undef"
  vivify_1384:
    clone $P3722, $P3721
    store_lex "$clone", $P3722
.annotate 'line', 2533
    find_lex $P3723, "self"
    find_lex $P3724, "$clone"
    unless_null $P3724, vivify_1385
    new $P3724, "Undef"
  vivify_1385:
    $P3723."add_code"($P3724)
.annotate 'line', 2536
    find_lex $P3725, "$fixups"
    unless_null $P3725, vivify_1386
    new $P3725, "Undef"
  vivify_1386:
    get_hll_global $P3726, "GLOBAL"
    nqp_get_package_through_who $P3727, $P3726, "PAST"
    get_who $P3728, $P3727
    set $P3729, $P3728["Op"]
.annotate 'line', 2538
    find_lex $P3730, "self"
    find_lex $P3731, "$clone"
    unless_null $P3731, vivify_1387
    new $P3731, "Undef"
  vivify_1387:
    $P3732 = $P3730."get_slot_past_for_object"($P3731)
.annotate 'line', 2539
    get_hll_global $P3733, "GLOBAL"
    nqp_get_package_through_who $P3734, $P3733, "PAST"
    get_who $P3735, $P3734
    set $P3736, $P3735["Val"]
    find_lex $P3737, "$meth"
    unless_null $P3737, vivify_1388
    new $P3737, "Undef"
  vivify_1388:
    getprop $P3738, "PAST", $P3737
    $P3739 = $P3736."new"($P3738 :named("value"))
    $P3740 = $P3729."new"($P3732, $P3739, "assign vPP" :named("pirop"))
.annotate 'line', 2536
    $P3725."push"($P3740)
    find_lex $P3741, "$clone"
    unless_null $P3741, vivify_1389
    new $P3741, "Undef"
  vivify_1389:
.annotate 'line', 2530
    .return ($P3741)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("293_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3777
    .param pmc param_3778
    .param pmc param_3779
    .param pmc param_3780
.annotate 'line', 2565
    .lex "self", param_3777
    .lex "$obj", param_3778
    .lex "$meta_method_name", param_3779
    .lex "$to_add", param_3780
.annotate 'line', 2570
    new $P3781, "Undef"
    .lex "$slot_past", $P3781
.annotate 'line', 2567
    find_lex $P3782, "$obj"
    unless_null $P3782, vivify_1399
    new $P3782, "Undef"
  vivify_1399:
    get_how $P3783, $P3782
    find_lex $P3784, "$obj"
    unless_null $P3784, vivify_1400
    new $P3784, "Undef"
  vivify_1400:
    find_lex $P3785, "$to_add"
    unless_null $P3785, vivify_1401
    new $P3785, "Undef"
  vivify_1401:
    find_lex $P3786, "$meta_method_name"
    unless_null $P3786, vivify_1402
    new $P3786, "Undef"
  vivify_1402:
    set $S3787, $P3786
    $P3783.$S3787($P3784, $P3785)
.annotate 'line', 2570
    find_lex $P3788, "self"
    find_lex $P3789, "$obj"
    unless_null $P3789, vivify_1403
    new $P3789, "Undef"
  vivify_1403:
    $P3790 = $P3788."get_slot_past_for_object"($P3789)
    store_lex "$slot_past", $P3790
.annotate 'line', 2571
    find_lex $P3791, "self"
    get_hll_global $P3792, "GLOBAL"
    nqp_get_package_through_who $P3793, $P3792, "PAST"
    get_who $P3794, $P3793
    set $P3795, $P3794["Op"]
    find_lex $P3796, "$meta_method_name"
    unless_null $P3796, vivify_1404
    new $P3796, "Undef"
  vivify_1404:
.annotate 'line', 2573
    get_hll_global $P3797, "GLOBAL"
    nqp_get_package_through_who $P3798, $P3797, "PAST"
    get_who $P3799, $P3798
    set $P3800, $P3799["Op"]
    find_lex $P3801, "$slot_past"
    unless_null $P3801, vivify_1405
    new $P3801, "Undef"
  vivify_1405:
    $P3802 = $P3800."new"($P3801, "get_how PP" :named("pirop"))
    find_lex $P3803, "$slot_past"
    unless_null $P3803, vivify_1406
    new $P3803, "Undef"
  vivify_1406:
.annotate 'line', 2575
    find_lex $P3804, "self"
    find_lex $P3805, "$to_add"
    unless_null $P3805, vivify_1407
    new $P3805, "Undef"
  vivify_1407:
    $P3806 = $P3804."get_object_sc_ref_past"($P3805)
    $P3807 = $P3795."new"($P3802, $P3803, $P3806, "callmethod" :named("pasttype"), $P3796 :named("name"))
.annotate 'line', 2571
    $P3808 = $P3791."add_event"($P3807 :named("deserialize_past"))
.annotate 'line', 2565
    .return ($P3808)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("294_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3810
    .param pmc param_3811
.annotate 'line', 2580
    .lex "self", param_3810
    .lex "$obj", param_3811
.annotate 'line', 2585
    new $P3812, "Undef"
    .lex "$slot_past", $P3812
.annotate 'line', 2582
    find_lex $P3813, "$obj"
    unless_null $P3813, vivify_1408
    new $P3813, "Undef"
  vivify_1408:
    get_how $P3814, $P3813
    find_lex $P3815, "$obj"
    unless_null $P3815, vivify_1409
    new $P3815, "Undef"
  vivify_1409:
    $P3814."compose"($P3815)
.annotate 'line', 2585
    find_lex $P3816, "self"
    find_lex $P3817, "$obj"
    unless_null $P3817, vivify_1410
    new $P3817, "Undef"
  vivify_1410:
    $P3818 = $P3816."get_slot_past_for_object"($P3817)
    store_lex "$slot_past", $P3818
.annotate 'line', 2586
    find_lex $P3819, "self"
    get_hll_global $P3820, "GLOBAL"
    nqp_get_package_through_who $P3821, $P3820, "PAST"
    get_who $P3822, $P3821
    set $P3823, $P3822["Op"]
.annotate 'line', 2588
    get_hll_global $P3824, "GLOBAL"
    nqp_get_package_through_who $P3825, $P3824, "PAST"
    get_who $P3826, $P3825
    set $P3827, $P3826["Op"]
    find_lex $P3828, "$slot_past"
    unless_null $P3828, vivify_1411
    new $P3828, "Undef"
  vivify_1411:
    $P3829 = $P3827."new"($P3828, "get_how PP" :named("pirop"))
    find_lex $P3830, "$slot_past"
    unless_null $P3830, vivify_1412
    new $P3830, "Undef"
  vivify_1412:
    $P3831 = $P3823."new"($P3829, $P3830, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2586
    $P3832 = $P3819."add_event"($P3831 :named("deserialize_past"))
.annotate 'line', 2580
    .return ($P3832)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("295_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3834
.annotate 'line', 2594
    .lex "self", param_3834
    find_lex $P3835, "self"
    find_lex $P3836, "$?CLASS"
    getattribute $P3837, $P3835, $P3836, "$!sc"
    unless_null $P3837, vivify_1413
    new $P3837, "Undef"
  vivify_1413:
    .return ($P3837)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("296_1304459385.051") :outer("257_1304459385.051")
    .param pmc param_3839
.annotate 'line', 2600
    .const 'Sub' $P3859 = "297_1304459385.051" 
    capture_lex $P3859
    .lex "self", param_3839
.annotate 'line', 2601
    new $P3840, "Undef"
    .lex "$des", $P3840
.annotate 'line', 2602
    new $P3841, "Undef"
    .lex "$fix", $P3841
.annotate 'line', 2601
    get_hll_global $P3842, "GLOBAL"
    nqp_get_package_through_who $P3843, $P3842, "PAST"
    get_who $P3844, $P3843
    set $P3845, $P3844["Stmts"]
    $P3846 = $P3845."new"()
    store_lex "$des", $P3846
.annotate 'line', 2602
    get_hll_global $P3847, "GLOBAL"
    nqp_get_package_through_who $P3848, $P3847, "PAST"
    get_who $P3849, $P3848
    set $P3850, $P3849["Stmts"]
    $P3851 = $P3850."new"()
    store_lex "$fix", $P3851
.annotate 'line', 2603
    find_lex $P3853, "self"
    find_lex $P3854, "$?CLASS"
    getattribute $P3855, $P3853, $P3854, "@!event_stream"
    unless_null $P3855, vivify_1414
    $P3855 = root_new ['parrot';'ResizablePMCArray']
  vivify_1414:
    defined $I3856, $P3855
    unless $I3856, for_undef_1415
    iter $P3852, $P3855
    new $P3878, 'ExceptionHandler'
    set_label $P3878, loop3877_handler
    $P3878."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3878
  loop3877_test:
    unless $P3852, loop3877_done
    shift $P3857, $P3852
  loop3877_redo:
    .const 'Sub' $P3859 = "297_1304459385.051" 
    capture_lex $P3859
    $P3859($P3857)
  loop3877_next:
    goto loop3877_test
  loop3877_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3879, exception, 'type'
    eq $P3879, .CONTROL_LOOP_NEXT, loop3877_next
    eq $P3879, .CONTROL_LOOP_REDO, loop3877_redo
  loop3877_done:
    pop_eh 
  for_undef_1415:
.annotate 'line', 2607
    find_dynamic_lex $P3880, "$/"
    get_hll_global $P3881, "GLOBAL"
    nqp_get_package_through_who $P3882, $P3881, "PAST"
    get_who $P3883, $P3882
    set $P3884, $P3883["Op"]
.annotate 'line', 2609
    get_hll_global $P3885, "GLOBAL"
    nqp_get_package_through_who $P3886, $P3885, "PAST"
    get_who $P3887, $P3886
    set $P3888, $P3887["Op"]
.annotate 'line', 2611
    get_hll_global $P3889, "GLOBAL"
    nqp_get_package_through_who $P3890, $P3889, "PAST"
    get_who $P3891, $P3890
    set $P3892, $P3891["Op"]
    find_lex $P3893, "self"
    find_lex $P3894, "$?CLASS"
    getattribute $P3895, $P3893, $P3894, "$!handle"
    unless_null $P3895, vivify_1422
    new $P3895, "Undef"
  vivify_1422:
    $P3896 = $P3892."new"($P3895, "nqp_get_sc Ps" :named("pirop"))
    $P3897 = $P3888."new"($P3896, "isnull IP" :named("pirop"))
.annotate 'line', 2613
    get_hll_global $P3898, "GLOBAL"
    nqp_get_package_through_who $P3899, $P3898, "PAST"
    get_who $P3900, $P3899
    set $P3901, $P3900["Stmts"]
.annotate 'line', 2614
    get_hll_global $P3902, "GLOBAL"
    nqp_get_package_through_who $P3903, $P3902, "PAST"
    get_who $P3904, $P3903
    set $P3905, $P3904["Op"]
    $P3906 = $P3905."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2615
    get_hll_global $P3907, "GLOBAL"
    nqp_get_package_through_who $P3908, $P3907, "PAST"
    get_who $P3909, $P3908
    set $P3910, $P3909["Op"]
.annotate 'line', 2617
    get_hll_global $P3911, "GLOBAL"
    nqp_get_package_through_who $P3912, $P3911, "PAST"
    get_who $P3913, $P3912
    set $P3914, $P3913["Op"]
    $P3915 = $P3914."new"("getinterp P" :named("pirop"))
.annotate 'line', 2618
    get_hll_global $P3916, "GLOBAL"
    nqp_get_package_through_who $P3917, $P3916, "PAST"
    get_who $P3918, $P3917
    set $P3919, $P3918["Op"]
    $P3920 = $P3919."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2619
    get_hll_global $P3921, "GLOBAL"
    nqp_get_package_through_who $P3922, $P3921, "PAST"
    get_who $P3923, $P3922
    set $P3924, $P3923["Op"]
    $P3925 = $P3924."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3926 = $P3910."new"($P3915, $P3920, $P3925, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2621
    get_hll_global $P3927, "GLOBAL"
    nqp_get_package_through_who $P3928, $P3927, "PAST"
    get_who $P3929, $P3928
    set $P3930, $P3929["Op"]
.annotate 'line', 2623
    get_hll_global $P3931, "GLOBAL"
    nqp_get_package_through_who $P3932, $P3931, "PAST"
    get_who $P3933, $P3932
    set $P3934, $P3933["Var"]
    $P3935 = $P3934."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2624
    get_hll_global $P3936, "GLOBAL"
    nqp_get_package_through_who $P3937, $P3936, "PAST"
    get_who $P3938, $P3937
    set $P3939, $P3938["Op"]
    find_lex $P3940, "self"
    find_lex $P3941, "$?CLASS"
    getattribute $P3942, $P3940, $P3941, "$!handle"
    unless_null $P3942, vivify_1423
    new $P3942, "Undef"
  vivify_1423:
    $P3943 = $P3939."new"($P3942, "nqp_create_sc Ps" :named("pirop"))
    $P3944 = $P3930."new"($P3935, $P3943, "bind" :named("pasttype"))
.annotate 'line', 2621
    find_lex $P3945, "$des"
    unless_null $P3945, vivify_1424
    new $P3945, "Undef"
  vivify_1424:
    $P3946 = $P3901."new"($P3906, $P3926, $P3944, $P3945)
.annotate 'line', 2613
    find_lex $P3947, "$fix"
    unless_null $P3947, vivify_1425
    new $P3947, "Undef"
  vivify_1425:
    $P3948 = $P3884."new"($P3897, $P3946, $P3947, "if" :named("pasttype"))
.annotate 'line', 2607
    $P3949 = $P3880."!make"($P3948)
.annotate 'line', 2600
    .return ($P3949)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3858"  :anon :subid("297_1304459385.051") :outer("296_1304459385.051")
    .param pmc param_3860
.annotate 'line', 2603
    .lex "$_", param_3860
.annotate 'line', 2604
    find_lex $P3862, "$_"
    unless_null $P3862, vivify_1416
    new $P3862, "Undef"
  vivify_1416:
    $P3863 = $P3862."deserialize_past"()
    defined $I3864, $P3863
    unless $I3864, if_3861_end
    find_lex $P3865, "$des"
    unless_null $P3865, vivify_1417
    new $P3865, "Undef"
  vivify_1417:
    find_lex $P3866, "$_"
    unless_null $P3866, vivify_1418
    new $P3866, "Undef"
  vivify_1418:
    $P3867 = $P3866."deserialize_past"()
    $P3865."push"($P3867)
  if_3861_end:
.annotate 'line', 2605
    find_lex $P3870, "$_"
    unless_null $P3870, vivify_1419
    new $P3870, "Undef"
  vivify_1419:
    $P3871 = $P3870."fixup_past"()
    defined $I3872, $P3871
    if $I3872, if_3869
    new $P3868, 'Integer'
    set $P3868, $I3872
    goto if_3869_end
  if_3869:
    find_lex $P3873, "$fix"
    unless_null $P3873, vivify_1420
    new $P3873, "Undef"
  vivify_1420:
    find_lex $P3874, "$_"
    unless_null $P3874, vivify_1421
    new $P3874, "Undef"
  vivify_1421:
    $P3875 = $P3874."fixup_past"()
    $P3876 = $P3873."push"($P3875)
    set $P3868, $P3876
  if_3869_end:
.annotate 'line', 2603
    .return ($P3868)
.end


.HLL "nqp"

.namespace []
.sub "_block3958" :load :anon :subid("298_1304459385.051")
.annotate 'line', 1064
    .const 'Sub' $P3960 = "10_1304459385.051" 
    $P3961 = $P3960()
    .return ($P3961)
.end

