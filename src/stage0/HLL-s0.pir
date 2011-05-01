
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304282264.655")
.annotate 'line', 0
    .const 'Sub' $P2957 = "299_1304282264.655" 
    capture_lex $P2957
    .const 'Sub' $P2523 = "279_1304282264.655" 
    capture_lex $P2523
    .const 'Sub' $P2440 = "271_1304282264.655" 
    capture_lex $P2440
    .const 'Sub' $P1261 = "204_1304282264.655" 
    capture_lex $P1261
    .const 'Sub' $P571 = "157_1304282264.655" 
    capture_lex $P571
    .const 'Sub' $P17 = "11_1304282264.655" 
    capture_lex $P17
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
.annotate 'line', 1791
    new $P15, "Undef"
    .lex "$compiler", $P15
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
    .const 'Sub' $P17 = "11_1304282264.655" 
    capture_lex $P17
    $P17()
.annotate 'line', 867
    .const 'Sub' $P571 = "157_1304282264.655" 
    capture_lex $P571
    $P571()
.annotate 'line', 1072
    .const 'Sub' $P1261 = "204_1304282264.655" 
    capture_lex $P1261
    $P1261()
.annotate 'line', 1791
    get_hll_global $P2433, "GLOBAL"
    nqp_get_package_through_who $P2434, $P2433, "HLL"
    get_who $P2435, $P2434
    set $P2436, $P2435["Compiler"]
    $P2437 = $P2436."new"()
    store_lex "$compiler", $P2437
.annotate 'line', 1792
    find_lex $P2438, "$compiler"
    unless_null $P2438, vivify_1068
    new $P2438, "Undef"
  vivify_1068:
    $P2438."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2440 = "271_1304282264.655" 
    capture_lex $P2440
    $P2440()
.annotate 'line', 1918
    .const 'Sub' $P2523 = "279_1304282264.655" 
    capture_lex $P2523
    $P2523()
.annotate 'line', 2096
    .const 'Sub' $P2957 = "299_1304282264.655" 
    capture_lex $P2957
    $P3923 = $P2957()
.annotate 'line', 1
    .return ($P3923)
.annotate 'line', 1064
    .const 'Sub' $P3925 = "336_1304282264.655" 
.annotate 'line', 1
    .return ($P3925)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post337") :outer("10_1304282264.655")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304282264.655" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3929, "1304282255.673"
    isnull $I3930, $P3929
    if $I3930, if_3928
    .const 'Sub' $P5064 = "10_1304282264.655" 
    $P5065 = $P5064."get_lexinfo"()
    nqp_get_sc_object $P5066, "1304282255.673", 0
    $P5065."set_static_lexpad_value"("GLOBALish", $P5066)
    .const 'Sub' $P5067 = "10_1304282264.655" 
    $P5068 = $P5067."get_lexinfo"()
    $P5068."finish_static_lexpad"()
    .const 'Sub' $P5069 = "10_1304282264.655" 
    $P5070 = $P5069."get_lexinfo"()
    nqp_get_sc_object $P5071, "1304282255.673", 0
    $P5070."set_static_lexpad_value"("$?PACKAGE", $P5071)
    .const 'Sub' $P5072 = "10_1304282264.655" 
    $P5073 = $P5072."get_lexinfo"()
    $P5073."finish_static_lexpad"()
    nqp_get_sc_object $P5074, "1304282255.673", 2
    .const 'Sub' $P5075 = "12_1304282264.655" 
    copy $P5074, $P5075
    nqp_get_sc_object $P5076, "1304282255.673", 3
    .const 'Sub' $P5077 = "14_1304282264.655" 
    copy $P5076, $P5077
    nqp_get_sc_object $P5078, "1304282255.673", 4
    .const 'Sub' $P5079 = "15_1304282264.655" 
    copy $P5078, $P5079
    nqp_get_sc_object $P5080, "1304282255.673", 5
    .const 'Sub' $P5081 = "17_1304282264.655" 
    copy $P5080, $P5081
    nqp_get_sc_object $P5082, "1304282255.673", 6
    .const 'Sub' $P5083 = "18_1304282264.655" 
    copy $P5082, $P5083
    nqp_get_sc_object $P5084, "1304282255.673", 7
    .const 'Sub' $P5085 = "19_1304282264.655" 
    copy $P5084, $P5085
    nqp_get_sc_object $P5086, "1304282255.673", 8
    .const 'Sub' $P5087 = "20_1304282264.655" 
    copy $P5086, $P5087
    nqp_get_sc_object $P5088, "1304282255.673", 9
    .const 'Sub' $P5089 = "21_1304282264.655" 
    copy $P5088, $P5089
    nqp_get_sc_object $P5090, "1304282255.673", 10
    .const 'Sub' $P5091 = "22_1304282264.655" 
    copy $P5090, $P5091
    nqp_get_sc_object $P5092, "1304282255.673", 11
    .const 'Sub' $P5093 = "23_1304282264.655" 
    copy $P5092, $P5093
    nqp_get_sc_object $P5094, "1304282255.673", 12
    .const 'Sub' $P5095 = "24_1304282264.655" 
    copy $P5094, $P5095
    nqp_get_sc_object $P5096, "1304282255.673", 13
    .const 'Sub' $P5097 = "25_1304282264.655" 
    copy $P5096, $P5097
    nqp_get_sc_object $P5098, "1304282255.673", 14
    .const 'Sub' $P5099 = "26_1304282264.655" 
    copy $P5098, $P5099
    nqp_get_sc_object $P5100, "1304282255.673", 15
    .const 'Sub' $P5101 = "27_1304282264.655" 
    copy $P5100, $P5101
    nqp_get_sc_object $P5102, "1304282255.673", 16
    .const 'Sub' $P5103 = "28_1304282264.655" 
    copy $P5102, $P5103
    nqp_get_sc_object $P5104, "1304282255.673", 17
    .const 'Sub' $P5105 = "29_1304282264.655" 
    copy $P5104, $P5105
    nqp_get_sc_object $P5106, "1304282255.673", 18
    .const 'Sub' $P5107 = "30_1304282264.655" 
    copy $P5106, $P5107
    nqp_get_sc_object $P5108, "1304282255.673", 19
    .const 'Sub' $P5109 = "32_1304282264.655" 
    copy $P5108, $P5109
    nqp_get_sc_object $P5110, "1304282255.673", 20
    .const 'Sub' $P5111 = "33_1304282264.655" 
    copy $P5110, $P5111
    nqp_get_sc_object $P5112, "1304282255.673", 21
    .const 'Sub' $P5113 = "35_1304282264.655" 
    copy $P5112, $P5113
    nqp_get_sc_object $P5114, "1304282255.673", 22
    .const 'Sub' $P5115 = "36_1304282264.655" 
    copy $P5114, $P5115
    nqp_get_sc_object $P5116, "1304282255.673", 23
    .const 'Sub' $P5117 = "38_1304282264.655" 
    copy $P5116, $P5117
    nqp_get_sc_object $P5118, "1304282255.673", 24
    .const 'Sub' $P5119 = "39_1304282264.655" 
    copy $P5118, $P5119
    nqp_get_sc_object $P5120, "1304282255.673", 25
    .const 'Sub' $P5121 = "41_1304282264.655" 
    copy $P5120, $P5121
    nqp_get_sc_object $P5122, "1304282255.673", 26
    .const 'Sub' $P5123 = "42_1304282264.655" 
    copy $P5122, $P5123
    nqp_get_sc_object $P5124, "1304282255.673", 27
    .const 'Sub' $P5125 = "44_1304282264.655" 
    copy $P5124, $P5125
    nqp_get_sc_object $P5126, "1304282255.673", 28
    .const 'Sub' $P5127 = "45_1304282264.655" 
    copy $P5126, $P5127
    nqp_get_sc_object $P5128, "1304282255.673", 29
    .const 'Sub' $P5129 = "47_1304282264.655" 
    copy $P5128, $P5129
    nqp_get_sc_object $P5130, "1304282255.673", 30
    .const 'Sub' $P5131 = "48_1304282264.655" 
    copy $P5130, $P5131
    nqp_get_sc_object $P5132, "1304282255.673", 31
    .const 'Sub' $P5133 = "49_1304282264.655" 
    copy $P5132, $P5133
    nqp_get_sc_object $P5134, "1304282255.673", 32
    .const 'Sub' $P5135 = "51_1304282264.655" 
    copy $P5134, $P5135
    nqp_get_sc_object $P5136, "1304282255.673", 33
    .const 'Sub' $P5137 = "52_1304282264.655" 
    copy $P5136, $P5137
    nqp_get_sc_object $P5138, "1304282255.673", 34
    .const 'Sub' $P5139 = "54_1304282264.655" 
    copy $P5138, $P5139
    nqp_get_sc_object $P5140, "1304282255.673", 35
    .const 'Sub' $P5141 = "55_1304282264.655" 
    copy $P5140, $P5141
    nqp_get_sc_object $P5142, "1304282255.673", 36
    .const 'Sub' $P5143 = "57_1304282264.655" 
    copy $P5142, $P5143
    nqp_get_sc_object $P5144, "1304282255.673", 37
    .const 'Sub' $P5145 = "58_1304282264.655" 
    copy $P5144, $P5145
    nqp_get_sc_object $P5146, "1304282255.673", 38
    .const 'Sub' $P5147 = "60_1304282264.655" 
    copy $P5146, $P5147
    nqp_get_sc_object $P5148, "1304282255.673", 39
    .const 'Sub' $P5149 = "61_1304282264.655" 
    copy $P5148, $P5149
    nqp_get_sc_object $P5150, "1304282255.673", 40
    .const 'Sub' $P5151 = "63_1304282264.655" 
    copy $P5150, $P5151
    nqp_get_sc_object $P5152, "1304282255.673", 41
    .const 'Sub' $P5153 = "64_1304282264.655" 
    copy $P5152, $P5153
    nqp_get_sc_object $P5154, "1304282255.673", 42
    .const 'Sub' $P5155 = "66_1304282264.655" 
    copy $P5154, $P5155
    nqp_get_sc_object $P5156, "1304282255.673", 43
    .const 'Sub' $P5157 = "67_1304282264.655" 
    copy $P5156, $P5157
    nqp_get_sc_object $P5158, "1304282255.673", 44
    .const 'Sub' $P5159 = "69_1304282264.655" 
    copy $P5158, $P5159
    nqp_get_sc_object $P5160, "1304282255.673", 45
    .const 'Sub' $P5161 = "70_1304282264.655" 
    copy $P5160, $P5161
    nqp_get_sc_object $P5162, "1304282255.673", 46
    .const 'Sub' $P5163 = "72_1304282264.655" 
    copy $P5162, $P5163
    nqp_get_sc_object $P5164, "1304282255.673", 47
    .const 'Sub' $P5165 = "73_1304282264.655" 
    copy $P5164, $P5165
    nqp_get_sc_object $P5166, "1304282255.673", 48
    .const 'Sub' $P5167 = "75_1304282264.655" 
    copy $P5166, $P5167
    nqp_get_sc_object $P5168, "1304282255.673", 49
    .const 'Sub' $P5169 = "76_1304282264.655" 
    copy $P5168, $P5169
    nqp_get_sc_object $P5170, "1304282255.673", 50
    .const 'Sub' $P5171 = "78_1304282264.655" 
    copy $P5170, $P5171
    nqp_get_sc_object $P5172, "1304282255.673", 51
    .const 'Sub' $P5173 = "79_1304282264.655" 
    copy $P5172, $P5173
    nqp_get_sc_object $P5174, "1304282255.673", 52
    .const 'Sub' $P5175 = "81_1304282264.655" 
    copy $P5174, $P5175
    nqp_get_sc_object $P5176, "1304282255.673", 53
    .const 'Sub' $P5177 = "82_1304282264.655" 
    copy $P5176, $P5177
    nqp_get_sc_object $P5178, "1304282255.673", 54
    .const 'Sub' $P5179 = "84_1304282264.655" 
    copy $P5178, $P5179
    nqp_get_sc_object $P5180, "1304282255.673", 55
    .const 'Sub' $P5181 = "85_1304282264.655" 
    copy $P5180, $P5181
    nqp_get_sc_object $P5182, "1304282255.673", 56
    .const 'Sub' $P5183 = "87_1304282264.655" 
    copy $P5182, $P5183
    nqp_get_sc_object $P5184, "1304282255.673", 57
    .const 'Sub' $P5185 = "88_1304282264.655" 
    copy $P5184, $P5185
    nqp_get_sc_object $P5186, "1304282255.673", 58
    .const 'Sub' $P5187 = "89_1304282264.655" 
    copy $P5186, $P5187
    nqp_get_sc_object $P5188, "1304282255.673", 59
    .const 'Sub' $P5189 = "90_1304282264.655" 
    copy $P5188, $P5189
    nqp_get_sc_object $P5190, "1304282255.673", 60
    .const 'Sub' $P5191 = "92_1304282264.655" 
    copy $P5190, $P5191
    nqp_get_sc_object $P5192, "1304282255.673", 61
    .const 'Sub' $P5193 = "93_1304282264.655" 
    copy $P5192, $P5193
    nqp_get_sc_object $P5194, "1304282255.673", 62
    .const 'Sub' $P5195 = "95_1304282264.655" 
    copy $P5194, $P5195
    nqp_get_sc_object $P5196, "1304282255.673", 63
    .const 'Sub' $P5197 = "96_1304282264.655" 
    copy $P5196, $P5197
    nqp_get_sc_object $P5198, "1304282255.673", 64
    .const 'Sub' $P5199 = "98_1304282264.655" 
    copy $P5198, $P5199
    nqp_get_sc_object $P5200, "1304282255.673", 65
    .const 'Sub' $P5201 = "99_1304282264.655" 
    copy $P5200, $P5201
    nqp_get_sc_object $P5202, "1304282255.673", 66
    .const 'Sub' $P5203 = "101_1304282264.655" 
    copy $P5202, $P5203
    nqp_get_sc_object $P5204, "1304282255.673", 67
    .const 'Sub' $P5205 = "102_1304282264.655" 
    copy $P5204, $P5205
    nqp_get_sc_object $P5206, "1304282255.673", 68
    .const 'Sub' $P5207 = "104_1304282264.655" 
    copy $P5206, $P5207
    nqp_get_sc_object $P5208, "1304282255.673", 69
    .const 'Sub' $P5209 = "105_1304282264.655" 
    copy $P5208, $P5209
    nqp_get_sc_object $P5210, "1304282255.673", 70
    .const 'Sub' $P5211 = "107_1304282264.655" 
    copy $P5210, $P5211
    nqp_get_sc_object $P5212, "1304282255.673", 71
    .const 'Sub' $P5213 = "108_1304282264.655" 
    copy $P5212, $P5213
    nqp_get_sc_object $P5214, "1304282255.673", 72
    .const 'Sub' $P5215 = "110_1304282264.655" 
    copy $P5214, $P5215
    nqp_get_sc_object $P5216, "1304282255.673", 73
    .const 'Sub' $P5217 = "111_1304282264.655" 
    copy $P5216, $P5217
    nqp_get_sc_object $P5218, "1304282255.673", 74
    .const 'Sub' $P5219 = "113_1304282264.655" 
    copy $P5218, $P5219
    nqp_get_sc_object $P5220, "1304282255.673", 75
    .const 'Sub' $P5221 = "114_1304282264.655" 
    copy $P5220, $P5221
    nqp_get_sc_object $P5222, "1304282255.673", 76
    .const 'Sub' $P5223 = "116_1304282264.655" 
    copy $P5222, $P5223
    nqp_get_sc_object $P5224, "1304282255.673", 77
    .const 'Sub' $P5225 = "117_1304282264.655" 
    copy $P5224, $P5225
    nqp_get_sc_object $P5226, "1304282255.673", 78
    .const 'Sub' $P5227 = "119_1304282264.655" 
    copy $P5226, $P5227
    nqp_get_sc_object $P5228, "1304282255.673", 79
    .const 'Sub' $P5229 = "120_1304282264.655" 
    copy $P5228, $P5229
    nqp_get_sc_object $P5230, "1304282255.673", 80
    .const 'Sub' $P5231 = "122_1304282264.655" 
    copy $P5230, $P5231
    nqp_get_sc_object $P5232, "1304282255.673", 81
    .const 'Sub' $P5233 = "123_1304282264.655" 
    copy $P5232, $P5233
    nqp_get_sc_object $P5234, "1304282255.673", 82
    .const 'Sub' $P5235 = "125_1304282264.655" 
    copy $P5234, $P5235
    nqp_get_sc_object $P5236, "1304282255.673", 83
    .const 'Sub' $P5237 = "126_1304282264.655" 
    copy $P5236, $P5237
    nqp_get_sc_object $P5238, "1304282255.673", 84
    .const 'Sub' $P5239 = "131_1304282264.655" 
    copy $P5238, $P5239
    nqp_get_sc_object $P5240, "1304282255.673", 85
    .const 'Sub' $P5241 = "132_1304282264.655" 
    copy $P5240, $P5241
    nqp_get_sc_object $P5242, "1304282255.673", 86
    .const 'Sub' $P5243 = "135_1304282264.655" 
    copy $P5242, $P5243
    nqp_get_sc_object $P5244, "1304282255.673", 87
    .const 'Sub' $P5245 = "136_1304282264.655" 
    copy $P5244, $P5245
    nqp_get_sc_object $P5246, "1304282255.673", 88
    .const 'Sub' $P5247 = "138_1304282264.655" 
    copy $P5246, $P5247
    nqp_get_sc_object $P5248, "1304282255.673", 89
    .const 'Sub' $P5249 = "139_1304282264.655" 
    copy $P5248, $P5249
    nqp_get_sc_object $P5250, "1304282255.673", 90
    .const 'Sub' $P5251 = "141_1304282264.655" 
    copy $P5250, $P5251
    nqp_get_sc_object $P5252, "1304282255.673", 91
    .const 'Sub' $P5253 = "142_1304282264.655" 
    copy $P5252, $P5253
    nqp_get_sc_object $P5254, "1304282255.673", 92
    .const 'Sub' $P5255 = "143_1304282264.655" 
    copy $P5254, $P5255
    nqp_get_sc_object $P5256, "1304282255.673", 93
    .const 'Sub' $P5257 = "144_1304282264.655" 
    copy $P5256, $P5257
    nqp_get_sc_object $P5258, "1304282255.673", 94
    .const 'Sub' $P5259 = "145_1304282264.655" 
    copy $P5258, $P5259
    nqp_get_sc_object $P5260, "1304282255.673", 95
    .const 'Sub' $P5261 = "146_1304282264.655" 
    copy $P5260, $P5261
    .const 'Sub' $P5262 = "146_1304282264.655" 
    nqp_get_sc_object $P5263, "1304282255.673", 1
    get_who $P5264, $P5263
    set $P5264["quotemod_check"], $P5262
    nqp_get_sc_object $P5265, "1304282255.673", 96
    .const 'Sub' $P5266 = "147_1304282264.655" 
    copy $P5265, $P5266
    nqp_get_sc_object $P5267, "1304282255.673", 97
    .const 'Sub' $P5268 = "148_1304282264.655" 
    copy $P5267, $P5268
    nqp_get_sc_object $P5269, "1304282255.673", 98
    .const 'Sub' $P5270 = "149_1304282264.655" 
    copy $P5269, $P5270
    .const 'Sub' $P5271 = "149_1304282264.655" 
    nqp_get_sc_object $P5272, "1304282255.673", 1
    get_who $P5273, $P5272
    set $P5273["split_words"], $P5271
    nqp_get_sc_object $P5274, "1304282255.673", 99
    .const 'Sub' $P5275 = "150_1304282264.655" 
    copy $P5274, $P5275
    nqp_get_sc_object $P5276, "1304282255.673", 100
    .const 'Sub' $P5277 = "151_1304282264.655" 
    copy $P5276, $P5277
    nqp_get_sc_object $P5278, "1304282255.673", 101
    .const 'Sub' $P5279 = "152_1304282264.655" 
    copy $P5278, $P5279
    nqp_get_sc_object $P5280, "1304282255.673", 102
    .const 'Sub' $P5281 = "153_1304282264.655" 
    copy $P5280, $P5281
    nqp_get_sc_object $P5282, "1304282255.673", 103
    .const 'Sub' $P5283 = "154_1304282264.655" 
    copy $P5282, $P5283
    nqp_get_sc_object $P5284, "1304282255.673", 104
    .const 'Sub' $P5285 = "155_1304282264.655" 
    copy $P5284, $P5285
    .const 'Sub' $P5286 = "11_1304282264.655" 
    $P5287 = $P5286."get_lexinfo"()
    nqp_get_sc_object $P5288, "1304282255.673", 1
    $P5287."set_static_lexpad_value"("$?PACKAGE", $P5288)
    .const 'Sub' $P5289 = "11_1304282264.655" 
    $P5290 = $P5289."get_lexinfo"()
    $P5290."finish_static_lexpad"()
    .const 'Sub' $P5291 = "11_1304282264.655" 
    $P5292 = $P5291."get_lexinfo"()
    nqp_get_sc_object $P5293, "1304282255.673", 1
    $P5292."set_static_lexpad_value"("$?CLASS", $P5293)
    .const 'Sub' $P5294 = "11_1304282264.655" 
    $P5295 = $P5294."get_lexinfo"()
    $P5295."finish_static_lexpad"()
    .const 'Sub' $P5296 = "158_1304282264.655" 
    nqp_get_sc_object $P5297, "1304282255.673", 105
    get_who $P5298, $P5297
    set $P5298["string_to_int"], $P5296
    .const 'Sub' $P5299 = "160_1304282264.655" 
    nqp_get_sc_object $P5300, "1304282255.673", 105
    get_who $P5301, $P5300
    set $P5301["ints_to_string"], $P5299
    nqp_get_sc_object $P5302, "1304282255.673", 106
    .const 'Sub' $P5303 = "163_1304282264.655" 
    copy $P5302, $P5303
    nqp_get_sc_object $P5304, "1304282255.673", 107
    .const 'Sub' $P5305 = "164_1304282264.655" 
    copy $P5304, $P5305
    nqp_get_sc_object $P5306, "1304282255.673", 108
    .const 'Sub' $P5307 = "167_1304282264.655" 
    copy $P5306, $P5307
    nqp_get_sc_object $P5308, "1304282255.673", 109
    .const 'Sub' $P5309 = "170_1304282264.655" 
    copy $P5308, $P5309
    nqp_get_sc_object $P5310, "1304282255.673", 110
    .const 'Sub' $P5311 = "171_1304282264.655" 
    copy $P5310, $P5311
    nqp_get_sc_object $P5312, "1304282255.673", 111
    .const 'Sub' $P5313 = "172_1304282264.655" 
    copy $P5312, $P5313
    nqp_get_sc_object $P5314, "1304282255.673", 112
    .const 'Sub' $P5315 = "173_1304282264.655" 
    copy $P5314, $P5315
    nqp_get_sc_object $P5316, "1304282255.673", 113
    .const 'Sub' $P5317 = "174_1304282264.655" 
    copy $P5316, $P5317
    nqp_get_sc_object $P5318, "1304282255.673", 114
    .const 'Sub' $P5319 = "175_1304282264.655" 
    copy $P5318, $P5319
    nqp_get_sc_object $P5320, "1304282255.673", 115
    .const 'Sub' $P5321 = "176_1304282264.655" 
    copy $P5320, $P5321
    nqp_get_sc_object $P5322, "1304282255.673", 116
    .const 'Sub' $P5323 = "177_1304282264.655" 
    copy $P5322, $P5323
    nqp_get_sc_object $P5324, "1304282255.673", 117
    .const 'Sub' $P5325 = "178_1304282264.655" 
    copy $P5324, $P5325
    nqp_get_sc_object $P5326, "1304282255.673", 118
    .const 'Sub' $P5327 = "179_1304282264.655" 
    copy $P5326, $P5327
    nqp_get_sc_object $P5328, "1304282255.673", 119
    .const 'Sub' $P5329 = "180_1304282264.655" 
    copy $P5328, $P5329
    nqp_get_sc_object $P5330, "1304282255.673", 120
    .const 'Sub' $P5331 = "183_1304282264.655" 
    copy $P5330, $P5331
    nqp_get_sc_object $P5332, "1304282255.673", 121
    .const 'Sub' $P5333 = "185_1304282264.655" 
    copy $P5332, $P5333
    nqp_get_sc_object $P5334, "1304282255.673", 122
    .const 'Sub' $P5335 = "186_1304282264.655" 
    copy $P5334, $P5335
    nqp_get_sc_object $P5336, "1304282255.673", 123
    .const 'Sub' $P5337 = "187_1304282264.655" 
    copy $P5336, $P5337
    nqp_get_sc_object $P5338, "1304282255.673", 124
    .const 'Sub' $P5339 = "188_1304282264.655" 
    copy $P5338, $P5339
    nqp_get_sc_object $P5340, "1304282255.673", 125
    .const 'Sub' $P5341 = "189_1304282264.655" 
    copy $P5340, $P5341
    nqp_get_sc_object $P5342, "1304282255.673", 126
    .const 'Sub' $P5343 = "190_1304282264.655" 
    copy $P5342, $P5343
    nqp_get_sc_object $P5344, "1304282255.673", 127
    .const 'Sub' $P5345 = "191_1304282264.655" 
    copy $P5344, $P5345
    nqp_get_sc_object $P5346, "1304282255.673", 128
    .const 'Sub' $P5347 = "192_1304282264.655" 
    copy $P5346, $P5347
    nqp_get_sc_object $P5348, "1304282255.673", 129
    .const 'Sub' $P5349 = "193_1304282264.655" 
    copy $P5348, $P5349
    nqp_get_sc_object $P5350, "1304282255.673", 130
    .const 'Sub' $P5351 = "194_1304282264.655" 
    copy $P5350, $P5351
    nqp_get_sc_object $P5352, "1304282255.673", 131
    .const 'Sub' $P5353 = "195_1304282264.655" 
    copy $P5352, $P5353
    nqp_get_sc_object $P5354, "1304282255.673", 132
    .const 'Sub' $P5355 = "196_1304282264.655" 
    copy $P5354, $P5355
    nqp_get_sc_object $P5356, "1304282255.673", 133
    .const 'Sub' $P5357 = "197_1304282264.655" 
    copy $P5356, $P5357
    nqp_get_sc_object $P5358, "1304282255.673", 134
    .const 'Sub' $P5359 = "198_1304282264.655" 
    copy $P5358, $P5359
    nqp_get_sc_object $P5360, "1304282255.673", 135
    .const 'Sub' $P5361 = "199_1304282264.655" 
    copy $P5360, $P5361
    nqp_get_sc_object $P5362, "1304282255.673", 136
    .const 'Sub' $P5363 = "200_1304282264.655" 
    copy $P5362, $P5363
    nqp_get_sc_object $P5364, "1304282255.673", 137
    .const 'Sub' $P5365 = "202_1304282264.655" 
    copy $P5364, $P5365
    .const 'Sub' $P5366 = "157_1304282264.655" 
    $P5367 = $P5366."get_lexinfo"()
    nqp_get_sc_object $P5368, "1304282255.673", 105
    $P5367."set_static_lexpad_value"("$?PACKAGE", $P5368)
    .const 'Sub' $P5369 = "157_1304282264.655" 
    $P5370 = $P5369."get_lexinfo"()
    $P5370."finish_static_lexpad"()
    .const 'Sub' $P5371 = "157_1304282264.655" 
    $P5372 = $P5371."get_lexinfo"()
    nqp_get_sc_object $P5373, "1304282255.673", 105
    $P5372."set_static_lexpad_value"("$?CLASS", $P5373)
    .const 'Sub' $P5374 = "157_1304282264.655" 
    $P5375 = $P5374."get_lexinfo"()
    $P5375."finish_static_lexpad"()
    nqp_get_sc_object $P5376, "1304282255.673", 139
    .const 'Sub' $P5377 = "207_1304282264.655" 
    copy $P5376, $P5377
    nqp_get_sc_object $P5378, "1304282255.673", 140
    .const 'Sub' $P5379 = "208_1304282264.655" 
    copy $P5378, $P5379
    nqp_get_sc_object $P5380, "1304282255.673", 141
    .const 'Sub' $P5381 = "210_1304282264.655" 
    copy $P5380, $P5381
    nqp_get_sc_object $P5382, "1304282255.673", 142
    .const 'Sub' $P5383 = "213_1304282264.655" 
    copy $P5382, $P5383
    nqp_get_sc_object $P5384, "1304282255.673", 143
    .const 'Sub' $P5385 = "214_1304282264.655" 
    copy $P5384, $P5385
    nqp_get_sc_object $P5386, "1304282255.673", 144
    .const 'Sub' $P5387 = "215_1304282264.655" 
    copy $P5386, $P5387
    nqp_get_sc_object $P5388, "1304282255.673", 145
    .const 'Sub' $P5389 = "217_1304282264.655" 
    copy $P5388, $P5389
    nqp_get_sc_object $P5390, "1304282255.673", 146
    .const 'Sub' $P5391 = "222_1304282264.655" 
    copy $P5390, $P5391
    nqp_get_sc_object $P5392, "1304282255.673", 147
    .const 'Sub' $P5393 = "223_1304282264.655" 
    copy $P5392, $P5393
    nqp_get_sc_object $P5394, "1304282255.673", 148
    .const 'Sub' $P5395 = "230_1304282264.655" 
    copy $P5394, $P5395
    nqp_get_sc_object $P5396, "1304282255.673", 149
    .const 'Sub' $P5397 = "232_1304282264.655" 
    copy $P5396, $P5397
    nqp_get_sc_object $P5398, "1304282255.673", 150
    .const 'Sub' $P5399 = "233_1304282264.655" 
    copy $P5398, $P5399
    nqp_get_sc_object $P5400, "1304282255.673", 151
    .const 'Sub' $P5401 = "234_1304282264.655" 
    copy $P5400, $P5401
    nqp_get_sc_object $P5402, "1304282255.673", 152
    .const 'Sub' $P5403 = "235_1304282264.655" 
    copy $P5402, $P5403
    nqp_get_sc_object $P5404, "1304282255.673", 153
    .const 'Sub' $P5405 = "236_1304282264.655" 
    copy $P5404, $P5405
    nqp_get_sc_object $P5406, "1304282255.673", 154
    .const 'Sub' $P5407 = "237_1304282264.655" 
    copy $P5406, $P5407
    nqp_get_sc_object $P5408, "1304282255.673", 155
    .const 'Sub' $P5409 = "238_1304282264.655" 
    copy $P5408, $P5409
    nqp_get_sc_object $P5410, "1304282255.673", 156
    .const 'Sub' $P5411 = "239_1304282264.655" 
    copy $P5410, $P5411
    nqp_get_sc_object $P5412, "1304282255.673", 157
    .const 'Sub' $P5413 = "240_1304282264.655" 
    copy $P5412, $P5413
    nqp_get_sc_object $P5414, "1304282255.673", 158
    .const 'Sub' $P5415 = "241_1304282264.655" 
    copy $P5414, $P5415
    nqp_get_sc_object $P5416, "1304282255.673", 159
    .const 'Sub' $P5417 = "242_1304282264.655" 
    copy $P5416, $P5417
    nqp_get_sc_object $P5418, "1304282255.673", 160
    .const 'Sub' $P5419 = "244_1304282264.655" 
    copy $P5418, $P5419
    nqp_get_sc_object $P5420, "1304282255.673", 161
    .const 'Sub' $P5421 = "247_1304282264.655" 
    copy $P5420, $P5421
    nqp_get_sc_object $P5422, "1304282255.673", 162
    .const 'Sub' $P5423 = "251_1304282264.655" 
    copy $P5422, $P5423
    nqp_get_sc_object $P5424, "1304282255.673", 163
    .const 'Sub' $P5425 = "253_1304282264.655" 
    copy $P5424, $P5425
    nqp_get_sc_object $P5426, "1304282255.673", 164
    .const 'Sub' $P5427 = "254_1304282264.655" 
    copy $P5426, $P5427
    nqp_get_sc_object $P5428, "1304282255.673", 165
    .const 'Sub' $P5429 = "255_1304282264.655" 
    copy $P5428, $P5429
    nqp_get_sc_object $P5430, "1304282255.673", 166
    .const 'Sub' $P5431 = "256_1304282264.655" 
    copy $P5430, $P5431
    nqp_get_sc_object $P5432, "1304282255.673", 167
    .const 'Sub' $P5433 = "257_1304282264.655" 
    copy $P5432, $P5433
    nqp_get_sc_object $P5434, "1304282255.673", 168
    .const 'Sub' $P5435 = "258_1304282264.655" 
    copy $P5434, $P5435
    nqp_get_sc_object $P5436, "1304282255.673", 169
    .const 'Sub' $P5437 = "260_1304282264.655" 
    copy $P5436, $P5437
    nqp_get_sc_object $P5438, "1304282255.673", 170
    .const 'Sub' $P5439 = "261_1304282264.655" 
    copy $P5438, $P5439
    nqp_get_sc_object $P5440, "1304282255.673", 171
    .const 'Sub' $P5441 = "262_1304282264.655" 
    copy $P5440, $P5441
    nqp_get_sc_object $P5442, "1304282255.673", 172
    .const 'Sub' $P5443 = "264_1304282264.655" 
    copy $P5442, $P5443
    nqp_get_sc_object $P5444, "1304282255.673", 173
    .const 'Sub' $P5445 = "267_1304282264.655" 
    copy $P5444, $P5445
    nqp_get_sc_object $P5446, "1304282255.673", 174
    .const 'Sub' $P5447 = "269_1304282264.655" 
    copy $P5446, $P5447
    .const 'Sub' $P5448 = "204_1304282264.655" 
    $P5449 = $P5448."get_lexinfo"()
    nqp_get_sc_object $P5450, "1304282255.673", 138
    $P5449."set_static_lexpad_value"("$?PACKAGE", $P5450)
    .const 'Sub' $P5451 = "204_1304282264.655" 
    $P5452 = $P5451."get_lexinfo"()
    $P5452."finish_static_lexpad"()
    .const 'Sub' $P5453 = "204_1304282264.655" 
    $P5454 = $P5453."get_lexinfo"()
    nqp_get_sc_object $P5455, "1304282255.673", 138
    $P5454."set_static_lexpad_value"("$?CLASS", $P5455)
    .const 'Sub' $P5456 = "204_1304282264.655" 
    $P5457 = $P5456."get_lexinfo"()
    $P5457."finish_static_lexpad"()
    nqp_get_sc_object $P5458, "1304282255.673", 176
    .const 'Sub' $P5459 = "272_1304282264.655" 
    copy $P5458, $P5459
    nqp_get_sc_object $P5460, "1304282255.673", 177
    .const 'Sub' $P5461 = "273_1304282264.655" 
    copy $P5460, $P5461
    nqp_get_sc_object $P5462, "1304282255.673", 178
    .const 'Sub' $P5463 = "274_1304282264.655" 
    copy $P5462, $P5463
    nqp_get_sc_object $P5464, "1304282255.673", 179
    .const 'Sub' $P5465 = "275_1304282264.655" 
    copy $P5464, $P5465
    nqp_get_sc_object $P5466, "1304282255.673", 180
    .const 'Sub' $P5467 = "276_1304282264.655" 
    copy $P5466, $P5467
    .const 'Sub' $P5468 = "271_1304282264.655" 
    $P5469 = $P5468."get_lexinfo"()
    nqp_get_sc_object $P5470, "1304282255.673", 175
    $P5469."set_static_lexpad_value"("$?PACKAGE", $P5470)
    .const 'Sub' $P5471 = "271_1304282264.655" 
    $P5472 = $P5471."get_lexinfo"()
    $P5472."finish_static_lexpad"()
    .const 'Sub' $P5473 = "271_1304282264.655" 
    $P5474 = $P5473."get_lexinfo"()
    nqp_get_sc_object $P5475, "1304282255.673", 175
    $P5474."set_static_lexpad_value"("$?CLASS", $P5475)
    .const 'Sub' $P5476 = "271_1304282264.655" 
    $P5477 = $P5476."get_lexinfo"()
    $P5477."finish_static_lexpad"()
    nqp_get_sc_object $P5478, "1304282255.673", 182
    .const 'Sub' $P5479 = "280_1304282264.655" 
    copy $P5478, $P5479
    nqp_get_sc_object $P5480, "1304282255.673", 183
    .const 'Sub' $P5481 = "281_1304282264.655" 
    copy $P5480, $P5481
    nqp_get_sc_object $P5482, "1304282255.673", 184
    .const 'Sub' $P5483 = "282_1304282264.655" 
    copy $P5482, $P5483
    nqp_get_sc_object $P5484, "1304282255.673", 185
    .const 'Sub' $P5485 = "284_1304282264.655" 
    copy $P5484, $P5485
    nqp_get_sc_object $P5486, "1304282255.673", 186
    .const 'Sub' $P5487 = "285_1304282264.655" 
    copy $P5486, $P5487
    nqp_get_sc_object $P5488, "1304282255.673", 187
    .const 'Sub' $P5489 = "286_1304282264.655" 
    copy $P5488, $P5489
    nqp_get_sc_object $P5490, "1304282255.673", 188
    .const 'Sub' $P5491 = "288_1304282264.655" 
    copy $P5490, $P5491
    nqp_get_sc_object $P5492, "1304282255.673", 189
    .const 'Sub' $P5493 = "289_1304282264.655" 
    copy $P5492, $P5493
    nqp_get_sc_object $P5494, "1304282255.673", 190
    .const 'Sub' $P5495 = "290_1304282264.655" 
    copy $P5494, $P5495
    .const 'Sub' $P5496 = "279_1304282264.655" 
    $P5497 = $P5496."get_lexinfo"()
    nqp_get_sc_object $P5498, "1304282255.673", 181
    $P5497."set_static_lexpad_value"("$?PACKAGE", $P5498)
    .const 'Sub' $P5499 = "279_1304282264.655" 
    $P5500 = $P5499."get_lexinfo"()
    $P5500."finish_static_lexpad"()
    .const 'Sub' $P5501 = "279_1304282264.655" 
    $P5502 = $P5501."get_lexinfo"()
    nqp_get_sc_object $P5503, "1304282255.673", 181
    $P5502."set_static_lexpad_value"("$?CLASS", $P5503)
    .const 'Sub' $P5504 = "279_1304282264.655" 
    $P5505 = $P5504."get_lexinfo"()
    $P5505."finish_static_lexpad"()
    .const 'Sub' $P5506 = "299_1304282264.655" 
    $P5507 = $P5506."get_lexinfo"()
    nqp_get_sc_object $P5508, "1304282255.673", 192
    $P5507."set_static_lexpad_value"("Event", $P5508)
    .const 'Sub' $P5509 = "299_1304282264.655" 
    $P5510 = $P5509."get_lexinfo"()
    $P5510."finish_static_lexpad"()
    nqp_get_sc_object $P5511, "1304282255.673", 193
    .const 'Sub' $P5512 = "302_1304282264.655" 
    copy $P5511, $P5512
    nqp_get_sc_object $P5513, "1304282255.673", 194
    .const 'Sub' $P5514 = "303_1304282264.655" 
    copy $P5513, $P5514
    .const 'Sub' $P5515 = "301_1304282264.655" 
    $P5516 = $P5515."get_lexinfo"()
    nqp_get_sc_object $P5517, "1304282255.673", 192
    $P5516."set_static_lexpad_value"("$?PACKAGE", $P5517)
    .const 'Sub' $P5518 = "301_1304282264.655" 
    $P5519 = $P5518."get_lexinfo"()
    $P5519."finish_static_lexpad"()
    .const 'Sub' $P5520 = "301_1304282264.655" 
    $P5521 = $P5520."get_lexinfo"()
    nqp_get_sc_object $P5522, "1304282255.673", 192
    $P5521."set_static_lexpad_value"("$?CLASS", $P5522)
    .const 'Sub' $P5523 = "301_1304282264.655" 
    $P5524 = $P5523."get_lexinfo"()
    $P5524."finish_static_lexpad"()
    nqp_get_sc_object $P5525, "1304282255.673", 195
    .const 'Sub' $P5526 = "305_1304282264.655" 
    copy $P5525, $P5526
    nqp_get_sc_object $P5527, "1304282255.673", 196
    .const 'Sub' $P5528 = "306_1304282264.655" 
    copy $P5527, $P5528
    nqp_get_sc_object $P5529, "1304282255.673", 197
    .const 'Sub' $P5530 = "307_1304282264.655" 
    copy $P5529, $P5530
    nqp_get_sc_object $P5531, "1304282255.673", 198
    .const 'Sub' $P5532 = "308_1304282264.655" 
    copy $P5531, $P5532
    nqp_get_sc_object $P5533, "1304282255.673", 199
    .const 'Sub' $P5534 = "309_1304282264.655" 
    copy $P5533, $P5534
    nqp_get_sc_object $P5535, "1304282255.673", 200
    .const 'Sub' $P5536 = "310_1304282264.655" 
    copy $P5535, $P5536
    nqp_get_sc_object $P5537, "1304282255.673", 201
    .const 'Sub' $P5538 = "311_1304282264.655" 
    copy $P5537, $P5538
    nqp_get_sc_object $P5539, "1304282255.673", 202
    .const 'Sub' $P5540 = "312_1304282264.655" 
    copy $P5539, $P5540
    nqp_get_sc_object $P5541, "1304282255.673", 203
    .const 'Sub' $P5542 = "313_1304282264.655" 
    copy $P5541, $P5542
    nqp_get_sc_object $P5543, "1304282255.673", 204
    .const 'Sub' $P5544 = "314_1304282264.655" 
    copy $P5543, $P5544
    nqp_get_sc_object $P5545, "1304282255.673", 205
    .const 'Sub' $P5546 = "315_1304282264.655" 
    copy $P5545, $P5546
    nqp_get_sc_object $P5547, "1304282255.673", 206
    .const 'Sub' $P5548 = "317_1304282264.655" 
    copy $P5547, $P5548
    nqp_get_sc_object $P5549, "1304282255.673", 207
    .const 'Sub' $P5550 = "318_1304282264.655" 
    copy $P5549, $P5550
    nqp_get_sc_object $P5551, "1304282255.673", 208
    .const 'Sub' $P5552 = "321_1304282264.655" 
    copy $P5551, $P5552
    nqp_get_sc_object $P5553, "1304282255.673", 209
    .const 'Sub' $P5554 = "322_1304282264.655" 
    copy $P5553, $P5554
    nqp_get_sc_object $P5555, "1304282255.673", 210
    .const 'Sub' $P5556 = "323_1304282264.655" 
    copy $P5555, $P5556
    nqp_get_sc_object $P5557, "1304282255.673", 211
    .const 'Sub' $P5558 = "324_1304282264.655" 
    copy $P5557, $P5558
    nqp_get_sc_object $P5559, "1304282255.673", 212
    .const 'Sub' $P5560 = "328_1304282264.655" 
    copy $P5559, $P5560
    nqp_get_sc_object $P5561, "1304282255.673", 213
    .const 'Sub' $P5562 = "329_1304282264.655" 
    copy $P5561, $P5562
    nqp_get_sc_object $P5563, "1304282255.673", 214
    .const 'Sub' $P5564 = "330_1304282264.655" 
    copy $P5563, $P5564
    nqp_get_sc_object $P5565, "1304282255.673", 215
    .const 'Sub' $P5566 = "331_1304282264.655" 
    copy $P5565, $P5566
    nqp_get_sc_object $P5567, "1304282255.673", 216
    .const 'Sub' $P5568 = "332_1304282264.655" 
    copy $P5567, $P5568
    nqp_get_sc_object $P5569, "1304282255.673", 217
    .const 'Sub' $P5570 = "333_1304282264.655" 
    copy $P5569, $P5570
    .const 'Sub' $P5571 = "299_1304282264.655" 
    $P5572 = $P5571."get_lexinfo"()
    nqp_get_sc_object $P5573, "1304282255.673", 191
    $P5572."set_static_lexpad_value"("$?PACKAGE", $P5573)
    .const 'Sub' $P5574 = "299_1304282264.655" 
    $P5575 = $P5574."get_lexinfo"()
    $P5575."finish_static_lexpad"()
    .const 'Sub' $P5576 = "299_1304282264.655" 
    $P5577 = $P5576."get_lexinfo"()
    nqp_get_sc_object $P5578, "1304282255.673", 191
    $P5577."set_static_lexpad_value"("$?CLASS", $P5578)
    .const 'Sub' $P5579 = "299_1304282264.655" 
    $P5580 = $P5579."get_lexinfo"()
    $P5580."finish_static_lexpad"()
    goto if_3928_end
  if_3928:
    nqp_dynop_setup 
    getinterp $P3931
    get_class $P3932, "LexPad"
    get_class $P3933, "NQPLexPad"
    $P3931."hll_map"($P3932, $P3933)
    nqp_create_sc $P3934, "1304282255.673"
    .local pmc cur_sc
    set cur_sc, $P3934
    nqp_get_sc_object $P3935, "__6MODEL_CORE__", 0
    $P3936 = $P3935."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3936, cur_sc
    nqp_set_sc_object "1304282255.673", 0, $P3936
    .const 'Sub' $P3937 = "10_1304282264.655" 
    $P3938 = $P3937."get_lexinfo"()
    nqp_get_sc_object $P3939, "1304282255.673", 0
    $P3938."set_static_lexpad_value"("GLOBALish", $P3939)
    .const 'Sub' $P3940 = "10_1304282264.655" 
    $P3941 = $P3940."get_lexinfo"()
    $P3941."finish_static_lexpad"()
    .const 'Sub' $P3942 = "10_1304282264.655" 
    $P3943 = $P3942."get_lexinfo"()
    nqp_get_sc_object $P3944, "1304282255.673", 0
    $P3943."set_static_lexpad_value"("$?PACKAGE", $P3944)
    .const 'Sub' $P3945 = "10_1304282264.655" 
    $P3946 = $P3945."get_lexinfo"()
    $P3946."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3947, "ModuleLoader"
    $P3948 = $P3947."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3948)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3949, "ModuleLoader"
    nqp_get_sc_object $P3950, "1304282255.673", 0
    $P3949."load_module"("Regex", $P3950)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3951, "ModuleLoader"
    nqp_get_sc_object $P3952, "1304282255.673", 0
    $P3951."load_module"("Regex", $P3952)
    nqp_get_sc_object $P3953, "1304282248.255", 41
    $P3954 = $P3953."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3954, cur_sc
    nqp_set_sc_object "1304282255.673", 1, $P3954
    nqp_get_sc_object $P3955, "1304282255.673", 1
    nqp_get_sc_object $P3956, "1304282255.673", 0
    nqp_get_package_through_who $P3957, $P3956, "HLL"
    get_who $P3958, $P3957
    set $P3958["Grammar"], $P3955
    nqp_get_sc_object $P3959, "1304282255.673", 1
    get_how $P3960, $P3959
    nqp_get_sc_object $P3961, "1304282255.673", 1
    .const 'Sub' $P3962 = "12_1304282264.655" 
    $P3960."add_method"($P3961, "ws", $P3962)
    nqp_get_sc_object $P3963, "1304282255.673", 1
    get_how $P3964, $P3963
    nqp_get_sc_object $P3965, "1304282255.673", 1
    .const 'Sub' $P3966 = "14_1304282264.655" 
    $P3964."add_method"($P3965, "!PREFIX__ws", $P3966)
    nqp_get_sc_object $P3967, "1304282255.673", 1
    get_how $P3968, $P3967
    nqp_get_sc_object $P3969, "1304282255.673", 1
    .const 'Sub' $P3970 = "15_1304282264.655" 
    $P3968."add_method"($P3969, "termish", $P3970)
    nqp_get_sc_object $P3971, "1304282255.673", 1
    get_how $P3972, $P3971
    nqp_get_sc_object $P3973, "1304282255.673", 1
    .const 'Sub' $P3974 = "17_1304282264.655" 
    $P3972."add_method"($P3973, "!PREFIX__termish", $P3974)
    nqp_get_sc_object $P3975, "1304282255.673", 1
    get_how $P3976, $P3975
    nqp_get_sc_object $P3977, "1304282255.673", 1
    .const 'Sub' $P3978 = "18_1304282264.655" 
    $P3976."add_method"($P3977, "term", $P3978)
    nqp_get_sc_object $P3979, "1304282255.673", 1
    get_how $P3980, $P3979
    nqp_get_sc_object $P3981, "1304282255.673", 1
    .const 'Sub' $P3982 = "19_1304282264.655" 
    $P3980."add_method"($P3981, "!PREFIX__term", $P3982)
    nqp_get_sc_object $P3983, "1304282255.673", 1
    get_how $P3984, $P3983
    nqp_get_sc_object $P3985, "1304282255.673", 1
    .const 'Sub' $P3986 = "20_1304282264.655" 
    $P3984."add_method"($P3985, "infix", $P3986)
    nqp_get_sc_object $P3987, "1304282255.673", 1
    get_how $P3988, $P3987
    nqp_get_sc_object $P3989, "1304282255.673", 1
    .const 'Sub' $P3990 = "21_1304282264.655" 
    $P3988."add_method"($P3989, "!PREFIX__infix", $P3990)
    nqp_get_sc_object $P3991, "1304282255.673", 1
    get_how $P3992, $P3991
    nqp_get_sc_object $P3993, "1304282255.673", 1
    .const 'Sub' $P3994 = "22_1304282264.655" 
    $P3992."add_method"($P3993, "prefix", $P3994)
    nqp_get_sc_object $P3995, "1304282255.673", 1
    get_how $P3996, $P3995
    nqp_get_sc_object $P3997, "1304282255.673", 1
    .const 'Sub' $P3998 = "23_1304282264.655" 
    $P3996."add_method"($P3997, "!PREFIX__prefix", $P3998)
    nqp_get_sc_object $P3999, "1304282255.673", 1
    get_how $P4000, $P3999
    nqp_get_sc_object $P4001, "1304282255.673", 1
    .const 'Sub' $P4002 = "24_1304282264.655" 
    $P4000."add_method"($P4001, "postfix", $P4002)
    nqp_get_sc_object $P4003, "1304282255.673", 1
    get_how $P4004, $P4003
    nqp_get_sc_object $P4005, "1304282255.673", 1
    .const 'Sub' $P4006 = "25_1304282264.655" 
    $P4004."add_method"($P4005, "!PREFIX__postfix", $P4006)
    nqp_get_sc_object $P4007, "1304282255.673", 1
    get_how $P4008, $P4007
    nqp_get_sc_object $P4009, "1304282255.673", 1
    .const 'Sub' $P4010 = "26_1304282264.655" 
    $P4008."add_method"($P4009, "circumfix", $P4010)
    nqp_get_sc_object $P4011, "1304282255.673", 1
    get_how $P4012, $P4011
    nqp_get_sc_object $P4013, "1304282255.673", 1
    .const 'Sub' $P4014 = "27_1304282264.655" 
    $P4012."add_method"($P4013, "!PREFIX__circumfix", $P4014)
    nqp_get_sc_object $P4015, "1304282255.673", 1
    get_how $P4016, $P4015
    nqp_get_sc_object $P4017, "1304282255.673", 1
    .const 'Sub' $P4018 = "28_1304282264.655" 
    $P4016."add_method"($P4017, "postcircumfix", $P4018)
    nqp_get_sc_object $P4019, "1304282255.673", 1
    get_how $P4020, $P4019
    nqp_get_sc_object $P4021, "1304282255.673", 1
    .const 'Sub' $P4022 = "29_1304282264.655" 
    $P4020."add_method"($P4021, "!PREFIX__postcircumfix", $P4022)
    nqp_get_sc_object $P4023, "1304282255.673", 1
    get_how $P4024, $P4023
    nqp_get_sc_object $P4025, "1304282255.673", 1
    .const 'Sub' $P4026 = "30_1304282264.655" 
    $P4024."add_method"($P4025, "term:sym<circumfix>", $P4026)
    nqp_get_sc_object $P4027, "1304282255.673", 1
    get_how $P4028, $P4027
    nqp_get_sc_object $P4029, "1304282255.673", 1
    .const 'Sub' $P4030 = "32_1304282264.655" 
    $P4028."add_method"($P4029, "!PREFIX__term:sym<circumfix>", $P4030)
    nqp_get_sc_object $P4031, "1304282255.673", 1
    get_how $P4032, $P4031
    nqp_get_sc_object $P4033, "1304282255.673", 1
    .const 'Sub' $P4034 = "33_1304282264.655" 
    $P4032."add_method"($P4033, "infixish", $P4034)
    nqp_get_sc_object $P4035, "1304282255.673", 1
    get_how $P4036, $P4035
    nqp_get_sc_object $P4037, "1304282255.673", 1
    .const 'Sub' $P4038 = "35_1304282264.655" 
    $P4036."add_method"($P4037, "!PREFIX__infixish", $P4038)
    nqp_get_sc_object $P4039, "1304282255.673", 1
    get_how $P4040, $P4039
    nqp_get_sc_object $P4041, "1304282255.673", 1
    .const 'Sub' $P4042 = "36_1304282264.655" 
    $P4040."add_method"($P4041, "prefixish", $P4042)
    nqp_get_sc_object $P4043, "1304282255.673", 1
    get_how $P4044, $P4043
    nqp_get_sc_object $P4045, "1304282255.673", 1
    .const 'Sub' $P4046 = "38_1304282264.655" 
    $P4044."add_method"($P4045, "!PREFIX__prefixish", $P4046)
    nqp_get_sc_object $P4047, "1304282255.673", 1
    get_how $P4048, $P4047
    nqp_get_sc_object $P4049, "1304282255.673", 1
    .const 'Sub' $P4050 = "39_1304282264.655" 
    $P4048."add_method"($P4049, "postfixish", $P4050)
    nqp_get_sc_object $P4051, "1304282255.673", 1
    get_how $P4052, $P4051
    nqp_get_sc_object $P4053, "1304282255.673", 1
    .const 'Sub' $P4054 = "41_1304282264.655" 
    $P4052."add_method"($P4053, "!PREFIX__postfixish", $P4054)
    nqp_get_sc_object $P4055, "1304282255.673", 1
    get_how $P4056, $P4055
    nqp_get_sc_object $P4057, "1304282255.673", 1
    .const 'Sub' $P4058 = "42_1304282264.655" 
    $P4056."add_method"($P4057, "nullterm", $P4058)
    nqp_get_sc_object $P4059, "1304282255.673", 1
    get_how $P4060, $P4059
    nqp_get_sc_object $P4061, "1304282255.673", 1
    .const 'Sub' $P4062 = "44_1304282264.655" 
    $P4060."add_method"($P4061, "!PREFIX__nullterm", $P4062)
    nqp_get_sc_object $P4063, "1304282255.673", 1
    get_how $P4064, $P4063
    nqp_get_sc_object $P4065, "1304282255.673", 1
    .const 'Sub' $P4066 = "45_1304282264.655" 
    $P4064."add_method"($P4065, "nullterm_alt", $P4066)
    nqp_get_sc_object $P4067, "1304282255.673", 1
    get_how $P4068, $P4067
    nqp_get_sc_object $P4069, "1304282255.673", 1
    .const 'Sub' $P4070 = "47_1304282264.655" 
    $P4068."add_method"($P4069, "!PREFIX__nullterm_alt", $P4070)
    nqp_get_sc_object $P4071, "1304282255.673", 1
    get_how $P4072, $P4071
    nqp_get_sc_object $P4073, "1304282255.673", 1
    .const 'Sub' $P4074 = "48_1304282264.655" 
    $P4072."add_method"($P4073, "nulltermish", $P4074)
    nqp_get_sc_object $P4075, "1304282255.673", 1
    get_how $P4076, $P4075
    nqp_get_sc_object $P4077, "1304282255.673", 1
    .const 'Sub' $P4078 = "49_1304282264.655" 
    $P4076."add_method"($P4077, "quote_delimited", $P4078)
    nqp_get_sc_object $P4079, "1304282255.673", 1
    get_how $P4080, $P4079
    nqp_get_sc_object $P4081, "1304282255.673", 1
    .const 'Sub' $P4082 = "51_1304282264.655" 
    $P4080."add_method"($P4081, "!PREFIX__quote_delimited", $P4082)
    nqp_get_sc_object $P4083, "1304282255.673", 1
    get_how $P4084, $P4083
    nqp_get_sc_object $P4085, "1304282255.673", 1
    .const 'Sub' $P4086 = "52_1304282264.655" 
    $P4084."add_method"($P4085, "quote_atom", $P4086)
    nqp_get_sc_object $P4087, "1304282255.673", 1
    get_how $P4088, $P4087
    nqp_get_sc_object $P4089, "1304282255.673", 1
    .const 'Sub' $P4090 = "54_1304282264.655" 
    $P4088."add_method"($P4089, "!PREFIX__quote_atom", $P4090)
    nqp_get_sc_object $P4091, "1304282255.673", 1
    get_how $P4092, $P4091
    nqp_get_sc_object $P4093, "1304282255.673", 1
    .const 'Sub' $P4094 = "55_1304282264.655" 
    $P4092."add_method"($P4093, "decint", $P4094)
    nqp_get_sc_object $P4095, "1304282255.673", 1
    get_how $P4096, $P4095
    nqp_get_sc_object $P4097, "1304282255.673", 1
    .const 'Sub' $P4098 = "57_1304282264.655" 
    $P4096."add_method"($P4097, "!PREFIX__decint", $P4098)
    nqp_get_sc_object $P4099, "1304282255.673", 1
    get_how $P4100, $P4099
    nqp_get_sc_object $P4101, "1304282255.673", 1
    .const 'Sub' $P4102 = "58_1304282264.655" 
    $P4100."add_method"($P4101, "decints", $P4102)
    nqp_get_sc_object $P4103, "1304282255.673", 1
    get_how $P4104, $P4103
    nqp_get_sc_object $P4105, "1304282255.673", 1
    .const 'Sub' $P4106 = "60_1304282264.655" 
    $P4104."add_method"($P4105, "!PREFIX__decints", $P4106)
    nqp_get_sc_object $P4107, "1304282255.673", 1
    get_how $P4108, $P4107
    nqp_get_sc_object $P4109, "1304282255.673", 1
    .const 'Sub' $P4110 = "61_1304282264.655" 
    $P4108."add_method"($P4109, "hexint", $P4110)
    nqp_get_sc_object $P4111, "1304282255.673", 1
    get_how $P4112, $P4111
    nqp_get_sc_object $P4113, "1304282255.673", 1
    .const 'Sub' $P4114 = "63_1304282264.655" 
    $P4112."add_method"($P4113, "!PREFIX__hexint", $P4114)
    nqp_get_sc_object $P4115, "1304282255.673", 1
    get_how $P4116, $P4115
    nqp_get_sc_object $P4117, "1304282255.673", 1
    .const 'Sub' $P4118 = "64_1304282264.655" 
    $P4116."add_method"($P4117, "hexints", $P4118)
    nqp_get_sc_object $P4119, "1304282255.673", 1
    get_how $P4120, $P4119
    nqp_get_sc_object $P4121, "1304282255.673", 1
    .const 'Sub' $P4122 = "66_1304282264.655" 
    $P4120."add_method"($P4121, "!PREFIX__hexints", $P4122)
    nqp_get_sc_object $P4123, "1304282255.673", 1
    get_how $P4124, $P4123
    nqp_get_sc_object $P4125, "1304282255.673", 1
    .const 'Sub' $P4126 = "67_1304282264.655" 
    $P4124."add_method"($P4125, "octint", $P4126)
    nqp_get_sc_object $P4127, "1304282255.673", 1
    get_how $P4128, $P4127
    nqp_get_sc_object $P4129, "1304282255.673", 1
    .const 'Sub' $P4130 = "69_1304282264.655" 
    $P4128."add_method"($P4129, "!PREFIX__octint", $P4130)
    nqp_get_sc_object $P4131, "1304282255.673", 1
    get_how $P4132, $P4131
    nqp_get_sc_object $P4133, "1304282255.673", 1
    .const 'Sub' $P4134 = "70_1304282264.655" 
    $P4132."add_method"($P4133, "octints", $P4134)
    nqp_get_sc_object $P4135, "1304282255.673", 1
    get_how $P4136, $P4135
    nqp_get_sc_object $P4137, "1304282255.673", 1
    .const 'Sub' $P4138 = "72_1304282264.655" 
    $P4136."add_method"($P4137, "!PREFIX__octints", $P4138)
    nqp_get_sc_object $P4139, "1304282255.673", 1
    get_how $P4140, $P4139
    nqp_get_sc_object $P4141, "1304282255.673", 1
    .const 'Sub' $P4142 = "73_1304282264.655" 
    $P4140."add_method"($P4141, "binint", $P4142)
    nqp_get_sc_object $P4143, "1304282255.673", 1
    get_how $P4144, $P4143
    nqp_get_sc_object $P4145, "1304282255.673", 1
    .const 'Sub' $P4146 = "75_1304282264.655" 
    $P4144."add_method"($P4145, "!PREFIX__binint", $P4146)
    nqp_get_sc_object $P4147, "1304282255.673", 1
    get_how $P4148, $P4147
    nqp_get_sc_object $P4149, "1304282255.673", 1
    .const 'Sub' $P4150 = "76_1304282264.655" 
    $P4148."add_method"($P4149, "binints", $P4150)
    nqp_get_sc_object $P4151, "1304282255.673", 1
    get_how $P4152, $P4151
    nqp_get_sc_object $P4153, "1304282255.673", 1
    .const 'Sub' $P4154 = "78_1304282264.655" 
    $P4152."add_method"($P4153, "!PREFIX__binints", $P4154)
    nqp_get_sc_object $P4155, "1304282255.673", 1
    get_how $P4156, $P4155
    nqp_get_sc_object $P4157, "1304282255.673", 1
    .const 'Sub' $P4158 = "79_1304282264.655" 
    $P4156."add_method"($P4157, "integer", $P4158)
    nqp_get_sc_object $P4159, "1304282255.673", 1
    get_how $P4160, $P4159
    nqp_get_sc_object $P4161, "1304282255.673", 1
    .const 'Sub' $P4162 = "81_1304282264.655" 
    $P4160."add_method"($P4161, "!PREFIX__integer", $P4162)
    nqp_get_sc_object $P4163, "1304282255.673", 1
    get_how $P4164, $P4163
    nqp_get_sc_object $P4165, "1304282255.673", 1
    .const 'Sub' $P4166 = "82_1304282264.655" 
    $P4164."add_method"($P4165, "dec_number", $P4166)
    nqp_get_sc_object $P4167, "1304282255.673", 1
    get_how $P4168, $P4167
    nqp_get_sc_object $P4169, "1304282255.673", 1
    .const 'Sub' $P4170 = "84_1304282264.655" 
    $P4168."add_method"($P4169, "!PREFIX__dec_number", $P4170)
    nqp_get_sc_object $P4171, "1304282255.673", 1
    get_how $P4172, $P4171
    nqp_get_sc_object $P4173, "1304282255.673", 1
    .const 'Sub' $P4174 = "85_1304282264.655" 
    $P4172."add_method"($P4173, "escale", $P4174)
    nqp_get_sc_object $P4175, "1304282255.673", 1
    get_how $P4176, $P4175
    nqp_get_sc_object $P4177, "1304282255.673", 1
    .const 'Sub' $P4178 = "87_1304282264.655" 
    $P4176."add_method"($P4177, "!PREFIX__escale", $P4178)
    nqp_get_sc_object $P4179, "1304282255.673", 1
    get_how $P4180, $P4179
    nqp_get_sc_object $P4181, "1304282255.673", 1
    .const 'Sub' $P4182 = "88_1304282264.655" 
    $P4180."add_method"($P4181, "quote_escape", $P4182)
    nqp_get_sc_object $P4183, "1304282255.673", 1
    get_how $P4184, $P4183
    nqp_get_sc_object $P4185, "1304282255.673", 1
    .const 'Sub' $P4186 = "89_1304282264.655" 
    $P4184."add_method"($P4185, "!PREFIX__quote_escape", $P4186)
    nqp_get_sc_object $P4187, "1304282255.673", 1
    get_how $P4188, $P4187
    nqp_get_sc_object $P4189, "1304282255.673", 1
    .const 'Sub' $P4190 = "90_1304282264.655" 
    $P4188."add_method"($P4189, "quote_escape:sym<backslash>", $P4190)
    nqp_get_sc_object $P4191, "1304282255.673", 1
    get_how $P4192, $P4191
    nqp_get_sc_object $P4193, "1304282255.673", 1
    .const 'Sub' $P4194 = "92_1304282264.655" 
    $P4192."add_method"($P4193, "!PREFIX__quote_escape:sym<backslash>", $P4194)
    nqp_get_sc_object $P4195, "1304282255.673", 1
    get_how $P4196, $P4195
    nqp_get_sc_object $P4197, "1304282255.673", 1
    .const 'Sub' $P4198 = "93_1304282264.655" 
    $P4196."add_method"($P4197, "quote_escape:sym<stopper>", $P4198)
    nqp_get_sc_object $P4199, "1304282255.673", 1
    get_how $P4200, $P4199
    nqp_get_sc_object $P4201, "1304282255.673", 1
    .const 'Sub' $P4202 = "95_1304282264.655" 
    $P4200."add_method"($P4201, "!PREFIX__quote_escape:sym<stopper>", $P4202)
    nqp_get_sc_object $P4203, "1304282255.673", 1
    get_how $P4204, $P4203
    nqp_get_sc_object $P4205, "1304282255.673", 1
    .const 'Sub' $P4206 = "96_1304282264.655" 
    $P4204."add_method"($P4205, "quote_escape:sym<bs>", $P4206)
    nqp_get_sc_object $P4207, "1304282255.673", 1
    get_how $P4208, $P4207
    nqp_get_sc_object $P4209, "1304282255.673", 1
    .const 'Sub' $P4210 = "98_1304282264.655" 
    $P4208."add_method"($P4209, "!PREFIX__quote_escape:sym<bs>", $P4210)
    nqp_get_sc_object $P4211, "1304282255.673", 1
    get_how $P4212, $P4211
    nqp_get_sc_object $P4213, "1304282255.673", 1
    .const 'Sub' $P4214 = "99_1304282264.655" 
    $P4212."add_method"($P4213, "quote_escape:sym<nl>", $P4214)
    nqp_get_sc_object $P4215, "1304282255.673", 1
    get_how $P4216, $P4215
    nqp_get_sc_object $P4217, "1304282255.673", 1
    .const 'Sub' $P4218 = "101_1304282264.655" 
    $P4216."add_method"($P4217, "!PREFIX__quote_escape:sym<nl>", $P4218)
    nqp_get_sc_object $P4219, "1304282255.673", 1
    get_how $P4220, $P4219
    nqp_get_sc_object $P4221, "1304282255.673", 1
    .const 'Sub' $P4222 = "102_1304282264.655" 
    $P4220."add_method"($P4221, "quote_escape:sym<cr>", $P4222)
    nqp_get_sc_object $P4223, "1304282255.673", 1
    get_how $P4224, $P4223
    nqp_get_sc_object $P4225, "1304282255.673", 1
    .const 'Sub' $P4226 = "104_1304282264.655" 
    $P4224."add_method"($P4225, "!PREFIX__quote_escape:sym<cr>", $P4226)
    nqp_get_sc_object $P4227, "1304282255.673", 1
    get_how $P4228, $P4227
    nqp_get_sc_object $P4229, "1304282255.673", 1
    .const 'Sub' $P4230 = "105_1304282264.655" 
    $P4228."add_method"($P4229, "quote_escape:sym<tab>", $P4230)
    nqp_get_sc_object $P4231, "1304282255.673", 1
    get_how $P4232, $P4231
    nqp_get_sc_object $P4233, "1304282255.673", 1
    .const 'Sub' $P4234 = "107_1304282264.655" 
    $P4232."add_method"($P4233, "!PREFIX__quote_escape:sym<tab>", $P4234)
    nqp_get_sc_object $P4235, "1304282255.673", 1
    get_how $P4236, $P4235
    nqp_get_sc_object $P4237, "1304282255.673", 1
    .const 'Sub' $P4238 = "108_1304282264.655" 
    $P4236."add_method"($P4237, "quote_escape:sym<ff>", $P4238)
    nqp_get_sc_object $P4239, "1304282255.673", 1
    get_how $P4240, $P4239
    nqp_get_sc_object $P4241, "1304282255.673", 1
    .const 'Sub' $P4242 = "110_1304282264.655" 
    $P4240."add_method"($P4241, "!PREFIX__quote_escape:sym<ff>", $P4242)
    nqp_get_sc_object $P4243, "1304282255.673", 1
    get_how $P4244, $P4243
    nqp_get_sc_object $P4245, "1304282255.673", 1
    .const 'Sub' $P4246 = "111_1304282264.655" 
    $P4244."add_method"($P4245, "quote_escape:sym<esc>", $P4246)
    nqp_get_sc_object $P4247, "1304282255.673", 1
    get_how $P4248, $P4247
    nqp_get_sc_object $P4249, "1304282255.673", 1
    .const 'Sub' $P4250 = "113_1304282264.655" 
    $P4248."add_method"($P4249, "!PREFIX__quote_escape:sym<esc>", $P4250)
    nqp_get_sc_object $P4251, "1304282255.673", 1
    get_how $P4252, $P4251
    nqp_get_sc_object $P4253, "1304282255.673", 1
    .const 'Sub' $P4254 = "114_1304282264.655" 
    $P4252."add_method"($P4253, "quote_escape:sym<hex>", $P4254)
    nqp_get_sc_object $P4255, "1304282255.673", 1
    get_how $P4256, $P4255
    nqp_get_sc_object $P4257, "1304282255.673", 1
    .const 'Sub' $P4258 = "116_1304282264.655" 
    $P4256."add_method"($P4257, "!PREFIX__quote_escape:sym<hex>", $P4258)
    nqp_get_sc_object $P4259, "1304282255.673", 1
    get_how $P4260, $P4259
    nqp_get_sc_object $P4261, "1304282255.673", 1
    .const 'Sub' $P4262 = "117_1304282264.655" 
    $P4260."add_method"($P4261, "quote_escape:sym<oct>", $P4262)
    nqp_get_sc_object $P4263, "1304282255.673", 1
    get_how $P4264, $P4263
    nqp_get_sc_object $P4265, "1304282255.673", 1
    .const 'Sub' $P4266 = "119_1304282264.655" 
    $P4264."add_method"($P4265, "!PREFIX__quote_escape:sym<oct>", $P4266)
    nqp_get_sc_object $P4267, "1304282255.673", 1
    get_how $P4268, $P4267
    nqp_get_sc_object $P4269, "1304282255.673", 1
    .const 'Sub' $P4270 = "120_1304282264.655" 
    $P4268."add_method"($P4269, "quote_escape:sym<chr>", $P4270)
    nqp_get_sc_object $P4271, "1304282255.673", 1
    get_how $P4272, $P4271
    nqp_get_sc_object $P4273, "1304282255.673", 1
    .const 'Sub' $P4274 = "122_1304282264.655" 
    $P4272."add_method"($P4273, "!PREFIX__quote_escape:sym<chr>", $P4274)
    nqp_get_sc_object $P4275, "1304282255.673", 1
    get_how $P4276, $P4275
    nqp_get_sc_object $P4277, "1304282255.673", 1
    .const 'Sub' $P4278 = "123_1304282264.655" 
    $P4276."add_method"($P4277, "quote_escape:sym<0>", $P4278)
    nqp_get_sc_object $P4279, "1304282255.673", 1
    get_how $P4280, $P4279
    nqp_get_sc_object $P4281, "1304282255.673", 1
    .const 'Sub' $P4282 = "125_1304282264.655" 
    $P4280."add_method"($P4281, "!PREFIX__quote_escape:sym<0>", $P4282)
    nqp_get_sc_object $P4283, "1304282255.673", 1
    get_how $P4284, $P4283
    nqp_get_sc_object $P4285, "1304282255.673", 1
    .const 'Sub' $P4286 = "126_1304282264.655" 
    $P4284."add_method"($P4285, "quote_escape:sym<misc>", $P4286)
    nqp_get_sc_object $P4287, "1304282255.673", 1
    get_how $P4288, $P4287
    nqp_get_sc_object $P4289, "1304282255.673", 1
    .const 'Sub' $P4290 = "131_1304282264.655" 
    $P4288."add_method"($P4289, "!PREFIX__quote_escape:sym<misc>", $P4290)
    nqp_get_sc_object $P4291, "1304282255.673", 1
    get_how $P4292, $P4291
    nqp_get_sc_object $P4293, "1304282255.673", 1
    .const 'Sub' $P4294 = "132_1304282264.655" 
    $P4292."add_method"($P4293, "charname", $P4294)
    nqp_get_sc_object $P4295, "1304282255.673", 1
    get_how $P4296, $P4295
    nqp_get_sc_object $P4297, "1304282255.673", 1
    .const 'Sub' $P4298 = "135_1304282264.655" 
    $P4296."add_method"($P4297, "!PREFIX__charname", $P4298)
    nqp_get_sc_object $P4299, "1304282255.673", 1
    get_how $P4300, $P4299
    nqp_get_sc_object $P4301, "1304282255.673", 1
    .const 'Sub' $P4302 = "136_1304282264.655" 
    $P4300."add_method"($P4301, "charnames", $P4302)
    nqp_get_sc_object $P4303, "1304282255.673", 1
    get_how $P4304, $P4303
    nqp_get_sc_object $P4305, "1304282255.673", 1
    .const 'Sub' $P4306 = "138_1304282264.655" 
    $P4304."add_method"($P4305, "!PREFIX__charnames", $P4306)
    nqp_get_sc_object $P4307, "1304282255.673", 1
    get_how $P4308, $P4307
    nqp_get_sc_object $P4309, "1304282255.673", 1
    .const 'Sub' $P4310 = "139_1304282264.655" 
    $P4308."add_method"($P4309, "charspec", $P4310)
    nqp_get_sc_object $P4311, "1304282255.673", 1
    get_how $P4312, $P4311
    nqp_get_sc_object $P4313, "1304282255.673", 1
    .const 'Sub' $P4314 = "141_1304282264.655" 
    $P4312."add_method"($P4313, "!PREFIX__charspec", $P4314)
    nqp_get_sc_object $P4315, "1304282255.673", 1
    get_how $P4316, $P4315
    nqp_get_sc_object $P4317, "1304282255.673", 1
    .const 'Sub' $P4318 = "142_1304282264.655" 
    $P4316."add_method"($P4317, "O", $P4318)
    nqp_get_sc_object $P4319, "1304282255.673", 1
    get_how $P4320, $P4319
    nqp_get_sc_object $P4321, "1304282255.673", 1
    .const 'Sub' $P4322 = "143_1304282264.655" 
    $P4320."add_method"($P4321, "panic", $P4322)
    nqp_get_sc_object $P4323, "1304282255.673", 1
    get_how $P4324, $P4323
    nqp_get_sc_object $P4325, "1304282255.673", 1
    .const 'Sub' $P4326 = "144_1304282264.655" 
    $P4324."add_method"($P4325, "peek_delimiters", $P4326)
    nqp_get_sc_object $P4327, "1304282255.673", 1
    get_how $P4328, $P4327
    nqp_get_sc_object $P4329, "1304282255.673", 1
    .const 'Sub' $P4330 = "145_1304282264.655" 
    $P4328."add_method"($P4329, "quote_EXPR", $P4330)
    nqp_get_sc_object $P4331, "1304282255.673", 1
    get_how $P4332, $P4331
    nqp_get_sc_object $P4333, "1304282255.673", 1
    .const 'Sub' $P4334 = "146_1304282264.655" 
    $P4332."add_method"($P4333, "quotemod_check", $P4334)
    .const 'Sub' $P4335 = "146_1304282264.655" 
    nqp_get_sc_object $P4336, "1304282255.673", 1
    get_who $P4337, $P4336
    set $P4337["quotemod_check"], $P4335
    nqp_get_sc_object $P4338, "1304282255.673", 1
    get_how $P4339, $P4338
    nqp_get_sc_object $P4340, "1304282255.673", 1
    .const 'Sub' $P4341 = "147_1304282264.655" 
    $P4339."add_method"($P4340, "starter", $P4341)
    nqp_get_sc_object $P4342, "1304282255.673", 1
    get_how $P4343, $P4342
    nqp_get_sc_object $P4344, "1304282255.673", 1
    .const 'Sub' $P4345 = "148_1304282264.655" 
    $P4343."add_method"($P4344, "stopper", $P4345)
    nqp_get_sc_object $P4346, "1304282255.673", 1
    get_how $P4347, $P4346
    nqp_get_sc_object $P4348, "1304282255.673", 1
    .const 'Sub' $P4349 = "149_1304282264.655" 
    $P4347."add_method"($P4348, "split_words", $P4349)
    .const 'Sub' $P4350 = "149_1304282264.655" 
    nqp_get_sc_object $P4351, "1304282255.673", 1
    get_who $P4352, $P4351
    set $P4352["split_words"], $P4350
    nqp_get_sc_object $P4353, "1304282255.673", 1
    get_how $P4354, $P4353
    nqp_get_sc_object $P4355, "1304282255.673", 1
    .const 'Sub' $P4356 = "150_1304282264.655" 
    $P4354."add_method"($P4355, "EXPR", $P4356)
    nqp_get_sc_object $P4357, "1304282255.673", 1
    get_how $P4358, $P4357
    nqp_get_sc_object $P4359, "1304282255.673", 1
    .const 'Sub' $P4360 = "151_1304282264.655" 
    $P4358."add_method"($P4359, "EXPR_reduce", $P4360)
    nqp_get_sc_object $P4361, "1304282255.673", 1
    get_how $P4362, $P4361
    nqp_get_sc_object $P4363, "1304282255.673", 1
    .const 'Sub' $P4364 = "152_1304282264.655" 
    $P4362."add_method"($P4363, "ternary", $P4364)
    nqp_get_sc_object $P4365, "1304282255.673", 1
    get_how $P4366, $P4365
    nqp_get_sc_object $P4367, "1304282255.673", 1
    .const 'Sub' $P4368 = "153_1304282264.655" 
    $P4366."add_method"($P4367, "MARKER", $P4368)
    nqp_get_sc_object $P4369, "1304282255.673", 1
    get_how $P4370, $P4369
    nqp_get_sc_object $P4371, "1304282255.673", 1
    .const 'Sub' $P4372 = "154_1304282264.655" 
    $P4370."add_method"($P4371, "MARKED", $P4372)
    nqp_get_sc_object $P4373, "1304282255.673", 1
    get_how $P4374, $P4373
    nqp_get_sc_object $P4375, "1304282255.673", 1
    .const 'Sub' $P4376 = "155_1304282264.655" 
    $P4374."add_method"($P4375, "LANG", $P4376)
    .const 'Sub' $P4377 = "11_1304282264.655" 
    $P4378 = $P4377."get_lexinfo"()
    nqp_get_sc_object $P4379, "1304282255.673", 1
    $P4378."set_static_lexpad_value"("$?PACKAGE", $P4379)
    .const 'Sub' $P4380 = "11_1304282264.655" 
    $P4381 = $P4380."get_lexinfo"()
    $P4381."finish_static_lexpad"()
    .const 'Sub' $P4382 = "11_1304282264.655" 
    $P4383 = $P4382."get_lexinfo"()
    nqp_get_sc_object $P4384, "1304282255.673", 1
    $P4383."set_static_lexpad_value"("$?CLASS", $P4384)
    .const 'Sub' $P4385 = "11_1304282264.655" 
    $P4386 = $P4385."get_lexinfo"()
    $P4386."finish_static_lexpad"()
    nqp_get_sc_object $P4387, "1304282255.673", 1
    get_how $P4388, $P4387
    nqp_get_sc_object $P4389, "1304282255.673", 1
    nqp_get_sc_object $P4390, "__REGEX_CORE_SC__", 0
    $P4388."set_default_parent"($P4389, $P4390)
    nqp_get_sc_object $P4391, "1304282248.255", 41
    $P4392 = $P4391."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P4392, cur_sc
    nqp_set_sc_object "1304282255.673", 105, $P4392
    nqp_get_sc_object $P4393, "1304282255.673", 105
    nqp_get_sc_object $P4394, "1304282255.673", 0
    nqp_get_package_through_who $P4395, $P4394, "HLL"
    get_who $P4396, $P4395
    set $P4396["Actions"], $P4393
    .const 'Sub' $P4397 = "158_1304282264.655" 
    nqp_get_sc_object $P4398, "1304282255.673", 105
    get_who $P4399, $P4398
    set $P4399["string_to_int"], $P4397
    .const 'Sub' $P4400 = "160_1304282264.655" 
    nqp_get_sc_object $P4401, "1304282255.673", 105
    get_who $P4402, $P4401
    set $P4402["ints_to_string"], $P4400
    nqp_get_sc_object $P4403, "1304282255.673", 105
    get_how $P4404, $P4403
    nqp_get_sc_object $P4405, "1304282255.673", 105
    .const 'Sub' $P4406 = "163_1304282264.655" 
    $P4404."add_method"($P4405, "CTXSAVE", $P4406)
    nqp_get_sc_object $P4407, "1304282255.673", 105
    get_how $P4408, $P4407
    nqp_get_sc_object $P4409, "1304282255.673", 105
    .const 'Sub' $P4410 = "164_1304282264.655" 
    $P4408."add_method"($P4409, "SET_BLOCK_OUTER_CTX", $P4410)
    nqp_get_sc_object $P4411, "1304282255.673", 105
    get_how $P4412, $P4411
    nqp_get_sc_object $P4413, "1304282255.673", 105
    .const 'Sub' $P4414 = "167_1304282264.655" 
    $P4412."add_method"($P4413, "EXPR", $P4414)
    nqp_get_sc_object $P4415, "1304282255.673", 105
    get_how $P4416, $P4415
    nqp_get_sc_object $P4417, "1304282255.673", 105
    .const 'Sub' $P4418 = "170_1304282264.655" 
    $P4416."add_method"($P4417, "term:sym<circumfix>", $P4418)
    nqp_get_sc_object $P4419, "1304282255.673", 105
    get_how $P4420, $P4419
    nqp_get_sc_object $P4421, "1304282255.673", 105
    .const 'Sub' $P4422 = "171_1304282264.655" 
    $P4420."add_method"($P4421, "termish", $P4422)
    nqp_get_sc_object $P4423, "1304282255.673", 105
    get_how $P4424, $P4423
    nqp_get_sc_object $P4425, "1304282255.673", 105
    .const 'Sub' $P4426 = "172_1304282264.655" 
    $P4424."add_method"($P4425, "nullterm", $P4426)
    nqp_get_sc_object $P4427, "1304282255.673", 105
    get_how $P4428, $P4427
    nqp_get_sc_object $P4429, "1304282255.673", 105
    .const 'Sub' $P4430 = "173_1304282264.655" 
    $P4428."add_method"($P4429, "nullterm_alt", $P4430)
    nqp_get_sc_object $P4431, "1304282255.673", 105
    get_how $P4432, $P4431
    nqp_get_sc_object $P4433, "1304282255.673", 105
    .const 'Sub' $P4434 = "174_1304282264.655" 
    $P4432."add_method"($P4433, "integer", $P4434)
    nqp_get_sc_object $P4435, "1304282255.673", 105
    get_how $P4436, $P4435
    nqp_get_sc_object $P4437, "1304282255.673", 105
    .const 'Sub' $P4438 = "175_1304282264.655" 
    $P4436."add_method"($P4437, "dec_number", $P4438)
    nqp_get_sc_object $P4439, "1304282255.673", 105
    get_how $P4440, $P4439
    nqp_get_sc_object $P4441, "1304282255.673", 105
    .const 'Sub' $P4442 = "176_1304282264.655" 
    $P4440."add_method"($P4441, "decint", $P4442)
    nqp_get_sc_object $P4443, "1304282255.673", 105
    get_how $P4444, $P4443
    nqp_get_sc_object $P4445, "1304282255.673", 105
    .const 'Sub' $P4446 = "177_1304282264.655" 
    $P4444."add_method"($P4445, "hexint", $P4446)
    nqp_get_sc_object $P4447, "1304282255.673", 105
    get_how $P4448, $P4447
    nqp_get_sc_object $P4449, "1304282255.673", 105
    .const 'Sub' $P4450 = "178_1304282264.655" 
    $P4448."add_method"($P4449, "octint", $P4450)
    nqp_get_sc_object $P4451, "1304282255.673", 105
    get_how $P4452, $P4451
    nqp_get_sc_object $P4453, "1304282255.673", 105
    .const 'Sub' $P4454 = "179_1304282264.655" 
    $P4452."add_method"($P4453, "binint", $P4454)
    nqp_get_sc_object $P4455, "1304282255.673", 105
    get_how $P4456, $P4455
    nqp_get_sc_object $P4457, "1304282255.673", 105
    .const 'Sub' $P4458 = "180_1304282264.655" 
    $P4456."add_method"($P4457, "quote_EXPR", $P4458)
    nqp_get_sc_object $P4459, "1304282255.673", 105
    get_how $P4460, $P4459
    nqp_get_sc_object $P4461, "1304282255.673", 105
    .const 'Sub' $P4462 = "183_1304282264.655" 
    $P4460."add_method"($P4461, "quote_delimited", $P4462)
    nqp_get_sc_object $P4463, "1304282255.673", 105
    get_how $P4464, $P4463
    nqp_get_sc_object $P4465, "1304282255.673", 105
    .const 'Sub' $P4466 = "185_1304282264.655" 
    $P4464."add_method"($P4465, "quote_atom", $P4466)
    nqp_get_sc_object $P4467, "1304282255.673", 105
    get_how $P4468, $P4467
    nqp_get_sc_object $P4469, "1304282255.673", 105
    .const 'Sub' $P4470 = "186_1304282264.655" 
    $P4468."add_method"($P4469, "quote_escape:sym<backslash>", $P4470)
    nqp_get_sc_object $P4471, "1304282255.673", 105
    get_how $P4472, $P4471
    nqp_get_sc_object $P4473, "1304282255.673", 105
    .const 'Sub' $P4474 = "187_1304282264.655" 
    $P4472."add_method"($P4473, "quote_escape:sym<stopper>", $P4474)
    nqp_get_sc_object $P4475, "1304282255.673", 105
    get_how $P4476, $P4475
    nqp_get_sc_object $P4477, "1304282255.673", 105
    .const 'Sub' $P4478 = "188_1304282264.655" 
    $P4476."add_method"($P4477, "quote_escape:sym<bs>", $P4478)
    nqp_get_sc_object $P4479, "1304282255.673", 105
    get_how $P4480, $P4479
    nqp_get_sc_object $P4481, "1304282255.673", 105
    .const 'Sub' $P4482 = "189_1304282264.655" 
    $P4480."add_method"($P4481, "quote_escape:sym<nl>", $P4482)
    nqp_get_sc_object $P4483, "1304282255.673", 105
    get_how $P4484, $P4483
    nqp_get_sc_object $P4485, "1304282255.673", 105
    .const 'Sub' $P4486 = "190_1304282264.655" 
    $P4484."add_method"($P4485, "quote_escape:sym<cr>", $P4486)
    nqp_get_sc_object $P4487, "1304282255.673", 105
    get_how $P4488, $P4487
    nqp_get_sc_object $P4489, "1304282255.673", 105
    .const 'Sub' $P4490 = "191_1304282264.655" 
    $P4488."add_method"($P4489, "quote_escape:sym<tab>", $P4490)
    nqp_get_sc_object $P4491, "1304282255.673", 105
    get_how $P4492, $P4491
    nqp_get_sc_object $P4493, "1304282255.673", 105
    .const 'Sub' $P4494 = "192_1304282264.655" 
    $P4492."add_method"($P4493, "quote_escape:sym<ff>", $P4494)
    nqp_get_sc_object $P4495, "1304282255.673", 105
    get_how $P4496, $P4495
    nqp_get_sc_object $P4497, "1304282255.673", 105
    .const 'Sub' $P4498 = "193_1304282264.655" 
    $P4496."add_method"($P4497, "quote_escape:sym<esc>", $P4498)
    nqp_get_sc_object $P4499, "1304282255.673", 105
    get_how $P4500, $P4499
    nqp_get_sc_object $P4501, "1304282255.673", 105
    .const 'Sub' $P4502 = "194_1304282264.655" 
    $P4500."add_method"($P4501, "quote_escape:sym<hex>", $P4502)
    nqp_get_sc_object $P4503, "1304282255.673", 105
    get_how $P4504, $P4503
    nqp_get_sc_object $P4505, "1304282255.673", 105
    .const 'Sub' $P4506 = "195_1304282264.655" 
    $P4504."add_method"($P4505, "quote_escape:sym<oct>", $P4506)
    nqp_get_sc_object $P4507, "1304282255.673", 105
    get_how $P4508, $P4507
    nqp_get_sc_object $P4509, "1304282255.673", 105
    .const 'Sub' $P4510 = "196_1304282264.655" 
    $P4508."add_method"($P4509, "quote_escape:sym<chr>", $P4510)
    nqp_get_sc_object $P4511, "1304282255.673", 105
    get_how $P4512, $P4511
    nqp_get_sc_object $P4513, "1304282255.673", 105
    .const 'Sub' $P4514 = "197_1304282264.655" 
    $P4512."add_method"($P4513, "quote_escape:sym<0>", $P4514)
    nqp_get_sc_object $P4515, "1304282255.673", 105
    get_how $P4516, $P4515
    nqp_get_sc_object $P4517, "1304282255.673", 105
    .const 'Sub' $P4518 = "198_1304282264.655" 
    $P4516."add_method"($P4517, "quote_escape:sym<misc>", $P4518)
    nqp_get_sc_object $P4519, "1304282255.673", 105
    get_how $P4520, $P4519
    nqp_get_sc_object $P4521, "1304282255.673", 105
    .const 'Sub' $P4522 = "199_1304282264.655" 
    $P4520."add_method"($P4521, "charname", $P4522)
    nqp_get_sc_object $P4523, "1304282255.673", 105
    get_how $P4524, $P4523
    nqp_get_sc_object $P4525, "1304282255.673", 105
    .const 'Sub' $P4526 = "200_1304282264.655" 
    $P4524."add_method"($P4525, "charnames", $P4526)
    nqp_get_sc_object $P4527, "1304282255.673", 105
    get_how $P4528, $P4527
    nqp_get_sc_object $P4529, "1304282255.673", 105
    .const 'Sub' $P4530 = "202_1304282264.655" 
    $P4528."add_method"($P4529, "charspec", $P4530)
    .const 'Sub' $P4531 = "157_1304282264.655" 
    $P4532 = $P4531."get_lexinfo"()
    nqp_get_sc_object $P4533, "1304282255.673", 105
    $P4532."set_static_lexpad_value"("$?PACKAGE", $P4533)
    .const 'Sub' $P4534 = "157_1304282264.655" 
    $P4535 = $P4534."get_lexinfo"()
    $P4535."finish_static_lexpad"()
    .const 'Sub' $P4536 = "157_1304282264.655" 
    $P4537 = $P4536."get_lexinfo"()
    nqp_get_sc_object $P4538, "1304282255.673", 105
    $P4537."set_static_lexpad_value"("$?CLASS", $P4538)
    .const 'Sub' $P4539 = "157_1304282264.655" 
    $P4540 = $P4539."get_lexinfo"()
    $P4540."finish_static_lexpad"()
    nqp_get_sc_object $P4541, "1304282255.673", 105
    get_how $P4542, $P4541
    nqp_get_sc_object $P4543, "1304282255.673", 105
    nqp_get_sc_object $P4544, "1304282253.981", 5
    $P4542."set_default_parent"($P4543, $P4544)
    nqp_get_sc_object $P4545, "1304282248.255", 41
    $P4546 = $P4545."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P4546, cur_sc
    nqp_set_sc_object "1304282255.673", 138, $P4546
    nqp_get_sc_object $P4547, "1304282255.673", 138
    nqp_get_sc_object $P4548, "1304282255.673", 0
    nqp_get_package_through_who $P4549, $P4548, "HLL"
    get_who $P4550, $P4549
    set $P4550["Compiler"], $P4547
    nqp_get_sc_object $P4551, "1304282255.673", 138
    get_how $P4552, $P4551
    nqp_get_sc_object $P4553, "1304282255.673", 138
    nqp_get_sc_object $P4554, "1304282248.255", 77
    $P4555 = $P4554."new"("@!stages" :named("name"))
    $P4552."add_attribute"($P4553, $P4555)
    nqp_get_sc_object $P4556, "1304282255.673", 138
    get_how $P4557, $P4556
    nqp_get_sc_object $P4558, "1304282255.673", 138
    nqp_get_sc_object $P4559, "1304282248.255", 77
    $P4560 = $P4559."new"("$!parsegrammar" :named("name"))
    $P4557."add_attribute"($P4558, $P4560)
    nqp_get_sc_object $P4561, "1304282255.673", 138
    get_how $P4562, $P4561
    nqp_get_sc_object $P4563, "1304282255.673", 138
    nqp_get_sc_object $P4564, "1304282248.255", 77
    $P4565 = $P4564."new"("$!parseactions" :named("name"))
    $P4562."add_attribute"($P4563, $P4565)
    nqp_get_sc_object $P4566, "1304282255.673", 138
    get_how $P4567, $P4566
    nqp_get_sc_object $P4568, "1304282255.673", 138
    nqp_get_sc_object $P4569, "1304282248.255", 77
    $P4570 = $P4569."new"("$!astgrammar" :named("name"))
    $P4567."add_attribute"($P4568, $P4570)
    nqp_get_sc_object $P4571, "1304282255.673", 138
    get_how $P4572, $P4571
    nqp_get_sc_object $P4573, "1304282255.673", 138
    nqp_get_sc_object $P4574, "1304282248.255", 77
    $P4575 = $P4574."new"("$!commandline_banner" :named("name"))
    $P4572."add_attribute"($P4573, $P4575)
    nqp_get_sc_object $P4576, "1304282255.673", 138
    get_how $P4577, $P4576
    nqp_get_sc_object $P4578, "1304282255.673", 138
    nqp_get_sc_object $P4579, "1304282248.255", 77
    $P4580 = $P4579."new"("$!commandline_prompt" :named("name"))
    $P4577."add_attribute"($P4578, $P4580)
    nqp_get_sc_object $P4581, "1304282255.673", 138
    get_how $P4582, $P4581
    nqp_get_sc_object $P4583, "1304282255.673", 138
    nqp_get_sc_object $P4584, "1304282248.255", 77
    $P4585 = $P4584."new"("@!cmdoptions" :named("name"))
    $P4582."add_attribute"($P4583, $P4585)
    nqp_get_sc_object $P4586, "1304282255.673", 138
    get_how $P4587, $P4586
    nqp_get_sc_object $P4588, "1304282255.673", 138
    nqp_get_sc_object $P4589, "1304282248.255", 77
    $P4590 = $P4589."new"("$!usage" :named("name"))
    $P4587."add_attribute"($P4588, $P4590)
    nqp_get_sc_object $P4591, "1304282255.673", 138
    get_how $P4592, $P4591
    nqp_get_sc_object $P4593, "1304282255.673", 138
    nqp_get_sc_object $P4594, "1304282248.255", 77
    $P4595 = $P4594."new"("$!version" :named("name"))
    $P4592."add_attribute"($P4593, $P4595)
    nqp_get_sc_object $P4596, "1304282255.673", 138
    get_how $P4597, $P4596
    nqp_get_sc_object $P4598, "1304282255.673", 138
    nqp_get_sc_object $P4599, "1304282248.255", 77
    $P4600 = $P4599."new"("$!compiler_progname" :named("name"))
    $P4597."add_attribute"($P4598, $P4600)
    nqp_get_sc_object $P4601, "1304282255.673", 138
    get_how $P4602, $P4601
    nqp_get_sc_object $P4603, "1304282255.673", 138
    nqp_get_sc_object $P4604, "1304282248.255", 77
    $P4605 = $P4604."new"("$!language" :named("name"))
    $P4602."add_attribute"($P4603, $P4605)
    nqp_get_sc_object $P4606, "1304282255.673", 138
    get_how $P4607, $P4606
    nqp_get_sc_object $P4608, "1304282255.673", 138
    .const 'Sub' $P4609 = "207_1304282264.655" 
    $P4607."add_method"($P4608, "new", $P4609)
    nqp_get_sc_object $P4610, "1304282255.673", 138
    get_how $P4611, $P4610
    nqp_get_sc_object $P4612, "1304282255.673", 138
    .const 'Sub' $P4613 = "208_1304282264.655" 
    $P4611."add_method"($P4612, "BUILD", $P4613)
    nqp_get_sc_object $P4614, "1304282255.673", 138
    get_how $P4615, $P4614
    nqp_get_sc_object $P4616, "1304282255.673", 138
    .const 'Sub' $P4617 = "210_1304282264.655" 
    $P4615."add_method"($P4616, "get_exports", $P4617)
    nqp_get_sc_object $P4618, "1304282255.673", 138
    get_how $P4619, $P4618
    nqp_get_sc_object $P4620, "1304282255.673", 138
    .const 'Sub' $P4621 = "213_1304282264.655" 
    $P4619."add_method"($P4620, "get_module", $P4621)
    nqp_get_sc_object $P4622, "1304282255.673", 138
    get_how $P4623, $P4622
    nqp_get_sc_object $P4624, "1304282255.673", 138
    .const 'Sub' $P4625 = "214_1304282264.655" 
    $P4623."add_method"($P4624, "language", $P4625)
    nqp_get_sc_object $P4626, "1304282255.673", 138
    get_how $P4627, $P4626
    nqp_get_sc_object $P4628, "1304282255.673", 138
    .const 'Sub' $P4629 = "215_1304282264.655" 
    $P4627."add_method"($P4628, "load_module", $P4629)
    nqp_get_sc_object $P4630, "1304282255.673", 138
    get_how $P4631, $P4630
    nqp_get_sc_object $P4632, "1304282255.673", 138
    .const 'Sub' $P4633 = "217_1304282264.655" 
    $P4631."add_method"($P4632, "import", $P4633)
    nqp_get_sc_object $P4634, "1304282255.673", 138
    get_how $P4635, $P4634
    nqp_get_sc_object $P4636, "1304282255.673", 138
    .const 'Sub' $P4637 = "222_1304282264.655" 
    $P4635."add_method"($P4636, "autoprint", $P4637)
    nqp_get_sc_object $P4638, "1304282255.673", 138
    get_how $P4639, $P4638
    nqp_get_sc_object $P4640, "1304282255.673", 138
    .const 'Sub' $P4641 = "223_1304282264.655" 
    $P4639."add_method"($P4640, "interactive", $P4641)
    nqp_get_sc_object $P4642, "1304282255.673", 138
    get_how $P4643, $P4642
    nqp_get_sc_object $P4644, "1304282255.673", 138
    .const 'Sub' $P4645 = "230_1304282264.655" 
    $P4643."add_method"($P4644, "eval", $P4645)
    nqp_get_sc_object $P4646, "1304282255.673", 138
    get_how $P4647, $P4646
    nqp_get_sc_object $P4648, "1304282255.673", 138
    .const 'Sub' $P4649 = "232_1304282264.655" 
    $P4647."add_method"($P4648, "ctxsave", $P4649)
    nqp_get_sc_object $P4650, "1304282255.673", 138
    get_how $P4651, $P4650
    nqp_get_sc_object $P4652, "1304282255.673", 138
    .const 'Sub' $P4653 = "233_1304282264.655" 
    $P4651."add_method"($P4652, "panic", $P4653)
    nqp_get_sc_object $P4654, "1304282255.673", 138
    get_how $P4655, $P4654
    nqp_get_sc_object $P4656, "1304282255.673", 138
    .const 'Sub' $P4657 = "234_1304282264.655" 
    $P4655."add_method"($P4656, "stages", $P4657)
    nqp_get_sc_object $P4658, "1304282255.673", 138
    get_how $P4659, $P4658
    nqp_get_sc_object $P4660, "1304282255.673", 138
    .const 'Sub' $P4661 = "235_1304282264.655" 
    $P4659."add_method"($P4660, "parsegrammar", $P4661)
    nqp_get_sc_object $P4662, "1304282255.673", 138
    get_how $P4663, $P4662
    nqp_get_sc_object $P4664, "1304282255.673", 138
    .const 'Sub' $P4665 = "236_1304282264.655" 
    $P4663."add_method"($P4664, "parseactions", $P4665)
    nqp_get_sc_object $P4666, "1304282255.673", 138
    get_how $P4667, $P4666
    nqp_get_sc_object $P4668, "1304282255.673", 138
    .const 'Sub' $P4669 = "237_1304282264.655" 
    $P4667."add_method"($P4668, "astgrammar", $P4669)
    nqp_get_sc_object $P4670, "1304282255.673", 138
    get_how $P4671, $P4670
    nqp_get_sc_object $P4672, "1304282255.673", 138
    .const 'Sub' $P4673 = "238_1304282264.655" 
    $P4671."add_method"($P4672, "commandline_banner", $P4673)
    nqp_get_sc_object $P4674, "1304282255.673", 138
    get_how $P4675, $P4674
    nqp_get_sc_object $P4676, "1304282255.673", 138
    .const 'Sub' $P4677 = "239_1304282264.655" 
    $P4675."add_method"($P4676, "commandline_prompt", $P4677)
    nqp_get_sc_object $P4678, "1304282255.673", 138
    get_how $P4679, $P4678
    nqp_get_sc_object $P4680, "1304282255.673", 138
    .const 'Sub' $P4681 = "240_1304282264.655" 
    $P4679."add_method"($P4680, "compiler_progname", $P4681)
    nqp_get_sc_object $P4682, "1304282255.673", 138
    get_how $P4683, $P4682
    nqp_get_sc_object $P4684, "1304282255.673", 138
    .const 'Sub' $P4685 = "241_1304282264.655" 
    $P4683."add_method"($P4684, "commandline_options", $P4685)
    nqp_get_sc_object $P4686, "1304282255.673", 138
    get_how $P4687, $P4686
    nqp_get_sc_object $P4688, "1304282255.673", 138
    .const 'Sub' $P4689 = "242_1304282264.655" 
    $P4687."add_method"($P4688, "command_line", $P4689)
    nqp_get_sc_object $P4690, "1304282255.673", 138
    get_how $P4691, $P4690
    nqp_get_sc_object $P4692, "1304282255.673", 138
    .const 'Sub' $P4693 = "244_1304282264.655" 
    $P4691."add_method"($P4692, "process_args", $P4693)
    nqp_get_sc_object $P4694, "1304282255.673", 138
    get_how $P4695, $P4694
    nqp_get_sc_object $P4696, "1304282255.673", 138
    .const 'Sub' $P4697 = "247_1304282264.655" 
    $P4695."add_method"($P4696, "evalfiles", $P4697)
    nqp_get_sc_object $P4698, "1304282255.673", 138
    get_how $P4699, $P4698
    nqp_get_sc_object $P4700, "1304282255.673", 138
    .const 'Sub' $P4701 = "251_1304282264.655" 
    $P4699."add_method"($P4700, "compile", $P4701)
    nqp_get_sc_object $P4702, "1304282255.673", 138
    get_how $P4703, $P4702
    nqp_get_sc_object $P4704, "1304282255.673", 138
    .const 'Sub' $P4705 = "253_1304282264.655" 
    $P4703."add_method"($P4704, "parse", $P4705)
    nqp_get_sc_object $P4706, "1304282255.673", 138
    get_how $P4707, $P4706
    nqp_get_sc_object $P4708, "1304282255.673", 138
    .const 'Sub' $P4709 = "254_1304282264.655" 
    $P4707."add_method"($P4708, "past", $P4709)
    nqp_get_sc_object $P4710, "1304282255.673", 138
    get_how $P4711, $P4710
    nqp_get_sc_object $P4712, "1304282255.673", 138
    .const 'Sub' $P4713 = "255_1304282264.655" 
    $P4711."add_method"($P4712, "post", $P4713)
    nqp_get_sc_object $P4714, "1304282255.673", 138
    get_how $P4715, $P4714
    nqp_get_sc_object $P4716, "1304282255.673", 138
    .const 'Sub' $P4717 = "256_1304282264.655" 
    $P4715."add_method"($P4716, "pir", $P4717)
    nqp_get_sc_object $P4718, "1304282255.673", 138
    get_how $P4719, $P4718
    nqp_get_sc_object $P4720, "1304282255.673", 138
    .const 'Sub' $P4721 = "257_1304282264.655" 
    $P4719."add_method"($P4720, "evalpmc", $P4721)
    nqp_get_sc_object $P4722, "1304282255.673", 138
    get_how $P4723, $P4722
    nqp_get_sc_object $P4724, "1304282255.673", 138
    .const 'Sub' $P4725 = "258_1304282264.655" 
    $P4723."add_method"($P4724, "dumper", $P4725)
    nqp_get_sc_object $P4726, "1304282255.673", 138
    get_how $P4727, $P4726
    nqp_get_sc_object $P4728, "1304282255.673", 138
    .const 'Sub' $P4729 = "260_1304282264.655" 
    $P4727."add_method"($P4728, "usage", $P4729)
    nqp_get_sc_object $P4730, "1304282255.673", 138
    get_how $P4731, $P4730
    nqp_get_sc_object $P4732, "1304282255.673", 138
    .const 'Sub' $P4733 = "261_1304282264.655" 
    $P4731."add_method"($P4732, "version", $P4733)
    nqp_get_sc_object $P4734, "1304282255.673", 138
    get_how $P4735, $P4734
    nqp_get_sc_object $P4736, "1304282255.673", 138
    .const 'Sub' $P4737 = "262_1304282264.655" 
    $P4735."add_method"($P4736, "removestage", $P4737)
    nqp_get_sc_object $P4738, "1304282255.673", 138
    get_how $P4739, $P4738
    nqp_get_sc_object $P4740, "1304282255.673", 138
    .const 'Sub' $P4741 = "264_1304282264.655" 
    $P4739."add_method"($P4740, "addstage", $P4741)
    nqp_get_sc_object $P4742, "1304282255.673", 138
    get_how $P4743, $P4742
    nqp_get_sc_object $P4744, "1304282255.673", 138
    .const 'Sub' $P4745 = "267_1304282264.655" 
    $P4743."add_method"($P4744, "parse_name", $P4745)
    nqp_get_sc_object $P4746, "1304282255.673", 138
    get_how $P4747, $P4746
    nqp_get_sc_object $P4748, "1304282255.673", 138
    .const 'Sub' $P4749 = "269_1304282264.655" 
    $P4747."add_method"($P4748, "lineof", $P4749)
    .const 'Sub' $P4750 = "204_1304282264.655" 
    $P4751 = $P4750."get_lexinfo"()
    nqp_get_sc_object $P4752, "1304282255.673", 138
    $P4751."set_static_lexpad_value"("$?PACKAGE", $P4752)
    .const 'Sub' $P4753 = "204_1304282264.655" 
    $P4754 = $P4753."get_lexinfo"()
    $P4754."finish_static_lexpad"()
    .const 'Sub' $P4755 = "204_1304282264.655" 
    $P4756 = $P4755."get_lexinfo"()
    nqp_get_sc_object $P4757, "1304282255.673", 138
    $P4756."set_static_lexpad_value"("$?CLASS", $P4757)
    .const 'Sub' $P4758 = "204_1304282264.655" 
    $P4759 = $P4758."get_lexinfo"()
    $P4759."finish_static_lexpad"()
    nqp_get_sc_object $P4760, "1304282255.673", 138
    get_how $P4761, $P4760
    nqp_get_sc_object $P4762, "1304282255.673", 138
    nqp_get_sc_object $P4763, "1304282253.981", 5
    $P4761."set_default_parent"($P4762, $P4763)
    nqp_get_sc_object $P4764, "1304282248.255", 41
    $P4765 = $P4764."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4765, cur_sc
    nqp_set_sc_object "1304282255.673", 175, $P4765
    nqp_get_sc_object $P4766, "1304282255.673", 175
    nqp_get_sc_object $P4767, "1304282255.673", 0
    nqp_get_package_through_who $P4768, $P4767, "HLL"
    nqp_get_package_through_who $P4769, $P4768, "CommandLine"
    get_who $P4770, $P4769
    set $P4770["Result"], $P4766
    nqp_get_sc_object $P4771, "1304282255.673", 175
    get_how $P4772, $P4771
    nqp_get_sc_object $P4773, "1304282255.673", 175
    nqp_get_sc_object $P4774, "1304282248.255", 77
    $P4775 = $P4774."new"("@!arguments" :named("name"))
    $P4772."add_attribute"($P4773, $P4775)
    nqp_get_sc_object $P4776, "1304282255.673", 175
    get_how $P4777, $P4776
    nqp_get_sc_object $P4778, "1304282255.673", 175
    nqp_get_sc_object $P4779, "1304282248.255", 77
    $P4780 = $P4779."new"("%!options" :named("name"))
    $P4777."add_attribute"($P4778, $P4780)
    nqp_get_sc_object $P4781, "1304282255.673", 175
    get_how $P4782, $P4781
    nqp_get_sc_object $P4783, "1304282255.673", 175
    .const 'Sub' $P4784 = "272_1304282264.655" 
    $P4782."add_method"($P4783, "init", $P4784)
    nqp_get_sc_object $P4785, "1304282255.673", 175
    get_how $P4786, $P4785
    nqp_get_sc_object $P4787, "1304282255.673", 175
    .const 'Sub' $P4788 = "273_1304282264.655" 
    $P4786."add_method"($P4787, "arguments", $P4788)
    nqp_get_sc_object $P4789, "1304282255.673", 175
    get_how $P4790, $P4789
    nqp_get_sc_object $P4791, "1304282255.673", 175
    .const 'Sub' $P4792 = "274_1304282264.655" 
    $P4790."add_method"($P4791, "options", $P4792)
    nqp_get_sc_object $P4793, "1304282255.673", 175
    get_how $P4794, $P4793
    nqp_get_sc_object $P4795, "1304282255.673", 175
    .const 'Sub' $P4796 = "275_1304282264.655" 
    $P4794."add_method"($P4795, "add-argument", $P4796)
    nqp_get_sc_object $P4797, "1304282255.673", 175
    get_how $P4798, $P4797
    nqp_get_sc_object $P4799, "1304282255.673", 175
    .const 'Sub' $P4800 = "276_1304282264.655" 
    $P4798."add_method"($P4799, "add-option", $P4800)
    .const 'Sub' $P4801 = "271_1304282264.655" 
    $P4802 = $P4801."get_lexinfo"()
    nqp_get_sc_object $P4803, "1304282255.673", 175
    $P4802."set_static_lexpad_value"("$?PACKAGE", $P4803)
    .const 'Sub' $P4804 = "271_1304282264.655" 
    $P4805 = $P4804."get_lexinfo"()
    $P4805."finish_static_lexpad"()
    .const 'Sub' $P4806 = "271_1304282264.655" 
    $P4807 = $P4806."get_lexinfo"()
    nqp_get_sc_object $P4808, "1304282255.673", 175
    $P4807."set_static_lexpad_value"("$?CLASS", $P4808)
    .const 'Sub' $P4809 = "271_1304282264.655" 
    $P4810 = $P4809."get_lexinfo"()
    $P4810."finish_static_lexpad"()
    nqp_get_sc_object $P4811, "1304282255.673", 175
    get_how $P4812, $P4811
    nqp_get_sc_object $P4813, "1304282255.673", 175
    nqp_get_sc_object $P4814, "1304282253.981", 5
    $P4812."set_default_parent"($P4813, $P4814)
    nqp_get_sc_object $P4815, "1304282248.255", 41
    $P4816 = $P4815."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4816, cur_sc
    nqp_set_sc_object "1304282255.673", 181, $P4816
    nqp_get_sc_object $P4817, "1304282255.673", 181
    nqp_get_sc_object $P4818, "1304282255.673", 0
    nqp_get_package_through_who $P4819, $P4818, "HLL"
    nqp_get_package_through_who $P4820, $P4819, "CommandLine"
    get_who $P4821, $P4820
    set $P4821["Parser"], $P4817
    nqp_get_sc_object $P4822, "1304282255.673", 181
    get_how $P4823, $P4822
    nqp_get_sc_object $P4824, "1304282255.673", 181
    nqp_get_sc_object $P4825, "1304282248.255", 77
    $P4826 = $P4825."new"("@!specs" :named("name"))
    $P4823."add_attribute"($P4824, $P4826)
    nqp_get_sc_object $P4827, "1304282255.673", 181
    get_how $P4828, $P4827
    nqp_get_sc_object $P4829, "1304282255.673", 181
    nqp_get_sc_object $P4830, "1304282248.255", 77
    $P4831 = $P4830."new"("%!options" :named("name"))
    $P4828."add_attribute"($P4829, $P4831)
    nqp_get_sc_object $P4832, "1304282255.673", 181
    get_how $P4833, $P4832
    nqp_get_sc_object $P4834, "1304282255.673", 181
    nqp_get_sc_object $P4835, "1304282248.255", 77
    $P4836 = $P4835."new"("%!stopper" :named("name"))
    $P4833."add_attribute"($P4834, $P4836)
    nqp_get_sc_object $P4837, "1304282255.673", 181
    get_how $P4838, $P4837
    nqp_get_sc_object $P4839, "1304282255.673", 181
    nqp_get_sc_object $P4840, "1304282248.255", 77
    $P4841 = $P4840."new"("$!stop-after-first-arg" :named("name"))
    $P4838."add_attribute"($P4839, $P4841)
    nqp_get_sc_object $P4842, "1304282255.673", 181
    get_how $P4843, $P4842
    nqp_get_sc_object $P4844, "1304282255.673", 181
    .const 'Sub' $P4845 = "280_1304282264.655" 
    $P4843."add_method"($P4844, "new", $P4845)
    nqp_get_sc_object $P4846, "1304282255.673", 181
    get_how $P4847, $P4846
    nqp_get_sc_object $P4848, "1304282255.673", 181
    .const 'Sub' $P4849 = "281_1304282264.655" 
    $P4847."add_method"($P4848, "stop-after-first-arg", $P4849)
    nqp_get_sc_object $P4850, "1304282255.673", 181
    get_how $P4851, $P4850
    nqp_get_sc_object $P4852, "1304282255.673", 181
    .const 'Sub' $P4853 = "282_1304282264.655" 
    $P4851."add_method"($P4852, "BUILD", $P4853)
    nqp_get_sc_object $P4854, "1304282255.673", 181
    get_how $P4855, $P4854
    nqp_get_sc_object $P4856, "1304282255.673", 181
    .const 'Sub' $P4857 = "284_1304282264.655" 
    $P4855."add_method"($P4856, "add-stopper", $P4857)
    nqp_get_sc_object $P4858, "1304282255.673", 181
    get_how $P4859, $P4858
    nqp_get_sc_object $P4860, "1304282255.673", 181
    .const 'Sub' $P4861 = "285_1304282264.655" 
    $P4859."add_method"($P4860, "split-option-aliases", $P4861)
    nqp_get_sc_object $P4862, "1304282255.673", 181
    get_how $P4863, $P4862
    nqp_get_sc_object $P4864, "1304282255.673", 181
    .const 'Sub' $P4865 = "286_1304282264.655" 
    $P4863."add_method"($P4864, "add-spec", $P4865)
    nqp_get_sc_object $P4866, "1304282255.673", 181
    get_how $P4867, $P4866
    nqp_get_sc_object $P4868, "1304282255.673", 181
    .const 'Sub' $P4869 = "288_1304282264.655" 
    $P4867."add_method"($P4868, "is-option", $P4869)
    nqp_get_sc_object $P4870, "1304282255.673", 181
    get_how $P4871, $P4870
    nqp_get_sc_object $P4872, "1304282255.673", 181
    .const 'Sub' $P4873 = "289_1304282264.655" 
    $P4871."add_method"($P4872, "wants-value", $P4873)
    nqp_get_sc_object $P4874, "1304282255.673", 181
    get_how $P4875, $P4874
    nqp_get_sc_object $P4876, "1304282255.673", 181
    .const 'Sub' $P4877 = "290_1304282264.655" 
    $P4875."add_method"($P4876, "parse", $P4877)
    .const 'Sub' $P4878 = "279_1304282264.655" 
    $P4879 = $P4878."get_lexinfo"()
    nqp_get_sc_object $P4880, "1304282255.673", 181
    $P4879."set_static_lexpad_value"("$?PACKAGE", $P4880)
    .const 'Sub' $P4881 = "279_1304282264.655" 
    $P4882 = $P4881."get_lexinfo"()
    $P4882."finish_static_lexpad"()
    .const 'Sub' $P4883 = "279_1304282264.655" 
    $P4884 = $P4883."get_lexinfo"()
    nqp_get_sc_object $P4885, "1304282255.673", 181
    $P4884."set_static_lexpad_value"("$?CLASS", $P4885)
    .const 'Sub' $P4886 = "279_1304282264.655" 
    $P4887 = $P4886."get_lexinfo"()
    $P4887."finish_static_lexpad"()
    nqp_get_sc_object $P4888, "1304282255.673", 181
    get_how $P4889, $P4888
    nqp_get_sc_object $P4890, "1304282255.673", 181
    nqp_get_sc_object $P4891, "1304282253.981", 5
    $P4889."set_default_parent"($P4890, $P4891)
    nqp_get_sc_object $P4892, "1304282248.255", 41
    $P4893 = $P4892."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4893, cur_sc
    nqp_set_sc_object "1304282255.673", 191, $P4893
    nqp_get_sc_object $P4894, "1304282255.673", 191
    nqp_get_sc_object $P4895, "1304282255.673", 0
    nqp_get_package_through_who $P4896, $P4895, "HLL"
    nqp_get_package_through_who $P4897, $P4896, "Compiler"
    get_who $P4898, $P4897
    set $P4898["SerializationContextBuilder"], $P4894
    nqp_get_sc_object $P4899, "1304282248.255", 41
    $P4900 = $P4899."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4900, cur_sc
    nqp_set_sc_object "1304282255.673", 192, $P4900
    .const 'Sub' $P4901 = "299_1304282264.655" 
    $P4902 = $P4901."get_lexinfo"()
    nqp_get_sc_object $P4903, "1304282255.673", 192
    $P4902."set_static_lexpad_value"("Event", $P4903)
    .const 'Sub' $P4904 = "299_1304282264.655" 
    $P4905 = $P4904."get_lexinfo"()
    $P4905."finish_static_lexpad"()
    nqp_get_sc_object $P4906, "1304282255.673", 192
    get_how $P4907, $P4906
    nqp_get_sc_object $P4908, "1304282255.673", 192
    nqp_get_sc_object $P4909, "1304282248.255", 77
    $P4910 = $P4909."new"("$!deserialize_past" :named("name"))
    $P4907."add_attribute"($P4908, $P4910)
    nqp_get_sc_object $P4911, "1304282255.673", 192
    get_how $P4912, $P4911
    nqp_get_sc_object $P4913, "1304282255.673", 192
    .const 'Sub' $P4914 = "302_1304282264.655" 
    $P4912."add_method"($P4913, "deserialize_past", $P4914)
    nqp_get_sc_object $P4915, "1304282255.673", 192
    get_how $P4916, $P4915
    nqp_get_sc_object $P4917, "1304282255.673", 192
    nqp_get_sc_object $P4918, "1304282248.255", 77
    $P4919 = $P4918."new"("$!fixup_past" :named("name"))
    $P4916."add_attribute"($P4917, $P4919)
    nqp_get_sc_object $P4920, "1304282255.673", 192
    get_how $P4921, $P4920
    nqp_get_sc_object $P4922, "1304282255.673", 192
    .const 'Sub' $P4923 = "303_1304282264.655" 
    $P4921."add_method"($P4922, "fixup_past", $P4923)
    .const 'Sub' $P4924 = "301_1304282264.655" 
    $P4925 = $P4924."get_lexinfo"()
    nqp_get_sc_object $P4926, "1304282255.673", 192
    $P4925."set_static_lexpad_value"("$?PACKAGE", $P4926)
    .const 'Sub' $P4927 = "301_1304282264.655" 
    $P4928 = $P4927."get_lexinfo"()
    $P4928."finish_static_lexpad"()
    .const 'Sub' $P4929 = "301_1304282264.655" 
    $P4930 = $P4929."get_lexinfo"()
    nqp_get_sc_object $P4931, "1304282255.673", 192
    $P4930."set_static_lexpad_value"("$?CLASS", $P4931)
    .const 'Sub' $P4932 = "301_1304282264.655" 
    $P4933 = $P4932."get_lexinfo"()
    $P4933."finish_static_lexpad"()
    nqp_get_sc_object $P4934, "1304282255.673", 192
    get_how $P4935, $P4934
    nqp_get_sc_object $P4936, "1304282255.673", 192
    nqp_get_sc_object $P4937, "1304282253.981", 5
    $P4935."set_default_parent"($P4936, $P4937)
    nqp_get_sc_object $P4938, "1304282255.673", 191
    get_how $P4939, $P4938
    nqp_get_sc_object $P4940, "1304282255.673", 191
    nqp_get_sc_object $P4941, "1304282248.255", 77
    $P4942 = $P4941."new"("$!sc" :named("name"))
    $P4939."add_attribute"($P4940, $P4942)
    nqp_get_sc_object $P4943, "1304282255.673", 191
    get_how $P4944, $P4943
    nqp_get_sc_object $P4945, "1304282255.673", 191
    nqp_get_sc_object $P4946, "1304282248.255", 77
    $P4947 = $P4946."new"("$!handle" :named("name"))
    $P4944."add_attribute"($P4945, $P4947)
    nqp_get_sc_object $P4948, "1304282255.673", 191
    get_how $P4949, $P4948
    nqp_get_sc_object $P4950, "1304282255.673", 191
    nqp_get_sc_object $P4951, "1304282248.255", 77
    $P4952 = $P4951."new"("%!addr_to_slot" :named("name"))
    $P4949."add_attribute"($P4950, $P4952)
    nqp_get_sc_object $P4953, "1304282255.673", 191
    get_how $P4954, $P4953
    nqp_get_sc_object $P4955, "1304282255.673", 191
    nqp_get_sc_object $P4956, "1304282248.255", 77
    $P4957 = $P4956."new"("@!event_stream" :named("name"))
    $P4954."add_attribute"($P4955, $P4957)
    nqp_get_sc_object $P4958, "1304282255.673", 191
    get_how $P4959, $P4958
    nqp_get_sc_object $P4960, "1304282255.673", 191
    .const 'Sub' $P4961 = "305_1304282264.655" 
    $P4959."add_method"($P4960, "new", $P4961)
    nqp_get_sc_object $P4962, "1304282255.673", 191
    get_how $P4963, $P4962
    nqp_get_sc_object $P4964, "1304282255.673", 191
    .const 'Sub' $P4965 = "306_1304282264.655" 
    $P4963."add_method"($P4964, "BUILD", $P4965)
    nqp_get_sc_object $P4966, "1304282255.673", 191
    get_how $P4967, $P4966
    nqp_get_sc_object $P4968, "1304282255.673", 191
    .const 'Sub' $P4969 = "307_1304282264.655" 
    $P4967."add_method"($P4968, "slot_for_object", $P4969)
    nqp_get_sc_object $P4970, "1304282255.673", 191
    get_how $P4971, $P4970
    nqp_get_sc_object $P4972, "1304282255.673", 191
    .const 'Sub' $P4973 = "308_1304282264.655" 
    $P4971."add_method"($P4972, "get_slot_past_for_object", $P4973)
    nqp_get_sc_object $P4974, "1304282255.673", 191
    get_how $P4975, $P4974
    nqp_get_sc_object $P4976, "1304282255.673", 191
    .const 'Sub' $P4977 = "309_1304282264.655" 
    $P4975."add_method"($P4976, "set_slot_past", $P4977)
    nqp_get_sc_object $P4978, "1304282255.673", 191
    get_how $P4979, $P4978
    nqp_get_sc_object $P4980, "1304282255.673", 191
    .const 'Sub' $P4981 = "310_1304282264.655" 
    $P4979."add_method"($P4980, "set_cur_sc", $P4981)
    nqp_get_sc_object $P4982, "1304282255.673", 191
    get_how $P4983, $P4982
    nqp_get_sc_object $P4984, "1304282255.673", 191
    .const 'Sub' $P4985 = "311_1304282264.655" 
    $P4983."add_method"($P4984, "add_object", $P4985)
    nqp_get_sc_object $P4986, "1304282255.673", 191
    get_how $P4987, $P4986
    nqp_get_sc_object $P4988, "1304282255.673", 191
    .const 'Sub' $P4989 = "312_1304282264.655" 
    $P4987."add_method"($P4988, "add_code", $P4989)
    nqp_get_sc_object $P4990, "1304282255.673", 191
    get_how $P4991, $P4990
    nqp_get_sc_object $P4992, "1304282255.673", 191
    .const 'Sub' $P4993 = "313_1304282264.655" 
    $P4991."add_method"($P4992, "add_event", $P4993)
    nqp_get_sc_object $P4994, "1304282255.673", 191
    get_how $P4995, $P4994
    nqp_get_sc_object $P4996, "1304282255.673", 191
    .const 'Sub' $P4997 = "314_1304282264.655" 
    $P4995."add_method"($P4996, "get_object_sc_ref_past", $P4997)
    nqp_get_sc_object $P4998, "1304282255.673", 191
    get_how $P4999, $P4998
    nqp_get_sc_object $P5000, "1304282255.673", 191
    .const 'Sub' $P5001 = "315_1304282264.655" 
    $P4999."add_method"($P5000, "load_setting", $P5001)
    nqp_get_sc_object $P5002, "1304282255.673", 191
    get_how $P5003, $P5002
    nqp_get_sc_object $P5004, "1304282255.673", 191
    .const 'Sub' $P5005 = "317_1304282264.655" 
    $P5003."add_method"($P5004, "load_module", $P5005)
    nqp_get_sc_object $P5006, "1304282255.673", 191
    get_how $P5007, $P5006
    nqp_get_sc_object $P5008, "1304282255.673", 191
    .const 'Sub' $P5009 = "318_1304282264.655" 
    $P5007."add_method"($P5008, "install_package_symbol", $P5009)
    nqp_get_sc_object $P5010, "1304282255.673", 191
    get_how $P5011, $P5010
    nqp_get_sc_object $P5012, "1304282255.673", 191
    .const 'Sub' $P5013 = "321_1304282264.655" 
    $P5011."add_method"($P5012, "install_lexical_symbol", $P5013)
    nqp_get_sc_object $P5014, "1304282255.673", 191
    get_how $P5015, $P5014
    nqp_get_sc_object $P5016, "1304282255.673", 191
    .const 'Sub' $P5017 = "322_1304282264.655" 
    $P5015."add_method"($P5016, "install_package_routine", $P5017)
    nqp_get_sc_object $P5018, "1304282255.673", 191
    get_how $P5019, $P5018
    nqp_get_sc_object $P5020, "1304282255.673", 191
    .const 'Sub' $P5021 = "323_1304282264.655" 
    $P5019."add_method"($P5020, "pkg_create_mo", $P5021)
    nqp_get_sc_object $P5022, "1304282255.673", 191
    get_how $P5023, $P5022
    nqp_get_sc_object $P5024, "1304282255.673", 191
    .const 'Sub' $P5025 = "324_1304282264.655" 
    $P5023."add_method"($P5024, "pkg_add_attribute", $P5025)
    nqp_get_sc_object $P5026, "1304282255.673", 191
    get_how $P5027, $P5026
    nqp_get_sc_object $P5028, "1304282255.673", 191
    .const 'Sub' $P5029 = "328_1304282264.655" 
    $P5027."add_method"($P5028, "pkg_add_method", $P5029)
    nqp_get_sc_object $P5030, "1304282255.673", 191
    get_how $P5031, $P5030
    nqp_get_sc_object $P5032, "1304282255.673", 191
    .const 'Sub' $P5033 = "329_1304282264.655" 
    $P5031."add_method"($P5032, "set_routine_signature", $P5033)
    nqp_get_sc_object $P5034, "1304282255.673", 191
    get_how $P5035, $P5034
    nqp_get_sc_object $P5036, "1304282255.673", 191
    .const 'Sub' $P5037 = "330_1304282264.655" 
    $P5035."add_method"($P5036, "pkg_add_parent_or_role", $P5037)
    nqp_get_sc_object $P5038, "1304282255.673", 191
    get_how $P5039, $P5038
    nqp_get_sc_object $P5040, "1304282255.673", 191
    .const 'Sub' $P5041 = "331_1304282264.655" 
    $P5039."add_method"($P5040, "pkg_compose", $P5041)
    nqp_get_sc_object $P5042, "1304282255.673", 191
    get_how $P5043, $P5042
    nqp_get_sc_object $P5044, "1304282255.673", 191
    .const 'Sub' $P5045 = "332_1304282264.655" 
    $P5043."add_method"($P5044, "sc", $P5045)
    nqp_get_sc_object $P5046, "1304282255.673", 191
    get_how $P5047, $P5046
    nqp_get_sc_object $P5048, "1304282255.673", 191
    .const 'Sub' $P5049 = "333_1304282264.655" 
    $P5047."add_method"($P5048, "to_past", $P5049)
    .const 'Sub' $P5050 = "299_1304282264.655" 
    $P5051 = $P5050."get_lexinfo"()
    nqp_get_sc_object $P5052, "1304282255.673", 191
    $P5051."set_static_lexpad_value"("$?PACKAGE", $P5052)
    .const 'Sub' $P5053 = "299_1304282264.655" 
    $P5054 = $P5053."get_lexinfo"()
    $P5054."finish_static_lexpad"()
    .const 'Sub' $P5055 = "299_1304282264.655" 
    $P5056 = $P5055."get_lexinfo"()
    nqp_get_sc_object $P5057, "1304282255.673", 191
    $P5056."set_static_lexpad_value"("$?CLASS", $P5057)
    .const 'Sub' $P5058 = "299_1304282264.655" 
    $P5059 = $P5058."get_lexinfo"()
    $P5059."finish_static_lexpad"()
    nqp_get_sc_object $P5060, "1304282255.673", 191
    get_how $P5061, $P5060
    nqp_get_sc_object $P5062, "1304282255.673", 191
    nqp_get_sc_object $P5063, "1304282253.981", 5
    $P5061."set_default_parent"($P5062, $P5063)
  if_3928_end:
    nqp_get_sc_object $P5581, "1304282255.673", 0
    set_hll_global "GLOBAL", $P5581
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1304282264.655") :outer("10_1304282264.655")
.annotate 'line', 9
    .const 'Sub' $P566 = "156_1304282264.655" 
    capture_lex $P566
    .const 'Sub' $P541 = "155_1304282264.655" 
    capture_lex $P541
    .const 'Sub' $P536 = "154_1304282264.655" 
    capture_lex $P536
    .const 'Sub' $P521 = "153_1304282264.655" 
    capture_lex $P521
    .const 'Sub' $P511 = "152_1304282264.655" 
    capture_lex $P511
    .const 'Sub' $P507 = "151_1304282264.655" 
    capture_lex $P507
    .const 'Sub' $P503 = "150_1304282264.655" 
    capture_lex $P503
    .const 'Sub' $P500 = "149_1304282264.655" 
    capture_lex $P500
    .const 'Sub' $P498 = "148_1304282264.655" 
    capture_lex $P498
    .const 'Sub' $P496 = "147_1304282264.655" 
    capture_lex $P496
    .const 'Sub' $P488 = "146_1304282264.655" 
    capture_lex $P488
    .const 'Sub' $P485 = "145_1304282264.655" 
    capture_lex $P485
    .const 'Sub' $P481 = "144_1304282264.655" 
    capture_lex $P481
    .const 'Sub' $P447 = "143_1304282264.655" 
    capture_lex $P447
    .const 'Sub' $P442 = "142_1304282264.655" 
    capture_lex $P442
    .const 'Sub' $P438 = "141_1304282264.655" 
    capture_lex $P438
    .const 'Sub' $P429 = "139_1304282264.655" 
    capture_lex $P429
    .const 'Sub' $P427 = "138_1304282264.655" 
    capture_lex $P427
    .const 'Sub' $P421 = "136_1304282264.655" 
    capture_lex $P421
    .const 'Sub' $P418 = "135_1304282264.655" 
    capture_lex $P418
    .const 'Sub' $P405 = "132_1304282264.655" 
    capture_lex $P405
    .const 'Sub' $P403 = "131_1304282264.655" 
    capture_lex $P403
    .const 'Sub' $P371 = "126_1304282264.655" 
    capture_lex $P371
    .const 'Sub' $P369 = "125_1304282264.655" 
    capture_lex $P369
    .const 'Sub' $P363 = "123_1304282264.655" 
    capture_lex $P363
    .const 'Sub' $P361 = "122_1304282264.655" 
    capture_lex $P361
    .const 'Sub' $P356 = "120_1304282264.655" 
    capture_lex $P356
    .const 'Sub' $P354 = "119_1304282264.655" 
    capture_lex $P354
    .const 'Sub' $P348 = "117_1304282264.655" 
    capture_lex $P348
    .const 'Sub' $P346 = "116_1304282264.655" 
    capture_lex $P346
    .const 'Sub' $P340 = "114_1304282264.655" 
    capture_lex $P340
    .const 'Sub' $P338 = "113_1304282264.655" 
    capture_lex $P338
    .const 'Sub' $P333 = "111_1304282264.655" 
    capture_lex $P333
    .const 'Sub' $P331 = "110_1304282264.655" 
    capture_lex $P331
    .const 'Sub' $P326 = "108_1304282264.655" 
    capture_lex $P326
    .const 'Sub' $P324 = "107_1304282264.655" 
    capture_lex $P324
    .const 'Sub' $P319 = "105_1304282264.655" 
    capture_lex $P319
    .const 'Sub' $P317 = "104_1304282264.655" 
    capture_lex $P317
    .const 'Sub' $P312 = "102_1304282264.655" 
    capture_lex $P312
    .const 'Sub' $P310 = "101_1304282264.655" 
    capture_lex $P310
    .const 'Sub' $P305 = "99_1304282264.655" 
    capture_lex $P305
    .const 'Sub' $P303 = "98_1304282264.655" 
    capture_lex $P303
    .const 'Sub' $P298 = "96_1304282264.655" 
    capture_lex $P298
    .const 'Sub' $P296 = "95_1304282264.655" 
    capture_lex $P296
    .const 'Sub' $P291 = "93_1304282264.655" 
    capture_lex $P291
    .const 'Sub' $P289 = "92_1304282264.655" 
    capture_lex $P289
    .const 'Sub' $P284 = "90_1304282264.655" 
    capture_lex $P284
    .const 'Sub' $P276 = "87_1304282264.655" 
    capture_lex $P276
    .const 'Sub' $P270 = "85_1304282264.655" 
    capture_lex $P270
    .const 'Sub' $P268 = "84_1304282264.655" 
    capture_lex $P268
    .const 'Sub' $P255 = "82_1304282264.655" 
    capture_lex $P255
    .const 'Sub' $P248 = "81_1304282264.655" 
    capture_lex $P248
    .const 'Sub' $P236 = "79_1304282264.655" 
    capture_lex $P236
    .const 'Sub' $P234 = "78_1304282264.655" 
    capture_lex $P234
    .const 'Sub' $P228 = "76_1304282264.655" 
    capture_lex $P228
    .const 'Sub' $P226 = "75_1304282264.655" 
    capture_lex $P226
    .const 'Sub' $P219 = "73_1304282264.655" 
    capture_lex $P219
    .const 'Sub' $P217 = "72_1304282264.655" 
    capture_lex $P217
    .const 'Sub' $P211 = "70_1304282264.655" 
    capture_lex $P211
    .const 'Sub' $P209 = "69_1304282264.655" 
    capture_lex $P209
    .const 'Sub' $P202 = "67_1304282264.655" 
    capture_lex $P202
    .const 'Sub' $P200 = "66_1304282264.655" 
    capture_lex $P200
    .const 'Sub' $P194 = "64_1304282264.655" 
    capture_lex $P194
    .const 'Sub' $P192 = "63_1304282264.655" 
    capture_lex $P192
    .const 'Sub' $P185 = "61_1304282264.655" 
    capture_lex $P185
    .const 'Sub' $P183 = "60_1304282264.655" 
    capture_lex $P183
    .const 'Sub' $P177 = "58_1304282264.655" 
    capture_lex $P177
    .const 'Sub' $P175 = "57_1304282264.655" 
    capture_lex $P175
    .const 'Sub' $P169 = "55_1304282264.655" 
    capture_lex $P169
    .const 'Sub' $P167 = "54_1304282264.655" 
    capture_lex $P167
    .const 'Sub' $P158 = "52_1304282264.655" 
    capture_lex $P158
    .const 'Sub' $P155 = "51_1304282264.655" 
    capture_lex $P155
    .const 'Sub' $P147 = "49_1304282264.655" 
    capture_lex $P147
    .const 'Sub' $P139 = "48_1304282264.655" 
    capture_lex $P139
    .const 'Sub' $P136 = "47_1304282264.655" 
    capture_lex $P136
    .const 'Sub' $P130 = "45_1304282264.655" 
    capture_lex $P130
    .const 'Sub' $P128 = "44_1304282264.655" 
    capture_lex $P128
    .const 'Sub' $P123 = "42_1304282264.655" 
    capture_lex $P123
    .const 'Sub' $P119 = "41_1304282264.655" 
    capture_lex $P119
    .const 'Sub' $P111 = "39_1304282264.655" 
    capture_lex $P111
    .const 'Sub' $P108 = "38_1304282264.655" 
    capture_lex $P108
    .const 'Sub' $P102 = "36_1304282264.655" 
    capture_lex $P102
    .const 'Sub' $P99 = "35_1304282264.655" 
    capture_lex $P99
    .const 'Sub' $P93 = "33_1304282264.655" 
    capture_lex $P93
    .const 'Sub' $P90 = "32_1304282264.655" 
    capture_lex $P90
    .const 'Sub' $P84 = "30_1304282264.655" 
    capture_lex $P84
    .const 'Sub' $P46 = "17_1304282264.655" 
    capture_lex $P46
    .const 'Sub' $P37 = "15_1304282264.655" 
    capture_lex $P37
    .const 'Sub' $P35 = "14_1304282264.655" 
    capture_lex $P35
    .const 'Sub' $P28 = "12_1304282264.655" 
    capture_lex $P28
.annotate 'line', 10
    new $P18, "Undef"
    .lex "$brackets", $P18
.annotate 'line', 12
    new $P19, "Undef"
    .lex "$cursor_class", $P19
    .lex "$?PACKAGE", $P20
    .lex "$?CLASS", $P21
.annotate 'line', 10
    new $P22, "String"
    assign $P22, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P22
.annotate 'line', 12
    find_lex $P23, "GLOBALish"
    get_who $P24, $P23
    set $P25, $P24["Regex"]
    unless_null $P25, vivify_339
    new $P25, "Undef"
  vivify_339:
    get_who $P26, $P25
    set $P27, $P26["Cursor"]
    unless_null $P27, vivify_340
    new $P27, "Undef"
  vivify_340:
    store_lex "$cursor_class", $P27
.annotate 'line', 851
    .const 'Sub' $P541 = "155_1304282264.655" 
    newclosure $P564, $P541
.annotate 'line', 9
    .return ($P564)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post338") :outer("11_1304282264.655")
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1304282264.655" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P566 = "156_1304282264.655" 
    capture_lex $P566
    $P566()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block565"  :anon :subid("156_1304282264.655") :outer("11_1304282264.655")
.annotate 'line', 9
    nqp_get_sc_object $P567, "1304282255.673", 1
    .local pmc type_obj
    set type_obj, $P567
    get_how $P568, type_obj
    $P569 = $P568."compose"(type_obj)
    .return ($P569)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    .local string rx29_tgt
    .local int rx29_pos
    .local int rx29_off
    .local int rx29_eos
    .local int rx29_rep
    .local pmc rx29_cur
    .local pmc rx29_debug
    (rx29_cur, rx29_pos, rx29_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx29_cur
    .local pmc match
    .lex "$/", match
    length rx29_eos, rx29_tgt
    gt rx29_pos, rx29_eos, rx29_done
    set rx29_off, 0
    lt rx29_pos, 2, rx29_start
    sub rx29_off, rx29_pos, 1
    substr rx29_tgt, rx29_tgt, rx29_off
  rx29_start:
    eq $I10, 1, rx29_restart
    if_null rx29_debug, debug_341
    rx29_cur."!cursor_debug"("START", "ws")
  debug_341:
    $I10 = self.'from'()
    ne $I10, -1, rxscan32_done
    goto rxscan32_scan
  rxscan32_loop:
    (rx29_pos) = rx29_cur."from"()
    inc rx29_pos
    rx29_cur."!cursor_from"(rx29_pos)
    ge rx29_pos, rx29_eos, rxscan32_done
  rxscan32_scan:
    set_addr $I10, rxscan32_loop
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxscan32_done:
.annotate 'line', 14
  # rx subrule "ww" subtype=zerowidth negate=1
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ww"()
    if $P10, rx29_fail
  # rx rxquantr33 ** 0..*
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxquantr33_loop:
  alt34_0:
    set_addr $I10, alt34_1
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx29_pos, rx29_off
    find_not_cclass $I11, 32, rx29_tgt, $I10, rx29_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx29_fail
    add rx29_pos, rx29_off, $I11
    goto alt34_end
  alt34_1:
  # rx literal  "#"
    add $I11, rx29_pos, 1
    gt $I11, rx29_eos, rx29_fail
    sub $I11, rx29_pos, rx29_off
    ord $I11, rx29_tgt, $I11
    ne $I11, 35, rx29_fail
    add rx29_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx29_pos, rx29_off
    find_cclass $I11, 4096, rx29_tgt, $I10, rx29_eos
    add rx29_pos, rx29_off, $I11
  alt34_end:
    set_addr $I10, rxquantr33_done
    (rx29_rep) = rx29_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(rx29_rep, rx29_pos, $I10)
    goto rxquantr33_loop
  rxquantr33_done:
  # rx pass
    rx29_cur."!cursor_pass"(rx29_pos, "ws")
    if_null rx29_debug, debug_342
    rx29_cur."!cursor_debug"("PASS", "ws", " at pos=", rx29_pos)
  debug_342:
    .return (rx29_cur)
  rx29_restart:
.annotate 'line', 12
    if_null rx29_debug, debug_343
    rx29_cur."!cursor_debug"("NEXT", "ws")
  debug_343:
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    if_null rx29_debug, debug_344
    rx29_cur."!cursor_debug"("FAIL", "ws")
  debug_344:
    .return (rx29_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1304282264.655") :method
.annotate 'line', 12
    new $P31, "ResizablePMCArray"
    push $P31, ""
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("14_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    new $P36, "ResizablePMCArray"
    push $P36, ""
    .return ($P36)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("15_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    .local string rx38_tgt
    .local int rx38_pos
    .local int rx38_off
    .local int rx38_eos
    .local int rx38_rep
    .local pmc rx38_cur
    .local pmc rx38_debug
    (rx38_cur, rx38_pos, rx38_tgt, $I10) = self."!cursor_start"()
    rx38_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx38_cur
    .local pmc match
    .lex "$/", match
    length rx38_eos, rx38_tgt
    gt rx38_pos, rx38_eos, rx38_done
    set rx38_off, 0
    lt rx38_pos, 2, rx38_start
    sub rx38_off, rx38_pos, 1
    substr rx38_tgt, rx38_tgt, rx38_off
  rx38_start:
    eq $I10, 1, rx38_restart
    if_null rx38_debug, debug_345
    rx38_cur."!cursor_debug"("START", "termish")
  debug_345:
    $I10 = self.'from'()
    ne $I10, -1, rxscan41_done
    goto rxscan41_scan
  rxscan41_loop:
    (rx38_pos) = rx38_cur."from"()
    inc rx38_pos
    rx38_cur."!cursor_from"(rx38_pos)
    ge rx38_pos, rx38_eos, rxscan41_done
  rxscan41_scan:
    set_addr $I10, rxscan41_loop
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  rxscan41_done:
.annotate 'line', 17
  # rx rxquantr42 ** 0..*
    set_addr $I10, rxquantr42_done
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  rxquantr42_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx38_cur."!cursor_pos"(rx38_pos)
    $P10 = rx38_cur."prefixish"()
    unless $P10, rx38_fail
    goto rxsubrule43_pass
  rxsubrule43_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx38_fail
  rxsubrule43_pass:
    set_addr $I10, rxsubrule43_back
    rx38_cur."!mark_push"(0, rx38_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx38_pos = $P10."pos"()
    set_addr $I10, rxquantr42_done
    (rx38_rep) = rx38_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr42_done
    rx38_cur."!mark_push"(rx38_rep, rx38_pos, $I10)
    goto rxquantr42_loop
  rxquantr42_done:
.annotate 'line', 18
  # rx subrule "term" subtype=capture negate=
    rx38_cur."!cursor_pos"(rx38_pos)
    $P10 = rx38_cur."term"()
    unless $P10, rx38_fail
    rx38_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx38_pos = $P10."pos"()
.annotate 'line', 19
  # rx rxquantr44 ** 0..*
    set_addr $I10, rxquantr44_done
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  rxquantr44_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx38_cur."!cursor_pos"(rx38_pos)
    $P10 = rx38_cur."postfixish"()
    unless $P10, rx38_fail
    goto rxsubrule45_pass
  rxsubrule45_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx38_fail
  rxsubrule45_pass:
    set_addr $I10, rxsubrule45_back
    rx38_cur."!mark_push"(0, rx38_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx38_pos = $P10."pos"()
    set_addr $I10, rxquantr44_done
    (rx38_rep) = rx38_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr44_done
    rx38_cur."!mark_push"(rx38_rep, rx38_pos, $I10)
    goto rxquantr44_loop
  rxquantr44_done:
.annotate 'line', 16
  # rx pass
    rx38_cur."!cursor_pass"(rx38_pos, "termish")
    if_null rx38_debug, debug_346
    rx38_cur."!cursor_debug"("PASS", "termish", " at pos=", rx38_pos)
  debug_346:
    .return (rx38_cur)
  rx38_restart:
.annotate 'line', 12
    if_null rx38_debug, debug_347
    rx38_cur."!cursor_debug"("NEXT", "termish")
  debug_347:
  rx38_fail:
    (rx38_rep, rx38_pos, $I10, $P10) = rx38_cur."!mark_fail"(0)
    lt rx38_pos, -1, rx38_done
    eq rx38_pos, -1, rx38_fail
    jump $I10
  rx38_done:
    rx38_cur."!cursor_fail"()
    if_null rx38_debug, debug_348
    rx38_cur."!cursor_debug"("FAIL", "termish")
  debug_348:
    .return (rx38_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("16_1304282264.655") :method
.annotate 'line', 12
    new $P40, "ResizablePMCArray"
    push $P40, ""
    .return ($P40)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("17_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    new $P47, "ResizablePMCArray"
    push $P47, ""
    .return ($P47)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("18_1304282264.655")
    .param pmc param_49
.annotate 'line', 22
    .lex "self", param_49
    $P50 = param_49."!protoregex"("term")
    .return ($P50)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("19_1304282264.655")
    .param pmc param_52
.annotate 'line', 22
    .lex "self", param_52
    $P53 = param_52."!PREFIX__!protoregex"("term")
    .return ($P53)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("20_1304282264.655")
    .param pmc param_55
.annotate 'line', 23
    .lex "self", param_55
    $P56 = param_55."!protoregex"("infix")
    .return ($P56)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("21_1304282264.655")
    .param pmc param_58
.annotate 'line', 23
    .lex "self", param_58
    $P59 = param_58."!PREFIX__!protoregex"("infix")
    .return ($P59)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("22_1304282264.655")
    .param pmc param_61
.annotate 'line', 24
    .lex "self", param_61
    $P62 = param_61."!protoregex"("prefix")
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("23_1304282264.655")
    .param pmc param_64
.annotate 'line', 24
    .lex "self", param_64
    $P65 = param_64."!PREFIX__!protoregex"("prefix")
    .return ($P65)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("24_1304282264.655")
    .param pmc param_67
.annotate 'line', 25
    .lex "self", param_67
    $P68 = param_67."!protoregex"("postfix")
    .return ($P68)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("25_1304282264.655")
    .param pmc param_70
.annotate 'line', 25
    .lex "self", param_70
    $P71 = param_70."!PREFIX__!protoregex"("postfix")
    .return ($P71)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("26_1304282264.655")
    .param pmc param_73
.annotate 'line', 26
    .lex "self", param_73
    $P74 = param_73."!protoregex"("circumfix")
    .return ($P74)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("27_1304282264.655")
    .param pmc param_76
.annotate 'line', 26
    .lex "self", param_76
    $P77 = param_76."!PREFIX__!protoregex"("circumfix")
    .return ($P77)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("28_1304282264.655")
    .param pmc param_79
.annotate 'line', 27
    .lex "self", param_79
    $P80 = param_79."!protoregex"("postcircumfix")
    .return ($P80)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("29_1304282264.655")
    .param pmc param_82
.annotate 'line', 27
    .lex "self", param_82
    $P83 = param_82."!PREFIX__!protoregex"("postcircumfix")
    .return ($P83)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("30_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    .local string rx85_tgt
    .local int rx85_pos
    .local int rx85_off
    .local int rx85_eos
    .local int rx85_rep
    .local pmc rx85_cur
    .local pmc rx85_debug
    (rx85_cur, rx85_pos, rx85_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx85_cur
    .local pmc match
    .lex "$/", match
    length rx85_eos, rx85_tgt
    gt rx85_pos, rx85_eos, rx85_done
    set rx85_off, 0
    lt rx85_pos, 2, rx85_start
    sub rx85_off, rx85_pos, 1
    substr rx85_tgt, rx85_tgt, rx85_off
  rx85_start:
    eq $I10, 1, rx85_restart
    if_null rx85_debug, debug_349
    rx85_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_349:
    $I10 = self.'from'()
    ne $I10, -1, rxscan89_done
    goto rxscan89_scan
  rxscan89_loop:
    (rx85_pos) = rx85_cur."from"()
    inc rx85_pos
    rx85_cur."!cursor_from"(rx85_pos)
    ge rx85_pos, rx85_eos, rxscan89_done
  rxscan89_scan:
    set_addr $I10, rxscan89_loop
    rx85_cur."!mark_push"(0, rx85_pos, $I10)
  rxscan89_done:
.annotate 'line', 29
  # rx subrule "circumfix" subtype=capture negate=
    rx85_cur."!cursor_pos"(rx85_pos)
    $P10 = rx85_cur."circumfix"()
    unless $P10, rx85_fail
    rx85_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx85_pos = $P10."pos"()
  # rx pass
    rx85_cur."!cursor_pass"(rx85_pos, "term:sym<circumfix>")
    if_null rx85_debug, debug_350
    rx85_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx85_pos)
  debug_350:
    .return (rx85_cur)
  rx85_restart:
.annotate 'line', 12
    if_null rx85_debug, debug_351
    rx85_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_351:
  rx85_fail:
    (rx85_rep, rx85_pos, $I10, $P10) = rx85_cur."!mark_fail"(0)
    lt rx85_pos, -1, rx85_done
    eq rx85_pos, -1, rx85_fail
    jump $I10
  rx85_done:
    rx85_cur."!cursor_fail"()
    if_null rx85_debug, debug_352
    rx85_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_352:
    .return (rx85_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("31_1304282264.655") :method
.annotate 'line', 12
    $P87 = self."!PREFIX__!subrule"("circumfix", "")
    new $P88, "ResizablePMCArray"
    push $P88, $P87
    .return ($P88)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("32_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    $P91 = self."!PREFIX__!subrule"("circumfix", "")
    new $P92, "ResizablePMCArray"
    push $P92, $P91
    .return ($P92)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("33_1304282264.655") :method :outer("11_1304282264.655")
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
    if_null rx94_debug, debug_353
    rx94_cur."!cursor_debug"("START", "infixish")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan98_done
    goto rxscan98_scan
  rxscan98_loop:
    (rx94_pos) = rx94_cur."from"()
    inc rx94_pos
    rx94_cur."!cursor_from"(rx94_pos)
    ge rx94_pos, rx94_eos, rxscan98_done
  rxscan98_scan:
    set_addr $I10, rxscan98_loop
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  rxscan98_done:
.annotate 'line', 31
  # rx subrule "infix" subtype=capture negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."infix"()
    unless $P10, rx94_fail
    rx94_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx94_pos = $P10."pos"()
  # rx pass
    rx94_cur."!cursor_pass"(rx94_pos, "infixish")
    if_null rx94_debug, debug_354
    rx94_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx94_pos)
  debug_354:
    .return (rx94_cur)
  rx94_restart:
.annotate 'line', 12
    if_null rx94_debug, debug_355
    rx94_cur."!cursor_debug"("NEXT", "infixish")
  debug_355:
  rx94_fail:
    (rx94_rep, rx94_pos, $I10, $P10) = rx94_cur."!mark_fail"(0)
    lt rx94_pos, -1, rx94_done
    eq rx94_pos, -1, rx94_fail
    jump $I10
  rx94_done:
    rx94_cur."!cursor_fail"()
    if_null rx94_debug, debug_356
    rx94_cur."!cursor_debug"("FAIL", "infixish")
  debug_356:
    .return (rx94_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("34_1304282264.655") :method
.annotate 'line', 12
    $P96 = self."!PREFIX__!subrule"("infix", "")
    new $P97, "ResizablePMCArray"
    push $P97, $P96
    .return ($P97)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("35_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    $P100 = self."!PREFIX__!subrule"("infix", "")
    new $P101, "ResizablePMCArray"
    push $P101, $P100
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("36_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    .local pmc rx103_debug
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    gt rx103_pos, rx103_eos, rx103_done
    set rx103_off, 0
    lt rx103_pos, 2, rx103_start
    sub rx103_off, rx103_pos, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
    eq $I10, 1, rx103_restart
    if_null rx103_debug, debug_357
    rx103_cur."!cursor_debug"("START", "prefixish")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan107_done
    goto rxscan107_scan
  rxscan107_loop:
    (rx103_pos) = rx103_cur."from"()
    inc rx103_pos
    rx103_cur."!cursor_from"(rx103_pos)
    ge rx103_pos, rx103_eos, rxscan107_done
  rxscan107_scan:
    set_addr $I10, rxscan107_loop
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxscan107_done:
.annotate 'line', 32
  # rx subrule "prefix" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."prefix"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx103_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."ws"()
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "prefixish")
    if_null rx103_debug, debug_358
    rx103_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx103_pos)
  debug_358:
    .return (rx103_cur)
  rx103_restart:
.annotate 'line', 12
    if_null rx103_debug, debug_359
    rx103_cur."!cursor_debug"("NEXT", "prefixish")
  debug_359:
  rx103_fail:
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    if_null rx103_debug, debug_360
    rx103_cur."!cursor_debug"("FAIL", "prefixish")
  debug_360:
    .return (rx103_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("37_1304282264.655") :method
.annotate 'line', 12
    $P105 = self."!PREFIX__!subrule"("prefix", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("38_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    $P109 = self."!PREFIX__!subrule"("prefix", "")
    new $P110, "ResizablePMCArray"
    push $P110, $P109
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("39_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    .local pmc rx112_debug
    (rx112_cur, rx112_pos, rx112_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx112_cur
    .local pmc match
    .lex "$/", match
    length rx112_eos, rx112_tgt
    gt rx112_pos, rx112_eos, rx112_done
    set rx112_off, 0
    lt rx112_pos, 2, rx112_start
    sub rx112_off, rx112_pos, 1
    substr rx112_tgt, rx112_tgt, rx112_off
  rx112_start:
    eq $I10, 1, rx112_restart
    if_null rx112_debug, debug_361
    rx112_cur."!cursor_debug"("START", "postfixish")
  debug_361:
    $I10 = self.'from'()
    ne $I10, -1, rxscan117_done
    goto rxscan117_scan
  rxscan117_loop:
    (rx112_pos) = rx112_cur."from"()
    inc rx112_pos
    rx112_cur."!cursor_from"(rx112_pos)
    ge rx112_pos, rx112_eos, rxscan117_done
  rxscan117_scan:
    set_addr $I10, rxscan117_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan117_done:
  alt118_0:
.annotate 'line', 33
    set_addr $I10, alt118_1
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
.annotate 'line', 34
  # rx subrule "postfix" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."postfix"()
    unless $P10, rx112_fail
    rx112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx112_pos = $P10."pos"()
    goto alt118_end
  alt118_1:
.annotate 'line', 35
  # rx subrule "postcircumfix" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."postcircumfix"()
    unless $P10, rx112_fail
    rx112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx112_pos = $P10."pos"()
  alt118_end:
.annotate 'line', 33
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "postfixish")
    if_null rx112_debug, debug_362
    rx112_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx112_pos)
  debug_362:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 12
    if_null rx112_debug, debug_363
    rx112_cur."!cursor_debug"("NEXT", "postfixish")
  debug_363:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_364
    rx112_cur."!cursor_debug"("FAIL", "postfixish")
  debug_364:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("40_1304282264.655") :method
.annotate 'line', 12
    $P114 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P115 = self."!PREFIX__!subrule"("postfix", "")
    new $P116, "ResizablePMCArray"
    push $P116, $P114
    push $P116, $P115
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("41_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    $P120 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P121 = self."!PREFIX__!subrule"("postfix", "")
    new $P122, "ResizablePMCArray"
    push $P122, $P120
    push $P122, $P121
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("42_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    .local string rx124_tgt
    .local int rx124_pos
    .local int rx124_off
    .local int rx124_eos
    .local int rx124_rep
    .local pmc rx124_cur
    .local pmc rx124_debug
    (rx124_cur, rx124_pos, rx124_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx124_cur
    .local pmc match
    .lex "$/", match
    length rx124_eos, rx124_tgt
    gt rx124_pos, rx124_eos, rx124_done
    set rx124_off, 0
    lt rx124_pos, 2, rx124_start
    sub rx124_off, rx124_pos, 1
    substr rx124_tgt, rx124_tgt, rx124_off
  rx124_start:
    eq $I10, 1, rx124_restart
    if_null rx124_debug, debug_365
    rx124_cur."!cursor_debug"("START", "nullterm")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan127_done
    goto rxscan127_scan
  rxscan127_loop:
    (rx124_pos) = rx124_cur."from"()
    inc rx124_pos
    rx124_cur."!cursor_from"(rx124_pos)
    ge rx124_pos, rx124_eos, rxscan127_done
  rxscan127_scan:
    set_addr $I10, rxscan127_loop
    rx124_cur."!mark_push"(0, rx124_pos, $I10)
  rxscan127_done:
.annotate 'line', 38
  # rx pass
    rx124_cur."!cursor_pass"(rx124_pos, "nullterm")
    if_null rx124_debug, debug_366
    rx124_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx124_pos)
  debug_366:
    .return (rx124_cur)
  rx124_restart:
.annotate 'line', 12
    if_null rx124_debug, debug_367
    rx124_cur."!cursor_debug"("NEXT", "nullterm")
  debug_367:
  rx124_fail:
    (rx124_rep, rx124_pos, $I10, $P10) = rx124_cur."!mark_fail"(0)
    lt rx124_pos, -1, rx124_done
    eq rx124_pos, -1, rx124_fail
    jump $I10
  rx124_done:
    rx124_cur."!cursor_fail"()
    if_null rx124_debug, debug_368
    rx124_cur."!cursor_debug"("FAIL", "nullterm")
  debug_368:
    .return (rx124_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("43_1304282264.655") :method
.annotate 'line', 12
    new $P126, "ResizablePMCArray"
    push $P126, ""
    .return ($P126)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("44_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    new $P129, "ResizablePMCArray"
    push $P129, ""
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("45_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    .local string rx131_tgt
    .local int rx131_pos
    .local int rx131_off
    .local int rx131_eos
    .local int rx131_rep
    .local pmc rx131_cur
    .local pmc rx131_debug
    (rx131_cur, rx131_pos, rx131_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx131_cur
    .local pmc match
    .lex "$/", match
    length rx131_eos, rx131_tgt
    gt rx131_pos, rx131_eos, rx131_done
    set rx131_off, 0
    lt rx131_pos, 2, rx131_start
    sub rx131_off, rx131_pos, 1
    substr rx131_tgt, rx131_tgt, rx131_off
  rx131_start:
    eq $I10, 1, rx131_restart
    if_null rx131_debug, debug_369
    rx131_cur."!cursor_debug"("START", "nullterm_alt")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    (rx131_pos) = rx131_cur."from"()
    inc rx131_pos
    rx131_cur."!cursor_from"(rx131_pos)
    ge rx131_pos, rx131_eos, rxscan135_done
  rxscan135_scan:
    set_addr $I10, rxscan135_loop
    rx131_cur."!mark_push"(0, rx131_pos, $I10)
  rxscan135_done:
.annotate 'line', 39
  # rx subrule "nullterm" subtype=capture negate=
    rx131_cur."!cursor_pos"(rx131_pos)
    $P10 = rx131_cur."nullterm"()
    unless $P10, rx131_fail
    rx131_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx131_pos = $P10."pos"()
  # rx pass
    rx131_cur."!cursor_pass"(rx131_pos, "nullterm_alt")
    if_null rx131_debug, debug_370
    rx131_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx131_pos)
  debug_370:
    .return (rx131_cur)
  rx131_restart:
.annotate 'line', 12
    if_null rx131_debug, debug_371
    rx131_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_371:
  rx131_fail:
    (rx131_rep, rx131_pos, $I10, $P10) = rx131_cur."!mark_fail"(0)
    lt rx131_pos, -1, rx131_done
    eq rx131_pos, -1, rx131_fail
    jump $I10
  rx131_done:
    rx131_cur."!cursor_fail"()
    if_null rx131_debug, debug_372
    rx131_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_372:
    .return (rx131_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("46_1304282264.655") :method
.annotate 'line', 12
    $P133 = self."!PREFIX__!subrule"("nullterm", "")
    new $P134, "ResizablePMCArray"
    push $P134, $P133
    .return ($P134)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("47_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 12
    $P137 = self."!PREFIX__!subrule"("nullterm", "")
    new $P138, "ResizablePMCArray"
    push $P138, $P137
    .return ($P138)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("48_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_140
.annotate 'line', 42
    .lex "self", param_140
    find_lex $P143, "self"
    $P144 = $P143."termish"()
    unless $P144, unless_142
    set $P141, $P144
    goto unless_142_end
  unless_142:
    find_lex $P145, "self"
    $P146 = $P145."nullterm_alt"()
    set $P141, $P146
  unless_142_end:
    .return ($P141)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("49_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    .local pmc rx148_debug
    (rx148_cur, rx148_pos, rx148_tgt, $I10) = self."!cursor_start"()
    rx148_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx148_cur
    .local pmc match
    .lex "$/", match
    length rx148_eos, rx148_tgt
    gt rx148_pos, rx148_eos, rx148_done
    set rx148_off, 0
    lt rx148_pos, 2, rx148_start
    sub rx148_off, rx148_pos, 1
    substr rx148_tgt, rx148_tgt, rx148_off
  rx148_start:
    eq $I10, 1, rx148_restart
    if_null rx148_debug, debug_373
    rx148_cur."!cursor_debug"("START", "quote_delimited")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan152_done
    goto rxscan152_scan
  rxscan152_loop:
    (rx148_pos) = rx148_cur."from"()
    inc rx148_pos
    rx148_cur."!cursor_from"(rx148_pos)
    ge rx148_pos, rx148_eos, rxscan152_done
  rxscan152_scan:
    set_addr $I10, rxscan152_loop
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
  rxscan152_done:
.annotate 'line', 46
  # rx subrule "starter" subtype=capture negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."starter"()
    unless $P10, rx148_fail
    rx148_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx148_pos = $P10."pos"()
  # rx rxquantr153 ** 0..*
    set_addr $I10, rxquantr153_done
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
  rxquantr153_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."quote_atom"()
    unless $P10, rx148_fail
    goto rxsubrule154_pass
  rxsubrule154_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx148_fail
  rxsubrule154_pass:
    set_addr $I10, rxsubrule154_back
    rx148_cur."!mark_push"(0, rx148_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx148_pos = $P10."pos"()
    set_addr $I10, rxquantr153_done
    (rx148_rep) = rx148_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr153_done
    rx148_cur."!mark_push"(rx148_rep, rx148_pos, $I10)
    goto rxquantr153_loop
  rxquantr153_done:
  # rx subrule "stopper" subtype=capture negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."stopper"()
    unless $P10, rx148_fail
    rx148_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx148_pos = $P10."pos"()
.annotate 'line', 45
  # rx pass
    rx148_cur."!cursor_pass"(rx148_pos, "quote_delimited")
    if_null rx148_debug, debug_374
    rx148_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx148_pos)
  debug_374:
    .return (rx148_cur)
  rx148_restart:
.annotate 'line', 42
    if_null rx148_debug, debug_375
    rx148_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_375:
  rx148_fail:
    (rx148_rep, rx148_pos, $I10, $P10) = rx148_cur."!mark_fail"(0)
    lt rx148_pos, -1, rx148_done
    eq rx148_pos, -1, rx148_fail
    jump $I10
  rx148_done:
    rx148_cur."!cursor_fail"()
    if_null rx148_debug, debug_376
    rx148_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_376:
    .return (rx148_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("50_1304282264.655") :method
.annotate 'line', 42
    $P150 = self."!PREFIX__!subrule"("starter", "")
    new $P151, "ResizablePMCArray"
    push $P151, $P150
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("51_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    $P156 = self."!PREFIX__!subrule"("starter", "")
    new $P157, "ResizablePMCArray"
    push $P157, $P156
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("52_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    .local pmc rx159_debug
    (rx159_cur, rx159_pos, rx159_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx159_cur
    .local pmc match
    .lex "$/", match
    length rx159_eos, rx159_tgt
    gt rx159_pos, rx159_eos, rx159_done
    set rx159_off, 0
    lt rx159_pos, 2, rx159_start
    sub rx159_off, rx159_pos, 1
    substr rx159_tgt, rx159_tgt, rx159_off
  rx159_start:
    eq $I10, 1, rx159_restart
    if_null rx159_debug, debug_377
    rx159_cur."!cursor_debug"("START", "quote_atom")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan162_done
    goto rxscan162_scan
  rxscan162_loop:
    (rx159_pos) = rx159_cur."from"()
    inc rx159_pos
    rx159_cur."!cursor_from"(rx159_pos)
    ge rx159_pos, rx159_eos, rxscan162_done
  rxscan162_scan:
    set_addr $I10, rxscan162_loop
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
  rxscan162_done:
.annotate 'line', 50
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."stopper"()
    if $P10, rx159_fail
  alt163_0:
.annotate 'line', 51
    set_addr $I10, alt163_1
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
.annotate 'line', 52
  # rx subrule "quote_escape" subtype=capture negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."quote_escape"()
    unless $P10, rx159_fail
    rx159_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx159_pos = $P10."pos"()
    goto alt163_end
  alt163_1:
.annotate 'line', 53
  # rx rxquantr164 ** 1..*
    set_addr $I10, rxquantr164_done
    rx159_cur."!mark_push"(0, -1, $I10)
  rxquantr164_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."stopper"()
    if $P10, rx159_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."quote_escape"()
    if $P10, rx159_fail
  # rx charclass .
    ge rx159_pos, rx159_eos, rx159_fail
    inc rx159_pos
    set_addr $I10, rxquantr164_done
    (rx159_rep) = rx159_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr164_done
    rx159_cur."!mark_push"(rx159_rep, rx159_pos, $I10)
    goto rxquantr164_loop
  rxquantr164_done:
  alt163_end:
.annotate 'line', 49
  # rx pass
    rx159_cur."!cursor_pass"(rx159_pos, "quote_atom")
    if_null rx159_debug, debug_378
    rx159_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx159_pos)
  debug_378:
    .return (rx159_cur)
  rx159_restart:
.annotate 'line', 42
    if_null rx159_debug, debug_379
    rx159_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_379:
  rx159_fail:
    (rx159_rep, rx159_pos, $I10, $P10) = rx159_cur."!mark_fail"(0)
    lt rx159_pos, -1, rx159_done
    eq rx159_pos, -1, rx159_fail
    jump $I10
  rx159_done:
    rx159_cur."!cursor_fail"()
    if_null rx159_debug, debug_380
    rx159_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_380:
    .return (rx159_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("53_1304282264.655") :method
.annotate 'line', 42
    new $P161, "ResizablePMCArray"
    push $P161, ""
    .return ($P161)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("54_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P168, "ResizablePMCArray"
    push $P168, ""
    .return ($P168)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("55_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    .local pmc rx170_debug
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx170_cur
    .local pmc match
    .lex "$/", match
    length rx170_eos, rx170_tgt
    gt rx170_pos, rx170_eos, rx170_done
    set rx170_off, 0
    lt rx170_pos, 2, rx170_start
    sub rx170_off, rx170_pos, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
    eq $I10, 1, rx170_restart
    if_null rx170_debug, debug_381
    rx170_cur."!cursor_debug"("START", "decint")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan173_done
    goto rxscan173_scan
  rxscan173_loop:
    (rx170_pos) = rx170_cur."from"()
    inc rx170_pos
    rx170_cur."!cursor_from"(rx170_pos)
    ge rx170_pos, rx170_eos, rxscan173_done
  rxscan173_scan:
    set_addr $I10, rxscan173_loop
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  rxscan173_done:
.annotate 'line', 57
  # rx rxquantr174 ** 1..*
    set_addr $I10, rxquantr174_done
    rx170_cur."!mark_push"(0, -1, $I10)
  rxquantr174_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx170_pos, rx170_off
    find_not_cclass $I11, 8, rx170_tgt, $I10, rx170_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx170_fail
    add rx170_pos, rx170_off, $I11
    set_addr $I10, rxquantr174_done
    (rx170_rep) = rx170_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr174_done
    rx170_cur."!mark_push"(rx170_rep, rx170_pos, $I10)
  # rx literal  "_"
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    ord $I11, rx170_tgt, $I11
    ne $I11, 95, rx170_fail
    add rx170_pos, 1
    goto rxquantr174_loop
  rxquantr174_done:
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "decint")
    if_null rx170_debug, debug_382
    rx170_cur."!cursor_debug"("PASS", "decint", " at pos=", rx170_pos)
  debug_382:
    .return (rx170_cur)
  rx170_restart:
.annotate 'line', 42
    if_null rx170_debug, debug_383
    rx170_cur."!cursor_debug"("NEXT", "decint")
  debug_383:
  rx170_fail:
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    if_null rx170_debug, debug_384
    rx170_cur."!cursor_debug"("FAIL", "decint")
  debug_384:
    .return (rx170_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("56_1304282264.655") :method
.annotate 'line', 42
    new $P172, "ResizablePMCArray"
    push $P172, ""
    .return ($P172)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("57_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P176, "ResizablePMCArray"
    push $P176, ""
    .return ($P176)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("58_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    .local pmc rx178_debug
    (rx178_cur, rx178_pos, rx178_tgt, $I10) = self."!cursor_start"()
    rx178_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx178_cur
    .local pmc match
    .lex "$/", match
    length rx178_eos, rx178_tgt
    gt rx178_pos, rx178_eos, rx178_done
    set rx178_off, 0
    lt rx178_pos, 2, rx178_start
    sub rx178_off, rx178_pos, 1
    substr rx178_tgt, rx178_tgt, rx178_off
  rx178_start:
    eq $I10, 1, rx178_restart
    if_null rx178_debug, debug_385
    rx178_cur."!cursor_debug"("START", "decints")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan181_done
    goto rxscan181_scan
  rxscan181_loop:
    (rx178_pos) = rx178_cur."from"()
    inc rx178_pos
    rx178_cur."!cursor_from"(rx178_pos)
    ge rx178_pos, rx178_eos, rxscan181_done
  rxscan181_scan:
    set_addr $I10, rxscan181_loop
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  rxscan181_done:
.annotate 'line', 58
  # rx rxquantr182 ** 1..*
    set_addr $I10, rxquantr182_done
    rx178_cur."!mark_push"(0, -1, $I10)
  rxquantr182_loop:
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."decint"()
    unless $P10, rx178_fail
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx178_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
    set_addr $I10, rxquantr182_done
    (rx178_rep) = rx178_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr182_done
    rx178_cur."!mark_push"(rx178_rep, rx178_pos, $I10)
  # rx literal  ","
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    ord $I11, rx178_tgt, $I11
    ne $I11, 44, rx178_fail
    add rx178_pos, 1
    goto rxquantr182_loop
  rxquantr182_done:
  # rx pass
    rx178_cur."!cursor_pass"(rx178_pos, "decints")
    if_null rx178_debug, debug_386
    rx178_cur."!cursor_debug"("PASS", "decints", " at pos=", rx178_pos)
  debug_386:
    .return (rx178_cur)
  rx178_restart:
.annotate 'line', 42
    if_null rx178_debug, debug_387
    rx178_cur."!cursor_debug"("NEXT", "decints")
  debug_387:
  rx178_fail:
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    if_null rx178_debug, debug_388
    rx178_cur."!cursor_debug"("FAIL", "decints")
  debug_388:
    .return (rx178_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("59_1304282264.655") :method
.annotate 'line', 42
    new $P180, "ResizablePMCArray"
    push $P180, ""
    .return ($P180)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("60_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P184, "ResizablePMCArray"
    push $P184, ""
    .return ($P184)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("61_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx186_tgt
    .local int rx186_pos
    .local int rx186_off
    .local int rx186_eos
    .local int rx186_rep
    .local pmc rx186_cur
    .local pmc rx186_debug
    (rx186_cur, rx186_pos, rx186_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx186_cur
    .local pmc match
    .lex "$/", match
    length rx186_eos, rx186_tgt
    gt rx186_pos, rx186_eos, rx186_done
    set rx186_off, 0
    lt rx186_pos, 2, rx186_start
    sub rx186_off, rx186_pos, 1
    substr rx186_tgt, rx186_tgt, rx186_off
  rx186_start:
    eq $I10, 1, rx186_restart
    if_null rx186_debug, debug_389
    rx186_cur."!cursor_debug"("START", "hexint")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan189_done
    goto rxscan189_scan
  rxscan189_loop:
    (rx186_pos) = rx186_cur."from"()
    inc rx186_pos
    rx186_cur."!cursor_from"(rx186_pos)
    ge rx186_pos, rx186_eos, rxscan189_done
  rxscan189_scan:
    set_addr $I10, rxscan189_loop
    rx186_cur."!mark_push"(0, rx186_pos, $I10)
  rxscan189_done:
.annotate 'line', 60
  # rx rxquantr190 ** 1..*
    set_addr $I10, rxquantr190_done
    rx186_cur."!mark_push"(0, -1, $I10)
  rxquantr190_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx186_pos, rx186_off
    set rx186_rep, 0
    sub $I12, rx186_eos, rx186_pos
  rxenumcharlistq191_loop:
    le $I12, 0, rxenumcharlistq191_done
    substr $S10, rx186_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq191_done
    inc rx186_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq191_loop
  rxenumcharlistq191_done:
    lt rx186_rep, 1, rx186_fail
    add rx186_pos, rx186_pos, rx186_rep
    set_addr $I10, rxquantr190_done
    (rx186_rep) = rx186_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr190_done
    rx186_cur."!mark_push"(rx186_rep, rx186_pos, $I10)
  # rx literal  "_"
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail
    sub $I11, rx186_pos, rx186_off
    ord $I11, rx186_tgt, $I11
    ne $I11, 95, rx186_fail
    add rx186_pos, 1
    goto rxquantr190_loop
  rxquantr190_done:
  # rx pass
    rx186_cur."!cursor_pass"(rx186_pos, "hexint")
    if_null rx186_debug, debug_390
    rx186_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx186_pos)
  debug_390:
    .return (rx186_cur)
  rx186_restart:
.annotate 'line', 42
    if_null rx186_debug, debug_391
    rx186_cur."!cursor_debug"("NEXT", "hexint")
  debug_391:
  rx186_fail:
    (rx186_rep, rx186_pos, $I10, $P10) = rx186_cur."!mark_fail"(0)
    lt rx186_pos, -1, rx186_done
    eq rx186_pos, -1, rx186_fail
    jump $I10
  rx186_done:
    rx186_cur."!cursor_fail"()
    if_null rx186_debug, debug_392
    rx186_cur."!cursor_debug"("FAIL", "hexint")
  debug_392:
    .return (rx186_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("62_1304282264.655") :method
.annotate 'line', 42
    new $P188, "ResizablePMCArray"
    push $P188, ""
    .return ($P188)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("63_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P193, "ResizablePMCArray"
    push $P193, ""
    .return ($P193)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("64_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_debug
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    rx195_cur."!cursor_caparray"("hexint")
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
    if_null rx195_debug, debug_393
    rx195_cur."!cursor_debug"("START", "hexints")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan198_done
    goto rxscan198_scan
  rxscan198_loop:
    (rx195_pos) = rx195_cur."from"()
    inc rx195_pos
    rx195_cur."!cursor_from"(rx195_pos)
    ge rx195_pos, rx195_eos, rxscan198_done
  rxscan198_scan:
    set_addr $I10, rxscan198_loop
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxscan198_done:
.annotate 'line', 61
  # rx rxquantr199 ** 1..*
    set_addr $I10, rxquantr199_done
    rx195_cur."!mark_push"(0, -1, $I10)
  rxquantr199_loop:
  # rx subrule "ws" subtype=method negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."ws"()
    unless $P10, rx195_fail
    rx195_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."hexint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx195_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."ws"()
    unless $P10, rx195_fail
    rx195_pos = $P10."pos"()
    set_addr $I10, rxquantr199_done
    (rx195_rep) = rx195_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr199_done
    rx195_cur."!mark_push"(rx195_rep, rx195_pos, $I10)
  # rx literal  ","
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 44, rx195_fail
    add rx195_pos, 1
    goto rxquantr199_loop
  rxquantr199_done:
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "hexints")
    if_null rx195_debug, debug_394
    rx195_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx195_pos)
  debug_394:
    .return (rx195_cur)
  rx195_restart:
.annotate 'line', 42
    if_null rx195_debug, debug_395
    rx195_cur."!cursor_debug"("NEXT", "hexints")
  debug_395:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_396
    rx195_cur."!cursor_debug"("FAIL", "hexints")
  debug_396:
    .return (rx195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("65_1304282264.655") :method
.annotate 'line', 42
    new $P197, "ResizablePMCArray"
    push $P197, ""
    .return ($P197)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("66_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P201, "ResizablePMCArray"
    push $P201, ""
    .return ($P201)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("67_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    .local pmc rx203_debug
    (rx203_cur, rx203_pos, rx203_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx203_cur
    .local pmc match
    .lex "$/", match
    length rx203_eos, rx203_tgt
    gt rx203_pos, rx203_eos, rx203_done
    set rx203_off, 0
    lt rx203_pos, 2, rx203_start
    sub rx203_off, rx203_pos, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
    eq $I10, 1, rx203_restart
    if_null rx203_debug, debug_397
    rx203_cur."!cursor_debug"("START", "octint")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan206_done
    goto rxscan206_scan
  rxscan206_loop:
    (rx203_pos) = rx203_cur."from"()
    inc rx203_pos
    rx203_cur."!cursor_from"(rx203_pos)
    ge rx203_pos, rx203_eos, rxscan206_done
  rxscan206_scan:
    set_addr $I10, rxscan206_loop
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  rxscan206_done:
.annotate 'line', 63
  # rx rxquantr207 ** 1..*
    set_addr $I10, rxquantr207_done
    rx203_cur."!mark_push"(0, -1, $I10)
  rxquantr207_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx203_pos, rx203_off
    set rx203_rep, 0
    sub $I12, rx203_eos, rx203_pos
  rxenumcharlistq208_loop:
    le $I12, 0, rxenumcharlistq208_done
    substr $S10, rx203_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq208_done
    inc rx203_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq208_loop
  rxenumcharlistq208_done:
    lt rx203_rep, 1, rx203_fail
    add rx203_pos, rx203_pos, rx203_rep
    set_addr $I10, rxquantr207_done
    (rx203_rep) = rx203_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr207_done
    rx203_cur."!mark_push"(rx203_rep, rx203_pos, $I10)
  # rx literal  "_"
    add $I11, rx203_pos, 1
    gt $I11, rx203_eos, rx203_fail
    sub $I11, rx203_pos, rx203_off
    ord $I11, rx203_tgt, $I11
    ne $I11, 95, rx203_fail
    add rx203_pos, 1
    goto rxquantr207_loop
  rxquantr207_done:
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "octint")
    if_null rx203_debug, debug_398
    rx203_cur."!cursor_debug"("PASS", "octint", " at pos=", rx203_pos)
  debug_398:
    .return (rx203_cur)
  rx203_restart:
.annotate 'line', 42
    if_null rx203_debug, debug_399
    rx203_cur."!cursor_debug"("NEXT", "octint")
  debug_399:
  rx203_fail:
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    if_null rx203_debug, debug_400
    rx203_cur."!cursor_debug"("FAIL", "octint")
  debug_400:
    .return (rx203_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("68_1304282264.655") :method
.annotate 'line', 42
    new $P205, "ResizablePMCArray"
    push $P205, ""
    .return ($P205)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("69_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P210, "ResizablePMCArray"
    push $P210, ""
    .return ($P210)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("70_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    .local pmc rx212_debug
    (rx212_cur, rx212_pos, rx212_tgt, $I10) = self."!cursor_start"()
    rx212_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx212_cur
    .local pmc match
    .lex "$/", match
    length rx212_eos, rx212_tgt
    gt rx212_pos, rx212_eos, rx212_done
    set rx212_off, 0
    lt rx212_pos, 2, rx212_start
    sub rx212_off, rx212_pos, 1
    substr rx212_tgt, rx212_tgt, rx212_off
  rx212_start:
    eq $I10, 1, rx212_restart
    if_null rx212_debug, debug_401
    rx212_cur."!cursor_debug"("START", "octints")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan215_done
    goto rxscan215_scan
  rxscan215_loop:
    (rx212_pos) = rx212_cur."from"()
    inc rx212_pos
    rx212_cur."!cursor_from"(rx212_pos)
    ge rx212_pos, rx212_eos, rxscan215_done
  rxscan215_scan:
    set_addr $I10, rxscan215_loop
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  rxscan215_done:
.annotate 'line', 64
  # rx rxquantr216 ** 1..*
    set_addr $I10, rxquantr216_done
    rx212_cur."!mark_push"(0, -1, $I10)
  rxquantr216_loop:
  # rx subrule "ws" subtype=method negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."ws"()
    unless $P10, rx212_fail
    rx212_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."octint"()
    unless $P10, rx212_fail
    rx212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx212_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."ws"()
    unless $P10, rx212_fail
    rx212_pos = $P10."pos"()
    set_addr $I10, rxquantr216_done
    (rx212_rep) = rx212_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr216_done
    rx212_cur."!mark_push"(rx212_rep, rx212_pos, $I10)
  # rx literal  ","
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    sub $I11, rx212_pos, rx212_off
    ord $I11, rx212_tgt, $I11
    ne $I11, 44, rx212_fail
    add rx212_pos, 1
    goto rxquantr216_loop
  rxquantr216_done:
  # rx pass
    rx212_cur."!cursor_pass"(rx212_pos, "octints")
    if_null rx212_debug, debug_402
    rx212_cur."!cursor_debug"("PASS", "octints", " at pos=", rx212_pos)
  debug_402:
    .return (rx212_cur)
  rx212_restart:
.annotate 'line', 42
    if_null rx212_debug, debug_403
    rx212_cur."!cursor_debug"("NEXT", "octints")
  debug_403:
  rx212_fail:
    (rx212_rep, rx212_pos, $I10, $P10) = rx212_cur."!mark_fail"(0)
    lt rx212_pos, -1, rx212_done
    eq rx212_pos, -1, rx212_fail
    jump $I10
  rx212_done:
    rx212_cur."!cursor_fail"()
    if_null rx212_debug, debug_404
    rx212_cur."!cursor_debug"("FAIL", "octints")
  debug_404:
    .return (rx212_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("71_1304282264.655") :method
.annotate 'line', 42
    new $P214, "ResizablePMCArray"
    push $P214, ""
    .return ($P214)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("72_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P218, "ResizablePMCArray"
    push $P218, ""
    .return ($P218)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("73_1304282264.655") :method :outer("11_1304282264.655")
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
    if_null rx220_debug, debug_405
    rx220_cur."!cursor_debug"("START", "binint")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan223_done
    goto rxscan223_scan
  rxscan223_loop:
    (rx220_pos) = rx220_cur."from"()
    inc rx220_pos
    rx220_cur."!cursor_from"(rx220_pos)
    ge rx220_pos, rx220_eos, rxscan223_done
  rxscan223_scan:
    set_addr $I10, rxscan223_loop
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  rxscan223_done:
.annotate 'line', 66
  # rx rxquantr224 ** 1..*
    set_addr $I10, rxquantr224_done
    rx220_cur."!mark_push"(0, -1, $I10)
  rxquantr224_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx220_pos, rx220_off
    set rx220_rep, 0
    sub $I12, rx220_eos, rx220_pos
  rxenumcharlistq225_loop:
    le $I12, 0, rxenumcharlistq225_done
    substr $S10, rx220_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq225_done
    inc rx220_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq225_loop
  rxenumcharlistq225_done:
    lt rx220_rep, 1, rx220_fail
    add rx220_pos, rx220_pos, rx220_rep
    set_addr $I10, rxquantr224_done
    (rx220_rep) = rx220_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr224_done
    rx220_cur."!mark_push"(rx220_rep, rx220_pos, $I10)
  # rx literal  "_"
    add $I11, rx220_pos, 1
    gt $I11, rx220_eos, rx220_fail
    sub $I11, rx220_pos, rx220_off
    ord $I11, rx220_tgt, $I11
    ne $I11, 95, rx220_fail
    add rx220_pos, 1
    goto rxquantr224_loop
  rxquantr224_done:
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "binint")
    if_null rx220_debug, debug_406
    rx220_cur."!cursor_debug"("PASS", "binint", " at pos=", rx220_pos)
  debug_406:
    .return (rx220_cur)
  rx220_restart:
.annotate 'line', 42
    if_null rx220_debug, debug_407
    rx220_cur."!cursor_debug"("NEXT", "binint")
  debug_407:
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    if_null rx220_debug, debug_408
    rx220_cur."!cursor_debug"("FAIL", "binint")
  debug_408:
    .return (rx220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("74_1304282264.655") :method
.annotate 'line', 42
    new $P222, "ResizablePMCArray"
    push $P222, ""
    .return ($P222)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("75_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P227, "ResizablePMCArray"
    push $P227, ""
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("76_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx229_tgt
    .local int rx229_pos
    .local int rx229_off
    .local int rx229_eos
    .local int rx229_rep
    .local pmc rx229_cur
    .local pmc rx229_debug
    (rx229_cur, rx229_pos, rx229_tgt, $I10) = self."!cursor_start"()
    rx229_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx229_cur
    .local pmc match
    .lex "$/", match
    length rx229_eos, rx229_tgt
    gt rx229_pos, rx229_eos, rx229_done
    set rx229_off, 0
    lt rx229_pos, 2, rx229_start
    sub rx229_off, rx229_pos, 1
    substr rx229_tgt, rx229_tgt, rx229_off
  rx229_start:
    eq $I10, 1, rx229_restart
    if_null rx229_debug, debug_409
    rx229_cur."!cursor_debug"("START", "binints")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan232_done
    goto rxscan232_scan
  rxscan232_loop:
    (rx229_pos) = rx229_cur."from"()
    inc rx229_pos
    rx229_cur."!cursor_from"(rx229_pos)
    ge rx229_pos, rx229_eos, rxscan232_done
  rxscan232_scan:
    set_addr $I10, rxscan232_loop
    rx229_cur."!mark_push"(0, rx229_pos, $I10)
  rxscan232_done:
.annotate 'line', 67
  # rx rxquantr233 ** 1..*
    set_addr $I10, rxquantr233_done
    rx229_cur."!mark_push"(0, -1, $I10)
  rxquantr233_loop:
  # rx subrule "ws" subtype=method negate=
    rx229_cur."!cursor_pos"(rx229_pos)
    $P10 = rx229_cur."ws"()
    unless $P10, rx229_fail
    rx229_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx229_cur."!cursor_pos"(rx229_pos)
    $P10 = rx229_cur."binint"()
    unless $P10, rx229_fail
    rx229_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx229_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx229_cur."!cursor_pos"(rx229_pos)
    $P10 = rx229_cur."ws"()
    unless $P10, rx229_fail
    rx229_pos = $P10."pos"()
    set_addr $I10, rxquantr233_done
    (rx229_rep) = rx229_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr233_done
    rx229_cur."!mark_push"(rx229_rep, rx229_pos, $I10)
  # rx literal  ","
    add $I11, rx229_pos, 1
    gt $I11, rx229_eos, rx229_fail
    sub $I11, rx229_pos, rx229_off
    ord $I11, rx229_tgt, $I11
    ne $I11, 44, rx229_fail
    add rx229_pos, 1
    goto rxquantr233_loop
  rxquantr233_done:
  # rx pass
    rx229_cur."!cursor_pass"(rx229_pos, "binints")
    if_null rx229_debug, debug_410
    rx229_cur."!cursor_debug"("PASS", "binints", " at pos=", rx229_pos)
  debug_410:
    .return (rx229_cur)
  rx229_restart:
.annotate 'line', 42
    if_null rx229_debug, debug_411
    rx229_cur."!cursor_debug"("NEXT", "binints")
  debug_411:
  rx229_fail:
    (rx229_rep, rx229_pos, $I10, $P10) = rx229_cur."!mark_fail"(0)
    lt rx229_pos, -1, rx229_done
    eq rx229_pos, -1, rx229_fail
    jump $I10
  rx229_done:
    rx229_cur."!cursor_fail"()
    if_null rx229_debug, debug_412
    rx229_cur."!cursor_debug"("FAIL", "binints")
  debug_412:
    .return (rx229_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("77_1304282264.655") :method
.annotate 'line', 42
    new $P231, "ResizablePMCArray"
    push $P231, ""
    .return ($P231)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("78_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P235, "ResizablePMCArray"
    push $P235, ""
    .return ($P235)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("79_1304282264.655") :method :outer("11_1304282264.655")
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
    if_null rx237_debug, debug_413
    rx237_cur."!cursor_debug"("START", "integer")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan245_done
    goto rxscan245_scan
  rxscan245_loop:
    (rx237_pos) = rx237_cur."from"()
    inc rx237_pos
    rx237_cur."!cursor_from"(rx237_pos)
    ge rx237_pos, rx237_eos, rxscan245_done
  rxscan245_scan:
    set_addr $I10, rxscan245_loop
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  rxscan245_done:
  alt246_0:
.annotate 'line', 70
    set_addr $I10, alt246_1
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
.annotate 'line', 71
  # rx literal  "0"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 48, rx237_fail
    add rx237_pos, 1
  alt247_0:
    set_addr $I10, alt247_1
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  # rx literal  "b"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 98, rx237_fail
    add rx237_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."binint"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx237_pos = $P10."pos"()
    goto alt247_end
  alt247_1:
    set_addr $I10, alt247_2
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
.annotate 'line', 72
  # rx literal  "o"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 111, rx237_fail
    add rx237_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."octint"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx237_pos = $P10."pos"()
    goto alt247_end
  alt247_2:
    set_addr $I10, alt247_3
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
.annotate 'line', 73
  # rx literal  "x"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 120, rx237_fail
    add rx237_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."hexint"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx237_pos = $P10."pos"()
    goto alt247_end
  alt247_3:
.annotate 'line', 74
  # rx literal  "d"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 100, rx237_fail
    add rx237_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."decint"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx237_pos = $P10."pos"()
  alt247_end:
.annotate 'line', 71
    goto alt246_end
  alt246_1:
.annotate 'line', 76
  # rx subrule "decint" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."decint"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx237_pos = $P10."pos"()
  alt246_end:
.annotate 'line', 69
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "integer")
    if_null rx237_debug, debug_414
    rx237_cur."!cursor_debug"("PASS", "integer", " at pos=", rx237_pos)
  debug_414:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 42
    if_null rx237_debug, debug_415
    rx237_cur."!cursor_debug"("NEXT", "integer")
  debug_415:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_416
    rx237_cur."!cursor_debug"("FAIL", "integer")
  debug_416:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("80_1304282264.655") :method
.annotate 'line', 42
    $P239 = self."!PREFIX__!subrule"("decint", "")
    $P240 = self."!PREFIX__!subrule"("decint", "0d")
    $P241 = self."!PREFIX__!subrule"("hexint", "0x")
    $P242 = self."!PREFIX__!subrule"("octint", "0o")
    $P243 = self."!PREFIX__!subrule"("binint", "0b")
    new $P244, "ResizablePMCArray"
    push $P244, $P239
    push $P244, $P240
    push $P244, $P241
    push $P244, $P242
    push $P244, $P243
    .return ($P244)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("81_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    $P249 = self."!PREFIX__!subrule"("decint", "")
    $P250 = self."!PREFIX__!subrule"("decint", "0d")
    $P251 = self."!PREFIX__!subrule"("hexint", "0x")
    $P252 = self."!PREFIX__!subrule"("octint", "0o")
    $P253 = self."!PREFIX__!subrule"("binint", "0b")
    new $P254, "ResizablePMCArray"
    push $P254, $P249
    push $P254, $P250
    push $P254, $P251
    push $P254, $P252
    push $P254, $P253
    .return ($P254)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("82_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx256_tgt
    .local int rx256_pos
    .local int rx256_off
    .local int rx256_eos
    .local int rx256_rep
    .local pmc rx256_cur
    .local pmc rx256_debug
    (rx256_cur, rx256_pos, rx256_tgt, $I10) = self."!cursor_start"()
    rx256_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx256_cur
    .local pmc match
    .lex "$/", match
    length rx256_eos, rx256_tgt
    gt rx256_pos, rx256_eos, rx256_done
    set rx256_off, 0
    lt rx256_pos, 2, rx256_start
    sub rx256_off, rx256_pos, 1
    substr rx256_tgt, rx256_tgt, rx256_off
  rx256_start:
    eq $I10, 1, rx256_restart
    if_null rx256_debug, debug_417
    rx256_cur."!cursor_debug"("START", "dec_number")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan259_done
    goto rxscan259_scan
  rxscan259_loop:
    (rx256_pos) = rx256_cur."from"()
    inc rx256_pos
    rx256_cur."!cursor_from"(rx256_pos)
    ge rx256_pos, rx256_eos, rxscan259_done
  rxscan259_scan:
    set_addr $I10, rxscan259_loop
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxscan259_done:
  alt260_0:
.annotate 'line', 80
    set_addr $I10, alt260_1
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_261_fail
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  # rx literal  "."
    add $I11, rx256_pos, 1
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    ord $I11, rx256_tgt, $I11
    ne $I11, 46, rx256_fail
    add rx256_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx256_pos, rx256_off
    find_not_cclass $I11, 8, rx256_tgt, $I10, rx256_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx256_fail
    add rx256_pos, rx256_off, $I11
    set_addr $I10, rxcap_261_fail
    ($I12, $I11) = rx256_cur."!mark_peek"($I10)
    rx256_cur."!cursor_pos"($I11)
    ($P10) = rx256_cur."!cursor_start"()
    $P10."!cursor_pass"(rx256_pos, "")
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_261_done
  rxcap_261_fail:
    goto rx256_fail
  rxcap_261_done:
  # rx rxquantr262 ** 0..1
    set_addr $I10, rxquantr262_done
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxquantr262_loop:
  # rx subrule "escale" subtype=capture negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."escale"()
    unless $P10, rx256_fail
    goto rxsubrule263_pass
  rxsubrule263_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx256_fail
  rxsubrule263_pass:
    set_addr $I10, rxsubrule263_back
    rx256_cur."!mark_push"(0, rx256_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx256_pos = $P10."pos"()
    set_addr $I10, rxquantr262_done
    (rx256_rep) = rx256_cur."!mark_commit"($I10)
  rxquantr262_done:
    goto alt260_end
  alt260_1:
    set_addr $I10, alt260_2
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
.annotate 'line', 82
  # rx subcapture "coeff"
    set_addr $I10, rxcap_264_fail
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx256_pos, rx256_off
    find_not_cclass $I11, 8, rx256_tgt, $I10, rx256_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx256_fail
    add rx256_pos, rx256_off, $I11
  # rx literal  "."
    add $I11, rx256_pos, 1
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    ord $I11, rx256_tgt, $I11
    ne $I11, 46, rx256_fail
    add rx256_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx256_pos, rx256_off
    find_not_cclass $I11, 8, rx256_tgt, $I10, rx256_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx256_fail
    add rx256_pos, rx256_off, $I11
    set_addr $I10, rxcap_264_fail
    ($I12, $I11) = rx256_cur."!mark_peek"($I10)
    rx256_cur."!cursor_pos"($I11)
    ($P10) = rx256_cur."!cursor_start"()
    $P10."!cursor_pass"(rx256_pos, "")
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_264_done
  rxcap_264_fail:
    goto rx256_fail
  rxcap_264_done:
  # rx rxquantr265 ** 0..1
    set_addr $I10, rxquantr265_done
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxquantr265_loop:
  # rx subrule "escale" subtype=capture negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."escale"()
    unless $P10, rx256_fail
    goto rxsubrule266_pass
  rxsubrule266_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx256_fail
  rxsubrule266_pass:
    set_addr $I10, rxsubrule266_back
    rx256_cur."!mark_push"(0, rx256_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx256_pos = $P10."pos"()
    set_addr $I10, rxquantr265_done
    (rx256_rep) = rx256_cur."!mark_commit"($I10)
  rxquantr265_done:
    goto alt260_end
  alt260_2:
.annotate 'line', 83
  # rx subcapture "coeff"
    set_addr $I10, rxcap_267_fail
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx256_pos, rx256_off
    find_not_cclass $I11, 8, rx256_tgt, $I10, rx256_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx256_fail
    add rx256_pos, rx256_off, $I11
    set_addr $I10, rxcap_267_fail
    ($I12, $I11) = rx256_cur."!mark_peek"($I10)
    rx256_cur."!cursor_pos"($I11)
    ($P10) = rx256_cur."!cursor_start"()
    $P10."!cursor_pass"(rx256_pos, "")
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_267_done
  rxcap_267_fail:
    goto rx256_fail
  rxcap_267_done:
  # rx subrule "escale" subtype=capture negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."escale"()
    unless $P10, rx256_fail
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx256_pos = $P10."pos"()
  alt260_end:
.annotate 'line', 80
  # rx pass
    rx256_cur."!cursor_pass"(rx256_pos, "dec_number")
    if_null rx256_debug, debug_418
    rx256_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx256_pos)
  debug_418:
    .return (rx256_cur)
  rx256_restart:
.annotate 'line', 42
    if_null rx256_debug, debug_419
    rx256_cur."!cursor_debug"("NEXT", "dec_number")
  debug_419:
  rx256_fail:
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    if_null rx256_debug, debug_420
    rx256_cur."!cursor_debug"("FAIL", "dec_number")
  debug_420:
    .return (rx256_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("83_1304282264.655") :method
.annotate 'line', 42
    new $P258, "ResizablePMCArray"
    push $P258, ""
    push $P258, ""
    push $P258, "."
    .return ($P258)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("84_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P269, "ResizablePMCArray"
    push $P269, ""
    push $P269, ""
    push $P269, "."
    .return ($P269)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("85_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    .local pmc rx271_debug
    (rx271_cur, rx271_pos, rx271_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx271_cur
    .local pmc match
    .lex "$/", match
    length rx271_eos, rx271_tgt
    gt rx271_pos, rx271_eos, rx271_done
    set rx271_off, 0
    lt rx271_pos, 2, rx271_start
    sub rx271_off, rx271_pos, 1
    substr rx271_tgt, rx271_tgt, rx271_off
  rx271_start:
    eq $I10, 1, rx271_restart
    if_null rx271_debug, debug_421
    rx271_cur."!cursor_debug"("START", "escale")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan274_done
    goto rxscan274_scan
  rxscan274_loop:
    (rx271_pos) = rx271_cur."from"()
    inc rx271_pos
    rx271_cur."!cursor_from"(rx271_pos)
    ge rx271_pos, rx271_eos, rxscan274_done
  rxscan274_scan:
    set_addr $I10, rxscan274_loop
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  rxscan274_done:
.annotate 'line', 86
  # rx enumcharlist negate=0 
    ge rx271_pos, rx271_eos, rx271_fail
    sub $I10, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx271_fail
    inc rx271_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx271_pos, rx271_off
    set rx271_rep, 0
    sub $I12, rx271_eos, rx271_pos
    le $I12, 1, rxenumcharlistq275_loop
    set $I12, 1
  rxenumcharlistq275_loop:
    le $I12, 0, rxenumcharlistq275_done
    substr $S10, rx271_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq275_done
    inc rx271_rep
  rxenumcharlistq275_done:
    add rx271_pos, rx271_pos, rx271_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx271_pos, rx271_off
    find_not_cclass $I11, 8, rx271_tgt, $I10, rx271_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx271_fail
    add rx271_pos, rx271_off, $I11
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "escale")
    if_null rx271_debug, debug_422
    rx271_cur."!cursor_debug"("PASS", "escale", " at pos=", rx271_pos)
  debug_422:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 42
    if_null rx271_debug, debug_423
    rx271_cur."!cursor_debug"("NEXT", "escale")
  debug_423:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_424
    rx271_cur."!cursor_debug"("FAIL", "escale")
  debug_424:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("86_1304282264.655") :method
.annotate 'line', 42
    new $P273, "ResizablePMCArray"
    push $P273, "e"
    push $P273, "E"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("87_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P277, "ResizablePMCArray"
    push $P277, "e"
    push $P277, "E"
    .return ($P277)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("88_1304282264.655")
    .param pmc param_279
.annotate 'line', 88
    .lex "self", param_279
    $P280 = param_279."!protoregex"("quote_escape")
    .return ($P280)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("89_1304282264.655")
    .param pmc param_282
.annotate 'line', 88
    .lex "self", param_282
    $P283 = param_282."!PREFIX__!protoregex"("quote_escape")
    .return ($P283)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("90_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx285_tgt
    .local int rx285_pos
    .local int rx285_off
    .local int rx285_eos
    .local int rx285_rep
    .local pmc rx285_cur
    .local pmc rx285_debug
    (rx285_cur, rx285_pos, rx285_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx285_cur
    .local pmc match
    .lex "$/", match
    length rx285_eos, rx285_tgt
    gt rx285_pos, rx285_eos, rx285_done
    set rx285_off, 0
    lt rx285_pos, 2, rx285_start
    sub rx285_off, rx285_pos, 1
    substr rx285_tgt, rx285_tgt, rx285_off
  rx285_start:
    eq $I10, 1, rx285_restart
    if_null rx285_debug, debug_425
    rx285_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan288_done
    goto rxscan288_scan
  rxscan288_loop:
    (rx285_pos) = rx285_cur."from"()
    inc rx285_pos
    rx285_cur."!cursor_from"(rx285_pos)
    ge rx285_pos, rx285_eos, rxscan288_done
  rxscan288_scan:
    set_addr $I10, rxscan288_loop
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  rxscan288_done:
.annotate 'line', 89
  # rx literal  "\\\\"
    add $I11, rx285_pos, 2
    gt $I11, rx285_eos, rx285_fail
    sub $I11, rx285_pos, rx285_off
    substr $S10, rx285_tgt, $I11, 2
    ne $S10, "\\\\", rx285_fail
    add rx285_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    $P10 = rx285_cur."quotemod_check"("q")
    unless $P10, rx285_fail
  # rx pass
    rx285_cur."!cursor_pass"(rx285_pos, "quote_escape:sym<backslash>")
    if_null rx285_debug, debug_426
    rx285_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx285_pos)
  debug_426:
    .return (rx285_cur)
  rx285_restart:
.annotate 'line', 42
    if_null rx285_debug, debug_427
    rx285_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_427:
  rx285_fail:
    (rx285_rep, rx285_pos, $I10, $P10) = rx285_cur."!mark_fail"(0)
    lt rx285_pos, -1, rx285_done
    eq rx285_pos, -1, rx285_fail
    jump $I10
  rx285_done:
    rx285_cur."!cursor_fail"()
    if_null rx285_debug, debug_428
    rx285_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_428:
    .return (rx285_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("91_1304282264.655") :method
.annotate 'line', 42
    new $P287, "ResizablePMCArray"
    push $P287, "\\\\"
    .return ($P287)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("92_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P290, "ResizablePMCArray"
    push $P290, "\\\\"
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("93_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    .local pmc rx292_debug
    (rx292_cur, rx292_pos, rx292_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx292_cur
    .local pmc match
    .lex "$/", match
    length rx292_eos, rx292_tgt
    gt rx292_pos, rx292_eos, rx292_done
    set rx292_off, 0
    lt rx292_pos, 2, rx292_start
    sub rx292_off, rx292_pos, 1
    substr rx292_tgt, rx292_tgt, rx292_off
  rx292_start:
    eq $I10, 1, rx292_restart
    if_null rx292_debug, debug_429
    rx292_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan295_done
    goto rxscan295_scan
  rxscan295_loop:
    (rx292_pos) = rx292_cur."from"()
    inc rx292_pos
    rx292_cur."!cursor_from"(rx292_pos)
    ge rx292_pos, rx292_eos, rxscan295_done
  rxscan295_scan:
    set_addr $I10, rxscan295_loop
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  rxscan295_done:
.annotate 'line', 90
  # rx literal  "\\"
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    ord $I11, rx292_tgt, $I11
    ne $I11, 92, rx292_fail
    add rx292_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."quotemod_check"("q")
    unless $P10, rx292_fail
  # rx subrule "stopper" subtype=capture negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."stopper"()
    unless $P10, rx292_fail
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx292_pos = $P10."pos"()
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "quote_escape:sym<stopper>")
    if_null rx292_debug, debug_430
    rx292_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx292_pos)
  debug_430:
    .return (rx292_cur)
  rx292_restart:
.annotate 'line', 42
    if_null rx292_debug, debug_431
    rx292_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_431:
  rx292_fail:
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    if_null rx292_debug, debug_432
    rx292_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_432:
    .return (rx292_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("94_1304282264.655") :method
.annotate 'line', 42
    new $P294, "ResizablePMCArray"
    push $P294, "\\"
    .return ($P294)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("95_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P297, "ResizablePMCArray"
    push $P297, "\\"
    .return ($P297)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("96_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx299_tgt
    .local int rx299_pos
    .local int rx299_off
    .local int rx299_eos
    .local int rx299_rep
    .local pmc rx299_cur
    .local pmc rx299_debug
    (rx299_cur, rx299_pos, rx299_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx299_cur
    .local pmc match
    .lex "$/", match
    length rx299_eos, rx299_tgt
    gt rx299_pos, rx299_eos, rx299_done
    set rx299_off, 0
    lt rx299_pos, 2, rx299_start
    sub rx299_off, rx299_pos, 1
    substr rx299_tgt, rx299_tgt, rx299_off
  rx299_start:
    eq $I10, 1, rx299_restart
    if_null rx299_debug, debug_433
    rx299_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_433:
    $I10 = self.'from'()
    ne $I10, -1, rxscan302_done
    goto rxscan302_scan
  rxscan302_loop:
    (rx299_pos) = rx299_cur."from"()
    inc rx299_pos
    rx299_cur."!cursor_from"(rx299_pos)
    ge rx299_pos, rx299_eos, rxscan302_done
  rxscan302_scan:
    set_addr $I10, rxscan302_loop
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
  rxscan302_done:
.annotate 'line', 92
  # rx literal  "\\b"
    add $I11, rx299_pos, 2
    gt $I11, rx299_eos, rx299_fail
    sub $I11, rx299_pos, rx299_off
    substr $S10, rx299_tgt, $I11, 2
    ne $S10, "\\b", rx299_fail
    add rx299_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."quotemod_check"("b")
    unless $P10, rx299_fail
  # rx pass
    rx299_cur."!cursor_pass"(rx299_pos, "quote_escape:sym<bs>")
    if_null rx299_debug, debug_434
    rx299_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx299_pos)
  debug_434:
    .return (rx299_cur)
  rx299_restart:
.annotate 'line', 42
    if_null rx299_debug, debug_435
    rx299_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_435:
  rx299_fail:
    (rx299_rep, rx299_pos, $I10, $P10) = rx299_cur."!mark_fail"(0)
    lt rx299_pos, -1, rx299_done
    eq rx299_pos, -1, rx299_fail
    jump $I10
  rx299_done:
    rx299_cur."!cursor_fail"()
    if_null rx299_debug, debug_436
    rx299_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_436:
    .return (rx299_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("97_1304282264.655") :method
.annotate 'line', 42
    new $P301, "ResizablePMCArray"
    push $P301, "\\b"
    .return ($P301)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("98_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P304, "ResizablePMCArray"
    push $P304, "\\b"
    .return ($P304)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("99_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
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
    if_null rx306_debug, debug_437
    rx306_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan309_done
    goto rxscan309_scan
  rxscan309_loop:
    (rx306_pos) = rx306_cur."from"()
    inc rx306_pos
    rx306_cur."!cursor_from"(rx306_pos)
    ge rx306_pos, rx306_eos, rxscan309_done
  rxscan309_scan:
    set_addr $I10, rxscan309_loop
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  rxscan309_done:
.annotate 'line', 93
  # rx literal  "\\n"
    add $I11, rx306_pos, 2
    gt $I11, rx306_eos, rx306_fail
    sub $I11, rx306_pos, rx306_off
    substr $S10, rx306_tgt, $I11, 2
    ne $S10, "\\n", rx306_fail
    add rx306_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx306_cur."!cursor_pos"(rx306_pos)
    $P10 = rx306_cur."quotemod_check"("b")
    unless $P10, rx306_fail
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "quote_escape:sym<nl>")
    if_null rx306_debug, debug_438
    rx306_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx306_pos)
  debug_438:
    .return (rx306_cur)
  rx306_restart:
.annotate 'line', 42
    if_null rx306_debug, debug_439
    rx306_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_439:
  rx306_fail:
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    if_null rx306_debug, debug_440
    rx306_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_440:
    .return (rx306_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("100_1304282264.655") :method
.annotate 'line', 42
    new $P308, "ResizablePMCArray"
    push $P308, "\\n"
    .return ($P308)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("101_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P311, "ResizablePMCArray"
    push $P311, "\\n"
    .return ($P311)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("102_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx313_tgt
    .local int rx313_pos
    .local int rx313_off
    .local int rx313_eos
    .local int rx313_rep
    .local pmc rx313_cur
    .local pmc rx313_debug
    (rx313_cur, rx313_pos, rx313_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx313_cur
    .local pmc match
    .lex "$/", match
    length rx313_eos, rx313_tgt
    gt rx313_pos, rx313_eos, rx313_done
    set rx313_off, 0
    lt rx313_pos, 2, rx313_start
    sub rx313_off, rx313_pos, 1
    substr rx313_tgt, rx313_tgt, rx313_off
  rx313_start:
    eq $I10, 1, rx313_restart
    if_null rx313_debug, debug_441
    rx313_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan316_done
    goto rxscan316_scan
  rxscan316_loop:
    (rx313_pos) = rx313_cur."from"()
    inc rx313_pos
    rx313_cur."!cursor_from"(rx313_pos)
    ge rx313_pos, rx313_eos, rxscan316_done
  rxscan316_scan:
    set_addr $I10, rxscan316_loop
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  rxscan316_done:
.annotate 'line', 94
  # rx literal  "\\r"
    add $I11, rx313_pos, 2
    gt $I11, rx313_eos, rx313_fail
    sub $I11, rx313_pos, rx313_off
    substr $S10, rx313_tgt, $I11, 2
    ne $S10, "\\r", rx313_fail
    add rx313_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."quotemod_check"("b")
    unless $P10, rx313_fail
  # rx pass
    rx313_cur."!cursor_pass"(rx313_pos, "quote_escape:sym<cr>")
    if_null rx313_debug, debug_442
    rx313_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx313_pos)
  debug_442:
    .return (rx313_cur)
  rx313_restart:
.annotate 'line', 42
    if_null rx313_debug, debug_443
    rx313_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_443:
  rx313_fail:
    (rx313_rep, rx313_pos, $I10, $P10) = rx313_cur."!mark_fail"(0)
    lt rx313_pos, -1, rx313_done
    eq rx313_pos, -1, rx313_fail
    jump $I10
  rx313_done:
    rx313_cur."!cursor_fail"()
    if_null rx313_debug, debug_444
    rx313_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_444:
    .return (rx313_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("103_1304282264.655") :method
.annotate 'line', 42
    new $P315, "ResizablePMCArray"
    push $P315, "\\r"
    .return ($P315)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("104_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P318, "ResizablePMCArray"
    push $P318, "\\r"
    .return ($P318)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("105_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    .local pmc rx320_debug
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx320_cur
    .local pmc match
    .lex "$/", match
    length rx320_eos, rx320_tgt
    gt rx320_pos, rx320_eos, rx320_done
    set rx320_off, 0
    lt rx320_pos, 2, rx320_start
    sub rx320_off, rx320_pos, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
    eq $I10, 1, rx320_restart
    if_null rx320_debug, debug_445
    rx320_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan323_done
    goto rxscan323_scan
  rxscan323_loop:
    (rx320_pos) = rx320_cur."from"()
    inc rx320_pos
    rx320_cur."!cursor_from"(rx320_pos)
    ge rx320_pos, rx320_eos, rxscan323_done
  rxscan323_scan:
    set_addr $I10, rxscan323_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxscan323_done:
.annotate 'line', 95
  # rx literal  "\\t"
    add $I11, rx320_pos, 2
    gt $I11, rx320_eos, rx320_fail
    sub $I11, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I11, 2
    ne $S10, "\\t", rx320_fail
    add rx320_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."quotemod_check"("b")
    unless $P10, rx320_fail
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "quote_escape:sym<tab>")
    if_null rx320_debug, debug_446
    rx320_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx320_pos)
  debug_446:
    .return (rx320_cur)
  rx320_restart:
.annotate 'line', 42
    if_null rx320_debug, debug_447
    rx320_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_447:
  rx320_fail:
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    if_null rx320_debug, debug_448
    rx320_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_448:
    .return (rx320_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("106_1304282264.655") :method
.annotate 'line', 42
    new $P322, "ResizablePMCArray"
    push $P322, "\\t"
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("107_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P325, "ResizablePMCArray"
    push $P325, "\\t"
    .return ($P325)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("108_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
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
    if_null rx327_debug, debug_449
    rx327_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan330_done
    goto rxscan330_scan
  rxscan330_loop:
    (rx327_pos) = rx327_cur."from"()
    inc rx327_pos
    rx327_cur."!cursor_from"(rx327_pos)
    ge rx327_pos, rx327_eos, rxscan330_done
  rxscan330_scan:
    set_addr $I10, rxscan330_loop
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
  rxscan330_done:
.annotate 'line', 96
  # rx literal  "\\f"
    add $I11, rx327_pos, 2
    gt $I11, rx327_eos, rx327_fail
    sub $I11, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I11, 2
    ne $S10, "\\f", rx327_fail
    add rx327_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."quotemod_check"("b")
    unless $P10, rx327_fail
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "quote_escape:sym<ff>")
    if_null rx327_debug, debug_450
    rx327_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx327_pos)
  debug_450:
    .return (rx327_cur)
  rx327_restart:
.annotate 'line', 42
    if_null rx327_debug, debug_451
    rx327_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_451:
  rx327_fail:
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    if_null rx327_debug, debug_452
    rx327_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_452:
    .return (rx327_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("109_1304282264.655") :method
.annotate 'line', 42
    new $P329, "ResizablePMCArray"
    push $P329, "\\f"
    .return ($P329)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("110_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P332, "ResizablePMCArray"
    push $P332, "\\f"
    .return ($P332)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("111_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
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
    if_null rx334_debug, debug_453
    rx334_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_453:
    $I10 = self.'from'()
    ne $I10, -1, rxscan337_done
    goto rxscan337_scan
  rxscan337_loop:
    (rx334_pos) = rx334_cur."from"()
    inc rx334_pos
    rx334_cur."!cursor_from"(rx334_pos)
    ge rx334_pos, rx334_eos, rxscan337_done
  rxscan337_scan:
    set_addr $I10, rxscan337_loop
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  rxscan337_done:
.annotate 'line', 97
  # rx literal  "\\e"
    add $I11, rx334_pos, 2
    gt $I11, rx334_eos, rx334_fail
    sub $I11, rx334_pos, rx334_off
    substr $S10, rx334_tgt, $I11, 2
    ne $S10, "\\e", rx334_fail
    add rx334_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."quotemod_check"("b")
    unless $P10, rx334_fail
  # rx pass
    rx334_cur."!cursor_pass"(rx334_pos, "quote_escape:sym<esc>")
    if_null rx334_debug, debug_454
    rx334_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx334_pos)
  debug_454:
    .return (rx334_cur)
  rx334_restart:
.annotate 'line', 42
    if_null rx334_debug, debug_455
    rx334_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_455:
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    if_null rx334_debug, debug_456
    rx334_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_456:
    .return (rx334_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("112_1304282264.655") :method
.annotate 'line', 42
    new $P336, "ResizablePMCArray"
    push $P336, "\\e"
    .return ($P336)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("113_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P339, "ResizablePMCArray"
    push $P339, "\\e"
    .return ($P339)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("114_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx341_tgt
    .local int rx341_pos
    .local int rx341_off
    .local int rx341_eos
    .local int rx341_rep
    .local pmc rx341_cur
    .local pmc rx341_debug
    (rx341_cur, rx341_pos, rx341_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx341_cur
    .local pmc match
    .lex "$/", match
    length rx341_eos, rx341_tgt
    gt rx341_pos, rx341_eos, rx341_done
    set rx341_off, 0
    lt rx341_pos, 2, rx341_start
    sub rx341_off, rx341_pos, 1
    substr rx341_tgt, rx341_tgt, rx341_off
  rx341_start:
    eq $I10, 1, rx341_restart
    if_null rx341_debug, debug_457
    rx341_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_457:
    $I10 = self.'from'()
    ne $I10, -1, rxscan344_done
    goto rxscan344_scan
  rxscan344_loop:
    (rx341_pos) = rx341_cur."from"()
    inc rx341_pos
    rx341_cur."!cursor_from"(rx341_pos)
    ge rx341_pos, rx341_eos, rxscan344_done
  rxscan344_scan:
    set_addr $I10, rxscan344_loop
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  rxscan344_done:
.annotate 'line', 99
  # rx literal  unicode:"\\x"
    add $I11, rx341_pos, 2
    gt $I11, rx341_eos, rx341_fail
    sub $I11, rx341_pos, rx341_off
    substr $S10, rx341_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx341_fail
    add rx341_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx341_cur."!cursor_pos"(rx341_pos)
    $P10 = rx341_cur."quotemod_check"("b")
    unless $P10, rx341_fail
  alt345_0:
.annotate 'line', 100
    set_addr $I10, alt345_1
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx341_cur."!cursor_pos"(rx341_pos)
    $P10 = rx341_cur."hexint"()
    unless $P10, rx341_fail
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx341_pos = $P10."pos"()
    goto alt345_end
  alt345_1:
  # rx literal  "["
    add $I11, rx341_pos, 1
    gt $I11, rx341_eos, rx341_fail
    sub $I11, rx341_pos, rx341_off
    ord $I11, rx341_tgt, $I11
    ne $I11, 91, rx341_fail
    add rx341_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx341_cur."!cursor_pos"(rx341_pos)
    $P10 = rx341_cur."hexints"()
    unless $P10, rx341_fail
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx341_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx341_pos, 1
    gt $I11, rx341_eos, rx341_fail
    sub $I11, rx341_pos, rx341_off
    ord $I11, rx341_tgt, $I11
    ne $I11, 93, rx341_fail
    add rx341_pos, 1
  alt345_end:
.annotate 'line', 98
  # rx pass
    rx341_cur."!cursor_pass"(rx341_pos, "quote_escape:sym<hex>")
    if_null rx341_debug, debug_458
    rx341_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx341_pos)
  debug_458:
    .return (rx341_cur)
  rx341_restart:
.annotate 'line', 42
    if_null rx341_debug, debug_459
    rx341_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_459:
  rx341_fail:
    (rx341_rep, rx341_pos, $I10, $P10) = rx341_cur."!mark_fail"(0)
    lt rx341_pos, -1, rx341_done
    eq rx341_pos, -1, rx341_fail
    jump $I10
  rx341_done:
    rx341_cur."!cursor_fail"()
    if_null rx341_debug, debug_460
    rx341_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_460:
    .return (rx341_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("115_1304282264.655") :method
.annotate 'line', 42
    new $P343, "ResizablePMCArray"
    push $P343, unicode:"\\x"
    .return ($P343)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("116_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P347, "ResizablePMCArray"
    push $P347, unicode:"\\x"
    .return ($P347)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("117_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx349_tgt
    .local int rx349_pos
    .local int rx349_off
    .local int rx349_eos
    .local int rx349_rep
    .local pmc rx349_cur
    .local pmc rx349_debug
    (rx349_cur, rx349_pos, rx349_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx349_cur
    .local pmc match
    .lex "$/", match
    length rx349_eos, rx349_tgt
    gt rx349_pos, rx349_eos, rx349_done
    set rx349_off, 0
    lt rx349_pos, 2, rx349_start
    sub rx349_off, rx349_pos, 1
    substr rx349_tgt, rx349_tgt, rx349_off
  rx349_start:
    eq $I10, 1, rx349_restart
    if_null rx349_debug, debug_461
    rx349_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_461:
    $I10 = self.'from'()
    ne $I10, -1, rxscan352_done
    goto rxscan352_scan
  rxscan352_loop:
    (rx349_pos) = rx349_cur."from"()
    inc rx349_pos
    rx349_cur."!cursor_from"(rx349_pos)
    ge rx349_pos, rx349_eos, rxscan352_done
  rxscan352_scan:
    set_addr $I10, rxscan352_loop
    rx349_cur."!mark_push"(0, rx349_pos, $I10)
  rxscan352_done:
.annotate 'line', 103
  # rx literal  "\\o"
    add $I11, rx349_pos, 2
    gt $I11, rx349_eos, rx349_fail
    sub $I11, rx349_pos, rx349_off
    substr $S10, rx349_tgt, $I11, 2
    ne $S10, "\\o", rx349_fail
    add rx349_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."quotemod_check"("b")
    unless $P10, rx349_fail
  alt353_0:
.annotate 'line', 104
    set_addr $I10, alt353_1
    rx349_cur."!mark_push"(0, rx349_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."octint"()
    unless $P10, rx349_fail
    rx349_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx349_pos = $P10."pos"()
    goto alt353_end
  alt353_1:
  # rx literal  "["
    add $I11, rx349_pos, 1
    gt $I11, rx349_eos, rx349_fail
    sub $I11, rx349_pos, rx349_off
    ord $I11, rx349_tgt, $I11
    ne $I11, 91, rx349_fail
    add rx349_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."octints"()
    unless $P10, rx349_fail
    rx349_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx349_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx349_pos, 1
    gt $I11, rx349_eos, rx349_fail
    sub $I11, rx349_pos, rx349_off
    ord $I11, rx349_tgt, $I11
    ne $I11, 93, rx349_fail
    add rx349_pos, 1
  alt353_end:
.annotate 'line', 102
  # rx pass
    rx349_cur."!cursor_pass"(rx349_pos, "quote_escape:sym<oct>")
    if_null rx349_debug, debug_462
    rx349_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx349_pos)
  debug_462:
    .return (rx349_cur)
  rx349_restart:
.annotate 'line', 42
    if_null rx349_debug, debug_463
    rx349_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_463:
  rx349_fail:
    (rx349_rep, rx349_pos, $I10, $P10) = rx349_cur."!mark_fail"(0)
    lt rx349_pos, -1, rx349_done
    eq rx349_pos, -1, rx349_fail
    jump $I10
  rx349_done:
    rx349_cur."!cursor_fail"()
    if_null rx349_debug, debug_464
    rx349_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_464:
    .return (rx349_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("118_1304282264.655") :method
.annotate 'line', 42
    new $P351, "ResizablePMCArray"
    push $P351, "\\o"
    .return ($P351)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("119_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P355, "ResizablePMCArray"
    push $P355, "\\o"
    .return ($P355)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("120_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    .local pmc rx357_debug
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx357_cur
    .local pmc match
    .lex "$/", match
    length rx357_eos, rx357_tgt
    gt rx357_pos, rx357_eos, rx357_done
    set rx357_off, 0
    lt rx357_pos, 2, rx357_start
    sub rx357_off, rx357_pos, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
    eq $I10, 1, rx357_restart
    if_null rx357_debug, debug_465
    rx357_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_465:
    $I10 = self.'from'()
    ne $I10, -1, rxscan360_done
    goto rxscan360_scan
  rxscan360_loop:
    (rx357_pos) = rx357_cur."from"()
    inc rx357_pos
    rx357_cur."!cursor_from"(rx357_pos)
    ge rx357_pos, rx357_eos, rxscan360_done
  rxscan360_scan:
    set_addr $I10, rxscan360_loop
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  rxscan360_done:
.annotate 'line', 106
  # rx literal  "\\c"
    add $I11, rx357_pos, 2
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I11, 2
    ne $S10, "\\c", rx357_fail
    add rx357_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."quotemod_check"("b")
    unless $P10, rx357_fail
  # rx subrule "charspec" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."charspec"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx357_pos = $P10."pos"()
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "quote_escape:sym<chr>")
    if_null rx357_debug, debug_466
    rx357_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx357_pos)
  debug_466:
    .return (rx357_cur)
  rx357_restart:
.annotate 'line', 42
    if_null rx357_debug, debug_467
    rx357_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_467:
  rx357_fail:
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    if_null rx357_debug, debug_468
    rx357_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_468:
    .return (rx357_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("121_1304282264.655") :method
.annotate 'line', 42
    new $P359, "ResizablePMCArray"
    push $P359, "\\c"
    .return ($P359)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("122_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P362, "ResizablePMCArray"
    push $P362, "\\c"
    .return ($P362)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("123_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx364_tgt
    .local int rx364_pos
    .local int rx364_off
    .local int rx364_eos
    .local int rx364_rep
    .local pmc rx364_cur
    .local pmc rx364_debug
    (rx364_cur, rx364_pos, rx364_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx364_cur
    .local pmc match
    .lex "$/", match
    length rx364_eos, rx364_tgt
    gt rx364_pos, rx364_eos, rx364_done
    set rx364_off, 0
    lt rx364_pos, 2, rx364_start
    sub rx364_off, rx364_pos, 1
    substr rx364_tgt, rx364_tgt, rx364_off
  rx364_start:
    eq $I10, 1, rx364_restart
    if_null rx364_debug, debug_469
    rx364_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_469:
    $I10 = self.'from'()
    ne $I10, -1, rxscan367_done
    goto rxscan367_scan
  rxscan367_loop:
    (rx364_pos) = rx364_cur."from"()
    inc rx364_pos
    rx364_cur."!cursor_from"(rx364_pos)
    ge rx364_pos, rx364_eos, rxscan367_done
  rxscan367_scan:
    set_addr $I10, rxscan367_loop
    rx364_cur."!mark_push"(0, rx364_pos, $I10)
  rxscan367_done:
.annotate 'line', 107
  # rx literal  "\\"
    add $I11, rx364_pos, 1
    gt $I11, rx364_eos, rx364_fail
    sub $I11, rx364_pos, rx364_off
    ord $I11, rx364_tgt, $I11
    ne $I11, 92, rx364_fail
    add rx364_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_368_fail
    rx364_cur."!mark_push"(0, rx364_pos, $I10)
  # rx literal  "0"
    add $I11, rx364_pos, 1
    gt $I11, rx364_eos, rx364_fail
    sub $I11, rx364_pos, rx364_off
    ord $I11, rx364_tgt, $I11
    ne $I11, 48, rx364_fail
    add rx364_pos, 1
    set_addr $I10, rxcap_368_fail
    ($I12, $I11) = rx364_cur."!mark_peek"($I10)
    rx364_cur."!cursor_pos"($I11)
    ($P10) = rx364_cur."!cursor_start"()
    $P10."!cursor_pass"(rx364_pos, "")
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_368_done
  rxcap_368_fail:
    goto rx364_fail
  rxcap_368_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."quotemod_check"("b")
    unless $P10, rx364_fail
  # rx pass
    rx364_cur."!cursor_pass"(rx364_pos, "quote_escape:sym<0>")
    if_null rx364_debug, debug_470
    rx364_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx364_pos)
  debug_470:
    .return (rx364_cur)
  rx364_restart:
.annotate 'line', 42
    if_null rx364_debug, debug_471
    rx364_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_471:
  rx364_fail:
    (rx364_rep, rx364_pos, $I10, $P10) = rx364_cur."!mark_fail"(0)
    lt rx364_pos, -1, rx364_done
    eq rx364_pos, -1, rx364_fail
    jump $I10
  rx364_done:
    rx364_cur."!cursor_fail"()
    if_null rx364_debug, debug_472
    rx364_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_472:
    .return (rx364_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("124_1304282264.655") :method
.annotate 'line', 42
    new $P366, "ResizablePMCArray"
    push $P366, "\\0"
    .return ($P366)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("125_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P370, "ResizablePMCArray"
    push $P370, "\\0"
    .return ($P370)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("126_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .const 'Sub' $P391 = "130_1304282264.655" 
    capture_lex $P391
    .const 'Sub' $P384 = "129_1304282264.655" 
    capture_lex $P384
    .const 'Sub' $P379 = "128_1304282264.655" 
    capture_lex $P379
    .local string rx372_tgt
    .local int rx372_pos
    .local int rx372_off
    .local int rx372_eos
    .local int rx372_rep
    .local pmc rx372_cur
    .local pmc rx372_debug
    (rx372_cur, rx372_pos, rx372_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx372_cur
    .local pmc match
    .lex "$/", match
    length rx372_eos, rx372_tgt
    gt rx372_pos, rx372_eos, rx372_done
    set rx372_off, 0
    lt rx372_pos, 2, rx372_start
    sub rx372_off, rx372_pos, 1
    substr rx372_tgt, rx372_tgt, rx372_off
  rx372_start:
    eq $I10, 1, rx372_restart
    if_null rx372_debug, debug_473
    rx372_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_473:
    $I10 = self.'from'()
    ne $I10, -1, rxscan375_done
    goto rxscan375_scan
  rxscan375_loop:
    (rx372_pos) = rx372_cur."from"()
    inc rx372_pos
    rx372_cur."!cursor_from"(rx372_pos)
    ge rx372_pos, rx372_eos, rxscan375_done
  rxscan375_scan:
    set_addr $I10, rxscan375_loop
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
  rxscan375_done:
.annotate 'line', 109
    rx372_cur."!cursor_pos"(rx372_pos)
    find_lex $P376, unicode:"$\x{a2}"
    $P377 = $P376."MATCH"()
    store_lex "$/", $P377
    .const 'Sub' $P379 = "128_1304282264.655" 
    capture_lex $P379
    $P380 = $P379()
  # rx literal  "\\"
    add $I11, rx372_pos, 1
    gt $I11, rx372_eos, rx372_fail
    sub $I11, rx372_pos, rx372_off
    ord $I11, rx372_tgt, $I11
    ne $I11, 92, rx372_fail
    add rx372_pos, 1
  alt381_0:
.annotate 'line', 110
    set_addr $I10, alt381_1
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
.annotate 'line', 111
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx372_cur."!cursor_pos"(rx372_pos)
    $P10 = rx372_cur."quotemod_check"("b")
    unless $P10, rx372_fail
  alt382_0:
.annotate 'line', 112
    set_addr $I10, alt382_1
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
.annotate 'line', 113
  # rx subrule $P384 subtype=capture negate=
    rx372_cur."!cursor_pos"(rx372_pos)
    .const 'Sub' $P384 = "129_1304282264.655" 
    capture_lex $P384
    $P10 = rx372_cur.$P384()
    unless $P10, rx372_fail
    rx372_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx372_pos = $P10."pos"()
    goto alt382_end
  alt382_1:
.annotate 'line', 114
  # rx subcapture "x"
    set_addr $I10, rxcap_387_fail
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
  # rx charclass w
    ge rx372_pos, rx372_eos, rx372_fail
    sub $I10, rx372_pos, rx372_off
    is_cclass $I11, 8192, rx372_tgt, $I10
    unless $I11, rx372_fail
    inc rx372_pos
    set_addr $I10, rxcap_387_fail
    ($I12, $I11) = rx372_cur."!mark_peek"($I10)
    rx372_cur."!cursor_pos"($I11)
    ($P10) = rx372_cur."!cursor_start"()
    $P10."!cursor_pass"(rx372_pos, "")
    rx372_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_387_done
  rxcap_387_fail:
    goto rx372_fail
  rxcap_387_done:
    rx372_cur."!cursor_pos"(rx372_pos)
    find_lex $P388, unicode:"$\x{a2}"
    $P389 = $P388."MATCH"()
    store_lex "$/", $P389
    .const 'Sub' $P391 = "130_1304282264.655" 
    capture_lex $P391
    $P401 = $P391()
  alt382_end:
.annotate 'line', 111
    goto alt381_end
  alt381_1:
.annotate 'line', 116
  # rx subcapture "textq"
    set_addr $I10, rxcap_402_fail
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
  # rx charclass .
    ge rx372_pos, rx372_eos, rx372_fail
    inc rx372_pos
    set_addr $I10, rxcap_402_fail
    ($I12, $I11) = rx372_cur."!mark_peek"($I10)
    rx372_cur."!cursor_pos"($I11)
    ($P10) = rx372_cur."!cursor_start"()
    $P10."!cursor_pass"(rx372_pos, "")
    rx372_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_402_done
  rxcap_402_fail:
    goto rx372_fail
  rxcap_402_done:
  alt381_end:
.annotate 'line', 108
  # rx pass
    rx372_cur."!cursor_pass"(rx372_pos, "quote_escape:sym<misc>")
    if_null rx372_debug, debug_481
    rx372_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx372_pos)
  debug_481:
    .return (rx372_cur)
  rx372_restart:
.annotate 'line', 42
    if_null rx372_debug, debug_482
    rx372_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_482:
  rx372_fail:
    (rx372_rep, rx372_pos, $I10, $P10) = rx372_cur."!mark_fail"(0)
    lt rx372_pos, -1, rx372_done
    eq rx372_pos, -1, rx372_fail
    jump $I10
  rx372_done:
    rx372_cur."!cursor_fail"()
    if_null rx372_debug, debug_483
    rx372_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_483:
    .return (rx372_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("127_1304282264.655") :method
.annotate 'line', 42
    new $P374, "ResizablePMCArray"
    push $P374, ""
    .return ($P374)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block378"  :anon :subid("128_1304282264.655") :outer("126_1304282264.655")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block383"  :anon :subid("129_1304282264.655") :method :outer("126_1304282264.655")
.annotate 'line', 113
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    .local pmc rx385_debug
    (rx385_cur, rx385_pos, rx385_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx385_cur
    .local pmc match
    .lex "$/", match
    length rx385_eos, rx385_tgt
    gt rx385_pos, rx385_eos, rx385_done
    set rx385_off, 0
    lt rx385_pos, 2, rx385_start
    sub rx385_off, rx385_pos, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
    eq $I10, 1, rx385_restart
    if_null rx385_debug, debug_474
    rx385_cur."!cursor_debug"("START", "")
  debug_474:
    $I10 = self.'from'()
    ne $I10, -1, rxscan386_done
    goto rxscan386_scan
  rxscan386_loop:
    (rx385_pos) = rx385_cur."from"()
    inc rx385_pos
    rx385_cur."!cursor_from"(rx385_pos)
    ge rx385_pos, rx385_eos, rxscan386_done
  rxscan386_scan:
    set_addr $I10, rxscan386_loop
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  rxscan386_done:
  # rx charclass W
    ge rx385_pos, rx385_eos, rx385_fail
    sub $I10, rx385_pos, rx385_off
    is_cclass $I11, 8192, rx385_tgt, $I10
    if $I11, rx385_fail
    inc rx385_pos
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "")
    if_null rx385_debug, debug_475
    rx385_cur."!cursor_debug"("PASS", "", " at pos=", rx385_pos)
  debug_475:
    .return (rx385_cur)
  rx385_restart:
    if_null rx385_debug, debug_476
    rx385_cur."!cursor_debug"("NEXT", "")
  debug_476:
  rx385_fail:
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    if_null rx385_debug, debug_477
    rx385_cur."!cursor_debug"("FAIL", "")
  debug_477:
    .return (rx385_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block390"  :anon :subid("130_1304282264.655") :outer("126_1304282264.655")
.annotate 'line', 114
    find_lex $P392, "$/"
    unless_null $P392, vivify_478
    new $P392, "Undef"
  vivify_478:
    $P393 = $P392."CURSOR"()
    new $P394, "String"
    assign $P394, "Unrecognized backslash sequence: '\\"
    find_lex $P395, "$/"
    unless_null $P395, vivify_479
    $P395 = root_new ['parrot';'Hash']
  vivify_479:
    set $P396, $P395["x"]
    unless_null $P396, vivify_480
    new $P396, "Undef"
  vivify_480:
    $S397 = $P396."Str"()
    concat $P398, $P394, $S397
    concat $P399, $P398, "'"
    $P400 = $P393."panic"($P399)
    .return ($P400)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("131_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P404, "ResizablePMCArray"
    push $P404, ""
    .return ($P404)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("132_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .const 'Sub' $P415 = "134_1304282264.655" 
    capture_lex $P415
    .local string rx406_tgt
    .local int rx406_pos
    .local int rx406_off
    .local int rx406_eos
    .local int rx406_rep
    .local pmc rx406_cur
    .local pmc rx406_debug
    (rx406_cur, rx406_pos, rx406_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx406_cur
    .local pmc match
    .lex "$/", match
    length rx406_eos, rx406_tgt
    gt rx406_pos, rx406_eos, rx406_done
    set rx406_off, 0
    lt rx406_pos, 2, rx406_start
    sub rx406_off, rx406_pos, 1
    substr rx406_tgt, rx406_tgt, rx406_off
  rx406_start:
    eq $I10, 1, rx406_restart
    if_null rx406_debug, debug_484
    rx406_cur."!cursor_debug"("START", "charname")
  debug_484:
    $I10 = self.'from'()
    ne $I10, -1, rxscan410_done
    goto rxscan410_scan
  rxscan410_loop:
    (rx406_pos) = rx406_cur."from"()
    inc rx406_pos
    rx406_cur."!cursor_from"(rx406_pos)
    ge rx406_pos, rx406_eos, rxscan410_done
  rxscan410_scan:
    set_addr $I10, rxscan410_loop
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  rxscan410_done:
  alt411_0:
.annotate 'line', 120
    set_addr $I10, alt411_1
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
.annotate 'line', 121
  # rx subrule "integer" subtype=capture negate=
    rx406_cur."!cursor_pos"(rx406_pos)
    $P10 = rx406_cur."integer"()
    unless $P10, rx406_fail
    rx406_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx406_pos = $P10."pos"()
    goto alt411_end
  alt411_1:
.annotate 'line', 122
  # rx enumcharlist negate=0 
    ge rx406_pos, rx406_eos, rx406_fail
    sub $I10, rx406_pos, rx406_off
    substr $S10, rx406_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx406_fail
    inc rx406_pos
  # rx rxquantf412 ** 0..*
    set_addr $I10, rxquantf412_loop
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
    goto rxquantf412_done
  rxquantf412_loop:
  # rx enumcharlist negate=1 
    ge rx406_pos, rx406_eos, rx406_fail
    sub $I10, rx406_pos, rx406_off
    substr $S10, rx406_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx406_fail
    inc rx406_pos
    set_addr $I10, rxquantf412_loop
    rx406_cur."!mark_push"(rx406_rep, rx406_pos, $I10)
  rxquantf412_done:
  # rx enumcharlist negate=0 
    ge rx406_pos, rx406_eos, rx406_fail
    sub $I10, rx406_pos, rx406_off
    substr $S10, rx406_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx406_fail
    inc rx406_pos
.annotate 'line', 123
  # rx subrule "before" subtype=zerowidth negate=
    rx406_cur."!cursor_pos"(rx406_pos)
    .const 'Sub' $P415 = "134_1304282264.655" 
    capture_lex $P415
    $P10 = rx406_cur."before"($P415)
    unless $P10, rx406_fail
  alt411_end:
.annotate 'line', 120
  # rx pass
    rx406_cur."!cursor_pass"(rx406_pos, "charname")
    if_null rx406_debug, debug_489
    rx406_cur."!cursor_debug"("PASS", "charname", " at pos=", rx406_pos)
  debug_489:
    .return (rx406_cur)
  rx406_restart:
.annotate 'line', 42
    if_null rx406_debug, debug_490
    rx406_cur."!cursor_debug"("NEXT", "charname")
  debug_490:
  rx406_fail:
    (rx406_rep, rx406_pos, $I10, $P10) = rx406_cur."!mark_fail"(0)
    lt rx406_pos, -1, rx406_done
    eq rx406_pos, -1, rx406_fail
    jump $I10
  rx406_done:
    rx406_cur."!cursor_fail"()
    if_null rx406_debug, debug_491
    rx406_cur."!cursor_debug"("FAIL", "charname")
  debug_491:
    .return (rx406_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("133_1304282264.655") :method
.annotate 'line', 42
    $P408 = self."!PREFIX__!subrule"("integer", "")
    new $P409, "ResizablePMCArray"
    push $P409, "Z"
    push $P409, "Y"
    push $P409, "X"
    push $P409, "W"
    push $P409, "V"
    push $P409, "U"
    push $P409, "T"
    push $P409, "S"
    push $P409, "R"
    push $P409, "Q"
    push $P409, "P"
    push $P409, "O"
    push $P409, "N"
    push $P409, "M"
    push $P409, "L"
    push $P409, "K"
    push $P409, "J"
    push $P409, "I"
    push $P409, "H"
    push $P409, "G"
    push $P409, "F"
    push $P409, "E"
    push $P409, "D"
    push $P409, "C"
    push $P409, "B"
    push $P409, "A"
    push $P409, "z"
    push $P409, "y"
    push $P409, "x"
    push $P409, "w"
    push $P409, "v"
    push $P409, "u"
    push $P409, "t"
    push $P409, "s"
    push $P409, "r"
    push $P409, "q"
    push $P409, "p"
    push $P409, "o"
    push $P409, "n"
    push $P409, "m"
    push $P409, "l"
    push $P409, "k"
    push $P409, "j"
    push $P409, "i"
    push $P409, "h"
    push $P409, "g"
    push $P409, "f"
    push $P409, "e"
    push $P409, "d"
    push $P409, "c"
    push $P409, "b"
    push $P409, "a"
    push $P409, $P408
    .return ($P409)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block414"  :anon :subid("134_1304282264.655") :method :outer("132_1304282264.655")
.annotate 'line', 123
    .local string rx416_tgt
    .local int rx416_pos
    .local int rx416_off
    .local int rx416_eos
    .local int rx416_rep
    .local pmc rx416_cur
    .local pmc rx416_debug
    (rx416_cur, rx416_pos, rx416_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx416_cur
    .local pmc match
    .lex "$/", match
    length rx416_eos, rx416_tgt
    gt rx416_pos, rx416_eos, rx416_done
    set rx416_off, 0
    lt rx416_pos, 2, rx416_start
    sub rx416_off, rx416_pos, 1
    substr rx416_tgt, rx416_tgt, rx416_off
  rx416_start:
    eq $I10, 1, rx416_restart
    if_null rx416_debug, debug_485
    rx416_cur."!cursor_debug"("START", "")
  debug_485:
    $I10 = self.'from'()
    ne $I10, -1, rxscan417_done
    goto rxscan417_scan
  rxscan417_loop:
    (rx416_pos) = rx416_cur."from"()
    inc rx416_pos
    rx416_cur."!cursor_from"(rx416_pos)
    ge rx416_pos, rx416_eos, rxscan417_done
  rxscan417_scan:
    set_addr $I10, rxscan417_loop
    rx416_cur."!mark_push"(0, rx416_pos, $I10)
  rxscan417_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx416_pos, rx416_off
    find_not_cclass $I11, 32, rx416_tgt, $I10, rx416_eos
    add rx416_pos, rx416_off, $I11
  # rx enumcharlist negate=0 
    ge rx416_pos, rx416_eos, rx416_fail
    sub $I10, rx416_pos, rx416_off
    substr $S10, rx416_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx416_fail
    inc rx416_pos
  # rx pass
    rx416_cur."!cursor_pass"(rx416_pos, "")
    if_null rx416_debug, debug_486
    rx416_cur."!cursor_debug"("PASS", "", " at pos=", rx416_pos)
  debug_486:
    .return (rx416_cur)
  rx416_restart:
    if_null rx416_debug, debug_487
    rx416_cur."!cursor_debug"("NEXT", "")
  debug_487:
  rx416_fail:
    (rx416_rep, rx416_pos, $I10, $P10) = rx416_cur."!mark_fail"(0)
    lt rx416_pos, -1, rx416_done
    eq rx416_pos, -1, rx416_fail
    jump $I10
  rx416_done:
    rx416_cur."!cursor_fail"()
    if_null rx416_debug, debug_488
    rx416_cur."!cursor_debug"("FAIL", "")
  debug_488:
    .return (rx416_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("135_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    $P419 = self."!PREFIX__!subrule"("integer", "")
    new $P420, "ResizablePMCArray"
    push $P420, "Z"
    push $P420, "Y"
    push $P420, "X"
    push $P420, "W"
    push $P420, "V"
    push $P420, "U"
    push $P420, "T"
    push $P420, "S"
    push $P420, "R"
    push $P420, "Q"
    push $P420, "P"
    push $P420, "O"
    push $P420, "N"
    push $P420, "M"
    push $P420, "L"
    push $P420, "K"
    push $P420, "J"
    push $P420, "I"
    push $P420, "H"
    push $P420, "G"
    push $P420, "F"
    push $P420, "E"
    push $P420, "D"
    push $P420, "C"
    push $P420, "B"
    push $P420, "A"
    push $P420, "z"
    push $P420, "y"
    push $P420, "x"
    push $P420, "w"
    push $P420, "v"
    push $P420, "u"
    push $P420, "t"
    push $P420, "s"
    push $P420, "r"
    push $P420, "q"
    push $P420, "p"
    push $P420, "o"
    push $P420, "n"
    push $P420, "m"
    push $P420, "l"
    push $P420, "k"
    push $P420, "j"
    push $P420, "i"
    push $P420, "h"
    push $P420, "g"
    push $P420, "f"
    push $P420, "e"
    push $P420, "d"
    push $P420, "c"
    push $P420, "b"
    push $P420, "a"
    push $P420, $P419
    .return ($P420)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("136_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx422_tgt
    .local int rx422_pos
    .local int rx422_off
    .local int rx422_eos
    .local int rx422_rep
    .local pmc rx422_cur
    .local pmc rx422_debug
    (rx422_cur, rx422_pos, rx422_tgt, $I10) = self."!cursor_start"()
    rx422_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx422_cur
    .local pmc match
    .lex "$/", match
    length rx422_eos, rx422_tgt
    gt rx422_pos, rx422_eos, rx422_done
    set rx422_off, 0
    lt rx422_pos, 2, rx422_start
    sub rx422_off, rx422_pos, 1
    substr rx422_tgt, rx422_tgt, rx422_off
  rx422_start:
    eq $I10, 1, rx422_restart
    if_null rx422_debug, debug_492
    rx422_cur."!cursor_debug"("START", "charnames")
  debug_492:
    $I10 = self.'from'()
    ne $I10, -1, rxscan425_done
    goto rxscan425_scan
  rxscan425_loop:
    (rx422_pos) = rx422_cur."from"()
    inc rx422_pos
    rx422_cur."!cursor_from"(rx422_pos)
    ge rx422_pos, rx422_eos, rxscan425_done
  rxscan425_scan:
    set_addr $I10, rxscan425_loop
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  rxscan425_done:
.annotate 'line', 125
  # rx rxquantr426 ** 1..*
    set_addr $I10, rxquantr426_done
    rx422_cur."!mark_push"(0, -1, $I10)
  rxquantr426_loop:
  # rx subrule "ws" subtype=method negate=
    rx422_cur."!cursor_pos"(rx422_pos)
    $P10 = rx422_cur."ws"()
    unless $P10, rx422_fail
    rx422_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx422_cur."!cursor_pos"(rx422_pos)
    $P10 = rx422_cur."charname"()
    unless $P10, rx422_fail
    rx422_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx422_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx422_cur."!cursor_pos"(rx422_pos)
    $P10 = rx422_cur."ws"()
    unless $P10, rx422_fail
    rx422_pos = $P10."pos"()
    set_addr $I10, rxquantr426_done
    (rx422_rep) = rx422_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr426_done
    rx422_cur."!mark_push"(rx422_rep, rx422_pos, $I10)
  # rx literal  ","
    add $I11, rx422_pos, 1
    gt $I11, rx422_eos, rx422_fail
    sub $I11, rx422_pos, rx422_off
    ord $I11, rx422_tgt, $I11
    ne $I11, 44, rx422_fail
    add rx422_pos, 1
    goto rxquantr426_loop
  rxquantr426_done:
  # rx pass
    rx422_cur."!cursor_pass"(rx422_pos, "charnames")
    if_null rx422_debug, debug_493
    rx422_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx422_pos)
  debug_493:
    .return (rx422_cur)
  rx422_restart:
.annotate 'line', 42
    if_null rx422_debug, debug_494
    rx422_cur."!cursor_debug"("NEXT", "charnames")
  debug_494:
  rx422_fail:
    (rx422_rep, rx422_pos, $I10, $P10) = rx422_cur."!mark_fail"(0)
    lt rx422_pos, -1, rx422_done
    eq rx422_pos, -1, rx422_fail
    jump $I10
  rx422_done:
    rx422_cur."!cursor_fail"()
    if_null rx422_debug, debug_495
    rx422_cur."!cursor_debug"("FAIL", "charnames")
  debug_495:
    .return (rx422_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("137_1304282264.655") :method
.annotate 'line', 42
    new $P424, "ResizablePMCArray"
    push $P424, ""
    .return ($P424)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("138_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    new $P428, "ResizablePMCArray"
    push $P428, ""
    .return ($P428)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("139_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    .local pmc rx430_debug
    (rx430_cur, rx430_pos, rx430_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx430_cur
    .local pmc match
    .lex "$/", match
    length rx430_eos, rx430_tgt
    gt rx430_pos, rx430_eos, rx430_done
    set rx430_off, 0
    lt rx430_pos, 2, rx430_start
    sub rx430_off, rx430_pos, 1
    substr rx430_tgt, rx430_tgt, rx430_off
  rx430_start:
    eq $I10, 1, rx430_restart
    if_null rx430_debug, debug_496
    rx430_cur."!cursor_debug"("START", "charspec")
  debug_496:
    $I10 = self.'from'()
    ne $I10, -1, rxscan435_done
    goto rxscan435_scan
  rxscan435_loop:
    (rx430_pos) = rx430_cur."from"()
    inc rx430_pos
    rx430_cur."!cursor_from"(rx430_pos)
    ge rx430_pos, rx430_eos, rxscan435_done
  rxscan435_scan:
    set_addr $I10, rxscan435_loop
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxscan435_done:
  alt436_0:
.annotate 'line', 127
    set_addr $I10, alt436_1
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
.annotate 'line', 128
  # rx literal  "["
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    ord $I11, rx430_tgt, $I11
    ne $I11, 91, rx430_fail
    add rx430_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    $P10 = rx430_cur."charnames"()
    unless $P10, rx430_fail
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx430_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    ord $I11, rx430_tgt, $I11
    ne $I11, 93, rx430_fail
    add rx430_pos, 1
    goto alt436_end
  alt436_1:
    set_addr $I10, alt436_2
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
.annotate 'line', 129
  # rx charclass_q d r 1..-1
    sub $I10, rx430_pos, rx430_off
    find_not_cclass $I11, 8, rx430_tgt, $I10, rx430_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx430_fail
    add rx430_pos, rx430_off, $I11
  # rx rxquantr437 ** 0..*
    set_addr $I10, rxquantr437_done
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxquantr437_loop:
  # rx literal  "_"
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    ord $I11, rx430_tgt, $I11
    ne $I11, 95, rx430_fail
    add rx430_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx430_pos, rx430_off
    find_not_cclass $I11, 8, rx430_tgt, $I10, rx430_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx430_fail
    add rx430_pos, rx430_off, $I11
    set_addr $I10, rxquantr437_done
    (rx430_rep) = rx430_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr437_done
    rx430_cur."!mark_push"(rx430_rep, rx430_pos, $I10)
    goto rxquantr437_loop
  rxquantr437_done:
    goto alt436_end
  alt436_2:
    set_addr $I10, alt436_3
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
.annotate 'line', 130
  # rx enumcharlist negate=0 
    ge rx430_pos, rx430_eos, rx430_fail
    sub $I10, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx430_fail
    inc rx430_pos
    goto alt436_end
  alt436_3:
.annotate 'line', 131
  # rx subrule "panic" subtype=method negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    $P10 = rx430_cur."panic"("Unrecognized \\c character")
    unless $P10, rx430_fail
    rx430_pos = $P10."pos"()
  alt436_end:
.annotate 'line', 126
  # rx pass
    rx430_cur."!cursor_pass"(rx430_pos, "charspec")
    if_null rx430_debug, debug_497
    rx430_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx430_pos)
  debug_497:
    .return (rx430_cur)
  rx430_restart:
.annotate 'line', 42
    if_null rx430_debug, debug_498
    rx430_cur."!cursor_debug"("NEXT", "charspec")
  debug_498:
  rx430_fail:
    (rx430_rep, rx430_pos, $I10, $P10) = rx430_cur."!mark_fail"(0)
    lt rx430_pos, -1, rx430_done
    eq rx430_pos, -1, rx430_fail
    jump $I10
  rx430_done:
    rx430_cur."!cursor_fail"()
    if_null rx430_debug, debug_499
    rx430_cur."!cursor_debug"("FAIL", "charspec")
  debug_499:
    .return (rx430_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("140_1304282264.655") :method
.annotate 'line', 42
    $P432 = self."!PREFIX__!subrule"("panic", "")
    $P433 = self."!PREFIX__!subrule"("charnames", "[")
    new $P434, "ResizablePMCArray"
    push $P434, $P432
    push $P434, "Z"
    push $P434, "Y"
    push $P434, "X"
    push $P434, "W"
    push $P434, "V"
    push $P434, "U"
    push $P434, "T"
    push $P434, "S"
    push $P434, "R"
    push $P434, "Q"
    push $P434, "P"
    push $P434, "O"
    push $P434, "N"
    push $P434, "M"
    push $P434, "L"
    push $P434, "K"
    push $P434, "J"
    push $P434, "I"
    push $P434, "H"
    push $P434, "G"
    push $P434, "F"
    push $P434, "E"
    push $P434, "D"
    push $P434, "C"
    push $P434, "B"
    push $P434, "A"
    push $P434, "@"
    push $P434, "?"
    push $P434, ""
    push $P434, $P433
    .return ($P434)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("141_1304282264.655") :method :outer("11_1304282264.655")
.annotate 'line', 42
    $P439 = self."!PREFIX__!subrule"("panic", "")
    $P440 = self."!PREFIX__!subrule"("charnames", "[")
    new $P441, "ResizablePMCArray"
    push $P441, $P439
    push $P441, "?"
    push $P441, "@"
    push $P441, "A"
    push $P441, "B"
    push $P441, "C"
    push $P441, "D"
    push $P441, "E"
    push $P441, "F"
    push $P441, "G"
    push $P441, "H"
    push $P441, "I"
    push $P441, "J"
    push $P441, "K"
    push $P441, "L"
    push $P441, "M"
    push $P441, "N"
    push $P441, "O"
    push $P441, "P"
    push $P441, "Q"
    push $P441, "R"
    push $P441, "S"
    push $P441, "T"
    push $P441, "U"
    push $P441, "V"
    push $P441, "W"
    push $P441, "X"
    push $P441, "Y"
    push $P441, "Z"
    push $P441, ""
    push $P441, $P440
    .return ($P441)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("142_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_443
    .param pmc param_444
    .param pmc param_445 :optional
    .param int has_param_445 :opt_flag
.annotate 'line', 177
    .lex "self", param_443
    .lex "$spec", param_444
    if has_param_445, optparam_500
    new $P446, "Undef"
    set param_445, $P446
  optparam_500:
    .lex "$save", param_445
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
.sub "panic"  :subid("143_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_448
    .param pmc param_449 :slurpy
.annotate 'line', 325
    .lex "self", param_448
    .lex "@args", param_449
.annotate 'line', 326
    new $P450, "Undef"
    .lex "$pos", $P450
.annotate 'line', 327
    new $P451, "Undef"
    .lex "$target", $P451
.annotate 'line', 326
    find_lex $P452, "self"
    $P453 = $P452."pos"()
    store_lex "$pos", $P453
.annotate 'line', 327
    find_lex $P454, "self"
    get_hll_global $P455, "GLOBAL"
    nqp_get_package_through_who $P456, $P455, "Regex"
    get_who $P457, $P456
    set $P458, $P457["Cursor"]
    getattribute $P459, $P454, $P458, "$!target"
    store_lex "$target", $P459
.annotate 'line', 328
    find_lex $P460, "@args"
    unless_null $P460, vivify_501
    $P460 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    $P460."push"(" at line ")
.annotate 'line', 329
    find_lex $P461, "@args"
    unless_null $P461, vivify_502
    $P461 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    get_hll_global $P462, "GLOBAL"
    nqp_get_package_through_who $P463, $P462, "HLL"
    get_who $P464, $P463
    set $P465, $P464["Compiler"]
    find_lex $P466, "$target"
    unless_null $P466, vivify_503
    new $P466, "Undef"
  vivify_503:
    find_lex $P467, "$pos"
    unless_null $P467, vivify_504
    new $P467, "Undef"
  vivify_504:
    $P468 = $P465."lineof"($P466, $P467)
    add $P469, $P468, 1
    $P461."push"($P469)
.annotate 'line', 330
    find_lex $P470, "@args"
    unless_null $P470, vivify_505
    $P470 = root_new ['parrot';'ResizablePMCArray']
  vivify_505:
    $P470."push"(", near \"")
.annotate 'line', 331
    find_lex $P471, "@args"
    unless_null $P471, vivify_506
    $P471 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
    find_lex $P472, "$target"
    unless_null $P472, vivify_507
    new $P472, "Undef"
  vivify_507:
    set $S473, $P472
    find_lex $P474, "$pos"
    unless_null $P474, vivify_508
    new $P474, "Undef"
  vivify_508:
    set $I475, $P474
    substr $S476, $S473, $I475, 10
    escape $S477, $S476
    $P471."push"($S477)
.annotate 'line', 332
    find_lex $P478, "@args"
    unless_null $P478, vivify_509
    $P478 = root_new ['parrot';'ResizablePMCArray']
  vivify_509:
    $P478."push"("\"")
.annotate 'line', 333
    find_lex $P479, "@args"
    unless_null $P479, vivify_510
    $P479 = root_new ['parrot';'ResizablePMCArray']
  vivify_510:
    join $S480, "", $P479
    die $S480
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("144_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_482
    .param pmc param_483
    .param pmc param_484
.annotate 'line', 346
    .lex "self", param_482
    .lex "$target", param_483
    .lex "$pos", param_484
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
.sub "quote_EXPR"  :subid("145_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_486
    .param pmc param_487 :slurpy
.annotate 'line', 408
    .lex "self", param_486
    .lex "@args", param_487
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
.sub "quotemod_check"  :subid("146_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_489
    .param pmc param_490
.annotate 'line', 479
    .lex "self", param_489
    .lex "$mod", param_490
    find_lex $P491, "$mod"
    unless_null $P491, vivify_511
    new $P491, "Undef"
  vivify_511:
    find_dynamic_lex $P494, "%*QUOTEMOD"
    unless_null $P494, vivify_512
    get_hll_global $P492, "GLOBAL"
    get_who $P493, $P492
    set $P494, $P493["%QUOTEMOD"]
    unless_null $P494, vivify_513
    die "Contextual %*QUOTEMOD not found"
  vivify_513:
  vivify_512:
    set $P495, $P494[$P491]
    unless_null $P495, vivify_514
    new $P495, "Undef"
  vivify_514:
    .return ($P495)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("147_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_497
.annotate 'line', 483
    .lex "self", param_497
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
.sub "stopper"  :subid("148_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_499
.annotate 'line', 506
    .lex "self", param_499
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
.sub "split_words"  :subid("149_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_501
    .param pmc param_502
.annotate 'line', 529
    .lex "self", param_501
    .lex "$words", param_502
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
.sub "EXPR"  :subid("150_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_504
    .param pmc param_505 :optional
    .param int has_param_505 :opt_flag
.annotate 'line', 561
    .lex "self", param_504
    if has_param_505, optparam_515
    new $P506, "String"
    assign $P506, ""
    set param_505, $P506
  optparam_515:
    .lex "$preclim", param_505
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
.sub "EXPR_reduce"  :subid("151_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_508
    .param pmc param_509
    .param pmc param_510
.annotate 'line', 739
    .lex "self", param_508
    .lex "$termstack", param_509
    .lex "$opstack", param_510
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
.sub "ternary"  :subid("152_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_512
    .param pmc param_513
.annotate 'line', 811
    .lex "self", param_512
    .lex "$match", param_513
.annotate 'line', 812
    find_lex $P514, "$match"
    unless_null $P514, vivify_516
    $P514 = root_new ['parrot';'ResizablePMCArray']
  vivify_516:
    set $P515, $P514[1]
    unless_null $P515, vivify_517
    new $P515, "Undef"
  vivify_517:
    find_lex $P516, "$match"
    unless_null $P516, vivify_518
    $P516 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P516
  vivify_518:
    set $P516[2], $P515
.annotate 'line', 813
    find_lex $P517, "$match"
    unless_null $P517, vivify_519
    $P517 = root_new ['parrot';'Hash']
  vivify_519:
    set $P518, $P517["infix"]
    unless_null $P518, vivify_520
    $P518 = root_new ['parrot';'Hash']
  vivify_520:
    set $P519, $P518["EXPR"]
    unless_null $P519, vivify_521
    new $P519, "Undef"
  vivify_521:
    find_lex $P520, "$match"
    unless_null $P520, vivify_522
    $P520 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P520
  vivify_522:
    set $P520[1], $P519
.annotate 'line', 811
    .return ($P519)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("153_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_522
    .param pmc param_523
.annotate 'line', 816
    .lex "self", param_522
    .lex "$markname", param_523
.annotate 'line', 817
    new $P524, "Undef"
    .lex "$pos", $P524
.annotate 'line', 819
    $P525 = root_new ['parrot';'Hash']
    .lex "%markhash", $P525
.annotate 'line', 817
    find_lex $P526, "self"
    $P527 = $P526."pos"()
    store_lex "$pos", $P527
.annotate 'line', 818
    find_lex $P528, "self"
    find_lex $P529, "$markname"
    unless_null $P529, vivify_523
    new $P529, "Undef"
  vivify_523:
    find_lex $P530, "$pos"
    unless_null $P530, vivify_524
    new $P530, "Undef"
  vivify_524:
    $P528."!cursor_debug"("START", "MARKER name=", $P529, ", pos=", $P530)
.annotate 'line', 819

            $P531 = get_global '%!MARKHASH'
            unless null $P531 goto have_markhash
            $P531 = new ['Hash']
            set_global '%!MARKHASH', $P531
          have_markhash:
        
    store_lex "%markhash", $P531
.annotate 'line', 826
    find_lex $P532, "$pos"
    unless_null $P532, vivify_525
    new $P532, "Undef"
  vivify_525:
    find_lex $P533, "$markname"
    unless_null $P533, vivify_526
    new $P533, "Undef"
  vivify_526:
    find_lex $P534, "%markhash"
    unless_null $P534, vivify_527
    $P534 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P534
  vivify_527:
    set $P534[$P533], $P532
.annotate 'line', 827
    find_lex $P535, "self"
    $P535."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("154_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_537
    .param pmc param_538
.annotate 'line', 831
    .lex "self", param_537
    .lex "$markname", param_538
.annotate 'line', 832
    find_lex $P539, "self"
    find_lex $P540, "$markname"
    unless_null $P540, vivify_528
    new $P540, "Undef"
  vivify_528:
    $P539."!cursor_debug"("START", "MARKED name=", $P540)
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
.sub "LANG"  :subid("155_1304282264.655") :outer("11_1304282264.655")
    .param pmc param_542
    .param pmc param_543
    .param pmc param_544
.annotate 'line', 851
    .lex "self", param_542
    .lex "$lang", param_543
    .lex "$regex", param_544
.annotate 'line', 852
    new $P545, "Undef"
    .lex "$lang_cursor", $P545
.annotate 'line', 853
    new $P546, "Undef"
    .lex "$*ACTIONS", $P546
.annotate 'line', 854
    new $P547, "Undef"
    .lex "$cur", $P547
.annotate 'line', 852
    find_lex $P548, "$lang"
    unless_null $P548, vivify_529
    new $P548, "Undef"
  vivify_529:
    find_dynamic_lex $P551, "%*LANG"
    unless_null $P551, vivify_530
    get_hll_global $P549, "GLOBAL"
    get_who $P550, $P549
    set $P551, $P550["%LANG"]
    unless_null $P551, vivify_531
    die "Contextual %*LANG not found"
  vivify_531:
  vivify_530:
    set $P552, $P551[$P548]
    unless_null $P552, vivify_532
    new $P552, "Undef"
  vivify_532:
    store_lex "$lang_cursor", $P552
.annotate 'line', 853
    find_lex $P553, "$lang"
    unless_null $P553, vivify_533
    new $P553, "Undef"
  vivify_533:
    concat $P554, $P553, "-actions"
    find_dynamic_lex $P557, "%*LANG"
    unless_null $P557, vivify_534
    get_hll_global $P555, "GLOBAL"
    get_who $P556, $P555
    set $P557, $P556["%LANG"]
    unless_null $P557, vivify_535
    die "Contextual %*LANG not found"
  vivify_535:
  vivify_534:
    set $P558, $P557[$P554]
    unless_null $P558, vivify_536
    new $P558, "Undef"
  vivify_536:
    store_lex "$*ACTIONS", $P558
.annotate 'line', 854

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P559, pos) = self.'!cursor_start'($P0)
            $P559.'!cursor_pos'(pos)
        
    store_lex "$cur", $P559
.annotate 'line', 862
    find_lex $P560, "$cur"
    unless_null $P560, vivify_537
    new $P560, "Undef"
  vivify_537:
    find_lex $P561, "$regex"
    unless_null $P561, vivify_538
    new $P561, "Undef"
  vivify_538:
    set $S562, $P561
    $P563 = $P560.$S562()
.annotate 'line', 851
    .return ($P563)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block570"  :subid("157_1304282264.655") :outer("10_1304282264.655")
.annotate 'line', 867
    .const 'Sub' $P1256 = "203_1304282264.655" 
    capture_lex $P1256
    .const 'Sub' $P1239 = "202_1304282264.655" 
    capture_lex $P1239
    .const 'Sub' $P1216 = "200_1304282264.655" 
    capture_lex $P1216
    .const 'Sub' $P1188 = "199_1304282264.655" 
    capture_lex $P1188
    .const 'Sub' $P1171 = "198_1304282264.655" 
    capture_lex $P1171
    .const 'Sub' $P1166 = "197_1304282264.655" 
    capture_lex $P1166
    .const 'Sub' $P1158 = "196_1304282264.655" 
    capture_lex $P1158
    .const 'Sub' $P1143 = "195_1304282264.655" 
    capture_lex $P1143
    .const 'Sub' $P1128 = "194_1304282264.655" 
    capture_lex $P1128
    .const 'Sub' $P1123 = "193_1304282264.655" 
    capture_lex $P1123
    .const 'Sub' $P1118 = "192_1304282264.655" 
    capture_lex $P1118
    .const 'Sub' $P1113 = "191_1304282264.655" 
    capture_lex $P1113
    .const 'Sub' $P1108 = "190_1304282264.655" 
    capture_lex $P1108
    .const 'Sub' $P1103 = "189_1304282264.655" 
    capture_lex $P1103
    .const 'Sub' $P1098 = "188_1304282264.655" 
    capture_lex $P1098
    .const 'Sub' $P1090 = "187_1304282264.655" 
    capture_lex $P1090
    .const 'Sub' $P1085 = "186_1304282264.655" 
    capture_lex $P1085
    .const 'Sub' $P1071 = "185_1304282264.655" 
    capture_lex $P1071
    .const 'Sub' $P989 = "183_1304282264.655" 
    capture_lex $P989
    .const 'Sub' $P912 = "180_1304282264.655" 
    capture_lex $P912
    .const 'Sub' $P905 = "179_1304282264.655" 
    capture_lex $P905
    .const 'Sub' $P898 = "178_1304282264.655" 
    capture_lex $P898
    .const 'Sub' $P891 = "177_1304282264.655" 
    capture_lex $P891
    .const 'Sub' $P884 = "176_1304282264.655" 
    capture_lex $P884
    .const 'Sub' $P877 = "175_1304282264.655" 
    capture_lex $P877
    .const 'Sub' $P869 = "174_1304282264.655" 
    capture_lex $P869
    .const 'Sub' $P861 = "173_1304282264.655" 
    capture_lex $P861
    .const 'Sub' $P855 = "172_1304282264.655" 
    capture_lex $P855
    .const 'Sub' $P847 = "171_1304282264.655" 
    capture_lex $P847
    .const 'Sub' $P839 = "170_1304282264.655" 
    capture_lex $P839
    .const 'Sub' $P731 = "167_1304282264.655" 
    capture_lex $P731
    .const 'Sub' $P691 = "164_1304282264.655" 
    capture_lex $P691
    .const 'Sub' $P683 = "163_1304282264.655" 
    capture_lex $P683
    .const 'Sub' $P644 = "160_1304282264.655" 
    capture_lex $P644
    .const 'Sub' $P572 = "158_1304282264.655" 
    capture_lex $P572
.annotate 'line', 868
    .const 'Sub' $P572 = "158_1304282264.655" 
    newclosure $P640, $P572
    .lex "string_to_int", $P640
.annotate 'line', 867
    find_lex $P641, "string_to_int"
    find_lex $P642, "$?PACKAGE"
    get_who $P643, $P642
    set $P643["string_to_int"], $P641
.annotate 'line', 887
    .const 'Sub' $P644 = "160_1304282264.655" 
    newclosure $P675, $P644
    .lex "ints_to_string", $P675
.annotate 'line', 867
    find_lex $P676, "ints_to_string"
    find_lex $P677, "$?PACKAGE"
    get_who $P678, $P677
    set $P678["ints_to_string"], $P676
    .lex "$?PACKAGE", $P679
    .lex "$?CLASS", $P680
    find_lex $P681, "string_to_int"
    find_lex $P682, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1239 = "202_1304282264.655" 
    newclosure $P1254, $P1239
.annotate 'line', 867
    .return ($P1254)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post539") :outer("157_1304282264.655")
.annotate 'line', 867
    .const 'Sub' $P571 = "157_1304282264.655" 
    .local pmc block
    set block, $P571
    .const 'Sub' $P1256 = "203_1304282264.655" 
    capture_lex $P1256
    $P1256()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1255"  :anon :subid("203_1304282264.655") :outer("157_1304282264.655")
.annotate 'line', 867
    nqp_get_sc_object $P1257, "1304282255.673", 105
    .local pmc type_obj
    set type_obj, $P1257
    get_how $P1258, type_obj
    $P1259 = $P1258."compose"(type_obj)
    .return ($P1259)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("158_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_573
    .param pmc param_574
.annotate 'line', 868
    .const 'Sub' $P590 = "159_1304282264.655" 
    capture_lex $P590
    .lex "$src", param_573
    .lex "$base", param_574
.annotate 'line', 869
    new $P575, "Undef"
    .lex "$len", $P575
.annotate 'line', 870
    new $P576, "Undef"
    .lex "$i", $P576
.annotate 'line', 871
    new $P577, "Undef"
    .lex "$result", $P577
.annotate 'line', 869
    find_lex $P578, "$src"
    unless_null $P578, vivify_540
    new $P578, "Undef"
  vivify_540:
    set $S579, $P578
    length $I580, $S579
    new $P581, 'Integer'
    set $P581, $I580
    store_lex "$len", $P581
.annotate 'line', 870
    new $P582, "Integer"
    assign $P582, 0
    store_lex "$i", $P582
.annotate 'line', 871
    new $P583, "Integer"
    assign $P583, 0
    store_lex "$result", $P583
.annotate 'line', 873
    new $P637, 'ExceptionHandler'
    set_label $P637, loop636_handler
    $P637."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P637
  loop636_test:
    find_lex $P584, "$i"
    unless_null $P584, vivify_541
    new $P584, "Undef"
  vivify_541:
    set $N585, $P584
    find_lex $P586, "$len"
    unless_null $P586, vivify_542
    new $P586, "Undef"
  vivify_542:
    set $N587, $P586
    islt $I588, $N585, $N587
    unless $I588, loop636_done
  loop636_redo:
    .const 'Sub' $P590 = "159_1304282264.655" 
    capture_lex $P590
    $P590()
  loop636_next:
    goto loop636_test
  loop636_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P638, exception, 'type'
    eq $P638, .CONTROL_LOOP_NEXT, loop636_next
    eq $P638, .CONTROL_LOOP_REDO, loop636_redo
  loop636_done:
    pop_eh 
    find_lex $P639, "$result"
    unless_null $P639, vivify_557
    new $P639, "Undef"
  vivify_557:
.annotate 'line', 868
    .return ($P639)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block589"  :anon :subid("159_1304282264.655") :outer("158_1304282264.655")
.annotate 'line', 874
    new $P591, "Undef"
    .lex "$char", $P591
.annotate 'line', 876
    new $P592, "Undef"
    .lex "$digitval", $P592
.annotate 'line', 874
    find_lex $P593, "$src"
    unless_null $P593, vivify_543
    new $P593, "Undef"
  vivify_543:
    set $S594, $P593
    find_lex $P595, "$i"
    unless_null $P595, vivify_544
    new $P595, "Undef"
  vivify_544:
    set $I596, $P595
    substr $S597, $S594, $I596, 1
    new $P598, 'String'
    set $P598, $S597
    store_lex "$char", $P598
.annotate 'line', 875
    find_lex $P600, "$char"
    unless_null $P600, vivify_545
    new $P600, "Undef"
  vivify_545:
    set $S601, $P600
    iseq $I602, $S601, "_"
    unless $I602, if_599_end
    set $I603, .CONTROL_LOOP_NEXT
    die 0, $I603
  if_599_end:
.annotate 'line', 876
    find_lex $P604, "$char"
    unless_null $P604, vivify_546
    new $P604, "Undef"
  vivify_546:
    set $S605, $P604
    index $I606, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S605
    new $P607, 'Integer'
    set $P607, $I606
    store_lex "$digitval", $P607
.annotate 'line', 877
    find_lex $P608, "$digitval"
    unless_null $P608, vivify_547
    new $P608, "Undef"
  vivify_547:
    div $P609, $P608, 2
    set $I610, $P609
    new $P611, 'Integer'
    set $P611, $I610
    store_lex "$digitval", $P611
.annotate 'line', 878
    find_lex $P615, "$digitval"
    unless_null $P615, vivify_548
    new $P615, "Undef"
  vivify_548:
    set $N616, $P615
    islt $I617, $N616, 0.0
    unless $I617, unless_614
    new $P613, 'Integer'
    set $P613, $I617
    goto unless_614_end
  unless_614:
    find_lex $P618, "$digitval"
    unless_null $P618, vivify_549
    new $P618, "Undef"
  vivify_549:
    set $N619, $P618
    find_lex $P620, "$base"
    unless_null $P620, vivify_550
    new $P620, "Undef"
  vivify_550:
    set $N621, $P620
    isge $I622, $N619, $N621
    new $P613, 'Integer'
    set $P613, $I622
  unless_614_end:
    unless $P613, if_612_end
.annotate 'line', 879
    find_lex $P623, "$src"
    unless_null $P623, vivify_551
    new $P623, "Undef"
  vivify_551:
    new $P624, 'String'
    set $P624, "Invalid radix conversion of character '"
    find_lex $P625, "$char"
    unless_null $P625, vivify_552
    new $P625, "Undef"
  vivify_552:
    concat $P626, $P624, $P625
    concat $P627, $P626, "'"
    $P623."panic"($P627)
  if_612_end:
.annotate 'line', 881
    find_lex $P628, "$base"
    unless_null $P628, vivify_553
    new $P628, "Undef"
  vivify_553:
    find_lex $P629, "$result"
    unless_null $P629, vivify_554
    new $P629, "Undef"
  vivify_554:
    mul $P630, $P628, $P629
    find_lex $P631, "$digitval"
    unless_null $P631, vivify_555
    new $P631, "Undef"
  vivify_555:
    add $P632, $P630, $P631
    store_lex "$result", $P632
.annotate 'line', 882
    find_lex $P633, "$i"
    unless_null $P633, vivify_556
    new $P633, "Undef"
  vivify_556:
    add $P634, $P633, 1
    store_lex "$i", $P634
    new $P635, "ResizablePMCArray"
    push $P635, $P632
    push $P635, $P634
.annotate 'line', 873
    .return ($P635)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("160_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_645
.annotate 'line', 887
    .const 'Sub' $P651 = "161_1304282264.655" 
    capture_lex $P651
    .lex "$ints", param_645
.annotate 'line', 888
    find_lex $P648, "$ints"
    unless_null $P648, vivify_558
    new $P648, "Undef"
  vivify_558:
    does $I649, $P648, "array"
    if $I649, if_647
.annotate 'line', 895
    find_lex $P671, "$ints"
    unless_null $P671, vivify_559
    new $P671, "Undef"
  vivify_559:
    $I672 = $P671."ast"()
    chr $S673, $I672
    new $P674, 'String'
    set $P674, $S673
.annotate 'line', 894
    set $P646, $P674
.annotate 'line', 888
    goto if_647_end
  if_647:
    .const 'Sub' $P651 = "161_1304282264.655" 
    capture_lex $P651
    $P670 = $P651()
    set $P646, $P670
  if_647_end:
.annotate 'line', 887
    .return ($P646)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block650"  :anon :subid("161_1304282264.655") :outer("160_1304282264.655")
.annotate 'line', 888
    .const 'Sub' $P659 = "162_1304282264.655" 
    capture_lex $P659
.annotate 'line', 889
    new $P652, "Undef"
    .lex "$result", $P652
    new $P653, "String"
    assign $P653, ""
    store_lex "$result", $P653
.annotate 'line', 890
    find_lex $P655, "$ints"
    unless_null $P655, vivify_560
    new $P655, "Undef"
  vivify_560:
    defined $I656, $P655
    unless $I656, for_undef_561
    iter $P654, $P655
    new $P667, 'ExceptionHandler'
    set_label $P667, loop666_handler
    $P667."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P667
  loop666_test:
    unless $P654, loop666_done
    shift $P657, $P654
  loop666_redo:
    .const 'Sub' $P659 = "162_1304282264.655" 
    capture_lex $P659
    $P659($P657)
  loop666_next:
    goto loop666_test
  loop666_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P668, exception, 'type'
    eq $P668, .CONTROL_LOOP_NEXT, loop666_next
    eq $P668, .CONTROL_LOOP_REDO, loop666_redo
  loop666_done:
    pop_eh 
  for_undef_561:
    find_lex $P669, "$result"
    unless_null $P669, vivify_564
    new $P669, "Undef"
  vivify_564:
.annotate 'line', 888
    .return ($P669)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block658"  :anon :subid("162_1304282264.655") :outer("161_1304282264.655")
    .param pmc param_660
.annotate 'line', 890
    .lex "$_", param_660
.annotate 'line', 891
    find_lex $P661, "$result"
    unless_null $P661, vivify_562
    new $P661, "Undef"
  vivify_562:
    find_lex $P662, "$_"
    unless_null $P662, vivify_563
    new $P662, "Undef"
  vivify_563:
    $I663 = $P662."ast"()
    chr $S664, $I663
    concat $P665, $P661, $S664
    store_lex "$result", $P665
.annotate 'line', 890
    .return ($P665)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("163_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_684
.annotate 'line', 900
    .lex "self", param_684
.annotate 'line', 901
    get_hll_global $P685, "GLOBAL"
    nqp_get_package_through_who $P686, $P685, "PAST"
    get_who $P687, $P686
    set $P688, $P687["Op"]
.annotate 'line', 907
    new $P689, "ResizablePMCArray"
    push $P689, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P689, "    if null $P0 goto ctxsave_done"
    push $P689, "    $I0 = can $P0, \"ctxsave\""
    push $P689, "    unless $I0 goto ctxsave_done"
    push $P689, "    $P0.\"ctxsave\"()"
    push $P689, "  ctxsave_done:"
    $P690 = $P688."new"($P689 :named("inline"))
.annotate 'line', 900
    .return ($P690)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("164_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_692
    .param pmc param_693
.annotate 'line', 914
    .const 'Sub' $P705 = "165_1304282264.655" 
    capture_lex $P705
    .lex "self", param_692
    .lex "$block", param_693
.annotate 'line', 915
    new $P694, "Undef"
    .lex "$outer_ctx", $P694
    find_dynamic_lex $P697, "%*COMPILING"
    unless_null $P697, vivify_565
    get_hll_global $P695, "GLOBAL"
    get_who $P696, $P695
    set $P697, $P696["%COMPILING"]
    unless_null $P697, vivify_566
    die "Contextual %*COMPILING not found"
  vivify_566:
  vivify_565:
    set $P698, $P697["%?OPTIONS"]
    unless_null $P698, vivify_567
    $P698 = root_new ['parrot';'Hash']
  vivify_567:
    set $P699, $P698["outer_ctx"]
    unless_null $P699, vivify_568
    new $P699, "Undef"
  vivify_568:
    store_lex "$outer_ctx", $P699
.annotate 'line', 916
    find_lex $P702, "$outer_ctx"
    unless_null $P702, vivify_569
    new $P702, "Undef"
  vivify_569:
    defined $I703, $P702
    if $I703, if_701
    new $P700, 'Integer'
    set $P700, $I703
    goto if_701_end
  if_701:
    .const 'Sub' $P705 = "165_1304282264.655" 
    capture_lex $P705
    $P730 = $P705()
    set $P700, $P730
  if_701_end:
.annotate 'line', 914
    .return ($P700)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block704"  :anon :subid("165_1304282264.655") :outer("164_1304282264.655")
.annotate 'line', 916
    .const 'Sub' $P719 = "166_1304282264.655" 
    capture_lex $P719
.annotate 'line', 917
    $P706 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P706
    find_lex $P707, "$outer_ctx"
    unless_null $P707, vivify_570
    new $P707, "Undef"
  vivify_570:
    getattribute $P708, $P707, "current_namespace"
    $P709 = $P708."get_name"()
    store_lex "@ns", $P709
.annotate 'line', 918
    find_lex $P710, "@ns"
    unless_null $P710, vivify_571
    $P710 = root_new ['parrot';'ResizablePMCArray']
  vivify_571:
    $P710."shift"()
.annotate 'line', 919
    find_lex $P711, "$block"
    unless_null $P711, vivify_572
    new $P711, "Undef"
  vivify_572:
    find_lex $P712, "@ns"
    unless_null $P712, vivify_573
    $P712 = root_new ['parrot';'ResizablePMCArray']
  vivify_573:
    $P711."namespace"($P712)
.annotate 'line', 920
    find_lex $P714, "$outer_ctx"
    unless_null $P714, vivify_574
    new $P714, "Undef"
  vivify_574:
    $P715 = $P714."lexpad_full"()
    defined $I716, $P715
    unless $I716, for_undef_575
    iter $P713, $P715
    new $P728, 'ExceptionHandler'
    set_label $P728, loop727_handler
    $P728."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P728
  loop727_test:
    unless $P713, loop727_done
    shift $P717, $P713
  loop727_redo:
    .const 'Sub' $P719 = "166_1304282264.655" 
    capture_lex $P719
    $P719($P717)
  loop727_next:
    goto loop727_test
  loop727_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P729, exception, 'type'
    eq $P729, .CONTROL_LOOP_NEXT, loop727_next
    eq $P729, .CONTROL_LOOP_REDO, loop727_redo
  loop727_done:
    pop_eh 
  for_undef_575:
.annotate 'line', 916
    .return ($P713)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block718"  :anon :subid("166_1304282264.655") :outer("165_1304282264.655")
    .param pmc param_720
.annotate 'line', 920
    .lex "$_", param_720
.annotate 'line', 921
    find_lex $P721, "$block"
    unless_null $P721, vivify_576
    new $P721, "Undef"
  vivify_576:
    find_lex $P722, "$_"
    unless_null $P722, vivify_577
    new $P722, "Undef"
  vivify_577:
    $P723 = $P722."key"()
    find_lex $P724, "$_"
    unless_null $P724, vivify_578
    new $P724, "Undef"
  vivify_578:
    $P725 = $P724."value"()
    $P726 = $P721."symbol"($P723, "lexical" :named("scope"), $P725 :named("value"))
.annotate 'line', 920
    .return ($P726)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("167_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_734
    .param pmc param_735
    .param pmc param_736 :optional
    .param int has_param_736 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P821 = "169_1304282264.655" 
    capture_lex $P821
    .const 'Sub' $P785 = "168_1304282264.655" 
    capture_lex $P785
    new $P733, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P733, control_732
    push_eh $P733
    .lex "self", param_734
    .lex "$/", param_735
    if has_param_736, optparam_579
    new $P737, "Undef"
    set param_736, $P737
  optparam_579:
    .lex "$key", param_736
.annotate 'line', 929
    new $P738, "Undef"
    .lex "$past", $P738
.annotate 'line', 928
    find_lex $P740, "$key"
    unless_null $P740, vivify_580
    new $P740, "Undef"
  vivify_580:
    if $P740, unless_739_end
    new $P741, "Exception"
    set $P741['type'], .CONTROL_RETURN
    new $P742, "Integer"
    assign $P742, 0
    setattribute $P741, 'payload', $P742
    throw $P741
  unless_739_end:
.annotate 'line', 929
    find_lex $P744, "$/"
    unless_null $P744, vivify_581
    new $P744, "Undef"
  vivify_581:
    $P745 = $P744."ast"()
    set $P743, $P745
    defined $I747, $P743
    if $I747, default_746
    find_lex $P748, "$/"
    unless_null $P748, vivify_582
    $P748 = root_new ['parrot';'Hash']
  vivify_582:
    set $P749, $P748["OPER"]
    unless_null $P749, vivify_583
    new $P749, "Undef"
  vivify_583:
    $P750 = $P749."ast"()
    set $P743, $P750
  default_746:
    store_lex "$past", $P743
.annotate 'line', 930
    find_lex $P752, "$past"
    unless_null $P752, vivify_584
    new $P752, "Undef"
  vivify_584:
    if $P752, unless_751_end
.annotate 'line', 931
    get_hll_global $P753, "GLOBAL"
    nqp_get_package_through_who $P754, $P753, "PAST"
    get_who $P755, $P754
    set $P756, $P755["Op"]
    find_lex $P757, "$/"
    unless_null $P757, vivify_585
    new $P757, "Undef"
  vivify_585:
    $P758 = $P756."new"($P757 :named("node"))
    store_lex "$past", $P758
.annotate 'line', 932
    find_lex $P760, "$/"
    unless_null $P760, vivify_586
    $P760 = root_new ['parrot';'Hash']
  vivify_586:
    set $P761, $P760["OPER"]
    unless_null $P761, vivify_587
    $P761 = root_new ['parrot';'Hash']
  vivify_587:
    set $P762, $P761["O"]
    unless_null $P762, vivify_588
    $P762 = root_new ['parrot';'Hash']
  vivify_588:
    set $P763, $P762["pasttype"]
    unless_null $P763, vivify_589
    new $P763, "Undef"
  vivify_589:
    if $P763, if_759
.annotate 'line', 933
    find_lex $P771, "$/"
    unless_null $P771, vivify_590
    $P771 = root_new ['parrot';'Hash']
  vivify_590:
    set $P772, $P771["OPER"]
    unless_null $P772, vivify_591
    $P772 = root_new ['parrot';'Hash']
  vivify_591:
    set $P773, $P772["O"]
    unless_null $P773, vivify_592
    $P773 = root_new ['parrot';'Hash']
  vivify_592:
    set $P774, $P773["pirop"]
    unless_null $P774, vivify_593
    new $P774, "Undef"
  vivify_593:
    unless $P774, if_770_end
    find_lex $P775, "$past"
    unless_null $P775, vivify_594
    new $P775, "Undef"
  vivify_594:
    find_lex $P776, "$/"
    unless_null $P776, vivify_595
    $P776 = root_new ['parrot';'Hash']
  vivify_595:
    set $P777, $P776["OPER"]
    unless_null $P777, vivify_596
    $P777 = root_new ['parrot';'Hash']
  vivify_596:
    set $P778, $P777["O"]
    unless_null $P778, vivify_597
    $P778 = root_new ['parrot';'Hash']
  vivify_597:
    set $P779, $P778["pirop"]
    unless_null $P779, vivify_598
    new $P779, "Undef"
  vivify_598:
    set $S780, $P779
    $P775."pirop"($S780)
  if_770_end:
    goto if_759_end
  if_759:
.annotate 'line', 932
    find_lex $P764, "$past"
    unless_null $P764, vivify_599
    new $P764, "Undef"
  vivify_599:
    find_lex $P765, "$/"
    unless_null $P765, vivify_600
    $P765 = root_new ['parrot';'Hash']
  vivify_600:
    set $P766, $P765["OPER"]
    unless_null $P766, vivify_601
    $P766 = root_new ['parrot';'Hash']
  vivify_601:
    set $P767, $P766["O"]
    unless_null $P767, vivify_602
    $P767 = root_new ['parrot';'Hash']
  vivify_602:
    set $P768, $P767["pasttype"]
    unless_null $P768, vivify_603
    new $P768, "Undef"
  vivify_603:
    set $S769, $P768
    $P764."pasttype"($S769)
  if_759_end:
.annotate 'line', 934
    find_lex $P782, "$past"
    unless_null $P782, vivify_604
    new $P782, "Undef"
  vivify_604:
    $P783 = $P782."name"()
    if $P783, unless_781_end
    .const 'Sub' $P785 = "168_1304282264.655" 
    capture_lex $P785
    $P785()
  unless_781_end:
  unless_751_end:
.annotate 'line', 940
    find_lex $P808, "$key"
    unless_null $P808, vivify_612
    new $P808, "Undef"
  vivify_612:
    set $S809, $P808
    iseq $I810, $S809, "POSTFIX"
    if $I810, if_807
.annotate 'line', 942
    find_lex $P816, "$/"
    unless_null $P816, vivify_613
    new $P816, "Undef"
  vivify_613:
    $P817 = $P816."list"()
    defined $I818, $P817
    unless $I818, for_undef_614
    iter $P815, $P817
    new $P833, 'ExceptionHandler'
    set_label $P833, loop832_handler
    $P833."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P833
  loop832_test:
    unless $P815, loop832_done
    shift $P819, $P815
  loop832_redo:
    .const 'Sub' $P821 = "169_1304282264.655" 
    capture_lex $P821
    $P821($P819)
  loop832_next:
    goto loop832_test
  loop832_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P834, exception, 'type'
    eq $P834, .CONTROL_LOOP_NEXT, loop832_next
    eq $P834, .CONTROL_LOOP_REDO, loop832_redo
  loop832_done:
    pop_eh 
  for_undef_614:
.annotate 'line', 941
    goto if_807_end
  if_807:
.annotate 'line', 940
    find_lex $P811, "$past"
    unless_null $P811, vivify_618
    new $P811, "Undef"
  vivify_618:
    find_lex $P812, "$/"
    unless_null $P812, vivify_619
    $P812 = root_new ['parrot';'ResizablePMCArray']
  vivify_619:
    set $P813, $P812[0]
    unless_null $P813, vivify_620
    new $P813, "Undef"
  vivify_620:
    $P814 = $P813."ast"()
    $P811."unshift"($P814)
  if_807_end:
.annotate 'line', 944
    find_lex $P835, "$/"
    find_lex $P836, "$past"
    unless_null $P836, vivify_621
    new $P836, "Undef"
  vivify_621:
    $P837 = $P835."!make"($P836)
.annotate 'line', 927
    .return ($P837)
  control_732:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P838, exception, "payload"
    .return ($P838)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block784"  :anon :subid("168_1304282264.655") :outer("167_1304282264.655")
.annotate 'line', 936
    new $P786, "Undef"
    .lex "$name", $P786
.annotate 'line', 935
    find_lex $P788, "$key"
    unless_null $P788, vivify_605
    new $P788, "Undef"
  vivify_605:
    set $S789, $P788
    iseq $I790, $S789, "LIST"
    unless $I790, if_787_end
    new $P791, "String"
    assign $P791, "infix"
    store_lex "$key", $P791
  if_787_end:
.annotate 'line', 936
    find_lex $P792, "$key"
    unless_null $P792, vivify_606
    new $P792, "Undef"
  vivify_606:
    set $S793, $P792
    downcase $S794, $S793
    new $P795, 'String'
    set $P795, $S794
    concat $P796, $P795, ":<"
    find_lex $P797, "$/"
    unless_null $P797, vivify_607
    $P797 = root_new ['parrot';'Hash']
  vivify_607:
    set $P798, $P797["OPER"]
    unless_null $P798, vivify_608
    $P798 = root_new ['parrot';'Hash']
  vivify_608:
    set $P799, $P798["sym"]
    unless_null $P799, vivify_609
    new $P799, "Undef"
  vivify_609:
    concat $P800, $P796, $P799
    concat $P801, $P800, ">"
    store_lex "$name", $P801
.annotate 'line', 937
    find_lex $P802, "$past"
    unless_null $P802, vivify_610
    new $P802, "Undef"
  vivify_610:
    new $P803, "String"
    assign $P803, "&"
    find_lex $P804, "$name"
    unless_null $P804, vivify_611
    new $P804, "Undef"
  vivify_611:
    concat $P805, $P803, $P804
    $P806 = $P802."name"($P805)
.annotate 'line', 934
    .return ($P806)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block820"  :anon :subid("169_1304282264.655") :outer("167_1304282264.655")
    .param pmc param_822
.annotate 'line', 942
    .lex "$_", param_822
    find_lex $P825, "$_"
    unless_null $P825, vivify_615
    new $P825, "Undef"
  vivify_615:
    $P826 = $P825."ast"()
    defined $I827, $P826
    if $I827, if_824
    new $P823, 'Integer'
    set $P823, $I827
    goto if_824_end
  if_824:
    find_lex $P828, "$past"
    unless_null $P828, vivify_616
    new $P828, "Undef"
  vivify_616:
    find_lex $P829, "$_"
    unless_null $P829, vivify_617
    new $P829, "Undef"
  vivify_617:
    $P830 = $P829."ast"()
    $P831 = $P828."push"($P830)
    set $P823, $P831
  if_824_end:
    .return ($P823)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("170_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_840
    .param pmc param_841
.annotate 'line', 947
    .lex "self", param_840
    .lex "$/", param_841
    find_lex $P842, "$/"
    find_lex $P843, "$/"
    unless_null $P843, vivify_622
    $P843 = root_new ['parrot';'Hash']
  vivify_622:
    set $P844, $P843["circumfix"]
    unless_null $P844, vivify_623
    new $P844, "Undef"
  vivify_623:
    $P845 = $P844."ast"()
    $P846 = $P842."!make"($P845)
    .return ($P846)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("171_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_848
    .param pmc param_849
.annotate 'line', 949
    .lex "self", param_848
    .lex "$/", param_849
    find_lex $P850, "$/"
    find_lex $P851, "$/"
    unless_null $P851, vivify_624
    $P851 = root_new ['parrot';'Hash']
  vivify_624:
    set $P852, $P851["term"]
    unless_null $P852, vivify_625
    new $P852, "Undef"
  vivify_625:
    $P853 = $P852."ast"()
    $P854 = $P850."!make"($P853)
    .return ($P854)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("172_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_856
    .param pmc param_857
.annotate 'line', 950
    .lex "self", param_856
    .lex "$/", param_857
    find_lex $P858, "$/"
    new $P859, "Undef"
    $P860 = $P858."!make"($P859)
    .return ($P860)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("173_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_862
    .param pmc param_863
.annotate 'line', 951
    .lex "self", param_862
    .lex "$/", param_863
    find_lex $P864, "$/"
    find_lex $P865, "$/"
    unless_null $P865, vivify_626
    $P865 = root_new ['parrot';'Hash']
  vivify_626:
    set $P866, $P865["term"]
    unless_null $P866, vivify_627
    new $P866, "Undef"
  vivify_627:
    $P867 = $P866."ast"()
    $P868 = $P864."!make"($P867)
    .return ($P868)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("174_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_870
    .param pmc param_871
.annotate 'line', 953
    .lex "self", param_870
    .lex "$/", param_871
    find_lex $P872, "$/"
    find_lex $P873, "$/"
    unless_null $P873, vivify_628
    $P873 = root_new ['parrot';'Hash']
  vivify_628:
    set $P874, $P873["VALUE"]
    unless_null $P874, vivify_629
    new $P874, "Undef"
  vivify_629:
    $P875 = $P874."ast"()
    $P876 = $P872."!make"($P875)
    .return ($P876)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("175_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_878
    .param pmc param_879
.annotate 'line', 955
    .lex "self", param_878
    .lex "$/", param_879
    find_lex $P880, "$/"
    find_lex $P881, "$/"
    unless_null $P881, vivify_630
    new $P881, "Undef"
  vivify_630:
    set $N882, $P881
    $P883 = $P880."!make"($N882)
    .return ($P883)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("176_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_885
    .param pmc param_886
.annotate 'line', 957
    .lex "self", param_885
    .lex "$/", param_886
    find_lex $P887, "$/"
    find_lex $P888, "$/"
    unless_null $P888, vivify_631
    new $P888, "Undef"
  vivify_631:
    $P889 = "string_to_int"($P888, 10)
    $P890 = $P887."!make"($P889)
    .return ($P890)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("177_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_892
    .param pmc param_893
.annotate 'line', 958
    .lex "self", param_892
    .lex "$/", param_893
    find_lex $P894, "$/"
    find_lex $P895, "$/"
    unless_null $P895, vivify_632
    new $P895, "Undef"
  vivify_632:
    $P896 = "string_to_int"($P895, 16)
    $P897 = $P894."!make"($P896)
    .return ($P897)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("178_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_899
    .param pmc param_900
.annotate 'line', 959
    .lex "self", param_899
    .lex "$/", param_900
    find_lex $P901, "$/"
    find_lex $P902, "$/"
    unless_null $P902, vivify_633
    new $P902, "Undef"
  vivify_633:
    $P903 = "string_to_int"($P902, 8)
    $P904 = $P901."!make"($P903)
    .return ($P904)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("179_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_906
    .param pmc param_907
.annotate 'line', 960
    .lex "self", param_906
    .lex "$/", param_907
    find_lex $P908, "$/"
    find_lex $P909, "$/"
    unless_null $P909, vivify_634
    new $P909, "Undef"
  vivify_634:
    $P910 = "string_to_int"($P909, 2)
    $P911 = $P908."!make"($P910)
    .return ($P911)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("180_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_913
    .param pmc param_914
.annotate 'line', 962
    .const 'Sub' $P933 = "181_1304282264.655" 
    capture_lex $P933
    .lex "self", param_913
    .lex "$/", param_914
.annotate 'line', 963
    new $P915, "Undef"
    .lex "$past", $P915
    find_lex $P916, "$/"
    unless_null $P916, vivify_635
    $P916 = root_new ['parrot';'Hash']
  vivify_635:
    set $P917, $P916["quote_delimited"]
    unless_null $P917, vivify_636
    new $P917, "Undef"
  vivify_636:
    $P918 = $P917."ast"()
    store_lex "$past", $P918
.annotate 'line', 964
    find_lex $P920, "$/"
    unless_null $P920, vivify_637
    new $P920, "Undef"
  vivify_637:
    $P921 = $P920."CURSOR"()
    $P922 = $P921."quotemod_check"("w")
    unless $P922, if_919_end
.annotate 'line', 965
    get_hll_global $P924, "GLOBAL"
    nqp_get_package_through_who $P925, $P924, "PAST"
    get_who $P926, $P925
    set $P927, $P926["Node"]
    find_lex $P928, "$past"
    unless_null $P928, vivify_638
    new $P928, "Undef"
  vivify_638:
    $P929 = $P927."ACCEPTS"($P928)
    if $P929, if_923
.annotate 'line', 968
    .const 'Sub' $P933 = "181_1304282264.655" 
    capture_lex $P933
    $P933()
    goto if_923_end
  if_923:
.annotate 'line', 966
    find_lex $P930, "$/"
    unless_null $P930, vivify_649
    new $P930, "Undef"
  vivify_649:
    $P931 = $P930."CURSOR"()
    $P931."panic"("Can't form :w list from non-constant strings (yet)")
  if_923_end:
  if_919_end:
.annotate 'line', 979
    get_hll_global $P972, "GLOBAL"
    nqp_get_package_through_who $P973, $P972, "PAST"
    get_who $P974, $P973
    set $P975, $P974["Node"]
    find_lex $P976, "$past"
    unless_null $P976, vivify_650
    new $P976, "Undef"
  vivify_650:
    $P977 = $P975."ACCEPTS"($P976)
    isfalse $I978, $P977
    unless $I978, if_971_end
.annotate 'line', 980
    get_hll_global $P979, "GLOBAL"
    nqp_get_package_through_who $P980, $P979, "PAST"
    get_who $P981, $P980
    set $P982, $P981["Val"]
    find_lex $P983, "$past"
    unless_null $P983, vivify_651
    new $P983, "Undef"
  vivify_651:
    set $S984, $P983
    $P985 = $P982."new"($S984 :named("value"))
    store_lex "$past", $P985
  if_971_end:
.annotate 'line', 982
    find_lex $P986, "$/"
    find_lex $P987, "$past"
    unless_null $P987, vivify_652
    new $P987, "Undef"
  vivify_652:
    $P988 = $P986."!make"($P987)
.annotate 'line', 962
    .return ($P988)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block932"  :anon :subid("181_1304282264.655") :outer("180_1304282264.655")
.annotate 'line', 968
    .const 'Sub' $P959 = "182_1304282264.655" 
    capture_lex $P959
.annotate 'line', 969
    $P934 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P934
    get_hll_global $P935, "GLOBAL"
    nqp_get_package_through_who $P936, $P935, "HLL"
    nqp_get_package_through_who $P937, $P936, "Grammar"
    get_who $P938, $P937
    set $P939, $P938["split_words"]
    find_lex $P940, "$/"
    unless_null $P940, vivify_639
    new $P940, "Undef"
  vivify_639:
    find_lex $P941, "$past"
    unless_null $P941, vivify_640
    new $P941, "Undef"
  vivify_640:
    $P942 = $P939($P940, $P941)
    store_lex "@words", $P942
.annotate 'line', 970
    find_lex $P945, "@words"
    unless_null $P945, vivify_641
    $P945 = root_new ['parrot';'ResizablePMCArray']
  vivify_641:
    set $N946, $P945
    isne $I947, $N946, 1.0
    if $I947, if_944
.annotate 'line', 975
    find_lex $P967, "@words"
    unless_null $P967, vivify_642
    $P967 = root_new ['parrot';'ResizablePMCArray']
  vivify_642:
    set $P968, $P967[0]
    unless_null $P968, vivify_643
    new $P968, "Undef"
  vivify_643:
    set $S969, $P968
    new $P970, 'String'
    set $P970, $S969
    store_lex "$past", $P970
.annotate 'line', 974
    set $P943, $P970
.annotate 'line', 970
    goto if_944_end
  if_944:
.annotate 'line', 971
    get_hll_global $P948, "GLOBAL"
    nqp_get_package_through_who $P949, $P948, "PAST"
    get_who $P950, $P949
    set $P951, $P950["Op"]
    find_lex $P952, "$/"
    unless_null $P952, vivify_644
    new $P952, "Undef"
  vivify_644:
    $P953 = $P951."new"("list" :named("pasttype"), $P952 :named("node"))
    store_lex "$past", $P953
.annotate 'line', 972
    find_lex $P955, "@words"
    unless_null $P955, vivify_645
    $P955 = root_new ['parrot';'ResizablePMCArray']
  vivify_645:
    defined $I956, $P955
    unless $I956, for_undef_646
    iter $P954, $P955
    new $P965, 'ExceptionHandler'
    set_label $P965, loop964_handler
    $P965."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P965
  loop964_test:
    unless $P954, loop964_done
    shift $P957, $P954
  loop964_redo:
    .const 'Sub' $P959 = "182_1304282264.655" 
    capture_lex $P959
    $P959($P957)
  loop964_next:
    goto loop964_test
  loop964_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P966, exception, 'type'
    eq $P966, .CONTROL_LOOP_NEXT, loop964_next
    eq $P966, .CONTROL_LOOP_REDO, loop964_redo
  loop964_done:
    pop_eh 
  for_undef_646:
.annotate 'line', 970
    set $P943, $P954
  if_944_end:
.annotate 'line', 968
    .return ($P943)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block958"  :anon :subid("182_1304282264.655") :outer("181_1304282264.655")
    .param pmc param_960
.annotate 'line', 972
    .lex "$_", param_960
    find_lex $P961, "$past"
    unless_null $P961, vivify_647
    new $P961, "Undef"
  vivify_647:
    find_lex $P962, "$_"
    unless_null $P962, vivify_648
    new $P962, "Undef"
  vivify_648:
    $P963 = $P961."push"($P962)
    .return ($P963)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("183_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_990
    .param pmc param_991
.annotate 'line', 985
    .const 'Sub' $P1003 = "184_1304282264.655" 
    capture_lex $P1003
    .lex "self", param_990
    .lex "$/", param_991
.annotate 'line', 986
    $P992 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P992
.annotate 'line', 987
    new $P993, "Undef"
    .lex "$lastlit", $P993
.annotate 'line', 1003
    new $P994, "Undef"
    .lex "$past", $P994
.annotate 'line', 985
    find_lex $P995, "@parts"
    unless_null $P995, vivify_653
    $P995 = root_new ['parrot';'ResizablePMCArray']
  vivify_653:
.annotate 'line', 987
    new $P996, "String"
    assign $P996, ""
    store_lex "$lastlit", $P996
.annotate 'line', 988
    find_lex $P998, "$/"
    unless_null $P998, vivify_654
    $P998 = root_new ['parrot';'Hash']
  vivify_654:
    set $P999, $P998["quote_atom"]
    unless_null $P999, vivify_655
    new $P999, "Undef"
  vivify_655:
    defined $I1000, $P999
    unless $I1000, for_undef_656
    iter $P997, $P999
    new $P1042, 'ExceptionHandler'
    set_label $P1042, loop1041_handler
    $P1042."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1042
  loop1041_test:
    unless $P997, loop1041_done
    shift $P1001, $P997
  loop1041_redo:
    .const 'Sub' $P1003 = "184_1304282264.655" 
    capture_lex $P1003
    $P1003($P1001)
  loop1041_next:
    goto loop1041_test
  loop1041_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1043, exception, 'type'
    eq $P1043, .CONTROL_LOOP_NEXT, loop1041_next
    eq $P1043, .CONTROL_LOOP_REDO, loop1041_redo
  loop1041_done:
    pop_eh 
  for_undef_656:
.annotate 'line', 1002
    find_lex $P1045, "$lastlit"
    unless_null $P1045, vivify_669
    new $P1045, "Undef"
  vivify_669:
    set $S1046, $P1045
    isgt $I1047, $S1046, ""
    unless $I1047, if_1044_end
    find_lex $P1048, "@parts"
    unless_null $P1048, vivify_670
    $P1048 = root_new ['parrot';'ResizablePMCArray']
  vivify_670:
    find_lex $P1049, "$lastlit"
    unless_null $P1049, vivify_671
    new $P1049, "Undef"
  vivify_671:
    $P1048."push"($P1049)
  if_1044_end:
.annotate 'line', 1003
    find_lex $P1052, "@parts"
    unless_null $P1052, vivify_672
    $P1052 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
    if $P1052, if_1051
    new $P1055, "String"
    assign $P1055, ""
    set $P1050, $P1055
    goto if_1051_end
  if_1051:
    find_lex $P1053, "@parts"
    unless_null $P1053, vivify_673
    $P1053 = root_new ['parrot';'ResizablePMCArray']
  vivify_673:
    $P1054 = $P1053."shift"()
    set $P1050, $P1054
  if_1051_end:
    store_lex "$past", $P1050
.annotate 'line', 1004
    new $P1066, 'ExceptionHandler'
    set_label $P1066, loop1065_handler
    $P1066."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1066
  loop1065_test:
    find_lex $P1056, "@parts"
    unless_null $P1056, vivify_674
    $P1056 = root_new ['parrot';'ResizablePMCArray']
  vivify_674:
    unless $P1056, loop1065_done
  loop1065_redo:
.annotate 'line', 1005
    get_hll_global $P1057, "GLOBAL"
    nqp_get_package_through_who $P1058, $P1057, "PAST"
    get_who $P1059, $P1058
    set $P1060, $P1059["Op"]
    find_lex $P1061, "$past"
    unless_null $P1061, vivify_675
    new $P1061, "Undef"
  vivify_675:
    find_lex $P1062, "@parts"
    unless_null $P1062, vivify_676
    $P1062 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    $P1063 = $P1062."shift"()
    $P1064 = $P1060."new"($P1061, $P1063, "concat" :named("pirop"))
    store_lex "$past", $P1064
  loop1065_next:
.annotate 'line', 1004
    goto loop1065_test
  loop1065_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1067, exception, 'type'
    eq $P1067, .CONTROL_LOOP_NEXT, loop1065_next
    eq $P1067, .CONTROL_LOOP_REDO, loop1065_redo
  loop1065_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P1068, "$/"
    find_lex $P1069, "$past"
    unless_null $P1069, vivify_677
    new $P1069, "Undef"
  vivify_677:
    $P1070 = $P1068."!make"($P1069)
.annotate 'line', 985
    .return ($P1070)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1002"  :anon :subid("184_1304282264.655") :outer("183_1304282264.655")
    .param pmc param_1005
.annotate 'line', 989
    new $P1004, "Undef"
    .lex "$ast", $P1004
    .lex "$_", param_1005
    find_lex $P1006, "$_"
    unless_null $P1006, vivify_657
    new $P1006, "Undef"
  vivify_657:
    $P1007 = $P1006."ast"()
    store_lex "$ast", $P1007
.annotate 'line', 990
    get_hll_global $P1010, "GLOBAL"
    nqp_get_package_through_who $P1011, $P1010, "PAST"
    get_who $P1012, $P1011
    set $P1013, $P1012["Node"]
    find_lex $P1014, "$ast"
    unless_null $P1014, vivify_658
    new $P1014, "Undef"
  vivify_658:
    $P1015 = $P1013."ACCEPTS"($P1014)
    isfalse $I1016, $P1015
    if $I1016, if_1009
.annotate 'line', 993
    find_lex $P1022, "$ast"
    unless_null $P1022, vivify_659
    new $P1022, "Undef"
  vivify_659:
    get_hll_global $P1023, "GLOBAL"
    nqp_get_package_through_who $P1024, $P1023, "PAST"
    get_who $P1025, $P1024
    set $P1026, $P1025["Val"]
    $P1027 = $P1022."isa"($P1026)
    if $P1027, if_1021
.annotate 'line', 997
    find_lex $P1033, "$lastlit"
    unless_null $P1033, vivify_660
    new $P1033, "Undef"
  vivify_660:
    set $S1034, $P1033
    isgt $I1035, $S1034, ""
    unless $I1035, if_1032_end
    find_lex $P1036, "@parts"
    unless_null $P1036, vivify_661
    $P1036 = root_new ['parrot';'ResizablePMCArray']
  vivify_661:
    find_lex $P1037, "$lastlit"
    unless_null $P1037, vivify_662
    new $P1037, "Undef"
  vivify_662:
    $P1036."push"($P1037)
  if_1032_end:
.annotate 'line', 998
    find_lex $P1038, "@parts"
    unless_null $P1038, vivify_663
    $P1038 = root_new ['parrot';'ResizablePMCArray']
  vivify_663:
    find_lex $P1039, "$ast"
    unless_null $P1039, vivify_664
    new $P1039, "Undef"
  vivify_664:
    $P1038."push"($P1039)
.annotate 'line', 999
    new $P1040, "String"
    assign $P1040, ""
    store_lex "$lastlit", $P1040
.annotate 'line', 996
    set $P1020, $P1040
.annotate 'line', 993
    goto if_1021_end
  if_1021:
.annotate 'line', 994
    find_lex $P1028, "$lastlit"
    unless_null $P1028, vivify_665
    new $P1028, "Undef"
  vivify_665:
    find_lex $P1029, "$ast"
    unless_null $P1029, vivify_666
    new $P1029, "Undef"
  vivify_666:
    $S1030 = $P1029."value"()
    concat $P1031, $P1028, $S1030
    store_lex "$lastlit", $P1031
.annotate 'line', 993
    set $P1020, $P1031
  if_1021_end:
    set $P1008, $P1020
.annotate 'line', 990
    goto if_1009_end
  if_1009:
.annotate 'line', 991
    find_lex $P1017, "$lastlit"
    unless_null $P1017, vivify_667
    new $P1017, "Undef"
  vivify_667:
    find_lex $P1018, "$ast"
    unless_null $P1018, vivify_668
    new $P1018, "Undef"
  vivify_668:
    concat $P1019, $P1017, $P1018
    store_lex "$lastlit", $P1019
.annotate 'line', 990
    set $P1008, $P1019
  if_1009_end:
.annotate 'line', 988
    .return ($P1008)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("185_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1072
    .param pmc param_1073
.annotate 'line', 1010
    .lex "self", param_1072
    .lex "$/", param_1073
.annotate 'line', 1011
    find_lex $P1074, "$/"
    find_lex $P1077, "$/"
    unless_null $P1077, vivify_678
    $P1077 = root_new ['parrot';'Hash']
  vivify_678:
    set $P1078, $P1077["quote_escape"]
    unless_null $P1078, vivify_679
    new $P1078, "Undef"
  vivify_679:
    if $P1078, if_1076
    find_lex $P1082, "$/"
    unless_null $P1082, vivify_680
    new $P1082, "Undef"
  vivify_680:
    set $S1083, $P1082
    new $P1075, 'String'
    set $P1075, $S1083
    goto if_1076_end
  if_1076:
    find_lex $P1079, "$/"
    unless_null $P1079, vivify_681
    $P1079 = root_new ['parrot';'Hash']
  vivify_681:
    set $P1080, $P1079["quote_escape"]
    unless_null $P1080, vivify_682
    new $P1080, "Undef"
  vivify_682:
    $P1081 = $P1080."ast"()
    set $P1075, $P1081
  if_1076_end:
    $P1084 = $P1074."!make"($P1075)
.annotate 'line', 1010
    .return ($P1084)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("186_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1086
    .param pmc param_1087
.annotate 'line', 1014
    .lex "self", param_1086
    .lex "$/", param_1087
    find_lex $P1088, "$/"
    $P1089 = $P1088."!make"("\\")
    .return ($P1089)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("187_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1091
    .param pmc param_1092
.annotate 'line', 1015
    .lex "self", param_1091
    .lex "$/", param_1092
    find_lex $P1093, "$/"
    find_lex $P1094, "$/"
    unless_null $P1094, vivify_683
    $P1094 = root_new ['parrot';'Hash']
  vivify_683:
    set $P1095, $P1094["stopper"]
    unless_null $P1095, vivify_684
    new $P1095, "Undef"
  vivify_684:
    set $S1096, $P1095
    $P1097 = $P1093."!make"($S1096)
    .return ($P1097)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("188_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1099
    .param pmc param_1100
.annotate 'line', 1017
    .lex "self", param_1099
    .lex "$/", param_1100
    find_lex $P1101, "$/"
    $P1102 = $P1101."!make"("\b")
    .return ($P1102)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("189_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1104
    .param pmc param_1105
.annotate 'line', 1018
    .lex "self", param_1104
    .lex "$/", param_1105
    find_lex $P1106, "$/"
    $P1107 = $P1106."!make"("\n")
    .return ($P1107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("190_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1109
    .param pmc param_1110
.annotate 'line', 1019
    .lex "self", param_1109
    .lex "$/", param_1110
    find_lex $P1111, "$/"
    $P1112 = $P1111."!make"("\r")
    .return ($P1112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("191_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1114
    .param pmc param_1115
.annotate 'line', 1020
    .lex "self", param_1114
    .lex "$/", param_1115
    find_lex $P1116, "$/"
    $P1117 = $P1116."!make"("\t")
    .return ($P1117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("192_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1119
    .param pmc param_1120
.annotate 'line', 1021
    .lex "self", param_1119
    .lex "$/", param_1120
    find_lex $P1121, "$/"
    $P1122 = $P1121."!make"("\f")
    .return ($P1122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("193_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1124
    .param pmc param_1125
.annotate 'line', 1022
    .lex "self", param_1124
    .lex "$/", param_1125
    find_lex $P1126, "$/"
    $P1127 = $P1126."!make"("\e")
    .return ($P1127)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("194_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1129
    .param pmc param_1130
.annotate 'line', 1024
    .lex "self", param_1129
    .lex "$/", param_1130
.annotate 'line', 1025
    find_lex $P1131, "$/"
    find_lex $P1134, "$/"
    unless_null $P1134, vivify_685
    $P1134 = root_new ['parrot';'Hash']
  vivify_685:
    set $P1135, $P1134["hexint"]
    unless_null $P1135, vivify_686
    new $P1135, "Undef"
  vivify_686:
    if $P1135, if_1133
    find_lex $P1138, "$/"
    unless_null $P1138, vivify_687
    $P1138 = root_new ['parrot';'Hash']
  vivify_687:
    set $P1139, $P1138["hexints"]
    unless_null $P1139, vivify_688
    $P1139 = root_new ['parrot';'Hash']
  vivify_688:
    set $P1140, $P1139["hexint"]
    unless_null $P1140, vivify_689
    new $P1140, "Undef"
  vivify_689:
    set $P1132, $P1140
    goto if_1133_end
  if_1133:
    find_lex $P1136, "$/"
    unless_null $P1136, vivify_690
    $P1136 = root_new ['parrot';'Hash']
  vivify_690:
    set $P1137, $P1136["hexint"]
    unless_null $P1137, vivify_691
    new $P1137, "Undef"
  vivify_691:
    set $P1132, $P1137
  if_1133_end:
    $P1141 = "ints_to_string"($P1132)
    $P1142 = $P1131."!make"($P1141)
.annotate 'line', 1024
    .return ($P1142)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("195_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1144
    .param pmc param_1145
.annotate 'line', 1028
    .lex "self", param_1144
    .lex "$/", param_1145
.annotate 'line', 1029
    find_lex $P1146, "$/"
    find_lex $P1149, "$/"
    unless_null $P1149, vivify_692
    $P1149 = root_new ['parrot';'Hash']
  vivify_692:
    set $P1150, $P1149["octint"]
    unless_null $P1150, vivify_693
    new $P1150, "Undef"
  vivify_693:
    if $P1150, if_1148
    find_lex $P1153, "$/"
    unless_null $P1153, vivify_694
    $P1153 = root_new ['parrot';'Hash']
  vivify_694:
    set $P1154, $P1153["octints"]
    unless_null $P1154, vivify_695
    $P1154 = root_new ['parrot';'Hash']
  vivify_695:
    set $P1155, $P1154["octint"]
    unless_null $P1155, vivify_696
    new $P1155, "Undef"
  vivify_696:
    set $P1147, $P1155
    goto if_1148_end
  if_1148:
    find_lex $P1151, "$/"
    unless_null $P1151, vivify_697
    $P1151 = root_new ['parrot';'Hash']
  vivify_697:
    set $P1152, $P1151["octint"]
    unless_null $P1152, vivify_698
    new $P1152, "Undef"
  vivify_698:
    set $P1147, $P1152
  if_1148_end:
    $P1156 = "ints_to_string"($P1147)
    $P1157 = $P1146."!make"($P1156)
.annotate 'line', 1028
    .return ($P1157)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("196_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1159
    .param pmc param_1160
.annotate 'line', 1032
    .lex "self", param_1159
    .lex "$/", param_1160
.annotate 'line', 1033
    find_lex $P1161, "$/"
    find_lex $P1162, "$/"
    unless_null $P1162, vivify_699
    $P1162 = root_new ['parrot';'Hash']
  vivify_699:
    set $P1163, $P1162["charspec"]
    unless_null $P1163, vivify_700
    new $P1163, "Undef"
  vivify_700:
    $P1164 = $P1163."ast"()
    $P1165 = $P1161."!make"($P1164)
.annotate 'line', 1032
    .return ($P1165)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("197_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1167
    .param pmc param_1168
.annotate 'line', 1036
    .lex "self", param_1167
    .lex "$/", param_1168
.annotate 'line', 1037
    find_lex $P1169, "$/"
    $P1170 = $P1169."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1170)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("198_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1172
    .param pmc param_1173
.annotate 'line', 1040
    .lex "self", param_1172
    .lex "$/", param_1173
.annotate 'line', 1041
    find_lex $P1174, "$/"
    find_lex $P1177, "$/"
    unless_null $P1177, vivify_701
    $P1177 = root_new ['parrot';'Hash']
  vivify_701:
    set $P1178, $P1177["textq"]
    unless_null $P1178, vivify_702
    new $P1178, "Undef"
  vivify_702:
    if $P1178, if_1176
    find_lex $P1184, "$/"
    unless_null $P1184, vivify_703
    $P1184 = root_new ['parrot';'Hash']
  vivify_703:
    set $P1185, $P1184["textqq"]
    unless_null $P1185, vivify_704
    new $P1185, "Undef"
  vivify_704:
    $P1186 = $P1185."Str"()
    set $P1175, $P1186
    goto if_1176_end
  if_1176:
    new $P1179, "String"
    assign $P1179, "\\"
    find_lex $P1180, "$/"
    unless_null $P1180, vivify_705
    $P1180 = root_new ['parrot';'Hash']
  vivify_705:
    set $P1181, $P1180["textq"]
    unless_null $P1181, vivify_706
    new $P1181, "Undef"
  vivify_706:
    $S1182 = $P1181."Str"()
    concat $P1183, $P1179, $S1182
    set $P1175, $P1183
  if_1176_end:
    $P1187 = $P1174."!make"($P1175)
.annotate 'line', 1040
    .return ($P1187)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("199_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1189
    .param pmc param_1190
.annotate 'line', 1044
    .lex "self", param_1189
    .lex "$/", param_1190
.annotate 'line', 1045
    new $P1191, "Undef"
    .lex "$codepoint", $P1191
.annotate 'line', 1046
    find_lex $P1194, "$/"
    unless_null $P1194, vivify_707
    $P1194 = root_new ['parrot';'Hash']
  vivify_707:
    set $P1195, $P1194["integer"]
    unless_null $P1195, vivify_708
    new $P1195, "Undef"
  vivify_708:
    if $P1195, if_1193
.annotate 'line', 1047
    find_lex $P1199, "$/"
    unless_null $P1199, vivify_709
    new $P1199, "Undef"
  vivify_709:
    set $S1200, $P1199
    find_codepoint $I1201, $S1200
    new $P1192, 'Integer'
    set $P1192, $I1201
.annotate 'line', 1046
    goto if_1193_end
  if_1193:
    find_lex $P1196, "$/"
    unless_null $P1196, vivify_710
    $P1196 = root_new ['parrot';'Hash']
  vivify_710:
    set $P1197, $P1196["integer"]
    unless_null $P1197, vivify_711
    new $P1197, "Undef"
  vivify_711:
    $P1198 = $P1197."ast"()
    set $P1192, $P1198
  if_1193_end:
    store_lex "$codepoint", $P1192
.annotate 'line', 1048
    find_lex $P1203, "$codepoint"
    unless_null $P1203, vivify_712
    new $P1203, "Undef"
  vivify_712:
    set $N1204, $P1203
    islt $I1205, $N1204, 0.0
    unless $I1205, if_1202_end
    find_lex $P1206, "$/"
    unless_null $P1206, vivify_713
    new $P1206, "Undef"
  vivify_713:
    $P1207 = $P1206."CURSOR"()
    new $P1208, 'String'
    set $P1208, "Unrecognized character name "
    find_lex $P1209, "$/"
    unless_null $P1209, vivify_714
    new $P1209, "Undef"
  vivify_714:
    concat $P1210, $P1208, $P1209
    $P1207."panic"($P1210)
  if_1202_end:
.annotate 'line', 1049
    find_lex $P1211, "$/"
    find_lex $P1212, "$codepoint"
    unless_null $P1212, vivify_715
    new $P1212, "Undef"
  vivify_715:
    set $I1213, $P1212
    chr $S1214, $I1213
    $P1215 = $P1211."!make"($S1214)
.annotate 'line', 1044
    .return ($P1215)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("200_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1217
    .param pmc param_1218
.annotate 'line', 1052
    .const 'Sub' $P1227 = "201_1304282264.655" 
    capture_lex $P1227
    .lex "self", param_1217
    .lex "$/", param_1218
.annotate 'line', 1053
    new $P1219, "Undef"
    .lex "$str", $P1219
    new $P1220, "String"
    assign $P1220, ""
    store_lex "$str", $P1220
.annotate 'line', 1054
    find_lex $P1222, "$/"
    unless_null $P1222, vivify_716
    $P1222 = root_new ['parrot';'Hash']
  vivify_716:
    set $P1223, $P1222["charname"]
    unless_null $P1223, vivify_717
    new $P1223, "Undef"
  vivify_717:
    defined $I1224, $P1223
    unless $I1224, for_undef_718
    iter $P1221, $P1223
    new $P1234, 'ExceptionHandler'
    set_label $P1234, loop1233_handler
    $P1234."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1234
  loop1233_test:
    unless $P1221, loop1233_done
    shift $P1225, $P1221
  loop1233_redo:
    .const 'Sub' $P1227 = "201_1304282264.655" 
    capture_lex $P1227
    $P1227($P1225)
  loop1233_next:
    goto loop1233_test
  loop1233_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1235, exception, 'type'
    eq $P1235, .CONTROL_LOOP_NEXT, loop1233_next
    eq $P1235, .CONTROL_LOOP_REDO, loop1233_redo
  loop1233_done:
    pop_eh 
  for_undef_718:
.annotate 'line', 1055
    find_lex $P1236, "$/"
    find_lex $P1237, "$str"
    unless_null $P1237, vivify_721
    new $P1237, "Undef"
  vivify_721:
    $P1238 = $P1236."!make"($P1237)
.annotate 'line', 1052
    .return ($P1238)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1226"  :anon :subid("201_1304282264.655") :outer("200_1304282264.655")
    .param pmc param_1228
.annotate 'line', 1054
    .lex "$_", param_1228
    find_lex $P1229, "$str"
    unless_null $P1229, vivify_719
    new $P1229, "Undef"
  vivify_719:
    find_lex $P1230, "$_"
    unless_null $P1230, vivify_720
    new $P1230, "Undef"
  vivify_720:
    $S1231 = $P1230."ast"()
    concat $P1232, $P1229, $S1231
    store_lex "$str", $P1232
    .return ($P1232)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("202_1304282264.655") :outer("157_1304282264.655")
    .param pmc param_1240
    .param pmc param_1241
.annotate 'line', 1058
    .lex "self", param_1240
    .lex "$/", param_1241
.annotate 'line', 1059
    find_lex $P1242, "$/"
    find_lex $P1245, "$/"
    unless_null $P1245, vivify_722
    $P1245 = root_new ['parrot';'Hash']
  vivify_722:
    set $P1246, $P1245["charnames"]
    unless_null $P1246, vivify_723
    new $P1246, "Undef"
  vivify_723:
    if $P1246, if_1244
    find_lex $P1250, "$/"
    unless_null $P1250, vivify_724
    new $P1250, "Undef"
  vivify_724:
    $I1251 = "string_to_int"($P1250, 10)
    chr $S1252, $I1251
    new $P1243, 'String'
    set $P1243, $S1252
    goto if_1244_end
  if_1244:
    find_lex $P1247, "$/"
    unless_null $P1247, vivify_725
    $P1247 = root_new ['parrot';'Hash']
  vivify_725:
    set $P1248, $P1247["charnames"]
    unless_null $P1248, vivify_726
    new $P1248, "Undef"
  vivify_726:
    $P1249 = $P1248."ast"()
    set $P1243, $P1249
  if_1244_end:
    $P1253 = $P1242."!make"($P1243)
.annotate 'line', 1058
    .return ($P1253)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1260"  :subid("204_1304282264.655") :outer("10_1304282264.655")
.annotate 'line', 1072
    .const 'Sub' $P2429 = "270_1304282264.655" 
    capture_lex $P2429
    .const 'Sub' $P2421 = "269_1304282264.655" 
    capture_lex $P2421
    .const 'Sub' $P2368 = "267_1304282264.655" 
    capture_lex $P2368
    .const 'Sub' $P2295 = "264_1304282264.655" 
    capture_lex $P2295
    .const 'Sub' $P2265 = "262_1304282264.655" 
    capture_lex $P2265
    .const 'Sub' $P2260 = "261_1304282264.655" 
    capture_lex $P2260
    .const 'Sub' $P2250 = "260_1304282264.655" 
    capture_lex $P2250
    .const 'Sub' $P2221 = "258_1304282264.655" 
    capture_lex $P2221
    .const 'Sub' $P2212 = "257_1304282264.655" 
    capture_lex $P2212
    .const 'Sub' $P2204 = "256_1304282264.655" 
    capture_lex $P2204
    .const 'Sub' $P2196 = "255_1304282264.655" 
    capture_lex $P2196
    .const 'Sub' $P2192 = "254_1304282264.655" 
    capture_lex $P2192
    .const 'Sub' $P2188 = "253_1304282264.655" 
    capture_lex $P2188
    .const 'Sub' $P2119 = "251_1304282264.655" 
    capture_lex $P2119
    .const 'Sub' $P2023 = "247_1304282264.655" 
    capture_lex $P2023
    .const 'Sub' $P1983 = "244_1304282264.655" 
    capture_lex $P1983
    .const 'Sub' $P1935 = "242_1304282264.655" 
    capture_lex $P1935
    .const 'Sub' $P1922 = "241_1304282264.655" 
    capture_lex $P1922
    .const 'Sub' $P1909 = "240_1304282264.655" 
    capture_lex $P1909
    .const 'Sub' $P1896 = "239_1304282264.655" 
    capture_lex $P1896
    .const 'Sub' $P1883 = "238_1304282264.655" 
    capture_lex $P1883
    .const 'Sub' $P1870 = "237_1304282264.655" 
    capture_lex $P1870
    .const 'Sub' $P1857 = "236_1304282264.655" 
    capture_lex $P1857
    .const 'Sub' $P1844 = "235_1304282264.655" 
    capture_lex $P1844
    .const 'Sub' $P1831 = "234_1304282264.655" 
    capture_lex $P1831
    .const 'Sub' $P1826 = "233_1304282264.655" 
    capture_lex $P1826
    .const 'Sub' $P1822 = "232_1304282264.655" 
    capture_lex $P1822
    .const 'Sub' $P1782 = "230_1304282264.655" 
    capture_lex $P1782
    .const 'Sub' $P1623 = "223_1304282264.655" 
    capture_lex $P1623
    .const 'Sub' $P1608 = "222_1304282264.655" 
    capture_lex $P1608
    .const 'Sub' $P1515 = "217_1304282264.655" 
    capture_lex $P1515
    .const 'Sub' $P1482 = "215_1304282264.655" 
    capture_lex $P1482
    .const 'Sub' $P1467 = "214_1304282264.655" 
    capture_lex $P1467
    .const 'Sub' $P1452 = "213_1304282264.655" 
    capture_lex $P1452
    .const 'Sub' $P1365 = "210_1304282264.655" 
    capture_lex $P1365
    .const 'Sub' $P1306 = "208_1304282264.655" 
    capture_lex $P1306
    .const 'Sub' $P1299 = "207_1304282264.655" 
    capture_lex $P1299
    .const 'Sub' $P1279 = "206_1304282264.655" 
    capture_lex $P1279
    .const 'Sub' $P1262 = "205_1304282264.655" 
    capture_lex $P1262
.annotate 'line', 1132
    .const 'Sub' $P1262 = "205_1304282264.655" 
    newclosure $P1275, $P1262
    .lex "value_type", $P1275
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1276
    .lex "$?CLASS", $P1277
.annotate 'line', 1094
    .const 'Sub' $P1279 = "206_1304282264.655" 
    capture_lex $P1279
    $P1279()
.annotate 'line', 1072
    find_lex $P1293, "$?PACKAGE"
    get_who $P1294, $P1293
    set $P1295, $P1294["$interactive_ctx"]
    unless_null $P1295, vivify_734
    new $P1295, "Undef"
  vivify_734:
    find_lex $P1296, "$?PACKAGE"
    get_who $P1297, $P1296
    set $P1298, $P1297["%interactive_pad"]
    unless_null $P1298, vivify_735
    $P1298 = root_new ['parrot';'Hash']
  vivify_735:
.annotate 'line', 1112
    find_lex $P1364, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2421 = "269_1304282264.655" 
    newclosure $P2427, $P2421
.annotate 'line', 1072
    .return ($P2427)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post727") :outer("204_1304282264.655")
.annotate 'line', 1072
    .const 'Sub' $P1261 = "204_1304282264.655" 
    .local pmc block
    set block, $P1261
    .const 'Sub' $P2429 = "270_1304282264.655" 
    capture_lex $P2429
    $P2429()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2428"  :anon :subid("270_1304282264.655") :outer("204_1304282264.655")
.annotate 'line', 1072
    nqp_get_sc_object $P2430, "1304282255.673", 138
    .local pmc type_obj
    set type_obj, $P2430
    get_how $P2431, type_obj
    $P2432 = $P2431."compose"(type_obj)
    .return ($P2432)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("205_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1263
.annotate 'line', 1132
    .lex "$value", param_1263
.annotate 'line', 1133
    find_lex $P1266, "$value"
    unless_null $P1266, vivify_728
    new $P1266, "Undef"
  vivify_728:
    isa $I1267, $P1266, "NameSpace"
    if $I1267, if_1265
.annotate 'line', 1135
    find_lex $P1271, "$value"
    unless_null $P1271, vivify_729
    new $P1271, "Undef"
  vivify_729:
    isa $I1272, $P1271, "Sub"
    if $I1272, if_1270
    new $P1274, "String"
    assign $P1274, "var"
    set $P1269, $P1274
    goto if_1270_end
  if_1270:
    new $P1273, "String"
    assign $P1273, "sub"
    set $P1269, $P1273
  if_1270_end:
    set $P1264, $P1269
.annotate 'line', 1133
    goto if_1265_end
  if_1265:
    new $P1268, "String"
    assign $P1268, "namespace"
    set $P1264, $P1268
  if_1265_end:
.annotate 'line', 1132
    .return ($P1264)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1278"  :anon :subid("206_1304282264.655") :outer("204_1304282264.655")
.annotate 'line', 1099
    $P1280 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1280
.annotate 'line', 1096
    getinterp $P1281
    set $P1282, $P1281["context"]
    unless_null $P1282, vivify_730
    new $P1282, "Undef"
  vivify_730:
    find_lex $P1283, "$?PACKAGE"
    get_who $P1284, $P1283
    set $P1284["$interactive_ctx"], $P1282
    find_lex $P1285, "%pad_contents"
    unless_null $P1285, vivify_731
    $P1285 = root_new ['parrot';'Hash']
  vivify_731:
.annotate 'line', 1101
    find_lex $P1286, "$?PACKAGE"
    get_who $P1287, $P1286
    set $P1288, $P1287["$interactive_ctx"]
    unless_null $P1288, vivify_732
    new $P1288, "Undef"
  vivify_732:
    getattribute $P1289, $P1288, "lex_pad"
    find_lex $P1290, "%pad_contents"
    unless_null $P1290, vivify_733
    $P1290 = root_new ['parrot';'Hash']
  vivify_733:
    copy $P1289, $P1290
.annotate 'line', 1100
    find_lex $P1291, "$?PACKAGE"
    get_who $P1292, $P1291
    set $P1292["%interactive_pad"], $P1289
.annotate 'line', 1094
    .return ($P1289)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("207_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1300
.annotate 'line', 1106
    .lex "self", param_1300
.annotate 'line', 1107
    new $P1301, "Undef"
    .lex "$obj", $P1301
    find_lex $P1302, "self"
    repr_instance_of $P1303, $P1302
    store_lex "$obj", $P1303
.annotate 'line', 1108
    find_lex $P1304, "$obj"
    unless_null $P1304, vivify_736
    new $P1304, "Undef"
  vivify_736:
    $P1304."BUILD"()
    find_lex $P1305, "$obj"
    unless_null $P1305, vivify_737
    new $P1305, "Undef"
  vivify_737:
.annotate 'line', 1106
    .return ($P1305)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("208_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1307
.annotate 'line', 1112
    .const 'Sub' $P1328 = "209_1304282264.655" 
    capture_lex $P1328
    .lex "self", param_1307
.annotate 'line', 1122
    new $P1308, "Undef"
    .lex "$config_hash_idx", $P1308
.annotate 'line', 1126
    $P1309 = root_new ['parrot';'Hash']
    .lex "%config", $P1309
.annotate 'line', 1127
    new $P1310, "Undef"
    .lex "$version", $P1310
.annotate 'line', 1128
    new $P1311, "Undef"
    .lex "$revision", $P1311
.annotate 'line', 1114
    split $P1312, " ", "parse past post pir evalpmc"
    find_lex $P1313, "self"
    find_lex $P1314, "$?CLASS"
    setattribute $P1313, $P1314, "@!stages", $P1312
.annotate 'line', 1117
    split $P1315, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1316, "self"
    find_lex $P1317, "$?CLASS"
    setattribute $P1316, $P1317, "@!cmdoptions", $P1315
.annotate 'line', 1118
    new $P1318, "String"
    assign $P1318, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1319, "self"
    find_lex $P1320, "$?CLASS"
    setattribute $P1319, $P1320, "$!usage", $P1318
.annotate 'line', 1119
    find_lex $P1322, "self"
    find_lex $P1323, "$?CLASS"
    getattribute $P1324, $P1322, $P1323, "@!cmdoptions"
    unless_null $P1324, vivify_738
    $P1324 = root_new ['parrot';'ResizablePMCArray']
  vivify_738:
    defined $I1325, $P1324
    unless $I1325, for_undef_739
    iter $P1321, $P1324
    new $P1341, 'ExceptionHandler'
    set_label $P1341, loop1340_handler
    $P1341."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1341
  loop1340_test:
    unless $P1321, loop1340_done
    shift $P1326, $P1321
  loop1340_redo:
    .const 'Sub' $P1328 = "209_1304282264.655" 
    capture_lex $P1328
    $P1328($P1326)
  loop1340_next:
    goto loop1340_test
  loop1340_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1342, exception, 'type'
    eq $P1342, .CONTROL_LOOP_NEXT, loop1340_next
    eq $P1342, .CONTROL_LOOP_REDO, loop1340_redo
  loop1340_done:
    pop_eh 
  for_undef_739:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1343 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1343
.annotate 'line', 1126
    find_lex $P1344, "$config_hash_idx"
    unless_null $P1344, vivify_742
    new $P1344, "Undef"
  vivify_742:
    set $I1345, $P1344
    getinterp $P1346
    set $P1347, $P1346[$I1345]
    unless_null $P1347, vivify_743
    new $P1347, "Undef"
  vivify_743:
    store_lex "%config", $P1347
.annotate 'line', 1127
    find_lex $P1348, "%config"
    unless_null $P1348, vivify_744
    $P1348 = root_new ['parrot';'Hash']
  vivify_744:
    set $P1349, $P1348["VERSION"]
    unless_null $P1349, vivify_745
    new $P1349, "Undef"
  vivify_745:
    store_lex "$version", $P1349
.annotate 'line', 1128
    find_lex $P1351, "%config"
    unless_null $P1351, vivify_746
    $P1351 = root_new ['parrot';'Hash']
  vivify_746:
    set $P1352, $P1351["git_describe"]
    unless_null $P1352, vivify_747
    new $P1352, "Undef"
  vivify_747:
    set $P1350, $P1352
    defined $I1354, $P1350
    if $I1354, default_1353
    new $P1355, "String"
    assign $P1355, "(unknown)"
    set $P1350, $P1355
  default_1353:
    store_lex "$revision", $P1350
.annotate 'line', 1129
    new $P1356, 'String'
    set $P1356, "This compiler is built with NQP, parrot "
    find_lex $P1357, "$version"
    unless_null $P1357, vivify_748
    new $P1357, "Undef"
  vivify_748:
    concat $P1358, $P1356, $P1357
    concat $P1359, $P1358, ", revision "
    find_lex $P1360, "$revision"
    unless_null $P1360, vivify_749
    new $P1360, "Undef"
  vivify_749:
    concat $P1361, $P1359, $P1360
    find_lex $P1362, "self"
    find_lex $P1363, "$?CLASS"
    setattribute $P1362, $P1363, "$!version", $P1361
.annotate 'line', 1112
    .return ($P1361)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1327"  :anon :subid("209_1304282264.655") :outer("208_1304282264.655")
    .param pmc param_1329
.annotate 'line', 1119
    .lex "$_", param_1329
.annotate 'line', 1120
    find_lex $P1330, "self"
    find_lex $P1331, "$?CLASS"
    getattribute $P1332, $P1330, $P1331, "$!usage"
    unless_null $P1332, vivify_740
    new $P1332, "Undef"
  vivify_740:
    new $P1333, 'String'
    set $P1333, "    "
    find_lex $P1334, "$_"
    unless_null $P1334, vivify_741
    new $P1334, "Undef"
  vivify_741:
    concat $P1335, $P1333, $P1334
    concat $P1336, $P1335, "\n"
    concat $P1337, $P1332, $P1336
    find_lex $P1338, "self"
    find_lex $P1339, "$?CLASS"
    setattribute $P1338, $P1339, "$!usage", $P1337
.annotate 'line', 1119
    .return ($P1337)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("210_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1366
    .param pmc param_1367
    .param pmc param_1370 :slurpy
    .param pmc param_1368 :optional :named("tagset")
    .param int has_param_1368 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1436 = "212_1304282264.655" 
    capture_lex $P1436
    .const 'Sub' $P1415 = "211_1304282264.655" 
    capture_lex $P1415
    .lex "self", param_1366
    .lex "$module", param_1367
    if has_param_1368, optparam_750
    new $P1369, "Undef"
    set param_1368, $P1369
  optparam_750:
    .lex "$tagset", param_1368
    .lex "@symbols", param_1370
.annotate 'line', 1145
    $P1371 = root_new ['parrot';'Hash']
    .lex "%exports", $P1371
.annotate 'line', 1146
    $P1372 = root_new ['parrot';'Hash']
    .lex "%source", $P1372
.annotate 'line', 1140
    find_lex $P1374, "$module"
    unless_null $P1374, vivify_751
    new $P1374, "Undef"
  vivify_751:
    does $I1375, $P1374, "hash"
    new $P1376, 'Integer'
    set $P1376, $I1375
    isfalse $I1377, $P1376
    unless $I1377, if_1373_end
.annotate 'line', 1141
    find_lex $P1378, "self"
    find_lex $P1379, "$module"
    unless_null $P1379, vivify_752
    new $P1379, "Undef"
  vivify_752:
    $P1380 = $P1378."get_module"($P1379)
    store_lex "$module", $P1380
  if_1373_end:
.annotate 'line', 1144
    find_lex $P1382, "$tagset"
    unless_null $P1382, vivify_753
    new $P1382, "Undef"
  vivify_753:
    set $P1381, $P1382
    defined $I1384, $P1381
    if $I1384, default_1383
    find_lex $P1387, "@symbols"
    unless_null $P1387, vivify_754
    $P1387 = root_new ['parrot';'ResizablePMCArray']
  vivify_754:
    if $P1387, if_1386
    new $P1389, "String"
    assign $P1389, "DEFAULT"
    set $P1385, $P1389
    goto if_1386_end
  if_1386:
    new $P1388, "String"
    assign $P1388, "ALL"
    set $P1385, $P1388
  if_1386_end:
    set $P1381, $P1385
  default_1383:
    store_lex "$tagset", $P1381
    find_lex $P1390, "%exports"
    unless_null $P1390, vivify_755
    $P1390 = root_new ['parrot';'Hash']
  vivify_755:
.annotate 'line', 1146
    find_lex $P1391, "$tagset"
    unless_null $P1391, vivify_756
    new $P1391, "Undef"
  vivify_756:
    set $S1392, $P1391
    find_lex $P1393, "$module"
    unless_null $P1393, vivify_757
    $P1393 = root_new ['parrot';'Hash']
  vivify_757:
    set $P1394, $P1393["EXPORT"]
    unless_null $P1394, vivify_758
    $P1394 = root_new ['parrot';'Hash']
  vivify_758:
    set $P1395, $P1394[$S1392]
    unless_null $P1395, vivify_759
    new $P1395, "Undef"
  vivify_759:
    store_lex "%source", $P1395
.annotate 'line', 1147
    find_lex $P1397, "%source"
    unless_null $P1397, vivify_760
    $P1397 = root_new ['parrot';'Hash']
  vivify_760:
    defined $I1398, $P1397
    new $P1399, 'Integer'
    set $P1399, $I1398
    isfalse $I1400, $P1399
    unless $I1400, if_1396_end
.annotate 'line', 1148
    find_lex $P1403, "$tagset"
    unless_null $P1403, vivify_761
    new $P1403, "Undef"
  vivify_761:
    set $S1404, $P1403
    iseq $I1405, $S1404, "ALL"
    if $I1405, if_1402
    $P1407 = root_new ['parrot';'Hash']
    set $P1401, $P1407
    goto if_1402_end
  if_1402:
    find_lex $P1406, "$module"
    unless_null $P1406, vivify_762
    new $P1406, "Undef"
  vivify_762:
    set $P1401, $P1406
  if_1402_end:
    store_lex "%source", $P1401
  if_1396_end:
.annotate 'line', 1150
    find_lex $P1409, "@symbols"
    unless_null $P1409, vivify_763
    $P1409 = root_new ['parrot';'ResizablePMCArray']
  vivify_763:
    if $P1409, if_1408
.annotate 'line', 1157
    find_lex $P1432, "%source"
    unless_null $P1432, vivify_764
    $P1432 = root_new ['parrot';'Hash']
  vivify_764:
    defined $I1433, $P1432
    unless $I1433, for_undef_765
    iter $P1431, $P1432
    new $P1449, 'ExceptionHandler'
    set_label $P1449, loop1448_handler
    $P1449."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1449
  loop1448_test:
    unless $P1431, loop1448_done
    shift $P1434, $P1431
  loop1448_redo:
    .const 'Sub' $P1436 = "212_1304282264.655" 
    capture_lex $P1436
    $P1436($P1434)
  loop1448_next:
    goto loop1448_test
  loop1448_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1450, exception, 'type'
    eq $P1450, .CONTROL_LOOP_NEXT, loop1448_next
    eq $P1450, .CONTROL_LOOP_REDO, loop1448_redo
  loop1448_done:
    pop_eh 
  for_undef_765:
.annotate 'line', 1156
    goto if_1408_end
  if_1408:
.annotate 'line', 1151
    find_lex $P1411, "@symbols"
    unless_null $P1411, vivify_772
    $P1411 = root_new ['parrot';'ResizablePMCArray']
  vivify_772:
    defined $I1412, $P1411
    unless $I1412, for_undef_773
    iter $P1410, $P1411
    new $P1429, 'ExceptionHandler'
    set_label $P1429, loop1428_handler
    $P1429."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1429
  loop1428_test:
    unless $P1410, loop1428_done
    shift $P1413, $P1410
  loop1428_redo:
    .const 'Sub' $P1415 = "211_1304282264.655" 
    capture_lex $P1415
    $P1415($P1413)
  loop1428_next:
    goto loop1428_test
  loop1428_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1430, exception, 'type'
    eq $P1430, .CONTROL_LOOP_NEXT, loop1428_next
    eq $P1430, .CONTROL_LOOP_REDO, loop1428_redo
  loop1428_done:
    pop_eh 
  for_undef_773:
  if_1408_end:
.annotate 'line', 1150
    find_lex $P1451, "%exports"
    unless_null $P1451, vivify_782
    $P1451 = root_new ['parrot';'Hash']
  vivify_782:
.annotate 'line', 1138
    .return ($P1451)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1435"  :anon :subid("212_1304282264.655") :outer("210_1304282264.655")
    .param pmc param_1438
.annotate 'line', 1158
    new $P1437, "Undef"
    .lex "$value", $P1437
    .lex "$_", param_1438
    find_lex $P1439, "$_"
    unless_null $P1439, vivify_766
    new $P1439, "Undef"
  vivify_766:
    $P1440 = $P1439."value"()
    store_lex "$value", $P1440
.annotate 'line', 1159
    find_lex $P1441, "$value"
    unless_null $P1441, vivify_767
    new $P1441, "Undef"
  vivify_767:
    find_lex $P1442, "$_"
    unless_null $P1442, vivify_768
    new $P1442, "Undef"
  vivify_768:
    $P1443 = $P1442."key"()
    find_lex $P1444, "$value"
    unless_null $P1444, vivify_769
    new $P1444, "Undef"
  vivify_769:
    $P1445 = "value_type"($P1444)
    find_lex $P1446, "%exports"
    unless_null $P1446, vivify_770
    $P1446 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1446
  vivify_770:
    set $P1447, $P1446[$P1445]
    unless_null $P1447, vivify_771
    $P1447 = root_new ['parrot';'Hash']
    set $P1446[$P1445], $P1447
  vivify_771:
    set $P1447[$P1443], $P1441
.annotate 'line', 1157
    .return ($P1441)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1414"  :anon :subid("211_1304282264.655") :outer("210_1304282264.655")
    .param pmc param_1417
.annotate 'line', 1152
    new $P1416, "Undef"
    .lex "$value", $P1416
    .lex "$_", param_1417
    find_lex $P1418, "$_"
    unless_null $P1418, vivify_774
    new $P1418, "Undef"
  vivify_774:
    set $S1419, $P1418
    find_lex $P1420, "%source"
    unless_null $P1420, vivify_775
    $P1420 = root_new ['parrot';'Hash']
  vivify_775:
    set $P1421, $P1420[$S1419]
    unless_null $P1421, vivify_776
    new $P1421, "Undef"
  vivify_776:
    store_lex "$value", $P1421
.annotate 'line', 1153
    find_lex $P1422, "$value"
    unless_null $P1422, vivify_777
    new $P1422, "Undef"
  vivify_777:
    find_lex $P1423, "$_"
    unless_null $P1423, vivify_778
    new $P1423, "Undef"
  vivify_778:
    find_lex $P1424, "$value"
    unless_null $P1424, vivify_779
    new $P1424, "Undef"
  vivify_779:
    $P1425 = "value_type"($P1424)
    find_lex $P1426, "%exports"
    unless_null $P1426, vivify_780
    $P1426 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1426
  vivify_780:
    set $P1427, $P1426[$P1425]
    unless_null $P1427, vivify_781
    $P1427 = root_new ['parrot';'Hash']
    set $P1426[$P1425], $P1427
  vivify_781:
    set $P1427[$P1423], $P1422
.annotate 'line', 1151
    .return ($P1422)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("213_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1453
    .param pmc param_1454
.annotate 'line', 1165
    .lex "self", param_1453
    .lex "$name", param_1454
.annotate 'line', 1166
    $P1455 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1455
    find_lex $P1456, "self"
    find_lex $P1457, "$name"
    unless_null $P1457, vivify_783
    new $P1457, "Undef"
  vivify_783:
    $P1458 = $P1456."parse_name"($P1457)
    store_lex "@name", $P1458
.annotate 'line', 1167
    find_lex $P1459, "@name"
    unless_null $P1459, vivify_784
    $P1459 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    find_lex $P1460, "self"
    find_lex $P1461, "$?CLASS"
    getattribute $P1462, $P1460, $P1461, "$!language"
    unless_null $P1462, vivify_785
    new $P1462, "Undef"
  vivify_785:
    set $S1463, $P1462
    downcase $S1464, $S1463
    $P1459."unshift"($S1464)
.annotate 'line', 1168
    find_lex $P1465, "@name"
    unless_null $P1465, vivify_786
    $P1465 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    get_root_namespace $P1466, $P1465
.annotate 'line', 1165
    .return ($P1466)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("214_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1468
    .param pmc param_1469 :optional
    .param int has_param_1469 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1468
    if has_param_1469, optparam_787
    new $P1470, "Undef"
    set param_1469, $P1470
  optparam_787:
    .lex "$name", param_1469
.annotate 'line', 1172
    find_lex $P1472, "$name"
    unless_null $P1472, vivify_788
    new $P1472, "Undef"
  vivify_788:
    unless $P1472, if_1471_end
.annotate 'line', 1173
    find_lex $P1473, "$name"
    unless_null $P1473, vivify_789
    new $P1473, "Undef"
  vivify_789:
    find_lex $P1474, "self"
    find_lex $P1475, "$?CLASS"
    setattribute $P1474, $P1475, "$!language", $P1473
.annotate 'line', 1174
    find_lex $P1476, "$name"
    unless_null $P1476, vivify_790
    new $P1476, "Undef"
  vivify_790:
    set $S1477, $P1476
    find_lex $P1478, "self"
    compreg $S1477, $P1478
  if_1471_end:
.annotate 'line', 1172
    find_lex $P1479, "self"
    find_lex $P1480, "$?CLASS"
    getattribute $P1481, $P1479, $P1480, "$!language"
    unless_null $P1481, vivify_791
    new $P1481, "Undef"
  vivify_791:
.annotate 'line', 1171
    .return ($P1481)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("215_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1483
    .param pmc param_1484
.annotate 'line', 1179
    .const 'Sub' $P1494 = "216_1304282264.655" 
    capture_lex $P1494
    .lex "self", param_1483
    .lex "$name", param_1484
.annotate 'line', 1180
    new $P1485, "Undef"
    .lex "$base", $P1485
.annotate 'line', 1181
    new $P1486, "Undef"
    .lex "$loaded", $P1486
.annotate 'line', 1180
    find_lex $P1487, "self"
    find_lex $P1488, "$name"
    unless_null $P1488, vivify_792
    new $P1488, "Undef"
  vivify_792:
    $P1489 = $P1487."parse_name"($P1488)
    join $S1490, "/", $P1489
    new $P1491, 'String'
    set $P1491, $S1490
    store_lex "$base", $P1491
.annotate 'line', 1181
    new $P1492, "Integer"
    assign $P1492, 0
    store_lex "$loaded", $P1492
.annotate 'line', 1182
    .const 'Sub' $P1494 = "216_1304282264.655" 
    capture_lex $P1494
    $P1494()
.annotate 'line', 1183
    find_lex $P1507, "$loaded"
    unless_null $P1507, vivify_794
    new $P1507, "Undef"
  vivify_794:
    if $P1507, unless_1506_end
    find_lex $P1508, "$base"
    unless_null $P1508, vivify_795
    new $P1508, "Undef"
  vivify_795:
    concat $P1509, $P1508, ".pir"
    set $S1510, $P1509
    load_bytecode $S1510
    new $P1511, "Integer"
    assign $P1511, 1
    store_lex "$loaded", $P1511
  unless_1506_end:
.annotate 'line', 1184
    find_lex $P1512, "self"
    find_lex $P1513, "$name"
    unless_null $P1513, vivify_796
    new $P1513, "Undef"
  vivify_796:
    $P1514 = $P1512."get_module"($P1513)
.annotate 'line', 1179
    .return ($P1514)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1493"  :anon :subid("216_1304282264.655") :outer("215_1304282264.655")
.annotate 'line', 1182
    new $P1501, 'ExceptionHandler'
    set_label $P1501, control_1500
    $P1501."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1501
    find_lex $P1495, "$base"
    unless_null $P1495, vivify_793
    new $P1495, "Undef"
  vivify_793:
    concat $P1496, $P1495, ".pbc"
    set $S1497, $P1496
    load_bytecode $S1497
    new $P1498, "Integer"
    assign $P1498, 1
    store_lex "$loaded", $P1498
    pop_eh 
    goto skip_handler_1499
  control_1500:
    .local pmc exception 
    .get_results (exception) 
    new $P1504, 'Integer'
    set $P1504, 1
    set exception["handled"], $P1504
    set $I1505, exception["handled"]
    ne $I1505, 1, nothandled_1503
  handled_1502:
    .return (exception)
  nothandled_1503:
    rethrow exception
  skip_handler_1499:
    .return ($P1498)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("217_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1516
    .param pmc param_1517
    .param pmc param_1518
.annotate 'line', 1187
    .const 'Sub' $P1524 = "218_1304282264.655" 
    capture_lex $P1524
    .lex "self", param_1516
    .lex "$target", param_1517
    .lex "%exports", param_1518
.annotate 'line', 1188
    find_lex $P1520, "%exports"
    unless_null $P1520, vivify_797
    $P1520 = root_new ['parrot';'Hash']
  vivify_797:
    defined $I1521, $P1520
    unless $I1521, for_undef_798
    iter $P1519, $P1520
    new $P1606, 'ExceptionHandler'
    set_label $P1606, loop1605_handler
    $P1606."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1606
  loop1605_test:
    unless $P1519, loop1605_done
    shift $P1522, $P1519
  loop1605_redo:
    .const 'Sub' $P1524 = "218_1304282264.655" 
    capture_lex $P1524
    $P1524($P1522)
  loop1605_next:
    goto loop1605_test
  loop1605_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1607, exception, 'type'
    eq $P1607, .CONTROL_LOOP_NEXT, loop1605_next
    eq $P1607, .CONTROL_LOOP_REDO, loop1605_redo
  loop1605_done:
    pop_eh 
  for_undef_798:
.annotate 'line', 1187
    .return ($P1519)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1523"  :anon :subid("218_1304282264.655") :outer("217_1304282264.655")
    .param pmc param_1527
.annotate 'line', 1188
    .const 'Sub' $P1594 = "221_1304282264.655" 
    capture_lex $P1594
    .const 'Sub' $P1574 = "220_1304282264.655" 
    capture_lex $P1574
    .const 'Sub' $P1545 = "219_1304282264.655" 
    capture_lex $P1545
.annotate 'line', 1189
    new $P1525, "Undef"
    .lex "$type", $P1525
.annotate 'line', 1190
    $P1526 = root_new ['parrot';'Hash']
    .lex "%items", $P1526
    .lex "$_", param_1527
.annotate 'line', 1189
    find_lex $P1528, "$_"
    unless_null $P1528, vivify_799
    new $P1528, "Undef"
  vivify_799:
    $P1529 = $P1528."key"()
    store_lex "$type", $P1529
.annotate 'line', 1190
    find_lex $P1530, "$_"
    unless_null $P1530, vivify_800
    new $P1530, "Undef"
  vivify_800:
    $P1531 = $P1530."value"()
    store_lex "%items", $P1531
.annotate 'line', 1191
    find_lex $P1534, "self"
    new $P1535, 'String'
    set $P1535, "import_"
    find_lex $P1536, "$type"
    unless_null $P1536, vivify_801
    new $P1536, "Undef"
  vivify_801:
    concat $P1537, $P1535, $P1536
    set $S1538, $P1537
    can $I1539, $P1534, $S1538
    if $I1539, if_1533
.annotate 'line', 1194
    find_lex $P1563, "$target"
    unless_null $P1563, vivify_802
    new $P1563, "Undef"
  vivify_802:
    new $P1564, 'String'
    set $P1564, "add_"
    find_lex $P1565, "$type"
    unless_null $P1565, vivify_803
    new $P1565, "Undef"
  vivify_803:
    concat $P1566, $P1564, $P1565
    set $S1567, $P1566
    can $I1568, $P1563, $S1567
    if $I1568, if_1562
.annotate 'line', 1198
    find_lex $P1590, "%items"
    unless_null $P1590, vivify_804
    $P1590 = root_new ['parrot';'Hash']
  vivify_804:
    defined $I1591, $P1590
    unless $I1591, for_undef_805
    iter $P1589, $P1590
    new $P1603, 'ExceptionHandler'
    set_label $P1603, loop1602_handler
    $P1603."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1603
  loop1602_test:
    unless $P1589, loop1602_done
    shift $P1592, $P1589
  loop1602_redo:
    .const 'Sub' $P1594 = "221_1304282264.655" 
    capture_lex $P1594
    $P1594($P1592)
  loop1602_next:
    goto loop1602_test
  loop1602_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1604, exception, 'type'
    eq $P1604, .CONTROL_LOOP_NEXT, loop1602_next
    eq $P1604, .CONTROL_LOOP_REDO, loop1602_redo
  loop1602_done:
    pop_eh 
  for_undef_805:
.annotate 'line', 1197
    set $P1561, $P1589
.annotate 'line', 1194
    goto if_1562_end
  if_1562:
.annotate 'line', 1195
    find_lex $P1570, "%items"
    unless_null $P1570, vivify_809
    $P1570 = root_new ['parrot';'Hash']
  vivify_809:
    defined $I1571, $P1570
    unless $I1571, for_undef_810
    iter $P1569, $P1570
    new $P1587, 'ExceptionHandler'
    set_label $P1587, loop1586_handler
    $P1587."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1587
  loop1586_test:
    unless $P1569, loop1586_done
    shift $P1572, $P1569
  loop1586_redo:
    .const 'Sub' $P1574 = "220_1304282264.655" 
    capture_lex $P1574
    $P1574($P1572)
  loop1586_next:
    goto loop1586_test
  loop1586_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1588, exception, 'type'
    eq $P1588, .CONTROL_LOOP_NEXT, loop1586_next
    eq $P1588, .CONTROL_LOOP_REDO, loop1586_redo
  loop1586_done:
    pop_eh 
  for_undef_810:
.annotate 'line', 1194
    set $P1561, $P1569
  if_1562_end:
    set $P1532, $P1561
.annotate 'line', 1191
    goto if_1533_end
  if_1533:
.annotate 'line', 1192
    find_lex $P1541, "%items"
    unless_null $P1541, vivify_815
    $P1541 = root_new ['parrot';'Hash']
  vivify_815:
    defined $I1542, $P1541
    unless $I1542, for_undef_816
    iter $P1540, $P1541
    new $P1559, 'ExceptionHandler'
    set_label $P1559, loop1558_handler
    $P1559."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1559
  loop1558_test:
    unless $P1540, loop1558_done
    shift $P1543, $P1540
  loop1558_redo:
    .const 'Sub' $P1545 = "219_1304282264.655" 
    capture_lex $P1545
    $P1545($P1543)
  loop1558_next:
    goto loop1558_test
  loop1558_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1560, exception, 'type'
    eq $P1560, .CONTROL_LOOP_NEXT, loop1558_next
    eq $P1560, .CONTROL_LOOP_REDO, loop1558_redo
  loop1558_done:
    pop_eh 
  for_undef_816:
.annotate 'line', 1191
    set $P1532, $P1540
  if_1533_end:
.annotate 'line', 1188
    .return ($P1532)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1593"  :anon :subid("221_1304282264.655") :outer("218_1304282264.655")
    .param pmc param_1595
.annotate 'line', 1198
    .lex "$_", param_1595
    find_lex $P1596, "$_"
    unless_null $P1596, vivify_806
    new $P1596, "Undef"
  vivify_806:
    $P1597 = $P1596."value"()
    find_lex $P1598, "$_"
    unless_null $P1598, vivify_807
    new $P1598, "Undef"
  vivify_807:
    $P1599 = $P1598."key"()
    set $S1600, $P1599
    find_lex $P1601, "$target"
    unless_null $P1601, vivify_808
    $P1601 = root_new ['parrot';'Hash']
    store_lex "$target", $P1601
  vivify_808:
    set $P1601[$S1600], $P1597
    .return ($P1597)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1573"  :anon :subid("220_1304282264.655") :outer("218_1304282264.655")
    .param pmc param_1575
.annotate 'line', 1195
    .lex "$_", param_1575
    find_lex $P1576, "$target"
    unless_null $P1576, vivify_811
    new $P1576, "Undef"
  vivify_811:
    find_lex $P1577, "$_"
    unless_null $P1577, vivify_812
    new $P1577, "Undef"
  vivify_812:
    $P1578 = $P1577."key"()
    find_lex $P1579, "$_"
    unless_null $P1579, vivify_813
    new $P1579, "Undef"
  vivify_813:
    $P1580 = $P1579."value"()
    new $P1581, 'String'
    set $P1581, "add_"
    find_lex $P1582, "$type"
    unless_null $P1582, vivify_814
    new $P1582, "Undef"
  vivify_814:
    concat $P1583, $P1581, $P1582
    set $S1584, $P1583
    $P1585 = $P1576.$S1584($P1578, $P1580)
    .return ($P1585)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1544"  :anon :subid("219_1304282264.655") :outer("218_1304282264.655")
    .param pmc param_1546
.annotate 'line', 1192
    .lex "$_", param_1546
    find_lex $P1547, "self"
    find_lex $P1548, "$target"
    unless_null $P1548, vivify_817
    new $P1548, "Undef"
  vivify_817:
    find_lex $P1549, "$_"
    unless_null $P1549, vivify_818
    new $P1549, "Undef"
  vivify_818:
    $P1550 = $P1549."key"()
    find_lex $P1551, "$_"
    unless_null $P1551, vivify_819
    new $P1551, "Undef"
  vivify_819:
    $P1552 = $P1551."value"()
    new $P1553, 'String'
    set $P1553, "import_"
    find_lex $P1554, "$type"
    unless_null $P1554, vivify_820
    new $P1554, "Undef"
  vivify_820:
    concat $P1555, $P1553, $P1554
    set $S1556, $P1555
    $P1557 = $P1547.$S1556($P1548, $P1550, $P1552)
    .return ($P1557)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("222_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1609
    .param pmc param_1610
.annotate 'line', 1203
    .lex "self", param_1609
    .lex "$value", param_1610
.annotate 'line', 1205
    getinterp $P1613
    $P1614 = $P1613."stdout_handle"()
    $N1615 = $P1614."tell"()
    find_dynamic_lex $P1618, "$*AUTOPRINTPOS"
    unless_null $P1618, vivify_821
    get_hll_global $P1616, "GLOBAL"
    get_who $P1617, $P1616
    set $P1618, $P1617["$AUTOPRINTPOS"]
    unless_null $P1618, vivify_822
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_822:
  vivify_821:
    set $N1619, $P1618
    isgt $I1620, $N1615, $N1619
    unless $I1620, unless_1612
    new $P1611, 'Integer'
    set $P1611, $I1620
    goto unless_1612_end
  unless_1612:
.annotate 'line', 1204
    find_lex $P1621, "$value"
    unless_null $P1621, vivify_823
    new $P1621, "Undef"
  vivify_823:
    set $S1622, $P1621
    say $S1622
  unless_1612_end:
.annotate 'line', 1203
    .return ($P1611)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("223_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1624
    .param pmc param_1625 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1657 = "224_1304282264.655" 
    capture_lex $P1657
    .lex "self", param_1624
    .lex "%adverbs", param_1625
.annotate 'line', 1209
    new $P1626, "Undef"
    .lex "$target", $P1626
.annotate 'line', 1213
    new $P1627, "Undef"
    .lex "$stdin", $P1627
.annotate 'line', 1214
    new $P1628, "Undef"
    .lex "$encoding", $P1628
.annotate 'line', 1219
    new $P1629, "Undef"
    .lex "$save_ctx", $P1629
.annotate 'line', 1209
    find_lex $P1630, "%adverbs"
    unless_null $P1630, vivify_824
    $P1630 = root_new ['parrot';'Hash']
  vivify_824:
    set $P1631, $P1630["target"]
    unless_null $P1631, vivify_825
    new $P1631, "Undef"
  vivify_825:
    set $S1632, $P1631
    downcase $S1633, $S1632
    new $P1634, 'String'
    set $P1634, $S1633
    store_lex "$target", $P1634
.annotate 'line', 1211
    getinterp $P1635
    $P1636 = $P1635."stderr_handle"()
    find_lex $P1637, "self"
    $S1638 = $P1637."commandline_banner"()
    print $P1636, $S1638
.annotate 'line', 1213
    getinterp $P1639
    $P1640 = $P1639."stdin_handle"()
    store_lex "$stdin", $P1640
.annotate 'line', 1214
    find_lex $P1641, "%adverbs"
    unless_null $P1641, vivify_826
    $P1641 = root_new ['parrot';'Hash']
  vivify_826:
    set $P1642, $P1641["encoding"]
    unless_null $P1642, vivify_827
    new $P1642, "Undef"
  vivify_827:
    set $S1643, $P1642
    new $P1644, 'String'
    set $P1644, $S1643
    store_lex "$encoding", $P1644
.annotate 'line', 1215
    find_lex $P1648, "$encoding"
    unless_null $P1648, vivify_828
    new $P1648, "Undef"
  vivify_828:
    if $P1648, if_1647
    set $P1646, $P1648
    goto if_1647_end
  if_1647:
    find_lex $P1649, "$encoding"
    unless_null $P1649, vivify_829
    new $P1649, "Undef"
  vivify_829:
    set $S1650, $P1649
    isne $I1651, $S1650, "fixed_8"
    new $P1646, 'Integer'
    set $P1646, $I1651
  if_1647_end:
    unless $P1646, if_1645_end
.annotate 'line', 1216
    find_lex $P1652, "$stdin"
    unless_null $P1652, vivify_830
    new $P1652, "Undef"
  vivify_830:
    find_lex $P1653, "$encoding"
    unless_null $P1653, vivify_831
    new $P1653, "Undef"
  vivify_831:
    $P1652."encoding"($P1653)
  if_1645_end:
.annotate 'line', 1215
    find_lex $P1654, "$save_ctx"
    unless_null $P1654, vivify_832
    new $P1654, "Undef"
  vivify_832:
.annotate 'line', 1220
    new $P1780, 'ExceptionHandler'
    set_label $P1780, loop1779_handler
    $P1780."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1780
  loop1779_test:
    new $P1655, "Integer"
    assign $P1655, 1
    unless $P1655, loop1779_done
  loop1779_redo:
    .const 'Sub' $P1657 = "224_1304282264.655" 
    capture_lex $P1657
    $P1657()
  loop1779_next:
    goto loop1779_test
  loop1779_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1781, exception, 'type'
    eq $P1781, .CONTROL_LOOP_NEXT, loop1779_next
    eq $P1781, .CONTROL_LOOP_REDO, loop1779_redo
  loop1779_done:
    pop_eh 
.annotate 'line', 1208
    .return ($P1655)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1656"  :anon :subid("224_1304282264.655") :outer("223_1304282264.655")
.annotate 'line', 1220
    .const 'Sub' $P1691 = "225_1304282264.655" 
    capture_lex $P1691
.annotate 'line', 1223
    new $P1658, "Undef"
    .lex "$prompt", $P1658
.annotate 'line', 1224
    new $P1659, "Undef"
    .lex "$code", $P1659
.annotate 'line', 1229
    new $P1660, "Undef"
    .lex "$*AUTOPRINTPOS", $P1660
.annotate 'line', 1230
    new $P1661, "Undef"
    .lex "$*CTXSAVE", $P1661
.annotate 'line', 1231
    new $P1662, "Undef"
    .lex "$*MAIN_CTX", $P1662
.annotate 'line', 1221
    find_lex $P1664, "$stdin"
    unless_null $P1664, vivify_833
    new $P1664, "Undef"
  vivify_833:
    if $P1664, unless_1663_end
    set $I1665, .CONTROL_LOOP_LAST
    die 0, $I1665
  unless_1663_end:
.annotate 'line', 1223
    find_lex $P1667, "self"
    $P1668 = $P1667."commandline_prompt"()
    set $P1666, $P1668
    defined $I1670, $P1666
    if $I1670, default_1669
    new $P1671, "String"
    assign $P1671, "> "
    set $P1666, $P1671
  default_1669:
    store_lex "$prompt", $P1666
.annotate 'line', 1224
    find_lex $P1672, "$stdin"
    unless_null $P1672, vivify_834
    new $P1672, "Undef"
  vivify_834:
    find_lex $P1673, "$prompt"
    unless_null $P1673, vivify_835
    new $P1673, "Undef"
  vivify_835:
    set $S1674, $P1673
    $P1675 = $P1672."readline_interactive"($S1674)
    store_lex "$code", $P1675
.annotate 'line', 1226
    find_lex $P1677, "$code"
    unless_null $P1677, vivify_836
    new $P1677, "Undef"
  vivify_836:
    isnull $I1678, $P1677
    unless $I1678, if_1676_end
    set $I1679, .CONTROL_LOOP_LAST
    die 0, $I1679
  if_1676_end:
.annotate 'line', 1229
    getinterp $P1680
    $P1681 = $P1680."stdout_handle"()
    $P1682 = $P1681."tell"()
    store_lex "$*AUTOPRINTPOS", $P1682
.annotate 'line', 1230
    find_lex $P1683, "self"
    store_lex "$*CTXSAVE", $P1683
    find_lex $P1686, "$*MAIN_CTX"
    unless_null $P1686, vivify_837
    get_hll_global $P1684, "GLOBAL"
    get_who $P1685, $P1684
    set $P1686, $P1685["$MAIN_CTX"]
    unless_null $P1686, vivify_838
    die "Contextual $*MAIN_CTX not found"
  vivify_838:
  vivify_837:
.annotate 'line', 1233
    find_lex $P1689, "$code"
    unless_null $P1689, vivify_839
    new $P1689, "Undef"
  vivify_839:
    if $P1689, if_1688
    set $P1687, $P1689
    goto if_1688_end
  if_1688:
    .const 'Sub' $P1691 = "225_1304282264.655" 
    capture_lex $P1691
    $P1778 = $P1691()
    set $P1687, $P1778
  if_1688_end:
.annotate 'line', 1220
    .return ($P1687)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1690"  :anon :subid("225_1304282264.655") :outer("224_1304282264.655")
.annotate 'line', 1233
    .const 'Sub' $P1726 = "228_1304282264.655" 
    capture_lex $P1726
    .const 'Sub' $P1697 = "226_1304282264.655" 
    capture_lex $P1697
.annotate 'line', 1235
    new $P1692, "Undef"
    .lex "$output", $P1692
.annotate 'line', 1234
    find_lex $P1693, "$code"
    unless_null $P1693, vivify_840
    new $P1693, "Undef"
  vivify_840:
    concat $P1694, $P1693, "\n"
    store_lex "$code", $P1694
    find_lex $P1695, "$output"
    unless_null $P1695, vivify_841
    new $P1695, "Undef"
  vivify_841:
.annotate 'line', 1236
    .const 'Sub' $P1697 = "226_1304282264.655" 
    capture_lex $P1697
    $P1697()
.annotate 'line', 1243
    find_dynamic_lex $P1723, "$*MAIN_CTX"
    unless_null $P1723, vivify_846
    get_hll_global $P1721, "GLOBAL"
    get_who $P1722, $P1721
    set $P1723, $P1722["$MAIN_CTX"]
    unless_null $P1723, vivify_847
    die "Contextual $*MAIN_CTX not found"
  vivify_847:
  vivify_846:
    defined $I1724, $P1723
    unless $I1724, if_1720_end
    .const 'Sub' $P1726 = "228_1304282264.655" 
    capture_lex $P1726
    $P1726()
  if_1720_end:
.annotate 'line', 1251
    find_lex $P1757, "$output"
    unless_null $P1757, vivify_857
    new $P1757, "Undef"
  vivify_857:
    isnull $I1758, $P1757
    unless $I1758, if_1756_end
    set $I1759, .CONTROL_LOOP_NEXT
    die 0, $I1759
  if_1756_end:
.annotate 'line', 1253
    find_lex $P1762, "$target"
    unless_null $P1762, vivify_858
    new $P1762, "Undef"
  vivify_858:
    isfalse $I1763, $P1762
    if $I1763, if_1761
.annotate 'line', 1255
    find_lex $P1769, "$target"
    unless_null $P1769, vivify_859
    new $P1769, "Undef"
  vivify_859:
    set $S1770, $P1769
    iseq $I1771, $S1770, "pir"
    if $I1771, if_1768
.annotate 'line', 1258
    find_lex $P1773, "self"
    find_lex $P1774, "$output"
    unless_null $P1774, vivify_860
    new $P1774, "Undef"
  vivify_860:
    find_lex $P1775, "$target"
    unless_null $P1775, vivify_861
    new $P1775, "Undef"
  vivify_861:
    find_lex $P1776, "%adverbs"
    unless_null $P1776, vivify_862
    $P1776 = root_new ['parrot';'Hash']
  vivify_862:
    $P1777 = $P1773."dumper"($P1774, $P1775, $P1776 :flat)
.annotate 'line', 1257
    set $P1767, $P1777
.annotate 'line', 1255
    goto if_1768_end
  if_1768:
.annotate 'line', 1256
    find_lex $P1772, "$output"
    unless_null $P1772, vivify_863
    new $P1772, "Undef"
  vivify_863:
    say $P1772
  if_1768_end:
.annotate 'line', 1255
    set $P1760, $P1767
.annotate 'line', 1253
    goto if_1761_end
  if_1761:
.annotate 'line', 1254
    find_lex $P1764, "self"
    find_lex $P1765, "$output"
    unless_null $P1765, vivify_864
    new $P1765, "Undef"
  vivify_864:
    $P1766 = $P1764."autoprint"($P1765)
.annotate 'line', 1253
    set $P1760, $P1766
  if_1761_end:
.annotate 'line', 1233
    .return ($P1760)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1696"  :anon :subid("226_1304282264.655") :outer("225_1304282264.655")
.annotate 'line', 1236
    .const 'Sub' $P1709 = "227_1304282264.655" 
    capture_lex $P1709
    new $P1705, 'ExceptionHandler'
    set_label $P1705, control_1704
    $P1705."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1705
.annotate 'line', 1237
    find_lex $P1698, "self"
    find_lex $P1699, "$code"
    unless_null $P1699, vivify_842
    new $P1699, "Undef"
  vivify_842:
    find_lex $P1700, "$save_ctx"
    unless_null $P1700, vivify_843
    new $P1700, "Undef"
  vivify_843:
    find_lex $P1701, "%adverbs"
    unless_null $P1701, vivify_844
    $P1701 = root_new ['parrot';'Hash']
  vivify_844:
    $P1702 = $P1698."eval"($P1699, $P1701 :flat, $P1700 :named("outer_ctx"))
    store_lex "$output", $P1702
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1703
  control_1704:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1709 = "227_1304282264.655" 
    newclosure $P1717, $P1709
    $P1717(exception)
    new $P1718, 'Integer'
    set $P1718, 1
    set exception["handled"], $P1718
    set $I1719, exception["handled"]
    ne $I1719, 1, nothandled_1707
  handled_1706:
    .return (exception)
  nothandled_1707:
    rethrow exception
  skip_handler_1703:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1708"  :anon :subid("227_1304282264.655") :outer("226_1304282264.655")
    .param pmc param_1710
.annotate 'line', 1238
    .lex "$_", param_1710
    find_lex $P1711, "$_"
    .lex "$!", $P1711
.annotate 'line', 1239
    find_lex $P1712, "$!"
    unless_null $P1712, vivify_845
    new $P1712, "Undef"
  vivify_845:
    set $S1713, $P1712
    new $P1714, 'String'
    set $P1714, $S1713
    concat $P1715, $P1714, "\n"
    print $P1715
.annotate 'line', 1240
    set $I1716, .CONTROL_LOOP_NEXT
    die 0, $I1716
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1725"  :anon :subid("228_1304282264.655") :outer("225_1304282264.655")
.annotate 'line', 1243
    .const 'Sub' $P1741 = "229_1304282264.655" 
    capture_lex $P1741
    find_lex $P1727, "$?PACKAGE"
    get_who $P1728, $P1727
    set $P1729, $P1728["$interactive_ctx"]
    unless_null $P1729, vivify_848
    new $P1729, "Undef"
  vivify_848:
    find_lex $P1730, "$?PACKAGE"
    get_who $P1731, $P1730
    set $P1732, $P1731["%interactive_pad"]
    unless_null $P1732, vivify_849
    $P1732 = root_new ['parrot';'Hash']
  vivify_849:
.annotate 'line', 1246
    find_dynamic_lex $P1736, "$*MAIN_CTX"
    unless_null $P1736, vivify_850
    get_hll_global $P1734, "GLOBAL"
    get_who $P1735, $P1734
    set $P1736, $P1735["$MAIN_CTX"]
    unless_null $P1736, vivify_851
    die "Contextual $*MAIN_CTX not found"
  vivify_851:
  vivify_850:
    $P1737 = $P1736."lexpad_full"()
    defined $I1738, $P1737
    unless $I1738, for_undef_852
    iter $P1733, $P1737
    new $P1751, 'ExceptionHandler'
    set_label $P1751, loop1750_handler
    $P1751."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1751
  loop1750_test:
    unless $P1733, loop1750_done
    shift $P1739, $P1733
  loop1750_redo:
    .const 'Sub' $P1741 = "229_1304282264.655" 
    capture_lex $P1741
    $P1741($P1739)
  loop1750_next:
    goto loop1750_test
  loop1750_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1752, exception, 'type'
    eq $P1752, .CONTROL_LOOP_NEXT, loop1750_next
    eq $P1752, .CONTROL_LOOP_REDO, loop1750_redo
  loop1750_done:
    pop_eh 
  for_undef_852:
.annotate 'line', 1249
    find_lex $P1753, "$?PACKAGE"
    get_who $P1754, $P1753
    set $P1755, $P1754["$interactive_ctx"]
    unless_null $P1755, vivify_856
    new $P1755, "Undef"
  vivify_856:
    store_lex "$save_ctx", $P1755
.annotate 'line', 1243
    .return ($P1755)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1740"  :anon :subid("229_1304282264.655") :outer("228_1304282264.655")
    .param pmc param_1742
.annotate 'line', 1246
    .lex "$_", param_1742
.annotate 'line', 1247
    find_lex $P1743, "$_"
    unless_null $P1743, vivify_853
    new $P1743, "Undef"
  vivify_853:
    $P1744 = $P1743."value"()
    find_lex $P1745, "$_"
    unless_null $P1745, vivify_854
    new $P1745, "Undef"
  vivify_854:
    $P1746 = $P1745."key"()
    find_lex $P1747, "$?PACKAGE"
    get_who $P1748, $P1747
    set $P1749, $P1748["%interactive_pad"]
    unless_null $P1749, vivify_855
    $P1749 = root_new ['parrot';'Hash']
    set $P1748["%interactive_pad"], $P1749
  vivify_855:
    set $P1749[$P1746], $P1744
.annotate 'line', 1246
    .return ($P1744)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("230_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1783
    .param pmc param_1784
    .param pmc param_1785 :slurpy
    .param pmc param_1786 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1805 = "231_1304282264.655" 
    capture_lex $P1805
    .lex "self", param_1783
    .lex "$code", param_1784
    .lex "@args", param_1785
    .lex "%adverbs", param_1786
.annotate 'line', 1265
    new $P1787, "Undef"
    .lex "$output", $P1787
.annotate 'line', 1264
    find_lex $P1788, "$output"
    unless_null $P1788, vivify_865
    new $P1788, "Undef"
  vivify_865:
.annotate 'line', 1266
    find_lex $P1789, "self"
    find_lex $P1790, "$code"
    unless_null $P1790, vivify_866
    new $P1790, "Undef"
  vivify_866:
    find_lex $P1791, "%adverbs"
    unless_null $P1791, vivify_867
    $P1791 = root_new ['parrot';'Hash']
  vivify_867:
    $P1792 = $P1789."compile"($P1790, $P1791 :flat)
    store_lex "$output", $P1792
.annotate 'line', 1268
    find_lex $P1796, "$output"
    unless_null $P1796, vivify_868
    new $P1796, "Undef"
  vivify_868:
    isa $I1797, $P1796, "String"
    new $P1798, 'Integer'
    set $P1798, $I1797
    isfalse $I1799, $P1798
    if $I1799, if_1795
    new $P1794, 'Integer'
    set $P1794, $I1799
    goto if_1795_end
  if_1795:
.annotate 'line', 1269
    find_lex $P1800, "%adverbs"
    unless_null $P1800, vivify_869
    $P1800 = root_new ['parrot';'Hash']
  vivify_869:
    set $P1801, $P1800["target"]
    unless_null $P1801, vivify_870
    new $P1801, "Undef"
  vivify_870:
    set $S1802, $P1801
    iseq $I1803, $S1802, ""
    new $P1794, 'Integer'
    set $P1794, $I1803
  if_1795_end:
    unless $P1794, if_1793_end
    .const 'Sub' $P1805 = "231_1304282264.655" 
    capture_lex $P1805
    $P1805()
  if_1793_end:
.annotate 'line', 1268
    find_lex $P1821, "$output"
    unless_null $P1821, vivify_881
    new $P1821, "Undef"
  vivify_881:
.annotate 'line', 1264
    .return ($P1821)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1804"  :anon :subid("231_1304282264.655") :outer("230_1304282264.655")
.annotate 'line', 1270
    new $P1806, "Undef"
    .lex "$outer_ctx", $P1806
    find_lex $P1807, "%adverbs"
    unless_null $P1807, vivify_871
    $P1807 = root_new ['parrot';'Hash']
  vivify_871:
    set $P1808, $P1807["outer_ctx"]
    unless_null $P1808, vivify_872
    new $P1808, "Undef"
  vivify_872:
    store_lex "$outer_ctx", $P1808
.annotate 'line', 1271
    find_lex $P1810, "$outer_ctx"
    unless_null $P1810, vivify_873
    new $P1810, "Undef"
  vivify_873:
    defined $I1811, $P1810
    unless $I1811, if_1809_end
.annotate 'line', 1272
    find_lex $P1812, "$output"
    unless_null $P1812, vivify_874
    $P1812 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
    set $P1813, $P1812[0]
    unless_null $P1813, vivify_875
    new $P1813, "Undef"
  vivify_875:
    find_lex $P1814, "$outer_ctx"
    unless_null $P1814, vivify_876
    new $P1814, "Undef"
  vivify_876:
    $P1813."set_outer_ctx"($P1814)
  if_1809_end:
.annotate 'line', 1275
    find_lex $P1815, "%adverbs"
    unless_null $P1815, vivify_877
    $P1815 = root_new ['parrot';'Hash']
  vivify_877:
    set $P1816, $P1815["trace"]
    unless_null $P1816, vivify_878
    new $P1816, "Undef"
  vivify_878:
    set $I1817, $P1816
    trace $I1817
.annotate 'line', 1276
    find_lex $P1818, "$output"
    unless_null $P1818, vivify_879
    new $P1818, "Undef"
  vivify_879:
    find_lex $P1819, "@args"
    unless_null $P1819, vivify_880
    $P1819 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    $P1820 = $P1818($P1819 :flat)
    store_lex "$output", $P1820
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("232_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1823
.annotate 'line', 1283
    .lex "self", param_1823
.annotate 'line', 1285

                $P0 = getinterp
                $P1824 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1824
.annotate 'line', 1289
    new $P1825, "Integer"
    assign $P1825, 0
    store_dynamic_lex "$*CTXSAVE", $P1825
.annotate 'line', 1283
    .return ($P1825)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("233_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1827
    .param pmc param_1828 :slurpy
.annotate 'line', 1292
    .lex "self", param_1827
    .lex "@args", param_1828
.annotate 'line', 1293
    find_lex $P1829, "@args"
    unless_null $P1829, vivify_882
    $P1829 = root_new ['parrot';'ResizablePMCArray']
  vivify_882:
    join $S1830, "", $P1829
    die $S1830
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("234_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1832
    .param pmc param_1833 :optional
    .param int has_param_1833 :opt_flag
.annotate 'line', 1296
    .lex "self", param_1832
    if has_param_1833, optparam_883
    $P1834 = root_new ['parrot';'ResizablePMCArray']
    set param_1833, $P1834
  optparam_883:
    .lex "@value", param_1833
.annotate 'line', 1297
    find_lex $P1836, "@value"
    unless_null $P1836, vivify_884
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_884:
    set $N1837, $P1836
    unless $N1837, if_1835_end
.annotate 'line', 1298
    find_lex $P1838, "@value"
    unless_null $P1838, vivify_885
    $P1838 = root_new ['parrot';'ResizablePMCArray']
  vivify_885:
    find_lex $P1839, "self"
    find_lex $P1840, "$?CLASS"
    setattribute $P1839, $P1840, "@!stages", $P1838
  if_1835_end:
.annotate 'line', 1297
    find_lex $P1841, "self"
    find_lex $P1842, "$?CLASS"
    getattribute $P1843, $P1841, $P1842, "@!stages"
    unless_null $P1843, vivify_886
    $P1843 = root_new ['parrot';'ResizablePMCArray']
  vivify_886:
.annotate 'line', 1296
    .return ($P1843)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("235_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1845
    .param pmc param_1846 :slurpy
.annotate 'line', 1303
    .lex "self", param_1845
    .lex "@value", param_1846
.annotate 'line', 1304
    find_lex $P1848, "@value"
    unless_null $P1848, vivify_887
    $P1848 = root_new ['parrot';'ResizablePMCArray']
  vivify_887:
    set $N1849, $P1848
    unless $N1849, if_1847_end
.annotate 'line', 1305
    find_lex $P1850, "@value"
    unless_null $P1850, vivify_888
    $P1850 = root_new ['parrot';'ResizablePMCArray']
  vivify_888:
    set $P1851, $P1850[0]
    unless_null $P1851, vivify_889
    new $P1851, "Undef"
  vivify_889:
    find_lex $P1852, "self"
    find_lex $P1853, "$?CLASS"
    setattribute $P1852, $P1853, "$!parsegrammar", $P1851
  if_1847_end:
.annotate 'line', 1304
    find_lex $P1854, "self"
    find_lex $P1855, "$?CLASS"
    getattribute $P1856, $P1854, $P1855, "$!parsegrammar"
    unless_null $P1856, vivify_890
    new $P1856, "Undef"
  vivify_890:
.annotate 'line', 1303
    .return ($P1856)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("236_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1858
    .param pmc param_1859 :slurpy
.annotate 'line', 1310
    .lex "self", param_1858
    .lex "@value", param_1859
.annotate 'line', 1311
    find_lex $P1861, "@value"
    unless_null $P1861, vivify_891
    $P1861 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    set $N1862, $P1861
    unless $N1862, if_1860_end
.annotate 'line', 1312
    find_lex $P1863, "@value"
    unless_null $P1863, vivify_892
    $P1863 = root_new ['parrot';'ResizablePMCArray']
  vivify_892:
    set $P1864, $P1863[0]
    unless_null $P1864, vivify_893
    new $P1864, "Undef"
  vivify_893:
    find_lex $P1865, "self"
    find_lex $P1866, "$?CLASS"
    setattribute $P1865, $P1866, "$!parseactions", $P1864
  if_1860_end:
.annotate 'line', 1311
    find_lex $P1867, "self"
    find_lex $P1868, "$?CLASS"
    getattribute $P1869, $P1867, $P1868, "$!parseactions"
    unless_null $P1869, vivify_894
    new $P1869, "Undef"
  vivify_894:
.annotate 'line', 1310
    .return ($P1869)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("237_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1871
    .param pmc param_1872 :slurpy
.annotate 'line', 1317
    .lex "self", param_1871
    .lex "@value", param_1872
.annotate 'line', 1318
    find_lex $P1874, "@value"
    unless_null $P1874, vivify_895
    $P1874 = root_new ['parrot';'ResizablePMCArray']
  vivify_895:
    set $N1875, $P1874
    unless $N1875, if_1873_end
.annotate 'line', 1319
    find_lex $P1876, "@value"
    unless_null $P1876, vivify_896
    $P1876 = root_new ['parrot';'ResizablePMCArray']
  vivify_896:
    set $P1877, $P1876[0]
    unless_null $P1877, vivify_897
    new $P1877, "Undef"
  vivify_897:
    find_lex $P1878, "self"
    find_lex $P1879, "$?CLASS"
    setattribute $P1878, $P1879, "$!astgrammar", $P1877
  if_1873_end:
.annotate 'line', 1318
    find_lex $P1880, "self"
    find_lex $P1881, "$?CLASS"
    getattribute $P1882, $P1880, $P1881, "$!astgrammar"
    unless_null $P1882, vivify_898
    new $P1882, "Undef"
  vivify_898:
.annotate 'line', 1317
    .return ($P1882)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("238_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1884
    .param pmc param_1885 :optional
    .param int has_param_1885 :opt_flag
.annotate 'line', 1324
    .lex "self", param_1884
    if has_param_1885, optparam_899
    new $P1886, "Undef"
    set param_1885, $P1886
  optparam_899:
    .lex "$value", param_1885
.annotate 'line', 1325
    find_lex $P1888, "$value"
    unless_null $P1888, vivify_900
    new $P1888, "Undef"
  vivify_900:
    defined $I1889, $P1888
    unless $I1889, if_1887_end
.annotate 'line', 1326
    find_lex $P1890, "$value"
    unless_null $P1890, vivify_901
    new $P1890, "Undef"
  vivify_901:
    find_lex $P1891, "self"
    find_lex $P1892, "$?CLASS"
    setattribute $P1891, $P1892, "$!commandline_banner", $P1890
  if_1887_end:
.annotate 'line', 1325
    find_lex $P1893, "self"
    find_lex $P1894, "$?CLASS"
    getattribute $P1895, $P1893, $P1894, "$!commandline_banner"
    unless_null $P1895, vivify_902
    new $P1895, "Undef"
  vivify_902:
.annotate 'line', 1324
    .return ($P1895)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("239_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1897
    .param pmc param_1898 :optional
    .param int has_param_1898 :opt_flag
.annotate 'line', 1331
    .lex "self", param_1897
    if has_param_1898, optparam_903
    new $P1899, "Undef"
    set param_1898, $P1899
  optparam_903:
    .lex "$value", param_1898
.annotate 'line', 1332
    find_lex $P1901, "$value"
    unless_null $P1901, vivify_904
    new $P1901, "Undef"
  vivify_904:
    defined $I1902, $P1901
    unless $I1902, if_1900_end
.annotate 'line', 1333
    find_lex $P1903, "$value"
    unless_null $P1903, vivify_905
    new $P1903, "Undef"
  vivify_905:
    find_lex $P1904, "self"
    find_lex $P1905, "$?CLASS"
    setattribute $P1904, $P1905, "$!commandline_prompt", $P1903
  if_1900_end:
.annotate 'line', 1332
    find_lex $P1906, "self"
    find_lex $P1907, "$?CLASS"
    getattribute $P1908, $P1906, $P1907, "$!commandline_prompt"
    unless_null $P1908, vivify_906
    new $P1908, "Undef"
  vivify_906:
.annotate 'line', 1331
    .return ($P1908)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("240_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1910
    .param pmc param_1911 :optional
    .param int has_param_1911 :opt_flag
.annotate 'line', 1338
    .lex "self", param_1910
    if has_param_1911, optparam_907
    new $P1912, "Undef"
    set param_1911, $P1912
  optparam_907:
    .lex "$value", param_1911
.annotate 'line', 1339
    find_lex $P1914, "$value"
    unless_null $P1914, vivify_908
    new $P1914, "Undef"
  vivify_908:
    defined $I1915, $P1914
    unless $I1915, if_1913_end
.annotate 'line', 1340
    find_lex $P1916, "$value"
    unless_null $P1916, vivify_909
    new $P1916, "Undef"
  vivify_909:
    find_lex $P1917, "self"
    find_lex $P1918, "$?CLASS"
    setattribute $P1917, $P1918, "$!compiler_progname", $P1916
  if_1913_end:
.annotate 'line', 1339
    find_lex $P1919, "self"
    find_lex $P1920, "$?CLASS"
    getattribute $P1921, $P1919, $P1920, "$!compiler_progname"
    unless_null $P1921, vivify_910
    new $P1921, "Undef"
  vivify_910:
.annotate 'line', 1338
    .return ($P1921)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("241_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1923
    .param pmc param_1924 :optional
    .param int has_param_1924 :opt_flag
.annotate 'line', 1345
    .lex "self", param_1923
    if has_param_1924, optparam_911
    $P1925 = root_new ['parrot';'ResizablePMCArray']
    set param_1924, $P1925
  optparam_911:
    .lex "@value", param_1924
.annotate 'line', 1346
    find_lex $P1927, "@value"
    unless_null $P1927, vivify_912
    $P1927 = root_new ['parrot';'ResizablePMCArray']
  vivify_912:
    set $N1928, $P1927
    unless $N1928, if_1926_end
.annotate 'line', 1347
    find_lex $P1929, "@value"
    unless_null $P1929, vivify_913
    $P1929 = root_new ['parrot';'ResizablePMCArray']
  vivify_913:
    find_lex $P1930, "self"
    find_lex $P1931, "$?CLASS"
    setattribute $P1930, $P1931, "@!cmdoptions", $P1929
  if_1926_end:
.annotate 'line', 1346
    find_lex $P1932, "self"
    find_lex $P1933, "$?CLASS"
    getattribute $P1934, $P1932, $P1933, "@!cmdoptions"
    unless_null $P1934, vivify_914
    $P1934 = root_new ['parrot';'ResizablePMCArray']
  vivify_914:
.annotate 'line', 1345
    .return ($P1934)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("242_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1936
    .param pmc param_1937
    .param pmc param_1938 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P1964 = "243_1304282264.655" 
    capture_lex $P1964
    .lex "self", param_1936
    .lex "@args", param_1937
    .lex "%adverbs", param_1938
.annotate 'line', 1365
    new $P1939, "Undef"
    .lex "$program-name", $P1939
.annotate 'line', 1366
    new $P1940, "Undef"
    .lex "$res", $P1940
.annotate 'line', 1367
    $P1941 = root_new ['parrot';'Hash']
    .lex "%opts", $P1941
.annotate 'line', 1368
    $P1942 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P1942
.annotate 'line', 1361
    find_lex $P1944, "@args"
    unless_null $P1944, vivify_915
    $P1944 = root_new ['parrot';'ResizablePMCArray']
  vivify_915:
    set $P1945, $P1944[2]
    unless_null $P1945, vivify_916
    new $P1945, "Undef"
  vivify_916:
    set $S1946, $P1945
    index $I1947, $S1946, "@INC"
    set $N1948, $I1947
    isge $I1949, $N1948, 0.0
    unless $I1949, if_1943_end
.annotate 'line', 1362
    exit 0
  if_1943_end:
.annotate 'line', 1365
    find_lex $P1950, "@args"
    unless_null $P1950, vivify_917
    $P1950 = root_new ['parrot';'ResizablePMCArray']
  vivify_917:
    set $P1951, $P1950[0]
    unless_null $P1951, vivify_918
    new $P1951, "Undef"
  vivify_918:
    store_lex "$program-name", $P1951
.annotate 'line', 1366
    find_lex $P1952, "self"
    find_lex $P1953, "@args"
    unless_null $P1953, vivify_919
    $P1953 = root_new ['parrot';'ResizablePMCArray']
  vivify_919:
    $P1954 = $P1952."process_args"($P1953)
    store_lex "$res", $P1954
.annotate 'line', 1367
    find_lex $P1955, "$res"
    unless_null $P1955, vivify_920
    new $P1955, "Undef"
  vivify_920:
    $P1956 = $P1955."options"()
    store_lex "%opts", $P1956
.annotate 'line', 1368
    find_lex $P1957, "$res"
    unless_null $P1957, vivify_921
    new $P1957, "Undef"
  vivify_921:
    $P1958 = $P1957."arguments"()
    store_lex "@a", $P1958
.annotate 'line', 1370
    find_lex $P1960, "%opts"
    unless_null $P1960, vivify_922
    $P1960 = root_new ['parrot';'Hash']
  vivify_922:
    defined $I1961, $P1960
    unless $I1961, for_undef_923
    iter $P1959, $P1960
    new $P1972, 'ExceptionHandler'
    set_label $P1972, loop1971_handler
    $P1972."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1972
  loop1971_test:
    unless $P1959, loop1971_done
    shift $P1962, $P1959
  loop1971_redo:
    .const 'Sub' $P1964 = "243_1304282264.655" 
    capture_lex $P1964
    $P1964($P1962)
  loop1971_next:
    goto loop1971_test
  loop1971_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1973, exception, 'type'
    eq $P1973, .CONTROL_LOOP_NEXT, loop1971_next
    eq $P1973, .CONTROL_LOOP_REDO, loop1971_redo
  loop1971_done:
    pop_eh 
  for_undef_923:
.annotate 'line', 1373
    find_lex $P1975, "%adverbs"
    unless_null $P1975, vivify_929
    $P1975 = root_new ['parrot';'Hash']
  vivify_929:
    set $P1976, $P1975["help"]
    unless_null $P1976, vivify_930
    new $P1976, "Undef"
  vivify_930:
    unless $P1976, if_1974_end
    find_lex $P1977, "self"
    find_lex $P1978, "$program-name"
    unless_null $P1978, vivify_931
    new $P1978, "Undef"
  vivify_931:
    $P1977."usage"($P1978)
  if_1974_end:
.annotate 'line', 1374
    find_lex $P1980, "%adverbs"
    unless_null $P1980, vivify_932
    $P1980 = root_new ['parrot';'Hash']
  vivify_932:
    set $P1981, $P1980["version"]
    unless_null $P1981, vivify_933
    new $P1981, "Undef"
  vivify_933:
    unless $P1981, if_1979_end
    find_lex $P1982, "self"
    $P1982."version"()
  if_1979_end:
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
.sub "_block1963"  :anon :subid("243_1304282264.655") :outer("242_1304282264.655")
    .param pmc param_1965
.annotate 'line', 1370
    .lex "$k", param_1965
.annotate 'line', 1371
    find_lex $P1966, "$k"
    unless_null $P1966, vivify_924
    new $P1966, "Undef"
  vivify_924:
    find_lex $P1967, "%opts"
    unless_null $P1967, vivify_925
    $P1967 = root_new ['parrot';'Hash']
  vivify_925:
    set $P1968, $P1967[$P1966]
    unless_null $P1968, vivify_926
    new $P1968, "Undef"
  vivify_926:
    find_lex $P1969, "$k"
    unless_null $P1969, vivify_927
    new $P1969, "Undef"
  vivify_927:
    find_lex $P1970, "%adverbs"
    unless_null $P1970, vivify_928
    $P1970 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1970
  vivify_928:
    set $P1970[$P1969], $P1968
.annotate 'line', 1370
    .return ($P1968)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("244_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_1984
    .param pmc param_1985
.annotate 'line', 1470
    .const 'Sub' $P2004 = "245_1304282264.655" 
    capture_lex $P2004
    .lex "self", param_1984
    .lex "@args", param_1985
.annotate 'line', 1474
    new $P1986, "Undef"
    .lex "$p", $P1986
.annotate 'line', 1477
    new $P1987, "Undef"
    .lex "$res", $P1987
.annotate 'line', 1472
    find_lex $P1988, "self"
    find_lex $P1989, "@args"
    unless_null $P1989, vivify_934
    $P1989 = root_new ['parrot';'ResizablePMCArray']
  vivify_934:
    $P1990 = $P1989."shift"()
    $P1988."compiler_progname"($P1990)
.annotate 'line', 1474
    get_hll_global $P1991, "GLOBAL"
    nqp_get_package_through_who $P1992, $P1991, "HLL"
    nqp_get_package_through_who $P1993, $P1992, "CommandLine"
    get_who $P1994, $P1993
    set $P1995, $P1994["Parser"]
    find_lex $P1996, "self"
    find_lex $P1997, "$?CLASS"
    getattribute $P1998, $P1996, $P1997, "@!cmdoptions"
    unless_null $P1998, vivify_935
    $P1998 = root_new ['parrot';'ResizablePMCArray']
  vivify_935:
    $P1999 = $P1995."new"($P1998)
    store_lex "$p", $P1999
.annotate 'line', 1475
    find_lex $P2000, "$p"
    unless_null $P2000, vivify_936
    new $P2000, "Undef"
  vivify_936:
    $P2000."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P2001, "$p"
    unless_null $P2001, vivify_937
    new $P2001, "Undef"
  vivify_937:
    $P2001."stop-after-first-arg"()
    find_lex $P2002, "$res"
    unless_null $P2002, vivify_938
    new $P2002, "Undef"
  vivify_938:
.annotate 'line', 1478
    .const 'Sub' $P2004 = "245_1304282264.655" 
    capture_lex $P2004
    $P2004()
    find_lex $P2022, "$res"
    unless_null $P2022, vivify_942
    new $P2022, "Undef"
  vivify_942:
.annotate 'line', 1470
    .return ($P2022)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2003"  :anon :subid("245_1304282264.655") :outer("244_1304282264.655")
.annotate 'line', 1478
    .const 'Sub' $P2014 = "246_1304282264.655" 
    capture_lex $P2014
    new $P2010, 'ExceptionHandler'
    set_label $P2010, control_2009
    $P2010."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2010
.annotate 'line', 1479
    find_lex $P2005, "$p"
    unless_null $P2005, vivify_939
    new $P2005, "Undef"
  vivify_939:
    find_lex $P2006, "@args"
    unless_null $P2006, vivify_940
    $P2006 = root_new ['parrot';'ResizablePMCArray']
  vivify_940:
    $P2007 = $P2005."parse"($P2006)
    store_lex "$res", $P2007
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_2008
  control_2009:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2014 = "246_1304282264.655" 
    newclosure $P2019, $P2014
    $P2019(exception)
    new $P2020, 'Integer'
    set $P2020, 1
    set exception["handled"], $P2020
    set $I2021, exception["handled"]
    ne $I2021, 1, nothandled_2012
  handled_2011:
    .return (exception)
  nothandled_2012:
    rethrow exception
  skip_handler_2008:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2013"  :anon :subid("246_1304282264.655") :outer("245_1304282264.655")
    .param pmc param_2015
.annotate 'line', 1480
    .lex "$_", param_2015
    find_lex $P2016, "$_"
    .lex "$!", $P2016
.annotate 'line', 1481
    find_lex $P2017, "$_"
    unless_null $P2017, vivify_941
    new $P2017, "Undef"
  vivify_941:
    say $P2017
.annotate 'line', 1482
    find_lex $P2018, "self"
    $P2018."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("247_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2026
    .param pmc param_2027
    .param pmc param_2028 :slurpy
    .param pmc param_2029 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P2054 = "248_1304282264.655" 
    capture_lex $P2054
    new $P2025, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2025, control_2024
    push_eh $P2025
    .lex "self", param_2026
    .lex "$files", param_2027
    .lex "@args", param_2028
    .lex "%adverbs", param_2029
.annotate 'line', 1490
    new $P2030, "Undef"
    .lex "$target", $P2030
.annotate 'line', 1491
    new $P2031, "Undef"
    .lex "$encoding", $P2031
.annotate 'line', 1492
    $P2032 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2032
.annotate 'line', 1493
    $P2033 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2033
.annotate 'line', 1490
    find_lex $P2034, "%adverbs"
    unless_null $P2034, vivify_943
    $P2034 = root_new ['parrot';'Hash']
  vivify_943:
    set $P2035, $P2034["target"]
    unless_null $P2035, vivify_944
    new $P2035, "Undef"
  vivify_944:
    set $S2036, $P2035
    downcase $S2037, $S2036
    new $P2038, 'String'
    set $P2038, $S2037
    store_lex "$target", $P2038
.annotate 'line', 1491
    find_lex $P2039, "%adverbs"
    unless_null $P2039, vivify_945
    $P2039 = root_new ['parrot';'Hash']
  vivify_945:
    set $P2040, $P2039["encoding"]
    unless_null $P2040, vivify_946
    new $P2040, "Undef"
  vivify_946:
    store_lex "$encoding", $P2040
.annotate 'line', 1492
    find_lex $P2043, "$files"
    unless_null $P2043, vivify_947
    new $P2043, "Undef"
  vivify_947:
    does $I2044, $P2043, "array"
    if $I2044, if_2042
    find_lex $P2046, "$files"
    unless_null $P2046, vivify_948
    new $P2046, "Undef"
  vivify_948:
    new $P2047, "ResizablePMCArray"
    push $P2047, $P2046
    set $P2041, $P2047
    goto if_2042_end
  if_2042:
    find_lex $P2045, "$files"
    unless_null $P2045, vivify_949
    new $P2045, "Undef"
  vivify_949:
    set $P2041, $P2045
  if_2042_end:
    store_lex "@files", $P2041
    find_lex $P2048, "@codes"
    unless_null $P2048, vivify_950
    $P2048 = root_new ['parrot';'ResizablePMCArray']
  vivify_950:
.annotate 'line', 1494
    find_lex $P2050, "@files"
    unless_null $P2050, vivify_951
    $P2050 = root_new ['parrot';'ResizablePMCArray']
  vivify_951:
    defined $I2051, $P2050
    unless $I2051, for_undef_952
    iter $P2049, $P2050
    new $P2116, 'ExceptionHandler'
    set_label $P2116, loop2115_handler
    $P2116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2116
  loop2115_test:
    unless $P2049, loop2115_done
    shift $P2052, $P2049
  loop2115_redo:
    .const 'Sub' $P2054 = "248_1304282264.655" 
    capture_lex $P2054
    $P2054($P2052)
  loop2115_next:
    goto loop2115_test
  loop2115_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2117, exception, 'type'
    eq $P2117, .CONTROL_LOOP_NEXT, loop2115_next
    eq $P2117, .CONTROL_LOOP_REDO, loop2115_redo
  loop2115_done:
    pop_eh 
  for_undef_952:
.annotate 'line', 1489
    .return ($P2049)
  control_2024:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2118, exception, "payload"
    .return ($P2118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2053"  :anon :subid("248_1304282264.655") :outer("247_1304282264.655")
    .param pmc param_2059
.annotate 'line', 1494
    .const 'Sub' $P2063 = "249_1304282264.655" 
    capture_lex $P2063
.annotate 'line', 1495
    new $P2055, "Undef"
    .lex "$in-handle", $P2055
.annotate 'line', 1496
    new $P2056, "Undef"
    .lex "$err", $P2056
.annotate 'line', 1509
    new $P2057, "Undef"
    .lex "$code", $P2057
.annotate 'line', 1511
    new $P2058, "Undef"
    .lex "$r", $P2058
    .lex "$_", param_2059
.annotate 'line', 1495
    new $P2060, "FileHandle"
    store_lex "$in-handle", $P2060
.annotate 'line', 1496
    new $P2061, "Integer"
    assign $P2061, 0
    store_lex "$err", $P2061
.annotate 'line', 1497
    .const 'Sub' $P2063 = "249_1304282264.655" 
    capture_lex $P2063
    $P2063()
.annotate 'line', 1508
    find_lex $P2087, "$err"
    unless_null $P2087, vivify_960
    new $P2087, "Undef"
  vivify_960:
    unless $P2087, if_2086_end
    find_lex $P2088, "$err"
    unless_null $P2088, vivify_961
    new $P2088, "Undef"
  vivify_961:
    die $P2088
  if_2086_end:
.annotate 'line', 1509
    find_lex $P2089, "@codes"
    unless_null $P2089, vivify_962
    $P2089 = root_new ['parrot';'ResizablePMCArray']
  vivify_962:
    join $S2090, "", $P2089
    new $P2091, 'String'
    set $P2091, $S2090
    store_lex "$code", $P2091
.annotate 'line', 1511
    find_lex $P2092, "self"
    find_lex $P2093, "$code"
    unless_null $P2093, vivify_963
    new $P2093, "Undef"
  vivify_963:
    find_lex $P2094, "@args"
    unless_null $P2094, vivify_964
    $P2094 = root_new ['parrot';'ResizablePMCArray']
  vivify_964:
    find_lex $P2095, "%adverbs"
    unless_null $P2095, vivify_965
    $P2095 = root_new ['parrot';'Hash']
  vivify_965:
    $P2096 = $P2092."eval"($P2093, $P2094 :flat, $P2095 :flat)
    store_lex "$r", $P2096
.annotate 'line', 1512
    find_lex $P2101, "$target"
    unless_null $P2101, vivify_966
    new $P2101, "Undef"
  vivify_966:
    set $S2102, $P2101
    iseq $I2103, $S2102, ""
    unless $I2103, unless_2100
    new $P2099, 'Integer'
    set $P2099, $I2103
    goto unless_2100_end
  unless_2100:
    find_lex $P2104, "$target"
    unless_null $P2104, vivify_967
    new $P2104, "Undef"
  vivify_967:
    set $S2105, $P2104
    iseq $I2106, $S2105, "pir"
    new $P2099, 'Integer'
    set $P2099, $I2106
  unless_2100_end:
    if $P2099, if_2098
.annotate 'line', 1515
    new $P2109, "Exception"
    set $P2109['type'], .CONTROL_RETURN
    find_lex $P2110, "self"
    find_lex $P2111, "$r"
    unless_null $P2111, vivify_968
    new $P2111, "Undef"
  vivify_968:
    find_lex $P2112, "$target"
    unless_null $P2112, vivify_969
    new $P2112, "Undef"
  vivify_969:
    find_lex $P2113, "%adverbs"
    unless_null $P2113, vivify_970
    $P2113 = root_new ['parrot';'Hash']
  vivify_970:
    $P2114 = $P2110."dumper"($P2111, $P2112, $P2113 :flat)
    setattribute $P2109, 'payload', $P2114
    throw $P2109
.annotate 'line', 1514
    goto if_2098_end
  if_2098:
.annotate 'line', 1513
    new $P2107, "Exception"
    set $P2107['type'], .CONTROL_RETURN
    find_lex $P2108, "$r"
    unless_null $P2108, vivify_971
    new $P2108, "Undef"
  vivify_971:
    setattribute $P2107, 'payload', $P2108
    throw $P2107
  if_2098_end:
.annotate 'line', 1494
    .return ($P2097)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2062"  :anon :subid("249_1304282264.655") :outer("248_1304282264.655")
.annotate 'line', 1497
    .const 'Sub' $P2077 = "250_1304282264.655" 
    capture_lex $P2077
    new $P2073, 'ExceptionHandler'
    set_label $P2073, control_2072
    $P2073."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2073
.annotate 'line', 1501
    find_lex $P2064, "$in-handle"
    unless_null $P2064, vivify_953
    new $P2064, "Undef"
  vivify_953:
    find_lex $P2065, "$encoding"
    unless_null $P2065, vivify_954
    new $P2065, "Undef"
  vivify_954:
    $P2064."encoding"($P2065)
.annotate 'line', 1502
    find_lex $P2066, "@codes"
    unless_null $P2066, vivify_955
    $P2066 = root_new ['parrot';'ResizablePMCArray']
  vivify_955:
    find_lex $P2067, "$in-handle"
    unless_null $P2067, vivify_956
    new $P2067, "Undef"
  vivify_956:
    find_lex $P2068, "$_"
    unless_null $P2068, vivify_957
    new $P2068, "Undef"
  vivify_957:
    $P2069 = $P2067."readall"($P2068)
    push $P2066, $P2069
.annotate 'line', 1503
    find_lex $P2070, "$in-handle"
    unless_null $P2070, vivify_958
    new $P2070, "Undef"
  vivify_958:
    $P2070."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_2071
  control_2072:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2077 = "250_1304282264.655" 
    newclosure $P2083, $P2077
    $P2083(exception)
    new $P2084, 'Integer'
    set $P2084, 1
    set exception["handled"], $P2084
    set $I2085, exception["handled"]
    ne $I2085, 1, nothandled_2075
  handled_2074:
    .return (exception)
  nothandled_2075:
    rethrow exception
  skip_handler_2071:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2076"  :anon :subid("250_1304282264.655") :outer("249_1304282264.655")
    .param pmc param_2078
.annotate 'line', 1504
    .lex "$_", param_2078
    find_lex $P2079, "$_"
    .lex "$!", $P2079
.annotate 'line', 1505
    new $P2080, 'String'
    set $P2080, "Error while reading from file: "
    find_lex $P2081, "$_"
    unless_null $P2081, vivify_959
    new $P2081, "Undef"
  vivify_959:
    concat $P2082, $P2080, $P2081
    store_lex "$err", $P2082
.annotate 'line', 1504
    .return ($P2082)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("251_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2122
    .param pmc param_2123
    .param pmc param_2124 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2147 = "252_1304282264.655" 
    capture_lex $P2147
    new $P2121, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2121, control_2120
    push_eh $P2121
    .lex "self", param_2122
    .lex "$source", param_2123
    .lex "%adverbs", param_2124
.annotate 'line', 1522
    $P2125 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2125
.annotate 'line', 1524
    new $P2126, "Undef"
    .lex "$target", $P2126
.annotate 'line', 1525
    new $P2127, "Undef"
    .lex "$result", $P2127
.annotate 'line', 1526
    new $P2128, "Undef"
    .lex "$stderr", $P2128
.annotate 'line', 1522
    find_lex $P2129, "%adverbs"
    unless_null $P2129, vivify_972
    $P2129 = root_new ['parrot';'Hash']
  vivify_972:
    find_lex $P2132, "%*COMPILING"
    unless_null $P2132, vivify_973
    get_hll_global $P2130, "GLOBAL"
    get_who $P2131, $P2130
    set $P2132, $P2131["%COMPILING"]
    unless_null $P2132, vivify_974
    die "Contextual %*COMPILING not found"
  vivify_974:
    store_lex "%*COMPILING", $P2132
  vivify_973:
    set $P2132["%?OPTIONS"], $P2129
.annotate 'line', 1524
    find_lex $P2133, "%adverbs"
    unless_null $P2133, vivify_975
    $P2133 = root_new ['parrot';'Hash']
  vivify_975:
    set $P2134, $P2133["target"]
    unless_null $P2134, vivify_976
    new $P2134, "Undef"
  vivify_976:
    set $S2135, $P2134
    downcase $S2136, $S2135
    new $P2137, 'String'
    set $P2137, $S2136
    store_lex "$target", $P2137
.annotate 'line', 1525
    find_lex $P2138, "$source"
    unless_null $P2138, vivify_977
    new $P2138, "Undef"
  vivify_977:
    store_lex "$result", $P2138
.annotate 'line', 1526
    getinterp $P2139
    $P2140 = $P2139."stderr_handle"()
    store_lex "$stderr", $P2140
.annotate 'line', 1527
    find_lex $P2142, "self"
    $P2143 = $P2142."stages"()
    defined $I2144, $P2143
    unless $I2144, for_undef_978
    iter $P2141, $P2143
    new $P2183, 'ExceptionHandler'
    set_label $P2183, loop2182_handler
    $P2183."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2183
  loop2182_test:
    unless $P2141, loop2182_done
    shift $P2145, $P2141
  loop2182_redo:
    .const 'Sub' $P2147 = "252_1304282264.655" 
    capture_lex $P2147
    $P2147($P2145)
  loop2182_next:
    goto loop2182_test
  loop2182_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2184, exception, 'type'
    eq $P2184, .CONTROL_LOOP_NEXT, loop2182_next
    eq $P2184, .CONTROL_LOOP_REDO, loop2182_redo
  loop2182_done:
    pop_eh 
  for_undef_978:
.annotate 'line', 1537
    new $P2185, "Exception"
    set $P2185['type'], .CONTROL_RETURN
    find_lex $P2186, "$result"
    unless_null $P2186, vivify_990
    new $P2186, "Undef"
  vivify_990:
    setattribute $P2185, 'payload', $P2186
    throw $P2185
.annotate 'line', 1521
    .return ()
  control_2120:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2187, exception, "payload"
    .return ($P2187)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2146"  :anon :subid("252_1304282264.655") :outer("251_1304282264.655")
    .param pmc param_2150
.annotate 'line', 1528
    new $P2148, "Undef"
    .lex "$timestamp", $P2148
.annotate 'line', 1530
    new $P2149, "Undef"
    .lex "$diff", $P2149
    .lex "$_", param_2150
.annotate 'line', 1528
    time $N2151
    new $P2152, 'Float'
    set $P2152, $N2151
    store_lex "$timestamp", $P2152
.annotate 'line', 1529
    find_lex $P2153, "self"
    find_lex $P2154, "$result"
    unless_null $P2154, vivify_979
    new $P2154, "Undef"
  vivify_979:
    find_lex $P2155, "%adverbs"
    unless_null $P2155, vivify_980
    $P2155 = root_new ['parrot';'Hash']
  vivify_980:
    find_lex $P2156, "$_"
    unless_null $P2156, vivify_981
    new $P2156, "Undef"
  vivify_981:
    set $S2157, $P2156
    $P2158 = $P2153.$S2157($P2154, $P2155 :flat)
    store_lex "$result", $P2158
.annotate 'line', 1530
    time $N2159
    new $P2160, 'Float'
    set $P2160, $N2159
    find_lex $P2161, "$timestamp"
    unless_null $P2161, vivify_982
    new $P2161, "Undef"
  vivify_982:
    sub $P2162, $P2160, $P2161
    store_lex "$diff", $P2162
.annotate 'line', 1531
    find_lex $P2164, "%adverbs"
    unless_null $P2164, vivify_983
    $P2164 = root_new ['parrot';'Hash']
  vivify_983:
    set $P2165, $P2164["stagestats"]
    unless_null $P2165, vivify_984
    new $P2165, "Undef"
  vivify_984:
    unless $P2165, if_2163_end
.annotate 'line', 1533
    find_lex $P2166, "$stderr"
    unless_null $P2166, vivify_985
    new $P2166, "Undef"
  vivify_985:
    new $P2167, 'String'
    set $P2167, "Stage "
    find_lex $P2168, "$_"
    unless_null $P2168, vivify_986
    new $P2168, "Undef"
  vivify_986:
    concat $P2169, $P2167, $P2168
    concat $P2170, $P2169, ": "
    find_lex $P2171, "$diff"
    unless_null $P2171, vivify_987
    new $P2171, "Undef"
  vivify_987:
    concat $P2172, $P2170, $P2171
    concat $P2173, $P2172, "\n"
    $P2166."print__N"($P2173)
  if_2163_end:
.annotate 'line', 1535
    find_lex $P2176, "$_"
    unless_null $P2176, vivify_988
    new $P2176, "Undef"
  vivify_988:
    set $S2177, $P2176
    find_lex $P2178, "$target"
    unless_null $P2178, vivify_989
    new $P2178, "Undef"
  vivify_989:
    set $S2179, $P2178
    iseq $I2180, $S2177, $S2179
    if $I2180, if_2175
    new $P2174, 'Integer'
    set $P2174, $I2180
    goto if_2175_end
  if_2175:
    set $I2181, .CONTROL_LOOP_LAST
    die 0, $I2181
  if_2175_end:
.annotate 'line', 1527
    .return ($P2174)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("253_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2189
    .param pmc param_2190
    .param pmc param_2191 :slurpy :named
.annotate 'line', 1540
    .lex "self", param_2189
    .lex "$source", param_2190
    .lex "%adverbs", param_2191
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
.sub "past"  :subid("254_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2193
    .param pmc param_2194
    .param pmc param_2195 :slurpy :named
.annotate 'line', 1589
    .lex "self", param_2193
    .lex "$source", param_2194
    .lex "%adverbs", param_2195
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
.sub "post"  :subid("255_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2197
    .param pmc param_2198
    .param pmc param_2199 :slurpy :named
.annotate 'line', 1629
    .lex "self", param_2197
    .lex "$source", param_2198
    .lex "%adverbs", param_2199
.annotate 'line', 1630
    compreg $P2200, "PAST"
    find_lex $P2201, "$source"
    unless_null $P2201, vivify_991
    new $P2201, "Undef"
  vivify_991:
    find_lex $P2202, "%adverbs"
    unless_null $P2202, vivify_992
    $P2202 = root_new ['parrot';'Hash']
  vivify_992:
    $P2203 = $P2200."to_post"($P2201, $P2202 :flat)
.annotate 'line', 1629
    .return ($P2203)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("256_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2205
    .param pmc param_2206
    .param pmc param_2207 :slurpy :named
.annotate 'line', 1633
    .lex "self", param_2205
    .lex "$source", param_2206
    .lex "%adverbs", param_2207
.annotate 'line', 1634
    compreg $P2208, "POST"
    find_lex $P2209, "$source"
    unless_null $P2209, vivify_993
    new $P2209, "Undef"
  vivify_993:
    find_lex $P2210, "%adverbs"
    unless_null $P2210, vivify_994
    $P2210 = root_new ['parrot';'Hash']
  vivify_994:
    $P2211 = $P2208."to_pir"($P2209, $P2210 :flat)
.annotate 'line', 1633
    .return ($P2211)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("257_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2213
    .param pmc param_2214
    .param pmc param_2215 :slurpy :named
.annotate 'line', 1637
    .lex "self", param_2213
    .lex "$source", param_2214
    .lex "%adverbs", param_2215
.annotate 'line', 1638
    new $P2216, "Undef"
    .lex "$compiler", $P2216
    compreg $P2217, "PIR"
    store_lex "$compiler", $P2217
.annotate 'line', 1639
    find_lex $P2218, "$compiler"
    unless_null $P2218, vivify_995
    new $P2218, "Undef"
  vivify_995:
    find_lex $P2219, "$source"
    unless_null $P2219, vivify_996
    new $P2219, "Undef"
  vivify_996:
    $P2220 = $P2218($P2219)
.annotate 'line', 1637
    .return ($P2220)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("258_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2222
    .param pmc param_2223
    .param pmc param_2224
    .param pmc param_2225 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2231 = "259_1304282264.655" 
    capture_lex $P2231
    .lex "self", param_2222
    .lex "$obj", param_2223
    .lex "$name", param_2224
    .lex "%options", param_2225
.annotate 'line', 1643
    find_lex $P2228, "%options"
    unless_null $P2228, vivify_997
    $P2228 = root_new ['parrot';'Hash']
  vivify_997:
    set $P2229, $P2228["dumper"]
    unless_null $P2229, vivify_998
    new $P2229, "Undef"
  vivify_998:
    if $P2229, if_2227
.annotate 'line', 1649
    find_lex $P2247, "$obj"
    unless_null $P2247, vivify_999
    new $P2247, "Undef"
  vivify_999:
    find_lex $P2248, "$name"
    unless_null $P2248, vivify_1000
    new $P2248, "Undef"
  vivify_1000:
    $P2249 = "_dumper"($P2247, $P2248)
.annotate 'line', 1648
    set $P2226, $P2249
.annotate 'line', 1643
    goto if_2227_end
  if_2227:
    .const 'Sub' $P2231 = "259_1304282264.655" 
    capture_lex $P2231
    $P2246 = $P2231()
    set $P2226, $P2246
  if_2227_end:
.annotate 'line', 1642
    .return ($P2226)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2230"  :anon :subid("259_1304282264.655") :outer("258_1304282264.655")
.annotate 'line', 1645
    new $P2232, "Undef"
    .lex "$dumper", $P2232
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2233, "%options"
    unless_null $P2233, vivify_1001
    $P2233 = root_new ['parrot';'Hash']
  vivify_1001:
    set $P2234, $P2233["dumper"]
    unless_null $P2234, vivify_1002
    new $P2234, "Undef"
  vivify_1002:
    set $S2235, $P2234
    downcase $S2236, $S2235
    get_hll_global $P2237, "GLOBAL"
    nqp_get_package_through_who $P2238, $P2237, "PCT"
    get_who $P2239, $P2238
    set $P2240, $P2239["Dumper"]
    unless_null $P2240, vivify_1003
    $P2240 = root_new ['parrot';'Hash']
  vivify_1003:
    set $P2241, $P2240[$S2236]
    unless_null $P2241, vivify_1004
    new $P2241, "Undef"
  vivify_1004:
    store_lex "$dumper", $P2241
.annotate 'line', 1646
    find_lex $P2242, "$dumper"
    unless_null $P2242, vivify_1005
    new $P2242, "Undef"
  vivify_1005:
    find_lex $P2243, "$obj"
    unless_null $P2243, vivify_1006
    new $P2243, "Undef"
  vivify_1006:
    find_lex $P2244, "$name"
    unless_null $P2244, vivify_1007
    new $P2244, "Undef"
  vivify_1007:
    $P2245 = $P2242($P2243, $P2244)
.annotate 'line', 1643
    .return ($P2245)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("260_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2251
    .param pmc param_2252 :optional
    .param int has_param_2252 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2251
    if has_param_2252, optparam_1008
    new $P2253, "Undef"
    set param_2252, $P2253
  optparam_1008:
    .lex "$name", param_2252
.annotate 'line', 1654
    find_lex $P2255, "$name"
    unless_null $P2255, vivify_1009
    new $P2255, "Undef"
  vivify_1009:
    unless $P2255, if_2254_end
.annotate 'line', 1655
    find_lex $P2256, "$name"
    unless_null $P2256, vivify_1010
    new $P2256, "Undef"
  vivify_1010:
    "say"($P2256)
  if_2254_end:
.annotate 'line', 1657
    find_lex $P2257, "self"
    find_lex $P2258, "$?CLASS"
    getattribute $P2259, $P2257, $P2258, "$!usage"
    unless_null $P2259, vivify_1011
    new $P2259, "Undef"
  vivify_1011:
    say $P2259
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("261_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2261
.annotate 'line', 1661
    .lex "self", param_2261
.annotate 'line', 1662
    find_lex $P2262, "self"
    find_lex $P2263, "$?CLASS"
    getattribute $P2264, $P2262, $P2263, "$!version"
    unless_null $P2264, vivify_1012
    new $P2264, "Undef"
  vivify_1012:
    say $P2264
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("262_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2266
    .param pmc param_2267
.annotate 'line', 1666
    .const 'Sub' $P2277 = "263_1304282264.655" 
    capture_lex $P2277
    .lex "self", param_2266
    .lex "$stagename", param_2267
.annotate 'line', 1667
    $P2268 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2268
    new $P2269, "ResizableStringArray"
    store_lex "@new_stages", $P2269
.annotate 'line', 1668
    find_lex $P2271, "self"
    find_lex $P2272, "$?CLASS"
    getattribute $P2273, $P2271, $P2272, "@!stages"
    unless_null $P2273, vivify_1013
    $P2273 = root_new ['parrot';'ResizablePMCArray']
  vivify_1013:
    defined $I2274, $P2273
    unless $I2274, for_undef_1014
    iter $P2270, $P2273
    new $P2290, 'ExceptionHandler'
    set_label $P2290, loop2289_handler
    $P2290."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2290
  loop2289_test:
    unless $P2270, loop2289_done
    shift $P2275, $P2270
  loop2289_redo:
    .const 'Sub' $P2277 = "263_1304282264.655" 
    capture_lex $P2277
    $P2277($P2275)
  loop2289_next:
    goto loop2289_test
  loop2289_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2291, exception, 'type'
    eq $P2291, .CONTROL_LOOP_NEXT, loop2289_next
    eq $P2291, .CONTROL_LOOP_REDO, loop2289_redo
  loop2289_done:
    pop_eh 
  for_undef_1014:
.annotate 'line', 1673
    find_lex $P2292, "@new_stages"
    unless_null $P2292, vivify_1019
    $P2292 = root_new ['parrot';'ResizablePMCArray']
  vivify_1019:
    find_lex $P2293, "self"
    find_lex $P2294, "$?CLASS"
    setattribute $P2293, $P2294, "@!stages", $P2292
.annotate 'line', 1666
    .return ($P2292)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2276"  :anon :subid("263_1304282264.655") :outer("262_1304282264.655")
    .param pmc param_2278
.annotate 'line', 1668
    .lex "$_", param_2278
.annotate 'line', 1669
    find_lex $P2281, "$_"
    unless_null $P2281, vivify_1015
    new $P2281, "Undef"
  vivify_1015:
    set $S2282, $P2281
    find_lex $P2283, "$stagename"
    unless_null $P2283, vivify_1016
    new $P2283, "Undef"
  vivify_1016:
    set $S2284, $P2283
    isne $I2285, $S2282, $S2284
    if $I2285, if_2280
    new $P2279, 'Integer'
    set $P2279, $I2285
    goto if_2280_end
  if_2280:
.annotate 'line', 1670
    find_lex $P2286, "@new_stages"
    unless_null $P2286, vivify_1017
    $P2286 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    find_lex $P2287, "$_"
    unless_null $P2287, vivify_1018
    new $P2287, "Undef"
  vivify_1018:
    $P2288 = $P2286."push"($P2287)
.annotate 'line', 1669
    set $P2279, $P2288
  if_2280_end:
.annotate 'line', 1668
    .return ($P2279)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("264_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2298
    .param pmc param_2299
    .param pmc param_2300 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2337 = "266_1304282264.655" 
    capture_lex $P2337
    .const 'Sub' $P2319 = "265_1304282264.655" 
    capture_lex $P2319
    new $P2297, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2297, control_2296
    push_eh $P2297
    .lex "self", param_2298
    .lex "$stagename", param_2299
    .lex "%adverbs", param_2300
.annotate 'line', 1677
    new $P2301, "Undef"
    .lex "$position", $P2301
.annotate 'line', 1678
    new $P2302, "Undef"
    .lex "$where", $P2302
.annotate 'line', 1691
    $P2303 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2303
.annotate 'line', 1676
    find_lex $P2304, "$position"
    unless_null $P2304, vivify_1020
    new $P2304, "Undef"
  vivify_1020:
    find_lex $P2305, "$where"
    unless_null $P2305, vivify_1021
    new $P2305, "Undef"
  vivify_1021:
.annotate 'line', 1679
    find_lex $P2307, "%adverbs"
    unless_null $P2307, vivify_1022
    $P2307 = root_new ['parrot';'Hash']
  vivify_1022:
    set $P2308, $P2307["before"]
    unless_null $P2308, vivify_1023
    new $P2308, "Undef"
  vivify_1023:
    if $P2308, if_2306
.annotate 'line', 1682
    find_lex $P2313, "%adverbs"
    unless_null $P2313, vivify_1024
    $P2313 = root_new ['parrot';'Hash']
  vivify_1024:
    set $P2314, $P2313["after"]
    unless_null $P2314, vivify_1025
    new $P2314, "Undef"
  vivify_1025:
    if $P2314, if_2312
.annotate 'line', 1685
    .const 'Sub' $P2319 = "265_1304282264.655" 
    capture_lex $P2319
    $P2319()
    goto if_2312_end
  if_2312:
.annotate 'line', 1683
    find_lex $P2315, "%adverbs"
    unless_null $P2315, vivify_1029
    $P2315 = root_new ['parrot';'Hash']
  vivify_1029:
    set $P2316, $P2315["after"]
    unless_null $P2316, vivify_1030
    new $P2316, "Undef"
  vivify_1030:
    store_lex "$where", $P2316
.annotate 'line', 1684
    new $P2317, "String"
    assign $P2317, "after"
    store_lex "$position", $P2317
  if_2312_end:
.annotate 'line', 1682
    goto if_2306_end
  if_2306:
.annotate 'line', 1680
    find_lex $P2309, "%adverbs"
    unless_null $P2309, vivify_1031
    $P2309 = root_new ['parrot';'Hash']
  vivify_1031:
    set $P2310, $P2309["before"]
    unless_null $P2310, vivify_1032
    new $P2310, "Undef"
  vivify_1032:
    store_lex "$where", $P2310
.annotate 'line', 1681
    new $P2311, "String"
    assign $P2311, "before"
    store_lex "$position", $P2311
  if_2306_end:
.annotate 'line', 1691
    new $P2330, "ResizableStringArray"
    store_lex "@new-stages", $P2330
.annotate 'line', 1692
    find_lex $P2332, "self"
    $P2333 = $P2332."stages"()
    defined $I2334, $P2333
    unless $I2334, for_undef_1033
    iter $P2331, $P2333
    new $P2362, 'ExceptionHandler'
    set_label $P2362, loop2361_handler
    $P2362."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2362
  loop2361_test:
    unless $P2331, loop2361_done
    shift $P2335, $P2331
  loop2361_redo:
    .const 'Sub' $P2337 = "266_1304282264.655" 
    capture_lex $P2337
    $P2337($P2335)
  loop2361_next:
    goto loop2361_test
  loop2361_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2363, exception, 'type'
    eq $P2363, .CONTROL_LOOP_NEXT, loop2361_next
    eq $P2363, .CONTROL_LOOP_REDO, loop2361_redo
  loop2361_done:
    pop_eh 
  for_undef_1033:
.annotate 'line', 1705
    find_lex $P2364, "self"
    find_lex $P2365, "@new-stages"
    unless_null $P2365, vivify_1047
    $P2365 = root_new ['parrot';'ResizablePMCArray']
  vivify_1047:
    $P2366 = $P2364."stages"($P2365)
.annotate 'line', 1676
    .return ($P2366)
  control_2296:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2367, exception, "payload"
    .return ($P2367)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2318"  :anon :subid("265_1304282264.655") :outer("264_1304282264.655")
.annotate 'line', 1686
    $P2320 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2320
    find_lex $P2321, "self"
    $P2322 = $P2321."stages"()
    clone $P2323, $P2322
    store_lex "@new-stages", $P2323
.annotate 'line', 1687
    find_lex $P2324, "@new-stages"
    unless_null $P2324, vivify_1026
    $P2324 = root_new ['parrot';'ResizablePMCArray']
  vivify_1026:
    find_lex $P2325, "$stagename"
    unless_null $P2325, vivify_1027
    new $P2325, "Undef"
  vivify_1027:
    push $P2324, $P2325
.annotate 'line', 1688
    find_lex $P2326, "self"
    find_lex $P2327, "@new-stages"
    unless_null $P2327, vivify_1028
    $P2327 = root_new ['parrot';'ResizablePMCArray']
  vivify_1028:
    $P2326."stages"($P2327)
.annotate 'line', 1689
    new $P2328, "Exception"
    set $P2328['type'], .CONTROL_RETURN
    new $P2329, "Integer"
    assign $P2329, 1
    setattribute $P2328, 'payload', $P2329
    throw $P2328
.annotate 'line', 1685
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2336"  :anon :subid("266_1304282264.655") :outer("264_1304282264.655")
    .param pmc param_2338
.annotate 'line', 1692
    .lex "$_", param_2338
.annotate 'line', 1693
    find_lex $P2341, "$_"
    unless_null $P2341, vivify_1034
    new $P2341, "Undef"
  vivify_1034:
    set $S2342, $P2341
    find_lex $P2343, "$where"
    unless_null $P2343, vivify_1035
    new $P2343, "Undef"
  vivify_1035:
    set $S2344, $P2343
    iseq $I2345, $S2342, $S2344
    if $I2345, if_2340
.annotate 'line', 1702
    find_lex $P2359, "@new-stages"
    unless_null $P2359, vivify_1036
    $P2359 = root_new ['parrot';'ResizablePMCArray']
  vivify_1036:
    find_lex $P2360, "$_"
    unless_null $P2360, vivify_1037
    new $P2360, "Undef"
  vivify_1037:
    push $P2359, $P2360
.annotate 'line', 1701
    set $P2339, $P2359
.annotate 'line', 1693
    goto if_2340_end
  if_2340:
.annotate 'line', 1694
    find_lex $P2348, "$position"
    unless_null $P2348, vivify_1038
    new $P2348, "Undef"
  vivify_1038:
    set $S2349, $P2348
    iseq $I2350, $S2349, "before"
    if $I2350, if_2347
.annotate 'line', 1698
    find_lex $P2355, "@new-stages"
    unless_null $P2355, vivify_1039
    $P2355 = root_new ['parrot';'ResizablePMCArray']
  vivify_1039:
    find_lex $P2356, "$_"
    unless_null $P2356, vivify_1040
    new $P2356, "Undef"
  vivify_1040:
    push $P2355, $P2356
.annotate 'line', 1699
    find_lex $P2357, "@new-stages"
    unless_null $P2357, vivify_1041
    $P2357 = root_new ['parrot';'ResizablePMCArray']
  vivify_1041:
    find_lex $P2358, "$stagename"
    unless_null $P2358, vivify_1042
    new $P2358, "Undef"
  vivify_1042:
    push $P2357, $P2358
.annotate 'line', 1697
    set $P2346, $P2357
.annotate 'line', 1694
    goto if_2347_end
  if_2347:
.annotate 'line', 1695
    find_lex $P2351, "@new-stages"
    unless_null $P2351, vivify_1043
    $P2351 = root_new ['parrot';'ResizablePMCArray']
  vivify_1043:
    find_lex $P2352, "$stagename"
    unless_null $P2352, vivify_1044
    new $P2352, "Undef"
  vivify_1044:
    push $P2351, $P2352
.annotate 'line', 1696
    find_lex $P2353, "@new-stages"
    unless_null $P2353, vivify_1045
    $P2353 = root_new ['parrot';'ResizablePMCArray']
  vivify_1045:
    find_lex $P2354, "$_"
    unless_null $P2354, vivify_1046
    new $P2354, "Undef"
  vivify_1046:
    push $P2353, $P2354
.annotate 'line', 1694
    set $P2346, $P2353
  if_2347_end:
.annotate 'line', 1693
    set $P2339, $P2346
  if_2340_end:
.annotate 'line', 1692
    .return ($P2339)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("267_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2369
    .param pmc param_2370
.annotate 'line', 1708
    .const 'Sub' $P2408 = "268_1304282264.655" 
    capture_lex $P2408
    .lex "self", param_2369
    .lex "$name", param_2370
.annotate 'line', 1709
    $P2371 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2371
.annotate 'line', 1710
    new $P2372, "Undef"
    .lex "$sigil", $P2372
.annotate 'line', 1713
    new $P2373, "Undef"
    .lex "$idx", $P2373
.annotate 'line', 1721
    $P2374 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2374
.annotate 'line', 1709
    find_lex $P2375, "$name"
    unless_null $P2375, vivify_1048
    new $P2375, "Undef"
  vivify_1048:
    set $S2376, $P2375
    split $P2377, "::", $S2376
    store_lex "@ns", $P2377
.annotate 'line', 1710
    find_lex $P2378, "@ns"
    unless_null $P2378, vivify_1049
    $P2378 = root_new ['parrot';'ResizablePMCArray']
  vivify_1049:
    set $P2379, $P2378[0]
    unless_null $P2379, vivify_1050
    new $P2379, "Undef"
  vivify_1050:
    set $S2380, $P2379
    substr $S2381, $S2380, 0, 1
    new $P2382, 'String'
    set $P2382, $S2381
    store_lex "$sigil", $P2382
.annotate 'line', 1713
    find_lex $P2383, "$sigil"
    unless_null $P2383, vivify_1051
    new $P2383, "Undef"
  vivify_1051:
    set $S2384, $P2383
    index $I2385, "$@%&", $S2384
    new $P2386, 'Integer'
    set $P2386, $I2385
    store_lex "$idx", $P2386
.annotate 'line', 1714
    find_lex $P2388, "$idx"
    unless_null $P2388, vivify_1052
    new $P2388, "Undef"
  vivify_1052:
    set $N2389, $P2388
    isge $I2390, $N2389, 0.0
    unless $I2390, if_2387_end
.annotate 'line', 1715
    find_lex $P2391, "@ns"
    unless_null $P2391, vivify_1053
    $P2391 = root_new ['parrot';'ResizablePMCArray']
  vivify_1053:
    set $P2392, $P2391[0]
    unless_null $P2392, vivify_1054
    new $P2392, "Undef"
  vivify_1054:
    set $S2393, $P2392
    substr $S2394, $S2393, 1
    new $P2395, 'String'
    set $P2395, $S2394
    find_lex $P2396, "@ns"
    unless_null $P2396, vivify_1055
    $P2396 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2396
  vivify_1055:
    set $P2396[0], $P2395
.annotate 'line', 1716
    find_lex $P2397, "$sigil"
    unless_null $P2397, vivify_1056
    new $P2397, "Undef"
  vivify_1056:
    find_lex $P2398, "@ns"
    unless_null $P2398, vivify_1057
    $P2398 = root_new ['parrot';'ResizablePMCArray']
  vivify_1057:
    set $P2399, $P2398[-1]
    unless_null $P2399, vivify_1058
    new $P2399, "Undef"
  vivify_1058:
    concat $P2400, $P2397, $P2399
    find_lex $P2401, "@ns"
    unless_null $P2401, vivify_1059
    $P2401 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2401
  vivify_1059:
    set $P2401[-1], $P2400
  if_2387_end:
.annotate 'line', 1714
    find_lex $P2402, "@actual_ns"
    unless_null $P2402, vivify_1060
    $P2402 = root_new ['parrot';'ResizablePMCArray']
  vivify_1060:
.annotate 'line', 1722
    find_lex $P2404, "@ns"
    unless_null $P2404, vivify_1061
    $P2404 = root_new ['parrot';'ResizablePMCArray']
  vivify_1061:
    defined $I2405, $P2404
    unless $I2405, for_undef_1062
    iter $P2403, $P2404
    new $P2418, 'ExceptionHandler'
    set_label $P2418, loop2417_handler
    $P2418."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2418
  loop2417_test:
    unless $P2403, loop2417_done
    shift $P2406, $P2403
  loop2417_redo:
    .const 'Sub' $P2408 = "268_1304282264.655" 
    capture_lex $P2408
    $P2408($P2406)
  loop2417_next:
    goto loop2417_test
  loop2417_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2419, exception, 'type'
    eq $P2419, .CONTROL_LOOP_NEXT, loop2417_next
    eq $P2419, .CONTROL_LOOP_REDO, loop2417_redo
  loop2417_done:
    pop_eh 
  for_undef_1062:
    find_lex $P2420, "@actual_ns"
    unless_null $P2420, vivify_1066
    $P2420 = root_new ['parrot';'ResizablePMCArray']
  vivify_1066:
.annotate 'line', 1708
    .return ($P2420)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2407"  :anon :subid("268_1304282264.655") :outer("267_1304282264.655")
    .param pmc param_2409
.annotate 'line', 1722
    .lex "$_", param_2409
.annotate 'line', 1723
    find_lex $P2412, "$_"
    unless_null $P2412, vivify_1063
    new $P2412, "Undef"
  vivify_1063:
    set $S2413, $P2412
    iseq $I2414, $S2413, ""
    unless $I2414, unless_2411
    new $P2410, 'Integer'
    set $P2410, $I2414
    goto unless_2411_end
  unless_2411:
    find_lex $P2415, "@actual_ns"
    unless_null $P2415, vivify_1064
    $P2415 = root_new ['parrot';'ResizablePMCArray']
  vivify_1064:
    find_lex $P2416, "$_"
    unless_null $P2416, vivify_1065
    new $P2416, "Undef"
  vivify_1065:
    push $P2415, $P2416
    set $P2410, $P2415
  unless_2411_end:
.annotate 'line', 1722
    .return ($P2410)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("269_1304282264.655") :outer("204_1304282264.655")
    .param pmc param_2422
    .param pmc param_2423
    .param pmc param_2424
    .param pmc param_2425 :optional :named("cache")
    .param int has_param_2425 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2422
    .lex "$target", param_2423
    .lex "$pos", param_2424
    if has_param_2425, optparam_1067
    new $P2426, "Undef"
    set param_2425, $P2426
  optparam_1067:
    .lex "$cache", param_2425
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
.sub "_block2439"  :subid("271_1304282264.655") :outer("10_1304282264.655")
.annotate 'line', 1885
    .const 'Sub' $P2518 = "278_1304282264.655" 
    capture_lex $P2518
    .const 'Sub' $P2468 = "276_1304282264.655" 
    capture_lex $P2468
    .const 'Sub' $P2461 = "275_1304282264.655" 
    capture_lex $P2461
    .const 'Sub' $P2456 = "274_1304282264.655" 
    capture_lex $P2456
    .const 'Sub' $P2451 = "273_1304282264.655" 
    capture_lex $P2451
    .const 'Sub' $P2443 = "272_1304282264.655" 
    capture_lex $P2443
    .lex "$?PACKAGE", $P2441
    .lex "$?CLASS", $P2442
.annotate 'line', 1901
    .const 'Sub' $P2468 = "276_1304282264.655" 
    newclosure $P2516, $P2468
.annotate 'line', 1885
    .return ($P2516)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1069") :outer("271_1304282264.655")
.annotate 'line', 1885
    .const 'Sub' $P2440 = "271_1304282264.655" 
    .local pmc block
    set block, $P2440
    .const 'Sub' $P2518 = "278_1304282264.655" 
    capture_lex $P2518
    $P2518()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2517"  :anon :subid("278_1304282264.655") :outer("271_1304282264.655")
.annotate 'line', 1885
    nqp_get_sc_object $P2519, "1304282255.673", 175
    .local pmc type_obj
    set type_obj, $P2519
    get_how $P2520, type_obj
    $P2521 = $P2520."compose"(type_obj)
    .return ($P2521)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("272_1304282264.655") :outer("271_1304282264.655")
    .param pmc param_2444
.annotate 'line', 1889
    .lex "self", param_2444
.annotate 'line', 1890
    new $P2445, "ResizablePMCArray"
    find_lex $P2446, "self"
    find_lex $P2447, "$?CLASS"
    setattribute $P2446, $P2447, "@!arguments", $P2445
.annotate 'line', 1891
    new $P2448, "Hash"
    find_lex $P2449, "self"
    find_lex $P2450, "$?CLASS"
    setattribute $P2449, $P2450, "%!options", $P2448
.annotate 'line', 1889
    .return ($P2448)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("273_1304282264.655") :outer("271_1304282264.655")
    .param pmc param_2452
.annotate 'line', 1894
    .lex "self", param_2452
    find_lex $P2453, "self"
    find_lex $P2454, "$?CLASS"
    getattribute $P2455, $P2453, $P2454, "@!arguments"
    unless_null $P2455, vivify_1070
    $P2455 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    .return ($P2455)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("274_1304282264.655") :outer("271_1304282264.655")
    .param pmc param_2457
.annotate 'line', 1895
    .lex "self", param_2457
    find_lex $P2458, "self"
    find_lex $P2459, "$?CLASS"
    getattribute $P2460, $P2458, $P2459, "%!options"
    unless_null $P2460, vivify_1071
    $P2460 = root_new ['parrot';'Hash']
  vivify_1071:
    .return ($P2460)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("275_1304282264.655") :outer("271_1304282264.655")
    .param pmc param_2462
    .param pmc param_2463
.annotate 'line', 1897
    .lex "self", param_2462
    .lex "$x", param_2463
.annotate 'line', 1898
    find_lex $P2464, "self"
    find_lex $P2465, "$?CLASS"
    getattribute $P2466, $P2464, $P2465, "@!arguments"
    unless_null $P2466, vivify_1072
    $P2466 = root_new ['parrot';'ResizablePMCArray']
  vivify_1072:
    find_lex $P2467, "$x"
    unless_null $P2467, vivify_1073
    new $P2467, "Undef"
  vivify_1073:
    push $P2466, $P2467
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("276_1304282264.655") :outer("271_1304282264.655")
    .param pmc param_2469
    .param pmc param_2470
    .param pmc param_2471
.annotate 'line', 1901
    .const 'Sub' $P2480 = "277_1304282264.655" 
    capture_lex $P2480
    .lex "self", param_2469
    .lex "$name", param_2470
    .lex "$value", param_2471
.annotate 'line', 1904
    find_lex $P2477, "$name"
    unless_null $P2477, vivify_1074
    new $P2477, "Undef"
  vivify_1074:
    find_lex $P2474, "self"
    find_lex $P2475, "$?CLASS"
    getattribute $P2476, $P2474, $P2475, "%!options"
    unless_null $P2476, vivify_1075
    $P2476 = root_new ['parrot';'Hash']
  vivify_1075:
    exists $I2478, $P2476[$P2477]
    if $I2478, if_2473
.annotate 'line', 1913
    find_lex $P2511, "$value"
    unless_null $P2511, vivify_1076
    new $P2511, "Undef"
  vivify_1076:
    find_lex $P2512, "$name"
    unless_null $P2512, vivify_1077
    new $P2512, "Undef"
  vivify_1077:
    find_lex $P2513, "self"
    find_lex $P2514, "$?CLASS"
    getattribute $P2515, $P2513, $P2514, "%!options"
    unless_null $P2515, vivify_1078
    $P2515 = root_new ['parrot';'Hash']
    setattribute $P2513, $P2514, "%!options", $P2515
  vivify_1078:
    set $P2515[$P2512], $P2511
.annotate 'line', 1912
    set $P2472, $P2511
.annotate 'line', 1904
    goto if_2473_end
  if_2473:
    .const 'Sub' $P2480 = "277_1304282264.655" 
    capture_lex $P2480
    $P2510 = $P2480()
    set $P2472, $P2510
  if_2473_end:
.annotate 'line', 1901
    .return ($P2472)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2479"  :anon :subid("277_1304282264.655") :outer("276_1304282264.655")
.annotate 'line', 1905
    new $P2481, "Undef"
    .lex "$t", $P2481
    find_lex $P2482, "self"
    find_lex $P2483, "$?CLASS"
    getattribute $P2484, $P2482, $P2483, "%!options"
    unless_null $P2484, vivify_1079
    $P2484 = root_new ['parrot';'Hash']
  vivify_1079:
    typeof $S2485, $P2484
    new $P2486, 'String'
    set $P2486, $S2485
    store_lex "$t", $P2486
.annotate 'line', 1906
    find_lex $P2487, "$t"
    unless_null $P2487, vivify_1080
    new $P2487, "Undef"
  vivify_1080:
    "say"($P2487)
.annotate 'line', 1907
    find_lex $P2490, "$t"
    unless_null $P2490, vivify_1081
    new $P2490, "Undef"
  vivify_1081:
    set $S2491, $P2490
    iseq $I2492, $S2491, "ResizablePMCArray"
    if $I2492, if_2489
.annotate 'line', 1910
    find_lex $P2499, "$name"
    unless_null $P2499, vivify_1082
    new $P2499, "Undef"
  vivify_1082:
    find_lex $P2500, "self"
    find_lex $P2501, "$?CLASS"
    getattribute $P2502, $P2500, $P2501, "%!options"
    unless_null $P2502, vivify_1083
    $P2502 = root_new ['parrot';'Hash']
  vivify_1083:
    set $P2503, $P2502[$P2499]
    unless_null $P2503, vivify_1084
    new $P2503, "Undef"
  vivify_1084:
    find_lex $P2504, "$name"
    unless_null $P2504, vivify_1085
    new $P2504, "Undef"
  vivify_1085:
    new $P2505, "ResizablePMCArray"
    push $P2505, $P2503
    push $P2505, $P2504
    find_lex $P2506, "$name"
    unless_null $P2506, vivify_1086
    new $P2506, "Undef"
  vivify_1086:
    find_lex $P2507, "self"
    find_lex $P2508, "$?CLASS"
    getattribute $P2509, $P2507, $P2508, "%!options"
    unless_null $P2509, vivify_1087
    $P2509 = root_new ['parrot';'Hash']
    setattribute $P2507, $P2508, "%!options", $P2509
  vivify_1087:
    set $P2509[$P2506], $P2505
.annotate 'line', 1909
    set $P2488, $P2505
.annotate 'line', 1907
    goto if_2489_end
  if_2489:
.annotate 'line', 1908
    find_lex $P2493, "$name"
    unless_null $P2493, vivify_1088
    new $P2493, "Undef"
  vivify_1088:
    find_lex $P2494, "self"
    find_lex $P2495, "$?CLASS"
    getattribute $P2496, $P2494, $P2495, "%!options"
    unless_null $P2496, vivify_1089
    $P2496 = root_new ['parrot';'Hash']
  vivify_1089:
    set $P2497, $P2496[$P2493]
    unless_null $P2497, vivify_1090
    new $P2497, "Undef"
  vivify_1090:
    find_lex $P2498, "$value"
    unless_null $P2498, vivify_1091
    new $P2498, "Undef"
  vivify_1091:
    push $P2497, $P2498
.annotate 'line', 1907
    set $P2488, $P2497
  if_2489_end:
.annotate 'line', 1904
    .return ($P2488)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2522"  :subid("279_1304282264.655") :outer("10_1304282264.655")
.annotate 'line', 1918
    .const 'Sub' $P2952 = "298_1304282264.655" 
    capture_lex $P2952
    .const 'Sub' $P2663 = "290_1304282264.655" 
    capture_lex $P2663
    .const 'Sub' $P2651 = "289_1304282264.655" 
    capture_lex $P2651
    .const 'Sub' $P2627 = "288_1304282264.655" 
    capture_lex $P2627
    .const 'Sub' $P2578 = "286_1304282264.655" 
    capture_lex $P2578
    .const 'Sub' $P2572 = "285_1304282264.655" 
    capture_lex $P2572
    .const 'Sub' $P2564 = "284_1304282264.655" 
    capture_lex $P2564
    .const 'Sub' $P2540 = "282_1304282264.655" 
    capture_lex $P2540
    .const 'Sub' $P2535 = "281_1304282264.655" 
    capture_lex $P2535
    .const 'Sub' $P2526 = "280_1304282264.655" 
    capture_lex $P2526
    .lex "$?PACKAGE", $P2524
    .lex "$?CLASS", $P2525
.annotate 'line', 1978
    .const 'Sub' $P2663 = "290_1304282264.655" 
    newclosure $P2950, $P2663
.annotate 'line', 1918
    .return ($P2950)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1092") :outer("279_1304282264.655")
.annotate 'line', 1918
    .const 'Sub' $P2523 = "279_1304282264.655" 
    .local pmc block
    set block, $P2523
    .const 'Sub' $P2952 = "298_1304282264.655" 
    capture_lex $P2952
    $P2952()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2951"  :anon :subid("298_1304282264.655") :outer("279_1304282264.655")
.annotate 'line', 1918
    nqp_get_sc_object $P2953, "1304282255.673", 181
    .local pmc type_obj
    set type_obj, $P2953
    get_how $P2954, type_obj
    $P2955 = $P2954."compose"(type_obj)
    .return ($P2955)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("280_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2527
    .param pmc param_2528
.annotate 'line', 1924
    .lex "self", param_2527
    .lex "@specs", param_2528
.annotate 'line', 1925
    new $P2529, "Undef"
    .lex "$obj", $P2529
    find_lex $P2530, "self"
    $P2531 = $P2530."CREATE"()
    store_lex "$obj", $P2531
.annotate 'line', 1926
    find_lex $P2532, "$obj"
    unless_null $P2532, vivify_1093
    new $P2532, "Undef"
  vivify_1093:
    find_lex $P2533, "@specs"
    unless_null $P2533, vivify_1094
    $P2533 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    $P2532."BUILD"($P2533 :named("specs"))
    find_lex $P2534, "$obj"
    unless_null $P2534, vivify_1095
    new $P2534, "Undef"
  vivify_1095:
.annotate 'line', 1924
    .return ($P2534)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("281_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2536
.annotate 'line', 1930
    .lex "self", param_2536
.annotate 'line', 1931
    new $P2537, "Integer"
    assign $P2537, 1
    find_lex $P2538, "self"
    find_lex $P2539, "$?CLASS"
    setattribute $P2538, $P2539, "$!stop-after-first-arg", $P2537
.annotate 'line', 1930
    .return ($P2537)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("282_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2541
    .param pmc param_2542 :optional :named("specs")
    .param int has_param_2542 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2556 = "283_1304282264.655" 
    capture_lex $P2556
    .lex "self", param_2541
    if has_param_2542, optparam_1096
    $P2543 = root_new ['parrot';'ResizablePMCArray']
    set param_2542, $P2543
  optparam_1096:
    .lex "@specs", param_2542
.annotate 'line', 1935
    new $P2544, "Integer"
    assign $P2544, 1
    find_lex $P2545, "self"
    find_lex $P2546, "$?CLASS"
    getattribute $P2547, $P2545, $P2546, "%!stopper"
    unless_null $P2547, vivify_1097
    $P2547 = root_new ['parrot';'Hash']
    setattribute $P2545, $P2546, "%!stopper", $P2547
  vivify_1097:
    set $P2547["--"], $P2544
.annotate 'line', 1936
    new $P2548, "Integer"
    assign $P2548, 0
    find_lex $P2549, "self"
    find_lex $P2550, "$?CLASS"
    setattribute $P2549, $P2550, "$!stop-after-first-arg", $P2548
.annotate 'line', 1937
    find_lex $P2552, "@specs"
    unless_null $P2552, vivify_1098
    $P2552 = root_new ['parrot';'ResizablePMCArray']
  vivify_1098:
    defined $I2553, $P2552
    unless $I2553, for_undef_1099
    iter $P2551, $P2552
    new $P2562, 'ExceptionHandler'
    set_label $P2562, loop2561_handler
    $P2562."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2562
  loop2561_test:
    unless $P2551, loop2561_done
    shift $P2554, $P2551
  loop2561_redo:
    .const 'Sub' $P2556 = "283_1304282264.655" 
    capture_lex $P2556
    $P2556($P2554)
  loop2561_next:
    goto loop2561_test
  loop2561_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2563, exception, 'type'
    eq $P2563, .CONTROL_LOOP_NEXT, loop2561_next
    eq $P2563, .CONTROL_LOOP_REDO, loop2561_redo
  loop2561_done:
    pop_eh 
  for_undef_1099:
.annotate 'line', 1934
    .return ($P2551)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2555"  :anon :subid("283_1304282264.655") :outer("282_1304282264.655")
    .param pmc param_2557
.annotate 'line', 1937
    .lex "$_", param_2557
.annotate 'line', 1938
    find_lex $P2558, "self"
    find_lex $P2559, "$_"
    unless_null $P2559, vivify_1100
    new $P2559, "Undef"
  vivify_1100:
    $P2560 = $P2558."add-spec"($P2559)
.annotate 'line', 1937
    .return ($P2560)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("284_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2565
    .param pmc param_2566
.annotate 'line', 1941
    .lex "self", param_2565
    .lex "$x", param_2566
.annotate 'line', 1942
    new $P2567, "Integer"
    assign $P2567, 1
    find_lex $P2568, "$x"
    unless_null $P2568, vivify_1101
    new $P2568, "Undef"
  vivify_1101:
    find_lex $P2569, "self"
    find_lex $P2570, "$?CLASS"
    getattribute $P2571, $P2569, $P2570, "%!stopper"
    unless_null $P2571, vivify_1102
    $P2571 = root_new ['parrot';'Hash']
    setattribute $P2569, $P2570, "%!stopper", $P2571
  vivify_1102:
    set $P2571[$P2568], $P2567
.annotate 'line', 1941
    .return ($P2567)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("285_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2573
    .param pmc param_2574
.annotate 'line', 1945
    .lex "self", param_2573
    .lex "$s", param_2574
.annotate 'line', 1946
    find_lex $P2575, "$s"
    unless_null $P2575, vivify_1103
    new $P2575, "Undef"
  vivify_1103:
    set $S2576, $P2575
    split $P2577, "|", $S2576
.annotate 'line', 1945
    .return ($P2577)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("286_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2579
    .param pmc param_2580
.annotate 'line', 1950
    .const 'Sub' $P2617 = "287_1304282264.655" 
    capture_lex $P2617
    .lex "self", param_2579
    .lex "$s", param_2580
.annotate 'line', 1951
    new $P2581, "Undef"
    .lex "$i", $P2581
.annotate 'line', 1952
    new $P2582, "Undef"
    .lex "$type", $P2582
.annotate 'line', 1953
    $P2583 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2583
.annotate 'line', 1951
    find_lex $P2584, "$s"
    unless_null $P2584, vivify_1104
    new $P2584, "Undef"
  vivify_1104:
    set $S2585, $P2584
    index $I2586, $S2585, "="
    new $P2587, 'Integer'
    set $P2587, $I2586
    store_lex "$i", $P2587
    find_lex $P2588, "$type"
    unless_null $P2588, vivify_1105
    new $P2588, "Undef"
  vivify_1105:
    find_lex $P2589, "@options"
    unless_null $P2589, vivify_1106
    $P2589 = root_new ['parrot';'ResizablePMCArray']
  vivify_1106:
.annotate 'line', 1954
    find_lex $P2591, "$i"
    unless_null $P2591, vivify_1107
    new $P2591, "Undef"
  vivify_1107:
    set $N2592, $P2591
    islt $I2593, $N2592, 0.0
    if $I2593, if_2590
.annotate 'line', 1958
    find_lex $P2598, "$s"
    unless_null $P2598, vivify_1108
    new $P2598, "Undef"
  vivify_1108:
    set $S2599, $P2598
    find_lex $P2600, "$i"
    unless_null $P2600, vivify_1109
    new $P2600, "Undef"
  vivify_1109:
    add $P2601, $P2600, 1
    set $I2602, $P2601
    substr $S2603, $S2599, $I2602
    new $P2604, 'String'
    set $P2604, $S2603
    store_lex "$type", $P2604
.annotate 'line', 1959
    find_lex $P2605, "self"
    find_lex $P2606, "$s"
    unless_null $P2606, vivify_1110
    new $P2606, "Undef"
  vivify_1110:
    set $S2607, $P2606
    find_lex $P2608, "$i"
    unless_null $P2608, vivify_1111
    new $P2608, "Undef"
  vivify_1111:
    set $I2609, $P2608
    substr $S2610, $S2607, 0, $I2609
    $P2611 = $P2605."split-option-aliases"($S2610)
    store_lex "@options", $P2611
.annotate 'line', 1957
    goto if_2590_end
  if_2590:
.annotate 'line', 1955
    new $P2594, "String"
    assign $P2594, "b"
    store_lex "$type", $P2594
.annotate 'line', 1956
    find_lex $P2595, "self"
    find_lex $P2596, "$s"
    unless_null $P2596, vivify_1112
    new $P2596, "Undef"
  vivify_1112:
    $P2597 = $P2595."split-option-aliases"($P2596)
    store_lex "@options", $P2597
  if_2590_end:
.annotate 'line', 1961
    find_lex $P2613, "@options"
    unless_null $P2613, vivify_1113
    $P2613 = root_new ['parrot';'ResizablePMCArray']
  vivify_1113:
    defined $I2614, $P2613
    unless $I2614, for_undef_1114
    iter $P2612, $P2613
    new $P2625, 'ExceptionHandler'
    set_label $P2625, loop2624_handler
    $P2625."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2625
  loop2624_test:
    unless $P2612, loop2624_done
    shift $P2615, $P2612
  loop2624_redo:
    .const 'Sub' $P2617 = "287_1304282264.655" 
    capture_lex $P2617
    $P2617($P2615)
  loop2624_next:
    goto loop2624_test
  loop2624_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2626, exception, 'type'
    eq $P2626, .CONTROL_LOOP_NEXT, loop2624_next
    eq $P2626, .CONTROL_LOOP_REDO, loop2624_redo
  loop2624_done:
    pop_eh 
  for_undef_1114:
.annotate 'line', 1950
    .return ($P2612)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2616"  :anon :subid("287_1304282264.655") :outer("286_1304282264.655")
    .param pmc param_2618
.annotate 'line', 1961
    .lex "$_", param_2618
.annotate 'line', 1962
    find_lex $P2619, "$type"
    unless_null $P2619, vivify_1115
    new $P2619, "Undef"
  vivify_1115:
    find_lex $P2620, "$_"
    unless_null $P2620, vivify_1116
    new $P2620, "Undef"
  vivify_1116:
    find_lex $P2621, "self"
    find_lex $P2622, "$?CLASS"
    getattribute $P2623, $P2621, $P2622, "%!options"
    unless_null $P2623, vivify_1117
    $P2623 = root_new ['parrot';'Hash']
    setattribute $P2621, $P2622, "%!options", $P2623
  vivify_1117:
    set $P2623[$P2620], $P2619
.annotate 'line', 1961
    .return ($P2619)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("288_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2630
    .param pmc param_2631
.annotate 'line', 1967
    new $P2629, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2629, control_2628
    push_eh $P2629
    .lex "self", param_2630
    .lex "$x", param_2631
.annotate 'line', 1968
    find_lex $P2635, "$x"
    unless_null $P2635, vivify_1118
    new $P2635, "Undef"
  vivify_1118:
    set $S2636, $P2635
    iseq $I2637, $S2636, "-"
    unless $I2637, unless_2634
    new $P2633, 'Integer'
    set $P2633, $I2637
    goto unless_2634_end
  unless_2634:
    find_lex $P2638, "$x"
    unless_null $P2638, vivify_1119
    new $P2638, "Undef"
  vivify_1119:
    set $S2639, $P2638
    iseq $I2640, $S2639, "--"
    new $P2633, 'Integer'
    set $P2633, $I2640
  unless_2634_end:
    unless $P2633, if_2632_end
    new $P2641, "Exception"
    set $P2641['type'], .CONTROL_RETURN
    new $P2642, "Integer"
    assign $P2642, 0
    setattribute $P2641, 'payload', $P2642
    throw $P2641
  if_2632_end:
.annotate 'line', 1969
    find_lex $P2644, "$x"
    unless_null $P2644, vivify_1120
    new $P2644, "Undef"
  vivify_1120:
    set $S2645, $P2644
    substr $S2646, $S2645, 0, 1
    iseq $I2647, $S2646, "-"
    unless $I2647, if_2643_end
    new $P2648, "Exception"
    set $P2648['type'], .CONTROL_RETURN
    new $P2649, "Integer"
    assign $P2649, 1
    setattribute $P2648, 'payload', $P2649
    throw $P2648
  if_2643_end:
.annotate 'line', 1967
    .return (0)
  control_2628:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2650, exception, "payload"
    .return ($P2650)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("289_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2652
    .param pmc param_2653
.annotate 'line', 1973
    .lex "self", param_2652
    .lex "$x", param_2653
.annotate 'line', 1974
    new $P2654, "Undef"
    .lex "$spec", $P2654
    find_lex $P2655, "$x"
    unless_null $P2655, vivify_1121
    new $P2655, "Undef"
  vivify_1121:
    find_lex $P2656, "self"
    find_lex $P2657, "$?CLASS"
    getattribute $P2658, $P2656, $P2657, "%!options"
    unless_null $P2658, vivify_1122
    $P2658 = root_new ['parrot';'Hash']
  vivify_1122:
    set $P2659, $P2658[$P2655]
    unless_null $P2659, vivify_1123
    new $P2659, "Undef"
  vivify_1123:
    store_lex "$spec", $P2659
.annotate 'line', 1975
    find_lex $P2660, "$spec"
    unless_null $P2660, vivify_1124
    new $P2660, "Undef"
  vivify_1124:
    set $S2661, $P2660
    iseq $I2662, $S2661, "s"
.annotate 'line', 1973
    .return ($I2662)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("290_1304282264.655") :outer("279_1304282264.655")
    .param pmc param_2666
    .param pmc param_2667
.annotate 'line', 1978
    .const 'Sub' $P2758 = "293_1304282264.655" 
    capture_lex $P2758
    .const 'Sub' $P2720 = "292_1304282264.655" 
    capture_lex $P2720
    .const 'Sub' $P2671 = "291_1304282264.655" 
    capture_lex $P2671
    new $P2665, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2665, control_2664
    push_eh $P2665
    .lex "self", param_2666
    .lex "@args", param_2667
.annotate 'line', 1979
    new $P2668, "Undef"
    .lex "$i", $P2668
.annotate 'line', 1980
    new $P2669, "Undef"
    .lex "$arg-count", $P2669
.annotate 'line', 1982
    new $P2670, "Undef"
    .lex "$result", $P2670
.annotate 'line', 1986
    .const 'Sub' $P2671 = "291_1304282264.655" 
    newclosure $P2719, $P2671
    .lex "get-value", $P2719
.annotate 'line', 2001
    .const 'Sub' $P2720 = "292_1304282264.655" 
    newclosure $P2738, $P2720
    .lex "slurp-rest", $P2738
.annotate 'line', 1979
    new $P2739, "Integer"
    assign $P2739, 0
    store_lex "$i", $P2739
.annotate 'line', 1980
    find_lex $P2740, "@args"
    unless_null $P2740, vivify_1150
    $P2740 = root_new ['parrot';'ResizablePMCArray']
  vivify_1150:
    set $N2741, $P2740
    new $P2742, 'Float'
    set $P2742, $N2741
    store_lex "$arg-count", $P2742
.annotate 'line', 1982
    get_hll_global $P2743, "GLOBAL"
    nqp_get_package_through_who $P2744, $P2743, "HLL"
    nqp_get_package_through_who $P2745, $P2744, "CommandLine"
    get_who $P2746, $P2745
    set $P2747, $P2746["Result"]
    $P2748 = $P2747."new"()
    store_lex "$result", $P2748
.annotate 'line', 1983
    find_lex $P2749, "$result"
    unless_null $P2749, vivify_1151
    new $P2749, "Undef"
  vivify_1151:
    $P2749."init"()
    find_lex $P2750, "get-value"
    find_lex $P2751, "slurp-rest"
.annotate 'line', 2009
    new $P2945, 'ExceptionHandler'
    set_label $P2945, loop2944_handler
    $P2945."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2945
  loop2944_test:
    find_lex $P2752, "$i"
    unless_null $P2752, vivify_1152
    new $P2752, "Undef"
  vivify_1152:
    set $N2753, $P2752
    find_lex $P2754, "$arg-count"
    unless_null $P2754, vivify_1153
    new $P2754, "Undef"
  vivify_1153:
    set $N2755, $P2754
    islt $I2756, $N2753, $N2755
    unless $I2756, loop2944_done
  loop2944_redo:
    .const 'Sub' $P2758 = "293_1304282264.655" 
    capture_lex $P2758
    $P2758()
  loop2944_next:
    goto loop2944_test
  loop2944_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2946, exception, 'type'
    eq $P2946, .CONTROL_LOOP_NEXT, loop2944_next
    eq $P2946, .CONTROL_LOOP_REDO, loop2944_redo
  loop2944_done:
    pop_eh 
.annotate 'line', 2061
    new $P2947, "Exception"
    set $P2947['type'], .CONTROL_RETURN
    find_lex $P2948, "$result"
    unless_null $P2948, vivify_1214
    new $P2948, "Undef"
  vivify_1214:
    setattribute $P2947, 'payload', $P2948
    throw $P2947
.annotate 'line', 1978
    .return ()
  control_2664:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2949, exception, "payload"
    .return ($P2949)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("291_1304282264.655") :outer("290_1304282264.655")
    .param pmc param_2672
.annotate 'line', 1986
    .lex "$opt", param_2672
.annotate 'line', 1987
    find_lex $P2675, "$i"
    unless_null $P2675, vivify_1125
    new $P2675, "Undef"
  vivify_1125:
    set $N2676, $P2675
    find_lex $P2677, "$arg-count"
    unless_null $P2677, vivify_1126
    new $P2677, "Undef"
  vivify_1126:
    sub $P2678, $P2677, 1
    set $N2679, $P2678
    iseq $I2680, $N2676, $N2679
    if $I2680, if_2674
.annotate 'line', 1989
    find_lex $P2687, "self"
    find_lex $P2688, "$i"
    unless_null $P2688, vivify_1127
    new $P2688, "Undef"
  vivify_1127:
    add $P2689, $P2688, 1
    set $I2690, $P2689
    find_lex $P2691, "@args"
    unless_null $P2691, vivify_1128
    $P2691 = root_new ['parrot';'ResizablePMCArray']
  vivify_1128:
    set $P2692, $P2691[$I2690]
    unless_null $P2692, vivify_1129
    new $P2692, "Undef"
  vivify_1129:
    $P2693 = $P2687."is-option"($P2692)
    if $P2693, if_2686
.annotate 'line', 1991
    find_lex $P2700, "$i"
    unless_null $P2700, vivify_1130
    new $P2700, "Undef"
  vivify_1130:
    add $P2701, $P2700, 1
    set $I2702, $P2701
    find_lex $P2703, "@args"
    unless_null $P2703, vivify_1131
    $P2703 = root_new ['parrot';'ResizablePMCArray']
  vivify_1131:
    set $P2704, $P2703[$I2702]
    unless_null $P2704, vivify_1132
    new $P2704, "Undef"
  vivify_1132:
    find_lex $P2705, "self"
    find_lex $P2706, "$?CLASS"
    getattribute $P2707, $P2705, $P2706, "%!stopper"
    unless_null $P2707, vivify_1133
    $P2707 = root_new ['parrot';'Hash']
  vivify_1133:
    set $P2708, $P2707[$P2704]
    unless_null $P2708, vivify_1134
    new $P2708, "Undef"
  vivify_1134:
    if $P2708, if_2699
.annotate 'line', 1993
    find_lex $P2713, "$i"
    unless_null $P2713, vivify_1135
    new $P2713, "Undef"
  vivify_1135:
    clone $P2714, $P2713
    inc $P2713
    find_lex $P2715, "$i"
    unless_null $P2715, vivify_1136
    new $P2715, "Undef"
  vivify_1136:
    set $I2716, $P2715
    find_lex $P2717, "@args"
    unless_null $P2717, vivify_1137
    $P2717 = root_new ['parrot';'ResizablePMCArray']
  vivify_1137:
    set $P2718, $P2717[$I2716]
    unless_null $P2718, vivify_1138
    new $P2718, "Undef"
  vivify_1138:
    set $P2698, $P2718
.annotate 'line', 1991
    goto if_2699_end
  if_2699:
.annotate 'line', 1992
    new $P2709, 'String'
    set $P2709, "Option "
    find_lex $P2710, "$opt"
    unless_null $P2710, vivify_1139
    new $P2710, "Undef"
  vivify_1139:
    concat $P2711, $P2709, $P2710
    concat $P2712, $P2711, " needs a value, but is followed by a stopper"
    die $P2712
  if_2699_end:
.annotate 'line', 1991
    set $P2685, $P2698
.annotate 'line', 1989
    goto if_2686_end
  if_2686:
.annotate 'line', 1990
    new $P2694, 'String'
    set $P2694, "Option "
    find_lex $P2695, "$opt"
    unless_null $P2695, vivify_1140
    new $P2695, "Undef"
  vivify_1140:
    concat $P2696, $P2694, $P2695
    concat $P2697, $P2696, " needs a value, but is followed by an option"
    die $P2697
  if_2686_end:
.annotate 'line', 1989
    set $P2673, $P2685
.annotate 'line', 1987
    goto if_2674_end
  if_2674:
.annotate 'line', 1988
    new $P2681, 'String'
    set $P2681, "Option "
    find_lex $P2682, "$opt"
    unless_null $P2682, vivify_1141
    new $P2682, "Undef"
  vivify_1141:
    concat $P2683, $P2681, $P2682
    concat $P2684, $P2683, " needs a value"
    die $P2684
  if_2674_end:
.annotate 'line', 1986
    .return ($P2673)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("292_1304282264.655") :outer("290_1304282264.655")
.annotate 'line', 2001
    find_lex $P2721, "$i"
    unless_null $P2721, vivify_1142
    new $P2721, "Undef"
  vivify_1142:
    clone $P2722, $P2721
    inc $P2721
.annotate 'line', 2003
    new $P2736, 'ExceptionHandler'
    set_label $P2736, loop2735_handler
    $P2736."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2736
  loop2735_test:
    find_lex $P2723, "$i"
    unless_null $P2723, vivify_1143
    new $P2723, "Undef"
  vivify_1143:
    set $N2724, $P2723
    find_lex $P2725, "$arg-count"
    unless_null $P2725, vivify_1144
    new $P2725, "Undef"
  vivify_1144:
    set $N2726, $P2725
    islt $I2727, $N2724, $N2726
    unless $I2727, loop2735_done
  loop2735_redo:
.annotate 'line', 2004
    find_lex $P2728, "$result"
    unless_null $P2728, vivify_1145
    new $P2728, "Undef"
  vivify_1145:
    find_lex $P2729, "$i"
    unless_null $P2729, vivify_1146
    new $P2729, "Undef"
  vivify_1146:
    set $I2730, $P2729
    find_lex $P2731, "@args"
    unless_null $P2731, vivify_1147
    $P2731 = root_new ['parrot';'ResizablePMCArray']
  vivify_1147:
    set $P2732, $P2731[$I2730]
    unless_null $P2732, vivify_1148
    new $P2732, "Undef"
  vivify_1148:
    $P2728."add-argument"($P2732)
    find_lex $P2733, "$i"
    unless_null $P2733, vivify_1149
    new $P2733, "Undef"
  vivify_1149:
    clone $P2734, $P2733
    inc $P2733
  loop2735_next:
.annotate 'line', 2003
    goto loop2735_test
  loop2735_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2737, exception, 'type'
    eq $P2737, .CONTROL_LOOP_NEXT, loop2735_next
    eq $P2737, .CONTROL_LOOP_REDO, loop2735_redo
  loop2735_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I2727)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2757"  :anon :subid("293_1304282264.655") :outer("290_1304282264.655")
.annotate 'line', 2009
    .const 'Sub' $P2860 = "295_1304282264.655" 
    capture_lex $P2860
    .const 'Sub' $P2774 = "294_1304282264.655" 
    capture_lex $P2774
.annotate 'line', 2010
    new $P2759, "Undef"
    .lex "$cur", $P2759
    find_lex $P2760, "$i"
    unless_null $P2760, vivify_1154
    new $P2760, "Undef"
  vivify_1154:
    set $I2761, $P2760
    find_lex $P2762, "@args"
    unless_null $P2762, vivify_1155
    $P2762 = root_new ['parrot';'ResizablePMCArray']
  vivify_1155:
    set $P2763, $P2762[$I2761]
    unless_null $P2763, vivify_1156
    new $P2763, "Undef"
  vivify_1156:
    store_lex "$cur", $P2763
.annotate 'line', 2011
    find_lex $P2765, "self"
    find_lex $P2766, "$cur"
    unless_null $P2766, vivify_1157
    new $P2766, "Undef"
  vivify_1157:
    $P2767 = $P2765."is-option"($P2766)
    if $P2767, if_2764
.annotate 'line', 2053
    find_lex $P2931, "$cur"
    unless_null $P2931, vivify_1158
    new $P2931, "Undef"
  vivify_1158:
    find_lex $P2932, "self"
    find_lex $P2933, "$?CLASS"
    getattribute $P2934, $P2932, $P2933, "%!stopper"
    unless_null $P2934, vivify_1159
    $P2934 = root_new ['parrot';'Hash']
  vivify_1159:
    set $P2935, $P2934[$P2931]
    unless_null $P2935, vivify_1160
    new $P2935, "Undef"
  vivify_1160:
    if $P2935, if_2930
.annotate 'line', 2056
    find_lex $P2936, "$result"
    unless_null $P2936, vivify_1161
    new $P2936, "Undef"
  vivify_1161:
    find_lex $P2937, "$cur"
    unless_null $P2937, vivify_1162
    new $P2937, "Undef"
  vivify_1162:
    $P2936."add-argument"($P2937)
.annotate 'line', 2057
    find_lex $P2939, "self"
    find_lex $P2940, "$?CLASS"
    getattribute $P2941, $P2939, $P2940, "$!stop-after-first-arg"
    unless_null $P2941, vivify_1163
    new $P2941, "Undef"
  vivify_1163:
    unless $P2941, if_2938_end
    "slurp-rest"()
  if_2938_end:
.annotate 'line', 2055
    goto if_2930_end
  if_2930:
.annotate 'line', 2054
    "slurp-rest"()
  if_2930_end:
.annotate 'line', 2053
    goto if_2764_end
  if_2764:
.annotate 'line', 2012
    find_lex $P2769, "$cur"
    unless_null $P2769, vivify_1164
    new $P2769, "Undef"
  vivify_1164:
    set $S2770, $P2769
    substr $S2771, $S2770, 0, 2
    iseq $I2772, $S2771, "--"
    if $I2772, if_2768
.annotate 'line', 2031
    .const 'Sub' $P2860 = "295_1304282264.655" 
    capture_lex $P2860
    $P2860()
    goto if_2768_end
  if_2768:
.annotate 'line', 2012
    .const 'Sub' $P2774 = "294_1304282264.655" 
    capture_lex $P2774
    $P2774()
  if_2768_end:
  if_2764_end:
.annotate 'line', 2011
    find_lex $P2942, "$i"
    unless_null $P2942, vivify_1213
    new $P2942, "Undef"
  vivify_1213:
    clone $P2943, $P2942
    inc $P2942
.annotate 'line', 2009
    .return ($P2943)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2859"  :anon :subid("295_1304282264.655") :outer("293_1304282264.655")
.annotate 'line', 2031
    .const 'Sub' $P2905 = "296_1304282264.655" 
    capture_lex $P2905
.annotate 'line', 2032
    new $P2861, "Undef"
    .lex "$opt", $P2861
    find_lex $P2862, "$cur"
    unless_null $P2862, vivify_1165
    new $P2862, "Undef"
  vivify_1165:
    set $S2863, $P2862
    substr $S2864, $S2863, 1
    new $P2865, 'String'
    set $P2865, $S2864
    store_lex "$opt", $P2865
.annotate 'line', 2033
    find_lex $P2868, "$opt"
    unless_null $P2868, vivify_1166
    new $P2868, "Undef"
  vivify_1166:
    set $S2869, $P2868
    length $I2870, $S2869
    set $N2871, $I2870
    iseq $I2872, $N2871, 1.0
    if $I2872, if_2867
.annotate 'line', 2043
    .const 'Sub' $P2905 = "296_1304282264.655" 
    capture_lex $P2905
    $P2929 = $P2905()
    set $P2866, $P2929
.annotate 'line', 2033
    goto if_2867_end
  if_2867:
.annotate 'line', 2035
    find_lex $P2874, "$opt"
    unless_null $P2874, vivify_1174
    new $P2874, "Undef"
  vivify_1174:
    find_lex $P2875, "self"
    find_lex $P2876, "$?CLASS"
    getattribute $P2877, $P2875, $P2876, "%!options"
    unless_null $P2877, vivify_1175
    $P2877 = root_new ['parrot';'Hash']
  vivify_1175:
    set $P2878, $P2877[$P2874]
    unless_null $P2878, vivify_1176
    new $P2878, "Undef"
  vivify_1176:
    if $P2878, unless_2873_end
    new $P2879, 'String'
    set $P2879, "No such option -"
    find_lex $P2880, "$opt"
    unless_null $P2880, vivify_1177
    new $P2880, "Undef"
  vivify_1177:
    concat $P2881, $P2879, $P2880
    die $P2881
  unless_2873_end:
.annotate 'line', 2036
    find_lex $P2883, "self"
    find_lex $P2884, "$opt"
    unless_null $P2884, vivify_1178
    new $P2884, "Undef"
  vivify_1178:
    $P2885 = $P2883."wants-value"($P2884)
    if $P2885, if_2882
.annotate 'line', 2040
    find_lex $P2892, "$result"
    unless_null $P2892, vivify_1179
    new $P2892, "Undef"
  vivify_1179:
    find_lex $P2893, "$opt"
    unless_null $P2893, vivify_1180
    new $P2893, "Undef"
  vivify_1180:
    $P2892."add-option"($P2893, 1)
.annotate 'line', 2039
    goto if_2882_end
  if_2882:
.annotate 'line', 2037
    find_lex $P2886, "$result"
    unless_null $P2886, vivify_1181
    new $P2886, "Undef"
  vivify_1181:
    find_lex $P2887, "$opt"
    unless_null $P2887, vivify_1182
    new $P2887, "Undef"
  vivify_1182:
.annotate 'line', 2038
    new $P2888, 'String'
    set $P2888, "-"
    find_lex $P2889, "$opt"
    unless_null $P2889, vivify_1183
    new $P2889, "Undef"
  vivify_1183:
    concat $P2890, $P2888, $P2889
    $P2891 = "get-value"($P2890)
    $P2886."add-option"($P2887, $P2891)
  if_2882_end:
.annotate 'line', 2042
    new $P2896, 'String'
    set $P2896, "-"
    find_lex $P2897, "$opt"
    unless_null $P2897, vivify_1184
    new $P2897, "Undef"
  vivify_1184:
    concat $P2898, $P2896, $P2897
    find_lex $P2899, "self"
    find_lex $P2900, "$?CLASS"
    getattribute $P2901, $P2899, $P2900, "%!stopper"
    unless_null $P2901, vivify_1185
    $P2901 = root_new ['parrot';'Hash']
  vivify_1185:
    set $P2902, $P2901[$P2898]
    unless_null $P2902, vivify_1186
    new $P2902, "Undef"
  vivify_1186:
    if $P2902, if_2895
    set $P2894, $P2902
    goto if_2895_end
  if_2895:
    $P2903 = "slurp-rest"()
    set $P2894, $P2903
  if_2895_end:
.annotate 'line', 2033
    set $P2866, $P2894
  if_2867_end:
.annotate 'line', 2031
    .return ($P2866)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2904"  :anon :subid("296_1304282264.655") :outer("295_1304282264.655")
.annotate 'line', 2043
    .const 'Sub' $P2911 = "297_1304282264.655" 
    capture_lex $P2911
.annotate 'line', 2045
    new $P2906, "Undef"
    .lex "$iter", $P2906
    find_lex $P2907, "$opt"
    unless_null $P2907, vivify_1167
    new $P2907, "Undef"
  vivify_1167:
    iter $P2908, $P2907
    store_lex "$iter", $P2908
.annotate 'line', 2046
    new $P2927, 'ExceptionHandler'
    set_label $P2927, loop2926_handler
    $P2927."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2927
  loop2926_test:
    find_lex $P2909, "$iter"
    unless_null $P2909, vivify_1168
    new $P2909, "Undef"
  vivify_1168:
    unless $P2909, loop2926_done
  loop2926_redo:
    .const 'Sub' $P2911 = "297_1304282264.655" 
    capture_lex $P2911
    $P2911()
  loop2926_next:
    goto loop2926_test
  loop2926_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2928, exception, 'type'
    eq $P2928, .CONTROL_LOOP_NEXT, loop2926_next
    eq $P2928, .CONTROL_LOOP_REDO, loop2926_redo
  loop2926_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P2909)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2910"  :anon :subid("297_1304282264.655") :outer("296_1304282264.655")
.annotate 'line', 2047
    new $P2912, "Undef"
    .lex "$o", $P2912
    find_lex $P2913, "$iter"
    unless_null $P2913, vivify_1169
    new $P2913, "Undef"
  vivify_1169:
    shift $P2914, $P2913
    store_lex "$o", $P2914
.annotate 'line', 2048
    find_lex $P2916, "self"
    find_lex $P2917, "$o"
    unless_null $P2917, vivify_1170
    new $P2917, "Undef"
  vivify_1170:
    $P2918 = $P2916."wants-value"($P2917)
    unless $P2918, if_2915_end
    new $P2919, 'String'
    set $P2919, "Option -"
    find_lex $P2920, "$o"
    unless_null $P2920, vivify_1171
    new $P2920, "Undef"
  vivify_1171:
    concat $P2921, $P2919, $P2920
    concat $P2922, $P2921, " requires a value and cannot be grouped"
    die $P2922
  if_2915_end:
.annotate 'line', 2049
    find_lex $P2923, "$result"
    unless_null $P2923, vivify_1172
    new $P2923, "Undef"
  vivify_1172:
    find_lex $P2924, "$o"
    unless_null $P2924, vivify_1173
    new $P2924, "Undef"
  vivify_1173:
    $P2925 = $P2923."add-option"($P2924, 1)
.annotate 'line', 2046
    .return ($P2925)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2773"  :anon :subid("294_1304282264.655") :outer("293_1304282264.655")
.annotate 'line', 2014
    new $P2775, "Undef"
    .lex "$opt", $P2775
.annotate 'line', 2015
    new $P2776, "Undef"
    .lex "$idx", $P2776
.annotate 'line', 2016
    new $P2777, "Undef"
    .lex "$value", $P2777
.annotate 'line', 2017
    new $P2778, "Undef"
    .lex "$has-value", $P2778
.annotate 'line', 2014
    find_lex $P2779, "$i"
    unless_null $P2779, vivify_1187
    new $P2779, "Undef"
  vivify_1187:
    set $I2780, $P2779
    find_lex $P2781, "@args"
    unless_null $P2781, vivify_1188
    $P2781 = root_new ['parrot';'ResizablePMCArray']
  vivify_1188:
    set $P2782, $P2781[$I2780]
    unless_null $P2782, vivify_1189
    new $P2782, "Undef"
  vivify_1189:
    set $S2783, $P2782
    substr $S2784, $S2783, 2
    new $P2785, 'String'
    set $P2785, $S2784
    store_lex "$opt", $P2785
.annotate 'line', 2015
    find_lex $P2786, "$opt"
    unless_null $P2786, vivify_1190
    new $P2786, "Undef"
  vivify_1190:
    set $S2787, $P2786
    index $I2788, $S2787, "="
    new $P2789, 'Integer'
    set $P2789, $I2788
    store_lex "$idx", $P2789
.annotate 'line', 2016
    new $P2790, "Integer"
    assign $P2790, 1
    store_lex "$value", $P2790
.annotate 'line', 2017
    new $P2791, "Integer"
    assign $P2791, 0
    store_lex "$has-value", $P2791
.annotate 'line', 2019
    find_lex $P2793, "$idx"
    unless_null $P2793, vivify_1191
    new $P2793, "Undef"
  vivify_1191:
    set $N2794, $P2793
    isge $I2795, $N2794, 0.0
    unless $I2795, if_2792_end
.annotate 'line', 2020
    find_lex $P2796, "$opt"
    unless_null $P2796, vivify_1192
    new $P2796, "Undef"
  vivify_1192:
    set $S2797, $P2796
    find_lex $P2798, "$idx"
    unless_null $P2798, vivify_1193
    new $P2798, "Undef"
  vivify_1193:
    add $P2799, $P2798, 1
    set $I2800, $P2799
    substr $S2801, $S2797, $I2800
    new $P2802, 'String'
    set $P2802, $S2801
    store_lex "$value", $P2802
.annotate 'line', 2021
    find_lex $P2803, "$opt"
    unless_null $P2803, vivify_1194
    new $P2803, "Undef"
  vivify_1194:
    set $S2804, $P2803
    find_lex $P2805, "$idx"
    unless_null $P2805, vivify_1195
    new $P2805, "Undef"
  vivify_1195:
    set $I2806, $P2805
    substr $S2807, $S2804, 0, $I2806
    new $P2808, 'String'
    set $P2808, $S2807
    store_lex "$opt", $P2808
.annotate 'line', 2022
    new $P2809, "Integer"
    assign $P2809, 1
    store_lex "$has-value", $P2809
  if_2792_end:
.annotate 'line', 2024
    find_lex $P2814, "$opt"
    unless_null $P2814, vivify_1196
    new $P2814, "Undef"
  vivify_1196:
    find_lex $P2811, "self"
    find_lex $P2812, "$?CLASS"
    getattribute $P2813, $P2811, $P2812, "%!options"
    unless_null $P2813, vivify_1197
    $P2813 = root_new ['parrot';'Hash']
  vivify_1197:
    exists $I2815, $P2813[$P2814]
    if $I2815, unless_2810_end
    new $P2816, 'String'
    set $P2816, "Illegal option --"
    find_lex $P2817, "$opt"
    unless_null $P2817, vivify_1198
    new $P2817, "Undef"
  vivify_1198:
    concat $P2818, $P2816, $P2817
    die $P2818
  unless_2810_end:
.annotate 'line', 2025
    find_lex $P2822, "$opt"
    unless_null $P2822, vivify_1199
    new $P2822, "Undef"
  vivify_1199:
    find_lex $P2823, "self"
    find_lex $P2824, "$?CLASS"
    getattribute $P2825, $P2823, $P2824, "%!options"
    unless_null $P2825, vivify_1200
    $P2825 = root_new ['parrot';'Hash']
  vivify_1200:
    set $P2826, $P2825[$P2822]
    unless_null $P2826, vivify_1201
    new $P2826, "Undef"
  vivify_1201:
    set $S2827, $P2826
    isne $I2828, $S2827, "s"
    if $I2828, if_2821
    new $P2820, 'Integer'
    set $P2820, $I2828
    goto if_2821_end
  if_2821:
    find_lex $P2829, "$has-value"
    unless_null $P2829, vivify_1202
    new $P2829, "Undef"
  vivify_1202:
    set $P2820, $P2829
  if_2821_end:
    unless $P2820, if_2819_end
    new $P2830, 'String'
    set $P2830, "Option --"
    find_lex $P2831, "$opt"
    unless_null $P2831, vivify_1203
    new $P2831, "Undef"
  vivify_1203:
    concat $P2832, $P2830, $P2831
    concat $P2833, $P2832, " does not allow a value"
    die $P2833
  if_2819_end:
.annotate 'line', 2026
    find_lex $P2837, "$has-value"
    unless_null $P2837, vivify_1204
    new $P2837, "Undef"
  vivify_1204:
    isfalse $I2838, $P2837
    if $I2838, if_2836
    new $P2835, 'Integer'
    set $P2835, $I2838
    goto if_2836_end
  if_2836:
    find_lex $P2839, "self"
    find_lex $P2840, "$opt"
    unless_null $P2840, vivify_1205
    new $P2840, "Undef"
  vivify_1205:
    $P2841 = $P2839."wants-value"($P2840)
    set $P2835, $P2841
  if_2836_end:
    unless $P2835, if_2834_end
.annotate 'line', 2027
    new $P2842, 'String'
    set $P2842, "--"
    find_lex $P2843, "$opt"
    unless_null $P2843, vivify_1206
    new $P2843, "Undef"
  vivify_1206:
    concat $P2844, $P2842, $P2843
    $P2845 = "get-value"($P2844)
    store_lex "$value", $P2845
  if_2834_end:
.annotate 'line', 2029
    find_lex $P2846, "$result"
    unless_null $P2846, vivify_1207
    new $P2846, "Undef"
  vivify_1207:
    find_lex $P2847, "$opt"
    unless_null $P2847, vivify_1208
    new $P2847, "Undef"
  vivify_1208:
    find_lex $P2848, "$value"
    unless_null $P2848, vivify_1209
    new $P2848, "Undef"
  vivify_1209:
    $P2846."add-option"($P2847, $P2848)
.annotate 'line', 2030
    new $P2851, 'String'
    set $P2851, "--"
    find_lex $P2852, "$opt"
    unless_null $P2852, vivify_1210
    new $P2852, "Undef"
  vivify_1210:
    concat $P2853, $P2851, $P2852
    find_lex $P2854, "self"
    find_lex $P2855, "$?CLASS"
    getattribute $P2856, $P2854, $P2855, "%!stopper"
    unless_null $P2856, vivify_1211
    $P2856 = root_new ['parrot';'Hash']
  vivify_1211:
    set $P2857, $P2856[$P2853]
    unless_null $P2857, vivify_1212
    new $P2857, "Undef"
  vivify_1212:
    if $P2857, if_2850
    set $P2849, $P2857
    goto if_2850_end
  if_2850:
    find_lex $P2858, "slurp-rest"
    set $P2849, $P2858
  if_2850_end:
.annotate 'line', 2012
    .return ($P2849)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2956"  :subid("299_1304282264.655") :outer("10_1304282264.655")
.annotate 'line', 2096
    .const 'Sub' $P3919 = "335_1304282264.655" 
    capture_lex $P3919
    .const 'Sub' $P3805 = "333_1304282264.655" 
    capture_lex $P3805
    .const 'Sub' $P3800 = "332_1304282264.655" 
    capture_lex $P3800
    .const 'Sub' $P3777 = "331_1304282264.655" 
    capture_lex $P3777
    .const 'Sub' $P3744 = "330_1304282264.655" 
    capture_lex $P3744
    .const 'Sub' $P3697 = "329_1304282264.655" 
    capture_lex $P3697
    .const 'Sub' $P3621 = "328_1304282264.655" 
    capture_lex $P3621
    .const 'Sub' $P3617 = "327_1304282264.655" 
    capture_lex $P3617
    .const 'Sub' $P3531 = "324_1304282264.655" 
    capture_lex $P3531
    .const 'Sub' $P3454 = "323_1304282264.655" 
    capture_lex $P3454
    .const 'Sub' $P3418 = "322_1304282264.655" 
    capture_lex $P3418
    .const 'Sub' $P3355 = "321_1304282264.655" 
    capture_lex $P3355
    .const 'Sub' $P3279 = "318_1304282264.655" 
    capture_lex $P3279
    .const 'Sub' $P3238 = "317_1304282264.655" 
    capture_lex $P3238
    .const 'Sub' $P3180 = "315_1304282264.655" 
    capture_lex $P3180
    .const 'Sub' $P3142 = "314_1304282264.655" 
    capture_lex $P3142
    .const 'Sub' $P3128 = "313_1304282264.655" 
    capture_lex $P3128
    .const 'Sub' $P3107 = "312_1304282264.655" 
    capture_lex $P3107
    .const 'Sub' $P3082 = "311_1304282264.655" 
    capture_lex $P3082
    .const 'Sub' $P3068 = "310_1304282264.655" 
    capture_lex $P3068
    .const 'Sub' $P3050 = "309_1304282264.655" 
    capture_lex $P3050
    .const 'Sub' $P3030 = "308_1304282264.655" 
    capture_lex $P3030
    .const 'Sub' $P3016 = "307_1304282264.655" 
    capture_lex $P3016
    .const 'Sub' $P2998 = "306_1304282264.655" 
    capture_lex $P2998
    .const 'Sub' $P2989 = "305_1304282264.655" 
    capture_lex $P2989
    .const 'Sub' $P2969 = "301_1304282264.655" 
    capture_lex $P2969
    .const 'Sub' $P2959 = "300_1304282264.655" 
    capture_lex $P2959
    .lex "Event", $P2958
.annotate 'line', 2117
    .const 'Sub' $P2959 = "300_1304282264.655" 
    newclosure $P2963, $P2959
    .lex "addr", $P2963
.annotate 'line', 2224
    new $P2964, "Undef"
    .lex "$loader", $P2964
.annotate 'line', 2420
    new $P2965, "Undef"
    .lex "$stub_code", $P2965
    .lex "$?PACKAGE", $P2966
    .lex "$?CLASS", $P2967
.annotate 'line', 2098
    .const 'Sub' $P2969 = "301_1304282264.655" 
    capture_lex $P2969
    $P2969()
    find_lex $P2988, "addr"
.annotate 'line', 2224
    get_hll_global $P3179, "ModuleLoader"
    store_lex "$loader", $P3179
.annotate 'line', 2420
    .const 'Sub' $P3617 = "327_1304282264.655" 
    newclosure $P3620, $P3617
    store_lex "$stub_code", $P3620
.annotate 'line', 2526
    .const 'Sub' $P3805 = "333_1304282264.655" 
    newclosure $P3917, $P3805
.annotate 'line', 2096
    .return ($P3917)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1215") :outer("299_1304282264.655")
.annotate 'line', 2096
    .const 'Sub' $P2957 = "299_1304282264.655" 
    .local pmc block
    set block, $P2957
    .const 'Sub' $P3919 = "335_1304282264.655" 
    capture_lex $P3919
    $P3919()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3918"  :anon :subid("335_1304282264.655") :outer("299_1304282264.655")
.annotate 'line', 2096
    nqp_get_sc_object $P3920, "1304282255.673", 191
    .local pmc type_obj
    set type_obj, $P3920
    get_how $P3921, type_obj
    $P3922 = $P3921."compose"(type_obj)
    .return ($P3922)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("300_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_2960
.annotate 'line', 2117
    .lex "$obj", param_2960
.annotate 'line', 2118
    find_lex $P2961, "$obj"
    unless_null $P2961, vivify_1216
    new $P2961, "Undef"
  vivify_1216:
    get_addr $I2962, $P2961
.annotate 'line', 2117
    .return ($I2962)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2968"  :anon :subid("301_1304282264.655") :outer("299_1304282264.655")
.annotate 'line', 2098
    .const 'Sub' $P2984 = "304_1304282264.655" 
    capture_lex $P2984
    .const 'Sub' $P2977 = "303_1304282264.655" 
    capture_lex $P2977
    .const 'Sub' $P2972 = "302_1304282264.655" 
    capture_lex $P2972
    .lex "$?PACKAGE", $P2970
    .lex "$?CLASS", $P2971
.annotate 'line', 2105
    .const 'Sub' $P2977 = "303_1304282264.655" 
    newclosure $P2982, $P2977
.annotate 'line', 2098
    .return ($P2982)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1217") :outer("301_1304282264.655")
.annotate 'line', 2098
    .const 'Sub' $P2969 = "301_1304282264.655" 
    .local pmc block
    set block, $P2969
    .const 'Sub' $P2984 = "304_1304282264.655" 
    capture_lex $P2984
    $P2984()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2983"  :anon :subid("304_1304282264.655") :outer("301_1304282264.655")
.annotate 'line', 2098
    nqp_get_sc_object $P2985, "1304282255.673", 192
    .local pmc type_obj
    set type_obj, $P2985
    get_how $P2986, type_obj
    $P2987 = $P2986."compose"(type_obj)
    .return ($P2987)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("302_1304282264.655") :outer("301_1304282264.655")
    .param pmc param_2973
.annotate 'line', 2101
    .lex "self", param_2973
    find_lex $P2974, "self"
    find_lex $P2975, "$?CLASS"
    getattribute $P2976, $P2974, $P2975, "$!deserialize_past"
    unless_null $P2976, vivify_1218
    new $P2976, "Undef"
  vivify_1218:
    .return ($P2976)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("303_1304282264.655") :outer("301_1304282264.655")
    .param pmc param_2978
.annotate 'line', 2105
    .lex "self", param_2978
    find_lex $P2979, "self"
    find_lex $P2980, "$?CLASS"
    getattribute $P2981, $P2979, $P2980, "$!fixup_past"
    unless_null $P2981, vivify_1219
    new $P2981, "Undef"
  vivify_1219:
    .return ($P2981)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("305_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_2990
    .param pmc param_2991 :named("handle")
.annotate 'line', 2125
    .lex "self", param_2990
    .lex "$handle", param_2991
.annotate 'line', 2126
    new $P2992, "Undef"
    .lex "$obj", $P2992
    find_lex $P2993, "self"
    $P2994 = $P2993."CREATE"()
    store_lex "$obj", $P2994
.annotate 'line', 2127
    find_lex $P2995, "$obj"
    unless_null $P2995, vivify_1220
    new $P2995, "Undef"
  vivify_1220:
    find_lex $P2996, "$handle"
    unless_null $P2996, vivify_1221
    new $P2996, "Undef"
  vivify_1221:
    $P2995."BUILD"($P2996 :named("handle"))
    find_lex $P2997, "$obj"
    unless_null $P2997, vivify_1222
    new $P2997, "Undef"
  vivify_1222:
.annotate 'line', 2125
    .return ($P2997)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("306_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_2999
    .param pmc param_3000 :optional :named("handle")
    .param int has_param_3000 :opt_flag
.annotate 'line', 2131
    .lex "self", param_2999
    if has_param_3000, optparam_1223
    new $P3001, "Undef"
    set param_3000, $P3001
  optparam_1223:
    .lex "$handle", param_3000
.annotate 'line', 2132
    find_lex $P3002, "$handle"
    unless_null $P3002, vivify_1224
    new $P3002, "Undef"
  vivify_1224:
    set $S3003, $P3002
    nqp_create_sc $P3004, $S3003
    find_lex $P3005, "self"
    find_lex $P3006, "$?CLASS"
    setattribute $P3005, $P3006, "$!sc", $P3004
.annotate 'line', 2133
    find_lex $P3007, "$handle"
    unless_null $P3007, vivify_1225
    new $P3007, "Undef"
  vivify_1225:
    find_lex $P3008, "self"
    find_lex $P3009, "$?CLASS"
    setattribute $P3008, $P3009, "$!handle", $P3007
.annotate 'line', 2134
    new $P3010, "Hash"
    find_lex $P3011, "self"
    find_lex $P3012, "$?CLASS"
    setattribute $P3011, $P3012, "%!addr_to_slot", $P3010
.annotate 'line', 2135
    new $P3013, "ResizablePMCArray"
    find_lex $P3014, "self"
    find_lex $P3015, "$?CLASS"
    setattribute $P3014, $P3015, "@!event_stream", $P3013
.annotate 'line', 2131
    .return ($P3013)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("307_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3017
    .param pmc param_3018
.annotate 'line', 2139
    .lex "self", param_3017
    .lex "$obj", param_3018
.annotate 'line', 2140
    new $P3019, "Undef"
    .lex "$slot", $P3019
    find_lex $P3020, "$obj"
    unless_null $P3020, vivify_1226
    new $P3020, "Undef"
  vivify_1226:
    $P3021 = "addr"($P3020)
    find_lex $P3022, "self"
    find_lex $P3023, "$?CLASS"
    getattribute $P3024, $P3022, $P3023, "%!addr_to_slot"
    unless_null $P3024, vivify_1227
    $P3024 = root_new ['parrot';'Hash']
  vivify_1227:
    set $P3025, $P3024[$P3021]
    unless_null $P3025, vivify_1228
    new $P3025, "Undef"
  vivify_1228:
    store_lex "$slot", $P3025
.annotate 'line', 2141
    find_lex $P3027, "$slot"
    unless_null $P3027, vivify_1229
    new $P3027, "Undef"
  vivify_1229:
    defined $I3028, $P3027
    if $I3028, unless_3026_end
.annotate 'line', 2142
    die "slot_for_object called on object not in context"
  unless_3026_end:
.annotate 'line', 2141
    find_lex $P3029, "$slot"
    unless_null $P3029, vivify_1230
    new $P3029, "Undef"
  vivify_1230:
.annotate 'line', 2139
    .return ($P3029)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("308_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3033
    .param pmc param_3034
.annotate 'line', 2151
    new $P3032, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3032, control_3031
    push_eh $P3032
    .lex "self", param_3033
    .lex "$obj", param_3034
.annotate 'line', 2152
    new $P3035, "Undef"
    .lex "$slot", $P3035
    find_lex $P3036, "self"
    find_lex $P3037, "$obj"
    unless_null $P3037, vivify_1231
    new $P3037, "Undef"
  vivify_1231:
    $P3038 = $P3036."slot_for_object"($P3037)
    store_lex "$slot", $P3038
.annotate 'line', 2153
    new $P3039, "Exception"
    set $P3039['type'], .CONTROL_RETURN
    get_hll_global $P3040, "GLOBAL"
    nqp_get_package_through_who $P3041, $P3040, "PAST"
    get_who $P3042, $P3041
    set $P3043, $P3042["Op"]
    find_lex $P3044, "self"
    find_lex $P3045, "$?CLASS"
    getattribute $P3046, $P3044, $P3045, "$!handle"
    unless_null $P3046, vivify_1232
    new $P3046, "Undef"
  vivify_1232:
    find_lex $P3047, "$slot"
    unless_null $P3047, vivify_1233
    new $P3047, "Undef"
  vivify_1233:
    $P3048 = $P3043."new"($P3046, $P3047, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3039, 'payload', $P3048
    throw $P3039
.annotate 'line', 2151
    .return ()
  control_3031:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3049, exception, "payload"
    .return ($P3049)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("309_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3053
    .param pmc param_3054
    .param pmc param_3055
.annotate 'line', 2157
    new $P3052, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3052, control_3051
    push_eh $P3052
    .lex "self", param_3053
    .lex "$slot", param_3054
    .lex "$past_to_set", param_3055
.annotate 'line', 2158
    new $P3056, "Exception"
    set $P3056['type'], .CONTROL_RETURN
    get_hll_global $P3057, "GLOBAL"
    nqp_get_package_through_who $P3058, $P3057, "PAST"
    get_who $P3059, $P3058
    set $P3060, $P3059["Op"]
    find_lex $P3061, "self"
    find_lex $P3062, "$?CLASS"
    getattribute $P3063, $P3061, $P3062, "$!handle"
    unless_null $P3063, vivify_1234
    new $P3063, "Undef"
  vivify_1234:
    find_lex $P3064, "$slot"
    unless_null $P3064, vivify_1235
    new $P3064, "Undef"
  vivify_1235:
    find_lex $P3065, "$past_to_set"
    unless_null $P3065, vivify_1236
    new $P3065, "Undef"
  vivify_1236:
    $P3066 = $P3060."new"($P3063, $P3064, $P3065, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3056, 'payload', $P3066
    throw $P3056
.annotate 'line', 2157
    .return ()
  control_3051:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3067, exception, "payload"
    .return ($P3067)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("310_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3069
    .param pmc param_3070
.annotate 'line', 2164
    .lex "self", param_3069
    .lex "$to_wrap", param_3070
.annotate 'line', 2165
    get_hll_global $P3071, "GLOBAL"
    nqp_get_package_through_who $P3072, $P3071, "PAST"
    get_who $P3073, $P3072
    set $P3074, $P3073["Op"]
    find_lex $P3075, "$to_wrap"
    unless_null $P3075, vivify_1237
    new $P3075, "Undef"
  vivify_1237:
.annotate 'line', 2168
    get_hll_global $P3076, "GLOBAL"
    nqp_get_package_through_who $P3077, $P3076, "PAST"
    get_who $P3078, $P3077
    set $P3079, $P3078["Var"]
    $P3080 = $P3079."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3081 = $P3074."new"($P3075, $P3080, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2164
    .return ($P3081)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("311_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3083
    .param pmc param_3084
.annotate 'line', 2173
    .lex "self", param_3083
    .lex "$obj", param_3084
.annotate 'line', 2175
    new $P3085, "Undef"
    .lex "$idx", $P3085
.annotate 'line', 2174
    find_lex $P3086, "$obj"
    unless_null $P3086, vivify_1238
    new $P3086, "Undef"
  vivify_1238:
    find_lex $P3087, "self"
    find_lex $P3088, "$?CLASS"
    getattribute $P3089, $P3087, $P3088, "$!sc"
    unless_null $P3089, vivify_1239
    new $P3089, "Undef"
  vivify_1239:
    nqp_set_sc_for_object $P3086, $P3089
.annotate 'line', 2175
    find_lex $P3090, "self"
    find_lex $P3091, "$?CLASS"
    getattribute $P3092, $P3090, $P3091, "$!sc"
    unless_null $P3092, vivify_1240
    new $P3092, "Undef"
  vivify_1240:
    $P3093 = $P3092."elems"()
    store_lex "$idx", $P3093
.annotate 'line', 2176
    find_lex $P3094, "$obj"
    unless_null $P3094, vivify_1241
    new $P3094, "Undef"
  vivify_1241:
    find_lex $P3095, "$idx"
    unless_null $P3095, vivify_1242
    new $P3095, "Undef"
  vivify_1242:
    set $I3096, $P3095
    find_lex $P3097, "self"
    find_lex $P3098, "$?CLASS"
    getattribute $P3099, $P3097, $P3098, "$!sc"
    unless_null $P3099, vivify_1243
    $P3099 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3097, $P3098, "$!sc", $P3099
  vivify_1243:
    set $P3099[$I3096], $P3094
.annotate 'line', 2177
    find_lex $P3100, "$idx"
    unless_null $P3100, vivify_1244
    new $P3100, "Undef"
  vivify_1244:
    find_lex $P3101, "$obj"
    unless_null $P3101, vivify_1245
    new $P3101, "Undef"
  vivify_1245:
    $P3102 = "addr"($P3101)
    find_lex $P3103, "self"
    find_lex $P3104, "$?CLASS"
    getattribute $P3105, $P3103, $P3104, "%!addr_to_slot"
    unless_null $P3105, vivify_1246
    $P3105 = root_new ['parrot';'Hash']
    setattribute $P3103, $P3104, "%!addr_to_slot", $P3105
  vivify_1246:
    set $P3105[$P3102], $P3100
    find_lex $P3106, "$idx"
    unless_null $P3106, vivify_1247
    new $P3106, "Undef"
  vivify_1247:
.annotate 'line', 2173
    .return ($P3106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code"  :subid("312_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3108
    .param pmc param_3109
.annotate 'line', 2182
    .lex "self", param_3108
    .lex "$obj", param_3109
.annotate 'line', 2183
    new $P3110, "Undef"
    .lex "$idx", $P3110
    find_lex $P3111, "self"
    find_lex $P3112, "$?CLASS"
    getattribute $P3113, $P3111, $P3112, "$!sc"
    unless_null $P3113, vivify_1248
    new $P3113, "Undef"
  vivify_1248:
    $P3114 = $P3113."elems"()
    store_lex "$idx", $P3114
.annotate 'line', 2184
    find_lex $P3115, "$obj"
    unless_null $P3115, vivify_1249
    new $P3115, "Undef"
  vivify_1249:
    find_lex $P3116, "$idx"
    unless_null $P3116, vivify_1250
    new $P3116, "Undef"
  vivify_1250:
    set $I3117, $P3116
    find_lex $P3118, "self"
    find_lex $P3119, "$?CLASS"
    getattribute $P3120, $P3118, $P3119, "$!sc"
    unless_null $P3120, vivify_1251
    $P3120 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3118, $P3119, "$!sc", $P3120
  vivify_1251:
    set $P3120[$I3117], $P3115
.annotate 'line', 2185
    find_lex $P3121, "$idx"
    unless_null $P3121, vivify_1252
    new $P3121, "Undef"
  vivify_1252:
    find_lex $P3122, "$obj"
    unless_null $P3122, vivify_1253
    new $P3122, "Undef"
  vivify_1253:
    $P3123 = "addr"($P3122)
    find_lex $P3124, "self"
    find_lex $P3125, "$?CLASS"
    getattribute $P3126, $P3124, $P3125, "%!addr_to_slot"
    unless_null $P3126, vivify_1254
    $P3126 = root_new ['parrot';'Hash']
    setattribute $P3124, $P3125, "%!addr_to_slot", $P3126
  vivify_1254:
    set $P3126[$P3123], $P3121
    find_lex $P3127, "$idx"
    unless_null $P3127, vivify_1255
    new $P3127, "Undef"
  vivify_1255:
.annotate 'line', 2182
    .return ($P3127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("313_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3129
    .param pmc param_3130 :optional :named("deserialize_past")
    .param int has_param_3130 :opt_flag
    .param pmc param_3132 :optional :named("fixup_past")
    .param int has_param_3132 :opt_flag
.annotate 'line', 2190
    .lex "self", param_3129
    if has_param_3130, optparam_1256
    new $P3131, "Undef"
    set param_3130, $P3131
  optparam_1256:
    .lex "$deserialize_past", param_3130
    if has_param_3132, optparam_1257
    new $P3133, "Undef"
    set param_3132, $P3133
  optparam_1257:
    .lex "$fixup_past", param_3132
.annotate 'line', 2191
    find_lex $P3134, "self"
    find_lex $P3135, "$?CLASS"
    getattribute $P3136, $P3134, $P3135, "@!event_stream"
    unless_null $P3136, vivify_1258
    $P3136 = root_new ['parrot';'ResizablePMCArray']
  vivify_1258:
    find_lex $P3137, "Event"
    find_lex $P3138, "$deserialize_past"
    unless_null $P3138, vivify_1259
    new $P3138, "Undef"
  vivify_1259:
    find_lex $P3139, "$fixup_past"
    unless_null $P3139, vivify_1260
    new $P3139, "Undef"
  vivify_1260:
    $P3140 = $P3137."new"($P3138 :named("deserialize_past"), $P3139 :named("fixup_past"))
    $P3141 = $P3136."push"($P3140)
.annotate 'line', 2190
    .return ($P3141)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("314_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3143
    .param pmc param_3144
.annotate 'line', 2198
    .lex "self", param_3143
    .lex "$obj", param_3144
.annotate 'line', 2201
    new $P3145, "Undef"
    .lex "$sc", $P3145
    find_lex $P3146, "$obj"
    unless_null $P3146, vivify_1261
    new $P3146, "Undef"
  vivify_1261:
    nqp_get_sc_for_object $P3147, $P3146
    store_lex "$sc", $P3147
.annotate 'line', 2202
    find_lex $P3149, "$sc"
    unless_null $P3149, vivify_1262
    new $P3149, "Undef"
  vivify_1262:
    defined $I3150, $P3149
    if $I3150, unless_3148_end
.annotate 'line', 2203
    new $P3151, "String"
    assign $P3151, "Object of type '"
    find_lex $P3152, "$obj"
    unless_null $P3152, vivify_1263
    new $P3152, "Undef"
  vivify_1263:
    get_how $P3153, $P3152
    find_lex $P3154, "$obj"
    unless_null $P3154, vivify_1264
    new $P3154, "Undef"
  vivify_1264:
    $S3155 = $P3153."name"($P3154)
    concat $P3156, $P3151, $S3155
    concat $P3157, $P3156, "' cannot be referenced without having been "
    concat $P3158, $P3157, "assigned a serialization context"
.annotate 'line', 2204
    die $P3158
  unless_3148_end:
.annotate 'line', 2210
    find_lex $P3161, "$sc"
    unless_null $P3161, vivify_1265
    new $P3161, "Undef"
  vivify_1265:
    find_lex $P3162, "self"
    find_lex $P3163, "$?CLASS"
    getattribute $P3164, $P3162, $P3163, "$!sc"
    unless_null $P3164, vivify_1266
    new $P3164, "Undef"
  vivify_1266:
    issame $I3165, $P3161, $P3164
    if $I3165, if_3160
.annotate 'line', 2214
    get_hll_global $P3169, "GLOBAL"
    nqp_get_package_through_who $P3170, $P3169, "PAST"
    get_who $P3171, $P3170
    set $P3172, $P3171["Op"]
.annotate 'line', 2215
    find_lex $P3173, "$sc"
    unless_null $P3173, vivify_1267
    new $P3173, "Undef"
  vivify_1267:
    $P3174 = $P3173."handle"()
    find_lex $P3175, "$sc"
    unless_null $P3175, vivify_1268
    new $P3175, "Undef"
  vivify_1268:
    find_lex $P3176, "$obj"
    unless_null $P3176, vivify_1269
    new $P3176, "Undef"
  vivify_1269:
    $P3177 = $P3175."slot_index_for"($P3176)
    $P3178 = $P3172."new"($P3174, $P3177, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2213
    set $P3159, $P3178
.annotate 'line', 2210
    goto if_3160_end
  if_3160:
.annotate 'line', 2211
    find_lex $P3166, "self"
    find_lex $P3167, "$obj"
    unless_null $P3167, vivify_1270
    new $P3167, "Undef"
  vivify_1270:
    $P3168 = $P3166."get_slot_past_for_object"($P3167)
.annotate 'line', 2210
    set $P3159, $P3168
  if_3160_end:
.annotate 'line', 2198
    .return ($P3159)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_setting"  :subid("315_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3183
    .param pmc param_3184
.annotate 'line', 2227
    .const 'Sub' $P3191 = "316_1304282264.655" 
    capture_lex $P3191
    new $P3182, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3182, control_3181
    push_eh $P3182
    .lex "self", param_3183
    .lex "$setting_name", param_3184
.annotate 'line', 2229
    find_lex $P3187, "$setting_name"
    unless_null $P3187, vivify_1271
    new $P3187, "Undef"
  vivify_1271:
    set $S3188, $P3187
    isne $I3189, $S3188, "NULL"
    if $I3189, if_3186
    new $P3185, 'Integer'
    set $P3185, $I3189
    goto if_3186_end
  if_3186:
    .const 'Sub' $P3191 = "316_1304282264.655" 
    capture_lex $P3191
    $P3236 = $P3191()
    set $P3185, $P3236
  if_3186_end:
.annotate 'line', 2227
    .return ($P3185)
  control_3181:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3237, exception, "payload"
    .return ($P3237)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3190"  :anon :subid("316_1304282264.655") :outer("315_1304282264.655")
.annotate 'line', 2233
    new $P3192, "Undef"
    .lex "$setting", $P3192
.annotate 'line', 2234
    find_lex $P3193, "$loader"
    unless_null $P3193, vivify_1272
    new $P3193, "Undef"
  vivify_1272:
    find_lex $P3194, "$setting_name"
    unless_null $P3194, vivify_1273
    new $P3194, "Undef"
  vivify_1273:
    $P3195 = $P3193."load_setting"($P3194)
    find_dynamic_lex $P3198, "%*COMPILING"
    unless_null $P3198, vivify_1274
    get_hll_global $P3196, "GLOBAL"
    get_who $P3197, $P3196
    set $P3198, $P3197["%COMPILING"]
    unless_null $P3198, vivify_1275
    die "Contextual %*COMPILING not found"
  vivify_1275:
    store_dynamic_lex "%*COMPILING", $P3198
  vivify_1274:
    set $P3199, $P3198["%?OPTIONS"]
    unless_null $P3199, vivify_1276
    $P3199 = root_new ['parrot';'Hash']
    set $P3198["%?OPTIONS"], $P3199
  vivify_1276:
    set $P3199["outer_ctx"], $P3195
    store_lex "$setting", $P3195
.annotate 'line', 2237
    find_lex $P3200, "self"
    get_hll_global $P3201, "GLOBAL"
    nqp_get_package_through_who $P3202, $P3201, "PAST"
    get_who $P3203, $P3202
    set $P3204, $P3203["Stmts"]
.annotate 'line', 2238
    get_hll_global $P3205, "GLOBAL"
    nqp_get_package_through_who $P3206, $P3205, "PAST"
    get_who $P3207, $P3206
    set $P3208, $P3207["Op"]
    $P3209 = $P3208."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2241
    get_hll_global $P3210, "GLOBAL"
    nqp_get_package_through_who $P3211, $P3210, "PAST"
    get_who $P3212, $P3211
    set $P3213, $P3212["Op"]
.annotate 'line', 2243
    get_hll_global $P3214, "GLOBAL"
    nqp_get_package_through_who $P3215, $P3214, "PAST"
    get_who $P3216, $P3215
    set $P3217, $P3216["Var"]
    $P3218 = $P3217."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2244
    get_hll_global $P3219, "GLOBAL"
    nqp_get_package_through_who $P3220, $P3219, "PAST"
    get_who $P3221, $P3220
    set $P3222, $P3221["Op"]
.annotate 'line', 2246
    get_hll_global $P3223, "GLOBAL"
    nqp_get_package_through_who $P3224, $P3223, "PAST"
    get_who $P3225, $P3224
    set $P3226, $P3225["Var"]
    new $P3227, "ResizablePMCArray"
    $P3228 = $P3226."new"("ModuleLoader" :named("name"), $P3227 :named("namespace"), "package" :named("scope"))
    find_lex $P3229, "$setting_name"
    unless_null $P3229, vivify_1277
    new $P3229, "Undef"
  vivify_1277:
    $P3230 = $P3222."new"($P3228, $P3229, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2244
    $P3231 = $P3213."new"($P3218, $P3230, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2241
    $P3232 = $P3204."new"($P3209, $P3231)
.annotate 'line', 2237
    $P3200."add_event"($P3232 :named("deserialize_past"))
.annotate 'line', 2252
    new $P3233, "Exception"
    set $P3233['type'], .CONTROL_RETURN
    find_lex $P3234, "$setting"
    unless_null $P3234, vivify_1278
    new $P3234, "Undef"
  vivify_1278:
    getattribute $P3235, $P3234, "lex_pad"
    setattribute $P3233, 'payload', $P3235
    throw $P3233
.annotate 'line', 2229
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_module"  :subid("317_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3241
    .param pmc param_3242
    .param pmc param_3243
.annotate 'line', 2258
    new $P3240, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3240, control_3239
    push_eh $P3240
    .lex "self", param_3241
    .lex "$module_name", param_3242
    .lex "$cur_GLOBALish", param_3243
.annotate 'line', 2260
    new $P3244, "Undef"
    .lex "$module", $P3244
    find_lex $P3245, "$loader"
    unless_null $P3245, vivify_1279
    new $P3245, "Undef"
  vivify_1279:
    find_lex $P3246, "$module_name"
    unless_null $P3246, vivify_1280
    new $P3246, "Undef"
  vivify_1280:
    find_lex $P3247, "$cur_GLOBALish"
    unless_null $P3247, vivify_1281
    new $P3247, "Undef"
  vivify_1281:
    $P3248 = $P3245."load_module"($P3246, $P3247)
    store_lex "$module", $P3248
.annotate 'line', 2263
    find_lex $P3249, "self"
    get_hll_global $P3250, "GLOBAL"
    nqp_get_package_through_who $P3251, $P3250, "PAST"
    get_who $P3252, $P3251
    set $P3253, $P3252["Stmts"]
.annotate 'line', 2264
    get_hll_global $P3254, "GLOBAL"
    nqp_get_package_through_who $P3255, $P3254, "PAST"
    get_who $P3256, $P3255
    set $P3257, $P3256["Op"]
    $P3258 = $P3257."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2267
    get_hll_global $P3259, "GLOBAL"
    nqp_get_package_through_who $P3260, $P3259, "PAST"
    get_who $P3261, $P3260
    set $P3262, $P3261["Op"]
.annotate 'line', 2269
    get_hll_global $P3263, "GLOBAL"
    nqp_get_package_through_who $P3264, $P3263, "PAST"
    get_who $P3265, $P3264
    set $P3266, $P3265["Var"]
    new $P3267, "ResizablePMCArray"
    $P3268 = $P3266."new"("ModuleLoader" :named("name"), $P3267 :named("namespace"), "package" :named("scope"))
    find_lex $P3269, "$module_name"
    unless_null $P3269, vivify_1282
    new $P3269, "Undef"
  vivify_1282:
.annotate 'line', 2271
    find_lex $P3270, "self"
    find_lex $P3271, "$cur_GLOBALish"
    unless_null $P3271, vivify_1283
    new $P3271, "Undef"
  vivify_1283:
    $P3272 = $P3270."get_slot_past_for_object"($P3271)
    $P3273 = $P3262."new"($P3268, $P3269, $P3272, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2267
    $P3274 = $P3253."new"($P3258, $P3273)
.annotate 'line', 2263
    $P3249."add_event"($P3274 :named("deserialize_past"))
.annotate 'line', 2274
    new $P3275, "Exception"
    set $P3275['type'], .CONTROL_RETURN
    find_lex $P3276, "$module"
    unless_null $P3276, vivify_1284
    new $P3276, "Undef"
  vivify_1284:
    getattribute $P3277, $P3276, "lex_pad"
    setattribute $P3275, 'payload', $P3277
    throw $P3275
.annotate 'line', 2258
    .return ()
  control_3239:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3278, exception, "payload"
    .return ($P3278)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("318_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3280
    .param pmc param_3281
    .param pmc param_3282
    .param pmc param_3283
.annotate 'line', 2279
    .const 'Sub' $P3320 = "320_1304282264.655" 
    capture_lex $P3320
    .const 'Sub' $P3299 = "319_1304282264.655" 
    capture_lex $P3299
    .lex "self", param_3280
    .lex "$package", param_3281
    .lex "@sym", param_3282
    .lex "$obj", param_3283
.annotate 'line', 2281
    new $P3284, "Undef"
    .lex "$name", $P3284
.annotate 'line', 2284
    new $P3285, "Undef"
    .lex "$target", $P3285
.annotate 'line', 2291
    new $P3286, "Undef"
    .lex "$path", $P3286
.annotate 'line', 2280
    find_lex $P3287, "@sym"
    unless_null $P3287, vivify_1285
    $P3287 = root_new ['parrot';'ResizablePMCArray']
  vivify_1285:
    clone $P3288, $P3287
    store_lex "@sym", $P3288
.annotate 'line', 2281
    find_lex $P3289, "@sym"
    unless_null $P3289, vivify_1286
    $P3289 = root_new ['parrot';'ResizablePMCArray']
  vivify_1286:
    $P3290 = $P3289."pop"()
    set $S3291, $P3290
    new $P3292, 'String'
    set $P3292, $S3291
    store_lex "$name", $P3292
.annotate 'line', 2284
    find_lex $P3293, "$package"
    unless_null $P3293, vivify_1287
    new $P3293, "Undef"
  vivify_1287:
    store_lex "$target", $P3293
.annotate 'line', 2285
    find_lex $P3295, "@sym"
    unless_null $P3295, vivify_1288
    $P3295 = root_new ['parrot';'ResizablePMCArray']
  vivify_1288:
    defined $I3296, $P3295
    unless $I3296, for_undef_1289
    iter $P3294, $P3295
    new $P3306, 'ExceptionHandler'
    set_label $P3306, loop3305_handler
    $P3306."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3306
  loop3305_test:
    unless $P3294, loop3305_done
    shift $P3297, $P3294
  loop3305_redo:
    .const 'Sub' $P3299 = "319_1304282264.655" 
    capture_lex $P3299
    $P3299($P3297)
  loop3305_next:
    goto loop3305_test
  loop3305_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3307, exception, 'type'
    eq $P3307, .CONTROL_LOOP_NEXT, loop3305_next
    eq $P3307, .CONTROL_LOOP_REDO, loop3305_redo
  loop3305_done:
    pop_eh 
  for_undef_1289:
.annotate 'line', 2288
    find_lex $P3308, "$obj"
    unless_null $P3308, vivify_1292
    new $P3308, "Undef"
  vivify_1292:
    find_lex $P3309, "$name"
    unless_null $P3309, vivify_1293
    new $P3309, "Undef"
  vivify_1293:
    find_lex $P3310, "$target"
    unless_null $P3310, vivify_1294
    new $P3310, "Undef"
    store_lex "$target", $P3310
  vivify_1294:
    get_who $P3311, $P3310
    set $P3311[$P3309], $P3308
.annotate 'line', 2291
    find_lex $P3312, "self"
    find_lex $P3313, "$package"
    unless_null $P3313, vivify_1295
    new $P3313, "Undef"
  vivify_1295:
    $P3314 = $P3312."get_slot_past_for_object"($P3313)
    store_lex "$path", $P3314
.annotate 'line', 2292
    find_lex $P3316, "@sym"
    unless_null $P3316, vivify_1296
    $P3316 = root_new ['parrot';'ResizablePMCArray']
  vivify_1296:
    defined $I3317, $P3316
    unless $I3317, for_undef_1297
    iter $P3315, $P3316
    new $P3331, 'ExceptionHandler'
    set_label $P3331, loop3330_handler
    $P3331."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3331
  loop3330_test:
    unless $P3315, loop3330_done
    shift $P3318, $P3315
  loop3330_redo:
    .const 'Sub' $P3320 = "320_1304282264.655" 
    capture_lex $P3320
    $P3320($P3318)
  loop3330_next:
    goto loop3330_test
  loop3330_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3332, exception, 'type'
    eq $P3332, .CONTROL_LOOP_NEXT, loop3330_next
    eq $P3332, .CONTROL_LOOP_REDO, loop3330_redo
  loop3330_done:
    pop_eh 
  for_undef_1297:
.annotate 'line', 2295
    find_lex $P3333, "self"
    get_hll_global $P3334, "GLOBAL"
    nqp_get_package_through_who $P3335, $P3334, "PAST"
    get_who $P3336, $P3335
    set $P3337, $P3336["Op"]
.annotate 'line', 2297
    get_hll_global $P3338, "GLOBAL"
    nqp_get_package_through_who $P3339, $P3338, "PAST"
    get_who $P3340, $P3339
    set $P3341, $P3340["Var"]
.annotate 'line', 2299
    get_hll_global $P3342, "GLOBAL"
    nqp_get_package_through_who $P3343, $P3342, "PAST"
    get_who $P3344, $P3343
    set $P3345, $P3344["Op"]
    find_lex $P3346, "$path"
    unless_null $P3346, vivify_1300
    new $P3346, "Undef"
  vivify_1300:
    $P3347 = $P3345."new"($P3346, "get_who PP" :named("pirop"))
    find_lex $P3348, "$name"
    unless_null $P3348, vivify_1301
    new $P3348, "Undef"
  vivify_1301:
    $P3349 = $P3341."new"($P3347, $P3348, "keyed" :named("scope"))
.annotate 'line', 2302
    find_lex $P3350, "self"
    find_lex $P3351, "$obj"
    unless_null $P3351, vivify_1302
    new $P3351, "Undef"
  vivify_1302:
    $P3352 = $P3350."get_slot_past_for_object"($P3351)
    $P3353 = $P3337."new"($P3349, $P3352, "bind" :named("pasttype"))
.annotate 'line', 2295
    $P3354 = $P3333."add_event"($P3353 :named("deserialize_past"))
.annotate 'line', 2279
    .return ($P3354)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3298"  :anon :subid("319_1304282264.655") :outer("318_1304282264.655")
    .param pmc param_3300
.annotate 'line', 2285
    .lex "$_", param_3300
.annotate 'line', 2286
    find_lex $P3301, "$target"
    unless_null $P3301, vivify_1290
    new $P3301, "Undef"
  vivify_1290:
    find_lex $P3302, "$_"
    unless_null $P3302, vivify_1291
    new $P3302, "Undef"
  vivify_1291:
    set $S3303, $P3302
    nqp_get_package_through_who $P3304, $P3301, $S3303
    store_lex "$target", $P3304
.annotate 'line', 2285
    .return ($P3304)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3319"  :anon :subid("320_1304282264.655") :outer("318_1304282264.655")
    .param pmc param_3321
.annotate 'line', 2292
    .lex "$_", param_3321
.annotate 'line', 2293
    get_hll_global $P3322, "GLOBAL"
    nqp_get_package_through_who $P3323, $P3322, "PAST"
    get_who $P3324, $P3323
    set $P3325, $P3324["Op"]
    find_lex $P3326, "$path"
    unless_null $P3326, vivify_1298
    new $P3326, "Undef"
  vivify_1298:
    find_lex $P3327, "$_"
    unless_null $P3327, vivify_1299
    new $P3327, "Undef"
  vivify_1299:
    set $S3328, $P3327
    $P3329 = $P3325."new"($P3326, $S3328, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3329
.annotate 'line', 2292
    .return ($P3329)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("321_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3356
    .param pmc param_3357
    .param pmc param_3358
    .param pmc param_3359
.annotate 'line', 2310
    .lex "self", param_3356
    .lex "$block", param_3357
    .lex "$name", param_3358
    .lex "$obj", param_3359
.annotate 'line', 2316
    new $P3360, "Undef"
    .lex "$fixup", $P3360
.annotate 'line', 2312
    find_lex $P3361, "$block"
    unless_null $P3361, vivify_1303
    new $P3361, "Undef"
  vivify_1303:
    find_lex $P3362, "$name"
    unless_null $P3362, vivify_1304
    new $P3362, "Undef"
  vivify_1304:
    find_lex $P3363, "$obj"
    unless_null $P3363, vivify_1305
    new $P3363, "Undef"
  vivify_1305:
    $P3361."symbol"($P3362, "lexical" :named("scope"), $P3363 :named("value"))
.annotate 'line', 2313
    find_lex $P3364, "$block"
    unless_null $P3364, vivify_1306
    $P3364 = root_new ['parrot';'ResizablePMCArray']
  vivify_1306:
    set $P3365, $P3364[0]
    unless_null $P3365, vivify_1307
    new $P3365, "Undef"
  vivify_1307:
    get_hll_global $P3366, "GLOBAL"
    nqp_get_package_through_who $P3367, $P3366, "PAST"
    get_who $P3368, $P3367
    set $P3369, $P3368["Var"]
    find_lex $P3370, "$name"
    unless_null $P3370, vivify_1308
    new $P3370, "Undef"
  vivify_1308:
    $P3371 = $P3369."new"("lexical" :named("scope"), $P3370 :named("name"), 1 :named("isdecl"))
    $P3365."push"($P3371)
.annotate 'line', 2316
    get_hll_global $P3372, "GLOBAL"
    nqp_get_package_through_who $P3373, $P3372, "PAST"
    get_who $P3374, $P3373
    set $P3375, $P3374["Stmts"]
.annotate 'line', 2317
    get_hll_global $P3376, "GLOBAL"
    nqp_get_package_through_who $P3377, $P3376, "PAST"
    get_who $P3378, $P3377
    set $P3379, $P3378["Op"]
.annotate 'line', 2319
    get_hll_global $P3380, "GLOBAL"
    nqp_get_package_through_who $P3381, $P3380, "PAST"
    get_who $P3382, $P3381
    set $P3383, $P3382["Op"]
.annotate 'line', 2321
    get_hll_global $P3384, "GLOBAL"
    nqp_get_package_through_who $P3385, $P3384, "PAST"
    get_who $P3386, $P3385
    set $P3387, $P3386["Val"]
    find_lex $P3388, "$block"
    unless_null $P3388, vivify_1309
    new $P3388, "Undef"
  vivify_1309:
    $P3389 = $P3387."new"($P3388 :named("value"))
    $P3390 = $P3383."new"($P3389, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2323
    find_lex $P3391, "$name"
    unless_null $P3391, vivify_1310
    new $P3391, "Undef"
  vivify_1310:
    set $S3392, $P3391
    find_lex $P3393, "self"
    find_lex $P3394, "$obj"
    unless_null $P3394, vivify_1311
    new $P3394, "Undef"
  vivify_1311:
    $P3395 = $P3393."get_slot_past_for_object"($P3394)
    $P3396 = $P3379."new"($P3390, $S3392, $P3395, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2327
    get_hll_global $P3397, "GLOBAL"
    nqp_get_package_through_who $P3398, $P3397, "PAST"
    get_who $P3399, $P3398
    set $P3400, $P3399["Op"]
.annotate 'line', 2329
    get_hll_global $P3401, "GLOBAL"
    nqp_get_package_through_who $P3402, $P3401, "PAST"
    get_who $P3403, $P3402
    set $P3404, $P3403["Op"]
.annotate 'line', 2331
    get_hll_global $P3405, "GLOBAL"
    nqp_get_package_through_who $P3406, $P3405, "PAST"
    get_who $P3407, $P3406
    set $P3408, $P3407["Val"]
    find_lex $P3409, "$block"
    unless_null $P3409, vivify_1312
    new $P3409, "Undef"
  vivify_1312:
    $P3410 = $P3408."new"($P3409 :named("value"))
    $P3411 = $P3404."new"($P3410, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2329
    $P3412 = $P3400."new"($P3411, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2327
    $P3413 = $P3375."new"($P3396, $P3412)
.annotate 'line', 2316
    store_lex "$fixup", $P3413
.annotate 'line', 2335
    find_lex $P3414, "self"
    find_lex $P3415, "$fixup"
    unless_null $P3415, vivify_1313
    new $P3415, "Undef"
  vivify_1313:
    find_lex $P3416, "$fixup"
    unless_null $P3416, vivify_1314
    new $P3416, "Undef"
  vivify_1314:
    $P3417 = $P3414."add_event"($P3415 :named("deserialize_past"), $P3416 :named("fixup_past"))
.annotate 'line', 2310
    .return ($P3417)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("322_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3419
    .param pmc param_3420
    .param pmc param_3421
    .param pmc param_3422
.annotate 'line', 2340
    .lex "self", param_3419
    .lex "$package", param_3420
    .lex "$name", param_3421
    .lex "$past_block", param_3422
.annotate 'line', 2341
    new $P3423, "Undef"
    .lex "$fixup", $P3423
    get_hll_global $P3424, "GLOBAL"
    nqp_get_package_through_who $P3425, $P3424, "PAST"
    get_who $P3426, $P3425
    set $P3427, $P3426["Op"]
.annotate 'line', 2343
    get_hll_global $P3428, "GLOBAL"
    nqp_get_package_through_who $P3429, $P3428, "PAST"
    get_who $P3430, $P3429
    set $P3431, $P3430["Var"]
.annotate 'line', 2345
    get_hll_global $P3432, "GLOBAL"
    nqp_get_package_through_who $P3433, $P3432, "PAST"
    get_who $P3434, $P3433
    set $P3435, $P3434["Op"]
    find_lex $P3436, "self"
    find_lex $P3437, "$package"
    unless_null $P3437, vivify_1315
    new $P3437, "Undef"
  vivify_1315:
    $P3438 = $P3436."get_slot_past_for_object"($P3437)
    $P3439 = $P3435."new"($P3438, "get_who PP" :named("pirop"))
.annotate 'line', 2346
    find_lex $P3440, "$name"
    unless_null $P3440, vivify_1316
    new $P3440, "Undef"
  vivify_1316:
    set $S3441, $P3440
    $P3442 = $P3431."new"($P3439, $S3441, "keyed" :named("scope"))
.annotate 'line', 2348
    get_hll_global $P3443, "GLOBAL"
    nqp_get_package_through_who $P3444, $P3443, "PAST"
    get_who $P3445, $P3444
    set $P3446, $P3445["Val"]
    find_lex $P3447, "$past_block"
    unless_null $P3447, vivify_1317
    new $P3447, "Undef"
  vivify_1317:
    $P3448 = $P3446."new"($P3447 :named("value"))
    $P3449 = $P3427."new"($P3442, $P3448, "bind" :named("pasttype"))
.annotate 'line', 2341
    store_lex "$fixup", $P3449
.annotate 'line', 2350
    find_lex $P3450, "self"
    find_lex $P3451, "$fixup"
    unless_null $P3451, vivify_1318
    new $P3451, "Undef"
  vivify_1318:
    find_lex $P3452, "$fixup"
    unless_null $P3452, vivify_1319
    new $P3452, "Undef"
  vivify_1319:
    $P3453 = $P3450."add_event"($P3451 :named("deserialize_past"), $P3452 :named("fixup_past"))
.annotate 'line', 2340
    .return ($P3453)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("323_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3457
    .param pmc param_3458
    .param pmc param_3459 :optional :named("name")
    .param int has_param_3459 :opt_flag
    .param pmc param_3461 :optional :named("repr")
    .param int has_param_3461 :opt_flag
.annotate 'line', 2355
    new $P3456, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3456, control_3455
    push_eh $P3456
    .lex "self", param_3457
    .lex "$how", param_3458
    if has_param_3459, optparam_1320
    new $P3460, "Undef"
    set param_3459, $P3460
  optparam_1320:
    .lex "$name", param_3459
    if has_param_3461, optparam_1321
    new $P3462, "Undef"
    set param_3461, $P3462
  optparam_1321:
    .lex "$repr", param_3461
.annotate 'line', 2357
    $P3463 = root_new ['parrot';'Hash']
    .lex "%args", $P3463
.annotate 'line', 2360
    new $P3464, "Undef"
    .lex "$mo", $P3464
.annotate 'line', 2361
    new $P3465, "Undef"
    .lex "$slot", $P3465
.annotate 'line', 2365
    $P3466 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3466
.annotate 'line', 2366
    new $P3467, "Undef"
    .lex "$how_name", $P3467
.annotate 'line', 2367
    new $P3468, "Undef"
    .lex "$setup_call", $P3468
.annotate 'line', 2355
    find_lex $P3469, "%args"
    unless_null $P3469, vivify_1322
    $P3469 = root_new ['parrot';'Hash']
  vivify_1322:
.annotate 'line', 2358
    find_lex $P3471, "$name"
    unless_null $P3471, vivify_1323
    new $P3471, "Undef"
  vivify_1323:
    defined $I3472, $P3471
    unless $I3472, if_3470_end
    find_lex $P3473, "$name"
    unless_null $P3473, vivify_1324
    new $P3473, "Undef"
  vivify_1324:
    find_lex $P3474, "%args"
    unless_null $P3474, vivify_1325
    $P3474 = root_new ['parrot';'Hash']
    store_lex "%args", $P3474
  vivify_1325:
    set $P3474["name"], $P3473
  if_3470_end:
.annotate 'line', 2359
    find_lex $P3476, "$repr"
    unless_null $P3476, vivify_1326
    new $P3476, "Undef"
  vivify_1326:
    defined $I3477, $P3476
    unless $I3477, if_3475_end
    find_lex $P3478, "$repr"
    unless_null $P3478, vivify_1327
    new $P3478, "Undef"
  vivify_1327:
    find_lex $P3479, "%args"
    unless_null $P3479, vivify_1328
    $P3479 = root_new ['parrot';'Hash']
    store_lex "%args", $P3479
  vivify_1328:
    set $P3479["repr"], $P3478
  if_3475_end:
.annotate 'line', 2360
    find_lex $P3480, "$how"
    unless_null $P3480, vivify_1329
    new $P3480, "Undef"
  vivify_1329:
    find_lex $P3481, "%args"
    unless_null $P3481, vivify_1330
    $P3481 = root_new ['parrot';'Hash']
  vivify_1330:
    $P3482 = $P3480."new_type"($P3481 :flat)
    store_lex "$mo", $P3482
.annotate 'line', 2361
    find_lex $P3483, "self"
    find_lex $P3484, "$mo"
    unless_null $P3484, vivify_1331
    new $P3484, "Undef"
  vivify_1331:
    $P3485 = $P3483."add_object"($P3484)
    store_lex "$slot", $P3485
.annotate 'line', 2365
    find_lex $P3486, "$how"
    unless_null $P3486, vivify_1332
    new $P3486, "Undef"
  vivify_1332:
    get_how $P3487, $P3486
    find_lex $P3488, "$how"
    unless_null $P3488, vivify_1333
    new $P3488, "Undef"
  vivify_1333:
    $S3489 = $P3487."name"($P3488)
    split $P3490, "::", $S3489
    store_lex "@how_ns", $P3490
.annotate 'line', 2366
    find_lex $P3491, "@how_ns"
    unless_null $P3491, vivify_1334
    $P3491 = root_new ['parrot';'ResizablePMCArray']
  vivify_1334:
    $P3492 = $P3491."pop"()
    store_lex "$how_name", $P3492
.annotate 'line', 2367
    get_hll_global $P3493, "GLOBAL"
    nqp_get_package_through_who $P3494, $P3493, "PAST"
    get_who $P3495, $P3494
    set $P3496, $P3495["Op"]
.annotate 'line', 2369
    find_lex $P3497, "self"
    find_lex $P3498, "$how"
    unless_null $P3498, vivify_1335
    new $P3498, "Undef"
  vivify_1335:
    $P3499 = $P3497."get_object_sc_ref_past"($P3498)
    $P3500 = $P3496."new"($P3499, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2367
    store_lex "$setup_call", $P3500
.annotate 'line', 2371
    find_lex $P3502, "$name"
    unless_null $P3502, vivify_1336
    new $P3502, "Undef"
  vivify_1336:
    defined $I3503, $P3502
    unless $I3503, if_3501_end
.annotate 'line', 2372
    find_lex $P3504, "$setup_call"
    unless_null $P3504, vivify_1337
    new $P3504, "Undef"
  vivify_1337:
    get_hll_global $P3505, "GLOBAL"
    nqp_get_package_through_who $P3506, $P3505, "PAST"
    get_who $P3507, $P3506
    set $P3508, $P3507["Val"]
    find_lex $P3509, "$name"
    unless_null $P3509, vivify_1338
    new $P3509, "Undef"
  vivify_1338:
    $P3510 = $P3508."new"($P3509 :named("value"), "name" :named("named"))
    $P3504."push"($P3510)
  if_3501_end:
.annotate 'line', 2374
    find_lex $P3512, "$repr"
    unless_null $P3512, vivify_1339
    new $P3512, "Undef"
  vivify_1339:
    defined $I3513, $P3512
    unless $I3513, if_3511_end
.annotate 'line', 2375
    find_lex $P3514, "$setup_call"
    unless_null $P3514, vivify_1340
    new $P3514, "Undef"
  vivify_1340:
    get_hll_global $P3515, "GLOBAL"
    nqp_get_package_through_who $P3516, $P3515, "PAST"
    get_who $P3517, $P3516
    set $P3518, $P3517["Val"]
    find_lex $P3519, "$repr"
    unless_null $P3519, vivify_1341
    new $P3519, "Undef"
  vivify_1341:
    $P3520 = $P3518."new"($P3519 :named("value"), "repr" :named("named"))
    $P3514."push"($P3520)
  if_3511_end:
.annotate 'line', 2377
    find_lex $P3521, "self"
.annotate 'line', 2378
    find_lex $P3522, "self"
    find_lex $P3523, "$slot"
    unless_null $P3523, vivify_1342
    new $P3523, "Undef"
  vivify_1342:
    find_lex $P3524, "self"
    find_lex $P3525, "$setup_call"
    unless_null $P3525, vivify_1343
    new $P3525, "Undef"
  vivify_1343:
    $P3526 = $P3524."set_cur_sc"($P3525)
    $P3527 = $P3522."set_slot_past"($P3523, $P3526)
    $P3521."add_event"($P3527 :named("deserialize_past"))
.annotate 'line', 2381
    new $P3528, "Exception"
    set $P3528['type'], .CONTROL_RETURN
    find_lex $P3529, "$mo"
    unless_null $P3529, vivify_1344
    new $P3529, "Undef"
  vivify_1344:
    setattribute $P3528, 'payload', $P3529
    throw $P3528
.annotate 'line', 2355
    .return ()
  control_3455:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3530, exception, "payload"
    .return ($P3530)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_add_attribute"  :subid("324_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3532
    .param pmc param_3533
    .param pmc param_3534
    .param pmc param_3535
    .param pmc param_3536
.annotate 'line', 2389
    .const 'Sub' $P3582 = "326_1304282264.655" 
    capture_lex $P3582
    .const 'Sub' $P3561 = "325_1304282264.655" 
    capture_lex $P3561
    .lex "self", param_3532
    .lex "$obj", param_3533
    .lex "$meta_attr", param_3534
    .lex "%lit_args", param_3535
    .lex "%obj_args", param_3536
.annotate 'line', 2391
    new $P3537, "Undef"
    .lex "$attr", $P3537
.annotate 'line', 2395
    new $P3538, "Undef"
    .lex "$create_call", $P3538
.annotate 'line', 2407
    new $P3539, "Undef"
    .lex "$obj_slot_past", $P3539
.annotate 'line', 2391
    find_lex $P3540, "$meta_attr"
    unless_null $P3540, vivify_1345
    new $P3540, "Undef"
  vivify_1345:
    find_lex $P3541, "%lit_args"
    unless_null $P3541, vivify_1346
    $P3541 = root_new ['parrot';'Hash']
  vivify_1346:
    find_lex $P3542, "%obj_args"
    unless_null $P3542, vivify_1347
    $P3542 = root_new ['parrot';'Hash']
  vivify_1347:
    $P3543 = $P3540."new"($P3541 :flat, $P3542 :flat)
    store_lex "$attr", $P3543
.annotate 'line', 2392
    find_lex $P3544, "$obj"
    unless_null $P3544, vivify_1348
    new $P3544, "Undef"
  vivify_1348:
    get_how $P3545, $P3544
    find_lex $P3546, "$obj"
    unless_null $P3546, vivify_1349
    new $P3546, "Undef"
  vivify_1349:
    find_lex $P3547, "$attr"
    unless_null $P3547, vivify_1350
    new $P3547, "Undef"
  vivify_1350:
    $P3545."add_attribute"($P3546, $P3547)
.annotate 'line', 2395
    get_hll_global $P3548, "GLOBAL"
    nqp_get_package_through_who $P3549, $P3548, "PAST"
    get_who $P3550, $P3549
    set $P3551, $P3550["Op"]
.annotate 'line', 2397
    find_lex $P3552, "self"
    find_lex $P3553, "$meta_attr"
    unless_null $P3553, vivify_1351
    new $P3553, "Undef"
  vivify_1351:
    $P3554 = $P3552."get_object_sc_ref_past"($P3553)
    $P3555 = $P3551."new"($P3554, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 2395
    store_lex "$create_call", $P3555
.annotate 'line', 2399
    find_lex $P3557, "%lit_args"
    unless_null $P3557, vivify_1352
    $P3557 = root_new ['parrot';'Hash']
  vivify_1352:
    defined $I3558, $P3557
    unless $I3558, for_undef_1353
    iter $P3556, $P3557
    new $P3575, 'ExceptionHandler'
    set_label $P3575, loop3574_handler
    $P3575."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3575
  loop3574_test:
    unless $P3556, loop3574_done
    shift $P3559, $P3556
  loop3574_redo:
    .const 'Sub' $P3561 = "325_1304282264.655" 
    capture_lex $P3561
    $P3561($P3559)
  loop3574_next:
    goto loop3574_test
  loop3574_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3576, exception, 'type'
    eq $P3576, .CONTROL_LOOP_NEXT, loop3574_next
    eq $P3576, .CONTROL_LOOP_REDO, loop3574_redo
  loop3574_done:
    pop_eh 
  for_undef_1353:
.annotate 'line', 2402
    find_lex $P3578, "%obj_args"
    unless_null $P3578, vivify_1357
    $P3578 = root_new ['parrot';'Hash']
  vivify_1357:
    defined $I3579, $P3578
    unless $I3579, for_undef_1358
    iter $P3577, $P3578
    new $P3596, 'ExceptionHandler'
    set_label $P3596, loop3595_handler
    $P3596."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3596
  loop3595_test:
    unless $P3577, loop3595_done
    shift $P3580, $P3577
  loop3595_redo:
    .const 'Sub' $P3582 = "326_1304282264.655" 
    capture_lex $P3582
    $P3582($P3580)
  loop3595_next:
    goto loop3595_test
  loop3595_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3597, exception, 'type'
    eq $P3597, .CONTROL_LOOP_NEXT, loop3595_next
    eq $P3597, .CONTROL_LOOP_REDO, loop3595_redo
  loop3595_done:
    pop_eh 
  for_undef_1358:
.annotate 'line', 2407
    find_lex $P3598, "self"
    find_lex $P3599, "$obj"
    unless_null $P3599, vivify_1364
    new $P3599, "Undef"
  vivify_1364:
    $P3600 = $P3598."get_slot_past_for_object"($P3599)
    store_lex "$obj_slot_past", $P3600
.annotate 'line', 2408
    find_lex $P3601, "self"
    get_hll_global $P3602, "GLOBAL"
    nqp_get_package_through_who $P3603, $P3602, "PAST"
    get_who $P3604, $P3603
    set $P3605, $P3604["Op"]
.annotate 'line', 2410
    get_hll_global $P3606, "GLOBAL"
    nqp_get_package_through_who $P3607, $P3606, "PAST"
    get_who $P3608, $P3607
    set $P3609, $P3608["Op"]
    find_lex $P3610, "$obj_slot_past"
    unless_null $P3610, vivify_1365
    new $P3610, "Undef"
  vivify_1365:
    $P3611 = $P3609."new"($P3610, "get_how PP" :named("pirop"))
    find_lex $P3612, "$obj_slot_past"
    unless_null $P3612, vivify_1366
    new $P3612, "Undef"
  vivify_1366:
    find_lex $P3613, "$create_call"
    unless_null $P3613, vivify_1367
    new $P3613, "Undef"
  vivify_1367:
    $P3614 = $P3605."new"($P3611, $P3612, $P3613, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
.annotate 'line', 2408
    $P3615 = $P3601."add_event"($P3614 :named("deserialize_past"))
.annotate 'line', 2389
    .return ($P3615)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3560"  :anon :subid("325_1304282264.655") :outer("324_1304282264.655")
    .param pmc param_3562
.annotate 'line', 2399
    .lex "$_", param_3562
.annotate 'line', 2400
    find_lex $P3563, "$create_call"
    unless_null $P3563, vivify_1354
    new $P3563, "Undef"
  vivify_1354:
    get_hll_global $P3564, "GLOBAL"
    nqp_get_package_through_who $P3565, $P3564, "PAST"
    get_who $P3566, $P3565
    set $P3567, $P3566["Val"]
    find_lex $P3568, "$_"
    unless_null $P3568, vivify_1355
    new $P3568, "Undef"
  vivify_1355:
    $P3569 = $P3568."value"()
    find_lex $P3570, "$_"
    unless_null $P3570, vivify_1356
    new $P3570, "Undef"
  vivify_1356:
    $P3571 = $P3570."key"()
    $P3572 = $P3567."new"($P3569 :named("value"), $P3571 :named("named"))
    $P3573 = $P3563."push"($P3572)
.annotate 'line', 2399
    .return ($P3573)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3581"  :anon :subid("326_1304282264.655") :outer("324_1304282264.655")
    .param pmc param_3584
.annotate 'line', 2403
    new $P3583, "Undef"
    .lex "$lookup", $P3583
    .lex "$_", param_3584
    find_lex $P3585, "self"
    find_lex $P3586, "$_"
    unless_null $P3586, vivify_1359
    new $P3586, "Undef"
  vivify_1359:
    $P3587 = $P3586."value"()
    $P3588 = $P3585."get_object_sc_ref_past"($P3587)
    store_lex "$lookup", $P3588
.annotate 'line', 2404
    find_lex $P3589, "$lookup"
    unless_null $P3589, vivify_1360
    new $P3589, "Undef"
  vivify_1360:
    find_lex $P3590, "$_"
    unless_null $P3590, vivify_1361
    new $P3590, "Undef"
  vivify_1361:
    $P3591 = $P3590."key"()
    $P3589."named"($P3591)
.annotate 'line', 2405
    find_lex $P3592, "$create_call"
    unless_null $P3592, vivify_1362
    new $P3592, "Undef"
  vivify_1362:
    find_lex $P3593, "$lookup"
    unless_null $P3593, vivify_1363
    new $P3593, "Undef"
  vivify_1363:
    $P3594 = $P3592."push"($P3593)
.annotate 'line', 2402
    .return ($P3594)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3616"  :anon :subid("327_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3618 :slurpy
    .param pmc param_3619 :slurpy :named
.annotate 'line', 2420
    .lex "@args", param_3618
    .lex "%named", param_3619
.annotate 'line', 2421
    die "Cannot run code that has not yet been compiled."
.annotate 'line', 2420
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("328_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3622
    .param pmc param_3623
    .param pmc param_3624
    .param pmc param_3625
    .param pmc param_3626
    .param pmc param_3627
.annotate 'line', 2427
    .lex "self", param_3622
    .lex "$obj", param_3623
    .lex "$meta_method_name", param_3624
    .lex "$name", param_3625
    .lex "$method_past", param_3626
    .lex "$is_dispatcher", param_3627
.annotate 'line', 2430
    new $P3628, "Undef"
    .lex "$dummy", $P3628
.annotate 'line', 2456
    new $P3629, "Undef"
    .lex "$slot_past", $P3629
.annotate 'line', 2427
    find_lex $P3630, "$dummy"
    unless_null $P3630, vivify_1368
    new $P3630, "Undef"
  vivify_1368:
.annotate 'line', 2431
    find_lex $P3632, "$method_past"
    unless_null $P3632, vivify_1369
    $P3632 = root_new ['parrot';'Hash']
  vivify_1369:
    set $P3633, $P3632["compile_time_dummy"]
    unless_null $P3633, vivify_1370
    new $P3633, "Undef"
  vivify_1370:
    defined $I3634, $P3633
    if $I3634, if_3631
.annotate 'line', 2438
    find_lex $P3638, "$is_dispatcher"
    unless_null $P3638, vivify_1371
    new $P3638, "Undef"
  vivify_1371:
    if $P3638, if_3637
.annotate 'line', 2443
    find_lex $P3642, "$stub_code"
    unless_null $P3642, vivify_1372
    new $P3642, "Undef"
  vivify_1372:
    clone $P3643, $P3642
    store_lex "$dummy", $P3643
.annotate 'line', 2442
    goto if_3637_end
  if_3637:
.annotate 'line', 2439
    find_lex $P3639, "$method_past"
    unless_null $P3639, vivify_1373
    new $P3639, "Undef"
  vivify_1373:
    $P3639."pirflags"(":instanceof(\"DispatcherSub\")")
.annotate 'line', 2440
    new $P3640, "DispatcherSub"
    find_lex $P3641, "$stub_code"
    unless_null $P3641, vivify_1374
    new $P3641, "Undef"
  vivify_1374:
    assign $P3640, $P3641
    store_lex "$dummy", $P3640
  if_3637_end:
.annotate 'line', 2445
    find_lex $P3644, "$dummy"
    unless_null $P3644, vivify_1375
    new $P3644, "Undef"
  vivify_1375:
    find_lex $P3645, "$name"
    unless_null $P3645, vivify_1376
    new $P3645, "Undef"
  vivify_1376:
    set $S3646, $P3645
    assign $P3644, $S3646
.annotate 'line', 2446
    find_lex $P3647, "self"
    find_lex $P3648, "$dummy"
    unless_null $P3648, vivify_1377
    new $P3648, "Undef"
  vivify_1377:
    $P3647."add_code"($P3648)
.annotate 'line', 2447
    find_lex $P3649, "$dummy"
    unless_null $P3649, vivify_1378
    new $P3649, "Undef"
  vivify_1378:
    find_lex $P3650, "$method_past"
    unless_null $P3650, vivify_1379
    $P3650 = root_new ['parrot';'Hash']
    store_lex "$method_past", $P3650
  vivify_1379:
    set $P3650["compile_time_dummy"], $P3649
.annotate 'line', 2434
    goto if_3631_end
  if_3631:
.annotate 'line', 2432
    find_lex $P3635, "$method_past"
    unless_null $P3635, vivify_1380
    $P3635 = root_new ['parrot';'Hash']
  vivify_1380:
    set $P3636, $P3635["compile_time_dummy"]
    unless_null $P3636, vivify_1381
    new $P3636, "Undef"
  vivify_1381:
    store_lex "$dummy", $P3636
  if_3631_end:
.annotate 'line', 2451
    find_lex $P3651, "$obj"
    unless_null $P3651, vivify_1382
    new $P3651, "Undef"
  vivify_1382:
    get_how $P3652, $P3651
    find_lex $P3653, "$obj"
    unless_null $P3653, vivify_1383
    new $P3653, "Undef"
  vivify_1383:
    find_lex $P3654, "$name"
    unless_null $P3654, vivify_1384
    new $P3654, "Undef"
  vivify_1384:
    find_lex $P3655, "$dummy"
    unless_null $P3655, vivify_1385
    new $P3655, "Undef"
  vivify_1385:
    find_lex $P3656, "$meta_method_name"
    unless_null $P3656, vivify_1386
    new $P3656, "Undef"
  vivify_1386:
    set $S3657, $P3656
    $P3652.$S3657($P3653, $P3654, $P3655)
.annotate 'line', 2456
    find_lex $P3658, "self"
    find_lex $P3659, "$obj"
    unless_null $P3659, vivify_1387
    new $P3659, "Undef"
  vivify_1387:
    $P3660 = $P3658."get_slot_past_for_object"($P3659)
    store_lex "$slot_past", $P3660
.annotate 'line', 2457
    find_lex $P3661, "self"
.annotate 'line', 2458
    get_hll_global $P3662, "GLOBAL"
    nqp_get_package_through_who $P3663, $P3662, "PAST"
    get_who $P3664, $P3663
    set $P3665, $P3664["Op"]
    find_lex $P3666, "$meta_method_name"
    unless_null $P3666, vivify_1388
    new $P3666, "Undef"
  vivify_1388:
.annotate 'line', 2460
    get_hll_global $P3667, "GLOBAL"
    nqp_get_package_through_who $P3668, $P3667, "PAST"
    get_who $P3669, $P3668
    set $P3670, $P3669["Op"]
    find_lex $P3671, "$slot_past"
    unless_null $P3671, vivify_1389
    new $P3671, "Undef"
  vivify_1389:
    $P3672 = $P3670."new"($P3671, "get_how PP" :named("pirop"))
    find_lex $P3673, "$slot_past"
    unless_null $P3673, vivify_1390
    new $P3673, "Undef"
  vivify_1390:
    find_lex $P3674, "$name"
    unless_null $P3674, vivify_1391
    new $P3674, "Undef"
  vivify_1391:
.annotate 'line', 2463
    get_hll_global $P3675, "GLOBAL"
    nqp_get_package_through_who $P3676, $P3675, "PAST"
    get_who $P3677, $P3676
    set $P3678, $P3677["Val"]
    find_lex $P3679, "$method_past"
    unless_null $P3679, vivify_1392
    new $P3679, "Undef"
  vivify_1392:
    $P3680 = $P3678."new"($P3679 :named("value"))
    $P3681 = $P3665."new"($P3672, $P3673, $P3674, $P3680, "callmethod" :named("pasttype"), $P3666 :named("name"))
.annotate 'line', 2465
    get_hll_global $P3682, "GLOBAL"
    nqp_get_package_through_who $P3683, $P3682, "PAST"
    get_who $P3684, $P3683
    set $P3685, $P3684["Op"]
.annotate 'line', 2467
    find_lex $P3686, "self"
    find_lex $P3687, "$dummy"
    unless_null $P3687, vivify_1393
    new $P3687, "Undef"
  vivify_1393:
    $P3688 = $P3686."get_slot_past_for_object"($P3687)
.annotate 'line', 2468
    get_hll_global $P3689, "GLOBAL"
    nqp_get_package_through_who $P3690, $P3689, "PAST"
    get_who $P3691, $P3690
    set $P3692, $P3691["Val"]
    find_lex $P3693, "$method_past"
    unless_null $P3693, vivify_1394
    new $P3693, "Undef"
  vivify_1394:
    $P3694 = $P3692."new"($P3693 :named("value"))
    $P3695 = $P3685."new"($P3688, $P3694, "copy vPP" :named("pirop"))
.annotate 'line', 2465
    $P3696 = $P3661."add_event"($P3681 :named("deserialize_past"), $P3695 :named("fixup_past"))
.annotate 'line', 2427
    .return ($P3696)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_routine_signature"  :subid("329_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3698
    .param pmc param_3699
    .param pmc param_3700
    .param pmc param_3701
.annotate 'line', 2473
    .lex "self", param_3698
    .lex "$routine", param_3699
    .lex "$types", param_3700
    .lex "$definednesses", param_3701
.annotate 'line', 2476
    new $P3702, "Undef"
    .lex "$fixup", $P3702
.annotate 'line', 2483
    new $P3703, "Undef"
    .lex "$des", $P3703
.annotate 'line', 2476
    get_hll_global $P3704, "GLOBAL"
    nqp_get_package_through_who $P3705, $P3704, "PAST"
    get_who $P3706, $P3705
    set $P3707, $P3706["Op"]
    find_lex $P3708, "$types"
    unless_null $P3708, vivify_1395
    new $P3708, "Undef"
  vivify_1395:
    find_lex $P3709, "$definednesses"
    unless_null $P3709, vivify_1396
    new $P3709, "Undef"
  vivify_1396:
    $P3710 = $P3707."new"($P3708, $P3709, "set_sub_multisig vPPP" :named("pirop"))
    store_lex "$fixup", $P3710
.annotate 'line', 2477
    find_lex $P3712, "$routine"
    unless_null $P3712, vivify_1397
    $P3712 = root_new ['parrot';'Hash']
  vivify_1397:
    set $P3713, $P3712["compile_time_dummy"]
    unless_null $P3713, vivify_1398
    new $P3713, "Undef"
  vivify_1398:
    defined $I3714, $P3713
    if $I3714, if_3711
.annotate 'line', 2481
    find_lex $P3720, "$fixup"
    unless_null $P3720, vivify_1399
    new $P3720, "Undef"
  vivify_1399:
    get_hll_global $P3721, "GLOBAL"
    nqp_get_package_through_who $P3722, $P3721, "PAST"
    get_who $P3723, $P3722
    set $P3724, $P3723["Val"]
    find_lex $P3725, "$routine"
    unless_null $P3725, vivify_1400
    new $P3725, "Undef"
  vivify_1400:
    $P3726 = $P3724."new"($P3725 :named("value"))
    $P3720."unshift"($P3726)
.annotate 'line', 2480
    goto if_3711_end
  if_3711:
.annotate 'line', 2478
    find_lex $P3715, "$fixup"
    unless_null $P3715, vivify_1401
    new $P3715, "Undef"
  vivify_1401:
    find_lex $P3716, "self"
    find_lex $P3717, "$routine"
    unless_null $P3717, vivify_1402
    $P3717 = root_new ['parrot';'Hash']
  vivify_1402:
    set $P3718, $P3717["compile_time_dummy"]
    unless_null $P3718, vivify_1403
    new $P3718, "Undef"
  vivify_1403:
    $P3719 = $P3716."get_slot_past_for_object"($P3718)
    $P3715."unshift"($P3719)
  if_3711_end:
.annotate 'line', 2483
    get_hll_global $P3727, "GLOBAL"
    nqp_get_package_through_who $P3728, $P3727, "PAST"
    get_who $P3729, $P3728
    set $P3730, $P3729["Op"]
.annotate 'line', 2484
    get_hll_global $P3731, "GLOBAL"
    nqp_get_package_through_who $P3732, $P3731, "PAST"
    get_who $P3733, $P3732
    set $P3734, $P3733["Val"]
    find_lex $P3735, "$routine"
    unless_null $P3735, vivify_1404
    new $P3735, "Undef"
  vivify_1404:
    $P3736 = $P3734."new"($P3735 :named("value"))
    find_lex $P3737, "$types"
    unless_null $P3737, vivify_1405
    new $P3737, "Undef"
  vivify_1405:
    find_lex $P3738, "$definednesses"
    unless_null $P3738, vivify_1406
    new $P3738, "Undef"
  vivify_1406:
    $P3739 = $P3730."new"($P3736, $P3737, $P3738, "set_sub_multisig vPPP" :named("pirop"))
.annotate 'line', 2483
    store_lex "$des", $P3739
.annotate 'line', 2486
    find_lex $P3740, "self"
    find_lex $P3741, "$des"
    unless_null $P3741, vivify_1407
    new $P3741, "Undef"
  vivify_1407:
    find_lex $P3742, "$fixup"
    unless_null $P3742, vivify_1408
    new $P3742, "Undef"
  vivify_1408:
    $P3743 = $P3740."add_event"($P3741 :named("deserialize_past"), $P3742 :named("fixup_past"))
.annotate 'line', 2473
    .return ($P3743)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("330_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3745
    .param pmc param_3746
    .param pmc param_3747
    .param pmc param_3748
.annotate 'line', 2491
    .lex "self", param_3745
    .lex "$obj", param_3746
    .lex "$meta_method_name", param_3747
    .lex "$to_add", param_3748
.annotate 'line', 2496
    new $P3749, "Undef"
    .lex "$slot_past", $P3749
.annotate 'line', 2493
    find_lex $P3750, "$obj"
    unless_null $P3750, vivify_1409
    new $P3750, "Undef"
  vivify_1409:
    get_how $P3751, $P3750
    find_lex $P3752, "$obj"
    unless_null $P3752, vivify_1410
    new $P3752, "Undef"
  vivify_1410:
    find_lex $P3753, "$to_add"
    unless_null $P3753, vivify_1411
    new $P3753, "Undef"
  vivify_1411:
    find_lex $P3754, "$meta_method_name"
    unless_null $P3754, vivify_1412
    new $P3754, "Undef"
  vivify_1412:
    set $S3755, $P3754
    $P3751.$S3755($P3752, $P3753)
.annotate 'line', 2496
    find_lex $P3756, "self"
    find_lex $P3757, "$obj"
    unless_null $P3757, vivify_1413
    new $P3757, "Undef"
  vivify_1413:
    $P3758 = $P3756."get_slot_past_for_object"($P3757)
    store_lex "$slot_past", $P3758
.annotate 'line', 2497
    find_lex $P3759, "self"
    get_hll_global $P3760, "GLOBAL"
    nqp_get_package_through_who $P3761, $P3760, "PAST"
    get_who $P3762, $P3761
    set $P3763, $P3762["Op"]
    find_lex $P3764, "$meta_method_name"
    unless_null $P3764, vivify_1414
    new $P3764, "Undef"
  vivify_1414:
.annotate 'line', 2499
    get_hll_global $P3765, "GLOBAL"
    nqp_get_package_through_who $P3766, $P3765, "PAST"
    get_who $P3767, $P3766
    set $P3768, $P3767["Op"]
    find_lex $P3769, "$slot_past"
    unless_null $P3769, vivify_1415
    new $P3769, "Undef"
  vivify_1415:
    $P3770 = $P3768."new"($P3769, "get_how PP" :named("pirop"))
    find_lex $P3771, "$slot_past"
    unless_null $P3771, vivify_1416
    new $P3771, "Undef"
  vivify_1416:
.annotate 'line', 2501
    find_lex $P3772, "self"
    find_lex $P3773, "$to_add"
    unless_null $P3773, vivify_1417
    new $P3773, "Undef"
  vivify_1417:
    $P3774 = $P3772."get_object_sc_ref_past"($P3773)
    $P3775 = $P3763."new"($P3770, $P3771, $P3774, "callmethod" :named("pasttype"), $P3764 :named("name"))
.annotate 'line', 2497
    $P3776 = $P3759."add_event"($P3775 :named("deserialize_past"))
.annotate 'line', 2491
    .return ($P3776)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("331_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3778
    .param pmc param_3779
.annotate 'line', 2506
    .lex "self", param_3778
    .lex "$obj", param_3779
.annotate 'line', 2511
    new $P3780, "Undef"
    .lex "$slot_past", $P3780
.annotate 'line', 2508
    find_lex $P3781, "$obj"
    unless_null $P3781, vivify_1418
    new $P3781, "Undef"
  vivify_1418:
    get_how $P3782, $P3781
    find_lex $P3783, "$obj"
    unless_null $P3783, vivify_1419
    new $P3783, "Undef"
  vivify_1419:
    $P3782."compose"($P3783)
.annotate 'line', 2511
    find_lex $P3784, "$obj"
    unless_null $P3784, vivify_1420
    new $P3784, "Undef"
  vivify_1420:
    $P3785 = "get_slot_past_for_object"($P3784)
    store_lex "$slot_past", $P3785
.annotate 'line', 2512
    find_lex $P3786, "self"
    get_hll_global $P3787, "GLOBAL"
    nqp_get_package_through_who $P3788, $P3787, "PAST"
    get_who $P3789, $P3788
    set $P3790, $P3789["Op"]
.annotate 'line', 2514
    get_hll_global $P3791, "GLOBAL"
    nqp_get_package_through_who $P3792, $P3791, "PAST"
    get_who $P3793, $P3792
    set $P3794, $P3793["Op"]
    find_lex $P3795, "$slot_past"
    unless_null $P3795, vivify_1421
    new $P3795, "Undef"
  vivify_1421:
    $P3796 = $P3794."new"($P3795, "get_how PP" :named("pirop"))
    find_lex $P3797, "$slot_past"
    unless_null $P3797, vivify_1422
    new $P3797, "Undef"
  vivify_1422:
    $P3798 = $P3790."new"($P3796, $P3797, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2512
    $P3799 = $P3786."add_event"($P3798 :named("deserialize_past"))
.annotate 'line', 2506
    .return ($P3799)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("332_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3801
.annotate 'line', 2520
    .lex "self", param_3801
    find_lex $P3802, "self"
    find_lex $P3803, "$?CLASS"
    getattribute $P3804, $P3802, $P3803, "$!sc"
    unless_null $P3804, vivify_1423
    new $P3804, "Undef"
  vivify_1423:
    .return ($P3804)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("333_1304282264.655") :outer("299_1304282264.655")
    .param pmc param_3806
.annotate 'line', 2526
    .const 'Sub' $P3826 = "334_1304282264.655" 
    capture_lex $P3826
    .lex "self", param_3806
.annotate 'line', 2527
    new $P3807, "Undef"
    .lex "$des", $P3807
.annotate 'line', 2528
    new $P3808, "Undef"
    .lex "$fix", $P3808
.annotate 'line', 2527
    get_hll_global $P3809, "GLOBAL"
    nqp_get_package_through_who $P3810, $P3809, "PAST"
    get_who $P3811, $P3810
    set $P3812, $P3811["Stmts"]
    $P3813 = $P3812."new"()
    store_lex "$des", $P3813
.annotate 'line', 2528
    get_hll_global $P3814, "GLOBAL"
    nqp_get_package_through_who $P3815, $P3814, "PAST"
    get_who $P3816, $P3815
    set $P3817, $P3816["Stmts"]
    $P3818 = $P3817."new"()
    store_lex "$fix", $P3818
.annotate 'line', 2529
    find_lex $P3820, "self"
    find_lex $P3821, "$?CLASS"
    getattribute $P3822, $P3820, $P3821, "@!event_stream"
    unless_null $P3822, vivify_1424
    $P3822 = root_new ['parrot';'ResizablePMCArray']
  vivify_1424:
    defined $I3823, $P3822
    unless $I3823, for_undef_1425
    iter $P3819, $P3822
    new $P3845, 'ExceptionHandler'
    set_label $P3845, loop3844_handler
    $P3845."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3845
  loop3844_test:
    unless $P3819, loop3844_done
    shift $P3824, $P3819
  loop3844_redo:
    .const 'Sub' $P3826 = "334_1304282264.655" 
    capture_lex $P3826
    $P3826($P3824)
  loop3844_next:
    goto loop3844_test
  loop3844_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3846, exception, 'type'
    eq $P3846, .CONTROL_LOOP_NEXT, loop3844_next
    eq $P3846, .CONTROL_LOOP_REDO, loop3844_redo
  loop3844_done:
    pop_eh 
  for_undef_1425:
.annotate 'line', 2533
    find_dynamic_lex $P3847, "$/"
    get_hll_global $P3848, "GLOBAL"
    nqp_get_package_through_who $P3849, $P3848, "PAST"
    get_who $P3850, $P3849
    set $P3851, $P3850["Op"]
.annotate 'line', 2535
    get_hll_global $P3852, "GLOBAL"
    nqp_get_package_through_who $P3853, $P3852, "PAST"
    get_who $P3854, $P3853
    set $P3855, $P3854["Op"]
.annotate 'line', 2537
    get_hll_global $P3856, "GLOBAL"
    nqp_get_package_through_who $P3857, $P3856, "PAST"
    get_who $P3858, $P3857
    set $P3859, $P3858["Op"]
    find_lex $P3860, "self"
    find_lex $P3861, "$?CLASS"
    getattribute $P3862, $P3860, $P3861, "$!handle"
    unless_null $P3862, vivify_1432
    new $P3862, "Undef"
  vivify_1432:
    $P3863 = $P3859."new"($P3862, "nqp_get_sc Ps" :named("pirop"))
    $P3864 = $P3855."new"($P3863, "isnull IP" :named("pirop"))
.annotate 'line', 2539
    get_hll_global $P3865, "GLOBAL"
    nqp_get_package_through_who $P3866, $P3865, "PAST"
    get_who $P3867, $P3866
    set $P3868, $P3867["Stmts"]
.annotate 'line', 2540
    get_hll_global $P3869, "GLOBAL"
    nqp_get_package_through_who $P3870, $P3869, "PAST"
    get_who $P3871, $P3870
    set $P3872, $P3871["Op"]
    $P3873 = $P3872."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2541
    get_hll_global $P3874, "GLOBAL"
    nqp_get_package_through_who $P3875, $P3874, "PAST"
    get_who $P3876, $P3875
    set $P3877, $P3876["Op"]
.annotate 'line', 2543
    get_hll_global $P3878, "GLOBAL"
    nqp_get_package_through_who $P3879, $P3878, "PAST"
    get_who $P3880, $P3879
    set $P3881, $P3880["Op"]
    $P3882 = $P3881."new"("getinterp P" :named("pirop"))
.annotate 'line', 2544
    get_hll_global $P3883, "GLOBAL"
    nqp_get_package_through_who $P3884, $P3883, "PAST"
    get_who $P3885, $P3884
    set $P3886, $P3885["Op"]
    $P3887 = $P3886."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2545
    get_hll_global $P3888, "GLOBAL"
    nqp_get_package_through_who $P3889, $P3888, "PAST"
    get_who $P3890, $P3889
    set $P3891, $P3890["Op"]
    $P3892 = $P3891."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3893 = $P3877."new"($P3882, $P3887, $P3892, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2547
    get_hll_global $P3894, "GLOBAL"
    nqp_get_package_through_who $P3895, $P3894, "PAST"
    get_who $P3896, $P3895
    set $P3897, $P3896["Op"]
.annotate 'line', 2549
    get_hll_global $P3898, "GLOBAL"
    nqp_get_package_through_who $P3899, $P3898, "PAST"
    get_who $P3900, $P3899
    set $P3901, $P3900["Var"]
    $P3902 = $P3901."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2550
    get_hll_global $P3903, "GLOBAL"
    nqp_get_package_through_who $P3904, $P3903, "PAST"
    get_who $P3905, $P3904
    set $P3906, $P3905["Op"]
    find_lex $P3907, "self"
    find_lex $P3908, "$?CLASS"
    getattribute $P3909, $P3907, $P3908, "$!handle"
    unless_null $P3909, vivify_1433
    new $P3909, "Undef"
  vivify_1433:
    $P3910 = $P3906."new"($P3909, "nqp_create_sc Ps" :named("pirop"))
    $P3911 = $P3897."new"($P3902, $P3910, "bind" :named("pasttype"))
.annotate 'line', 2547
    find_lex $P3912, "$des"
    unless_null $P3912, vivify_1434
    new $P3912, "Undef"
  vivify_1434:
    $P3913 = $P3868."new"($P3873, $P3893, $P3911, $P3912)
.annotate 'line', 2539
    find_lex $P3914, "$fix"
    unless_null $P3914, vivify_1435
    new $P3914, "Undef"
  vivify_1435:
    $P3915 = $P3851."new"($P3864, $P3913, $P3914, "if" :named("pasttype"))
.annotate 'line', 2533
    $P3916 = $P3847."!make"($P3915)
.annotate 'line', 2526
    .return ($P3916)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3825"  :anon :subid("334_1304282264.655") :outer("333_1304282264.655")
    .param pmc param_3827
.annotate 'line', 2529
    .lex "$_", param_3827
.annotate 'line', 2530
    find_lex $P3829, "$_"
    unless_null $P3829, vivify_1426
    new $P3829, "Undef"
  vivify_1426:
    $P3830 = $P3829."deserialize_past"()
    defined $I3831, $P3830
    unless $I3831, if_3828_end
    find_lex $P3832, "$des"
    unless_null $P3832, vivify_1427
    new $P3832, "Undef"
  vivify_1427:
    find_lex $P3833, "$_"
    unless_null $P3833, vivify_1428
    new $P3833, "Undef"
  vivify_1428:
    $P3834 = $P3833."deserialize_past"()
    $P3832."push"($P3834)
  if_3828_end:
.annotate 'line', 2531
    find_lex $P3837, "$_"
    unless_null $P3837, vivify_1429
    new $P3837, "Undef"
  vivify_1429:
    $P3838 = $P3837."fixup_past"()
    defined $I3839, $P3838
    if $I3839, if_3836
    new $P3835, 'Integer'
    set $P3835, $I3839
    goto if_3836_end
  if_3836:
    find_lex $P3840, "$fix"
    unless_null $P3840, vivify_1430
    new $P3840, "Undef"
  vivify_1430:
    find_lex $P3841, "$_"
    unless_null $P3841, vivify_1431
    new $P3841, "Undef"
  vivify_1431:
    $P3842 = $P3841."fixup_past"()
    $P3843 = $P3840."push"($P3842)
    set $P3835, $P3843
  if_3836_end:
.annotate 'line', 2529
    .return ($P3835)
.end


.HLL "nqp"

.namespace []
.sub "_block3924" :load :anon :subid("336_1304282264.655")
.annotate 'line', 1064
    .const 'Sub' $P3926 = "10_1304282264.655" 
    $P3927 = $P3926()
    .return ($P3927)
.end

