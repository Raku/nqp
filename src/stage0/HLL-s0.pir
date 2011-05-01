
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304284961.094")
.annotate 'line', 0
    .const 'Sub' $P2843 = "257_1304284961.094" 
    capture_lex $P2843
    .const 'Sub' $P2414 = "238_1304284961.094" 
    capture_lex $P2414
    .const 'Sub' $P2336 = "231_1304284961.094" 
    capture_lex $P2336
    .const 'Sub' $P1162 = "165_1304284961.094" 
    capture_lex $P1162
    .const 'Sub' $P477 = "119_1304284961.094" 
    capture_lex $P477
    .const 'Sub' $P17 = "11_1304284961.094" 
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
    .const 'Sub' $P17 = "11_1304284961.094" 
    capture_lex $P17
    $P17()
.annotate 'line', 867
    .const 'Sub' $P477 = "119_1304284961.094" 
    capture_lex $P477
    $P477()
.annotate 'line', 1072
    .const 'Sub' $P1162 = "165_1304284961.094" 
    capture_lex $P1162
    $P1162()
.annotate 'line', 1791
    get_hll_global $P2329, "GLOBAL"
    nqp_get_package_through_who $P2330, $P2329, "HLL"
    get_who $P2331, $P2330
    set $P2332, $P2331["Compiler"]
    $P2333 = $P2332."new"()
    store_lex "$compiler", $P2333
.annotate 'line', 1792
    find_lex $P2334, "$compiler"
    unless_null $P2334, vivify_1022
    new $P2334, "Undef"
  vivify_1022:
    $P2334."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2336 = "231_1304284961.094" 
    capture_lex $P2336
    $P2336()
.annotate 'line', 1918
    .const 'Sub' $P2414 = "238_1304284961.094" 
    capture_lex $P2414
    $P2414()
.annotate 'line', 2096
    .const 'Sub' $P2843 = "257_1304284961.094" 
    capture_lex $P2843
    $P3828 = $P2843()
.annotate 'line', 1
    .return ($P3828)
.annotate 'line', 1064
    .const 'Sub' $P3830 = "293_1304284961.094" 
.annotate 'line', 1
    .return ($P3830)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post294") :outer("10_1304284961.094")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304284961.094" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3834, "1304284952.167"
    isnull $I3835, $P3834
    if $I3835, if_3833
    .const 'Sub' $P4994 = "10_1304284961.094" 
    $P4995 = $P4994."get_lexinfo"()
    nqp_get_sc_object $P4996, "1304284952.167", 0
    $P4995."set_static_lexpad_value"("GLOBALish", $P4996)
    .const 'Sub' $P4997 = "10_1304284961.094" 
    $P4998 = $P4997."get_lexinfo"()
    $P4998."finish_static_lexpad"()
    .const 'Sub' $P4999 = "10_1304284961.094" 
    $P5000 = $P4999."get_lexinfo"()
    nqp_get_sc_object $P5001, "1304284952.167", 0
    $P5000."set_static_lexpad_value"("$?PACKAGE", $P5001)
    .const 'Sub' $P5002 = "10_1304284961.094" 
    $P5003 = $P5002."get_lexinfo"()
    $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5004, "1304284952.167", 2
    .const 'Sub' $P5005 = "12_1304284961.094" 
    copy $P5004, $P5005
    nqp_get_sc_object $P5006, "1304284952.167", 3
    .const 'Sub' $P5007 = "13_1304284961.094" 
    copy $P5006, $P5007
    nqp_get_sc_object $P5008, "1304284952.167", 4
    .const 'Sub' $P5009 = "14_1304284961.094" 
    copy $P5008, $P5009
    nqp_get_sc_object $P5010, "1304284952.167", 5
    .const 'Sub' $P5011 = "15_1304284961.094" 
    copy $P5010, $P5011
    nqp_get_sc_object $P5012, "1304284952.167", 6
    .const 'Sub' $P5013 = "16_1304284961.094" 
    copy $P5012, $P5013
    nqp_get_sc_object $P5014, "1304284952.167", 7
    .const 'Sub' $P5015 = "17_1304284961.094" 
    copy $P5014, $P5015
    nqp_get_sc_object $P5016, "1304284952.167", 8
    .const 'Sub' $P5017 = "18_1304284961.094" 
    copy $P5016, $P5017
    nqp_get_sc_object $P5018, "1304284952.167", 9
    .const 'Sub' $P5019 = "19_1304284961.094" 
    copy $P5018, $P5019
    nqp_get_sc_object $P5020, "1304284952.167", 10
    .const 'Sub' $P5021 = "20_1304284961.094" 
    copy $P5020, $P5021
    nqp_get_sc_object $P5022, "1304284952.167", 11
    .const 'Sub' $P5023 = "21_1304284961.094" 
    copy $P5022, $P5023
    nqp_get_sc_object $P5024, "1304284952.167", 12
    .const 'Sub' $P5025 = "22_1304284961.094" 
    copy $P5024, $P5025
    nqp_get_sc_object $P5026, "1304284952.167", 13
    .const 'Sub' $P5027 = "23_1304284961.094" 
    copy $P5026, $P5027
    nqp_get_sc_object $P5028, "1304284952.167", 14
    .const 'Sub' $P5029 = "24_1304284961.094" 
    copy $P5028, $P5029
    nqp_get_sc_object $P5030, "1304284952.167", 15
    .const 'Sub' $P5031 = "25_1304284961.094" 
    copy $P5030, $P5031
    nqp_get_sc_object $P5032, "1304284952.167", 16
    .const 'Sub' $P5033 = "26_1304284961.094" 
    copy $P5032, $P5033
    nqp_get_sc_object $P5034, "1304284952.167", 17
    .const 'Sub' $P5035 = "27_1304284961.094" 
    copy $P5034, $P5035
    nqp_get_sc_object $P5036, "1304284952.167", 18
    .const 'Sub' $P5037 = "28_1304284961.094" 
    copy $P5036, $P5037
    nqp_get_sc_object $P5038, "1304284952.167", 19
    .const 'Sub' $P5039 = "29_1304284961.094" 
    copy $P5038, $P5039
    nqp_get_sc_object $P5040, "1304284952.167", 20
    .const 'Sub' $P5041 = "30_1304284961.094" 
    copy $P5040, $P5041
    nqp_get_sc_object $P5042, "1304284952.167", 21
    .const 'Sub' $P5043 = "31_1304284961.094" 
    copy $P5042, $P5043
    nqp_get_sc_object $P5044, "1304284952.167", 22
    .const 'Sub' $P5045 = "32_1304284961.094" 
    copy $P5044, $P5045
    nqp_get_sc_object $P5046, "1304284952.167", 23
    .const 'Sub' $P5047 = "33_1304284961.094" 
    copy $P5046, $P5047
    nqp_get_sc_object $P5048, "1304284952.167", 24
    .const 'Sub' $P5049 = "34_1304284961.094" 
    copy $P5048, $P5049
    nqp_get_sc_object $P5050, "1304284952.167", 25
    .const 'Sub' $P5051 = "35_1304284961.094" 
    copy $P5050, $P5051
    nqp_get_sc_object $P5052, "1304284952.167", 26
    .const 'Sub' $P5053 = "36_1304284961.094" 
    copy $P5052, $P5053
    nqp_get_sc_object $P5054, "1304284952.167", 27
    .const 'Sub' $P5055 = "37_1304284961.094" 
    copy $P5054, $P5055
    nqp_get_sc_object $P5056, "1304284952.167", 28
    .const 'Sub' $P5057 = "38_1304284961.094" 
    copy $P5056, $P5057
    nqp_get_sc_object $P5058, "1304284952.167", 29
    .const 'Sub' $P5059 = "39_1304284961.094" 
    copy $P5058, $P5059
    nqp_get_sc_object $P5060, "1304284952.167", 30
    .const 'Sub' $P5061 = "40_1304284961.094" 
    copy $P5060, $P5061
    nqp_get_sc_object $P5062, "1304284952.167", 31
    .const 'Sub' $P5063 = "41_1304284961.094" 
    copy $P5062, $P5063
    nqp_get_sc_object $P5064, "1304284952.167", 32
    .const 'Sub' $P5065 = "42_1304284961.094" 
    copy $P5064, $P5065
    nqp_get_sc_object $P5066, "1304284952.167", 33
    .const 'Sub' $P5067 = "43_1304284961.094" 
    copy $P5066, $P5067
    nqp_get_sc_object $P5068, "1304284952.167", 34
    .const 'Sub' $P5069 = "44_1304284961.094" 
    copy $P5068, $P5069
    nqp_get_sc_object $P5070, "1304284952.167", 35
    .const 'Sub' $P5071 = "45_1304284961.094" 
    copy $P5070, $P5071
    nqp_get_sc_object $P5072, "1304284952.167", 36
    .const 'Sub' $P5073 = "46_1304284961.094" 
    copy $P5072, $P5073
    nqp_get_sc_object $P5074, "1304284952.167", 37
    .const 'Sub' $P5075 = "47_1304284961.094" 
    copy $P5074, $P5075
    nqp_get_sc_object $P5076, "1304284952.167", 38
    .const 'Sub' $P5077 = "48_1304284961.094" 
    copy $P5076, $P5077
    nqp_get_sc_object $P5078, "1304284952.167", 39
    .const 'Sub' $P5079 = "49_1304284961.094" 
    copy $P5078, $P5079
    nqp_get_sc_object $P5080, "1304284952.167", 40
    .const 'Sub' $P5081 = "50_1304284961.094" 
    copy $P5080, $P5081
    nqp_get_sc_object $P5082, "1304284952.167", 41
    .const 'Sub' $P5083 = "51_1304284961.094" 
    copy $P5082, $P5083
    nqp_get_sc_object $P5084, "1304284952.167", 42
    .const 'Sub' $P5085 = "52_1304284961.094" 
    copy $P5084, $P5085
    nqp_get_sc_object $P5086, "1304284952.167", 43
    .const 'Sub' $P5087 = "53_1304284961.094" 
    copy $P5086, $P5087
    nqp_get_sc_object $P5088, "1304284952.167", 44
    .const 'Sub' $P5089 = "54_1304284961.094" 
    copy $P5088, $P5089
    nqp_get_sc_object $P5090, "1304284952.167", 45
    .const 'Sub' $P5091 = "55_1304284961.094" 
    copy $P5090, $P5091
    nqp_get_sc_object $P5092, "1304284952.167", 46
    .const 'Sub' $P5093 = "56_1304284961.094" 
    copy $P5092, $P5093
    nqp_get_sc_object $P5094, "1304284952.167", 47
    .const 'Sub' $P5095 = "57_1304284961.094" 
    copy $P5094, $P5095
    nqp_get_sc_object $P5096, "1304284952.167", 48
    .const 'Sub' $P5097 = "58_1304284961.094" 
    copy $P5096, $P5097
    nqp_get_sc_object $P5098, "1304284952.167", 49
    .const 'Sub' $P5099 = "59_1304284961.094" 
    copy $P5098, $P5099
    nqp_get_sc_object $P5100, "1304284952.167", 50
    .const 'Sub' $P5101 = "60_1304284961.094" 
    copy $P5100, $P5101
    nqp_get_sc_object $P5102, "1304284952.167", 51
    .const 'Sub' $P5103 = "61_1304284961.094" 
    copy $P5102, $P5103
    nqp_get_sc_object $P5104, "1304284952.167", 52
    .const 'Sub' $P5105 = "62_1304284961.094" 
    copy $P5104, $P5105
    nqp_get_sc_object $P5106, "1304284952.167", 53
    .const 'Sub' $P5107 = "63_1304284961.094" 
    copy $P5106, $P5107
    nqp_get_sc_object $P5108, "1304284952.167", 54
    .const 'Sub' $P5109 = "64_1304284961.094" 
    copy $P5108, $P5109
    nqp_get_sc_object $P5110, "1304284952.167", 55
    .const 'Sub' $P5111 = "65_1304284961.094" 
    copy $P5110, $P5111
    nqp_get_sc_object $P5112, "1304284952.167", 56
    .const 'Sub' $P5113 = "66_1304284961.094" 
    copy $P5112, $P5113
    nqp_get_sc_object $P5114, "1304284952.167", 57
    .const 'Sub' $P5115 = "67_1304284961.094" 
    copy $P5114, $P5115
    nqp_get_sc_object $P5116, "1304284952.167", 58
    .const 'Sub' $P5117 = "68_1304284961.094" 
    copy $P5116, $P5117
    nqp_get_sc_object $P5118, "1304284952.167", 59
    .const 'Sub' $P5119 = "69_1304284961.094" 
    copy $P5118, $P5119
    nqp_get_sc_object $P5120, "1304284952.167", 60
    .const 'Sub' $P5121 = "70_1304284961.094" 
    copy $P5120, $P5121
    nqp_get_sc_object $P5122, "1304284952.167", 61
    .const 'Sub' $P5123 = "71_1304284961.094" 
    copy $P5122, $P5123
    nqp_get_sc_object $P5124, "1304284952.167", 62
    .const 'Sub' $P5125 = "72_1304284961.094" 
    copy $P5124, $P5125
    nqp_get_sc_object $P5126, "1304284952.167", 63
    .const 'Sub' $P5127 = "73_1304284961.094" 
    copy $P5126, $P5127
    nqp_get_sc_object $P5128, "1304284952.167", 64
    .const 'Sub' $P5129 = "74_1304284961.094" 
    copy $P5128, $P5129
    nqp_get_sc_object $P5130, "1304284952.167", 65
    .const 'Sub' $P5131 = "75_1304284961.094" 
    copy $P5130, $P5131
    nqp_get_sc_object $P5132, "1304284952.167", 66
    .const 'Sub' $P5133 = "76_1304284961.094" 
    copy $P5132, $P5133
    nqp_get_sc_object $P5134, "1304284952.167", 67
    .const 'Sub' $P5135 = "77_1304284961.094" 
    copy $P5134, $P5135
    nqp_get_sc_object $P5136, "1304284952.167", 68
    .const 'Sub' $P5137 = "78_1304284961.094" 
    copy $P5136, $P5137
    nqp_get_sc_object $P5138, "1304284952.167", 69
    .const 'Sub' $P5139 = "79_1304284961.094" 
    copy $P5138, $P5139
    nqp_get_sc_object $P5140, "1304284952.167", 70
    .const 'Sub' $P5141 = "80_1304284961.094" 
    copy $P5140, $P5141
    nqp_get_sc_object $P5142, "1304284952.167", 71
    .const 'Sub' $P5143 = "81_1304284961.094" 
    copy $P5142, $P5143
    nqp_get_sc_object $P5144, "1304284952.167", 72
    .const 'Sub' $P5145 = "82_1304284961.094" 
    copy $P5144, $P5145
    nqp_get_sc_object $P5146, "1304284952.167", 73
    .const 'Sub' $P5147 = "83_1304284961.094" 
    copy $P5146, $P5147
    nqp_get_sc_object $P5148, "1304284952.167", 74
    .const 'Sub' $P5149 = "84_1304284961.094" 
    copy $P5148, $P5149
    nqp_get_sc_object $P5150, "1304284952.167", 75
    .const 'Sub' $P5151 = "85_1304284961.094" 
    copy $P5150, $P5151
    nqp_get_sc_object $P5152, "1304284952.167", 76
    .const 'Sub' $P5153 = "86_1304284961.094" 
    copy $P5152, $P5153
    nqp_get_sc_object $P5154, "1304284952.167", 77
    .const 'Sub' $P5155 = "87_1304284961.094" 
    copy $P5154, $P5155
    nqp_get_sc_object $P5156, "1304284952.167", 78
    .const 'Sub' $P5157 = "88_1304284961.094" 
    copy $P5156, $P5157
    nqp_get_sc_object $P5158, "1304284952.167", 79
    .const 'Sub' $P5159 = "89_1304284961.094" 
    copy $P5158, $P5159
    nqp_get_sc_object $P5160, "1304284952.167", 80
    .const 'Sub' $P5161 = "90_1304284961.094" 
    copy $P5160, $P5161
    nqp_get_sc_object $P5162, "1304284952.167", 81
    .const 'Sub' $P5163 = "91_1304284961.094" 
    copy $P5162, $P5163
    nqp_get_sc_object $P5164, "1304284952.167", 82
    .const 'Sub' $P5165 = "92_1304284961.094" 
    copy $P5164, $P5165
    nqp_get_sc_object $P5166, "1304284952.167", 83
    .const 'Sub' $P5167 = "93_1304284961.094" 
    copy $P5166, $P5167
    nqp_get_sc_object $P5168, "1304284952.167", 84
    .const 'Sub' $P5169 = "97_1304284961.094" 
    copy $P5168, $P5169
    nqp_get_sc_object $P5170, "1304284952.167", 85
    .const 'Sub' $P5171 = "98_1304284961.094" 
    copy $P5170, $P5171
    nqp_get_sc_object $P5172, "1304284952.167", 86
    .const 'Sub' $P5173 = "100_1304284961.094" 
    copy $P5172, $P5173
    nqp_get_sc_object $P5174, "1304284952.167", 87
    .const 'Sub' $P5175 = "101_1304284961.094" 
    copy $P5174, $P5175
    nqp_get_sc_object $P5176, "1304284952.167", 88
    .const 'Sub' $P5177 = "102_1304284961.094" 
    copy $P5176, $P5177
    nqp_get_sc_object $P5178, "1304284952.167", 89
    .const 'Sub' $P5179 = "103_1304284961.094" 
    copy $P5178, $P5179
    nqp_get_sc_object $P5180, "1304284952.167", 90
    .const 'Sub' $P5181 = "104_1304284961.094" 
    copy $P5180, $P5181
    nqp_get_sc_object $P5182, "1304284952.167", 91
    .const 'Sub' $P5183 = "105_1304284961.094" 
    copy $P5182, $P5183
    nqp_get_sc_object $P5184, "1304284952.167", 92
    .const 'Sub' $P5185 = "106_1304284961.094" 
    copy $P5184, $P5185
    nqp_get_sc_object $P5186, "1304284952.167", 93
    .const 'Sub' $P5187 = "107_1304284961.094" 
    copy $P5186, $P5187
    nqp_get_sc_object $P5188, "1304284952.167", 94
    .const 'Sub' $P5189 = "108_1304284961.094" 
    copy $P5188, $P5189
    nqp_get_sc_object $P5190, "1304284952.167", 95
    .const 'Sub' $P5191 = "109_1304284961.094" 
    copy $P5190, $P5191
    .const 'Sub' $P5192 = "109_1304284961.094" 
    nqp_get_sc_object $P5193, "1304284952.167", 1
    get_who $P5194, $P5193
    set $P5194["quotemod_check"], $P5192
    nqp_get_sc_object $P5195, "1304284952.167", 96
    .const 'Sub' $P5196 = "110_1304284961.094" 
    copy $P5195, $P5196
    nqp_get_sc_object $P5197, "1304284952.167", 97
    .const 'Sub' $P5198 = "111_1304284961.094" 
    copy $P5197, $P5198
    nqp_get_sc_object $P5199, "1304284952.167", 98
    .const 'Sub' $P5200 = "112_1304284961.094" 
    copy $P5199, $P5200
    .const 'Sub' $P5201 = "112_1304284961.094" 
    nqp_get_sc_object $P5202, "1304284952.167", 1
    get_who $P5203, $P5202
    set $P5203["split_words"], $P5201
    nqp_get_sc_object $P5204, "1304284952.167", 99
    .const 'Sub' $P5205 = "113_1304284961.094" 
    copy $P5204, $P5205
    nqp_get_sc_object $P5206, "1304284952.167", 100
    .const 'Sub' $P5207 = "114_1304284961.094" 
    copy $P5206, $P5207
    nqp_get_sc_object $P5208, "1304284952.167", 101
    .const 'Sub' $P5209 = "115_1304284961.094" 
    copy $P5208, $P5209
    nqp_get_sc_object $P5210, "1304284952.167", 102
    .const 'Sub' $P5211 = "116_1304284961.094" 
    copy $P5210, $P5211
    nqp_get_sc_object $P5212, "1304284952.167", 103
    .const 'Sub' $P5213 = "117_1304284961.094" 
    copy $P5212, $P5213
    nqp_get_sc_object $P5214, "1304284952.167", 104
    .const 'Sub' $P5215 = "118_1304284961.094" 
    copy $P5214, $P5215
    .const 'Sub' $P5216 = "11_1304284961.094" 
    $P5217 = $P5216."get_lexinfo"()
    nqp_get_sc_object $P5218, "1304284952.167", 1
    $P5217."set_static_lexpad_value"("$?PACKAGE", $P5218)
    .const 'Sub' $P5219 = "11_1304284961.094" 
    $P5220 = $P5219."get_lexinfo"()
    $P5220."finish_static_lexpad"()
    .const 'Sub' $P5221 = "11_1304284961.094" 
    $P5222 = $P5221."get_lexinfo"()
    nqp_get_sc_object $P5223, "1304284952.167", 1
    $P5222."set_static_lexpad_value"("$?CLASS", $P5223)
    .const 'Sub' $P5224 = "11_1304284961.094" 
    $P5225 = $P5224."get_lexinfo"()
    $P5225."finish_static_lexpad"()
    .const 'Sub' $P5226 = "120_1304284961.094" 
    nqp_get_sc_object $P5227, "1304284952.167", 105
    get_who $P5228, $P5227
    set $P5228["string_to_int"], $P5226
    .const 'Sub' $P5229 = "122_1304284961.094" 
    nqp_get_sc_object $P5230, "1304284952.167", 105
    get_who $P5231, $P5230
    set $P5231["ints_to_string"], $P5229
    nqp_get_sc_object $P5232, "1304284952.167", 106
    .const 'Sub' $P5233 = "125_1304284961.094" 
    copy $P5232, $P5233
    nqp_get_sc_object $P5234, "1304284952.167", 107
    .const 'Sub' $P5235 = "126_1304284961.094" 
    copy $P5234, $P5235
    nqp_get_sc_object $P5236, "1304284952.167", 108
    .const 'Sub' $P5237 = "129_1304284961.094" 
    copy $P5236, $P5237
    nqp_get_sc_object $P5238, "1304284952.167", 109
    .const 'Sub' $P5239 = "132_1304284961.094" 
    copy $P5238, $P5239
    nqp_get_sc_object $P5240, "1304284952.167", 110
    .const 'Sub' $P5241 = "133_1304284961.094" 
    copy $P5240, $P5241
    nqp_get_sc_object $P5242, "1304284952.167", 111
    .const 'Sub' $P5243 = "134_1304284961.094" 
    copy $P5242, $P5243
    nqp_get_sc_object $P5244, "1304284952.167", 112
    .const 'Sub' $P5245 = "135_1304284961.094" 
    copy $P5244, $P5245
    nqp_get_sc_object $P5246, "1304284952.167", 113
    .const 'Sub' $P5247 = "136_1304284961.094" 
    copy $P5246, $P5247
    nqp_get_sc_object $P5248, "1304284952.167", 114
    .const 'Sub' $P5249 = "137_1304284961.094" 
    copy $P5248, $P5249
    nqp_get_sc_object $P5250, "1304284952.167", 115
    .const 'Sub' $P5251 = "138_1304284961.094" 
    copy $P5250, $P5251
    nqp_get_sc_object $P5252, "1304284952.167", 116
    .const 'Sub' $P5253 = "139_1304284961.094" 
    copy $P5252, $P5253
    nqp_get_sc_object $P5254, "1304284952.167", 117
    .const 'Sub' $P5255 = "140_1304284961.094" 
    copy $P5254, $P5255
    nqp_get_sc_object $P5256, "1304284952.167", 118
    .const 'Sub' $P5257 = "141_1304284961.094" 
    copy $P5256, $P5257
    nqp_get_sc_object $P5258, "1304284952.167", 119
    .const 'Sub' $P5259 = "142_1304284961.094" 
    copy $P5258, $P5259
    nqp_get_sc_object $P5260, "1304284952.167", 120
    .const 'Sub' $P5261 = "145_1304284961.094" 
    copy $P5260, $P5261
    nqp_get_sc_object $P5262, "1304284952.167", 121
    .const 'Sub' $P5263 = "147_1304284961.094" 
    copy $P5262, $P5263
    nqp_get_sc_object $P5264, "1304284952.167", 122
    .const 'Sub' $P5265 = "148_1304284961.094" 
    copy $P5264, $P5265
    nqp_get_sc_object $P5266, "1304284952.167", 123
    .const 'Sub' $P5267 = "149_1304284961.094" 
    copy $P5266, $P5267
    nqp_get_sc_object $P5268, "1304284952.167", 124
    .const 'Sub' $P5269 = "150_1304284961.094" 
    copy $P5268, $P5269
    nqp_get_sc_object $P5270, "1304284952.167", 125
    .const 'Sub' $P5271 = "151_1304284961.094" 
    copy $P5270, $P5271
    nqp_get_sc_object $P5272, "1304284952.167", 126
    .const 'Sub' $P5273 = "152_1304284961.094" 
    copy $P5272, $P5273
    nqp_get_sc_object $P5274, "1304284952.167", 127
    .const 'Sub' $P5275 = "153_1304284961.094" 
    copy $P5274, $P5275
    nqp_get_sc_object $P5276, "1304284952.167", 128
    .const 'Sub' $P5277 = "154_1304284961.094" 
    copy $P5276, $P5277
    nqp_get_sc_object $P5278, "1304284952.167", 129
    .const 'Sub' $P5279 = "155_1304284961.094" 
    copy $P5278, $P5279
    nqp_get_sc_object $P5280, "1304284952.167", 130
    .const 'Sub' $P5281 = "156_1304284961.094" 
    copy $P5280, $P5281
    nqp_get_sc_object $P5282, "1304284952.167", 131
    .const 'Sub' $P5283 = "157_1304284961.094" 
    copy $P5282, $P5283
    nqp_get_sc_object $P5284, "1304284952.167", 132
    .const 'Sub' $P5285 = "158_1304284961.094" 
    copy $P5284, $P5285
    nqp_get_sc_object $P5286, "1304284952.167", 133
    .const 'Sub' $P5287 = "159_1304284961.094" 
    copy $P5286, $P5287
    nqp_get_sc_object $P5288, "1304284952.167", 134
    .const 'Sub' $P5289 = "160_1304284961.094" 
    copy $P5288, $P5289
    nqp_get_sc_object $P5290, "1304284952.167", 135
    .const 'Sub' $P5291 = "161_1304284961.094" 
    copy $P5290, $P5291
    nqp_get_sc_object $P5292, "1304284952.167", 136
    .const 'Sub' $P5293 = "162_1304284961.094" 
    copy $P5292, $P5293
    nqp_get_sc_object $P5294, "1304284952.167", 137
    .const 'Sub' $P5295 = "164_1304284961.094" 
    copy $P5294, $P5295
    .const 'Sub' $P5296 = "119_1304284961.094" 
    $P5297 = $P5296."get_lexinfo"()
    nqp_get_sc_object $P5298, "1304284952.167", 105
    $P5297."set_static_lexpad_value"("$?PACKAGE", $P5298)
    .const 'Sub' $P5299 = "119_1304284961.094" 
    $P5300 = $P5299."get_lexinfo"()
    $P5300."finish_static_lexpad"()
    .const 'Sub' $P5301 = "119_1304284961.094" 
    $P5302 = $P5301."get_lexinfo"()
    nqp_get_sc_object $P5303, "1304284952.167", 105
    $P5302."set_static_lexpad_value"("$?CLASS", $P5303)
    .const 'Sub' $P5304 = "119_1304284961.094" 
    $P5305 = $P5304."get_lexinfo"()
    $P5305."finish_static_lexpad"()
    nqp_get_sc_object $P5306, "1304284952.167", 139
    .const 'Sub' $P5307 = "168_1304284961.094" 
    copy $P5306, $P5307
    nqp_get_sc_object $P5308, "1304284952.167", 140
    .const 'Sub' $P5309 = "169_1304284961.094" 
    copy $P5308, $P5309
    nqp_get_sc_object $P5310, "1304284952.167", 141
    .const 'Sub' $P5311 = "171_1304284961.094" 
    copy $P5310, $P5311
    nqp_get_sc_object $P5312, "1304284952.167", 142
    .const 'Sub' $P5313 = "174_1304284961.094" 
    copy $P5312, $P5313
    nqp_get_sc_object $P5314, "1304284952.167", 143
    .const 'Sub' $P5315 = "175_1304284961.094" 
    copy $P5314, $P5315
    nqp_get_sc_object $P5316, "1304284952.167", 144
    .const 'Sub' $P5317 = "176_1304284961.094" 
    copy $P5316, $P5317
    nqp_get_sc_object $P5318, "1304284952.167", 145
    .const 'Sub' $P5319 = "178_1304284961.094" 
    copy $P5318, $P5319
    nqp_get_sc_object $P5320, "1304284952.167", 146
    .const 'Sub' $P5321 = "183_1304284961.094" 
    copy $P5320, $P5321
    nqp_get_sc_object $P5322, "1304284952.167", 147
    .const 'Sub' $P5323 = "184_1304284961.094" 
    copy $P5322, $P5323
    nqp_get_sc_object $P5324, "1304284952.167", 148
    .const 'Sub' $P5325 = "191_1304284961.094" 
    copy $P5324, $P5325
    nqp_get_sc_object $P5326, "1304284952.167", 149
    .const 'Sub' $P5327 = "193_1304284961.094" 
    copy $P5326, $P5327
    nqp_get_sc_object $P5328, "1304284952.167", 150
    .const 'Sub' $P5329 = "194_1304284961.094" 
    copy $P5328, $P5329
    nqp_get_sc_object $P5330, "1304284952.167", 151
    .const 'Sub' $P5331 = "195_1304284961.094" 
    copy $P5330, $P5331
    nqp_get_sc_object $P5332, "1304284952.167", 152
    .const 'Sub' $P5333 = "196_1304284961.094" 
    copy $P5332, $P5333
    nqp_get_sc_object $P5334, "1304284952.167", 153
    .const 'Sub' $P5335 = "197_1304284961.094" 
    copy $P5334, $P5335
    nqp_get_sc_object $P5336, "1304284952.167", 154
    .const 'Sub' $P5337 = "198_1304284961.094" 
    copy $P5336, $P5337
    nqp_get_sc_object $P5338, "1304284952.167", 155
    .const 'Sub' $P5339 = "199_1304284961.094" 
    copy $P5338, $P5339
    nqp_get_sc_object $P5340, "1304284952.167", 156
    .const 'Sub' $P5341 = "200_1304284961.094" 
    copy $P5340, $P5341
    nqp_get_sc_object $P5342, "1304284952.167", 157
    .const 'Sub' $P5343 = "201_1304284961.094" 
    copy $P5342, $P5343
    nqp_get_sc_object $P5344, "1304284952.167", 158
    .const 'Sub' $P5345 = "202_1304284961.094" 
    copy $P5344, $P5345
    nqp_get_sc_object $P5346, "1304284952.167", 159
    .const 'Sub' $P5347 = "203_1304284961.094" 
    copy $P5346, $P5347
    nqp_get_sc_object $P5348, "1304284952.167", 160
    .const 'Sub' $P5349 = "205_1304284961.094" 
    copy $P5348, $P5349
    nqp_get_sc_object $P5350, "1304284952.167", 161
    .const 'Sub' $P5351 = "208_1304284961.094" 
    copy $P5350, $P5351
    nqp_get_sc_object $P5352, "1304284952.167", 162
    .const 'Sub' $P5353 = "212_1304284961.094" 
    copy $P5352, $P5353
    nqp_get_sc_object $P5354, "1304284952.167", 163
    .const 'Sub' $P5355 = "214_1304284961.094" 
    copy $P5354, $P5355
    nqp_get_sc_object $P5356, "1304284952.167", 164
    .const 'Sub' $P5357 = "215_1304284961.094" 
    copy $P5356, $P5357
    nqp_get_sc_object $P5358, "1304284952.167", 165
    .const 'Sub' $P5359 = "216_1304284961.094" 
    copy $P5358, $P5359
    nqp_get_sc_object $P5360, "1304284952.167", 166
    .const 'Sub' $P5361 = "217_1304284961.094" 
    copy $P5360, $P5361
    nqp_get_sc_object $P5362, "1304284952.167", 167
    .const 'Sub' $P5363 = "218_1304284961.094" 
    copy $P5362, $P5363
    nqp_get_sc_object $P5364, "1304284952.167", 168
    .const 'Sub' $P5365 = "219_1304284961.094" 
    copy $P5364, $P5365
    nqp_get_sc_object $P5366, "1304284952.167", 169
    .const 'Sub' $P5367 = "221_1304284961.094" 
    copy $P5366, $P5367
    nqp_get_sc_object $P5368, "1304284952.167", 170
    .const 'Sub' $P5369 = "222_1304284961.094" 
    copy $P5368, $P5369
    nqp_get_sc_object $P5370, "1304284952.167", 171
    .const 'Sub' $P5371 = "223_1304284961.094" 
    copy $P5370, $P5371
    nqp_get_sc_object $P5372, "1304284952.167", 172
    .const 'Sub' $P5373 = "225_1304284961.094" 
    copy $P5372, $P5373
    nqp_get_sc_object $P5374, "1304284952.167", 173
    .const 'Sub' $P5375 = "228_1304284961.094" 
    copy $P5374, $P5375
    nqp_get_sc_object $P5376, "1304284952.167", 174
    .const 'Sub' $P5377 = "230_1304284961.094" 
    copy $P5376, $P5377
    .const 'Sub' $P5378 = "165_1304284961.094" 
    $P5379 = $P5378."get_lexinfo"()
    nqp_get_sc_object $P5380, "1304284952.167", 138
    $P5379."set_static_lexpad_value"("$?PACKAGE", $P5380)
    .const 'Sub' $P5381 = "165_1304284961.094" 
    $P5382 = $P5381."get_lexinfo"()
    $P5382."finish_static_lexpad"()
    .const 'Sub' $P5383 = "165_1304284961.094" 
    $P5384 = $P5383."get_lexinfo"()
    nqp_get_sc_object $P5385, "1304284952.167", 138
    $P5384."set_static_lexpad_value"("$?CLASS", $P5385)
    .const 'Sub' $P5386 = "165_1304284961.094" 
    $P5387 = $P5386."get_lexinfo"()
    $P5387."finish_static_lexpad"()
    nqp_get_sc_object $P5388, "1304284952.167", 176
    .const 'Sub' $P5389 = "232_1304284961.094" 
    copy $P5388, $P5389
    nqp_get_sc_object $P5390, "1304284952.167", 177
    .const 'Sub' $P5391 = "233_1304284961.094" 
    copy $P5390, $P5391
    nqp_get_sc_object $P5392, "1304284952.167", 178
    .const 'Sub' $P5393 = "234_1304284961.094" 
    copy $P5392, $P5393
    nqp_get_sc_object $P5394, "1304284952.167", 179
    .const 'Sub' $P5395 = "235_1304284961.094" 
    copy $P5394, $P5395
    nqp_get_sc_object $P5396, "1304284952.167", 180
    .const 'Sub' $P5397 = "236_1304284961.094" 
    copy $P5396, $P5397
    .const 'Sub' $P5398 = "231_1304284961.094" 
    $P5399 = $P5398."get_lexinfo"()
    nqp_get_sc_object $P5400, "1304284952.167", 175
    $P5399."set_static_lexpad_value"("$?PACKAGE", $P5400)
    .const 'Sub' $P5401 = "231_1304284961.094" 
    $P5402 = $P5401."get_lexinfo"()
    $P5402."finish_static_lexpad"()
    .const 'Sub' $P5403 = "231_1304284961.094" 
    $P5404 = $P5403."get_lexinfo"()
    nqp_get_sc_object $P5405, "1304284952.167", 175
    $P5404."set_static_lexpad_value"("$?CLASS", $P5405)
    .const 'Sub' $P5406 = "231_1304284961.094" 
    $P5407 = $P5406."get_lexinfo"()
    $P5407."finish_static_lexpad"()
    nqp_get_sc_object $P5408, "1304284952.167", 182
    .const 'Sub' $P5409 = "239_1304284961.094" 
    copy $P5408, $P5409
    nqp_get_sc_object $P5410, "1304284952.167", 183
    .const 'Sub' $P5411 = "240_1304284961.094" 
    copy $P5410, $P5411
    nqp_get_sc_object $P5412, "1304284952.167", 184
    .const 'Sub' $P5413 = "241_1304284961.094" 
    copy $P5412, $P5413
    nqp_get_sc_object $P5414, "1304284952.167", 185
    .const 'Sub' $P5415 = "243_1304284961.094" 
    copy $P5414, $P5415
    nqp_get_sc_object $P5416, "1304284952.167", 186
    .const 'Sub' $P5417 = "244_1304284961.094" 
    copy $P5416, $P5417
    nqp_get_sc_object $P5418, "1304284952.167", 187
    .const 'Sub' $P5419 = "245_1304284961.094" 
    copy $P5418, $P5419
    nqp_get_sc_object $P5420, "1304284952.167", 188
    .const 'Sub' $P5421 = "247_1304284961.094" 
    copy $P5420, $P5421
    nqp_get_sc_object $P5422, "1304284952.167", 189
    .const 'Sub' $P5423 = "248_1304284961.094" 
    copy $P5422, $P5423
    nqp_get_sc_object $P5424, "1304284952.167", 190
    .const 'Sub' $P5425 = "249_1304284961.094" 
    copy $P5424, $P5425
    .const 'Sub' $P5426 = "238_1304284961.094" 
    $P5427 = $P5426."get_lexinfo"()
    nqp_get_sc_object $P5428, "1304284952.167", 181
    $P5427."set_static_lexpad_value"("$?PACKAGE", $P5428)
    .const 'Sub' $P5429 = "238_1304284961.094" 
    $P5430 = $P5429."get_lexinfo"()
    $P5430."finish_static_lexpad"()
    .const 'Sub' $P5431 = "238_1304284961.094" 
    $P5432 = $P5431."get_lexinfo"()
    nqp_get_sc_object $P5433, "1304284952.167", 181
    $P5432."set_static_lexpad_value"("$?CLASS", $P5433)
    .const 'Sub' $P5434 = "238_1304284961.094" 
    $P5435 = $P5434."get_lexinfo"()
    $P5435."finish_static_lexpad"()
    .const 'Sub' $P5436 = "257_1304284961.094" 
    $P5437 = $P5436."get_lexinfo"()
    nqp_get_sc_object $P5438, "1304284952.167", 192
    $P5437."set_static_lexpad_value"("Event", $P5438)
    .const 'Sub' $P5439 = "257_1304284961.094" 
    $P5440 = $P5439."get_lexinfo"()
    $P5440."finish_static_lexpad"()
    nqp_get_sc_object $P5441, "1304284952.167", 193
    .const 'Sub' $P5442 = "260_1304284961.094" 
    copy $P5441, $P5442
    nqp_get_sc_object $P5443, "1304284952.167", 194
    .const 'Sub' $P5444 = "261_1304284961.094" 
    copy $P5443, $P5444
    .const 'Sub' $P5445 = "259_1304284961.094" 
    $P5446 = $P5445."get_lexinfo"()
    nqp_get_sc_object $P5447, "1304284952.167", 192
    $P5446."set_static_lexpad_value"("$?PACKAGE", $P5447)
    .const 'Sub' $P5448 = "259_1304284961.094" 
    $P5449 = $P5448."get_lexinfo"()
    $P5449."finish_static_lexpad"()
    .const 'Sub' $P5450 = "259_1304284961.094" 
    $P5451 = $P5450."get_lexinfo"()
    nqp_get_sc_object $P5452, "1304284952.167", 192
    $P5451."set_static_lexpad_value"("$?CLASS", $P5452)
    .const 'Sub' $P5453 = "259_1304284961.094" 
    $P5454 = $P5453."get_lexinfo"()
    $P5454."finish_static_lexpad"()
    nqp_get_sc_object $P5455, "1304284952.167", 195
    .const 'Sub' $P5456 = "262_1304284961.094" 
    copy $P5455, $P5456
    nqp_get_sc_object $P5457, "1304284952.167", 196
    .const 'Sub' $P5458 = "263_1304284961.094" 
    copy $P5457, $P5458
    nqp_get_sc_object $P5459, "1304284952.167", 197
    .const 'Sub' $P5460 = "264_1304284961.094" 
    copy $P5459, $P5460
    nqp_get_sc_object $P5461, "1304284952.167", 198
    .const 'Sub' $P5462 = "265_1304284961.094" 
    copy $P5461, $P5462
    nqp_get_sc_object $P5463, "1304284952.167", 199
    .const 'Sub' $P5464 = "266_1304284961.094" 
    copy $P5463, $P5464
    nqp_get_sc_object $P5465, "1304284952.167", 200
    .const 'Sub' $P5466 = "267_1304284961.094" 
    copy $P5465, $P5466
    nqp_get_sc_object $P5467, "1304284952.167", 201
    .const 'Sub' $P5468 = "268_1304284961.094" 
    copy $P5467, $P5468
    nqp_get_sc_object $P5469, "1304284952.167", 202
    .const 'Sub' $P5470 = "269_1304284961.094" 
    copy $P5469, $P5470
    nqp_get_sc_object $P5471, "1304284952.167", 203
    .const 'Sub' $P5472 = "270_1304284961.094" 
    copy $P5471, $P5472
    nqp_get_sc_object $P5473, "1304284952.167", 204
    .const 'Sub' $P5474 = "271_1304284961.094" 
    copy $P5473, $P5474
    nqp_get_sc_object $P5475, "1304284952.167", 205
    .const 'Sub' $P5476 = "272_1304284961.094" 
    copy $P5475, $P5476
    nqp_get_sc_object $P5477, "1304284952.167", 206
    .const 'Sub' $P5478 = "274_1304284961.094" 
    copy $P5477, $P5478
    nqp_get_sc_object $P5479, "1304284952.167", 207
    .const 'Sub' $P5480 = "275_1304284961.094" 
    copy $P5479, $P5480
    nqp_get_sc_object $P5481, "1304284952.167", 208
    .const 'Sub' $P5482 = "278_1304284961.094" 
    copy $P5481, $P5482
    nqp_get_sc_object $P5483, "1304284952.167", 209
    .const 'Sub' $P5484 = "279_1304284961.094" 
    copy $P5483, $P5484
    nqp_get_sc_object $P5485, "1304284952.167", 210
    .const 'Sub' $P5486 = "280_1304284961.094" 
    copy $P5485, $P5486
    nqp_get_sc_object $P5487, "1304284952.167", 211
    .const 'Sub' $P5488 = "281_1304284961.094" 
    copy $P5487, $P5488
    nqp_get_sc_object $P5489, "1304284952.167", 212
    .const 'Sub' $P5490 = "285_1304284961.094" 
    copy $P5489, $P5490
    nqp_get_sc_object $P5491, "1304284952.167", 213
    .const 'Sub' $P5492 = "286_1304284961.094" 
    copy $P5491, $P5492
    nqp_get_sc_object $P5493, "1304284952.167", 214
    .const 'Sub' $P5494 = "287_1304284961.094" 
    copy $P5493, $P5494
    nqp_get_sc_object $P5495, "1304284952.167", 215
    .const 'Sub' $P5496 = "288_1304284961.094" 
    copy $P5495, $P5496
    nqp_get_sc_object $P5497, "1304284952.167", 216
    .const 'Sub' $P5498 = "289_1304284961.094" 
    copy $P5497, $P5498
    nqp_get_sc_object $P5499, "1304284952.167", 217
    .const 'Sub' $P5500 = "290_1304284961.094" 
    copy $P5499, $P5500
    nqp_get_sc_object $P5501, "1304284952.167", 218
    .const 'Sub' $P5502 = "291_1304284961.094" 
    copy $P5501, $P5502
    .const 'Sub' $P5503 = "257_1304284961.094" 
    $P5504 = $P5503."get_lexinfo"()
    nqp_get_sc_object $P5505, "1304284952.167", 191
    $P5504."set_static_lexpad_value"("$?PACKAGE", $P5505)
    .const 'Sub' $P5506 = "257_1304284961.094" 
    $P5507 = $P5506."get_lexinfo"()
    $P5507."finish_static_lexpad"()
    .const 'Sub' $P5508 = "257_1304284961.094" 
    $P5509 = $P5508."get_lexinfo"()
    nqp_get_sc_object $P5510, "1304284952.167", 191
    $P5509."set_static_lexpad_value"("$?CLASS", $P5510)
    .const 'Sub' $P5511 = "257_1304284961.094" 
    $P5512 = $P5511."get_lexinfo"()
    $P5512."finish_static_lexpad"()
    goto if_3833_end
  if_3833:
    nqp_dynop_setup 
    getinterp $P3836
    get_class $P3837, "LexPad"
    get_class $P3838, "NQPLexPad"
    $P3836."hll_map"($P3837, $P3838)
    nqp_create_sc $P3839, "1304284952.167"
    .local pmc cur_sc
    set cur_sc, $P3839
    nqp_get_sc_object $P3840, "__6MODEL_CORE__", 0
    $P3841 = $P3840."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3841, cur_sc
    nqp_set_sc_object "1304284952.167", 0, $P3841
    .const 'Sub' $P3842 = "10_1304284961.094" 
    $P3843 = $P3842."get_lexinfo"()
    nqp_get_sc_object $P3844, "1304284952.167", 0
    $P3843."set_static_lexpad_value"("GLOBALish", $P3844)
    .const 'Sub' $P3845 = "10_1304284961.094" 
    $P3846 = $P3845."get_lexinfo"()
    $P3846."finish_static_lexpad"()
    .const 'Sub' $P3847 = "10_1304284961.094" 
    $P3848 = $P3847."get_lexinfo"()
    nqp_get_sc_object $P3849, "1304284952.167", 0
    $P3848."set_static_lexpad_value"("$?PACKAGE", $P3849)
    .const 'Sub' $P3850 = "10_1304284961.094" 
    $P3851 = $P3850."get_lexinfo"()
    $P3851."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3852, "ModuleLoader"
    $P3853 = $P3852."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3853)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3854, "ModuleLoader"
    nqp_get_sc_object $P3855, "1304284952.167", 0
    $P3854."load_module"("Regex", $P3855)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3856, "ModuleLoader"
    nqp_get_sc_object $P3857, "1304284952.167", 0
    $P3856."load_module"("Regex", $P3857)
    nqp_get_sc_object $P3858, "1304284944.723", 41
    $P3859 = $P3858."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3859, cur_sc
    nqp_set_sc_object "1304284952.167", 1, $P3859
    nqp_get_sc_object $P3860, "1304284952.167", 1
    nqp_get_sc_object $P3861, "1304284952.167", 0
    nqp_get_package_through_who $P3862, $P3861, "HLL"
    get_who $P3863, $P3862
    set $P3863["Grammar"], $P3860
    nqp_get_sc_object $P3864, "1304284952.167", 1
    get_how $P3865, $P3864
    nqp_get_sc_object $P3866, "1304284952.167", 1
    .const 'Sub' $P3867 = "12_1304284961.094" 
    $P3865."add_method"($P3866, "ws", $P3867)
    nqp_get_sc_object $P3868, "1304284952.167", 1
    get_how $P3869, $P3868
    nqp_get_sc_object $P3870, "1304284952.167", 1
    .const 'Sub' $P3871 = "13_1304284961.094" 
    $P3869."add_method"($P3870, "!PREFIX__ws", $P3871)
    nqp_get_sc_object $P3872, "1304284952.167", 1
    get_how $P3873, $P3872
    nqp_get_sc_object $P3874, "1304284952.167", 1
    .const 'Sub' $P3875 = "14_1304284961.094" 
    $P3873."add_method"($P3874, "termish", $P3875)
    nqp_get_sc_object $P3876, "1304284952.167", 1
    get_how $P3877, $P3876
    nqp_get_sc_object $P3878, "1304284952.167", 1
    .const 'Sub' $P3879 = "15_1304284961.094" 
    $P3877."add_method"($P3878, "!PREFIX__termish", $P3879)
    nqp_get_sc_object $P3880, "1304284952.167", 1
    get_how $P3881, $P3880
    nqp_get_sc_object $P3882, "1304284952.167", 1
    .const 'Sub' $P3883 = "16_1304284961.094" 
    $P3881."add_method"($P3882, "term", $P3883)
    nqp_get_sc_object $P3884, "1304284952.167", 1
    get_how $P3885, $P3884
    nqp_get_sc_object $P3886, "1304284952.167", 1
    .const 'Sub' $P3887 = "17_1304284961.094" 
    $P3885."add_method"($P3886, "!PREFIX__term", $P3887)
    nqp_get_sc_object $P3888, "1304284952.167", 1
    get_how $P3889, $P3888
    nqp_get_sc_object $P3890, "1304284952.167", 1
    .const 'Sub' $P3891 = "18_1304284961.094" 
    $P3889."add_method"($P3890, "infix", $P3891)
    nqp_get_sc_object $P3892, "1304284952.167", 1
    get_how $P3893, $P3892
    nqp_get_sc_object $P3894, "1304284952.167", 1
    .const 'Sub' $P3895 = "19_1304284961.094" 
    $P3893."add_method"($P3894, "!PREFIX__infix", $P3895)
    nqp_get_sc_object $P3896, "1304284952.167", 1
    get_how $P3897, $P3896
    nqp_get_sc_object $P3898, "1304284952.167", 1
    .const 'Sub' $P3899 = "20_1304284961.094" 
    $P3897."add_method"($P3898, "prefix", $P3899)
    nqp_get_sc_object $P3900, "1304284952.167", 1
    get_how $P3901, $P3900
    nqp_get_sc_object $P3902, "1304284952.167", 1
    .const 'Sub' $P3903 = "21_1304284961.094" 
    $P3901."add_method"($P3902, "!PREFIX__prefix", $P3903)
    nqp_get_sc_object $P3904, "1304284952.167", 1
    get_how $P3905, $P3904
    nqp_get_sc_object $P3906, "1304284952.167", 1
    .const 'Sub' $P3907 = "22_1304284961.094" 
    $P3905."add_method"($P3906, "postfix", $P3907)
    nqp_get_sc_object $P3908, "1304284952.167", 1
    get_how $P3909, $P3908
    nqp_get_sc_object $P3910, "1304284952.167", 1
    .const 'Sub' $P3911 = "23_1304284961.094" 
    $P3909."add_method"($P3910, "!PREFIX__postfix", $P3911)
    nqp_get_sc_object $P3912, "1304284952.167", 1
    get_how $P3913, $P3912
    nqp_get_sc_object $P3914, "1304284952.167", 1
    .const 'Sub' $P3915 = "24_1304284961.094" 
    $P3913."add_method"($P3914, "circumfix", $P3915)
    nqp_get_sc_object $P3916, "1304284952.167", 1
    get_how $P3917, $P3916
    nqp_get_sc_object $P3918, "1304284952.167", 1
    .const 'Sub' $P3919 = "25_1304284961.094" 
    $P3917."add_method"($P3918, "!PREFIX__circumfix", $P3919)
    nqp_get_sc_object $P3920, "1304284952.167", 1
    get_how $P3921, $P3920
    nqp_get_sc_object $P3922, "1304284952.167", 1
    .const 'Sub' $P3923 = "26_1304284961.094" 
    $P3921."add_method"($P3922, "postcircumfix", $P3923)
    nqp_get_sc_object $P3924, "1304284952.167", 1
    get_how $P3925, $P3924
    nqp_get_sc_object $P3926, "1304284952.167", 1
    .const 'Sub' $P3927 = "27_1304284961.094" 
    $P3925."add_method"($P3926, "!PREFIX__postcircumfix", $P3927)
    nqp_get_sc_object $P3928, "1304284952.167", 1
    get_how $P3929, $P3928
    nqp_get_sc_object $P3930, "1304284952.167", 1
    .const 'Sub' $P3931 = "28_1304284961.094" 
    $P3929."add_method"($P3930, "term:sym<circumfix>", $P3931)
    nqp_get_sc_object $P3932, "1304284952.167", 1
    get_how $P3933, $P3932
    nqp_get_sc_object $P3934, "1304284952.167", 1
    .const 'Sub' $P3935 = "29_1304284961.094" 
    $P3933."add_method"($P3934, "!PREFIX__term:sym<circumfix>", $P3935)
    nqp_get_sc_object $P3936, "1304284952.167", 1
    get_how $P3937, $P3936
    nqp_get_sc_object $P3938, "1304284952.167", 1
    .const 'Sub' $P3939 = "30_1304284961.094" 
    $P3937."add_method"($P3938, "infixish", $P3939)
    nqp_get_sc_object $P3940, "1304284952.167", 1
    get_how $P3941, $P3940
    nqp_get_sc_object $P3942, "1304284952.167", 1
    .const 'Sub' $P3943 = "31_1304284961.094" 
    $P3941."add_method"($P3942, "!PREFIX__infixish", $P3943)
    nqp_get_sc_object $P3944, "1304284952.167", 1
    get_how $P3945, $P3944
    nqp_get_sc_object $P3946, "1304284952.167", 1
    .const 'Sub' $P3947 = "32_1304284961.094" 
    $P3945."add_method"($P3946, "prefixish", $P3947)
    nqp_get_sc_object $P3948, "1304284952.167", 1
    get_how $P3949, $P3948
    nqp_get_sc_object $P3950, "1304284952.167", 1
    .const 'Sub' $P3951 = "33_1304284961.094" 
    $P3949."add_method"($P3950, "!PREFIX__prefixish", $P3951)
    nqp_get_sc_object $P3952, "1304284952.167", 1
    get_how $P3953, $P3952
    nqp_get_sc_object $P3954, "1304284952.167", 1
    .const 'Sub' $P3955 = "34_1304284961.094" 
    $P3953."add_method"($P3954, "postfixish", $P3955)
    nqp_get_sc_object $P3956, "1304284952.167", 1
    get_how $P3957, $P3956
    nqp_get_sc_object $P3958, "1304284952.167", 1
    .const 'Sub' $P3959 = "35_1304284961.094" 
    $P3957."add_method"($P3958, "!PREFIX__postfixish", $P3959)
    nqp_get_sc_object $P3960, "1304284952.167", 1
    get_how $P3961, $P3960
    nqp_get_sc_object $P3962, "1304284952.167", 1
    .const 'Sub' $P3963 = "36_1304284961.094" 
    $P3961."add_method"($P3962, "nullterm", $P3963)
    nqp_get_sc_object $P3964, "1304284952.167", 1
    get_how $P3965, $P3964
    nqp_get_sc_object $P3966, "1304284952.167", 1
    .const 'Sub' $P3967 = "37_1304284961.094" 
    $P3965."add_method"($P3966, "!PREFIX__nullterm", $P3967)
    nqp_get_sc_object $P3968, "1304284952.167", 1
    get_how $P3969, $P3968
    nqp_get_sc_object $P3970, "1304284952.167", 1
    .const 'Sub' $P3971 = "38_1304284961.094" 
    $P3969."add_method"($P3970, "nullterm_alt", $P3971)
    nqp_get_sc_object $P3972, "1304284952.167", 1
    get_how $P3973, $P3972
    nqp_get_sc_object $P3974, "1304284952.167", 1
    .const 'Sub' $P3975 = "39_1304284961.094" 
    $P3973."add_method"($P3974, "!PREFIX__nullterm_alt", $P3975)
    nqp_get_sc_object $P3976, "1304284952.167", 1
    get_how $P3977, $P3976
    nqp_get_sc_object $P3978, "1304284952.167", 1
    .const 'Sub' $P3979 = "40_1304284961.094" 
    $P3977."add_method"($P3978, "nulltermish", $P3979)
    nqp_get_sc_object $P3980, "1304284952.167", 1
    get_how $P3981, $P3980
    nqp_get_sc_object $P3982, "1304284952.167", 1
    .const 'Sub' $P3983 = "41_1304284961.094" 
    $P3981."add_method"($P3982, "quote_delimited", $P3983)
    nqp_get_sc_object $P3984, "1304284952.167", 1
    get_how $P3985, $P3984
    nqp_get_sc_object $P3986, "1304284952.167", 1
    .const 'Sub' $P3987 = "42_1304284961.094" 
    $P3985."add_method"($P3986, "!PREFIX__quote_delimited", $P3987)
    nqp_get_sc_object $P3988, "1304284952.167", 1
    get_how $P3989, $P3988
    nqp_get_sc_object $P3990, "1304284952.167", 1
    .const 'Sub' $P3991 = "43_1304284961.094" 
    $P3989."add_method"($P3990, "quote_atom", $P3991)
    nqp_get_sc_object $P3992, "1304284952.167", 1
    get_how $P3993, $P3992
    nqp_get_sc_object $P3994, "1304284952.167", 1
    .const 'Sub' $P3995 = "44_1304284961.094" 
    $P3993."add_method"($P3994, "!PREFIX__quote_atom", $P3995)
    nqp_get_sc_object $P3996, "1304284952.167", 1
    get_how $P3997, $P3996
    nqp_get_sc_object $P3998, "1304284952.167", 1
    .const 'Sub' $P3999 = "45_1304284961.094" 
    $P3997."add_method"($P3998, "decint", $P3999)
    nqp_get_sc_object $P4000, "1304284952.167", 1
    get_how $P4001, $P4000
    nqp_get_sc_object $P4002, "1304284952.167", 1
    .const 'Sub' $P4003 = "46_1304284961.094" 
    $P4001."add_method"($P4002, "!PREFIX__decint", $P4003)
    nqp_get_sc_object $P4004, "1304284952.167", 1
    get_how $P4005, $P4004
    nqp_get_sc_object $P4006, "1304284952.167", 1
    .const 'Sub' $P4007 = "47_1304284961.094" 
    $P4005."add_method"($P4006, "decints", $P4007)
    nqp_get_sc_object $P4008, "1304284952.167", 1
    get_how $P4009, $P4008
    nqp_get_sc_object $P4010, "1304284952.167", 1
    .const 'Sub' $P4011 = "48_1304284961.094" 
    $P4009."add_method"($P4010, "!PREFIX__decints", $P4011)
    nqp_get_sc_object $P4012, "1304284952.167", 1
    get_how $P4013, $P4012
    nqp_get_sc_object $P4014, "1304284952.167", 1
    .const 'Sub' $P4015 = "49_1304284961.094" 
    $P4013."add_method"($P4014, "hexint", $P4015)
    nqp_get_sc_object $P4016, "1304284952.167", 1
    get_how $P4017, $P4016
    nqp_get_sc_object $P4018, "1304284952.167", 1
    .const 'Sub' $P4019 = "50_1304284961.094" 
    $P4017."add_method"($P4018, "!PREFIX__hexint", $P4019)
    nqp_get_sc_object $P4020, "1304284952.167", 1
    get_how $P4021, $P4020
    nqp_get_sc_object $P4022, "1304284952.167", 1
    .const 'Sub' $P4023 = "51_1304284961.094" 
    $P4021."add_method"($P4022, "hexints", $P4023)
    nqp_get_sc_object $P4024, "1304284952.167", 1
    get_how $P4025, $P4024
    nqp_get_sc_object $P4026, "1304284952.167", 1
    .const 'Sub' $P4027 = "52_1304284961.094" 
    $P4025."add_method"($P4026, "!PREFIX__hexints", $P4027)
    nqp_get_sc_object $P4028, "1304284952.167", 1
    get_how $P4029, $P4028
    nqp_get_sc_object $P4030, "1304284952.167", 1
    .const 'Sub' $P4031 = "53_1304284961.094" 
    $P4029."add_method"($P4030, "octint", $P4031)
    nqp_get_sc_object $P4032, "1304284952.167", 1
    get_how $P4033, $P4032
    nqp_get_sc_object $P4034, "1304284952.167", 1
    .const 'Sub' $P4035 = "54_1304284961.094" 
    $P4033."add_method"($P4034, "!PREFIX__octint", $P4035)
    nqp_get_sc_object $P4036, "1304284952.167", 1
    get_how $P4037, $P4036
    nqp_get_sc_object $P4038, "1304284952.167", 1
    .const 'Sub' $P4039 = "55_1304284961.094" 
    $P4037."add_method"($P4038, "octints", $P4039)
    nqp_get_sc_object $P4040, "1304284952.167", 1
    get_how $P4041, $P4040
    nqp_get_sc_object $P4042, "1304284952.167", 1
    .const 'Sub' $P4043 = "56_1304284961.094" 
    $P4041."add_method"($P4042, "!PREFIX__octints", $P4043)
    nqp_get_sc_object $P4044, "1304284952.167", 1
    get_how $P4045, $P4044
    nqp_get_sc_object $P4046, "1304284952.167", 1
    .const 'Sub' $P4047 = "57_1304284961.094" 
    $P4045."add_method"($P4046, "binint", $P4047)
    nqp_get_sc_object $P4048, "1304284952.167", 1
    get_how $P4049, $P4048
    nqp_get_sc_object $P4050, "1304284952.167", 1
    .const 'Sub' $P4051 = "58_1304284961.094" 
    $P4049."add_method"($P4050, "!PREFIX__binint", $P4051)
    nqp_get_sc_object $P4052, "1304284952.167", 1
    get_how $P4053, $P4052
    nqp_get_sc_object $P4054, "1304284952.167", 1
    .const 'Sub' $P4055 = "59_1304284961.094" 
    $P4053."add_method"($P4054, "binints", $P4055)
    nqp_get_sc_object $P4056, "1304284952.167", 1
    get_how $P4057, $P4056
    nqp_get_sc_object $P4058, "1304284952.167", 1
    .const 'Sub' $P4059 = "60_1304284961.094" 
    $P4057."add_method"($P4058, "!PREFIX__binints", $P4059)
    nqp_get_sc_object $P4060, "1304284952.167", 1
    get_how $P4061, $P4060
    nqp_get_sc_object $P4062, "1304284952.167", 1
    .const 'Sub' $P4063 = "61_1304284961.094" 
    $P4061."add_method"($P4062, "integer", $P4063)
    nqp_get_sc_object $P4064, "1304284952.167", 1
    get_how $P4065, $P4064
    nqp_get_sc_object $P4066, "1304284952.167", 1
    .const 'Sub' $P4067 = "62_1304284961.094" 
    $P4065."add_method"($P4066, "!PREFIX__integer", $P4067)
    nqp_get_sc_object $P4068, "1304284952.167", 1
    get_how $P4069, $P4068
    nqp_get_sc_object $P4070, "1304284952.167", 1
    .const 'Sub' $P4071 = "63_1304284961.094" 
    $P4069."add_method"($P4070, "dec_number", $P4071)
    nqp_get_sc_object $P4072, "1304284952.167", 1
    get_how $P4073, $P4072
    nqp_get_sc_object $P4074, "1304284952.167", 1
    .const 'Sub' $P4075 = "64_1304284961.094" 
    $P4073."add_method"($P4074, "!PREFIX__dec_number", $P4075)
    nqp_get_sc_object $P4076, "1304284952.167", 1
    get_how $P4077, $P4076
    nqp_get_sc_object $P4078, "1304284952.167", 1
    .const 'Sub' $P4079 = "65_1304284961.094" 
    $P4077."add_method"($P4078, "escale", $P4079)
    nqp_get_sc_object $P4080, "1304284952.167", 1
    get_how $P4081, $P4080
    nqp_get_sc_object $P4082, "1304284952.167", 1
    .const 'Sub' $P4083 = "66_1304284961.094" 
    $P4081."add_method"($P4082, "!PREFIX__escale", $P4083)
    nqp_get_sc_object $P4084, "1304284952.167", 1
    get_how $P4085, $P4084
    nqp_get_sc_object $P4086, "1304284952.167", 1
    .const 'Sub' $P4087 = "67_1304284961.094" 
    $P4085."add_method"($P4086, "quote_escape", $P4087)
    nqp_get_sc_object $P4088, "1304284952.167", 1
    get_how $P4089, $P4088
    nqp_get_sc_object $P4090, "1304284952.167", 1
    .const 'Sub' $P4091 = "68_1304284961.094" 
    $P4089."add_method"($P4090, "!PREFIX__quote_escape", $P4091)
    nqp_get_sc_object $P4092, "1304284952.167", 1
    get_how $P4093, $P4092
    nqp_get_sc_object $P4094, "1304284952.167", 1
    .const 'Sub' $P4095 = "69_1304284961.094" 
    $P4093."add_method"($P4094, "quote_escape:sym<backslash>", $P4095)
    nqp_get_sc_object $P4096, "1304284952.167", 1
    get_how $P4097, $P4096
    nqp_get_sc_object $P4098, "1304284952.167", 1
    .const 'Sub' $P4099 = "70_1304284961.094" 
    $P4097."add_method"($P4098, "!PREFIX__quote_escape:sym<backslash>", $P4099)
    nqp_get_sc_object $P4100, "1304284952.167", 1
    get_how $P4101, $P4100
    nqp_get_sc_object $P4102, "1304284952.167", 1
    .const 'Sub' $P4103 = "71_1304284961.094" 
    $P4101."add_method"($P4102, "quote_escape:sym<stopper>", $P4103)
    nqp_get_sc_object $P4104, "1304284952.167", 1
    get_how $P4105, $P4104
    nqp_get_sc_object $P4106, "1304284952.167", 1
    .const 'Sub' $P4107 = "72_1304284961.094" 
    $P4105."add_method"($P4106, "!PREFIX__quote_escape:sym<stopper>", $P4107)
    nqp_get_sc_object $P4108, "1304284952.167", 1
    get_how $P4109, $P4108
    nqp_get_sc_object $P4110, "1304284952.167", 1
    .const 'Sub' $P4111 = "73_1304284961.094" 
    $P4109."add_method"($P4110, "quote_escape:sym<bs>", $P4111)
    nqp_get_sc_object $P4112, "1304284952.167", 1
    get_how $P4113, $P4112
    nqp_get_sc_object $P4114, "1304284952.167", 1
    .const 'Sub' $P4115 = "74_1304284961.094" 
    $P4113."add_method"($P4114, "!PREFIX__quote_escape:sym<bs>", $P4115)
    nqp_get_sc_object $P4116, "1304284952.167", 1
    get_how $P4117, $P4116
    nqp_get_sc_object $P4118, "1304284952.167", 1
    .const 'Sub' $P4119 = "75_1304284961.094" 
    $P4117."add_method"($P4118, "quote_escape:sym<nl>", $P4119)
    nqp_get_sc_object $P4120, "1304284952.167", 1
    get_how $P4121, $P4120
    nqp_get_sc_object $P4122, "1304284952.167", 1
    .const 'Sub' $P4123 = "76_1304284961.094" 
    $P4121."add_method"($P4122, "!PREFIX__quote_escape:sym<nl>", $P4123)
    nqp_get_sc_object $P4124, "1304284952.167", 1
    get_how $P4125, $P4124
    nqp_get_sc_object $P4126, "1304284952.167", 1
    .const 'Sub' $P4127 = "77_1304284961.094" 
    $P4125."add_method"($P4126, "quote_escape:sym<cr>", $P4127)
    nqp_get_sc_object $P4128, "1304284952.167", 1
    get_how $P4129, $P4128
    nqp_get_sc_object $P4130, "1304284952.167", 1
    .const 'Sub' $P4131 = "78_1304284961.094" 
    $P4129."add_method"($P4130, "!PREFIX__quote_escape:sym<cr>", $P4131)
    nqp_get_sc_object $P4132, "1304284952.167", 1
    get_how $P4133, $P4132
    nqp_get_sc_object $P4134, "1304284952.167", 1
    .const 'Sub' $P4135 = "79_1304284961.094" 
    $P4133."add_method"($P4134, "quote_escape:sym<tab>", $P4135)
    nqp_get_sc_object $P4136, "1304284952.167", 1
    get_how $P4137, $P4136
    nqp_get_sc_object $P4138, "1304284952.167", 1
    .const 'Sub' $P4139 = "80_1304284961.094" 
    $P4137."add_method"($P4138, "!PREFIX__quote_escape:sym<tab>", $P4139)
    nqp_get_sc_object $P4140, "1304284952.167", 1
    get_how $P4141, $P4140
    nqp_get_sc_object $P4142, "1304284952.167", 1
    .const 'Sub' $P4143 = "81_1304284961.094" 
    $P4141."add_method"($P4142, "quote_escape:sym<ff>", $P4143)
    nqp_get_sc_object $P4144, "1304284952.167", 1
    get_how $P4145, $P4144
    nqp_get_sc_object $P4146, "1304284952.167", 1
    .const 'Sub' $P4147 = "82_1304284961.094" 
    $P4145."add_method"($P4146, "!PREFIX__quote_escape:sym<ff>", $P4147)
    nqp_get_sc_object $P4148, "1304284952.167", 1
    get_how $P4149, $P4148
    nqp_get_sc_object $P4150, "1304284952.167", 1
    .const 'Sub' $P4151 = "83_1304284961.094" 
    $P4149."add_method"($P4150, "quote_escape:sym<esc>", $P4151)
    nqp_get_sc_object $P4152, "1304284952.167", 1
    get_how $P4153, $P4152
    nqp_get_sc_object $P4154, "1304284952.167", 1
    .const 'Sub' $P4155 = "84_1304284961.094" 
    $P4153."add_method"($P4154, "!PREFIX__quote_escape:sym<esc>", $P4155)
    nqp_get_sc_object $P4156, "1304284952.167", 1
    get_how $P4157, $P4156
    nqp_get_sc_object $P4158, "1304284952.167", 1
    .const 'Sub' $P4159 = "85_1304284961.094" 
    $P4157."add_method"($P4158, "quote_escape:sym<hex>", $P4159)
    nqp_get_sc_object $P4160, "1304284952.167", 1
    get_how $P4161, $P4160
    nqp_get_sc_object $P4162, "1304284952.167", 1
    .const 'Sub' $P4163 = "86_1304284961.094" 
    $P4161."add_method"($P4162, "!PREFIX__quote_escape:sym<hex>", $P4163)
    nqp_get_sc_object $P4164, "1304284952.167", 1
    get_how $P4165, $P4164
    nqp_get_sc_object $P4166, "1304284952.167", 1
    .const 'Sub' $P4167 = "87_1304284961.094" 
    $P4165."add_method"($P4166, "quote_escape:sym<oct>", $P4167)
    nqp_get_sc_object $P4168, "1304284952.167", 1
    get_how $P4169, $P4168
    nqp_get_sc_object $P4170, "1304284952.167", 1
    .const 'Sub' $P4171 = "88_1304284961.094" 
    $P4169."add_method"($P4170, "!PREFIX__quote_escape:sym<oct>", $P4171)
    nqp_get_sc_object $P4172, "1304284952.167", 1
    get_how $P4173, $P4172
    nqp_get_sc_object $P4174, "1304284952.167", 1
    .const 'Sub' $P4175 = "89_1304284961.094" 
    $P4173."add_method"($P4174, "quote_escape:sym<chr>", $P4175)
    nqp_get_sc_object $P4176, "1304284952.167", 1
    get_how $P4177, $P4176
    nqp_get_sc_object $P4178, "1304284952.167", 1
    .const 'Sub' $P4179 = "90_1304284961.094" 
    $P4177."add_method"($P4178, "!PREFIX__quote_escape:sym<chr>", $P4179)
    nqp_get_sc_object $P4180, "1304284952.167", 1
    get_how $P4181, $P4180
    nqp_get_sc_object $P4182, "1304284952.167", 1
    .const 'Sub' $P4183 = "91_1304284961.094" 
    $P4181."add_method"($P4182, "quote_escape:sym<0>", $P4183)
    nqp_get_sc_object $P4184, "1304284952.167", 1
    get_how $P4185, $P4184
    nqp_get_sc_object $P4186, "1304284952.167", 1
    .const 'Sub' $P4187 = "92_1304284961.094" 
    $P4185."add_method"($P4186, "!PREFIX__quote_escape:sym<0>", $P4187)
    nqp_get_sc_object $P4188, "1304284952.167", 1
    get_how $P4189, $P4188
    nqp_get_sc_object $P4190, "1304284952.167", 1
    .const 'Sub' $P4191 = "93_1304284961.094" 
    $P4189."add_method"($P4190, "quote_escape:sym<misc>", $P4191)
    nqp_get_sc_object $P4192, "1304284952.167", 1
    get_how $P4193, $P4192
    nqp_get_sc_object $P4194, "1304284952.167", 1
    .const 'Sub' $P4195 = "97_1304284961.094" 
    $P4193."add_method"($P4194, "!PREFIX__quote_escape:sym<misc>", $P4195)
    nqp_get_sc_object $P4196, "1304284952.167", 1
    get_how $P4197, $P4196
    nqp_get_sc_object $P4198, "1304284952.167", 1
    .const 'Sub' $P4199 = "98_1304284961.094" 
    $P4197."add_method"($P4198, "charname", $P4199)
    nqp_get_sc_object $P4200, "1304284952.167", 1
    get_how $P4201, $P4200
    nqp_get_sc_object $P4202, "1304284952.167", 1
    .const 'Sub' $P4203 = "100_1304284961.094" 
    $P4201."add_method"($P4202, "!PREFIX__charname", $P4203)
    nqp_get_sc_object $P4204, "1304284952.167", 1
    get_how $P4205, $P4204
    nqp_get_sc_object $P4206, "1304284952.167", 1
    .const 'Sub' $P4207 = "101_1304284961.094" 
    $P4205."add_method"($P4206, "charnames", $P4207)
    nqp_get_sc_object $P4208, "1304284952.167", 1
    get_how $P4209, $P4208
    nqp_get_sc_object $P4210, "1304284952.167", 1
    .const 'Sub' $P4211 = "102_1304284961.094" 
    $P4209."add_method"($P4210, "!PREFIX__charnames", $P4211)
    nqp_get_sc_object $P4212, "1304284952.167", 1
    get_how $P4213, $P4212
    nqp_get_sc_object $P4214, "1304284952.167", 1
    .const 'Sub' $P4215 = "103_1304284961.094" 
    $P4213."add_method"($P4214, "charspec", $P4215)
    nqp_get_sc_object $P4216, "1304284952.167", 1
    get_how $P4217, $P4216
    nqp_get_sc_object $P4218, "1304284952.167", 1
    .const 'Sub' $P4219 = "104_1304284961.094" 
    $P4217."add_method"($P4218, "!PREFIX__charspec", $P4219)
    nqp_get_sc_object $P4220, "1304284952.167", 1
    get_how $P4221, $P4220
    nqp_get_sc_object $P4222, "1304284952.167", 1
    .const 'Sub' $P4223 = "105_1304284961.094" 
    $P4221."add_method"($P4222, "O", $P4223)
    nqp_get_sc_object $P4224, "1304284952.167", 1
    get_how $P4225, $P4224
    nqp_get_sc_object $P4226, "1304284952.167", 1
    .const 'Sub' $P4227 = "106_1304284961.094" 
    $P4225."add_method"($P4226, "panic", $P4227)
    nqp_get_sc_object $P4228, "1304284952.167", 1
    get_how $P4229, $P4228
    nqp_get_sc_object $P4230, "1304284952.167", 1
    .const 'Sub' $P4231 = "107_1304284961.094" 
    $P4229."add_method"($P4230, "peek_delimiters", $P4231)
    nqp_get_sc_object $P4232, "1304284952.167", 1
    get_how $P4233, $P4232
    nqp_get_sc_object $P4234, "1304284952.167", 1
    .const 'Sub' $P4235 = "108_1304284961.094" 
    $P4233."add_method"($P4234, "quote_EXPR", $P4235)
    nqp_get_sc_object $P4236, "1304284952.167", 1
    get_how $P4237, $P4236
    nqp_get_sc_object $P4238, "1304284952.167", 1
    .const 'Sub' $P4239 = "109_1304284961.094" 
    $P4237."add_method"($P4238, "quotemod_check", $P4239)
    .const 'Sub' $P4240 = "109_1304284961.094" 
    nqp_get_sc_object $P4241, "1304284952.167", 1
    get_who $P4242, $P4241
    set $P4242["quotemod_check"], $P4240
    nqp_get_sc_object $P4243, "1304284952.167", 1
    get_how $P4244, $P4243
    nqp_get_sc_object $P4245, "1304284952.167", 1
    .const 'Sub' $P4246 = "110_1304284961.094" 
    $P4244."add_method"($P4245, "starter", $P4246)
    nqp_get_sc_object $P4247, "1304284952.167", 1
    get_how $P4248, $P4247
    nqp_get_sc_object $P4249, "1304284952.167", 1
    .const 'Sub' $P4250 = "111_1304284961.094" 
    $P4248."add_method"($P4249, "stopper", $P4250)
    nqp_get_sc_object $P4251, "1304284952.167", 1
    get_how $P4252, $P4251
    nqp_get_sc_object $P4253, "1304284952.167", 1
    .const 'Sub' $P4254 = "112_1304284961.094" 
    $P4252."add_method"($P4253, "split_words", $P4254)
    .const 'Sub' $P4255 = "112_1304284961.094" 
    nqp_get_sc_object $P4256, "1304284952.167", 1
    get_who $P4257, $P4256
    set $P4257["split_words"], $P4255
    nqp_get_sc_object $P4258, "1304284952.167", 1
    get_how $P4259, $P4258
    nqp_get_sc_object $P4260, "1304284952.167", 1
    .const 'Sub' $P4261 = "113_1304284961.094" 
    $P4259."add_method"($P4260, "EXPR", $P4261)
    nqp_get_sc_object $P4262, "1304284952.167", 1
    get_how $P4263, $P4262
    nqp_get_sc_object $P4264, "1304284952.167", 1
    .const 'Sub' $P4265 = "114_1304284961.094" 
    $P4263."add_method"($P4264, "EXPR_reduce", $P4265)
    nqp_get_sc_object $P4266, "1304284952.167", 1
    get_how $P4267, $P4266
    nqp_get_sc_object $P4268, "1304284952.167", 1
    .const 'Sub' $P4269 = "115_1304284961.094" 
    $P4267."add_method"($P4268, "ternary", $P4269)
    nqp_get_sc_object $P4270, "1304284952.167", 1
    get_how $P4271, $P4270
    nqp_get_sc_object $P4272, "1304284952.167", 1
    .const 'Sub' $P4273 = "116_1304284961.094" 
    $P4271."add_method"($P4272, "MARKER", $P4273)
    nqp_get_sc_object $P4274, "1304284952.167", 1
    get_how $P4275, $P4274
    nqp_get_sc_object $P4276, "1304284952.167", 1
    .const 'Sub' $P4277 = "117_1304284961.094" 
    $P4275."add_method"($P4276, "MARKED", $P4277)
    nqp_get_sc_object $P4278, "1304284952.167", 1
    get_how $P4279, $P4278
    nqp_get_sc_object $P4280, "1304284952.167", 1
    .const 'Sub' $P4281 = "118_1304284961.094" 
    $P4279."add_method"($P4280, "LANG", $P4281)
    .const 'Sub' $P4282 = "11_1304284961.094" 
    $P4283 = $P4282."get_lexinfo"()
    nqp_get_sc_object $P4284, "1304284952.167", 1
    $P4283."set_static_lexpad_value"("$?PACKAGE", $P4284)
    .const 'Sub' $P4285 = "11_1304284961.094" 
    $P4286 = $P4285."get_lexinfo"()
    $P4286."finish_static_lexpad"()
    .const 'Sub' $P4287 = "11_1304284961.094" 
    $P4288 = $P4287."get_lexinfo"()
    nqp_get_sc_object $P4289, "1304284952.167", 1
    $P4288."set_static_lexpad_value"("$?CLASS", $P4289)
    .const 'Sub' $P4290 = "11_1304284961.094" 
    $P4291 = $P4290."get_lexinfo"()
    $P4291."finish_static_lexpad"()
    nqp_get_sc_object $P4292, "1304284952.167", 1
    get_how $P4293, $P4292
    nqp_get_sc_object $P4294, "1304284952.167", 1
    nqp_get_sc_object $P4295, "__REGEX_CORE_SC__", 0
    $P4293."set_default_parent"($P4294, $P4295)
    nqp_get_sc_object $P4296, "1304284952.167", 1
    get_how $P4297, $P4296
    nqp_get_sc_object $P4298, "1304284952.167", 1
    $P4297."compose"($P4298)
    nqp_get_sc_object $P4299, "1304284944.723", 41
    $P4300 = $P4299."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P4300, cur_sc
    nqp_set_sc_object "1304284952.167", 105, $P4300
    nqp_get_sc_object $P4301, "1304284952.167", 105
    nqp_get_sc_object $P4302, "1304284952.167", 0
    nqp_get_package_through_who $P4303, $P4302, "HLL"
    get_who $P4304, $P4303
    set $P4304["Actions"], $P4301
    .const 'Sub' $P4305 = "120_1304284961.094" 
    nqp_get_sc_object $P4306, "1304284952.167", 105
    get_who $P4307, $P4306
    set $P4307["string_to_int"], $P4305
    .const 'Sub' $P4308 = "122_1304284961.094" 
    nqp_get_sc_object $P4309, "1304284952.167", 105
    get_who $P4310, $P4309
    set $P4310["ints_to_string"], $P4308
    nqp_get_sc_object $P4311, "1304284952.167", 105
    get_how $P4312, $P4311
    nqp_get_sc_object $P4313, "1304284952.167", 105
    .const 'Sub' $P4314 = "125_1304284961.094" 
    $P4312."add_method"($P4313, "CTXSAVE", $P4314)
    nqp_get_sc_object $P4315, "1304284952.167", 105
    get_how $P4316, $P4315
    nqp_get_sc_object $P4317, "1304284952.167", 105
    .const 'Sub' $P4318 = "126_1304284961.094" 
    $P4316."add_method"($P4317, "SET_BLOCK_OUTER_CTX", $P4318)
    nqp_get_sc_object $P4319, "1304284952.167", 105
    get_how $P4320, $P4319
    nqp_get_sc_object $P4321, "1304284952.167", 105
    .const 'Sub' $P4322 = "129_1304284961.094" 
    $P4320."add_method"($P4321, "EXPR", $P4322)
    nqp_get_sc_object $P4323, "1304284952.167", 105
    get_how $P4324, $P4323
    nqp_get_sc_object $P4325, "1304284952.167", 105
    .const 'Sub' $P4326 = "132_1304284961.094" 
    $P4324."add_method"($P4325, "term:sym<circumfix>", $P4326)
    nqp_get_sc_object $P4327, "1304284952.167", 105
    get_how $P4328, $P4327
    nqp_get_sc_object $P4329, "1304284952.167", 105
    .const 'Sub' $P4330 = "133_1304284961.094" 
    $P4328."add_method"($P4329, "termish", $P4330)
    nqp_get_sc_object $P4331, "1304284952.167", 105
    get_how $P4332, $P4331
    nqp_get_sc_object $P4333, "1304284952.167", 105
    .const 'Sub' $P4334 = "134_1304284961.094" 
    $P4332."add_method"($P4333, "nullterm", $P4334)
    nqp_get_sc_object $P4335, "1304284952.167", 105
    get_how $P4336, $P4335
    nqp_get_sc_object $P4337, "1304284952.167", 105
    .const 'Sub' $P4338 = "135_1304284961.094" 
    $P4336."add_method"($P4337, "nullterm_alt", $P4338)
    nqp_get_sc_object $P4339, "1304284952.167", 105
    get_how $P4340, $P4339
    nqp_get_sc_object $P4341, "1304284952.167", 105
    .const 'Sub' $P4342 = "136_1304284961.094" 
    $P4340."add_method"($P4341, "integer", $P4342)
    nqp_get_sc_object $P4343, "1304284952.167", 105
    get_how $P4344, $P4343
    nqp_get_sc_object $P4345, "1304284952.167", 105
    .const 'Sub' $P4346 = "137_1304284961.094" 
    $P4344."add_method"($P4345, "dec_number", $P4346)
    nqp_get_sc_object $P4347, "1304284952.167", 105
    get_how $P4348, $P4347
    nqp_get_sc_object $P4349, "1304284952.167", 105
    .const 'Sub' $P4350 = "138_1304284961.094" 
    $P4348."add_method"($P4349, "decint", $P4350)
    nqp_get_sc_object $P4351, "1304284952.167", 105
    get_how $P4352, $P4351
    nqp_get_sc_object $P4353, "1304284952.167", 105
    .const 'Sub' $P4354 = "139_1304284961.094" 
    $P4352."add_method"($P4353, "hexint", $P4354)
    nqp_get_sc_object $P4355, "1304284952.167", 105
    get_how $P4356, $P4355
    nqp_get_sc_object $P4357, "1304284952.167", 105
    .const 'Sub' $P4358 = "140_1304284961.094" 
    $P4356."add_method"($P4357, "octint", $P4358)
    nqp_get_sc_object $P4359, "1304284952.167", 105
    get_how $P4360, $P4359
    nqp_get_sc_object $P4361, "1304284952.167", 105
    .const 'Sub' $P4362 = "141_1304284961.094" 
    $P4360."add_method"($P4361, "binint", $P4362)
    nqp_get_sc_object $P4363, "1304284952.167", 105
    get_how $P4364, $P4363
    nqp_get_sc_object $P4365, "1304284952.167", 105
    .const 'Sub' $P4366 = "142_1304284961.094" 
    $P4364."add_method"($P4365, "quote_EXPR", $P4366)
    nqp_get_sc_object $P4367, "1304284952.167", 105
    get_how $P4368, $P4367
    nqp_get_sc_object $P4369, "1304284952.167", 105
    .const 'Sub' $P4370 = "145_1304284961.094" 
    $P4368."add_method"($P4369, "quote_delimited", $P4370)
    nqp_get_sc_object $P4371, "1304284952.167", 105
    get_how $P4372, $P4371
    nqp_get_sc_object $P4373, "1304284952.167", 105
    .const 'Sub' $P4374 = "147_1304284961.094" 
    $P4372."add_method"($P4373, "quote_atom", $P4374)
    nqp_get_sc_object $P4375, "1304284952.167", 105
    get_how $P4376, $P4375
    nqp_get_sc_object $P4377, "1304284952.167", 105
    .const 'Sub' $P4378 = "148_1304284961.094" 
    $P4376."add_method"($P4377, "quote_escape:sym<backslash>", $P4378)
    nqp_get_sc_object $P4379, "1304284952.167", 105
    get_how $P4380, $P4379
    nqp_get_sc_object $P4381, "1304284952.167", 105
    .const 'Sub' $P4382 = "149_1304284961.094" 
    $P4380."add_method"($P4381, "quote_escape:sym<stopper>", $P4382)
    nqp_get_sc_object $P4383, "1304284952.167", 105
    get_how $P4384, $P4383
    nqp_get_sc_object $P4385, "1304284952.167", 105
    .const 'Sub' $P4386 = "150_1304284961.094" 
    $P4384."add_method"($P4385, "quote_escape:sym<bs>", $P4386)
    nqp_get_sc_object $P4387, "1304284952.167", 105
    get_how $P4388, $P4387
    nqp_get_sc_object $P4389, "1304284952.167", 105
    .const 'Sub' $P4390 = "151_1304284961.094" 
    $P4388."add_method"($P4389, "quote_escape:sym<nl>", $P4390)
    nqp_get_sc_object $P4391, "1304284952.167", 105
    get_how $P4392, $P4391
    nqp_get_sc_object $P4393, "1304284952.167", 105
    .const 'Sub' $P4394 = "152_1304284961.094" 
    $P4392."add_method"($P4393, "quote_escape:sym<cr>", $P4394)
    nqp_get_sc_object $P4395, "1304284952.167", 105
    get_how $P4396, $P4395
    nqp_get_sc_object $P4397, "1304284952.167", 105
    .const 'Sub' $P4398 = "153_1304284961.094" 
    $P4396."add_method"($P4397, "quote_escape:sym<tab>", $P4398)
    nqp_get_sc_object $P4399, "1304284952.167", 105
    get_how $P4400, $P4399
    nqp_get_sc_object $P4401, "1304284952.167", 105
    .const 'Sub' $P4402 = "154_1304284961.094" 
    $P4400."add_method"($P4401, "quote_escape:sym<ff>", $P4402)
    nqp_get_sc_object $P4403, "1304284952.167", 105
    get_how $P4404, $P4403
    nqp_get_sc_object $P4405, "1304284952.167", 105
    .const 'Sub' $P4406 = "155_1304284961.094" 
    $P4404."add_method"($P4405, "quote_escape:sym<esc>", $P4406)
    nqp_get_sc_object $P4407, "1304284952.167", 105
    get_how $P4408, $P4407
    nqp_get_sc_object $P4409, "1304284952.167", 105
    .const 'Sub' $P4410 = "156_1304284961.094" 
    $P4408."add_method"($P4409, "quote_escape:sym<hex>", $P4410)
    nqp_get_sc_object $P4411, "1304284952.167", 105
    get_how $P4412, $P4411
    nqp_get_sc_object $P4413, "1304284952.167", 105
    .const 'Sub' $P4414 = "157_1304284961.094" 
    $P4412."add_method"($P4413, "quote_escape:sym<oct>", $P4414)
    nqp_get_sc_object $P4415, "1304284952.167", 105
    get_how $P4416, $P4415
    nqp_get_sc_object $P4417, "1304284952.167", 105
    .const 'Sub' $P4418 = "158_1304284961.094" 
    $P4416."add_method"($P4417, "quote_escape:sym<chr>", $P4418)
    nqp_get_sc_object $P4419, "1304284952.167", 105
    get_how $P4420, $P4419
    nqp_get_sc_object $P4421, "1304284952.167", 105
    .const 'Sub' $P4422 = "159_1304284961.094" 
    $P4420."add_method"($P4421, "quote_escape:sym<0>", $P4422)
    nqp_get_sc_object $P4423, "1304284952.167", 105
    get_how $P4424, $P4423
    nqp_get_sc_object $P4425, "1304284952.167", 105
    .const 'Sub' $P4426 = "160_1304284961.094" 
    $P4424."add_method"($P4425, "quote_escape:sym<misc>", $P4426)
    nqp_get_sc_object $P4427, "1304284952.167", 105
    get_how $P4428, $P4427
    nqp_get_sc_object $P4429, "1304284952.167", 105
    .const 'Sub' $P4430 = "161_1304284961.094" 
    $P4428."add_method"($P4429, "charname", $P4430)
    nqp_get_sc_object $P4431, "1304284952.167", 105
    get_how $P4432, $P4431
    nqp_get_sc_object $P4433, "1304284952.167", 105
    .const 'Sub' $P4434 = "162_1304284961.094" 
    $P4432."add_method"($P4433, "charnames", $P4434)
    nqp_get_sc_object $P4435, "1304284952.167", 105
    get_how $P4436, $P4435
    nqp_get_sc_object $P4437, "1304284952.167", 105
    .const 'Sub' $P4438 = "164_1304284961.094" 
    $P4436."add_method"($P4437, "charspec", $P4438)
    .const 'Sub' $P4439 = "119_1304284961.094" 
    $P4440 = $P4439."get_lexinfo"()
    nqp_get_sc_object $P4441, "1304284952.167", 105
    $P4440."set_static_lexpad_value"("$?PACKAGE", $P4441)
    .const 'Sub' $P4442 = "119_1304284961.094" 
    $P4443 = $P4442."get_lexinfo"()
    $P4443."finish_static_lexpad"()
    .const 'Sub' $P4444 = "119_1304284961.094" 
    $P4445 = $P4444."get_lexinfo"()
    nqp_get_sc_object $P4446, "1304284952.167", 105
    $P4445."set_static_lexpad_value"("$?CLASS", $P4446)
    .const 'Sub' $P4447 = "119_1304284961.094" 
    $P4448 = $P4447."get_lexinfo"()
    $P4448."finish_static_lexpad"()
    nqp_get_sc_object $P4449, "1304284952.167", 105
    get_how $P4450, $P4449
    nqp_get_sc_object $P4451, "1304284952.167", 105
    nqp_get_sc_object $P4452, "1304284950.437", 5
    $P4450."set_default_parent"($P4451, $P4452)
    nqp_get_sc_object $P4453, "1304284952.167", 105
    get_how $P4454, $P4453
    nqp_get_sc_object $P4455, "1304284952.167", 105
    $P4454."compose"($P4455)
    nqp_get_sc_object $P4456, "1304284944.723", 41
    $P4457 = $P4456."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P4457, cur_sc
    nqp_set_sc_object "1304284952.167", 138, $P4457
    nqp_get_sc_object $P4458, "1304284952.167", 138
    nqp_get_sc_object $P4459, "1304284952.167", 0
    nqp_get_package_through_who $P4460, $P4459, "HLL"
    get_who $P4461, $P4460
    set $P4461["Compiler"], $P4458
    nqp_get_sc_object $P4462, "1304284952.167", 138
    get_how $P4463, $P4462
    nqp_get_sc_object $P4464, "1304284952.167", 138
    nqp_get_sc_object $P4465, "1304284944.723", 77
    $P4466 = $P4465."new"("@!stages" :named("name"))
    $P4463."add_attribute"($P4464, $P4466)
    nqp_get_sc_object $P4467, "1304284952.167", 138
    get_how $P4468, $P4467
    nqp_get_sc_object $P4469, "1304284952.167", 138
    nqp_get_sc_object $P4470, "1304284944.723", 77
    $P4471 = $P4470."new"("$!parsegrammar" :named("name"))
    $P4468."add_attribute"($P4469, $P4471)
    nqp_get_sc_object $P4472, "1304284952.167", 138
    get_how $P4473, $P4472
    nqp_get_sc_object $P4474, "1304284952.167", 138
    nqp_get_sc_object $P4475, "1304284944.723", 77
    $P4476 = $P4475."new"("$!parseactions" :named("name"))
    $P4473."add_attribute"($P4474, $P4476)
    nqp_get_sc_object $P4477, "1304284952.167", 138
    get_how $P4478, $P4477
    nqp_get_sc_object $P4479, "1304284952.167", 138
    nqp_get_sc_object $P4480, "1304284944.723", 77
    $P4481 = $P4480."new"("$!astgrammar" :named("name"))
    $P4478."add_attribute"($P4479, $P4481)
    nqp_get_sc_object $P4482, "1304284952.167", 138
    get_how $P4483, $P4482
    nqp_get_sc_object $P4484, "1304284952.167", 138
    nqp_get_sc_object $P4485, "1304284944.723", 77
    $P4486 = $P4485."new"("$!commandline_banner" :named("name"))
    $P4483."add_attribute"($P4484, $P4486)
    nqp_get_sc_object $P4487, "1304284952.167", 138
    get_how $P4488, $P4487
    nqp_get_sc_object $P4489, "1304284952.167", 138
    nqp_get_sc_object $P4490, "1304284944.723", 77
    $P4491 = $P4490."new"("$!commandline_prompt" :named("name"))
    $P4488."add_attribute"($P4489, $P4491)
    nqp_get_sc_object $P4492, "1304284952.167", 138
    get_how $P4493, $P4492
    nqp_get_sc_object $P4494, "1304284952.167", 138
    nqp_get_sc_object $P4495, "1304284944.723", 77
    $P4496 = $P4495."new"("@!cmdoptions" :named("name"))
    $P4493."add_attribute"($P4494, $P4496)
    nqp_get_sc_object $P4497, "1304284952.167", 138
    get_how $P4498, $P4497
    nqp_get_sc_object $P4499, "1304284952.167", 138
    nqp_get_sc_object $P4500, "1304284944.723", 77
    $P4501 = $P4500."new"("$!usage" :named("name"))
    $P4498."add_attribute"($P4499, $P4501)
    nqp_get_sc_object $P4502, "1304284952.167", 138
    get_how $P4503, $P4502
    nqp_get_sc_object $P4504, "1304284952.167", 138
    nqp_get_sc_object $P4505, "1304284944.723", 77
    $P4506 = $P4505."new"("$!version" :named("name"))
    $P4503."add_attribute"($P4504, $P4506)
    nqp_get_sc_object $P4507, "1304284952.167", 138
    get_how $P4508, $P4507
    nqp_get_sc_object $P4509, "1304284952.167", 138
    nqp_get_sc_object $P4510, "1304284944.723", 77
    $P4511 = $P4510."new"("$!compiler_progname" :named("name"))
    $P4508."add_attribute"($P4509, $P4511)
    nqp_get_sc_object $P4512, "1304284952.167", 138
    get_how $P4513, $P4512
    nqp_get_sc_object $P4514, "1304284952.167", 138
    nqp_get_sc_object $P4515, "1304284944.723", 77
    $P4516 = $P4515."new"("$!language" :named("name"))
    $P4513."add_attribute"($P4514, $P4516)
    nqp_get_sc_object $P4517, "1304284952.167", 138
    get_how $P4518, $P4517
    nqp_get_sc_object $P4519, "1304284952.167", 138
    .const 'Sub' $P4520 = "168_1304284961.094" 
    $P4518."add_method"($P4519, "new", $P4520)
    nqp_get_sc_object $P4521, "1304284952.167", 138
    get_how $P4522, $P4521
    nqp_get_sc_object $P4523, "1304284952.167", 138
    .const 'Sub' $P4524 = "169_1304284961.094" 
    $P4522."add_method"($P4523, "BUILD", $P4524)
    nqp_get_sc_object $P4525, "1304284952.167", 138
    get_how $P4526, $P4525
    nqp_get_sc_object $P4527, "1304284952.167", 138
    .const 'Sub' $P4528 = "171_1304284961.094" 
    $P4526."add_method"($P4527, "get_exports", $P4528)
    nqp_get_sc_object $P4529, "1304284952.167", 138
    get_how $P4530, $P4529
    nqp_get_sc_object $P4531, "1304284952.167", 138
    .const 'Sub' $P4532 = "174_1304284961.094" 
    $P4530."add_method"($P4531, "get_module", $P4532)
    nqp_get_sc_object $P4533, "1304284952.167", 138
    get_how $P4534, $P4533
    nqp_get_sc_object $P4535, "1304284952.167", 138
    .const 'Sub' $P4536 = "175_1304284961.094" 
    $P4534."add_method"($P4535, "language", $P4536)
    nqp_get_sc_object $P4537, "1304284952.167", 138
    get_how $P4538, $P4537
    nqp_get_sc_object $P4539, "1304284952.167", 138
    .const 'Sub' $P4540 = "176_1304284961.094" 
    $P4538."add_method"($P4539, "load_module", $P4540)
    nqp_get_sc_object $P4541, "1304284952.167", 138
    get_how $P4542, $P4541
    nqp_get_sc_object $P4543, "1304284952.167", 138
    .const 'Sub' $P4544 = "178_1304284961.094" 
    $P4542."add_method"($P4543, "import", $P4544)
    nqp_get_sc_object $P4545, "1304284952.167", 138
    get_how $P4546, $P4545
    nqp_get_sc_object $P4547, "1304284952.167", 138
    .const 'Sub' $P4548 = "183_1304284961.094" 
    $P4546."add_method"($P4547, "autoprint", $P4548)
    nqp_get_sc_object $P4549, "1304284952.167", 138
    get_how $P4550, $P4549
    nqp_get_sc_object $P4551, "1304284952.167", 138
    .const 'Sub' $P4552 = "184_1304284961.094" 
    $P4550."add_method"($P4551, "interactive", $P4552)
    nqp_get_sc_object $P4553, "1304284952.167", 138
    get_how $P4554, $P4553
    nqp_get_sc_object $P4555, "1304284952.167", 138
    .const 'Sub' $P4556 = "191_1304284961.094" 
    $P4554."add_method"($P4555, "eval", $P4556)
    nqp_get_sc_object $P4557, "1304284952.167", 138
    get_how $P4558, $P4557
    nqp_get_sc_object $P4559, "1304284952.167", 138
    .const 'Sub' $P4560 = "193_1304284961.094" 
    $P4558."add_method"($P4559, "ctxsave", $P4560)
    nqp_get_sc_object $P4561, "1304284952.167", 138
    get_how $P4562, $P4561
    nqp_get_sc_object $P4563, "1304284952.167", 138
    .const 'Sub' $P4564 = "194_1304284961.094" 
    $P4562."add_method"($P4563, "panic", $P4564)
    nqp_get_sc_object $P4565, "1304284952.167", 138
    get_how $P4566, $P4565
    nqp_get_sc_object $P4567, "1304284952.167", 138
    .const 'Sub' $P4568 = "195_1304284961.094" 
    $P4566."add_method"($P4567, "stages", $P4568)
    nqp_get_sc_object $P4569, "1304284952.167", 138
    get_how $P4570, $P4569
    nqp_get_sc_object $P4571, "1304284952.167", 138
    .const 'Sub' $P4572 = "196_1304284961.094" 
    $P4570."add_method"($P4571, "parsegrammar", $P4572)
    nqp_get_sc_object $P4573, "1304284952.167", 138
    get_how $P4574, $P4573
    nqp_get_sc_object $P4575, "1304284952.167", 138
    .const 'Sub' $P4576 = "197_1304284961.094" 
    $P4574."add_method"($P4575, "parseactions", $P4576)
    nqp_get_sc_object $P4577, "1304284952.167", 138
    get_how $P4578, $P4577
    nqp_get_sc_object $P4579, "1304284952.167", 138
    .const 'Sub' $P4580 = "198_1304284961.094" 
    $P4578."add_method"($P4579, "astgrammar", $P4580)
    nqp_get_sc_object $P4581, "1304284952.167", 138
    get_how $P4582, $P4581
    nqp_get_sc_object $P4583, "1304284952.167", 138
    .const 'Sub' $P4584 = "199_1304284961.094" 
    $P4582."add_method"($P4583, "commandline_banner", $P4584)
    nqp_get_sc_object $P4585, "1304284952.167", 138
    get_how $P4586, $P4585
    nqp_get_sc_object $P4587, "1304284952.167", 138
    .const 'Sub' $P4588 = "200_1304284961.094" 
    $P4586."add_method"($P4587, "commandline_prompt", $P4588)
    nqp_get_sc_object $P4589, "1304284952.167", 138
    get_how $P4590, $P4589
    nqp_get_sc_object $P4591, "1304284952.167", 138
    .const 'Sub' $P4592 = "201_1304284961.094" 
    $P4590."add_method"($P4591, "compiler_progname", $P4592)
    nqp_get_sc_object $P4593, "1304284952.167", 138
    get_how $P4594, $P4593
    nqp_get_sc_object $P4595, "1304284952.167", 138
    .const 'Sub' $P4596 = "202_1304284961.094" 
    $P4594."add_method"($P4595, "commandline_options", $P4596)
    nqp_get_sc_object $P4597, "1304284952.167", 138
    get_how $P4598, $P4597
    nqp_get_sc_object $P4599, "1304284952.167", 138
    .const 'Sub' $P4600 = "203_1304284961.094" 
    $P4598."add_method"($P4599, "command_line", $P4600)
    nqp_get_sc_object $P4601, "1304284952.167", 138
    get_how $P4602, $P4601
    nqp_get_sc_object $P4603, "1304284952.167", 138
    .const 'Sub' $P4604 = "205_1304284961.094" 
    $P4602."add_method"($P4603, "process_args", $P4604)
    nqp_get_sc_object $P4605, "1304284952.167", 138
    get_how $P4606, $P4605
    nqp_get_sc_object $P4607, "1304284952.167", 138
    .const 'Sub' $P4608 = "208_1304284961.094" 
    $P4606."add_method"($P4607, "evalfiles", $P4608)
    nqp_get_sc_object $P4609, "1304284952.167", 138
    get_how $P4610, $P4609
    nqp_get_sc_object $P4611, "1304284952.167", 138
    .const 'Sub' $P4612 = "212_1304284961.094" 
    $P4610."add_method"($P4611, "compile", $P4612)
    nqp_get_sc_object $P4613, "1304284952.167", 138
    get_how $P4614, $P4613
    nqp_get_sc_object $P4615, "1304284952.167", 138
    .const 'Sub' $P4616 = "214_1304284961.094" 
    $P4614."add_method"($P4615, "parse", $P4616)
    nqp_get_sc_object $P4617, "1304284952.167", 138
    get_how $P4618, $P4617
    nqp_get_sc_object $P4619, "1304284952.167", 138
    .const 'Sub' $P4620 = "215_1304284961.094" 
    $P4618."add_method"($P4619, "past", $P4620)
    nqp_get_sc_object $P4621, "1304284952.167", 138
    get_how $P4622, $P4621
    nqp_get_sc_object $P4623, "1304284952.167", 138
    .const 'Sub' $P4624 = "216_1304284961.094" 
    $P4622."add_method"($P4623, "post", $P4624)
    nqp_get_sc_object $P4625, "1304284952.167", 138
    get_how $P4626, $P4625
    nqp_get_sc_object $P4627, "1304284952.167", 138
    .const 'Sub' $P4628 = "217_1304284961.094" 
    $P4626."add_method"($P4627, "pir", $P4628)
    nqp_get_sc_object $P4629, "1304284952.167", 138
    get_how $P4630, $P4629
    nqp_get_sc_object $P4631, "1304284952.167", 138
    .const 'Sub' $P4632 = "218_1304284961.094" 
    $P4630."add_method"($P4631, "evalpmc", $P4632)
    nqp_get_sc_object $P4633, "1304284952.167", 138
    get_how $P4634, $P4633
    nqp_get_sc_object $P4635, "1304284952.167", 138
    .const 'Sub' $P4636 = "219_1304284961.094" 
    $P4634."add_method"($P4635, "dumper", $P4636)
    nqp_get_sc_object $P4637, "1304284952.167", 138
    get_how $P4638, $P4637
    nqp_get_sc_object $P4639, "1304284952.167", 138
    .const 'Sub' $P4640 = "221_1304284961.094" 
    $P4638."add_method"($P4639, "usage", $P4640)
    nqp_get_sc_object $P4641, "1304284952.167", 138
    get_how $P4642, $P4641
    nqp_get_sc_object $P4643, "1304284952.167", 138
    .const 'Sub' $P4644 = "222_1304284961.094" 
    $P4642."add_method"($P4643, "version", $P4644)
    nqp_get_sc_object $P4645, "1304284952.167", 138
    get_how $P4646, $P4645
    nqp_get_sc_object $P4647, "1304284952.167", 138
    .const 'Sub' $P4648 = "223_1304284961.094" 
    $P4646."add_method"($P4647, "removestage", $P4648)
    nqp_get_sc_object $P4649, "1304284952.167", 138
    get_how $P4650, $P4649
    nqp_get_sc_object $P4651, "1304284952.167", 138
    .const 'Sub' $P4652 = "225_1304284961.094" 
    $P4650."add_method"($P4651, "addstage", $P4652)
    nqp_get_sc_object $P4653, "1304284952.167", 138
    get_how $P4654, $P4653
    nqp_get_sc_object $P4655, "1304284952.167", 138
    .const 'Sub' $P4656 = "228_1304284961.094" 
    $P4654."add_method"($P4655, "parse_name", $P4656)
    nqp_get_sc_object $P4657, "1304284952.167", 138
    get_how $P4658, $P4657
    nqp_get_sc_object $P4659, "1304284952.167", 138
    .const 'Sub' $P4660 = "230_1304284961.094" 
    $P4658."add_method"($P4659, "lineof", $P4660)
    .const 'Sub' $P4661 = "165_1304284961.094" 
    $P4662 = $P4661."get_lexinfo"()
    nqp_get_sc_object $P4663, "1304284952.167", 138
    $P4662."set_static_lexpad_value"("$?PACKAGE", $P4663)
    .const 'Sub' $P4664 = "165_1304284961.094" 
    $P4665 = $P4664."get_lexinfo"()
    $P4665."finish_static_lexpad"()
    .const 'Sub' $P4666 = "165_1304284961.094" 
    $P4667 = $P4666."get_lexinfo"()
    nqp_get_sc_object $P4668, "1304284952.167", 138
    $P4667."set_static_lexpad_value"("$?CLASS", $P4668)
    .const 'Sub' $P4669 = "165_1304284961.094" 
    $P4670 = $P4669."get_lexinfo"()
    $P4670."finish_static_lexpad"()
    nqp_get_sc_object $P4671, "1304284952.167", 138
    get_how $P4672, $P4671
    nqp_get_sc_object $P4673, "1304284952.167", 138
    nqp_get_sc_object $P4674, "1304284950.437", 5
    $P4672."set_default_parent"($P4673, $P4674)
    nqp_get_sc_object $P4675, "1304284952.167", 138
    get_how $P4676, $P4675
    nqp_get_sc_object $P4677, "1304284952.167", 138
    $P4676."compose"($P4677)
    nqp_get_sc_object $P4678, "1304284944.723", 41
    $P4679 = $P4678."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4679, cur_sc
    nqp_set_sc_object "1304284952.167", 175, $P4679
    nqp_get_sc_object $P4680, "1304284952.167", 175
    nqp_get_sc_object $P4681, "1304284952.167", 0
    nqp_get_package_through_who $P4682, $P4681, "HLL"
    nqp_get_package_through_who $P4683, $P4682, "CommandLine"
    get_who $P4684, $P4683
    set $P4684["Result"], $P4680
    nqp_get_sc_object $P4685, "1304284952.167", 175
    get_how $P4686, $P4685
    nqp_get_sc_object $P4687, "1304284952.167", 175
    nqp_get_sc_object $P4688, "1304284944.723", 77
    $P4689 = $P4688."new"("@!arguments" :named("name"))
    $P4686."add_attribute"($P4687, $P4689)
    nqp_get_sc_object $P4690, "1304284952.167", 175
    get_how $P4691, $P4690
    nqp_get_sc_object $P4692, "1304284952.167", 175
    nqp_get_sc_object $P4693, "1304284944.723", 77
    $P4694 = $P4693."new"("%!options" :named("name"))
    $P4691."add_attribute"($P4692, $P4694)
    nqp_get_sc_object $P4695, "1304284952.167", 175
    get_how $P4696, $P4695
    nqp_get_sc_object $P4697, "1304284952.167", 175
    .const 'Sub' $P4698 = "232_1304284961.094" 
    $P4696."add_method"($P4697, "init", $P4698)
    nqp_get_sc_object $P4699, "1304284952.167", 175
    get_how $P4700, $P4699
    nqp_get_sc_object $P4701, "1304284952.167", 175
    .const 'Sub' $P4702 = "233_1304284961.094" 
    $P4700."add_method"($P4701, "arguments", $P4702)
    nqp_get_sc_object $P4703, "1304284952.167", 175
    get_how $P4704, $P4703
    nqp_get_sc_object $P4705, "1304284952.167", 175
    .const 'Sub' $P4706 = "234_1304284961.094" 
    $P4704."add_method"($P4705, "options", $P4706)
    nqp_get_sc_object $P4707, "1304284952.167", 175
    get_how $P4708, $P4707
    nqp_get_sc_object $P4709, "1304284952.167", 175
    .const 'Sub' $P4710 = "235_1304284961.094" 
    $P4708."add_method"($P4709, "add-argument", $P4710)
    nqp_get_sc_object $P4711, "1304284952.167", 175
    get_how $P4712, $P4711
    nqp_get_sc_object $P4713, "1304284952.167", 175
    .const 'Sub' $P4714 = "236_1304284961.094" 
    $P4712."add_method"($P4713, "add-option", $P4714)
    .const 'Sub' $P4715 = "231_1304284961.094" 
    $P4716 = $P4715."get_lexinfo"()
    nqp_get_sc_object $P4717, "1304284952.167", 175
    $P4716."set_static_lexpad_value"("$?PACKAGE", $P4717)
    .const 'Sub' $P4718 = "231_1304284961.094" 
    $P4719 = $P4718."get_lexinfo"()
    $P4719."finish_static_lexpad"()
    .const 'Sub' $P4720 = "231_1304284961.094" 
    $P4721 = $P4720."get_lexinfo"()
    nqp_get_sc_object $P4722, "1304284952.167", 175
    $P4721."set_static_lexpad_value"("$?CLASS", $P4722)
    .const 'Sub' $P4723 = "231_1304284961.094" 
    $P4724 = $P4723."get_lexinfo"()
    $P4724."finish_static_lexpad"()
    nqp_get_sc_object $P4725, "1304284952.167", 175
    get_how $P4726, $P4725
    nqp_get_sc_object $P4727, "1304284952.167", 175
    nqp_get_sc_object $P4728, "1304284950.437", 5
    $P4726."set_default_parent"($P4727, $P4728)
    nqp_get_sc_object $P4729, "1304284952.167", 175
    get_how $P4730, $P4729
    nqp_get_sc_object $P4731, "1304284952.167", 175
    $P4730."compose"($P4731)
    nqp_get_sc_object $P4732, "1304284944.723", 41
    $P4733 = $P4732."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4733, cur_sc
    nqp_set_sc_object "1304284952.167", 181, $P4733
    nqp_get_sc_object $P4734, "1304284952.167", 181
    nqp_get_sc_object $P4735, "1304284952.167", 0
    nqp_get_package_through_who $P4736, $P4735, "HLL"
    nqp_get_package_through_who $P4737, $P4736, "CommandLine"
    get_who $P4738, $P4737
    set $P4738["Parser"], $P4734
    nqp_get_sc_object $P4739, "1304284952.167", 181
    get_how $P4740, $P4739
    nqp_get_sc_object $P4741, "1304284952.167", 181
    nqp_get_sc_object $P4742, "1304284944.723", 77
    $P4743 = $P4742."new"("@!specs" :named("name"))
    $P4740."add_attribute"($P4741, $P4743)
    nqp_get_sc_object $P4744, "1304284952.167", 181
    get_how $P4745, $P4744
    nqp_get_sc_object $P4746, "1304284952.167", 181
    nqp_get_sc_object $P4747, "1304284944.723", 77
    $P4748 = $P4747."new"("%!options" :named("name"))
    $P4745."add_attribute"($P4746, $P4748)
    nqp_get_sc_object $P4749, "1304284952.167", 181
    get_how $P4750, $P4749
    nqp_get_sc_object $P4751, "1304284952.167", 181
    nqp_get_sc_object $P4752, "1304284944.723", 77
    $P4753 = $P4752."new"("%!stopper" :named("name"))
    $P4750."add_attribute"($P4751, $P4753)
    nqp_get_sc_object $P4754, "1304284952.167", 181
    get_how $P4755, $P4754
    nqp_get_sc_object $P4756, "1304284952.167", 181
    nqp_get_sc_object $P4757, "1304284944.723", 77
    $P4758 = $P4757."new"("$!stop-after-first-arg" :named("name"))
    $P4755."add_attribute"($P4756, $P4758)
    nqp_get_sc_object $P4759, "1304284952.167", 181
    get_how $P4760, $P4759
    nqp_get_sc_object $P4761, "1304284952.167", 181
    .const 'Sub' $P4762 = "239_1304284961.094" 
    $P4760."add_method"($P4761, "new", $P4762)
    nqp_get_sc_object $P4763, "1304284952.167", 181
    get_how $P4764, $P4763
    nqp_get_sc_object $P4765, "1304284952.167", 181
    .const 'Sub' $P4766 = "240_1304284961.094" 
    $P4764."add_method"($P4765, "stop-after-first-arg", $P4766)
    nqp_get_sc_object $P4767, "1304284952.167", 181
    get_how $P4768, $P4767
    nqp_get_sc_object $P4769, "1304284952.167", 181
    .const 'Sub' $P4770 = "241_1304284961.094" 
    $P4768."add_method"($P4769, "BUILD", $P4770)
    nqp_get_sc_object $P4771, "1304284952.167", 181
    get_how $P4772, $P4771
    nqp_get_sc_object $P4773, "1304284952.167", 181
    .const 'Sub' $P4774 = "243_1304284961.094" 
    $P4772."add_method"($P4773, "add-stopper", $P4774)
    nqp_get_sc_object $P4775, "1304284952.167", 181
    get_how $P4776, $P4775
    nqp_get_sc_object $P4777, "1304284952.167", 181
    .const 'Sub' $P4778 = "244_1304284961.094" 
    $P4776."add_method"($P4777, "split-option-aliases", $P4778)
    nqp_get_sc_object $P4779, "1304284952.167", 181
    get_how $P4780, $P4779
    nqp_get_sc_object $P4781, "1304284952.167", 181
    .const 'Sub' $P4782 = "245_1304284961.094" 
    $P4780."add_method"($P4781, "add-spec", $P4782)
    nqp_get_sc_object $P4783, "1304284952.167", 181
    get_how $P4784, $P4783
    nqp_get_sc_object $P4785, "1304284952.167", 181
    .const 'Sub' $P4786 = "247_1304284961.094" 
    $P4784."add_method"($P4785, "is-option", $P4786)
    nqp_get_sc_object $P4787, "1304284952.167", 181
    get_how $P4788, $P4787
    nqp_get_sc_object $P4789, "1304284952.167", 181
    .const 'Sub' $P4790 = "248_1304284961.094" 
    $P4788."add_method"($P4789, "wants-value", $P4790)
    nqp_get_sc_object $P4791, "1304284952.167", 181
    get_how $P4792, $P4791
    nqp_get_sc_object $P4793, "1304284952.167", 181
    .const 'Sub' $P4794 = "249_1304284961.094" 
    $P4792."add_method"($P4793, "parse", $P4794)
    .const 'Sub' $P4795 = "238_1304284961.094" 
    $P4796 = $P4795."get_lexinfo"()
    nqp_get_sc_object $P4797, "1304284952.167", 181
    $P4796."set_static_lexpad_value"("$?PACKAGE", $P4797)
    .const 'Sub' $P4798 = "238_1304284961.094" 
    $P4799 = $P4798."get_lexinfo"()
    $P4799."finish_static_lexpad"()
    .const 'Sub' $P4800 = "238_1304284961.094" 
    $P4801 = $P4800."get_lexinfo"()
    nqp_get_sc_object $P4802, "1304284952.167", 181
    $P4801."set_static_lexpad_value"("$?CLASS", $P4802)
    .const 'Sub' $P4803 = "238_1304284961.094" 
    $P4804 = $P4803."get_lexinfo"()
    $P4804."finish_static_lexpad"()
    nqp_get_sc_object $P4805, "1304284952.167", 181
    get_how $P4806, $P4805
    nqp_get_sc_object $P4807, "1304284952.167", 181
    nqp_get_sc_object $P4808, "1304284950.437", 5
    $P4806."set_default_parent"($P4807, $P4808)
    nqp_get_sc_object $P4809, "1304284952.167", 181
    get_how $P4810, $P4809
    nqp_get_sc_object $P4811, "1304284952.167", 181
    $P4810."compose"($P4811)
    nqp_get_sc_object $P4812, "1304284944.723", 41
    $P4813 = $P4812."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4813, cur_sc
    nqp_set_sc_object "1304284952.167", 191, $P4813
    nqp_get_sc_object $P4814, "1304284952.167", 191
    nqp_get_sc_object $P4815, "1304284952.167", 0
    nqp_get_package_through_who $P4816, $P4815, "HLL"
    nqp_get_package_through_who $P4817, $P4816, "Compiler"
    get_who $P4818, $P4817
    set $P4818["SerializationContextBuilder"], $P4814
    nqp_get_sc_object $P4819, "1304284944.723", 41
    $P4820 = $P4819."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4820, cur_sc
    nqp_set_sc_object "1304284952.167", 192, $P4820
    .const 'Sub' $P4821 = "257_1304284961.094" 
    $P4822 = $P4821."get_lexinfo"()
    nqp_get_sc_object $P4823, "1304284952.167", 192
    $P4822."set_static_lexpad_value"("Event", $P4823)
    .const 'Sub' $P4824 = "257_1304284961.094" 
    $P4825 = $P4824."get_lexinfo"()
    $P4825."finish_static_lexpad"()
    nqp_get_sc_object $P4826, "1304284952.167", 192
    get_how $P4827, $P4826
    nqp_get_sc_object $P4828, "1304284952.167", 192
    nqp_get_sc_object $P4829, "1304284944.723", 77
    $P4830 = $P4829."new"("$!deserialize_past" :named("name"))
    $P4827."add_attribute"($P4828, $P4830)
    nqp_get_sc_object $P4831, "1304284952.167", 192
    get_how $P4832, $P4831
    nqp_get_sc_object $P4833, "1304284952.167", 192
    .const 'Sub' $P4834 = "260_1304284961.094" 
    $P4832."add_method"($P4833, "deserialize_past", $P4834)
    nqp_get_sc_object $P4835, "1304284952.167", 192
    get_how $P4836, $P4835
    nqp_get_sc_object $P4837, "1304284952.167", 192
    nqp_get_sc_object $P4838, "1304284944.723", 77
    $P4839 = $P4838."new"("$!fixup_past" :named("name"))
    $P4836."add_attribute"($P4837, $P4839)
    nqp_get_sc_object $P4840, "1304284952.167", 192
    get_how $P4841, $P4840
    nqp_get_sc_object $P4842, "1304284952.167", 192
    .const 'Sub' $P4843 = "261_1304284961.094" 
    $P4841."add_method"($P4842, "fixup_past", $P4843)
    .const 'Sub' $P4844 = "259_1304284961.094" 
    $P4845 = $P4844."get_lexinfo"()
    nqp_get_sc_object $P4846, "1304284952.167", 192
    $P4845."set_static_lexpad_value"("$?PACKAGE", $P4846)
    .const 'Sub' $P4847 = "259_1304284961.094" 
    $P4848 = $P4847."get_lexinfo"()
    $P4848."finish_static_lexpad"()
    .const 'Sub' $P4849 = "259_1304284961.094" 
    $P4850 = $P4849."get_lexinfo"()
    nqp_get_sc_object $P4851, "1304284952.167", 192
    $P4850."set_static_lexpad_value"("$?CLASS", $P4851)
    .const 'Sub' $P4852 = "259_1304284961.094" 
    $P4853 = $P4852."get_lexinfo"()
    $P4853."finish_static_lexpad"()
    nqp_get_sc_object $P4854, "1304284952.167", 192
    get_how $P4855, $P4854
    nqp_get_sc_object $P4856, "1304284952.167", 192
    nqp_get_sc_object $P4857, "1304284950.437", 5
    $P4855."set_default_parent"($P4856, $P4857)
    nqp_get_sc_object $P4858, "1304284952.167", 192
    get_how $P4859, $P4858
    nqp_get_sc_object $P4860, "1304284952.167", 192
    $P4859."compose"($P4860)
    nqp_get_sc_object $P4861, "1304284952.167", 191
    get_how $P4862, $P4861
    nqp_get_sc_object $P4863, "1304284952.167", 191
    nqp_get_sc_object $P4864, "1304284944.723", 77
    $P4865 = $P4864."new"("$!sc" :named("name"))
    $P4862."add_attribute"($P4863, $P4865)
    nqp_get_sc_object $P4866, "1304284952.167", 191
    get_how $P4867, $P4866
    nqp_get_sc_object $P4868, "1304284952.167", 191
    nqp_get_sc_object $P4869, "1304284944.723", 77
    $P4870 = $P4869."new"("$!handle" :named("name"))
    $P4867."add_attribute"($P4868, $P4870)
    nqp_get_sc_object $P4871, "1304284952.167", 191
    get_how $P4872, $P4871
    nqp_get_sc_object $P4873, "1304284952.167", 191
    nqp_get_sc_object $P4874, "1304284944.723", 77
    $P4875 = $P4874."new"("%!addr_to_slot" :named("name"))
    $P4872."add_attribute"($P4873, $P4875)
    nqp_get_sc_object $P4876, "1304284952.167", 191
    get_how $P4877, $P4876
    nqp_get_sc_object $P4878, "1304284952.167", 191
    nqp_get_sc_object $P4879, "1304284944.723", 77
    $P4880 = $P4879."new"("@!event_stream" :named("name"))
    $P4877."add_attribute"($P4878, $P4880)
    nqp_get_sc_object $P4881, "1304284952.167", 191
    get_how $P4882, $P4881
    nqp_get_sc_object $P4883, "1304284952.167", 191
    .const 'Sub' $P4884 = "262_1304284961.094" 
    $P4882."add_method"($P4883, "new", $P4884)
    nqp_get_sc_object $P4885, "1304284952.167", 191
    get_how $P4886, $P4885
    nqp_get_sc_object $P4887, "1304284952.167", 191
    .const 'Sub' $P4888 = "263_1304284961.094" 
    $P4886."add_method"($P4887, "BUILD", $P4888)
    nqp_get_sc_object $P4889, "1304284952.167", 191
    get_how $P4890, $P4889
    nqp_get_sc_object $P4891, "1304284952.167", 191
    .const 'Sub' $P4892 = "264_1304284961.094" 
    $P4890."add_method"($P4891, "slot_for_object", $P4892)
    nqp_get_sc_object $P4893, "1304284952.167", 191
    get_how $P4894, $P4893
    nqp_get_sc_object $P4895, "1304284952.167", 191
    .const 'Sub' $P4896 = "265_1304284961.094" 
    $P4894."add_method"($P4895, "get_slot_past_for_object", $P4896)
    nqp_get_sc_object $P4897, "1304284952.167", 191
    get_how $P4898, $P4897
    nqp_get_sc_object $P4899, "1304284952.167", 191
    .const 'Sub' $P4900 = "266_1304284961.094" 
    $P4898."add_method"($P4899, "set_slot_past", $P4900)
    nqp_get_sc_object $P4901, "1304284952.167", 191
    get_how $P4902, $P4901
    nqp_get_sc_object $P4903, "1304284952.167", 191
    .const 'Sub' $P4904 = "267_1304284961.094" 
    $P4902."add_method"($P4903, "set_cur_sc", $P4904)
    nqp_get_sc_object $P4905, "1304284952.167", 191
    get_how $P4906, $P4905
    nqp_get_sc_object $P4907, "1304284952.167", 191
    .const 'Sub' $P4908 = "268_1304284961.094" 
    $P4906."add_method"($P4907, "add_object", $P4908)
    nqp_get_sc_object $P4909, "1304284952.167", 191
    get_how $P4910, $P4909
    nqp_get_sc_object $P4911, "1304284952.167", 191
    .const 'Sub' $P4912 = "269_1304284961.094" 
    $P4910."add_method"($P4911, "add_code", $P4912)
    nqp_get_sc_object $P4913, "1304284952.167", 191
    get_how $P4914, $P4913
    nqp_get_sc_object $P4915, "1304284952.167", 191
    .const 'Sub' $P4916 = "270_1304284961.094" 
    $P4914."add_method"($P4915, "add_event", $P4916)
    nqp_get_sc_object $P4917, "1304284952.167", 191
    get_how $P4918, $P4917
    nqp_get_sc_object $P4919, "1304284952.167", 191
    .const 'Sub' $P4920 = "271_1304284961.094" 
    $P4918."add_method"($P4919, "get_object_sc_ref_past", $P4920)
    nqp_get_sc_object $P4921, "1304284952.167", 191
    get_how $P4922, $P4921
    nqp_get_sc_object $P4923, "1304284952.167", 191
    .const 'Sub' $P4924 = "272_1304284961.094" 
    $P4922."add_method"($P4923, "load_setting", $P4924)
    nqp_get_sc_object $P4925, "1304284952.167", 191
    get_how $P4926, $P4925
    nqp_get_sc_object $P4927, "1304284952.167", 191
    .const 'Sub' $P4928 = "274_1304284961.094" 
    $P4926."add_method"($P4927, "load_module", $P4928)
    nqp_get_sc_object $P4929, "1304284952.167", 191
    get_how $P4930, $P4929
    nqp_get_sc_object $P4931, "1304284952.167", 191
    .const 'Sub' $P4932 = "275_1304284961.094" 
    $P4930."add_method"($P4931, "install_package_symbol", $P4932)
    nqp_get_sc_object $P4933, "1304284952.167", 191
    get_how $P4934, $P4933
    nqp_get_sc_object $P4935, "1304284952.167", 191
    .const 'Sub' $P4936 = "278_1304284961.094" 
    $P4934."add_method"($P4935, "install_lexical_symbol", $P4936)
    nqp_get_sc_object $P4937, "1304284952.167", 191
    get_how $P4938, $P4937
    nqp_get_sc_object $P4939, "1304284952.167", 191
    .const 'Sub' $P4940 = "279_1304284961.094" 
    $P4938."add_method"($P4939, "install_package_routine", $P4940)
    nqp_get_sc_object $P4941, "1304284952.167", 191
    get_how $P4942, $P4941
    nqp_get_sc_object $P4943, "1304284952.167", 191
    .const 'Sub' $P4944 = "280_1304284961.094" 
    $P4942."add_method"($P4943, "pkg_create_mo", $P4944)
    nqp_get_sc_object $P4945, "1304284952.167", 191
    get_how $P4946, $P4945
    nqp_get_sc_object $P4947, "1304284952.167", 191
    .const 'Sub' $P4948 = "281_1304284961.094" 
    $P4946."add_method"($P4947, "pkg_add_attribute", $P4948)
    nqp_get_sc_object $P4949, "1304284952.167", 191
    get_how $P4950, $P4949
    nqp_get_sc_object $P4951, "1304284952.167", 191
    .const 'Sub' $P4952 = "285_1304284961.094" 
    $P4950."add_method"($P4951, "pkg_add_method", $P4952)
    nqp_get_sc_object $P4953, "1304284952.167", 191
    get_how $P4954, $P4953
    nqp_get_sc_object $P4955, "1304284952.167", 191
    .const 'Sub' $P4956 = "286_1304284961.094" 
    $P4954."add_method"($P4955, "set_routine_signature", $P4956)
    nqp_get_sc_object $P4957, "1304284952.167", 191
    get_how $P4958, $P4957
    nqp_get_sc_object $P4959, "1304284952.167", 191
    .const 'Sub' $P4960 = "287_1304284961.094" 
    $P4958."add_method"($P4959, "pkg_set_body_block", $P4960)
    nqp_get_sc_object $P4961, "1304284952.167", 191
    get_how $P4962, $P4961
    nqp_get_sc_object $P4963, "1304284952.167", 191
    .const 'Sub' $P4964 = "288_1304284961.094" 
    $P4962."add_method"($P4963, "pkg_add_parent_or_role", $P4964)
    nqp_get_sc_object $P4965, "1304284952.167", 191
    get_how $P4966, $P4965
    nqp_get_sc_object $P4967, "1304284952.167", 191
    .const 'Sub' $P4968 = "289_1304284961.094" 
    $P4966."add_method"($P4967, "pkg_compose", $P4968)
    nqp_get_sc_object $P4969, "1304284952.167", 191
    get_how $P4970, $P4969
    nqp_get_sc_object $P4971, "1304284952.167", 191
    .const 'Sub' $P4972 = "290_1304284961.094" 
    $P4970."add_method"($P4971, "sc", $P4972)
    nqp_get_sc_object $P4973, "1304284952.167", 191
    get_how $P4974, $P4973
    nqp_get_sc_object $P4975, "1304284952.167", 191
    .const 'Sub' $P4976 = "291_1304284961.094" 
    $P4974."add_method"($P4975, "to_past", $P4976)
    .const 'Sub' $P4977 = "257_1304284961.094" 
    $P4978 = $P4977."get_lexinfo"()
    nqp_get_sc_object $P4979, "1304284952.167", 191
    $P4978."set_static_lexpad_value"("$?PACKAGE", $P4979)
    .const 'Sub' $P4980 = "257_1304284961.094" 
    $P4981 = $P4980."get_lexinfo"()
    $P4981."finish_static_lexpad"()
    .const 'Sub' $P4982 = "257_1304284961.094" 
    $P4983 = $P4982."get_lexinfo"()
    nqp_get_sc_object $P4984, "1304284952.167", 191
    $P4983."set_static_lexpad_value"("$?CLASS", $P4984)
    .const 'Sub' $P4985 = "257_1304284961.094" 
    $P4986 = $P4985."get_lexinfo"()
    $P4986."finish_static_lexpad"()
    nqp_get_sc_object $P4987, "1304284952.167", 191
    get_how $P4988, $P4987
    nqp_get_sc_object $P4989, "1304284952.167", 191
    nqp_get_sc_object $P4990, "1304284950.437", 5
    $P4988."set_default_parent"($P4989, $P4990)
    nqp_get_sc_object $P4991, "1304284952.167", 191
    get_how $P4992, $P4991
    nqp_get_sc_object $P4993, "1304284952.167", 191
    $P4992."compose"($P4993)
  if_3833_end:
    nqp_get_sc_object $P5513, "1304284952.167", 0
    set_hll_global "GLOBAL", $P5513
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1304284961.094") :outer("10_1304284961.094")
.annotate 'line', 9
    .const 'Sub' $P452 = "118_1304284961.094" 
    capture_lex $P452
    .const 'Sub' $P447 = "117_1304284961.094" 
    capture_lex $P447
    .const 'Sub' $P432 = "116_1304284961.094" 
    capture_lex $P432
    .const 'Sub' $P422 = "115_1304284961.094" 
    capture_lex $P422
    .const 'Sub' $P418 = "114_1304284961.094" 
    capture_lex $P418
    .const 'Sub' $P414 = "113_1304284961.094" 
    capture_lex $P414
    .const 'Sub' $P411 = "112_1304284961.094" 
    capture_lex $P411
    .const 'Sub' $P409 = "111_1304284961.094" 
    capture_lex $P409
    .const 'Sub' $P407 = "110_1304284961.094" 
    capture_lex $P407
    .const 'Sub' $P399 = "109_1304284961.094" 
    capture_lex $P399
    .const 'Sub' $P396 = "108_1304284961.094" 
    capture_lex $P396
    .const 'Sub' $P392 = "107_1304284961.094" 
    capture_lex $P392
    .const 'Sub' $P358 = "106_1304284961.094" 
    capture_lex $P358
    .const 'Sub' $P353 = "105_1304284961.094" 
    capture_lex $P353
    .const 'Sub' $P349 = "104_1304284961.094" 
    capture_lex $P349
    .const 'Sub' $P344 = "103_1304284961.094" 
    capture_lex $P344
    .const 'Sub' $P342 = "102_1304284961.094" 
    capture_lex $P342
    .const 'Sub' $P338 = "101_1304284961.094" 
    capture_lex $P338
    .const 'Sub' $P335 = "100_1304284961.094" 
    capture_lex $P335
    .const 'Sub' $P325 = "98_1304284961.094" 
    capture_lex $P325
    .const 'Sub' $P323 = "97_1304284961.094" 
    capture_lex $P323
    .const 'Sub' $P293 = "93_1304284961.094" 
    capture_lex $P293
    .const 'Sub' $P291 = "92_1304284961.094" 
    capture_lex $P291
    .const 'Sub' $P287 = "91_1304284961.094" 
    capture_lex $P287
    .const 'Sub' $P285 = "90_1304284961.094" 
    capture_lex $P285
    .const 'Sub' $P282 = "89_1304284961.094" 
    capture_lex $P282
    .const 'Sub' $P280 = "88_1304284961.094" 
    capture_lex $P280
    .const 'Sub' $P276 = "87_1304284961.094" 
    capture_lex $P276
    .const 'Sub' $P274 = "86_1304284961.094" 
    capture_lex $P274
    .const 'Sub' $P270 = "85_1304284961.094" 
    capture_lex $P270
    .const 'Sub' $P268 = "84_1304284961.094" 
    capture_lex $P268
    .const 'Sub' $P265 = "83_1304284961.094" 
    capture_lex $P265
    .const 'Sub' $P263 = "82_1304284961.094" 
    capture_lex $P263
    .const 'Sub' $P260 = "81_1304284961.094" 
    capture_lex $P260
    .const 'Sub' $P258 = "80_1304284961.094" 
    capture_lex $P258
    .const 'Sub' $P255 = "79_1304284961.094" 
    capture_lex $P255
    .const 'Sub' $P253 = "78_1304284961.094" 
    capture_lex $P253
    .const 'Sub' $P250 = "77_1304284961.094" 
    capture_lex $P250
    .const 'Sub' $P248 = "76_1304284961.094" 
    capture_lex $P248
    .const 'Sub' $P245 = "75_1304284961.094" 
    capture_lex $P245
    .const 'Sub' $P243 = "74_1304284961.094" 
    capture_lex $P243
    .const 'Sub' $P240 = "73_1304284961.094" 
    capture_lex $P240
    .const 'Sub' $P238 = "72_1304284961.094" 
    capture_lex $P238
    .const 'Sub' $P235 = "71_1304284961.094" 
    capture_lex $P235
    .const 'Sub' $P233 = "70_1304284961.094" 
    capture_lex $P233
    .const 'Sub' $P230 = "69_1304284961.094" 
    capture_lex $P230
    .const 'Sub' $P222 = "66_1304284961.094" 
    capture_lex $P222
    .const 'Sub' $P218 = "65_1304284961.094" 
    capture_lex $P218
    .const 'Sub' $P216 = "64_1304284961.094" 
    capture_lex $P216
    .const 'Sub' $P205 = "63_1304284961.094" 
    capture_lex $P205
    .const 'Sub' $P198 = "62_1304284961.094" 
    capture_lex $P198
    .const 'Sub' $P193 = "61_1304284961.094" 
    capture_lex $P193
    .const 'Sub' $P191 = "60_1304284961.094" 
    capture_lex $P191
    .const 'Sub' $P187 = "59_1304284961.094" 
    capture_lex $P187
    .const 'Sub' $P185 = "58_1304284961.094" 
    capture_lex $P185
    .const 'Sub' $P180 = "57_1304284961.094" 
    capture_lex $P180
    .const 'Sub' $P178 = "56_1304284961.094" 
    capture_lex $P178
    .const 'Sub' $P174 = "55_1304284961.094" 
    capture_lex $P174
    .const 'Sub' $P172 = "54_1304284961.094" 
    capture_lex $P172
    .const 'Sub' $P167 = "53_1304284961.094" 
    capture_lex $P167
    .const 'Sub' $P165 = "52_1304284961.094" 
    capture_lex $P165
    .const 'Sub' $P161 = "51_1304284961.094" 
    capture_lex $P161
    .const 'Sub' $P159 = "50_1304284961.094" 
    capture_lex $P159
    .const 'Sub' $P154 = "49_1304284961.094" 
    capture_lex $P154
    .const 'Sub' $P152 = "48_1304284961.094" 
    capture_lex $P152
    .const 'Sub' $P148 = "47_1304284961.094" 
    capture_lex $P148
    .const 'Sub' $P146 = "46_1304284961.094" 
    capture_lex $P146
    .const 'Sub' $P142 = "45_1304284961.094" 
    capture_lex $P142
    .const 'Sub' $P140 = "44_1304284961.094" 
    capture_lex $P140
    .const 'Sub' $P133 = "43_1304284961.094" 
    capture_lex $P133
    .const 'Sub' $P130 = "42_1304284961.094" 
    capture_lex $P130
    .const 'Sub' $P125 = "41_1304284961.094" 
    capture_lex $P125
    .const 'Sub' $P117 = "40_1304284961.094" 
    capture_lex $P117
    .const 'Sub' $P114 = "39_1304284961.094" 
    capture_lex $P114
    .const 'Sub' $P111 = "38_1304284961.094" 
    capture_lex $P111
    .const 'Sub' $P109 = "37_1304284961.094" 
    capture_lex $P109
    .const 'Sub' $P106 = "36_1304284961.094" 
    capture_lex $P106
    .const 'Sub' $P102 = "35_1304284961.094" 
    capture_lex $P102
    .const 'Sub' $P98 = "34_1304284961.094" 
    capture_lex $P98
    .const 'Sub' $P95 = "33_1304284961.094" 
    capture_lex $P95
    .const 'Sub' $P92 = "32_1304284961.094" 
    capture_lex $P92
    .const 'Sub' $P89 = "31_1304284961.094" 
    capture_lex $P89
    .const 'Sub' $P86 = "30_1304284961.094" 
    capture_lex $P86
    .const 'Sub' $P83 = "29_1304284961.094" 
    capture_lex $P83
    .const 'Sub' $P80 = "28_1304284961.094" 
    capture_lex $P80
    .const 'Sub' $P42 = "15_1304284961.094" 
    capture_lex $P42
    .const 'Sub' $P35 = "14_1304284961.094" 
    capture_lex $P35
    .const 'Sub' $P33 = "13_1304284961.094" 
    capture_lex $P33
    .const 'Sub' $P28 = "12_1304284961.094" 
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
    unless_null $P25, vivify_295
    new $P25, "Undef"
  vivify_295:
    get_who $P26, $P25
    set $P27, $P26["Cursor"]
    unless_null $P27, vivify_296
    new $P27, "Undef"
  vivify_296:
    store_lex "$cursor_class", $P27
.annotate 'line', 851
    .const 'Sub' $P452 = "118_1304284961.094" 
    newclosure $P475, $P452
.annotate 'line', 9
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1304284961.094") :method :outer("11_1304284961.094")
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
    if_null rx29_debug, debug_297
    rx29_cur."!cursor_debug"("START", "ws")
  debug_297:
    $I10 = self.'from'()
    ne $I10, -1, rxscan30_done
    goto rxscan30_scan
  rxscan30_loop:
    (rx29_pos) = rx29_cur."from"()
    inc rx29_pos
    rx29_cur."!cursor_from"(rx29_pos)
    ge rx29_pos, rx29_eos, rxscan30_done
  rxscan30_scan:
    set_addr $I10, rxscan30_loop
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxscan30_done:
.annotate 'line', 14
  # rx subrule "ww" subtype=zerowidth negate=1
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ww"()
    if $P10, rx29_fail
  # rx rxquantr31 ** 0..*
    set_addr $I10, rxquantr31_done
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxquantr31_loop:
  alt32_0:
    set_addr $I10, alt32_1
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx29_pos, rx29_off
    find_not_cclass $I11, 32, rx29_tgt, $I10, rx29_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx29_fail
    add rx29_pos, rx29_off, $I11
    goto alt32_end
  alt32_1:
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
  alt32_end:
    set_addr $I10, rxquantr31_done
    (rx29_rep) = rx29_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr31_done
    rx29_cur."!mark_push"(rx29_rep, rx29_pos, $I10)
    goto rxquantr31_loop
  rxquantr31_done:
  # rx pass
    rx29_cur."!cursor_pass"(rx29_pos, "ws")
    if_null rx29_debug, debug_298
    rx29_cur."!cursor_debug"("PASS", "ws", " at pos=", rx29_pos)
  debug_298:
    .return (rx29_cur)
  rx29_restart:
.annotate 'line', 12
    if_null rx29_debug, debug_299
    rx29_cur."!cursor_debug"("NEXT", "ws")
  debug_299:
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    if_null rx29_debug, debug_300
    rx29_cur."!cursor_debug"("FAIL", "ws")
  debug_300:
    .return (rx29_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    new $P34, "ResizablePMCArray"
    push $P34, ""
    .return ($P34)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    .local string rx36_tgt
    .local int rx36_pos
    .local int rx36_off
    .local int rx36_eos
    .local int rx36_rep
    .local pmc rx36_cur
    .local pmc rx36_debug
    (rx36_cur, rx36_pos, rx36_tgt, $I10) = self."!cursor_start"()
    rx36_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx36_cur
    .local pmc match
    .lex "$/", match
    length rx36_eos, rx36_tgt
    gt rx36_pos, rx36_eos, rx36_done
    set rx36_off, 0
    lt rx36_pos, 2, rx36_start
    sub rx36_off, rx36_pos, 1
    substr rx36_tgt, rx36_tgt, rx36_off
  rx36_start:
    eq $I10, 1, rx36_restart
    if_null rx36_debug, debug_301
    rx36_cur."!cursor_debug"("START", "termish")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan37_done
    goto rxscan37_scan
  rxscan37_loop:
    (rx36_pos) = rx36_cur."from"()
    inc rx36_pos
    rx36_cur."!cursor_from"(rx36_pos)
    ge rx36_pos, rx36_eos, rxscan37_done
  rxscan37_scan:
    set_addr $I10, rxscan37_loop
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxscan37_done:
.annotate 'line', 17
  # rx rxquantr38 ** 0..*
    set_addr $I10, rxquantr38_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr38_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."prefixish"()
    unless $P10, rx36_fail
    goto rxsubrule39_pass
  rxsubrule39_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule39_pass:
    set_addr $I10, rxsubrule39_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr38_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr38_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr38_loop
  rxquantr38_done:
.annotate 'line', 18
  # rx subrule "term" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."term"()
    unless $P10, rx36_fail
    rx36_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx36_pos = $P10."pos"()
.annotate 'line', 19
  # rx rxquantr40 ** 0..*
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr40_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."postfixish"()
    unless $P10, rx36_fail
    goto rxsubrule41_pass
  rxsubrule41_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule41_pass:
    set_addr $I10, rxsubrule41_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr40_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr40_loop
  rxquantr40_done:
.annotate 'line', 16
  # rx pass
    rx36_cur."!cursor_pass"(rx36_pos, "termish")
    if_null rx36_debug, debug_302
    rx36_cur."!cursor_debug"("PASS", "termish", " at pos=", rx36_pos)
  debug_302:
    .return (rx36_cur)
  rx36_restart:
.annotate 'line', 12
    if_null rx36_debug, debug_303
    rx36_cur."!cursor_debug"("NEXT", "termish")
  debug_303:
  rx36_fail:
    (rx36_rep, rx36_pos, $I10, $P10) = rx36_cur."!mark_fail"(0)
    lt rx36_pos, -1, rx36_done
    eq rx36_pos, -1, rx36_fail
    jump $I10
  rx36_done:
    rx36_cur."!cursor_fail"()
    if_null rx36_debug, debug_304
    rx36_cur."!cursor_debug"("FAIL", "termish")
  debug_304:
    .return (rx36_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    new $P43, "ResizablePMCArray"
    push $P43, ""
    .return ($P43)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1304284961.094")
    .param pmc param_45
.annotate 'line', 22
    .lex "self", param_45
    $P46 = param_45."!protoregex"("term")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1304284961.094")
    .param pmc param_48
.annotate 'line', 22
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("term")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1304284961.094")
    .param pmc param_51
.annotate 'line', 23
    .lex "self", param_51
    $P52 = param_51."!protoregex"("infix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1304284961.094")
    .param pmc param_54
.annotate 'line', 23
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("infix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1304284961.094")
    .param pmc param_57
.annotate 'line', 24
    .lex "self", param_57
    $P58 = param_57."!protoregex"("prefix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1304284961.094")
    .param pmc param_60
.annotate 'line', 24
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("prefix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1304284961.094")
    .param pmc param_63
.annotate 'line', 25
    .lex "self", param_63
    $P64 = param_63."!protoregex"("postfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1304284961.094")
    .param pmc param_66
.annotate 'line', 25
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("postfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1304284961.094")
    .param pmc param_69
.annotate 'line', 26
    .lex "self", param_69
    $P70 = param_69."!protoregex"("circumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1304284961.094")
    .param pmc param_72
.annotate 'line', 26
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("circumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1304284961.094")
    .param pmc param_75
.annotate 'line', 27
    .lex "self", param_75
    $P76 = param_75."!protoregex"("postcircumfix")
    .return ($P76)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1304284961.094")
    .param pmc param_78
.annotate 'line', 27
    .lex "self", param_78
    $P79 = param_78."!PREFIX__!protoregex"("postcircumfix")
    .return ($P79)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    .local pmc rx81_debug
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx81_cur
    .local pmc match
    .lex "$/", match
    length rx81_eos, rx81_tgt
    gt rx81_pos, rx81_eos, rx81_done
    set rx81_off, 0
    lt rx81_pos, 2, rx81_start
    sub rx81_off, rx81_pos, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
    eq $I10, 1, rx81_restart
    if_null rx81_debug, debug_305
    rx81_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_305:
    $I10 = self.'from'()
    ne $I10, -1, rxscan82_done
    goto rxscan82_scan
  rxscan82_loop:
    (rx81_pos) = rx81_cur."from"()
    inc rx81_pos
    rx81_cur."!cursor_from"(rx81_pos)
    ge rx81_pos, rx81_eos, rxscan82_done
  rxscan82_scan:
    set_addr $I10, rxscan82_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan82_done:
.annotate 'line', 29
  # rx subrule "circumfix" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."circumfix"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx81_pos = $P10."pos"()
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "term:sym<circumfix>")
    if_null rx81_debug, debug_306
    rx81_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx81_pos)
  debug_306:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 12
    if_null rx81_debug, debug_307
    rx81_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_307:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_308
    rx81_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_308:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    $P84 = self."!PREFIX__!subrule"("circumfix", "")
    new $P85, "ResizablePMCArray"
    push $P85, $P84
    .return ($P85)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_debug
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    gt rx87_pos, rx87_eos, rx87_done
    set rx87_off, 0
    lt rx87_pos, 2, rx87_start
    sub rx87_off, rx87_pos, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    eq $I10, 1, rx87_restart
    if_null rx87_debug, debug_309
    rx87_cur."!cursor_debug"("START", "infixish")
  debug_309:
    $I10 = self.'from'()
    ne $I10, -1, rxscan88_done
    goto rxscan88_scan
  rxscan88_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan88_done
  rxscan88_scan:
    set_addr $I10, rxscan88_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan88_done:
.annotate 'line', 31
  # rx subrule "infix" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."infix"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx87_pos = $P10."pos"()
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "infixish")
    if_null rx87_debug, debug_310
    rx87_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx87_pos)
  debug_310:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 12
    if_null rx87_debug, debug_311
    rx87_cur."!cursor_debug"("NEXT", "infixish")
  debug_311:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_312
    rx87_cur."!cursor_debug"("FAIL", "infixish")
  debug_312:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    $P90 = self."!PREFIX__!subrule"("infix", "")
    new $P91, "ResizablePMCArray"
    push $P91, $P90
    .return ($P91)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    .local pmc rx93_debug
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx93_cur
    .local pmc match
    .lex "$/", match
    length rx93_eos, rx93_tgt
    gt rx93_pos, rx93_eos, rx93_done
    set rx93_off, 0
    lt rx93_pos, 2, rx93_start
    sub rx93_off, rx93_pos, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
    eq $I10, 1, rx93_restart
    if_null rx93_debug, debug_313
    rx93_cur."!cursor_debug"("START", "prefixish")
  debug_313:
    $I10 = self.'from'()
    ne $I10, -1, rxscan94_done
    goto rxscan94_scan
  rxscan94_loop:
    (rx93_pos) = rx93_cur."from"()
    inc rx93_pos
    rx93_cur."!cursor_from"(rx93_pos)
    ge rx93_pos, rx93_eos, rxscan94_done
  rxscan94_scan:
    set_addr $I10, rxscan94_loop
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxscan94_done:
.annotate 'line', 32
  # rx subrule "prefix" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."prefix"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx93_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."ws"()
    unless $P10, rx93_fail
    rx93_pos = $P10."pos"()
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "prefixish")
    if_null rx93_debug, debug_314
    rx93_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx93_pos)
  debug_314:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 12
    if_null rx93_debug, debug_315
    rx93_cur."!cursor_debug"("NEXT", "prefixish")
  debug_315:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_316
    rx93_cur."!cursor_debug"("FAIL", "prefixish")
  debug_316:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    $P96 = self."!PREFIX__!subrule"("prefix", "")
    new $P97, "ResizablePMCArray"
    push $P97, $P96
    .return ($P97)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    .local pmc rx99_debug
    (rx99_cur, rx99_pos, rx99_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx99_cur
    .local pmc match
    .lex "$/", match
    length rx99_eos, rx99_tgt
    gt rx99_pos, rx99_eos, rx99_done
    set rx99_off, 0
    lt rx99_pos, 2, rx99_start
    sub rx99_off, rx99_pos, 1
    substr rx99_tgt, rx99_tgt, rx99_off
  rx99_start:
    eq $I10, 1, rx99_restart
    if_null rx99_debug, debug_317
    rx99_cur."!cursor_debug"("START", "postfixish")
  debug_317:
    $I10 = self.'from'()
    ne $I10, -1, rxscan100_done
    goto rxscan100_scan
  rxscan100_loop:
    (rx99_pos) = rx99_cur."from"()
    inc rx99_pos
    rx99_cur."!cursor_from"(rx99_pos)
    ge rx99_pos, rx99_eos, rxscan100_done
  rxscan100_scan:
    set_addr $I10, rxscan100_loop
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxscan100_done:
  alt101_0:
.annotate 'line', 33
    set_addr $I10, alt101_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
.annotate 'line', 34
  # rx subrule "postfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx99_pos = $P10."pos"()
    goto alt101_end
  alt101_1:
.annotate 'line', 35
  # rx subrule "postcircumfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postcircumfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx99_pos = $P10."pos"()
  alt101_end:
.annotate 'line', 33
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "postfixish")
    if_null rx99_debug, debug_318
    rx99_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx99_pos)
  debug_318:
    .return (rx99_cur)
  rx99_restart:
.annotate 'line', 12
    if_null rx99_debug, debug_319
    rx99_cur."!cursor_debug"("NEXT", "postfixish")
  debug_319:
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    if_null rx99_debug, debug_320
    rx99_cur."!cursor_debug"("FAIL", "postfixish")
  debug_320:
    .return (rx99_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    $P103 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P104 = self."!PREFIX__!subrule"("postfix", "")
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_debug
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx107_cur
    .local pmc match
    .lex "$/", match
    length rx107_eos, rx107_tgt
    gt rx107_pos, rx107_eos, rx107_done
    set rx107_off, 0
    lt rx107_pos, 2, rx107_start
    sub rx107_off, rx107_pos, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
    eq $I10, 1, rx107_restart
    if_null rx107_debug, debug_321
    rx107_cur."!cursor_debug"("START", "nullterm")
  debug_321:
    $I10 = self.'from'()
    ne $I10, -1, rxscan108_done
    goto rxscan108_scan
  rxscan108_loop:
    (rx107_pos) = rx107_cur."from"()
    inc rx107_pos
    rx107_cur."!cursor_from"(rx107_pos)
    ge rx107_pos, rx107_eos, rxscan108_done
  rxscan108_scan:
    set_addr $I10, rxscan108_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan108_done:
.annotate 'line', 38
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "nullterm")
    if_null rx107_debug, debug_322
    rx107_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx107_pos)
  debug_322:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 12
    if_null rx107_debug, debug_323
    rx107_cur."!cursor_debug"("NEXT", "nullterm")
  debug_323:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_324
    rx107_cur."!cursor_debug"("FAIL", "nullterm")
  debug_324:
    .return (rx107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    new $P110, "ResizablePMCArray"
    push $P110, ""
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1304284961.094") :method :outer("11_1304284961.094")
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
    if_null rx112_debug, debug_325
    rx112_cur."!cursor_debug"("START", "nullterm_alt")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan113_done
    goto rxscan113_scan
  rxscan113_loop:
    (rx112_pos) = rx112_cur."from"()
    inc rx112_pos
    rx112_cur."!cursor_from"(rx112_pos)
    ge rx112_pos, rx112_eos, rxscan113_done
  rxscan113_scan:
    set_addr $I10, rxscan113_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan113_done:
.annotate 'line', 39
  # rx subrule "nullterm" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."nullterm"()
    unless $P10, rx112_fail
    rx112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx112_pos = $P10."pos"()
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "nullterm_alt")
    if_null rx112_debug, debug_326
    rx112_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx112_pos)
  debug_326:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 12
    if_null rx112_debug, debug_327
    rx112_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_327:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_328
    rx112_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_328:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 12
    $P115 = self."!PREFIX__!subrule"("nullterm", "")
    new $P116, "ResizablePMCArray"
    push $P116, $P115
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_118
.annotate 'line', 42
    .lex "self", param_118
    find_lex $P121, "self"
    $P122 = $P121."termish"()
    unless $P122, unless_120
    set $P119, $P122
    goto unless_120_end
  unless_120:
    find_lex $P123, "self"
    $P124 = $P123."nullterm_alt"()
    set $P119, $P124
  unless_120_end:
    .return ($P119)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_debug
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    gt rx126_pos, rx126_eos, rx126_done
    set rx126_off, 0
    lt rx126_pos, 2, rx126_start
    sub rx126_off, rx126_pos, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
    eq $I10, 1, rx126_restart
    if_null rx126_debug, debug_329
    rx126_cur."!cursor_debug"("START", "quote_delimited")
  debug_329:
    $I10 = self.'from'()
    ne $I10, -1, rxscan127_done
    goto rxscan127_scan
  rxscan127_loop:
    (rx126_pos) = rx126_cur."from"()
    inc rx126_pos
    rx126_cur."!cursor_from"(rx126_pos)
    ge rx126_pos, rx126_eos, rxscan127_done
  rxscan127_scan:
    set_addr $I10, rxscan127_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan127_done:
.annotate 'line', 46
  # rx subrule "starter" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."starter"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx126_pos = $P10."pos"()
  # rx rxquantr128 ** 0..*
    set_addr $I10, rxquantr128_done
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxquantr128_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."quote_atom"()
    unless $P10, rx126_fail
    goto rxsubrule129_pass
  rxsubrule129_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx126_fail
  rxsubrule129_pass:
    set_addr $I10, rxsubrule129_back
    rx126_cur."!mark_push"(0, rx126_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx126_pos = $P10."pos"()
    set_addr $I10, rxquantr128_done
    (rx126_rep) = rx126_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr128_done
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I10)
    goto rxquantr128_loop
  rxquantr128_done:
  # rx subrule "stopper" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."stopper"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx126_pos = $P10."pos"()
.annotate 'line', 45
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "quote_delimited")
    if_null rx126_debug, debug_330
    rx126_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx126_pos)
  debug_330:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 42
    if_null rx126_debug, debug_331
    rx126_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_331:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_332
    rx126_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_332:
    .return (rx126_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    $P131 = self."!PREFIX__!subrule"("starter", "")
    new $P132, "ResizablePMCArray"
    push $P132, $P131
    .return ($P132)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_debug
    (rx134_cur, rx134_pos, rx134_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx134_cur
    .local pmc match
    .lex "$/", match
    length rx134_eos, rx134_tgt
    gt rx134_pos, rx134_eos, rx134_done
    set rx134_off, 0
    lt rx134_pos, 2, rx134_start
    sub rx134_off, rx134_pos, 1
    substr rx134_tgt, rx134_tgt, rx134_off
  rx134_start:
    eq $I10, 1, rx134_restart
    if_null rx134_debug, debug_333
    rx134_cur."!cursor_debug"("START", "quote_atom")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    (rx134_pos) = rx134_cur."from"()
    inc rx134_pos
    rx134_cur."!cursor_from"(rx134_pos)
    ge rx134_pos, rx134_eos, rxscan135_done
  rxscan135_scan:
    set_addr $I10, rxscan135_loop
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  rxscan135_done:
.annotate 'line', 50
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."stopper"()
    if $P10, rx134_fail
  alt136_0:
.annotate 'line', 51
    set_addr $I10, alt136_1
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
.annotate 'line', 52
  # rx subrule "quote_escape" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."quote_escape"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx134_pos = $P10."pos"()
    goto alt136_end
  alt136_1:
.annotate 'line', 53
  # rx rxquantr137 ** 1..*
    set_addr $I10, rxquantr137_done
    rx134_cur."!mark_push"(0, -1, $I10)
  rxquantr137_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."stopper"()
    if $P10, rx134_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."quote_escape"()
    if $P10, rx134_fail
  # rx charclass .
    ge rx134_pos, rx134_eos, rx134_fail
    inc rx134_pos
    set_addr $I10, rxquantr137_done
    (rx134_rep) = rx134_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr137_done
    rx134_cur."!mark_push"(rx134_rep, rx134_pos, $I10)
    goto rxquantr137_loop
  rxquantr137_done:
  alt136_end:
.annotate 'line', 49
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "quote_atom")
    if_null rx134_debug, debug_334
    rx134_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx134_pos)
  debug_334:
    .return (rx134_cur)
  rx134_restart:
.annotate 'line', 42
    if_null rx134_debug, debug_335
    rx134_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_335:
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    if_null rx134_debug, debug_336
    rx134_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_336:
    .return (rx134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P141, "ResizablePMCArray"
    push $P141, ""
    .return ($P141)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx143_cur
    .local pmc match
    .lex "$/", match
    length rx143_eos, rx143_tgt
    gt rx143_pos, rx143_eos, rx143_done
    set rx143_off, 0
    lt rx143_pos, 2, rx143_start
    sub rx143_off, rx143_pos, 1
    substr rx143_tgt, rx143_tgt, rx143_off
  rx143_start:
    eq $I10, 1, rx143_restart
    if_null rx143_debug, debug_337
    rx143_cur."!cursor_debug"("START", "decint")
  debug_337:
    $I10 = self.'from'()
    ne $I10, -1, rxscan144_done
    goto rxscan144_scan
  rxscan144_loop:
    (rx143_pos) = rx143_cur."from"()
    inc rx143_pos
    rx143_cur."!cursor_from"(rx143_pos)
    ge rx143_pos, rx143_eos, rxscan144_done
  rxscan144_scan:
    set_addr $I10, rxscan144_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan144_done:
.annotate 'line', 57
  # rx rxquantr145 ** 1..*
    set_addr $I10, rxquantr145_done
    rx143_cur."!mark_push"(0, -1, $I10)
  rxquantr145_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx143_pos, rx143_off
    find_not_cclass $I11, 8, rx143_tgt, $I10, rx143_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx143_fail
    add rx143_pos, rx143_off, $I11
    set_addr $I10, rxquantr145_done
    (rx143_rep) = rx143_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr145_done
    rx143_cur."!mark_push"(rx143_rep, rx143_pos, $I10)
  # rx literal  "_"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 95, rx143_fail
    add rx143_pos, 1
    goto rxquantr145_loop
  rxquantr145_done:
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "decint")
    if_null rx143_debug, debug_338
    rx143_cur."!cursor_debug"("PASS", "decint", " at pos=", rx143_pos)
  debug_338:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 42
    if_null rx143_debug, debug_339
    rx143_cur."!cursor_debug"("NEXT", "decint")
  debug_339:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_340
    rx143_cur."!cursor_debug"("FAIL", "decint")
  debug_340:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P147, "ResizablePMCArray"
    push $P147, ""
    .return ($P147)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_debug
    (rx149_cur, rx149_pos, rx149_tgt, $I10) = self."!cursor_start"()
    rx149_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx149_cur
    .local pmc match
    .lex "$/", match
    length rx149_eos, rx149_tgt
    gt rx149_pos, rx149_eos, rx149_done
    set rx149_off, 0
    lt rx149_pos, 2, rx149_start
    sub rx149_off, rx149_pos, 1
    substr rx149_tgt, rx149_tgt, rx149_off
  rx149_start:
    eq $I10, 1, rx149_restart
    if_null rx149_debug, debug_341
    rx149_cur."!cursor_debug"("START", "decints")
  debug_341:
    $I10 = self.'from'()
    ne $I10, -1, rxscan150_done
    goto rxscan150_scan
  rxscan150_loop:
    (rx149_pos) = rx149_cur."from"()
    inc rx149_pos
    rx149_cur."!cursor_from"(rx149_pos)
    ge rx149_pos, rx149_eos, rxscan150_done
  rxscan150_scan:
    set_addr $I10, rxscan150_loop
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxscan150_done:
.annotate 'line', 58
  # rx rxquantr151 ** 1..*
    set_addr $I10, rxquantr151_done
    rx149_cur."!mark_push"(0, -1, $I10)
  rxquantr151_loop:
  # rx subrule "ws" subtype=method negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."ws"()
    unless $P10, rx149_fail
    rx149_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."decint"()
    unless $P10, rx149_fail
    rx149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx149_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."ws"()
    unless $P10, rx149_fail
    rx149_pos = $P10."pos"()
    set_addr $I10, rxquantr151_done
    (rx149_rep) = rx149_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr151_done
    rx149_cur."!mark_push"(rx149_rep, rx149_pos, $I10)
  # rx literal  ","
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    ord $I11, rx149_tgt, $I11
    ne $I11, 44, rx149_fail
    add rx149_pos, 1
    goto rxquantr151_loop
  rxquantr151_done:
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "decints")
    if_null rx149_debug, debug_342
    rx149_cur."!cursor_debug"("PASS", "decints", " at pos=", rx149_pos)
  debug_342:
    .return (rx149_cur)
  rx149_restart:
.annotate 'line', 42
    if_null rx149_debug, debug_343
    rx149_cur."!cursor_debug"("NEXT", "decints")
  debug_343:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_344
    rx149_cur."!cursor_debug"("FAIL", "decints")
  debug_344:
    .return (rx149_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P153, "ResizablePMCArray"
    push $P153, ""
    .return ($P153)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_debug
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx155_cur
    .local pmc match
    .lex "$/", match
    length rx155_eos, rx155_tgt
    gt rx155_pos, rx155_eos, rx155_done
    set rx155_off, 0
    lt rx155_pos, 2, rx155_start
    sub rx155_off, rx155_pos, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
    eq $I10, 1, rx155_restart
    if_null rx155_debug, debug_345
    rx155_cur."!cursor_debug"("START", "hexint")
  debug_345:
    $I10 = self.'from'()
    ne $I10, -1, rxscan156_done
    goto rxscan156_scan
  rxscan156_loop:
    (rx155_pos) = rx155_cur."from"()
    inc rx155_pos
    rx155_cur."!cursor_from"(rx155_pos)
    ge rx155_pos, rx155_eos, rxscan156_done
  rxscan156_scan:
    set_addr $I10, rxscan156_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan156_done:
.annotate 'line', 60
  # rx rxquantr157 ** 1..*
    set_addr $I10, rxquantr157_done
    rx155_cur."!mark_push"(0, -1, $I10)
  rxquantr157_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx155_pos, rx155_off
    set rx155_rep, 0
    sub $I12, rx155_eos, rx155_pos
  rxenumcharlistq158_loop:
    le $I12, 0, rxenumcharlistq158_done
    substr $S10, rx155_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq158_done
    inc rx155_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq158_loop
  rxenumcharlistq158_done:
    lt rx155_rep, 1, rx155_fail
    add rx155_pos, rx155_pos, rx155_rep
    set_addr $I10, rxquantr157_done
    (rx155_rep) = rx155_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr157_done
    rx155_cur."!mark_push"(rx155_rep, rx155_pos, $I10)
  # rx literal  "_"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 95, rx155_fail
    add rx155_pos, 1
    goto rxquantr157_loop
  rxquantr157_done:
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "hexint")
    if_null rx155_debug, debug_346
    rx155_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx155_pos)
  debug_346:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 42
    if_null rx155_debug, debug_347
    rx155_cur."!cursor_debug"("NEXT", "hexint")
  debug_347:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_348
    rx155_cur."!cursor_debug"("FAIL", "hexint")
  debug_348:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P160, "ResizablePMCArray"
    push $P160, ""
    .return ($P160)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    gt rx162_pos, rx162_eos, rx162_done
    set rx162_off, 0
    lt rx162_pos, 2, rx162_start
    sub rx162_off, rx162_pos, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
    eq $I10, 1, rx162_restart
    if_null rx162_debug, debug_349
    rx162_cur."!cursor_debug"("START", "hexints")
  debug_349:
    $I10 = self.'from'()
    ne $I10, -1, rxscan163_done
    goto rxscan163_scan
  rxscan163_loop:
    (rx162_pos) = rx162_cur."from"()
    inc rx162_pos
    rx162_cur."!cursor_from"(rx162_pos)
    ge rx162_pos, rx162_eos, rxscan163_done
  rxscan163_scan:
    set_addr $I10, rxscan163_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan163_done:
.annotate 'line', 61
  # rx rxquantr164 ** 1..*
    set_addr $I10, rxquantr164_done
    rx162_cur."!mark_push"(0, -1, $I10)
  rxquantr164_loop:
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."hexint"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx162_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
    set_addr $I10, rxquantr164_done
    (rx162_rep) = rx162_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr164_done
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I10)
  # rx literal  ","
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 44, rx162_fail
    add rx162_pos, 1
    goto rxquantr164_loop
  rxquantr164_done:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "hexints")
    if_null rx162_debug, debug_350
    rx162_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx162_pos)
  debug_350:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 42
    if_null rx162_debug, debug_351
    rx162_cur."!cursor_debug"("NEXT", "hexints")
  debug_351:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_352
    rx162_cur."!cursor_debug"("FAIL", "hexints")
  debug_352:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P166, "ResizablePMCArray"
    push $P166, ""
    .return ($P166)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_debug
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx168_cur
    .local pmc match
    .lex "$/", match
    length rx168_eos, rx168_tgt
    gt rx168_pos, rx168_eos, rx168_done
    set rx168_off, 0
    lt rx168_pos, 2, rx168_start
    sub rx168_off, rx168_pos, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
    eq $I10, 1, rx168_restart
    if_null rx168_debug, debug_353
    rx168_cur."!cursor_debug"("START", "octint")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan169_done
    goto rxscan169_scan
  rxscan169_loop:
    (rx168_pos) = rx168_cur."from"()
    inc rx168_pos
    rx168_cur."!cursor_from"(rx168_pos)
    ge rx168_pos, rx168_eos, rxscan169_done
  rxscan169_scan:
    set_addr $I10, rxscan169_loop
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  rxscan169_done:
.annotate 'line', 63
  # rx rxquantr170 ** 1..*
    set_addr $I10, rxquantr170_done
    rx168_cur."!mark_push"(0, -1, $I10)
  rxquantr170_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx168_pos, rx168_off
    set rx168_rep, 0
    sub $I12, rx168_eos, rx168_pos
  rxenumcharlistq171_loop:
    le $I12, 0, rxenumcharlistq171_done
    substr $S10, rx168_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq171_done
    inc rx168_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq171_loop
  rxenumcharlistq171_done:
    lt rx168_rep, 1, rx168_fail
    add rx168_pos, rx168_pos, rx168_rep
    set_addr $I10, rxquantr170_done
    (rx168_rep) = rx168_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr170_done
    rx168_cur."!mark_push"(rx168_rep, rx168_pos, $I10)
  # rx literal  "_"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    ord $I11, rx168_tgt, $I11
    ne $I11, 95, rx168_fail
    add rx168_pos, 1
    goto rxquantr170_loop
  rxquantr170_done:
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "octint")
    if_null rx168_debug, debug_354
    rx168_cur."!cursor_debug"("PASS", "octint", " at pos=", rx168_pos)
  debug_354:
    .return (rx168_cur)
  rx168_restart:
.annotate 'line', 42
    if_null rx168_debug, debug_355
    rx168_cur."!cursor_debug"("NEXT", "octint")
  debug_355:
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    if_null rx168_debug, debug_356
    rx168_cur."!cursor_debug"("FAIL", "octint")
  debug_356:
    .return (rx168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P173, "ResizablePMCArray"
    push $P173, ""
    .return ($P173)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_debug
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    rx175_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx175_cur
    .local pmc match
    .lex "$/", match
    length rx175_eos, rx175_tgt
    gt rx175_pos, rx175_eos, rx175_done
    set rx175_off, 0
    lt rx175_pos, 2, rx175_start
    sub rx175_off, rx175_pos, 1
    substr rx175_tgt, rx175_tgt, rx175_off
  rx175_start:
    eq $I10, 1, rx175_restart
    if_null rx175_debug, debug_357
    rx175_cur."!cursor_debug"("START", "octints")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan176_done
    goto rxscan176_scan
  rxscan176_loop:
    (rx175_pos) = rx175_cur."from"()
    inc rx175_pos
    rx175_cur."!cursor_from"(rx175_pos)
    ge rx175_pos, rx175_eos, rxscan176_done
  rxscan176_scan:
    set_addr $I10, rxscan176_loop
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  rxscan176_done:
.annotate 'line', 64
  # rx rxquantr177 ** 1..*
    set_addr $I10, rxquantr177_done
    rx175_cur."!mark_push"(0, -1, $I10)
  rxquantr177_loop:
  # rx subrule "ws" subtype=method negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."ws"()
    unless $P10, rx175_fail
    rx175_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."octint"()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx175_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."ws"()
    unless $P10, rx175_fail
    rx175_pos = $P10."pos"()
    set_addr $I10, rxquantr177_done
    (rx175_rep) = rx175_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr177_done
    rx175_cur."!mark_push"(rx175_rep, rx175_pos, $I10)
  # rx literal  ","
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 44, rx175_fail
    add rx175_pos, 1
    goto rxquantr177_loop
  rxquantr177_done:
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "octints")
    if_null rx175_debug, debug_358
    rx175_cur."!cursor_debug"("PASS", "octints", " at pos=", rx175_pos)
  debug_358:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 42
    if_null rx175_debug, debug_359
    rx175_cur."!cursor_debug"("NEXT", "octints")
  debug_359:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_360
    rx175_cur."!cursor_debug"("FAIL", "octints")
  debug_360:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P179, "ResizablePMCArray"
    push $P179, ""
    .return ($P179)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx181_tgt
    .local int rx181_pos
    .local int rx181_off
    .local int rx181_eos
    .local int rx181_rep
    .local pmc rx181_cur
    .local pmc rx181_debug
    (rx181_cur, rx181_pos, rx181_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx181_cur
    .local pmc match
    .lex "$/", match
    length rx181_eos, rx181_tgt
    gt rx181_pos, rx181_eos, rx181_done
    set rx181_off, 0
    lt rx181_pos, 2, rx181_start
    sub rx181_off, rx181_pos, 1
    substr rx181_tgt, rx181_tgt, rx181_off
  rx181_start:
    eq $I10, 1, rx181_restart
    if_null rx181_debug, debug_361
    rx181_cur."!cursor_debug"("START", "binint")
  debug_361:
    $I10 = self.'from'()
    ne $I10, -1, rxscan182_done
    goto rxscan182_scan
  rxscan182_loop:
    (rx181_pos) = rx181_cur."from"()
    inc rx181_pos
    rx181_cur."!cursor_from"(rx181_pos)
    ge rx181_pos, rx181_eos, rxscan182_done
  rxscan182_scan:
    set_addr $I10, rxscan182_loop
    rx181_cur."!mark_push"(0, rx181_pos, $I10)
  rxscan182_done:
.annotate 'line', 66
  # rx rxquantr183 ** 1..*
    set_addr $I10, rxquantr183_done
    rx181_cur."!mark_push"(0, -1, $I10)
  rxquantr183_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx181_pos, rx181_off
    set rx181_rep, 0
    sub $I12, rx181_eos, rx181_pos
  rxenumcharlistq184_loop:
    le $I12, 0, rxenumcharlistq184_done
    substr $S10, rx181_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq184_done
    inc rx181_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq184_loop
  rxenumcharlistq184_done:
    lt rx181_rep, 1, rx181_fail
    add rx181_pos, rx181_pos, rx181_rep
    set_addr $I10, rxquantr183_done
    (rx181_rep) = rx181_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr183_done
    rx181_cur."!mark_push"(rx181_rep, rx181_pos, $I10)
  # rx literal  "_"
    add $I11, rx181_pos, 1
    gt $I11, rx181_eos, rx181_fail
    sub $I11, rx181_pos, rx181_off
    ord $I11, rx181_tgt, $I11
    ne $I11, 95, rx181_fail
    add rx181_pos, 1
    goto rxquantr183_loop
  rxquantr183_done:
  # rx pass
    rx181_cur."!cursor_pass"(rx181_pos, "binint")
    if_null rx181_debug, debug_362
    rx181_cur."!cursor_debug"("PASS", "binint", " at pos=", rx181_pos)
  debug_362:
    .return (rx181_cur)
  rx181_restart:
.annotate 'line', 42
    if_null rx181_debug, debug_363
    rx181_cur."!cursor_debug"("NEXT", "binint")
  debug_363:
  rx181_fail:
    (rx181_rep, rx181_pos, $I10, $P10) = rx181_cur."!mark_fail"(0)
    lt rx181_pos, -1, rx181_done
    eq rx181_pos, -1, rx181_fail
    jump $I10
  rx181_done:
    rx181_cur."!cursor_fail"()
    if_null rx181_debug, debug_364
    rx181_cur."!cursor_debug"("FAIL", "binint")
  debug_364:
    .return (rx181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P186, "ResizablePMCArray"
    push $P186, ""
    .return ($P186)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_debug
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    rx188_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx188_cur
    .local pmc match
    .lex "$/", match
    length rx188_eos, rx188_tgt
    gt rx188_pos, rx188_eos, rx188_done
    set rx188_off, 0
    lt rx188_pos, 2, rx188_start
    sub rx188_off, rx188_pos, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
    eq $I10, 1, rx188_restart
    if_null rx188_debug, debug_365
    rx188_cur."!cursor_debug"("START", "binints")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan189_done
    goto rxscan189_scan
  rxscan189_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan189_done
  rxscan189_scan:
    set_addr $I10, rxscan189_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan189_done:
.annotate 'line', 67
  # rx rxquantr190 ** 1..*
    set_addr $I10, rxquantr190_done
    rx188_cur."!mark_push"(0, -1, $I10)
  rxquantr190_loop:
  # rx subrule "ws" subtype=method negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."ws"()
    unless $P10, rx188_fail
    rx188_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."binint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx188_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."ws"()
    unless $P10, rx188_fail
    rx188_pos = $P10."pos"()
    set_addr $I10, rxquantr190_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr190_done
    rx188_cur."!mark_push"(rx188_rep, rx188_pos, $I10)
  # rx literal  ","
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 44, rx188_fail
    add rx188_pos, 1
    goto rxquantr190_loop
  rxquantr190_done:
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "binints")
    if_null rx188_debug, debug_366
    rx188_cur."!cursor_debug"("PASS", "binints", " at pos=", rx188_pos)
  debug_366:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 42
    if_null rx188_debug, debug_367
    rx188_cur."!cursor_debug"("NEXT", "binints")
  debug_367:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_368
    rx188_cur."!cursor_debug"("FAIL", "binints")
  debug_368:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P192, "ResizablePMCArray"
    push $P192, ""
    .return ($P192)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    .local pmc rx194_debug
    (rx194_cur, rx194_pos, rx194_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx194_cur
    .local pmc match
    .lex "$/", match
    length rx194_eos, rx194_tgt
    gt rx194_pos, rx194_eos, rx194_done
    set rx194_off, 0
    lt rx194_pos, 2, rx194_start
    sub rx194_off, rx194_pos, 1
    substr rx194_tgt, rx194_tgt, rx194_off
  rx194_start:
    eq $I10, 1, rx194_restart
    if_null rx194_debug, debug_369
    rx194_cur."!cursor_debug"("START", "integer")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan195_done
    goto rxscan195_scan
  rxscan195_loop:
    (rx194_pos) = rx194_cur."from"()
    inc rx194_pos
    rx194_cur."!cursor_from"(rx194_pos)
    ge rx194_pos, rx194_eos, rxscan195_done
  rxscan195_scan:
    set_addr $I10, rxscan195_loop
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxscan195_done:
  alt196_0:
.annotate 'line', 70
    set_addr $I10, alt196_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 71
  # rx literal  "0"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 48, rx194_fail
    add rx194_pos, 1
  alt197_0:
    set_addr $I10, alt197_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx literal  "b"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 98, rx194_fail
    add rx194_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."binint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx194_pos = $P10."pos"()
    goto alt197_end
  alt197_1:
    set_addr $I10, alt197_2
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 72
  # rx literal  "o"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 111, rx194_fail
    add rx194_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."octint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx194_pos = $P10."pos"()
    goto alt197_end
  alt197_2:
    set_addr $I10, alt197_3
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 73
  # rx literal  "x"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 120, rx194_fail
    add rx194_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."hexint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx194_pos = $P10."pos"()
    goto alt197_end
  alt197_3:
.annotate 'line', 74
  # rx literal  "d"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 100, rx194_fail
    add rx194_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."decint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx194_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 71
    goto alt196_end
  alt196_1:
.annotate 'line', 76
  # rx subrule "decint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."decint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx194_pos = $P10."pos"()
  alt196_end:
.annotate 'line', 69
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "integer")
    if_null rx194_debug, debug_370
    rx194_cur."!cursor_debug"("PASS", "integer", " at pos=", rx194_pos)
  debug_370:
    .return (rx194_cur)
  rx194_restart:
.annotate 'line', 42
    if_null rx194_debug, debug_371
    rx194_cur."!cursor_debug"("NEXT", "integer")
  debug_371:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_372
    rx194_cur."!cursor_debug"("FAIL", "integer")
  debug_372:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    $P199 = self."!PREFIX__!subrule"("decint", "")
    $P200 = self."!PREFIX__!subrule"("decint", "0d")
    $P201 = self."!PREFIX__!subrule"("hexint", "0x")
    $P202 = self."!PREFIX__!subrule"("octint", "0o")
    $P203 = self."!PREFIX__!subrule"("binint", "0b")
    new $P204, "ResizablePMCArray"
    push $P204, $P199
    push $P204, $P200
    push $P204, $P201
    push $P204, $P202
    push $P204, $P203
    .return ($P204)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx206_tgt
    .local int rx206_pos
    .local int rx206_off
    .local int rx206_eos
    .local int rx206_rep
    .local pmc rx206_cur
    .local pmc rx206_debug
    (rx206_cur, rx206_pos, rx206_tgt, $I10) = self."!cursor_start"()
    rx206_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx206_cur
    .local pmc match
    .lex "$/", match
    length rx206_eos, rx206_tgt
    gt rx206_pos, rx206_eos, rx206_done
    set rx206_off, 0
    lt rx206_pos, 2, rx206_start
    sub rx206_off, rx206_pos, 1
    substr rx206_tgt, rx206_tgt, rx206_off
  rx206_start:
    eq $I10, 1, rx206_restart
    if_null rx206_debug, debug_373
    rx206_cur."!cursor_debug"("START", "dec_number")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan207_done
    goto rxscan207_scan
  rxscan207_loop:
    (rx206_pos) = rx206_cur."from"()
    inc rx206_pos
    rx206_cur."!cursor_from"(rx206_pos)
    ge rx206_pos, rx206_eos, rxscan207_done
  rxscan207_scan:
    set_addr $I10, rxscan207_loop
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxscan207_done:
  alt208_0:
.annotate 'line', 80
    set_addr $I10, alt208_1
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_209_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx literal  "."
    add $I11, rx206_pos, 1
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    ord $I11, rx206_tgt, $I11
    ne $I11, 46, rx206_fail
    add rx206_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_209_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_209_done
  rxcap_209_fail:
    goto rx206_fail
  rxcap_209_done:
  # rx rxquantr210 ** 0..1
    set_addr $I10, rxquantr210_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr210_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule211_pass
  rxsubrule211_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule211_pass:
    set_addr $I10, rxsubrule211_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr210_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr210_done:
    goto alt208_end
  alt208_1:
    set_addr $I10, alt208_2
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 82
  # rx subcapture "coeff"
    set_addr $I10, rxcap_212_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
  # rx literal  "."
    add $I11, rx206_pos, 1
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    ord $I11, rx206_tgt, $I11
    ne $I11, 46, rx206_fail
    add rx206_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_212_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_212_done
  rxcap_212_fail:
    goto rx206_fail
  rxcap_212_done:
  # rx rxquantr213 ** 0..1
    set_addr $I10, rxquantr213_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr213_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule214_pass
  rxsubrule214_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule214_pass:
    set_addr $I10, rxsubrule214_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr213_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr213_done:
    goto alt208_end
  alt208_2:
.annotate 'line', 83
  # rx subcapture "coeff"
    set_addr $I10, rxcap_215_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_215_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_215_done
  rxcap_215_fail:
    goto rx206_fail
  rxcap_215_done:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
  alt208_end:
.annotate 'line', 80
  # rx pass
    rx206_cur."!cursor_pass"(rx206_pos, "dec_number")
    if_null rx206_debug, debug_374
    rx206_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx206_pos)
  debug_374:
    .return (rx206_cur)
  rx206_restart:
.annotate 'line', 42
    if_null rx206_debug, debug_375
    rx206_cur."!cursor_debug"("NEXT", "dec_number")
  debug_375:
  rx206_fail:
    (rx206_rep, rx206_pos, $I10, $P10) = rx206_cur."!mark_fail"(0)
    lt rx206_pos, -1, rx206_done
    eq rx206_pos, -1, rx206_fail
    jump $I10
  rx206_done:
    rx206_cur."!cursor_fail"()
    if_null rx206_debug, debug_376
    rx206_cur."!cursor_debug"("FAIL", "dec_number")
  debug_376:
    .return (rx206_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P217, "ResizablePMCArray"
    push $P217, ""
    push $P217, ""
    push $P217, "."
    .return ($P217)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx219_tgt
    .local int rx219_pos
    .local int rx219_off
    .local int rx219_eos
    .local int rx219_rep
    .local pmc rx219_cur
    .local pmc rx219_debug
    (rx219_cur, rx219_pos, rx219_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx219_cur
    .local pmc match
    .lex "$/", match
    length rx219_eos, rx219_tgt
    gt rx219_pos, rx219_eos, rx219_done
    set rx219_off, 0
    lt rx219_pos, 2, rx219_start
    sub rx219_off, rx219_pos, 1
    substr rx219_tgt, rx219_tgt, rx219_off
  rx219_start:
    eq $I10, 1, rx219_restart
    if_null rx219_debug, debug_377
    rx219_cur."!cursor_debug"("START", "escale")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan220_done
    goto rxscan220_scan
  rxscan220_loop:
    (rx219_pos) = rx219_cur."from"()
    inc rx219_pos
    rx219_cur."!cursor_from"(rx219_pos)
    ge rx219_pos, rx219_eos, rxscan220_done
  rxscan220_scan:
    set_addr $I10, rxscan220_loop
    rx219_cur."!mark_push"(0, rx219_pos, $I10)
  rxscan220_done:
.annotate 'line', 86
  # rx enumcharlist negate=0 
    ge rx219_pos, rx219_eos, rx219_fail
    sub $I10, rx219_pos, rx219_off
    substr $S10, rx219_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx219_fail
    inc rx219_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx219_pos, rx219_off
    set rx219_rep, 0
    sub $I12, rx219_eos, rx219_pos
    le $I12, 1, rxenumcharlistq221_loop
    set $I12, 1
  rxenumcharlistq221_loop:
    le $I12, 0, rxenumcharlistq221_done
    substr $S10, rx219_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq221_done
    inc rx219_rep
  rxenumcharlistq221_done:
    add rx219_pos, rx219_pos, rx219_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx219_pos, rx219_off
    find_not_cclass $I11, 8, rx219_tgt, $I10, rx219_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx219_fail
    add rx219_pos, rx219_off, $I11
  # rx pass
    rx219_cur."!cursor_pass"(rx219_pos, "escale")
    if_null rx219_debug, debug_378
    rx219_cur."!cursor_debug"("PASS", "escale", " at pos=", rx219_pos)
  debug_378:
    .return (rx219_cur)
  rx219_restart:
.annotate 'line', 42
    if_null rx219_debug, debug_379
    rx219_cur."!cursor_debug"("NEXT", "escale")
  debug_379:
  rx219_fail:
    (rx219_rep, rx219_pos, $I10, $P10) = rx219_cur."!mark_fail"(0)
    lt rx219_pos, -1, rx219_done
    eq rx219_pos, -1, rx219_fail
    jump $I10
  rx219_done:
    rx219_cur."!cursor_fail"()
    if_null rx219_debug, debug_380
    rx219_cur."!cursor_debug"("FAIL", "escale")
  debug_380:
    .return (rx219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P223, "ResizablePMCArray"
    push $P223, "e"
    push $P223, "E"
    .return ($P223)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1304284961.094")
    .param pmc param_225
.annotate 'line', 88
    .lex "self", param_225
    $P226 = param_225."!protoregex"("quote_escape")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1304284961.094")
    .param pmc param_228
.annotate 'line', 88
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("quote_escape")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    .local pmc rx231_debug
    (rx231_cur, rx231_pos, rx231_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx231_cur
    .local pmc match
    .lex "$/", match
    length rx231_eos, rx231_tgt
    gt rx231_pos, rx231_eos, rx231_done
    set rx231_off, 0
    lt rx231_pos, 2, rx231_start
    sub rx231_off, rx231_pos, 1
    substr rx231_tgt, rx231_tgt, rx231_off
  rx231_start:
    eq $I10, 1, rx231_restart
    if_null rx231_debug, debug_381
    rx231_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan232_done
    goto rxscan232_scan
  rxscan232_loop:
    (rx231_pos) = rx231_cur."from"()
    inc rx231_pos
    rx231_cur."!cursor_from"(rx231_pos)
    ge rx231_pos, rx231_eos, rxscan232_done
  rxscan232_scan:
    set_addr $I10, rxscan232_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan232_done:
.annotate 'line', 89
  # rx literal  "\\\\"
    add $I11, rx231_pos, 2
    gt $I11, rx231_eos, rx231_fail
    sub $I11, rx231_pos, rx231_off
    substr $S10, rx231_tgt, $I11, 2
    ne $S10, "\\\\", rx231_fail
    add rx231_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx231_cur."!cursor_pos"(rx231_pos)
    $P10 = rx231_cur."quotemod_check"("q")
    unless $P10, rx231_fail
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "quote_escape:sym<backslash>")
    if_null rx231_debug, debug_382
    rx231_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx231_pos)
  debug_382:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 42
    if_null rx231_debug, debug_383
    rx231_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_383:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_384
    rx231_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_384:
    .return (rx231_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P234, "ResizablePMCArray"
    push $P234, "\\\\"
    .return ($P234)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    .local pmc rx236_debug
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    gt rx236_pos, rx236_eos, rx236_done
    set rx236_off, 0
    lt rx236_pos, 2, rx236_start
    sub rx236_off, rx236_pos, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
    eq $I10, 1, rx236_restart
    if_null rx236_debug, debug_385
    rx236_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan237_done
    goto rxscan237_scan
  rxscan237_loop:
    (rx236_pos) = rx236_cur."from"()
    inc rx236_pos
    rx236_cur."!cursor_from"(rx236_pos)
    ge rx236_pos, rx236_eos, rxscan237_done
  rxscan237_scan:
    set_addr $I10, rxscan237_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan237_done:
.annotate 'line', 90
  # rx literal  "\\"
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    ord $I11, rx236_tgt, $I11
    ne $I11, 92, rx236_fail
    add rx236_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."quotemod_check"("q")
    unless $P10, rx236_fail
  # rx subrule "stopper" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."stopper"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx236_pos = $P10."pos"()
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "quote_escape:sym<stopper>")
    if_null rx236_debug, debug_386
    rx236_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx236_pos)
  debug_386:
    .return (rx236_cur)
  rx236_restart:
.annotate 'line', 42
    if_null rx236_debug, debug_387
    rx236_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_387:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_388
    rx236_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_388:
    .return (rx236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P239, "ResizablePMCArray"
    push $P239, "\\"
    .return ($P239)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx241_tgt
    .local int rx241_pos
    .local int rx241_off
    .local int rx241_eos
    .local int rx241_rep
    .local pmc rx241_cur
    .local pmc rx241_debug
    (rx241_cur, rx241_pos, rx241_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx241_cur
    .local pmc match
    .lex "$/", match
    length rx241_eos, rx241_tgt
    gt rx241_pos, rx241_eos, rx241_done
    set rx241_off, 0
    lt rx241_pos, 2, rx241_start
    sub rx241_off, rx241_pos, 1
    substr rx241_tgt, rx241_tgt, rx241_off
  rx241_start:
    eq $I10, 1, rx241_restart
    if_null rx241_debug, debug_389
    rx241_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan242_done
    goto rxscan242_scan
  rxscan242_loop:
    (rx241_pos) = rx241_cur."from"()
    inc rx241_pos
    rx241_cur."!cursor_from"(rx241_pos)
    ge rx241_pos, rx241_eos, rxscan242_done
  rxscan242_scan:
    set_addr $I10, rxscan242_loop
    rx241_cur."!mark_push"(0, rx241_pos, $I10)
  rxscan242_done:
.annotate 'line', 92
  # rx literal  "\\b"
    add $I11, rx241_pos, 2
    gt $I11, rx241_eos, rx241_fail
    sub $I11, rx241_pos, rx241_off
    substr $S10, rx241_tgt, $I11, 2
    ne $S10, "\\b", rx241_fail
    add rx241_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx241_cur."!cursor_pos"(rx241_pos)
    $P10 = rx241_cur."quotemod_check"("b")
    unless $P10, rx241_fail
  # rx pass
    rx241_cur."!cursor_pass"(rx241_pos, "quote_escape:sym<bs>")
    if_null rx241_debug, debug_390
    rx241_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx241_pos)
  debug_390:
    .return (rx241_cur)
  rx241_restart:
.annotate 'line', 42
    if_null rx241_debug, debug_391
    rx241_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_391:
  rx241_fail:
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    if_null rx241_debug, debug_392
    rx241_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_392:
    .return (rx241_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P244, "ResizablePMCArray"
    push $P244, "\\b"
    .return ($P244)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    .local pmc rx246_debug
    (rx246_cur, rx246_pos, rx246_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    gt rx246_pos, rx246_eos, rx246_done
    set rx246_off, 0
    lt rx246_pos, 2, rx246_start
    sub rx246_off, rx246_pos, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
    eq $I10, 1, rx246_restart
    if_null rx246_debug, debug_393
    rx246_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    (rx246_pos) = rx246_cur."from"()
    inc rx246_pos
    rx246_cur."!cursor_from"(rx246_pos)
    ge rx246_pos, rx246_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan247_done:
.annotate 'line', 93
  # rx literal  "\\n"
    add $I11, rx246_pos, 2
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 2
    ne $S10, "\\n", rx246_fail
    add rx246_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."quotemod_check"("b")
    unless $P10, rx246_fail
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "quote_escape:sym<nl>")
    if_null rx246_debug, debug_394
    rx246_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx246_pos)
  debug_394:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 42
    if_null rx246_debug, debug_395
    rx246_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_395:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_396
    rx246_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_396:
    .return (rx246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P249, "ResizablePMCArray"
    push $P249, "\\n"
    .return ($P249)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    .local pmc rx251_debug
    (rx251_cur, rx251_pos, rx251_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx251_cur
    .local pmc match
    .lex "$/", match
    length rx251_eos, rx251_tgt
    gt rx251_pos, rx251_eos, rx251_done
    set rx251_off, 0
    lt rx251_pos, 2, rx251_start
    sub rx251_off, rx251_pos, 1
    substr rx251_tgt, rx251_tgt, rx251_off
  rx251_start:
    eq $I10, 1, rx251_restart
    if_null rx251_debug, debug_397
    rx251_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan252_done
    goto rxscan252_scan
  rxscan252_loop:
    (rx251_pos) = rx251_cur."from"()
    inc rx251_pos
    rx251_cur."!cursor_from"(rx251_pos)
    ge rx251_pos, rx251_eos, rxscan252_done
  rxscan252_scan:
    set_addr $I10, rxscan252_loop
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  rxscan252_done:
.annotate 'line', 94
  # rx literal  "\\r"
    add $I11, rx251_pos, 2
    gt $I11, rx251_eos, rx251_fail
    sub $I11, rx251_pos, rx251_off
    substr $S10, rx251_tgt, $I11, 2
    ne $S10, "\\r", rx251_fail
    add rx251_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."quotemod_check"("b")
    unless $P10, rx251_fail
  # rx pass
    rx251_cur."!cursor_pass"(rx251_pos, "quote_escape:sym<cr>")
    if_null rx251_debug, debug_398
    rx251_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx251_pos)
  debug_398:
    .return (rx251_cur)
  rx251_restart:
.annotate 'line', 42
    if_null rx251_debug, debug_399
    rx251_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_399:
  rx251_fail:
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    if_null rx251_debug, debug_400
    rx251_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_400:
    .return (rx251_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P254, "ResizablePMCArray"
    push $P254, "\\r"
    .return ($P254)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx256_tgt
    .local int rx256_pos
    .local int rx256_off
    .local int rx256_eos
    .local int rx256_rep
    .local pmc rx256_cur
    .local pmc rx256_debug
    (rx256_cur, rx256_pos, rx256_tgt, $I10) = self."!cursor_start"()
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
    if_null rx256_debug, debug_401
    rx256_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan257_done
    goto rxscan257_scan
  rxscan257_loop:
    (rx256_pos) = rx256_cur."from"()
    inc rx256_pos
    rx256_cur."!cursor_from"(rx256_pos)
    ge rx256_pos, rx256_eos, rxscan257_done
  rxscan257_scan:
    set_addr $I10, rxscan257_loop
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxscan257_done:
.annotate 'line', 95
  # rx literal  "\\t"
    add $I11, rx256_pos, 2
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    substr $S10, rx256_tgt, $I11, 2
    ne $S10, "\\t", rx256_fail
    add rx256_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."quotemod_check"("b")
    unless $P10, rx256_fail
  # rx pass
    rx256_cur."!cursor_pass"(rx256_pos, "quote_escape:sym<tab>")
    if_null rx256_debug, debug_402
    rx256_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx256_pos)
  debug_402:
    .return (rx256_cur)
  rx256_restart:
.annotate 'line', 42
    if_null rx256_debug, debug_403
    rx256_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_403:
  rx256_fail:
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    if_null rx256_debug, debug_404
    rx256_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_404:
    .return (rx256_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P259, "ResizablePMCArray"
    push $P259, "\\t"
    .return ($P259)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx261_tgt
    .local int rx261_pos
    .local int rx261_off
    .local int rx261_eos
    .local int rx261_rep
    .local pmc rx261_cur
    .local pmc rx261_debug
    (rx261_cur, rx261_pos, rx261_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx261_cur
    .local pmc match
    .lex "$/", match
    length rx261_eos, rx261_tgt
    gt rx261_pos, rx261_eos, rx261_done
    set rx261_off, 0
    lt rx261_pos, 2, rx261_start
    sub rx261_off, rx261_pos, 1
    substr rx261_tgt, rx261_tgt, rx261_off
  rx261_start:
    eq $I10, 1, rx261_restart
    if_null rx261_debug, debug_405
    rx261_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan262_done
    goto rxscan262_scan
  rxscan262_loop:
    (rx261_pos) = rx261_cur."from"()
    inc rx261_pos
    rx261_cur."!cursor_from"(rx261_pos)
    ge rx261_pos, rx261_eos, rxscan262_done
  rxscan262_scan:
    set_addr $I10, rxscan262_loop
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  rxscan262_done:
.annotate 'line', 96
  # rx literal  "\\f"
    add $I11, rx261_pos, 2
    gt $I11, rx261_eos, rx261_fail
    sub $I11, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I11, 2
    ne $S10, "\\f", rx261_fail
    add rx261_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx261_cur."!cursor_pos"(rx261_pos)
    $P10 = rx261_cur."quotemod_check"("b")
    unless $P10, rx261_fail
  # rx pass
    rx261_cur."!cursor_pass"(rx261_pos, "quote_escape:sym<ff>")
    if_null rx261_debug, debug_406
    rx261_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx261_pos)
  debug_406:
    .return (rx261_cur)
  rx261_restart:
.annotate 'line', 42
    if_null rx261_debug, debug_407
    rx261_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_407:
  rx261_fail:
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    if_null rx261_debug, debug_408
    rx261_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_408:
    .return (rx261_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P264, "ResizablePMCArray"
    push $P264, "\\f"
    .return ($P264)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    .local pmc rx266_debug
    (rx266_cur, rx266_pos, rx266_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    gt rx266_pos, rx266_eos, rx266_done
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    eq $I10, 1, rx266_restart
    if_null rx266_debug, debug_409
    rx266_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan267_done
    goto rxscan267_scan
  rxscan267_loop:
    (rx266_pos) = rx266_cur."from"()
    inc rx266_pos
    rx266_cur."!cursor_from"(rx266_pos)
    ge rx266_pos, rx266_eos, rxscan267_done
  rxscan267_scan:
    set_addr $I10, rxscan267_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan267_done:
.annotate 'line', 97
  # rx literal  "\\e"
    add $I11, rx266_pos, 2
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 2
    ne $S10, "\\e", rx266_fail
    add rx266_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."quotemod_check"("b")
    unless $P10, rx266_fail
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "quote_escape:sym<esc>")
    if_null rx266_debug, debug_410
    rx266_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx266_pos)
  debug_410:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 42
    if_null rx266_debug, debug_411
    rx266_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_411:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_412
    rx266_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_412:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P269, "ResizablePMCArray"
    push $P269, "\\e"
    .return ($P269)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1304284961.094") :method :outer("11_1304284961.094")
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
    if_null rx271_debug, debug_413
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan272_done
    goto rxscan272_scan
  rxscan272_loop:
    (rx271_pos) = rx271_cur."from"()
    inc rx271_pos
    rx271_cur."!cursor_from"(rx271_pos)
    ge rx271_pos, rx271_eos, rxscan272_done
  rxscan272_scan:
    set_addr $I10, rxscan272_loop
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  rxscan272_done:
.annotate 'line', 99
  # rx literal  unicode:"\\x"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx271_fail
    add rx271_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."quotemod_check"("b")
    unless $P10, rx271_fail
  alt273_0:
.annotate 'line', 100
    set_addr $I10, alt273_1
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."hexint"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx271_pos = $P10."pos"()
    goto alt273_end
  alt273_1:
  # rx literal  "["
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 91, rx271_fail
    add rx271_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."hexints"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx271_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 93, rx271_fail
    add rx271_pos, 1
  alt273_end:
.annotate 'line', 98
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "quote_escape:sym<hex>")
    if_null rx271_debug, debug_414
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx271_pos)
  debug_414:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 42
    if_null rx271_debug, debug_415
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_415:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_416
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_416:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P275, "ResizablePMCArray"
    push $P275, unicode:"\\x"
    .return ($P275)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    .local pmc rx277_debug
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    gt rx277_pos, rx277_eos, rx277_done
    set rx277_off, 0
    lt rx277_pos, 2, rx277_start
    sub rx277_off, rx277_pos, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
    eq $I10, 1, rx277_restart
    if_null rx277_debug, debug_417
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan278_done
    goto rxscan278_scan
  rxscan278_loop:
    (rx277_pos) = rx277_cur."from"()
    inc rx277_pos
    rx277_cur."!cursor_from"(rx277_pos)
    ge rx277_pos, rx277_eos, rxscan278_done
  rxscan278_scan:
    set_addr $I10, rxscan278_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan278_done:
.annotate 'line', 103
  # rx literal  "\\o"
    add $I11, rx277_pos, 2
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 2
    ne $S10, "\\o", rx277_fail
    add rx277_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."quotemod_check"("b")
    unless $P10, rx277_fail
  alt279_0:
.annotate 'line', 104
    set_addr $I10, alt279_1
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."octint"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx277_pos = $P10."pos"()
    goto alt279_end
  alt279_1:
  # rx literal  "["
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 91, rx277_fail
    add rx277_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."octints"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx277_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 93, rx277_fail
    add rx277_pos, 1
  alt279_end:
.annotate 'line', 102
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "quote_escape:sym<oct>")
    if_null rx277_debug, debug_418
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx277_pos)
  debug_418:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 42
    if_null rx277_debug, debug_419
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_419:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_420
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_420:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P281, "ResizablePMCArray"
    push $P281, "\\o"
    .return ($P281)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    .local pmc rx283_debug
    (rx283_cur, rx283_pos, rx283_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx283_cur
    .local pmc match
    .lex "$/", match
    length rx283_eos, rx283_tgt
    gt rx283_pos, rx283_eos, rx283_done
    set rx283_off, 0
    lt rx283_pos, 2, rx283_start
    sub rx283_off, rx283_pos, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
    eq $I10, 1, rx283_restart
    if_null rx283_debug, debug_421
    rx283_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan284_done
    goto rxscan284_scan
  rxscan284_loop:
    (rx283_pos) = rx283_cur."from"()
    inc rx283_pos
    rx283_cur."!cursor_from"(rx283_pos)
    ge rx283_pos, rx283_eos, rxscan284_done
  rxscan284_scan:
    set_addr $I10, rxscan284_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan284_done:
.annotate 'line', 106
  # rx literal  "\\c"
    add $I11, rx283_pos, 2
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 2
    ne $S10, "\\c", rx283_fail
    add rx283_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."quotemod_check"("b")
    unless $P10, rx283_fail
  # rx subrule "charspec" subtype=capture negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."charspec"()
    unless $P10, rx283_fail
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx283_pos = $P10."pos"()
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "quote_escape:sym<chr>")
    if_null rx283_debug, debug_422
    rx283_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx283_pos)
  debug_422:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 42
    if_null rx283_debug, debug_423
    rx283_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_423:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_424
    rx283_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_424:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P286, "ResizablePMCArray"
    push $P286, "\\c"
    .return ($P286)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    .local pmc rx288_debug
    (rx288_cur, rx288_pos, rx288_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx288_cur
    .local pmc match
    .lex "$/", match
    length rx288_eos, rx288_tgt
    gt rx288_pos, rx288_eos, rx288_done
    set rx288_off, 0
    lt rx288_pos, 2, rx288_start
    sub rx288_off, rx288_pos, 1
    substr rx288_tgt, rx288_tgt, rx288_off
  rx288_start:
    eq $I10, 1, rx288_restart
    if_null rx288_debug, debug_425
    rx288_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan289_done
    goto rxscan289_scan
  rxscan289_loop:
    (rx288_pos) = rx288_cur."from"()
    inc rx288_pos
    rx288_cur."!cursor_from"(rx288_pos)
    ge rx288_pos, rx288_eos, rxscan289_done
  rxscan289_scan:
    set_addr $I10, rxscan289_loop
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  rxscan289_done:
.annotate 'line', 107
  # rx literal  "\\"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 92, rx288_fail
    add rx288_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_290_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx literal  "0"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 48, rx288_fail
    add rx288_pos, 1
    set_addr $I10, rxcap_290_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_290_done
  rxcap_290_fail:
    goto rx288_fail
  rxcap_290_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."quotemod_check"("b")
    unless $P10, rx288_fail
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "quote_escape:sym<0>")
    if_null rx288_debug, debug_426
    rx288_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx288_pos)
  debug_426:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 42
    if_null rx288_debug, debug_427
    rx288_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_427:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_428
    rx288_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_428:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P292, "ResizablePMCArray"
    push $P292, "\\0"
    .return ($P292)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .const 'Sub' $P311 = "96_1304284961.094" 
    capture_lex $P311
    .const 'Sub' $P304 = "95_1304284961.094" 
    capture_lex $P304
    .const 'Sub' $P299 = "94_1304284961.094" 
    capture_lex $P299
    .local string rx294_tgt
    .local int rx294_pos
    .local int rx294_off
    .local int rx294_eos
    .local int rx294_rep
    .local pmc rx294_cur
    .local pmc rx294_debug
    (rx294_cur, rx294_pos, rx294_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx294_cur
    .local pmc match
    .lex "$/", match
    length rx294_eos, rx294_tgt
    gt rx294_pos, rx294_eos, rx294_done
    set rx294_off, 0
    lt rx294_pos, 2, rx294_start
    sub rx294_off, rx294_pos, 1
    substr rx294_tgt, rx294_tgt, rx294_off
  rx294_start:
    eq $I10, 1, rx294_restart
    if_null rx294_debug, debug_429
    rx294_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan295_done
    goto rxscan295_scan
  rxscan295_loop:
    (rx294_pos) = rx294_cur."from"()
    inc rx294_pos
    rx294_cur."!cursor_from"(rx294_pos)
    ge rx294_pos, rx294_eos, rxscan295_done
  rxscan295_scan:
    set_addr $I10, rxscan295_loop
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  rxscan295_done:
.annotate 'line', 109
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P296, unicode:"$\x{a2}"
    $P297 = $P296."MATCH"()
    store_lex "$/", $P297
    .const 'Sub' $P299 = "94_1304284961.094" 
    capture_lex $P299
    $P300 = $P299()
  # rx literal  "\\"
    add $I11, rx294_pos, 1
    gt $I11, rx294_eos, rx294_fail
    sub $I11, rx294_pos, rx294_off
    ord $I11, rx294_tgt, $I11
    ne $I11, 92, rx294_fail
    add rx294_pos, 1
  alt301_0:
.annotate 'line', 110
    set_addr $I10, alt301_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 111
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    $P10 = rx294_cur."quotemod_check"("b")
    unless $P10, rx294_fail
  alt302_0:
.annotate 'line', 112
    set_addr $I10, alt302_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 113
  # rx subrule $P304 subtype=capture negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    .const 'Sub' $P304 = "95_1304284961.094" 
    capture_lex $P304
    $P10 = rx294_cur.$P304()
    unless $P10, rx294_fail
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx294_pos = $P10."pos"()
    goto alt302_end
  alt302_1:
.annotate 'line', 114
  # rx subcapture "x"
    set_addr $I10, rxcap_307_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass w
    ge rx294_pos, rx294_eos, rx294_fail
    sub $I10, rx294_pos, rx294_off
    is_cclass $I11, 8192, rx294_tgt, $I10
    unless $I11, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_307_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_307_done
  rxcap_307_fail:
    goto rx294_fail
  rxcap_307_done:
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P308, unicode:"$\x{a2}"
    $P309 = $P308."MATCH"()
    store_lex "$/", $P309
    .const 'Sub' $P311 = "96_1304284961.094" 
    capture_lex $P311
    $P321 = $P311()
  alt302_end:
.annotate 'line', 111
    goto alt301_end
  alt301_1:
.annotate 'line', 116
  # rx subcapture "textq"
    set_addr $I10, rxcap_322_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass .
    ge rx294_pos, rx294_eos, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_322_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_322_done
  rxcap_322_fail:
    goto rx294_fail
  rxcap_322_done:
  alt301_end:
.annotate 'line', 108
  # rx pass
    rx294_cur."!cursor_pass"(rx294_pos, "quote_escape:sym<misc>")
    if_null rx294_debug, debug_437
    rx294_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx294_pos)
  debug_437:
    .return (rx294_cur)
  rx294_restart:
.annotate 'line', 42
    if_null rx294_debug, debug_438
    rx294_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_438:
  rx294_fail:
    (rx294_rep, rx294_pos, $I10, $P10) = rx294_cur."!mark_fail"(0)
    lt rx294_pos, -1, rx294_done
    eq rx294_pos, -1, rx294_fail
    jump $I10
  rx294_done:
    rx294_cur."!cursor_fail"()
    if_null rx294_debug, debug_439
    rx294_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_439:
    .return (rx294_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block298"  :anon :subid("94_1304284961.094") :outer("93_1304284961.094")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block303"  :anon :subid("95_1304284961.094") :method :outer("93_1304284961.094")
.annotate 'line', 113
    .local string rx305_tgt
    .local int rx305_pos
    .local int rx305_off
    .local int rx305_eos
    .local int rx305_rep
    .local pmc rx305_cur
    .local pmc rx305_debug
    (rx305_cur, rx305_pos, rx305_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx305_cur
    .local pmc match
    .lex "$/", match
    length rx305_eos, rx305_tgt
    gt rx305_pos, rx305_eos, rx305_done
    set rx305_off, 0
    lt rx305_pos, 2, rx305_start
    sub rx305_off, rx305_pos, 1
    substr rx305_tgt, rx305_tgt, rx305_off
  rx305_start:
    eq $I10, 1, rx305_restart
    if_null rx305_debug, debug_430
    rx305_cur."!cursor_debug"("START", "")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan306_done
    goto rxscan306_scan
  rxscan306_loop:
    (rx305_pos) = rx305_cur."from"()
    inc rx305_pos
    rx305_cur."!cursor_from"(rx305_pos)
    ge rx305_pos, rx305_eos, rxscan306_done
  rxscan306_scan:
    set_addr $I10, rxscan306_loop
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  rxscan306_done:
  # rx charclass W
    ge rx305_pos, rx305_eos, rx305_fail
    sub $I10, rx305_pos, rx305_off
    is_cclass $I11, 8192, rx305_tgt, $I10
    if $I11, rx305_fail
    inc rx305_pos
  # rx pass
    rx305_cur."!cursor_pass"(rx305_pos, "")
    if_null rx305_debug, debug_431
    rx305_cur."!cursor_debug"("PASS", "", " at pos=", rx305_pos)
  debug_431:
    .return (rx305_cur)
  rx305_restart:
    if_null rx305_debug, debug_432
    rx305_cur."!cursor_debug"("NEXT", "")
  debug_432:
  rx305_fail:
    (rx305_rep, rx305_pos, $I10, $P10) = rx305_cur."!mark_fail"(0)
    lt rx305_pos, -1, rx305_done
    eq rx305_pos, -1, rx305_fail
    jump $I10
  rx305_done:
    rx305_cur."!cursor_fail"()
    if_null rx305_debug, debug_433
    rx305_cur."!cursor_debug"("FAIL", "")
  debug_433:
    .return (rx305_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block310"  :anon :subid("96_1304284961.094") :outer("93_1304284961.094")
.annotate 'line', 114
    find_lex $P312, "$/"
    unless_null $P312, vivify_434
    new $P312, "Undef"
  vivify_434:
    $P313 = $P312."CURSOR"()
    new $P314, "String"
    assign $P314, "Unrecognized backslash sequence: '\\"
    find_lex $P315, "$/"
    unless_null $P315, vivify_435
    $P315 = root_new ['parrot';'Hash']
  vivify_435:
    set $P316, $P315["x"]
    unless_null $P316, vivify_436
    new $P316, "Undef"
  vivify_436:
    $S317 = $P316."Str"()
    concat $P318, $P314, $S317
    concat $P319, $P318, "'"
    $P320 = $P313."panic"($P319)
    .return ($P320)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P324, "ResizablePMCArray"
    push $P324, ""
    .return ($P324)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .const 'Sub' $P332 = "99_1304284961.094" 
    capture_lex $P332
    .local string rx326_tgt
    .local int rx326_pos
    .local int rx326_off
    .local int rx326_eos
    .local int rx326_rep
    .local pmc rx326_cur
    .local pmc rx326_debug
    (rx326_cur, rx326_pos, rx326_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx326_cur
    .local pmc match
    .lex "$/", match
    length rx326_eos, rx326_tgt
    gt rx326_pos, rx326_eos, rx326_done
    set rx326_off, 0
    lt rx326_pos, 2, rx326_start
    sub rx326_off, rx326_pos, 1
    substr rx326_tgt, rx326_tgt, rx326_off
  rx326_start:
    eq $I10, 1, rx326_restart
    if_null rx326_debug, debug_440
    rx326_cur."!cursor_debug"("START", "charname")
  debug_440:
    $I10 = self.'from'()
    ne $I10, -1, rxscan327_done
    goto rxscan327_scan
  rxscan327_loop:
    (rx326_pos) = rx326_cur."from"()
    inc rx326_pos
    rx326_cur."!cursor_from"(rx326_pos)
    ge rx326_pos, rx326_eos, rxscan327_done
  rxscan327_scan:
    set_addr $I10, rxscan327_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
  rxscan327_done:
  alt328_0:
.annotate 'line', 120
    set_addr $I10, alt328_1
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
.annotate 'line', 121
  # rx subrule "integer" subtype=capture negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."integer"()
    unless $P10, rx326_fail
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx326_pos = $P10."pos"()
    goto alt328_end
  alt328_1:
.annotate 'line', 122
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
  # rx rxquantf329 ** 0..*
    set_addr $I10, rxquantf329_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
    goto rxquantf329_done
  rxquantf329_loop:
  # rx enumcharlist negate=1 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx326_fail
    inc rx326_pos
    set_addr $I10, rxquantf329_loop
    rx326_cur."!mark_push"(rx326_rep, rx326_pos, $I10)
  rxquantf329_done:
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
.annotate 'line', 123
  # rx subrule "before" subtype=zerowidth negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    .const 'Sub' $P332 = "99_1304284961.094" 
    capture_lex $P332
    $P10 = rx326_cur."before"($P332)
    unless $P10, rx326_fail
  alt328_end:
.annotate 'line', 120
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "charname")
    if_null rx326_debug, debug_445
    rx326_cur."!cursor_debug"("PASS", "charname", " at pos=", rx326_pos)
  debug_445:
    .return (rx326_cur)
  rx326_restart:
.annotate 'line', 42
    if_null rx326_debug, debug_446
    rx326_cur."!cursor_debug"("NEXT", "charname")
  debug_446:
  rx326_fail:
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    if_null rx326_debug, debug_447
    rx326_cur."!cursor_debug"("FAIL", "charname")
  debug_447:
    .return (rx326_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block331"  :anon :subid("99_1304284961.094") :method :outer("98_1304284961.094")
.annotate 'line', 123
    .local string rx333_tgt
    .local int rx333_pos
    .local int rx333_off
    .local int rx333_eos
    .local int rx333_rep
    .local pmc rx333_cur
    .local pmc rx333_debug
    (rx333_cur, rx333_pos, rx333_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx333_cur
    .local pmc match
    .lex "$/", match
    length rx333_eos, rx333_tgt
    gt rx333_pos, rx333_eos, rx333_done
    set rx333_off, 0
    lt rx333_pos, 2, rx333_start
    sub rx333_off, rx333_pos, 1
    substr rx333_tgt, rx333_tgt, rx333_off
  rx333_start:
    eq $I10, 1, rx333_restart
    if_null rx333_debug, debug_441
    rx333_cur."!cursor_debug"("START", "")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan334_done
    goto rxscan334_scan
  rxscan334_loop:
    (rx333_pos) = rx333_cur."from"()
    inc rx333_pos
    rx333_cur."!cursor_from"(rx333_pos)
    ge rx333_pos, rx333_eos, rxscan334_done
  rxscan334_scan:
    set_addr $I10, rxscan334_loop
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
  rxscan334_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx333_pos, rx333_off
    find_not_cclass $I11, 32, rx333_tgt, $I10, rx333_eos
    add rx333_pos, rx333_off, $I11
  # rx enumcharlist negate=0 
    ge rx333_pos, rx333_eos, rx333_fail
    sub $I10, rx333_pos, rx333_off
    substr $S10, rx333_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx333_fail
    inc rx333_pos
  # rx pass
    rx333_cur."!cursor_pass"(rx333_pos, "")
    if_null rx333_debug, debug_442
    rx333_cur."!cursor_debug"("PASS", "", " at pos=", rx333_pos)
  debug_442:
    .return (rx333_cur)
  rx333_restart:
    if_null rx333_debug, debug_443
    rx333_cur."!cursor_debug"("NEXT", "")
  debug_443:
  rx333_fail:
    (rx333_rep, rx333_pos, $I10, $P10) = rx333_cur."!mark_fail"(0)
    lt rx333_pos, -1, rx333_done
    eq rx333_pos, -1, rx333_fail
    jump $I10
  rx333_done:
    rx333_cur."!cursor_fail"()
    if_null rx333_debug, debug_444
    rx333_cur."!cursor_debug"("FAIL", "")
  debug_444:
    .return (rx333_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    $P336 = self."!PREFIX__!subrule"("integer", "")
    new $P337, "ResizablePMCArray"
    push $P337, "Z"
    push $P337, "Y"
    push $P337, "X"
    push $P337, "W"
    push $P337, "V"
    push $P337, "U"
    push $P337, "T"
    push $P337, "S"
    push $P337, "R"
    push $P337, "Q"
    push $P337, "P"
    push $P337, "O"
    push $P337, "N"
    push $P337, "M"
    push $P337, "L"
    push $P337, "K"
    push $P337, "J"
    push $P337, "I"
    push $P337, "H"
    push $P337, "G"
    push $P337, "F"
    push $P337, "E"
    push $P337, "D"
    push $P337, "C"
    push $P337, "B"
    push $P337, "A"
    push $P337, "z"
    push $P337, "y"
    push $P337, "x"
    push $P337, "w"
    push $P337, "v"
    push $P337, "u"
    push $P337, "t"
    push $P337, "s"
    push $P337, "r"
    push $P337, "q"
    push $P337, "p"
    push $P337, "o"
    push $P337, "n"
    push $P337, "m"
    push $P337, "l"
    push $P337, "k"
    push $P337, "j"
    push $P337, "i"
    push $P337, "h"
    push $P337, "g"
    push $P337, "f"
    push $P337, "e"
    push $P337, "d"
    push $P337, "c"
    push $P337, "b"
    push $P337, "a"
    push $P337, $P336
    .return ($P337)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    rx339_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx339_cur
    .local pmc match
    .lex "$/", match
    length rx339_eos, rx339_tgt
    gt rx339_pos, rx339_eos, rx339_done
    set rx339_off, 0
    lt rx339_pos, 2, rx339_start
    sub rx339_off, rx339_pos, 1
    substr rx339_tgt, rx339_tgt, rx339_off
  rx339_start:
    eq $I10, 1, rx339_restart
    if_null rx339_debug, debug_448
    rx339_cur."!cursor_debug"("START", "charnames")
  debug_448:
    $I10 = self.'from'()
    ne $I10, -1, rxscan340_done
    goto rxscan340_scan
  rxscan340_loop:
    (rx339_pos) = rx339_cur."from"()
    inc rx339_pos
    rx339_cur."!cursor_from"(rx339_pos)
    ge rx339_pos, rx339_eos, rxscan340_done
  rxscan340_scan:
    set_addr $I10, rxscan340_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan340_done:
.annotate 'line', 125
  # rx rxquantr341 ** 1..*
    set_addr $I10, rxquantr341_done
    rx339_cur."!mark_push"(0, -1, $I10)
  rxquantr341_loop:
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."charname"()
    unless $P10, rx339_fail
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx339_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
    set_addr $I10, rxquantr341_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr341_done
    rx339_cur."!mark_push"(rx339_rep, rx339_pos, $I10)
  # rx literal  ","
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 44, rx339_fail
    add rx339_pos, 1
    goto rxquantr341_loop
  rxquantr341_done:
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "charnames")
    if_null rx339_debug, debug_449
    rx339_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx339_pos)
  debug_449:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 42
    if_null rx339_debug, debug_450
    rx339_cur."!cursor_debug"("NEXT", "charnames")
  debug_450:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_451
    rx339_cur."!cursor_debug"("FAIL", "charnames")
  debug_451:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    new $P343, "ResizablePMCArray"
    push $P343, ""
    .return ($P343)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    .local pmc rx345_debug
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx345_cur
    .local pmc match
    .lex "$/", match
    length rx345_eos, rx345_tgt
    gt rx345_pos, rx345_eos, rx345_done
    set rx345_off, 0
    lt rx345_pos, 2, rx345_start
    sub rx345_off, rx345_pos, 1
    substr rx345_tgt, rx345_tgt, rx345_off
  rx345_start:
    eq $I10, 1, rx345_restart
    if_null rx345_debug, debug_452
    rx345_cur."!cursor_debug"("START", "charspec")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan346_done
    goto rxscan346_scan
  rxscan346_loop:
    (rx345_pos) = rx345_cur."from"()
    inc rx345_pos
    rx345_cur."!cursor_from"(rx345_pos)
    ge rx345_pos, rx345_eos, rxscan346_done
  rxscan346_scan:
    set_addr $I10, rxscan346_loop
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxscan346_done:
  alt347_0:
.annotate 'line', 127
    set_addr $I10, alt347_1
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 128
  # rx literal  "["
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 91, rx345_fail
    add rx345_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."charnames"()
    unless $P10, rx345_fail
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx345_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 93, rx345_fail
    add rx345_pos, 1
    goto alt347_end
  alt347_1:
    set_addr $I10, alt347_2
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 129
  # rx charclass_q d r 1..-1
    sub $I10, rx345_pos, rx345_off
    find_not_cclass $I11, 8, rx345_tgt, $I10, rx345_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx345_fail
    add rx345_pos, rx345_off, $I11
  # rx rxquantr348 ** 0..*
    set_addr $I10, rxquantr348_done
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxquantr348_loop:
  # rx literal  "_"
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 95, rx345_fail
    add rx345_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx345_pos, rx345_off
    find_not_cclass $I11, 8, rx345_tgt, $I10, rx345_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx345_fail
    add rx345_pos, rx345_off, $I11
    set_addr $I10, rxquantr348_done
    (rx345_rep) = rx345_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr348_done
    rx345_cur."!mark_push"(rx345_rep, rx345_pos, $I10)
    goto rxquantr348_loop
  rxquantr348_done:
    goto alt347_end
  alt347_2:
    set_addr $I10, alt347_3
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 130
  # rx enumcharlist negate=0 
    ge rx345_pos, rx345_eos, rx345_fail
    sub $I10, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx345_fail
    inc rx345_pos
    goto alt347_end
  alt347_3:
.annotate 'line', 131
  # rx subrule "panic" subtype=method negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."panic"("Unrecognized \\c character")
    unless $P10, rx345_fail
    rx345_pos = $P10."pos"()
  alt347_end:
.annotate 'line', 126
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "charspec")
    if_null rx345_debug, debug_453
    rx345_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx345_pos)
  debug_453:
    .return (rx345_cur)
  rx345_restart:
.annotate 'line', 42
    if_null rx345_debug, debug_454
    rx345_cur."!cursor_debug"("NEXT", "charspec")
  debug_454:
  rx345_fail:
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    if_null rx345_debug, debug_455
    rx345_cur."!cursor_debug"("FAIL", "charspec")
  debug_455:
    .return (rx345_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1304284961.094") :method :outer("11_1304284961.094")
.annotate 'line', 42
    $P350 = self."!PREFIX__!subrule"("panic", "")
    $P351 = self."!PREFIX__!subrule"("charnames", "[")
    new $P352, "ResizablePMCArray"
    push $P352, $P350
    push $P352, "?"
    push $P352, "@"
    push $P352, "A"
    push $P352, "B"
    push $P352, "C"
    push $P352, "D"
    push $P352, "E"
    push $P352, "F"
    push $P352, "G"
    push $P352, "H"
    push $P352, "I"
    push $P352, "J"
    push $P352, "K"
    push $P352, "L"
    push $P352, "M"
    push $P352, "N"
    push $P352, "O"
    push $P352, "P"
    push $P352, "Q"
    push $P352, "R"
    push $P352, "S"
    push $P352, "T"
    push $P352, "U"
    push $P352, "V"
    push $P352, "W"
    push $P352, "X"
    push $P352, "Y"
    push $P352, "Z"
    push $P352, ""
    push $P352, $P351
    .return ($P352)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356 :optional
    .param int has_param_356 :opt_flag
.annotate 'line', 177
    .lex "self", param_354
    .lex "$spec", param_355
    if has_param_356, optparam_456
    new $P357, "Undef"
    set param_356, $P357
  optparam_456:
    .lex "$save", param_356
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
.sub "panic"  :subid("106_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_359
    .param pmc param_360 :slurpy
.annotate 'line', 325
    .lex "self", param_359
    .lex "@args", param_360
.annotate 'line', 326
    new $P361, "Undef"
    .lex "$pos", $P361
.annotate 'line', 327
    new $P362, "Undef"
    .lex "$target", $P362
.annotate 'line', 326
    find_lex $P363, "self"
    $P364 = $P363."pos"()
    store_lex "$pos", $P364
.annotate 'line', 327
    find_lex $P365, "self"
    get_hll_global $P366, "GLOBAL"
    nqp_get_package_through_who $P367, $P366, "Regex"
    get_who $P368, $P367
    set $P369, $P368["Cursor"]
    getattribute $P370, $P365, $P369, "$!target"
    store_lex "$target", $P370
.annotate 'line', 328
    find_lex $P371, "@args"
    unless_null $P371, vivify_457
    $P371 = root_new ['parrot';'ResizablePMCArray']
  vivify_457:
    $P371."push"(" at line ")
.annotate 'line', 329
    find_lex $P372, "@args"
    unless_null $P372, vivify_458
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
    get_hll_global $P373, "GLOBAL"
    nqp_get_package_through_who $P374, $P373, "HLL"
    get_who $P375, $P374
    set $P376, $P375["Compiler"]
    find_lex $P377, "$target"
    unless_null $P377, vivify_459
    new $P377, "Undef"
  vivify_459:
    find_lex $P378, "$pos"
    unless_null $P378, vivify_460
    new $P378, "Undef"
  vivify_460:
    $P379 = $P376."lineof"($P377, $P378)
    add $P380, $P379, 1
    $P372."push"($P380)
.annotate 'line', 330
    find_lex $P381, "@args"
    unless_null $P381, vivify_461
    $P381 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    $P381."push"(", near \"")
.annotate 'line', 331
    find_lex $P382, "@args"
    unless_null $P382, vivify_462
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    find_lex $P383, "$target"
    unless_null $P383, vivify_463
    new $P383, "Undef"
  vivify_463:
    set $S384, $P383
    find_lex $P385, "$pos"
    unless_null $P385, vivify_464
    new $P385, "Undef"
  vivify_464:
    set $I386, $P385
    substr $S387, $S384, $I386, 10
    escape $S388, $S387
    $P382."push"($S388)
.annotate 'line', 332
    find_lex $P389, "@args"
    unless_null $P389, vivify_465
    $P389 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    $P389."push"("\"")
.annotate 'line', 333
    find_lex $P390, "@args"
    unless_null $P390, vivify_466
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    join $S391, "", $P390
    die $S391
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_393
    .param pmc param_394
    .param pmc param_395
.annotate 'line', 346
    .lex "self", param_393
    .lex "$target", param_394
    .lex "$pos", param_395
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
.sub "quote_EXPR"  :subid("108_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_397
    .param pmc param_398 :slurpy
.annotate 'line', 408
    .lex "self", param_397
    .lex "@args", param_398
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
.sub "quotemod_check"  :subid("109_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 479
    .lex "self", param_400
    .lex "$mod", param_401
    find_lex $P402, "$mod"
    unless_null $P402, vivify_467
    new $P402, "Undef"
  vivify_467:
    find_dynamic_lex $P405, "%*QUOTEMOD"
    unless_null $P405, vivify_468
    get_hll_global $P403, "GLOBAL"
    get_who $P404, $P403
    set $P405, $P404["%QUOTEMOD"]
    unless_null $P405, vivify_469
    die "Contextual %*QUOTEMOD not found"
  vivify_469:
  vivify_468:
    set $P406, $P405[$P402]
    unless_null $P406, vivify_470
    new $P406, "Undef"
  vivify_470:
    .return ($P406)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_408
.annotate 'line', 483
    .lex "self", param_408
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
.sub "stopper"  :subid("111_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_410
.annotate 'line', 506
    .lex "self", param_410
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
.sub "split_words"  :subid("112_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_412
    .param pmc param_413
.annotate 'line', 529
    .lex "self", param_412
    .lex "$words", param_413
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
.sub "EXPR"  :subid("113_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_415
    .param pmc param_416 :optional
    .param int has_param_416 :opt_flag
.annotate 'line', 561
    .lex "self", param_415
    if has_param_416, optparam_471
    new $P417, "String"
    assign $P417, ""
    set param_416, $P417
  optparam_471:
    .lex "$preclim", param_416
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
.sub "EXPR_reduce"  :subid("114_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_419
    .param pmc param_420
    .param pmc param_421
.annotate 'line', 739
    .lex "self", param_419
    .lex "$termstack", param_420
    .lex "$opstack", param_421
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
.sub "ternary"  :subid("115_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_423
    .param pmc param_424
.annotate 'line', 811
    .lex "self", param_423
    .lex "$match", param_424
.annotate 'line', 812
    find_lex $P425, "$match"
    unless_null $P425, vivify_472
    $P425 = root_new ['parrot';'ResizablePMCArray']
  vivify_472:
    set $P426, $P425[1]
    unless_null $P426, vivify_473
    new $P426, "Undef"
  vivify_473:
    find_lex $P427, "$match"
    unless_null $P427, vivify_474
    $P427 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P427
  vivify_474:
    set $P427[2], $P426
.annotate 'line', 813
    find_lex $P428, "$match"
    unless_null $P428, vivify_475
    $P428 = root_new ['parrot';'Hash']
  vivify_475:
    set $P429, $P428["infix"]
    unless_null $P429, vivify_476
    $P429 = root_new ['parrot';'Hash']
  vivify_476:
    set $P430, $P429["EXPR"]
    unless_null $P430, vivify_477
    new $P430, "Undef"
  vivify_477:
    find_lex $P431, "$match"
    unless_null $P431, vivify_478
    $P431 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P431
  vivify_478:
    set $P431[1], $P430
.annotate 'line', 811
    .return ($P430)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_433
    .param pmc param_434
.annotate 'line', 816
    .lex "self", param_433
    .lex "$markname", param_434
.annotate 'line', 817
    new $P435, "Undef"
    .lex "$pos", $P435
.annotate 'line', 819
    $P436 = root_new ['parrot';'Hash']
    .lex "%markhash", $P436
.annotate 'line', 817
    find_lex $P437, "self"
    $P438 = $P437."pos"()
    store_lex "$pos", $P438
.annotate 'line', 818
    find_lex $P439, "self"
    find_lex $P440, "$markname"
    unless_null $P440, vivify_479
    new $P440, "Undef"
  vivify_479:
    find_lex $P441, "$pos"
    unless_null $P441, vivify_480
    new $P441, "Undef"
  vivify_480:
    $P439."!cursor_debug"("START", "MARKER name=", $P440, ", pos=", $P441)
.annotate 'line', 819

            $P442 = get_global '%!MARKHASH'
            unless null $P442 goto have_markhash
            $P442 = new ['Hash']
            set_global '%!MARKHASH', $P442
          have_markhash:
        
    store_lex "%markhash", $P442
.annotate 'line', 826
    find_lex $P443, "$pos"
    unless_null $P443, vivify_481
    new $P443, "Undef"
  vivify_481:
    find_lex $P444, "$markname"
    unless_null $P444, vivify_482
    new $P444, "Undef"
  vivify_482:
    find_lex $P445, "%markhash"
    unless_null $P445, vivify_483
    $P445 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P445
  vivify_483:
    set $P445[$P444], $P443
.annotate 'line', 827
    find_lex $P446, "self"
    $P446."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_448
    .param pmc param_449
.annotate 'line', 831
    .lex "self", param_448
    .lex "$markname", param_449
.annotate 'line', 832
    find_lex $P450, "self"
    find_lex $P451, "$markname"
    unless_null $P451, vivify_484
    new $P451, "Undef"
  vivify_484:
    $P450."!cursor_debug"("START", "MARKED name=", $P451)
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
.sub "LANG"  :subid("118_1304284961.094") :outer("11_1304284961.094")
    .param pmc param_453
    .param pmc param_454
    .param pmc param_455
.annotate 'line', 851
    .lex "self", param_453
    .lex "$lang", param_454
    .lex "$regex", param_455
.annotate 'line', 852
    new $P456, "Undef"
    .lex "$lang_cursor", $P456
.annotate 'line', 853
    new $P457, "Undef"
    .lex "$*ACTIONS", $P457
.annotate 'line', 854
    new $P458, "Undef"
    .lex "$cur", $P458
.annotate 'line', 852
    find_lex $P459, "$lang"
    unless_null $P459, vivify_485
    new $P459, "Undef"
  vivify_485:
    find_dynamic_lex $P462, "%*LANG"
    unless_null $P462, vivify_486
    get_hll_global $P460, "GLOBAL"
    get_who $P461, $P460
    set $P462, $P461["%LANG"]
    unless_null $P462, vivify_487
    die "Contextual %*LANG not found"
  vivify_487:
  vivify_486:
    set $P463, $P462[$P459]
    unless_null $P463, vivify_488
    new $P463, "Undef"
  vivify_488:
    store_lex "$lang_cursor", $P463
.annotate 'line', 853
    find_lex $P464, "$lang"
    unless_null $P464, vivify_489
    new $P464, "Undef"
  vivify_489:
    concat $P465, $P464, "-actions"
    find_dynamic_lex $P468, "%*LANG"
    unless_null $P468, vivify_490
    get_hll_global $P466, "GLOBAL"
    get_who $P467, $P466
    set $P468, $P467["%LANG"]
    unless_null $P468, vivify_491
    die "Contextual %*LANG not found"
  vivify_491:
  vivify_490:
    set $P469, $P468[$P465]
    unless_null $P469, vivify_492
    new $P469, "Undef"
  vivify_492:
    store_lex "$*ACTIONS", $P469
.annotate 'line', 854

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P470, pos) = self.'!cursor_start'($P0)
            $P470.'!cursor_pos'(pos)
        
    store_lex "$cur", $P470
.annotate 'line', 862
    find_lex $P471, "$cur"
    unless_null $P471, vivify_493
    new $P471, "Undef"
  vivify_493:
    find_lex $P472, "$regex"
    unless_null $P472, vivify_494
    new $P472, "Undef"
  vivify_494:
    set $S473, $P472
    $P474 = $P471.$S473()
.annotate 'line', 851
    .return ($P474)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block476"  :subid("119_1304284961.094") :outer("10_1304284961.094")
.annotate 'line', 867
    .const 'Sub' $P1145 = "164_1304284961.094" 
    capture_lex $P1145
    .const 'Sub' $P1122 = "162_1304284961.094" 
    capture_lex $P1122
    .const 'Sub' $P1094 = "161_1304284961.094" 
    capture_lex $P1094
    .const 'Sub' $P1077 = "160_1304284961.094" 
    capture_lex $P1077
    .const 'Sub' $P1072 = "159_1304284961.094" 
    capture_lex $P1072
    .const 'Sub' $P1064 = "158_1304284961.094" 
    capture_lex $P1064
    .const 'Sub' $P1049 = "157_1304284961.094" 
    capture_lex $P1049
    .const 'Sub' $P1034 = "156_1304284961.094" 
    capture_lex $P1034
    .const 'Sub' $P1029 = "155_1304284961.094" 
    capture_lex $P1029
    .const 'Sub' $P1024 = "154_1304284961.094" 
    capture_lex $P1024
    .const 'Sub' $P1019 = "153_1304284961.094" 
    capture_lex $P1019
    .const 'Sub' $P1014 = "152_1304284961.094" 
    capture_lex $P1014
    .const 'Sub' $P1009 = "151_1304284961.094" 
    capture_lex $P1009
    .const 'Sub' $P1004 = "150_1304284961.094" 
    capture_lex $P1004
    .const 'Sub' $P996 = "149_1304284961.094" 
    capture_lex $P996
    .const 'Sub' $P991 = "148_1304284961.094" 
    capture_lex $P991
    .const 'Sub' $P977 = "147_1304284961.094" 
    capture_lex $P977
    .const 'Sub' $P895 = "145_1304284961.094" 
    capture_lex $P895
    .const 'Sub' $P818 = "142_1304284961.094" 
    capture_lex $P818
    .const 'Sub' $P811 = "141_1304284961.094" 
    capture_lex $P811
    .const 'Sub' $P804 = "140_1304284961.094" 
    capture_lex $P804
    .const 'Sub' $P797 = "139_1304284961.094" 
    capture_lex $P797
    .const 'Sub' $P790 = "138_1304284961.094" 
    capture_lex $P790
    .const 'Sub' $P783 = "137_1304284961.094" 
    capture_lex $P783
    .const 'Sub' $P775 = "136_1304284961.094" 
    capture_lex $P775
    .const 'Sub' $P767 = "135_1304284961.094" 
    capture_lex $P767
    .const 'Sub' $P761 = "134_1304284961.094" 
    capture_lex $P761
    .const 'Sub' $P753 = "133_1304284961.094" 
    capture_lex $P753
    .const 'Sub' $P745 = "132_1304284961.094" 
    capture_lex $P745
    .const 'Sub' $P637 = "129_1304284961.094" 
    capture_lex $P637
    .const 'Sub' $P597 = "126_1304284961.094" 
    capture_lex $P597
    .const 'Sub' $P589 = "125_1304284961.094" 
    capture_lex $P589
    .const 'Sub' $P550 = "122_1304284961.094" 
    capture_lex $P550
    .const 'Sub' $P478 = "120_1304284961.094" 
    capture_lex $P478
.annotate 'line', 868
    .const 'Sub' $P478 = "120_1304284961.094" 
    newclosure $P546, $P478
    .lex "string_to_int", $P546
.annotate 'line', 867
    find_lex $P547, "string_to_int"
    find_lex $P548, "$?PACKAGE"
    get_who $P549, $P548
    set $P549["string_to_int"], $P547
.annotate 'line', 887
    .const 'Sub' $P550 = "122_1304284961.094" 
    newclosure $P581, $P550
    .lex "ints_to_string", $P581
.annotate 'line', 867
    find_lex $P582, "ints_to_string"
    find_lex $P583, "$?PACKAGE"
    get_who $P584, $P583
    set $P584["ints_to_string"], $P582
    .lex "$?PACKAGE", $P585
    .lex "$?CLASS", $P586
    find_lex $P587, "string_to_int"
    find_lex $P588, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1145 = "164_1304284961.094" 
    newclosure $P1160, $P1145
.annotate 'line', 867
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("120_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_479
    .param pmc param_480
.annotate 'line', 868
    .const 'Sub' $P496 = "121_1304284961.094" 
    capture_lex $P496
    .lex "$src", param_479
    .lex "$base", param_480
.annotate 'line', 869
    new $P481, "Undef"
    .lex "$len", $P481
.annotate 'line', 870
    new $P482, "Undef"
    .lex "$i", $P482
.annotate 'line', 871
    new $P483, "Undef"
    .lex "$result", $P483
.annotate 'line', 869
    find_lex $P484, "$src"
    unless_null $P484, vivify_495
    new $P484, "Undef"
  vivify_495:
    set $S485, $P484
    length $I486, $S485
    new $P487, 'Integer'
    set $P487, $I486
    store_lex "$len", $P487
.annotate 'line', 870
    new $P488, "Integer"
    assign $P488, 0
    store_lex "$i", $P488
.annotate 'line', 871
    new $P489, "Integer"
    assign $P489, 0
    store_lex "$result", $P489
.annotate 'line', 873
    new $P543, 'ExceptionHandler'
    set_label $P543, loop542_handler
    $P543."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P543
  loop542_test:
    find_lex $P490, "$i"
    unless_null $P490, vivify_496
    new $P490, "Undef"
  vivify_496:
    set $N491, $P490
    find_lex $P492, "$len"
    unless_null $P492, vivify_497
    new $P492, "Undef"
  vivify_497:
    set $N493, $P492
    islt $I494, $N491, $N493
    unless $I494, loop542_done
  loop542_redo:
    .const 'Sub' $P496 = "121_1304284961.094" 
    capture_lex $P496
    $P496()
  loop542_next:
    goto loop542_test
  loop542_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P544, exception, 'type'
    eq $P544, .CONTROL_LOOP_NEXT, loop542_next
    eq $P544, .CONTROL_LOOP_REDO, loop542_redo
  loop542_done:
    pop_eh 
    find_lex $P545, "$result"
    unless_null $P545, vivify_512
    new $P545, "Undef"
  vivify_512:
.annotate 'line', 868
    .return ($P545)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block495"  :anon :subid("121_1304284961.094") :outer("120_1304284961.094")
.annotate 'line', 874
    new $P497, "Undef"
    .lex "$char", $P497
.annotate 'line', 876
    new $P498, "Undef"
    .lex "$digitval", $P498
.annotate 'line', 874
    find_lex $P499, "$src"
    unless_null $P499, vivify_498
    new $P499, "Undef"
  vivify_498:
    set $S500, $P499
    find_lex $P501, "$i"
    unless_null $P501, vivify_499
    new $P501, "Undef"
  vivify_499:
    set $I502, $P501
    substr $S503, $S500, $I502, 1
    new $P504, 'String'
    set $P504, $S503
    store_lex "$char", $P504
.annotate 'line', 875
    find_lex $P506, "$char"
    unless_null $P506, vivify_500
    new $P506, "Undef"
  vivify_500:
    set $S507, $P506
    iseq $I508, $S507, "_"
    unless $I508, if_505_end
    set $I509, .CONTROL_LOOP_NEXT
    die 0, $I509
  if_505_end:
.annotate 'line', 876
    find_lex $P510, "$char"
    unless_null $P510, vivify_501
    new $P510, "Undef"
  vivify_501:
    set $S511, $P510
    index $I512, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S511
    new $P513, 'Integer'
    set $P513, $I512
    store_lex "$digitval", $P513
.annotate 'line', 877
    find_lex $P514, "$digitval"
    unless_null $P514, vivify_502
    new $P514, "Undef"
  vivify_502:
    div $P515, $P514, 2
    set $I516, $P515
    new $P517, 'Integer'
    set $P517, $I516
    store_lex "$digitval", $P517
.annotate 'line', 878
    find_lex $P521, "$digitval"
    unless_null $P521, vivify_503
    new $P521, "Undef"
  vivify_503:
    set $N522, $P521
    islt $I523, $N522, 0.0
    unless $I523, unless_520
    new $P519, 'Integer'
    set $P519, $I523
    goto unless_520_end
  unless_520:
    find_lex $P524, "$digitval"
    unless_null $P524, vivify_504
    new $P524, "Undef"
  vivify_504:
    set $N525, $P524
    find_lex $P526, "$base"
    unless_null $P526, vivify_505
    new $P526, "Undef"
  vivify_505:
    set $N527, $P526
    isge $I528, $N525, $N527
    new $P519, 'Integer'
    set $P519, $I528
  unless_520_end:
    unless $P519, if_518_end
.annotate 'line', 879
    find_lex $P529, "$src"
    unless_null $P529, vivify_506
    new $P529, "Undef"
  vivify_506:
    new $P530, 'String'
    set $P530, "Invalid radix conversion of character '"
    find_lex $P531, "$char"
    unless_null $P531, vivify_507
    new $P531, "Undef"
  vivify_507:
    concat $P532, $P530, $P531
    concat $P533, $P532, "'"
    $P529."panic"($P533)
  if_518_end:
.annotate 'line', 881
    find_lex $P534, "$base"
    unless_null $P534, vivify_508
    new $P534, "Undef"
  vivify_508:
    find_lex $P535, "$result"
    unless_null $P535, vivify_509
    new $P535, "Undef"
  vivify_509:
    mul $P536, $P534, $P535
    find_lex $P537, "$digitval"
    unless_null $P537, vivify_510
    new $P537, "Undef"
  vivify_510:
    add $P538, $P536, $P537
    store_lex "$result", $P538
.annotate 'line', 882
    find_lex $P539, "$i"
    unless_null $P539, vivify_511
    new $P539, "Undef"
  vivify_511:
    add $P540, $P539, 1
    store_lex "$i", $P540
    new $P541, "ResizablePMCArray"
    push $P541, $P538
    push $P541, $P540
.annotate 'line', 873
    .return ($P541)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("122_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_551
.annotate 'line', 887
    .const 'Sub' $P557 = "123_1304284961.094" 
    capture_lex $P557
    .lex "$ints", param_551
.annotate 'line', 888
    find_lex $P554, "$ints"
    unless_null $P554, vivify_513
    new $P554, "Undef"
  vivify_513:
    does $I555, $P554, "array"
    if $I555, if_553
.annotate 'line', 895
    find_lex $P577, "$ints"
    unless_null $P577, vivify_514
    new $P577, "Undef"
  vivify_514:
    $I578 = $P577."ast"()
    chr $S579, $I578
    new $P580, 'String'
    set $P580, $S579
.annotate 'line', 894
    set $P552, $P580
.annotate 'line', 888
    goto if_553_end
  if_553:
    .const 'Sub' $P557 = "123_1304284961.094" 
    capture_lex $P557
    $P576 = $P557()
    set $P552, $P576
  if_553_end:
.annotate 'line', 887
    .return ($P552)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block556"  :anon :subid("123_1304284961.094") :outer("122_1304284961.094")
.annotate 'line', 888
    .const 'Sub' $P565 = "124_1304284961.094" 
    capture_lex $P565
.annotate 'line', 889
    new $P558, "Undef"
    .lex "$result", $P558
    new $P559, "String"
    assign $P559, ""
    store_lex "$result", $P559
.annotate 'line', 890
    find_lex $P561, "$ints"
    unless_null $P561, vivify_515
    new $P561, "Undef"
  vivify_515:
    defined $I562, $P561
    unless $I562, for_undef_516
    iter $P560, $P561
    new $P573, 'ExceptionHandler'
    set_label $P573, loop572_handler
    $P573."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P573
  loop572_test:
    unless $P560, loop572_done
    shift $P563, $P560
  loop572_redo:
    .const 'Sub' $P565 = "124_1304284961.094" 
    capture_lex $P565
    $P565($P563)
  loop572_next:
    goto loop572_test
  loop572_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P574, exception, 'type'
    eq $P574, .CONTROL_LOOP_NEXT, loop572_next
    eq $P574, .CONTROL_LOOP_REDO, loop572_redo
  loop572_done:
    pop_eh 
  for_undef_516:
    find_lex $P575, "$result"
    unless_null $P575, vivify_519
    new $P575, "Undef"
  vivify_519:
.annotate 'line', 888
    .return ($P575)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block564"  :anon :subid("124_1304284961.094") :outer("123_1304284961.094")
    .param pmc param_566
.annotate 'line', 890
    .lex "$_", param_566
.annotate 'line', 891
    find_lex $P567, "$result"
    unless_null $P567, vivify_517
    new $P567, "Undef"
  vivify_517:
    find_lex $P568, "$_"
    unless_null $P568, vivify_518
    new $P568, "Undef"
  vivify_518:
    $I569 = $P568."ast"()
    chr $S570, $I569
    concat $P571, $P567, $S570
    store_lex "$result", $P571
.annotate 'line', 890
    .return ($P571)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("125_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_590
.annotate 'line', 900
    .lex "self", param_590
.annotate 'line', 901
    get_hll_global $P591, "GLOBAL"
    nqp_get_package_through_who $P592, $P591, "PAST"
    get_who $P593, $P592
    set $P594, $P593["Op"]
.annotate 'line', 907
    new $P595, "ResizablePMCArray"
    push $P595, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P595, "    if null $P0 goto ctxsave_done"
    push $P595, "    $I0 = can $P0, \"ctxsave\""
    push $P595, "    unless $I0 goto ctxsave_done"
    push $P595, "    $P0.\"ctxsave\"()"
    push $P595, "  ctxsave_done:"
    $P596 = $P594."new"($P595 :named("inline"))
.annotate 'line', 900
    .return ($P596)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("126_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_598
    .param pmc param_599
.annotate 'line', 914
    .const 'Sub' $P611 = "127_1304284961.094" 
    capture_lex $P611
    .lex "self", param_598
    .lex "$block", param_599
.annotate 'line', 915
    new $P600, "Undef"
    .lex "$outer_ctx", $P600
    find_dynamic_lex $P603, "%*COMPILING"
    unless_null $P603, vivify_520
    get_hll_global $P601, "GLOBAL"
    get_who $P602, $P601
    set $P603, $P602["%COMPILING"]
    unless_null $P603, vivify_521
    die "Contextual %*COMPILING not found"
  vivify_521:
  vivify_520:
    set $P604, $P603["%?OPTIONS"]
    unless_null $P604, vivify_522
    $P604 = root_new ['parrot';'Hash']
  vivify_522:
    set $P605, $P604["outer_ctx"]
    unless_null $P605, vivify_523
    new $P605, "Undef"
  vivify_523:
    store_lex "$outer_ctx", $P605
.annotate 'line', 916
    find_lex $P608, "$outer_ctx"
    unless_null $P608, vivify_524
    new $P608, "Undef"
  vivify_524:
    defined $I609, $P608
    if $I609, if_607
    new $P606, 'Integer'
    set $P606, $I609
    goto if_607_end
  if_607:
    .const 'Sub' $P611 = "127_1304284961.094" 
    capture_lex $P611
    $P636 = $P611()
    set $P606, $P636
  if_607_end:
.annotate 'line', 914
    .return ($P606)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block610"  :anon :subid("127_1304284961.094") :outer("126_1304284961.094")
.annotate 'line', 916
    .const 'Sub' $P625 = "128_1304284961.094" 
    capture_lex $P625
.annotate 'line', 917
    $P612 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P612
    find_lex $P613, "$outer_ctx"
    unless_null $P613, vivify_525
    new $P613, "Undef"
  vivify_525:
    getattribute $P614, $P613, "current_namespace"
    $P615 = $P614."get_name"()
    store_lex "@ns", $P615
.annotate 'line', 918
    find_lex $P616, "@ns"
    unless_null $P616, vivify_526
    $P616 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    $P616."shift"()
.annotate 'line', 919
    find_lex $P617, "$block"
    unless_null $P617, vivify_527
    new $P617, "Undef"
  vivify_527:
    find_lex $P618, "@ns"
    unless_null $P618, vivify_528
    $P618 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    $P617."namespace"($P618)
.annotate 'line', 920
    find_lex $P620, "$outer_ctx"
    unless_null $P620, vivify_529
    new $P620, "Undef"
  vivify_529:
    $P621 = $P620."lexpad_full"()
    defined $I622, $P621
    unless $I622, for_undef_530
    iter $P619, $P621
    new $P634, 'ExceptionHandler'
    set_label $P634, loop633_handler
    $P634."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P634
  loop633_test:
    unless $P619, loop633_done
    shift $P623, $P619
  loop633_redo:
    .const 'Sub' $P625 = "128_1304284961.094" 
    capture_lex $P625
    $P625($P623)
  loop633_next:
    goto loop633_test
  loop633_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P635, exception, 'type'
    eq $P635, .CONTROL_LOOP_NEXT, loop633_next
    eq $P635, .CONTROL_LOOP_REDO, loop633_redo
  loop633_done:
    pop_eh 
  for_undef_530:
.annotate 'line', 916
    .return ($P619)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block624"  :anon :subid("128_1304284961.094") :outer("127_1304284961.094")
    .param pmc param_626
.annotate 'line', 920
    .lex "$_", param_626
.annotate 'line', 921
    find_lex $P627, "$block"
    unless_null $P627, vivify_531
    new $P627, "Undef"
  vivify_531:
    find_lex $P628, "$_"
    unless_null $P628, vivify_532
    new $P628, "Undef"
  vivify_532:
    $P629 = $P628."key"()
    find_lex $P630, "$_"
    unless_null $P630, vivify_533
    new $P630, "Undef"
  vivify_533:
    $P631 = $P630."value"()
    $P632 = $P627."symbol"($P629, "lexical" :named("scope"), $P631 :named("value"))
.annotate 'line', 920
    .return ($P632)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("129_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_640
    .param pmc param_641
    .param pmc param_642 :optional
    .param int has_param_642 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P727 = "131_1304284961.094" 
    capture_lex $P727
    .const 'Sub' $P691 = "130_1304284961.094" 
    capture_lex $P691
    new $P639, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P639, control_638
    push_eh $P639
    .lex "self", param_640
    .lex "$/", param_641
    if has_param_642, optparam_534
    new $P643, "Undef"
    set param_642, $P643
  optparam_534:
    .lex "$key", param_642
.annotate 'line', 929
    new $P644, "Undef"
    .lex "$past", $P644
.annotate 'line', 928
    find_lex $P646, "$key"
    unless_null $P646, vivify_535
    new $P646, "Undef"
  vivify_535:
    if $P646, unless_645_end
    new $P647, "Exception"
    set $P647['type'], .CONTROL_RETURN
    new $P648, "Integer"
    assign $P648, 0
    setattribute $P647, 'payload', $P648
    throw $P647
  unless_645_end:
.annotate 'line', 929
    find_lex $P650, "$/"
    unless_null $P650, vivify_536
    new $P650, "Undef"
  vivify_536:
    $P651 = $P650."ast"()
    set $P649, $P651
    defined $I653, $P649
    if $I653, default_652
    find_lex $P654, "$/"
    unless_null $P654, vivify_537
    $P654 = root_new ['parrot';'Hash']
  vivify_537:
    set $P655, $P654["OPER"]
    unless_null $P655, vivify_538
    new $P655, "Undef"
  vivify_538:
    $P656 = $P655."ast"()
    set $P649, $P656
  default_652:
    store_lex "$past", $P649
.annotate 'line', 930
    find_lex $P658, "$past"
    unless_null $P658, vivify_539
    new $P658, "Undef"
  vivify_539:
    if $P658, unless_657_end
.annotate 'line', 931
    get_hll_global $P659, "GLOBAL"
    nqp_get_package_through_who $P660, $P659, "PAST"
    get_who $P661, $P660
    set $P662, $P661["Op"]
    find_lex $P663, "$/"
    unless_null $P663, vivify_540
    new $P663, "Undef"
  vivify_540:
    $P664 = $P662."new"($P663 :named("node"))
    store_lex "$past", $P664
.annotate 'line', 932
    find_lex $P666, "$/"
    unless_null $P666, vivify_541
    $P666 = root_new ['parrot';'Hash']
  vivify_541:
    set $P667, $P666["OPER"]
    unless_null $P667, vivify_542
    $P667 = root_new ['parrot';'Hash']
  vivify_542:
    set $P668, $P667["O"]
    unless_null $P668, vivify_543
    $P668 = root_new ['parrot';'Hash']
  vivify_543:
    set $P669, $P668["pasttype"]
    unless_null $P669, vivify_544
    new $P669, "Undef"
  vivify_544:
    if $P669, if_665
.annotate 'line', 933
    find_lex $P677, "$/"
    unless_null $P677, vivify_545
    $P677 = root_new ['parrot';'Hash']
  vivify_545:
    set $P678, $P677["OPER"]
    unless_null $P678, vivify_546
    $P678 = root_new ['parrot';'Hash']
  vivify_546:
    set $P679, $P678["O"]
    unless_null $P679, vivify_547
    $P679 = root_new ['parrot';'Hash']
  vivify_547:
    set $P680, $P679["pirop"]
    unless_null $P680, vivify_548
    new $P680, "Undef"
  vivify_548:
    unless $P680, if_676_end
    find_lex $P681, "$past"
    unless_null $P681, vivify_549
    new $P681, "Undef"
  vivify_549:
    find_lex $P682, "$/"
    unless_null $P682, vivify_550
    $P682 = root_new ['parrot';'Hash']
  vivify_550:
    set $P683, $P682["OPER"]
    unless_null $P683, vivify_551
    $P683 = root_new ['parrot';'Hash']
  vivify_551:
    set $P684, $P683["O"]
    unless_null $P684, vivify_552
    $P684 = root_new ['parrot';'Hash']
  vivify_552:
    set $P685, $P684["pirop"]
    unless_null $P685, vivify_553
    new $P685, "Undef"
  vivify_553:
    set $S686, $P685
    $P681."pirop"($S686)
  if_676_end:
    goto if_665_end
  if_665:
.annotate 'line', 932
    find_lex $P670, "$past"
    unless_null $P670, vivify_554
    new $P670, "Undef"
  vivify_554:
    find_lex $P671, "$/"
    unless_null $P671, vivify_555
    $P671 = root_new ['parrot';'Hash']
  vivify_555:
    set $P672, $P671["OPER"]
    unless_null $P672, vivify_556
    $P672 = root_new ['parrot';'Hash']
  vivify_556:
    set $P673, $P672["O"]
    unless_null $P673, vivify_557
    $P673 = root_new ['parrot';'Hash']
  vivify_557:
    set $P674, $P673["pasttype"]
    unless_null $P674, vivify_558
    new $P674, "Undef"
  vivify_558:
    set $S675, $P674
    $P670."pasttype"($S675)
  if_665_end:
.annotate 'line', 934
    find_lex $P688, "$past"
    unless_null $P688, vivify_559
    new $P688, "Undef"
  vivify_559:
    $P689 = $P688."name"()
    if $P689, unless_687_end
    .const 'Sub' $P691 = "130_1304284961.094" 
    capture_lex $P691
    $P691()
  unless_687_end:
  unless_657_end:
.annotate 'line', 940
    find_lex $P714, "$key"
    unless_null $P714, vivify_567
    new $P714, "Undef"
  vivify_567:
    set $S715, $P714
    iseq $I716, $S715, "POSTFIX"
    if $I716, if_713
.annotate 'line', 942
    find_lex $P722, "$/"
    unless_null $P722, vivify_568
    new $P722, "Undef"
  vivify_568:
    $P723 = $P722."list"()
    defined $I724, $P723
    unless $I724, for_undef_569
    iter $P721, $P723
    new $P739, 'ExceptionHandler'
    set_label $P739, loop738_handler
    $P739."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P739
  loop738_test:
    unless $P721, loop738_done
    shift $P725, $P721
  loop738_redo:
    .const 'Sub' $P727 = "131_1304284961.094" 
    capture_lex $P727
    $P727($P725)
  loop738_next:
    goto loop738_test
  loop738_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P740, exception, 'type'
    eq $P740, .CONTROL_LOOP_NEXT, loop738_next
    eq $P740, .CONTROL_LOOP_REDO, loop738_redo
  loop738_done:
    pop_eh 
  for_undef_569:
.annotate 'line', 941
    goto if_713_end
  if_713:
.annotate 'line', 940
    find_lex $P717, "$past"
    unless_null $P717, vivify_573
    new $P717, "Undef"
  vivify_573:
    find_lex $P718, "$/"
    unless_null $P718, vivify_574
    $P718 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    set $P719, $P718[0]
    unless_null $P719, vivify_575
    new $P719, "Undef"
  vivify_575:
    $P720 = $P719."ast"()
    $P717."unshift"($P720)
  if_713_end:
.annotate 'line', 944
    find_lex $P741, "$/"
    find_lex $P742, "$past"
    unless_null $P742, vivify_576
    new $P742, "Undef"
  vivify_576:
    $P743 = $P741."!make"($P742)
.annotate 'line', 927
    .return ($P743)
  control_638:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P744, exception, "payload"
    .return ($P744)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block690"  :anon :subid("130_1304284961.094") :outer("129_1304284961.094")
.annotate 'line', 936
    new $P692, "Undef"
    .lex "$name", $P692
.annotate 'line', 935
    find_lex $P694, "$key"
    unless_null $P694, vivify_560
    new $P694, "Undef"
  vivify_560:
    set $S695, $P694
    iseq $I696, $S695, "LIST"
    unless $I696, if_693_end
    new $P697, "String"
    assign $P697, "infix"
    store_lex "$key", $P697
  if_693_end:
.annotate 'line', 936
    find_lex $P698, "$key"
    unless_null $P698, vivify_561
    new $P698, "Undef"
  vivify_561:
    set $S699, $P698
    downcase $S700, $S699
    new $P701, 'String'
    set $P701, $S700
    concat $P702, $P701, ":<"
    find_lex $P703, "$/"
    unless_null $P703, vivify_562
    $P703 = root_new ['parrot';'Hash']
  vivify_562:
    set $P704, $P703["OPER"]
    unless_null $P704, vivify_563
    $P704 = root_new ['parrot';'Hash']
  vivify_563:
    set $P705, $P704["sym"]
    unless_null $P705, vivify_564
    new $P705, "Undef"
  vivify_564:
    concat $P706, $P702, $P705
    concat $P707, $P706, ">"
    store_lex "$name", $P707
.annotate 'line', 937
    find_lex $P708, "$past"
    unless_null $P708, vivify_565
    new $P708, "Undef"
  vivify_565:
    new $P709, "String"
    assign $P709, "&"
    find_lex $P710, "$name"
    unless_null $P710, vivify_566
    new $P710, "Undef"
  vivify_566:
    concat $P711, $P709, $P710
    $P712 = $P708."name"($P711)
.annotate 'line', 934
    .return ($P712)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block726"  :anon :subid("131_1304284961.094") :outer("129_1304284961.094")
    .param pmc param_728
.annotate 'line', 942
    .lex "$_", param_728
    find_lex $P731, "$_"
    unless_null $P731, vivify_570
    new $P731, "Undef"
  vivify_570:
    $P732 = $P731."ast"()
    defined $I733, $P732
    if $I733, if_730
    new $P729, 'Integer'
    set $P729, $I733
    goto if_730_end
  if_730:
    find_lex $P734, "$past"
    unless_null $P734, vivify_571
    new $P734, "Undef"
  vivify_571:
    find_lex $P735, "$_"
    unless_null $P735, vivify_572
    new $P735, "Undef"
  vivify_572:
    $P736 = $P735."ast"()
    $P737 = $P734."push"($P736)
    set $P729, $P737
  if_730_end:
    .return ($P729)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("132_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_746
    .param pmc param_747
.annotate 'line', 947
    .lex "self", param_746
    .lex "$/", param_747
    find_lex $P748, "$/"
    find_lex $P749, "$/"
    unless_null $P749, vivify_577
    $P749 = root_new ['parrot';'Hash']
  vivify_577:
    set $P750, $P749["circumfix"]
    unless_null $P750, vivify_578
    new $P750, "Undef"
  vivify_578:
    $P751 = $P750."ast"()
    $P752 = $P748."!make"($P751)
    .return ($P752)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("133_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_754
    .param pmc param_755
.annotate 'line', 949
    .lex "self", param_754
    .lex "$/", param_755
    find_lex $P756, "$/"
    find_lex $P757, "$/"
    unless_null $P757, vivify_579
    $P757 = root_new ['parrot';'Hash']
  vivify_579:
    set $P758, $P757["term"]
    unless_null $P758, vivify_580
    new $P758, "Undef"
  vivify_580:
    $P759 = $P758."ast"()
    $P760 = $P756."!make"($P759)
    .return ($P760)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("134_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_762
    .param pmc param_763
.annotate 'line', 950
    .lex "self", param_762
    .lex "$/", param_763
    find_lex $P764, "$/"
    new $P765, "Undef"
    $P766 = $P764."!make"($P765)
    .return ($P766)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("135_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_768
    .param pmc param_769
.annotate 'line', 951
    .lex "self", param_768
    .lex "$/", param_769
    find_lex $P770, "$/"
    find_lex $P771, "$/"
    unless_null $P771, vivify_581
    $P771 = root_new ['parrot';'Hash']
  vivify_581:
    set $P772, $P771["term"]
    unless_null $P772, vivify_582
    new $P772, "Undef"
  vivify_582:
    $P773 = $P772."ast"()
    $P774 = $P770."!make"($P773)
    .return ($P774)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("136_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_776
    .param pmc param_777
.annotate 'line', 953
    .lex "self", param_776
    .lex "$/", param_777
    find_lex $P778, "$/"
    find_lex $P779, "$/"
    unless_null $P779, vivify_583
    $P779 = root_new ['parrot';'Hash']
  vivify_583:
    set $P780, $P779["VALUE"]
    unless_null $P780, vivify_584
    new $P780, "Undef"
  vivify_584:
    $P781 = $P780."ast"()
    $P782 = $P778."!make"($P781)
    .return ($P782)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("137_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_784
    .param pmc param_785
.annotate 'line', 955
    .lex "self", param_784
    .lex "$/", param_785
    find_lex $P786, "$/"
    find_lex $P787, "$/"
    unless_null $P787, vivify_585
    new $P787, "Undef"
  vivify_585:
    set $N788, $P787
    $P789 = $P786."!make"($N788)
    .return ($P789)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("138_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_791
    .param pmc param_792
.annotate 'line', 957
    .lex "self", param_791
    .lex "$/", param_792
    find_lex $P793, "$/"
    find_lex $P794, "$/"
    unless_null $P794, vivify_586
    new $P794, "Undef"
  vivify_586:
    $P795 = "string_to_int"($P794, 10)
    $P796 = $P793."!make"($P795)
    .return ($P796)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("139_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_798
    .param pmc param_799
.annotate 'line', 958
    .lex "self", param_798
    .lex "$/", param_799
    find_lex $P800, "$/"
    find_lex $P801, "$/"
    unless_null $P801, vivify_587
    new $P801, "Undef"
  vivify_587:
    $P802 = "string_to_int"($P801, 16)
    $P803 = $P800."!make"($P802)
    .return ($P803)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("140_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_805
    .param pmc param_806
.annotate 'line', 959
    .lex "self", param_805
    .lex "$/", param_806
    find_lex $P807, "$/"
    find_lex $P808, "$/"
    unless_null $P808, vivify_588
    new $P808, "Undef"
  vivify_588:
    $P809 = "string_to_int"($P808, 8)
    $P810 = $P807."!make"($P809)
    .return ($P810)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("141_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_812
    .param pmc param_813
.annotate 'line', 960
    .lex "self", param_812
    .lex "$/", param_813
    find_lex $P814, "$/"
    find_lex $P815, "$/"
    unless_null $P815, vivify_589
    new $P815, "Undef"
  vivify_589:
    $P816 = "string_to_int"($P815, 2)
    $P817 = $P814."!make"($P816)
    .return ($P817)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("142_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_819
    .param pmc param_820
.annotate 'line', 962
    .const 'Sub' $P839 = "143_1304284961.094" 
    capture_lex $P839
    .lex "self", param_819
    .lex "$/", param_820
.annotate 'line', 963
    new $P821, "Undef"
    .lex "$past", $P821
    find_lex $P822, "$/"
    unless_null $P822, vivify_590
    $P822 = root_new ['parrot';'Hash']
  vivify_590:
    set $P823, $P822["quote_delimited"]
    unless_null $P823, vivify_591
    new $P823, "Undef"
  vivify_591:
    $P824 = $P823."ast"()
    store_lex "$past", $P824
.annotate 'line', 964
    find_lex $P826, "$/"
    unless_null $P826, vivify_592
    new $P826, "Undef"
  vivify_592:
    $P827 = $P826."CURSOR"()
    $P828 = $P827."quotemod_check"("w")
    unless $P828, if_825_end
.annotate 'line', 965
    get_hll_global $P830, "GLOBAL"
    nqp_get_package_through_who $P831, $P830, "PAST"
    get_who $P832, $P831
    set $P833, $P832["Node"]
    find_lex $P834, "$past"
    unless_null $P834, vivify_593
    new $P834, "Undef"
  vivify_593:
    $P835 = $P833."ACCEPTS"($P834)
    if $P835, if_829
.annotate 'line', 968
    .const 'Sub' $P839 = "143_1304284961.094" 
    capture_lex $P839
    $P839()
    goto if_829_end
  if_829:
.annotate 'line', 966
    find_lex $P836, "$/"
    unless_null $P836, vivify_604
    new $P836, "Undef"
  vivify_604:
    $P837 = $P836."CURSOR"()
    $P837."panic"("Can't form :w list from non-constant strings (yet)")
  if_829_end:
  if_825_end:
.annotate 'line', 979
    get_hll_global $P878, "GLOBAL"
    nqp_get_package_through_who $P879, $P878, "PAST"
    get_who $P880, $P879
    set $P881, $P880["Node"]
    find_lex $P882, "$past"
    unless_null $P882, vivify_605
    new $P882, "Undef"
  vivify_605:
    $P883 = $P881."ACCEPTS"($P882)
    isfalse $I884, $P883
    unless $I884, if_877_end
.annotate 'line', 980
    get_hll_global $P885, "GLOBAL"
    nqp_get_package_through_who $P886, $P885, "PAST"
    get_who $P887, $P886
    set $P888, $P887["Val"]
    find_lex $P889, "$past"
    unless_null $P889, vivify_606
    new $P889, "Undef"
  vivify_606:
    set $S890, $P889
    $P891 = $P888."new"($S890 :named("value"))
    store_lex "$past", $P891
  if_877_end:
.annotate 'line', 982
    find_lex $P892, "$/"
    find_lex $P893, "$past"
    unless_null $P893, vivify_607
    new $P893, "Undef"
  vivify_607:
    $P894 = $P892."!make"($P893)
.annotate 'line', 962
    .return ($P894)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block838"  :anon :subid("143_1304284961.094") :outer("142_1304284961.094")
.annotate 'line', 968
    .const 'Sub' $P865 = "144_1304284961.094" 
    capture_lex $P865
.annotate 'line', 969
    $P840 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P840
    get_hll_global $P841, "GLOBAL"
    nqp_get_package_through_who $P842, $P841, "HLL"
    nqp_get_package_through_who $P843, $P842, "Grammar"
    get_who $P844, $P843
    set $P845, $P844["split_words"]
    find_lex $P846, "$/"
    unless_null $P846, vivify_594
    new $P846, "Undef"
  vivify_594:
    find_lex $P847, "$past"
    unless_null $P847, vivify_595
    new $P847, "Undef"
  vivify_595:
    $P848 = $P845($P846, $P847)
    store_lex "@words", $P848
.annotate 'line', 970
    find_lex $P851, "@words"
    unless_null $P851, vivify_596
    $P851 = root_new ['parrot';'ResizablePMCArray']
  vivify_596:
    set $N852, $P851
    isne $I853, $N852, 1.0
    if $I853, if_850
.annotate 'line', 975
    find_lex $P873, "@words"
    unless_null $P873, vivify_597
    $P873 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $P874, $P873[0]
    unless_null $P874, vivify_598
    new $P874, "Undef"
  vivify_598:
    set $S875, $P874
    new $P876, 'String'
    set $P876, $S875
    store_lex "$past", $P876
.annotate 'line', 974
    set $P849, $P876
.annotate 'line', 970
    goto if_850_end
  if_850:
.annotate 'line', 971
    get_hll_global $P854, "GLOBAL"
    nqp_get_package_through_who $P855, $P854, "PAST"
    get_who $P856, $P855
    set $P857, $P856["Op"]
    find_lex $P858, "$/"
    unless_null $P858, vivify_599
    new $P858, "Undef"
  vivify_599:
    $P859 = $P857."new"("list" :named("pasttype"), $P858 :named("node"))
    store_lex "$past", $P859
.annotate 'line', 972
    find_lex $P861, "@words"
    unless_null $P861, vivify_600
    $P861 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
    defined $I862, $P861
    unless $I862, for_undef_601
    iter $P860, $P861
    new $P871, 'ExceptionHandler'
    set_label $P871, loop870_handler
    $P871."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P871
  loop870_test:
    unless $P860, loop870_done
    shift $P863, $P860
  loop870_redo:
    .const 'Sub' $P865 = "144_1304284961.094" 
    capture_lex $P865
    $P865($P863)
  loop870_next:
    goto loop870_test
  loop870_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P872, exception, 'type'
    eq $P872, .CONTROL_LOOP_NEXT, loop870_next
    eq $P872, .CONTROL_LOOP_REDO, loop870_redo
  loop870_done:
    pop_eh 
  for_undef_601:
.annotate 'line', 970
    set $P849, $P860
  if_850_end:
.annotate 'line', 968
    .return ($P849)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block864"  :anon :subid("144_1304284961.094") :outer("143_1304284961.094")
    .param pmc param_866
.annotate 'line', 972
    .lex "$_", param_866
    find_lex $P867, "$past"
    unless_null $P867, vivify_602
    new $P867, "Undef"
  vivify_602:
    find_lex $P868, "$_"
    unless_null $P868, vivify_603
    new $P868, "Undef"
  vivify_603:
    $P869 = $P867."push"($P868)
    .return ($P869)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("145_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_896
    .param pmc param_897
.annotate 'line', 985
    .const 'Sub' $P909 = "146_1304284961.094" 
    capture_lex $P909
    .lex "self", param_896
    .lex "$/", param_897
.annotate 'line', 986
    $P898 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P898
.annotate 'line', 987
    new $P899, "Undef"
    .lex "$lastlit", $P899
.annotate 'line', 1003
    new $P900, "Undef"
    .lex "$past", $P900
.annotate 'line', 985
    find_lex $P901, "@parts"
    unless_null $P901, vivify_608
    $P901 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
.annotate 'line', 987
    new $P902, "String"
    assign $P902, ""
    store_lex "$lastlit", $P902
.annotate 'line', 988
    find_lex $P904, "$/"
    unless_null $P904, vivify_609
    $P904 = root_new ['parrot';'Hash']
  vivify_609:
    set $P905, $P904["quote_atom"]
    unless_null $P905, vivify_610
    new $P905, "Undef"
  vivify_610:
    defined $I906, $P905
    unless $I906, for_undef_611
    iter $P903, $P905
    new $P948, 'ExceptionHandler'
    set_label $P948, loop947_handler
    $P948."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P948
  loop947_test:
    unless $P903, loop947_done
    shift $P907, $P903
  loop947_redo:
    .const 'Sub' $P909 = "146_1304284961.094" 
    capture_lex $P909
    $P909($P907)
  loop947_next:
    goto loop947_test
  loop947_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P949, exception, 'type'
    eq $P949, .CONTROL_LOOP_NEXT, loop947_next
    eq $P949, .CONTROL_LOOP_REDO, loop947_redo
  loop947_done:
    pop_eh 
  for_undef_611:
.annotate 'line', 1002
    find_lex $P951, "$lastlit"
    unless_null $P951, vivify_624
    new $P951, "Undef"
  vivify_624:
    set $S952, $P951
    isgt $I953, $S952, ""
    unless $I953, if_950_end
    find_lex $P954, "@parts"
    unless_null $P954, vivify_625
    $P954 = root_new ['parrot';'ResizablePMCArray']
  vivify_625:
    find_lex $P955, "$lastlit"
    unless_null $P955, vivify_626
    new $P955, "Undef"
  vivify_626:
    $P954."push"($P955)
  if_950_end:
.annotate 'line', 1003
    find_lex $P958, "@parts"
    unless_null $P958, vivify_627
    $P958 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    if $P958, if_957
    new $P961, "String"
    assign $P961, ""
    set $P956, $P961
    goto if_957_end
  if_957:
    find_lex $P959, "@parts"
    unless_null $P959, vivify_628
    $P959 = root_new ['parrot';'ResizablePMCArray']
  vivify_628:
    $P960 = $P959."shift"()
    set $P956, $P960
  if_957_end:
    store_lex "$past", $P956
.annotate 'line', 1004
    new $P972, 'ExceptionHandler'
    set_label $P972, loop971_handler
    $P972."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P972
  loop971_test:
    find_lex $P962, "@parts"
    unless_null $P962, vivify_629
    $P962 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    unless $P962, loop971_done
  loop971_redo:
.annotate 'line', 1005
    get_hll_global $P963, "GLOBAL"
    nqp_get_package_through_who $P964, $P963, "PAST"
    get_who $P965, $P964
    set $P966, $P965["Op"]
    find_lex $P967, "$past"
    unless_null $P967, vivify_630
    new $P967, "Undef"
  vivify_630:
    find_lex $P968, "@parts"
    unless_null $P968, vivify_631
    $P968 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    $P969 = $P968."shift"()
    $P970 = $P966."new"($P967, $P969, "concat" :named("pirop"))
    store_lex "$past", $P970
  loop971_next:
.annotate 'line', 1004
    goto loop971_test
  loop971_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P973, exception, 'type'
    eq $P973, .CONTROL_LOOP_NEXT, loop971_next
    eq $P973, .CONTROL_LOOP_REDO, loop971_redo
  loop971_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P974, "$/"
    find_lex $P975, "$past"
    unless_null $P975, vivify_632
    new $P975, "Undef"
  vivify_632:
    $P976 = $P974."!make"($P975)
.annotate 'line', 985
    .return ($P976)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block908"  :anon :subid("146_1304284961.094") :outer("145_1304284961.094")
    .param pmc param_911
.annotate 'line', 989
    new $P910, "Undef"
    .lex "$ast", $P910
    .lex "$_", param_911
    find_lex $P912, "$_"
    unless_null $P912, vivify_612
    new $P912, "Undef"
  vivify_612:
    $P913 = $P912."ast"()
    store_lex "$ast", $P913
.annotate 'line', 990
    get_hll_global $P916, "GLOBAL"
    nqp_get_package_through_who $P917, $P916, "PAST"
    get_who $P918, $P917
    set $P919, $P918["Node"]
    find_lex $P920, "$ast"
    unless_null $P920, vivify_613
    new $P920, "Undef"
  vivify_613:
    $P921 = $P919."ACCEPTS"($P920)
    isfalse $I922, $P921
    if $I922, if_915
.annotate 'line', 993
    find_lex $P928, "$ast"
    unless_null $P928, vivify_614
    new $P928, "Undef"
  vivify_614:
    get_hll_global $P929, "GLOBAL"
    nqp_get_package_through_who $P930, $P929, "PAST"
    get_who $P931, $P930
    set $P932, $P931["Val"]
    $P933 = $P928."isa"($P932)
    if $P933, if_927
.annotate 'line', 997
    find_lex $P939, "$lastlit"
    unless_null $P939, vivify_615
    new $P939, "Undef"
  vivify_615:
    set $S940, $P939
    isgt $I941, $S940, ""
    unless $I941, if_938_end
    find_lex $P942, "@parts"
    unless_null $P942, vivify_616
    $P942 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    find_lex $P943, "$lastlit"
    unless_null $P943, vivify_617
    new $P943, "Undef"
  vivify_617:
    $P942."push"($P943)
  if_938_end:
.annotate 'line', 998
    find_lex $P944, "@parts"
    unless_null $P944, vivify_618
    $P944 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    find_lex $P945, "$ast"
    unless_null $P945, vivify_619
    new $P945, "Undef"
  vivify_619:
    $P944."push"($P945)
.annotate 'line', 999
    new $P946, "String"
    assign $P946, ""
    store_lex "$lastlit", $P946
.annotate 'line', 996
    set $P926, $P946
.annotate 'line', 993
    goto if_927_end
  if_927:
.annotate 'line', 994
    find_lex $P934, "$lastlit"
    unless_null $P934, vivify_620
    new $P934, "Undef"
  vivify_620:
    find_lex $P935, "$ast"
    unless_null $P935, vivify_621
    new $P935, "Undef"
  vivify_621:
    $S936 = $P935."value"()
    concat $P937, $P934, $S936
    store_lex "$lastlit", $P937
.annotate 'line', 993
    set $P926, $P937
  if_927_end:
    set $P914, $P926
.annotate 'line', 990
    goto if_915_end
  if_915:
.annotate 'line', 991
    find_lex $P923, "$lastlit"
    unless_null $P923, vivify_622
    new $P923, "Undef"
  vivify_622:
    find_lex $P924, "$ast"
    unless_null $P924, vivify_623
    new $P924, "Undef"
  vivify_623:
    concat $P925, $P923, $P924
    store_lex "$lastlit", $P925
.annotate 'line', 990
    set $P914, $P925
  if_915_end:
.annotate 'line', 988
    .return ($P914)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("147_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_978
    .param pmc param_979
.annotate 'line', 1010
    .lex "self", param_978
    .lex "$/", param_979
.annotate 'line', 1011
    find_lex $P980, "$/"
    find_lex $P983, "$/"
    unless_null $P983, vivify_633
    $P983 = root_new ['parrot';'Hash']
  vivify_633:
    set $P984, $P983["quote_escape"]
    unless_null $P984, vivify_634
    new $P984, "Undef"
  vivify_634:
    if $P984, if_982
    find_lex $P988, "$/"
    unless_null $P988, vivify_635
    new $P988, "Undef"
  vivify_635:
    set $S989, $P988
    new $P981, 'String'
    set $P981, $S989
    goto if_982_end
  if_982:
    find_lex $P985, "$/"
    unless_null $P985, vivify_636
    $P985 = root_new ['parrot';'Hash']
  vivify_636:
    set $P986, $P985["quote_escape"]
    unless_null $P986, vivify_637
    new $P986, "Undef"
  vivify_637:
    $P987 = $P986."ast"()
    set $P981, $P987
  if_982_end:
    $P990 = $P980."!make"($P981)
.annotate 'line', 1010
    .return ($P990)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("148_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_992
    .param pmc param_993
.annotate 'line', 1014
    .lex "self", param_992
    .lex "$/", param_993
    find_lex $P994, "$/"
    $P995 = $P994."!make"("\\")
    .return ($P995)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("149_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_997
    .param pmc param_998
.annotate 'line', 1015
    .lex "self", param_997
    .lex "$/", param_998
    find_lex $P999, "$/"
    find_lex $P1000, "$/"
    unless_null $P1000, vivify_638
    $P1000 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1001, $P1000["stopper"]
    unless_null $P1001, vivify_639
    new $P1001, "Undef"
  vivify_639:
    set $S1002, $P1001
    $P1003 = $P999."!make"($S1002)
    .return ($P1003)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("150_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1005
    .param pmc param_1006
.annotate 'line', 1017
    .lex "self", param_1005
    .lex "$/", param_1006
    find_lex $P1007, "$/"
    $P1008 = $P1007."!make"("\b")
    .return ($P1008)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("151_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1010
    .param pmc param_1011
.annotate 'line', 1018
    .lex "self", param_1010
    .lex "$/", param_1011
    find_lex $P1012, "$/"
    $P1013 = $P1012."!make"("\n")
    .return ($P1013)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("152_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1015
    .param pmc param_1016
.annotate 'line', 1019
    .lex "self", param_1015
    .lex "$/", param_1016
    find_lex $P1017, "$/"
    $P1018 = $P1017."!make"("\r")
    .return ($P1018)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("153_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1020
    .param pmc param_1021
.annotate 'line', 1020
    .lex "self", param_1020
    .lex "$/", param_1021
    find_lex $P1022, "$/"
    $P1023 = $P1022."!make"("\t")
    .return ($P1023)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("154_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1025
    .param pmc param_1026
.annotate 'line', 1021
    .lex "self", param_1025
    .lex "$/", param_1026
    find_lex $P1027, "$/"
    $P1028 = $P1027."!make"("\f")
    .return ($P1028)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("155_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1030
    .param pmc param_1031
.annotate 'line', 1022
    .lex "self", param_1030
    .lex "$/", param_1031
    find_lex $P1032, "$/"
    $P1033 = $P1032."!make"("\e")
    .return ($P1033)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("156_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1035
    .param pmc param_1036
.annotate 'line', 1024
    .lex "self", param_1035
    .lex "$/", param_1036
.annotate 'line', 1025
    find_lex $P1037, "$/"
    find_lex $P1040, "$/"
    unless_null $P1040, vivify_640
    $P1040 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1041, $P1040["hexint"]
    unless_null $P1041, vivify_641
    new $P1041, "Undef"
  vivify_641:
    if $P1041, if_1039
    find_lex $P1044, "$/"
    unless_null $P1044, vivify_642
    $P1044 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1045, $P1044["hexints"]
    unless_null $P1045, vivify_643
    $P1045 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1046, $P1045["hexint"]
    unless_null $P1046, vivify_644
    new $P1046, "Undef"
  vivify_644:
    set $P1038, $P1046
    goto if_1039_end
  if_1039:
    find_lex $P1042, "$/"
    unless_null $P1042, vivify_645
    $P1042 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1043, $P1042["hexint"]
    unless_null $P1043, vivify_646
    new $P1043, "Undef"
  vivify_646:
    set $P1038, $P1043
  if_1039_end:
    $P1047 = "ints_to_string"($P1038)
    $P1048 = $P1037."!make"($P1047)
.annotate 'line', 1024
    .return ($P1048)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("157_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1050
    .param pmc param_1051
.annotate 'line', 1028
    .lex "self", param_1050
    .lex "$/", param_1051
.annotate 'line', 1029
    find_lex $P1052, "$/"
    find_lex $P1055, "$/"
    unless_null $P1055, vivify_647
    $P1055 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1056, $P1055["octint"]
    unless_null $P1056, vivify_648
    new $P1056, "Undef"
  vivify_648:
    if $P1056, if_1054
    find_lex $P1059, "$/"
    unless_null $P1059, vivify_649
    $P1059 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1060, $P1059["octints"]
    unless_null $P1060, vivify_650
    $P1060 = root_new ['parrot';'Hash']
  vivify_650:
    set $P1061, $P1060["octint"]
    unless_null $P1061, vivify_651
    new $P1061, "Undef"
  vivify_651:
    set $P1053, $P1061
    goto if_1054_end
  if_1054:
    find_lex $P1057, "$/"
    unless_null $P1057, vivify_652
    $P1057 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1058, $P1057["octint"]
    unless_null $P1058, vivify_653
    new $P1058, "Undef"
  vivify_653:
    set $P1053, $P1058
  if_1054_end:
    $P1062 = "ints_to_string"($P1053)
    $P1063 = $P1052."!make"($P1062)
.annotate 'line', 1028
    .return ($P1063)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("158_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1065
    .param pmc param_1066
.annotate 'line', 1032
    .lex "self", param_1065
    .lex "$/", param_1066
.annotate 'line', 1033
    find_lex $P1067, "$/"
    find_lex $P1068, "$/"
    unless_null $P1068, vivify_654
    $P1068 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1069, $P1068["charspec"]
    unless_null $P1069, vivify_655
    new $P1069, "Undef"
  vivify_655:
    $P1070 = $P1069."ast"()
    $P1071 = $P1067."!make"($P1070)
.annotate 'line', 1032
    .return ($P1071)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("159_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1073
    .param pmc param_1074
.annotate 'line', 1036
    .lex "self", param_1073
    .lex "$/", param_1074
.annotate 'line', 1037
    find_lex $P1075, "$/"
    $P1076 = $P1075."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1076)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("160_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1078
    .param pmc param_1079
.annotate 'line', 1040
    .lex "self", param_1078
    .lex "$/", param_1079
.annotate 'line', 1041
    find_lex $P1080, "$/"
    find_lex $P1083, "$/"
    unless_null $P1083, vivify_656
    $P1083 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1084, $P1083["textq"]
    unless_null $P1084, vivify_657
    new $P1084, "Undef"
  vivify_657:
    if $P1084, if_1082
    find_lex $P1090, "$/"
    unless_null $P1090, vivify_658
    $P1090 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1091, $P1090["textqq"]
    unless_null $P1091, vivify_659
    new $P1091, "Undef"
  vivify_659:
    $P1092 = $P1091."Str"()
    set $P1081, $P1092
    goto if_1082_end
  if_1082:
    new $P1085, "String"
    assign $P1085, "\\"
    find_lex $P1086, "$/"
    unless_null $P1086, vivify_660
    $P1086 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1087, $P1086["textq"]
    unless_null $P1087, vivify_661
    new $P1087, "Undef"
  vivify_661:
    $S1088 = $P1087."Str"()
    concat $P1089, $P1085, $S1088
    set $P1081, $P1089
  if_1082_end:
    $P1093 = $P1080."!make"($P1081)
.annotate 'line', 1040
    .return ($P1093)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("161_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1095
    .param pmc param_1096
.annotate 'line', 1044
    .lex "self", param_1095
    .lex "$/", param_1096
.annotate 'line', 1045
    new $P1097, "Undef"
    .lex "$codepoint", $P1097
.annotate 'line', 1046
    find_lex $P1100, "$/"
    unless_null $P1100, vivify_662
    $P1100 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1101, $P1100["integer"]
    unless_null $P1101, vivify_663
    new $P1101, "Undef"
  vivify_663:
    if $P1101, if_1099
.annotate 'line', 1047
    find_lex $P1105, "$/"
    unless_null $P1105, vivify_664
    new $P1105, "Undef"
  vivify_664:
    set $S1106, $P1105
    find_codepoint $I1107, $S1106
    new $P1098, 'Integer'
    set $P1098, $I1107
.annotate 'line', 1046
    goto if_1099_end
  if_1099:
    find_lex $P1102, "$/"
    unless_null $P1102, vivify_665
    $P1102 = root_new ['parrot';'Hash']
  vivify_665:
    set $P1103, $P1102["integer"]
    unless_null $P1103, vivify_666
    new $P1103, "Undef"
  vivify_666:
    $P1104 = $P1103."ast"()
    set $P1098, $P1104
  if_1099_end:
    store_lex "$codepoint", $P1098
.annotate 'line', 1048
    find_lex $P1109, "$codepoint"
    unless_null $P1109, vivify_667
    new $P1109, "Undef"
  vivify_667:
    set $N1110, $P1109
    islt $I1111, $N1110, 0.0
    unless $I1111, if_1108_end
    find_lex $P1112, "$/"
    unless_null $P1112, vivify_668
    new $P1112, "Undef"
  vivify_668:
    $P1113 = $P1112."CURSOR"()
    new $P1114, 'String'
    set $P1114, "Unrecognized character name "
    find_lex $P1115, "$/"
    unless_null $P1115, vivify_669
    new $P1115, "Undef"
  vivify_669:
    concat $P1116, $P1114, $P1115
    $P1113."panic"($P1116)
  if_1108_end:
.annotate 'line', 1049
    find_lex $P1117, "$/"
    find_lex $P1118, "$codepoint"
    unless_null $P1118, vivify_670
    new $P1118, "Undef"
  vivify_670:
    set $I1119, $P1118
    chr $S1120, $I1119
    $P1121 = $P1117."!make"($S1120)
.annotate 'line', 1044
    .return ($P1121)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("162_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1123
    .param pmc param_1124
.annotate 'line', 1052
    .const 'Sub' $P1133 = "163_1304284961.094" 
    capture_lex $P1133
    .lex "self", param_1123
    .lex "$/", param_1124
.annotate 'line', 1053
    new $P1125, "Undef"
    .lex "$str", $P1125
    new $P1126, "String"
    assign $P1126, ""
    store_lex "$str", $P1126
.annotate 'line', 1054
    find_lex $P1128, "$/"
    unless_null $P1128, vivify_671
    $P1128 = root_new ['parrot';'Hash']
  vivify_671:
    set $P1129, $P1128["charname"]
    unless_null $P1129, vivify_672
    new $P1129, "Undef"
  vivify_672:
    defined $I1130, $P1129
    unless $I1130, for_undef_673
    iter $P1127, $P1129
    new $P1140, 'ExceptionHandler'
    set_label $P1140, loop1139_handler
    $P1140."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1140
  loop1139_test:
    unless $P1127, loop1139_done
    shift $P1131, $P1127
  loop1139_redo:
    .const 'Sub' $P1133 = "163_1304284961.094" 
    capture_lex $P1133
    $P1133($P1131)
  loop1139_next:
    goto loop1139_test
  loop1139_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1141, exception, 'type'
    eq $P1141, .CONTROL_LOOP_NEXT, loop1139_next
    eq $P1141, .CONTROL_LOOP_REDO, loop1139_redo
  loop1139_done:
    pop_eh 
  for_undef_673:
.annotate 'line', 1055
    find_lex $P1142, "$/"
    find_lex $P1143, "$str"
    unless_null $P1143, vivify_676
    new $P1143, "Undef"
  vivify_676:
    $P1144 = $P1142."!make"($P1143)
.annotate 'line', 1052
    .return ($P1144)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1132"  :anon :subid("163_1304284961.094") :outer("162_1304284961.094")
    .param pmc param_1134
.annotate 'line', 1054
    .lex "$_", param_1134
    find_lex $P1135, "$str"
    unless_null $P1135, vivify_674
    new $P1135, "Undef"
  vivify_674:
    find_lex $P1136, "$_"
    unless_null $P1136, vivify_675
    new $P1136, "Undef"
  vivify_675:
    $S1137 = $P1136."ast"()
    concat $P1138, $P1135, $S1137
    store_lex "$str", $P1138
    .return ($P1138)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("164_1304284961.094") :outer("119_1304284961.094")
    .param pmc param_1146
    .param pmc param_1147
.annotate 'line', 1058
    .lex "self", param_1146
    .lex "$/", param_1147
.annotate 'line', 1059
    find_lex $P1148, "$/"
    find_lex $P1151, "$/"
    unless_null $P1151, vivify_677
    $P1151 = root_new ['parrot';'Hash']
  vivify_677:
    set $P1152, $P1151["charnames"]
    unless_null $P1152, vivify_678
    new $P1152, "Undef"
  vivify_678:
    if $P1152, if_1150
    find_lex $P1156, "$/"
    unless_null $P1156, vivify_679
    new $P1156, "Undef"
  vivify_679:
    $I1157 = "string_to_int"($P1156, 10)
    chr $S1158, $I1157
    new $P1149, 'String'
    set $P1149, $S1158
    goto if_1150_end
  if_1150:
    find_lex $P1153, "$/"
    unless_null $P1153, vivify_680
    $P1153 = root_new ['parrot';'Hash']
  vivify_680:
    set $P1154, $P1153["charnames"]
    unless_null $P1154, vivify_681
    new $P1154, "Undef"
  vivify_681:
    $P1155 = $P1154."ast"()
    set $P1149, $P1155
  if_1150_end:
    $P1159 = $P1148."!make"($P1149)
.annotate 'line', 1058
    .return ($P1159)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1161"  :subid("165_1304284961.094") :outer("10_1304284961.094")
.annotate 'line', 1072
    .const 'Sub' $P2322 = "230_1304284961.094" 
    capture_lex $P2322
    .const 'Sub' $P2269 = "228_1304284961.094" 
    capture_lex $P2269
    .const 'Sub' $P2196 = "225_1304284961.094" 
    capture_lex $P2196
    .const 'Sub' $P2166 = "223_1304284961.094" 
    capture_lex $P2166
    .const 'Sub' $P2161 = "222_1304284961.094" 
    capture_lex $P2161
    .const 'Sub' $P2151 = "221_1304284961.094" 
    capture_lex $P2151
    .const 'Sub' $P2122 = "219_1304284961.094" 
    capture_lex $P2122
    .const 'Sub' $P2113 = "218_1304284961.094" 
    capture_lex $P2113
    .const 'Sub' $P2105 = "217_1304284961.094" 
    capture_lex $P2105
    .const 'Sub' $P2097 = "216_1304284961.094" 
    capture_lex $P2097
    .const 'Sub' $P2093 = "215_1304284961.094" 
    capture_lex $P2093
    .const 'Sub' $P2089 = "214_1304284961.094" 
    capture_lex $P2089
    .const 'Sub' $P2020 = "212_1304284961.094" 
    capture_lex $P2020
    .const 'Sub' $P1924 = "208_1304284961.094" 
    capture_lex $P1924
    .const 'Sub' $P1884 = "205_1304284961.094" 
    capture_lex $P1884
    .const 'Sub' $P1836 = "203_1304284961.094" 
    capture_lex $P1836
    .const 'Sub' $P1823 = "202_1304284961.094" 
    capture_lex $P1823
    .const 'Sub' $P1810 = "201_1304284961.094" 
    capture_lex $P1810
    .const 'Sub' $P1797 = "200_1304284961.094" 
    capture_lex $P1797
    .const 'Sub' $P1784 = "199_1304284961.094" 
    capture_lex $P1784
    .const 'Sub' $P1771 = "198_1304284961.094" 
    capture_lex $P1771
    .const 'Sub' $P1758 = "197_1304284961.094" 
    capture_lex $P1758
    .const 'Sub' $P1745 = "196_1304284961.094" 
    capture_lex $P1745
    .const 'Sub' $P1732 = "195_1304284961.094" 
    capture_lex $P1732
    .const 'Sub' $P1727 = "194_1304284961.094" 
    capture_lex $P1727
    .const 'Sub' $P1723 = "193_1304284961.094" 
    capture_lex $P1723
    .const 'Sub' $P1683 = "191_1304284961.094" 
    capture_lex $P1683
    .const 'Sub' $P1524 = "184_1304284961.094" 
    capture_lex $P1524
    .const 'Sub' $P1509 = "183_1304284961.094" 
    capture_lex $P1509
    .const 'Sub' $P1416 = "178_1304284961.094" 
    capture_lex $P1416
    .const 'Sub' $P1383 = "176_1304284961.094" 
    capture_lex $P1383
    .const 'Sub' $P1368 = "175_1304284961.094" 
    capture_lex $P1368
    .const 'Sub' $P1353 = "174_1304284961.094" 
    capture_lex $P1353
    .const 'Sub' $P1266 = "171_1304284961.094" 
    capture_lex $P1266
    .const 'Sub' $P1207 = "169_1304284961.094" 
    capture_lex $P1207
    .const 'Sub' $P1200 = "168_1304284961.094" 
    capture_lex $P1200
    .const 'Sub' $P1180 = "167_1304284961.094" 
    capture_lex $P1180
    .const 'Sub' $P1163 = "166_1304284961.094" 
    capture_lex $P1163
.annotate 'line', 1132
    .const 'Sub' $P1163 = "166_1304284961.094" 
    newclosure $P1176, $P1163
    .lex "value_type", $P1176
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1177
    .lex "$?CLASS", $P1178
.annotate 'line', 1094
    .const 'Sub' $P1180 = "167_1304284961.094" 
    capture_lex $P1180
    $P1180()
.annotate 'line', 1072
    find_lex $P1194, "$?PACKAGE"
    get_who $P1195, $P1194
    set $P1196, $P1195["$interactive_ctx"]
    unless_null $P1196, vivify_688
    new $P1196, "Undef"
  vivify_688:
    find_lex $P1197, "$?PACKAGE"
    get_who $P1198, $P1197
    set $P1199, $P1198["%interactive_pad"]
    unless_null $P1199, vivify_689
    $P1199 = root_new ['parrot';'Hash']
  vivify_689:
.annotate 'line', 1112
    find_lex $P1265, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2322 = "230_1304284961.094" 
    newclosure $P2328, $P2322
.annotate 'line', 1072
    .return ($P2328)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("166_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1164
.annotate 'line', 1132
    .lex "$value", param_1164
.annotate 'line', 1133
    find_lex $P1167, "$value"
    unless_null $P1167, vivify_682
    new $P1167, "Undef"
  vivify_682:
    isa $I1168, $P1167, "NameSpace"
    if $I1168, if_1166
.annotate 'line', 1135
    find_lex $P1172, "$value"
    unless_null $P1172, vivify_683
    new $P1172, "Undef"
  vivify_683:
    isa $I1173, $P1172, "Sub"
    if $I1173, if_1171
    new $P1175, "String"
    assign $P1175, "var"
    set $P1170, $P1175
    goto if_1171_end
  if_1171:
    new $P1174, "String"
    assign $P1174, "sub"
    set $P1170, $P1174
  if_1171_end:
    set $P1165, $P1170
.annotate 'line', 1133
    goto if_1166_end
  if_1166:
    new $P1169, "String"
    assign $P1169, "namespace"
    set $P1165, $P1169
  if_1166_end:
.annotate 'line', 1132
    .return ($P1165)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1179"  :anon :subid("167_1304284961.094") :outer("165_1304284961.094")
.annotate 'line', 1099
    $P1181 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1181
.annotate 'line', 1096
    getinterp $P1182
    set $P1183, $P1182["context"]
    unless_null $P1183, vivify_684
    new $P1183, "Undef"
  vivify_684:
    find_lex $P1184, "$?PACKAGE"
    get_who $P1185, $P1184
    set $P1185["$interactive_ctx"], $P1183
    find_lex $P1186, "%pad_contents"
    unless_null $P1186, vivify_685
    $P1186 = root_new ['parrot';'Hash']
  vivify_685:
.annotate 'line', 1101
    find_lex $P1187, "$?PACKAGE"
    get_who $P1188, $P1187
    set $P1189, $P1188["$interactive_ctx"]
    unless_null $P1189, vivify_686
    new $P1189, "Undef"
  vivify_686:
    getattribute $P1190, $P1189, "lex_pad"
    find_lex $P1191, "%pad_contents"
    unless_null $P1191, vivify_687
    $P1191 = root_new ['parrot';'Hash']
  vivify_687:
    copy $P1190, $P1191
.annotate 'line', 1100
    find_lex $P1192, "$?PACKAGE"
    get_who $P1193, $P1192
    set $P1193["%interactive_pad"], $P1190
.annotate 'line', 1094
    .return ($P1190)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("168_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1201
.annotate 'line', 1106
    .lex "self", param_1201
.annotate 'line', 1107
    new $P1202, "Undef"
    .lex "$obj", $P1202
    find_lex $P1203, "self"
    repr_instance_of $P1204, $P1203
    store_lex "$obj", $P1204
.annotate 'line', 1108
    find_lex $P1205, "$obj"
    unless_null $P1205, vivify_690
    new $P1205, "Undef"
  vivify_690:
    $P1205."BUILD"()
    find_lex $P1206, "$obj"
    unless_null $P1206, vivify_691
    new $P1206, "Undef"
  vivify_691:
.annotate 'line', 1106
    .return ($P1206)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("169_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1208
.annotate 'line', 1112
    .const 'Sub' $P1229 = "170_1304284961.094" 
    capture_lex $P1229
    .lex "self", param_1208
.annotate 'line', 1122
    new $P1209, "Undef"
    .lex "$config_hash_idx", $P1209
.annotate 'line', 1126
    $P1210 = root_new ['parrot';'Hash']
    .lex "%config", $P1210
.annotate 'line', 1127
    new $P1211, "Undef"
    .lex "$version", $P1211
.annotate 'line', 1128
    new $P1212, "Undef"
    .lex "$revision", $P1212
.annotate 'line', 1114
    split $P1213, " ", "parse past post pir evalpmc"
    find_lex $P1214, "self"
    find_lex $P1215, "$?CLASS"
    setattribute $P1214, $P1215, "@!stages", $P1213
.annotate 'line', 1117
    split $P1216, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1217, "self"
    find_lex $P1218, "$?CLASS"
    setattribute $P1217, $P1218, "@!cmdoptions", $P1216
.annotate 'line', 1118
    new $P1219, "String"
    assign $P1219, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1220, "self"
    find_lex $P1221, "$?CLASS"
    setattribute $P1220, $P1221, "$!usage", $P1219
.annotate 'line', 1119
    find_lex $P1223, "self"
    find_lex $P1224, "$?CLASS"
    getattribute $P1225, $P1223, $P1224, "@!cmdoptions"
    unless_null $P1225, vivify_692
    $P1225 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    defined $I1226, $P1225
    unless $I1226, for_undef_693
    iter $P1222, $P1225
    new $P1242, 'ExceptionHandler'
    set_label $P1242, loop1241_handler
    $P1242."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1242
  loop1241_test:
    unless $P1222, loop1241_done
    shift $P1227, $P1222
  loop1241_redo:
    .const 'Sub' $P1229 = "170_1304284961.094" 
    capture_lex $P1229
    $P1229($P1227)
  loop1241_next:
    goto loop1241_test
  loop1241_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1243, exception, 'type'
    eq $P1243, .CONTROL_LOOP_NEXT, loop1241_next
    eq $P1243, .CONTROL_LOOP_REDO, loop1241_redo
  loop1241_done:
    pop_eh 
  for_undef_693:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1244 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1244
.annotate 'line', 1126
    find_lex $P1245, "$config_hash_idx"
    unless_null $P1245, vivify_696
    new $P1245, "Undef"
  vivify_696:
    set $I1246, $P1245
    getinterp $P1247
    set $P1248, $P1247[$I1246]
    unless_null $P1248, vivify_697
    new $P1248, "Undef"
  vivify_697:
    store_lex "%config", $P1248
.annotate 'line', 1127
    find_lex $P1249, "%config"
    unless_null $P1249, vivify_698
    $P1249 = root_new ['parrot';'Hash']
  vivify_698:
    set $P1250, $P1249["VERSION"]
    unless_null $P1250, vivify_699
    new $P1250, "Undef"
  vivify_699:
    store_lex "$version", $P1250
.annotate 'line', 1128
    find_lex $P1252, "%config"
    unless_null $P1252, vivify_700
    $P1252 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1253, $P1252["git_describe"]
    unless_null $P1253, vivify_701
    new $P1253, "Undef"
  vivify_701:
    set $P1251, $P1253
    defined $I1255, $P1251
    if $I1255, default_1254
    new $P1256, "String"
    assign $P1256, "(unknown)"
    set $P1251, $P1256
  default_1254:
    store_lex "$revision", $P1251
.annotate 'line', 1129
    new $P1257, 'String'
    set $P1257, "This compiler is built with NQP, parrot "
    find_lex $P1258, "$version"
    unless_null $P1258, vivify_702
    new $P1258, "Undef"
  vivify_702:
    concat $P1259, $P1257, $P1258
    concat $P1260, $P1259, ", revision "
    find_lex $P1261, "$revision"
    unless_null $P1261, vivify_703
    new $P1261, "Undef"
  vivify_703:
    concat $P1262, $P1260, $P1261
    find_lex $P1263, "self"
    find_lex $P1264, "$?CLASS"
    setattribute $P1263, $P1264, "$!version", $P1262
.annotate 'line', 1112
    .return ($P1262)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1228"  :anon :subid("170_1304284961.094") :outer("169_1304284961.094")
    .param pmc param_1230
.annotate 'line', 1119
    .lex "$_", param_1230
.annotate 'line', 1120
    find_lex $P1231, "self"
    find_lex $P1232, "$?CLASS"
    getattribute $P1233, $P1231, $P1232, "$!usage"
    unless_null $P1233, vivify_694
    new $P1233, "Undef"
  vivify_694:
    new $P1234, 'String'
    set $P1234, "    "
    find_lex $P1235, "$_"
    unless_null $P1235, vivify_695
    new $P1235, "Undef"
  vivify_695:
    concat $P1236, $P1234, $P1235
    concat $P1237, $P1236, "\n"
    concat $P1238, $P1233, $P1237
    find_lex $P1239, "self"
    find_lex $P1240, "$?CLASS"
    setattribute $P1239, $P1240, "$!usage", $P1238
.annotate 'line', 1119
    .return ($P1238)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("171_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1267
    .param pmc param_1268
    .param pmc param_1271 :slurpy
    .param pmc param_1269 :optional :named("tagset")
    .param int has_param_1269 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1337 = "173_1304284961.094" 
    capture_lex $P1337
    .const 'Sub' $P1316 = "172_1304284961.094" 
    capture_lex $P1316
    .lex "self", param_1267
    .lex "$module", param_1268
    if has_param_1269, optparam_704
    new $P1270, "Undef"
    set param_1269, $P1270
  optparam_704:
    .lex "$tagset", param_1269
    .lex "@symbols", param_1271
.annotate 'line', 1145
    $P1272 = root_new ['parrot';'Hash']
    .lex "%exports", $P1272
.annotate 'line', 1146
    $P1273 = root_new ['parrot';'Hash']
    .lex "%source", $P1273
.annotate 'line', 1140
    find_lex $P1275, "$module"
    unless_null $P1275, vivify_705
    new $P1275, "Undef"
  vivify_705:
    does $I1276, $P1275, "hash"
    new $P1277, 'Integer'
    set $P1277, $I1276
    isfalse $I1278, $P1277
    unless $I1278, if_1274_end
.annotate 'line', 1141
    find_lex $P1279, "self"
    find_lex $P1280, "$module"
    unless_null $P1280, vivify_706
    new $P1280, "Undef"
  vivify_706:
    $P1281 = $P1279."get_module"($P1280)
    store_lex "$module", $P1281
  if_1274_end:
.annotate 'line', 1144
    find_lex $P1283, "$tagset"
    unless_null $P1283, vivify_707
    new $P1283, "Undef"
  vivify_707:
    set $P1282, $P1283
    defined $I1285, $P1282
    if $I1285, default_1284
    find_lex $P1288, "@symbols"
    unless_null $P1288, vivify_708
    $P1288 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    if $P1288, if_1287
    new $P1290, "String"
    assign $P1290, "DEFAULT"
    set $P1286, $P1290
    goto if_1287_end
  if_1287:
    new $P1289, "String"
    assign $P1289, "ALL"
    set $P1286, $P1289
  if_1287_end:
    set $P1282, $P1286
  default_1284:
    store_lex "$tagset", $P1282
    find_lex $P1291, "%exports"
    unless_null $P1291, vivify_709
    $P1291 = root_new ['parrot';'Hash']
  vivify_709:
.annotate 'line', 1146
    find_lex $P1292, "$tagset"
    unless_null $P1292, vivify_710
    new $P1292, "Undef"
  vivify_710:
    set $S1293, $P1292
    find_lex $P1294, "$module"
    unless_null $P1294, vivify_711
    $P1294 = root_new ['parrot';'Hash']
  vivify_711:
    set $P1295, $P1294["EXPORT"]
    unless_null $P1295, vivify_712
    $P1295 = root_new ['parrot';'Hash']
  vivify_712:
    set $P1296, $P1295[$S1293]
    unless_null $P1296, vivify_713
    new $P1296, "Undef"
  vivify_713:
    store_lex "%source", $P1296
.annotate 'line', 1147
    find_lex $P1298, "%source"
    unless_null $P1298, vivify_714
    $P1298 = root_new ['parrot';'Hash']
  vivify_714:
    defined $I1299, $P1298
    new $P1300, 'Integer'
    set $P1300, $I1299
    isfalse $I1301, $P1300
    unless $I1301, if_1297_end
.annotate 'line', 1148
    find_lex $P1304, "$tagset"
    unless_null $P1304, vivify_715
    new $P1304, "Undef"
  vivify_715:
    set $S1305, $P1304
    iseq $I1306, $S1305, "ALL"
    if $I1306, if_1303
    $P1308 = root_new ['parrot';'Hash']
    set $P1302, $P1308
    goto if_1303_end
  if_1303:
    find_lex $P1307, "$module"
    unless_null $P1307, vivify_716
    new $P1307, "Undef"
  vivify_716:
    set $P1302, $P1307
  if_1303_end:
    store_lex "%source", $P1302
  if_1297_end:
.annotate 'line', 1150
    find_lex $P1310, "@symbols"
    unless_null $P1310, vivify_717
    $P1310 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    if $P1310, if_1309
.annotate 'line', 1157
    find_lex $P1333, "%source"
    unless_null $P1333, vivify_718
    $P1333 = root_new ['parrot';'Hash']
  vivify_718:
    defined $I1334, $P1333
    unless $I1334, for_undef_719
    iter $P1332, $P1333
    new $P1350, 'ExceptionHandler'
    set_label $P1350, loop1349_handler
    $P1350."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1350
  loop1349_test:
    unless $P1332, loop1349_done
    shift $P1335, $P1332
  loop1349_redo:
    .const 'Sub' $P1337 = "173_1304284961.094" 
    capture_lex $P1337
    $P1337($P1335)
  loop1349_next:
    goto loop1349_test
  loop1349_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1351, exception, 'type'
    eq $P1351, .CONTROL_LOOP_NEXT, loop1349_next
    eq $P1351, .CONTROL_LOOP_REDO, loop1349_redo
  loop1349_done:
    pop_eh 
  for_undef_719:
.annotate 'line', 1156
    goto if_1309_end
  if_1309:
.annotate 'line', 1151
    find_lex $P1312, "@symbols"
    unless_null $P1312, vivify_726
    $P1312 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    defined $I1313, $P1312
    unless $I1313, for_undef_727
    iter $P1311, $P1312
    new $P1330, 'ExceptionHandler'
    set_label $P1330, loop1329_handler
    $P1330."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1330
  loop1329_test:
    unless $P1311, loop1329_done
    shift $P1314, $P1311
  loop1329_redo:
    .const 'Sub' $P1316 = "172_1304284961.094" 
    capture_lex $P1316
    $P1316($P1314)
  loop1329_next:
    goto loop1329_test
  loop1329_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1331, exception, 'type'
    eq $P1331, .CONTROL_LOOP_NEXT, loop1329_next
    eq $P1331, .CONTROL_LOOP_REDO, loop1329_redo
  loop1329_done:
    pop_eh 
  for_undef_727:
  if_1309_end:
.annotate 'line', 1150
    find_lex $P1352, "%exports"
    unless_null $P1352, vivify_736
    $P1352 = root_new ['parrot';'Hash']
  vivify_736:
.annotate 'line', 1138
    .return ($P1352)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1336"  :anon :subid("173_1304284961.094") :outer("171_1304284961.094")
    .param pmc param_1339
.annotate 'line', 1158
    new $P1338, "Undef"
    .lex "$value", $P1338
    .lex "$_", param_1339
    find_lex $P1340, "$_"
    unless_null $P1340, vivify_720
    new $P1340, "Undef"
  vivify_720:
    $P1341 = $P1340."value"()
    store_lex "$value", $P1341
.annotate 'line', 1159
    find_lex $P1342, "$value"
    unless_null $P1342, vivify_721
    new $P1342, "Undef"
  vivify_721:
    find_lex $P1343, "$_"
    unless_null $P1343, vivify_722
    new $P1343, "Undef"
  vivify_722:
    $P1344 = $P1343."key"()
    find_lex $P1345, "$value"
    unless_null $P1345, vivify_723
    new $P1345, "Undef"
  vivify_723:
    $P1346 = "value_type"($P1345)
    find_lex $P1347, "%exports"
    unless_null $P1347, vivify_724
    $P1347 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1347
  vivify_724:
    set $P1348, $P1347[$P1346]
    unless_null $P1348, vivify_725
    $P1348 = root_new ['parrot';'Hash']
    set $P1347[$P1346], $P1348
  vivify_725:
    set $P1348[$P1344], $P1342
.annotate 'line', 1157
    .return ($P1342)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1315"  :anon :subid("172_1304284961.094") :outer("171_1304284961.094")
    .param pmc param_1318
.annotate 'line', 1152
    new $P1317, "Undef"
    .lex "$value", $P1317
    .lex "$_", param_1318
    find_lex $P1319, "$_"
    unless_null $P1319, vivify_728
    new $P1319, "Undef"
  vivify_728:
    set $S1320, $P1319
    find_lex $P1321, "%source"
    unless_null $P1321, vivify_729
    $P1321 = root_new ['parrot';'Hash']
  vivify_729:
    set $P1322, $P1321[$S1320]
    unless_null $P1322, vivify_730
    new $P1322, "Undef"
  vivify_730:
    store_lex "$value", $P1322
.annotate 'line', 1153
    find_lex $P1323, "$value"
    unless_null $P1323, vivify_731
    new $P1323, "Undef"
  vivify_731:
    find_lex $P1324, "$_"
    unless_null $P1324, vivify_732
    new $P1324, "Undef"
  vivify_732:
    find_lex $P1325, "$value"
    unless_null $P1325, vivify_733
    new $P1325, "Undef"
  vivify_733:
    $P1326 = "value_type"($P1325)
    find_lex $P1327, "%exports"
    unless_null $P1327, vivify_734
    $P1327 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1327
  vivify_734:
    set $P1328, $P1327[$P1326]
    unless_null $P1328, vivify_735
    $P1328 = root_new ['parrot';'Hash']
    set $P1327[$P1326], $P1328
  vivify_735:
    set $P1328[$P1324], $P1323
.annotate 'line', 1151
    .return ($P1323)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("174_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1354
    .param pmc param_1355
.annotate 'line', 1165
    .lex "self", param_1354
    .lex "$name", param_1355
.annotate 'line', 1166
    $P1356 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1356
    find_lex $P1357, "self"
    find_lex $P1358, "$name"
    unless_null $P1358, vivify_737
    new $P1358, "Undef"
  vivify_737:
    $P1359 = $P1357."parse_name"($P1358)
    store_lex "@name", $P1359
.annotate 'line', 1167
    find_lex $P1360, "@name"
    unless_null $P1360, vivify_738
    $P1360 = root_new ['parrot';'ResizablePMCArray']
  vivify_738:
    find_lex $P1361, "self"
    find_lex $P1362, "$?CLASS"
    getattribute $P1363, $P1361, $P1362, "$!language"
    unless_null $P1363, vivify_739
    new $P1363, "Undef"
  vivify_739:
    set $S1364, $P1363
    downcase $S1365, $S1364
    $P1360."unshift"($S1365)
.annotate 'line', 1168
    find_lex $P1366, "@name"
    unless_null $P1366, vivify_740
    $P1366 = root_new ['parrot';'ResizablePMCArray']
  vivify_740:
    get_root_namespace $P1367, $P1366
.annotate 'line', 1165
    .return ($P1367)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("175_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1369
    .param pmc param_1370 :optional
    .param int has_param_1370 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1369
    if has_param_1370, optparam_741
    new $P1371, "Undef"
    set param_1370, $P1371
  optparam_741:
    .lex "$name", param_1370
.annotate 'line', 1172
    find_lex $P1373, "$name"
    unless_null $P1373, vivify_742
    new $P1373, "Undef"
  vivify_742:
    unless $P1373, if_1372_end
.annotate 'line', 1173
    find_lex $P1374, "$name"
    unless_null $P1374, vivify_743
    new $P1374, "Undef"
  vivify_743:
    find_lex $P1375, "self"
    find_lex $P1376, "$?CLASS"
    setattribute $P1375, $P1376, "$!language", $P1374
.annotate 'line', 1174
    find_lex $P1377, "$name"
    unless_null $P1377, vivify_744
    new $P1377, "Undef"
  vivify_744:
    set $S1378, $P1377
    find_lex $P1379, "self"
    compreg $S1378, $P1379
  if_1372_end:
.annotate 'line', 1172
    find_lex $P1380, "self"
    find_lex $P1381, "$?CLASS"
    getattribute $P1382, $P1380, $P1381, "$!language"
    unless_null $P1382, vivify_745
    new $P1382, "Undef"
  vivify_745:
.annotate 'line', 1171
    .return ($P1382)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("176_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1384
    .param pmc param_1385
.annotate 'line', 1179
    .const 'Sub' $P1395 = "177_1304284961.094" 
    capture_lex $P1395
    .lex "self", param_1384
    .lex "$name", param_1385
.annotate 'line', 1180
    new $P1386, "Undef"
    .lex "$base", $P1386
.annotate 'line', 1181
    new $P1387, "Undef"
    .lex "$loaded", $P1387
.annotate 'line', 1180
    find_lex $P1388, "self"
    find_lex $P1389, "$name"
    unless_null $P1389, vivify_746
    new $P1389, "Undef"
  vivify_746:
    $P1390 = $P1388."parse_name"($P1389)
    join $S1391, "/", $P1390
    new $P1392, 'String'
    set $P1392, $S1391
    store_lex "$base", $P1392
.annotate 'line', 1181
    new $P1393, "Integer"
    assign $P1393, 0
    store_lex "$loaded", $P1393
.annotate 'line', 1182
    .const 'Sub' $P1395 = "177_1304284961.094" 
    capture_lex $P1395
    $P1395()
.annotate 'line', 1183
    find_lex $P1408, "$loaded"
    unless_null $P1408, vivify_748
    new $P1408, "Undef"
  vivify_748:
    if $P1408, unless_1407_end
    find_lex $P1409, "$base"
    unless_null $P1409, vivify_749
    new $P1409, "Undef"
  vivify_749:
    concat $P1410, $P1409, ".pir"
    set $S1411, $P1410
    load_bytecode $S1411
    new $P1412, "Integer"
    assign $P1412, 1
    store_lex "$loaded", $P1412
  unless_1407_end:
.annotate 'line', 1184
    find_lex $P1413, "self"
    find_lex $P1414, "$name"
    unless_null $P1414, vivify_750
    new $P1414, "Undef"
  vivify_750:
    $P1415 = $P1413."get_module"($P1414)
.annotate 'line', 1179
    .return ($P1415)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1394"  :anon :subid("177_1304284961.094") :outer("176_1304284961.094")
.annotate 'line', 1182
    new $P1402, 'ExceptionHandler'
    set_label $P1402, control_1401
    $P1402."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1402
    find_lex $P1396, "$base"
    unless_null $P1396, vivify_747
    new $P1396, "Undef"
  vivify_747:
    concat $P1397, $P1396, ".pbc"
    set $S1398, $P1397
    load_bytecode $S1398
    new $P1399, "Integer"
    assign $P1399, 1
    store_lex "$loaded", $P1399
    pop_eh 
    goto skip_handler_1400
  control_1401:
    .local pmc exception 
    .get_results (exception) 
    new $P1405, 'Integer'
    set $P1405, 1
    set exception["handled"], $P1405
    set $I1406, exception["handled"]
    ne $I1406, 1, nothandled_1404
  handled_1403:
    .return (exception)
  nothandled_1404:
    rethrow exception
  skip_handler_1400:
    .return ($P1399)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("178_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1417
    .param pmc param_1418
    .param pmc param_1419
.annotate 'line', 1187
    .const 'Sub' $P1425 = "179_1304284961.094" 
    capture_lex $P1425
    .lex "self", param_1417
    .lex "$target", param_1418
    .lex "%exports", param_1419
.annotate 'line', 1188
    find_lex $P1421, "%exports"
    unless_null $P1421, vivify_751
    $P1421 = root_new ['parrot';'Hash']
  vivify_751:
    defined $I1422, $P1421
    unless $I1422, for_undef_752
    iter $P1420, $P1421
    new $P1507, 'ExceptionHandler'
    set_label $P1507, loop1506_handler
    $P1507."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1507
  loop1506_test:
    unless $P1420, loop1506_done
    shift $P1423, $P1420
  loop1506_redo:
    .const 'Sub' $P1425 = "179_1304284961.094" 
    capture_lex $P1425
    $P1425($P1423)
  loop1506_next:
    goto loop1506_test
  loop1506_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1508, exception, 'type'
    eq $P1508, .CONTROL_LOOP_NEXT, loop1506_next
    eq $P1508, .CONTROL_LOOP_REDO, loop1506_redo
  loop1506_done:
    pop_eh 
  for_undef_752:
.annotate 'line', 1187
    .return ($P1420)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1424"  :anon :subid("179_1304284961.094") :outer("178_1304284961.094")
    .param pmc param_1428
.annotate 'line', 1188
    .const 'Sub' $P1495 = "182_1304284961.094" 
    capture_lex $P1495
    .const 'Sub' $P1475 = "181_1304284961.094" 
    capture_lex $P1475
    .const 'Sub' $P1446 = "180_1304284961.094" 
    capture_lex $P1446
.annotate 'line', 1189
    new $P1426, "Undef"
    .lex "$type", $P1426
.annotate 'line', 1190
    $P1427 = root_new ['parrot';'Hash']
    .lex "%items", $P1427
    .lex "$_", param_1428
.annotate 'line', 1189
    find_lex $P1429, "$_"
    unless_null $P1429, vivify_753
    new $P1429, "Undef"
  vivify_753:
    $P1430 = $P1429."key"()
    store_lex "$type", $P1430
.annotate 'line', 1190
    find_lex $P1431, "$_"
    unless_null $P1431, vivify_754
    new $P1431, "Undef"
  vivify_754:
    $P1432 = $P1431."value"()
    store_lex "%items", $P1432
.annotate 'line', 1191
    find_lex $P1435, "self"
    new $P1436, 'String'
    set $P1436, "import_"
    find_lex $P1437, "$type"
    unless_null $P1437, vivify_755
    new $P1437, "Undef"
  vivify_755:
    concat $P1438, $P1436, $P1437
    set $S1439, $P1438
    can $I1440, $P1435, $S1439
    if $I1440, if_1434
.annotate 'line', 1194
    find_lex $P1464, "$target"
    unless_null $P1464, vivify_756
    new $P1464, "Undef"
  vivify_756:
    new $P1465, 'String'
    set $P1465, "add_"
    find_lex $P1466, "$type"
    unless_null $P1466, vivify_757
    new $P1466, "Undef"
  vivify_757:
    concat $P1467, $P1465, $P1466
    set $S1468, $P1467
    can $I1469, $P1464, $S1468
    if $I1469, if_1463
.annotate 'line', 1198
    find_lex $P1491, "%items"
    unless_null $P1491, vivify_758
    $P1491 = root_new ['parrot';'Hash']
  vivify_758:
    defined $I1492, $P1491
    unless $I1492, for_undef_759
    iter $P1490, $P1491
    new $P1504, 'ExceptionHandler'
    set_label $P1504, loop1503_handler
    $P1504."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1504
  loop1503_test:
    unless $P1490, loop1503_done
    shift $P1493, $P1490
  loop1503_redo:
    .const 'Sub' $P1495 = "182_1304284961.094" 
    capture_lex $P1495
    $P1495($P1493)
  loop1503_next:
    goto loop1503_test
  loop1503_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1505, exception, 'type'
    eq $P1505, .CONTROL_LOOP_NEXT, loop1503_next
    eq $P1505, .CONTROL_LOOP_REDO, loop1503_redo
  loop1503_done:
    pop_eh 
  for_undef_759:
.annotate 'line', 1197
    set $P1462, $P1490
.annotate 'line', 1194
    goto if_1463_end
  if_1463:
.annotate 'line', 1195
    find_lex $P1471, "%items"
    unless_null $P1471, vivify_763
    $P1471 = root_new ['parrot';'Hash']
  vivify_763:
    defined $I1472, $P1471
    unless $I1472, for_undef_764
    iter $P1470, $P1471
    new $P1488, 'ExceptionHandler'
    set_label $P1488, loop1487_handler
    $P1488."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1488
  loop1487_test:
    unless $P1470, loop1487_done
    shift $P1473, $P1470
  loop1487_redo:
    .const 'Sub' $P1475 = "181_1304284961.094" 
    capture_lex $P1475
    $P1475($P1473)
  loop1487_next:
    goto loop1487_test
  loop1487_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1489, exception, 'type'
    eq $P1489, .CONTROL_LOOP_NEXT, loop1487_next
    eq $P1489, .CONTROL_LOOP_REDO, loop1487_redo
  loop1487_done:
    pop_eh 
  for_undef_764:
.annotate 'line', 1194
    set $P1462, $P1470
  if_1463_end:
    set $P1433, $P1462
.annotate 'line', 1191
    goto if_1434_end
  if_1434:
.annotate 'line', 1192
    find_lex $P1442, "%items"
    unless_null $P1442, vivify_769
    $P1442 = root_new ['parrot';'Hash']
  vivify_769:
    defined $I1443, $P1442
    unless $I1443, for_undef_770
    iter $P1441, $P1442
    new $P1460, 'ExceptionHandler'
    set_label $P1460, loop1459_handler
    $P1460."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1460
  loop1459_test:
    unless $P1441, loop1459_done
    shift $P1444, $P1441
  loop1459_redo:
    .const 'Sub' $P1446 = "180_1304284961.094" 
    capture_lex $P1446
    $P1446($P1444)
  loop1459_next:
    goto loop1459_test
  loop1459_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1461, exception, 'type'
    eq $P1461, .CONTROL_LOOP_NEXT, loop1459_next
    eq $P1461, .CONTROL_LOOP_REDO, loop1459_redo
  loop1459_done:
    pop_eh 
  for_undef_770:
.annotate 'line', 1191
    set $P1433, $P1441
  if_1434_end:
.annotate 'line', 1188
    .return ($P1433)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1494"  :anon :subid("182_1304284961.094") :outer("179_1304284961.094")
    .param pmc param_1496
.annotate 'line', 1198
    .lex "$_", param_1496
    find_lex $P1497, "$_"
    unless_null $P1497, vivify_760
    new $P1497, "Undef"
  vivify_760:
    $P1498 = $P1497."value"()
    find_lex $P1499, "$_"
    unless_null $P1499, vivify_761
    new $P1499, "Undef"
  vivify_761:
    $P1500 = $P1499."key"()
    set $S1501, $P1500
    find_lex $P1502, "$target"
    unless_null $P1502, vivify_762
    $P1502 = root_new ['parrot';'Hash']
    store_lex "$target", $P1502
  vivify_762:
    set $P1502[$S1501], $P1498
    .return ($P1498)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1474"  :anon :subid("181_1304284961.094") :outer("179_1304284961.094")
    .param pmc param_1476
.annotate 'line', 1195
    .lex "$_", param_1476
    find_lex $P1477, "$target"
    unless_null $P1477, vivify_765
    new $P1477, "Undef"
  vivify_765:
    find_lex $P1478, "$_"
    unless_null $P1478, vivify_766
    new $P1478, "Undef"
  vivify_766:
    $P1479 = $P1478."key"()
    find_lex $P1480, "$_"
    unless_null $P1480, vivify_767
    new $P1480, "Undef"
  vivify_767:
    $P1481 = $P1480."value"()
    new $P1482, 'String'
    set $P1482, "add_"
    find_lex $P1483, "$type"
    unless_null $P1483, vivify_768
    new $P1483, "Undef"
  vivify_768:
    concat $P1484, $P1482, $P1483
    set $S1485, $P1484
    $P1486 = $P1477.$S1485($P1479, $P1481)
    .return ($P1486)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1445"  :anon :subid("180_1304284961.094") :outer("179_1304284961.094")
    .param pmc param_1447
.annotate 'line', 1192
    .lex "$_", param_1447
    find_lex $P1448, "self"
    find_lex $P1449, "$target"
    unless_null $P1449, vivify_771
    new $P1449, "Undef"
  vivify_771:
    find_lex $P1450, "$_"
    unless_null $P1450, vivify_772
    new $P1450, "Undef"
  vivify_772:
    $P1451 = $P1450."key"()
    find_lex $P1452, "$_"
    unless_null $P1452, vivify_773
    new $P1452, "Undef"
  vivify_773:
    $P1453 = $P1452."value"()
    new $P1454, 'String'
    set $P1454, "import_"
    find_lex $P1455, "$type"
    unless_null $P1455, vivify_774
    new $P1455, "Undef"
  vivify_774:
    concat $P1456, $P1454, $P1455
    set $S1457, $P1456
    $P1458 = $P1448.$S1457($P1449, $P1451, $P1453)
    .return ($P1458)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("183_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1510
    .param pmc param_1511
.annotate 'line', 1203
    .lex "self", param_1510
    .lex "$value", param_1511
.annotate 'line', 1205
    getinterp $P1514
    $P1515 = $P1514."stdout_handle"()
    $N1516 = $P1515."tell"()
    find_dynamic_lex $P1519, "$*AUTOPRINTPOS"
    unless_null $P1519, vivify_775
    get_hll_global $P1517, "GLOBAL"
    get_who $P1518, $P1517
    set $P1519, $P1518["$AUTOPRINTPOS"]
    unless_null $P1519, vivify_776
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_776:
  vivify_775:
    set $N1520, $P1519
    isgt $I1521, $N1516, $N1520
    unless $I1521, unless_1513
    new $P1512, 'Integer'
    set $P1512, $I1521
    goto unless_1513_end
  unless_1513:
.annotate 'line', 1204
    find_lex $P1522, "$value"
    unless_null $P1522, vivify_777
    new $P1522, "Undef"
  vivify_777:
    set $S1523, $P1522
    say $S1523
  unless_1513_end:
.annotate 'line', 1203
    .return ($P1512)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("184_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1525
    .param pmc param_1526 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1558 = "185_1304284961.094" 
    capture_lex $P1558
    .lex "self", param_1525
    .lex "%adverbs", param_1526
.annotate 'line', 1209
    new $P1527, "Undef"
    .lex "$target", $P1527
.annotate 'line', 1213
    new $P1528, "Undef"
    .lex "$stdin", $P1528
.annotate 'line', 1214
    new $P1529, "Undef"
    .lex "$encoding", $P1529
.annotate 'line', 1219
    new $P1530, "Undef"
    .lex "$save_ctx", $P1530
.annotate 'line', 1209
    find_lex $P1531, "%adverbs"
    unless_null $P1531, vivify_778
    $P1531 = root_new ['parrot';'Hash']
  vivify_778:
    set $P1532, $P1531["target"]
    unless_null $P1532, vivify_779
    new $P1532, "Undef"
  vivify_779:
    set $S1533, $P1532
    downcase $S1534, $S1533
    new $P1535, 'String'
    set $P1535, $S1534
    store_lex "$target", $P1535
.annotate 'line', 1211
    getinterp $P1536
    $P1537 = $P1536."stderr_handle"()
    find_lex $P1538, "self"
    $S1539 = $P1538."commandline_banner"()
    print $P1537, $S1539
.annotate 'line', 1213
    getinterp $P1540
    $P1541 = $P1540."stdin_handle"()
    store_lex "$stdin", $P1541
.annotate 'line', 1214
    find_lex $P1542, "%adverbs"
    unless_null $P1542, vivify_780
    $P1542 = root_new ['parrot';'Hash']
  vivify_780:
    set $P1543, $P1542["encoding"]
    unless_null $P1543, vivify_781
    new $P1543, "Undef"
  vivify_781:
    set $S1544, $P1543
    new $P1545, 'String'
    set $P1545, $S1544
    store_lex "$encoding", $P1545
.annotate 'line', 1215
    find_lex $P1549, "$encoding"
    unless_null $P1549, vivify_782
    new $P1549, "Undef"
  vivify_782:
    if $P1549, if_1548
    set $P1547, $P1549
    goto if_1548_end
  if_1548:
    find_lex $P1550, "$encoding"
    unless_null $P1550, vivify_783
    new $P1550, "Undef"
  vivify_783:
    set $S1551, $P1550
    isne $I1552, $S1551, "fixed_8"
    new $P1547, 'Integer'
    set $P1547, $I1552
  if_1548_end:
    unless $P1547, if_1546_end
.annotate 'line', 1216
    find_lex $P1553, "$stdin"
    unless_null $P1553, vivify_784
    new $P1553, "Undef"
  vivify_784:
    find_lex $P1554, "$encoding"
    unless_null $P1554, vivify_785
    new $P1554, "Undef"
  vivify_785:
    $P1553."encoding"($P1554)
  if_1546_end:
.annotate 'line', 1215
    find_lex $P1555, "$save_ctx"
    unless_null $P1555, vivify_786
    new $P1555, "Undef"
  vivify_786:
.annotate 'line', 1220
    new $P1681, 'ExceptionHandler'
    set_label $P1681, loop1680_handler
    $P1681."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1681
  loop1680_test:
    new $P1556, "Integer"
    assign $P1556, 1
    unless $P1556, loop1680_done
  loop1680_redo:
    .const 'Sub' $P1558 = "185_1304284961.094" 
    capture_lex $P1558
    $P1558()
  loop1680_next:
    goto loop1680_test
  loop1680_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1682, exception, 'type'
    eq $P1682, .CONTROL_LOOP_NEXT, loop1680_next
    eq $P1682, .CONTROL_LOOP_REDO, loop1680_redo
  loop1680_done:
    pop_eh 
.annotate 'line', 1208
    .return ($P1556)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1557"  :anon :subid("185_1304284961.094") :outer("184_1304284961.094")
.annotate 'line', 1220
    .const 'Sub' $P1592 = "186_1304284961.094" 
    capture_lex $P1592
.annotate 'line', 1223
    new $P1559, "Undef"
    .lex "$prompt", $P1559
.annotate 'line', 1224
    new $P1560, "Undef"
    .lex "$code", $P1560
.annotate 'line', 1229
    new $P1561, "Undef"
    .lex "$*AUTOPRINTPOS", $P1561
.annotate 'line', 1230
    new $P1562, "Undef"
    .lex "$*CTXSAVE", $P1562
.annotate 'line', 1231
    new $P1563, "Undef"
    .lex "$*MAIN_CTX", $P1563
.annotate 'line', 1221
    find_lex $P1565, "$stdin"
    unless_null $P1565, vivify_787
    new $P1565, "Undef"
  vivify_787:
    if $P1565, unless_1564_end
    set $I1566, .CONTROL_LOOP_LAST
    die 0, $I1566
  unless_1564_end:
.annotate 'line', 1223
    find_lex $P1568, "self"
    $P1569 = $P1568."commandline_prompt"()
    set $P1567, $P1569
    defined $I1571, $P1567
    if $I1571, default_1570
    new $P1572, "String"
    assign $P1572, "> "
    set $P1567, $P1572
  default_1570:
    store_lex "$prompt", $P1567
.annotate 'line', 1224
    find_lex $P1573, "$stdin"
    unless_null $P1573, vivify_788
    new $P1573, "Undef"
  vivify_788:
    find_lex $P1574, "$prompt"
    unless_null $P1574, vivify_789
    new $P1574, "Undef"
  vivify_789:
    set $S1575, $P1574
    $P1576 = $P1573."readline_interactive"($S1575)
    store_lex "$code", $P1576
.annotate 'line', 1226
    find_lex $P1578, "$code"
    unless_null $P1578, vivify_790
    new $P1578, "Undef"
  vivify_790:
    isnull $I1579, $P1578
    unless $I1579, if_1577_end
    set $I1580, .CONTROL_LOOP_LAST
    die 0, $I1580
  if_1577_end:
.annotate 'line', 1229
    getinterp $P1581
    $P1582 = $P1581."stdout_handle"()
    $P1583 = $P1582."tell"()
    store_lex "$*AUTOPRINTPOS", $P1583
.annotate 'line', 1230
    find_lex $P1584, "self"
    store_lex "$*CTXSAVE", $P1584
    find_lex $P1587, "$*MAIN_CTX"
    unless_null $P1587, vivify_791
    get_hll_global $P1585, "GLOBAL"
    get_who $P1586, $P1585
    set $P1587, $P1586["$MAIN_CTX"]
    unless_null $P1587, vivify_792
    die "Contextual $*MAIN_CTX not found"
  vivify_792:
  vivify_791:
.annotate 'line', 1233
    find_lex $P1590, "$code"
    unless_null $P1590, vivify_793
    new $P1590, "Undef"
  vivify_793:
    if $P1590, if_1589
    set $P1588, $P1590
    goto if_1589_end
  if_1589:
    .const 'Sub' $P1592 = "186_1304284961.094" 
    capture_lex $P1592
    $P1679 = $P1592()
    set $P1588, $P1679
  if_1589_end:
.annotate 'line', 1220
    .return ($P1588)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1591"  :anon :subid("186_1304284961.094") :outer("185_1304284961.094")
.annotate 'line', 1233
    .const 'Sub' $P1627 = "189_1304284961.094" 
    capture_lex $P1627
    .const 'Sub' $P1598 = "187_1304284961.094" 
    capture_lex $P1598
.annotate 'line', 1235
    new $P1593, "Undef"
    .lex "$output", $P1593
.annotate 'line', 1234
    find_lex $P1594, "$code"
    unless_null $P1594, vivify_794
    new $P1594, "Undef"
  vivify_794:
    concat $P1595, $P1594, "\n"
    store_lex "$code", $P1595
    find_lex $P1596, "$output"
    unless_null $P1596, vivify_795
    new $P1596, "Undef"
  vivify_795:
.annotate 'line', 1236
    .const 'Sub' $P1598 = "187_1304284961.094" 
    capture_lex $P1598
    $P1598()
.annotate 'line', 1243
    find_dynamic_lex $P1624, "$*MAIN_CTX"
    unless_null $P1624, vivify_800
    get_hll_global $P1622, "GLOBAL"
    get_who $P1623, $P1622
    set $P1624, $P1623["$MAIN_CTX"]
    unless_null $P1624, vivify_801
    die "Contextual $*MAIN_CTX not found"
  vivify_801:
  vivify_800:
    defined $I1625, $P1624
    unless $I1625, if_1621_end
    .const 'Sub' $P1627 = "189_1304284961.094" 
    capture_lex $P1627
    $P1627()
  if_1621_end:
.annotate 'line', 1251
    find_lex $P1658, "$output"
    unless_null $P1658, vivify_811
    new $P1658, "Undef"
  vivify_811:
    isnull $I1659, $P1658
    unless $I1659, if_1657_end
    set $I1660, .CONTROL_LOOP_NEXT
    die 0, $I1660
  if_1657_end:
.annotate 'line', 1253
    find_lex $P1663, "$target"
    unless_null $P1663, vivify_812
    new $P1663, "Undef"
  vivify_812:
    isfalse $I1664, $P1663
    if $I1664, if_1662
.annotate 'line', 1255
    find_lex $P1670, "$target"
    unless_null $P1670, vivify_813
    new $P1670, "Undef"
  vivify_813:
    set $S1671, $P1670
    iseq $I1672, $S1671, "pir"
    if $I1672, if_1669
.annotate 'line', 1258
    find_lex $P1674, "self"
    find_lex $P1675, "$output"
    unless_null $P1675, vivify_814
    new $P1675, "Undef"
  vivify_814:
    find_lex $P1676, "$target"
    unless_null $P1676, vivify_815
    new $P1676, "Undef"
  vivify_815:
    find_lex $P1677, "%adverbs"
    unless_null $P1677, vivify_816
    $P1677 = root_new ['parrot';'Hash']
  vivify_816:
    $P1678 = $P1674."dumper"($P1675, $P1676, $P1677 :flat)
.annotate 'line', 1257
    set $P1668, $P1678
.annotate 'line', 1255
    goto if_1669_end
  if_1669:
.annotate 'line', 1256
    find_lex $P1673, "$output"
    unless_null $P1673, vivify_817
    new $P1673, "Undef"
  vivify_817:
    say $P1673
  if_1669_end:
.annotate 'line', 1255
    set $P1661, $P1668
.annotate 'line', 1253
    goto if_1662_end
  if_1662:
.annotate 'line', 1254
    find_lex $P1665, "self"
    find_lex $P1666, "$output"
    unless_null $P1666, vivify_818
    new $P1666, "Undef"
  vivify_818:
    $P1667 = $P1665."autoprint"($P1666)
.annotate 'line', 1253
    set $P1661, $P1667
  if_1662_end:
.annotate 'line', 1233
    .return ($P1661)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1597"  :anon :subid("187_1304284961.094") :outer("186_1304284961.094")
.annotate 'line', 1236
    .const 'Sub' $P1610 = "188_1304284961.094" 
    capture_lex $P1610
    new $P1606, 'ExceptionHandler'
    set_label $P1606, control_1605
    $P1606."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1606
.annotate 'line', 1237
    find_lex $P1599, "self"
    find_lex $P1600, "$code"
    unless_null $P1600, vivify_796
    new $P1600, "Undef"
  vivify_796:
    find_lex $P1601, "$save_ctx"
    unless_null $P1601, vivify_797
    new $P1601, "Undef"
  vivify_797:
    find_lex $P1602, "%adverbs"
    unless_null $P1602, vivify_798
    $P1602 = root_new ['parrot';'Hash']
  vivify_798:
    $P1603 = $P1599."eval"($P1600, $P1602 :flat, $P1601 :named("outer_ctx"))
    store_lex "$output", $P1603
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1604
  control_1605:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1610 = "188_1304284961.094" 
    newclosure $P1618, $P1610
    $P1618(exception)
    new $P1619, 'Integer'
    set $P1619, 1
    set exception["handled"], $P1619
    set $I1620, exception["handled"]
    ne $I1620, 1, nothandled_1608
  handled_1607:
    .return (exception)
  nothandled_1608:
    rethrow exception
  skip_handler_1604:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1609"  :anon :subid("188_1304284961.094") :outer("187_1304284961.094")
    .param pmc param_1611
.annotate 'line', 1238
    .lex "$_", param_1611
    find_lex $P1612, "$_"
    .lex "$!", $P1612
.annotate 'line', 1239
    find_lex $P1613, "$!"
    unless_null $P1613, vivify_799
    new $P1613, "Undef"
  vivify_799:
    set $S1614, $P1613
    new $P1615, 'String'
    set $P1615, $S1614
    concat $P1616, $P1615, "\n"
    print $P1616
.annotate 'line', 1240
    set $I1617, .CONTROL_LOOP_NEXT
    die 0, $I1617
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1626"  :anon :subid("189_1304284961.094") :outer("186_1304284961.094")
.annotate 'line', 1243
    .const 'Sub' $P1642 = "190_1304284961.094" 
    capture_lex $P1642
    find_lex $P1628, "$?PACKAGE"
    get_who $P1629, $P1628
    set $P1630, $P1629["$interactive_ctx"]
    unless_null $P1630, vivify_802
    new $P1630, "Undef"
  vivify_802:
    find_lex $P1631, "$?PACKAGE"
    get_who $P1632, $P1631
    set $P1633, $P1632["%interactive_pad"]
    unless_null $P1633, vivify_803
    $P1633 = root_new ['parrot';'Hash']
  vivify_803:
.annotate 'line', 1246
    find_dynamic_lex $P1637, "$*MAIN_CTX"
    unless_null $P1637, vivify_804
    get_hll_global $P1635, "GLOBAL"
    get_who $P1636, $P1635
    set $P1637, $P1636["$MAIN_CTX"]
    unless_null $P1637, vivify_805
    die "Contextual $*MAIN_CTX not found"
  vivify_805:
  vivify_804:
    $P1638 = $P1637."lexpad_full"()
    defined $I1639, $P1638
    unless $I1639, for_undef_806
    iter $P1634, $P1638
    new $P1652, 'ExceptionHandler'
    set_label $P1652, loop1651_handler
    $P1652."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1652
  loop1651_test:
    unless $P1634, loop1651_done
    shift $P1640, $P1634
  loop1651_redo:
    .const 'Sub' $P1642 = "190_1304284961.094" 
    capture_lex $P1642
    $P1642($P1640)
  loop1651_next:
    goto loop1651_test
  loop1651_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1653, exception, 'type'
    eq $P1653, .CONTROL_LOOP_NEXT, loop1651_next
    eq $P1653, .CONTROL_LOOP_REDO, loop1651_redo
  loop1651_done:
    pop_eh 
  for_undef_806:
.annotate 'line', 1249
    find_lex $P1654, "$?PACKAGE"
    get_who $P1655, $P1654
    set $P1656, $P1655["$interactive_ctx"]
    unless_null $P1656, vivify_810
    new $P1656, "Undef"
  vivify_810:
    store_lex "$save_ctx", $P1656
.annotate 'line', 1243
    .return ($P1656)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1641"  :anon :subid("190_1304284961.094") :outer("189_1304284961.094")
    .param pmc param_1643
.annotate 'line', 1246
    .lex "$_", param_1643
.annotate 'line', 1247
    find_lex $P1644, "$_"
    unless_null $P1644, vivify_807
    new $P1644, "Undef"
  vivify_807:
    $P1645 = $P1644."value"()
    find_lex $P1646, "$_"
    unless_null $P1646, vivify_808
    new $P1646, "Undef"
  vivify_808:
    $P1647 = $P1646."key"()
    find_lex $P1648, "$?PACKAGE"
    get_who $P1649, $P1648
    set $P1650, $P1649["%interactive_pad"]
    unless_null $P1650, vivify_809
    $P1650 = root_new ['parrot';'Hash']
    set $P1649["%interactive_pad"], $P1650
  vivify_809:
    set $P1650[$P1647], $P1645
.annotate 'line', 1246
    .return ($P1645)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("191_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1684
    .param pmc param_1685
    .param pmc param_1686 :slurpy
    .param pmc param_1687 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1706 = "192_1304284961.094" 
    capture_lex $P1706
    .lex "self", param_1684
    .lex "$code", param_1685
    .lex "@args", param_1686
    .lex "%adverbs", param_1687
.annotate 'line', 1265
    new $P1688, "Undef"
    .lex "$output", $P1688
.annotate 'line', 1264
    find_lex $P1689, "$output"
    unless_null $P1689, vivify_819
    new $P1689, "Undef"
  vivify_819:
.annotate 'line', 1266
    find_lex $P1690, "self"
    find_lex $P1691, "$code"
    unless_null $P1691, vivify_820
    new $P1691, "Undef"
  vivify_820:
    find_lex $P1692, "%adverbs"
    unless_null $P1692, vivify_821
    $P1692 = root_new ['parrot';'Hash']
  vivify_821:
    $P1693 = $P1690."compile"($P1691, $P1692 :flat)
    store_lex "$output", $P1693
.annotate 'line', 1268
    find_lex $P1697, "$output"
    unless_null $P1697, vivify_822
    new $P1697, "Undef"
  vivify_822:
    isa $I1698, $P1697, "String"
    new $P1699, 'Integer'
    set $P1699, $I1698
    isfalse $I1700, $P1699
    if $I1700, if_1696
    new $P1695, 'Integer'
    set $P1695, $I1700
    goto if_1696_end
  if_1696:
.annotate 'line', 1269
    find_lex $P1701, "%adverbs"
    unless_null $P1701, vivify_823
    $P1701 = root_new ['parrot';'Hash']
  vivify_823:
    set $P1702, $P1701["target"]
    unless_null $P1702, vivify_824
    new $P1702, "Undef"
  vivify_824:
    set $S1703, $P1702
    iseq $I1704, $S1703, ""
    new $P1695, 'Integer'
    set $P1695, $I1704
  if_1696_end:
    unless $P1695, if_1694_end
    .const 'Sub' $P1706 = "192_1304284961.094" 
    capture_lex $P1706
    $P1706()
  if_1694_end:
.annotate 'line', 1268
    find_lex $P1722, "$output"
    unless_null $P1722, vivify_835
    new $P1722, "Undef"
  vivify_835:
.annotate 'line', 1264
    .return ($P1722)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1705"  :anon :subid("192_1304284961.094") :outer("191_1304284961.094")
.annotate 'line', 1270
    new $P1707, "Undef"
    .lex "$outer_ctx", $P1707
    find_lex $P1708, "%adverbs"
    unless_null $P1708, vivify_825
    $P1708 = root_new ['parrot';'Hash']
  vivify_825:
    set $P1709, $P1708["outer_ctx"]
    unless_null $P1709, vivify_826
    new $P1709, "Undef"
  vivify_826:
    store_lex "$outer_ctx", $P1709
.annotate 'line', 1271
    find_lex $P1711, "$outer_ctx"
    unless_null $P1711, vivify_827
    new $P1711, "Undef"
  vivify_827:
    defined $I1712, $P1711
    unless $I1712, if_1710_end
.annotate 'line', 1272
    find_lex $P1713, "$output"
    unless_null $P1713, vivify_828
    $P1713 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    set $P1714, $P1713[0]
    unless_null $P1714, vivify_829
    new $P1714, "Undef"
  vivify_829:
    find_lex $P1715, "$outer_ctx"
    unless_null $P1715, vivify_830
    new $P1715, "Undef"
  vivify_830:
    $P1714."set_outer_ctx"($P1715)
  if_1710_end:
.annotate 'line', 1275
    find_lex $P1716, "%adverbs"
    unless_null $P1716, vivify_831
    $P1716 = root_new ['parrot';'Hash']
  vivify_831:
    set $P1717, $P1716["trace"]
    unless_null $P1717, vivify_832
    new $P1717, "Undef"
  vivify_832:
    set $I1718, $P1717
    trace $I1718
.annotate 'line', 1276
    find_lex $P1719, "$output"
    unless_null $P1719, vivify_833
    new $P1719, "Undef"
  vivify_833:
    find_lex $P1720, "@args"
    unless_null $P1720, vivify_834
    $P1720 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    $P1721 = $P1719($P1720 :flat)
    store_lex "$output", $P1721
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("193_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1724
.annotate 'line', 1283
    .lex "self", param_1724
.annotate 'line', 1285

                $P0 = getinterp
                $P1725 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1725
.annotate 'line', 1289
    new $P1726, "Integer"
    assign $P1726, 0
    store_dynamic_lex "$*CTXSAVE", $P1726
.annotate 'line', 1283
    .return ($P1726)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("194_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1728
    .param pmc param_1729 :slurpy
.annotate 'line', 1292
    .lex "self", param_1728
    .lex "@args", param_1729
.annotate 'line', 1293
    find_lex $P1730, "@args"
    unless_null $P1730, vivify_836
    $P1730 = root_new ['parrot';'ResizablePMCArray']
  vivify_836:
    join $S1731, "", $P1730
    die $S1731
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("195_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1733
    .param pmc param_1734 :optional
    .param int has_param_1734 :opt_flag
.annotate 'line', 1296
    .lex "self", param_1733
    if has_param_1734, optparam_837
    $P1735 = root_new ['parrot';'ResizablePMCArray']
    set param_1734, $P1735
  optparam_837:
    .lex "@value", param_1734
.annotate 'line', 1297
    find_lex $P1737, "@value"
    unless_null $P1737, vivify_838
    $P1737 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $N1738, $P1737
    unless $N1738, if_1736_end
.annotate 'line', 1298
    find_lex $P1739, "@value"
    unless_null $P1739, vivify_839
    $P1739 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    find_lex $P1740, "self"
    find_lex $P1741, "$?CLASS"
    setattribute $P1740, $P1741, "@!stages", $P1739
  if_1736_end:
.annotate 'line', 1297
    find_lex $P1742, "self"
    find_lex $P1743, "$?CLASS"
    getattribute $P1744, $P1742, $P1743, "@!stages"
    unless_null $P1744, vivify_840
    $P1744 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
.annotate 'line', 1296
    .return ($P1744)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("196_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1746
    .param pmc param_1747 :slurpy
.annotate 'line', 1303
    .lex "self", param_1746
    .lex "@value", param_1747
.annotate 'line', 1304
    find_lex $P1749, "@value"
    unless_null $P1749, vivify_841
    $P1749 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $N1750, $P1749
    unless $N1750, if_1748_end
.annotate 'line', 1305
    find_lex $P1751, "@value"
    unless_null $P1751, vivify_842
    $P1751 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    set $P1752, $P1751[0]
    unless_null $P1752, vivify_843
    new $P1752, "Undef"
  vivify_843:
    find_lex $P1753, "self"
    find_lex $P1754, "$?CLASS"
    setattribute $P1753, $P1754, "$!parsegrammar", $P1752
  if_1748_end:
.annotate 'line', 1304
    find_lex $P1755, "self"
    find_lex $P1756, "$?CLASS"
    getattribute $P1757, $P1755, $P1756, "$!parsegrammar"
    unless_null $P1757, vivify_844
    new $P1757, "Undef"
  vivify_844:
.annotate 'line', 1303
    .return ($P1757)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("197_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1759
    .param pmc param_1760 :slurpy
.annotate 'line', 1310
    .lex "self", param_1759
    .lex "@value", param_1760
.annotate 'line', 1311
    find_lex $P1762, "@value"
    unless_null $P1762, vivify_845
    $P1762 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $N1763, $P1762
    unless $N1763, if_1761_end
.annotate 'line', 1312
    find_lex $P1764, "@value"
    unless_null $P1764, vivify_846
    $P1764 = root_new ['parrot';'ResizablePMCArray']
  vivify_846:
    set $P1765, $P1764[0]
    unless_null $P1765, vivify_847
    new $P1765, "Undef"
  vivify_847:
    find_lex $P1766, "self"
    find_lex $P1767, "$?CLASS"
    setattribute $P1766, $P1767, "$!parseactions", $P1765
  if_1761_end:
.annotate 'line', 1311
    find_lex $P1768, "self"
    find_lex $P1769, "$?CLASS"
    getattribute $P1770, $P1768, $P1769, "$!parseactions"
    unless_null $P1770, vivify_848
    new $P1770, "Undef"
  vivify_848:
.annotate 'line', 1310
    .return ($P1770)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("198_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1772
    .param pmc param_1773 :slurpy
.annotate 'line', 1317
    .lex "self", param_1772
    .lex "@value", param_1773
.annotate 'line', 1318
    find_lex $P1775, "@value"
    unless_null $P1775, vivify_849
    $P1775 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $N1776, $P1775
    unless $N1776, if_1774_end
.annotate 'line', 1319
    find_lex $P1777, "@value"
    unless_null $P1777, vivify_850
    $P1777 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    set $P1778, $P1777[0]
    unless_null $P1778, vivify_851
    new $P1778, "Undef"
  vivify_851:
    find_lex $P1779, "self"
    find_lex $P1780, "$?CLASS"
    setattribute $P1779, $P1780, "$!astgrammar", $P1778
  if_1774_end:
.annotate 'line', 1318
    find_lex $P1781, "self"
    find_lex $P1782, "$?CLASS"
    getattribute $P1783, $P1781, $P1782, "$!astgrammar"
    unless_null $P1783, vivify_852
    new $P1783, "Undef"
  vivify_852:
.annotate 'line', 1317
    .return ($P1783)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("199_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1785
    .param pmc param_1786 :optional
    .param int has_param_1786 :opt_flag
.annotate 'line', 1324
    .lex "self", param_1785
    if has_param_1786, optparam_853
    new $P1787, "Undef"
    set param_1786, $P1787
  optparam_853:
    .lex "$value", param_1786
.annotate 'line', 1325
    find_lex $P1789, "$value"
    unless_null $P1789, vivify_854
    new $P1789, "Undef"
  vivify_854:
    defined $I1790, $P1789
    unless $I1790, if_1788_end
.annotate 'line', 1326
    find_lex $P1791, "$value"
    unless_null $P1791, vivify_855
    new $P1791, "Undef"
  vivify_855:
    find_lex $P1792, "self"
    find_lex $P1793, "$?CLASS"
    setattribute $P1792, $P1793, "$!commandline_banner", $P1791
  if_1788_end:
.annotate 'line', 1325
    find_lex $P1794, "self"
    find_lex $P1795, "$?CLASS"
    getattribute $P1796, $P1794, $P1795, "$!commandline_banner"
    unless_null $P1796, vivify_856
    new $P1796, "Undef"
  vivify_856:
.annotate 'line', 1324
    .return ($P1796)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("200_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1798
    .param pmc param_1799 :optional
    .param int has_param_1799 :opt_flag
.annotate 'line', 1331
    .lex "self", param_1798
    if has_param_1799, optparam_857
    new $P1800, "Undef"
    set param_1799, $P1800
  optparam_857:
    .lex "$value", param_1799
.annotate 'line', 1332
    find_lex $P1802, "$value"
    unless_null $P1802, vivify_858
    new $P1802, "Undef"
  vivify_858:
    defined $I1803, $P1802
    unless $I1803, if_1801_end
.annotate 'line', 1333
    find_lex $P1804, "$value"
    unless_null $P1804, vivify_859
    new $P1804, "Undef"
  vivify_859:
    find_lex $P1805, "self"
    find_lex $P1806, "$?CLASS"
    setattribute $P1805, $P1806, "$!commandline_prompt", $P1804
  if_1801_end:
.annotate 'line', 1332
    find_lex $P1807, "self"
    find_lex $P1808, "$?CLASS"
    getattribute $P1809, $P1807, $P1808, "$!commandline_prompt"
    unless_null $P1809, vivify_860
    new $P1809, "Undef"
  vivify_860:
.annotate 'line', 1331
    .return ($P1809)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("201_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1811
    .param pmc param_1812 :optional
    .param int has_param_1812 :opt_flag
.annotate 'line', 1338
    .lex "self", param_1811
    if has_param_1812, optparam_861
    new $P1813, "Undef"
    set param_1812, $P1813
  optparam_861:
    .lex "$value", param_1812
.annotate 'line', 1339
    find_lex $P1815, "$value"
    unless_null $P1815, vivify_862
    new $P1815, "Undef"
  vivify_862:
    defined $I1816, $P1815
    unless $I1816, if_1814_end
.annotate 'line', 1340
    find_lex $P1817, "$value"
    unless_null $P1817, vivify_863
    new $P1817, "Undef"
  vivify_863:
    find_lex $P1818, "self"
    find_lex $P1819, "$?CLASS"
    setattribute $P1818, $P1819, "$!compiler_progname", $P1817
  if_1814_end:
.annotate 'line', 1339
    find_lex $P1820, "self"
    find_lex $P1821, "$?CLASS"
    getattribute $P1822, $P1820, $P1821, "$!compiler_progname"
    unless_null $P1822, vivify_864
    new $P1822, "Undef"
  vivify_864:
.annotate 'line', 1338
    .return ($P1822)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("202_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1824
    .param pmc param_1825 :optional
    .param int has_param_1825 :opt_flag
.annotate 'line', 1345
    .lex "self", param_1824
    if has_param_1825, optparam_865
    $P1826 = root_new ['parrot';'ResizablePMCArray']
    set param_1825, $P1826
  optparam_865:
    .lex "@value", param_1825
.annotate 'line', 1346
    find_lex $P1828, "@value"
    unless_null $P1828, vivify_866
    $P1828 = root_new ['parrot';'ResizablePMCArray']
  vivify_866:
    set $N1829, $P1828
    unless $N1829, if_1827_end
.annotate 'line', 1347
    find_lex $P1830, "@value"
    unless_null $P1830, vivify_867
    $P1830 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    find_lex $P1831, "self"
    find_lex $P1832, "$?CLASS"
    setattribute $P1831, $P1832, "@!cmdoptions", $P1830
  if_1827_end:
.annotate 'line', 1346
    find_lex $P1833, "self"
    find_lex $P1834, "$?CLASS"
    getattribute $P1835, $P1833, $P1834, "@!cmdoptions"
    unless_null $P1835, vivify_868
    $P1835 = root_new ['parrot';'ResizablePMCArray']
  vivify_868:
.annotate 'line', 1345
    .return ($P1835)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("203_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1837
    .param pmc param_1838
    .param pmc param_1839 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P1865 = "204_1304284961.094" 
    capture_lex $P1865
    .lex "self", param_1837
    .lex "@args", param_1838
    .lex "%adverbs", param_1839
.annotate 'line', 1365
    new $P1840, "Undef"
    .lex "$program-name", $P1840
.annotate 'line', 1366
    new $P1841, "Undef"
    .lex "$res", $P1841
.annotate 'line', 1367
    $P1842 = root_new ['parrot';'Hash']
    .lex "%opts", $P1842
.annotate 'line', 1368
    $P1843 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P1843
.annotate 'line', 1361
    find_lex $P1845, "@args"
    unless_null $P1845, vivify_869
    $P1845 = root_new ['parrot';'ResizablePMCArray']
  vivify_869:
    set $P1846, $P1845[2]
    unless_null $P1846, vivify_870
    new $P1846, "Undef"
  vivify_870:
    set $S1847, $P1846
    index $I1848, $S1847, "@INC"
    set $N1849, $I1848
    isge $I1850, $N1849, 0.0
    unless $I1850, if_1844_end
.annotate 'line', 1362
    exit 0
  if_1844_end:
.annotate 'line', 1365
    find_lex $P1851, "@args"
    unless_null $P1851, vivify_871
    $P1851 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
    set $P1852, $P1851[0]
    unless_null $P1852, vivify_872
    new $P1852, "Undef"
  vivify_872:
    store_lex "$program-name", $P1852
.annotate 'line', 1366
    find_lex $P1853, "self"
    find_lex $P1854, "@args"
    unless_null $P1854, vivify_873
    $P1854 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    $P1855 = $P1853."process_args"($P1854)
    store_lex "$res", $P1855
.annotate 'line', 1367
    find_lex $P1856, "$res"
    unless_null $P1856, vivify_874
    new $P1856, "Undef"
  vivify_874:
    $P1857 = $P1856."options"()
    store_lex "%opts", $P1857
.annotate 'line', 1368
    find_lex $P1858, "$res"
    unless_null $P1858, vivify_875
    new $P1858, "Undef"
  vivify_875:
    $P1859 = $P1858."arguments"()
    store_lex "@a", $P1859
.annotate 'line', 1370
    find_lex $P1861, "%opts"
    unless_null $P1861, vivify_876
    $P1861 = root_new ['parrot';'Hash']
  vivify_876:
    defined $I1862, $P1861
    unless $I1862, for_undef_877
    iter $P1860, $P1861
    new $P1873, 'ExceptionHandler'
    set_label $P1873, loop1872_handler
    $P1873."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1873
  loop1872_test:
    unless $P1860, loop1872_done
    shift $P1863, $P1860
  loop1872_redo:
    .const 'Sub' $P1865 = "204_1304284961.094" 
    capture_lex $P1865
    $P1865($P1863)
  loop1872_next:
    goto loop1872_test
  loop1872_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1874, exception, 'type'
    eq $P1874, .CONTROL_LOOP_NEXT, loop1872_next
    eq $P1874, .CONTROL_LOOP_REDO, loop1872_redo
  loop1872_done:
    pop_eh 
  for_undef_877:
.annotate 'line', 1373
    find_lex $P1876, "%adverbs"
    unless_null $P1876, vivify_883
    $P1876 = root_new ['parrot';'Hash']
  vivify_883:
    set $P1877, $P1876["help"]
    unless_null $P1877, vivify_884
    new $P1877, "Undef"
  vivify_884:
    unless $P1877, if_1875_end
    find_lex $P1878, "self"
    find_lex $P1879, "$program-name"
    unless_null $P1879, vivify_885
    new $P1879, "Undef"
  vivify_885:
    $P1878."usage"($P1879)
  if_1875_end:
.annotate 'line', 1374
    find_lex $P1881, "%adverbs"
    unless_null $P1881, vivify_886
    $P1881 = root_new ['parrot';'Hash']
  vivify_886:
    set $P1882, $P1881["version"]
    unless_null $P1882, vivify_887
    new $P1882, "Undef"
  vivify_887:
    unless $P1882, if_1880_end
    find_lex $P1883, "self"
    $P1883."version"()
  if_1880_end:
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
.sub "_block1864"  :anon :subid("204_1304284961.094") :outer("203_1304284961.094")
    .param pmc param_1866
.annotate 'line', 1370
    .lex "$k", param_1866
.annotate 'line', 1371
    find_lex $P1867, "$k"
    unless_null $P1867, vivify_878
    new $P1867, "Undef"
  vivify_878:
    find_lex $P1868, "%opts"
    unless_null $P1868, vivify_879
    $P1868 = root_new ['parrot';'Hash']
  vivify_879:
    set $P1869, $P1868[$P1867]
    unless_null $P1869, vivify_880
    new $P1869, "Undef"
  vivify_880:
    find_lex $P1870, "$k"
    unless_null $P1870, vivify_881
    new $P1870, "Undef"
  vivify_881:
    find_lex $P1871, "%adverbs"
    unless_null $P1871, vivify_882
    $P1871 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1871
  vivify_882:
    set $P1871[$P1870], $P1869
.annotate 'line', 1370
    .return ($P1869)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("205_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1885
    .param pmc param_1886
.annotate 'line', 1470
    .const 'Sub' $P1905 = "206_1304284961.094" 
    capture_lex $P1905
    .lex "self", param_1885
    .lex "@args", param_1886
.annotate 'line', 1474
    new $P1887, "Undef"
    .lex "$p", $P1887
.annotate 'line', 1477
    new $P1888, "Undef"
    .lex "$res", $P1888
.annotate 'line', 1472
    find_lex $P1889, "self"
    find_lex $P1890, "@args"
    unless_null $P1890, vivify_888
    $P1890 = root_new ['parrot';'ResizablePMCArray']
  vivify_888:
    $P1891 = $P1890."shift"()
    $P1889."compiler_progname"($P1891)
.annotate 'line', 1474
    get_hll_global $P1892, "GLOBAL"
    nqp_get_package_through_who $P1893, $P1892, "HLL"
    nqp_get_package_through_who $P1894, $P1893, "CommandLine"
    get_who $P1895, $P1894
    set $P1896, $P1895["Parser"]
    find_lex $P1897, "self"
    find_lex $P1898, "$?CLASS"
    getattribute $P1899, $P1897, $P1898, "@!cmdoptions"
    unless_null $P1899, vivify_889
    $P1899 = root_new ['parrot';'ResizablePMCArray']
  vivify_889:
    $P1900 = $P1896."new"($P1899)
    store_lex "$p", $P1900
.annotate 'line', 1475
    find_lex $P1901, "$p"
    unless_null $P1901, vivify_890
    new $P1901, "Undef"
  vivify_890:
    $P1901."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P1902, "$p"
    unless_null $P1902, vivify_891
    new $P1902, "Undef"
  vivify_891:
    $P1902."stop-after-first-arg"()
    find_lex $P1903, "$res"
    unless_null $P1903, vivify_892
    new $P1903, "Undef"
  vivify_892:
.annotate 'line', 1478
    .const 'Sub' $P1905 = "206_1304284961.094" 
    capture_lex $P1905
    $P1905()
    find_lex $P1923, "$res"
    unless_null $P1923, vivify_896
    new $P1923, "Undef"
  vivify_896:
.annotate 'line', 1470
    .return ($P1923)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1904"  :anon :subid("206_1304284961.094") :outer("205_1304284961.094")
.annotate 'line', 1478
    .const 'Sub' $P1915 = "207_1304284961.094" 
    capture_lex $P1915
    new $P1911, 'ExceptionHandler'
    set_label $P1911, control_1910
    $P1911."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1911
.annotate 'line', 1479
    find_lex $P1906, "$p"
    unless_null $P1906, vivify_893
    new $P1906, "Undef"
  vivify_893:
    find_lex $P1907, "@args"
    unless_null $P1907, vivify_894
    $P1907 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
    $P1908 = $P1906."parse"($P1907)
    store_lex "$res", $P1908
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_1909
  control_1910:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1915 = "207_1304284961.094" 
    newclosure $P1920, $P1915
    $P1920(exception)
    new $P1921, 'Integer'
    set $P1921, 1
    set exception["handled"], $P1921
    set $I1922, exception["handled"]
    ne $I1922, 1, nothandled_1913
  handled_1912:
    .return (exception)
  nothandled_1913:
    rethrow exception
  skip_handler_1909:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1914"  :anon :subid("207_1304284961.094") :outer("206_1304284961.094")
    .param pmc param_1916
.annotate 'line', 1480
    .lex "$_", param_1916
    find_lex $P1917, "$_"
    .lex "$!", $P1917
.annotate 'line', 1481
    find_lex $P1918, "$_"
    unless_null $P1918, vivify_895
    new $P1918, "Undef"
  vivify_895:
    say $P1918
.annotate 'line', 1482
    find_lex $P1919, "self"
    $P1919."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("208_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_1927
    .param pmc param_1928
    .param pmc param_1929 :slurpy
    .param pmc param_1930 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P1955 = "209_1304284961.094" 
    capture_lex $P1955
    new $P1926, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1926, control_1925
    push_eh $P1926
    .lex "self", param_1927
    .lex "$files", param_1928
    .lex "@args", param_1929
    .lex "%adverbs", param_1930
.annotate 'line', 1490
    new $P1931, "Undef"
    .lex "$target", $P1931
.annotate 'line', 1491
    new $P1932, "Undef"
    .lex "$encoding", $P1932
.annotate 'line', 1492
    $P1933 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P1933
.annotate 'line', 1493
    $P1934 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P1934
.annotate 'line', 1490
    find_lex $P1935, "%adverbs"
    unless_null $P1935, vivify_897
    $P1935 = root_new ['parrot';'Hash']
  vivify_897:
    set $P1936, $P1935["target"]
    unless_null $P1936, vivify_898
    new $P1936, "Undef"
  vivify_898:
    set $S1937, $P1936
    downcase $S1938, $S1937
    new $P1939, 'String'
    set $P1939, $S1938
    store_lex "$target", $P1939
.annotate 'line', 1491
    find_lex $P1940, "%adverbs"
    unless_null $P1940, vivify_899
    $P1940 = root_new ['parrot';'Hash']
  vivify_899:
    set $P1941, $P1940["encoding"]
    unless_null $P1941, vivify_900
    new $P1941, "Undef"
  vivify_900:
    store_lex "$encoding", $P1941
.annotate 'line', 1492
    find_lex $P1944, "$files"
    unless_null $P1944, vivify_901
    new $P1944, "Undef"
  vivify_901:
    does $I1945, $P1944, "array"
    if $I1945, if_1943
    find_lex $P1947, "$files"
    unless_null $P1947, vivify_902
    new $P1947, "Undef"
  vivify_902:
    new $P1948, "ResizablePMCArray"
    push $P1948, $P1947
    set $P1942, $P1948
    goto if_1943_end
  if_1943:
    find_lex $P1946, "$files"
    unless_null $P1946, vivify_903
    new $P1946, "Undef"
  vivify_903:
    set $P1942, $P1946
  if_1943_end:
    store_lex "@files", $P1942
    find_lex $P1949, "@codes"
    unless_null $P1949, vivify_904
    $P1949 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
.annotate 'line', 1494
    find_lex $P1951, "@files"
    unless_null $P1951, vivify_905
    $P1951 = root_new ['parrot';'ResizablePMCArray']
  vivify_905:
    defined $I1952, $P1951
    unless $I1952, for_undef_906
    iter $P1950, $P1951
    new $P2017, 'ExceptionHandler'
    set_label $P2017, loop2016_handler
    $P2017."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2017
  loop2016_test:
    unless $P1950, loop2016_done
    shift $P1953, $P1950
  loop2016_redo:
    .const 'Sub' $P1955 = "209_1304284961.094" 
    capture_lex $P1955
    $P1955($P1953)
  loop2016_next:
    goto loop2016_test
  loop2016_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2018, exception, 'type'
    eq $P2018, .CONTROL_LOOP_NEXT, loop2016_next
    eq $P2018, .CONTROL_LOOP_REDO, loop2016_redo
  loop2016_done:
    pop_eh 
  for_undef_906:
.annotate 'line', 1489
    .return ($P1950)
  control_1925:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2019, exception, "payload"
    .return ($P2019)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1954"  :anon :subid("209_1304284961.094") :outer("208_1304284961.094")
    .param pmc param_1960
.annotate 'line', 1494
    .const 'Sub' $P1964 = "210_1304284961.094" 
    capture_lex $P1964
.annotate 'line', 1495
    new $P1956, "Undef"
    .lex "$in-handle", $P1956
.annotate 'line', 1496
    new $P1957, "Undef"
    .lex "$err", $P1957
.annotate 'line', 1509
    new $P1958, "Undef"
    .lex "$code", $P1958
.annotate 'line', 1511
    new $P1959, "Undef"
    .lex "$r", $P1959
    .lex "$_", param_1960
.annotate 'line', 1495
    new $P1961, "FileHandle"
    store_lex "$in-handle", $P1961
.annotate 'line', 1496
    new $P1962, "Integer"
    assign $P1962, 0
    store_lex "$err", $P1962
.annotate 'line', 1497
    .const 'Sub' $P1964 = "210_1304284961.094" 
    capture_lex $P1964
    $P1964()
.annotate 'line', 1508
    find_lex $P1988, "$err"
    unless_null $P1988, vivify_914
    new $P1988, "Undef"
  vivify_914:
    unless $P1988, if_1987_end
    find_lex $P1989, "$err"
    unless_null $P1989, vivify_915
    new $P1989, "Undef"
  vivify_915:
    die $P1989
  if_1987_end:
.annotate 'line', 1509
    find_lex $P1990, "@codes"
    unless_null $P1990, vivify_916
    $P1990 = root_new ['parrot';'ResizablePMCArray']
  vivify_916:
    join $S1991, "", $P1990
    new $P1992, 'String'
    set $P1992, $S1991
    store_lex "$code", $P1992
.annotate 'line', 1511
    find_lex $P1993, "self"
    find_lex $P1994, "$code"
    unless_null $P1994, vivify_917
    new $P1994, "Undef"
  vivify_917:
    find_lex $P1995, "@args"
    unless_null $P1995, vivify_918
    $P1995 = root_new ['parrot';'ResizablePMCArray']
  vivify_918:
    find_lex $P1996, "%adverbs"
    unless_null $P1996, vivify_919
    $P1996 = root_new ['parrot';'Hash']
  vivify_919:
    $P1997 = $P1993."eval"($P1994, $P1995 :flat, $P1996 :flat)
    store_lex "$r", $P1997
.annotate 'line', 1512
    find_lex $P2002, "$target"
    unless_null $P2002, vivify_920
    new $P2002, "Undef"
  vivify_920:
    set $S2003, $P2002
    iseq $I2004, $S2003, ""
    unless $I2004, unless_2001
    new $P2000, 'Integer'
    set $P2000, $I2004
    goto unless_2001_end
  unless_2001:
    find_lex $P2005, "$target"
    unless_null $P2005, vivify_921
    new $P2005, "Undef"
  vivify_921:
    set $S2006, $P2005
    iseq $I2007, $S2006, "pir"
    new $P2000, 'Integer'
    set $P2000, $I2007
  unless_2001_end:
    if $P2000, if_1999
.annotate 'line', 1515
    new $P2010, "Exception"
    set $P2010['type'], .CONTROL_RETURN
    find_lex $P2011, "self"
    find_lex $P2012, "$r"
    unless_null $P2012, vivify_922
    new $P2012, "Undef"
  vivify_922:
    find_lex $P2013, "$target"
    unless_null $P2013, vivify_923
    new $P2013, "Undef"
  vivify_923:
    find_lex $P2014, "%adverbs"
    unless_null $P2014, vivify_924
    $P2014 = root_new ['parrot';'Hash']
  vivify_924:
    $P2015 = $P2011."dumper"($P2012, $P2013, $P2014 :flat)
    setattribute $P2010, 'payload', $P2015
    throw $P2010
.annotate 'line', 1514
    goto if_1999_end
  if_1999:
.annotate 'line', 1513
    new $P2008, "Exception"
    set $P2008['type'], .CONTROL_RETURN
    find_lex $P2009, "$r"
    unless_null $P2009, vivify_925
    new $P2009, "Undef"
  vivify_925:
    setattribute $P2008, 'payload', $P2009
    throw $P2008
  if_1999_end:
.annotate 'line', 1494
    .return ($P1998)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1963"  :anon :subid("210_1304284961.094") :outer("209_1304284961.094")
.annotate 'line', 1497
    .const 'Sub' $P1978 = "211_1304284961.094" 
    capture_lex $P1978
    new $P1974, 'ExceptionHandler'
    set_label $P1974, control_1973
    $P1974."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1974
.annotate 'line', 1501
    find_lex $P1965, "$in-handle"
    unless_null $P1965, vivify_907
    new $P1965, "Undef"
  vivify_907:
    find_lex $P1966, "$encoding"
    unless_null $P1966, vivify_908
    new $P1966, "Undef"
  vivify_908:
    $P1965."encoding"($P1966)
.annotate 'line', 1502
    find_lex $P1967, "@codes"
    unless_null $P1967, vivify_909
    $P1967 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    find_lex $P1968, "$in-handle"
    unless_null $P1968, vivify_910
    new $P1968, "Undef"
  vivify_910:
    find_lex $P1969, "$_"
    unless_null $P1969, vivify_911
    new $P1969, "Undef"
  vivify_911:
    $P1970 = $P1968."readall"($P1969)
    push $P1967, $P1970
.annotate 'line', 1503
    find_lex $P1971, "$in-handle"
    unless_null $P1971, vivify_912
    new $P1971, "Undef"
  vivify_912:
    $P1971."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_1972
  control_1973:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1978 = "211_1304284961.094" 
    newclosure $P1984, $P1978
    $P1984(exception)
    new $P1985, 'Integer'
    set $P1985, 1
    set exception["handled"], $P1985
    set $I1986, exception["handled"]
    ne $I1986, 1, nothandled_1976
  handled_1975:
    .return (exception)
  nothandled_1976:
    rethrow exception
  skip_handler_1972:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1977"  :anon :subid("211_1304284961.094") :outer("210_1304284961.094")
    .param pmc param_1979
.annotate 'line', 1504
    .lex "$_", param_1979
    find_lex $P1980, "$_"
    .lex "$!", $P1980
.annotate 'line', 1505
    new $P1981, 'String'
    set $P1981, "Error while reading from file: "
    find_lex $P1982, "$_"
    unless_null $P1982, vivify_913
    new $P1982, "Undef"
  vivify_913:
    concat $P1983, $P1981, $P1982
    store_lex "$err", $P1983
.annotate 'line', 1504
    .return ($P1983)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("212_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2023
    .param pmc param_2024
    .param pmc param_2025 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2048 = "213_1304284961.094" 
    capture_lex $P2048
    new $P2022, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2022, control_2021
    push_eh $P2022
    .lex "self", param_2023
    .lex "$source", param_2024
    .lex "%adverbs", param_2025
.annotate 'line', 1522
    $P2026 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2026
.annotate 'line', 1524
    new $P2027, "Undef"
    .lex "$target", $P2027
.annotate 'line', 1525
    new $P2028, "Undef"
    .lex "$result", $P2028
.annotate 'line', 1526
    new $P2029, "Undef"
    .lex "$stderr", $P2029
.annotate 'line', 1522
    find_lex $P2030, "%adverbs"
    unless_null $P2030, vivify_926
    $P2030 = root_new ['parrot';'Hash']
  vivify_926:
    find_lex $P2033, "%*COMPILING"
    unless_null $P2033, vivify_927
    get_hll_global $P2031, "GLOBAL"
    get_who $P2032, $P2031
    set $P2033, $P2032["%COMPILING"]
    unless_null $P2033, vivify_928
    die "Contextual %*COMPILING not found"
  vivify_928:
    store_lex "%*COMPILING", $P2033
  vivify_927:
    set $P2033["%?OPTIONS"], $P2030
.annotate 'line', 1524
    find_lex $P2034, "%adverbs"
    unless_null $P2034, vivify_929
    $P2034 = root_new ['parrot';'Hash']
  vivify_929:
    set $P2035, $P2034["target"]
    unless_null $P2035, vivify_930
    new $P2035, "Undef"
  vivify_930:
    set $S2036, $P2035
    downcase $S2037, $S2036
    new $P2038, 'String'
    set $P2038, $S2037
    store_lex "$target", $P2038
.annotate 'line', 1525
    find_lex $P2039, "$source"
    unless_null $P2039, vivify_931
    new $P2039, "Undef"
  vivify_931:
    store_lex "$result", $P2039
.annotate 'line', 1526
    getinterp $P2040
    $P2041 = $P2040."stderr_handle"()
    store_lex "$stderr", $P2041
.annotate 'line', 1527
    find_lex $P2043, "self"
    $P2044 = $P2043."stages"()
    defined $I2045, $P2044
    unless $I2045, for_undef_932
    iter $P2042, $P2044
    new $P2084, 'ExceptionHandler'
    set_label $P2084, loop2083_handler
    $P2084."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2084
  loop2083_test:
    unless $P2042, loop2083_done
    shift $P2046, $P2042
  loop2083_redo:
    .const 'Sub' $P2048 = "213_1304284961.094" 
    capture_lex $P2048
    $P2048($P2046)
  loop2083_next:
    goto loop2083_test
  loop2083_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2085, exception, 'type'
    eq $P2085, .CONTROL_LOOP_NEXT, loop2083_next
    eq $P2085, .CONTROL_LOOP_REDO, loop2083_redo
  loop2083_done:
    pop_eh 
  for_undef_932:
.annotate 'line', 1537
    new $P2086, "Exception"
    set $P2086['type'], .CONTROL_RETURN
    find_lex $P2087, "$result"
    unless_null $P2087, vivify_944
    new $P2087, "Undef"
  vivify_944:
    setattribute $P2086, 'payload', $P2087
    throw $P2086
.annotate 'line', 1521
    .return ()
  control_2021:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2088, exception, "payload"
    .return ($P2088)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2047"  :anon :subid("213_1304284961.094") :outer("212_1304284961.094")
    .param pmc param_2051
.annotate 'line', 1528
    new $P2049, "Undef"
    .lex "$timestamp", $P2049
.annotate 'line', 1530
    new $P2050, "Undef"
    .lex "$diff", $P2050
    .lex "$_", param_2051
.annotate 'line', 1528
    time $N2052
    new $P2053, 'Float'
    set $P2053, $N2052
    store_lex "$timestamp", $P2053
.annotate 'line', 1529
    find_lex $P2054, "self"
    find_lex $P2055, "$result"
    unless_null $P2055, vivify_933
    new $P2055, "Undef"
  vivify_933:
    find_lex $P2056, "%adverbs"
    unless_null $P2056, vivify_934
    $P2056 = root_new ['parrot';'Hash']
  vivify_934:
    find_lex $P2057, "$_"
    unless_null $P2057, vivify_935
    new $P2057, "Undef"
  vivify_935:
    set $S2058, $P2057
    $P2059 = $P2054.$S2058($P2055, $P2056 :flat)
    store_lex "$result", $P2059
.annotate 'line', 1530
    time $N2060
    new $P2061, 'Float'
    set $P2061, $N2060
    find_lex $P2062, "$timestamp"
    unless_null $P2062, vivify_936
    new $P2062, "Undef"
  vivify_936:
    sub $P2063, $P2061, $P2062
    store_lex "$diff", $P2063
.annotate 'line', 1531
    find_lex $P2065, "%adverbs"
    unless_null $P2065, vivify_937
    $P2065 = root_new ['parrot';'Hash']
  vivify_937:
    set $P2066, $P2065["stagestats"]
    unless_null $P2066, vivify_938
    new $P2066, "Undef"
  vivify_938:
    unless $P2066, if_2064_end
.annotate 'line', 1533
    find_lex $P2067, "$stderr"
    unless_null $P2067, vivify_939
    new $P2067, "Undef"
  vivify_939:
    new $P2068, 'String'
    set $P2068, "Stage "
    find_lex $P2069, "$_"
    unless_null $P2069, vivify_940
    new $P2069, "Undef"
  vivify_940:
    concat $P2070, $P2068, $P2069
    concat $P2071, $P2070, ": "
    find_lex $P2072, "$diff"
    unless_null $P2072, vivify_941
    new $P2072, "Undef"
  vivify_941:
    concat $P2073, $P2071, $P2072
    concat $P2074, $P2073, "\n"
    $P2067."print__N"($P2074)
  if_2064_end:
.annotate 'line', 1535
    find_lex $P2077, "$_"
    unless_null $P2077, vivify_942
    new $P2077, "Undef"
  vivify_942:
    set $S2078, $P2077
    find_lex $P2079, "$target"
    unless_null $P2079, vivify_943
    new $P2079, "Undef"
  vivify_943:
    set $S2080, $P2079
    iseq $I2081, $S2078, $S2080
    if $I2081, if_2076
    new $P2075, 'Integer'
    set $P2075, $I2081
    goto if_2076_end
  if_2076:
    set $I2082, .CONTROL_LOOP_LAST
    die 0, $I2082
  if_2076_end:
.annotate 'line', 1527
    .return ($P2075)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("214_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2090
    .param pmc param_2091
    .param pmc param_2092 :slurpy :named
.annotate 'line', 1540
    .lex "self", param_2090
    .lex "$source", param_2091
    .lex "%adverbs", param_2092
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
.sub "past"  :subid("215_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2094
    .param pmc param_2095
    .param pmc param_2096 :slurpy :named
.annotate 'line', 1589
    .lex "self", param_2094
    .lex "$source", param_2095
    .lex "%adverbs", param_2096
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
.sub "post"  :subid("216_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2098
    .param pmc param_2099
    .param pmc param_2100 :slurpy :named
.annotate 'line', 1629
    .lex "self", param_2098
    .lex "$source", param_2099
    .lex "%adverbs", param_2100
.annotate 'line', 1630
    compreg $P2101, "PAST"
    find_lex $P2102, "$source"
    unless_null $P2102, vivify_945
    new $P2102, "Undef"
  vivify_945:
    find_lex $P2103, "%adverbs"
    unless_null $P2103, vivify_946
    $P2103 = root_new ['parrot';'Hash']
  vivify_946:
    $P2104 = $P2101."to_post"($P2102, $P2103 :flat)
.annotate 'line', 1629
    .return ($P2104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("217_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2106
    .param pmc param_2107
    .param pmc param_2108 :slurpy :named
.annotate 'line', 1633
    .lex "self", param_2106
    .lex "$source", param_2107
    .lex "%adverbs", param_2108
.annotate 'line', 1634
    compreg $P2109, "POST"
    find_lex $P2110, "$source"
    unless_null $P2110, vivify_947
    new $P2110, "Undef"
  vivify_947:
    find_lex $P2111, "%adverbs"
    unless_null $P2111, vivify_948
    $P2111 = root_new ['parrot';'Hash']
  vivify_948:
    $P2112 = $P2109."to_pir"($P2110, $P2111 :flat)
.annotate 'line', 1633
    .return ($P2112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("218_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2114
    .param pmc param_2115
    .param pmc param_2116 :slurpy :named
.annotate 'line', 1637
    .lex "self", param_2114
    .lex "$source", param_2115
    .lex "%adverbs", param_2116
.annotate 'line', 1638
    new $P2117, "Undef"
    .lex "$compiler", $P2117
    compreg $P2118, "PIR"
    store_lex "$compiler", $P2118
.annotate 'line', 1639
    find_lex $P2119, "$compiler"
    unless_null $P2119, vivify_949
    new $P2119, "Undef"
  vivify_949:
    find_lex $P2120, "$source"
    unless_null $P2120, vivify_950
    new $P2120, "Undef"
  vivify_950:
    $P2121 = $P2119($P2120)
.annotate 'line', 1637
    .return ($P2121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("219_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2123
    .param pmc param_2124
    .param pmc param_2125
    .param pmc param_2126 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2132 = "220_1304284961.094" 
    capture_lex $P2132
    .lex "self", param_2123
    .lex "$obj", param_2124
    .lex "$name", param_2125
    .lex "%options", param_2126
.annotate 'line', 1643
    find_lex $P2129, "%options"
    unless_null $P2129, vivify_951
    $P2129 = root_new ['parrot';'Hash']
  vivify_951:
    set $P2130, $P2129["dumper"]
    unless_null $P2130, vivify_952
    new $P2130, "Undef"
  vivify_952:
    if $P2130, if_2128
.annotate 'line', 1649
    find_lex $P2148, "$obj"
    unless_null $P2148, vivify_953
    new $P2148, "Undef"
  vivify_953:
    find_lex $P2149, "$name"
    unless_null $P2149, vivify_954
    new $P2149, "Undef"
  vivify_954:
    $P2150 = "_dumper"($P2148, $P2149)
.annotate 'line', 1648
    set $P2127, $P2150
.annotate 'line', 1643
    goto if_2128_end
  if_2128:
    .const 'Sub' $P2132 = "220_1304284961.094" 
    capture_lex $P2132
    $P2147 = $P2132()
    set $P2127, $P2147
  if_2128_end:
.annotate 'line', 1642
    .return ($P2127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2131"  :anon :subid("220_1304284961.094") :outer("219_1304284961.094")
.annotate 'line', 1645
    new $P2133, "Undef"
    .lex "$dumper", $P2133
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2134, "%options"
    unless_null $P2134, vivify_955
    $P2134 = root_new ['parrot';'Hash']
  vivify_955:
    set $P2135, $P2134["dumper"]
    unless_null $P2135, vivify_956
    new $P2135, "Undef"
  vivify_956:
    set $S2136, $P2135
    downcase $S2137, $S2136
    get_hll_global $P2138, "GLOBAL"
    nqp_get_package_through_who $P2139, $P2138, "PCT"
    get_who $P2140, $P2139
    set $P2141, $P2140["Dumper"]
    unless_null $P2141, vivify_957
    $P2141 = root_new ['parrot';'Hash']
  vivify_957:
    set $P2142, $P2141[$S2137]
    unless_null $P2142, vivify_958
    new $P2142, "Undef"
  vivify_958:
    store_lex "$dumper", $P2142
.annotate 'line', 1646
    find_lex $P2143, "$dumper"
    unless_null $P2143, vivify_959
    new $P2143, "Undef"
  vivify_959:
    find_lex $P2144, "$obj"
    unless_null $P2144, vivify_960
    new $P2144, "Undef"
  vivify_960:
    find_lex $P2145, "$name"
    unless_null $P2145, vivify_961
    new $P2145, "Undef"
  vivify_961:
    $P2146 = $P2143($P2144, $P2145)
.annotate 'line', 1643
    .return ($P2146)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("221_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2152
    .param pmc param_2153 :optional
    .param int has_param_2153 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2152
    if has_param_2153, optparam_962
    new $P2154, "Undef"
    set param_2153, $P2154
  optparam_962:
    .lex "$name", param_2153
.annotate 'line', 1654
    find_lex $P2156, "$name"
    unless_null $P2156, vivify_963
    new $P2156, "Undef"
  vivify_963:
    unless $P2156, if_2155_end
.annotate 'line', 1655
    find_lex $P2157, "$name"
    unless_null $P2157, vivify_964
    new $P2157, "Undef"
  vivify_964:
    "say"($P2157)
  if_2155_end:
.annotate 'line', 1657
    find_lex $P2158, "self"
    find_lex $P2159, "$?CLASS"
    getattribute $P2160, $P2158, $P2159, "$!usage"
    unless_null $P2160, vivify_965
    new $P2160, "Undef"
  vivify_965:
    say $P2160
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("222_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2162
.annotate 'line', 1661
    .lex "self", param_2162
.annotate 'line', 1662
    find_lex $P2163, "self"
    find_lex $P2164, "$?CLASS"
    getattribute $P2165, $P2163, $P2164, "$!version"
    unless_null $P2165, vivify_966
    new $P2165, "Undef"
  vivify_966:
    say $P2165
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("223_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2167
    .param pmc param_2168
.annotate 'line', 1666
    .const 'Sub' $P2178 = "224_1304284961.094" 
    capture_lex $P2178
    .lex "self", param_2167
    .lex "$stagename", param_2168
.annotate 'line', 1667
    $P2169 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2169
    new $P2170, "ResizableStringArray"
    store_lex "@new_stages", $P2170
.annotate 'line', 1668
    find_lex $P2172, "self"
    find_lex $P2173, "$?CLASS"
    getattribute $P2174, $P2172, $P2173, "@!stages"
    unless_null $P2174, vivify_967
    $P2174 = root_new ['parrot';'ResizablePMCArray']
  vivify_967:
    defined $I2175, $P2174
    unless $I2175, for_undef_968
    iter $P2171, $P2174
    new $P2191, 'ExceptionHandler'
    set_label $P2191, loop2190_handler
    $P2191."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2191
  loop2190_test:
    unless $P2171, loop2190_done
    shift $P2176, $P2171
  loop2190_redo:
    .const 'Sub' $P2178 = "224_1304284961.094" 
    capture_lex $P2178
    $P2178($P2176)
  loop2190_next:
    goto loop2190_test
  loop2190_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2192, exception, 'type'
    eq $P2192, .CONTROL_LOOP_NEXT, loop2190_next
    eq $P2192, .CONTROL_LOOP_REDO, loop2190_redo
  loop2190_done:
    pop_eh 
  for_undef_968:
.annotate 'line', 1673
    find_lex $P2193, "@new_stages"
    unless_null $P2193, vivify_973
    $P2193 = root_new ['parrot';'ResizablePMCArray']
  vivify_973:
    find_lex $P2194, "self"
    find_lex $P2195, "$?CLASS"
    setattribute $P2194, $P2195, "@!stages", $P2193
.annotate 'line', 1666
    .return ($P2193)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2177"  :anon :subid("224_1304284961.094") :outer("223_1304284961.094")
    .param pmc param_2179
.annotate 'line', 1668
    .lex "$_", param_2179
.annotate 'line', 1669
    find_lex $P2182, "$_"
    unless_null $P2182, vivify_969
    new $P2182, "Undef"
  vivify_969:
    set $S2183, $P2182
    find_lex $P2184, "$stagename"
    unless_null $P2184, vivify_970
    new $P2184, "Undef"
  vivify_970:
    set $S2185, $P2184
    isne $I2186, $S2183, $S2185
    if $I2186, if_2181
    new $P2180, 'Integer'
    set $P2180, $I2186
    goto if_2181_end
  if_2181:
.annotate 'line', 1670
    find_lex $P2187, "@new_stages"
    unless_null $P2187, vivify_971
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_971:
    find_lex $P2188, "$_"
    unless_null $P2188, vivify_972
    new $P2188, "Undef"
  vivify_972:
    $P2189 = $P2187."push"($P2188)
.annotate 'line', 1669
    set $P2180, $P2189
  if_2181_end:
.annotate 'line', 1668
    .return ($P2180)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("225_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2199
    .param pmc param_2200
    .param pmc param_2201 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2238 = "227_1304284961.094" 
    capture_lex $P2238
    .const 'Sub' $P2220 = "226_1304284961.094" 
    capture_lex $P2220
    new $P2198, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2198, control_2197
    push_eh $P2198
    .lex "self", param_2199
    .lex "$stagename", param_2200
    .lex "%adverbs", param_2201
.annotate 'line', 1677
    new $P2202, "Undef"
    .lex "$position", $P2202
.annotate 'line', 1678
    new $P2203, "Undef"
    .lex "$where", $P2203
.annotate 'line', 1691
    $P2204 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2204
.annotate 'line', 1676
    find_lex $P2205, "$position"
    unless_null $P2205, vivify_974
    new $P2205, "Undef"
  vivify_974:
    find_lex $P2206, "$where"
    unless_null $P2206, vivify_975
    new $P2206, "Undef"
  vivify_975:
.annotate 'line', 1679
    find_lex $P2208, "%adverbs"
    unless_null $P2208, vivify_976
    $P2208 = root_new ['parrot';'Hash']
  vivify_976:
    set $P2209, $P2208["before"]
    unless_null $P2209, vivify_977
    new $P2209, "Undef"
  vivify_977:
    if $P2209, if_2207
.annotate 'line', 1682
    find_lex $P2214, "%adverbs"
    unless_null $P2214, vivify_978
    $P2214 = root_new ['parrot';'Hash']
  vivify_978:
    set $P2215, $P2214["after"]
    unless_null $P2215, vivify_979
    new $P2215, "Undef"
  vivify_979:
    if $P2215, if_2213
.annotate 'line', 1685
    .const 'Sub' $P2220 = "226_1304284961.094" 
    capture_lex $P2220
    $P2220()
    goto if_2213_end
  if_2213:
.annotate 'line', 1683
    find_lex $P2216, "%adverbs"
    unless_null $P2216, vivify_983
    $P2216 = root_new ['parrot';'Hash']
  vivify_983:
    set $P2217, $P2216["after"]
    unless_null $P2217, vivify_984
    new $P2217, "Undef"
  vivify_984:
    store_lex "$where", $P2217
.annotate 'line', 1684
    new $P2218, "String"
    assign $P2218, "after"
    store_lex "$position", $P2218
  if_2213_end:
.annotate 'line', 1682
    goto if_2207_end
  if_2207:
.annotate 'line', 1680
    find_lex $P2210, "%adverbs"
    unless_null $P2210, vivify_985
    $P2210 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2211, $P2210["before"]
    unless_null $P2211, vivify_986
    new $P2211, "Undef"
  vivify_986:
    store_lex "$where", $P2211
.annotate 'line', 1681
    new $P2212, "String"
    assign $P2212, "before"
    store_lex "$position", $P2212
  if_2207_end:
.annotate 'line', 1691
    new $P2231, "ResizableStringArray"
    store_lex "@new-stages", $P2231
.annotate 'line', 1692
    find_lex $P2233, "self"
    $P2234 = $P2233."stages"()
    defined $I2235, $P2234
    unless $I2235, for_undef_987
    iter $P2232, $P2234
    new $P2263, 'ExceptionHandler'
    set_label $P2263, loop2262_handler
    $P2263."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2263
  loop2262_test:
    unless $P2232, loop2262_done
    shift $P2236, $P2232
  loop2262_redo:
    .const 'Sub' $P2238 = "227_1304284961.094" 
    capture_lex $P2238
    $P2238($P2236)
  loop2262_next:
    goto loop2262_test
  loop2262_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2264, exception, 'type'
    eq $P2264, .CONTROL_LOOP_NEXT, loop2262_next
    eq $P2264, .CONTROL_LOOP_REDO, loop2262_redo
  loop2262_done:
    pop_eh 
  for_undef_987:
.annotate 'line', 1705
    find_lex $P2265, "self"
    find_lex $P2266, "@new-stages"
    unless_null $P2266, vivify_1001
    $P2266 = root_new ['parrot';'ResizablePMCArray']
  vivify_1001:
    $P2267 = $P2265."stages"($P2266)
.annotate 'line', 1676
    .return ($P2267)
  control_2197:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2268, exception, "payload"
    .return ($P2268)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2219"  :anon :subid("226_1304284961.094") :outer("225_1304284961.094")
.annotate 'line', 1686
    $P2221 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2221
    find_lex $P2222, "self"
    $P2223 = $P2222."stages"()
    clone $P2224, $P2223
    store_lex "@new-stages", $P2224
.annotate 'line', 1687
    find_lex $P2225, "@new-stages"
    unless_null $P2225, vivify_980
    $P2225 = root_new ['parrot';'ResizablePMCArray']
  vivify_980:
    find_lex $P2226, "$stagename"
    unless_null $P2226, vivify_981
    new $P2226, "Undef"
  vivify_981:
    push $P2225, $P2226
.annotate 'line', 1688
    find_lex $P2227, "self"
    find_lex $P2228, "@new-stages"
    unless_null $P2228, vivify_982
    $P2228 = root_new ['parrot';'ResizablePMCArray']
  vivify_982:
    $P2227."stages"($P2228)
.annotate 'line', 1689
    new $P2229, "Exception"
    set $P2229['type'], .CONTROL_RETURN
    new $P2230, "Integer"
    assign $P2230, 1
    setattribute $P2229, 'payload', $P2230
    throw $P2229
.annotate 'line', 1685
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2237"  :anon :subid("227_1304284961.094") :outer("225_1304284961.094")
    .param pmc param_2239
.annotate 'line', 1692
    .lex "$_", param_2239
.annotate 'line', 1693
    find_lex $P2242, "$_"
    unless_null $P2242, vivify_988
    new $P2242, "Undef"
  vivify_988:
    set $S2243, $P2242
    find_lex $P2244, "$where"
    unless_null $P2244, vivify_989
    new $P2244, "Undef"
  vivify_989:
    set $S2245, $P2244
    iseq $I2246, $S2243, $S2245
    if $I2246, if_2241
.annotate 'line', 1702
    find_lex $P2260, "@new-stages"
    unless_null $P2260, vivify_990
    $P2260 = root_new ['parrot';'ResizablePMCArray']
  vivify_990:
    find_lex $P2261, "$_"
    unless_null $P2261, vivify_991
    new $P2261, "Undef"
  vivify_991:
    push $P2260, $P2261
.annotate 'line', 1701
    set $P2240, $P2260
.annotate 'line', 1693
    goto if_2241_end
  if_2241:
.annotate 'line', 1694
    find_lex $P2249, "$position"
    unless_null $P2249, vivify_992
    new $P2249, "Undef"
  vivify_992:
    set $S2250, $P2249
    iseq $I2251, $S2250, "before"
    if $I2251, if_2248
.annotate 'line', 1698
    find_lex $P2256, "@new-stages"
    unless_null $P2256, vivify_993
    $P2256 = root_new ['parrot';'ResizablePMCArray']
  vivify_993:
    find_lex $P2257, "$_"
    unless_null $P2257, vivify_994
    new $P2257, "Undef"
  vivify_994:
    push $P2256, $P2257
.annotate 'line', 1699
    find_lex $P2258, "@new-stages"
    unless_null $P2258, vivify_995
    $P2258 = root_new ['parrot';'ResizablePMCArray']
  vivify_995:
    find_lex $P2259, "$stagename"
    unless_null $P2259, vivify_996
    new $P2259, "Undef"
  vivify_996:
    push $P2258, $P2259
.annotate 'line', 1697
    set $P2247, $P2258
.annotate 'line', 1694
    goto if_2248_end
  if_2248:
.annotate 'line', 1695
    find_lex $P2252, "@new-stages"
    unless_null $P2252, vivify_997
    $P2252 = root_new ['parrot';'ResizablePMCArray']
  vivify_997:
    find_lex $P2253, "$stagename"
    unless_null $P2253, vivify_998
    new $P2253, "Undef"
  vivify_998:
    push $P2252, $P2253
.annotate 'line', 1696
    find_lex $P2254, "@new-stages"
    unless_null $P2254, vivify_999
    $P2254 = root_new ['parrot';'ResizablePMCArray']
  vivify_999:
    find_lex $P2255, "$_"
    unless_null $P2255, vivify_1000
    new $P2255, "Undef"
  vivify_1000:
    push $P2254, $P2255
.annotate 'line', 1694
    set $P2247, $P2254
  if_2248_end:
.annotate 'line', 1693
    set $P2240, $P2247
  if_2241_end:
.annotate 'line', 1692
    .return ($P2240)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("228_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2270
    .param pmc param_2271
.annotate 'line', 1708
    .const 'Sub' $P2309 = "229_1304284961.094" 
    capture_lex $P2309
    .lex "self", param_2270
    .lex "$name", param_2271
.annotate 'line', 1709
    $P2272 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2272
.annotate 'line', 1710
    new $P2273, "Undef"
    .lex "$sigil", $P2273
.annotate 'line', 1713
    new $P2274, "Undef"
    .lex "$idx", $P2274
.annotate 'line', 1721
    $P2275 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2275
.annotate 'line', 1709
    find_lex $P2276, "$name"
    unless_null $P2276, vivify_1002
    new $P2276, "Undef"
  vivify_1002:
    set $S2277, $P2276
    split $P2278, "::", $S2277
    store_lex "@ns", $P2278
.annotate 'line', 1710
    find_lex $P2279, "@ns"
    unless_null $P2279, vivify_1003
    $P2279 = root_new ['parrot';'ResizablePMCArray']
  vivify_1003:
    set $P2280, $P2279[0]
    unless_null $P2280, vivify_1004
    new $P2280, "Undef"
  vivify_1004:
    set $S2281, $P2280
    substr $S2282, $S2281, 0, 1
    new $P2283, 'String'
    set $P2283, $S2282
    store_lex "$sigil", $P2283
.annotate 'line', 1713
    find_lex $P2284, "$sigil"
    unless_null $P2284, vivify_1005
    new $P2284, "Undef"
  vivify_1005:
    set $S2285, $P2284
    index $I2286, "$@%&", $S2285
    new $P2287, 'Integer'
    set $P2287, $I2286
    store_lex "$idx", $P2287
.annotate 'line', 1714
    find_lex $P2289, "$idx"
    unless_null $P2289, vivify_1006
    new $P2289, "Undef"
  vivify_1006:
    set $N2290, $P2289
    isge $I2291, $N2290, 0.0
    unless $I2291, if_2288_end
.annotate 'line', 1715
    find_lex $P2292, "@ns"
    unless_null $P2292, vivify_1007
    $P2292 = root_new ['parrot';'ResizablePMCArray']
  vivify_1007:
    set $P2293, $P2292[0]
    unless_null $P2293, vivify_1008
    new $P2293, "Undef"
  vivify_1008:
    set $S2294, $P2293
    substr $S2295, $S2294, 1
    new $P2296, 'String'
    set $P2296, $S2295
    find_lex $P2297, "@ns"
    unless_null $P2297, vivify_1009
    $P2297 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2297
  vivify_1009:
    set $P2297[0], $P2296
.annotate 'line', 1716
    find_lex $P2298, "$sigil"
    unless_null $P2298, vivify_1010
    new $P2298, "Undef"
  vivify_1010:
    find_lex $P2299, "@ns"
    unless_null $P2299, vivify_1011
    $P2299 = root_new ['parrot';'ResizablePMCArray']
  vivify_1011:
    set $P2300, $P2299[-1]
    unless_null $P2300, vivify_1012
    new $P2300, "Undef"
  vivify_1012:
    concat $P2301, $P2298, $P2300
    find_lex $P2302, "@ns"
    unless_null $P2302, vivify_1013
    $P2302 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2302
  vivify_1013:
    set $P2302[-1], $P2301
  if_2288_end:
.annotate 'line', 1714
    find_lex $P2303, "@actual_ns"
    unless_null $P2303, vivify_1014
    $P2303 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
.annotate 'line', 1722
    find_lex $P2305, "@ns"
    unless_null $P2305, vivify_1015
    $P2305 = root_new ['parrot';'ResizablePMCArray']
  vivify_1015:
    defined $I2306, $P2305
    unless $I2306, for_undef_1016
    iter $P2304, $P2305
    new $P2319, 'ExceptionHandler'
    set_label $P2319, loop2318_handler
    $P2319."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2319
  loop2318_test:
    unless $P2304, loop2318_done
    shift $P2307, $P2304
  loop2318_redo:
    .const 'Sub' $P2309 = "229_1304284961.094" 
    capture_lex $P2309
    $P2309($P2307)
  loop2318_next:
    goto loop2318_test
  loop2318_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2320, exception, 'type'
    eq $P2320, .CONTROL_LOOP_NEXT, loop2318_next
    eq $P2320, .CONTROL_LOOP_REDO, loop2318_redo
  loop2318_done:
    pop_eh 
  for_undef_1016:
    find_lex $P2321, "@actual_ns"
    unless_null $P2321, vivify_1020
    $P2321 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
.annotate 'line', 1708
    .return ($P2321)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2308"  :anon :subid("229_1304284961.094") :outer("228_1304284961.094")
    .param pmc param_2310
.annotate 'line', 1722
    .lex "$_", param_2310
.annotate 'line', 1723
    find_lex $P2313, "$_"
    unless_null $P2313, vivify_1017
    new $P2313, "Undef"
  vivify_1017:
    set $S2314, $P2313
    iseq $I2315, $S2314, ""
    unless $I2315, unless_2312
    new $P2311, 'Integer'
    set $P2311, $I2315
    goto unless_2312_end
  unless_2312:
    find_lex $P2316, "@actual_ns"
    unless_null $P2316, vivify_1018
    $P2316 = root_new ['parrot';'ResizablePMCArray']
  vivify_1018:
    find_lex $P2317, "$_"
    unless_null $P2317, vivify_1019
    new $P2317, "Undef"
  vivify_1019:
    push $P2316, $P2317
    set $P2311, $P2316
  unless_2312_end:
.annotate 'line', 1722
    .return ($P2311)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("230_1304284961.094") :outer("165_1304284961.094")
    .param pmc param_2323
    .param pmc param_2324
    .param pmc param_2325
    .param pmc param_2326 :optional :named("cache")
    .param int has_param_2326 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2323
    .lex "$target", param_2324
    .lex "$pos", param_2325
    if has_param_2326, optparam_1021
    new $P2327, "Undef"
    set param_2326, $P2327
  optparam_1021:
    .lex "$cache", param_2326
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
.sub "_block2335"  :subid("231_1304284961.094") :outer("10_1304284961.094")
.annotate 'line', 1885
    .const 'Sub' $P2364 = "236_1304284961.094" 
    capture_lex $P2364
    .const 'Sub' $P2357 = "235_1304284961.094" 
    capture_lex $P2357
    .const 'Sub' $P2352 = "234_1304284961.094" 
    capture_lex $P2352
    .const 'Sub' $P2347 = "233_1304284961.094" 
    capture_lex $P2347
    .const 'Sub' $P2339 = "232_1304284961.094" 
    capture_lex $P2339
    .lex "$?PACKAGE", $P2337
    .lex "$?CLASS", $P2338
.annotate 'line', 1901
    .const 'Sub' $P2364 = "236_1304284961.094" 
    newclosure $P2412, $P2364
.annotate 'line', 1885
    .return ($P2412)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("232_1304284961.094") :outer("231_1304284961.094")
    .param pmc param_2340
.annotate 'line', 1889
    .lex "self", param_2340
.annotate 'line', 1890
    new $P2341, "ResizablePMCArray"
    find_lex $P2342, "self"
    find_lex $P2343, "$?CLASS"
    setattribute $P2342, $P2343, "@!arguments", $P2341
.annotate 'line', 1891
    new $P2344, "Hash"
    find_lex $P2345, "self"
    find_lex $P2346, "$?CLASS"
    setattribute $P2345, $P2346, "%!options", $P2344
.annotate 'line', 1889
    .return ($P2344)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("233_1304284961.094") :outer("231_1304284961.094")
    .param pmc param_2348
.annotate 'line', 1894
    .lex "self", param_2348
    find_lex $P2349, "self"
    find_lex $P2350, "$?CLASS"
    getattribute $P2351, $P2349, $P2350, "@!arguments"
    unless_null $P2351, vivify_1023
    $P2351 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    .return ($P2351)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("234_1304284961.094") :outer("231_1304284961.094")
    .param pmc param_2353
.annotate 'line', 1895
    .lex "self", param_2353
    find_lex $P2354, "self"
    find_lex $P2355, "$?CLASS"
    getattribute $P2356, $P2354, $P2355, "%!options"
    unless_null $P2356, vivify_1024
    $P2356 = root_new ['parrot';'Hash']
  vivify_1024:
    .return ($P2356)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("235_1304284961.094") :outer("231_1304284961.094")
    .param pmc param_2358
    .param pmc param_2359
.annotate 'line', 1897
    .lex "self", param_2358
    .lex "$x", param_2359
.annotate 'line', 1898
    find_lex $P2360, "self"
    find_lex $P2361, "$?CLASS"
    getattribute $P2362, $P2360, $P2361, "@!arguments"
    unless_null $P2362, vivify_1025
    $P2362 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    find_lex $P2363, "$x"
    unless_null $P2363, vivify_1026
    new $P2363, "Undef"
  vivify_1026:
    push $P2362, $P2363
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("236_1304284961.094") :outer("231_1304284961.094")
    .param pmc param_2365
    .param pmc param_2366
    .param pmc param_2367
.annotate 'line', 1901
    .const 'Sub' $P2376 = "237_1304284961.094" 
    capture_lex $P2376
    .lex "self", param_2365
    .lex "$name", param_2366
    .lex "$value", param_2367
.annotate 'line', 1904
    find_lex $P2373, "$name"
    unless_null $P2373, vivify_1027
    new $P2373, "Undef"
  vivify_1027:
    find_lex $P2370, "self"
    find_lex $P2371, "$?CLASS"
    getattribute $P2372, $P2370, $P2371, "%!options"
    unless_null $P2372, vivify_1028
    $P2372 = root_new ['parrot';'Hash']
  vivify_1028:
    exists $I2374, $P2372[$P2373]
    if $I2374, if_2369
.annotate 'line', 1913
    find_lex $P2407, "$value"
    unless_null $P2407, vivify_1029
    new $P2407, "Undef"
  vivify_1029:
    find_lex $P2408, "$name"
    unless_null $P2408, vivify_1030
    new $P2408, "Undef"
  vivify_1030:
    find_lex $P2409, "self"
    find_lex $P2410, "$?CLASS"
    getattribute $P2411, $P2409, $P2410, "%!options"
    unless_null $P2411, vivify_1031
    $P2411 = root_new ['parrot';'Hash']
    setattribute $P2409, $P2410, "%!options", $P2411
  vivify_1031:
    set $P2411[$P2408], $P2407
.annotate 'line', 1912
    set $P2368, $P2407
.annotate 'line', 1904
    goto if_2369_end
  if_2369:
    .const 'Sub' $P2376 = "237_1304284961.094" 
    capture_lex $P2376
    $P2406 = $P2376()
    set $P2368, $P2406
  if_2369_end:
.annotate 'line', 1901
    .return ($P2368)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2375"  :anon :subid("237_1304284961.094") :outer("236_1304284961.094")
.annotate 'line', 1905
    new $P2377, "Undef"
    .lex "$t", $P2377
    find_lex $P2378, "self"
    find_lex $P2379, "$?CLASS"
    getattribute $P2380, $P2378, $P2379, "%!options"
    unless_null $P2380, vivify_1032
    $P2380 = root_new ['parrot';'Hash']
  vivify_1032:
    typeof $S2381, $P2380
    new $P2382, 'String'
    set $P2382, $S2381
    store_lex "$t", $P2382
.annotate 'line', 1906
    find_lex $P2383, "$t"
    unless_null $P2383, vivify_1033
    new $P2383, "Undef"
  vivify_1033:
    "say"($P2383)
.annotate 'line', 1907
    find_lex $P2386, "$t"
    unless_null $P2386, vivify_1034
    new $P2386, "Undef"
  vivify_1034:
    set $S2387, $P2386
    iseq $I2388, $S2387, "ResizablePMCArray"
    if $I2388, if_2385
.annotate 'line', 1910
    find_lex $P2395, "$name"
    unless_null $P2395, vivify_1035
    new $P2395, "Undef"
  vivify_1035:
    find_lex $P2396, "self"
    find_lex $P2397, "$?CLASS"
    getattribute $P2398, $P2396, $P2397, "%!options"
    unless_null $P2398, vivify_1036
    $P2398 = root_new ['parrot';'Hash']
  vivify_1036:
    set $P2399, $P2398[$P2395]
    unless_null $P2399, vivify_1037
    new $P2399, "Undef"
  vivify_1037:
    find_lex $P2400, "$name"
    unless_null $P2400, vivify_1038
    new $P2400, "Undef"
  vivify_1038:
    new $P2401, "ResizablePMCArray"
    push $P2401, $P2399
    push $P2401, $P2400
    find_lex $P2402, "$name"
    unless_null $P2402, vivify_1039
    new $P2402, "Undef"
  vivify_1039:
    find_lex $P2403, "self"
    find_lex $P2404, "$?CLASS"
    getattribute $P2405, $P2403, $P2404, "%!options"
    unless_null $P2405, vivify_1040
    $P2405 = root_new ['parrot';'Hash']
    setattribute $P2403, $P2404, "%!options", $P2405
  vivify_1040:
    set $P2405[$P2402], $P2401
.annotate 'line', 1909
    set $P2384, $P2401
.annotate 'line', 1907
    goto if_2385_end
  if_2385:
.annotate 'line', 1908
    find_lex $P2389, "$name"
    unless_null $P2389, vivify_1041
    new $P2389, "Undef"
  vivify_1041:
    find_lex $P2390, "self"
    find_lex $P2391, "$?CLASS"
    getattribute $P2392, $P2390, $P2391, "%!options"
    unless_null $P2392, vivify_1042
    $P2392 = root_new ['parrot';'Hash']
  vivify_1042:
    set $P2393, $P2392[$P2389]
    unless_null $P2393, vivify_1043
    new $P2393, "Undef"
  vivify_1043:
    find_lex $P2394, "$value"
    unless_null $P2394, vivify_1044
    new $P2394, "Undef"
  vivify_1044:
    push $P2393, $P2394
.annotate 'line', 1907
    set $P2384, $P2393
  if_2385_end:
.annotate 'line', 1904
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2413"  :subid("238_1304284961.094") :outer("10_1304284961.094")
.annotate 'line', 1918
    .const 'Sub' $P2554 = "249_1304284961.094" 
    capture_lex $P2554
    .const 'Sub' $P2542 = "248_1304284961.094" 
    capture_lex $P2542
    .const 'Sub' $P2518 = "247_1304284961.094" 
    capture_lex $P2518
    .const 'Sub' $P2469 = "245_1304284961.094" 
    capture_lex $P2469
    .const 'Sub' $P2463 = "244_1304284961.094" 
    capture_lex $P2463
    .const 'Sub' $P2455 = "243_1304284961.094" 
    capture_lex $P2455
    .const 'Sub' $P2431 = "241_1304284961.094" 
    capture_lex $P2431
    .const 'Sub' $P2426 = "240_1304284961.094" 
    capture_lex $P2426
    .const 'Sub' $P2417 = "239_1304284961.094" 
    capture_lex $P2417
    .lex "$?PACKAGE", $P2415
    .lex "$?CLASS", $P2416
.annotate 'line', 1978
    .const 'Sub' $P2554 = "249_1304284961.094" 
    newclosure $P2841, $P2554
.annotate 'line', 1918
    .return ($P2841)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("239_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2418
    .param pmc param_2419
.annotate 'line', 1924
    .lex "self", param_2418
    .lex "@specs", param_2419
.annotate 'line', 1925
    new $P2420, "Undef"
    .lex "$obj", $P2420
    find_lex $P2421, "self"
    $P2422 = $P2421."CREATE"()
    store_lex "$obj", $P2422
.annotate 'line', 1926
    find_lex $P2423, "$obj"
    unless_null $P2423, vivify_1045
    new $P2423, "Undef"
  vivify_1045:
    find_lex $P2424, "@specs"
    unless_null $P2424, vivify_1046
    $P2424 = root_new ['parrot';'ResizablePMCArray']
  vivify_1046:
    $P2423."BUILD"($P2424 :named("specs"))
    find_lex $P2425, "$obj"
    unless_null $P2425, vivify_1047
    new $P2425, "Undef"
  vivify_1047:
.annotate 'line', 1924
    .return ($P2425)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("240_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2427
.annotate 'line', 1930
    .lex "self", param_2427
.annotate 'line', 1931
    new $P2428, "Integer"
    assign $P2428, 1
    find_lex $P2429, "self"
    find_lex $P2430, "$?CLASS"
    setattribute $P2429, $P2430, "$!stop-after-first-arg", $P2428
.annotate 'line', 1930
    .return ($P2428)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("241_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2432
    .param pmc param_2433 :optional :named("specs")
    .param int has_param_2433 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2447 = "242_1304284961.094" 
    capture_lex $P2447
    .lex "self", param_2432
    if has_param_2433, optparam_1048
    $P2434 = root_new ['parrot';'ResizablePMCArray']
    set param_2433, $P2434
  optparam_1048:
    .lex "@specs", param_2433
.annotate 'line', 1935
    new $P2435, "Integer"
    assign $P2435, 1
    find_lex $P2436, "self"
    find_lex $P2437, "$?CLASS"
    getattribute $P2438, $P2436, $P2437, "%!stopper"
    unless_null $P2438, vivify_1049
    $P2438 = root_new ['parrot';'Hash']
    setattribute $P2436, $P2437, "%!stopper", $P2438
  vivify_1049:
    set $P2438["--"], $P2435
.annotate 'line', 1936
    new $P2439, "Integer"
    assign $P2439, 0
    find_lex $P2440, "self"
    find_lex $P2441, "$?CLASS"
    setattribute $P2440, $P2441, "$!stop-after-first-arg", $P2439
.annotate 'line', 1937
    find_lex $P2443, "@specs"
    unless_null $P2443, vivify_1050
    $P2443 = root_new ['parrot';'ResizablePMCArray']
  vivify_1050:
    defined $I2444, $P2443
    unless $I2444, for_undef_1051
    iter $P2442, $P2443
    new $P2453, 'ExceptionHandler'
    set_label $P2453, loop2452_handler
    $P2453."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2453
  loop2452_test:
    unless $P2442, loop2452_done
    shift $P2445, $P2442
  loop2452_redo:
    .const 'Sub' $P2447 = "242_1304284961.094" 
    capture_lex $P2447
    $P2447($P2445)
  loop2452_next:
    goto loop2452_test
  loop2452_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2454, exception, 'type'
    eq $P2454, .CONTROL_LOOP_NEXT, loop2452_next
    eq $P2454, .CONTROL_LOOP_REDO, loop2452_redo
  loop2452_done:
    pop_eh 
  for_undef_1051:
.annotate 'line', 1934
    .return ($P2442)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2446"  :anon :subid("242_1304284961.094") :outer("241_1304284961.094")
    .param pmc param_2448
.annotate 'line', 1937
    .lex "$_", param_2448
.annotate 'line', 1938
    find_lex $P2449, "self"
    find_lex $P2450, "$_"
    unless_null $P2450, vivify_1052
    new $P2450, "Undef"
  vivify_1052:
    $P2451 = $P2449."add-spec"($P2450)
.annotate 'line', 1937
    .return ($P2451)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("243_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2456
    .param pmc param_2457
.annotate 'line', 1941
    .lex "self", param_2456
    .lex "$x", param_2457
.annotate 'line', 1942
    new $P2458, "Integer"
    assign $P2458, 1
    find_lex $P2459, "$x"
    unless_null $P2459, vivify_1053
    new $P2459, "Undef"
  vivify_1053:
    find_lex $P2460, "self"
    find_lex $P2461, "$?CLASS"
    getattribute $P2462, $P2460, $P2461, "%!stopper"
    unless_null $P2462, vivify_1054
    $P2462 = root_new ['parrot';'Hash']
    setattribute $P2460, $P2461, "%!stopper", $P2462
  vivify_1054:
    set $P2462[$P2459], $P2458
.annotate 'line', 1941
    .return ($P2458)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("244_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2464
    .param pmc param_2465
.annotate 'line', 1945
    .lex "self", param_2464
    .lex "$s", param_2465
.annotate 'line', 1946
    find_lex $P2466, "$s"
    unless_null $P2466, vivify_1055
    new $P2466, "Undef"
  vivify_1055:
    set $S2467, $P2466
    split $P2468, "|", $S2467
.annotate 'line', 1945
    .return ($P2468)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("245_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2470
    .param pmc param_2471
.annotate 'line', 1950
    .const 'Sub' $P2508 = "246_1304284961.094" 
    capture_lex $P2508
    .lex "self", param_2470
    .lex "$s", param_2471
.annotate 'line', 1951
    new $P2472, "Undef"
    .lex "$i", $P2472
.annotate 'line', 1952
    new $P2473, "Undef"
    .lex "$type", $P2473
.annotate 'line', 1953
    $P2474 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2474
.annotate 'line', 1951
    find_lex $P2475, "$s"
    unless_null $P2475, vivify_1056
    new $P2475, "Undef"
  vivify_1056:
    set $S2476, $P2475
    index $I2477, $S2476, "="
    new $P2478, 'Integer'
    set $P2478, $I2477
    store_lex "$i", $P2478
    find_lex $P2479, "$type"
    unless_null $P2479, vivify_1057
    new $P2479, "Undef"
  vivify_1057:
    find_lex $P2480, "@options"
    unless_null $P2480, vivify_1058
    $P2480 = root_new ['parrot';'ResizablePMCArray']
  vivify_1058:
.annotate 'line', 1954
    find_lex $P2482, "$i"
    unless_null $P2482, vivify_1059
    new $P2482, "Undef"
  vivify_1059:
    set $N2483, $P2482
    islt $I2484, $N2483, 0.0
    if $I2484, if_2481
.annotate 'line', 1958
    find_lex $P2489, "$s"
    unless_null $P2489, vivify_1060
    new $P2489, "Undef"
  vivify_1060:
    set $S2490, $P2489
    find_lex $P2491, "$i"
    unless_null $P2491, vivify_1061
    new $P2491, "Undef"
  vivify_1061:
    add $P2492, $P2491, 1
    set $I2493, $P2492
    substr $S2494, $S2490, $I2493
    new $P2495, 'String'
    set $P2495, $S2494
    store_lex "$type", $P2495
.annotate 'line', 1959
    find_lex $P2496, "self"
    find_lex $P2497, "$s"
    unless_null $P2497, vivify_1062
    new $P2497, "Undef"
  vivify_1062:
    set $S2498, $P2497
    find_lex $P2499, "$i"
    unless_null $P2499, vivify_1063
    new $P2499, "Undef"
  vivify_1063:
    set $I2500, $P2499
    substr $S2501, $S2498, 0, $I2500
    $P2502 = $P2496."split-option-aliases"($S2501)
    store_lex "@options", $P2502
.annotate 'line', 1957
    goto if_2481_end
  if_2481:
.annotate 'line', 1955
    new $P2485, "String"
    assign $P2485, "b"
    store_lex "$type", $P2485
.annotate 'line', 1956
    find_lex $P2486, "self"
    find_lex $P2487, "$s"
    unless_null $P2487, vivify_1064
    new $P2487, "Undef"
  vivify_1064:
    $P2488 = $P2486."split-option-aliases"($P2487)
    store_lex "@options", $P2488
  if_2481_end:
.annotate 'line', 1961
    find_lex $P2504, "@options"
    unless_null $P2504, vivify_1065
    $P2504 = root_new ['parrot';'ResizablePMCArray']
  vivify_1065:
    defined $I2505, $P2504
    unless $I2505, for_undef_1066
    iter $P2503, $P2504
    new $P2516, 'ExceptionHandler'
    set_label $P2516, loop2515_handler
    $P2516."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2516
  loop2515_test:
    unless $P2503, loop2515_done
    shift $P2506, $P2503
  loop2515_redo:
    .const 'Sub' $P2508 = "246_1304284961.094" 
    capture_lex $P2508
    $P2508($P2506)
  loop2515_next:
    goto loop2515_test
  loop2515_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2517, exception, 'type'
    eq $P2517, .CONTROL_LOOP_NEXT, loop2515_next
    eq $P2517, .CONTROL_LOOP_REDO, loop2515_redo
  loop2515_done:
    pop_eh 
  for_undef_1066:
.annotate 'line', 1950
    .return ($P2503)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2507"  :anon :subid("246_1304284961.094") :outer("245_1304284961.094")
    .param pmc param_2509
.annotate 'line', 1961
    .lex "$_", param_2509
.annotate 'line', 1962
    find_lex $P2510, "$type"
    unless_null $P2510, vivify_1067
    new $P2510, "Undef"
  vivify_1067:
    find_lex $P2511, "$_"
    unless_null $P2511, vivify_1068
    new $P2511, "Undef"
  vivify_1068:
    find_lex $P2512, "self"
    find_lex $P2513, "$?CLASS"
    getattribute $P2514, $P2512, $P2513, "%!options"
    unless_null $P2514, vivify_1069
    $P2514 = root_new ['parrot';'Hash']
    setattribute $P2512, $P2513, "%!options", $P2514
  vivify_1069:
    set $P2514[$P2511], $P2510
.annotate 'line', 1961
    .return ($P2510)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("247_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2521
    .param pmc param_2522
.annotate 'line', 1967
    new $P2520, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2520, control_2519
    push_eh $P2520
    .lex "self", param_2521
    .lex "$x", param_2522
.annotate 'line', 1968
    find_lex $P2526, "$x"
    unless_null $P2526, vivify_1070
    new $P2526, "Undef"
  vivify_1070:
    set $S2527, $P2526
    iseq $I2528, $S2527, "-"
    unless $I2528, unless_2525
    new $P2524, 'Integer'
    set $P2524, $I2528
    goto unless_2525_end
  unless_2525:
    find_lex $P2529, "$x"
    unless_null $P2529, vivify_1071
    new $P2529, "Undef"
  vivify_1071:
    set $S2530, $P2529
    iseq $I2531, $S2530, "--"
    new $P2524, 'Integer'
    set $P2524, $I2531
  unless_2525_end:
    unless $P2524, if_2523_end
    new $P2532, "Exception"
    set $P2532['type'], .CONTROL_RETURN
    new $P2533, "Integer"
    assign $P2533, 0
    setattribute $P2532, 'payload', $P2533
    throw $P2532
  if_2523_end:
.annotate 'line', 1969
    find_lex $P2535, "$x"
    unless_null $P2535, vivify_1072
    new $P2535, "Undef"
  vivify_1072:
    set $S2536, $P2535
    substr $S2537, $S2536, 0, 1
    iseq $I2538, $S2537, "-"
    unless $I2538, if_2534_end
    new $P2539, "Exception"
    set $P2539['type'], .CONTROL_RETURN
    new $P2540, "Integer"
    assign $P2540, 1
    setattribute $P2539, 'payload', $P2540
    throw $P2539
  if_2534_end:
.annotate 'line', 1967
    .return (0)
  control_2519:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2541, exception, "payload"
    .return ($P2541)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("248_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2543
    .param pmc param_2544
.annotate 'line', 1973
    .lex "self", param_2543
    .lex "$x", param_2544
.annotate 'line', 1974
    new $P2545, "Undef"
    .lex "$spec", $P2545
    find_lex $P2546, "$x"
    unless_null $P2546, vivify_1073
    new $P2546, "Undef"
  vivify_1073:
    find_lex $P2547, "self"
    find_lex $P2548, "$?CLASS"
    getattribute $P2549, $P2547, $P2548, "%!options"
    unless_null $P2549, vivify_1074
    $P2549 = root_new ['parrot';'Hash']
  vivify_1074:
    set $P2550, $P2549[$P2546]
    unless_null $P2550, vivify_1075
    new $P2550, "Undef"
  vivify_1075:
    store_lex "$spec", $P2550
.annotate 'line', 1975
    find_lex $P2551, "$spec"
    unless_null $P2551, vivify_1076
    new $P2551, "Undef"
  vivify_1076:
    set $S2552, $P2551
    iseq $I2553, $S2552, "s"
.annotate 'line', 1973
    .return ($I2553)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("249_1304284961.094") :outer("238_1304284961.094")
    .param pmc param_2557
    .param pmc param_2558
.annotate 'line', 1978
    .const 'Sub' $P2649 = "252_1304284961.094" 
    capture_lex $P2649
    .const 'Sub' $P2611 = "251_1304284961.094" 
    capture_lex $P2611
    .const 'Sub' $P2562 = "250_1304284961.094" 
    capture_lex $P2562
    new $P2556, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2556, control_2555
    push_eh $P2556
    .lex "self", param_2557
    .lex "@args", param_2558
.annotate 'line', 1979
    new $P2559, "Undef"
    .lex "$i", $P2559
.annotate 'line', 1980
    new $P2560, "Undef"
    .lex "$arg-count", $P2560
.annotate 'line', 1982
    new $P2561, "Undef"
    .lex "$result", $P2561
.annotate 'line', 1986
    .const 'Sub' $P2562 = "250_1304284961.094" 
    newclosure $P2610, $P2562
    .lex "get-value", $P2610
.annotate 'line', 2001
    .const 'Sub' $P2611 = "251_1304284961.094" 
    newclosure $P2629, $P2611
    .lex "slurp-rest", $P2629
.annotate 'line', 1979
    new $P2630, "Integer"
    assign $P2630, 0
    store_lex "$i", $P2630
.annotate 'line', 1980
    find_lex $P2631, "@args"
    unless_null $P2631, vivify_1102
    $P2631 = root_new ['parrot';'ResizablePMCArray']
  vivify_1102:
    set $N2632, $P2631
    new $P2633, 'Float'
    set $P2633, $N2632
    store_lex "$arg-count", $P2633
.annotate 'line', 1982
    get_hll_global $P2634, "GLOBAL"
    nqp_get_package_through_who $P2635, $P2634, "HLL"
    nqp_get_package_through_who $P2636, $P2635, "CommandLine"
    get_who $P2637, $P2636
    set $P2638, $P2637["Result"]
    $P2639 = $P2638."new"()
    store_lex "$result", $P2639
.annotate 'line', 1983
    find_lex $P2640, "$result"
    unless_null $P2640, vivify_1103
    new $P2640, "Undef"
  vivify_1103:
    $P2640."init"()
    find_lex $P2641, "get-value"
    find_lex $P2642, "slurp-rest"
.annotate 'line', 2009
    new $P2836, 'ExceptionHandler'
    set_label $P2836, loop2835_handler
    $P2836."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2836
  loop2835_test:
    find_lex $P2643, "$i"
    unless_null $P2643, vivify_1104
    new $P2643, "Undef"
  vivify_1104:
    set $N2644, $P2643
    find_lex $P2645, "$arg-count"
    unless_null $P2645, vivify_1105
    new $P2645, "Undef"
  vivify_1105:
    set $N2646, $P2645
    islt $I2647, $N2644, $N2646
    unless $I2647, loop2835_done
  loop2835_redo:
    .const 'Sub' $P2649 = "252_1304284961.094" 
    capture_lex $P2649
    $P2649()
  loop2835_next:
    goto loop2835_test
  loop2835_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2837, exception, 'type'
    eq $P2837, .CONTROL_LOOP_NEXT, loop2835_next
    eq $P2837, .CONTROL_LOOP_REDO, loop2835_redo
  loop2835_done:
    pop_eh 
.annotate 'line', 2061
    new $P2838, "Exception"
    set $P2838['type'], .CONTROL_RETURN
    find_lex $P2839, "$result"
    unless_null $P2839, vivify_1166
    new $P2839, "Undef"
  vivify_1166:
    setattribute $P2838, 'payload', $P2839
    throw $P2838
.annotate 'line', 1978
    .return ()
  control_2555:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2840, exception, "payload"
    .return ($P2840)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("250_1304284961.094") :outer("249_1304284961.094")
    .param pmc param_2563
.annotate 'line', 1986
    .lex "$opt", param_2563
.annotate 'line', 1987
    find_lex $P2566, "$i"
    unless_null $P2566, vivify_1077
    new $P2566, "Undef"
  vivify_1077:
    set $N2567, $P2566
    find_lex $P2568, "$arg-count"
    unless_null $P2568, vivify_1078
    new $P2568, "Undef"
  vivify_1078:
    sub $P2569, $P2568, 1
    set $N2570, $P2569
    iseq $I2571, $N2567, $N2570
    if $I2571, if_2565
.annotate 'line', 1989
    find_lex $P2578, "self"
    find_lex $P2579, "$i"
    unless_null $P2579, vivify_1079
    new $P2579, "Undef"
  vivify_1079:
    add $P2580, $P2579, 1
    set $I2581, $P2580
    find_lex $P2582, "@args"
    unless_null $P2582, vivify_1080
    $P2582 = root_new ['parrot';'ResizablePMCArray']
  vivify_1080:
    set $P2583, $P2582[$I2581]
    unless_null $P2583, vivify_1081
    new $P2583, "Undef"
  vivify_1081:
    $P2584 = $P2578."is-option"($P2583)
    if $P2584, if_2577
.annotate 'line', 1991
    find_lex $P2591, "$i"
    unless_null $P2591, vivify_1082
    new $P2591, "Undef"
  vivify_1082:
    add $P2592, $P2591, 1
    set $I2593, $P2592
    find_lex $P2594, "@args"
    unless_null $P2594, vivify_1083
    $P2594 = root_new ['parrot';'ResizablePMCArray']
  vivify_1083:
    set $P2595, $P2594[$I2593]
    unless_null $P2595, vivify_1084
    new $P2595, "Undef"
  vivify_1084:
    find_lex $P2596, "self"
    find_lex $P2597, "$?CLASS"
    getattribute $P2598, $P2596, $P2597, "%!stopper"
    unless_null $P2598, vivify_1085
    $P2598 = root_new ['parrot';'Hash']
  vivify_1085:
    set $P2599, $P2598[$P2595]
    unless_null $P2599, vivify_1086
    new $P2599, "Undef"
  vivify_1086:
    if $P2599, if_2590
.annotate 'line', 1993
    find_lex $P2604, "$i"
    unless_null $P2604, vivify_1087
    new $P2604, "Undef"
  vivify_1087:
    clone $P2605, $P2604
    inc $P2604
    find_lex $P2606, "$i"
    unless_null $P2606, vivify_1088
    new $P2606, "Undef"
  vivify_1088:
    set $I2607, $P2606
    find_lex $P2608, "@args"
    unless_null $P2608, vivify_1089
    $P2608 = root_new ['parrot';'ResizablePMCArray']
  vivify_1089:
    set $P2609, $P2608[$I2607]
    unless_null $P2609, vivify_1090
    new $P2609, "Undef"
  vivify_1090:
    set $P2589, $P2609
.annotate 'line', 1991
    goto if_2590_end
  if_2590:
.annotate 'line', 1992
    new $P2600, 'String'
    set $P2600, "Option "
    find_lex $P2601, "$opt"
    unless_null $P2601, vivify_1091
    new $P2601, "Undef"
  vivify_1091:
    concat $P2602, $P2600, $P2601
    concat $P2603, $P2602, " needs a value, but is followed by a stopper"
    die $P2603
  if_2590_end:
.annotate 'line', 1991
    set $P2576, $P2589
.annotate 'line', 1989
    goto if_2577_end
  if_2577:
.annotate 'line', 1990
    new $P2585, 'String'
    set $P2585, "Option "
    find_lex $P2586, "$opt"
    unless_null $P2586, vivify_1092
    new $P2586, "Undef"
  vivify_1092:
    concat $P2587, $P2585, $P2586
    concat $P2588, $P2587, " needs a value, but is followed by an option"
    die $P2588
  if_2577_end:
.annotate 'line', 1989
    set $P2564, $P2576
.annotate 'line', 1987
    goto if_2565_end
  if_2565:
.annotate 'line', 1988
    new $P2572, 'String'
    set $P2572, "Option "
    find_lex $P2573, "$opt"
    unless_null $P2573, vivify_1093
    new $P2573, "Undef"
  vivify_1093:
    concat $P2574, $P2572, $P2573
    concat $P2575, $P2574, " needs a value"
    die $P2575
  if_2565_end:
.annotate 'line', 1986
    .return ($P2564)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("251_1304284961.094") :outer("249_1304284961.094")
.annotate 'line', 2001
    find_lex $P2612, "$i"
    unless_null $P2612, vivify_1094
    new $P2612, "Undef"
  vivify_1094:
    clone $P2613, $P2612
    inc $P2612
.annotate 'line', 2003
    new $P2627, 'ExceptionHandler'
    set_label $P2627, loop2626_handler
    $P2627."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2627
  loop2626_test:
    find_lex $P2614, "$i"
    unless_null $P2614, vivify_1095
    new $P2614, "Undef"
  vivify_1095:
    set $N2615, $P2614
    find_lex $P2616, "$arg-count"
    unless_null $P2616, vivify_1096
    new $P2616, "Undef"
  vivify_1096:
    set $N2617, $P2616
    islt $I2618, $N2615, $N2617
    unless $I2618, loop2626_done
  loop2626_redo:
.annotate 'line', 2004
    find_lex $P2619, "$result"
    unless_null $P2619, vivify_1097
    new $P2619, "Undef"
  vivify_1097:
    find_lex $P2620, "$i"
    unless_null $P2620, vivify_1098
    new $P2620, "Undef"
  vivify_1098:
    set $I2621, $P2620
    find_lex $P2622, "@args"
    unless_null $P2622, vivify_1099
    $P2622 = root_new ['parrot';'ResizablePMCArray']
  vivify_1099:
    set $P2623, $P2622[$I2621]
    unless_null $P2623, vivify_1100
    new $P2623, "Undef"
  vivify_1100:
    $P2619."add-argument"($P2623)
    find_lex $P2624, "$i"
    unless_null $P2624, vivify_1101
    new $P2624, "Undef"
  vivify_1101:
    clone $P2625, $P2624
    inc $P2624
  loop2626_next:
.annotate 'line', 2003
    goto loop2626_test
  loop2626_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2628, exception, 'type'
    eq $P2628, .CONTROL_LOOP_NEXT, loop2626_next
    eq $P2628, .CONTROL_LOOP_REDO, loop2626_redo
  loop2626_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I2618)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2648"  :anon :subid("252_1304284961.094") :outer("249_1304284961.094")
.annotate 'line', 2009
    .const 'Sub' $P2751 = "254_1304284961.094" 
    capture_lex $P2751
    .const 'Sub' $P2665 = "253_1304284961.094" 
    capture_lex $P2665
.annotate 'line', 2010
    new $P2650, "Undef"
    .lex "$cur", $P2650
    find_lex $P2651, "$i"
    unless_null $P2651, vivify_1106
    new $P2651, "Undef"
  vivify_1106:
    set $I2652, $P2651
    find_lex $P2653, "@args"
    unless_null $P2653, vivify_1107
    $P2653 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $P2654, $P2653[$I2652]
    unless_null $P2654, vivify_1108
    new $P2654, "Undef"
  vivify_1108:
    store_lex "$cur", $P2654
.annotate 'line', 2011
    find_lex $P2656, "self"
    find_lex $P2657, "$cur"
    unless_null $P2657, vivify_1109
    new $P2657, "Undef"
  vivify_1109:
    $P2658 = $P2656."is-option"($P2657)
    if $P2658, if_2655
.annotate 'line', 2053
    find_lex $P2822, "$cur"
    unless_null $P2822, vivify_1110
    new $P2822, "Undef"
  vivify_1110:
    find_lex $P2823, "self"
    find_lex $P2824, "$?CLASS"
    getattribute $P2825, $P2823, $P2824, "%!stopper"
    unless_null $P2825, vivify_1111
    $P2825 = root_new ['parrot';'Hash']
  vivify_1111:
    set $P2826, $P2825[$P2822]
    unless_null $P2826, vivify_1112
    new $P2826, "Undef"
  vivify_1112:
    if $P2826, if_2821
.annotate 'line', 2056
    find_lex $P2827, "$result"
    unless_null $P2827, vivify_1113
    new $P2827, "Undef"
  vivify_1113:
    find_lex $P2828, "$cur"
    unless_null $P2828, vivify_1114
    new $P2828, "Undef"
  vivify_1114:
    $P2827."add-argument"($P2828)
.annotate 'line', 2057
    find_lex $P2830, "self"
    find_lex $P2831, "$?CLASS"
    getattribute $P2832, $P2830, $P2831, "$!stop-after-first-arg"
    unless_null $P2832, vivify_1115
    new $P2832, "Undef"
  vivify_1115:
    unless $P2832, if_2829_end
    "slurp-rest"()
  if_2829_end:
.annotate 'line', 2055
    goto if_2821_end
  if_2821:
.annotate 'line', 2054
    "slurp-rest"()
  if_2821_end:
.annotate 'line', 2053
    goto if_2655_end
  if_2655:
.annotate 'line', 2012
    find_lex $P2660, "$cur"
    unless_null $P2660, vivify_1116
    new $P2660, "Undef"
  vivify_1116:
    set $S2661, $P2660
    substr $S2662, $S2661, 0, 2
    iseq $I2663, $S2662, "--"
    if $I2663, if_2659
.annotate 'line', 2031
    .const 'Sub' $P2751 = "254_1304284961.094" 
    capture_lex $P2751
    $P2751()
    goto if_2659_end
  if_2659:
.annotate 'line', 2012
    .const 'Sub' $P2665 = "253_1304284961.094" 
    capture_lex $P2665
    $P2665()
  if_2659_end:
  if_2655_end:
.annotate 'line', 2011
    find_lex $P2833, "$i"
    unless_null $P2833, vivify_1165
    new $P2833, "Undef"
  vivify_1165:
    clone $P2834, $P2833
    inc $P2833
.annotate 'line', 2009
    .return ($P2834)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2750"  :anon :subid("254_1304284961.094") :outer("252_1304284961.094")
.annotate 'line', 2031
    .const 'Sub' $P2796 = "255_1304284961.094" 
    capture_lex $P2796
.annotate 'line', 2032
    new $P2752, "Undef"
    .lex "$opt", $P2752
    find_lex $P2753, "$cur"
    unless_null $P2753, vivify_1117
    new $P2753, "Undef"
  vivify_1117:
    set $S2754, $P2753
    substr $S2755, $S2754, 1
    new $P2756, 'String'
    set $P2756, $S2755
    store_lex "$opt", $P2756
.annotate 'line', 2033
    find_lex $P2759, "$opt"
    unless_null $P2759, vivify_1118
    new $P2759, "Undef"
  vivify_1118:
    set $S2760, $P2759
    length $I2761, $S2760
    set $N2762, $I2761
    iseq $I2763, $N2762, 1.0
    if $I2763, if_2758
.annotate 'line', 2043
    .const 'Sub' $P2796 = "255_1304284961.094" 
    capture_lex $P2796
    $P2820 = $P2796()
    set $P2757, $P2820
.annotate 'line', 2033
    goto if_2758_end
  if_2758:
.annotate 'line', 2035
    find_lex $P2765, "$opt"
    unless_null $P2765, vivify_1126
    new $P2765, "Undef"
  vivify_1126:
    find_lex $P2766, "self"
    find_lex $P2767, "$?CLASS"
    getattribute $P2768, $P2766, $P2767, "%!options"
    unless_null $P2768, vivify_1127
    $P2768 = root_new ['parrot';'Hash']
  vivify_1127:
    set $P2769, $P2768[$P2765]
    unless_null $P2769, vivify_1128
    new $P2769, "Undef"
  vivify_1128:
    if $P2769, unless_2764_end
    new $P2770, 'String'
    set $P2770, "No such option -"
    find_lex $P2771, "$opt"
    unless_null $P2771, vivify_1129
    new $P2771, "Undef"
  vivify_1129:
    concat $P2772, $P2770, $P2771
    die $P2772
  unless_2764_end:
.annotate 'line', 2036
    find_lex $P2774, "self"
    find_lex $P2775, "$opt"
    unless_null $P2775, vivify_1130
    new $P2775, "Undef"
  vivify_1130:
    $P2776 = $P2774."wants-value"($P2775)
    if $P2776, if_2773
.annotate 'line', 2040
    find_lex $P2783, "$result"
    unless_null $P2783, vivify_1131
    new $P2783, "Undef"
  vivify_1131:
    find_lex $P2784, "$opt"
    unless_null $P2784, vivify_1132
    new $P2784, "Undef"
  vivify_1132:
    $P2783."add-option"($P2784, 1)
.annotate 'line', 2039
    goto if_2773_end
  if_2773:
.annotate 'line', 2037
    find_lex $P2777, "$result"
    unless_null $P2777, vivify_1133
    new $P2777, "Undef"
  vivify_1133:
    find_lex $P2778, "$opt"
    unless_null $P2778, vivify_1134
    new $P2778, "Undef"
  vivify_1134:
.annotate 'line', 2038
    new $P2779, 'String'
    set $P2779, "-"
    find_lex $P2780, "$opt"
    unless_null $P2780, vivify_1135
    new $P2780, "Undef"
  vivify_1135:
    concat $P2781, $P2779, $P2780
    $P2782 = "get-value"($P2781)
    $P2777."add-option"($P2778, $P2782)
  if_2773_end:
.annotate 'line', 2042
    new $P2787, 'String'
    set $P2787, "-"
    find_lex $P2788, "$opt"
    unless_null $P2788, vivify_1136
    new $P2788, "Undef"
  vivify_1136:
    concat $P2789, $P2787, $P2788
    find_lex $P2790, "self"
    find_lex $P2791, "$?CLASS"
    getattribute $P2792, $P2790, $P2791, "%!stopper"
    unless_null $P2792, vivify_1137
    $P2792 = root_new ['parrot';'Hash']
  vivify_1137:
    set $P2793, $P2792[$P2789]
    unless_null $P2793, vivify_1138
    new $P2793, "Undef"
  vivify_1138:
    if $P2793, if_2786
    set $P2785, $P2793
    goto if_2786_end
  if_2786:
    $P2794 = "slurp-rest"()
    set $P2785, $P2794
  if_2786_end:
.annotate 'line', 2033
    set $P2757, $P2785
  if_2758_end:
.annotate 'line', 2031
    .return ($P2757)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2795"  :anon :subid("255_1304284961.094") :outer("254_1304284961.094")
.annotate 'line', 2043
    .const 'Sub' $P2802 = "256_1304284961.094" 
    capture_lex $P2802
.annotate 'line', 2045
    new $P2797, "Undef"
    .lex "$iter", $P2797
    find_lex $P2798, "$opt"
    unless_null $P2798, vivify_1119
    new $P2798, "Undef"
  vivify_1119:
    iter $P2799, $P2798
    store_lex "$iter", $P2799
.annotate 'line', 2046
    new $P2818, 'ExceptionHandler'
    set_label $P2818, loop2817_handler
    $P2818."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2818
  loop2817_test:
    find_lex $P2800, "$iter"
    unless_null $P2800, vivify_1120
    new $P2800, "Undef"
  vivify_1120:
    unless $P2800, loop2817_done
  loop2817_redo:
    .const 'Sub' $P2802 = "256_1304284961.094" 
    capture_lex $P2802
    $P2802()
  loop2817_next:
    goto loop2817_test
  loop2817_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2819, exception, 'type'
    eq $P2819, .CONTROL_LOOP_NEXT, loop2817_next
    eq $P2819, .CONTROL_LOOP_REDO, loop2817_redo
  loop2817_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P2800)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2801"  :anon :subid("256_1304284961.094") :outer("255_1304284961.094")
.annotate 'line', 2047
    new $P2803, "Undef"
    .lex "$o", $P2803
    find_lex $P2804, "$iter"
    unless_null $P2804, vivify_1121
    new $P2804, "Undef"
  vivify_1121:
    shift $P2805, $P2804
    store_lex "$o", $P2805
.annotate 'line', 2048
    find_lex $P2807, "self"
    find_lex $P2808, "$o"
    unless_null $P2808, vivify_1122
    new $P2808, "Undef"
  vivify_1122:
    $P2809 = $P2807."wants-value"($P2808)
    unless $P2809, if_2806_end
    new $P2810, 'String'
    set $P2810, "Option -"
    find_lex $P2811, "$o"
    unless_null $P2811, vivify_1123
    new $P2811, "Undef"
  vivify_1123:
    concat $P2812, $P2810, $P2811
    concat $P2813, $P2812, " requires a value and cannot be grouped"
    die $P2813
  if_2806_end:
.annotate 'line', 2049
    find_lex $P2814, "$result"
    unless_null $P2814, vivify_1124
    new $P2814, "Undef"
  vivify_1124:
    find_lex $P2815, "$o"
    unless_null $P2815, vivify_1125
    new $P2815, "Undef"
  vivify_1125:
    $P2816 = $P2814."add-option"($P2815, 1)
.annotate 'line', 2046
    .return ($P2816)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2664"  :anon :subid("253_1304284961.094") :outer("252_1304284961.094")
.annotate 'line', 2014
    new $P2666, "Undef"
    .lex "$opt", $P2666
.annotate 'line', 2015
    new $P2667, "Undef"
    .lex "$idx", $P2667
.annotate 'line', 2016
    new $P2668, "Undef"
    .lex "$value", $P2668
.annotate 'line', 2017
    new $P2669, "Undef"
    .lex "$has-value", $P2669
.annotate 'line', 2014
    find_lex $P2670, "$i"
    unless_null $P2670, vivify_1139
    new $P2670, "Undef"
  vivify_1139:
    set $I2671, $P2670
    find_lex $P2672, "@args"
    unless_null $P2672, vivify_1140
    $P2672 = root_new ['parrot';'ResizablePMCArray']
  vivify_1140:
    set $P2673, $P2672[$I2671]
    unless_null $P2673, vivify_1141
    new $P2673, "Undef"
  vivify_1141:
    set $S2674, $P2673
    substr $S2675, $S2674, 2
    new $P2676, 'String'
    set $P2676, $S2675
    store_lex "$opt", $P2676
.annotate 'line', 2015
    find_lex $P2677, "$opt"
    unless_null $P2677, vivify_1142
    new $P2677, "Undef"
  vivify_1142:
    set $S2678, $P2677
    index $I2679, $S2678, "="
    new $P2680, 'Integer'
    set $P2680, $I2679
    store_lex "$idx", $P2680
.annotate 'line', 2016
    new $P2681, "Integer"
    assign $P2681, 1
    store_lex "$value", $P2681
.annotate 'line', 2017
    new $P2682, "Integer"
    assign $P2682, 0
    store_lex "$has-value", $P2682
.annotate 'line', 2019
    find_lex $P2684, "$idx"
    unless_null $P2684, vivify_1143
    new $P2684, "Undef"
  vivify_1143:
    set $N2685, $P2684
    isge $I2686, $N2685, 0.0
    unless $I2686, if_2683_end
.annotate 'line', 2020
    find_lex $P2687, "$opt"
    unless_null $P2687, vivify_1144
    new $P2687, "Undef"
  vivify_1144:
    set $S2688, $P2687
    find_lex $P2689, "$idx"
    unless_null $P2689, vivify_1145
    new $P2689, "Undef"
  vivify_1145:
    add $P2690, $P2689, 1
    set $I2691, $P2690
    substr $S2692, $S2688, $I2691
    new $P2693, 'String'
    set $P2693, $S2692
    store_lex "$value", $P2693
.annotate 'line', 2021
    find_lex $P2694, "$opt"
    unless_null $P2694, vivify_1146
    new $P2694, "Undef"
  vivify_1146:
    set $S2695, $P2694
    find_lex $P2696, "$idx"
    unless_null $P2696, vivify_1147
    new $P2696, "Undef"
  vivify_1147:
    set $I2697, $P2696
    substr $S2698, $S2695, 0, $I2697
    new $P2699, 'String'
    set $P2699, $S2698
    store_lex "$opt", $P2699
.annotate 'line', 2022
    new $P2700, "Integer"
    assign $P2700, 1
    store_lex "$has-value", $P2700
  if_2683_end:
.annotate 'line', 2024
    find_lex $P2705, "$opt"
    unless_null $P2705, vivify_1148
    new $P2705, "Undef"
  vivify_1148:
    find_lex $P2702, "self"
    find_lex $P2703, "$?CLASS"
    getattribute $P2704, $P2702, $P2703, "%!options"
    unless_null $P2704, vivify_1149
    $P2704 = root_new ['parrot';'Hash']
  vivify_1149:
    exists $I2706, $P2704[$P2705]
    if $I2706, unless_2701_end
    new $P2707, 'String'
    set $P2707, "Illegal option --"
    find_lex $P2708, "$opt"
    unless_null $P2708, vivify_1150
    new $P2708, "Undef"
  vivify_1150:
    concat $P2709, $P2707, $P2708
    die $P2709
  unless_2701_end:
.annotate 'line', 2025
    find_lex $P2713, "$opt"
    unless_null $P2713, vivify_1151
    new $P2713, "Undef"
  vivify_1151:
    find_lex $P2714, "self"
    find_lex $P2715, "$?CLASS"
    getattribute $P2716, $P2714, $P2715, "%!options"
    unless_null $P2716, vivify_1152
    $P2716 = root_new ['parrot';'Hash']
  vivify_1152:
    set $P2717, $P2716[$P2713]
    unless_null $P2717, vivify_1153
    new $P2717, "Undef"
  vivify_1153:
    set $S2718, $P2717
    isne $I2719, $S2718, "s"
    if $I2719, if_2712
    new $P2711, 'Integer'
    set $P2711, $I2719
    goto if_2712_end
  if_2712:
    find_lex $P2720, "$has-value"
    unless_null $P2720, vivify_1154
    new $P2720, "Undef"
  vivify_1154:
    set $P2711, $P2720
  if_2712_end:
    unless $P2711, if_2710_end
    new $P2721, 'String'
    set $P2721, "Option --"
    find_lex $P2722, "$opt"
    unless_null $P2722, vivify_1155
    new $P2722, "Undef"
  vivify_1155:
    concat $P2723, $P2721, $P2722
    concat $P2724, $P2723, " does not allow a value"
    die $P2724
  if_2710_end:
.annotate 'line', 2026
    find_lex $P2728, "$has-value"
    unless_null $P2728, vivify_1156
    new $P2728, "Undef"
  vivify_1156:
    isfalse $I2729, $P2728
    if $I2729, if_2727
    new $P2726, 'Integer'
    set $P2726, $I2729
    goto if_2727_end
  if_2727:
    find_lex $P2730, "self"
    find_lex $P2731, "$opt"
    unless_null $P2731, vivify_1157
    new $P2731, "Undef"
  vivify_1157:
    $P2732 = $P2730."wants-value"($P2731)
    set $P2726, $P2732
  if_2727_end:
    unless $P2726, if_2725_end
.annotate 'line', 2027
    new $P2733, 'String'
    set $P2733, "--"
    find_lex $P2734, "$opt"
    unless_null $P2734, vivify_1158
    new $P2734, "Undef"
  vivify_1158:
    concat $P2735, $P2733, $P2734
    $P2736 = "get-value"($P2735)
    store_lex "$value", $P2736
  if_2725_end:
.annotate 'line', 2029
    find_lex $P2737, "$result"
    unless_null $P2737, vivify_1159
    new $P2737, "Undef"
  vivify_1159:
    find_lex $P2738, "$opt"
    unless_null $P2738, vivify_1160
    new $P2738, "Undef"
  vivify_1160:
    find_lex $P2739, "$value"
    unless_null $P2739, vivify_1161
    new $P2739, "Undef"
  vivify_1161:
    $P2737."add-option"($P2738, $P2739)
.annotate 'line', 2030
    new $P2742, 'String'
    set $P2742, "--"
    find_lex $P2743, "$opt"
    unless_null $P2743, vivify_1162
    new $P2743, "Undef"
  vivify_1162:
    concat $P2744, $P2742, $P2743
    find_lex $P2745, "self"
    find_lex $P2746, "$?CLASS"
    getattribute $P2747, $P2745, $P2746, "%!stopper"
    unless_null $P2747, vivify_1163
    $P2747 = root_new ['parrot';'Hash']
  vivify_1163:
    set $P2748, $P2747[$P2744]
    unless_null $P2748, vivify_1164
    new $P2748, "Undef"
  vivify_1164:
    if $P2748, if_2741
    set $P2740, $P2748
    goto if_2741_end
  if_2741:
    find_lex $P2749, "slurp-rest"
    set $P2740, $P2749
  if_2741_end:
.annotate 'line', 2012
    .return ($P2740)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2842"  :subid("257_1304284961.094") :outer("10_1304284961.094")
.annotate 'line', 2096
    .const 'Sub' $P3715 = "291_1304284961.094" 
    capture_lex $P3715
    .const 'Sub' $P3710 = "290_1304284961.094" 
    capture_lex $P3710
    .const 'Sub' $P3686 = "289_1304284961.094" 
    capture_lex $P3686
    .const 'Sub' $P3653 = "288_1304284961.094" 
    capture_lex $P3653
    .const 'Sub' $P3625 = "287_1304284961.094" 
    capture_lex $P3625
    .const 'Sub' $P3578 = "286_1304284961.094" 
    capture_lex $P3578
    .const 'Sub' $P3502 = "285_1304284961.094" 
    capture_lex $P3502
    .const 'Sub' $P3498 = "284_1304284961.094" 
    capture_lex $P3498
    .const 'Sub' $P3412 = "281_1304284961.094" 
    capture_lex $P3412
    .const 'Sub' $P3335 = "280_1304284961.094" 
    capture_lex $P3335
    .const 'Sub' $P3299 = "279_1304284961.094" 
    capture_lex $P3299
    .const 'Sub' $P3236 = "278_1304284961.094" 
    capture_lex $P3236
    .const 'Sub' $P3160 = "275_1304284961.094" 
    capture_lex $P3160
    .const 'Sub' $P3119 = "274_1304284961.094" 
    capture_lex $P3119
    .const 'Sub' $P3061 = "272_1304284961.094" 
    capture_lex $P3061
    .const 'Sub' $P3023 = "271_1304284961.094" 
    capture_lex $P3023
    .const 'Sub' $P3009 = "270_1304284961.094" 
    capture_lex $P3009
    .const 'Sub' $P2988 = "269_1304284961.094" 
    capture_lex $P2988
    .const 'Sub' $P2963 = "268_1304284961.094" 
    capture_lex $P2963
    .const 'Sub' $P2949 = "267_1304284961.094" 
    capture_lex $P2949
    .const 'Sub' $P2931 = "266_1304284961.094" 
    capture_lex $P2931
    .const 'Sub' $P2911 = "265_1304284961.094" 
    capture_lex $P2911
    .const 'Sub' $P2897 = "264_1304284961.094" 
    capture_lex $P2897
    .const 'Sub' $P2879 = "263_1304284961.094" 
    capture_lex $P2879
    .const 'Sub' $P2870 = "262_1304284961.094" 
    capture_lex $P2870
    .const 'Sub' $P2855 = "259_1304284961.094" 
    capture_lex $P2855
    .const 'Sub' $P2845 = "258_1304284961.094" 
    capture_lex $P2845
    .lex "Event", $P2844
.annotate 'line', 2117
    .const 'Sub' $P2845 = "258_1304284961.094" 
    newclosure $P2849, $P2845
    .lex "addr", $P2849
.annotate 'line', 2224
    new $P2850, "Undef"
    .lex "$loader", $P2850
.annotate 'line', 2420
    new $P2851, "Undef"
    .lex "$stub_code", $P2851
    .lex "$?PACKAGE", $P2852
    .lex "$?CLASS", $P2853
.annotate 'line', 2098
    .const 'Sub' $P2855 = "259_1304284961.094" 
    capture_lex $P2855
    $P2855()
    find_lex $P2869, "addr"
.annotate 'line', 2224
    get_hll_global $P3060, "ModuleLoader"
    store_lex "$loader", $P3060
.annotate 'line', 2420
    .const 'Sub' $P3498 = "284_1304284961.094" 
    newclosure $P3501, $P3498
    store_lex "$stub_code", $P3501
.annotate 'line', 2543
    .const 'Sub' $P3715 = "291_1304284961.094" 
    newclosure $P3827, $P3715
.annotate 'line', 2096
    .return ($P3827)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("258_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2846
.annotate 'line', 2117
    .lex "$obj", param_2846
.annotate 'line', 2118
    find_lex $P2847, "$obj"
    unless_null $P2847, vivify_1167
    new $P2847, "Undef"
  vivify_1167:
    get_addr $I2848, $P2847
.annotate 'line', 2117
    .return ($I2848)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2854"  :anon :subid("259_1304284961.094") :outer("257_1304284961.094")
.annotate 'line', 2098
    .const 'Sub' $P2863 = "261_1304284961.094" 
    capture_lex $P2863
    .const 'Sub' $P2858 = "260_1304284961.094" 
    capture_lex $P2858
    .lex "$?PACKAGE", $P2856
    .lex "$?CLASS", $P2857
.annotate 'line', 2105
    .const 'Sub' $P2863 = "261_1304284961.094" 
    newclosure $P2868, $P2863
.annotate 'line', 2098
    .return ($P2868)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("260_1304284961.094") :outer("259_1304284961.094")
    .param pmc param_2859
.annotate 'line', 2101
    .lex "self", param_2859
    find_lex $P2860, "self"
    find_lex $P2861, "$?CLASS"
    getattribute $P2862, $P2860, $P2861, "$!deserialize_past"
    unless_null $P2862, vivify_1168
    new $P2862, "Undef"
  vivify_1168:
    .return ($P2862)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("261_1304284961.094") :outer("259_1304284961.094")
    .param pmc param_2864
.annotate 'line', 2105
    .lex "self", param_2864
    find_lex $P2865, "self"
    find_lex $P2866, "$?CLASS"
    getattribute $P2867, $P2865, $P2866, "$!fixup_past"
    unless_null $P2867, vivify_1169
    new $P2867, "Undef"
  vivify_1169:
    .return ($P2867)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("262_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2871
    .param pmc param_2872 :named("handle")
.annotate 'line', 2125
    .lex "self", param_2871
    .lex "$handle", param_2872
.annotate 'line', 2126
    new $P2873, "Undef"
    .lex "$obj", $P2873
    find_lex $P2874, "self"
    $P2875 = $P2874."CREATE"()
    store_lex "$obj", $P2875
.annotate 'line', 2127
    find_lex $P2876, "$obj"
    unless_null $P2876, vivify_1170
    new $P2876, "Undef"
  vivify_1170:
    find_lex $P2877, "$handle"
    unless_null $P2877, vivify_1171
    new $P2877, "Undef"
  vivify_1171:
    $P2876."BUILD"($P2877 :named("handle"))
    find_lex $P2878, "$obj"
    unless_null $P2878, vivify_1172
    new $P2878, "Undef"
  vivify_1172:
.annotate 'line', 2125
    .return ($P2878)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("263_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2880
    .param pmc param_2881 :optional :named("handle")
    .param int has_param_2881 :opt_flag
.annotate 'line', 2131
    .lex "self", param_2880
    if has_param_2881, optparam_1173
    new $P2882, "Undef"
    set param_2881, $P2882
  optparam_1173:
    .lex "$handle", param_2881
.annotate 'line', 2132
    find_lex $P2883, "$handle"
    unless_null $P2883, vivify_1174
    new $P2883, "Undef"
  vivify_1174:
    set $S2884, $P2883
    nqp_create_sc $P2885, $S2884
    find_lex $P2886, "self"
    find_lex $P2887, "$?CLASS"
    setattribute $P2886, $P2887, "$!sc", $P2885
.annotate 'line', 2133
    find_lex $P2888, "$handle"
    unless_null $P2888, vivify_1175
    new $P2888, "Undef"
  vivify_1175:
    find_lex $P2889, "self"
    find_lex $P2890, "$?CLASS"
    setattribute $P2889, $P2890, "$!handle", $P2888
.annotate 'line', 2134
    new $P2891, "Hash"
    find_lex $P2892, "self"
    find_lex $P2893, "$?CLASS"
    setattribute $P2892, $P2893, "%!addr_to_slot", $P2891
.annotate 'line', 2135
    new $P2894, "ResizablePMCArray"
    find_lex $P2895, "self"
    find_lex $P2896, "$?CLASS"
    setattribute $P2895, $P2896, "@!event_stream", $P2894
.annotate 'line', 2131
    .return ($P2894)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("264_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2898
    .param pmc param_2899
.annotate 'line', 2139
    .lex "self", param_2898
    .lex "$obj", param_2899
.annotate 'line', 2140
    new $P2900, "Undef"
    .lex "$slot", $P2900
    find_lex $P2901, "$obj"
    unless_null $P2901, vivify_1176
    new $P2901, "Undef"
  vivify_1176:
    $P2902 = "addr"($P2901)
    find_lex $P2903, "self"
    find_lex $P2904, "$?CLASS"
    getattribute $P2905, $P2903, $P2904, "%!addr_to_slot"
    unless_null $P2905, vivify_1177
    $P2905 = root_new ['parrot';'Hash']
  vivify_1177:
    set $P2906, $P2905[$P2902]
    unless_null $P2906, vivify_1178
    new $P2906, "Undef"
  vivify_1178:
    store_lex "$slot", $P2906
.annotate 'line', 2141
    find_lex $P2908, "$slot"
    unless_null $P2908, vivify_1179
    new $P2908, "Undef"
  vivify_1179:
    defined $I2909, $P2908
    if $I2909, unless_2907_end
.annotate 'line', 2142
    die "slot_for_object called on object not in context"
  unless_2907_end:
.annotate 'line', 2141
    find_lex $P2910, "$slot"
    unless_null $P2910, vivify_1180
    new $P2910, "Undef"
  vivify_1180:
.annotate 'line', 2139
    .return ($P2910)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("265_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2914
    .param pmc param_2915
.annotate 'line', 2151
    new $P2913, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2913, control_2912
    push_eh $P2913
    .lex "self", param_2914
    .lex "$obj", param_2915
.annotate 'line', 2152
    new $P2916, "Undef"
    .lex "$slot", $P2916
    find_lex $P2917, "self"
    find_lex $P2918, "$obj"
    unless_null $P2918, vivify_1181
    new $P2918, "Undef"
  vivify_1181:
    $P2919 = $P2917."slot_for_object"($P2918)
    store_lex "$slot", $P2919
.annotate 'line', 2153
    new $P2920, "Exception"
    set $P2920['type'], .CONTROL_RETURN
    get_hll_global $P2921, "GLOBAL"
    nqp_get_package_through_who $P2922, $P2921, "PAST"
    get_who $P2923, $P2922
    set $P2924, $P2923["Op"]
    find_lex $P2925, "self"
    find_lex $P2926, "$?CLASS"
    getattribute $P2927, $P2925, $P2926, "$!handle"
    unless_null $P2927, vivify_1182
    new $P2927, "Undef"
  vivify_1182:
    find_lex $P2928, "$slot"
    unless_null $P2928, vivify_1183
    new $P2928, "Undef"
  vivify_1183:
    $P2929 = $P2924."new"($P2927, $P2928, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P2920, 'payload', $P2929
    throw $P2920
.annotate 'line', 2151
    .return ()
  control_2912:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2930, exception, "payload"
    .return ($P2930)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("266_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2934
    .param pmc param_2935
    .param pmc param_2936
.annotate 'line', 2157
    new $P2933, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2933, control_2932
    push_eh $P2933
    .lex "self", param_2934
    .lex "$slot", param_2935
    .lex "$past_to_set", param_2936
.annotate 'line', 2158
    new $P2937, "Exception"
    set $P2937['type'], .CONTROL_RETURN
    get_hll_global $P2938, "GLOBAL"
    nqp_get_package_through_who $P2939, $P2938, "PAST"
    get_who $P2940, $P2939
    set $P2941, $P2940["Op"]
    find_lex $P2942, "self"
    find_lex $P2943, "$?CLASS"
    getattribute $P2944, $P2942, $P2943, "$!handle"
    unless_null $P2944, vivify_1184
    new $P2944, "Undef"
  vivify_1184:
    find_lex $P2945, "$slot"
    unless_null $P2945, vivify_1185
    new $P2945, "Undef"
  vivify_1185:
    find_lex $P2946, "$past_to_set"
    unless_null $P2946, vivify_1186
    new $P2946, "Undef"
  vivify_1186:
    $P2947 = $P2941."new"($P2944, $P2945, $P2946, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P2937, 'payload', $P2947
    throw $P2937
.annotate 'line', 2157
    .return ()
  control_2932:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2948, exception, "payload"
    .return ($P2948)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("267_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2950
    .param pmc param_2951
.annotate 'line', 2164
    .lex "self", param_2950
    .lex "$to_wrap", param_2951
.annotate 'line', 2165
    get_hll_global $P2952, "GLOBAL"
    nqp_get_package_through_who $P2953, $P2952, "PAST"
    get_who $P2954, $P2953
    set $P2955, $P2954["Op"]
    find_lex $P2956, "$to_wrap"
    unless_null $P2956, vivify_1187
    new $P2956, "Undef"
  vivify_1187:
.annotate 'line', 2168
    get_hll_global $P2957, "GLOBAL"
    nqp_get_package_through_who $P2958, $P2957, "PAST"
    get_who $P2959, $P2958
    set $P2960, $P2959["Var"]
    $P2961 = $P2960."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P2962 = $P2955."new"($P2956, $P2961, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2164
    .return ($P2962)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("268_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2964
    .param pmc param_2965
.annotate 'line', 2173
    .lex "self", param_2964
    .lex "$obj", param_2965
.annotate 'line', 2175
    new $P2966, "Undef"
    .lex "$idx", $P2966
.annotate 'line', 2174
    find_lex $P2967, "$obj"
    unless_null $P2967, vivify_1188
    new $P2967, "Undef"
  vivify_1188:
    find_lex $P2968, "self"
    find_lex $P2969, "$?CLASS"
    getattribute $P2970, $P2968, $P2969, "$!sc"
    unless_null $P2970, vivify_1189
    new $P2970, "Undef"
  vivify_1189:
    nqp_set_sc_for_object $P2967, $P2970
.annotate 'line', 2175
    find_lex $P2971, "self"
    find_lex $P2972, "$?CLASS"
    getattribute $P2973, $P2971, $P2972, "$!sc"
    unless_null $P2973, vivify_1190
    new $P2973, "Undef"
  vivify_1190:
    $P2974 = $P2973."elems"()
    store_lex "$idx", $P2974
.annotate 'line', 2176
    find_lex $P2975, "$obj"
    unless_null $P2975, vivify_1191
    new $P2975, "Undef"
  vivify_1191:
    find_lex $P2976, "$idx"
    unless_null $P2976, vivify_1192
    new $P2976, "Undef"
  vivify_1192:
    set $I2977, $P2976
    find_lex $P2978, "self"
    find_lex $P2979, "$?CLASS"
    getattribute $P2980, $P2978, $P2979, "$!sc"
    unless_null $P2980, vivify_1193
    $P2980 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P2978, $P2979, "$!sc", $P2980
  vivify_1193:
    set $P2980[$I2977], $P2975
.annotate 'line', 2177
    find_lex $P2981, "$idx"
    unless_null $P2981, vivify_1194
    new $P2981, "Undef"
  vivify_1194:
    find_lex $P2982, "$obj"
    unless_null $P2982, vivify_1195
    new $P2982, "Undef"
  vivify_1195:
    $P2983 = "addr"($P2982)
    find_lex $P2984, "self"
    find_lex $P2985, "$?CLASS"
    getattribute $P2986, $P2984, $P2985, "%!addr_to_slot"
    unless_null $P2986, vivify_1196
    $P2986 = root_new ['parrot';'Hash']
    setattribute $P2984, $P2985, "%!addr_to_slot", $P2986
  vivify_1196:
    set $P2986[$P2983], $P2981
    find_lex $P2987, "$idx"
    unless_null $P2987, vivify_1197
    new $P2987, "Undef"
  vivify_1197:
.annotate 'line', 2173
    .return ($P2987)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code"  :subid("269_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_2989
    .param pmc param_2990
.annotate 'line', 2182
    .lex "self", param_2989
    .lex "$obj", param_2990
.annotate 'line', 2183
    new $P2991, "Undef"
    .lex "$idx", $P2991
    find_lex $P2992, "self"
    find_lex $P2993, "$?CLASS"
    getattribute $P2994, $P2992, $P2993, "$!sc"
    unless_null $P2994, vivify_1198
    new $P2994, "Undef"
  vivify_1198:
    $P2995 = $P2994."elems"()
    store_lex "$idx", $P2995
.annotate 'line', 2184
    find_lex $P2996, "$obj"
    unless_null $P2996, vivify_1199
    new $P2996, "Undef"
  vivify_1199:
    find_lex $P2997, "$idx"
    unless_null $P2997, vivify_1200
    new $P2997, "Undef"
  vivify_1200:
    set $I2998, $P2997
    find_lex $P2999, "self"
    find_lex $P3000, "$?CLASS"
    getattribute $P3001, $P2999, $P3000, "$!sc"
    unless_null $P3001, vivify_1201
    $P3001 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P2999, $P3000, "$!sc", $P3001
  vivify_1201:
    set $P3001[$I2998], $P2996
.annotate 'line', 2185
    find_lex $P3002, "$idx"
    unless_null $P3002, vivify_1202
    new $P3002, "Undef"
  vivify_1202:
    find_lex $P3003, "$obj"
    unless_null $P3003, vivify_1203
    new $P3003, "Undef"
  vivify_1203:
    $P3004 = "addr"($P3003)
    find_lex $P3005, "self"
    find_lex $P3006, "$?CLASS"
    getattribute $P3007, $P3005, $P3006, "%!addr_to_slot"
    unless_null $P3007, vivify_1204
    $P3007 = root_new ['parrot';'Hash']
    setattribute $P3005, $P3006, "%!addr_to_slot", $P3007
  vivify_1204:
    set $P3007[$P3004], $P3002
    find_lex $P3008, "$idx"
    unless_null $P3008, vivify_1205
    new $P3008, "Undef"
  vivify_1205:
.annotate 'line', 2182
    .return ($P3008)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("270_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3010
    .param pmc param_3011 :optional :named("deserialize_past")
    .param int has_param_3011 :opt_flag
    .param pmc param_3013 :optional :named("fixup_past")
    .param int has_param_3013 :opt_flag
.annotate 'line', 2190
    .lex "self", param_3010
    if has_param_3011, optparam_1206
    new $P3012, "Undef"
    set param_3011, $P3012
  optparam_1206:
    .lex "$deserialize_past", param_3011
    if has_param_3013, optparam_1207
    new $P3014, "Undef"
    set param_3013, $P3014
  optparam_1207:
    .lex "$fixup_past", param_3013
.annotate 'line', 2191
    find_lex $P3015, "self"
    find_lex $P3016, "$?CLASS"
    getattribute $P3017, $P3015, $P3016, "@!event_stream"
    unless_null $P3017, vivify_1208
    $P3017 = root_new ['parrot';'ResizablePMCArray']
  vivify_1208:
    find_lex $P3018, "Event"
    find_lex $P3019, "$deserialize_past"
    unless_null $P3019, vivify_1209
    new $P3019, "Undef"
  vivify_1209:
    find_lex $P3020, "$fixup_past"
    unless_null $P3020, vivify_1210
    new $P3020, "Undef"
  vivify_1210:
    $P3021 = $P3018."new"($P3019 :named("deserialize_past"), $P3020 :named("fixup_past"))
    $P3022 = $P3017."push"($P3021)
.annotate 'line', 2190
    .return ($P3022)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("271_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3024
    .param pmc param_3025
.annotate 'line', 2198
    .lex "self", param_3024
    .lex "$obj", param_3025
.annotate 'line', 2201
    new $P3026, "Undef"
    .lex "$sc", $P3026
    find_lex $P3027, "$obj"
    unless_null $P3027, vivify_1211
    new $P3027, "Undef"
  vivify_1211:
    nqp_get_sc_for_object $P3028, $P3027
    store_lex "$sc", $P3028
.annotate 'line', 2202
    find_lex $P3030, "$sc"
    unless_null $P3030, vivify_1212
    new $P3030, "Undef"
  vivify_1212:
    defined $I3031, $P3030
    if $I3031, unless_3029_end
.annotate 'line', 2203
    new $P3032, "String"
    assign $P3032, "Object of type '"
    find_lex $P3033, "$obj"
    unless_null $P3033, vivify_1213
    new $P3033, "Undef"
  vivify_1213:
    get_how $P3034, $P3033
    find_lex $P3035, "$obj"
    unless_null $P3035, vivify_1214
    new $P3035, "Undef"
  vivify_1214:
    $S3036 = $P3034."name"($P3035)
    concat $P3037, $P3032, $S3036
    concat $P3038, $P3037, "' cannot be referenced without having been "
    concat $P3039, $P3038, "assigned a serialization context"
.annotate 'line', 2204
    die $P3039
  unless_3029_end:
.annotate 'line', 2210
    find_lex $P3042, "$sc"
    unless_null $P3042, vivify_1215
    new $P3042, "Undef"
  vivify_1215:
    find_lex $P3043, "self"
    find_lex $P3044, "$?CLASS"
    getattribute $P3045, $P3043, $P3044, "$!sc"
    unless_null $P3045, vivify_1216
    new $P3045, "Undef"
  vivify_1216:
    issame $I3046, $P3042, $P3045
    if $I3046, if_3041
.annotate 'line', 2214
    get_hll_global $P3050, "GLOBAL"
    nqp_get_package_through_who $P3051, $P3050, "PAST"
    get_who $P3052, $P3051
    set $P3053, $P3052["Op"]
.annotate 'line', 2215
    find_lex $P3054, "$sc"
    unless_null $P3054, vivify_1217
    new $P3054, "Undef"
  vivify_1217:
    $P3055 = $P3054."handle"()
    find_lex $P3056, "$sc"
    unless_null $P3056, vivify_1218
    new $P3056, "Undef"
  vivify_1218:
    find_lex $P3057, "$obj"
    unless_null $P3057, vivify_1219
    new $P3057, "Undef"
  vivify_1219:
    $P3058 = $P3056."slot_index_for"($P3057)
    $P3059 = $P3053."new"($P3055, $P3058, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2213
    set $P3040, $P3059
.annotate 'line', 2210
    goto if_3041_end
  if_3041:
.annotate 'line', 2211
    find_lex $P3047, "self"
    find_lex $P3048, "$obj"
    unless_null $P3048, vivify_1220
    new $P3048, "Undef"
  vivify_1220:
    $P3049 = $P3047."get_slot_past_for_object"($P3048)
.annotate 'line', 2210
    set $P3040, $P3049
  if_3041_end:
.annotate 'line', 2198
    .return ($P3040)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_setting"  :subid("272_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3064
    .param pmc param_3065
.annotate 'line', 2227
    .const 'Sub' $P3072 = "273_1304284961.094" 
    capture_lex $P3072
    new $P3063, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3063, control_3062
    push_eh $P3063
    .lex "self", param_3064
    .lex "$setting_name", param_3065
.annotate 'line', 2229
    find_lex $P3068, "$setting_name"
    unless_null $P3068, vivify_1221
    new $P3068, "Undef"
  vivify_1221:
    set $S3069, $P3068
    isne $I3070, $S3069, "NULL"
    if $I3070, if_3067
    new $P3066, 'Integer'
    set $P3066, $I3070
    goto if_3067_end
  if_3067:
    .const 'Sub' $P3072 = "273_1304284961.094" 
    capture_lex $P3072
    $P3117 = $P3072()
    set $P3066, $P3117
  if_3067_end:
.annotate 'line', 2227
    .return ($P3066)
  control_3062:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3118, exception, "payload"
    .return ($P3118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3071"  :anon :subid("273_1304284961.094") :outer("272_1304284961.094")
.annotate 'line', 2233
    new $P3073, "Undef"
    .lex "$setting", $P3073
.annotate 'line', 2234
    find_lex $P3074, "$loader"
    unless_null $P3074, vivify_1222
    new $P3074, "Undef"
  vivify_1222:
    find_lex $P3075, "$setting_name"
    unless_null $P3075, vivify_1223
    new $P3075, "Undef"
  vivify_1223:
    $P3076 = $P3074."load_setting"($P3075)
    find_dynamic_lex $P3079, "%*COMPILING"
    unless_null $P3079, vivify_1224
    get_hll_global $P3077, "GLOBAL"
    get_who $P3078, $P3077
    set $P3079, $P3078["%COMPILING"]
    unless_null $P3079, vivify_1225
    die "Contextual %*COMPILING not found"
  vivify_1225:
    store_dynamic_lex "%*COMPILING", $P3079
  vivify_1224:
    set $P3080, $P3079["%?OPTIONS"]
    unless_null $P3080, vivify_1226
    $P3080 = root_new ['parrot';'Hash']
    set $P3079["%?OPTIONS"], $P3080
  vivify_1226:
    set $P3080["outer_ctx"], $P3076
    store_lex "$setting", $P3076
.annotate 'line', 2237
    find_lex $P3081, "self"
    get_hll_global $P3082, "GLOBAL"
    nqp_get_package_through_who $P3083, $P3082, "PAST"
    get_who $P3084, $P3083
    set $P3085, $P3084["Stmts"]
.annotate 'line', 2238
    get_hll_global $P3086, "GLOBAL"
    nqp_get_package_through_who $P3087, $P3086, "PAST"
    get_who $P3088, $P3087
    set $P3089, $P3088["Op"]
    $P3090 = $P3089."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2241
    get_hll_global $P3091, "GLOBAL"
    nqp_get_package_through_who $P3092, $P3091, "PAST"
    get_who $P3093, $P3092
    set $P3094, $P3093["Op"]
.annotate 'line', 2243
    get_hll_global $P3095, "GLOBAL"
    nqp_get_package_through_who $P3096, $P3095, "PAST"
    get_who $P3097, $P3096
    set $P3098, $P3097["Var"]
    $P3099 = $P3098."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2244
    get_hll_global $P3100, "GLOBAL"
    nqp_get_package_through_who $P3101, $P3100, "PAST"
    get_who $P3102, $P3101
    set $P3103, $P3102["Op"]
.annotate 'line', 2246
    get_hll_global $P3104, "GLOBAL"
    nqp_get_package_through_who $P3105, $P3104, "PAST"
    get_who $P3106, $P3105
    set $P3107, $P3106["Var"]
    new $P3108, "ResizablePMCArray"
    $P3109 = $P3107."new"("ModuleLoader" :named("name"), $P3108 :named("namespace"), "package" :named("scope"))
    find_lex $P3110, "$setting_name"
    unless_null $P3110, vivify_1227
    new $P3110, "Undef"
  vivify_1227:
    $P3111 = $P3103."new"($P3109, $P3110, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2244
    $P3112 = $P3094."new"($P3099, $P3111, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2241
    $P3113 = $P3085."new"($P3090, $P3112)
.annotate 'line', 2237
    $P3081."add_event"($P3113 :named("deserialize_past"))
.annotate 'line', 2252
    new $P3114, "Exception"
    set $P3114['type'], .CONTROL_RETURN
    find_lex $P3115, "$setting"
    unless_null $P3115, vivify_1228
    new $P3115, "Undef"
  vivify_1228:
    getattribute $P3116, $P3115, "lex_pad"
    setattribute $P3114, 'payload', $P3116
    throw $P3114
.annotate 'line', 2229
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_module"  :subid("274_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3122
    .param pmc param_3123
    .param pmc param_3124
.annotate 'line', 2258
    new $P3121, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3121, control_3120
    push_eh $P3121
    .lex "self", param_3122
    .lex "$module_name", param_3123
    .lex "$cur_GLOBALish", param_3124
.annotate 'line', 2260
    new $P3125, "Undef"
    .lex "$module", $P3125
    find_lex $P3126, "$loader"
    unless_null $P3126, vivify_1229
    new $P3126, "Undef"
  vivify_1229:
    find_lex $P3127, "$module_name"
    unless_null $P3127, vivify_1230
    new $P3127, "Undef"
  vivify_1230:
    find_lex $P3128, "$cur_GLOBALish"
    unless_null $P3128, vivify_1231
    new $P3128, "Undef"
  vivify_1231:
    $P3129 = $P3126."load_module"($P3127, $P3128)
    store_lex "$module", $P3129
.annotate 'line', 2263
    find_lex $P3130, "self"
    get_hll_global $P3131, "GLOBAL"
    nqp_get_package_through_who $P3132, $P3131, "PAST"
    get_who $P3133, $P3132
    set $P3134, $P3133["Stmts"]
.annotate 'line', 2264
    get_hll_global $P3135, "GLOBAL"
    nqp_get_package_through_who $P3136, $P3135, "PAST"
    get_who $P3137, $P3136
    set $P3138, $P3137["Op"]
    $P3139 = $P3138."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2267
    get_hll_global $P3140, "GLOBAL"
    nqp_get_package_through_who $P3141, $P3140, "PAST"
    get_who $P3142, $P3141
    set $P3143, $P3142["Op"]
.annotate 'line', 2269
    get_hll_global $P3144, "GLOBAL"
    nqp_get_package_through_who $P3145, $P3144, "PAST"
    get_who $P3146, $P3145
    set $P3147, $P3146["Var"]
    new $P3148, "ResizablePMCArray"
    $P3149 = $P3147."new"("ModuleLoader" :named("name"), $P3148 :named("namespace"), "package" :named("scope"))
    find_lex $P3150, "$module_name"
    unless_null $P3150, vivify_1232
    new $P3150, "Undef"
  vivify_1232:
.annotate 'line', 2271
    find_lex $P3151, "self"
    find_lex $P3152, "$cur_GLOBALish"
    unless_null $P3152, vivify_1233
    new $P3152, "Undef"
  vivify_1233:
    $P3153 = $P3151."get_slot_past_for_object"($P3152)
    $P3154 = $P3143."new"($P3149, $P3150, $P3153, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2267
    $P3155 = $P3134."new"($P3139, $P3154)
.annotate 'line', 2263
    $P3130."add_event"($P3155 :named("deserialize_past"))
.annotate 'line', 2274
    new $P3156, "Exception"
    set $P3156['type'], .CONTROL_RETURN
    find_lex $P3157, "$module"
    unless_null $P3157, vivify_1234
    new $P3157, "Undef"
  vivify_1234:
    getattribute $P3158, $P3157, "lex_pad"
    setattribute $P3156, 'payload', $P3158
    throw $P3156
.annotate 'line', 2258
    .return ()
  control_3120:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3159, exception, "payload"
    .return ($P3159)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("275_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3161
    .param pmc param_3162
    .param pmc param_3163
    .param pmc param_3164
.annotate 'line', 2279
    .const 'Sub' $P3201 = "277_1304284961.094" 
    capture_lex $P3201
    .const 'Sub' $P3180 = "276_1304284961.094" 
    capture_lex $P3180
    .lex "self", param_3161
    .lex "$package", param_3162
    .lex "@sym", param_3163
    .lex "$obj", param_3164
.annotate 'line', 2281
    new $P3165, "Undef"
    .lex "$name", $P3165
.annotate 'line', 2284
    new $P3166, "Undef"
    .lex "$target", $P3166
.annotate 'line', 2291
    new $P3167, "Undef"
    .lex "$path", $P3167
.annotate 'line', 2280
    find_lex $P3168, "@sym"
    unless_null $P3168, vivify_1235
    $P3168 = root_new ['parrot';'ResizablePMCArray']
  vivify_1235:
    clone $P3169, $P3168
    store_lex "@sym", $P3169
.annotate 'line', 2281
    find_lex $P3170, "@sym"
    unless_null $P3170, vivify_1236
    $P3170 = root_new ['parrot';'ResizablePMCArray']
  vivify_1236:
    $P3171 = $P3170."pop"()
    set $S3172, $P3171
    new $P3173, 'String'
    set $P3173, $S3172
    store_lex "$name", $P3173
.annotate 'line', 2284
    find_lex $P3174, "$package"
    unless_null $P3174, vivify_1237
    new $P3174, "Undef"
  vivify_1237:
    store_lex "$target", $P3174
.annotate 'line', 2285
    find_lex $P3176, "@sym"
    unless_null $P3176, vivify_1238
    $P3176 = root_new ['parrot';'ResizablePMCArray']
  vivify_1238:
    defined $I3177, $P3176
    unless $I3177, for_undef_1239
    iter $P3175, $P3176
    new $P3187, 'ExceptionHandler'
    set_label $P3187, loop3186_handler
    $P3187."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3187
  loop3186_test:
    unless $P3175, loop3186_done
    shift $P3178, $P3175
  loop3186_redo:
    .const 'Sub' $P3180 = "276_1304284961.094" 
    capture_lex $P3180
    $P3180($P3178)
  loop3186_next:
    goto loop3186_test
  loop3186_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3188, exception, 'type'
    eq $P3188, .CONTROL_LOOP_NEXT, loop3186_next
    eq $P3188, .CONTROL_LOOP_REDO, loop3186_redo
  loop3186_done:
    pop_eh 
  for_undef_1239:
.annotate 'line', 2288
    find_lex $P3189, "$obj"
    unless_null $P3189, vivify_1242
    new $P3189, "Undef"
  vivify_1242:
    find_lex $P3190, "$name"
    unless_null $P3190, vivify_1243
    new $P3190, "Undef"
  vivify_1243:
    find_lex $P3191, "$target"
    unless_null $P3191, vivify_1244
    new $P3191, "Undef"
    store_lex "$target", $P3191
  vivify_1244:
    get_who $P3192, $P3191
    set $P3192[$P3190], $P3189
.annotate 'line', 2291
    find_lex $P3193, "self"
    find_lex $P3194, "$package"
    unless_null $P3194, vivify_1245
    new $P3194, "Undef"
  vivify_1245:
    $P3195 = $P3193."get_slot_past_for_object"($P3194)
    store_lex "$path", $P3195
.annotate 'line', 2292
    find_lex $P3197, "@sym"
    unless_null $P3197, vivify_1246
    $P3197 = root_new ['parrot';'ResizablePMCArray']
  vivify_1246:
    defined $I3198, $P3197
    unless $I3198, for_undef_1247
    iter $P3196, $P3197
    new $P3212, 'ExceptionHandler'
    set_label $P3212, loop3211_handler
    $P3212."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3212
  loop3211_test:
    unless $P3196, loop3211_done
    shift $P3199, $P3196
  loop3211_redo:
    .const 'Sub' $P3201 = "277_1304284961.094" 
    capture_lex $P3201
    $P3201($P3199)
  loop3211_next:
    goto loop3211_test
  loop3211_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3213, exception, 'type'
    eq $P3213, .CONTROL_LOOP_NEXT, loop3211_next
    eq $P3213, .CONTROL_LOOP_REDO, loop3211_redo
  loop3211_done:
    pop_eh 
  for_undef_1247:
.annotate 'line', 2295
    find_lex $P3214, "self"
    get_hll_global $P3215, "GLOBAL"
    nqp_get_package_through_who $P3216, $P3215, "PAST"
    get_who $P3217, $P3216
    set $P3218, $P3217["Op"]
.annotate 'line', 2297
    get_hll_global $P3219, "GLOBAL"
    nqp_get_package_through_who $P3220, $P3219, "PAST"
    get_who $P3221, $P3220
    set $P3222, $P3221["Var"]
.annotate 'line', 2299
    get_hll_global $P3223, "GLOBAL"
    nqp_get_package_through_who $P3224, $P3223, "PAST"
    get_who $P3225, $P3224
    set $P3226, $P3225["Op"]
    find_lex $P3227, "$path"
    unless_null $P3227, vivify_1250
    new $P3227, "Undef"
  vivify_1250:
    $P3228 = $P3226."new"($P3227, "get_who PP" :named("pirop"))
    find_lex $P3229, "$name"
    unless_null $P3229, vivify_1251
    new $P3229, "Undef"
  vivify_1251:
    $P3230 = $P3222."new"($P3228, $P3229, "keyed" :named("scope"))
.annotate 'line', 2302
    find_lex $P3231, "self"
    find_lex $P3232, "$obj"
    unless_null $P3232, vivify_1252
    new $P3232, "Undef"
  vivify_1252:
    $P3233 = $P3231."get_slot_past_for_object"($P3232)
    $P3234 = $P3218."new"($P3230, $P3233, "bind" :named("pasttype"))
.annotate 'line', 2295
    $P3235 = $P3214."add_event"($P3234 :named("deserialize_past"))
.annotate 'line', 2279
    .return ($P3235)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3179"  :anon :subid("276_1304284961.094") :outer("275_1304284961.094")
    .param pmc param_3181
.annotate 'line', 2285
    .lex "$_", param_3181
.annotate 'line', 2286
    find_lex $P3182, "$target"
    unless_null $P3182, vivify_1240
    new $P3182, "Undef"
  vivify_1240:
    find_lex $P3183, "$_"
    unless_null $P3183, vivify_1241
    new $P3183, "Undef"
  vivify_1241:
    set $S3184, $P3183
    nqp_get_package_through_who $P3185, $P3182, $S3184
    store_lex "$target", $P3185
.annotate 'line', 2285
    .return ($P3185)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3200"  :anon :subid("277_1304284961.094") :outer("275_1304284961.094")
    .param pmc param_3202
.annotate 'line', 2292
    .lex "$_", param_3202
.annotate 'line', 2293
    get_hll_global $P3203, "GLOBAL"
    nqp_get_package_through_who $P3204, $P3203, "PAST"
    get_who $P3205, $P3204
    set $P3206, $P3205["Op"]
    find_lex $P3207, "$path"
    unless_null $P3207, vivify_1248
    new $P3207, "Undef"
  vivify_1248:
    find_lex $P3208, "$_"
    unless_null $P3208, vivify_1249
    new $P3208, "Undef"
  vivify_1249:
    set $S3209, $P3208
    $P3210 = $P3206."new"($P3207, $S3209, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3210
.annotate 'line', 2292
    .return ($P3210)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("278_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3237
    .param pmc param_3238
    .param pmc param_3239
    .param pmc param_3240
.annotate 'line', 2310
    .lex "self", param_3237
    .lex "$block", param_3238
    .lex "$name", param_3239
    .lex "$obj", param_3240
.annotate 'line', 2316
    new $P3241, "Undef"
    .lex "$fixup", $P3241
.annotate 'line', 2312
    find_lex $P3242, "$block"
    unless_null $P3242, vivify_1253
    new $P3242, "Undef"
  vivify_1253:
    find_lex $P3243, "$name"
    unless_null $P3243, vivify_1254
    new $P3243, "Undef"
  vivify_1254:
    find_lex $P3244, "$obj"
    unless_null $P3244, vivify_1255
    new $P3244, "Undef"
  vivify_1255:
    $P3242."symbol"($P3243, "lexical" :named("scope"), $P3244 :named("value"))
.annotate 'line', 2313
    find_lex $P3245, "$block"
    unless_null $P3245, vivify_1256
    $P3245 = root_new ['parrot';'ResizablePMCArray']
  vivify_1256:
    set $P3246, $P3245[0]
    unless_null $P3246, vivify_1257
    new $P3246, "Undef"
  vivify_1257:
    get_hll_global $P3247, "GLOBAL"
    nqp_get_package_through_who $P3248, $P3247, "PAST"
    get_who $P3249, $P3248
    set $P3250, $P3249["Var"]
    find_lex $P3251, "$name"
    unless_null $P3251, vivify_1258
    new $P3251, "Undef"
  vivify_1258:
    $P3252 = $P3250."new"("lexical" :named("scope"), $P3251 :named("name"), 1 :named("isdecl"))
    $P3246."push"($P3252)
.annotate 'line', 2316
    get_hll_global $P3253, "GLOBAL"
    nqp_get_package_through_who $P3254, $P3253, "PAST"
    get_who $P3255, $P3254
    set $P3256, $P3255["Stmts"]
.annotate 'line', 2317
    get_hll_global $P3257, "GLOBAL"
    nqp_get_package_through_who $P3258, $P3257, "PAST"
    get_who $P3259, $P3258
    set $P3260, $P3259["Op"]
.annotate 'line', 2319
    get_hll_global $P3261, "GLOBAL"
    nqp_get_package_through_who $P3262, $P3261, "PAST"
    get_who $P3263, $P3262
    set $P3264, $P3263["Op"]
.annotate 'line', 2321
    get_hll_global $P3265, "GLOBAL"
    nqp_get_package_through_who $P3266, $P3265, "PAST"
    get_who $P3267, $P3266
    set $P3268, $P3267["Val"]
    find_lex $P3269, "$block"
    unless_null $P3269, vivify_1259
    new $P3269, "Undef"
  vivify_1259:
    $P3270 = $P3268."new"($P3269 :named("value"))
    $P3271 = $P3264."new"($P3270, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2323
    find_lex $P3272, "$name"
    unless_null $P3272, vivify_1260
    new $P3272, "Undef"
  vivify_1260:
    set $S3273, $P3272
    find_lex $P3274, "self"
    find_lex $P3275, "$obj"
    unless_null $P3275, vivify_1261
    new $P3275, "Undef"
  vivify_1261:
    $P3276 = $P3274."get_slot_past_for_object"($P3275)
    $P3277 = $P3260."new"($P3271, $S3273, $P3276, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2327
    get_hll_global $P3278, "GLOBAL"
    nqp_get_package_through_who $P3279, $P3278, "PAST"
    get_who $P3280, $P3279
    set $P3281, $P3280["Op"]
.annotate 'line', 2329
    get_hll_global $P3282, "GLOBAL"
    nqp_get_package_through_who $P3283, $P3282, "PAST"
    get_who $P3284, $P3283
    set $P3285, $P3284["Op"]
.annotate 'line', 2331
    get_hll_global $P3286, "GLOBAL"
    nqp_get_package_through_who $P3287, $P3286, "PAST"
    get_who $P3288, $P3287
    set $P3289, $P3288["Val"]
    find_lex $P3290, "$block"
    unless_null $P3290, vivify_1262
    new $P3290, "Undef"
  vivify_1262:
    $P3291 = $P3289."new"($P3290 :named("value"))
    $P3292 = $P3285."new"($P3291, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2329
    $P3293 = $P3281."new"($P3292, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2327
    $P3294 = $P3256."new"($P3277, $P3293)
.annotate 'line', 2316
    store_lex "$fixup", $P3294
.annotate 'line', 2335
    find_lex $P3295, "self"
    find_lex $P3296, "$fixup"
    unless_null $P3296, vivify_1263
    new $P3296, "Undef"
  vivify_1263:
    find_lex $P3297, "$fixup"
    unless_null $P3297, vivify_1264
    new $P3297, "Undef"
  vivify_1264:
    $P3298 = $P3295."add_event"($P3296 :named("deserialize_past"), $P3297 :named("fixup_past"))
.annotate 'line', 2310
    .return ($P3298)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("279_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3300
    .param pmc param_3301
    .param pmc param_3302
    .param pmc param_3303
.annotate 'line', 2340
    .lex "self", param_3300
    .lex "$package", param_3301
    .lex "$name", param_3302
    .lex "$past_block", param_3303
.annotate 'line', 2341
    new $P3304, "Undef"
    .lex "$fixup", $P3304
    get_hll_global $P3305, "GLOBAL"
    nqp_get_package_through_who $P3306, $P3305, "PAST"
    get_who $P3307, $P3306
    set $P3308, $P3307["Op"]
.annotate 'line', 2343
    get_hll_global $P3309, "GLOBAL"
    nqp_get_package_through_who $P3310, $P3309, "PAST"
    get_who $P3311, $P3310
    set $P3312, $P3311["Var"]
.annotate 'line', 2345
    get_hll_global $P3313, "GLOBAL"
    nqp_get_package_through_who $P3314, $P3313, "PAST"
    get_who $P3315, $P3314
    set $P3316, $P3315["Op"]
    find_lex $P3317, "self"
    find_lex $P3318, "$package"
    unless_null $P3318, vivify_1265
    new $P3318, "Undef"
  vivify_1265:
    $P3319 = $P3317."get_slot_past_for_object"($P3318)
    $P3320 = $P3316."new"($P3319, "get_who PP" :named("pirop"))
.annotate 'line', 2346
    find_lex $P3321, "$name"
    unless_null $P3321, vivify_1266
    new $P3321, "Undef"
  vivify_1266:
    set $S3322, $P3321
    $P3323 = $P3312."new"($P3320, $S3322, "keyed" :named("scope"))
.annotate 'line', 2348
    get_hll_global $P3324, "GLOBAL"
    nqp_get_package_through_who $P3325, $P3324, "PAST"
    get_who $P3326, $P3325
    set $P3327, $P3326["Val"]
    find_lex $P3328, "$past_block"
    unless_null $P3328, vivify_1267
    new $P3328, "Undef"
  vivify_1267:
    $P3329 = $P3327."new"($P3328 :named("value"))
    $P3330 = $P3308."new"($P3323, $P3329, "bind" :named("pasttype"))
.annotate 'line', 2341
    store_lex "$fixup", $P3330
.annotate 'line', 2350
    find_lex $P3331, "self"
    find_lex $P3332, "$fixup"
    unless_null $P3332, vivify_1268
    new $P3332, "Undef"
  vivify_1268:
    find_lex $P3333, "$fixup"
    unless_null $P3333, vivify_1269
    new $P3333, "Undef"
  vivify_1269:
    $P3334 = $P3331."add_event"($P3332 :named("deserialize_past"), $P3333 :named("fixup_past"))
.annotate 'line', 2340
    .return ($P3334)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("280_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3338
    .param pmc param_3339
    .param pmc param_3340 :optional :named("name")
    .param int has_param_3340 :opt_flag
    .param pmc param_3342 :optional :named("repr")
    .param int has_param_3342 :opt_flag
.annotate 'line', 2355
    new $P3337, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3337, control_3336
    push_eh $P3337
    .lex "self", param_3338
    .lex "$how", param_3339
    if has_param_3340, optparam_1270
    new $P3341, "Undef"
    set param_3340, $P3341
  optparam_1270:
    .lex "$name", param_3340
    if has_param_3342, optparam_1271
    new $P3343, "Undef"
    set param_3342, $P3343
  optparam_1271:
    .lex "$repr", param_3342
.annotate 'line', 2357
    $P3344 = root_new ['parrot';'Hash']
    .lex "%args", $P3344
.annotate 'line', 2360
    new $P3345, "Undef"
    .lex "$mo", $P3345
.annotate 'line', 2361
    new $P3346, "Undef"
    .lex "$slot", $P3346
.annotate 'line', 2365
    $P3347 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3347
.annotate 'line', 2366
    new $P3348, "Undef"
    .lex "$how_name", $P3348
.annotate 'line', 2367
    new $P3349, "Undef"
    .lex "$setup_call", $P3349
.annotate 'line', 2355
    find_lex $P3350, "%args"
    unless_null $P3350, vivify_1272
    $P3350 = root_new ['parrot';'Hash']
  vivify_1272:
.annotate 'line', 2358
    find_lex $P3352, "$name"
    unless_null $P3352, vivify_1273
    new $P3352, "Undef"
  vivify_1273:
    defined $I3353, $P3352
    unless $I3353, if_3351_end
    find_lex $P3354, "$name"
    unless_null $P3354, vivify_1274
    new $P3354, "Undef"
  vivify_1274:
    find_lex $P3355, "%args"
    unless_null $P3355, vivify_1275
    $P3355 = root_new ['parrot';'Hash']
    store_lex "%args", $P3355
  vivify_1275:
    set $P3355["name"], $P3354
  if_3351_end:
.annotate 'line', 2359
    find_lex $P3357, "$repr"
    unless_null $P3357, vivify_1276
    new $P3357, "Undef"
  vivify_1276:
    defined $I3358, $P3357
    unless $I3358, if_3356_end
    find_lex $P3359, "$repr"
    unless_null $P3359, vivify_1277
    new $P3359, "Undef"
  vivify_1277:
    find_lex $P3360, "%args"
    unless_null $P3360, vivify_1278
    $P3360 = root_new ['parrot';'Hash']
    store_lex "%args", $P3360
  vivify_1278:
    set $P3360["repr"], $P3359
  if_3356_end:
.annotate 'line', 2360
    find_lex $P3361, "$how"
    unless_null $P3361, vivify_1279
    new $P3361, "Undef"
  vivify_1279:
    find_lex $P3362, "%args"
    unless_null $P3362, vivify_1280
    $P3362 = root_new ['parrot';'Hash']
  vivify_1280:
    $P3363 = $P3361."new_type"($P3362 :flat)
    store_lex "$mo", $P3363
.annotate 'line', 2361
    find_lex $P3364, "self"
    find_lex $P3365, "$mo"
    unless_null $P3365, vivify_1281
    new $P3365, "Undef"
  vivify_1281:
    $P3366 = $P3364."add_object"($P3365)
    store_lex "$slot", $P3366
.annotate 'line', 2365
    find_lex $P3367, "$how"
    unless_null $P3367, vivify_1282
    new $P3367, "Undef"
  vivify_1282:
    get_how $P3368, $P3367
    find_lex $P3369, "$how"
    unless_null $P3369, vivify_1283
    new $P3369, "Undef"
  vivify_1283:
    $S3370 = $P3368."name"($P3369)
    split $P3371, "::", $S3370
    store_lex "@how_ns", $P3371
.annotate 'line', 2366
    find_lex $P3372, "@how_ns"
    unless_null $P3372, vivify_1284
    $P3372 = root_new ['parrot';'ResizablePMCArray']
  vivify_1284:
    $P3373 = $P3372."pop"()
    store_lex "$how_name", $P3373
.annotate 'line', 2367
    get_hll_global $P3374, "GLOBAL"
    nqp_get_package_through_who $P3375, $P3374, "PAST"
    get_who $P3376, $P3375
    set $P3377, $P3376["Op"]
.annotate 'line', 2369
    find_lex $P3378, "self"
    find_lex $P3379, "$how"
    unless_null $P3379, vivify_1285
    new $P3379, "Undef"
  vivify_1285:
    $P3380 = $P3378."get_object_sc_ref_past"($P3379)
    $P3381 = $P3377."new"($P3380, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2367
    store_lex "$setup_call", $P3381
.annotate 'line', 2371
    find_lex $P3383, "$name"
    unless_null $P3383, vivify_1286
    new $P3383, "Undef"
  vivify_1286:
    defined $I3384, $P3383
    unless $I3384, if_3382_end
.annotate 'line', 2372
    find_lex $P3385, "$setup_call"
    unless_null $P3385, vivify_1287
    new $P3385, "Undef"
  vivify_1287:
    get_hll_global $P3386, "GLOBAL"
    nqp_get_package_through_who $P3387, $P3386, "PAST"
    get_who $P3388, $P3387
    set $P3389, $P3388["Val"]
    find_lex $P3390, "$name"
    unless_null $P3390, vivify_1288
    new $P3390, "Undef"
  vivify_1288:
    $P3391 = $P3389."new"($P3390 :named("value"), "name" :named("named"))
    $P3385."push"($P3391)
  if_3382_end:
.annotate 'line', 2374
    find_lex $P3393, "$repr"
    unless_null $P3393, vivify_1289
    new $P3393, "Undef"
  vivify_1289:
    defined $I3394, $P3393
    unless $I3394, if_3392_end
.annotate 'line', 2375
    find_lex $P3395, "$setup_call"
    unless_null $P3395, vivify_1290
    new $P3395, "Undef"
  vivify_1290:
    get_hll_global $P3396, "GLOBAL"
    nqp_get_package_through_who $P3397, $P3396, "PAST"
    get_who $P3398, $P3397
    set $P3399, $P3398["Val"]
    find_lex $P3400, "$repr"
    unless_null $P3400, vivify_1291
    new $P3400, "Undef"
  vivify_1291:
    $P3401 = $P3399."new"($P3400 :named("value"), "repr" :named("named"))
    $P3395."push"($P3401)
  if_3392_end:
.annotate 'line', 2377
    find_lex $P3402, "self"
.annotate 'line', 2378
    find_lex $P3403, "self"
    find_lex $P3404, "$slot"
    unless_null $P3404, vivify_1292
    new $P3404, "Undef"
  vivify_1292:
    find_lex $P3405, "self"
    find_lex $P3406, "$setup_call"
    unless_null $P3406, vivify_1293
    new $P3406, "Undef"
  vivify_1293:
    $P3407 = $P3405."set_cur_sc"($P3406)
    $P3408 = $P3403."set_slot_past"($P3404, $P3407)
    $P3402."add_event"($P3408 :named("deserialize_past"))
.annotate 'line', 2381
    new $P3409, "Exception"
    set $P3409['type'], .CONTROL_RETURN
    find_lex $P3410, "$mo"
    unless_null $P3410, vivify_1294
    new $P3410, "Undef"
  vivify_1294:
    setattribute $P3409, 'payload', $P3410
    throw $P3409
.annotate 'line', 2355
    .return ()
  control_3336:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3411, exception, "payload"
    .return ($P3411)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_add_attribute"  :subid("281_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3413
    .param pmc param_3414
    .param pmc param_3415
    .param pmc param_3416
    .param pmc param_3417
.annotate 'line', 2389
    .const 'Sub' $P3463 = "283_1304284961.094" 
    capture_lex $P3463
    .const 'Sub' $P3442 = "282_1304284961.094" 
    capture_lex $P3442
    .lex "self", param_3413
    .lex "$obj", param_3414
    .lex "$meta_attr", param_3415
    .lex "%lit_args", param_3416
    .lex "%obj_args", param_3417
.annotate 'line', 2391
    new $P3418, "Undef"
    .lex "$attr", $P3418
.annotate 'line', 2395
    new $P3419, "Undef"
    .lex "$create_call", $P3419
.annotate 'line', 2407
    new $P3420, "Undef"
    .lex "$obj_slot_past", $P3420
.annotate 'line', 2391
    find_lex $P3421, "$meta_attr"
    unless_null $P3421, vivify_1295
    new $P3421, "Undef"
  vivify_1295:
    find_lex $P3422, "%lit_args"
    unless_null $P3422, vivify_1296
    $P3422 = root_new ['parrot';'Hash']
  vivify_1296:
    find_lex $P3423, "%obj_args"
    unless_null $P3423, vivify_1297
    $P3423 = root_new ['parrot';'Hash']
  vivify_1297:
    $P3424 = $P3421."new"($P3422 :flat, $P3423 :flat)
    store_lex "$attr", $P3424
.annotate 'line', 2392
    find_lex $P3425, "$obj"
    unless_null $P3425, vivify_1298
    new $P3425, "Undef"
  vivify_1298:
    get_how $P3426, $P3425
    find_lex $P3427, "$obj"
    unless_null $P3427, vivify_1299
    new $P3427, "Undef"
  vivify_1299:
    find_lex $P3428, "$attr"
    unless_null $P3428, vivify_1300
    new $P3428, "Undef"
  vivify_1300:
    $P3426."add_attribute"($P3427, $P3428)
.annotate 'line', 2395
    get_hll_global $P3429, "GLOBAL"
    nqp_get_package_through_who $P3430, $P3429, "PAST"
    get_who $P3431, $P3430
    set $P3432, $P3431["Op"]
.annotate 'line', 2397
    find_lex $P3433, "self"
    find_lex $P3434, "$meta_attr"
    unless_null $P3434, vivify_1301
    new $P3434, "Undef"
  vivify_1301:
    $P3435 = $P3433."get_object_sc_ref_past"($P3434)
    $P3436 = $P3432."new"($P3435, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 2395
    store_lex "$create_call", $P3436
.annotate 'line', 2399
    find_lex $P3438, "%lit_args"
    unless_null $P3438, vivify_1302
    $P3438 = root_new ['parrot';'Hash']
  vivify_1302:
    defined $I3439, $P3438
    unless $I3439, for_undef_1303
    iter $P3437, $P3438
    new $P3456, 'ExceptionHandler'
    set_label $P3456, loop3455_handler
    $P3456."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3456
  loop3455_test:
    unless $P3437, loop3455_done
    shift $P3440, $P3437
  loop3455_redo:
    .const 'Sub' $P3442 = "282_1304284961.094" 
    capture_lex $P3442
    $P3442($P3440)
  loop3455_next:
    goto loop3455_test
  loop3455_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3457, exception, 'type'
    eq $P3457, .CONTROL_LOOP_NEXT, loop3455_next
    eq $P3457, .CONTROL_LOOP_REDO, loop3455_redo
  loop3455_done:
    pop_eh 
  for_undef_1303:
.annotate 'line', 2402
    find_lex $P3459, "%obj_args"
    unless_null $P3459, vivify_1307
    $P3459 = root_new ['parrot';'Hash']
  vivify_1307:
    defined $I3460, $P3459
    unless $I3460, for_undef_1308
    iter $P3458, $P3459
    new $P3477, 'ExceptionHandler'
    set_label $P3477, loop3476_handler
    $P3477."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3477
  loop3476_test:
    unless $P3458, loop3476_done
    shift $P3461, $P3458
  loop3476_redo:
    .const 'Sub' $P3463 = "283_1304284961.094" 
    capture_lex $P3463
    $P3463($P3461)
  loop3476_next:
    goto loop3476_test
  loop3476_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3478, exception, 'type'
    eq $P3478, .CONTROL_LOOP_NEXT, loop3476_next
    eq $P3478, .CONTROL_LOOP_REDO, loop3476_redo
  loop3476_done:
    pop_eh 
  for_undef_1308:
.annotate 'line', 2407
    find_lex $P3479, "self"
    find_lex $P3480, "$obj"
    unless_null $P3480, vivify_1314
    new $P3480, "Undef"
  vivify_1314:
    $P3481 = $P3479."get_slot_past_for_object"($P3480)
    store_lex "$obj_slot_past", $P3481
.annotate 'line', 2408
    find_lex $P3482, "self"
    get_hll_global $P3483, "GLOBAL"
    nqp_get_package_through_who $P3484, $P3483, "PAST"
    get_who $P3485, $P3484
    set $P3486, $P3485["Op"]
.annotate 'line', 2410
    get_hll_global $P3487, "GLOBAL"
    nqp_get_package_through_who $P3488, $P3487, "PAST"
    get_who $P3489, $P3488
    set $P3490, $P3489["Op"]
    find_lex $P3491, "$obj_slot_past"
    unless_null $P3491, vivify_1315
    new $P3491, "Undef"
  vivify_1315:
    $P3492 = $P3490."new"($P3491, "get_how PP" :named("pirop"))
    find_lex $P3493, "$obj_slot_past"
    unless_null $P3493, vivify_1316
    new $P3493, "Undef"
  vivify_1316:
    find_lex $P3494, "$create_call"
    unless_null $P3494, vivify_1317
    new $P3494, "Undef"
  vivify_1317:
    $P3495 = $P3486."new"($P3492, $P3493, $P3494, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
.annotate 'line', 2408
    $P3496 = $P3482."add_event"($P3495 :named("deserialize_past"))
.annotate 'line', 2389
    .return ($P3496)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3441"  :anon :subid("282_1304284961.094") :outer("281_1304284961.094")
    .param pmc param_3443
.annotate 'line', 2399
    .lex "$_", param_3443
.annotate 'line', 2400
    find_lex $P3444, "$create_call"
    unless_null $P3444, vivify_1304
    new $P3444, "Undef"
  vivify_1304:
    get_hll_global $P3445, "GLOBAL"
    nqp_get_package_through_who $P3446, $P3445, "PAST"
    get_who $P3447, $P3446
    set $P3448, $P3447["Val"]
    find_lex $P3449, "$_"
    unless_null $P3449, vivify_1305
    new $P3449, "Undef"
  vivify_1305:
    $P3450 = $P3449."value"()
    find_lex $P3451, "$_"
    unless_null $P3451, vivify_1306
    new $P3451, "Undef"
  vivify_1306:
    $P3452 = $P3451."key"()
    $P3453 = $P3448."new"($P3450 :named("value"), $P3452 :named("named"))
    $P3454 = $P3444."push"($P3453)
.annotate 'line', 2399
    .return ($P3454)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3462"  :anon :subid("283_1304284961.094") :outer("281_1304284961.094")
    .param pmc param_3465
.annotate 'line', 2403
    new $P3464, "Undef"
    .lex "$lookup", $P3464
    .lex "$_", param_3465
    find_lex $P3466, "self"
    find_lex $P3467, "$_"
    unless_null $P3467, vivify_1309
    new $P3467, "Undef"
  vivify_1309:
    $P3468 = $P3467."value"()
    $P3469 = $P3466."get_object_sc_ref_past"($P3468)
    store_lex "$lookup", $P3469
.annotate 'line', 2404
    find_lex $P3470, "$lookup"
    unless_null $P3470, vivify_1310
    new $P3470, "Undef"
  vivify_1310:
    find_lex $P3471, "$_"
    unless_null $P3471, vivify_1311
    new $P3471, "Undef"
  vivify_1311:
    $P3472 = $P3471."key"()
    $P3470."named"($P3472)
.annotate 'line', 2405
    find_lex $P3473, "$create_call"
    unless_null $P3473, vivify_1312
    new $P3473, "Undef"
  vivify_1312:
    find_lex $P3474, "$lookup"
    unless_null $P3474, vivify_1313
    new $P3474, "Undef"
  vivify_1313:
    $P3475 = $P3473."push"($P3474)
.annotate 'line', 2402
    .return ($P3475)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3497"  :anon :subid("284_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3499 :slurpy
    .param pmc param_3500 :slurpy :named
.annotate 'line', 2420
    .lex "@args", param_3499
    .lex "%named", param_3500
.annotate 'line', 2421
    die "Cannot run code that has not yet been compiled."
.annotate 'line', 2420
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("285_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3503
    .param pmc param_3504
    .param pmc param_3505
    .param pmc param_3506
    .param pmc param_3507
    .param pmc param_3508
.annotate 'line', 2427
    .lex "self", param_3503
    .lex "$obj", param_3504
    .lex "$meta_method_name", param_3505
    .lex "$name", param_3506
    .lex "$method_past", param_3507
    .lex "$is_dispatcher", param_3508
.annotate 'line', 2430
    new $P3509, "Undef"
    .lex "$dummy", $P3509
.annotate 'line', 2456
    new $P3510, "Undef"
    .lex "$slot_past", $P3510
.annotate 'line', 2427
    find_lex $P3511, "$dummy"
    unless_null $P3511, vivify_1318
    new $P3511, "Undef"
  vivify_1318:
.annotate 'line', 2431
    find_lex $P3513, "$method_past"
    unless_null $P3513, vivify_1319
    $P3513 = root_new ['parrot';'Hash']
  vivify_1319:
    set $P3514, $P3513["compile_time_dummy"]
    unless_null $P3514, vivify_1320
    new $P3514, "Undef"
  vivify_1320:
    defined $I3515, $P3514
    if $I3515, if_3512
.annotate 'line', 2438
    find_lex $P3519, "$is_dispatcher"
    unless_null $P3519, vivify_1321
    new $P3519, "Undef"
  vivify_1321:
    if $P3519, if_3518
.annotate 'line', 2443
    find_lex $P3523, "$stub_code"
    unless_null $P3523, vivify_1322
    new $P3523, "Undef"
  vivify_1322:
    clone $P3524, $P3523
    store_lex "$dummy", $P3524
.annotate 'line', 2442
    goto if_3518_end
  if_3518:
.annotate 'line', 2439
    find_lex $P3520, "$method_past"
    unless_null $P3520, vivify_1323
    new $P3520, "Undef"
  vivify_1323:
    $P3520."pirflags"(":instanceof(\"DispatcherSub\")")
.annotate 'line', 2440
    new $P3521, "DispatcherSub"
    find_lex $P3522, "$stub_code"
    unless_null $P3522, vivify_1324
    new $P3522, "Undef"
  vivify_1324:
    assign $P3521, $P3522
    store_lex "$dummy", $P3521
  if_3518_end:
.annotate 'line', 2445
    find_lex $P3525, "$dummy"
    unless_null $P3525, vivify_1325
    new $P3525, "Undef"
  vivify_1325:
    find_lex $P3526, "$name"
    unless_null $P3526, vivify_1326
    new $P3526, "Undef"
  vivify_1326:
    set $S3527, $P3526
    assign $P3525, $S3527
.annotate 'line', 2446
    find_lex $P3528, "self"
    find_lex $P3529, "$dummy"
    unless_null $P3529, vivify_1327
    new $P3529, "Undef"
  vivify_1327:
    $P3528."add_code"($P3529)
.annotate 'line', 2447
    find_lex $P3530, "$dummy"
    unless_null $P3530, vivify_1328
    new $P3530, "Undef"
  vivify_1328:
    find_lex $P3531, "$method_past"
    unless_null $P3531, vivify_1329
    $P3531 = root_new ['parrot';'Hash']
    store_lex "$method_past", $P3531
  vivify_1329:
    set $P3531["compile_time_dummy"], $P3530
.annotate 'line', 2434
    goto if_3512_end
  if_3512:
.annotate 'line', 2432
    find_lex $P3516, "$method_past"
    unless_null $P3516, vivify_1330
    $P3516 = root_new ['parrot';'Hash']
  vivify_1330:
    set $P3517, $P3516["compile_time_dummy"]
    unless_null $P3517, vivify_1331
    new $P3517, "Undef"
  vivify_1331:
    store_lex "$dummy", $P3517
  if_3512_end:
.annotate 'line', 2451
    find_lex $P3532, "$obj"
    unless_null $P3532, vivify_1332
    new $P3532, "Undef"
  vivify_1332:
    get_how $P3533, $P3532
    find_lex $P3534, "$obj"
    unless_null $P3534, vivify_1333
    new $P3534, "Undef"
  vivify_1333:
    find_lex $P3535, "$name"
    unless_null $P3535, vivify_1334
    new $P3535, "Undef"
  vivify_1334:
    find_lex $P3536, "$dummy"
    unless_null $P3536, vivify_1335
    new $P3536, "Undef"
  vivify_1335:
    find_lex $P3537, "$meta_method_name"
    unless_null $P3537, vivify_1336
    new $P3537, "Undef"
  vivify_1336:
    set $S3538, $P3537
    $P3533.$S3538($P3534, $P3535, $P3536)
.annotate 'line', 2456
    find_lex $P3539, "self"
    find_lex $P3540, "$obj"
    unless_null $P3540, vivify_1337
    new $P3540, "Undef"
  vivify_1337:
    $P3541 = $P3539."get_slot_past_for_object"($P3540)
    store_lex "$slot_past", $P3541
.annotate 'line', 2457
    find_lex $P3542, "self"
.annotate 'line', 2458
    get_hll_global $P3543, "GLOBAL"
    nqp_get_package_through_who $P3544, $P3543, "PAST"
    get_who $P3545, $P3544
    set $P3546, $P3545["Op"]
    find_lex $P3547, "$meta_method_name"
    unless_null $P3547, vivify_1338
    new $P3547, "Undef"
  vivify_1338:
.annotate 'line', 2460
    get_hll_global $P3548, "GLOBAL"
    nqp_get_package_through_who $P3549, $P3548, "PAST"
    get_who $P3550, $P3549
    set $P3551, $P3550["Op"]
    find_lex $P3552, "$slot_past"
    unless_null $P3552, vivify_1339
    new $P3552, "Undef"
  vivify_1339:
    $P3553 = $P3551."new"($P3552, "get_how PP" :named("pirop"))
    find_lex $P3554, "$slot_past"
    unless_null $P3554, vivify_1340
    new $P3554, "Undef"
  vivify_1340:
    find_lex $P3555, "$name"
    unless_null $P3555, vivify_1341
    new $P3555, "Undef"
  vivify_1341:
.annotate 'line', 2463
    get_hll_global $P3556, "GLOBAL"
    nqp_get_package_through_who $P3557, $P3556, "PAST"
    get_who $P3558, $P3557
    set $P3559, $P3558["Val"]
    find_lex $P3560, "$method_past"
    unless_null $P3560, vivify_1342
    new $P3560, "Undef"
  vivify_1342:
    $P3561 = $P3559."new"($P3560 :named("value"))
    $P3562 = $P3546."new"($P3553, $P3554, $P3555, $P3561, "callmethod" :named("pasttype"), $P3547 :named("name"))
.annotate 'line', 2465
    get_hll_global $P3563, "GLOBAL"
    nqp_get_package_through_who $P3564, $P3563, "PAST"
    get_who $P3565, $P3564
    set $P3566, $P3565["Op"]
.annotate 'line', 2467
    find_lex $P3567, "self"
    find_lex $P3568, "$dummy"
    unless_null $P3568, vivify_1343
    new $P3568, "Undef"
  vivify_1343:
    $P3569 = $P3567."get_slot_past_for_object"($P3568)
.annotate 'line', 2468
    get_hll_global $P3570, "GLOBAL"
    nqp_get_package_through_who $P3571, $P3570, "PAST"
    get_who $P3572, $P3571
    set $P3573, $P3572["Val"]
    find_lex $P3574, "$method_past"
    unless_null $P3574, vivify_1344
    new $P3574, "Undef"
  vivify_1344:
    $P3575 = $P3573."new"($P3574 :named("value"))
    $P3576 = $P3566."new"($P3569, $P3575, "copy vPP" :named("pirop"))
.annotate 'line', 2465
    $P3577 = $P3542."add_event"($P3562 :named("deserialize_past"), $P3576 :named("fixup_past"))
.annotate 'line', 2427
    .return ($P3577)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_routine_signature"  :subid("286_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3579
    .param pmc param_3580
    .param pmc param_3581
    .param pmc param_3582
.annotate 'line', 2473
    .lex "self", param_3579
    .lex "$routine", param_3580
    .lex "$types", param_3581
    .lex "$definednesses", param_3582
.annotate 'line', 2476
    new $P3583, "Undef"
    .lex "$fixup", $P3583
.annotate 'line', 2483
    new $P3584, "Undef"
    .lex "$des", $P3584
.annotate 'line', 2476
    get_hll_global $P3585, "GLOBAL"
    nqp_get_package_through_who $P3586, $P3585, "PAST"
    get_who $P3587, $P3586
    set $P3588, $P3587["Op"]
    find_lex $P3589, "$types"
    unless_null $P3589, vivify_1345
    new $P3589, "Undef"
  vivify_1345:
    find_lex $P3590, "$definednesses"
    unless_null $P3590, vivify_1346
    new $P3590, "Undef"
  vivify_1346:
    $P3591 = $P3588."new"($P3589, $P3590, "set_sub_multisig vPPP" :named("pirop"))
    store_lex "$fixup", $P3591
.annotate 'line', 2477
    find_lex $P3593, "$routine"
    unless_null $P3593, vivify_1347
    $P3593 = root_new ['parrot';'Hash']
  vivify_1347:
    set $P3594, $P3593["compile_time_dummy"]
    unless_null $P3594, vivify_1348
    new $P3594, "Undef"
  vivify_1348:
    defined $I3595, $P3594
    if $I3595, if_3592
.annotate 'line', 2481
    find_lex $P3601, "$fixup"
    unless_null $P3601, vivify_1349
    new $P3601, "Undef"
  vivify_1349:
    get_hll_global $P3602, "GLOBAL"
    nqp_get_package_through_who $P3603, $P3602, "PAST"
    get_who $P3604, $P3603
    set $P3605, $P3604["Val"]
    find_lex $P3606, "$routine"
    unless_null $P3606, vivify_1350
    new $P3606, "Undef"
  vivify_1350:
    $P3607 = $P3605."new"($P3606 :named("value"))
    $P3601."unshift"($P3607)
.annotate 'line', 2480
    goto if_3592_end
  if_3592:
.annotate 'line', 2478
    find_lex $P3596, "$fixup"
    unless_null $P3596, vivify_1351
    new $P3596, "Undef"
  vivify_1351:
    find_lex $P3597, "self"
    find_lex $P3598, "$routine"
    unless_null $P3598, vivify_1352
    $P3598 = root_new ['parrot';'Hash']
  vivify_1352:
    set $P3599, $P3598["compile_time_dummy"]
    unless_null $P3599, vivify_1353
    new $P3599, "Undef"
  vivify_1353:
    $P3600 = $P3597."get_slot_past_for_object"($P3599)
    $P3596."unshift"($P3600)
  if_3592_end:
.annotate 'line', 2483
    get_hll_global $P3608, "GLOBAL"
    nqp_get_package_through_who $P3609, $P3608, "PAST"
    get_who $P3610, $P3609
    set $P3611, $P3610["Op"]
.annotate 'line', 2484
    get_hll_global $P3612, "GLOBAL"
    nqp_get_package_through_who $P3613, $P3612, "PAST"
    get_who $P3614, $P3613
    set $P3615, $P3614["Val"]
    find_lex $P3616, "$routine"
    unless_null $P3616, vivify_1354
    new $P3616, "Undef"
  vivify_1354:
    $P3617 = $P3615."new"($P3616 :named("value"))
    find_lex $P3618, "$types"
    unless_null $P3618, vivify_1355
    new $P3618, "Undef"
  vivify_1355:
    find_lex $P3619, "$definednesses"
    unless_null $P3619, vivify_1356
    new $P3619, "Undef"
  vivify_1356:
    $P3620 = $P3611."new"($P3617, $P3618, $P3619, "set_sub_multisig vPPP" :named("pirop"))
.annotate 'line', 2483
    store_lex "$des", $P3620
.annotate 'line', 2486
    find_lex $P3621, "self"
    find_lex $P3622, "$des"
    unless_null $P3622, vivify_1357
    new $P3622, "Undef"
  vivify_1357:
    find_lex $P3623, "$fixup"
    unless_null $P3623, vivify_1358
    new $P3623, "Undef"
  vivify_1358:
    $P3624 = $P3621."add_event"($P3622 :named("deserialize_past"), $P3623 :named("fixup_past"))
.annotate 'line', 2473
    .return ($P3624)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_set_body_block"  :subid("287_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3626
    .param pmc param_3627
    .param pmc param_3628
.annotate 'line', 2491
    .lex "self", param_3626
    .lex "$obj", param_3627
    .lex "$body_past", param_3628
.annotate 'line', 2497
    new $P3629, "Undef"
    .lex "$slot_past", $P3629
    find_lex $P3630, "self"
    find_lex $P3631, "$obj"
    unless_null $P3631, vivify_1359
    new $P3631, "Undef"
  vivify_1359:
    $P3632 = $P3630."get_slot_past_for_object"($P3631)
    store_lex "$slot_past", $P3632
.annotate 'line', 2498
    find_lex $P3633, "self"
    get_hll_global $P3634, "GLOBAL"
    nqp_get_package_through_who $P3635, $P3634, "PAST"
    get_who $P3636, $P3635
    set $P3637, $P3636["Op"]
.annotate 'line', 2500
    get_hll_global $P3638, "GLOBAL"
    nqp_get_package_through_who $P3639, $P3638, "PAST"
    get_who $P3640, $P3639
    set $P3641, $P3640["Op"]
    find_lex $P3642, "$slot_past"
    unless_null $P3642, vivify_1360
    new $P3642, "Undef"
  vivify_1360:
    $P3643 = $P3641."new"($P3642, "get_how PP" :named("pirop"))
    find_lex $P3644, "$slot_past"
    unless_null $P3644, vivify_1361
    new $P3644, "Undef"
  vivify_1361:
.annotate 'line', 2502
    get_hll_global $P3645, "GLOBAL"
    nqp_get_package_through_who $P3646, $P3645, "PAST"
    get_who $P3647, $P3646
    set $P3648, $P3647["Val"]
    find_lex $P3649, "$body_past"
    unless_null $P3649, vivify_1362
    new $P3649, "Undef"
  vivify_1362:
    $P3650 = $P3648."new"($P3649 :named("value"))
    $P3651 = $P3637."new"($P3643, $P3644, $P3650, "callmethod" :named("pasttype"), "set_body_block" :named("name"))
.annotate 'line', 2498
    $P3652 = $P3633."add_event"($P3651 :named("deserialize_past"))
.annotate 'line', 2491
    .return ($P3652)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("288_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3654
    .param pmc param_3655
    .param pmc param_3656
    .param pmc param_3657
.annotate 'line', 2508
    .lex "self", param_3654
    .lex "$obj", param_3655
    .lex "$meta_method_name", param_3656
    .lex "$to_add", param_3657
.annotate 'line', 2513
    new $P3658, "Undef"
    .lex "$slot_past", $P3658
.annotate 'line', 2510
    find_lex $P3659, "$obj"
    unless_null $P3659, vivify_1363
    new $P3659, "Undef"
  vivify_1363:
    get_how $P3660, $P3659
    find_lex $P3661, "$obj"
    unless_null $P3661, vivify_1364
    new $P3661, "Undef"
  vivify_1364:
    find_lex $P3662, "$to_add"
    unless_null $P3662, vivify_1365
    new $P3662, "Undef"
  vivify_1365:
    find_lex $P3663, "$meta_method_name"
    unless_null $P3663, vivify_1366
    new $P3663, "Undef"
  vivify_1366:
    set $S3664, $P3663
    $P3660.$S3664($P3661, $P3662)
.annotate 'line', 2513
    find_lex $P3665, "self"
    find_lex $P3666, "$obj"
    unless_null $P3666, vivify_1367
    new $P3666, "Undef"
  vivify_1367:
    $P3667 = $P3665."get_slot_past_for_object"($P3666)
    store_lex "$slot_past", $P3667
.annotate 'line', 2514
    find_lex $P3668, "self"
    get_hll_global $P3669, "GLOBAL"
    nqp_get_package_through_who $P3670, $P3669, "PAST"
    get_who $P3671, $P3670
    set $P3672, $P3671["Op"]
    find_lex $P3673, "$meta_method_name"
    unless_null $P3673, vivify_1368
    new $P3673, "Undef"
  vivify_1368:
.annotate 'line', 2516
    get_hll_global $P3674, "GLOBAL"
    nqp_get_package_through_who $P3675, $P3674, "PAST"
    get_who $P3676, $P3675
    set $P3677, $P3676["Op"]
    find_lex $P3678, "$slot_past"
    unless_null $P3678, vivify_1369
    new $P3678, "Undef"
  vivify_1369:
    $P3679 = $P3677."new"($P3678, "get_how PP" :named("pirop"))
    find_lex $P3680, "$slot_past"
    unless_null $P3680, vivify_1370
    new $P3680, "Undef"
  vivify_1370:
.annotate 'line', 2518
    find_lex $P3681, "self"
    find_lex $P3682, "$to_add"
    unless_null $P3682, vivify_1371
    new $P3682, "Undef"
  vivify_1371:
    $P3683 = $P3681."get_object_sc_ref_past"($P3682)
    $P3684 = $P3672."new"($P3679, $P3680, $P3683, "callmethod" :named("pasttype"), $P3673 :named("name"))
.annotate 'line', 2514
    $P3685 = $P3668."add_event"($P3684 :named("deserialize_past"))
.annotate 'line', 2508
    .return ($P3685)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("289_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3687
    .param pmc param_3688
.annotate 'line', 2523
    .lex "self", param_3687
    .lex "$obj", param_3688
.annotate 'line', 2528
    new $P3689, "Undef"
    .lex "$slot_past", $P3689
.annotate 'line', 2525
    find_lex $P3690, "$obj"
    unless_null $P3690, vivify_1372
    new $P3690, "Undef"
  vivify_1372:
    get_how $P3691, $P3690
    find_lex $P3692, "$obj"
    unless_null $P3692, vivify_1373
    new $P3692, "Undef"
  vivify_1373:
    $P3691."compose"($P3692)
.annotate 'line', 2528
    find_lex $P3693, "self"
    find_lex $P3694, "$obj"
    unless_null $P3694, vivify_1374
    new $P3694, "Undef"
  vivify_1374:
    $P3695 = $P3693."get_slot_past_for_object"($P3694)
    store_lex "$slot_past", $P3695
.annotate 'line', 2529
    find_lex $P3696, "self"
    get_hll_global $P3697, "GLOBAL"
    nqp_get_package_through_who $P3698, $P3697, "PAST"
    get_who $P3699, $P3698
    set $P3700, $P3699["Op"]
.annotate 'line', 2531
    get_hll_global $P3701, "GLOBAL"
    nqp_get_package_through_who $P3702, $P3701, "PAST"
    get_who $P3703, $P3702
    set $P3704, $P3703["Op"]
    find_lex $P3705, "$slot_past"
    unless_null $P3705, vivify_1375
    new $P3705, "Undef"
  vivify_1375:
    $P3706 = $P3704."new"($P3705, "get_how PP" :named("pirop"))
    find_lex $P3707, "$slot_past"
    unless_null $P3707, vivify_1376
    new $P3707, "Undef"
  vivify_1376:
    $P3708 = $P3700."new"($P3706, $P3707, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2529
    $P3709 = $P3696."add_event"($P3708 :named("deserialize_past"))
.annotate 'line', 2523
    .return ($P3709)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("290_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3711
.annotate 'line', 2537
    .lex "self", param_3711
    find_lex $P3712, "self"
    find_lex $P3713, "$?CLASS"
    getattribute $P3714, $P3712, $P3713, "$!sc"
    unless_null $P3714, vivify_1377
    new $P3714, "Undef"
  vivify_1377:
    .return ($P3714)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("291_1304284961.094") :outer("257_1304284961.094")
    .param pmc param_3716
.annotate 'line', 2543
    .const 'Sub' $P3736 = "292_1304284961.094" 
    capture_lex $P3736
    .lex "self", param_3716
.annotate 'line', 2544
    new $P3717, "Undef"
    .lex "$des", $P3717
.annotate 'line', 2545
    new $P3718, "Undef"
    .lex "$fix", $P3718
.annotate 'line', 2544
    get_hll_global $P3719, "GLOBAL"
    nqp_get_package_through_who $P3720, $P3719, "PAST"
    get_who $P3721, $P3720
    set $P3722, $P3721["Stmts"]
    $P3723 = $P3722."new"()
    store_lex "$des", $P3723
.annotate 'line', 2545
    get_hll_global $P3724, "GLOBAL"
    nqp_get_package_through_who $P3725, $P3724, "PAST"
    get_who $P3726, $P3725
    set $P3727, $P3726["Stmts"]
    $P3728 = $P3727."new"()
    store_lex "$fix", $P3728
.annotate 'line', 2546
    find_lex $P3730, "self"
    find_lex $P3731, "$?CLASS"
    getattribute $P3732, $P3730, $P3731, "@!event_stream"
    unless_null $P3732, vivify_1378
    $P3732 = root_new ['parrot';'ResizablePMCArray']
  vivify_1378:
    defined $I3733, $P3732
    unless $I3733, for_undef_1379
    iter $P3729, $P3732
    new $P3755, 'ExceptionHandler'
    set_label $P3755, loop3754_handler
    $P3755."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3755
  loop3754_test:
    unless $P3729, loop3754_done
    shift $P3734, $P3729
  loop3754_redo:
    .const 'Sub' $P3736 = "292_1304284961.094" 
    capture_lex $P3736
    $P3736($P3734)
  loop3754_next:
    goto loop3754_test
  loop3754_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3756, exception, 'type'
    eq $P3756, .CONTROL_LOOP_NEXT, loop3754_next
    eq $P3756, .CONTROL_LOOP_REDO, loop3754_redo
  loop3754_done:
    pop_eh 
  for_undef_1379:
.annotate 'line', 2550
    find_dynamic_lex $P3757, "$/"
    get_hll_global $P3758, "GLOBAL"
    nqp_get_package_through_who $P3759, $P3758, "PAST"
    get_who $P3760, $P3759
    set $P3761, $P3760["Op"]
.annotate 'line', 2552
    get_hll_global $P3762, "GLOBAL"
    nqp_get_package_through_who $P3763, $P3762, "PAST"
    get_who $P3764, $P3763
    set $P3765, $P3764["Op"]
.annotate 'line', 2554
    get_hll_global $P3766, "GLOBAL"
    nqp_get_package_through_who $P3767, $P3766, "PAST"
    get_who $P3768, $P3767
    set $P3769, $P3768["Op"]
    find_lex $P3770, "self"
    find_lex $P3771, "$?CLASS"
    getattribute $P3772, $P3770, $P3771, "$!handle"
    unless_null $P3772, vivify_1386
    new $P3772, "Undef"
  vivify_1386:
    $P3773 = $P3769."new"($P3772, "nqp_get_sc Ps" :named("pirop"))
    $P3774 = $P3765."new"($P3773, "isnull IP" :named("pirop"))
.annotate 'line', 2556
    get_hll_global $P3775, "GLOBAL"
    nqp_get_package_through_who $P3776, $P3775, "PAST"
    get_who $P3777, $P3776
    set $P3778, $P3777["Stmts"]
.annotate 'line', 2557
    get_hll_global $P3779, "GLOBAL"
    nqp_get_package_through_who $P3780, $P3779, "PAST"
    get_who $P3781, $P3780
    set $P3782, $P3781["Op"]
    $P3783 = $P3782."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2558
    get_hll_global $P3784, "GLOBAL"
    nqp_get_package_through_who $P3785, $P3784, "PAST"
    get_who $P3786, $P3785
    set $P3787, $P3786["Op"]
.annotate 'line', 2560
    get_hll_global $P3788, "GLOBAL"
    nqp_get_package_through_who $P3789, $P3788, "PAST"
    get_who $P3790, $P3789
    set $P3791, $P3790["Op"]
    $P3792 = $P3791."new"("getinterp P" :named("pirop"))
.annotate 'line', 2561
    get_hll_global $P3793, "GLOBAL"
    nqp_get_package_through_who $P3794, $P3793, "PAST"
    get_who $P3795, $P3794
    set $P3796, $P3795["Op"]
    $P3797 = $P3796."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2562
    get_hll_global $P3798, "GLOBAL"
    nqp_get_package_through_who $P3799, $P3798, "PAST"
    get_who $P3800, $P3799
    set $P3801, $P3800["Op"]
    $P3802 = $P3801."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3803 = $P3787."new"($P3792, $P3797, $P3802, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2564
    get_hll_global $P3804, "GLOBAL"
    nqp_get_package_through_who $P3805, $P3804, "PAST"
    get_who $P3806, $P3805
    set $P3807, $P3806["Op"]
.annotate 'line', 2566
    get_hll_global $P3808, "GLOBAL"
    nqp_get_package_through_who $P3809, $P3808, "PAST"
    get_who $P3810, $P3809
    set $P3811, $P3810["Var"]
    $P3812 = $P3811."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2567
    get_hll_global $P3813, "GLOBAL"
    nqp_get_package_through_who $P3814, $P3813, "PAST"
    get_who $P3815, $P3814
    set $P3816, $P3815["Op"]
    find_lex $P3817, "self"
    find_lex $P3818, "$?CLASS"
    getattribute $P3819, $P3817, $P3818, "$!handle"
    unless_null $P3819, vivify_1387
    new $P3819, "Undef"
  vivify_1387:
    $P3820 = $P3816."new"($P3819, "nqp_create_sc Ps" :named("pirop"))
    $P3821 = $P3807."new"($P3812, $P3820, "bind" :named("pasttype"))
.annotate 'line', 2564
    find_lex $P3822, "$des"
    unless_null $P3822, vivify_1388
    new $P3822, "Undef"
  vivify_1388:
    $P3823 = $P3778."new"($P3783, $P3803, $P3821, $P3822)
.annotate 'line', 2556
    find_lex $P3824, "$fix"
    unless_null $P3824, vivify_1389
    new $P3824, "Undef"
  vivify_1389:
    $P3825 = $P3761."new"($P3774, $P3823, $P3824, "if" :named("pasttype"))
.annotate 'line', 2550
    $P3826 = $P3757."!make"($P3825)
.annotate 'line', 2543
    .return ($P3826)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3735"  :anon :subid("292_1304284961.094") :outer("291_1304284961.094")
    .param pmc param_3737
.annotate 'line', 2546
    .lex "$_", param_3737
.annotate 'line', 2547
    find_lex $P3739, "$_"
    unless_null $P3739, vivify_1380
    new $P3739, "Undef"
  vivify_1380:
    $P3740 = $P3739."deserialize_past"()
    defined $I3741, $P3740
    unless $I3741, if_3738_end
    find_lex $P3742, "$des"
    unless_null $P3742, vivify_1381
    new $P3742, "Undef"
  vivify_1381:
    find_lex $P3743, "$_"
    unless_null $P3743, vivify_1382
    new $P3743, "Undef"
  vivify_1382:
    $P3744 = $P3743."deserialize_past"()
    $P3742."push"($P3744)
  if_3738_end:
.annotate 'line', 2548
    find_lex $P3747, "$_"
    unless_null $P3747, vivify_1383
    new $P3747, "Undef"
  vivify_1383:
    $P3748 = $P3747."fixup_past"()
    defined $I3749, $P3748
    if $I3749, if_3746
    new $P3745, 'Integer'
    set $P3745, $I3749
    goto if_3746_end
  if_3746:
    find_lex $P3750, "$fix"
    unless_null $P3750, vivify_1384
    new $P3750, "Undef"
  vivify_1384:
    find_lex $P3751, "$_"
    unless_null $P3751, vivify_1385
    new $P3751, "Undef"
  vivify_1385:
    $P3752 = $P3751."fixup_past"()
    $P3753 = $P3750."push"($P3752)
    set $P3745, $P3753
  if_3746_end:
.annotate 'line', 2546
    .return ($P3745)
.end


.HLL "nqp"

.namespace []
.sub "_block3829" :load :anon :subid("293_1304284961.094")
.annotate 'line', 1064
    .const 'Sub' $P3831 = "10_1304284961.094" 
    $P3832 = $P3831()
    .return ($P3832)
.end

