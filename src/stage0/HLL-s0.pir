
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304277405.374")
.annotate 'line', 0
    .const 'Sub' $P2942 = "262_1304277405.374" 
    capture_lex $P2942
    .const 'Sub' $P2508 = "242_1304277405.374" 
    capture_lex $P2508
    .const 'Sub' $P2425 = "234_1304277405.374" 
    capture_lex $P2425
    .const 'Sub' $P1246 = "167_1304277405.374" 
    capture_lex $P1246
    .const 'Sub' $P556 = "120_1304277405.374" 
    capture_lex $P556
    .const 'Sub' $P17 = "11_1304277405.374" 
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
    .const 'Sub' $P17 = "11_1304277405.374" 
    capture_lex $P17
    $P17()
.annotate 'line', 867
    .const 'Sub' $P556 = "120_1304277405.374" 
    capture_lex $P556
    $P556()
.annotate 'line', 1072
    .const 'Sub' $P1246 = "167_1304277405.374" 
    capture_lex $P1246
    $P1246()
.annotate 'line', 1791
    get_hll_global $P2418, "GLOBAL"
    nqp_get_package_through_who $P2419, $P2418, "HLL"
    get_who $P2420, $P2419
    set $P2421, $P2420["Compiler"]
    $P2422 = $P2421."new"()
    store_lex "$compiler", $P2422
.annotate 'line', 1792
    find_lex $P2423, "$compiler"
    unless_null $P2423, vivify_1031
    new $P2423, "Undef"
  vivify_1031:
    $P2423."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2425 = "234_1304277405.374" 
    capture_lex $P2425
    $P2425()
.annotate 'line', 1918
    .const 'Sub' $P2508 = "242_1304277405.374" 
    capture_lex $P2508
    $P2508()
.annotate 'line', 2096
    .const 'Sub' $P2942 = "262_1304277405.374" 
    capture_lex $P2942
    $P3908 = $P2942()
.annotate 'line', 1
    .return ($P3908)
.annotate 'line', 1064
    .const 'Sub' $P3910 = "299_1304277405.374" 
.annotate 'line', 1
    .return ($P3910)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post300") :outer("10_1304277405.374")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304277405.374" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3914, "1304277396.391"
    isnull $I3915, $P3914
    if $I3915, if_3913
    .const 'Sub' $P4901 = "10_1304277405.374" 
    $P4902 = $P4901."get_lexinfo"()
    nqp_get_sc_object $P4903, "1304277396.391", 0
    $P4902."set_static_lexpad_value"("GLOBALish", $P4903)
    .const 'Sub' $P4904 = "10_1304277405.374" 
    $P4905 = $P4904."get_lexinfo"()
    $P4905."finish_static_lexpad"()
    .const 'Sub' $P4906 = "10_1304277405.374" 
    $P4907 = $P4906."get_lexinfo"()
    nqp_get_sc_object $P4908, "1304277396.391", 0
    $P4907."set_static_lexpad_value"("$?PACKAGE", $P4908)
    .const 'Sub' $P4909 = "10_1304277405.374" 
    $P4910 = $P4909."get_lexinfo"()
    $P4910."finish_static_lexpad"()
    nqp_get_sc_object $P4911, "1304277396.391", 2
    .const 'Sub' $P4912 = "12_1304277405.374" 
    copy $P4911, $P4912
    nqp_get_sc_object $P4913, "1304277396.391", 3
    .const 'Sub' $P4914 = "14_1304277405.374" 
    copy $P4913, $P4914
    nqp_get_sc_object $P4915, "1304277396.391", 4
    .const 'Sub' $P4916 = "16_1304277405.374" 
    copy $P4915, $P4916
    nqp_get_sc_object $P4917, "1304277396.391", 5
    .const 'Sub' $P4918 = "17_1304277405.374" 
    copy $P4917, $P4918
    nqp_get_sc_object $P4919, "1304277396.391", 6
    .const 'Sub' $P4920 = "18_1304277405.374" 
    copy $P4919, $P4920
    nqp_get_sc_object $P4921, "1304277396.391", 7
    .const 'Sub' $P4922 = "19_1304277405.374" 
    copy $P4921, $P4922
    nqp_get_sc_object $P4923, "1304277396.391", 8
    .const 'Sub' $P4924 = "20_1304277405.374" 
    copy $P4923, $P4924
    nqp_get_sc_object $P4925, "1304277396.391", 9
    .const 'Sub' $P4926 = "21_1304277405.374" 
    copy $P4925, $P4926
    nqp_get_sc_object $P4927, "1304277396.391", 10
    .const 'Sub' $P4928 = "22_1304277405.374" 
    copy $P4927, $P4928
    nqp_get_sc_object $P4929, "1304277396.391", 11
    .const 'Sub' $P4930 = "23_1304277405.374" 
    copy $P4929, $P4930
    nqp_get_sc_object $P4931, "1304277396.391", 12
    .const 'Sub' $P4932 = "24_1304277405.374" 
    copy $P4931, $P4932
    nqp_get_sc_object $P4933, "1304277396.391", 13
    .const 'Sub' $P4934 = "25_1304277405.374" 
    copy $P4933, $P4934
    nqp_get_sc_object $P4935, "1304277396.391", 14
    .const 'Sub' $P4936 = "26_1304277405.374" 
    copy $P4935, $P4936
    nqp_get_sc_object $P4937, "1304277396.391", 15
    .const 'Sub' $P4938 = "27_1304277405.374" 
    copy $P4937, $P4938
    nqp_get_sc_object $P4939, "1304277396.391", 16
    .const 'Sub' $P4940 = "28_1304277405.374" 
    copy $P4939, $P4940
    nqp_get_sc_object $P4941, "1304277396.391", 17
    .const 'Sub' $P4942 = "30_1304277405.374" 
    copy $P4941, $P4942
    nqp_get_sc_object $P4943, "1304277396.391", 18
    .const 'Sub' $P4944 = "32_1304277405.374" 
    copy $P4943, $P4944
    nqp_get_sc_object $P4945, "1304277396.391", 19
    .const 'Sub' $P4946 = "34_1304277405.374" 
    copy $P4945, $P4946
    nqp_get_sc_object $P4947, "1304277396.391", 20
    .const 'Sub' $P4948 = "36_1304277405.374" 
    copy $P4947, $P4948
    nqp_get_sc_object $P4949, "1304277396.391", 21
    .const 'Sub' $P4950 = "38_1304277405.374" 
    copy $P4949, $P4950
    nqp_get_sc_object $P4951, "1304277396.391", 22
    .const 'Sub' $P4952 = "40_1304277405.374" 
    copy $P4951, $P4952
    nqp_get_sc_object $P4953, "1304277396.391", 23
    .const 'Sub' $P4954 = "41_1304277405.374" 
    copy $P4953, $P4954
    nqp_get_sc_object $P4955, "1304277396.391", 24
    .const 'Sub' $P4956 = "43_1304277405.374" 
    copy $P4955, $P4956
    nqp_get_sc_object $P4957, "1304277396.391", 25
    .const 'Sub' $P4958 = "45_1304277405.374" 
    copy $P4957, $P4958
    nqp_get_sc_object $P4959, "1304277396.391", 26
    .const 'Sub' $P4960 = "47_1304277405.374" 
    copy $P4959, $P4960
    nqp_get_sc_object $P4961, "1304277396.391", 27
    .const 'Sub' $P4962 = "49_1304277405.374" 
    copy $P4961, $P4962
    nqp_get_sc_object $P4963, "1304277396.391", 28
    .const 'Sub' $P4964 = "51_1304277405.374" 
    copy $P4963, $P4964
    nqp_get_sc_object $P4965, "1304277396.391", 29
    .const 'Sub' $P4966 = "53_1304277405.374" 
    copy $P4965, $P4966
    nqp_get_sc_object $P4967, "1304277396.391", 30
    .const 'Sub' $P4968 = "55_1304277405.374" 
    copy $P4967, $P4968
    nqp_get_sc_object $P4969, "1304277396.391", 31
    .const 'Sub' $P4970 = "57_1304277405.374" 
    copy $P4969, $P4970
    nqp_get_sc_object $P4971, "1304277396.391", 32
    .const 'Sub' $P4972 = "59_1304277405.374" 
    copy $P4971, $P4972
    nqp_get_sc_object $P4973, "1304277396.391", 33
    .const 'Sub' $P4974 = "61_1304277405.374" 
    copy $P4973, $P4974
    nqp_get_sc_object $P4975, "1304277396.391", 34
    .const 'Sub' $P4976 = "63_1304277405.374" 
    copy $P4975, $P4976
    nqp_get_sc_object $P4977, "1304277396.391", 35
    .const 'Sub' $P4978 = "65_1304277405.374" 
    copy $P4977, $P4978
    nqp_get_sc_object $P4979, "1304277396.391", 36
    .const 'Sub' $P4980 = "67_1304277405.374" 
    copy $P4979, $P4980
    nqp_get_sc_object $P4981, "1304277396.391", 37
    .const 'Sub' $P4982 = "68_1304277405.374" 
    copy $P4981, $P4982
    nqp_get_sc_object $P4983, "1304277396.391", 38
    .const 'Sub' $P4984 = "69_1304277405.374" 
    copy $P4983, $P4984
    nqp_get_sc_object $P4985, "1304277396.391", 39
    .const 'Sub' $P4986 = "71_1304277405.374" 
    copy $P4985, $P4986
    nqp_get_sc_object $P4987, "1304277396.391", 40
    .const 'Sub' $P4988 = "73_1304277405.374" 
    copy $P4987, $P4988
    nqp_get_sc_object $P4989, "1304277396.391", 41
    .const 'Sub' $P4990 = "75_1304277405.374" 
    copy $P4989, $P4990
    nqp_get_sc_object $P4991, "1304277396.391", 42
    .const 'Sub' $P4992 = "77_1304277405.374" 
    copy $P4991, $P4992
    nqp_get_sc_object $P4993, "1304277396.391", 43
    .const 'Sub' $P4994 = "79_1304277405.374" 
    copy $P4993, $P4994
    nqp_get_sc_object $P4995, "1304277396.391", 44
    .const 'Sub' $P4996 = "81_1304277405.374" 
    copy $P4995, $P4996
    nqp_get_sc_object $P4997, "1304277396.391", 45
    .const 'Sub' $P4998 = "83_1304277405.374" 
    copy $P4997, $P4998
    nqp_get_sc_object $P4999, "1304277396.391", 46
    .const 'Sub' $P5000 = "85_1304277405.374" 
    copy $P4999, $P5000
    nqp_get_sc_object $P5001, "1304277396.391", 47
    .const 'Sub' $P5002 = "87_1304277405.374" 
    copy $P5001, $P5002
    nqp_get_sc_object $P5003, "1304277396.391", 48
    .const 'Sub' $P5004 = "89_1304277405.374" 
    copy $P5003, $P5004
    nqp_get_sc_object $P5005, "1304277396.391", 49
    .const 'Sub' $P5006 = "91_1304277405.374" 
    copy $P5005, $P5006
    nqp_get_sc_object $P5007, "1304277396.391", 50
    .const 'Sub' $P5008 = "93_1304277405.374" 
    copy $P5007, $P5008
    nqp_get_sc_object $P5009, "1304277396.391", 51
    .const 'Sub' $P5010 = "98_1304277405.374" 
    copy $P5009, $P5010
    nqp_get_sc_object $P5011, "1304277396.391", 52
    .const 'Sub' $P5012 = "101_1304277405.374" 
    copy $P5011, $P5012
    nqp_get_sc_object $P5013, "1304277396.391", 53
    .const 'Sub' $P5014 = "103_1304277405.374" 
    copy $P5013, $P5014
    nqp_get_sc_object $P5015, "1304277396.391", 54
    .const 'Sub' $P5016 = "105_1304277405.374" 
    copy $P5015, $P5016
    nqp_get_sc_object $P5017, "1304277396.391", 55
    .const 'Sub' $P5018 = "106_1304277405.374" 
    copy $P5017, $P5018
    nqp_get_sc_object $P5019, "1304277396.391", 56
    .const 'Sub' $P5020 = "107_1304277405.374" 
    copy $P5019, $P5020
    nqp_get_sc_object $P5021, "1304277396.391", 57
    .const 'Sub' $P5022 = "108_1304277405.374" 
    copy $P5021, $P5022
    nqp_get_sc_object $P5023, "1304277396.391", 58
    .const 'Sub' $P5024 = "109_1304277405.374" 
    copy $P5023, $P5024
    .const 'Sub' $P5025 = "109_1304277405.374" 
    nqp_get_sc_object $P5026, "1304277396.391", 1
    get_who $P5027, $P5026
    set $P5027["quotemod_check"], $P5025
    nqp_get_sc_object $P5028, "1304277396.391", 59
    .const 'Sub' $P5029 = "110_1304277405.374" 
    copy $P5028, $P5029
    nqp_get_sc_object $P5030, "1304277396.391", 60
    .const 'Sub' $P5031 = "111_1304277405.374" 
    copy $P5030, $P5031
    nqp_get_sc_object $P5032, "1304277396.391", 61
    .const 'Sub' $P5033 = "112_1304277405.374" 
    copy $P5032, $P5033
    .const 'Sub' $P5034 = "112_1304277405.374" 
    nqp_get_sc_object $P5035, "1304277396.391", 1
    get_who $P5036, $P5035
    set $P5036["split_words"], $P5034
    nqp_get_sc_object $P5037, "1304277396.391", 62
    .const 'Sub' $P5038 = "113_1304277405.374" 
    copy $P5037, $P5038
    nqp_get_sc_object $P5039, "1304277396.391", 63
    .const 'Sub' $P5040 = "114_1304277405.374" 
    copy $P5039, $P5040
    nqp_get_sc_object $P5041, "1304277396.391", 64
    .const 'Sub' $P5042 = "115_1304277405.374" 
    copy $P5041, $P5042
    nqp_get_sc_object $P5043, "1304277396.391", 65
    .const 'Sub' $P5044 = "116_1304277405.374" 
    copy $P5043, $P5044
    nqp_get_sc_object $P5045, "1304277396.391", 66
    .const 'Sub' $P5046 = "117_1304277405.374" 
    copy $P5045, $P5046
    nqp_get_sc_object $P5047, "1304277396.391", 67
    .const 'Sub' $P5048 = "118_1304277405.374" 
    copy $P5047, $P5048
    .const 'Sub' $P5049 = "11_1304277405.374" 
    $P5050 = $P5049."get_lexinfo"()
    nqp_get_sc_object $P5051, "1304277396.391", 1
    $P5050."set_static_lexpad_value"("$?PACKAGE", $P5051)
    .const 'Sub' $P5052 = "11_1304277405.374" 
    $P5053 = $P5052."get_lexinfo"()
    $P5053."finish_static_lexpad"()
    .const 'Sub' $P5054 = "11_1304277405.374" 
    $P5055 = $P5054."get_lexinfo"()
    nqp_get_sc_object $P5056, "1304277396.391", 1
    $P5055."set_static_lexpad_value"("$?CLASS", $P5056)
    .const 'Sub' $P5057 = "11_1304277405.374" 
    $P5058 = $P5057."get_lexinfo"()
    $P5058."finish_static_lexpad"()
    .const 'Sub' $P5059 = "121_1304277405.374" 
    nqp_get_sc_object $P5060, "1304277396.391", 68
    get_who $P5061, $P5060
    set $P5061["string_to_int"], $P5059
    .const 'Sub' $P5062 = "123_1304277405.374" 
    nqp_get_sc_object $P5063, "1304277396.391", 68
    get_who $P5064, $P5063
    set $P5064["ints_to_string"], $P5062
    nqp_get_sc_object $P5065, "1304277396.391", 69
    .const 'Sub' $P5066 = "126_1304277405.374" 
    copy $P5065, $P5066
    nqp_get_sc_object $P5067, "1304277396.391", 70
    .const 'Sub' $P5068 = "127_1304277405.374" 
    copy $P5067, $P5068
    nqp_get_sc_object $P5069, "1304277396.391", 71
    .const 'Sub' $P5070 = "130_1304277405.374" 
    copy $P5069, $P5070
    nqp_get_sc_object $P5071, "1304277396.391", 72
    .const 'Sub' $P5072 = "133_1304277405.374" 
    copy $P5071, $P5072
    nqp_get_sc_object $P5073, "1304277396.391", 73
    .const 'Sub' $P5074 = "134_1304277405.374" 
    copy $P5073, $P5074
    nqp_get_sc_object $P5075, "1304277396.391", 74
    .const 'Sub' $P5076 = "135_1304277405.374" 
    copy $P5075, $P5076
    nqp_get_sc_object $P5077, "1304277396.391", 75
    .const 'Sub' $P5078 = "136_1304277405.374" 
    copy $P5077, $P5078
    nqp_get_sc_object $P5079, "1304277396.391", 76
    .const 'Sub' $P5080 = "137_1304277405.374" 
    copy $P5079, $P5080
    nqp_get_sc_object $P5081, "1304277396.391", 77
    .const 'Sub' $P5082 = "138_1304277405.374" 
    copy $P5081, $P5082
    nqp_get_sc_object $P5083, "1304277396.391", 78
    .const 'Sub' $P5084 = "139_1304277405.374" 
    copy $P5083, $P5084
    nqp_get_sc_object $P5085, "1304277396.391", 79
    .const 'Sub' $P5086 = "140_1304277405.374" 
    copy $P5085, $P5086
    nqp_get_sc_object $P5087, "1304277396.391", 80
    .const 'Sub' $P5088 = "141_1304277405.374" 
    copy $P5087, $P5088
    nqp_get_sc_object $P5089, "1304277396.391", 81
    .const 'Sub' $P5090 = "142_1304277405.374" 
    copy $P5089, $P5090
    nqp_get_sc_object $P5091, "1304277396.391", 82
    .const 'Sub' $P5092 = "143_1304277405.374" 
    copy $P5091, $P5092
    nqp_get_sc_object $P5093, "1304277396.391", 83
    .const 'Sub' $P5094 = "146_1304277405.374" 
    copy $P5093, $P5094
    nqp_get_sc_object $P5095, "1304277396.391", 84
    .const 'Sub' $P5096 = "148_1304277405.374" 
    copy $P5095, $P5096
    nqp_get_sc_object $P5097, "1304277396.391", 85
    .const 'Sub' $P5098 = "149_1304277405.374" 
    copy $P5097, $P5098
    nqp_get_sc_object $P5099, "1304277396.391", 86
    .const 'Sub' $P5100 = "150_1304277405.374" 
    copy $P5099, $P5100
    nqp_get_sc_object $P5101, "1304277396.391", 87
    .const 'Sub' $P5102 = "151_1304277405.374" 
    copy $P5101, $P5102
    nqp_get_sc_object $P5103, "1304277396.391", 88
    .const 'Sub' $P5104 = "152_1304277405.374" 
    copy $P5103, $P5104
    nqp_get_sc_object $P5105, "1304277396.391", 89
    .const 'Sub' $P5106 = "153_1304277405.374" 
    copy $P5105, $P5106
    nqp_get_sc_object $P5107, "1304277396.391", 90
    .const 'Sub' $P5108 = "154_1304277405.374" 
    copy $P5107, $P5108
    nqp_get_sc_object $P5109, "1304277396.391", 91
    .const 'Sub' $P5110 = "155_1304277405.374" 
    copy $P5109, $P5110
    nqp_get_sc_object $P5111, "1304277396.391", 92
    .const 'Sub' $P5112 = "156_1304277405.374" 
    copy $P5111, $P5112
    nqp_get_sc_object $P5113, "1304277396.391", 93
    .const 'Sub' $P5114 = "157_1304277405.374" 
    copy $P5113, $P5114
    nqp_get_sc_object $P5115, "1304277396.391", 94
    .const 'Sub' $P5116 = "158_1304277405.374" 
    copy $P5115, $P5116
    nqp_get_sc_object $P5117, "1304277396.391", 95
    .const 'Sub' $P5118 = "159_1304277405.374" 
    copy $P5117, $P5118
    nqp_get_sc_object $P5119, "1304277396.391", 96
    .const 'Sub' $P5120 = "160_1304277405.374" 
    copy $P5119, $P5120
    nqp_get_sc_object $P5121, "1304277396.391", 97
    .const 'Sub' $P5122 = "161_1304277405.374" 
    copy $P5121, $P5122
    nqp_get_sc_object $P5123, "1304277396.391", 98
    .const 'Sub' $P5124 = "162_1304277405.374" 
    copy $P5123, $P5124
    nqp_get_sc_object $P5125, "1304277396.391", 99
    .const 'Sub' $P5126 = "163_1304277405.374" 
    copy $P5125, $P5126
    nqp_get_sc_object $P5127, "1304277396.391", 100
    .const 'Sub' $P5128 = "165_1304277405.374" 
    copy $P5127, $P5128
    .const 'Sub' $P5129 = "120_1304277405.374" 
    $P5130 = $P5129."get_lexinfo"()
    nqp_get_sc_object $P5131, "1304277396.391", 68
    $P5130."set_static_lexpad_value"("$?PACKAGE", $P5131)
    .const 'Sub' $P5132 = "120_1304277405.374" 
    $P5133 = $P5132."get_lexinfo"()
    $P5133."finish_static_lexpad"()
    .const 'Sub' $P5134 = "120_1304277405.374" 
    $P5135 = $P5134."get_lexinfo"()
    nqp_get_sc_object $P5136, "1304277396.391", 68
    $P5135."set_static_lexpad_value"("$?CLASS", $P5136)
    .const 'Sub' $P5137 = "120_1304277405.374" 
    $P5138 = $P5137."get_lexinfo"()
    $P5138."finish_static_lexpad"()
    nqp_get_sc_object $P5139, "1304277396.391", 102
    .const 'Sub' $P5140 = "170_1304277405.374" 
    copy $P5139, $P5140
    nqp_get_sc_object $P5141, "1304277396.391", 103
    .const 'Sub' $P5142 = "171_1304277405.374" 
    copy $P5141, $P5142
    nqp_get_sc_object $P5143, "1304277396.391", 104
    .const 'Sub' $P5144 = "173_1304277405.374" 
    copy $P5143, $P5144
    nqp_get_sc_object $P5145, "1304277396.391", 105
    .const 'Sub' $P5146 = "176_1304277405.374" 
    copy $P5145, $P5146
    nqp_get_sc_object $P5147, "1304277396.391", 106
    .const 'Sub' $P5148 = "177_1304277405.374" 
    copy $P5147, $P5148
    nqp_get_sc_object $P5149, "1304277396.391", 107
    .const 'Sub' $P5150 = "178_1304277405.374" 
    copy $P5149, $P5150
    nqp_get_sc_object $P5151, "1304277396.391", 108
    .const 'Sub' $P5152 = "180_1304277405.374" 
    copy $P5151, $P5152
    nqp_get_sc_object $P5153, "1304277396.391", 109
    .const 'Sub' $P5154 = "185_1304277405.374" 
    copy $P5153, $P5154
    nqp_get_sc_object $P5155, "1304277396.391", 110
    .const 'Sub' $P5156 = "186_1304277405.374" 
    copy $P5155, $P5156
    nqp_get_sc_object $P5157, "1304277396.391", 111
    .const 'Sub' $P5158 = "193_1304277405.374" 
    copy $P5157, $P5158
    nqp_get_sc_object $P5159, "1304277396.391", 112
    .const 'Sub' $P5160 = "195_1304277405.374" 
    copy $P5159, $P5160
    nqp_get_sc_object $P5161, "1304277396.391", 113
    .const 'Sub' $P5162 = "196_1304277405.374" 
    copy $P5161, $P5162
    nqp_get_sc_object $P5163, "1304277396.391", 114
    .const 'Sub' $P5164 = "197_1304277405.374" 
    copy $P5163, $P5164
    nqp_get_sc_object $P5165, "1304277396.391", 115
    .const 'Sub' $P5166 = "198_1304277405.374" 
    copy $P5165, $P5166
    nqp_get_sc_object $P5167, "1304277396.391", 116
    .const 'Sub' $P5168 = "199_1304277405.374" 
    copy $P5167, $P5168
    nqp_get_sc_object $P5169, "1304277396.391", 117
    .const 'Sub' $P5170 = "200_1304277405.374" 
    copy $P5169, $P5170
    nqp_get_sc_object $P5171, "1304277396.391", 118
    .const 'Sub' $P5172 = "201_1304277405.374" 
    copy $P5171, $P5172
    nqp_get_sc_object $P5173, "1304277396.391", 119
    .const 'Sub' $P5174 = "202_1304277405.374" 
    copy $P5173, $P5174
    nqp_get_sc_object $P5175, "1304277396.391", 120
    .const 'Sub' $P5176 = "203_1304277405.374" 
    copy $P5175, $P5176
    nqp_get_sc_object $P5177, "1304277396.391", 121
    .const 'Sub' $P5178 = "204_1304277405.374" 
    copy $P5177, $P5178
    nqp_get_sc_object $P5179, "1304277396.391", 122
    .const 'Sub' $P5180 = "205_1304277405.374" 
    copy $P5179, $P5180
    nqp_get_sc_object $P5181, "1304277396.391", 123
    .const 'Sub' $P5182 = "207_1304277405.374" 
    copy $P5181, $P5182
    nqp_get_sc_object $P5183, "1304277396.391", 124
    .const 'Sub' $P5184 = "210_1304277405.374" 
    copy $P5183, $P5184
    nqp_get_sc_object $P5185, "1304277396.391", 125
    .const 'Sub' $P5186 = "214_1304277405.374" 
    copy $P5185, $P5186
    nqp_get_sc_object $P5187, "1304277396.391", 126
    .const 'Sub' $P5188 = "216_1304277405.374" 
    copy $P5187, $P5188
    nqp_get_sc_object $P5189, "1304277396.391", 127
    .const 'Sub' $P5190 = "217_1304277405.374" 
    copy $P5189, $P5190
    nqp_get_sc_object $P5191, "1304277396.391", 128
    .const 'Sub' $P5192 = "218_1304277405.374" 
    copy $P5191, $P5192
    nqp_get_sc_object $P5193, "1304277396.391", 129
    .const 'Sub' $P5194 = "219_1304277405.374" 
    copy $P5193, $P5194
    nqp_get_sc_object $P5195, "1304277396.391", 130
    .const 'Sub' $P5196 = "220_1304277405.374" 
    copy $P5195, $P5196
    nqp_get_sc_object $P5197, "1304277396.391", 131
    .const 'Sub' $P5198 = "221_1304277405.374" 
    copy $P5197, $P5198
    nqp_get_sc_object $P5199, "1304277396.391", 132
    .const 'Sub' $P5200 = "223_1304277405.374" 
    copy $P5199, $P5200
    nqp_get_sc_object $P5201, "1304277396.391", 133
    .const 'Sub' $P5202 = "224_1304277405.374" 
    copy $P5201, $P5202
    nqp_get_sc_object $P5203, "1304277396.391", 134
    .const 'Sub' $P5204 = "225_1304277405.374" 
    copy $P5203, $P5204
    nqp_get_sc_object $P5205, "1304277396.391", 135
    .const 'Sub' $P5206 = "227_1304277405.374" 
    copy $P5205, $P5206
    nqp_get_sc_object $P5207, "1304277396.391", 136
    .const 'Sub' $P5208 = "230_1304277405.374" 
    copy $P5207, $P5208
    nqp_get_sc_object $P5209, "1304277396.391", 137
    .const 'Sub' $P5210 = "232_1304277405.374" 
    copy $P5209, $P5210
    .const 'Sub' $P5211 = "167_1304277405.374" 
    $P5212 = $P5211."get_lexinfo"()
    nqp_get_sc_object $P5213, "1304277396.391", 101
    $P5212."set_static_lexpad_value"("$?PACKAGE", $P5213)
    .const 'Sub' $P5214 = "167_1304277405.374" 
    $P5215 = $P5214."get_lexinfo"()
    $P5215."finish_static_lexpad"()
    .const 'Sub' $P5216 = "167_1304277405.374" 
    $P5217 = $P5216."get_lexinfo"()
    nqp_get_sc_object $P5218, "1304277396.391", 101
    $P5217."set_static_lexpad_value"("$?CLASS", $P5218)
    .const 'Sub' $P5219 = "167_1304277405.374" 
    $P5220 = $P5219."get_lexinfo"()
    $P5220."finish_static_lexpad"()
    nqp_get_sc_object $P5221, "1304277396.391", 139
    .const 'Sub' $P5222 = "235_1304277405.374" 
    copy $P5221, $P5222
    nqp_get_sc_object $P5223, "1304277396.391", 140
    .const 'Sub' $P5224 = "236_1304277405.374" 
    copy $P5223, $P5224
    nqp_get_sc_object $P5225, "1304277396.391", 141
    .const 'Sub' $P5226 = "237_1304277405.374" 
    copy $P5225, $P5226
    nqp_get_sc_object $P5227, "1304277396.391", 142
    .const 'Sub' $P5228 = "238_1304277405.374" 
    copy $P5227, $P5228
    nqp_get_sc_object $P5229, "1304277396.391", 143
    .const 'Sub' $P5230 = "239_1304277405.374" 
    copy $P5229, $P5230
    .const 'Sub' $P5231 = "234_1304277405.374" 
    $P5232 = $P5231."get_lexinfo"()
    nqp_get_sc_object $P5233, "1304277396.391", 138
    $P5232."set_static_lexpad_value"("$?PACKAGE", $P5233)
    .const 'Sub' $P5234 = "234_1304277405.374" 
    $P5235 = $P5234."get_lexinfo"()
    $P5235."finish_static_lexpad"()
    .const 'Sub' $P5236 = "234_1304277405.374" 
    $P5237 = $P5236."get_lexinfo"()
    nqp_get_sc_object $P5238, "1304277396.391", 138
    $P5237."set_static_lexpad_value"("$?CLASS", $P5238)
    .const 'Sub' $P5239 = "234_1304277405.374" 
    $P5240 = $P5239."get_lexinfo"()
    $P5240."finish_static_lexpad"()
    nqp_get_sc_object $P5241, "1304277396.391", 145
    .const 'Sub' $P5242 = "243_1304277405.374" 
    copy $P5241, $P5242
    nqp_get_sc_object $P5243, "1304277396.391", 146
    .const 'Sub' $P5244 = "244_1304277405.374" 
    copy $P5243, $P5244
    nqp_get_sc_object $P5245, "1304277396.391", 147
    .const 'Sub' $P5246 = "245_1304277405.374" 
    copy $P5245, $P5246
    nqp_get_sc_object $P5247, "1304277396.391", 148
    .const 'Sub' $P5248 = "247_1304277405.374" 
    copy $P5247, $P5248
    nqp_get_sc_object $P5249, "1304277396.391", 149
    .const 'Sub' $P5250 = "248_1304277405.374" 
    copy $P5249, $P5250
    nqp_get_sc_object $P5251, "1304277396.391", 150
    .const 'Sub' $P5252 = "249_1304277405.374" 
    copy $P5251, $P5252
    nqp_get_sc_object $P5253, "1304277396.391", 151
    .const 'Sub' $P5254 = "251_1304277405.374" 
    copy $P5253, $P5254
    nqp_get_sc_object $P5255, "1304277396.391", 152
    .const 'Sub' $P5256 = "252_1304277405.374" 
    copy $P5255, $P5256
    nqp_get_sc_object $P5257, "1304277396.391", 153
    .const 'Sub' $P5258 = "253_1304277405.374" 
    copy $P5257, $P5258
    .const 'Sub' $P5259 = "242_1304277405.374" 
    $P5260 = $P5259."get_lexinfo"()
    nqp_get_sc_object $P5261, "1304277396.391", 144
    $P5260."set_static_lexpad_value"("$?PACKAGE", $P5261)
    .const 'Sub' $P5262 = "242_1304277405.374" 
    $P5263 = $P5262."get_lexinfo"()
    $P5263."finish_static_lexpad"()
    .const 'Sub' $P5264 = "242_1304277405.374" 
    $P5265 = $P5264."get_lexinfo"()
    nqp_get_sc_object $P5266, "1304277396.391", 144
    $P5265."set_static_lexpad_value"("$?CLASS", $P5266)
    .const 'Sub' $P5267 = "242_1304277405.374" 
    $P5268 = $P5267."get_lexinfo"()
    $P5268."finish_static_lexpad"()
    .const 'Sub' $P5269 = "262_1304277405.374" 
    $P5270 = $P5269."get_lexinfo"()
    nqp_get_sc_object $P5271, "1304277396.391", 155
    $P5270."set_static_lexpad_value"("Event", $P5271)
    .const 'Sub' $P5272 = "262_1304277405.374" 
    $P5273 = $P5272."get_lexinfo"()
    $P5273."finish_static_lexpad"()
    nqp_get_sc_object $P5274, "1304277396.391", 156
    .const 'Sub' $P5275 = "265_1304277405.374" 
    copy $P5274, $P5275
    nqp_get_sc_object $P5276, "1304277396.391", 157
    .const 'Sub' $P5277 = "266_1304277405.374" 
    copy $P5276, $P5277
    .const 'Sub' $P5278 = "264_1304277405.374" 
    $P5279 = $P5278."get_lexinfo"()
    nqp_get_sc_object $P5280, "1304277396.391", 155
    $P5279."set_static_lexpad_value"("$?PACKAGE", $P5280)
    .const 'Sub' $P5281 = "264_1304277405.374" 
    $P5282 = $P5281."get_lexinfo"()
    $P5282."finish_static_lexpad"()
    .const 'Sub' $P5283 = "264_1304277405.374" 
    $P5284 = $P5283."get_lexinfo"()
    nqp_get_sc_object $P5285, "1304277396.391", 155
    $P5284."set_static_lexpad_value"("$?CLASS", $P5285)
    .const 'Sub' $P5286 = "264_1304277405.374" 
    $P5287 = $P5286."get_lexinfo"()
    $P5287."finish_static_lexpad"()
    nqp_get_sc_object $P5288, "1304277396.391", 158
    .const 'Sub' $P5289 = "268_1304277405.374" 
    copy $P5288, $P5289
    nqp_get_sc_object $P5290, "1304277396.391", 159
    .const 'Sub' $P5291 = "269_1304277405.374" 
    copy $P5290, $P5291
    nqp_get_sc_object $P5292, "1304277396.391", 160
    .const 'Sub' $P5293 = "270_1304277405.374" 
    copy $P5292, $P5293
    nqp_get_sc_object $P5294, "1304277396.391", 161
    .const 'Sub' $P5295 = "271_1304277405.374" 
    copy $P5294, $P5295
    nqp_get_sc_object $P5296, "1304277396.391", 162
    .const 'Sub' $P5297 = "272_1304277405.374" 
    copy $P5296, $P5297
    nqp_get_sc_object $P5298, "1304277396.391", 163
    .const 'Sub' $P5299 = "273_1304277405.374" 
    copy $P5298, $P5299
    nqp_get_sc_object $P5300, "1304277396.391", 164
    .const 'Sub' $P5301 = "274_1304277405.374" 
    copy $P5300, $P5301
    nqp_get_sc_object $P5302, "1304277396.391", 165
    .const 'Sub' $P5303 = "275_1304277405.374" 
    copy $P5302, $P5303
    nqp_get_sc_object $P5304, "1304277396.391", 166
    .const 'Sub' $P5305 = "276_1304277405.374" 
    copy $P5304, $P5305
    nqp_get_sc_object $P5306, "1304277396.391", 167
    .const 'Sub' $P5307 = "277_1304277405.374" 
    copy $P5306, $P5307
    nqp_get_sc_object $P5308, "1304277396.391", 168
    .const 'Sub' $P5309 = "278_1304277405.374" 
    copy $P5308, $P5309
    nqp_get_sc_object $P5310, "1304277396.391", 169
    .const 'Sub' $P5311 = "280_1304277405.374" 
    copy $P5310, $P5311
    nqp_get_sc_object $P5312, "1304277396.391", 170
    .const 'Sub' $P5313 = "281_1304277405.374" 
    copy $P5312, $P5313
    nqp_get_sc_object $P5314, "1304277396.391", 171
    .const 'Sub' $P5315 = "284_1304277405.374" 
    copy $P5314, $P5315
    nqp_get_sc_object $P5316, "1304277396.391", 172
    .const 'Sub' $P5317 = "285_1304277405.374" 
    copy $P5316, $P5317
    nqp_get_sc_object $P5318, "1304277396.391", 173
    .const 'Sub' $P5319 = "286_1304277405.374" 
    copy $P5318, $P5319
    nqp_get_sc_object $P5320, "1304277396.391", 174
    .const 'Sub' $P5321 = "287_1304277405.374" 
    copy $P5320, $P5321
    nqp_get_sc_object $P5322, "1304277396.391", 175
    .const 'Sub' $P5323 = "291_1304277405.374" 
    copy $P5322, $P5323
    nqp_get_sc_object $P5324, "1304277396.391", 176
    .const 'Sub' $P5325 = "292_1304277405.374" 
    copy $P5324, $P5325
    nqp_get_sc_object $P5326, "1304277396.391", 177
    .const 'Sub' $P5327 = "293_1304277405.374" 
    copy $P5326, $P5327
    nqp_get_sc_object $P5328, "1304277396.391", 178
    .const 'Sub' $P5329 = "294_1304277405.374" 
    copy $P5328, $P5329
    nqp_get_sc_object $P5330, "1304277396.391", 179
    .const 'Sub' $P5331 = "295_1304277405.374" 
    copy $P5330, $P5331
    nqp_get_sc_object $P5332, "1304277396.391", 180
    .const 'Sub' $P5333 = "296_1304277405.374" 
    copy $P5332, $P5333
    .const 'Sub' $P5334 = "262_1304277405.374" 
    $P5335 = $P5334."get_lexinfo"()
    nqp_get_sc_object $P5336, "1304277396.391", 154
    $P5335."set_static_lexpad_value"("$?PACKAGE", $P5336)
    .const 'Sub' $P5337 = "262_1304277405.374" 
    $P5338 = $P5337."get_lexinfo"()
    $P5338."finish_static_lexpad"()
    .const 'Sub' $P5339 = "262_1304277405.374" 
    $P5340 = $P5339."get_lexinfo"()
    nqp_get_sc_object $P5341, "1304277396.391", 154
    $P5340."set_static_lexpad_value"("$?CLASS", $P5341)
    .const 'Sub' $P5342 = "262_1304277405.374" 
    $P5343 = $P5342."get_lexinfo"()
    $P5343."finish_static_lexpad"()
    goto if_3913_end
  if_3913:
    nqp_dynop_setup 
    getinterp $P3916
    get_class $P3917, "LexPad"
    get_class $P3918, "NQPLexPad"
    $P3916."hll_map"($P3917, $P3918)
    nqp_create_sc $P3919, "1304277396.391"
    .local pmc cur_sc
    set cur_sc, $P3919
    nqp_get_sc_object $P3920, "__6MODEL_CORE__", 0
    $P3921 = $P3920."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3921, cur_sc
    nqp_set_sc_object "1304277396.391", 0, $P3921
    .const 'Sub' $P3922 = "10_1304277405.374" 
    $P3923 = $P3922."get_lexinfo"()
    nqp_get_sc_object $P3924, "1304277396.391", 0
    $P3923."set_static_lexpad_value"("GLOBALish", $P3924)
    .const 'Sub' $P3925 = "10_1304277405.374" 
    $P3926 = $P3925."get_lexinfo"()
    $P3926."finish_static_lexpad"()
    .const 'Sub' $P3927 = "10_1304277405.374" 
    $P3928 = $P3927."get_lexinfo"()
    nqp_get_sc_object $P3929, "1304277396.391", 0
    $P3928."set_static_lexpad_value"("$?PACKAGE", $P3929)
    .const 'Sub' $P3930 = "10_1304277405.374" 
    $P3931 = $P3930."get_lexinfo"()
    $P3931."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3932, "ModuleLoader"
    $P3933 = $P3932."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3933)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3934, "ModuleLoader"
    nqp_get_sc_object $P3935, "1304277396.391", 0
    $P3934."load_module"("Regex", $P3935)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3936, "ModuleLoader"
    nqp_get_sc_object $P3937, "1304277396.391", 0
    $P3936."load_module"("Regex", $P3937)
    nqp_get_sc_object $P3938, "1304277388.915", 41
    $P3939 = $P3938."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3939, cur_sc
    nqp_set_sc_object "1304277396.391", 1, $P3939
    nqp_get_sc_object $P3940, "1304277396.391", 1
    nqp_get_sc_object $P3941, "1304277396.391", 0
    nqp_get_package_through_who $P3942, $P3941, "HLL"
    get_who $P3943, $P3942
    set $P3943["Grammar"], $P3940
    nqp_get_sc_object $P3944, "1304277396.391", 1
    get_how $P3945, $P3944
    nqp_get_sc_object $P3946, "1304277396.391", 1
    .const 'Sub' $P3947 = "12_1304277405.374" 
    $P3945."add_method"($P3946, "ws", $P3947)
    nqp_get_sc_object $P3948, "1304277396.391", 1
    get_how $P3949, $P3948
    nqp_get_sc_object $P3950, "1304277396.391", 1
    .const 'Sub' $P3951 = "14_1304277405.374" 
    $P3949."add_method"($P3950, "termish", $P3951)
    nqp_get_sc_object $P3952, "1304277396.391", 1
    get_how $P3953, $P3952
    nqp_get_sc_object $P3954, "1304277396.391", 1
    .const 'Sub' $P3955 = "16_1304277405.374" 
    $P3953."add_method"($P3954, "term", $P3955)
    nqp_get_sc_object $P3956, "1304277396.391", 1
    get_how $P3957, $P3956
    nqp_get_sc_object $P3958, "1304277396.391", 1
    .const 'Sub' $P3959 = "17_1304277405.374" 
    $P3957."add_method"($P3958, "!PREFIX__term", $P3959)
    nqp_get_sc_object $P3960, "1304277396.391", 1
    get_how $P3961, $P3960
    nqp_get_sc_object $P3962, "1304277396.391", 1
    .const 'Sub' $P3963 = "18_1304277405.374" 
    $P3961."add_method"($P3962, "infix", $P3963)
    nqp_get_sc_object $P3964, "1304277396.391", 1
    get_how $P3965, $P3964
    nqp_get_sc_object $P3966, "1304277396.391", 1
    .const 'Sub' $P3967 = "19_1304277405.374" 
    $P3965."add_method"($P3966, "!PREFIX__infix", $P3967)
    nqp_get_sc_object $P3968, "1304277396.391", 1
    get_how $P3969, $P3968
    nqp_get_sc_object $P3970, "1304277396.391", 1
    .const 'Sub' $P3971 = "20_1304277405.374" 
    $P3969."add_method"($P3970, "prefix", $P3971)
    nqp_get_sc_object $P3972, "1304277396.391", 1
    get_how $P3973, $P3972
    nqp_get_sc_object $P3974, "1304277396.391", 1
    .const 'Sub' $P3975 = "21_1304277405.374" 
    $P3973."add_method"($P3974, "!PREFIX__prefix", $P3975)
    nqp_get_sc_object $P3976, "1304277396.391", 1
    get_how $P3977, $P3976
    nqp_get_sc_object $P3978, "1304277396.391", 1
    .const 'Sub' $P3979 = "22_1304277405.374" 
    $P3977."add_method"($P3978, "postfix", $P3979)
    nqp_get_sc_object $P3980, "1304277396.391", 1
    get_how $P3981, $P3980
    nqp_get_sc_object $P3982, "1304277396.391", 1
    .const 'Sub' $P3983 = "23_1304277405.374" 
    $P3981."add_method"($P3982, "!PREFIX__postfix", $P3983)
    nqp_get_sc_object $P3984, "1304277396.391", 1
    get_how $P3985, $P3984
    nqp_get_sc_object $P3986, "1304277396.391", 1
    .const 'Sub' $P3987 = "24_1304277405.374" 
    $P3985."add_method"($P3986, "circumfix", $P3987)
    nqp_get_sc_object $P3988, "1304277396.391", 1
    get_how $P3989, $P3988
    nqp_get_sc_object $P3990, "1304277396.391", 1
    .const 'Sub' $P3991 = "25_1304277405.374" 
    $P3989."add_method"($P3990, "!PREFIX__circumfix", $P3991)
    nqp_get_sc_object $P3992, "1304277396.391", 1
    get_how $P3993, $P3992
    nqp_get_sc_object $P3994, "1304277396.391", 1
    .const 'Sub' $P3995 = "26_1304277405.374" 
    $P3993."add_method"($P3994, "postcircumfix", $P3995)
    nqp_get_sc_object $P3996, "1304277396.391", 1
    get_how $P3997, $P3996
    nqp_get_sc_object $P3998, "1304277396.391", 1
    .const 'Sub' $P3999 = "27_1304277405.374" 
    $P3997."add_method"($P3998, "!PREFIX__postcircumfix", $P3999)
    nqp_get_sc_object $P4000, "1304277396.391", 1
    get_how $P4001, $P4000
    nqp_get_sc_object $P4002, "1304277396.391", 1
    .const 'Sub' $P4003 = "28_1304277405.374" 
    $P4001."add_method"($P4002, "term:sym<circumfix>", $P4003)
    nqp_get_sc_object $P4004, "1304277396.391", 1
    get_how $P4005, $P4004
    nqp_get_sc_object $P4006, "1304277396.391", 1
    .const 'Sub' $P4007 = "30_1304277405.374" 
    $P4005."add_method"($P4006, "infixish", $P4007)
    nqp_get_sc_object $P4008, "1304277396.391", 1
    get_how $P4009, $P4008
    nqp_get_sc_object $P4010, "1304277396.391", 1
    .const 'Sub' $P4011 = "32_1304277405.374" 
    $P4009."add_method"($P4010, "prefixish", $P4011)
    nqp_get_sc_object $P4012, "1304277396.391", 1
    get_how $P4013, $P4012
    nqp_get_sc_object $P4014, "1304277396.391", 1
    .const 'Sub' $P4015 = "34_1304277405.374" 
    $P4013."add_method"($P4014, "postfixish", $P4015)
    nqp_get_sc_object $P4016, "1304277396.391", 1
    get_how $P4017, $P4016
    nqp_get_sc_object $P4018, "1304277396.391", 1
    .const 'Sub' $P4019 = "36_1304277405.374" 
    $P4017."add_method"($P4018, "nullterm", $P4019)
    nqp_get_sc_object $P4020, "1304277396.391", 1
    get_how $P4021, $P4020
    nqp_get_sc_object $P4022, "1304277396.391", 1
    .const 'Sub' $P4023 = "38_1304277405.374" 
    $P4021."add_method"($P4022, "nullterm_alt", $P4023)
    nqp_get_sc_object $P4024, "1304277396.391", 1
    get_how $P4025, $P4024
    nqp_get_sc_object $P4026, "1304277396.391", 1
    .const 'Sub' $P4027 = "40_1304277405.374" 
    $P4025."add_method"($P4026, "nulltermish", $P4027)
    nqp_get_sc_object $P4028, "1304277396.391", 1
    get_how $P4029, $P4028
    nqp_get_sc_object $P4030, "1304277396.391", 1
    .const 'Sub' $P4031 = "41_1304277405.374" 
    $P4029."add_method"($P4030, "quote_delimited", $P4031)
    nqp_get_sc_object $P4032, "1304277396.391", 1
    get_how $P4033, $P4032
    nqp_get_sc_object $P4034, "1304277396.391", 1
    .const 'Sub' $P4035 = "43_1304277405.374" 
    $P4033."add_method"($P4034, "quote_atom", $P4035)
    nqp_get_sc_object $P4036, "1304277396.391", 1
    get_how $P4037, $P4036
    nqp_get_sc_object $P4038, "1304277396.391", 1
    .const 'Sub' $P4039 = "45_1304277405.374" 
    $P4037."add_method"($P4038, "decint", $P4039)
    nqp_get_sc_object $P4040, "1304277396.391", 1
    get_how $P4041, $P4040
    nqp_get_sc_object $P4042, "1304277396.391", 1
    .const 'Sub' $P4043 = "47_1304277405.374" 
    $P4041."add_method"($P4042, "decints", $P4043)
    nqp_get_sc_object $P4044, "1304277396.391", 1
    get_how $P4045, $P4044
    nqp_get_sc_object $P4046, "1304277396.391", 1
    .const 'Sub' $P4047 = "49_1304277405.374" 
    $P4045."add_method"($P4046, "hexint", $P4047)
    nqp_get_sc_object $P4048, "1304277396.391", 1
    get_how $P4049, $P4048
    nqp_get_sc_object $P4050, "1304277396.391", 1
    .const 'Sub' $P4051 = "51_1304277405.374" 
    $P4049."add_method"($P4050, "hexints", $P4051)
    nqp_get_sc_object $P4052, "1304277396.391", 1
    get_how $P4053, $P4052
    nqp_get_sc_object $P4054, "1304277396.391", 1
    .const 'Sub' $P4055 = "53_1304277405.374" 
    $P4053."add_method"($P4054, "octint", $P4055)
    nqp_get_sc_object $P4056, "1304277396.391", 1
    get_how $P4057, $P4056
    nqp_get_sc_object $P4058, "1304277396.391", 1
    .const 'Sub' $P4059 = "55_1304277405.374" 
    $P4057."add_method"($P4058, "octints", $P4059)
    nqp_get_sc_object $P4060, "1304277396.391", 1
    get_how $P4061, $P4060
    nqp_get_sc_object $P4062, "1304277396.391", 1
    .const 'Sub' $P4063 = "57_1304277405.374" 
    $P4061."add_method"($P4062, "binint", $P4063)
    nqp_get_sc_object $P4064, "1304277396.391", 1
    get_how $P4065, $P4064
    nqp_get_sc_object $P4066, "1304277396.391", 1
    .const 'Sub' $P4067 = "59_1304277405.374" 
    $P4065."add_method"($P4066, "binints", $P4067)
    nqp_get_sc_object $P4068, "1304277396.391", 1
    get_how $P4069, $P4068
    nqp_get_sc_object $P4070, "1304277396.391", 1
    .const 'Sub' $P4071 = "61_1304277405.374" 
    $P4069."add_method"($P4070, "integer", $P4071)
    nqp_get_sc_object $P4072, "1304277396.391", 1
    get_how $P4073, $P4072
    nqp_get_sc_object $P4074, "1304277396.391", 1
    .const 'Sub' $P4075 = "63_1304277405.374" 
    $P4073."add_method"($P4074, "dec_number", $P4075)
    nqp_get_sc_object $P4076, "1304277396.391", 1
    get_how $P4077, $P4076
    nqp_get_sc_object $P4078, "1304277396.391", 1
    .const 'Sub' $P4079 = "65_1304277405.374" 
    $P4077."add_method"($P4078, "escale", $P4079)
    nqp_get_sc_object $P4080, "1304277396.391", 1
    get_how $P4081, $P4080
    nqp_get_sc_object $P4082, "1304277396.391", 1
    .const 'Sub' $P4083 = "67_1304277405.374" 
    $P4081."add_method"($P4082, "quote_escape", $P4083)
    nqp_get_sc_object $P4084, "1304277396.391", 1
    get_how $P4085, $P4084
    nqp_get_sc_object $P4086, "1304277396.391", 1
    .const 'Sub' $P4087 = "68_1304277405.374" 
    $P4085."add_method"($P4086, "!PREFIX__quote_escape", $P4087)
    nqp_get_sc_object $P4088, "1304277396.391", 1
    get_how $P4089, $P4088
    nqp_get_sc_object $P4090, "1304277396.391", 1
    .const 'Sub' $P4091 = "69_1304277405.374" 
    $P4089."add_method"($P4090, "quote_escape:sym<backslash>", $P4091)
    nqp_get_sc_object $P4092, "1304277396.391", 1
    get_how $P4093, $P4092
    nqp_get_sc_object $P4094, "1304277396.391", 1
    .const 'Sub' $P4095 = "71_1304277405.374" 
    $P4093."add_method"($P4094, "quote_escape:sym<stopper>", $P4095)
    nqp_get_sc_object $P4096, "1304277396.391", 1
    get_how $P4097, $P4096
    nqp_get_sc_object $P4098, "1304277396.391", 1
    .const 'Sub' $P4099 = "73_1304277405.374" 
    $P4097."add_method"($P4098, "quote_escape:sym<bs>", $P4099)
    nqp_get_sc_object $P4100, "1304277396.391", 1
    get_how $P4101, $P4100
    nqp_get_sc_object $P4102, "1304277396.391", 1
    .const 'Sub' $P4103 = "75_1304277405.374" 
    $P4101."add_method"($P4102, "quote_escape:sym<nl>", $P4103)
    nqp_get_sc_object $P4104, "1304277396.391", 1
    get_how $P4105, $P4104
    nqp_get_sc_object $P4106, "1304277396.391", 1
    .const 'Sub' $P4107 = "77_1304277405.374" 
    $P4105."add_method"($P4106, "quote_escape:sym<cr>", $P4107)
    nqp_get_sc_object $P4108, "1304277396.391", 1
    get_how $P4109, $P4108
    nqp_get_sc_object $P4110, "1304277396.391", 1
    .const 'Sub' $P4111 = "79_1304277405.374" 
    $P4109."add_method"($P4110, "quote_escape:sym<tab>", $P4111)
    nqp_get_sc_object $P4112, "1304277396.391", 1
    get_how $P4113, $P4112
    nqp_get_sc_object $P4114, "1304277396.391", 1
    .const 'Sub' $P4115 = "81_1304277405.374" 
    $P4113."add_method"($P4114, "quote_escape:sym<ff>", $P4115)
    nqp_get_sc_object $P4116, "1304277396.391", 1
    get_how $P4117, $P4116
    nqp_get_sc_object $P4118, "1304277396.391", 1
    .const 'Sub' $P4119 = "83_1304277405.374" 
    $P4117."add_method"($P4118, "quote_escape:sym<esc>", $P4119)
    nqp_get_sc_object $P4120, "1304277396.391", 1
    get_how $P4121, $P4120
    nqp_get_sc_object $P4122, "1304277396.391", 1
    .const 'Sub' $P4123 = "85_1304277405.374" 
    $P4121."add_method"($P4122, "quote_escape:sym<hex>", $P4123)
    nqp_get_sc_object $P4124, "1304277396.391", 1
    get_how $P4125, $P4124
    nqp_get_sc_object $P4126, "1304277396.391", 1
    .const 'Sub' $P4127 = "87_1304277405.374" 
    $P4125."add_method"($P4126, "quote_escape:sym<oct>", $P4127)
    nqp_get_sc_object $P4128, "1304277396.391", 1
    get_how $P4129, $P4128
    nqp_get_sc_object $P4130, "1304277396.391", 1
    .const 'Sub' $P4131 = "89_1304277405.374" 
    $P4129."add_method"($P4130, "quote_escape:sym<chr>", $P4131)
    nqp_get_sc_object $P4132, "1304277396.391", 1
    get_how $P4133, $P4132
    nqp_get_sc_object $P4134, "1304277396.391", 1
    .const 'Sub' $P4135 = "91_1304277405.374" 
    $P4133."add_method"($P4134, "quote_escape:sym<0>", $P4135)
    nqp_get_sc_object $P4136, "1304277396.391", 1
    get_how $P4137, $P4136
    nqp_get_sc_object $P4138, "1304277396.391", 1
    .const 'Sub' $P4139 = "93_1304277405.374" 
    $P4137."add_method"($P4138, "quote_escape:sym<misc>", $P4139)
    nqp_get_sc_object $P4140, "1304277396.391", 1
    get_how $P4141, $P4140
    nqp_get_sc_object $P4142, "1304277396.391", 1
    .const 'Sub' $P4143 = "98_1304277405.374" 
    $P4141."add_method"($P4142, "charname", $P4143)
    nqp_get_sc_object $P4144, "1304277396.391", 1
    get_how $P4145, $P4144
    nqp_get_sc_object $P4146, "1304277396.391", 1
    .const 'Sub' $P4147 = "101_1304277405.374" 
    $P4145."add_method"($P4146, "charnames", $P4147)
    nqp_get_sc_object $P4148, "1304277396.391", 1
    get_how $P4149, $P4148
    nqp_get_sc_object $P4150, "1304277396.391", 1
    .const 'Sub' $P4151 = "103_1304277405.374" 
    $P4149."add_method"($P4150, "charspec", $P4151)
    nqp_get_sc_object $P4152, "1304277396.391", 1
    get_how $P4153, $P4152
    nqp_get_sc_object $P4154, "1304277396.391", 1
    .const 'Sub' $P4155 = "105_1304277405.374" 
    $P4153."add_method"($P4154, "O", $P4155)
    nqp_get_sc_object $P4156, "1304277396.391", 1
    get_how $P4157, $P4156
    nqp_get_sc_object $P4158, "1304277396.391", 1
    .const 'Sub' $P4159 = "106_1304277405.374" 
    $P4157."add_method"($P4158, "panic", $P4159)
    nqp_get_sc_object $P4160, "1304277396.391", 1
    get_how $P4161, $P4160
    nqp_get_sc_object $P4162, "1304277396.391", 1
    .const 'Sub' $P4163 = "107_1304277405.374" 
    $P4161."add_method"($P4162, "peek_delimiters", $P4163)
    nqp_get_sc_object $P4164, "1304277396.391", 1
    get_how $P4165, $P4164
    nqp_get_sc_object $P4166, "1304277396.391", 1
    .const 'Sub' $P4167 = "108_1304277405.374" 
    $P4165."add_method"($P4166, "quote_EXPR", $P4167)
    nqp_get_sc_object $P4168, "1304277396.391", 1
    get_how $P4169, $P4168
    nqp_get_sc_object $P4170, "1304277396.391", 1
    .const 'Sub' $P4171 = "109_1304277405.374" 
    $P4169."add_method"($P4170, "quotemod_check", $P4171)
    .const 'Sub' $P4172 = "109_1304277405.374" 
    nqp_get_sc_object $P4173, "1304277396.391", 1
    get_who $P4174, $P4173
    set $P4174["quotemod_check"], $P4172
    nqp_get_sc_object $P4175, "1304277396.391", 1
    get_how $P4176, $P4175
    nqp_get_sc_object $P4177, "1304277396.391", 1
    .const 'Sub' $P4178 = "110_1304277405.374" 
    $P4176."add_method"($P4177, "starter", $P4178)
    nqp_get_sc_object $P4179, "1304277396.391", 1
    get_how $P4180, $P4179
    nqp_get_sc_object $P4181, "1304277396.391", 1
    .const 'Sub' $P4182 = "111_1304277405.374" 
    $P4180."add_method"($P4181, "stopper", $P4182)
    nqp_get_sc_object $P4183, "1304277396.391", 1
    get_how $P4184, $P4183
    nqp_get_sc_object $P4185, "1304277396.391", 1
    .const 'Sub' $P4186 = "112_1304277405.374" 
    $P4184."add_method"($P4185, "split_words", $P4186)
    .const 'Sub' $P4187 = "112_1304277405.374" 
    nqp_get_sc_object $P4188, "1304277396.391", 1
    get_who $P4189, $P4188
    set $P4189["split_words"], $P4187
    nqp_get_sc_object $P4190, "1304277396.391", 1
    get_how $P4191, $P4190
    nqp_get_sc_object $P4192, "1304277396.391", 1
    .const 'Sub' $P4193 = "113_1304277405.374" 
    $P4191."add_method"($P4192, "EXPR", $P4193)
    nqp_get_sc_object $P4194, "1304277396.391", 1
    get_how $P4195, $P4194
    nqp_get_sc_object $P4196, "1304277396.391", 1
    .const 'Sub' $P4197 = "114_1304277405.374" 
    $P4195."add_method"($P4196, "EXPR_reduce", $P4197)
    nqp_get_sc_object $P4198, "1304277396.391", 1
    get_how $P4199, $P4198
    nqp_get_sc_object $P4200, "1304277396.391", 1
    .const 'Sub' $P4201 = "115_1304277405.374" 
    $P4199."add_method"($P4200, "ternary", $P4201)
    nqp_get_sc_object $P4202, "1304277396.391", 1
    get_how $P4203, $P4202
    nqp_get_sc_object $P4204, "1304277396.391", 1
    .const 'Sub' $P4205 = "116_1304277405.374" 
    $P4203."add_method"($P4204, "MARKER", $P4205)
    nqp_get_sc_object $P4206, "1304277396.391", 1
    get_how $P4207, $P4206
    nqp_get_sc_object $P4208, "1304277396.391", 1
    .const 'Sub' $P4209 = "117_1304277405.374" 
    $P4207."add_method"($P4208, "MARKED", $P4209)
    nqp_get_sc_object $P4210, "1304277396.391", 1
    get_how $P4211, $P4210
    nqp_get_sc_object $P4212, "1304277396.391", 1
    .const 'Sub' $P4213 = "118_1304277405.374" 
    $P4211."add_method"($P4212, "LANG", $P4213)
    .const 'Sub' $P4214 = "11_1304277405.374" 
    $P4215 = $P4214."get_lexinfo"()
    nqp_get_sc_object $P4216, "1304277396.391", 1
    $P4215."set_static_lexpad_value"("$?PACKAGE", $P4216)
    .const 'Sub' $P4217 = "11_1304277405.374" 
    $P4218 = $P4217."get_lexinfo"()
    $P4218."finish_static_lexpad"()
    .const 'Sub' $P4219 = "11_1304277405.374" 
    $P4220 = $P4219."get_lexinfo"()
    nqp_get_sc_object $P4221, "1304277396.391", 1
    $P4220."set_static_lexpad_value"("$?CLASS", $P4221)
    .const 'Sub' $P4222 = "11_1304277405.374" 
    $P4223 = $P4222."get_lexinfo"()
    $P4223."finish_static_lexpad"()
    nqp_get_sc_object $P4224, "1304277396.391", 1
    get_how $P4225, $P4224
    nqp_get_sc_object $P4226, "1304277396.391", 1
    nqp_get_sc_object $P4227, "__REGEX_CORE_SC__", 0
    $P4225."set_default_parent"($P4226, $P4227)
    nqp_get_sc_object $P4228, "1304277388.915", 41
    $P4229 = $P4228."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P4229, cur_sc
    nqp_set_sc_object "1304277396.391", 68, $P4229
    nqp_get_sc_object $P4230, "1304277396.391", 68
    nqp_get_sc_object $P4231, "1304277396.391", 0
    nqp_get_package_through_who $P4232, $P4231, "HLL"
    get_who $P4233, $P4232
    set $P4233["Actions"], $P4230
    .const 'Sub' $P4234 = "121_1304277405.374" 
    nqp_get_sc_object $P4235, "1304277396.391", 68
    get_who $P4236, $P4235
    set $P4236["string_to_int"], $P4234
    .const 'Sub' $P4237 = "123_1304277405.374" 
    nqp_get_sc_object $P4238, "1304277396.391", 68
    get_who $P4239, $P4238
    set $P4239["ints_to_string"], $P4237
    nqp_get_sc_object $P4240, "1304277396.391", 68
    get_how $P4241, $P4240
    nqp_get_sc_object $P4242, "1304277396.391", 68
    .const 'Sub' $P4243 = "126_1304277405.374" 
    $P4241."add_method"($P4242, "CTXSAVE", $P4243)
    nqp_get_sc_object $P4244, "1304277396.391", 68
    get_how $P4245, $P4244
    nqp_get_sc_object $P4246, "1304277396.391", 68
    .const 'Sub' $P4247 = "127_1304277405.374" 
    $P4245."add_method"($P4246, "SET_BLOCK_OUTER_CTX", $P4247)
    nqp_get_sc_object $P4248, "1304277396.391", 68
    get_how $P4249, $P4248
    nqp_get_sc_object $P4250, "1304277396.391", 68
    .const 'Sub' $P4251 = "130_1304277405.374" 
    $P4249."add_method"($P4250, "EXPR", $P4251)
    nqp_get_sc_object $P4252, "1304277396.391", 68
    get_how $P4253, $P4252
    nqp_get_sc_object $P4254, "1304277396.391", 68
    .const 'Sub' $P4255 = "133_1304277405.374" 
    $P4253."add_method"($P4254, "term:sym<circumfix>", $P4255)
    nqp_get_sc_object $P4256, "1304277396.391", 68
    get_how $P4257, $P4256
    nqp_get_sc_object $P4258, "1304277396.391", 68
    .const 'Sub' $P4259 = "134_1304277405.374" 
    $P4257."add_method"($P4258, "termish", $P4259)
    nqp_get_sc_object $P4260, "1304277396.391", 68
    get_how $P4261, $P4260
    nqp_get_sc_object $P4262, "1304277396.391", 68
    .const 'Sub' $P4263 = "135_1304277405.374" 
    $P4261."add_method"($P4262, "nullterm", $P4263)
    nqp_get_sc_object $P4264, "1304277396.391", 68
    get_how $P4265, $P4264
    nqp_get_sc_object $P4266, "1304277396.391", 68
    .const 'Sub' $P4267 = "136_1304277405.374" 
    $P4265."add_method"($P4266, "nullterm_alt", $P4267)
    nqp_get_sc_object $P4268, "1304277396.391", 68
    get_how $P4269, $P4268
    nqp_get_sc_object $P4270, "1304277396.391", 68
    .const 'Sub' $P4271 = "137_1304277405.374" 
    $P4269."add_method"($P4270, "integer", $P4271)
    nqp_get_sc_object $P4272, "1304277396.391", 68
    get_how $P4273, $P4272
    nqp_get_sc_object $P4274, "1304277396.391", 68
    .const 'Sub' $P4275 = "138_1304277405.374" 
    $P4273."add_method"($P4274, "dec_number", $P4275)
    nqp_get_sc_object $P4276, "1304277396.391", 68
    get_how $P4277, $P4276
    nqp_get_sc_object $P4278, "1304277396.391", 68
    .const 'Sub' $P4279 = "139_1304277405.374" 
    $P4277."add_method"($P4278, "decint", $P4279)
    nqp_get_sc_object $P4280, "1304277396.391", 68
    get_how $P4281, $P4280
    nqp_get_sc_object $P4282, "1304277396.391", 68
    .const 'Sub' $P4283 = "140_1304277405.374" 
    $P4281."add_method"($P4282, "hexint", $P4283)
    nqp_get_sc_object $P4284, "1304277396.391", 68
    get_how $P4285, $P4284
    nqp_get_sc_object $P4286, "1304277396.391", 68
    .const 'Sub' $P4287 = "141_1304277405.374" 
    $P4285."add_method"($P4286, "octint", $P4287)
    nqp_get_sc_object $P4288, "1304277396.391", 68
    get_how $P4289, $P4288
    nqp_get_sc_object $P4290, "1304277396.391", 68
    .const 'Sub' $P4291 = "142_1304277405.374" 
    $P4289."add_method"($P4290, "binint", $P4291)
    nqp_get_sc_object $P4292, "1304277396.391", 68
    get_how $P4293, $P4292
    nqp_get_sc_object $P4294, "1304277396.391", 68
    .const 'Sub' $P4295 = "143_1304277405.374" 
    $P4293."add_method"($P4294, "quote_EXPR", $P4295)
    nqp_get_sc_object $P4296, "1304277396.391", 68
    get_how $P4297, $P4296
    nqp_get_sc_object $P4298, "1304277396.391", 68
    .const 'Sub' $P4299 = "146_1304277405.374" 
    $P4297."add_method"($P4298, "quote_delimited", $P4299)
    nqp_get_sc_object $P4300, "1304277396.391", 68
    get_how $P4301, $P4300
    nqp_get_sc_object $P4302, "1304277396.391", 68
    .const 'Sub' $P4303 = "148_1304277405.374" 
    $P4301."add_method"($P4302, "quote_atom", $P4303)
    nqp_get_sc_object $P4304, "1304277396.391", 68
    get_how $P4305, $P4304
    nqp_get_sc_object $P4306, "1304277396.391", 68
    .const 'Sub' $P4307 = "149_1304277405.374" 
    $P4305."add_method"($P4306, "quote_escape:sym<backslash>", $P4307)
    nqp_get_sc_object $P4308, "1304277396.391", 68
    get_how $P4309, $P4308
    nqp_get_sc_object $P4310, "1304277396.391", 68
    .const 'Sub' $P4311 = "150_1304277405.374" 
    $P4309."add_method"($P4310, "quote_escape:sym<stopper>", $P4311)
    nqp_get_sc_object $P4312, "1304277396.391", 68
    get_how $P4313, $P4312
    nqp_get_sc_object $P4314, "1304277396.391", 68
    .const 'Sub' $P4315 = "151_1304277405.374" 
    $P4313."add_method"($P4314, "quote_escape:sym<bs>", $P4315)
    nqp_get_sc_object $P4316, "1304277396.391", 68
    get_how $P4317, $P4316
    nqp_get_sc_object $P4318, "1304277396.391", 68
    .const 'Sub' $P4319 = "152_1304277405.374" 
    $P4317."add_method"($P4318, "quote_escape:sym<nl>", $P4319)
    nqp_get_sc_object $P4320, "1304277396.391", 68
    get_how $P4321, $P4320
    nqp_get_sc_object $P4322, "1304277396.391", 68
    .const 'Sub' $P4323 = "153_1304277405.374" 
    $P4321."add_method"($P4322, "quote_escape:sym<cr>", $P4323)
    nqp_get_sc_object $P4324, "1304277396.391", 68
    get_how $P4325, $P4324
    nqp_get_sc_object $P4326, "1304277396.391", 68
    .const 'Sub' $P4327 = "154_1304277405.374" 
    $P4325."add_method"($P4326, "quote_escape:sym<tab>", $P4327)
    nqp_get_sc_object $P4328, "1304277396.391", 68
    get_how $P4329, $P4328
    nqp_get_sc_object $P4330, "1304277396.391", 68
    .const 'Sub' $P4331 = "155_1304277405.374" 
    $P4329."add_method"($P4330, "quote_escape:sym<ff>", $P4331)
    nqp_get_sc_object $P4332, "1304277396.391", 68
    get_how $P4333, $P4332
    nqp_get_sc_object $P4334, "1304277396.391", 68
    .const 'Sub' $P4335 = "156_1304277405.374" 
    $P4333."add_method"($P4334, "quote_escape:sym<esc>", $P4335)
    nqp_get_sc_object $P4336, "1304277396.391", 68
    get_how $P4337, $P4336
    nqp_get_sc_object $P4338, "1304277396.391", 68
    .const 'Sub' $P4339 = "157_1304277405.374" 
    $P4337."add_method"($P4338, "quote_escape:sym<hex>", $P4339)
    nqp_get_sc_object $P4340, "1304277396.391", 68
    get_how $P4341, $P4340
    nqp_get_sc_object $P4342, "1304277396.391", 68
    .const 'Sub' $P4343 = "158_1304277405.374" 
    $P4341."add_method"($P4342, "quote_escape:sym<oct>", $P4343)
    nqp_get_sc_object $P4344, "1304277396.391", 68
    get_how $P4345, $P4344
    nqp_get_sc_object $P4346, "1304277396.391", 68
    .const 'Sub' $P4347 = "159_1304277405.374" 
    $P4345."add_method"($P4346, "quote_escape:sym<chr>", $P4347)
    nqp_get_sc_object $P4348, "1304277396.391", 68
    get_how $P4349, $P4348
    nqp_get_sc_object $P4350, "1304277396.391", 68
    .const 'Sub' $P4351 = "160_1304277405.374" 
    $P4349."add_method"($P4350, "quote_escape:sym<0>", $P4351)
    nqp_get_sc_object $P4352, "1304277396.391", 68
    get_how $P4353, $P4352
    nqp_get_sc_object $P4354, "1304277396.391", 68
    .const 'Sub' $P4355 = "161_1304277405.374" 
    $P4353."add_method"($P4354, "quote_escape:sym<misc>", $P4355)
    nqp_get_sc_object $P4356, "1304277396.391", 68
    get_how $P4357, $P4356
    nqp_get_sc_object $P4358, "1304277396.391", 68
    .const 'Sub' $P4359 = "162_1304277405.374" 
    $P4357."add_method"($P4358, "charname", $P4359)
    nqp_get_sc_object $P4360, "1304277396.391", 68
    get_how $P4361, $P4360
    nqp_get_sc_object $P4362, "1304277396.391", 68
    .const 'Sub' $P4363 = "163_1304277405.374" 
    $P4361."add_method"($P4362, "charnames", $P4363)
    nqp_get_sc_object $P4364, "1304277396.391", 68
    get_how $P4365, $P4364
    nqp_get_sc_object $P4366, "1304277396.391", 68
    .const 'Sub' $P4367 = "165_1304277405.374" 
    $P4365."add_method"($P4366, "charspec", $P4367)
    .const 'Sub' $P4368 = "120_1304277405.374" 
    $P4369 = $P4368."get_lexinfo"()
    nqp_get_sc_object $P4370, "1304277396.391", 68
    $P4369."set_static_lexpad_value"("$?PACKAGE", $P4370)
    .const 'Sub' $P4371 = "120_1304277405.374" 
    $P4372 = $P4371."get_lexinfo"()
    $P4372."finish_static_lexpad"()
    .const 'Sub' $P4373 = "120_1304277405.374" 
    $P4374 = $P4373."get_lexinfo"()
    nqp_get_sc_object $P4375, "1304277396.391", 68
    $P4374."set_static_lexpad_value"("$?CLASS", $P4375)
    .const 'Sub' $P4376 = "120_1304277405.374" 
    $P4377 = $P4376."get_lexinfo"()
    $P4377."finish_static_lexpad"()
    nqp_get_sc_object $P4378, "1304277396.391", 68
    get_how $P4379, $P4378
    nqp_get_sc_object $P4380, "1304277396.391", 68
    nqp_get_sc_object $P4381, "1304277394.674", 5
    $P4379."set_default_parent"($P4380, $P4381)
    nqp_get_sc_object $P4382, "1304277388.915", 41
    $P4383 = $P4382."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P4383, cur_sc
    nqp_set_sc_object "1304277396.391", 101, $P4383
    nqp_get_sc_object $P4384, "1304277396.391", 101
    nqp_get_sc_object $P4385, "1304277396.391", 0
    nqp_get_package_through_who $P4386, $P4385, "HLL"
    get_who $P4387, $P4386
    set $P4387["Compiler"], $P4384
    nqp_get_sc_object $P4388, "1304277396.391", 101
    get_how $P4389, $P4388
    nqp_get_sc_object $P4390, "1304277396.391", 101
    nqp_get_sc_object $P4391, "1304277388.915", 77
    $P4392 = $P4391."new"("@!stages" :named("name"))
    $P4389."add_attribute"($P4390, $P4392)
    nqp_get_sc_object $P4393, "1304277396.391", 101
    get_how $P4394, $P4393
    nqp_get_sc_object $P4395, "1304277396.391", 101
    nqp_get_sc_object $P4396, "1304277388.915", 77
    $P4397 = $P4396."new"("$!parsegrammar" :named("name"))
    $P4394."add_attribute"($P4395, $P4397)
    nqp_get_sc_object $P4398, "1304277396.391", 101
    get_how $P4399, $P4398
    nqp_get_sc_object $P4400, "1304277396.391", 101
    nqp_get_sc_object $P4401, "1304277388.915", 77
    $P4402 = $P4401."new"("$!parseactions" :named("name"))
    $P4399."add_attribute"($P4400, $P4402)
    nqp_get_sc_object $P4403, "1304277396.391", 101
    get_how $P4404, $P4403
    nqp_get_sc_object $P4405, "1304277396.391", 101
    nqp_get_sc_object $P4406, "1304277388.915", 77
    $P4407 = $P4406."new"("$!astgrammar" :named("name"))
    $P4404."add_attribute"($P4405, $P4407)
    nqp_get_sc_object $P4408, "1304277396.391", 101
    get_how $P4409, $P4408
    nqp_get_sc_object $P4410, "1304277396.391", 101
    nqp_get_sc_object $P4411, "1304277388.915", 77
    $P4412 = $P4411."new"("$!commandline_banner" :named("name"))
    $P4409."add_attribute"($P4410, $P4412)
    nqp_get_sc_object $P4413, "1304277396.391", 101
    get_how $P4414, $P4413
    nqp_get_sc_object $P4415, "1304277396.391", 101
    nqp_get_sc_object $P4416, "1304277388.915", 77
    $P4417 = $P4416."new"("$!commandline_prompt" :named("name"))
    $P4414."add_attribute"($P4415, $P4417)
    nqp_get_sc_object $P4418, "1304277396.391", 101
    get_how $P4419, $P4418
    nqp_get_sc_object $P4420, "1304277396.391", 101
    nqp_get_sc_object $P4421, "1304277388.915", 77
    $P4422 = $P4421."new"("@!cmdoptions" :named("name"))
    $P4419."add_attribute"($P4420, $P4422)
    nqp_get_sc_object $P4423, "1304277396.391", 101
    get_how $P4424, $P4423
    nqp_get_sc_object $P4425, "1304277396.391", 101
    nqp_get_sc_object $P4426, "1304277388.915", 77
    $P4427 = $P4426."new"("$!usage" :named("name"))
    $P4424."add_attribute"($P4425, $P4427)
    nqp_get_sc_object $P4428, "1304277396.391", 101
    get_how $P4429, $P4428
    nqp_get_sc_object $P4430, "1304277396.391", 101
    nqp_get_sc_object $P4431, "1304277388.915", 77
    $P4432 = $P4431."new"("$!version" :named("name"))
    $P4429."add_attribute"($P4430, $P4432)
    nqp_get_sc_object $P4433, "1304277396.391", 101
    get_how $P4434, $P4433
    nqp_get_sc_object $P4435, "1304277396.391", 101
    nqp_get_sc_object $P4436, "1304277388.915", 77
    $P4437 = $P4436."new"("$!compiler_progname" :named("name"))
    $P4434."add_attribute"($P4435, $P4437)
    nqp_get_sc_object $P4438, "1304277396.391", 101
    get_how $P4439, $P4438
    nqp_get_sc_object $P4440, "1304277396.391", 101
    nqp_get_sc_object $P4441, "1304277388.915", 77
    $P4442 = $P4441."new"("$!language" :named("name"))
    $P4439."add_attribute"($P4440, $P4442)
    nqp_get_sc_object $P4443, "1304277396.391", 101
    get_how $P4444, $P4443
    nqp_get_sc_object $P4445, "1304277396.391", 101
    .const 'Sub' $P4446 = "170_1304277405.374" 
    $P4444."add_method"($P4445, "new", $P4446)
    nqp_get_sc_object $P4447, "1304277396.391", 101
    get_how $P4448, $P4447
    nqp_get_sc_object $P4449, "1304277396.391", 101
    .const 'Sub' $P4450 = "171_1304277405.374" 
    $P4448."add_method"($P4449, "BUILD", $P4450)
    nqp_get_sc_object $P4451, "1304277396.391", 101
    get_how $P4452, $P4451
    nqp_get_sc_object $P4453, "1304277396.391", 101
    .const 'Sub' $P4454 = "173_1304277405.374" 
    $P4452."add_method"($P4453, "get_exports", $P4454)
    nqp_get_sc_object $P4455, "1304277396.391", 101
    get_how $P4456, $P4455
    nqp_get_sc_object $P4457, "1304277396.391", 101
    .const 'Sub' $P4458 = "176_1304277405.374" 
    $P4456."add_method"($P4457, "get_module", $P4458)
    nqp_get_sc_object $P4459, "1304277396.391", 101
    get_how $P4460, $P4459
    nqp_get_sc_object $P4461, "1304277396.391", 101
    .const 'Sub' $P4462 = "177_1304277405.374" 
    $P4460."add_method"($P4461, "language", $P4462)
    nqp_get_sc_object $P4463, "1304277396.391", 101
    get_how $P4464, $P4463
    nqp_get_sc_object $P4465, "1304277396.391", 101
    .const 'Sub' $P4466 = "178_1304277405.374" 
    $P4464."add_method"($P4465, "load_module", $P4466)
    nqp_get_sc_object $P4467, "1304277396.391", 101
    get_how $P4468, $P4467
    nqp_get_sc_object $P4469, "1304277396.391", 101
    .const 'Sub' $P4470 = "180_1304277405.374" 
    $P4468."add_method"($P4469, "import", $P4470)
    nqp_get_sc_object $P4471, "1304277396.391", 101
    get_how $P4472, $P4471
    nqp_get_sc_object $P4473, "1304277396.391", 101
    .const 'Sub' $P4474 = "185_1304277405.374" 
    $P4472."add_method"($P4473, "autoprint", $P4474)
    nqp_get_sc_object $P4475, "1304277396.391", 101
    get_how $P4476, $P4475
    nqp_get_sc_object $P4477, "1304277396.391", 101
    .const 'Sub' $P4478 = "186_1304277405.374" 
    $P4476."add_method"($P4477, "interactive", $P4478)
    nqp_get_sc_object $P4479, "1304277396.391", 101
    get_how $P4480, $P4479
    nqp_get_sc_object $P4481, "1304277396.391", 101
    .const 'Sub' $P4482 = "193_1304277405.374" 
    $P4480."add_method"($P4481, "eval", $P4482)
    nqp_get_sc_object $P4483, "1304277396.391", 101
    get_how $P4484, $P4483
    nqp_get_sc_object $P4485, "1304277396.391", 101
    .const 'Sub' $P4486 = "195_1304277405.374" 
    $P4484."add_method"($P4485, "ctxsave", $P4486)
    nqp_get_sc_object $P4487, "1304277396.391", 101
    get_how $P4488, $P4487
    nqp_get_sc_object $P4489, "1304277396.391", 101
    .const 'Sub' $P4490 = "196_1304277405.374" 
    $P4488."add_method"($P4489, "panic", $P4490)
    nqp_get_sc_object $P4491, "1304277396.391", 101
    get_how $P4492, $P4491
    nqp_get_sc_object $P4493, "1304277396.391", 101
    .const 'Sub' $P4494 = "197_1304277405.374" 
    $P4492."add_method"($P4493, "stages", $P4494)
    nqp_get_sc_object $P4495, "1304277396.391", 101
    get_how $P4496, $P4495
    nqp_get_sc_object $P4497, "1304277396.391", 101
    .const 'Sub' $P4498 = "198_1304277405.374" 
    $P4496."add_method"($P4497, "parsegrammar", $P4498)
    nqp_get_sc_object $P4499, "1304277396.391", 101
    get_how $P4500, $P4499
    nqp_get_sc_object $P4501, "1304277396.391", 101
    .const 'Sub' $P4502 = "199_1304277405.374" 
    $P4500."add_method"($P4501, "parseactions", $P4502)
    nqp_get_sc_object $P4503, "1304277396.391", 101
    get_how $P4504, $P4503
    nqp_get_sc_object $P4505, "1304277396.391", 101
    .const 'Sub' $P4506 = "200_1304277405.374" 
    $P4504."add_method"($P4505, "astgrammar", $P4506)
    nqp_get_sc_object $P4507, "1304277396.391", 101
    get_how $P4508, $P4507
    nqp_get_sc_object $P4509, "1304277396.391", 101
    .const 'Sub' $P4510 = "201_1304277405.374" 
    $P4508."add_method"($P4509, "commandline_banner", $P4510)
    nqp_get_sc_object $P4511, "1304277396.391", 101
    get_how $P4512, $P4511
    nqp_get_sc_object $P4513, "1304277396.391", 101
    .const 'Sub' $P4514 = "202_1304277405.374" 
    $P4512."add_method"($P4513, "commandline_prompt", $P4514)
    nqp_get_sc_object $P4515, "1304277396.391", 101
    get_how $P4516, $P4515
    nqp_get_sc_object $P4517, "1304277396.391", 101
    .const 'Sub' $P4518 = "203_1304277405.374" 
    $P4516."add_method"($P4517, "compiler_progname", $P4518)
    nqp_get_sc_object $P4519, "1304277396.391", 101
    get_how $P4520, $P4519
    nqp_get_sc_object $P4521, "1304277396.391", 101
    .const 'Sub' $P4522 = "204_1304277405.374" 
    $P4520."add_method"($P4521, "commandline_options", $P4522)
    nqp_get_sc_object $P4523, "1304277396.391", 101
    get_how $P4524, $P4523
    nqp_get_sc_object $P4525, "1304277396.391", 101
    .const 'Sub' $P4526 = "205_1304277405.374" 
    $P4524."add_method"($P4525, "command_line", $P4526)
    nqp_get_sc_object $P4527, "1304277396.391", 101
    get_how $P4528, $P4527
    nqp_get_sc_object $P4529, "1304277396.391", 101
    .const 'Sub' $P4530 = "207_1304277405.374" 
    $P4528."add_method"($P4529, "process_args", $P4530)
    nqp_get_sc_object $P4531, "1304277396.391", 101
    get_how $P4532, $P4531
    nqp_get_sc_object $P4533, "1304277396.391", 101
    .const 'Sub' $P4534 = "210_1304277405.374" 
    $P4532."add_method"($P4533, "evalfiles", $P4534)
    nqp_get_sc_object $P4535, "1304277396.391", 101
    get_how $P4536, $P4535
    nqp_get_sc_object $P4537, "1304277396.391", 101
    .const 'Sub' $P4538 = "214_1304277405.374" 
    $P4536."add_method"($P4537, "compile", $P4538)
    nqp_get_sc_object $P4539, "1304277396.391", 101
    get_how $P4540, $P4539
    nqp_get_sc_object $P4541, "1304277396.391", 101
    .const 'Sub' $P4542 = "216_1304277405.374" 
    $P4540."add_method"($P4541, "parse", $P4542)
    nqp_get_sc_object $P4543, "1304277396.391", 101
    get_how $P4544, $P4543
    nqp_get_sc_object $P4545, "1304277396.391", 101
    .const 'Sub' $P4546 = "217_1304277405.374" 
    $P4544."add_method"($P4545, "past", $P4546)
    nqp_get_sc_object $P4547, "1304277396.391", 101
    get_how $P4548, $P4547
    nqp_get_sc_object $P4549, "1304277396.391", 101
    .const 'Sub' $P4550 = "218_1304277405.374" 
    $P4548."add_method"($P4549, "post", $P4550)
    nqp_get_sc_object $P4551, "1304277396.391", 101
    get_how $P4552, $P4551
    nqp_get_sc_object $P4553, "1304277396.391", 101
    .const 'Sub' $P4554 = "219_1304277405.374" 
    $P4552."add_method"($P4553, "pir", $P4554)
    nqp_get_sc_object $P4555, "1304277396.391", 101
    get_how $P4556, $P4555
    nqp_get_sc_object $P4557, "1304277396.391", 101
    .const 'Sub' $P4558 = "220_1304277405.374" 
    $P4556."add_method"($P4557, "evalpmc", $P4558)
    nqp_get_sc_object $P4559, "1304277396.391", 101
    get_how $P4560, $P4559
    nqp_get_sc_object $P4561, "1304277396.391", 101
    .const 'Sub' $P4562 = "221_1304277405.374" 
    $P4560."add_method"($P4561, "dumper", $P4562)
    nqp_get_sc_object $P4563, "1304277396.391", 101
    get_how $P4564, $P4563
    nqp_get_sc_object $P4565, "1304277396.391", 101
    .const 'Sub' $P4566 = "223_1304277405.374" 
    $P4564."add_method"($P4565, "usage", $P4566)
    nqp_get_sc_object $P4567, "1304277396.391", 101
    get_how $P4568, $P4567
    nqp_get_sc_object $P4569, "1304277396.391", 101
    .const 'Sub' $P4570 = "224_1304277405.374" 
    $P4568."add_method"($P4569, "version", $P4570)
    nqp_get_sc_object $P4571, "1304277396.391", 101
    get_how $P4572, $P4571
    nqp_get_sc_object $P4573, "1304277396.391", 101
    .const 'Sub' $P4574 = "225_1304277405.374" 
    $P4572."add_method"($P4573, "removestage", $P4574)
    nqp_get_sc_object $P4575, "1304277396.391", 101
    get_how $P4576, $P4575
    nqp_get_sc_object $P4577, "1304277396.391", 101
    .const 'Sub' $P4578 = "227_1304277405.374" 
    $P4576."add_method"($P4577, "addstage", $P4578)
    nqp_get_sc_object $P4579, "1304277396.391", 101
    get_how $P4580, $P4579
    nqp_get_sc_object $P4581, "1304277396.391", 101
    .const 'Sub' $P4582 = "230_1304277405.374" 
    $P4580."add_method"($P4581, "parse_name", $P4582)
    nqp_get_sc_object $P4583, "1304277396.391", 101
    get_how $P4584, $P4583
    nqp_get_sc_object $P4585, "1304277396.391", 101
    .const 'Sub' $P4586 = "232_1304277405.374" 
    $P4584."add_method"($P4585, "lineof", $P4586)
    .const 'Sub' $P4587 = "167_1304277405.374" 
    $P4588 = $P4587."get_lexinfo"()
    nqp_get_sc_object $P4589, "1304277396.391", 101
    $P4588."set_static_lexpad_value"("$?PACKAGE", $P4589)
    .const 'Sub' $P4590 = "167_1304277405.374" 
    $P4591 = $P4590."get_lexinfo"()
    $P4591."finish_static_lexpad"()
    .const 'Sub' $P4592 = "167_1304277405.374" 
    $P4593 = $P4592."get_lexinfo"()
    nqp_get_sc_object $P4594, "1304277396.391", 101
    $P4593."set_static_lexpad_value"("$?CLASS", $P4594)
    .const 'Sub' $P4595 = "167_1304277405.374" 
    $P4596 = $P4595."get_lexinfo"()
    $P4596."finish_static_lexpad"()
    nqp_get_sc_object $P4597, "1304277396.391", 101
    get_how $P4598, $P4597
    nqp_get_sc_object $P4599, "1304277396.391", 101
    nqp_get_sc_object $P4600, "1304277394.674", 5
    $P4598."set_default_parent"($P4599, $P4600)
    nqp_get_sc_object $P4601, "1304277388.915", 41
    $P4602 = $P4601."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4602, cur_sc
    nqp_set_sc_object "1304277396.391", 138, $P4602
    nqp_get_sc_object $P4603, "1304277396.391", 138
    nqp_get_sc_object $P4604, "1304277396.391", 0
    nqp_get_package_through_who $P4605, $P4604, "HLL"
    nqp_get_package_through_who $P4606, $P4605, "CommandLine"
    get_who $P4607, $P4606
    set $P4607["Result"], $P4603
    nqp_get_sc_object $P4608, "1304277396.391", 138
    get_how $P4609, $P4608
    nqp_get_sc_object $P4610, "1304277396.391", 138
    nqp_get_sc_object $P4611, "1304277388.915", 77
    $P4612 = $P4611."new"("@!arguments" :named("name"))
    $P4609."add_attribute"($P4610, $P4612)
    nqp_get_sc_object $P4613, "1304277396.391", 138
    get_how $P4614, $P4613
    nqp_get_sc_object $P4615, "1304277396.391", 138
    nqp_get_sc_object $P4616, "1304277388.915", 77
    $P4617 = $P4616."new"("%!options" :named("name"))
    $P4614."add_attribute"($P4615, $P4617)
    nqp_get_sc_object $P4618, "1304277396.391", 138
    get_how $P4619, $P4618
    nqp_get_sc_object $P4620, "1304277396.391", 138
    .const 'Sub' $P4621 = "235_1304277405.374" 
    $P4619."add_method"($P4620, "init", $P4621)
    nqp_get_sc_object $P4622, "1304277396.391", 138
    get_how $P4623, $P4622
    nqp_get_sc_object $P4624, "1304277396.391", 138
    .const 'Sub' $P4625 = "236_1304277405.374" 
    $P4623."add_method"($P4624, "arguments", $P4625)
    nqp_get_sc_object $P4626, "1304277396.391", 138
    get_how $P4627, $P4626
    nqp_get_sc_object $P4628, "1304277396.391", 138
    .const 'Sub' $P4629 = "237_1304277405.374" 
    $P4627."add_method"($P4628, "options", $P4629)
    nqp_get_sc_object $P4630, "1304277396.391", 138
    get_how $P4631, $P4630
    nqp_get_sc_object $P4632, "1304277396.391", 138
    .const 'Sub' $P4633 = "238_1304277405.374" 
    $P4631."add_method"($P4632, "add-argument", $P4633)
    nqp_get_sc_object $P4634, "1304277396.391", 138
    get_how $P4635, $P4634
    nqp_get_sc_object $P4636, "1304277396.391", 138
    .const 'Sub' $P4637 = "239_1304277405.374" 
    $P4635."add_method"($P4636, "add-option", $P4637)
    .const 'Sub' $P4638 = "234_1304277405.374" 
    $P4639 = $P4638."get_lexinfo"()
    nqp_get_sc_object $P4640, "1304277396.391", 138
    $P4639."set_static_lexpad_value"("$?PACKAGE", $P4640)
    .const 'Sub' $P4641 = "234_1304277405.374" 
    $P4642 = $P4641."get_lexinfo"()
    $P4642."finish_static_lexpad"()
    .const 'Sub' $P4643 = "234_1304277405.374" 
    $P4644 = $P4643."get_lexinfo"()
    nqp_get_sc_object $P4645, "1304277396.391", 138
    $P4644."set_static_lexpad_value"("$?CLASS", $P4645)
    .const 'Sub' $P4646 = "234_1304277405.374" 
    $P4647 = $P4646."get_lexinfo"()
    $P4647."finish_static_lexpad"()
    nqp_get_sc_object $P4648, "1304277396.391", 138
    get_how $P4649, $P4648
    nqp_get_sc_object $P4650, "1304277396.391", 138
    nqp_get_sc_object $P4651, "1304277394.674", 5
    $P4649."set_default_parent"($P4650, $P4651)
    nqp_get_sc_object $P4652, "1304277388.915", 41
    $P4653 = $P4652."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4653, cur_sc
    nqp_set_sc_object "1304277396.391", 144, $P4653
    nqp_get_sc_object $P4654, "1304277396.391", 144
    nqp_get_sc_object $P4655, "1304277396.391", 0
    nqp_get_package_through_who $P4656, $P4655, "HLL"
    nqp_get_package_through_who $P4657, $P4656, "CommandLine"
    get_who $P4658, $P4657
    set $P4658["Parser"], $P4654
    nqp_get_sc_object $P4659, "1304277396.391", 144
    get_how $P4660, $P4659
    nqp_get_sc_object $P4661, "1304277396.391", 144
    nqp_get_sc_object $P4662, "1304277388.915", 77
    $P4663 = $P4662."new"("@!specs" :named("name"))
    $P4660."add_attribute"($P4661, $P4663)
    nqp_get_sc_object $P4664, "1304277396.391", 144
    get_how $P4665, $P4664
    nqp_get_sc_object $P4666, "1304277396.391", 144
    nqp_get_sc_object $P4667, "1304277388.915", 77
    $P4668 = $P4667."new"("%!options" :named("name"))
    $P4665."add_attribute"($P4666, $P4668)
    nqp_get_sc_object $P4669, "1304277396.391", 144
    get_how $P4670, $P4669
    nqp_get_sc_object $P4671, "1304277396.391", 144
    nqp_get_sc_object $P4672, "1304277388.915", 77
    $P4673 = $P4672."new"("%!stopper" :named("name"))
    $P4670."add_attribute"($P4671, $P4673)
    nqp_get_sc_object $P4674, "1304277396.391", 144
    get_how $P4675, $P4674
    nqp_get_sc_object $P4676, "1304277396.391", 144
    nqp_get_sc_object $P4677, "1304277388.915", 77
    $P4678 = $P4677."new"("$!stop-after-first-arg" :named("name"))
    $P4675."add_attribute"($P4676, $P4678)
    nqp_get_sc_object $P4679, "1304277396.391", 144
    get_how $P4680, $P4679
    nqp_get_sc_object $P4681, "1304277396.391", 144
    .const 'Sub' $P4682 = "243_1304277405.374" 
    $P4680."add_method"($P4681, "new", $P4682)
    nqp_get_sc_object $P4683, "1304277396.391", 144
    get_how $P4684, $P4683
    nqp_get_sc_object $P4685, "1304277396.391", 144
    .const 'Sub' $P4686 = "244_1304277405.374" 
    $P4684."add_method"($P4685, "stop-after-first-arg", $P4686)
    nqp_get_sc_object $P4687, "1304277396.391", 144
    get_how $P4688, $P4687
    nqp_get_sc_object $P4689, "1304277396.391", 144
    .const 'Sub' $P4690 = "245_1304277405.374" 
    $P4688."add_method"($P4689, "BUILD", $P4690)
    nqp_get_sc_object $P4691, "1304277396.391", 144
    get_how $P4692, $P4691
    nqp_get_sc_object $P4693, "1304277396.391", 144
    .const 'Sub' $P4694 = "247_1304277405.374" 
    $P4692."add_method"($P4693, "add-stopper", $P4694)
    nqp_get_sc_object $P4695, "1304277396.391", 144
    get_how $P4696, $P4695
    nqp_get_sc_object $P4697, "1304277396.391", 144
    .const 'Sub' $P4698 = "248_1304277405.374" 
    $P4696."add_method"($P4697, "split-option-aliases", $P4698)
    nqp_get_sc_object $P4699, "1304277396.391", 144
    get_how $P4700, $P4699
    nqp_get_sc_object $P4701, "1304277396.391", 144
    .const 'Sub' $P4702 = "249_1304277405.374" 
    $P4700."add_method"($P4701, "add-spec", $P4702)
    nqp_get_sc_object $P4703, "1304277396.391", 144
    get_how $P4704, $P4703
    nqp_get_sc_object $P4705, "1304277396.391", 144
    .const 'Sub' $P4706 = "251_1304277405.374" 
    $P4704."add_method"($P4705, "is-option", $P4706)
    nqp_get_sc_object $P4707, "1304277396.391", 144
    get_how $P4708, $P4707
    nqp_get_sc_object $P4709, "1304277396.391", 144
    .const 'Sub' $P4710 = "252_1304277405.374" 
    $P4708."add_method"($P4709, "wants-value", $P4710)
    nqp_get_sc_object $P4711, "1304277396.391", 144
    get_how $P4712, $P4711
    nqp_get_sc_object $P4713, "1304277396.391", 144
    .const 'Sub' $P4714 = "253_1304277405.374" 
    $P4712."add_method"($P4713, "parse", $P4714)
    .const 'Sub' $P4715 = "242_1304277405.374" 
    $P4716 = $P4715."get_lexinfo"()
    nqp_get_sc_object $P4717, "1304277396.391", 144
    $P4716."set_static_lexpad_value"("$?PACKAGE", $P4717)
    .const 'Sub' $P4718 = "242_1304277405.374" 
    $P4719 = $P4718."get_lexinfo"()
    $P4719."finish_static_lexpad"()
    .const 'Sub' $P4720 = "242_1304277405.374" 
    $P4721 = $P4720."get_lexinfo"()
    nqp_get_sc_object $P4722, "1304277396.391", 144
    $P4721."set_static_lexpad_value"("$?CLASS", $P4722)
    .const 'Sub' $P4723 = "242_1304277405.374" 
    $P4724 = $P4723."get_lexinfo"()
    $P4724."finish_static_lexpad"()
    nqp_get_sc_object $P4725, "1304277396.391", 144
    get_how $P4726, $P4725
    nqp_get_sc_object $P4727, "1304277396.391", 144
    nqp_get_sc_object $P4728, "1304277394.674", 5
    $P4726."set_default_parent"($P4727, $P4728)
    nqp_get_sc_object $P4729, "1304277388.915", 41
    $P4730 = $P4729."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4730, cur_sc
    nqp_set_sc_object "1304277396.391", 154, $P4730
    nqp_get_sc_object $P4731, "1304277396.391", 154
    nqp_get_sc_object $P4732, "1304277396.391", 0
    nqp_get_package_through_who $P4733, $P4732, "HLL"
    nqp_get_package_through_who $P4734, $P4733, "Compiler"
    get_who $P4735, $P4734
    set $P4735["SerializationContextBuilder"], $P4731
    nqp_get_sc_object $P4736, "1304277388.915", 41
    $P4737 = $P4736."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4737, cur_sc
    nqp_set_sc_object "1304277396.391", 155, $P4737
    .const 'Sub' $P4738 = "262_1304277405.374" 
    $P4739 = $P4738."get_lexinfo"()
    nqp_get_sc_object $P4740, "1304277396.391", 155
    $P4739."set_static_lexpad_value"("Event", $P4740)
    .const 'Sub' $P4741 = "262_1304277405.374" 
    $P4742 = $P4741."get_lexinfo"()
    $P4742."finish_static_lexpad"()
    nqp_get_sc_object $P4743, "1304277396.391", 155
    get_how $P4744, $P4743
    nqp_get_sc_object $P4745, "1304277396.391", 155
    nqp_get_sc_object $P4746, "1304277388.915", 77
    $P4747 = $P4746."new"("$!deserialize_past" :named("name"))
    $P4744."add_attribute"($P4745, $P4747)
    nqp_get_sc_object $P4748, "1304277396.391", 155
    get_how $P4749, $P4748
    nqp_get_sc_object $P4750, "1304277396.391", 155
    .const 'Sub' $P4751 = "265_1304277405.374" 
    $P4749."add_method"($P4750, "deserialize_past", $P4751)
    nqp_get_sc_object $P4752, "1304277396.391", 155
    get_how $P4753, $P4752
    nqp_get_sc_object $P4754, "1304277396.391", 155
    nqp_get_sc_object $P4755, "1304277388.915", 77
    $P4756 = $P4755."new"("$!fixup_past" :named("name"))
    $P4753."add_attribute"($P4754, $P4756)
    nqp_get_sc_object $P4757, "1304277396.391", 155
    get_how $P4758, $P4757
    nqp_get_sc_object $P4759, "1304277396.391", 155
    .const 'Sub' $P4760 = "266_1304277405.374" 
    $P4758."add_method"($P4759, "fixup_past", $P4760)
    .const 'Sub' $P4761 = "264_1304277405.374" 
    $P4762 = $P4761."get_lexinfo"()
    nqp_get_sc_object $P4763, "1304277396.391", 155
    $P4762."set_static_lexpad_value"("$?PACKAGE", $P4763)
    .const 'Sub' $P4764 = "264_1304277405.374" 
    $P4765 = $P4764."get_lexinfo"()
    $P4765."finish_static_lexpad"()
    .const 'Sub' $P4766 = "264_1304277405.374" 
    $P4767 = $P4766."get_lexinfo"()
    nqp_get_sc_object $P4768, "1304277396.391", 155
    $P4767."set_static_lexpad_value"("$?CLASS", $P4768)
    .const 'Sub' $P4769 = "264_1304277405.374" 
    $P4770 = $P4769."get_lexinfo"()
    $P4770."finish_static_lexpad"()
    nqp_get_sc_object $P4771, "1304277396.391", 155
    get_how $P4772, $P4771
    nqp_get_sc_object $P4773, "1304277396.391", 155
    nqp_get_sc_object $P4774, "1304277394.674", 5
    $P4772."set_default_parent"($P4773, $P4774)
    nqp_get_sc_object $P4775, "1304277396.391", 154
    get_how $P4776, $P4775
    nqp_get_sc_object $P4777, "1304277396.391", 154
    nqp_get_sc_object $P4778, "1304277388.915", 77
    $P4779 = $P4778."new"("$!sc" :named("name"))
    $P4776."add_attribute"($P4777, $P4779)
    nqp_get_sc_object $P4780, "1304277396.391", 154
    get_how $P4781, $P4780
    nqp_get_sc_object $P4782, "1304277396.391", 154
    nqp_get_sc_object $P4783, "1304277388.915", 77
    $P4784 = $P4783."new"("$!handle" :named("name"))
    $P4781."add_attribute"($P4782, $P4784)
    nqp_get_sc_object $P4785, "1304277396.391", 154
    get_how $P4786, $P4785
    nqp_get_sc_object $P4787, "1304277396.391", 154
    nqp_get_sc_object $P4788, "1304277388.915", 77
    $P4789 = $P4788."new"("%!addr_to_slot" :named("name"))
    $P4786."add_attribute"($P4787, $P4789)
    nqp_get_sc_object $P4790, "1304277396.391", 154
    get_how $P4791, $P4790
    nqp_get_sc_object $P4792, "1304277396.391", 154
    nqp_get_sc_object $P4793, "1304277388.915", 77
    $P4794 = $P4793."new"("@!event_stream" :named("name"))
    $P4791."add_attribute"($P4792, $P4794)
    nqp_get_sc_object $P4795, "1304277396.391", 154
    get_how $P4796, $P4795
    nqp_get_sc_object $P4797, "1304277396.391", 154
    .const 'Sub' $P4798 = "268_1304277405.374" 
    $P4796."add_method"($P4797, "new", $P4798)
    nqp_get_sc_object $P4799, "1304277396.391", 154
    get_how $P4800, $P4799
    nqp_get_sc_object $P4801, "1304277396.391", 154
    .const 'Sub' $P4802 = "269_1304277405.374" 
    $P4800."add_method"($P4801, "BUILD", $P4802)
    nqp_get_sc_object $P4803, "1304277396.391", 154
    get_how $P4804, $P4803
    nqp_get_sc_object $P4805, "1304277396.391", 154
    .const 'Sub' $P4806 = "270_1304277405.374" 
    $P4804."add_method"($P4805, "slot_for_object", $P4806)
    nqp_get_sc_object $P4807, "1304277396.391", 154
    get_how $P4808, $P4807
    nqp_get_sc_object $P4809, "1304277396.391", 154
    .const 'Sub' $P4810 = "271_1304277405.374" 
    $P4808."add_method"($P4809, "get_slot_past_for_object", $P4810)
    nqp_get_sc_object $P4811, "1304277396.391", 154
    get_how $P4812, $P4811
    nqp_get_sc_object $P4813, "1304277396.391", 154
    .const 'Sub' $P4814 = "272_1304277405.374" 
    $P4812."add_method"($P4813, "set_slot_past", $P4814)
    nqp_get_sc_object $P4815, "1304277396.391", 154
    get_how $P4816, $P4815
    nqp_get_sc_object $P4817, "1304277396.391", 154
    .const 'Sub' $P4818 = "273_1304277405.374" 
    $P4816."add_method"($P4817, "set_cur_sc", $P4818)
    nqp_get_sc_object $P4819, "1304277396.391", 154
    get_how $P4820, $P4819
    nqp_get_sc_object $P4821, "1304277396.391", 154
    .const 'Sub' $P4822 = "274_1304277405.374" 
    $P4820."add_method"($P4821, "add_object", $P4822)
    nqp_get_sc_object $P4823, "1304277396.391", 154
    get_how $P4824, $P4823
    nqp_get_sc_object $P4825, "1304277396.391", 154
    .const 'Sub' $P4826 = "275_1304277405.374" 
    $P4824."add_method"($P4825, "add_code", $P4826)
    nqp_get_sc_object $P4827, "1304277396.391", 154
    get_how $P4828, $P4827
    nqp_get_sc_object $P4829, "1304277396.391", 154
    .const 'Sub' $P4830 = "276_1304277405.374" 
    $P4828."add_method"($P4829, "add_event", $P4830)
    nqp_get_sc_object $P4831, "1304277396.391", 154
    get_how $P4832, $P4831
    nqp_get_sc_object $P4833, "1304277396.391", 154
    .const 'Sub' $P4834 = "277_1304277405.374" 
    $P4832."add_method"($P4833, "get_object_sc_ref_past", $P4834)
    nqp_get_sc_object $P4835, "1304277396.391", 154
    get_how $P4836, $P4835
    nqp_get_sc_object $P4837, "1304277396.391", 154
    .const 'Sub' $P4838 = "278_1304277405.374" 
    $P4836."add_method"($P4837, "load_setting", $P4838)
    nqp_get_sc_object $P4839, "1304277396.391", 154
    get_how $P4840, $P4839
    nqp_get_sc_object $P4841, "1304277396.391", 154
    .const 'Sub' $P4842 = "280_1304277405.374" 
    $P4840."add_method"($P4841, "load_module", $P4842)
    nqp_get_sc_object $P4843, "1304277396.391", 154
    get_how $P4844, $P4843
    nqp_get_sc_object $P4845, "1304277396.391", 154
    .const 'Sub' $P4846 = "281_1304277405.374" 
    $P4844."add_method"($P4845, "install_package_symbol", $P4846)
    nqp_get_sc_object $P4847, "1304277396.391", 154
    get_how $P4848, $P4847
    nqp_get_sc_object $P4849, "1304277396.391", 154
    .const 'Sub' $P4850 = "284_1304277405.374" 
    $P4848."add_method"($P4849, "install_lexical_symbol", $P4850)
    nqp_get_sc_object $P4851, "1304277396.391", 154
    get_how $P4852, $P4851
    nqp_get_sc_object $P4853, "1304277396.391", 154
    .const 'Sub' $P4854 = "285_1304277405.374" 
    $P4852."add_method"($P4853, "install_package_routine", $P4854)
    nqp_get_sc_object $P4855, "1304277396.391", 154
    get_how $P4856, $P4855
    nqp_get_sc_object $P4857, "1304277396.391", 154
    .const 'Sub' $P4858 = "286_1304277405.374" 
    $P4856."add_method"($P4857, "pkg_create_mo", $P4858)
    nqp_get_sc_object $P4859, "1304277396.391", 154
    get_how $P4860, $P4859
    nqp_get_sc_object $P4861, "1304277396.391", 154
    .const 'Sub' $P4862 = "287_1304277405.374" 
    $P4860."add_method"($P4861, "pkg_add_attribute", $P4862)
    nqp_get_sc_object $P4863, "1304277396.391", 154
    get_how $P4864, $P4863
    nqp_get_sc_object $P4865, "1304277396.391", 154
    .const 'Sub' $P4866 = "291_1304277405.374" 
    $P4864."add_method"($P4865, "pkg_add_method", $P4866)
    nqp_get_sc_object $P4867, "1304277396.391", 154
    get_how $P4868, $P4867
    nqp_get_sc_object $P4869, "1304277396.391", 154
    .const 'Sub' $P4870 = "292_1304277405.374" 
    $P4868."add_method"($P4869, "set_routine_signature", $P4870)
    nqp_get_sc_object $P4871, "1304277396.391", 154
    get_how $P4872, $P4871
    nqp_get_sc_object $P4873, "1304277396.391", 154
    .const 'Sub' $P4874 = "293_1304277405.374" 
    $P4872."add_method"($P4873, "pkg_add_parent_or_role", $P4874)
    nqp_get_sc_object $P4875, "1304277396.391", 154
    get_how $P4876, $P4875
    nqp_get_sc_object $P4877, "1304277396.391", 154
    .const 'Sub' $P4878 = "294_1304277405.374" 
    $P4876."add_method"($P4877, "pkg_compose", $P4878)
    nqp_get_sc_object $P4879, "1304277396.391", 154
    get_how $P4880, $P4879
    nqp_get_sc_object $P4881, "1304277396.391", 154
    .const 'Sub' $P4882 = "295_1304277405.374" 
    $P4880."add_method"($P4881, "sc", $P4882)
    nqp_get_sc_object $P4883, "1304277396.391", 154
    get_how $P4884, $P4883
    nqp_get_sc_object $P4885, "1304277396.391", 154
    .const 'Sub' $P4886 = "296_1304277405.374" 
    $P4884."add_method"($P4885, "to_past", $P4886)
    .const 'Sub' $P4887 = "262_1304277405.374" 
    $P4888 = $P4887."get_lexinfo"()
    nqp_get_sc_object $P4889, "1304277396.391", 154
    $P4888."set_static_lexpad_value"("$?PACKAGE", $P4889)
    .const 'Sub' $P4890 = "262_1304277405.374" 
    $P4891 = $P4890."get_lexinfo"()
    $P4891."finish_static_lexpad"()
    .const 'Sub' $P4892 = "262_1304277405.374" 
    $P4893 = $P4892."get_lexinfo"()
    nqp_get_sc_object $P4894, "1304277396.391", 154
    $P4893."set_static_lexpad_value"("$?CLASS", $P4894)
    .const 'Sub' $P4895 = "262_1304277405.374" 
    $P4896 = $P4895."get_lexinfo"()
    $P4896."finish_static_lexpad"()
    nqp_get_sc_object $P4897, "1304277396.391", 154
    get_how $P4898, $P4897
    nqp_get_sc_object $P4899, "1304277396.391", 154
    nqp_get_sc_object $P4900, "1304277394.674", 5
    $P4898."set_default_parent"($P4899, $P4900)
  if_3913_end:
    nqp_get_sc_object $P5344, "1304277396.391", 0
    set_hll_global "GLOBAL", $P5344
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1304277405.374") :outer("10_1304277405.374")
.annotate 'line', 9
    .const 'Sub' $P477 = "119_1304277405.374" 
    capture_lex $P477
    .const 'Sub' $P452 = "118_1304277405.374" 
    capture_lex $P452
    .const 'Sub' $P447 = "117_1304277405.374" 
    capture_lex $P447
    .const 'Sub' $P432 = "116_1304277405.374" 
    capture_lex $P432
    .const 'Sub' $P422 = "115_1304277405.374" 
    capture_lex $P422
    .const 'Sub' $P418 = "114_1304277405.374" 
    capture_lex $P418
    .const 'Sub' $P414 = "113_1304277405.374" 
    capture_lex $P414
    .const 'Sub' $P411 = "112_1304277405.374" 
    capture_lex $P411
    .const 'Sub' $P409 = "111_1304277405.374" 
    capture_lex $P409
    .const 'Sub' $P407 = "110_1304277405.374" 
    capture_lex $P407
    .const 'Sub' $P399 = "109_1304277405.374" 
    capture_lex $P399
    .const 'Sub' $P396 = "108_1304277405.374" 
    capture_lex $P396
    .const 'Sub' $P392 = "107_1304277405.374" 
    capture_lex $P392
    .const 'Sub' $P358 = "106_1304277405.374" 
    capture_lex $P358
    .const 'Sub' $P353 = "105_1304277405.374" 
    capture_lex $P353
    .const 'Sub' $P344 = "103_1304277405.374" 
    capture_lex $P344
    .const 'Sub' $P338 = "101_1304277405.374" 
    capture_lex $P338
    .const 'Sub' $P325 = "98_1304277405.374" 
    capture_lex $P325
    .const 'Sub' $P293 = "93_1304277405.374" 
    capture_lex $P293
    .const 'Sub' $P287 = "91_1304277405.374" 
    capture_lex $P287
    .const 'Sub' $P282 = "89_1304277405.374" 
    capture_lex $P282
    .const 'Sub' $P276 = "87_1304277405.374" 
    capture_lex $P276
    .const 'Sub' $P270 = "85_1304277405.374" 
    capture_lex $P270
    .const 'Sub' $P265 = "83_1304277405.374" 
    capture_lex $P265
    .const 'Sub' $P260 = "81_1304277405.374" 
    capture_lex $P260
    .const 'Sub' $P255 = "79_1304277405.374" 
    capture_lex $P255
    .const 'Sub' $P250 = "77_1304277405.374" 
    capture_lex $P250
    .const 'Sub' $P245 = "75_1304277405.374" 
    capture_lex $P245
    .const 'Sub' $P240 = "73_1304277405.374" 
    capture_lex $P240
    .const 'Sub' $P235 = "71_1304277405.374" 
    capture_lex $P235
    .const 'Sub' $P230 = "69_1304277405.374" 
    capture_lex $P230
    .const 'Sub' $P218 = "65_1304277405.374" 
    capture_lex $P218
    .const 'Sub' $P205 = "63_1304277405.374" 
    capture_lex $P205
    .const 'Sub' $P193 = "61_1304277405.374" 
    capture_lex $P193
    .const 'Sub' $P187 = "59_1304277405.374" 
    capture_lex $P187
    .const 'Sub' $P180 = "57_1304277405.374" 
    capture_lex $P180
    .const 'Sub' $P174 = "55_1304277405.374" 
    capture_lex $P174
    .const 'Sub' $P167 = "53_1304277405.374" 
    capture_lex $P167
    .const 'Sub' $P161 = "51_1304277405.374" 
    capture_lex $P161
    .const 'Sub' $P154 = "49_1304277405.374" 
    capture_lex $P154
    .const 'Sub' $P148 = "47_1304277405.374" 
    capture_lex $P148
    .const 'Sub' $P142 = "45_1304277405.374" 
    capture_lex $P142
    .const 'Sub' $P133 = "43_1304277405.374" 
    capture_lex $P133
    .const 'Sub' $P125 = "41_1304277405.374" 
    capture_lex $P125
    .const 'Sub' $P117 = "40_1304277405.374" 
    capture_lex $P117
    .const 'Sub' $P111 = "38_1304277405.374" 
    capture_lex $P111
    .const 'Sub' $P106 = "36_1304277405.374" 
    capture_lex $P106
    .const 'Sub' $P98 = "34_1304277405.374" 
    capture_lex $P98
    .const 'Sub' $P92 = "32_1304277405.374" 
    capture_lex $P92
    .const 'Sub' $P86 = "30_1304277405.374" 
    capture_lex $P86
    .const 'Sub' $P80 = "28_1304277405.374" 
    capture_lex $P80
    .const 'Sub' $P35 = "14_1304277405.374" 
    capture_lex $P35
    .const 'Sub' $P28 = "12_1304277405.374" 
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
    unless_null $P25, vivify_302
    new $P25, "Undef"
  vivify_302:
    get_who $P26, $P25
    set $P27, $P26["Cursor"]
    unless_null $P27, vivify_303
    new $P27, "Undef"
  vivify_303:
    store_lex "$cursor_class", $P27
.annotate 'line', 851
    .const 'Sub' $P452 = "118_1304277405.374" 
    newclosure $P475, $P452
.annotate 'line', 9
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post301") :outer("11_1304277405.374")
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1304277405.374" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P477 = "119_1304277405.374" 
    capture_lex $P477
    $P477()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block476"  :anon :subid("119_1304277405.374") :outer("11_1304277405.374")
.annotate 'line', 9
    nqp_get_sc_object $P478, "1304277396.391", 1
    .local pmc type_obj
    set type_obj, $P478
    get_how $P479, type_obj
    get_global $P480, "!PREFIX__ws"
    $P479."add_method"(type_obj, "!PREFIX__ws", $P480)
    get_how $P481, type_obj
    get_global $P482, "!PREFIX__termish"
    $P481."add_method"(type_obj, "!PREFIX__termish", $P482)
    get_how $P483, type_obj
    get_global $P484, "!PREFIX__term:sym<circumfix>"
    $P483."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P484)
    get_how $P485, type_obj
    get_global $P486, "!PREFIX__infixish"
    $P485."add_method"(type_obj, "!PREFIX__infixish", $P486)
    get_how $P487, type_obj
    get_global $P488, "!PREFIX__prefixish"
    $P487."add_method"(type_obj, "!PREFIX__prefixish", $P488)
    get_how $P489, type_obj
    get_global $P490, "!PREFIX__postfixish"
    $P489."add_method"(type_obj, "!PREFIX__postfixish", $P490)
    get_how $P491, type_obj
    get_global $P492, "!PREFIX__nullterm"
    $P491."add_method"(type_obj, "!PREFIX__nullterm", $P492)
    get_how $P493, type_obj
    get_global $P494, "!PREFIX__nullterm_alt"
    $P493."add_method"(type_obj, "!PREFIX__nullterm_alt", $P494)
    get_how $P495, type_obj
    get_global $P496, "!PREFIX__quote_delimited"
    $P495."add_method"(type_obj, "!PREFIX__quote_delimited", $P496)
    get_how $P497, type_obj
    get_global $P498, "!PREFIX__quote_atom"
    $P497."add_method"(type_obj, "!PREFIX__quote_atom", $P498)
    get_how $P499, type_obj
    get_global $P500, "!PREFIX__decint"
    $P499."add_method"(type_obj, "!PREFIX__decint", $P500)
    get_how $P501, type_obj
    get_global $P502, "!PREFIX__decints"
    $P501."add_method"(type_obj, "!PREFIX__decints", $P502)
    get_how $P503, type_obj
    get_global $P504, "!PREFIX__hexint"
    $P503."add_method"(type_obj, "!PREFIX__hexint", $P504)
    get_how $P505, type_obj
    get_global $P506, "!PREFIX__hexints"
    $P505."add_method"(type_obj, "!PREFIX__hexints", $P506)
    get_how $P507, type_obj
    get_global $P508, "!PREFIX__octint"
    $P507."add_method"(type_obj, "!PREFIX__octint", $P508)
    get_how $P509, type_obj
    get_global $P510, "!PREFIX__octints"
    $P509."add_method"(type_obj, "!PREFIX__octints", $P510)
    get_how $P511, type_obj
    get_global $P512, "!PREFIX__binint"
    $P511."add_method"(type_obj, "!PREFIX__binint", $P512)
    get_how $P513, type_obj
    get_global $P514, "!PREFIX__binints"
    $P513."add_method"(type_obj, "!PREFIX__binints", $P514)
    get_how $P515, type_obj
    get_global $P516, "!PREFIX__integer"
    $P515."add_method"(type_obj, "!PREFIX__integer", $P516)
    get_how $P517, type_obj
    get_global $P518, "!PREFIX__dec_number"
    $P517."add_method"(type_obj, "!PREFIX__dec_number", $P518)
    get_how $P519, type_obj
    get_global $P520, "!PREFIX__escale"
    $P519."add_method"(type_obj, "!PREFIX__escale", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__quote_escape:sym<backslash>"
    $P521."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P522)
    get_how $P523, type_obj
    get_global $P524, "!PREFIX__quote_escape:sym<stopper>"
    $P523."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__quote_escape:sym<bs>"
    $P525."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P526)
    get_how $P527, type_obj
    get_global $P528, "!PREFIX__quote_escape:sym<nl>"
    $P527."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__quote_escape:sym<cr>"
    $P529."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P530)
    get_how $P531, type_obj
    get_global $P532, "!PREFIX__quote_escape:sym<tab>"
    $P531."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__quote_escape:sym<ff>"
    $P533."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P534)
    get_how $P535, type_obj
    get_global $P536, "!PREFIX__quote_escape:sym<esc>"
    $P535."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P536)
    get_how $P537, type_obj
    get_global $P538, "!PREFIX__quote_escape:sym<hex>"
    $P537."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P538)
    get_how $P539, type_obj
    get_global $P540, "!PREFIX__quote_escape:sym<oct>"
    $P539."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P540)
    get_how $P541, type_obj
    get_global $P542, "!PREFIX__quote_escape:sym<chr>"
    $P541."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P542)
    get_how $P543, type_obj
    get_global $P544, "!PREFIX__quote_escape:sym<0>"
    $P543."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P544)
    get_how $P545, type_obj
    get_global $P546, "!PREFIX__quote_escape:sym<misc>"
    $P545."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P546)
    get_how $P547, type_obj
    get_global $P548, "!PREFIX__charname"
    $P547."add_method"(type_obj, "!PREFIX__charname", $P548)
    get_how $P549, type_obj
    get_global $P550, "!PREFIX__charnames"
    $P549."add_method"(type_obj, "!PREFIX__charnames", $P550)
    get_how $P551, type_obj
    get_global $P552, "!PREFIX__charspec"
    $P551."add_method"(type_obj, "!PREFIX__charspec", $P552)
    get_how $P553, type_obj
    $P554 = $P553."compose"(type_obj)
    .return ($P554)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx29_debug, debug_304
    rx29_cur."!cursor_debug"("START", "ws")
  debug_304:
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
    if_null rx29_debug, debug_305
    rx29_cur."!cursor_debug"("PASS", "ws", " at pos=", rx29_pos)
  debug_305:
    .return (rx29_cur)
  rx29_restart:
.annotate 'line', 12
    if_null rx29_debug, debug_306
    rx29_cur."!cursor_debug"("NEXT", "ws")
  debug_306:
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    if_null rx29_debug, debug_307
    rx29_cur."!cursor_debug"("FAIL", "ws")
  debug_307:
    .return (rx29_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1304277405.374") :method
.annotate 'line', 12
    new $P31, "ResizablePMCArray"
    push $P31, ""
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx36_debug, debug_308
    rx36_cur."!cursor_debug"("START", "termish")
  debug_308:
    $I10 = self.'from'()
    ne $I10, -1, rxscan39_done
    goto rxscan39_scan
  rxscan39_loop:
    (rx36_pos) = rx36_cur."from"()
    inc rx36_pos
    rx36_cur."!cursor_from"(rx36_pos)
    ge rx36_pos, rx36_eos, rxscan39_done
  rxscan39_scan:
    set_addr $I10, rxscan39_loop
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxscan39_done:
.annotate 'line', 17
  # rx rxquantr40 ** 0..*
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr40_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."prefixish"()
    unless $P10, rx36_fail
    goto rxsubrule41_pass
  rxsubrule41_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule41_pass:
    set_addr $I10, rxsubrule41_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr40_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr40_loop
  rxquantr40_done:
.annotate 'line', 18
  # rx subrule "term" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."term"()
    unless $P10, rx36_fail
    rx36_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx36_pos = $P10."pos"()
.annotate 'line', 19
  # rx rxquantr42 ** 0..*
    set_addr $I10, rxquantr42_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr42_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."postfixish"()
    unless $P10, rx36_fail
    goto rxsubrule43_pass
  rxsubrule43_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule43_pass:
    set_addr $I10, rxsubrule43_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr42_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr42_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr42_loop
  rxquantr42_done:
.annotate 'line', 16
  # rx pass
    rx36_cur."!cursor_pass"(rx36_pos, "termish")
    if_null rx36_debug, debug_309
    rx36_cur."!cursor_debug"("PASS", "termish", " at pos=", rx36_pos)
  debug_309:
    .return (rx36_cur)
  rx36_restart:
.annotate 'line', 12
    if_null rx36_debug, debug_310
    rx36_cur."!cursor_debug"("NEXT", "termish")
  debug_310:
  rx36_fail:
    (rx36_rep, rx36_pos, $I10, $P10) = rx36_cur."!mark_fail"(0)
    lt rx36_pos, -1, rx36_done
    eq rx36_pos, -1, rx36_fail
    jump $I10
  rx36_done:
    rx36_cur."!cursor_fail"()
    if_null rx36_debug, debug_311
    rx36_cur."!cursor_debug"("FAIL", "termish")
  debug_311:
    .return (rx36_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1304277405.374") :method
.annotate 'line', 12
    new $P38, "ResizablePMCArray"
    push $P38, ""
    .return ($P38)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1304277405.374")
    .param pmc param_45
.annotate 'line', 22
    .lex "self", param_45
    $P46 = param_45."!protoregex"("term")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1304277405.374")
    .param pmc param_48
.annotate 'line', 22
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("term")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1304277405.374")
    .param pmc param_51
.annotate 'line', 23
    .lex "self", param_51
    $P52 = param_51."!protoregex"("infix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1304277405.374")
    .param pmc param_54
.annotate 'line', 23
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("infix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1304277405.374")
    .param pmc param_57
.annotate 'line', 24
    .lex "self", param_57
    $P58 = param_57."!protoregex"("prefix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1304277405.374")
    .param pmc param_60
.annotate 'line', 24
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("prefix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1304277405.374")
    .param pmc param_63
.annotate 'line', 25
    .lex "self", param_63
    $P64 = param_63."!protoregex"("postfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1304277405.374")
    .param pmc param_66
.annotate 'line', 25
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("postfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1304277405.374")
    .param pmc param_69
.annotate 'line', 26
    .lex "self", param_69
    $P70 = param_69."!protoregex"("circumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1304277405.374")
    .param pmc param_72
.annotate 'line', 26
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("circumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1304277405.374")
    .param pmc param_75
.annotate 'line', 27
    .lex "self", param_75
    $P76 = param_75."!protoregex"("postcircumfix")
    .return ($P76)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1304277405.374")
    .param pmc param_78
.annotate 'line', 27
    .lex "self", param_78
    $P79 = param_78."!PREFIX__!protoregex"("postcircumfix")
    .return ($P79)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx81_debug, debug_312
    rx81_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_312:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    (rx81_pos) = rx81_cur."from"()
    inc rx81_pos
    rx81_cur."!cursor_from"(rx81_pos)
    ge rx81_pos, rx81_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan85_done:
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
    if_null rx81_debug, debug_313
    rx81_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx81_pos)
  debug_313:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 12
    if_null rx81_debug, debug_314
    rx81_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_314:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_315
    rx81_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_315:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1304277405.374") :method
.annotate 'line', 12
    $P83 = self."!PREFIX__!subrule"("circumfix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx87_debug, debug_316
    rx87_cur."!cursor_debug"("START", "infixish")
  debug_316:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan91_done:
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
    if_null rx87_debug, debug_317
    rx87_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx87_pos)
  debug_317:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 12
    if_null rx87_debug, debug_318
    rx87_cur."!cursor_debug"("NEXT", "infixish")
  debug_318:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_319
    rx87_cur."!cursor_debug"("FAIL", "infixish")
  debug_319:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1304277405.374") :method
.annotate 'line', 12
    $P89 = self."!PREFIX__!subrule"("infix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx93_debug, debug_320
    rx93_cur."!cursor_debug"("START", "prefixish")
  debug_320:
    $I10 = self.'from'()
    ne $I10, -1, rxscan97_done
    goto rxscan97_scan
  rxscan97_loop:
    (rx93_pos) = rx93_cur."from"()
    inc rx93_pos
    rx93_cur."!cursor_from"(rx93_pos)
    ge rx93_pos, rx93_eos, rxscan97_done
  rxscan97_scan:
    set_addr $I10, rxscan97_loop
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxscan97_done:
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
    if_null rx93_debug, debug_321
    rx93_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx93_pos)
  debug_321:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 12
    if_null rx93_debug, debug_322
    rx93_cur."!cursor_debug"("NEXT", "prefixish")
  debug_322:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_323
    rx93_cur."!cursor_debug"("FAIL", "prefixish")
  debug_323:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1304277405.374") :method
.annotate 'line', 12
    $P95 = self."!PREFIX__!subrule"("prefix", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P95
    .return ($P96)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx99_debug, debug_324
    rx99_cur."!cursor_debug"("START", "postfixish")
  debug_324:
    $I10 = self.'from'()
    ne $I10, -1, rxscan104_done
    goto rxscan104_scan
  rxscan104_loop:
    (rx99_pos) = rx99_cur."from"()
    inc rx99_pos
    rx99_cur."!cursor_from"(rx99_pos)
    ge rx99_pos, rx99_eos, rxscan104_done
  rxscan104_scan:
    set_addr $I10, rxscan104_loop
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxscan104_done:
  alt105_0:
.annotate 'line', 33
    set_addr $I10, alt105_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
.annotate 'line', 34
  # rx subrule "postfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx99_pos = $P10."pos"()
    goto alt105_end
  alt105_1:
.annotate 'line', 35
  # rx subrule "postcircumfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postcircumfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx99_pos = $P10."pos"()
  alt105_end:
.annotate 'line', 33
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "postfixish")
    if_null rx99_debug, debug_325
    rx99_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx99_pos)
  debug_325:
    .return (rx99_cur)
  rx99_restart:
.annotate 'line', 12
    if_null rx99_debug, debug_326
    rx99_cur."!cursor_debug"("NEXT", "postfixish")
  debug_326:
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    if_null rx99_debug, debug_327
    rx99_cur."!cursor_debug"("FAIL", "postfixish")
  debug_327:
    .return (rx99_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1304277405.374") :method
.annotate 'line', 12
    $P101 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P102 = self."!PREFIX__!subrule"("postfix", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    push $P103, $P102
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx107_debug, debug_328
    rx107_cur."!cursor_debug"("START", "nullterm")
  debug_328:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    (rx107_pos) = rx107_cur."from"()
    inc rx107_pos
    rx107_cur."!cursor_from"(rx107_pos)
    ge rx107_pos, rx107_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan110_done:
.annotate 'line', 38
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "nullterm")
    if_null rx107_debug, debug_329
    rx107_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx107_pos)
  debug_329:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 12
    if_null rx107_debug, debug_330
    rx107_cur."!cursor_debug"("NEXT", "nullterm")
  debug_330:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_331
    rx107_cur."!cursor_debug"("FAIL", "nullterm")
  debug_331:
    .return (rx107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1304277405.374") :method
.annotate 'line', 12
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx112_debug, debug_332
    rx112_cur."!cursor_debug"("START", "nullterm_alt")
  debug_332:
    $I10 = self.'from'()
    ne $I10, -1, rxscan116_done
    goto rxscan116_scan
  rxscan116_loop:
    (rx112_pos) = rx112_cur."from"()
    inc rx112_pos
    rx112_cur."!cursor_from"(rx112_pos)
    ge rx112_pos, rx112_eos, rxscan116_done
  rxscan116_scan:
    set_addr $I10, rxscan116_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan116_done:
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
    if_null rx112_debug, debug_333
    rx112_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx112_pos)
  debug_333:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 12
    if_null rx112_debug, debug_334
    rx112_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_334:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_335
    rx112_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_335:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1304277405.374") :method
.annotate 'line', 12
    $P114 = self."!PREFIX__!subrule"("nullterm", "")
    new $P115, "ResizablePMCArray"
    push $P115, $P114
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1304277405.374") :outer("11_1304277405.374")
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
.sub "quote_delimited"  :subid("41_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx126_debug, debug_336
    rx126_cur."!cursor_debug"("START", "quote_delimited")
  debug_336:
    $I10 = self.'from'()
    ne $I10, -1, rxscan130_done
    goto rxscan130_scan
  rxscan130_loop:
    (rx126_pos) = rx126_cur."from"()
    inc rx126_pos
    rx126_cur."!cursor_from"(rx126_pos)
    ge rx126_pos, rx126_eos, rxscan130_done
  rxscan130_scan:
    set_addr $I10, rxscan130_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan130_done:
.annotate 'line', 46
  # rx subrule "starter" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."starter"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx126_pos = $P10."pos"()
  # rx rxquantr131 ** 0..*
    set_addr $I10, rxquantr131_done
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxquantr131_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."quote_atom"()
    unless $P10, rx126_fail
    goto rxsubrule132_pass
  rxsubrule132_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx126_fail
  rxsubrule132_pass:
    set_addr $I10, rxsubrule132_back
    rx126_cur."!mark_push"(0, rx126_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx126_pos = $P10."pos"()
    set_addr $I10, rxquantr131_done
    (rx126_rep) = rx126_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr131_done
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I10)
    goto rxquantr131_loop
  rxquantr131_done:
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
    if_null rx126_debug, debug_337
    rx126_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx126_pos)
  debug_337:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 42
    if_null rx126_debug, debug_338
    rx126_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_338:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_339
    rx126_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_339:
    .return (rx126_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1304277405.374") :method
.annotate 'line', 42
    $P128 = self."!PREFIX__!subrule"("starter", "")
    new $P129, "ResizablePMCArray"
    push $P129, $P128
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx134_debug, debug_340
    rx134_cur."!cursor_debug"("START", "quote_atom")
  debug_340:
    $I10 = self.'from'()
    ne $I10, -1, rxscan137_done
    goto rxscan137_scan
  rxscan137_loop:
    (rx134_pos) = rx134_cur."from"()
    inc rx134_pos
    rx134_cur."!cursor_from"(rx134_pos)
    ge rx134_pos, rx134_eos, rxscan137_done
  rxscan137_scan:
    set_addr $I10, rxscan137_loop
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  rxscan137_done:
.annotate 'line', 50
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."stopper"()
    if $P10, rx134_fail
  alt138_0:
.annotate 'line', 51
    set_addr $I10, alt138_1
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
.annotate 'line', 52
  # rx subrule "quote_escape" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."quote_escape"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx134_pos = $P10."pos"()
    goto alt138_end
  alt138_1:
.annotate 'line', 53
  # rx rxquantr139 ** 1..*
    set_addr $I10, rxquantr139_done
    rx134_cur."!mark_push"(0, -1, $I10)
  rxquantr139_loop:
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
    set_addr $I10, rxquantr139_done
    (rx134_rep) = rx134_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr139_done
    rx134_cur."!mark_push"(rx134_rep, rx134_pos, $I10)
    goto rxquantr139_loop
  rxquantr139_done:
  alt138_end:
.annotate 'line', 49
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "quote_atom")
    if_null rx134_debug, debug_341
    rx134_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx134_pos)
  debug_341:
    .return (rx134_cur)
  rx134_restart:
.annotate 'line', 42
    if_null rx134_debug, debug_342
    rx134_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_342:
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    if_null rx134_debug, debug_343
    rx134_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_343:
    .return (rx134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1304277405.374") :method
.annotate 'line', 42
    new $P136, "ResizablePMCArray"
    push $P136, ""
    .return ($P136)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx143_debug, debug_344
    rx143_cur."!cursor_debug"("START", "decint")
  debug_344:
    $I10 = self.'from'()
    ne $I10, -1, rxscan146_done
    goto rxscan146_scan
  rxscan146_loop:
    (rx143_pos) = rx143_cur."from"()
    inc rx143_pos
    rx143_cur."!cursor_from"(rx143_pos)
    ge rx143_pos, rx143_eos, rxscan146_done
  rxscan146_scan:
    set_addr $I10, rxscan146_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan146_done:
.annotate 'line', 57
  # rx rxquantr147 ** 1..*
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(0, -1, $I10)
  rxquantr147_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx143_pos, rx143_off
    find_not_cclass $I11, 8, rx143_tgt, $I10, rx143_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx143_fail
    add rx143_pos, rx143_off, $I11
    set_addr $I10, rxquantr147_done
    (rx143_rep) = rx143_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(rx143_rep, rx143_pos, $I10)
  # rx literal  "_"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 95, rx143_fail
    add rx143_pos, 1
    goto rxquantr147_loop
  rxquantr147_done:
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "decint")
    if_null rx143_debug, debug_345
    rx143_cur."!cursor_debug"("PASS", "decint", " at pos=", rx143_pos)
  debug_345:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 42
    if_null rx143_debug, debug_346
    rx143_cur."!cursor_debug"("NEXT", "decint")
  debug_346:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_347
    rx143_cur."!cursor_debug"("FAIL", "decint")
  debug_347:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1304277405.374") :method
.annotate 'line', 42
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx149_debug, debug_348
    rx149_cur."!cursor_debug"("START", "decints")
  debug_348:
    $I10 = self.'from'()
    ne $I10, -1, rxscan152_done
    goto rxscan152_scan
  rxscan152_loop:
    (rx149_pos) = rx149_cur."from"()
    inc rx149_pos
    rx149_cur."!cursor_from"(rx149_pos)
    ge rx149_pos, rx149_eos, rxscan152_done
  rxscan152_scan:
    set_addr $I10, rxscan152_loop
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxscan152_done:
.annotate 'line', 58
  # rx rxquantr153 ** 1..*
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(0, -1, $I10)
  rxquantr153_loop:
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
    set_addr $I10, rxquantr153_done
    (rx149_rep) = rx149_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(rx149_rep, rx149_pos, $I10)
  # rx literal  ","
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    ord $I11, rx149_tgt, $I11
    ne $I11, 44, rx149_fail
    add rx149_pos, 1
    goto rxquantr153_loop
  rxquantr153_done:
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "decints")
    if_null rx149_debug, debug_349
    rx149_cur."!cursor_debug"("PASS", "decints", " at pos=", rx149_pos)
  debug_349:
    .return (rx149_cur)
  rx149_restart:
.annotate 'line', 42
    if_null rx149_debug, debug_350
    rx149_cur."!cursor_debug"("NEXT", "decints")
  debug_350:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_351
    rx149_cur."!cursor_debug"("FAIL", "decints")
  debug_351:
    .return (rx149_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1304277405.374") :method
.annotate 'line', 42
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx155_debug, debug_352
    rx155_cur."!cursor_debug"("START", "hexint")
  debug_352:
    $I10 = self.'from'()
    ne $I10, -1, rxscan158_done
    goto rxscan158_scan
  rxscan158_loop:
    (rx155_pos) = rx155_cur."from"()
    inc rx155_pos
    rx155_cur."!cursor_from"(rx155_pos)
    ge rx155_pos, rx155_eos, rxscan158_done
  rxscan158_scan:
    set_addr $I10, rxscan158_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan158_done:
.annotate 'line', 60
  # rx rxquantr159 ** 1..*
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(0, -1, $I10)
  rxquantr159_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx155_pos, rx155_off
    set rx155_rep, 0
    sub $I12, rx155_eos, rx155_pos
  rxenumcharlistq160_loop:
    le $I12, 0, rxenumcharlistq160_done
    substr $S10, rx155_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq160_done
    inc rx155_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq160_loop
  rxenumcharlistq160_done:
    lt rx155_rep, 1, rx155_fail
    add rx155_pos, rx155_pos, rx155_rep
    set_addr $I10, rxquantr159_done
    (rx155_rep) = rx155_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(rx155_rep, rx155_pos, $I10)
  # rx literal  "_"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 95, rx155_fail
    add rx155_pos, 1
    goto rxquantr159_loop
  rxquantr159_done:
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "hexint")
    if_null rx155_debug, debug_353
    rx155_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx155_pos)
  debug_353:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 42
    if_null rx155_debug, debug_354
    rx155_cur."!cursor_debug"("NEXT", "hexint")
  debug_354:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_355
    rx155_cur."!cursor_debug"("FAIL", "hexint")
  debug_355:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1304277405.374") :method
.annotate 'line', 42
    new $P157, "ResizablePMCArray"
    push $P157, ""
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx162_debug, debug_356
    rx162_cur."!cursor_debug"("START", "hexints")
  debug_356:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    (rx162_pos) = rx162_cur."from"()
    inc rx162_pos
    rx162_cur."!cursor_from"(rx162_pos)
    ge rx162_pos, rx162_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan165_done:
.annotate 'line', 61
  # rx rxquantr166 ** 1..*
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(0, -1, $I10)
  rxquantr166_loop:
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
    set_addr $I10, rxquantr166_done
    (rx162_rep) = rx162_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I10)
  # rx literal  ","
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 44, rx162_fail
    add rx162_pos, 1
    goto rxquantr166_loop
  rxquantr166_done:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "hexints")
    if_null rx162_debug, debug_357
    rx162_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx162_pos)
  debug_357:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 42
    if_null rx162_debug, debug_358
    rx162_cur."!cursor_debug"("NEXT", "hexints")
  debug_358:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_359
    rx162_cur."!cursor_debug"("FAIL", "hexints")
  debug_359:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1304277405.374") :method
.annotate 'line', 42
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx168_debug, debug_360
    rx168_cur."!cursor_debug"("START", "octint")
  debug_360:
    $I10 = self.'from'()
    ne $I10, -1, rxscan171_done
    goto rxscan171_scan
  rxscan171_loop:
    (rx168_pos) = rx168_cur."from"()
    inc rx168_pos
    rx168_cur."!cursor_from"(rx168_pos)
    ge rx168_pos, rx168_eos, rxscan171_done
  rxscan171_scan:
    set_addr $I10, rxscan171_loop
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  rxscan171_done:
.annotate 'line', 63
  # rx rxquantr172 ** 1..*
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(0, -1, $I10)
  rxquantr172_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx168_pos, rx168_off
    set rx168_rep, 0
    sub $I12, rx168_eos, rx168_pos
  rxenumcharlistq173_loop:
    le $I12, 0, rxenumcharlistq173_done
    substr $S10, rx168_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq173_done
    inc rx168_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq173_loop
  rxenumcharlistq173_done:
    lt rx168_rep, 1, rx168_fail
    add rx168_pos, rx168_pos, rx168_rep
    set_addr $I10, rxquantr172_done
    (rx168_rep) = rx168_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(rx168_rep, rx168_pos, $I10)
  # rx literal  "_"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    ord $I11, rx168_tgt, $I11
    ne $I11, 95, rx168_fail
    add rx168_pos, 1
    goto rxquantr172_loop
  rxquantr172_done:
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "octint")
    if_null rx168_debug, debug_361
    rx168_cur."!cursor_debug"("PASS", "octint", " at pos=", rx168_pos)
  debug_361:
    .return (rx168_cur)
  rx168_restart:
.annotate 'line', 42
    if_null rx168_debug, debug_362
    rx168_cur."!cursor_debug"("NEXT", "octint")
  debug_362:
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    if_null rx168_debug, debug_363
    rx168_cur."!cursor_debug"("FAIL", "octint")
  debug_363:
    .return (rx168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1304277405.374") :method
.annotate 'line', 42
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx175_debug, debug_364
    rx175_cur."!cursor_debug"("START", "octints")
  debug_364:
    $I10 = self.'from'()
    ne $I10, -1, rxscan178_done
    goto rxscan178_scan
  rxscan178_loop:
    (rx175_pos) = rx175_cur."from"()
    inc rx175_pos
    rx175_cur."!cursor_from"(rx175_pos)
    ge rx175_pos, rx175_eos, rxscan178_done
  rxscan178_scan:
    set_addr $I10, rxscan178_loop
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  rxscan178_done:
.annotate 'line', 64
  # rx rxquantr179 ** 1..*
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(0, -1, $I10)
  rxquantr179_loop:
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
    set_addr $I10, rxquantr179_done
    (rx175_rep) = rx175_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(rx175_rep, rx175_pos, $I10)
  # rx literal  ","
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 44, rx175_fail
    add rx175_pos, 1
    goto rxquantr179_loop
  rxquantr179_done:
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "octints")
    if_null rx175_debug, debug_365
    rx175_cur."!cursor_debug"("PASS", "octints", " at pos=", rx175_pos)
  debug_365:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 42
    if_null rx175_debug, debug_366
    rx175_cur."!cursor_debug"("NEXT", "octints")
  debug_366:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_367
    rx175_cur."!cursor_debug"("FAIL", "octints")
  debug_367:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1304277405.374") :method
.annotate 'line', 42
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx181_debug, debug_368
    rx181_cur."!cursor_debug"("START", "binint")
  debug_368:
    $I10 = self.'from'()
    ne $I10, -1, rxscan184_done
    goto rxscan184_scan
  rxscan184_loop:
    (rx181_pos) = rx181_cur."from"()
    inc rx181_pos
    rx181_cur."!cursor_from"(rx181_pos)
    ge rx181_pos, rx181_eos, rxscan184_done
  rxscan184_scan:
    set_addr $I10, rxscan184_loop
    rx181_cur."!mark_push"(0, rx181_pos, $I10)
  rxscan184_done:
.annotate 'line', 66
  # rx rxquantr185 ** 1..*
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(0, -1, $I10)
  rxquantr185_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx181_pos, rx181_off
    set rx181_rep, 0
    sub $I12, rx181_eos, rx181_pos
  rxenumcharlistq186_loop:
    le $I12, 0, rxenumcharlistq186_done
    substr $S10, rx181_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq186_done
    inc rx181_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq186_loop
  rxenumcharlistq186_done:
    lt rx181_rep, 1, rx181_fail
    add rx181_pos, rx181_pos, rx181_rep
    set_addr $I10, rxquantr185_done
    (rx181_rep) = rx181_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(rx181_rep, rx181_pos, $I10)
  # rx literal  "_"
    add $I11, rx181_pos, 1
    gt $I11, rx181_eos, rx181_fail
    sub $I11, rx181_pos, rx181_off
    ord $I11, rx181_tgt, $I11
    ne $I11, 95, rx181_fail
    add rx181_pos, 1
    goto rxquantr185_loop
  rxquantr185_done:
  # rx pass
    rx181_cur."!cursor_pass"(rx181_pos, "binint")
    if_null rx181_debug, debug_369
    rx181_cur."!cursor_debug"("PASS", "binint", " at pos=", rx181_pos)
  debug_369:
    .return (rx181_cur)
  rx181_restart:
.annotate 'line', 42
    if_null rx181_debug, debug_370
    rx181_cur."!cursor_debug"("NEXT", "binint")
  debug_370:
  rx181_fail:
    (rx181_rep, rx181_pos, $I10, $P10) = rx181_cur."!mark_fail"(0)
    lt rx181_pos, -1, rx181_done
    eq rx181_pos, -1, rx181_fail
    jump $I10
  rx181_done:
    rx181_cur."!cursor_fail"()
    if_null rx181_debug, debug_371
    rx181_cur."!cursor_debug"("FAIL", "binint")
  debug_371:
    .return (rx181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1304277405.374") :method
.annotate 'line', 42
    new $P183, "ResizablePMCArray"
    push $P183, ""
    .return ($P183)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx188_debug, debug_372
    rx188_cur."!cursor_debug"("START", "binints")
  debug_372:
    $I10 = self.'from'()
    ne $I10, -1, rxscan191_done
    goto rxscan191_scan
  rxscan191_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan191_done
  rxscan191_scan:
    set_addr $I10, rxscan191_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan191_done:
.annotate 'line', 67
  # rx rxquantr192 ** 1..*
    set_addr $I10, rxquantr192_done
    rx188_cur."!mark_push"(0, -1, $I10)
  rxquantr192_loop:
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
    set_addr $I10, rxquantr192_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr192_done
    rx188_cur."!mark_push"(rx188_rep, rx188_pos, $I10)
  # rx literal  ","
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 44, rx188_fail
    add rx188_pos, 1
    goto rxquantr192_loop
  rxquantr192_done:
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "binints")
    if_null rx188_debug, debug_373
    rx188_cur."!cursor_debug"("PASS", "binints", " at pos=", rx188_pos)
  debug_373:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 42
    if_null rx188_debug, debug_374
    rx188_cur."!cursor_debug"("NEXT", "binints")
  debug_374:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_375
    rx188_cur."!cursor_debug"("FAIL", "binints")
  debug_375:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1304277405.374") :method
.annotate 'line', 42
    new $P190, "ResizablePMCArray"
    push $P190, ""
    .return ($P190)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx194_debug, debug_376
    rx194_cur."!cursor_debug"("START", "integer")
  debug_376:
    $I10 = self.'from'()
    ne $I10, -1, rxscan202_done
    goto rxscan202_scan
  rxscan202_loop:
    (rx194_pos) = rx194_cur."from"()
    inc rx194_pos
    rx194_cur."!cursor_from"(rx194_pos)
    ge rx194_pos, rx194_eos, rxscan202_done
  rxscan202_scan:
    set_addr $I10, rxscan202_loop
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxscan202_done:
  alt203_0:
.annotate 'line', 70
    set_addr $I10, alt203_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 71
  # rx literal  "0"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 48, rx194_fail
    add rx194_pos, 1
  alt204_0:
    set_addr $I10, alt204_1
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
    goto alt204_end
  alt204_1:
    set_addr $I10, alt204_2
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
    goto alt204_end
  alt204_2:
    set_addr $I10, alt204_3
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
    goto alt204_end
  alt204_3:
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
  alt204_end:
.annotate 'line', 71
    goto alt203_end
  alt203_1:
.annotate 'line', 76
  # rx subrule "decint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."decint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx194_pos = $P10."pos"()
  alt203_end:
.annotate 'line', 69
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "integer")
    if_null rx194_debug, debug_377
    rx194_cur."!cursor_debug"("PASS", "integer", " at pos=", rx194_pos)
  debug_377:
    .return (rx194_cur)
  rx194_restart:
.annotate 'line', 42
    if_null rx194_debug, debug_378
    rx194_cur."!cursor_debug"("NEXT", "integer")
  debug_378:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_379
    rx194_cur."!cursor_debug"("FAIL", "integer")
  debug_379:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1304277405.374") :method
.annotate 'line', 42
    $P196 = self."!PREFIX__!subrule"("decint", "")
    $P197 = self."!PREFIX__!subrule"("decint", "0d")
    $P198 = self."!PREFIX__!subrule"("hexint", "0x")
    $P199 = self."!PREFIX__!subrule"("octint", "0o")
    $P200 = self."!PREFIX__!subrule"("binint", "0b")
    new $P201, "ResizablePMCArray"
    push $P201, $P196
    push $P201, $P197
    push $P201, $P198
    push $P201, $P199
    push $P201, $P200
    .return ($P201)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx206_debug, debug_380
    rx206_cur."!cursor_debug"("START", "dec_number")
  debug_380:
    $I10 = self.'from'()
    ne $I10, -1, rxscan209_done
    goto rxscan209_scan
  rxscan209_loop:
    (rx206_pos) = rx206_cur."from"()
    inc rx206_pos
    rx206_cur."!cursor_from"(rx206_pos)
    ge rx206_pos, rx206_eos, rxscan209_done
  rxscan209_scan:
    set_addr $I10, rxscan209_loop
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxscan209_done:
  alt210_0:
.annotate 'line', 80
    set_addr $I10, alt210_1
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_211_fail
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
    set_addr $I10, rxcap_211_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_211_done
  rxcap_211_fail:
    goto rx206_fail
  rxcap_211_done:
  # rx rxquantr212 ** 0..1
    set_addr $I10, rxquantr212_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr212_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule213_pass
  rxsubrule213_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule213_pass:
    set_addr $I10, rxsubrule213_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr212_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr212_done:
    goto alt210_end
  alt210_1:
    set_addr $I10, alt210_2
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 82
  # rx subcapture "coeff"
    set_addr $I10, rxcap_214_fail
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
    set_addr $I10, rxcap_214_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_214_done
  rxcap_214_fail:
    goto rx206_fail
  rxcap_214_done:
  # rx rxquantr215 ** 0..1
    set_addr $I10, rxquantr215_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr215_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule216_pass
  rxsubrule216_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule216_pass:
    set_addr $I10, rxsubrule216_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr215_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr215_done:
    goto alt210_end
  alt210_2:
.annotate 'line', 83
  # rx subcapture "coeff"
    set_addr $I10, rxcap_217_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_217_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_217_done
  rxcap_217_fail:
    goto rx206_fail
  rxcap_217_done:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
  alt210_end:
.annotate 'line', 80
  # rx pass
    rx206_cur."!cursor_pass"(rx206_pos, "dec_number")
    if_null rx206_debug, debug_381
    rx206_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx206_pos)
  debug_381:
    .return (rx206_cur)
  rx206_restart:
.annotate 'line', 42
    if_null rx206_debug, debug_382
    rx206_cur."!cursor_debug"("NEXT", "dec_number")
  debug_382:
  rx206_fail:
    (rx206_rep, rx206_pos, $I10, $P10) = rx206_cur."!mark_fail"(0)
    lt rx206_pos, -1, rx206_done
    eq rx206_pos, -1, rx206_fail
    jump $I10
  rx206_done:
    rx206_cur."!cursor_fail"()
    if_null rx206_debug, debug_383
    rx206_cur."!cursor_debug"("FAIL", "dec_number")
  debug_383:
    .return (rx206_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1304277405.374") :method
.annotate 'line', 42
    new $P208, "ResizablePMCArray"
    push $P208, ""
    push $P208, ""
    push $P208, "."
    .return ($P208)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx219_debug, debug_384
    rx219_cur."!cursor_debug"("START", "escale")
  debug_384:
    $I10 = self.'from'()
    ne $I10, -1, rxscan222_done
    goto rxscan222_scan
  rxscan222_loop:
    (rx219_pos) = rx219_cur."from"()
    inc rx219_pos
    rx219_cur."!cursor_from"(rx219_pos)
    ge rx219_pos, rx219_eos, rxscan222_done
  rxscan222_scan:
    set_addr $I10, rxscan222_loop
    rx219_cur."!mark_push"(0, rx219_pos, $I10)
  rxscan222_done:
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
    le $I12, 1, rxenumcharlistq223_loop
    set $I12, 1
  rxenumcharlistq223_loop:
    le $I12, 0, rxenumcharlistq223_done
    substr $S10, rx219_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq223_done
    inc rx219_rep
  rxenumcharlistq223_done:
    add rx219_pos, rx219_pos, rx219_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx219_pos, rx219_off
    find_not_cclass $I11, 8, rx219_tgt, $I10, rx219_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx219_fail
    add rx219_pos, rx219_off, $I11
  # rx pass
    rx219_cur."!cursor_pass"(rx219_pos, "escale")
    if_null rx219_debug, debug_385
    rx219_cur."!cursor_debug"("PASS", "escale", " at pos=", rx219_pos)
  debug_385:
    .return (rx219_cur)
  rx219_restart:
.annotate 'line', 42
    if_null rx219_debug, debug_386
    rx219_cur."!cursor_debug"("NEXT", "escale")
  debug_386:
  rx219_fail:
    (rx219_rep, rx219_pos, $I10, $P10) = rx219_cur."!mark_fail"(0)
    lt rx219_pos, -1, rx219_done
    eq rx219_pos, -1, rx219_fail
    jump $I10
  rx219_done:
    rx219_cur."!cursor_fail"()
    if_null rx219_debug, debug_387
    rx219_cur."!cursor_debug"("FAIL", "escale")
  debug_387:
    .return (rx219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1304277405.374") :method
.annotate 'line', 42
    new $P221, "ResizablePMCArray"
    push $P221, "e"
    push $P221, "E"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1304277405.374")
    .param pmc param_225
.annotate 'line', 88
    .lex "self", param_225
    $P226 = param_225."!protoregex"("quote_escape")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1304277405.374")
    .param pmc param_228
.annotate 'line', 88
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("quote_escape")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx231_debug, debug_388
    rx231_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_388:
    $I10 = self.'from'()
    ne $I10, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    (rx231_pos) = rx231_cur."from"()
    inc rx231_pos
    rx231_cur."!cursor_from"(rx231_pos)
    ge rx231_pos, rx231_eos, rxscan234_done
  rxscan234_scan:
    set_addr $I10, rxscan234_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan234_done:
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
    if_null rx231_debug, debug_389
    rx231_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx231_pos)
  debug_389:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 42
    if_null rx231_debug, debug_390
    rx231_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_390:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_391
    rx231_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_391:
    .return (rx231_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1304277405.374") :method
.annotate 'line', 42
    new $P233, "ResizablePMCArray"
    push $P233, "\\\\"
    .return ($P233)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx236_debug, debug_392
    rx236_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_392:
    $I10 = self.'from'()
    ne $I10, -1, rxscan239_done
    goto rxscan239_scan
  rxscan239_loop:
    (rx236_pos) = rx236_cur."from"()
    inc rx236_pos
    rx236_cur."!cursor_from"(rx236_pos)
    ge rx236_pos, rx236_eos, rxscan239_done
  rxscan239_scan:
    set_addr $I10, rxscan239_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan239_done:
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
    if_null rx236_debug, debug_393
    rx236_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx236_pos)
  debug_393:
    .return (rx236_cur)
  rx236_restart:
.annotate 'line', 42
    if_null rx236_debug, debug_394
    rx236_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_394:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_395
    rx236_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_395:
    .return (rx236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1304277405.374") :method
.annotate 'line', 42
    new $P238, "ResizablePMCArray"
    push $P238, "\\"
    .return ($P238)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx241_debug, debug_396
    rx241_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_396:
    $I10 = self.'from'()
    ne $I10, -1, rxscan244_done
    goto rxscan244_scan
  rxscan244_loop:
    (rx241_pos) = rx241_cur."from"()
    inc rx241_pos
    rx241_cur."!cursor_from"(rx241_pos)
    ge rx241_pos, rx241_eos, rxscan244_done
  rxscan244_scan:
    set_addr $I10, rxscan244_loop
    rx241_cur."!mark_push"(0, rx241_pos, $I10)
  rxscan244_done:
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
    if_null rx241_debug, debug_397
    rx241_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx241_pos)
  debug_397:
    .return (rx241_cur)
  rx241_restart:
.annotate 'line', 42
    if_null rx241_debug, debug_398
    rx241_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_398:
  rx241_fail:
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    if_null rx241_debug, debug_399
    rx241_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_399:
    .return (rx241_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1304277405.374") :method
.annotate 'line', 42
    new $P243, "ResizablePMCArray"
    push $P243, "\\b"
    .return ($P243)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx246_debug, debug_400
    rx246_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_400:
    $I10 = self.'from'()
    ne $I10, -1, rxscan249_done
    goto rxscan249_scan
  rxscan249_loop:
    (rx246_pos) = rx246_cur."from"()
    inc rx246_pos
    rx246_cur."!cursor_from"(rx246_pos)
    ge rx246_pos, rx246_eos, rxscan249_done
  rxscan249_scan:
    set_addr $I10, rxscan249_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan249_done:
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
    if_null rx246_debug, debug_401
    rx246_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx246_pos)
  debug_401:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 42
    if_null rx246_debug, debug_402
    rx246_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_402:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_403
    rx246_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_403:
    .return (rx246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1304277405.374") :method
.annotate 'line', 42
    new $P248, "ResizablePMCArray"
    push $P248, "\\n"
    .return ($P248)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx251_debug, debug_404
    rx251_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_404:
    $I10 = self.'from'()
    ne $I10, -1, rxscan254_done
    goto rxscan254_scan
  rxscan254_loop:
    (rx251_pos) = rx251_cur."from"()
    inc rx251_pos
    rx251_cur."!cursor_from"(rx251_pos)
    ge rx251_pos, rx251_eos, rxscan254_done
  rxscan254_scan:
    set_addr $I10, rxscan254_loop
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  rxscan254_done:
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
    if_null rx251_debug, debug_405
    rx251_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx251_pos)
  debug_405:
    .return (rx251_cur)
  rx251_restart:
.annotate 'line', 42
    if_null rx251_debug, debug_406
    rx251_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_406:
  rx251_fail:
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    if_null rx251_debug, debug_407
    rx251_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_407:
    .return (rx251_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1304277405.374") :method
.annotate 'line', 42
    new $P253, "ResizablePMCArray"
    push $P253, "\\r"
    .return ($P253)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx256_debug, debug_408
    rx256_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_408:
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
    if_null rx256_debug, debug_409
    rx256_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx256_pos)
  debug_409:
    .return (rx256_cur)
  rx256_restart:
.annotate 'line', 42
    if_null rx256_debug, debug_410
    rx256_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_410:
  rx256_fail:
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    if_null rx256_debug, debug_411
    rx256_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_411:
    .return (rx256_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1304277405.374") :method
.annotate 'line', 42
    new $P258, "ResizablePMCArray"
    push $P258, "\\t"
    .return ($P258)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx261_debug, debug_412
    rx261_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_412:
    $I10 = self.'from'()
    ne $I10, -1, rxscan264_done
    goto rxscan264_scan
  rxscan264_loop:
    (rx261_pos) = rx261_cur."from"()
    inc rx261_pos
    rx261_cur."!cursor_from"(rx261_pos)
    ge rx261_pos, rx261_eos, rxscan264_done
  rxscan264_scan:
    set_addr $I10, rxscan264_loop
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  rxscan264_done:
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
    if_null rx261_debug, debug_413
    rx261_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx261_pos)
  debug_413:
    .return (rx261_cur)
  rx261_restart:
.annotate 'line', 42
    if_null rx261_debug, debug_414
    rx261_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_414:
  rx261_fail:
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    if_null rx261_debug, debug_415
    rx261_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_415:
    .return (rx261_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1304277405.374") :method
.annotate 'line', 42
    new $P263, "ResizablePMCArray"
    push $P263, "\\f"
    .return ($P263)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx266_debug, debug_416
    rx266_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_416:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    (rx266_pos) = rx266_cur."from"()
    inc rx266_pos
    rx266_cur."!cursor_from"(rx266_pos)
    ge rx266_pos, rx266_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan269_done:
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
    if_null rx266_debug, debug_417
    rx266_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx266_pos)
  debug_417:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 42
    if_null rx266_debug, debug_418
    rx266_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_418:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_419
    rx266_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_419:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1304277405.374") :method
.annotate 'line', 42
    new $P268, "ResizablePMCArray"
    push $P268, "\\e"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx271_debug, debug_420
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_420:
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
  alt275_0:
.annotate 'line', 100
    set_addr $I10, alt275_1
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."hexint"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx271_pos = $P10."pos"()
    goto alt275_end
  alt275_1:
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
  alt275_end:
.annotate 'line', 98
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "quote_escape:sym<hex>")
    if_null rx271_debug, debug_421
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx271_pos)
  debug_421:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 42
    if_null rx271_debug, debug_422
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_422:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_423
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_423:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1304277405.374") :method
.annotate 'line', 42
    new $P273, "ResizablePMCArray"
    push $P273, unicode:"\\x"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx277_debug, debug_424
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_424:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    (rx277_pos) = rx277_cur."from"()
    inc rx277_pos
    rx277_cur."!cursor_from"(rx277_pos)
    ge rx277_pos, rx277_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan280_done:
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
  alt281_0:
.annotate 'line', 104
    set_addr $I10, alt281_1
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."octint"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx277_pos = $P10."pos"()
    goto alt281_end
  alt281_1:
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
  alt281_end:
.annotate 'line', 102
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "quote_escape:sym<oct>")
    if_null rx277_debug, debug_425
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx277_pos)
  debug_425:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 42
    if_null rx277_debug, debug_426
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_426:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_427
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_427:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1304277405.374") :method
.annotate 'line', 42
    new $P279, "ResizablePMCArray"
    push $P279, "\\o"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx283_debug, debug_428
    rx283_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_428:
    $I10 = self.'from'()
    ne $I10, -1, rxscan286_done
    goto rxscan286_scan
  rxscan286_loop:
    (rx283_pos) = rx283_cur."from"()
    inc rx283_pos
    rx283_cur."!cursor_from"(rx283_pos)
    ge rx283_pos, rx283_eos, rxscan286_done
  rxscan286_scan:
    set_addr $I10, rxscan286_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan286_done:
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
    if_null rx283_debug, debug_429
    rx283_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx283_pos)
  debug_429:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 42
    if_null rx283_debug, debug_430
    rx283_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_430:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_431
    rx283_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_431:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1304277405.374") :method
.annotate 'line', 42
    new $P285, "ResizablePMCArray"
    push $P285, "\\c"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx288_debug, debug_432
    rx288_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_432:
    $I10 = self.'from'()
    ne $I10, -1, rxscan291_done
    goto rxscan291_scan
  rxscan291_loop:
    (rx288_pos) = rx288_cur."from"()
    inc rx288_pos
    rx288_cur."!cursor_from"(rx288_pos)
    ge rx288_pos, rx288_eos, rxscan291_done
  rxscan291_scan:
    set_addr $I10, rxscan291_loop
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  rxscan291_done:
.annotate 'line', 107
  # rx literal  "\\"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 92, rx288_fail
    add rx288_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_292_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx literal  "0"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 48, rx288_fail
    add rx288_pos, 1
    set_addr $I10, rxcap_292_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_292_done
  rxcap_292_fail:
    goto rx288_fail
  rxcap_292_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."quotemod_check"("b")
    unless $P10, rx288_fail
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "quote_escape:sym<0>")
    if_null rx288_debug, debug_433
    rx288_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx288_pos)
  debug_433:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 42
    if_null rx288_debug, debug_434
    rx288_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_434:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_435
    rx288_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_435:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1304277405.374") :method
.annotate 'line', 42
    new $P290, "ResizablePMCArray"
    push $P290, "\\0"
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1304277405.374") :method :outer("11_1304277405.374")
.annotate 'line', 42
    .const 'Sub' $P313 = "97_1304277405.374" 
    capture_lex $P313
    .const 'Sub' $P306 = "96_1304277405.374" 
    capture_lex $P306
    .const 'Sub' $P301 = "95_1304277405.374" 
    capture_lex $P301
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
    if_null rx294_debug, debug_436
    rx294_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_436:
    $I10 = self.'from'()
    ne $I10, -1, rxscan297_done
    goto rxscan297_scan
  rxscan297_loop:
    (rx294_pos) = rx294_cur."from"()
    inc rx294_pos
    rx294_cur."!cursor_from"(rx294_pos)
    ge rx294_pos, rx294_eos, rxscan297_done
  rxscan297_scan:
    set_addr $I10, rxscan297_loop
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  rxscan297_done:
.annotate 'line', 109
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P298, unicode:"$\x{a2}"
    $P299 = $P298."MATCH"()
    store_lex "$/", $P299
    .const 'Sub' $P301 = "95_1304277405.374" 
    capture_lex $P301
    $P302 = $P301()
  # rx literal  "\\"
    add $I11, rx294_pos, 1
    gt $I11, rx294_eos, rx294_fail
    sub $I11, rx294_pos, rx294_off
    ord $I11, rx294_tgt, $I11
    ne $I11, 92, rx294_fail
    add rx294_pos, 1
  alt303_0:
.annotate 'line', 110
    set_addr $I10, alt303_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 111
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    $P10 = rx294_cur."quotemod_check"("b")
    unless $P10, rx294_fail
  alt304_0:
.annotate 'line', 112
    set_addr $I10, alt304_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 113
  # rx subrule $P306 subtype=capture negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    .const 'Sub' $P306 = "96_1304277405.374" 
    capture_lex $P306
    $P10 = rx294_cur.$P306()
    unless $P10, rx294_fail
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx294_pos = $P10."pos"()
    goto alt304_end
  alt304_1:
.annotate 'line', 114
  # rx subcapture "x"
    set_addr $I10, rxcap_309_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass w
    ge rx294_pos, rx294_eos, rx294_fail
    sub $I10, rx294_pos, rx294_off
    is_cclass $I11, 8192, rx294_tgt, $I10
    unless $I11, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_309_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_309_done
  rxcap_309_fail:
    goto rx294_fail
  rxcap_309_done:
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P310, unicode:"$\x{a2}"
    $P311 = $P310."MATCH"()
    store_lex "$/", $P311
    .const 'Sub' $P313 = "97_1304277405.374" 
    capture_lex $P313
    $P323 = $P313()
  alt304_end:
.annotate 'line', 111
    goto alt303_end
  alt303_1:
.annotate 'line', 116
  # rx subcapture "textq"
    set_addr $I10, rxcap_324_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass .
    ge rx294_pos, rx294_eos, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_324_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_324_done
  rxcap_324_fail:
    goto rx294_fail
  rxcap_324_done:
  alt303_end:
.annotate 'line', 108
  # rx pass
    rx294_cur."!cursor_pass"(rx294_pos, "quote_escape:sym<misc>")
    if_null rx294_debug, debug_444
    rx294_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx294_pos)
  debug_444:
    .return (rx294_cur)
  rx294_restart:
.annotate 'line', 42
    if_null rx294_debug, debug_445
    rx294_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_445:
  rx294_fail:
    (rx294_rep, rx294_pos, $I10, $P10) = rx294_cur."!mark_fail"(0)
    lt rx294_pos, -1, rx294_done
    eq rx294_pos, -1, rx294_fail
    jump $I10
  rx294_done:
    rx294_cur."!cursor_fail"()
    if_null rx294_debug, debug_446
    rx294_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_446:
    .return (rx294_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1304277405.374") :method
.annotate 'line', 42
    new $P296, "ResizablePMCArray"
    push $P296, ""
    .return ($P296)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block300"  :anon :subid("95_1304277405.374") :outer("93_1304277405.374")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block305"  :anon :subid("96_1304277405.374") :method :outer("93_1304277405.374")
.annotate 'line', 113
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    .local pmc rx307_debug
    (rx307_cur, rx307_pos, rx307_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx307_cur
    .local pmc match
    .lex "$/", match
    length rx307_eos, rx307_tgt
    gt rx307_pos, rx307_eos, rx307_done
    set rx307_off, 0
    lt rx307_pos, 2, rx307_start
    sub rx307_off, rx307_pos, 1
    substr rx307_tgt, rx307_tgt, rx307_off
  rx307_start:
    eq $I10, 1, rx307_restart
    if_null rx307_debug, debug_437
    rx307_cur."!cursor_debug"("START", "")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan308_done
    goto rxscan308_scan
  rxscan308_loop:
    (rx307_pos) = rx307_cur."from"()
    inc rx307_pos
    rx307_cur."!cursor_from"(rx307_pos)
    ge rx307_pos, rx307_eos, rxscan308_done
  rxscan308_scan:
    set_addr $I10, rxscan308_loop
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  rxscan308_done:
  # rx charclass W
    ge rx307_pos, rx307_eos, rx307_fail
    sub $I10, rx307_pos, rx307_off
    is_cclass $I11, 8192, rx307_tgt, $I10
    if $I11, rx307_fail
    inc rx307_pos
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "")
    if_null rx307_debug, debug_438
    rx307_cur."!cursor_debug"("PASS", "", " at pos=", rx307_pos)
  debug_438:
    .return (rx307_cur)
  rx307_restart:
    if_null rx307_debug, debug_439
    rx307_cur."!cursor_debug"("NEXT", "")
  debug_439:
  rx307_fail:
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    if_null rx307_debug, debug_440
    rx307_cur."!cursor_debug"("FAIL", "")
  debug_440:
    .return (rx307_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block312"  :anon :subid("97_1304277405.374") :outer("93_1304277405.374")
.annotate 'line', 114
    find_lex $P314, "$/"
    unless_null $P314, vivify_441
    new $P314, "Undef"
  vivify_441:
    $P315 = $P314."CURSOR"()
    new $P316, "String"
    assign $P316, "Unrecognized backslash sequence: '\\"
    find_lex $P317, "$/"
    unless_null $P317, vivify_442
    $P317 = root_new ['parrot';'Hash']
  vivify_442:
    set $P318, $P317["x"]
    unless_null $P318, vivify_443
    new $P318, "Undef"
  vivify_443:
    $S319 = $P318."Str"()
    concat $P320, $P316, $S319
    concat $P321, $P320, "'"
    $P322 = $P315."panic"($P321)
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1304277405.374") :method :outer("11_1304277405.374")
.annotate 'line', 42
    .const 'Sub' $P335 = "100_1304277405.374" 
    capture_lex $P335
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
    if_null rx326_debug, debug_447
    rx326_cur."!cursor_debug"("START", "charname")
  debug_447:
    $I10 = self.'from'()
    ne $I10, -1, rxscan330_done
    goto rxscan330_scan
  rxscan330_loop:
    (rx326_pos) = rx326_cur."from"()
    inc rx326_pos
    rx326_cur."!cursor_from"(rx326_pos)
    ge rx326_pos, rx326_eos, rxscan330_done
  rxscan330_scan:
    set_addr $I10, rxscan330_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
  rxscan330_done:
  alt331_0:
.annotate 'line', 120
    set_addr $I10, alt331_1
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
.annotate 'line', 121
  # rx subrule "integer" subtype=capture negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."integer"()
    unless $P10, rx326_fail
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx326_pos = $P10."pos"()
    goto alt331_end
  alt331_1:
.annotate 'line', 122
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
  # rx rxquantf332 ** 0..*
    set_addr $I10, rxquantf332_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
    goto rxquantf332_done
  rxquantf332_loop:
  # rx enumcharlist negate=1 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx326_fail
    inc rx326_pos
    set_addr $I10, rxquantf332_loop
    rx326_cur."!mark_push"(rx326_rep, rx326_pos, $I10)
  rxquantf332_done:
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
    .const 'Sub' $P335 = "100_1304277405.374" 
    capture_lex $P335
    $P10 = rx326_cur."before"($P335)
    unless $P10, rx326_fail
  alt331_end:
.annotate 'line', 120
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "charname")
    if_null rx326_debug, debug_452
    rx326_cur."!cursor_debug"("PASS", "charname", " at pos=", rx326_pos)
  debug_452:
    .return (rx326_cur)
  rx326_restart:
.annotate 'line', 42
    if_null rx326_debug, debug_453
    rx326_cur."!cursor_debug"("NEXT", "charname")
  debug_453:
  rx326_fail:
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    if_null rx326_debug, debug_454
    rx326_cur."!cursor_debug"("FAIL", "charname")
  debug_454:
    .return (rx326_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1304277405.374") :method
.annotate 'line', 42
    $P328 = self."!PREFIX__!subrule"("integer", "")
    new $P329, "ResizablePMCArray"
    push $P329, "Z"
    push $P329, "Y"
    push $P329, "X"
    push $P329, "W"
    push $P329, "V"
    push $P329, "U"
    push $P329, "T"
    push $P329, "S"
    push $P329, "R"
    push $P329, "Q"
    push $P329, "P"
    push $P329, "O"
    push $P329, "N"
    push $P329, "M"
    push $P329, "L"
    push $P329, "K"
    push $P329, "J"
    push $P329, "I"
    push $P329, "H"
    push $P329, "G"
    push $P329, "F"
    push $P329, "E"
    push $P329, "D"
    push $P329, "C"
    push $P329, "B"
    push $P329, "A"
    push $P329, "z"
    push $P329, "y"
    push $P329, "x"
    push $P329, "w"
    push $P329, "v"
    push $P329, "u"
    push $P329, "t"
    push $P329, "s"
    push $P329, "r"
    push $P329, "q"
    push $P329, "p"
    push $P329, "o"
    push $P329, "n"
    push $P329, "m"
    push $P329, "l"
    push $P329, "k"
    push $P329, "j"
    push $P329, "i"
    push $P329, "h"
    push $P329, "g"
    push $P329, "f"
    push $P329, "e"
    push $P329, "d"
    push $P329, "c"
    push $P329, "b"
    push $P329, "a"
    push $P329, $P328
    .return ($P329)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block334"  :anon :subid("100_1304277405.374") :method :outer("98_1304277405.374")
.annotate 'line', 123
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    .local pmc rx336_debug
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx336_cur
    .local pmc match
    .lex "$/", match
    length rx336_eos, rx336_tgt
    gt rx336_pos, rx336_eos, rx336_done
    set rx336_off, 0
    lt rx336_pos, 2, rx336_start
    sub rx336_off, rx336_pos, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
    eq $I10, 1, rx336_restart
    if_null rx336_debug, debug_448
    rx336_cur."!cursor_debug"("START", "")
  debug_448:
    $I10 = self.'from'()
    ne $I10, -1, rxscan337_done
    goto rxscan337_scan
  rxscan337_loop:
    (rx336_pos) = rx336_cur."from"()
    inc rx336_pos
    rx336_cur."!cursor_from"(rx336_pos)
    ge rx336_pos, rx336_eos, rxscan337_done
  rxscan337_scan:
    set_addr $I10, rxscan337_loop
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  rxscan337_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx336_pos, rx336_off
    find_not_cclass $I11, 32, rx336_tgt, $I10, rx336_eos
    add rx336_pos, rx336_off, $I11
  # rx enumcharlist negate=0 
    ge rx336_pos, rx336_eos, rx336_fail
    sub $I10, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx336_fail
    inc rx336_pos
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "")
    if_null rx336_debug, debug_449
    rx336_cur."!cursor_debug"("PASS", "", " at pos=", rx336_pos)
  debug_449:
    .return (rx336_cur)
  rx336_restart:
    if_null rx336_debug, debug_450
    rx336_cur."!cursor_debug"("NEXT", "")
  debug_450:
  rx336_fail:
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    if_null rx336_debug, debug_451
    rx336_cur."!cursor_debug"("FAIL", "")
  debug_451:
    .return (rx336_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx339_debug, debug_455
    rx339_cur."!cursor_debug"("START", "charnames")
  debug_455:
    $I10 = self.'from'()
    ne $I10, -1, rxscan342_done
    goto rxscan342_scan
  rxscan342_loop:
    (rx339_pos) = rx339_cur."from"()
    inc rx339_pos
    rx339_cur."!cursor_from"(rx339_pos)
    ge rx339_pos, rx339_eos, rxscan342_done
  rxscan342_scan:
    set_addr $I10, rxscan342_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan342_done:
.annotate 'line', 125
  # rx rxquantr343 ** 1..*
    set_addr $I10, rxquantr343_done
    rx339_cur."!mark_push"(0, -1, $I10)
  rxquantr343_loop:
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
    set_addr $I10, rxquantr343_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr343_done
    rx339_cur."!mark_push"(rx339_rep, rx339_pos, $I10)
  # rx literal  ","
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 44, rx339_fail
    add rx339_pos, 1
    goto rxquantr343_loop
  rxquantr343_done:
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "charnames")
    if_null rx339_debug, debug_456
    rx339_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx339_pos)
  debug_456:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 42
    if_null rx339_debug, debug_457
    rx339_cur."!cursor_debug"("NEXT", "charnames")
  debug_457:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_458
    rx339_cur."!cursor_debug"("FAIL", "charnames")
  debug_458:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1304277405.374") :method
.annotate 'line', 42
    new $P341, "ResizablePMCArray"
    push $P341, ""
    .return ($P341)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1304277405.374") :method :outer("11_1304277405.374")
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
    if_null rx345_debug, debug_459
    rx345_cur."!cursor_debug"("START", "charspec")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan350_done
    goto rxscan350_scan
  rxscan350_loop:
    (rx345_pos) = rx345_cur."from"()
    inc rx345_pos
    rx345_cur."!cursor_from"(rx345_pos)
    ge rx345_pos, rx345_eos, rxscan350_done
  rxscan350_scan:
    set_addr $I10, rxscan350_loop
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxscan350_done:
  alt351_0:
.annotate 'line', 127
    set_addr $I10, alt351_1
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
    goto alt351_end
  alt351_1:
    set_addr $I10, alt351_2
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 129
  # rx charclass_q d r 1..-1
    sub $I10, rx345_pos, rx345_off
    find_not_cclass $I11, 8, rx345_tgt, $I10, rx345_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx345_fail
    add rx345_pos, rx345_off, $I11
  # rx rxquantr352 ** 0..*
    set_addr $I10, rxquantr352_done
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxquantr352_loop:
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
    set_addr $I10, rxquantr352_done
    (rx345_rep) = rx345_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr352_done
    rx345_cur."!mark_push"(rx345_rep, rx345_pos, $I10)
    goto rxquantr352_loop
  rxquantr352_done:
    goto alt351_end
  alt351_2:
    set_addr $I10, alt351_3
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 130
  # rx enumcharlist negate=0 
    ge rx345_pos, rx345_eos, rx345_fail
    sub $I10, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx345_fail
    inc rx345_pos
    goto alt351_end
  alt351_3:
.annotate 'line', 131
  # rx subrule "panic" subtype=method negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."panic"("Unrecognized \\c character")
    unless $P10, rx345_fail
    rx345_pos = $P10."pos"()
  alt351_end:
.annotate 'line', 126
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "charspec")
    if_null rx345_debug, debug_460
    rx345_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx345_pos)
  debug_460:
    .return (rx345_cur)
  rx345_restart:
.annotate 'line', 42
    if_null rx345_debug, debug_461
    rx345_cur."!cursor_debug"("NEXT", "charspec")
  debug_461:
  rx345_fail:
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    if_null rx345_debug, debug_462
    rx345_cur."!cursor_debug"("FAIL", "charspec")
  debug_462:
    .return (rx345_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1304277405.374") :method
.annotate 'line', 42
    $P347 = self."!PREFIX__!subrule"("panic", "")
    $P348 = self."!PREFIX__!subrule"("charnames", "[")
    new $P349, "ResizablePMCArray"
    push $P349, $P347
    push $P349, "Z"
    push $P349, "Y"
    push $P349, "X"
    push $P349, "W"
    push $P349, "V"
    push $P349, "U"
    push $P349, "T"
    push $P349, "S"
    push $P349, "R"
    push $P349, "Q"
    push $P349, "P"
    push $P349, "O"
    push $P349, "N"
    push $P349, "M"
    push $P349, "L"
    push $P349, "K"
    push $P349, "J"
    push $P349, "I"
    push $P349, "H"
    push $P349, "G"
    push $P349, "F"
    push $P349, "E"
    push $P349, "D"
    push $P349, "C"
    push $P349, "B"
    push $P349, "A"
    push $P349, "@"
    push $P349, "?"
    push $P349, ""
    push $P349, $P348
    .return ($P349)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1304277405.374") :outer("11_1304277405.374")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356 :optional
    .param int has_param_356 :opt_flag
.annotate 'line', 177
    .lex "self", param_354
    .lex "$spec", param_355
    if has_param_356, optparam_463
    new $P357, "Undef"
    set param_356, $P357
  optparam_463:
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
.sub "panic"  :subid("106_1304277405.374") :outer("11_1304277405.374")
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
    unless_null $P371, vivify_464
    $P371 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
    $P371."push"(" at line ")
.annotate 'line', 329
    find_lex $P372, "@args"
    unless_null $P372, vivify_465
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    get_hll_global $P373, "GLOBAL"
    nqp_get_package_through_who $P374, $P373, "HLL"
    get_who $P375, $P374
    set $P376, $P375["Compiler"]
    find_lex $P377, "$target"
    unless_null $P377, vivify_466
    new $P377, "Undef"
  vivify_466:
    find_lex $P378, "$pos"
    unless_null $P378, vivify_467
    new $P378, "Undef"
  vivify_467:
    $P379 = $P376."lineof"($P377, $P378)
    add $P380, $P379, 1
    $P372."push"($P380)
.annotate 'line', 330
    find_lex $P381, "@args"
    unless_null $P381, vivify_468
    $P381 = root_new ['parrot';'ResizablePMCArray']
  vivify_468:
    $P381."push"(", near \"")
.annotate 'line', 331
    find_lex $P382, "@args"
    unless_null $P382, vivify_469
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    find_lex $P383, "$target"
    unless_null $P383, vivify_470
    new $P383, "Undef"
  vivify_470:
    set $S384, $P383
    find_lex $P385, "$pos"
    unless_null $P385, vivify_471
    new $P385, "Undef"
  vivify_471:
    set $I386, $P385
    substr $S387, $S384, $I386, 10
    escape $S388, $S387
    $P382."push"($S388)
.annotate 'line', 332
    find_lex $P389, "@args"
    unless_null $P389, vivify_472
    $P389 = root_new ['parrot';'ResizablePMCArray']
  vivify_472:
    $P389."push"("\"")
.annotate 'line', 333
    find_lex $P390, "@args"
    unless_null $P390, vivify_473
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
    join $S391, "", $P390
    die $S391
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1304277405.374") :outer("11_1304277405.374")
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
.sub "quote_EXPR"  :subid("108_1304277405.374") :outer("11_1304277405.374")
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
.sub "quotemod_check"  :subid("109_1304277405.374") :outer("11_1304277405.374")
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 479
    .lex "self", param_400
    .lex "$mod", param_401
    find_lex $P402, "$mod"
    unless_null $P402, vivify_474
    new $P402, "Undef"
  vivify_474:
    find_dynamic_lex $P405, "%*QUOTEMOD"
    unless_null $P405, vivify_475
    get_hll_global $P403, "GLOBAL"
    get_who $P404, $P403
    set $P405, $P404["%QUOTEMOD"]
    unless_null $P405, vivify_476
    die "Contextual %*QUOTEMOD not found"
  vivify_476:
  vivify_475:
    set $P406, $P405[$P402]
    unless_null $P406, vivify_477
    new $P406, "Undef"
  vivify_477:
    .return ($P406)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1304277405.374") :outer("11_1304277405.374")
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
.sub "stopper"  :subid("111_1304277405.374") :outer("11_1304277405.374")
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
.sub "split_words"  :subid("112_1304277405.374") :outer("11_1304277405.374")
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
.sub "EXPR"  :subid("113_1304277405.374") :outer("11_1304277405.374")
    .param pmc param_415
    .param pmc param_416 :optional
    .param int has_param_416 :opt_flag
.annotate 'line', 561
    .lex "self", param_415
    if has_param_416, optparam_478
    new $P417, "String"
    assign $P417, ""
    set param_416, $P417
  optparam_478:
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
.sub "EXPR_reduce"  :subid("114_1304277405.374") :outer("11_1304277405.374")
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
.sub "ternary"  :subid("115_1304277405.374") :outer("11_1304277405.374")
    .param pmc param_423
    .param pmc param_424
.annotate 'line', 811
    .lex "self", param_423
    .lex "$match", param_424
.annotate 'line', 812
    find_lex $P425, "$match"
    unless_null $P425, vivify_479
    $P425 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
    set $P426, $P425[1]
    unless_null $P426, vivify_480
    new $P426, "Undef"
  vivify_480:
    find_lex $P427, "$match"
    unless_null $P427, vivify_481
    $P427 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P427
  vivify_481:
    set $P427[2], $P426
.annotate 'line', 813
    find_lex $P428, "$match"
    unless_null $P428, vivify_482
    $P428 = root_new ['parrot';'Hash']
  vivify_482:
    set $P429, $P428["infix"]
    unless_null $P429, vivify_483
    $P429 = root_new ['parrot';'Hash']
  vivify_483:
    set $P430, $P429["EXPR"]
    unless_null $P430, vivify_484
    new $P430, "Undef"
  vivify_484:
    find_lex $P431, "$match"
    unless_null $P431, vivify_485
    $P431 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P431
  vivify_485:
    set $P431[1], $P430
.annotate 'line', 811
    .return ($P430)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1304277405.374") :outer("11_1304277405.374")
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
    unless_null $P440, vivify_486
    new $P440, "Undef"
  vivify_486:
    find_lex $P441, "$pos"
    unless_null $P441, vivify_487
    new $P441, "Undef"
  vivify_487:
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
    unless_null $P443, vivify_488
    new $P443, "Undef"
  vivify_488:
    find_lex $P444, "$markname"
    unless_null $P444, vivify_489
    new $P444, "Undef"
  vivify_489:
    find_lex $P445, "%markhash"
    unless_null $P445, vivify_490
    $P445 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P445
  vivify_490:
    set $P445[$P444], $P443
.annotate 'line', 827
    find_lex $P446, "self"
    $P446."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1304277405.374") :outer("11_1304277405.374")
    .param pmc param_448
    .param pmc param_449
.annotate 'line', 831
    .lex "self", param_448
    .lex "$markname", param_449
.annotate 'line', 832
    find_lex $P450, "self"
    find_lex $P451, "$markname"
    unless_null $P451, vivify_491
    new $P451, "Undef"
  vivify_491:
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
.sub "LANG"  :subid("118_1304277405.374") :outer("11_1304277405.374")
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
    unless_null $P459, vivify_492
    new $P459, "Undef"
  vivify_492:
    find_dynamic_lex $P462, "%*LANG"
    unless_null $P462, vivify_493
    get_hll_global $P460, "GLOBAL"
    get_who $P461, $P460
    set $P462, $P461["%LANG"]
    unless_null $P462, vivify_494
    die "Contextual %*LANG not found"
  vivify_494:
  vivify_493:
    set $P463, $P462[$P459]
    unless_null $P463, vivify_495
    new $P463, "Undef"
  vivify_495:
    store_lex "$lang_cursor", $P463
.annotate 'line', 853
    find_lex $P464, "$lang"
    unless_null $P464, vivify_496
    new $P464, "Undef"
  vivify_496:
    concat $P465, $P464, "-actions"
    find_dynamic_lex $P468, "%*LANG"
    unless_null $P468, vivify_497
    get_hll_global $P466, "GLOBAL"
    get_who $P467, $P466
    set $P468, $P467["%LANG"]
    unless_null $P468, vivify_498
    die "Contextual %*LANG not found"
  vivify_498:
  vivify_497:
    set $P469, $P468[$P465]
    unless_null $P469, vivify_499
    new $P469, "Undef"
  vivify_499:
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
    unless_null $P471, vivify_500
    new $P471, "Undef"
  vivify_500:
    find_lex $P472, "$regex"
    unless_null $P472, vivify_501
    new $P472, "Undef"
  vivify_501:
    set $S473, $P472
    $P474 = $P471.$S473()
.annotate 'line', 851
    .return ($P474)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block555"  :subid("120_1304277405.374") :outer("10_1304277405.374")
.annotate 'line', 867
    .const 'Sub' $P1241 = "166_1304277405.374" 
    capture_lex $P1241
    .const 'Sub' $P1224 = "165_1304277405.374" 
    capture_lex $P1224
    .const 'Sub' $P1201 = "163_1304277405.374" 
    capture_lex $P1201
    .const 'Sub' $P1173 = "162_1304277405.374" 
    capture_lex $P1173
    .const 'Sub' $P1156 = "161_1304277405.374" 
    capture_lex $P1156
    .const 'Sub' $P1151 = "160_1304277405.374" 
    capture_lex $P1151
    .const 'Sub' $P1143 = "159_1304277405.374" 
    capture_lex $P1143
    .const 'Sub' $P1128 = "158_1304277405.374" 
    capture_lex $P1128
    .const 'Sub' $P1113 = "157_1304277405.374" 
    capture_lex $P1113
    .const 'Sub' $P1108 = "156_1304277405.374" 
    capture_lex $P1108
    .const 'Sub' $P1103 = "155_1304277405.374" 
    capture_lex $P1103
    .const 'Sub' $P1098 = "154_1304277405.374" 
    capture_lex $P1098
    .const 'Sub' $P1093 = "153_1304277405.374" 
    capture_lex $P1093
    .const 'Sub' $P1088 = "152_1304277405.374" 
    capture_lex $P1088
    .const 'Sub' $P1083 = "151_1304277405.374" 
    capture_lex $P1083
    .const 'Sub' $P1075 = "150_1304277405.374" 
    capture_lex $P1075
    .const 'Sub' $P1070 = "149_1304277405.374" 
    capture_lex $P1070
    .const 'Sub' $P1056 = "148_1304277405.374" 
    capture_lex $P1056
    .const 'Sub' $P974 = "146_1304277405.374" 
    capture_lex $P974
    .const 'Sub' $P897 = "143_1304277405.374" 
    capture_lex $P897
    .const 'Sub' $P890 = "142_1304277405.374" 
    capture_lex $P890
    .const 'Sub' $P883 = "141_1304277405.374" 
    capture_lex $P883
    .const 'Sub' $P876 = "140_1304277405.374" 
    capture_lex $P876
    .const 'Sub' $P869 = "139_1304277405.374" 
    capture_lex $P869
    .const 'Sub' $P862 = "138_1304277405.374" 
    capture_lex $P862
    .const 'Sub' $P854 = "137_1304277405.374" 
    capture_lex $P854
    .const 'Sub' $P846 = "136_1304277405.374" 
    capture_lex $P846
    .const 'Sub' $P840 = "135_1304277405.374" 
    capture_lex $P840
    .const 'Sub' $P832 = "134_1304277405.374" 
    capture_lex $P832
    .const 'Sub' $P824 = "133_1304277405.374" 
    capture_lex $P824
    .const 'Sub' $P716 = "130_1304277405.374" 
    capture_lex $P716
    .const 'Sub' $P676 = "127_1304277405.374" 
    capture_lex $P676
    .const 'Sub' $P668 = "126_1304277405.374" 
    capture_lex $P668
    .const 'Sub' $P629 = "123_1304277405.374" 
    capture_lex $P629
    .const 'Sub' $P557 = "121_1304277405.374" 
    capture_lex $P557
.annotate 'line', 868
    .const 'Sub' $P557 = "121_1304277405.374" 
    newclosure $P625, $P557
    .lex "string_to_int", $P625
.annotate 'line', 867
    find_lex $P626, "string_to_int"
    find_lex $P627, "$?PACKAGE"
    get_who $P628, $P627
    set $P628["string_to_int"], $P626
.annotate 'line', 887
    .const 'Sub' $P629 = "123_1304277405.374" 
    newclosure $P660, $P629
    .lex "ints_to_string", $P660
.annotate 'line', 867
    find_lex $P661, "ints_to_string"
    find_lex $P662, "$?PACKAGE"
    get_who $P663, $P662
    set $P663["ints_to_string"], $P661
    .lex "$?PACKAGE", $P664
    .lex "$?CLASS", $P665
    find_lex $P666, "string_to_int"
    find_lex $P667, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1224 = "165_1304277405.374" 
    newclosure $P1239, $P1224
.annotate 'line', 867
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post502") :outer("120_1304277405.374")
.annotate 'line', 867
    .const 'Sub' $P556 = "120_1304277405.374" 
    .local pmc block
    set block, $P556
    .const 'Sub' $P1241 = "166_1304277405.374" 
    capture_lex $P1241
    $P1241()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1240"  :anon :subid("166_1304277405.374") :outer("120_1304277405.374")
.annotate 'line', 867
    nqp_get_sc_object $P1242, "1304277396.391", 68
    .local pmc type_obj
    set type_obj, $P1242
    get_how $P1243, type_obj
    $P1244 = $P1243."compose"(type_obj)
    .return ($P1244)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_558
    .param pmc param_559
.annotate 'line', 868
    .const 'Sub' $P575 = "122_1304277405.374" 
    capture_lex $P575
    .lex "$src", param_558
    .lex "$base", param_559
.annotate 'line', 869
    new $P560, "Undef"
    .lex "$len", $P560
.annotate 'line', 870
    new $P561, "Undef"
    .lex "$i", $P561
.annotate 'line', 871
    new $P562, "Undef"
    .lex "$result", $P562
.annotate 'line', 869
    find_lex $P563, "$src"
    unless_null $P563, vivify_503
    new $P563, "Undef"
  vivify_503:
    set $S564, $P563
    length $I565, $S564
    new $P566, 'Integer'
    set $P566, $I565
    store_lex "$len", $P566
.annotate 'line', 870
    new $P567, "Integer"
    assign $P567, 0
    store_lex "$i", $P567
.annotate 'line', 871
    new $P568, "Integer"
    assign $P568, 0
    store_lex "$result", $P568
.annotate 'line', 873
    new $P622, 'ExceptionHandler'
    set_label $P622, loop621_handler
    $P622."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P622
  loop621_test:
    find_lex $P569, "$i"
    unless_null $P569, vivify_504
    new $P569, "Undef"
  vivify_504:
    set $N570, $P569
    find_lex $P571, "$len"
    unless_null $P571, vivify_505
    new $P571, "Undef"
  vivify_505:
    set $N572, $P571
    islt $I573, $N570, $N572
    unless $I573, loop621_done
  loop621_redo:
    .const 'Sub' $P575 = "122_1304277405.374" 
    capture_lex $P575
    $P575()
  loop621_next:
    goto loop621_test
  loop621_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P623, exception, 'type'
    eq $P623, .CONTROL_LOOP_NEXT, loop621_next
    eq $P623, .CONTROL_LOOP_REDO, loop621_redo
  loop621_done:
    pop_eh 
    find_lex $P624, "$result"
    unless_null $P624, vivify_520
    new $P624, "Undef"
  vivify_520:
.annotate 'line', 868
    .return ($P624)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block574"  :anon :subid("122_1304277405.374") :outer("121_1304277405.374")
.annotate 'line', 874
    new $P576, "Undef"
    .lex "$char", $P576
.annotate 'line', 876
    new $P577, "Undef"
    .lex "$digitval", $P577
.annotate 'line', 874
    find_lex $P578, "$src"
    unless_null $P578, vivify_506
    new $P578, "Undef"
  vivify_506:
    set $S579, $P578
    find_lex $P580, "$i"
    unless_null $P580, vivify_507
    new $P580, "Undef"
  vivify_507:
    set $I581, $P580
    substr $S582, $S579, $I581, 1
    new $P583, 'String'
    set $P583, $S582
    store_lex "$char", $P583
.annotate 'line', 875
    find_lex $P585, "$char"
    unless_null $P585, vivify_508
    new $P585, "Undef"
  vivify_508:
    set $S586, $P585
    iseq $I587, $S586, "_"
    unless $I587, if_584_end
    set $I588, .CONTROL_LOOP_NEXT
    die 0, $I588
  if_584_end:
.annotate 'line', 876
    find_lex $P589, "$char"
    unless_null $P589, vivify_509
    new $P589, "Undef"
  vivify_509:
    set $S590, $P589
    index $I591, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S590
    new $P592, 'Integer'
    set $P592, $I591
    store_lex "$digitval", $P592
.annotate 'line', 877
    find_lex $P593, "$digitval"
    unless_null $P593, vivify_510
    new $P593, "Undef"
  vivify_510:
    div $P594, $P593, 2
    set $I595, $P594
    new $P596, 'Integer'
    set $P596, $I595
    store_lex "$digitval", $P596
.annotate 'line', 878
    find_lex $P600, "$digitval"
    unless_null $P600, vivify_511
    new $P600, "Undef"
  vivify_511:
    set $N601, $P600
    islt $I602, $N601, 0.0
    unless $I602, unless_599
    new $P598, 'Integer'
    set $P598, $I602
    goto unless_599_end
  unless_599:
    find_lex $P603, "$digitval"
    unless_null $P603, vivify_512
    new $P603, "Undef"
  vivify_512:
    set $N604, $P603
    find_lex $P605, "$base"
    unless_null $P605, vivify_513
    new $P605, "Undef"
  vivify_513:
    set $N606, $P605
    isge $I607, $N604, $N606
    new $P598, 'Integer'
    set $P598, $I607
  unless_599_end:
    unless $P598, if_597_end
.annotate 'line', 879
    find_lex $P608, "$src"
    unless_null $P608, vivify_514
    new $P608, "Undef"
  vivify_514:
    new $P609, 'String'
    set $P609, "Invalid radix conversion of character '"
    find_lex $P610, "$char"
    unless_null $P610, vivify_515
    new $P610, "Undef"
  vivify_515:
    concat $P611, $P609, $P610
    concat $P612, $P611, "'"
    $P608."panic"($P612)
  if_597_end:
.annotate 'line', 881
    find_lex $P613, "$base"
    unless_null $P613, vivify_516
    new $P613, "Undef"
  vivify_516:
    find_lex $P614, "$result"
    unless_null $P614, vivify_517
    new $P614, "Undef"
  vivify_517:
    mul $P615, $P613, $P614
    find_lex $P616, "$digitval"
    unless_null $P616, vivify_518
    new $P616, "Undef"
  vivify_518:
    add $P617, $P615, $P616
    store_lex "$result", $P617
.annotate 'line', 882
    find_lex $P618, "$i"
    unless_null $P618, vivify_519
    new $P618, "Undef"
  vivify_519:
    add $P619, $P618, 1
    store_lex "$i", $P619
    new $P620, "ResizablePMCArray"
    push $P620, $P617
    push $P620, $P619
.annotate 'line', 873
    .return ($P620)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("123_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_630
.annotate 'line', 887
    .const 'Sub' $P636 = "124_1304277405.374" 
    capture_lex $P636
    .lex "$ints", param_630
.annotate 'line', 888
    find_lex $P633, "$ints"
    unless_null $P633, vivify_521
    new $P633, "Undef"
  vivify_521:
    does $I634, $P633, "array"
    if $I634, if_632
.annotate 'line', 895
    find_lex $P656, "$ints"
    unless_null $P656, vivify_522
    new $P656, "Undef"
  vivify_522:
    $I657 = $P656."ast"()
    chr $S658, $I657
    new $P659, 'String'
    set $P659, $S658
.annotate 'line', 894
    set $P631, $P659
.annotate 'line', 888
    goto if_632_end
  if_632:
    .const 'Sub' $P636 = "124_1304277405.374" 
    capture_lex $P636
    $P655 = $P636()
    set $P631, $P655
  if_632_end:
.annotate 'line', 887
    .return ($P631)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block635"  :anon :subid("124_1304277405.374") :outer("123_1304277405.374")
.annotate 'line', 888
    .const 'Sub' $P644 = "125_1304277405.374" 
    capture_lex $P644
.annotate 'line', 889
    new $P637, "Undef"
    .lex "$result", $P637
    new $P638, "String"
    assign $P638, ""
    store_lex "$result", $P638
.annotate 'line', 890
    find_lex $P640, "$ints"
    unless_null $P640, vivify_523
    new $P640, "Undef"
  vivify_523:
    defined $I641, $P640
    unless $I641, for_undef_524
    iter $P639, $P640
    new $P652, 'ExceptionHandler'
    set_label $P652, loop651_handler
    $P652."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P652
  loop651_test:
    unless $P639, loop651_done
    shift $P642, $P639
  loop651_redo:
    .const 'Sub' $P644 = "125_1304277405.374" 
    capture_lex $P644
    $P644($P642)
  loop651_next:
    goto loop651_test
  loop651_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P653, exception, 'type'
    eq $P653, .CONTROL_LOOP_NEXT, loop651_next
    eq $P653, .CONTROL_LOOP_REDO, loop651_redo
  loop651_done:
    pop_eh 
  for_undef_524:
    find_lex $P654, "$result"
    unless_null $P654, vivify_527
    new $P654, "Undef"
  vivify_527:
.annotate 'line', 888
    .return ($P654)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block643"  :anon :subid("125_1304277405.374") :outer("124_1304277405.374")
    .param pmc param_645
.annotate 'line', 890
    .lex "$_", param_645
.annotate 'line', 891
    find_lex $P646, "$result"
    unless_null $P646, vivify_525
    new $P646, "Undef"
  vivify_525:
    find_lex $P647, "$_"
    unless_null $P647, vivify_526
    new $P647, "Undef"
  vivify_526:
    $I648 = $P647."ast"()
    chr $S649, $I648
    concat $P650, $P646, $S649
    store_lex "$result", $P650
.annotate 'line', 890
    .return ($P650)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_669
.annotate 'line', 900
    .lex "self", param_669
.annotate 'line', 901
    get_hll_global $P670, "GLOBAL"
    nqp_get_package_through_who $P671, $P670, "PAST"
    get_who $P672, $P671
    set $P673, $P672["Op"]
.annotate 'line', 907
    new $P674, "ResizablePMCArray"
    push $P674, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P674, "    if null $P0 goto ctxsave_done"
    push $P674, "    $I0 = can $P0, \"ctxsave\""
    push $P674, "    unless $I0 goto ctxsave_done"
    push $P674, "    $P0.\"ctxsave\"()"
    push $P674, "  ctxsave_done:"
    $P675 = $P673."new"($P674 :named("inline"))
.annotate 'line', 900
    .return ($P675)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_677
    .param pmc param_678
.annotate 'line', 914
    .const 'Sub' $P690 = "128_1304277405.374" 
    capture_lex $P690
    .lex "self", param_677
    .lex "$block", param_678
.annotate 'line', 915
    new $P679, "Undef"
    .lex "$outer_ctx", $P679
    find_dynamic_lex $P682, "%*COMPILING"
    unless_null $P682, vivify_528
    get_hll_global $P680, "GLOBAL"
    get_who $P681, $P680
    set $P682, $P681["%COMPILING"]
    unless_null $P682, vivify_529
    die "Contextual %*COMPILING not found"
  vivify_529:
  vivify_528:
    set $P683, $P682["%?OPTIONS"]
    unless_null $P683, vivify_530
    $P683 = root_new ['parrot';'Hash']
  vivify_530:
    set $P684, $P683["outer_ctx"]
    unless_null $P684, vivify_531
    new $P684, "Undef"
  vivify_531:
    store_lex "$outer_ctx", $P684
.annotate 'line', 916
    find_lex $P687, "$outer_ctx"
    unless_null $P687, vivify_532
    new $P687, "Undef"
  vivify_532:
    defined $I688, $P687
    if $I688, if_686
    new $P685, 'Integer'
    set $P685, $I688
    goto if_686_end
  if_686:
    .const 'Sub' $P690 = "128_1304277405.374" 
    capture_lex $P690
    $P715 = $P690()
    set $P685, $P715
  if_686_end:
.annotate 'line', 914
    .return ($P685)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block689"  :anon :subid("128_1304277405.374") :outer("127_1304277405.374")
.annotate 'line', 916
    .const 'Sub' $P704 = "129_1304277405.374" 
    capture_lex $P704
.annotate 'line', 917
    $P691 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P691
    find_lex $P692, "$outer_ctx"
    unless_null $P692, vivify_533
    new $P692, "Undef"
  vivify_533:
    getattribute $P693, $P692, "current_namespace"
    $P694 = $P693."get_name"()
    store_lex "@ns", $P694
.annotate 'line', 918
    find_lex $P695, "@ns"
    unless_null $P695, vivify_534
    $P695 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    $P695."shift"()
.annotate 'line', 919
    find_lex $P696, "$block"
    unless_null $P696, vivify_535
    new $P696, "Undef"
  vivify_535:
    find_lex $P697, "@ns"
    unless_null $P697, vivify_536
    $P697 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    $P696."namespace"($P697)
.annotate 'line', 920
    find_lex $P699, "$outer_ctx"
    unless_null $P699, vivify_537
    new $P699, "Undef"
  vivify_537:
    $P700 = $P699."lexpad_full"()
    defined $I701, $P700
    unless $I701, for_undef_538
    iter $P698, $P700
    new $P713, 'ExceptionHandler'
    set_label $P713, loop712_handler
    $P713."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P713
  loop712_test:
    unless $P698, loop712_done
    shift $P702, $P698
  loop712_redo:
    .const 'Sub' $P704 = "129_1304277405.374" 
    capture_lex $P704
    $P704($P702)
  loop712_next:
    goto loop712_test
  loop712_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P714, exception, 'type'
    eq $P714, .CONTROL_LOOP_NEXT, loop712_next
    eq $P714, .CONTROL_LOOP_REDO, loop712_redo
  loop712_done:
    pop_eh 
  for_undef_538:
.annotate 'line', 916
    .return ($P698)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block703"  :anon :subid("129_1304277405.374") :outer("128_1304277405.374")
    .param pmc param_705
.annotate 'line', 920
    .lex "$_", param_705
.annotate 'line', 921
    find_lex $P706, "$block"
    unless_null $P706, vivify_539
    new $P706, "Undef"
  vivify_539:
    find_lex $P707, "$_"
    unless_null $P707, vivify_540
    new $P707, "Undef"
  vivify_540:
    $P708 = $P707."key"()
    find_lex $P709, "$_"
    unless_null $P709, vivify_541
    new $P709, "Undef"
  vivify_541:
    $P710 = $P709."value"()
    $P711 = $P706."symbol"($P708, "lexical" :named("scope"), $P710 :named("value"))
.annotate 'line', 920
    .return ($P711)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_719
    .param pmc param_720
    .param pmc param_721 :optional
    .param int has_param_721 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P806 = "132_1304277405.374" 
    capture_lex $P806
    .const 'Sub' $P770 = "131_1304277405.374" 
    capture_lex $P770
    new $P718, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P718, control_717
    push_eh $P718
    .lex "self", param_719
    .lex "$/", param_720
    if has_param_721, optparam_542
    new $P722, "Undef"
    set param_721, $P722
  optparam_542:
    .lex "$key", param_721
.annotate 'line', 929
    new $P723, "Undef"
    .lex "$past", $P723
.annotate 'line', 928
    find_lex $P725, "$key"
    unless_null $P725, vivify_543
    new $P725, "Undef"
  vivify_543:
    if $P725, unless_724_end
    new $P726, "Exception"
    set $P726['type'], .CONTROL_RETURN
    new $P727, "Integer"
    assign $P727, 0
    setattribute $P726, 'payload', $P727
    throw $P726
  unless_724_end:
.annotate 'line', 929
    find_lex $P729, "$/"
    unless_null $P729, vivify_544
    new $P729, "Undef"
  vivify_544:
    $P730 = $P729."ast"()
    set $P728, $P730
    defined $I732, $P728
    if $I732, default_731
    find_lex $P733, "$/"
    unless_null $P733, vivify_545
    $P733 = root_new ['parrot';'Hash']
  vivify_545:
    set $P734, $P733["OPER"]
    unless_null $P734, vivify_546
    new $P734, "Undef"
  vivify_546:
    $P735 = $P734."ast"()
    set $P728, $P735
  default_731:
    store_lex "$past", $P728
.annotate 'line', 930
    find_lex $P737, "$past"
    unless_null $P737, vivify_547
    new $P737, "Undef"
  vivify_547:
    if $P737, unless_736_end
.annotate 'line', 931
    get_hll_global $P738, "GLOBAL"
    nqp_get_package_through_who $P739, $P738, "PAST"
    get_who $P740, $P739
    set $P741, $P740["Op"]
    find_lex $P742, "$/"
    unless_null $P742, vivify_548
    new $P742, "Undef"
  vivify_548:
    $P743 = $P741."new"($P742 :named("node"))
    store_lex "$past", $P743
.annotate 'line', 932
    find_lex $P745, "$/"
    unless_null $P745, vivify_549
    $P745 = root_new ['parrot';'Hash']
  vivify_549:
    set $P746, $P745["OPER"]
    unless_null $P746, vivify_550
    $P746 = root_new ['parrot';'Hash']
  vivify_550:
    set $P747, $P746["O"]
    unless_null $P747, vivify_551
    $P747 = root_new ['parrot';'Hash']
  vivify_551:
    set $P748, $P747["pasttype"]
    unless_null $P748, vivify_552
    new $P748, "Undef"
  vivify_552:
    if $P748, if_744
.annotate 'line', 933
    find_lex $P756, "$/"
    unless_null $P756, vivify_553
    $P756 = root_new ['parrot';'Hash']
  vivify_553:
    set $P757, $P756["OPER"]
    unless_null $P757, vivify_554
    $P757 = root_new ['parrot';'Hash']
  vivify_554:
    set $P758, $P757["O"]
    unless_null $P758, vivify_555
    $P758 = root_new ['parrot';'Hash']
  vivify_555:
    set $P759, $P758["pirop"]
    unless_null $P759, vivify_556
    new $P759, "Undef"
  vivify_556:
    unless $P759, if_755_end
    find_lex $P760, "$past"
    unless_null $P760, vivify_557
    new $P760, "Undef"
  vivify_557:
    find_lex $P761, "$/"
    unless_null $P761, vivify_558
    $P761 = root_new ['parrot';'Hash']
  vivify_558:
    set $P762, $P761["OPER"]
    unless_null $P762, vivify_559
    $P762 = root_new ['parrot';'Hash']
  vivify_559:
    set $P763, $P762["O"]
    unless_null $P763, vivify_560
    $P763 = root_new ['parrot';'Hash']
  vivify_560:
    set $P764, $P763["pirop"]
    unless_null $P764, vivify_561
    new $P764, "Undef"
  vivify_561:
    set $S765, $P764
    $P760."pirop"($S765)
  if_755_end:
    goto if_744_end
  if_744:
.annotate 'line', 932
    find_lex $P749, "$past"
    unless_null $P749, vivify_562
    new $P749, "Undef"
  vivify_562:
    find_lex $P750, "$/"
    unless_null $P750, vivify_563
    $P750 = root_new ['parrot';'Hash']
  vivify_563:
    set $P751, $P750["OPER"]
    unless_null $P751, vivify_564
    $P751 = root_new ['parrot';'Hash']
  vivify_564:
    set $P752, $P751["O"]
    unless_null $P752, vivify_565
    $P752 = root_new ['parrot';'Hash']
  vivify_565:
    set $P753, $P752["pasttype"]
    unless_null $P753, vivify_566
    new $P753, "Undef"
  vivify_566:
    set $S754, $P753
    $P749."pasttype"($S754)
  if_744_end:
.annotate 'line', 934
    find_lex $P767, "$past"
    unless_null $P767, vivify_567
    new $P767, "Undef"
  vivify_567:
    $P768 = $P767."name"()
    if $P768, unless_766_end
    .const 'Sub' $P770 = "131_1304277405.374" 
    capture_lex $P770
    $P770()
  unless_766_end:
  unless_736_end:
.annotate 'line', 940
    find_lex $P793, "$key"
    unless_null $P793, vivify_575
    new $P793, "Undef"
  vivify_575:
    set $S794, $P793
    iseq $I795, $S794, "POSTFIX"
    if $I795, if_792
.annotate 'line', 942
    find_lex $P801, "$/"
    unless_null $P801, vivify_576
    new $P801, "Undef"
  vivify_576:
    $P802 = $P801."list"()
    defined $I803, $P802
    unless $I803, for_undef_577
    iter $P800, $P802
    new $P818, 'ExceptionHandler'
    set_label $P818, loop817_handler
    $P818."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P818
  loop817_test:
    unless $P800, loop817_done
    shift $P804, $P800
  loop817_redo:
    .const 'Sub' $P806 = "132_1304277405.374" 
    capture_lex $P806
    $P806($P804)
  loop817_next:
    goto loop817_test
  loop817_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P819, exception, 'type'
    eq $P819, .CONTROL_LOOP_NEXT, loop817_next
    eq $P819, .CONTROL_LOOP_REDO, loop817_redo
  loop817_done:
    pop_eh 
  for_undef_577:
.annotate 'line', 941
    goto if_792_end
  if_792:
.annotate 'line', 940
    find_lex $P796, "$past"
    unless_null $P796, vivify_581
    new $P796, "Undef"
  vivify_581:
    find_lex $P797, "$/"
    unless_null $P797, vivify_582
    $P797 = root_new ['parrot';'ResizablePMCArray']
  vivify_582:
    set $P798, $P797[0]
    unless_null $P798, vivify_583
    new $P798, "Undef"
  vivify_583:
    $P799 = $P798."ast"()
    $P796."unshift"($P799)
  if_792_end:
.annotate 'line', 944
    find_lex $P820, "$/"
    find_lex $P821, "$past"
    unless_null $P821, vivify_584
    new $P821, "Undef"
  vivify_584:
    $P822 = $P820."!make"($P821)
.annotate 'line', 927
    .return ($P822)
  control_717:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P823, exception, "payload"
    .return ($P823)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block769"  :anon :subid("131_1304277405.374") :outer("130_1304277405.374")
.annotate 'line', 936
    new $P771, "Undef"
    .lex "$name", $P771
.annotate 'line', 935
    find_lex $P773, "$key"
    unless_null $P773, vivify_568
    new $P773, "Undef"
  vivify_568:
    set $S774, $P773
    iseq $I775, $S774, "LIST"
    unless $I775, if_772_end
    new $P776, "String"
    assign $P776, "infix"
    store_lex "$key", $P776
  if_772_end:
.annotate 'line', 936
    find_lex $P777, "$key"
    unless_null $P777, vivify_569
    new $P777, "Undef"
  vivify_569:
    set $S778, $P777
    downcase $S779, $S778
    new $P780, 'String'
    set $P780, $S779
    concat $P781, $P780, ":<"
    find_lex $P782, "$/"
    unless_null $P782, vivify_570
    $P782 = root_new ['parrot';'Hash']
  vivify_570:
    set $P783, $P782["OPER"]
    unless_null $P783, vivify_571
    $P783 = root_new ['parrot';'Hash']
  vivify_571:
    set $P784, $P783["sym"]
    unless_null $P784, vivify_572
    new $P784, "Undef"
  vivify_572:
    concat $P785, $P781, $P784
    concat $P786, $P785, ">"
    store_lex "$name", $P786
.annotate 'line', 937
    find_lex $P787, "$past"
    unless_null $P787, vivify_573
    new $P787, "Undef"
  vivify_573:
    new $P788, "String"
    assign $P788, "&"
    find_lex $P789, "$name"
    unless_null $P789, vivify_574
    new $P789, "Undef"
  vivify_574:
    concat $P790, $P788, $P789
    $P791 = $P787."name"($P790)
.annotate 'line', 934
    .return ($P791)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block805"  :anon :subid("132_1304277405.374") :outer("130_1304277405.374")
    .param pmc param_807
.annotate 'line', 942
    .lex "$_", param_807
    find_lex $P810, "$_"
    unless_null $P810, vivify_578
    new $P810, "Undef"
  vivify_578:
    $P811 = $P810."ast"()
    defined $I812, $P811
    if $I812, if_809
    new $P808, 'Integer'
    set $P808, $I812
    goto if_809_end
  if_809:
    find_lex $P813, "$past"
    unless_null $P813, vivify_579
    new $P813, "Undef"
  vivify_579:
    find_lex $P814, "$_"
    unless_null $P814, vivify_580
    new $P814, "Undef"
  vivify_580:
    $P815 = $P814."ast"()
    $P816 = $P813."push"($P815)
    set $P808, $P816
  if_809_end:
    .return ($P808)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_825
    .param pmc param_826
.annotate 'line', 947
    .lex "self", param_825
    .lex "$/", param_826
    find_lex $P827, "$/"
    find_lex $P828, "$/"
    unless_null $P828, vivify_585
    $P828 = root_new ['parrot';'Hash']
  vivify_585:
    set $P829, $P828["circumfix"]
    unless_null $P829, vivify_586
    new $P829, "Undef"
  vivify_586:
    $P830 = $P829."ast"()
    $P831 = $P827."!make"($P830)
    .return ($P831)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_833
    .param pmc param_834
.annotate 'line', 949
    .lex "self", param_833
    .lex "$/", param_834
    find_lex $P835, "$/"
    find_lex $P836, "$/"
    unless_null $P836, vivify_587
    $P836 = root_new ['parrot';'Hash']
  vivify_587:
    set $P837, $P836["term"]
    unless_null $P837, vivify_588
    new $P837, "Undef"
  vivify_588:
    $P838 = $P837."ast"()
    $P839 = $P835."!make"($P838)
    .return ($P839)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_841
    .param pmc param_842
.annotate 'line', 950
    .lex "self", param_841
    .lex "$/", param_842
    find_lex $P843, "$/"
    new $P844, "Undef"
    $P845 = $P843."!make"($P844)
    .return ($P845)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_847
    .param pmc param_848
.annotate 'line', 951
    .lex "self", param_847
    .lex "$/", param_848
    find_lex $P849, "$/"
    find_lex $P850, "$/"
    unless_null $P850, vivify_589
    $P850 = root_new ['parrot';'Hash']
  vivify_589:
    set $P851, $P850["term"]
    unless_null $P851, vivify_590
    new $P851, "Undef"
  vivify_590:
    $P852 = $P851."ast"()
    $P853 = $P849."!make"($P852)
    .return ($P853)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_855
    .param pmc param_856
.annotate 'line', 953
    .lex "self", param_855
    .lex "$/", param_856
    find_lex $P857, "$/"
    find_lex $P858, "$/"
    unless_null $P858, vivify_591
    $P858 = root_new ['parrot';'Hash']
  vivify_591:
    set $P859, $P858["VALUE"]
    unless_null $P859, vivify_592
    new $P859, "Undef"
  vivify_592:
    $P860 = $P859."ast"()
    $P861 = $P857."!make"($P860)
    .return ($P861)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_863
    .param pmc param_864
.annotate 'line', 955
    .lex "self", param_863
    .lex "$/", param_864
    find_lex $P865, "$/"
    find_lex $P866, "$/"
    unless_null $P866, vivify_593
    new $P866, "Undef"
  vivify_593:
    set $N867, $P866
    $P868 = $P865."!make"($N867)
    .return ($P868)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_870
    .param pmc param_871
.annotate 'line', 957
    .lex "self", param_870
    .lex "$/", param_871
    find_lex $P872, "$/"
    find_lex $P873, "$/"
    unless_null $P873, vivify_594
    new $P873, "Undef"
  vivify_594:
    $P874 = "string_to_int"($P873, 10)
    $P875 = $P872."!make"($P874)
    .return ($P875)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_877
    .param pmc param_878
.annotate 'line', 958
    .lex "self", param_877
    .lex "$/", param_878
    find_lex $P879, "$/"
    find_lex $P880, "$/"
    unless_null $P880, vivify_595
    new $P880, "Undef"
  vivify_595:
    $P881 = "string_to_int"($P880, 16)
    $P882 = $P879."!make"($P881)
    .return ($P882)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_884
    .param pmc param_885
.annotate 'line', 959
    .lex "self", param_884
    .lex "$/", param_885
    find_lex $P886, "$/"
    find_lex $P887, "$/"
    unless_null $P887, vivify_596
    new $P887, "Undef"
  vivify_596:
    $P888 = "string_to_int"($P887, 8)
    $P889 = $P886."!make"($P888)
    .return ($P889)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_891
    .param pmc param_892
.annotate 'line', 960
    .lex "self", param_891
    .lex "$/", param_892
    find_lex $P893, "$/"
    find_lex $P894, "$/"
    unless_null $P894, vivify_597
    new $P894, "Undef"
  vivify_597:
    $P895 = "string_to_int"($P894, 2)
    $P896 = $P893."!make"($P895)
    .return ($P896)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_898
    .param pmc param_899
.annotate 'line', 962
    .const 'Sub' $P918 = "144_1304277405.374" 
    capture_lex $P918
    .lex "self", param_898
    .lex "$/", param_899
.annotate 'line', 963
    new $P900, "Undef"
    .lex "$past", $P900
    find_lex $P901, "$/"
    unless_null $P901, vivify_598
    $P901 = root_new ['parrot';'Hash']
  vivify_598:
    set $P902, $P901["quote_delimited"]
    unless_null $P902, vivify_599
    new $P902, "Undef"
  vivify_599:
    $P903 = $P902."ast"()
    store_lex "$past", $P903
.annotate 'line', 964
    find_lex $P905, "$/"
    unless_null $P905, vivify_600
    new $P905, "Undef"
  vivify_600:
    $P906 = $P905."CURSOR"()
    $P907 = $P906."quotemod_check"("w")
    unless $P907, if_904_end
.annotate 'line', 965
    get_hll_global $P909, "GLOBAL"
    nqp_get_package_through_who $P910, $P909, "PAST"
    get_who $P911, $P910
    set $P912, $P911["Node"]
    find_lex $P913, "$past"
    unless_null $P913, vivify_601
    new $P913, "Undef"
  vivify_601:
    $P914 = $P912."ACCEPTS"($P913)
    if $P914, if_908
.annotate 'line', 968
    .const 'Sub' $P918 = "144_1304277405.374" 
    capture_lex $P918
    $P918()
    goto if_908_end
  if_908:
.annotate 'line', 966
    find_lex $P915, "$/"
    unless_null $P915, vivify_612
    new $P915, "Undef"
  vivify_612:
    $P916 = $P915."CURSOR"()
    $P916."panic"("Can't form :w list from non-constant strings (yet)")
  if_908_end:
  if_904_end:
.annotate 'line', 979
    get_hll_global $P957, "GLOBAL"
    nqp_get_package_through_who $P958, $P957, "PAST"
    get_who $P959, $P958
    set $P960, $P959["Node"]
    find_lex $P961, "$past"
    unless_null $P961, vivify_613
    new $P961, "Undef"
  vivify_613:
    $P962 = $P960."ACCEPTS"($P961)
    isfalse $I963, $P962
    unless $I963, if_956_end
.annotate 'line', 980
    get_hll_global $P964, "GLOBAL"
    nqp_get_package_through_who $P965, $P964, "PAST"
    get_who $P966, $P965
    set $P967, $P966["Val"]
    find_lex $P968, "$past"
    unless_null $P968, vivify_614
    new $P968, "Undef"
  vivify_614:
    set $S969, $P968
    $P970 = $P967."new"($S969 :named("value"))
    store_lex "$past", $P970
  if_956_end:
.annotate 'line', 982
    find_lex $P971, "$/"
    find_lex $P972, "$past"
    unless_null $P972, vivify_615
    new $P972, "Undef"
  vivify_615:
    $P973 = $P971."!make"($P972)
.annotate 'line', 962
    .return ($P973)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block917"  :anon :subid("144_1304277405.374") :outer("143_1304277405.374")
.annotate 'line', 968
    .const 'Sub' $P944 = "145_1304277405.374" 
    capture_lex $P944
.annotate 'line', 969
    $P919 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P919
    get_hll_global $P920, "GLOBAL"
    nqp_get_package_through_who $P921, $P920, "HLL"
    nqp_get_package_through_who $P922, $P921, "Grammar"
    get_who $P923, $P922
    set $P924, $P923["split_words"]
    find_lex $P925, "$/"
    unless_null $P925, vivify_602
    new $P925, "Undef"
  vivify_602:
    find_lex $P926, "$past"
    unless_null $P926, vivify_603
    new $P926, "Undef"
  vivify_603:
    $P927 = $P924($P925, $P926)
    store_lex "@words", $P927
.annotate 'line', 970
    find_lex $P930, "@words"
    unless_null $P930, vivify_604
    $P930 = root_new ['parrot';'ResizablePMCArray']
  vivify_604:
    set $N931, $P930
    isne $I932, $N931, 1.0
    if $I932, if_929
.annotate 'line', 975
    find_lex $P952, "@words"
    unless_null $P952, vivify_605
    $P952 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    set $P953, $P952[0]
    unless_null $P953, vivify_606
    new $P953, "Undef"
  vivify_606:
    set $S954, $P953
    new $P955, 'String'
    set $P955, $S954
    store_lex "$past", $P955
.annotate 'line', 974
    set $P928, $P955
.annotate 'line', 970
    goto if_929_end
  if_929:
.annotate 'line', 971
    get_hll_global $P933, "GLOBAL"
    nqp_get_package_through_who $P934, $P933, "PAST"
    get_who $P935, $P934
    set $P936, $P935["Op"]
    find_lex $P937, "$/"
    unless_null $P937, vivify_607
    new $P937, "Undef"
  vivify_607:
    $P938 = $P936."new"("list" :named("pasttype"), $P937 :named("node"))
    store_lex "$past", $P938
.annotate 'line', 972
    find_lex $P940, "@words"
    unless_null $P940, vivify_608
    $P940 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
    defined $I941, $P940
    unless $I941, for_undef_609
    iter $P939, $P940
    new $P950, 'ExceptionHandler'
    set_label $P950, loop949_handler
    $P950."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P950
  loop949_test:
    unless $P939, loop949_done
    shift $P942, $P939
  loop949_redo:
    .const 'Sub' $P944 = "145_1304277405.374" 
    capture_lex $P944
    $P944($P942)
  loop949_next:
    goto loop949_test
  loop949_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P951, exception, 'type'
    eq $P951, .CONTROL_LOOP_NEXT, loop949_next
    eq $P951, .CONTROL_LOOP_REDO, loop949_redo
  loop949_done:
    pop_eh 
  for_undef_609:
.annotate 'line', 970
    set $P928, $P939
  if_929_end:
.annotate 'line', 968
    .return ($P928)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block943"  :anon :subid("145_1304277405.374") :outer("144_1304277405.374")
    .param pmc param_945
.annotate 'line', 972
    .lex "$_", param_945
    find_lex $P946, "$past"
    unless_null $P946, vivify_610
    new $P946, "Undef"
  vivify_610:
    find_lex $P947, "$_"
    unless_null $P947, vivify_611
    new $P947, "Undef"
  vivify_611:
    $P948 = $P946."push"($P947)
    .return ($P948)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_975
    .param pmc param_976
.annotate 'line', 985
    .const 'Sub' $P988 = "147_1304277405.374" 
    capture_lex $P988
    .lex "self", param_975
    .lex "$/", param_976
.annotate 'line', 986
    $P977 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P977
.annotate 'line', 987
    new $P978, "Undef"
    .lex "$lastlit", $P978
.annotate 'line', 1003
    new $P979, "Undef"
    .lex "$past", $P979
.annotate 'line', 985
    find_lex $P980, "@parts"
    unless_null $P980, vivify_616
    $P980 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
.annotate 'line', 987
    new $P981, "String"
    assign $P981, ""
    store_lex "$lastlit", $P981
.annotate 'line', 988
    find_lex $P983, "$/"
    unless_null $P983, vivify_617
    $P983 = root_new ['parrot';'Hash']
  vivify_617:
    set $P984, $P983["quote_atom"]
    unless_null $P984, vivify_618
    new $P984, "Undef"
  vivify_618:
    defined $I985, $P984
    unless $I985, for_undef_619
    iter $P982, $P984
    new $P1027, 'ExceptionHandler'
    set_label $P1027, loop1026_handler
    $P1027."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1027
  loop1026_test:
    unless $P982, loop1026_done
    shift $P986, $P982
  loop1026_redo:
    .const 'Sub' $P988 = "147_1304277405.374" 
    capture_lex $P988
    $P988($P986)
  loop1026_next:
    goto loop1026_test
  loop1026_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1028, exception, 'type'
    eq $P1028, .CONTROL_LOOP_NEXT, loop1026_next
    eq $P1028, .CONTROL_LOOP_REDO, loop1026_redo
  loop1026_done:
    pop_eh 
  for_undef_619:
.annotate 'line', 1002
    find_lex $P1030, "$lastlit"
    unless_null $P1030, vivify_632
    new $P1030, "Undef"
  vivify_632:
    set $S1031, $P1030
    isgt $I1032, $S1031, ""
    unless $I1032, if_1029_end
    find_lex $P1033, "@parts"
    unless_null $P1033, vivify_633
    $P1033 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    find_lex $P1034, "$lastlit"
    unless_null $P1034, vivify_634
    new $P1034, "Undef"
  vivify_634:
    $P1033."push"($P1034)
  if_1029_end:
.annotate 'line', 1003
    find_lex $P1037, "@parts"
    unless_null $P1037, vivify_635
    $P1037 = root_new ['parrot';'ResizablePMCArray']
  vivify_635:
    if $P1037, if_1036
    new $P1040, "String"
    assign $P1040, ""
    set $P1035, $P1040
    goto if_1036_end
  if_1036:
    find_lex $P1038, "@parts"
    unless_null $P1038, vivify_636
    $P1038 = root_new ['parrot';'ResizablePMCArray']
  vivify_636:
    $P1039 = $P1038."shift"()
    set $P1035, $P1039
  if_1036_end:
    store_lex "$past", $P1035
.annotate 'line', 1004
    new $P1051, 'ExceptionHandler'
    set_label $P1051, loop1050_handler
    $P1051."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1051
  loop1050_test:
    find_lex $P1041, "@parts"
    unless_null $P1041, vivify_637
    $P1041 = root_new ['parrot';'ResizablePMCArray']
  vivify_637:
    unless $P1041, loop1050_done
  loop1050_redo:
.annotate 'line', 1005
    get_hll_global $P1042, "GLOBAL"
    nqp_get_package_through_who $P1043, $P1042, "PAST"
    get_who $P1044, $P1043
    set $P1045, $P1044["Op"]
    find_lex $P1046, "$past"
    unless_null $P1046, vivify_638
    new $P1046, "Undef"
  vivify_638:
    find_lex $P1047, "@parts"
    unless_null $P1047, vivify_639
    $P1047 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    $P1048 = $P1047."shift"()
    $P1049 = $P1045."new"($P1046, $P1048, "concat" :named("pirop"))
    store_lex "$past", $P1049
  loop1050_next:
.annotate 'line', 1004
    goto loop1050_test
  loop1050_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1052, exception, 'type'
    eq $P1052, .CONTROL_LOOP_NEXT, loop1050_next
    eq $P1052, .CONTROL_LOOP_REDO, loop1050_redo
  loop1050_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P1053, "$/"
    find_lex $P1054, "$past"
    unless_null $P1054, vivify_640
    new $P1054, "Undef"
  vivify_640:
    $P1055 = $P1053."!make"($P1054)
.annotate 'line', 985
    .return ($P1055)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block987"  :anon :subid("147_1304277405.374") :outer("146_1304277405.374")
    .param pmc param_990
.annotate 'line', 989
    new $P989, "Undef"
    .lex "$ast", $P989
    .lex "$_", param_990
    find_lex $P991, "$_"
    unless_null $P991, vivify_620
    new $P991, "Undef"
  vivify_620:
    $P992 = $P991."ast"()
    store_lex "$ast", $P992
.annotate 'line', 990
    get_hll_global $P995, "GLOBAL"
    nqp_get_package_through_who $P996, $P995, "PAST"
    get_who $P997, $P996
    set $P998, $P997["Node"]
    find_lex $P999, "$ast"
    unless_null $P999, vivify_621
    new $P999, "Undef"
  vivify_621:
    $P1000 = $P998."ACCEPTS"($P999)
    isfalse $I1001, $P1000
    if $I1001, if_994
.annotate 'line', 993
    find_lex $P1007, "$ast"
    unless_null $P1007, vivify_622
    new $P1007, "Undef"
  vivify_622:
    get_hll_global $P1008, "GLOBAL"
    nqp_get_package_through_who $P1009, $P1008, "PAST"
    get_who $P1010, $P1009
    set $P1011, $P1010["Val"]
    $P1012 = $P1007."isa"($P1011)
    if $P1012, if_1006
.annotate 'line', 997
    find_lex $P1018, "$lastlit"
    unless_null $P1018, vivify_623
    new $P1018, "Undef"
  vivify_623:
    set $S1019, $P1018
    isgt $I1020, $S1019, ""
    unless $I1020, if_1017_end
    find_lex $P1021, "@parts"
    unless_null $P1021, vivify_624
    $P1021 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    find_lex $P1022, "$lastlit"
    unless_null $P1022, vivify_625
    new $P1022, "Undef"
  vivify_625:
    $P1021."push"($P1022)
  if_1017_end:
.annotate 'line', 998
    find_lex $P1023, "@parts"
    unless_null $P1023, vivify_626
    $P1023 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    find_lex $P1024, "$ast"
    unless_null $P1024, vivify_627
    new $P1024, "Undef"
  vivify_627:
    $P1023."push"($P1024)
.annotate 'line', 999
    new $P1025, "String"
    assign $P1025, ""
    store_lex "$lastlit", $P1025
.annotate 'line', 996
    set $P1005, $P1025
.annotate 'line', 993
    goto if_1006_end
  if_1006:
.annotate 'line', 994
    find_lex $P1013, "$lastlit"
    unless_null $P1013, vivify_628
    new $P1013, "Undef"
  vivify_628:
    find_lex $P1014, "$ast"
    unless_null $P1014, vivify_629
    new $P1014, "Undef"
  vivify_629:
    $S1015 = $P1014."value"()
    concat $P1016, $P1013, $S1015
    store_lex "$lastlit", $P1016
.annotate 'line', 993
    set $P1005, $P1016
  if_1006_end:
    set $P993, $P1005
.annotate 'line', 990
    goto if_994_end
  if_994:
.annotate 'line', 991
    find_lex $P1002, "$lastlit"
    unless_null $P1002, vivify_630
    new $P1002, "Undef"
  vivify_630:
    find_lex $P1003, "$ast"
    unless_null $P1003, vivify_631
    new $P1003, "Undef"
  vivify_631:
    concat $P1004, $P1002, $P1003
    store_lex "$lastlit", $P1004
.annotate 'line', 990
    set $P993, $P1004
  if_994_end:
.annotate 'line', 988
    .return ($P993)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1057
    .param pmc param_1058
.annotate 'line', 1010
    .lex "self", param_1057
    .lex "$/", param_1058
.annotate 'line', 1011
    find_lex $P1059, "$/"
    find_lex $P1062, "$/"
    unless_null $P1062, vivify_641
    $P1062 = root_new ['parrot';'Hash']
  vivify_641:
    set $P1063, $P1062["quote_escape"]
    unless_null $P1063, vivify_642
    new $P1063, "Undef"
  vivify_642:
    if $P1063, if_1061
    find_lex $P1067, "$/"
    unless_null $P1067, vivify_643
    new $P1067, "Undef"
  vivify_643:
    set $S1068, $P1067
    new $P1060, 'String'
    set $P1060, $S1068
    goto if_1061_end
  if_1061:
    find_lex $P1064, "$/"
    unless_null $P1064, vivify_644
    $P1064 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1065, $P1064["quote_escape"]
    unless_null $P1065, vivify_645
    new $P1065, "Undef"
  vivify_645:
    $P1066 = $P1065."ast"()
    set $P1060, $P1066
  if_1061_end:
    $P1069 = $P1059."!make"($P1060)
.annotate 'line', 1010
    .return ($P1069)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1071
    .param pmc param_1072
.annotate 'line', 1014
    .lex "self", param_1071
    .lex "$/", param_1072
    find_lex $P1073, "$/"
    $P1074 = $P1073."!make"("\\")
    .return ($P1074)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1076
    .param pmc param_1077
.annotate 'line', 1015
    .lex "self", param_1076
    .lex "$/", param_1077
    find_lex $P1078, "$/"
    find_lex $P1079, "$/"
    unless_null $P1079, vivify_646
    $P1079 = root_new ['parrot';'Hash']
  vivify_646:
    set $P1080, $P1079["stopper"]
    unless_null $P1080, vivify_647
    new $P1080, "Undef"
  vivify_647:
    set $S1081, $P1080
    $P1082 = $P1078."!make"($S1081)
    .return ($P1082)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1084
    .param pmc param_1085
.annotate 'line', 1017
    .lex "self", param_1084
    .lex "$/", param_1085
    find_lex $P1086, "$/"
    $P1087 = $P1086."!make"("\b")
    .return ($P1087)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1089
    .param pmc param_1090
.annotate 'line', 1018
    .lex "self", param_1089
    .lex "$/", param_1090
    find_lex $P1091, "$/"
    $P1092 = $P1091."!make"("\n")
    .return ($P1092)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1094
    .param pmc param_1095
.annotate 'line', 1019
    .lex "self", param_1094
    .lex "$/", param_1095
    find_lex $P1096, "$/"
    $P1097 = $P1096."!make"("\r")
    .return ($P1097)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1099
    .param pmc param_1100
.annotate 'line', 1020
    .lex "self", param_1099
    .lex "$/", param_1100
    find_lex $P1101, "$/"
    $P1102 = $P1101."!make"("\t")
    .return ($P1102)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1104
    .param pmc param_1105
.annotate 'line', 1021
    .lex "self", param_1104
    .lex "$/", param_1105
    find_lex $P1106, "$/"
    $P1107 = $P1106."!make"("\f")
    .return ($P1107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1109
    .param pmc param_1110
.annotate 'line', 1022
    .lex "self", param_1109
    .lex "$/", param_1110
    find_lex $P1111, "$/"
    $P1112 = $P1111."!make"("\e")
    .return ($P1112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1114
    .param pmc param_1115
.annotate 'line', 1024
    .lex "self", param_1114
    .lex "$/", param_1115
.annotate 'line', 1025
    find_lex $P1116, "$/"
    find_lex $P1119, "$/"
    unless_null $P1119, vivify_648
    $P1119 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1120, $P1119["hexint"]
    unless_null $P1120, vivify_649
    new $P1120, "Undef"
  vivify_649:
    if $P1120, if_1118
    find_lex $P1123, "$/"
    unless_null $P1123, vivify_650
    $P1123 = root_new ['parrot';'Hash']
  vivify_650:
    set $P1124, $P1123["hexints"]
    unless_null $P1124, vivify_651
    $P1124 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1125, $P1124["hexint"]
    unless_null $P1125, vivify_652
    new $P1125, "Undef"
  vivify_652:
    set $P1117, $P1125
    goto if_1118_end
  if_1118:
    find_lex $P1121, "$/"
    unless_null $P1121, vivify_653
    $P1121 = root_new ['parrot';'Hash']
  vivify_653:
    set $P1122, $P1121["hexint"]
    unless_null $P1122, vivify_654
    new $P1122, "Undef"
  vivify_654:
    set $P1117, $P1122
  if_1118_end:
    $P1126 = "ints_to_string"($P1117)
    $P1127 = $P1116."!make"($P1126)
.annotate 'line', 1024
    .return ($P1127)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1129
    .param pmc param_1130
.annotate 'line', 1028
    .lex "self", param_1129
    .lex "$/", param_1130
.annotate 'line', 1029
    find_lex $P1131, "$/"
    find_lex $P1134, "$/"
    unless_null $P1134, vivify_655
    $P1134 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1135, $P1134["octint"]
    unless_null $P1135, vivify_656
    new $P1135, "Undef"
  vivify_656:
    if $P1135, if_1133
    find_lex $P1138, "$/"
    unless_null $P1138, vivify_657
    $P1138 = root_new ['parrot';'Hash']
  vivify_657:
    set $P1139, $P1138["octints"]
    unless_null $P1139, vivify_658
    $P1139 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1140, $P1139["octint"]
    unless_null $P1140, vivify_659
    new $P1140, "Undef"
  vivify_659:
    set $P1132, $P1140
    goto if_1133_end
  if_1133:
    find_lex $P1136, "$/"
    unless_null $P1136, vivify_660
    $P1136 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1137, $P1136["octint"]
    unless_null $P1137, vivify_661
    new $P1137, "Undef"
  vivify_661:
    set $P1132, $P1137
  if_1133_end:
    $P1141 = "ints_to_string"($P1132)
    $P1142 = $P1131."!make"($P1141)
.annotate 'line', 1028
    .return ($P1142)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1144
    .param pmc param_1145
.annotate 'line', 1032
    .lex "self", param_1144
    .lex "$/", param_1145
.annotate 'line', 1033
    find_lex $P1146, "$/"
    find_lex $P1147, "$/"
    unless_null $P1147, vivify_662
    $P1147 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1148, $P1147["charspec"]
    unless_null $P1148, vivify_663
    new $P1148, "Undef"
  vivify_663:
    $P1149 = $P1148."ast"()
    $P1150 = $P1146."!make"($P1149)
.annotate 'line', 1032
    .return ($P1150)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1152
    .param pmc param_1153
.annotate 'line', 1036
    .lex "self", param_1152
    .lex "$/", param_1153
.annotate 'line', 1037
    find_lex $P1154, "$/"
    $P1155 = $P1154."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1155)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1157
    .param pmc param_1158
.annotate 'line', 1040
    .lex "self", param_1157
    .lex "$/", param_1158
.annotate 'line', 1041
    find_lex $P1159, "$/"
    find_lex $P1162, "$/"
    unless_null $P1162, vivify_664
    $P1162 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1163, $P1162["textq"]
    unless_null $P1163, vivify_665
    new $P1163, "Undef"
  vivify_665:
    if $P1163, if_1161
    find_lex $P1169, "$/"
    unless_null $P1169, vivify_666
    $P1169 = root_new ['parrot';'Hash']
  vivify_666:
    set $P1170, $P1169["textqq"]
    unless_null $P1170, vivify_667
    new $P1170, "Undef"
  vivify_667:
    $P1171 = $P1170."Str"()
    set $P1160, $P1171
    goto if_1161_end
  if_1161:
    new $P1164, "String"
    assign $P1164, "\\"
    find_lex $P1165, "$/"
    unless_null $P1165, vivify_668
    $P1165 = root_new ['parrot';'Hash']
  vivify_668:
    set $P1166, $P1165["textq"]
    unless_null $P1166, vivify_669
    new $P1166, "Undef"
  vivify_669:
    $S1167 = $P1166."Str"()
    concat $P1168, $P1164, $S1167
    set $P1160, $P1168
  if_1161_end:
    $P1172 = $P1159."!make"($P1160)
.annotate 'line', 1040
    .return ($P1172)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1174
    .param pmc param_1175
.annotate 'line', 1044
    .lex "self", param_1174
    .lex "$/", param_1175
.annotate 'line', 1045
    new $P1176, "Undef"
    .lex "$codepoint", $P1176
.annotate 'line', 1046
    find_lex $P1179, "$/"
    unless_null $P1179, vivify_670
    $P1179 = root_new ['parrot';'Hash']
  vivify_670:
    set $P1180, $P1179["integer"]
    unless_null $P1180, vivify_671
    new $P1180, "Undef"
  vivify_671:
    if $P1180, if_1178
.annotate 'line', 1047
    find_lex $P1184, "$/"
    unless_null $P1184, vivify_672
    new $P1184, "Undef"
  vivify_672:
    set $S1185, $P1184
    find_codepoint $I1186, $S1185
    new $P1177, 'Integer'
    set $P1177, $I1186
.annotate 'line', 1046
    goto if_1178_end
  if_1178:
    find_lex $P1181, "$/"
    unless_null $P1181, vivify_673
    $P1181 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1182, $P1181["integer"]
    unless_null $P1182, vivify_674
    new $P1182, "Undef"
  vivify_674:
    $P1183 = $P1182."ast"()
    set $P1177, $P1183
  if_1178_end:
    store_lex "$codepoint", $P1177
.annotate 'line', 1048
    find_lex $P1188, "$codepoint"
    unless_null $P1188, vivify_675
    new $P1188, "Undef"
  vivify_675:
    set $N1189, $P1188
    islt $I1190, $N1189, 0.0
    unless $I1190, if_1187_end
    find_lex $P1191, "$/"
    unless_null $P1191, vivify_676
    new $P1191, "Undef"
  vivify_676:
    $P1192 = $P1191."CURSOR"()
    new $P1193, 'String'
    set $P1193, "Unrecognized character name "
    find_lex $P1194, "$/"
    unless_null $P1194, vivify_677
    new $P1194, "Undef"
  vivify_677:
    concat $P1195, $P1193, $P1194
    $P1192."panic"($P1195)
  if_1187_end:
.annotate 'line', 1049
    find_lex $P1196, "$/"
    find_lex $P1197, "$codepoint"
    unless_null $P1197, vivify_678
    new $P1197, "Undef"
  vivify_678:
    set $I1198, $P1197
    chr $S1199, $I1198
    $P1200 = $P1196."!make"($S1199)
.annotate 'line', 1044
    .return ($P1200)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1202
    .param pmc param_1203
.annotate 'line', 1052
    .const 'Sub' $P1212 = "164_1304277405.374" 
    capture_lex $P1212
    .lex "self", param_1202
    .lex "$/", param_1203
.annotate 'line', 1053
    new $P1204, "Undef"
    .lex "$str", $P1204
    new $P1205, "String"
    assign $P1205, ""
    store_lex "$str", $P1205
.annotate 'line', 1054
    find_lex $P1207, "$/"
    unless_null $P1207, vivify_679
    $P1207 = root_new ['parrot';'Hash']
  vivify_679:
    set $P1208, $P1207["charname"]
    unless_null $P1208, vivify_680
    new $P1208, "Undef"
  vivify_680:
    defined $I1209, $P1208
    unless $I1209, for_undef_681
    iter $P1206, $P1208
    new $P1219, 'ExceptionHandler'
    set_label $P1219, loop1218_handler
    $P1219."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1219
  loop1218_test:
    unless $P1206, loop1218_done
    shift $P1210, $P1206
  loop1218_redo:
    .const 'Sub' $P1212 = "164_1304277405.374" 
    capture_lex $P1212
    $P1212($P1210)
  loop1218_next:
    goto loop1218_test
  loop1218_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1220, exception, 'type'
    eq $P1220, .CONTROL_LOOP_NEXT, loop1218_next
    eq $P1220, .CONTROL_LOOP_REDO, loop1218_redo
  loop1218_done:
    pop_eh 
  for_undef_681:
.annotate 'line', 1055
    find_lex $P1221, "$/"
    find_lex $P1222, "$str"
    unless_null $P1222, vivify_684
    new $P1222, "Undef"
  vivify_684:
    $P1223 = $P1221."!make"($P1222)
.annotate 'line', 1052
    .return ($P1223)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1211"  :anon :subid("164_1304277405.374") :outer("163_1304277405.374")
    .param pmc param_1213
.annotate 'line', 1054
    .lex "$_", param_1213
    find_lex $P1214, "$str"
    unless_null $P1214, vivify_682
    new $P1214, "Undef"
  vivify_682:
    find_lex $P1215, "$_"
    unless_null $P1215, vivify_683
    new $P1215, "Undef"
  vivify_683:
    $S1216 = $P1215."ast"()
    concat $P1217, $P1214, $S1216
    store_lex "$str", $P1217
    .return ($P1217)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1304277405.374") :outer("120_1304277405.374")
    .param pmc param_1225
    .param pmc param_1226
.annotate 'line', 1058
    .lex "self", param_1225
    .lex "$/", param_1226
.annotate 'line', 1059
    find_lex $P1227, "$/"
    find_lex $P1230, "$/"
    unless_null $P1230, vivify_685
    $P1230 = root_new ['parrot';'Hash']
  vivify_685:
    set $P1231, $P1230["charnames"]
    unless_null $P1231, vivify_686
    new $P1231, "Undef"
  vivify_686:
    if $P1231, if_1229
    find_lex $P1235, "$/"
    unless_null $P1235, vivify_687
    new $P1235, "Undef"
  vivify_687:
    $I1236 = "string_to_int"($P1235, 10)
    chr $S1237, $I1236
    new $P1228, 'String'
    set $P1228, $S1237
    goto if_1229_end
  if_1229:
    find_lex $P1232, "$/"
    unless_null $P1232, vivify_688
    $P1232 = root_new ['parrot';'Hash']
  vivify_688:
    set $P1233, $P1232["charnames"]
    unless_null $P1233, vivify_689
    new $P1233, "Undef"
  vivify_689:
    $P1234 = $P1233."ast"()
    set $P1228, $P1234
  if_1229_end:
    $P1238 = $P1227."!make"($P1228)
.annotate 'line', 1058
    .return ($P1238)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1245"  :subid("167_1304277405.374") :outer("10_1304277405.374")
.annotate 'line', 1072
    .const 'Sub' $P2414 = "233_1304277405.374" 
    capture_lex $P2414
    .const 'Sub' $P2406 = "232_1304277405.374" 
    capture_lex $P2406
    .const 'Sub' $P2353 = "230_1304277405.374" 
    capture_lex $P2353
    .const 'Sub' $P2280 = "227_1304277405.374" 
    capture_lex $P2280
    .const 'Sub' $P2250 = "225_1304277405.374" 
    capture_lex $P2250
    .const 'Sub' $P2245 = "224_1304277405.374" 
    capture_lex $P2245
    .const 'Sub' $P2235 = "223_1304277405.374" 
    capture_lex $P2235
    .const 'Sub' $P2206 = "221_1304277405.374" 
    capture_lex $P2206
    .const 'Sub' $P2197 = "220_1304277405.374" 
    capture_lex $P2197
    .const 'Sub' $P2189 = "219_1304277405.374" 
    capture_lex $P2189
    .const 'Sub' $P2181 = "218_1304277405.374" 
    capture_lex $P2181
    .const 'Sub' $P2177 = "217_1304277405.374" 
    capture_lex $P2177
    .const 'Sub' $P2173 = "216_1304277405.374" 
    capture_lex $P2173
    .const 'Sub' $P2104 = "214_1304277405.374" 
    capture_lex $P2104
    .const 'Sub' $P2008 = "210_1304277405.374" 
    capture_lex $P2008
    .const 'Sub' $P1968 = "207_1304277405.374" 
    capture_lex $P1968
    .const 'Sub' $P1920 = "205_1304277405.374" 
    capture_lex $P1920
    .const 'Sub' $P1907 = "204_1304277405.374" 
    capture_lex $P1907
    .const 'Sub' $P1894 = "203_1304277405.374" 
    capture_lex $P1894
    .const 'Sub' $P1881 = "202_1304277405.374" 
    capture_lex $P1881
    .const 'Sub' $P1868 = "201_1304277405.374" 
    capture_lex $P1868
    .const 'Sub' $P1855 = "200_1304277405.374" 
    capture_lex $P1855
    .const 'Sub' $P1842 = "199_1304277405.374" 
    capture_lex $P1842
    .const 'Sub' $P1829 = "198_1304277405.374" 
    capture_lex $P1829
    .const 'Sub' $P1816 = "197_1304277405.374" 
    capture_lex $P1816
    .const 'Sub' $P1811 = "196_1304277405.374" 
    capture_lex $P1811
    .const 'Sub' $P1807 = "195_1304277405.374" 
    capture_lex $P1807
    .const 'Sub' $P1767 = "193_1304277405.374" 
    capture_lex $P1767
    .const 'Sub' $P1608 = "186_1304277405.374" 
    capture_lex $P1608
    .const 'Sub' $P1593 = "185_1304277405.374" 
    capture_lex $P1593
    .const 'Sub' $P1500 = "180_1304277405.374" 
    capture_lex $P1500
    .const 'Sub' $P1467 = "178_1304277405.374" 
    capture_lex $P1467
    .const 'Sub' $P1452 = "177_1304277405.374" 
    capture_lex $P1452
    .const 'Sub' $P1437 = "176_1304277405.374" 
    capture_lex $P1437
    .const 'Sub' $P1350 = "173_1304277405.374" 
    capture_lex $P1350
    .const 'Sub' $P1291 = "171_1304277405.374" 
    capture_lex $P1291
    .const 'Sub' $P1284 = "170_1304277405.374" 
    capture_lex $P1284
    .const 'Sub' $P1264 = "169_1304277405.374" 
    capture_lex $P1264
    .const 'Sub' $P1247 = "168_1304277405.374" 
    capture_lex $P1247
.annotate 'line', 1132
    .const 'Sub' $P1247 = "168_1304277405.374" 
    newclosure $P1260, $P1247
    .lex "value_type", $P1260
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1261
    .lex "$?CLASS", $P1262
.annotate 'line', 1094
    .const 'Sub' $P1264 = "169_1304277405.374" 
    capture_lex $P1264
    $P1264()
.annotate 'line', 1072
    find_lex $P1278, "$?PACKAGE"
    get_who $P1279, $P1278
    set $P1280, $P1279["$interactive_ctx"]
    unless_null $P1280, vivify_697
    new $P1280, "Undef"
  vivify_697:
    find_lex $P1281, "$?PACKAGE"
    get_who $P1282, $P1281
    set $P1283, $P1282["%interactive_pad"]
    unless_null $P1283, vivify_698
    $P1283 = root_new ['parrot';'Hash']
  vivify_698:
.annotate 'line', 1112
    find_lex $P1349, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2406 = "232_1304277405.374" 
    newclosure $P2412, $P2406
.annotate 'line', 1072
    .return ($P2412)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post690") :outer("167_1304277405.374")
.annotate 'line', 1072
    .const 'Sub' $P1246 = "167_1304277405.374" 
    .local pmc block
    set block, $P1246
    .const 'Sub' $P2414 = "233_1304277405.374" 
    capture_lex $P2414
    $P2414()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2413"  :anon :subid("233_1304277405.374") :outer("167_1304277405.374")
.annotate 'line', 1072
    nqp_get_sc_object $P2415, "1304277396.391", 101
    .local pmc type_obj
    set type_obj, $P2415
    get_how $P2416, type_obj
    $P2417 = $P2416."compose"(type_obj)
    .return ($P2417)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1248
.annotate 'line', 1132
    .lex "$value", param_1248
.annotate 'line', 1133
    find_lex $P1251, "$value"
    unless_null $P1251, vivify_691
    new $P1251, "Undef"
  vivify_691:
    isa $I1252, $P1251, "NameSpace"
    if $I1252, if_1250
.annotate 'line', 1135
    find_lex $P1256, "$value"
    unless_null $P1256, vivify_692
    new $P1256, "Undef"
  vivify_692:
    isa $I1257, $P1256, "Sub"
    if $I1257, if_1255
    new $P1259, "String"
    assign $P1259, "var"
    set $P1254, $P1259
    goto if_1255_end
  if_1255:
    new $P1258, "String"
    assign $P1258, "sub"
    set $P1254, $P1258
  if_1255_end:
    set $P1249, $P1254
.annotate 'line', 1133
    goto if_1250_end
  if_1250:
    new $P1253, "String"
    assign $P1253, "namespace"
    set $P1249, $P1253
  if_1250_end:
.annotate 'line', 1132
    .return ($P1249)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1263"  :anon :subid("169_1304277405.374") :outer("167_1304277405.374")
.annotate 'line', 1099
    $P1265 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1265
.annotate 'line', 1096
    getinterp $P1266
    set $P1267, $P1266["context"]
    unless_null $P1267, vivify_693
    new $P1267, "Undef"
  vivify_693:
    find_lex $P1268, "$?PACKAGE"
    get_who $P1269, $P1268
    set $P1269["$interactive_ctx"], $P1267
    find_lex $P1270, "%pad_contents"
    unless_null $P1270, vivify_694
    $P1270 = root_new ['parrot';'Hash']
  vivify_694:
.annotate 'line', 1101
    find_lex $P1271, "$?PACKAGE"
    get_who $P1272, $P1271
    set $P1273, $P1272["$interactive_ctx"]
    unless_null $P1273, vivify_695
    new $P1273, "Undef"
  vivify_695:
    getattribute $P1274, $P1273, "lex_pad"
    find_lex $P1275, "%pad_contents"
    unless_null $P1275, vivify_696
    $P1275 = root_new ['parrot';'Hash']
  vivify_696:
    copy $P1274, $P1275
.annotate 'line', 1100
    find_lex $P1276, "$?PACKAGE"
    get_who $P1277, $P1276
    set $P1277["%interactive_pad"], $P1274
.annotate 'line', 1094
    .return ($P1274)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("170_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1285
.annotate 'line', 1106
    .lex "self", param_1285
.annotate 'line', 1107
    new $P1286, "Undef"
    .lex "$obj", $P1286
    find_lex $P1287, "self"
    repr_instance_of $P1288, $P1287
    store_lex "$obj", $P1288
.annotate 'line', 1108
    find_lex $P1289, "$obj"
    unless_null $P1289, vivify_699
    new $P1289, "Undef"
  vivify_699:
    $P1289."BUILD"()
    find_lex $P1290, "$obj"
    unless_null $P1290, vivify_700
    new $P1290, "Undef"
  vivify_700:
.annotate 'line', 1106
    .return ($P1290)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1292
.annotate 'line', 1112
    .const 'Sub' $P1313 = "172_1304277405.374" 
    capture_lex $P1313
    .lex "self", param_1292
.annotate 'line', 1122
    new $P1293, "Undef"
    .lex "$config_hash_idx", $P1293
.annotate 'line', 1126
    $P1294 = root_new ['parrot';'Hash']
    .lex "%config", $P1294
.annotate 'line', 1127
    new $P1295, "Undef"
    .lex "$version", $P1295
.annotate 'line', 1128
    new $P1296, "Undef"
    .lex "$revision", $P1296
.annotate 'line', 1114
    split $P1297, " ", "parse past post pir evalpmc"
    find_lex $P1298, "self"
    find_lex $P1299, "$?CLASS"
    setattribute $P1298, $P1299, "@!stages", $P1297
.annotate 'line', 1117
    split $P1300, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1301, "self"
    find_lex $P1302, "$?CLASS"
    setattribute $P1301, $P1302, "@!cmdoptions", $P1300
.annotate 'line', 1118
    new $P1303, "String"
    assign $P1303, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1304, "self"
    find_lex $P1305, "$?CLASS"
    setattribute $P1304, $P1305, "$!usage", $P1303
.annotate 'line', 1119
    find_lex $P1307, "self"
    find_lex $P1308, "$?CLASS"
    getattribute $P1309, $P1307, $P1308, "@!cmdoptions"
    unless_null $P1309, vivify_701
    $P1309 = root_new ['parrot';'ResizablePMCArray']
  vivify_701:
    defined $I1310, $P1309
    unless $I1310, for_undef_702
    iter $P1306, $P1309
    new $P1326, 'ExceptionHandler'
    set_label $P1326, loop1325_handler
    $P1326."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1326
  loop1325_test:
    unless $P1306, loop1325_done
    shift $P1311, $P1306
  loop1325_redo:
    .const 'Sub' $P1313 = "172_1304277405.374" 
    capture_lex $P1313
    $P1313($P1311)
  loop1325_next:
    goto loop1325_test
  loop1325_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1327, exception, 'type'
    eq $P1327, .CONTROL_LOOP_NEXT, loop1325_next
    eq $P1327, .CONTROL_LOOP_REDO, loop1325_redo
  loop1325_done:
    pop_eh 
  for_undef_702:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1328 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1328
.annotate 'line', 1126
    find_lex $P1329, "$config_hash_idx"
    unless_null $P1329, vivify_705
    new $P1329, "Undef"
  vivify_705:
    set $I1330, $P1329
    getinterp $P1331
    set $P1332, $P1331[$I1330]
    unless_null $P1332, vivify_706
    new $P1332, "Undef"
  vivify_706:
    store_lex "%config", $P1332
.annotate 'line', 1127
    find_lex $P1333, "%config"
    unless_null $P1333, vivify_707
    $P1333 = root_new ['parrot';'Hash']
  vivify_707:
    set $P1334, $P1333["VERSION"]
    unless_null $P1334, vivify_708
    new $P1334, "Undef"
  vivify_708:
    store_lex "$version", $P1334
.annotate 'line', 1128
    find_lex $P1336, "%config"
    unless_null $P1336, vivify_709
    $P1336 = root_new ['parrot';'Hash']
  vivify_709:
    set $P1337, $P1336["git_describe"]
    unless_null $P1337, vivify_710
    new $P1337, "Undef"
  vivify_710:
    set $P1335, $P1337
    defined $I1339, $P1335
    if $I1339, default_1338
    new $P1340, "String"
    assign $P1340, "(unknown)"
    set $P1335, $P1340
  default_1338:
    store_lex "$revision", $P1335
.annotate 'line', 1129
    new $P1341, 'String'
    set $P1341, "This compiler is built with NQP, parrot "
    find_lex $P1342, "$version"
    unless_null $P1342, vivify_711
    new $P1342, "Undef"
  vivify_711:
    concat $P1343, $P1341, $P1342
    concat $P1344, $P1343, ", revision "
    find_lex $P1345, "$revision"
    unless_null $P1345, vivify_712
    new $P1345, "Undef"
  vivify_712:
    concat $P1346, $P1344, $P1345
    find_lex $P1347, "self"
    find_lex $P1348, "$?CLASS"
    setattribute $P1347, $P1348, "$!version", $P1346
.annotate 'line', 1112
    .return ($P1346)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1312"  :anon :subid("172_1304277405.374") :outer("171_1304277405.374")
    .param pmc param_1314
.annotate 'line', 1119
    .lex "$_", param_1314
.annotate 'line', 1120
    find_lex $P1315, "self"
    find_lex $P1316, "$?CLASS"
    getattribute $P1317, $P1315, $P1316, "$!usage"
    unless_null $P1317, vivify_703
    new $P1317, "Undef"
  vivify_703:
    new $P1318, 'String'
    set $P1318, "    "
    find_lex $P1319, "$_"
    unless_null $P1319, vivify_704
    new $P1319, "Undef"
  vivify_704:
    concat $P1320, $P1318, $P1319
    concat $P1321, $P1320, "\n"
    concat $P1322, $P1317, $P1321
    find_lex $P1323, "self"
    find_lex $P1324, "$?CLASS"
    setattribute $P1323, $P1324, "$!usage", $P1322
.annotate 'line', 1119
    .return ($P1322)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("173_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1351
    .param pmc param_1352
    .param pmc param_1355 :slurpy
    .param pmc param_1353 :optional :named("tagset")
    .param int has_param_1353 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1421 = "175_1304277405.374" 
    capture_lex $P1421
    .const 'Sub' $P1400 = "174_1304277405.374" 
    capture_lex $P1400
    .lex "self", param_1351
    .lex "$module", param_1352
    if has_param_1353, optparam_713
    new $P1354, "Undef"
    set param_1353, $P1354
  optparam_713:
    .lex "$tagset", param_1353
    .lex "@symbols", param_1355
.annotate 'line', 1145
    $P1356 = root_new ['parrot';'Hash']
    .lex "%exports", $P1356
.annotate 'line', 1146
    $P1357 = root_new ['parrot';'Hash']
    .lex "%source", $P1357
.annotate 'line', 1140
    find_lex $P1359, "$module"
    unless_null $P1359, vivify_714
    new $P1359, "Undef"
  vivify_714:
    does $I1360, $P1359, "hash"
    new $P1361, 'Integer'
    set $P1361, $I1360
    isfalse $I1362, $P1361
    unless $I1362, if_1358_end
.annotate 'line', 1141
    find_lex $P1363, "self"
    find_lex $P1364, "$module"
    unless_null $P1364, vivify_715
    new $P1364, "Undef"
  vivify_715:
    $P1365 = $P1363."get_module"($P1364)
    store_lex "$module", $P1365
  if_1358_end:
.annotate 'line', 1144
    find_lex $P1367, "$tagset"
    unless_null $P1367, vivify_716
    new $P1367, "Undef"
  vivify_716:
    set $P1366, $P1367
    defined $I1369, $P1366
    if $I1369, default_1368
    find_lex $P1372, "@symbols"
    unless_null $P1372, vivify_717
    $P1372 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    if $P1372, if_1371
    new $P1374, "String"
    assign $P1374, "DEFAULT"
    set $P1370, $P1374
    goto if_1371_end
  if_1371:
    new $P1373, "String"
    assign $P1373, "ALL"
    set $P1370, $P1373
  if_1371_end:
    set $P1366, $P1370
  default_1368:
    store_lex "$tagset", $P1366
    find_lex $P1375, "%exports"
    unless_null $P1375, vivify_718
    $P1375 = root_new ['parrot';'Hash']
  vivify_718:
.annotate 'line', 1146
    find_lex $P1376, "$tagset"
    unless_null $P1376, vivify_719
    new $P1376, "Undef"
  vivify_719:
    set $S1377, $P1376
    find_lex $P1378, "$module"
    unless_null $P1378, vivify_720
    $P1378 = root_new ['parrot';'Hash']
  vivify_720:
    set $P1379, $P1378["EXPORT"]
    unless_null $P1379, vivify_721
    $P1379 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1380, $P1379[$S1377]
    unless_null $P1380, vivify_722
    new $P1380, "Undef"
  vivify_722:
    store_lex "%source", $P1380
.annotate 'line', 1147
    find_lex $P1382, "%source"
    unless_null $P1382, vivify_723
    $P1382 = root_new ['parrot';'Hash']
  vivify_723:
    defined $I1383, $P1382
    new $P1384, 'Integer'
    set $P1384, $I1383
    isfalse $I1385, $P1384
    unless $I1385, if_1381_end
.annotate 'line', 1148
    find_lex $P1388, "$tagset"
    unless_null $P1388, vivify_724
    new $P1388, "Undef"
  vivify_724:
    set $S1389, $P1388
    iseq $I1390, $S1389, "ALL"
    if $I1390, if_1387
    $P1392 = root_new ['parrot';'Hash']
    set $P1386, $P1392
    goto if_1387_end
  if_1387:
    find_lex $P1391, "$module"
    unless_null $P1391, vivify_725
    new $P1391, "Undef"
  vivify_725:
    set $P1386, $P1391
  if_1387_end:
    store_lex "%source", $P1386
  if_1381_end:
.annotate 'line', 1150
    find_lex $P1394, "@symbols"
    unless_null $P1394, vivify_726
    $P1394 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    if $P1394, if_1393
.annotate 'line', 1157
    find_lex $P1417, "%source"
    unless_null $P1417, vivify_727
    $P1417 = root_new ['parrot';'Hash']
  vivify_727:
    defined $I1418, $P1417
    unless $I1418, for_undef_728
    iter $P1416, $P1417
    new $P1434, 'ExceptionHandler'
    set_label $P1434, loop1433_handler
    $P1434."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1434
  loop1433_test:
    unless $P1416, loop1433_done
    shift $P1419, $P1416
  loop1433_redo:
    .const 'Sub' $P1421 = "175_1304277405.374" 
    capture_lex $P1421
    $P1421($P1419)
  loop1433_next:
    goto loop1433_test
  loop1433_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1435, exception, 'type'
    eq $P1435, .CONTROL_LOOP_NEXT, loop1433_next
    eq $P1435, .CONTROL_LOOP_REDO, loop1433_redo
  loop1433_done:
    pop_eh 
  for_undef_728:
.annotate 'line', 1156
    goto if_1393_end
  if_1393:
.annotate 'line', 1151
    find_lex $P1396, "@symbols"
    unless_null $P1396, vivify_735
    $P1396 = root_new ['parrot';'ResizablePMCArray']
  vivify_735:
    defined $I1397, $P1396
    unless $I1397, for_undef_736
    iter $P1395, $P1396
    new $P1414, 'ExceptionHandler'
    set_label $P1414, loop1413_handler
    $P1414."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1414
  loop1413_test:
    unless $P1395, loop1413_done
    shift $P1398, $P1395
  loop1413_redo:
    .const 'Sub' $P1400 = "174_1304277405.374" 
    capture_lex $P1400
    $P1400($P1398)
  loop1413_next:
    goto loop1413_test
  loop1413_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1415, exception, 'type'
    eq $P1415, .CONTROL_LOOP_NEXT, loop1413_next
    eq $P1415, .CONTROL_LOOP_REDO, loop1413_redo
  loop1413_done:
    pop_eh 
  for_undef_736:
  if_1393_end:
.annotate 'line', 1150
    find_lex $P1436, "%exports"
    unless_null $P1436, vivify_745
    $P1436 = root_new ['parrot';'Hash']
  vivify_745:
.annotate 'line', 1138
    .return ($P1436)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1420"  :anon :subid("175_1304277405.374") :outer("173_1304277405.374")
    .param pmc param_1423
.annotate 'line', 1158
    new $P1422, "Undef"
    .lex "$value", $P1422
    .lex "$_", param_1423
    find_lex $P1424, "$_"
    unless_null $P1424, vivify_729
    new $P1424, "Undef"
  vivify_729:
    $P1425 = $P1424."value"()
    store_lex "$value", $P1425
.annotate 'line', 1159
    find_lex $P1426, "$value"
    unless_null $P1426, vivify_730
    new $P1426, "Undef"
  vivify_730:
    find_lex $P1427, "$_"
    unless_null $P1427, vivify_731
    new $P1427, "Undef"
  vivify_731:
    $P1428 = $P1427."key"()
    find_lex $P1429, "$value"
    unless_null $P1429, vivify_732
    new $P1429, "Undef"
  vivify_732:
    $P1430 = "value_type"($P1429)
    find_lex $P1431, "%exports"
    unless_null $P1431, vivify_733
    $P1431 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1431
  vivify_733:
    set $P1432, $P1431[$P1430]
    unless_null $P1432, vivify_734
    $P1432 = root_new ['parrot';'Hash']
    set $P1431[$P1430], $P1432
  vivify_734:
    set $P1432[$P1428], $P1426
.annotate 'line', 1157
    .return ($P1426)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1399"  :anon :subid("174_1304277405.374") :outer("173_1304277405.374")
    .param pmc param_1402
.annotate 'line', 1152
    new $P1401, "Undef"
    .lex "$value", $P1401
    .lex "$_", param_1402
    find_lex $P1403, "$_"
    unless_null $P1403, vivify_737
    new $P1403, "Undef"
  vivify_737:
    set $S1404, $P1403
    find_lex $P1405, "%source"
    unless_null $P1405, vivify_738
    $P1405 = root_new ['parrot';'Hash']
  vivify_738:
    set $P1406, $P1405[$S1404]
    unless_null $P1406, vivify_739
    new $P1406, "Undef"
  vivify_739:
    store_lex "$value", $P1406
.annotate 'line', 1153
    find_lex $P1407, "$value"
    unless_null $P1407, vivify_740
    new $P1407, "Undef"
  vivify_740:
    find_lex $P1408, "$_"
    unless_null $P1408, vivify_741
    new $P1408, "Undef"
  vivify_741:
    find_lex $P1409, "$value"
    unless_null $P1409, vivify_742
    new $P1409, "Undef"
  vivify_742:
    $P1410 = "value_type"($P1409)
    find_lex $P1411, "%exports"
    unless_null $P1411, vivify_743
    $P1411 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1411
  vivify_743:
    set $P1412, $P1411[$P1410]
    unless_null $P1412, vivify_744
    $P1412 = root_new ['parrot';'Hash']
    set $P1411[$P1410], $P1412
  vivify_744:
    set $P1412[$P1408], $P1407
.annotate 'line', 1151
    .return ($P1407)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1438
    .param pmc param_1439
.annotate 'line', 1165
    .lex "self", param_1438
    .lex "$name", param_1439
.annotate 'line', 1166
    $P1440 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1440
    find_lex $P1441, "self"
    find_lex $P1442, "$name"
    unless_null $P1442, vivify_746
    new $P1442, "Undef"
  vivify_746:
    $P1443 = $P1441."parse_name"($P1442)
    store_lex "@name", $P1443
.annotate 'line', 1167
    find_lex $P1444, "@name"
    unless_null $P1444, vivify_747
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_747:
    find_lex $P1445, "self"
    find_lex $P1446, "$?CLASS"
    getattribute $P1447, $P1445, $P1446, "$!language"
    unless_null $P1447, vivify_748
    new $P1447, "Undef"
  vivify_748:
    set $S1448, $P1447
    downcase $S1449, $S1448
    $P1444."unshift"($S1449)
.annotate 'line', 1168
    find_lex $P1450, "@name"
    unless_null $P1450, vivify_749
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_749:
    get_root_namespace $P1451, $P1450
.annotate 'line', 1165
    .return ($P1451)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1453
    .param pmc param_1454 :optional
    .param int has_param_1454 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1453
    if has_param_1454, optparam_750
    new $P1455, "Undef"
    set param_1454, $P1455
  optparam_750:
    .lex "$name", param_1454
.annotate 'line', 1172
    find_lex $P1457, "$name"
    unless_null $P1457, vivify_751
    new $P1457, "Undef"
  vivify_751:
    unless $P1457, if_1456_end
.annotate 'line', 1173
    find_lex $P1458, "$name"
    unless_null $P1458, vivify_752
    new $P1458, "Undef"
  vivify_752:
    find_lex $P1459, "self"
    find_lex $P1460, "$?CLASS"
    setattribute $P1459, $P1460, "$!language", $P1458
.annotate 'line', 1174
    find_lex $P1461, "$name"
    unless_null $P1461, vivify_753
    new $P1461, "Undef"
  vivify_753:
    set $S1462, $P1461
    find_lex $P1463, "self"
    compreg $S1462, $P1463
  if_1456_end:
.annotate 'line', 1172
    find_lex $P1464, "self"
    find_lex $P1465, "$?CLASS"
    getattribute $P1466, $P1464, $P1465, "$!language"
    unless_null $P1466, vivify_754
    new $P1466, "Undef"
  vivify_754:
.annotate 'line', 1171
    .return ($P1466)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1468
    .param pmc param_1469
.annotate 'line', 1179
    .const 'Sub' $P1479 = "179_1304277405.374" 
    capture_lex $P1479
    .lex "self", param_1468
    .lex "$name", param_1469
.annotate 'line', 1180
    new $P1470, "Undef"
    .lex "$base", $P1470
.annotate 'line', 1181
    new $P1471, "Undef"
    .lex "$loaded", $P1471
.annotate 'line', 1180
    find_lex $P1472, "self"
    find_lex $P1473, "$name"
    unless_null $P1473, vivify_755
    new $P1473, "Undef"
  vivify_755:
    $P1474 = $P1472."parse_name"($P1473)
    join $S1475, "/", $P1474
    new $P1476, 'String'
    set $P1476, $S1475
    store_lex "$base", $P1476
.annotate 'line', 1181
    new $P1477, "Integer"
    assign $P1477, 0
    store_lex "$loaded", $P1477
.annotate 'line', 1182
    .const 'Sub' $P1479 = "179_1304277405.374" 
    capture_lex $P1479
    $P1479()
.annotate 'line', 1183
    find_lex $P1492, "$loaded"
    unless_null $P1492, vivify_757
    new $P1492, "Undef"
  vivify_757:
    if $P1492, unless_1491_end
    find_lex $P1493, "$base"
    unless_null $P1493, vivify_758
    new $P1493, "Undef"
  vivify_758:
    concat $P1494, $P1493, ".pir"
    set $S1495, $P1494
    load_bytecode $S1495
    new $P1496, "Integer"
    assign $P1496, 1
    store_lex "$loaded", $P1496
  unless_1491_end:
.annotate 'line', 1184
    find_lex $P1497, "self"
    find_lex $P1498, "$name"
    unless_null $P1498, vivify_759
    new $P1498, "Undef"
  vivify_759:
    $P1499 = $P1497."get_module"($P1498)
.annotate 'line', 1179
    .return ($P1499)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1478"  :anon :subid("179_1304277405.374") :outer("178_1304277405.374")
.annotate 'line', 1182
    new $P1486, 'ExceptionHandler'
    set_label $P1486, control_1485
    $P1486."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1486
    find_lex $P1480, "$base"
    unless_null $P1480, vivify_756
    new $P1480, "Undef"
  vivify_756:
    concat $P1481, $P1480, ".pbc"
    set $S1482, $P1481
    load_bytecode $S1482
    new $P1483, "Integer"
    assign $P1483, 1
    store_lex "$loaded", $P1483
    pop_eh 
    goto skip_handler_1484
  control_1485:
    .local pmc exception 
    .get_results (exception) 
    new $P1489, 'Integer'
    set $P1489, 1
    set exception["handled"], $P1489
    set $I1490, exception["handled"]
    ne $I1490, 1, nothandled_1488
  handled_1487:
    .return (exception)
  nothandled_1488:
    rethrow exception
  skip_handler_1484:
    .return ($P1483)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("180_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1501
    .param pmc param_1502
    .param pmc param_1503
.annotate 'line', 1187
    .const 'Sub' $P1509 = "181_1304277405.374" 
    capture_lex $P1509
    .lex "self", param_1501
    .lex "$target", param_1502
    .lex "%exports", param_1503
.annotate 'line', 1188
    find_lex $P1505, "%exports"
    unless_null $P1505, vivify_760
    $P1505 = root_new ['parrot';'Hash']
  vivify_760:
    defined $I1506, $P1505
    unless $I1506, for_undef_761
    iter $P1504, $P1505
    new $P1591, 'ExceptionHandler'
    set_label $P1591, loop1590_handler
    $P1591."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1591
  loop1590_test:
    unless $P1504, loop1590_done
    shift $P1507, $P1504
  loop1590_redo:
    .const 'Sub' $P1509 = "181_1304277405.374" 
    capture_lex $P1509
    $P1509($P1507)
  loop1590_next:
    goto loop1590_test
  loop1590_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1592, exception, 'type'
    eq $P1592, .CONTROL_LOOP_NEXT, loop1590_next
    eq $P1592, .CONTROL_LOOP_REDO, loop1590_redo
  loop1590_done:
    pop_eh 
  for_undef_761:
.annotate 'line', 1187
    .return ($P1504)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1508"  :anon :subid("181_1304277405.374") :outer("180_1304277405.374")
    .param pmc param_1512
.annotate 'line', 1188
    .const 'Sub' $P1579 = "184_1304277405.374" 
    capture_lex $P1579
    .const 'Sub' $P1559 = "183_1304277405.374" 
    capture_lex $P1559
    .const 'Sub' $P1530 = "182_1304277405.374" 
    capture_lex $P1530
.annotate 'line', 1189
    new $P1510, "Undef"
    .lex "$type", $P1510
.annotate 'line', 1190
    $P1511 = root_new ['parrot';'Hash']
    .lex "%items", $P1511
    .lex "$_", param_1512
.annotate 'line', 1189
    find_lex $P1513, "$_"
    unless_null $P1513, vivify_762
    new $P1513, "Undef"
  vivify_762:
    $P1514 = $P1513."key"()
    store_lex "$type", $P1514
.annotate 'line', 1190
    find_lex $P1515, "$_"
    unless_null $P1515, vivify_763
    new $P1515, "Undef"
  vivify_763:
    $P1516 = $P1515."value"()
    store_lex "%items", $P1516
.annotate 'line', 1191
    find_lex $P1519, "self"
    new $P1520, 'String'
    set $P1520, "import_"
    find_lex $P1521, "$type"
    unless_null $P1521, vivify_764
    new $P1521, "Undef"
  vivify_764:
    concat $P1522, $P1520, $P1521
    set $S1523, $P1522
    can $I1524, $P1519, $S1523
    if $I1524, if_1518
.annotate 'line', 1194
    find_lex $P1548, "$target"
    unless_null $P1548, vivify_765
    new $P1548, "Undef"
  vivify_765:
    new $P1549, 'String'
    set $P1549, "add_"
    find_lex $P1550, "$type"
    unless_null $P1550, vivify_766
    new $P1550, "Undef"
  vivify_766:
    concat $P1551, $P1549, $P1550
    set $S1552, $P1551
    can $I1553, $P1548, $S1552
    if $I1553, if_1547
.annotate 'line', 1198
    find_lex $P1575, "%items"
    unless_null $P1575, vivify_767
    $P1575 = root_new ['parrot';'Hash']
  vivify_767:
    defined $I1576, $P1575
    unless $I1576, for_undef_768
    iter $P1574, $P1575
    new $P1588, 'ExceptionHandler'
    set_label $P1588, loop1587_handler
    $P1588."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1588
  loop1587_test:
    unless $P1574, loop1587_done
    shift $P1577, $P1574
  loop1587_redo:
    .const 'Sub' $P1579 = "184_1304277405.374" 
    capture_lex $P1579
    $P1579($P1577)
  loop1587_next:
    goto loop1587_test
  loop1587_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1589, exception, 'type'
    eq $P1589, .CONTROL_LOOP_NEXT, loop1587_next
    eq $P1589, .CONTROL_LOOP_REDO, loop1587_redo
  loop1587_done:
    pop_eh 
  for_undef_768:
.annotate 'line', 1197
    set $P1546, $P1574
.annotate 'line', 1194
    goto if_1547_end
  if_1547:
.annotate 'line', 1195
    find_lex $P1555, "%items"
    unless_null $P1555, vivify_772
    $P1555 = root_new ['parrot';'Hash']
  vivify_772:
    defined $I1556, $P1555
    unless $I1556, for_undef_773
    iter $P1554, $P1555
    new $P1572, 'ExceptionHandler'
    set_label $P1572, loop1571_handler
    $P1572."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1572
  loop1571_test:
    unless $P1554, loop1571_done
    shift $P1557, $P1554
  loop1571_redo:
    .const 'Sub' $P1559 = "183_1304277405.374" 
    capture_lex $P1559
    $P1559($P1557)
  loop1571_next:
    goto loop1571_test
  loop1571_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1573, exception, 'type'
    eq $P1573, .CONTROL_LOOP_NEXT, loop1571_next
    eq $P1573, .CONTROL_LOOP_REDO, loop1571_redo
  loop1571_done:
    pop_eh 
  for_undef_773:
.annotate 'line', 1194
    set $P1546, $P1554
  if_1547_end:
    set $P1517, $P1546
.annotate 'line', 1191
    goto if_1518_end
  if_1518:
.annotate 'line', 1192
    find_lex $P1526, "%items"
    unless_null $P1526, vivify_778
    $P1526 = root_new ['parrot';'Hash']
  vivify_778:
    defined $I1527, $P1526
    unless $I1527, for_undef_779
    iter $P1525, $P1526
    new $P1544, 'ExceptionHandler'
    set_label $P1544, loop1543_handler
    $P1544."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1544
  loop1543_test:
    unless $P1525, loop1543_done
    shift $P1528, $P1525
  loop1543_redo:
    .const 'Sub' $P1530 = "182_1304277405.374" 
    capture_lex $P1530
    $P1530($P1528)
  loop1543_next:
    goto loop1543_test
  loop1543_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1545, exception, 'type'
    eq $P1545, .CONTROL_LOOP_NEXT, loop1543_next
    eq $P1545, .CONTROL_LOOP_REDO, loop1543_redo
  loop1543_done:
    pop_eh 
  for_undef_779:
.annotate 'line', 1191
    set $P1517, $P1525
  if_1518_end:
.annotate 'line', 1188
    .return ($P1517)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1578"  :anon :subid("184_1304277405.374") :outer("181_1304277405.374")
    .param pmc param_1580
.annotate 'line', 1198
    .lex "$_", param_1580
    find_lex $P1581, "$_"
    unless_null $P1581, vivify_769
    new $P1581, "Undef"
  vivify_769:
    $P1582 = $P1581."value"()
    find_lex $P1583, "$_"
    unless_null $P1583, vivify_770
    new $P1583, "Undef"
  vivify_770:
    $P1584 = $P1583."key"()
    set $S1585, $P1584
    find_lex $P1586, "$target"
    unless_null $P1586, vivify_771
    $P1586 = root_new ['parrot';'Hash']
    store_lex "$target", $P1586
  vivify_771:
    set $P1586[$S1585], $P1582
    .return ($P1582)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1558"  :anon :subid("183_1304277405.374") :outer("181_1304277405.374")
    .param pmc param_1560
.annotate 'line', 1195
    .lex "$_", param_1560
    find_lex $P1561, "$target"
    unless_null $P1561, vivify_774
    new $P1561, "Undef"
  vivify_774:
    find_lex $P1562, "$_"
    unless_null $P1562, vivify_775
    new $P1562, "Undef"
  vivify_775:
    $P1563 = $P1562."key"()
    find_lex $P1564, "$_"
    unless_null $P1564, vivify_776
    new $P1564, "Undef"
  vivify_776:
    $P1565 = $P1564."value"()
    new $P1566, 'String'
    set $P1566, "add_"
    find_lex $P1567, "$type"
    unless_null $P1567, vivify_777
    new $P1567, "Undef"
  vivify_777:
    concat $P1568, $P1566, $P1567
    set $S1569, $P1568
    $P1570 = $P1561.$S1569($P1563, $P1565)
    .return ($P1570)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1529"  :anon :subid("182_1304277405.374") :outer("181_1304277405.374")
    .param pmc param_1531
.annotate 'line', 1192
    .lex "$_", param_1531
    find_lex $P1532, "self"
    find_lex $P1533, "$target"
    unless_null $P1533, vivify_780
    new $P1533, "Undef"
  vivify_780:
    find_lex $P1534, "$_"
    unless_null $P1534, vivify_781
    new $P1534, "Undef"
  vivify_781:
    $P1535 = $P1534."key"()
    find_lex $P1536, "$_"
    unless_null $P1536, vivify_782
    new $P1536, "Undef"
  vivify_782:
    $P1537 = $P1536."value"()
    new $P1538, 'String'
    set $P1538, "import_"
    find_lex $P1539, "$type"
    unless_null $P1539, vivify_783
    new $P1539, "Undef"
  vivify_783:
    concat $P1540, $P1538, $P1539
    set $S1541, $P1540
    $P1542 = $P1532.$S1541($P1533, $P1535, $P1537)
    .return ($P1542)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1594
    .param pmc param_1595
.annotate 'line', 1203
    .lex "self", param_1594
    .lex "$value", param_1595
.annotate 'line', 1205
    getinterp $P1598
    $P1599 = $P1598."stdout_handle"()
    $N1600 = $P1599."tell"()
    find_dynamic_lex $P1603, "$*AUTOPRINTPOS"
    unless_null $P1603, vivify_784
    get_hll_global $P1601, "GLOBAL"
    get_who $P1602, $P1601
    set $P1603, $P1602["$AUTOPRINTPOS"]
    unless_null $P1603, vivify_785
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_785:
  vivify_784:
    set $N1604, $P1603
    isgt $I1605, $N1600, $N1604
    unless $I1605, unless_1597
    new $P1596, 'Integer'
    set $P1596, $I1605
    goto unless_1597_end
  unless_1597:
.annotate 'line', 1204
    find_lex $P1606, "$value"
    unless_null $P1606, vivify_786
    new $P1606, "Undef"
  vivify_786:
    set $S1607, $P1606
    say $S1607
  unless_1597_end:
.annotate 'line', 1203
    .return ($P1596)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1609
    .param pmc param_1610 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1642 = "187_1304277405.374" 
    capture_lex $P1642
    .lex "self", param_1609
    .lex "%adverbs", param_1610
.annotate 'line', 1209
    new $P1611, "Undef"
    .lex "$target", $P1611
.annotate 'line', 1213
    new $P1612, "Undef"
    .lex "$stdin", $P1612
.annotate 'line', 1214
    new $P1613, "Undef"
    .lex "$encoding", $P1613
.annotate 'line', 1219
    new $P1614, "Undef"
    .lex "$save_ctx", $P1614
.annotate 'line', 1209
    find_lex $P1615, "%adverbs"
    unless_null $P1615, vivify_787
    $P1615 = root_new ['parrot';'Hash']
  vivify_787:
    set $P1616, $P1615["target"]
    unless_null $P1616, vivify_788
    new $P1616, "Undef"
  vivify_788:
    set $S1617, $P1616
    downcase $S1618, $S1617
    new $P1619, 'String'
    set $P1619, $S1618
    store_lex "$target", $P1619
.annotate 'line', 1211
    getinterp $P1620
    $P1621 = $P1620."stderr_handle"()
    find_lex $P1622, "self"
    $S1623 = $P1622."commandline_banner"()
    print $P1621, $S1623
.annotate 'line', 1213
    getinterp $P1624
    $P1625 = $P1624."stdin_handle"()
    store_lex "$stdin", $P1625
.annotate 'line', 1214
    find_lex $P1626, "%adverbs"
    unless_null $P1626, vivify_789
    $P1626 = root_new ['parrot';'Hash']
  vivify_789:
    set $P1627, $P1626["encoding"]
    unless_null $P1627, vivify_790
    new $P1627, "Undef"
  vivify_790:
    set $S1628, $P1627
    new $P1629, 'String'
    set $P1629, $S1628
    store_lex "$encoding", $P1629
.annotate 'line', 1215
    find_lex $P1633, "$encoding"
    unless_null $P1633, vivify_791
    new $P1633, "Undef"
  vivify_791:
    if $P1633, if_1632
    set $P1631, $P1633
    goto if_1632_end
  if_1632:
    find_lex $P1634, "$encoding"
    unless_null $P1634, vivify_792
    new $P1634, "Undef"
  vivify_792:
    set $S1635, $P1634
    isne $I1636, $S1635, "fixed_8"
    new $P1631, 'Integer'
    set $P1631, $I1636
  if_1632_end:
    unless $P1631, if_1630_end
.annotate 'line', 1216
    find_lex $P1637, "$stdin"
    unless_null $P1637, vivify_793
    new $P1637, "Undef"
  vivify_793:
    find_lex $P1638, "$encoding"
    unless_null $P1638, vivify_794
    new $P1638, "Undef"
  vivify_794:
    $P1637."encoding"($P1638)
  if_1630_end:
.annotate 'line', 1215
    find_lex $P1639, "$save_ctx"
    unless_null $P1639, vivify_795
    new $P1639, "Undef"
  vivify_795:
.annotate 'line', 1220
    new $P1765, 'ExceptionHandler'
    set_label $P1765, loop1764_handler
    $P1765."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1765
  loop1764_test:
    new $P1640, "Integer"
    assign $P1640, 1
    unless $P1640, loop1764_done
  loop1764_redo:
    .const 'Sub' $P1642 = "187_1304277405.374" 
    capture_lex $P1642
    $P1642()
  loop1764_next:
    goto loop1764_test
  loop1764_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1766, exception, 'type'
    eq $P1766, .CONTROL_LOOP_NEXT, loop1764_next
    eq $P1766, .CONTROL_LOOP_REDO, loop1764_redo
  loop1764_done:
    pop_eh 
.annotate 'line', 1208
    .return ($P1640)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1641"  :anon :subid("187_1304277405.374") :outer("186_1304277405.374")
.annotate 'line', 1220
    .const 'Sub' $P1676 = "188_1304277405.374" 
    capture_lex $P1676
.annotate 'line', 1223
    new $P1643, "Undef"
    .lex "$prompt", $P1643
.annotate 'line', 1224
    new $P1644, "Undef"
    .lex "$code", $P1644
.annotate 'line', 1229
    new $P1645, "Undef"
    .lex "$*AUTOPRINTPOS", $P1645
.annotate 'line', 1230
    new $P1646, "Undef"
    .lex "$*CTXSAVE", $P1646
.annotate 'line', 1231
    new $P1647, "Undef"
    .lex "$*MAIN_CTX", $P1647
.annotate 'line', 1221
    find_lex $P1649, "$stdin"
    unless_null $P1649, vivify_796
    new $P1649, "Undef"
  vivify_796:
    if $P1649, unless_1648_end
    set $I1650, .CONTROL_LOOP_LAST
    die 0, $I1650
  unless_1648_end:
.annotate 'line', 1223
    find_lex $P1652, "self"
    $P1653 = $P1652."commandline_prompt"()
    set $P1651, $P1653
    defined $I1655, $P1651
    if $I1655, default_1654
    new $P1656, "String"
    assign $P1656, "> "
    set $P1651, $P1656
  default_1654:
    store_lex "$prompt", $P1651
.annotate 'line', 1224
    find_lex $P1657, "$stdin"
    unless_null $P1657, vivify_797
    new $P1657, "Undef"
  vivify_797:
    find_lex $P1658, "$prompt"
    unless_null $P1658, vivify_798
    new $P1658, "Undef"
  vivify_798:
    set $S1659, $P1658
    $P1660 = $P1657."readline_interactive"($S1659)
    store_lex "$code", $P1660
.annotate 'line', 1226
    find_lex $P1662, "$code"
    unless_null $P1662, vivify_799
    new $P1662, "Undef"
  vivify_799:
    isnull $I1663, $P1662
    unless $I1663, if_1661_end
    set $I1664, .CONTROL_LOOP_LAST
    die 0, $I1664
  if_1661_end:
.annotate 'line', 1229
    getinterp $P1665
    $P1666 = $P1665."stdout_handle"()
    $P1667 = $P1666."tell"()
    store_lex "$*AUTOPRINTPOS", $P1667
.annotate 'line', 1230
    find_lex $P1668, "self"
    store_lex "$*CTXSAVE", $P1668
    find_lex $P1671, "$*MAIN_CTX"
    unless_null $P1671, vivify_800
    get_hll_global $P1669, "GLOBAL"
    get_who $P1670, $P1669
    set $P1671, $P1670["$MAIN_CTX"]
    unless_null $P1671, vivify_801
    die "Contextual $*MAIN_CTX not found"
  vivify_801:
  vivify_800:
.annotate 'line', 1233
    find_lex $P1674, "$code"
    unless_null $P1674, vivify_802
    new $P1674, "Undef"
  vivify_802:
    if $P1674, if_1673
    set $P1672, $P1674
    goto if_1673_end
  if_1673:
    .const 'Sub' $P1676 = "188_1304277405.374" 
    capture_lex $P1676
    $P1763 = $P1676()
    set $P1672, $P1763
  if_1673_end:
.annotate 'line', 1220
    .return ($P1672)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1675"  :anon :subid("188_1304277405.374") :outer("187_1304277405.374")
.annotate 'line', 1233
    .const 'Sub' $P1711 = "191_1304277405.374" 
    capture_lex $P1711
    .const 'Sub' $P1682 = "189_1304277405.374" 
    capture_lex $P1682
.annotate 'line', 1235
    new $P1677, "Undef"
    .lex "$output", $P1677
.annotate 'line', 1234
    find_lex $P1678, "$code"
    unless_null $P1678, vivify_803
    new $P1678, "Undef"
  vivify_803:
    concat $P1679, $P1678, "\n"
    store_lex "$code", $P1679
    find_lex $P1680, "$output"
    unless_null $P1680, vivify_804
    new $P1680, "Undef"
  vivify_804:
.annotate 'line', 1236
    .const 'Sub' $P1682 = "189_1304277405.374" 
    capture_lex $P1682
    $P1682()
.annotate 'line', 1243
    find_dynamic_lex $P1708, "$*MAIN_CTX"
    unless_null $P1708, vivify_809
    get_hll_global $P1706, "GLOBAL"
    get_who $P1707, $P1706
    set $P1708, $P1707["$MAIN_CTX"]
    unless_null $P1708, vivify_810
    die "Contextual $*MAIN_CTX not found"
  vivify_810:
  vivify_809:
    defined $I1709, $P1708
    unless $I1709, if_1705_end
    .const 'Sub' $P1711 = "191_1304277405.374" 
    capture_lex $P1711
    $P1711()
  if_1705_end:
.annotate 'line', 1251
    find_lex $P1742, "$output"
    unless_null $P1742, vivify_820
    new $P1742, "Undef"
  vivify_820:
    isnull $I1743, $P1742
    unless $I1743, if_1741_end
    set $I1744, .CONTROL_LOOP_NEXT
    die 0, $I1744
  if_1741_end:
.annotate 'line', 1253
    find_lex $P1747, "$target"
    unless_null $P1747, vivify_821
    new $P1747, "Undef"
  vivify_821:
    isfalse $I1748, $P1747
    if $I1748, if_1746
.annotate 'line', 1255
    find_lex $P1754, "$target"
    unless_null $P1754, vivify_822
    new $P1754, "Undef"
  vivify_822:
    set $S1755, $P1754
    iseq $I1756, $S1755, "pir"
    if $I1756, if_1753
.annotate 'line', 1258
    find_lex $P1758, "self"
    find_lex $P1759, "$output"
    unless_null $P1759, vivify_823
    new $P1759, "Undef"
  vivify_823:
    find_lex $P1760, "$target"
    unless_null $P1760, vivify_824
    new $P1760, "Undef"
  vivify_824:
    find_lex $P1761, "%adverbs"
    unless_null $P1761, vivify_825
    $P1761 = root_new ['parrot';'Hash']
  vivify_825:
    $P1762 = $P1758."dumper"($P1759, $P1760, $P1761 :flat)
.annotate 'line', 1257
    set $P1752, $P1762
.annotate 'line', 1255
    goto if_1753_end
  if_1753:
.annotate 'line', 1256
    find_lex $P1757, "$output"
    unless_null $P1757, vivify_826
    new $P1757, "Undef"
  vivify_826:
    say $P1757
  if_1753_end:
.annotate 'line', 1255
    set $P1745, $P1752
.annotate 'line', 1253
    goto if_1746_end
  if_1746:
.annotate 'line', 1254
    find_lex $P1749, "self"
    find_lex $P1750, "$output"
    unless_null $P1750, vivify_827
    new $P1750, "Undef"
  vivify_827:
    $P1751 = $P1749."autoprint"($P1750)
.annotate 'line', 1253
    set $P1745, $P1751
  if_1746_end:
.annotate 'line', 1233
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1681"  :anon :subid("189_1304277405.374") :outer("188_1304277405.374")
.annotate 'line', 1236
    .const 'Sub' $P1694 = "190_1304277405.374" 
    capture_lex $P1694
    new $P1690, 'ExceptionHandler'
    set_label $P1690, control_1689
    $P1690."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1690
.annotate 'line', 1237
    find_lex $P1683, "self"
    find_lex $P1684, "$code"
    unless_null $P1684, vivify_805
    new $P1684, "Undef"
  vivify_805:
    find_lex $P1685, "$save_ctx"
    unless_null $P1685, vivify_806
    new $P1685, "Undef"
  vivify_806:
    find_lex $P1686, "%adverbs"
    unless_null $P1686, vivify_807
    $P1686 = root_new ['parrot';'Hash']
  vivify_807:
    $P1687 = $P1683."eval"($P1684, $P1686 :flat, $P1685 :named("outer_ctx"))
    store_lex "$output", $P1687
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1688
  control_1689:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1694 = "190_1304277405.374" 
    newclosure $P1702, $P1694
    $P1702(exception)
    new $P1703, 'Integer'
    set $P1703, 1
    set exception["handled"], $P1703
    set $I1704, exception["handled"]
    ne $I1704, 1, nothandled_1692
  handled_1691:
    .return (exception)
  nothandled_1692:
    rethrow exception
  skip_handler_1688:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1693"  :anon :subid("190_1304277405.374") :outer("189_1304277405.374")
    .param pmc param_1695
.annotate 'line', 1238
    .lex "$_", param_1695
    find_lex $P1696, "$_"
    .lex "$!", $P1696
.annotate 'line', 1239
    find_lex $P1697, "$!"
    unless_null $P1697, vivify_808
    new $P1697, "Undef"
  vivify_808:
    set $S1698, $P1697
    new $P1699, 'String'
    set $P1699, $S1698
    concat $P1700, $P1699, "\n"
    print $P1700
.annotate 'line', 1240
    set $I1701, .CONTROL_LOOP_NEXT
    die 0, $I1701
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1710"  :anon :subid("191_1304277405.374") :outer("188_1304277405.374")
.annotate 'line', 1243
    .const 'Sub' $P1726 = "192_1304277405.374" 
    capture_lex $P1726
    find_lex $P1712, "$?PACKAGE"
    get_who $P1713, $P1712
    set $P1714, $P1713["$interactive_ctx"]
    unless_null $P1714, vivify_811
    new $P1714, "Undef"
  vivify_811:
    find_lex $P1715, "$?PACKAGE"
    get_who $P1716, $P1715
    set $P1717, $P1716["%interactive_pad"]
    unless_null $P1717, vivify_812
    $P1717 = root_new ['parrot';'Hash']
  vivify_812:
.annotate 'line', 1246
    find_dynamic_lex $P1721, "$*MAIN_CTX"
    unless_null $P1721, vivify_813
    get_hll_global $P1719, "GLOBAL"
    get_who $P1720, $P1719
    set $P1721, $P1720["$MAIN_CTX"]
    unless_null $P1721, vivify_814
    die "Contextual $*MAIN_CTX not found"
  vivify_814:
  vivify_813:
    $P1722 = $P1721."lexpad_full"()
    defined $I1723, $P1722
    unless $I1723, for_undef_815
    iter $P1718, $P1722
    new $P1736, 'ExceptionHandler'
    set_label $P1736, loop1735_handler
    $P1736."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1736
  loop1735_test:
    unless $P1718, loop1735_done
    shift $P1724, $P1718
  loop1735_redo:
    .const 'Sub' $P1726 = "192_1304277405.374" 
    capture_lex $P1726
    $P1726($P1724)
  loop1735_next:
    goto loop1735_test
  loop1735_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1737, exception, 'type'
    eq $P1737, .CONTROL_LOOP_NEXT, loop1735_next
    eq $P1737, .CONTROL_LOOP_REDO, loop1735_redo
  loop1735_done:
    pop_eh 
  for_undef_815:
.annotate 'line', 1249
    find_lex $P1738, "$?PACKAGE"
    get_who $P1739, $P1738
    set $P1740, $P1739["$interactive_ctx"]
    unless_null $P1740, vivify_819
    new $P1740, "Undef"
  vivify_819:
    store_lex "$save_ctx", $P1740
.annotate 'line', 1243
    .return ($P1740)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1725"  :anon :subid("192_1304277405.374") :outer("191_1304277405.374")
    .param pmc param_1727
.annotate 'line', 1246
    .lex "$_", param_1727
.annotate 'line', 1247
    find_lex $P1728, "$_"
    unless_null $P1728, vivify_816
    new $P1728, "Undef"
  vivify_816:
    $P1729 = $P1728."value"()
    find_lex $P1730, "$_"
    unless_null $P1730, vivify_817
    new $P1730, "Undef"
  vivify_817:
    $P1731 = $P1730."key"()
    find_lex $P1732, "$?PACKAGE"
    get_who $P1733, $P1732
    set $P1734, $P1733["%interactive_pad"]
    unless_null $P1734, vivify_818
    $P1734 = root_new ['parrot';'Hash']
    set $P1733["%interactive_pad"], $P1734
  vivify_818:
    set $P1734[$P1731], $P1729
.annotate 'line', 1246
    .return ($P1729)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1768
    .param pmc param_1769
    .param pmc param_1770 :slurpy
    .param pmc param_1771 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1790 = "194_1304277405.374" 
    capture_lex $P1790
    .lex "self", param_1768
    .lex "$code", param_1769
    .lex "@args", param_1770
    .lex "%adverbs", param_1771
.annotate 'line', 1265
    new $P1772, "Undef"
    .lex "$output", $P1772
.annotate 'line', 1264
    find_lex $P1773, "$output"
    unless_null $P1773, vivify_828
    new $P1773, "Undef"
  vivify_828:
.annotate 'line', 1266
    find_lex $P1774, "self"
    find_lex $P1775, "$code"
    unless_null $P1775, vivify_829
    new $P1775, "Undef"
  vivify_829:
    find_lex $P1776, "%adverbs"
    unless_null $P1776, vivify_830
    $P1776 = root_new ['parrot';'Hash']
  vivify_830:
    $P1777 = $P1774."compile"($P1775, $P1776 :flat)
    store_lex "$output", $P1777
.annotate 'line', 1268
    find_lex $P1781, "$output"
    unless_null $P1781, vivify_831
    new $P1781, "Undef"
  vivify_831:
    isa $I1782, $P1781, "String"
    new $P1783, 'Integer'
    set $P1783, $I1782
    isfalse $I1784, $P1783
    if $I1784, if_1780
    new $P1779, 'Integer'
    set $P1779, $I1784
    goto if_1780_end
  if_1780:
.annotate 'line', 1269
    find_lex $P1785, "%adverbs"
    unless_null $P1785, vivify_832
    $P1785 = root_new ['parrot';'Hash']
  vivify_832:
    set $P1786, $P1785["target"]
    unless_null $P1786, vivify_833
    new $P1786, "Undef"
  vivify_833:
    set $S1787, $P1786
    iseq $I1788, $S1787, ""
    new $P1779, 'Integer'
    set $P1779, $I1788
  if_1780_end:
    unless $P1779, if_1778_end
    .const 'Sub' $P1790 = "194_1304277405.374" 
    capture_lex $P1790
    $P1790()
  if_1778_end:
.annotate 'line', 1268
    find_lex $P1806, "$output"
    unless_null $P1806, vivify_844
    new $P1806, "Undef"
  vivify_844:
.annotate 'line', 1264
    .return ($P1806)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1789"  :anon :subid("194_1304277405.374") :outer("193_1304277405.374")
.annotate 'line', 1270
    new $P1791, "Undef"
    .lex "$outer_ctx", $P1791
    find_lex $P1792, "%adverbs"
    unless_null $P1792, vivify_834
    $P1792 = root_new ['parrot';'Hash']
  vivify_834:
    set $P1793, $P1792["outer_ctx"]
    unless_null $P1793, vivify_835
    new $P1793, "Undef"
  vivify_835:
    store_lex "$outer_ctx", $P1793
.annotate 'line', 1271
    find_lex $P1795, "$outer_ctx"
    unless_null $P1795, vivify_836
    new $P1795, "Undef"
  vivify_836:
    defined $I1796, $P1795
    unless $I1796, if_1794_end
.annotate 'line', 1272
    find_lex $P1797, "$output"
    unless_null $P1797, vivify_837
    $P1797 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $P1798, $P1797[0]
    unless_null $P1798, vivify_838
    new $P1798, "Undef"
  vivify_838:
    find_lex $P1799, "$outer_ctx"
    unless_null $P1799, vivify_839
    new $P1799, "Undef"
  vivify_839:
    $P1798."set_outer_ctx"($P1799)
  if_1794_end:
.annotate 'line', 1275
    find_lex $P1800, "%adverbs"
    unless_null $P1800, vivify_840
    $P1800 = root_new ['parrot';'Hash']
  vivify_840:
    set $P1801, $P1800["trace"]
    unless_null $P1801, vivify_841
    new $P1801, "Undef"
  vivify_841:
    set $I1802, $P1801
    trace $I1802
.annotate 'line', 1276
    find_lex $P1803, "$output"
    unless_null $P1803, vivify_842
    new $P1803, "Undef"
  vivify_842:
    find_lex $P1804, "@args"
    unless_null $P1804, vivify_843
    $P1804 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
    $P1805 = $P1803($P1804 :flat)
    store_lex "$output", $P1805
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1808
.annotate 'line', 1283
    .lex "self", param_1808
.annotate 'line', 1285

                $P0 = getinterp
                $P1809 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1809
.annotate 'line', 1289
    new $P1810, "Integer"
    assign $P1810, 0
    store_dynamic_lex "$*CTXSAVE", $P1810
.annotate 'line', 1283
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("196_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1812
    .param pmc param_1813 :slurpy
.annotate 'line', 1292
    .lex "self", param_1812
    .lex "@args", param_1813
.annotate 'line', 1293
    find_lex $P1814, "@args"
    unless_null $P1814, vivify_845
    $P1814 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    join $S1815, "", $P1814
    die $S1815
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1817
    .param pmc param_1818 :optional
    .param int has_param_1818 :opt_flag
.annotate 'line', 1296
    .lex "self", param_1817
    if has_param_1818, optparam_846
    $P1819 = root_new ['parrot';'ResizablePMCArray']
    set param_1818, $P1819
  optparam_846:
    .lex "@value", param_1818
.annotate 'line', 1297
    find_lex $P1821, "@value"
    unless_null $P1821, vivify_847
    $P1821 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    set $N1822, $P1821
    unless $N1822, if_1820_end
.annotate 'line', 1298
    find_lex $P1823, "@value"
    unless_null $P1823, vivify_848
    $P1823 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    find_lex $P1824, "self"
    find_lex $P1825, "$?CLASS"
    setattribute $P1824, $P1825, "@!stages", $P1823
  if_1820_end:
.annotate 'line', 1297
    find_lex $P1826, "self"
    find_lex $P1827, "$?CLASS"
    getattribute $P1828, $P1826, $P1827, "@!stages"
    unless_null $P1828, vivify_849
    $P1828 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
.annotate 'line', 1296
    .return ($P1828)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1830
    .param pmc param_1831 :slurpy
.annotate 'line', 1303
    .lex "self", param_1830
    .lex "@value", param_1831
.annotate 'line', 1304
    find_lex $P1833, "@value"
    unless_null $P1833, vivify_850
    $P1833 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    set $N1834, $P1833
    unless $N1834, if_1832_end
.annotate 'line', 1305
    find_lex $P1835, "@value"
    unless_null $P1835, vivify_851
    $P1835 = root_new ['parrot';'ResizablePMCArray']
  vivify_851:
    set $P1836, $P1835[0]
    unless_null $P1836, vivify_852
    new $P1836, "Undef"
  vivify_852:
    find_lex $P1837, "self"
    find_lex $P1838, "$?CLASS"
    setattribute $P1837, $P1838, "$!parsegrammar", $P1836
  if_1832_end:
.annotate 'line', 1304
    find_lex $P1839, "self"
    find_lex $P1840, "$?CLASS"
    getattribute $P1841, $P1839, $P1840, "$!parsegrammar"
    unless_null $P1841, vivify_853
    new $P1841, "Undef"
  vivify_853:
.annotate 'line', 1303
    .return ($P1841)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1843
    .param pmc param_1844 :slurpy
.annotate 'line', 1310
    .lex "self", param_1843
    .lex "@value", param_1844
.annotate 'line', 1311
    find_lex $P1846, "@value"
    unless_null $P1846, vivify_854
    $P1846 = root_new ['parrot';'ResizablePMCArray']
  vivify_854:
    set $N1847, $P1846
    unless $N1847, if_1845_end
.annotate 'line', 1312
    find_lex $P1848, "@value"
    unless_null $P1848, vivify_855
    $P1848 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1849, $P1848[0]
    unless_null $P1849, vivify_856
    new $P1849, "Undef"
  vivify_856:
    find_lex $P1850, "self"
    find_lex $P1851, "$?CLASS"
    setattribute $P1850, $P1851, "$!parseactions", $P1849
  if_1845_end:
.annotate 'line', 1311
    find_lex $P1852, "self"
    find_lex $P1853, "$?CLASS"
    getattribute $P1854, $P1852, $P1853, "$!parseactions"
    unless_null $P1854, vivify_857
    new $P1854, "Undef"
  vivify_857:
.annotate 'line', 1310
    .return ($P1854)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1856
    .param pmc param_1857 :slurpy
.annotate 'line', 1317
    .lex "self", param_1856
    .lex "@value", param_1857
.annotate 'line', 1318
    find_lex $P1859, "@value"
    unless_null $P1859, vivify_858
    $P1859 = root_new ['parrot';'ResizablePMCArray']
  vivify_858:
    set $N1860, $P1859
    unless $N1860, if_1858_end
.annotate 'line', 1319
    find_lex $P1861, "@value"
    unless_null $P1861, vivify_859
    $P1861 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $P1862, $P1861[0]
    unless_null $P1862, vivify_860
    new $P1862, "Undef"
  vivify_860:
    find_lex $P1863, "self"
    find_lex $P1864, "$?CLASS"
    setattribute $P1863, $P1864, "$!astgrammar", $P1862
  if_1858_end:
.annotate 'line', 1318
    find_lex $P1865, "self"
    find_lex $P1866, "$?CLASS"
    getattribute $P1867, $P1865, $P1866, "$!astgrammar"
    unless_null $P1867, vivify_861
    new $P1867, "Undef"
  vivify_861:
.annotate 'line', 1317
    .return ($P1867)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1869
    .param pmc param_1870 :optional
    .param int has_param_1870 :opt_flag
.annotate 'line', 1324
    .lex "self", param_1869
    if has_param_1870, optparam_862
    new $P1871, "Undef"
    set param_1870, $P1871
  optparam_862:
    .lex "$value", param_1870
.annotate 'line', 1325
    find_lex $P1873, "$value"
    unless_null $P1873, vivify_863
    new $P1873, "Undef"
  vivify_863:
    defined $I1874, $P1873
    unless $I1874, if_1872_end
.annotate 'line', 1326
    find_lex $P1875, "$value"
    unless_null $P1875, vivify_864
    new $P1875, "Undef"
  vivify_864:
    find_lex $P1876, "self"
    find_lex $P1877, "$?CLASS"
    setattribute $P1876, $P1877, "$!commandline_banner", $P1875
  if_1872_end:
.annotate 'line', 1325
    find_lex $P1878, "self"
    find_lex $P1879, "$?CLASS"
    getattribute $P1880, $P1878, $P1879, "$!commandline_banner"
    unless_null $P1880, vivify_865
    new $P1880, "Undef"
  vivify_865:
.annotate 'line', 1324
    .return ($P1880)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1882
    .param pmc param_1883 :optional
    .param int has_param_1883 :opt_flag
.annotate 'line', 1331
    .lex "self", param_1882
    if has_param_1883, optparam_866
    new $P1884, "Undef"
    set param_1883, $P1884
  optparam_866:
    .lex "$value", param_1883
.annotate 'line', 1332
    find_lex $P1886, "$value"
    unless_null $P1886, vivify_867
    new $P1886, "Undef"
  vivify_867:
    defined $I1887, $P1886
    unless $I1887, if_1885_end
.annotate 'line', 1333
    find_lex $P1888, "$value"
    unless_null $P1888, vivify_868
    new $P1888, "Undef"
  vivify_868:
    find_lex $P1889, "self"
    find_lex $P1890, "$?CLASS"
    setattribute $P1889, $P1890, "$!commandline_prompt", $P1888
  if_1885_end:
.annotate 'line', 1332
    find_lex $P1891, "self"
    find_lex $P1892, "$?CLASS"
    getattribute $P1893, $P1891, $P1892, "$!commandline_prompt"
    unless_null $P1893, vivify_869
    new $P1893, "Undef"
  vivify_869:
.annotate 'line', 1331
    .return ($P1893)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1895
    .param pmc param_1896 :optional
    .param int has_param_1896 :opt_flag
.annotate 'line', 1338
    .lex "self", param_1895
    if has_param_1896, optparam_870
    new $P1897, "Undef"
    set param_1896, $P1897
  optparam_870:
    .lex "$value", param_1896
.annotate 'line', 1339
    find_lex $P1899, "$value"
    unless_null $P1899, vivify_871
    new $P1899, "Undef"
  vivify_871:
    defined $I1900, $P1899
    unless $I1900, if_1898_end
.annotate 'line', 1340
    find_lex $P1901, "$value"
    unless_null $P1901, vivify_872
    new $P1901, "Undef"
  vivify_872:
    find_lex $P1902, "self"
    find_lex $P1903, "$?CLASS"
    setattribute $P1902, $P1903, "$!compiler_progname", $P1901
  if_1898_end:
.annotate 'line', 1339
    find_lex $P1904, "self"
    find_lex $P1905, "$?CLASS"
    getattribute $P1906, $P1904, $P1905, "$!compiler_progname"
    unless_null $P1906, vivify_873
    new $P1906, "Undef"
  vivify_873:
.annotate 'line', 1338
    .return ($P1906)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1908
    .param pmc param_1909 :optional
    .param int has_param_1909 :opt_flag
.annotate 'line', 1345
    .lex "self", param_1908
    if has_param_1909, optparam_874
    $P1910 = root_new ['parrot';'ResizablePMCArray']
    set param_1909, $P1910
  optparam_874:
    .lex "@value", param_1909
.annotate 'line', 1346
    find_lex $P1912, "@value"
    unless_null $P1912, vivify_875
    $P1912 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    set $N1913, $P1912
    unless $N1913, if_1911_end
.annotate 'line', 1347
    find_lex $P1914, "@value"
    unless_null $P1914, vivify_876
    $P1914 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    find_lex $P1915, "self"
    find_lex $P1916, "$?CLASS"
    setattribute $P1915, $P1916, "@!cmdoptions", $P1914
  if_1911_end:
.annotate 'line', 1346
    find_lex $P1917, "self"
    find_lex $P1918, "$?CLASS"
    getattribute $P1919, $P1917, $P1918, "@!cmdoptions"
    unless_null $P1919, vivify_877
    $P1919 = root_new ['parrot';'ResizablePMCArray']
  vivify_877:
.annotate 'line', 1345
    .return ($P1919)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1921
    .param pmc param_1922
    .param pmc param_1923 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P1949 = "206_1304277405.374" 
    capture_lex $P1949
    .lex "self", param_1921
    .lex "@args", param_1922
    .lex "%adverbs", param_1923
.annotate 'line', 1365
    new $P1924, "Undef"
    .lex "$program-name", $P1924
.annotate 'line', 1366
    new $P1925, "Undef"
    .lex "$res", $P1925
.annotate 'line', 1367
    $P1926 = root_new ['parrot';'Hash']
    .lex "%opts", $P1926
.annotate 'line', 1368
    $P1927 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P1927
.annotate 'line', 1361
    find_lex $P1929, "@args"
    unless_null $P1929, vivify_878
    $P1929 = root_new ['parrot';'ResizablePMCArray']
  vivify_878:
    set $P1930, $P1929[2]
    unless_null $P1930, vivify_879
    new $P1930, "Undef"
  vivify_879:
    set $S1931, $P1930
    index $I1932, $S1931, "@INC"
    set $N1933, $I1932
    isge $I1934, $N1933, 0.0
    unless $I1934, if_1928_end
.annotate 'line', 1362
    exit 0
  if_1928_end:
.annotate 'line', 1365
    find_lex $P1935, "@args"
    unless_null $P1935, vivify_880
    $P1935 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    set $P1936, $P1935[0]
    unless_null $P1936, vivify_881
    new $P1936, "Undef"
  vivify_881:
    store_lex "$program-name", $P1936
.annotate 'line', 1366
    find_lex $P1937, "self"
    find_lex $P1938, "@args"
    unless_null $P1938, vivify_882
    $P1938 = root_new ['parrot';'ResizablePMCArray']
  vivify_882:
    $P1939 = $P1937."process_args"($P1938)
    store_lex "$res", $P1939
.annotate 'line', 1367
    find_lex $P1940, "$res"
    unless_null $P1940, vivify_883
    new $P1940, "Undef"
  vivify_883:
    $P1941 = $P1940."options"()
    store_lex "%opts", $P1941
.annotate 'line', 1368
    find_lex $P1942, "$res"
    unless_null $P1942, vivify_884
    new $P1942, "Undef"
  vivify_884:
    $P1943 = $P1942."arguments"()
    store_lex "@a", $P1943
.annotate 'line', 1370
    find_lex $P1945, "%opts"
    unless_null $P1945, vivify_885
    $P1945 = root_new ['parrot';'Hash']
  vivify_885:
    defined $I1946, $P1945
    unless $I1946, for_undef_886
    iter $P1944, $P1945
    new $P1957, 'ExceptionHandler'
    set_label $P1957, loop1956_handler
    $P1957."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1957
  loop1956_test:
    unless $P1944, loop1956_done
    shift $P1947, $P1944
  loop1956_redo:
    .const 'Sub' $P1949 = "206_1304277405.374" 
    capture_lex $P1949
    $P1949($P1947)
  loop1956_next:
    goto loop1956_test
  loop1956_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1958, exception, 'type'
    eq $P1958, .CONTROL_LOOP_NEXT, loop1956_next
    eq $P1958, .CONTROL_LOOP_REDO, loop1956_redo
  loop1956_done:
    pop_eh 
  for_undef_886:
.annotate 'line', 1373
    find_lex $P1960, "%adverbs"
    unless_null $P1960, vivify_892
    $P1960 = root_new ['parrot';'Hash']
  vivify_892:
    set $P1961, $P1960["help"]
    unless_null $P1961, vivify_893
    new $P1961, "Undef"
  vivify_893:
    unless $P1961, if_1959_end
    find_lex $P1962, "self"
    find_lex $P1963, "$program-name"
    unless_null $P1963, vivify_894
    new $P1963, "Undef"
  vivify_894:
    $P1962."usage"($P1963)
  if_1959_end:
.annotate 'line', 1374
    find_lex $P1965, "%adverbs"
    unless_null $P1965, vivify_895
    $P1965 = root_new ['parrot';'Hash']
  vivify_895:
    set $P1966, $P1965["version"]
    unless_null $P1966, vivify_896
    new $P1966, "Undef"
  vivify_896:
    unless $P1966, if_1964_end
    find_lex $P1967, "self"
    $P1967."version"()
  if_1964_end:
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
.sub "_block1948"  :anon :subid("206_1304277405.374") :outer("205_1304277405.374")
    .param pmc param_1950
.annotate 'line', 1370
    .lex "$k", param_1950
.annotate 'line', 1371
    find_lex $P1951, "$k"
    unless_null $P1951, vivify_887
    new $P1951, "Undef"
  vivify_887:
    find_lex $P1952, "%opts"
    unless_null $P1952, vivify_888
    $P1952 = root_new ['parrot';'Hash']
  vivify_888:
    set $P1953, $P1952[$P1951]
    unless_null $P1953, vivify_889
    new $P1953, "Undef"
  vivify_889:
    find_lex $P1954, "$k"
    unless_null $P1954, vivify_890
    new $P1954, "Undef"
  vivify_890:
    find_lex $P1955, "%adverbs"
    unless_null $P1955, vivify_891
    $P1955 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1955
  vivify_891:
    set $P1955[$P1954], $P1953
.annotate 'line', 1370
    .return ($P1953)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_1969
    .param pmc param_1970
.annotate 'line', 1470
    .const 'Sub' $P1989 = "208_1304277405.374" 
    capture_lex $P1989
    .lex "self", param_1969
    .lex "@args", param_1970
.annotate 'line', 1474
    new $P1971, "Undef"
    .lex "$p", $P1971
.annotate 'line', 1477
    new $P1972, "Undef"
    .lex "$res", $P1972
.annotate 'line', 1472
    find_lex $P1973, "self"
    find_lex $P1974, "@args"
    unless_null $P1974, vivify_897
    $P1974 = root_new ['parrot';'ResizablePMCArray']
  vivify_897:
    $P1975 = $P1974."shift"()
    $P1973."compiler_progname"($P1975)
.annotate 'line', 1474
    get_hll_global $P1976, "GLOBAL"
    nqp_get_package_through_who $P1977, $P1976, "HLL"
    nqp_get_package_through_who $P1978, $P1977, "CommandLine"
    get_who $P1979, $P1978
    set $P1980, $P1979["Parser"]
    find_lex $P1981, "self"
    find_lex $P1982, "$?CLASS"
    getattribute $P1983, $P1981, $P1982, "@!cmdoptions"
    unless_null $P1983, vivify_898
    $P1983 = root_new ['parrot';'ResizablePMCArray']
  vivify_898:
    $P1984 = $P1980."new"($P1983)
    store_lex "$p", $P1984
.annotate 'line', 1475
    find_lex $P1985, "$p"
    unless_null $P1985, vivify_899
    new $P1985, "Undef"
  vivify_899:
    $P1985."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P1986, "$p"
    unless_null $P1986, vivify_900
    new $P1986, "Undef"
  vivify_900:
    $P1986."stop-after-first-arg"()
    find_lex $P1987, "$res"
    unless_null $P1987, vivify_901
    new $P1987, "Undef"
  vivify_901:
.annotate 'line', 1478
    .const 'Sub' $P1989 = "208_1304277405.374" 
    capture_lex $P1989
    $P1989()
    find_lex $P2007, "$res"
    unless_null $P2007, vivify_905
    new $P2007, "Undef"
  vivify_905:
.annotate 'line', 1470
    .return ($P2007)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1988"  :anon :subid("208_1304277405.374") :outer("207_1304277405.374")
.annotate 'line', 1478
    .const 'Sub' $P1999 = "209_1304277405.374" 
    capture_lex $P1999
    new $P1995, 'ExceptionHandler'
    set_label $P1995, control_1994
    $P1995."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1995
.annotate 'line', 1479
    find_lex $P1990, "$p"
    unless_null $P1990, vivify_902
    new $P1990, "Undef"
  vivify_902:
    find_lex $P1991, "@args"
    unless_null $P1991, vivify_903
    $P1991 = root_new ['parrot';'ResizablePMCArray']
  vivify_903:
    $P1992 = $P1990."parse"($P1991)
    store_lex "$res", $P1992
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_1993
  control_1994:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1999 = "209_1304277405.374" 
    newclosure $P2004, $P1999
    $P2004(exception)
    new $P2005, 'Integer'
    set $P2005, 1
    set exception["handled"], $P2005
    set $I2006, exception["handled"]
    ne $I2006, 1, nothandled_1997
  handled_1996:
    .return (exception)
  nothandled_1997:
    rethrow exception
  skip_handler_1993:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1998"  :anon :subid("209_1304277405.374") :outer("208_1304277405.374")
    .param pmc param_2000
.annotate 'line', 1480
    .lex "$_", param_2000
    find_lex $P2001, "$_"
    .lex "$!", $P2001
.annotate 'line', 1481
    find_lex $P2002, "$_"
    unless_null $P2002, vivify_904
    new $P2002, "Undef"
  vivify_904:
    say $P2002
.annotate 'line', 1482
    find_lex $P2003, "self"
    $P2003."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("210_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2011
    .param pmc param_2012
    .param pmc param_2013 :slurpy
    .param pmc param_2014 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P2039 = "211_1304277405.374" 
    capture_lex $P2039
    new $P2010, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2010, control_2009
    push_eh $P2010
    .lex "self", param_2011
    .lex "$files", param_2012
    .lex "@args", param_2013
    .lex "%adverbs", param_2014
.annotate 'line', 1490
    new $P2015, "Undef"
    .lex "$target", $P2015
.annotate 'line', 1491
    new $P2016, "Undef"
    .lex "$encoding", $P2016
.annotate 'line', 1492
    $P2017 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2017
.annotate 'line', 1493
    $P2018 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2018
.annotate 'line', 1490
    find_lex $P2019, "%adverbs"
    unless_null $P2019, vivify_906
    $P2019 = root_new ['parrot';'Hash']
  vivify_906:
    set $P2020, $P2019["target"]
    unless_null $P2020, vivify_907
    new $P2020, "Undef"
  vivify_907:
    set $S2021, $P2020
    downcase $S2022, $S2021
    new $P2023, 'String'
    set $P2023, $S2022
    store_lex "$target", $P2023
.annotate 'line', 1491
    find_lex $P2024, "%adverbs"
    unless_null $P2024, vivify_908
    $P2024 = root_new ['parrot';'Hash']
  vivify_908:
    set $P2025, $P2024["encoding"]
    unless_null $P2025, vivify_909
    new $P2025, "Undef"
  vivify_909:
    store_lex "$encoding", $P2025
.annotate 'line', 1492
    find_lex $P2028, "$files"
    unless_null $P2028, vivify_910
    new $P2028, "Undef"
  vivify_910:
    does $I2029, $P2028, "array"
    if $I2029, if_2027
    find_lex $P2031, "$files"
    unless_null $P2031, vivify_911
    new $P2031, "Undef"
  vivify_911:
    new $P2032, "ResizablePMCArray"
    push $P2032, $P2031
    set $P2026, $P2032
    goto if_2027_end
  if_2027:
    find_lex $P2030, "$files"
    unless_null $P2030, vivify_912
    new $P2030, "Undef"
  vivify_912:
    set $P2026, $P2030
  if_2027_end:
    store_lex "@files", $P2026
    find_lex $P2033, "@codes"
    unless_null $P2033, vivify_913
    $P2033 = root_new ['parrot';'ResizablePMCArray']
  vivify_913:
.annotate 'line', 1494
    find_lex $P2035, "@files"
    unless_null $P2035, vivify_914
    $P2035 = root_new ['parrot';'ResizablePMCArray']
  vivify_914:
    defined $I2036, $P2035
    unless $I2036, for_undef_915
    iter $P2034, $P2035
    new $P2101, 'ExceptionHandler'
    set_label $P2101, loop2100_handler
    $P2101."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2101
  loop2100_test:
    unless $P2034, loop2100_done
    shift $P2037, $P2034
  loop2100_redo:
    .const 'Sub' $P2039 = "211_1304277405.374" 
    capture_lex $P2039
    $P2039($P2037)
  loop2100_next:
    goto loop2100_test
  loop2100_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2102, exception, 'type'
    eq $P2102, .CONTROL_LOOP_NEXT, loop2100_next
    eq $P2102, .CONTROL_LOOP_REDO, loop2100_redo
  loop2100_done:
    pop_eh 
  for_undef_915:
.annotate 'line', 1489
    .return ($P2034)
  control_2009:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2103, exception, "payload"
    .return ($P2103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2038"  :anon :subid("211_1304277405.374") :outer("210_1304277405.374")
    .param pmc param_2044
.annotate 'line', 1494
    .const 'Sub' $P2048 = "212_1304277405.374" 
    capture_lex $P2048
.annotate 'line', 1495
    new $P2040, "Undef"
    .lex "$in-handle", $P2040
.annotate 'line', 1496
    new $P2041, "Undef"
    .lex "$err", $P2041
.annotate 'line', 1509
    new $P2042, "Undef"
    .lex "$code", $P2042
.annotate 'line', 1511
    new $P2043, "Undef"
    .lex "$r", $P2043
    .lex "$_", param_2044
.annotate 'line', 1495
    new $P2045, "FileHandle"
    store_lex "$in-handle", $P2045
.annotate 'line', 1496
    new $P2046, "Integer"
    assign $P2046, 0
    store_lex "$err", $P2046
.annotate 'line', 1497
    .const 'Sub' $P2048 = "212_1304277405.374" 
    capture_lex $P2048
    $P2048()
.annotate 'line', 1508
    find_lex $P2072, "$err"
    unless_null $P2072, vivify_923
    new $P2072, "Undef"
  vivify_923:
    unless $P2072, if_2071_end
    find_lex $P2073, "$err"
    unless_null $P2073, vivify_924
    new $P2073, "Undef"
  vivify_924:
    die $P2073
  if_2071_end:
.annotate 'line', 1509
    find_lex $P2074, "@codes"
    unless_null $P2074, vivify_925
    $P2074 = root_new ['parrot';'ResizablePMCArray']
  vivify_925:
    join $S2075, "", $P2074
    new $P2076, 'String'
    set $P2076, $S2075
    store_lex "$code", $P2076
.annotate 'line', 1511
    find_lex $P2077, "self"
    find_lex $P2078, "$code"
    unless_null $P2078, vivify_926
    new $P2078, "Undef"
  vivify_926:
    find_lex $P2079, "@args"
    unless_null $P2079, vivify_927
    $P2079 = root_new ['parrot';'ResizablePMCArray']
  vivify_927:
    find_lex $P2080, "%adverbs"
    unless_null $P2080, vivify_928
    $P2080 = root_new ['parrot';'Hash']
  vivify_928:
    $P2081 = $P2077."eval"($P2078, $P2079 :flat, $P2080 :flat)
    store_lex "$r", $P2081
.annotate 'line', 1512
    find_lex $P2086, "$target"
    unless_null $P2086, vivify_929
    new $P2086, "Undef"
  vivify_929:
    set $S2087, $P2086
    iseq $I2088, $S2087, ""
    unless $I2088, unless_2085
    new $P2084, 'Integer'
    set $P2084, $I2088
    goto unless_2085_end
  unless_2085:
    find_lex $P2089, "$target"
    unless_null $P2089, vivify_930
    new $P2089, "Undef"
  vivify_930:
    set $S2090, $P2089
    iseq $I2091, $S2090, "pir"
    new $P2084, 'Integer'
    set $P2084, $I2091
  unless_2085_end:
    if $P2084, if_2083
.annotate 'line', 1515
    new $P2094, "Exception"
    set $P2094['type'], .CONTROL_RETURN
    find_lex $P2095, "self"
    find_lex $P2096, "$r"
    unless_null $P2096, vivify_931
    new $P2096, "Undef"
  vivify_931:
    find_lex $P2097, "$target"
    unless_null $P2097, vivify_932
    new $P2097, "Undef"
  vivify_932:
    find_lex $P2098, "%adverbs"
    unless_null $P2098, vivify_933
    $P2098 = root_new ['parrot';'Hash']
  vivify_933:
    $P2099 = $P2095."dumper"($P2096, $P2097, $P2098 :flat)
    setattribute $P2094, 'payload', $P2099
    throw $P2094
.annotate 'line', 1514
    goto if_2083_end
  if_2083:
.annotate 'line', 1513
    new $P2092, "Exception"
    set $P2092['type'], .CONTROL_RETURN
    find_lex $P2093, "$r"
    unless_null $P2093, vivify_934
    new $P2093, "Undef"
  vivify_934:
    setattribute $P2092, 'payload', $P2093
    throw $P2092
  if_2083_end:
.annotate 'line', 1494
    .return ($P2082)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2047"  :anon :subid("212_1304277405.374") :outer("211_1304277405.374")
.annotate 'line', 1497
    .const 'Sub' $P2062 = "213_1304277405.374" 
    capture_lex $P2062
    new $P2058, 'ExceptionHandler'
    set_label $P2058, control_2057
    $P2058."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2058
.annotate 'line', 1501
    find_lex $P2049, "$in-handle"
    unless_null $P2049, vivify_916
    new $P2049, "Undef"
  vivify_916:
    find_lex $P2050, "$encoding"
    unless_null $P2050, vivify_917
    new $P2050, "Undef"
  vivify_917:
    $P2049."encoding"($P2050)
.annotate 'line', 1502
    find_lex $P2051, "@codes"
    unless_null $P2051, vivify_918
    $P2051 = root_new ['parrot';'ResizablePMCArray']
  vivify_918:
    find_lex $P2052, "$in-handle"
    unless_null $P2052, vivify_919
    new $P2052, "Undef"
  vivify_919:
    find_lex $P2053, "$_"
    unless_null $P2053, vivify_920
    new $P2053, "Undef"
  vivify_920:
    $P2054 = $P2052."readall"($P2053)
    push $P2051, $P2054
.annotate 'line', 1503
    find_lex $P2055, "$in-handle"
    unless_null $P2055, vivify_921
    new $P2055, "Undef"
  vivify_921:
    $P2055."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_2056
  control_2057:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2062 = "213_1304277405.374" 
    newclosure $P2068, $P2062
    $P2068(exception)
    new $P2069, 'Integer'
    set $P2069, 1
    set exception["handled"], $P2069
    set $I2070, exception["handled"]
    ne $I2070, 1, nothandled_2060
  handled_2059:
    .return (exception)
  nothandled_2060:
    rethrow exception
  skip_handler_2056:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2061"  :anon :subid("213_1304277405.374") :outer("212_1304277405.374")
    .param pmc param_2063
.annotate 'line', 1504
    .lex "$_", param_2063
    find_lex $P2064, "$_"
    .lex "$!", $P2064
.annotate 'line', 1505
    new $P2065, 'String'
    set $P2065, "Error while reading from file: "
    find_lex $P2066, "$_"
    unless_null $P2066, vivify_922
    new $P2066, "Undef"
  vivify_922:
    concat $P2067, $P2065, $P2066
    store_lex "$err", $P2067
.annotate 'line', 1504
    .return ($P2067)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2107
    .param pmc param_2108
    .param pmc param_2109 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2132 = "215_1304277405.374" 
    capture_lex $P2132
    new $P2106, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2106, control_2105
    push_eh $P2106
    .lex "self", param_2107
    .lex "$source", param_2108
    .lex "%adverbs", param_2109
.annotate 'line', 1522
    $P2110 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2110
.annotate 'line', 1524
    new $P2111, "Undef"
    .lex "$target", $P2111
.annotate 'line', 1525
    new $P2112, "Undef"
    .lex "$result", $P2112
.annotate 'line', 1526
    new $P2113, "Undef"
    .lex "$stderr", $P2113
.annotate 'line', 1522
    find_lex $P2114, "%adverbs"
    unless_null $P2114, vivify_935
    $P2114 = root_new ['parrot';'Hash']
  vivify_935:
    find_lex $P2117, "%*COMPILING"
    unless_null $P2117, vivify_936
    get_hll_global $P2115, "GLOBAL"
    get_who $P2116, $P2115
    set $P2117, $P2116["%COMPILING"]
    unless_null $P2117, vivify_937
    die "Contextual %*COMPILING not found"
  vivify_937:
    store_lex "%*COMPILING", $P2117
  vivify_936:
    set $P2117["%?OPTIONS"], $P2114
.annotate 'line', 1524
    find_lex $P2118, "%adverbs"
    unless_null $P2118, vivify_938
    $P2118 = root_new ['parrot';'Hash']
  vivify_938:
    set $P2119, $P2118["target"]
    unless_null $P2119, vivify_939
    new $P2119, "Undef"
  vivify_939:
    set $S2120, $P2119
    downcase $S2121, $S2120
    new $P2122, 'String'
    set $P2122, $S2121
    store_lex "$target", $P2122
.annotate 'line', 1525
    find_lex $P2123, "$source"
    unless_null $P2123, vivify_940
    new $P2123, "Undef"
  vivify_940:
    store_lex "$result", $P2123
.annotate 'line', 1526
    getinterp $P2124
    $P2125 = $P2124."stderr_handle"()
    store_lex "$stderr", $P2125
.annotate 'line', 1527
    find_lex $P2127, "self"
    $P2128 = $P2127."stages"()
    defined $I2129, $P2128
    unless $I2129, for_undef_941
    iter $P2126, $P2128
    new $P2168, 'ExceptionHandler'
    set_label $P2168, loop2167_handler
    $P2168."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2168
  loop2167_test:
    unless $P2126, loop2167_done
    shift $P2130, $P2126
  loop2167_redo:
    .const 'Sub' $P2132 = "215_1304277405.374" 
    capture_lex $P2132
    $P2132($P2130)
  loop2167_next:
    goto loop2167_test
  loop2167_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2169, exception, 'type'
    eq $P2169, .CONTROL_LOOP_NEXT, loop2167_next
    eq $P2169, .CONTROL_LOOP_REDO, loop2167_redo
  loop2167_done:
    pop_eh 
  for_undef_941:
.annotate 'line', 1537
    new $P2170, "Exception"
    set $P2170['type'], .CONTROL_RETURN
    find_lex $P2171, "$result"
    unless_null $P2171, vivify_953
    new $P2171, "Undef"
  vivify_953:
    setattribute $P2170, 'payload', $P2171
    throw $P2170
.annotate 'line', 1521
    .return ()
  control_2105:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2172, exception, "payload"
    .return ($P2172)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2131"  :anon :subid("215_1304277405.374") :outer("214_1304277405.374")
    .param pmc param_2135
.annotate 'line', 1528
    new $P2133, "Undef"
    .lex "$timestamp", $P2133
.annotate 'line', 1530
    new $P2134, "Undef"
    .lex "$diff", $P2134
    .lex "$_", param_2135
.annotate 'line', 1528
    time $N2136
    new $P2137, 'Float'
    set $P2137, $N2136
    store_lex "$timestamp", $P2137
.annotate 'line', 1529
    find_lex $P2138, "self"
    find_lex $P2139, "$result"
    unless_null $P2139, vivify_942
    new $P2139, "Undef"
  vivify_942:
    find_lex $P2140, "%adverbs"
    unless_null $P2140, vivify_943
    $P2140 = root_new ['parrot';'Hash']
  vivify_943:
    find_lex $P2141, "$_"
    unless_null $P2141, vivify_944
    new $P2141, "Undef"
  vivify_944:
    set $S2142, $P2141
    $P2143 = $P2138.$S2142($P2139, $P2140 :flat)
    store_lex "$result", $P2143
.annotate 'line', 1530
    time $N2144
    new $P2145, 'Float'
    set $P2145, $N2144
    find_lex $P2146, "$timestamp"
    unless_null $P2146, vivify_945
    new $P2146, "Undef"
  vivify_945:
    sub $P2147, $P2145, $P2146
    store_lex "$diff", $P2147
.annotate 'line', 1531
    find_lex $P2149, "%adverbs"
    unless_null $P2149, vivify_946
    $P2149 = root_new ['parrot';'Hash']
  vivify_946:
    set $P2150, $P2149["stagestats"]
    unless_null $P2150, vivify_947
    new $P2150, "Undef"
  vivify_947:
    unless $P2150, if_2148_end
.annotate 'line', 1533
    find_lex $P2151, "$stderr"
    unless_null $P2151, vivify_948
    new $P2151, "Undef"
  vivify_948:
    new $P2152, 'String'
    set $P2152, "Stage "
    find_lex $P2153, "$_"
    unless_null $P2153, vivify_949
    new $P2153, "Undef"
  vivify_949:
    concat $P2154, $P2152, $P2153
    concat $P2155, $P2154, ": "
    find_lex $P2156, "$diff"
    unless_null $P2156, vivify_950
    new $P2156, "Undef"
  vivify_950:
    concat $P2157, $P2155, $P2156
    concat $P2158, $P2157, "\n"
    $P2151."print__N"($P2158)
  if_2148_end:
.annotate 'line', 1535
    find_lex $P2161, "$_"
    unless_null $P2161, vivify_951
    new $P2161, "Undef"
  vivify_951:
    set $S2162, $P2161
    find_lex $P2163, "$target"
    unless_null $P2163, vivify_952
    new $P2163, "Undef"
  vivify_952:
    set $S2164, $P2163
    iseq $I2165, $S2162, $S2164
    if $I2165, if_2160
    new $P2159, 'Integer'
    set $P2159, $I2165
    goto if_2160_end
  if_2160:
    set $I2166, .CONTROL_LOOP_LAST
    die 0, $I2166
  if_2160_end:
.annotate 'line', 1527
    .return ($P2159)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("216_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2174
    .param pmc param_2175
    .param pmc param_2176 :slurpy :named
.annotate 'line', 1540
    .lex "self", param_2174
    .lex "$source", param_2175
    .lex "%adverbs", param_2176
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
.sub "past"  :subid("217_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2178
    .param pmc param_2179
    .param pmc param_2180 :slurpy :named
.annotate 'line', 1589
    .lex "self", param_2178
    .lex "$source", param_2179
    .lex "%adverbs", param_2180
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
.sub "post"  :subid("218_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2182
    .param pmc param_2183
    .param pmc param_2184 :slurpy :named
.annotate 'line', 1629
    .lex "self", param_2182
    .lex "$source", param_2183
    .lex "%adverbs", param_2184
.annotate 'line', 1630
    compreg $P2185, "PAST"
    find_lex $P2186, "$source"
    unless_null $P2186, vivify_954
    new $P2186, "Undef"
  vivify_954:
    find_lex $P2187, "%adverbs"
    unless_null $P2187, vivify_955
    $P2187 = root_new ['parrot';'Hash']
  vivify_955:
    $P2188 = $P2185."to_post"($P2186, $P2187 :flat)
.annotate 'line', 1629
    .return ($P2188)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2190
    .param pmc param_2191
    .param pmc param_2192 :slurpy :named
.annotate 'line', 1633
    .lex "self", param_2190
    .lex "$source", param_2191
    .lex "%adverbs", param_2192
.annotate 'line', 1634
    compreg $P2193, "POST"
    find_lex $P2194, "$source"
    unless_null $P2194, vivify_956
    new $P2194, "Undef"
  vivify_956:
    find_lex $P2195, "%adverbs"
    unless_null $P2195, vivify_957
    $P2195 = root_new ['parrot';'Hash']
  vivify_957:
    $P2196 = $P2193."to_pir"($P2194, $P2195 :flat)
.annotate 'line', 1633
    .return ($P2196)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2198
    .param pmc param_2199
    .param pmc param_2200 :slurpy :named
.annotate 'line', 1637
    .lex "self", param_2198
    .lex "$source", param_2199
    .lex "%adverbs", param_2200
.annotate 'line', 1638
    new $P2201, "Undef"
    .lex "$compiler", $P2201
    compreg $P2202, "PIR"
    store_lex "$compiler", $P2202
.annotate 'line', 1639
    find_lex $P2203, "$compiler"
    unless_null $P2203, vivify_958
    new $P2203, "Undef"
  vivify_958:
    find_lex $P2204, "$source"
    unless_null $P2204, vivify_959
    new $P2204, "Undef"
  vivify_959:
    $P2205 = $P2203($P2204)
.annotate 'line', 1637
    .return ($P2205)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2207
    .param pmc param_2208
    .param pmc param_2209
    .param pmc param_2210 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2216 = "222_1304277405.374" 
    capture_lex $P2216
    .lex "self", param_2207
    .lex "$obj", param_2208
    .lex "$name", param_2209
    .lex "%options", param_2210
.annotate 'line', 1643
    find_lex $P2213, "%options"
    unless_null $P2213, vivify_960
    $P2213 = root_new ['parrot';'Hash']
  vivify_960:
    set $P2214, $P2213["dumper"]
    unless_null $P2214, vivify_961
    new $P2214, "Undef"
  vivify_961:
    if $P2214, if_2212
.annotate 'line', 1649
    find_lex $P2232, "$obj"
    unless_null $P2232, vivify_962
    new $P2232, "Undef"
  vivify_962:
    find_lex $P2233, "$name"
    unless_null $P2233, vivify_963
    new $P2233, "Undef"
  vivify_963:
    $P2234 = "_dumper"($P2232, $P2233)
.annotate 'line', 1648
    set $P2211, $P2234
.annotate 'line', 1643
    goto if_2212_end
  if_2212:
    .const 'Sub' $P2216 = "222_1304277405.374" 
    capture_lex $P2216
    $P2231 = $P2216()
    set $P2211, $P2231
  if_2212_end:
.annotate 'line', 1642
    .return ($P2211)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2215"  :anon :subid("222_1304277405.374") :outer("221_1304277405.374")
.annotate 'line', 1645
    new $P2217, "Undef"
    .lex "$dumper", $P2217
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2218, "%options"
    unless_null $P2218, vivify_964
    $P2218 = root_new ['parrot';'Hash']
  vivify_964:
    set $P2219, $P2218["dumper"]
    unless_null $P2219, vivify_965
    new $P2219, "Undef"
  vivify_965:
    set $S2220, $P2219
    downcase $S2221, $S2220
    get_hll_global $P2222, "GLOBAL"
    nqp_get_package_through_who $P2223, $P2222, "PCT"
    get_who $P2224, $P2223
    set $P2225, $P2224["Dumper"]
    unless_null $P2225, vivify_966
    $P2225 = root_new ['parrot';'Hash']
  vivify_966:
    set $P2226, $P2225[$S2221]
    unless_null $P2226, vivify_967
    new $P2226, "Undef"
  vivify_967:
    store_lex "$dumper", $P2226
.annotate 'line', 1646
    find_lex $P2227, "$dumper"
    unless_null $P2227, vivify_968
    new $P2227, "Undef"
  vivify_968:
    find_lex $P2228, "$obj"
    unless_null $P2228, vivify_969
    new $P2228, "Undef"
  vivify_969:
    find_lex $P2229, "$name"
    unless_null $P2229, vivify_970
    new $P2229, "Undef"
  vivify_970:
    $P2230 = $P2227($P2228, $P2229)
.annotate 'line', 1643
    .return ($P2230)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2236
    .param pmc param_2237 :optional
    .param int has_param_2237 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2236
    if has_param_2237, optparam_971
    new $P2238, "Undef"
    set param_2237, $P2238
  optparam_971:
    .lex "$name", param_2237
.annotate 'line', 1654
    find_lex $P2240, "$name"
    unless_null $P2240, vivify_972
    new $P2240, "Undef"
  vivify_972:
    unless $P2240, if_2239_end
.annotate 'line', 1655
    find_lex $P2241, "$name"
    unless_null $P2241, vivify_973
    new $P2241, "Undef"
  vivify_973:
    "say"($P2241)
  if_2239_end:
.annotate 'line', 1657
    find_lex $P2242, "self"
    find_lex $P2243, "$?CLASS"
    getattribute $P2244, $P2242, $P2243, "$!usage"
    unless_null $P2244, vivify_974
    new $P2244, "Undef"
  vivify_974:
    say $P2244
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2246
.annotate 'line', 1661
    .lex "self", param_2246
.annotate 'line', 1662
    find_lex $P2247, "self"
    find_lex $P2248, "$?CLASS"
    getattribute $P2249, $P2247, $P2248, "$!version"
    unless_null $P2249, vivify_975
    new $P2249, "Undef"
  vivify_975:
    say $P2249
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2251
    .param pmc param_2252
.annotate 'line', 1666
    .const 'Sub' $P2262 = "226_1304277405.374" 
    capture_lex $P2262
    .lex "self", param_2251
    .lex "$stagename", param_2252
.annotate 'line', 1667
    $P2253 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2253
    new $P2254, "ResizableStringArray"
    store_lex "@new_stages", $P2254
.annotate 'line', 1668
    find_lex $P2256, "self"
    find_lex $P2257, "$?CLASS"
    getattribute $P2258, $P2256, $P2257, "@!stages"
    unless_null $P2258, vivify_976
    $P2258 = root_new ['parrot';'ResizablePMCArray']
  vivify_976:
    defined $I2259, $P2258
    unless $I2259, for_undef_977
    iter $P2255, $P2258
    new $P2275, 'ExceptionHandler'
    set_label $P2275, loop2274_handler
    $P2275."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2275
  loop2274_test:
    unless $P2255, loop2274_done
    shift $P2260, $P2255
  loop2274_redo:
    .const 'Sub' $P2262 = "226_1304277405.374" 
    capture_lex $P2262
    $P2262($P2260)
  loop2274_next:
    goto loop2274_test
  loop2274_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2276, exception, 'type'
    eq $P2276, .CONTROL_LOOP_NEXT, loop2274_next
    eq $P2276, .CONTROL_LOOP_REDO, loop2274_redo
  loop2274_done:
    pop_eh 
  for_undef_977:
.annotate 'line', 1673
    find_lex $P2277, "@new_stages"
    unless_null $P2277, vivify_982
    $P2277 = root_new ['parrot';'ResizablePMCArray']
  vivify_982:
    find_lex $P2278, "self"
    find_lex $P2279, "$?CLASS"
    setattribute $P2278, $P2279, "@!stages", $P2277
.annotate 'line', 1666
    .return ($P2277)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2261"  :anon :subid("226_1304277405.374") :outer("225_1304277405.374")
    .param pmc param_2263
.annotate 'line', 1668
    .lex "$_", param_2263
.annotate 'line', 1669
    find_lex $P2266, "$_"
    unless_null $P2266, vivify_978
    new $P2266, "Undef"
  vivify_978:
    set $S2267, $P2266
    find_lex $P2268, "$stagename"
    unless_null $P2268, vivify_979
    new $P2268, "Undef"
  vivify_979:
    set $S2269, $P2268
    isne $I2270, $S2267, $S2269
    if $I2270, if_2265
    new $P2264, 'Integer'
    set $P2264, $I2270
    goto if_2265_end
  if_2265:
.annotate 'line', 1670
    find_lex $P2271, "@new_stages"
    unless_null $P2271, vivify_980
    $P2271 = root_new ['parrot';'ResizablePMCArray']
  vivify_980:
    find_lex $P2272, "$_"
    unless_null $P2272, vivify_981
    new $P2272, "Undef"
  vivify_981:
    $P2273 = $P2271."push"($P2272)
.annotate 'line', 1669
    set $P2264, $P2273
  if_2265_end:
.annotate 'line', 1668
    .return ($P2264)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2283
    .param pmc param_2284
    .param pmc param_2285 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2322 = "229_1304277405.374" 
    capture_lex $P2322
    .const 'Sub' $P2304 = "228_1304277405.374" 
    capture_lex $P2304
    new $P2282, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2282, control_2281
    push_eh $P2282
    .lex "self", param_2283
    .lex "$stagename", param_2284
    .lex "%adverbs", param_2285
.annotate 'line', 1677
    new $P2286, "Undef"
    .lex "$position", $P2286
.annotate 'line', 1678
    new $P2287, "Undef"
    .lex "$where", $P2287
.annotate 'line', 1691
    $P2288 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2288
.annotate 'line', 1676
    find_lex $P2289, "$position"
    unless_null $P2289, vivify_983
    new $P2289, "Undef"
  vivify_983:
    find_lex $P2290, "$where"
    unless_null $P2290, vivify_984
    new $P2290, "Undef"
  vivify_984:
.annotate 'line', 1679
    find_lex $P2292, "%adverbs"
    unless_null $P2292, vivify_985
    $P2292 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2293, $P2292["before"]
    unless_null $P2293, vivify_986
    new $P2293, "Undef"
  vivify_986:
    if $P2293, if_2291
.annotate 'line', 1682
    find_lex $P2298, "%adverbs"
    unless_null $P2298, vivify_987
    $P2298 = root_new ['parrot';'Hash']
  vivify_987:
    set $P2299, $P2298["after"]
    unless_null $P2299, vivify_988
    new $P2299, "Undef"
  vivify_988:
    if $P2299, if_2297
.annotate 'line', 1685
    .const 'Sub' $P2304 = "228_1304277405.374" 
    capture_lex $P2304
    $P2304()
    goto if_2297_end
  if_2297:
.annotate 'line', 1683
    find_lex $P2300, "%adverbs"
    unless_null $P2300, vivify_992
    $P2300 = root_new ['parrot';'Hash']
  vivify_992:
    set $P2301, $P2300["after"]
    unless_null $P2301, vivify_993
    new $P2301, "Undef"
  vivify_993:
    store_lex "$where", $P2301
.annotate 'line', 1684
    new $P2302, "String"
    assign $P2302, "after"
    store_lex "$position", $P2302
  if_2297_end:
.annotate 'line', 1682
    goto if_2291_end
  if_2291:
.annotate 'line', 1680
    find_lex $P2294, "%adverbs"
    unless_null $P2294, vivify_994
    $P2294 = root_new ['parrot';'Hash']
  vivify_994:
    set $P2295, $P2294["before"]
    unless_null $P2295, vivify_995
    new $P2295, "Undef"
  vivify_995:
    store_lex "$where", $P2295
.annotate 'line', 1681
    new $P2296, "String"
    assign $P2296, "before"
    store_lex "$position", $P2296
  if_2291_end:
.annotate 'line', 1691
    new $P2315, "ResizableStringArray"
    store_lex "@new-stages", $P2315
.annotate 'line', 1692
    find_lex $P2317, "self"
    $P2318 = $P2317."stages"()
    defined $I2319, $P2318
    unless $I2319, for_undef_996
    iter $P2316, $P2318
    new $P2347, 'ExceptionHandler'
    set_label $P2347, loop2346_handler
    $P2347."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2347
  loop2346_test:
    unless $P2316, loop2346_done
    shift $P2320, $P2316
  loop2346_redo:
    .const 'Sub' $P2322 = "229_1304277405.374" 
    capture_lex $P2322
    $P2322($P2320)
  loop2346_next:
    goto loop2346_test
  loop2346_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2348, exception, 'type'
    eq $P2348, .CONTROL_LOOP_NEXT, loop2346_next
    eq $P2348, .CONTROL_LOOP_REDO, loop2346_redo
  loop2346_done:
    pop_eh 
  for_undef_996:
.annotate 'line', 1705
    find_lex $P2349, "self"
    find_lex $P2350, "@new-stages"
    unless_null $P2350, vivify_1010
    $P2350 = root_new ['parrot';'ResizablePMCArray']
  vivify_1010:
    $P2351 = $P2349."stages"($P2350)
.annotate 'line', 1676
    .return ($P2351)
  control_2281:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2352, exception, "payload"
    .return ($P2352)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2303"  :anon :subid("228_1304277405.374") :outer("227_1304277405.374")
.annotate 'line', 1686
    $P2305 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2305
    find_lex $P2306, "self"
    $P2307 = $P2306."stages"()
    clone $P2308, $P2307
    store_lex "@new-stages", $P2308
.annotate 'line', 1687
    find_lex $P2309, "@new-stages"
    unless_null $P2309, vivify_989
    $P2309 = root_new ['parrot';'ResizablePMCArray']
  vivify_989:
    find_lex $P2310, "$stagename"
    unless_null $P2310, vivify_990
    new $P2310, "Undef"
  vivify_990:
    push $P2309, $P2310
.annotate 'line', 1688
    find_lex $P2311, "self"
    find_lex $P2312, "@new-stages"
    unless_null $P2312, vivify_991
    $P2312 = root_new ['parrot';'ResizablePMCArray']
  vivify_991:
    $P2311."stages"($P2312)
.annotate 'line', 1689
    new $P2313, "Exception"
    set $P2313['type'], .CONTROL_RETURN
    new $P2314, "Integer"
    assign $P2314, 1
    setattribute $P2313, 'payload', $P2314
    throw $P2313
.annotate 'line', 1685
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2321"  :anon :subid("229_1304277405.374") :outer("227_1304277405.374")
    .param pmc param_2323
.annotate 'line', 1692
    .lex "$_", param_2323
.annotate 'line', 1693
    find_lex $P2326, "$_"
    unless_null $P2326, vivify_997
    new $P2326, "Undef"
  vivify_997:
    set $S2327, $P2326
    find_lex $P2328, "$where"
    unless_null $P2328, vivify_998
    new $P2328, "Undef"
  vivify_998:
    set $S2329, $P2328
    iseq $I2330, $S2327, $S2329
    if $I2330, if_2325
.annotate 'line', 1702
    find_lex $P2344, "@new-stages"
    unless_null $P2344, vivify_999
    $P2344 = root_new ['parrot';'ResizablePMCArray']
  vivify_999:
    find_lex $P2345, "$_"
    unless_null $P2345, vivify_1000
    new $P2345, "Undef"
  vivify_1000:
    push $P2344, $P2345
.annotate 'line', 1701
    set $P2324, $P2344
.annotate 'line', 1693
    goto if_2325_end
  if_2325:
.annotate 'line', 1694
    find_lex $P2333, "$position"
    unless_null $P2333, vivify_1001
    new $P2333, "Undef"
  vivify_1001:
    set $S2334, $P2333
    iseq $I2335, $S2334, "before"
    if $I2335, if_2332
.annotate 'line', 1698
    find_lex $P2340, "@new-stages"
    unless_null $P2340, vivify_1002
    $P2340 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    find_lex $P2341, "$_"
    unless_null $P2341, vivify_1003
    new $P2341, "Undef"
  vivify_1003:
    push $P2340, $P2341
.annotate 'line', 1699
    find_lex $P2342, "@new-stages"
    unless_null $P2342, vivify_1004
    $P2342 = root_new ['parrot';'ResizablePMCArray']
  vivify_1004:
    find_lex $P2343, "$stagename"
    unless_null $P2343, vivify_1005
    new $P2343, "Undef"
  vivify_1005:
    push $P2342, $P2343
.annotate 'line', 1697
    set $P2331, $P2342
.annotate 'line', 1694
    goto if_2332_end
  if_2332:
.annotate 'line', 1695
    find_lex $P2336, "@new-stages"
    unless_null $P2336, vivify_1006
    $P2336 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    find_lex $P2337, "$stagename"
    unless_null $P2337, vivify_1007
    new $P2337, "Undef"
  vivify_1007:
    push $P2336, $P2337
.annotate 'line', 1696
    find_lex $P2338, "@new-stages"
    unless_null $P2338, vivify_1008
    $P2338 = root_new ['parrot';'ResizablePMCArray']
  vivify_1008:
    find_lex $P2339, "$_"
    unless_null $P2339, vivify_1009
    new $P2339, "Undef"
  vivify_1009:
    push $P2338, $P2339
.annotate 'line', 1694
    set $P2331, $P2338
  if_2332_end:
.annotate 'line', 1693
    set $P2324, $P2331
  if_2325_end:
.annotate 'line', 1692
    .return ($P2324)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2354
    .param pmc param_2355
.annotate 'line', 1708
    .const 'Sub' $P2393 = "231_1304277405.374" 
    capture_lex $P2393
    .lex "self", param_2354
    .lex "$name", param_2355
.annotate 'line', 1709
    $P2356 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2356
.annotate 'line', 1710
    new $P2357, "Undef"
    .lex "$sigil", $P2357
.annotate 'line', 1713
    new $P2358, "Undef"
    .lex "$idx", $P2358
.annotate 'line', 1721
    $P2359 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2359
.annotate 'line', 1709
    find_lex $P2360, "$name"
    unless_null $P2360, vivify_1011
    new $P2360, "Undef"
  vivify_1011:
    set $S2361, $P2360
    split $P2362, "::", $S2361
    store_lex "@ns", $P2362
.annotate 'line', 1710
    find_lex $P2363, "@ns"
    unless_null $P2363, vivify_1012
    $P2363 = root_new ['parrot';'ResizablePMCArray']
  vivify_1012:
    set $P2364, $P2363[0]
    unless_null $P2364, vivify_1013
    new $P2364, "Undef"
  vivify_1013:
    set $S2365, $P2364
    substr $S2366, $S2365, 0, 1
    new $P2367, 'String'
    set $P2367, $S2366
    store_lex "$sigil", $P2367
.annotate 'line', 1713
    find_lex $P2368, "$sigil"
    unless_null $P2368, vivify_1014
    new $P2368, "Undef"
  vivify_1014:
    set $S2369, $P2368
    index $I2370, "$@%&", $S2369
    new $P2371, 'Integer'
    set $P2371, $I2370
    store_lex "$idx", $P2371
.annotate 'line', 1714
    find_lex $P2373, "$idx"
    unless_null $P2373, vivify_1015
    new $P2373, "Undef"
  vivify_1015:
    set $N2374, $P2373
    isge $I2375, $N2374, 0.0
    unless $I2375, if_2372_end
.annotate 'line', 1715
    find_lex $P2376, "@ns"
    unless_null $P2376, vivify_1016
    $P2376 = root_new ['parrot';'ResizablePMCArray']
  vivify_1016:
    set $P2377, $P2376[0]
    unless_null $P2377, vivify_1017
    new $P2377, "Undef"
  vivify_1017:
    set $S2378, $P2377
    substr $S2379, $S2378, 1
    new $P2380, 'String'
    set $P2380, $S2379
    find_lex $P2381, "@ns"
    unless_null $P2381, vivify_1018
    $P2381 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2381
  vivify_1018:
    set $P2381[0], $P2380
.annotate 'line', 1716
    find_lex $P2382, "$sigil"
    unless_null $P2382, vivify_1019
    new $P2382, "Undef"
  vivify_1019:
    find_lex $P2383, "@ns"
    unless_null $P2383, vivify_1020
    $P2383 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
    set $P2384, $P2383[-1]
    unless_null $P2384, vivify_1021
    new $P2384, "Undef"
  vivify_1021:
    concat $P2385, $P2382, $P2384
    find_lex $P2386, "@ns"
    unless_null $P2386, vivify_1022
    $P2386 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2386
  vivify_1022:
    set $P2386[-1], $P2385
  if_2372_end:
.annotate 'line', 1714
    find_lex $P2387, "@actual_ns"
    unless_null $P2387, vivify_1023
    $P2387 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
.annotate 'line', 1722
    find_lex $P2389, "@ns"
    unless_null $P2389, vivify_1024
    $P2389 = root_new ['parrot';'ResizablePMCArray']
  vivify_1024:
    defined $I2390, $P2389
    unless $I2390, for_undef_1025
    iter $P2388, $P2389
    new $P2403, 'ExceptionHandler'
    set_label $P2403, loop2402_handler
    $P2403."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2403
  loop2402_test:
    unless $P2388, loop2402_done
    shift $P2391, $P2388
  loop2402_redo:
    .const 'Sub' $P2393 = "231_1304277405.374" 
    capture_lex $P2393
    $P2393($P2391)
  loop2402_next:
    goto loop2402_test
  loop2402_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2404, exception, 'type'
    eq $P2404, .CONTROL_LOOP_NEXT, loop2402_next
    eq $P2404, .CONTROL_LOOP_REDO, loop2402_redo
  loop2402_done:
    pop_eh 
  for_undef_1025:
    find_lex $P2405, "@actual_ns"
    unless_null $P2405, vivify_1029
    $P2405 = root_new ['parrot';'ResizablePMCArray']
  vivify_1029:
.annotate 'line', 1708
    .return ($P2405)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2392"  :anon :subid("231_1304277405.374") :outer("230_1304277405.374")
    .param pmc param_2394
.annotate 'line', 1722
    .lex "$_", param_2394
.annotate 'line', 1723
    find_lex $P2397, "$_"
    unless_null $P2397, vivify_1026
    new $P2397, "Undef"
  vivify_1026:
    set $S2398, $P2397
    iseq $I2399, $S2398, ""
    unless $I2399, unless_2396
    new $P2395, 'Integer'
    set $P2395, $I2399
    goto unless_2396_end
  unless_2396:
    find_lex $P2400, "@actual_ns"
    unless_null $P2400, vivify_1027
    $P2400 = root_new ['parrot';'ResizablePMCArray']
  vivify_1027:
    find_lex $P2401, "$_"
    unless_null $P2401, vivify_1028
    new $P2401, "Undef"
  vivify_1028:
    push $P2400, $P2401
    set $P2395, $P2400
  unless_2396_end:
.annotate 'line', 1722
    .return ($P2395)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1304277405.374") :outer("167_1304277405.374")
    .param pmc param_2407
    .param pmc param_2408
    .param pmc param_2409
    .param pmc param_2410 :optional :named("cache")
    .param int has_param_2410 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2407
    .lex "$target", param_2408
    .lex "$pos", param_2409
    if has_param_2410, optparam_1030
    new $P2411, "Undef"
    set param_2410, $P2411
  optparam_1030:
    .lex "$cache", param_2410
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
.sub "_block2424"  :subid("234_1304277405.374") :outer("10_1304277405.374")
.annotate 'line', 1885
    .const 'Sub' $P2503 = "241_1304277405.374" 
    capture_lex $P2503
    .const 'Sub' $P2453 = "239_1304277405.374" 
    capture_lex $P2453
    .const 'Sub' $P2446 = "238_1304277405.374" 
    capture_lex $P2446
    .const 'Sub' $P2441 = "237_1304277405.374" 
    capture_lex $P2441
    .const 'Sub' $P2436 = "236_1304277405.374" 
    capture_lex $P2436
    .const 'Sub' $P2428 = "235_1304277405.374" 
    capture_lex $P2428
    .lex "$?PACKAGE", $P2426
    .lex "$?CLASS", $P2427
.annotate 'line', 1901
    .const 'Sub' $P2453 = "239_1304277405.374" 
    newclosure $P2501, $P2453
.annotate 'line', 1885
    .return ($P2501)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1032") :outer("234_1304277405.374")
.annotate 'line', 1885
    .const 'Sub' $P2425 = "234_1304277405.374" 
    .local pmc block
    set block, $P2425
    .const 'Sub' $P2503 = "241_1304277405.374" 
    capture_lex $P2503
    $P2503()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2502"  :anon :subid("241_1304277405.374") :outer("234_1304277405.374")
.annotate 'line', 1885
    nqp_get_sc_object $P2504, "1304277396.391", 138
    .local pmc type_obj
    set type_obj, $P2504
    get_how $P2505, type_obj
    $P2506 = $P2505."compose"(type_obj)
    .return ($P2506)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1304277405.374") :outer("234_1304277405.374")
    .param pmc param_2429
.annotate 'line', 1889
    .lex "self", param_2429
.annotate 'line', 1890
    new $P2430, "ResizablePMCArray"
    find_lex $P2431, "self"
    find_lex $P2432, "$?CLASS"
    setattribute $P2431, $P2432, "@!arguments", $P2430
.annotate 'line', 1891
    new $P2433, "Hash"
    find_lex $P2434, "self"
    find_lex $P2435, "$?CLASS"
    setattribute $P2434, $P2435, "%!options", $P2433
.annotate 'line', 1889
    .return ($P2433)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1304277405.374") :outer("234_1304277405.374")
    .param pmc param_2437
.annotate 'line', 1894
    .lex "self", param_2437
    find_lex $P2438, "self"
    find_lex $P2439, "$?CLASS"
    getattribute $P2440, $P2438, $P2439, "@!arguments"
    unless_null $P2440, vivify_1033
    $P2440 = root_new ['parrot';'ResizablePMCArray']
  vivify_1033:
    .return ($P2440)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1304277405.374") :outer("234_1304277405.374")
    .param pmc param_2442
.annotate 'line', 1895
    .lex "self", param_2442
    find_lex $P2443, "self"
    find_lex $P2444, "$?CLASS"
    getattribute $P2445, $P2443, $P2444, "%!options"
    unless_null $P2445, vivify_1034
    $P2445 = root_new ['parrot';'Hash']
  vivify_1034:
    .return ($P2445)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1304277405.374") :outer("234_1304277405.374")
    .param pmc param_2447
    .param pmc param_2448
.annotate 'line', 1897
    .lex "self", param_2447
    .lex "$x", param_2448
.annotate 'line', 1898
    find_lex $P2449, "self"
    find_lex $P2450, "$?CLASS"
    getattribute $P2451, $P2449, $P2450, "@!arguments"
    unless_null $P2451, vivify_1035
    $P2451 = root_new ['parrot';'ResizablePMCArray']
  vivify_1035:
    find_lex $P2452, "$x"
    unless_null $P2452, vivify_1036
    new $P2452, "Undef"
  vivify_1036:
    push $P2451, $P2452
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1304277405.374") :outer("234_1304277405.374")
    .param pmc param_2454
    .param pmc param_2455
    .param pmc param_2456
.annotate 'line', 1901
    .const 'Sub' $P2465 = "240_1304277405.374" 
    capture_lex $P2465
    .lex "self", param_2454
    .lex "$name", param_2455
    .lex "$value", param_2456
.annotate 'line', 1904
    find_lex $P2462, "$name"
    unless_null $P2462, vivify_1037
    new $P2462, "Undef"
  vivify_1037:
    find_lex $P2459, "self"
    find_lex $P2460, "$?CLASS"
    getattribute $P2461, $P2459, $P2460, "%!options"
    unless_null $P2461, vivify_1038
    $P2461 = root_new ['parrot';'Hash']
  vivify_1038:
    exists $I2463, $P2461[$P2462]
    if $I2463, if_2458
.annotate 'line', 1913
    find_lex $P2496, "$value"
    unless_null $P2496, vivify_1039
    new $P2496, "Undef"
  vivify_1039:
    find_lex $P2497, "$name"
    unless_null $P2497, vivify_1040
    new $P2497, "Undef"
  vivify_1040:
    find_lex $P2498, "self"
    find_lex $P2499, "$?CLASS"
    getattribute $P2500, $P2498, $P2499, "%!options"
    unless_null $P2500, vivify_1041
    $P2500 = root_new ['parrot';'Hash']
    setattribute $P2498, $P2499, "%!options", $P2500
  vivify_1041:
    set $P2500[$P2497], $P2496
.annotate 'line', 1912
    set $P2457, $P2496
.annotate 'line', 1904
    goto if_2458_end
  if_2458:
    .const 'Sub' $P2465 = "240_1304277405.374" 
    capture_lex $P2465
    $P2495 = $P2465()
    set $P2457, $P2495
  if_2458_end:
.annotate 'line', 1901
    .return ($P2457)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2464"  :anon :subid("240_1304277405.374") :outer("239_1304277405.374")
.annotate 'line', 1905
    new $P2466, "Undef"
    .lex "$t", $P2466
    find_lex $P2467, "self"
    find_lex $P2468, "$?CLASS"
    getattribute $P2469, $P2467, $P2468, "%!options"
    unless_null $P2469, vivify_1042
    $P2469 = root_new ['parrot';'Hash']
  vivify_1042:
    typeof $S2470, $P2469
    new $P2471, 'String'
    set $P2471, $S2470
    store_lex "$t", $P2471
.annotate 'line', 1906
    find_lex $P2472, "$t"
    unless_null $P2472, vivify_1043
    new $P2472, "Undef"
  vivify_1043:
    "say"($P2472)
.annotate 'line', 1907
    find_lex $P2475, "$t"
    unless_null $P2475, vivify_1044
    new $P2475, "Undef"
  vivify_1044:
    set $S2476, $P2475
    iseq $I2477, $S2476, "ResizablePMCArray"
    if $I2477, if_2474
.annotate 'line', 1910
    find_lex $P2484, "$name"
    unless_null $P2484, vivify_1045
    new $P2484, "Undef"
  vivify_1045:
    find_lex $P2485, "self"
    find_lex $P2486, "$?CLASS"
    getattribute $P2487, $P2485, $P2486, "%!options"
    unless_null $P2487, vivify_1046
    $P2487 = root_new ['parrot';'Hash']
  vivify_1046:
    set $P2488, $P2487[$P2484]
    unless_null $P2488, vivify_1047
    new $P2488, "Undef"
  vivify_1047:
    find_lex $P2489, "$name"
    unless_null $P2489, vivify_1048
    new $P2489, "Undef"
  vivify_1048:
    new $P2490, "ResizablePMCArray"
    push $P2490, $P2488
    push $P2490, $P2489
    find_lex $P2491, "$name"
    unless_null $P2491, vivify_1049
    new $P2491, "Undef"
  vivify_1049:
    find_lex $P2492, "self"
    find_lex $P2493, "$?CLASS"
    getattribute $P2494, $P2492, $P2493, "%!options"
    unless_null $P2494, vivify_1050
    $P2494 = root_new ['parrot';'Hash']
    setattribute $P2492, $P2493, "%!options", $P2494
  vivify_1050:
    set $P2494[$P2491], $P2490
.annotate 'line', 1909
    set $P2473, $P2490
.annotate 'line', 1907
    goto if_2474_end
  if_2474:
.annotate 'line', 1908
    find_lex $P2478, "$name"
    unless_null $P2478, vivify_1051
    new $P2478, "Undef"
  vivify_1051:
    find_lex $P2479, "self"
    find_lex $P2480, "$?CLASS"
    getattribute $P2481, $P2479, $P2480, "%!options"
    unless_null $P2481, vivify_1052
    $P2481 = root_new ['parrot';'Hash']
  vivify_1052:
    set $P2482, $P2481[$P2478]
    unless_null $P2482, vivify_1053
    new $P2482, "Undef"
  vivify_1053:
    find_lex $P2483, "$value"
    unless_null $P2483, vivify_1054
    new $P2483, "Undef"
  vivify_1054:
    push $P2482, $P2483
.annotate 'line', 1907
    set $P2473, $P2482
  if_2474_end:
.annotate 'line', 1904
    .return ($P2473)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2507"  :subid("242_1304277405.374") :outer("10_1304277405.374")
.annotate 'line', 1918
    .const 'Sub' $P2937 = "261_1304277405.374" 
    capture_lex $P2937
    .const 'Sub' $P2648 = "253_1304277405.374" 
    capture_lex $P2648
    .const 'Sub' $P2636 = "252_1304277405.374" 
    capture_lex $P2636
    .const 'Sub' $P2612 = "251_1304277405.374" 
    capture_lex $P2612
    .const 'Sub' $P2563 = "249_1304277405.374" 
    capture_lex $P2563
    .const 'Sub' $P2557 = "248_1304277405.374" 
    capture_lex $P2557
    .const 'Sub' $P2549 = "247_1304277405.374" 
    capture_lex $P2549
    .const 'Sub' $P2525 = "245_1304277405.374" 
    capture_lex $P2525
    .const 'Sub' $P2520 = "244_1304277405.374" 
    capture_lex $P2520
    .const 'Sub' $P2511 = "243_1304277405.374" 
    capture_lex $P2511
    .lex "$?PACKAGE", $P2509
    .lex "$?CLASS", $P2510
.annotate 'line', 1978
    .const 'Sub' $P2648 = "253_1304277405.374" 
    newclosure $P2935, $P2648
.annotate 'line', 1918
    .return ($P2935)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1055") :outer("242_1304277405.374")
.annotate 'line', 1918
    .const 'Sub' $P2508 = "242_1304277405.374" 
    .local pmc block
    set block, $P2508
    .const 'Sub' $P2937 = "261_1304277405.374" 
    capture_lex $P2937
    $P2937()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2936"  :anon :subid("261_1304277405.374") :outer("242_1304277405.374")
.annotate 'line', 1918
    nqp_get_sc_object $P2938, "1304277396.391", 144
    .local pmc type_obj
    set type_obj, $P2938
    get_how $P2939, type_obj
    $P2940 = $P2939."compose"(type_obj)
    .return ($P2940)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2512
    .param pmc param_2513
.annotate 'line', 1924
    .lex "self", param_2512
    .lex "@specs", param_2513
.annotate 'line', 1925
    new $P2514, "Undef"
    .lex "$obj", $P2514
    find_lex $P2515, "self"
    $P2516 = $P2515."CREATE"()
    store_lex "$obj", $P2516
.annotate 'line', 1926
    find_lex $P2517, "$obj"
    unless_null $P2517, vivify_1056
    new $P2517, "Undef"
  vivify_1056:
    find_lex $P2518, "@specs"
    unless_null $P2518, vivify_1057
    $P2518 = root_new ['parrot';'ResizablePMCArray']
  vivify_1057:
    $P2517."BUILD"($P2518 :named("specs"))
    find_lex $P2519, "$obj"
    unless_null $P2519, vivify_1058
    new $P2519, "Undef"
  vivify_1058:
.annotate 'line', 1924
    .return ($P2519)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2521
.annotate 'line', 1930
    .lex "self", param_2521
.annotate 'line', 1931
    new $P2522, "Integer"
    assign $P2522, 1
    find_lex $P2523, "self"
    find_lex $P2524, "$?CLASS"
    setattribute $P2523, $P2524, "$!stop-after-first-arg", $P2522
.annotate 'line', 1930
    .return ($P2522)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2526
    .param pmc param_2527 :optional :named("specs")
    .param int has_param_2527 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2541 = "246_1304277405.374" 
    capture_lex $P2541
    .lex "self", param_2526
    if has_param_2527, optparam_1059
    $P2528 = root_new ['parrot';'ResizablePMCArray']
    set param_2527, $P2528
  optparam_1059:
    .lex "@specs", param_2527
.annotate 'line', 1935
    new $P2529, "Integer"
    assign $P2529, 1
    find_lex $P2530, "self"
    find_lex $P2531, "$?CLASS"
    getattribute $P2532, $P2530, $P2531, "%!stopper"
    unless_null $P2532, vivify_1060
    $P2532 = root_new ['parrot';'Hash']
    setattribute $P2530, $P2531, "%!stopper", $P2532
  vivify_1060:
    set $P2532["--"], $P2529
.annotate 'line', 1936
    new $P2533, "Integer"
    assign $P2533, 0
    find_lex $P2534, "self"
    find_lex $P2535, "$?CLASS"
    setattribute $P2534, $P2535, "$!stop-after-first-arg", $P2533
.annotate 'line', 1937
    find_lex $P2537, "@specs"
    unless_null $P2537, vivify_1061
    $P2537 = root_new ['parrot';'ResizablePMCArray']
  vivify_1061:
    defined $I2538, $P2537
    unless $I2538, for_undef_1062
    iter $P2536, $P2537
    new $P2547, 'ExceptionHandler'
    set_label $P2547, loop2546_handler
    $P2547."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2547
  loop2546_test:
    unless $P2536, loop2546_done
    shift $P2539, $P2536
  loop2546_redo:
    .const 'Sub' $P2541 = "246_1304277405.374" 
    capture_lex $P2541
    $P2541($P2539)
  loop2546_next:
    goto loop2546_test
  loop2546_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2548, exception, 'type'
    eq $P2548, .CONTROL_LOOP_NEXT, loop2546_next
    eq $P2548, .CONTROL_LOOP_REDO, loop2546_redo
  loop2546_done:
    pop_eh 
  for_undef_1062:
.annotate 'line', 1934
    .return ($P2536)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2540"  :anon :subid("246_1304277405.374") :outer("245_1304277405.374")
    .param pmc param_2542
.annotate 'line', 1937
    .lex "$_", param_2542
.annotate 'line', 1938
    find_lex $P2543, "self"
    find_lex $P2544, "$_"
    unless_null $P2544, vivify_1063
    new $P2544, "Undef"
  vivify_1063:
    $P2545 = $P2543."add-spec"($P2544)
.annotate 'line', 1937
    .return ($P2545)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2550
    .param pmc param_2551
.annotate 'line', 1941
    .lex "self", param_2550
    .lex "$x", param_2551
.annotate 'line', 1942
    new $P2552, "Integer"
    assign $P2552, 1
    find_lex $P2553, "$x"
    unless_null $P2553, vivify_1064
    new $P2553, "Undef"
  vivify_1064:
    find_lex $P2554, "self"
    find_lex $P2555, "$?CLASS"
    getattribute $P2556, $P2554, $P2555, "%!stopper"
    unless_null $P2556, vivify_1065
    $P2556 = root_new ['parrot';'Hash']
    setattribute $P2554, $P2555, "%!stopper", $P2556
  vivify_1065:
    set $P2556[$P2553], $P2552
.annotate 'line', 1941
    .return ($P2552)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2558
    .param pmc param_2559
.annotate 'line', 1945
    .lex "self", param_2558
    .lex "$s", param_2559
.annotate 'line', 1946
    find_lex $P2560, "$s"
    unless_null $P2560, vivify_1066
    new $P2560, "Undef"
  vivify_1066:
    set $S2561, $P2560
    split $P2562, "|", $S2561
.annotate 'line', 1945
    .return ($P2562)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2564
    .param pmc param_2565
.annotate 'line', 1950
    .const 'Sub' $P2602 = "250_1304277405.374" 
    capture_lex $P2602
    .lex "self", param_2564
    .lex "$s", param_2565
.annotate 'line', 1951
    new $P2566, "Undef"
    .lex "$i", $P2566
.annotate 'line', 1952
    new $P2567, "Undef"
    .lex "$type", $P2567
.annotate 'line', 1953
    $P2568 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2568
.annotate 'line', 1951
    find_lex $P2569, "$s"
    unless_null $P2569, vivify_1067
    new $P2569, "Undef"
  vivify_1067:
    set $S2570, $P2569
    index $I2571, $S2570, "="
    new $P2572, 'Integer'
    set $P2572, $I2571
    store_lex "$i", $P2572
    find_lex $P2573, "$type"
    unless_null $P2573, vivify_1068
    new $P2573, "Undef"
  vivify_1068:
    find_lex $P2574, "@options"
    unless_null $P2574, vivify_1069
    $P2574 = root_new ['parrot';'ResizablePMCArray']
  vivify_1069:
.annotate 'line', 1954
    find_lex $P2576, "$i"
    unless_null $P2576, vivify_1070
    new $P2576, "Undef"
  vivify_1070:
    set $N2577, $P2576
    islt $I2578, $N2577, 0.0
    if $I2578, if_2575
.annotate 'line', 1958
    find_lex $P2583, "$s"
    unless_null $P2583, vivify_1071
    new $P2583, "Undef"
  vivify_1071:
    set $S2584, $P2583
    find_lex $P2585, "$i"
    unless_null $P2585, vivify_1072
    new $P2585, "Undef"
  vivify_1072:
    add $P2586, $P2585, 1
    set $I2587, $P2586
    substr $S2588, $S2584, $I2587
    new $P2589, 'String'
    set $P2589, $S2588
    store_lex "$type", $P2589
.annotate 'line', 1959
    find_lex $P2590, "self"
    find_lex $P2591, "$s"
    unless_null $P2591, vivify_1073
    new $P2591, "Undef"
  vivify_1073:
    set $S2592, $P2591
    find_lex $P2593, "$i"
    unless_null $P2593, vivify_1074
    new $P2593, "Undef"
  vivify_1074:
    set $I2594, $P2593
    substr $S2595, $S2592, 0, $I2594
    $P2596 = $P2590."split-option-aliases"($S2595)
    store_lex "@options", $P2596
.annotate 'line', 1957
    goto if_2575_end
  if_2575:
.annotate 'line', 1955
    new $P2579, "String"
    assign $P2579, "b"
    store_lex "$type", $P2579
.annotate 'line', 1956
    find_lex $P2580, "self"
    find_lex $P2581, "$s"
    unless_null $P2581, vivify_1075
    new $P2581, "Undef"
  vivify_1075:
    $P2582 = $P2580."split-option-aliases"($P2581)
    store_lex "@options", $P2582
  if_2575_end:
.annotate 'line', 1961
    find_lex $P2598, "@options"
    unless_null $P2598, vivify_1076
    $P2598 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    defined $I2599, $P2598
    unless $I2599, for_undef_1077
    iter $P2597, $P2598
    new $P2610, 'ExceptionHandler'
    set_label $P2610, loop2609_handler
    $P2610."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2610
  loop2609_test:
    unless $P2597, loop2609_done
    shift $P2600, $P2597
  loop2609_redo:
    .const 'Sub' $P2602 = "250_1304277405.374" 
    capture_lex $P2602
    $P2602($P2600)
  loop2609_next:
    goto loop2609_test
  loop2609_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2611, exception, 'type'
    eq $P2611, .CONTROL_LOOP_NEXT, loop2609_next
    eq $P2611, .CONTROL_LOOP_REDO, loop2609_redo
  loop2609_done:
    pop_eh 
  for_undef_1077:
.annotate 'line', 1950
    .return ($P2597)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2601"  :anon :subid("250_1304277405.374") :outer("249_1304277405.374")
    .param pmc param_2603
.annotate 'line', 1961
    .lex "$_", param_2603
.annotate 'line', 1962
    find_lex $P2604, "$type"
    unless_null $P2604, vivify_1078
    new $P2604, "Undef"
  vivify_1078:
    find_lex $P2605, "$_"
    unless_null $P2605, vivify_1079
    new $P2605, "Undef"
  vivify_1079:
    find_lex $P2606, "self"
    find_lex $P2607, "$?CLASS"
    getattribute $P2608, $P2606, $P2607, "%!options"
    unless_null $P2608, vivify_1080
    $P2608 = root_new ['parrot';'Hash']
    setattribute $P2606, $P2607, "%!options", $P2608
  vivify_1080:
    set $P2608[$P2605], $P2604
.annotate 'line', 1961
    .return ($P2604)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2615
    .param pmc param_2616
.annotate 'line', 1967
    new $P2614, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2614, control_2613
    push_eh $P2614
    .lex "self", param_2615
    .lex "$x", param_2616
.annotate 'line', 1968
    find_lex $P2620, "$x"
    unless_null $P2620, vivify_1081
    new $P2620, "Undef"
  vivify_1081:
    set $S2621, $P2620
    iseq $I2622, $S2621, "-"
    unless $I2622, unless_2619
    new $P2618, 'Integer'
    set $P2618, $I2622
    goto unless_2619_end
  unless_2619:
    find_lex $P2623, "$x"
    unless_null $P2623, vivify_1082
    new $P2623, "Undef"
  vivify_1082:
    set $S2624, $P2623
    iseq $I2625, $S2624, "--"
    new $P2618, 'Integer'
    set $P2618, $I2625
  unless_2619_end:
    unless $P2618, if_2617_end
    new $P2626, "Exception"
    set $P2626['type'], .CONTROL_RETURN
    new $P2627, "Integer"
    assign $P2627, 0
    setattribute $P2626, 'payload', $P2627
    throw $P2626
  if_2617_end:
.annotate 'line', 1969
    find_lex $P2629, "$x"
    unless_null $P2629, vivify_1083
    new $P2629, "Undef"
  vivify_1083:
    set $S2630, $P2629
    substr $S2631, $S2630, 0, 1
    iseq $I2632, $S2631, "-"
    unless $I2632, if_2628_end
    new $P2633, "Exception"
    set $P2633['type'], .CONTROL_RETURN
    new $P2634, "Integer"
    assign $P2634, 1
    setattribute $P2633, 'payload', $P2634
    throw $P2633
  if_2628_end:
.annotate 'line', 1967
    .return (0)
  control_2613:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2635, exception, "payload"
    .return ($P2635)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2637
    .param pmc param_2638
.annotate 'line', 1973
    .lex "self", param_2637
    .lex "$x", param_2638
.annotate 'line', 1974
    new $P2639, "Undef"
    .lex "$spec", $P2639
    find_lex $P2640, "$x"
    unless_null $P2640, vivify_1084
    new $P2640, "Undef"
  vivify_1084:
    find_lex $P2641, "self"
    find_lex $P2642, "$?CLASS"
    getattribute $P2643, $P2641, $P2642, "%!options"
    unless_null $P2643, vivify_1085
    $P2643 = root_new ['parrot';'Hash']
  vivify_1085:
    set $P2644, $P2643[$P2640]
    unless_null $P2644, vivify_1086
    new $P2644, "Undef"
  vivify_1086:
    store_lex "$spec", $P2644
.annotate 'line', 1975
    find_lex $P2645, "$spec"
    unless_null $P2645, vivify_1087
    new $P2645, "Undef"
  vivify_1087:
    set $S2646, $P2645
    iseq $I2647, $S2646, "s"
.annotate 'line', 1973
    .return ($I2647)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1304277405.374") :outer("242_1304277405.374")
    .param pmc param_2651
    .param pmc param_2652
.annotate 'line', 1978
    .const 'Sub' $P2743 = "256_1304277405.374" 
    capture_lex $P2743
    .const 'Sub' $P2705 = "255_1304277405.374" 
    capture_lex $P2705
    .const 'Sub' $P2656 = "254_1304277405.374" 
    capture_lex $P2656
    new $P2650, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2650, control_2649
    push_eh $P2650
    .lex "self", param_2651
    .lex "@args", param_2652
.annotate 'line', 1979
    new $P2653, "Undef"
    .lex "$i", $P2653
.annotate 'line', 1980
    new $P2654, "Undef"
    .lex "$arg-count", $P2654
.annotate 'line', 1982
    new $P2655, "Undef"
    .lex "$result", $P2655
.annotate 'line', 1986
    .const 'Sub' $P2656 = "254_1304277405.374" 
    newclosure $P2704, $P2656
    .lex "get-value", $P2704
.annotate 'line', 2001
    .const 'Sub' $P2705 = "255_1304277405.374" 
    newclosure $P2723, $P2705
    .lex "slurp-rest", $P2723
.annotate 'line', 1979
    new $P2724, "Integer"
    assign $P2724, 0
    store_lex "$i", $P2724
.annotate 'line', 1980
    find_lex $P2725, "@args"
    unless_null $P2725, vivify_1113
    $P2725 = root_new ['parrot';'ResizablePMCArray']
  vivify_1113:
    set $N2726, $P2725
    new $P2727, 'Float'
    set $P2727, $N2726
    store_lex "$arg-count", $P2727
.annotate 'line', 1982
    get_hll_global $P2728, "GLOBAL"
    nqp_get_package_through_who $P2729, $P2728, "HLL"
    nqp_get_package_through_who $P2730, $P2729, "CommandLine"
    get_who $P2731, $P2730
    set $P2732, $P2731["Result"]
    $P2733 = $P2732."new"()
    store_lex "$result", $P2733
.annotate 'line', 1983
    find_lex $P2734, "$result"
    unless_null $P2734, vivify_1114
    new $P2734, "Undef"
  vivify_1114:
    $P2734."init"()
    find_lex $P2735, "get-value"
    find_lex $P2736, "slurp-rest"
.annotate 'line', 2009
    new $P2930, 'ExceptionHandler'
    set_label $P2930, loop2929_handler
    $P2930."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2930
  loop2929_test:
    find_lex $P2737, "$i"
    unless_null $P2737, vivify_1115
    new $P2737, "Undef"
  vivify_1115:
    set $N2738, $P2737
    find_lex $P2739, "$arg-count"
    unless_null $P2739, vivify_1116
    new $P2739, "Undef"
  vivify_1116:
    set $N2740, $P2739
    islt $I2741, $N2738, $N2740
    unless $I2741, loop2929_done
  loop2929_redo:
    .const 'Sub' $P2743 = "256_1304277405.374" 
    capture_lex $P2743
    $P2743()
  loop2929_next:
    goto loop2929_test
  loop2929_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2931, exception, 'type'
    eq $P2931, .CONTROL_LOOP_NEXT, loop2929_next
    eq $P2931, .CONTROL_LOOP_REDO, loop2929_redo
  loop2929_done:
    pop_eh 
.annotate 'line', 2061
    new $P2932, "Exception"
    set $P2932['type'], .CONTROL_RETURN
    find_lex $P2933, "$result"
    unless_null $P2933, vivify_1177
    new $P2933, "Undef"
  vivify_1177:
    setattribute $P2932, 'payload', $P2933
    throw $P2932
.annotate 'line', 1978
    .return ()
  control_2649:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2934, exception, "payload"
    .return ($P2934)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1304277405.374") :outer("253_1304277405.374")
    .param pmc param_2657
.annotate 'line', 1986
    .lex "$opt", param_2657
.annotate 'line', 1987
    find_lex $P2660, "$i"
    unless_null $P2660, vivify_1088
    new $P2660, "Undef"
  vivify_1088:
    set $N2661, $P2660
    find_lex $P2662, "$arg-count"
    unless_null $P2662, vivify_1089
    new $P2662, "Undef"
  vivify_1089:
    sub $P2663, $P2662, 1
    set $N2664, $P2663
    iseq $I2665, $N2661, $N2664
    if $I2665, if_2659
.annotate 'line', 1989
    find_lex $P2672, "self"
    find_lex $P2673, "$i"
    unless_null $P2673, vivify_1090
    new $P2673, "Undef"
  vivify_1090:
    add $P2674, $P2673, 1
    set $I2675, $P2674
    find_lex $P2676, "@args"
    unless_null $P2676, vivify_1091
    $P2676 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    set $P2677, $P2676[$I2675]
    unless_null $P2677, vivify_1092
    new $P2677, "Undef"
  vivify_1092:
    $P2678 = $P2672."is-option"($P2677)
    if $P2678, if_2671
.annotate 'line', 1991
    find_lex $P2685, "$i"
    unless_null $P2685, vivify_1093
    new $P2685, "Undef"
  vivify_1093:
    add $P2686, $P2685, 1
    set $I2687, $P2686
    find_lex $P2688, "@args"
    unless_null $P2688, vivify_1094
    $P2688 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P2689, $P2688[$I2687]
    unless_null $P2689, vivify_1095
    new $P2689, "Undef"
  vivify_1095:
    find_lex $P2690, "self"
    find_lex $P2691, "$?CLASS"
    getattribute $P2692, $P2690, $P2691, "%!stopper"
    unless_null $P2692, vivify_1096
    $P2692 = root_new ['parrot';'Hash']
  vivify_1096:
    set $P2693, $P2692[$P2689]
    unless_null $P2693, vivify_1097
    new $P2693, "Undef"
  vivify_1097:
    if $P2693, if_2684
.annotate 'line', 1993
    find_lex $P2698, "$i"
    unless_null $P2698, vivify_1098
    new $P2698, "Undef"
  vivify_1098:
    clone $P2699, $P2698
    inc $P2698
    find_lex $P2700, "$i"
    unless_null $P2700, vivify_1099
    new $P2700, "Undef"
  vivify_1099:
    set $I2701, $P2700
    find_lex $P2702, "@args"
    unless_null $P2702, vivify_1100
    $P2702 = root_new ['parrot';'ResizablePMCArray']
  vivify_1100:
    set $P2703, $P2702[$I2701]
    unless_null $P2703, vivify_1101
    new $P2703, "Undef"
  vivify_1101:
    set $P2683, $P2703
.annotate 'line', 1991
    goto if_2684_end
  if_2684:
.annotate 'line', 1992
    new $P2694, 'String'
    set $P2694, "Option "
    find_lex $P2695, "$opt"
    unless_null $P2695, vivify_1102
    new $P2695, "Undef"
  vivify_1102:
    concat $P2696, $P2694, $P2695
    concat $P2697, $P2696, " needs a value, but is followed by a stopper"
    die $P2697
  if_2684_end:
.annotate 'line', 1991
    set $P2670, $P2683
.annotate 'line', 1989
    goto if_2671_end
  if_2671:
.annotate 'line', 1990
    new $P2679, 'String'
    set $P2679, "Option "
    find_lex $P2680, "$opt"
    unless_null $P2680, vivify_1103
    new $P2680, "Undef"
  vivify_1103:
    concat $P2681, $P2679, $P2680
    concat $P2682, $P2681, " needs a value, but is followed by an option"
    die $P2682
  if_2671_end:
.annotate 'line', 1989
    set $P2658, $P2670
.annotate 'line', 1987
    goto if_2659_end
  if_2659:
.annotate 'line', 1988
    new $P2666, 'String'
    set $P2666, "Option "
    find_lex $P2667, "$opt"
    unless_null $P2667, vivify_1104
    new $P2667, "Undef"
  vivify_1104:
    concat $P2668, $P2666, $P2667
    concat $P2669, $P2668, " needs a value"
    die $P2669
  if_2659_end:
.annotate 'line', 1986
    .return ($P2658)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1304277405.374") :outer("253_1304277405.374")
.annotate 'line', 2001
    find_lex $P2706, "$i"
    unless_null $P2706, vivify_1105
    new $P2706, "Undef"
  vivify_1105:
    clone $P2707, $P2706
    inc $P2706
.annotate 'line', 2003
    new $P2721, 'ExceptionHandler'
    set_label $P2721, loop2720_handler
    $P2721."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2721
  loop2720_test:
    find_lex $P2708, "$i"
    unless_null $P2708, vivify_1106
    new $P2708, "Undef"
  vivify_1106:
    set $N2709, $P2708
    find_lex $P2710, "$arg-count"
    unless_null $P2710, vivify_1107
    new $P2710, "Undef"
  vivify_1107:
    set $N2711, $P2710
    islt $I2712, $N2709, $N2711
    unless $I2712, loop2720_done
  loop2720_redo:
.annotate 'line', 2004
    find_lex $P2713, "$result"
    unless_null $P2713, vivify_1108
    new $P2713, "Undef"
  vivify_1108:
    find_lex $P2714, "$i"
    unless_null $P2714, vivify_1109
    new $P2714, "Undef"
  vivify_1109:
    set $I2715, $P2714
    find_lex $P2716, "@args"
    unless_null $P2716, vivify_1110
    $P2716 = root_new ['parrot';'ResizablePMCArray']
  vivify_1110:
    set $P2717, $P2716[$I2715]
    unless_null $P2717, vivify_1111
    new $P2717, "Undef"
  vivify_1111:
    $P2713."add-argument"($P2717)
    find_lex $P2718, "$i"
    unless_null $P2718, vivify_1112
    new $P2718, "Undef"
  vivify_1112:
    clone $P2719, $P2718
    inc $P2718
  loop2720_next:
.annotate 'line', 2003
    goto loop2720_test
  loop2720_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2722, exception, 'type'
    eq $P2722, .CONTROL_LOOP_NEXT, loop2720_next
    eq $P2722, .CONTROL_LOOP_REDO, loop2720_redo
  loop2720_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I2712)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2742"  :anon :subid("256_1304277405.374") :outer("253_1304277405.374")
.annotate 'line', 2009
    .const 'Sub' $P2845 = "258_1304277405.374" 
    capture_lex $P2845
    .const 'Sub' $P2759 = "257_1304277405.374" 
    capture_lex $P2759
.annotate 'line', 2010
    new $P2744, "Undef"
    .lex "$cur", $P2744
    find_lex $P2745, "$i"
    unless_null $P2745, vivify_1117
    new $P2745, "Undef"
  vivify_1117:
    set $I2746, $P2745
    find_lex $P2747, "@args"
    unless_null $P2747, vivify_1118
    $P2747 = root_new ['parrot';'ResizablePMCArray']
  vivify_1118:
    set $P2748, $P2747[$I2746]
    unless_null $P2748, vivify_1119
    new $P2748, "Undef"
  vivify_1119:
    store_lex "$cur", $P2748
.annotate 'line', 2011
    find_lex $P2750, "self"
    find_lex $P2751, "$cur"
    unless_null $P2751, vivify_1120
    new $P2751, "Undef"
  vivify_1120:
    $P2752 = $P2750."is-option"($P2751)
    if $P2752, if_2749
.annotate 'line', 2053
    find_lex $P2916, "$cur"
    unless_null $P2916, vivify_1121
    new $P2916, "Undef"
  vivify_1121:
    find_lex $P2917, "self"
    find_lex $P2918, "$?CLASS"
    getattribute $P2919, $P2917, $P2918, "%!stopper"
    unless_null $P2919, vivify_1122
    $P2919 = root_new ['parrot';'Hash']
  vivify_1122:
    set $P2920, $P2919[$P2916]
    unless_null $P2920, vivify_1123
    new $P2920, "Undef"
  vivify_1123:
    if $P2920, if_2915
.annotate 'line', 2056
    find_lex $P2921, "$result"
    unless_null $P2921, vivify_1124
    new $P2921, "Undef"
  vivify_1124:
    find_lex $P2922, "$cur"
    unless_null $P2922, vivify_1125
    new $P2922, "Undef"
  vivify_1125:
    $P2921."add-argument"($P2922)
.annotate 'line', 2057
    find_lex $P2924, "self"
    find_lex $P2925, "$?CLASS"
    getattribute $P2926, $P2924, $P2925, "$!stop-after-first-arg"
    unless_null $P2926, vivify_1126
    new $P2926, "Undef"
  vivify_1126:
    unless $P2926, if_2923_end
    "slurp-rest"()
  if_2923_end:
.annotate 'line', 2055
    goto if_2915_end
  if_2915:
.annotate 'line', 2054
    "slurp-rest"()
  if_2915_end:
.annotate 'line', 2053
    goto if_2749_end
  if_2749:
.annotate 'line', 2012
    find_lex $P2754, "$cur"
    unless_null $P2754, vivify_1127
    new $P2754, "Undef"
  vivify_1127:
    set $S2755, $P2754
    substr $S2756, $S2755, 0, 2
    iseq $I2757, $S2756, "--"
    if $I2757, if_2753
.annotate 'line', 2031
    .const 'Sub' $P2845 = "258_1304277405.374" 
    capture_lex $P2845
    $P2845()
    goto if_2753_end
  if_2753:
.annotate 'line', 2012
    .const 'Sub' $P2759 = "257_1304277405.374" 
    capture_lex $P2759
    $P2759()
  if_2753_end:
  if_2749_end:
.annotate 'line', 2011
    find_lex $P2927, "$i"
    unless_null $P2927, vivify_1176
    new $P2927, "Undef"
  vivify_1176:
    clone $P2928, $P2927
    inc $P2927
.annotate 'line', 2009
    .return ($P2928)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2844"  :anon :subid("258_1304277405.374") :outer("256_1304277405.374")
.annotate 'line', 2031
    .const 'Sub' $P2890 = "259_1304277405.374" 
    capture_lex $P2890
.annotate 'line', 2032
    new $P2846, "Undef"
    .lex "$opt", $P2846
    find_lex $P2847, "$cur"
    unless_null $P2847, vivify_1128
    new $P2847, "Undef"
  vivify_1128:
    set $S2848, $P2847
    substr $S2849, $S2848, 1
    new $P2850, 'String'
    set $P2850, $S2849
    store_lex "$opt", $P2850
.annotate 'line', 2033
    find_lex $P2853, "$opt"
    unless_null $P2853, vivify_1129
    new $P2853, "Undef"
  vivify_1129:
    set $S2854, $P2853
    length $I2855, $S2854
    set $N2856, $I2855
    iseq $I2857, $N2856, 1.0
    if $I2857, if_2852
.annotate 'line', 2043
    .const 'Sub' $P2890 = "259_1304277405.374" 
    capture_lex $P2890
    $P2914 = $P2890()
    set $P2851, $P2914
.annotate 'line', 2033
    goto if_2852_end
  if_2852:
.annotate 'line', 2035
    find_lex $P2859, "$opt"
    unless_null $P2859, vivify_1137
    new $P2859, "Undef"
  vivify_1137:
    find_lex $P2860, "self"
    find_lex $P2861, "$?CLASS"
    getattribute $P2862, $P2860, $P2861, "%!options"
    unless_null $P2862, vivify_1138
    $P2862 = root_new ['parrot';'Hash']
  vivify_1138:
    set $P2863, $P2862[$P2859]
    unless_null $P2863, vivify_1139
    new $P2863, "Undef"
  vivify_1139:
    if $P2863, unless_2858_end
    new $P2864, 'String'
    set $P2864, "No such option -"
    find_lex $P2865, "$opt"
    unless_null $P2865, vivify_1140
    new $P2865, "Undef"
  vivify_1140:
    concat $P2866, $P2864, $P2865
    die $P2866
  unless_2858_end:
.annotate 'line', 2036
    find_lex $P2868, "self"
    find_lex $P2869, "$opt"
    unless_null $P2869, vivify_1141
    new $P2869, "Undef"
  vivify_1141:
    $P2870 = $P2868."wants-value"($P2869)
    if $P2870, if_2867
.annotate 'line', 2040
    find_lex $P2877, "$result"
    unless_null $P2877, vivify_1142
    new $P2877, "Undef"
  vivify_1142:
    find_lex $P2878, "$opt"
    unless_null $P2878, vivify_1143
    new $P2878, "Undef"
  vivify_1143:
    $P2877."add-option"($P2878, 1)
.annotate 'line', 2039
    goto if_2867_end
  if_2867:
.annotate 'line', 2037
    find_lex $P2871, "$result"
    unless_null $P2871, vivify_1144
    new $P2871, "Undef"
  vivify_1144:
    find_lex $P2872, "$opt"
    unless_null $P2872, vivify_1145
    new $P2872, "Undef"
  vivify_1145:
.annotate 'line', 2038
    new $P2873, 'String'
    set $P2873, "-"
    find_lex $P2874, "$opt"
    unless_null $P2874, vivify_1146
    new $P2874, "Undef"
  vivify_1146:
    concat $P2875, $P2873, $P2874
    $P2876 = "get-value"($P2875)
    $P2871."add-option"($P2872, $P2876)
  if_2867_end:
.annotate 'line', 2042
    new $P2881, 'String'
    set $P2881, "-"
    find_lex $P2882, "$opt"
    unless_null $P2882, vivify_1147
    new $P2882, "Undef"
  vivify_1147:
    concat $P2883, $P2881, $P2882
    find_lex $P2884, "self"
    find_lex $P2885, "$?CLASS"
    getattribute $P2886, $P2884, $P2885, "%!stopper"
    unless_null $P2886, vivify_1148
    $P2886 = root_new ['parrot';'Hash']
  vivify_1148:
    set $P2887, $P2886[$P2883]
    unless_null $P2887, vivify_1149
    new $P2887, "Undef"
  vivify_1149:
    if $P2887, if_2880
    set $P2879, $P2887
    goto if_2880_end
  if_2880:
    $P2888 = "slurp-rest"()
    set $P2879, $P2888
  if_2880_end:
.annotate 'line', 2033
    set $P2851, $P2879
  if_2852_end:
.annotate 'line', 2031
    .return ($P2851)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2889"  :anon :subid("259_1304277405.374") :outer("258_1304277405.374")
.annotate 'line', 2043
    .const 'Sub' $P2896 = "260_1304277405.374" 
    capture_lex $P2896
.annotate 'line', 2045
    new $P2891, "Undef"
    .lex "$iter", $P2891
    find_lex $P2892, "$opt"
    unless_null $P2892, vivify_1130
    new $P2892, "Undef"
  vivify_1130:
    iter $P2893, $P2892
    store_lex "$iter", $P2893
.annotate 'line', 2046
    new $P2912, 'ExceptionHandler'
    set_label $P2912, loop2911_handler
    $P2912."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2912
  loop2911_test:
    find_lex $P2894, "$iter"
    unless_null $P2894, vivify_1131
    new $P2894, "Undef"
  vivify_1131:
    unless $P2894, loop2911_done
  loop2911_redo:
    .const 'Sub' $P2896 = "260_1304277405.374" 
    capture_lex $P2896
    $P2896()
  loop2911_next:
    goto loop2911_test
  loop2911_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2913, exception, 'type'
    eq $P2913, .CONTROL_LOOP_NEXT, loop2911_next
    eq $P2913, .CONTROL_LOOP_REDO, loop2911_redo
  loop2911_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P2894)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2895"  :anon :subid("260_1304277405.374") :outer("259_1304277405.374")
.annotate 'line', 2047
    new $P2897, "Undef"
    .lex "$o", $P2897
    find_lex $P2898, "$iter"
    unless_null $P2898, vivify_1132
    new $P2898, "Undef"
  vivify_1132:
    shift $P2899, $P2898
    store_lex "$o", $P2899
.annotate 'line', 2048
    find_lex $P2901, "self"
    find_lex $P2902, "$o"
    unless_null $P2902, vivify_1133
    new $P2902, "Undef"
  vivify_1133:
    $P2903 = $P2901."wants-value"($P2902)
    unless $P2903, if_2900_end
    new $P2904, 'String'
    set $P2904, "Option -"
    find_lex $P2905, "$o"
    unless_null $P2905, vivify_1134
    new $P2905, "Undef"
  vivify_1134:
    concat $P2906, $P2904, $P2905
    concat $P2907, $P2906, " requires a value and cannot be grouped"
    die $P2907
  if_2900_end:
.annotate 'line', 2049
    find_lex $P2908, "$result"
    unless_null $P2908, vivify_1135
    new $P2908, "Undef"
  vivify_1135:
    find_lex $P2909, "$o"
    unless_null $P2909, vivify_1136
    new $P2909, "Undef"
  vivify_1136:
    $P2910 = $P2908."add-option"($P2909, 1)
.annotate 'line', 2046
    .return ($P2910)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2758"  :anon :subid("257_1304277405.374") :outer("256_1304277405.374")
.annotate 'line', 2014
    new $P2760, "Undef"
    .lex "$opt", $P2760
.annotate 'line', 2015
    new $P2761, "Undef"
    .lex "$idx", $P2761
.annotate 'line', 2016
    new $P2762, "Undef"
    .lex "$value", $P2762
.annotate 'line', 2017
    new $P2763, "Undef"
    .lex "$has-value", $P2763
.annotate 'line', 2014
    find_lex $P2764, "$i"
    unless_null $P2764, vivify_1150
    new $P2764, "Undef"
  vivify_1150:
    set $I2765, $P2764
    find_lex $P2766, "@args"
    unless_null $P2766, vivify_1151
    $P2766 = root_new ['parrot';'ResizablePMCArray']
  vivify_1151:
    set $P2767, $P2766[$I2765]
    unless_null $P2767, vivify_1152
    new $P2767, "Undef"
  vivify_1152:
    set $S2768, $P2767
    substr $S2769, $S2768, 2
    new $P2770, 'String'
    set $P2770, $S2769
    store_lex "$opt", $P2770
.annotate 'line', 2015
    find_lex $P2771, "$opt"
    unless_null $P2771, vivify_1153
    new $P2771, "Undef"
  vivify_1153:
    set $S2772, $P2771
    index $I2773, $S2772, "="
    new $P2774, 'Integer'
    set $P2774, $I2773
    store_lex "$idx", $P2774
.annotate 'line', 2016
    new $P2775, "Integer"
    assign $P2775, 1
    store_lex "$value", $P2775
.annotate 'line', 2017
    new $P2776, "Integer"
    assign $P2776, 0
    store_lex "$has-value", $P2776
.annotate 'line', 2019
    find_lex $P2778, "$idx"
    unless_null $P2778, vivify_1154
    new $P2778, "Undef"
  vivify_1154:
    set $N2779, $P2778
    isge $I2780, $N2779, 0.0
    unless $I2780, if_2777_end
.annotate 'line', 2020
    find_lex $P2781, "$opt"
    unless_null $P2781, vivify_1155
    new $P2781, "Undef"
  vivify_1155:
    set $S2782, $P2781
    find_lex $P2783, "$idx"
    unless_null $P2783, vivify_1156
    new $P2783, "Undef"
  vivify_1156:
    add $P2784, $P2783, 1
    set $I2785, $P2784
    substr $S2786, $S2782, $I2785
    new $P2787, 'String'
    set $P2787, $S2786
    store_lex "$value", $P2787
.annotate 'line', 2021
    find_lex $P2788, "$opt"
    unless_null $P2788, vivify_1157
    new $P2788, "Undef"
  vivify_1157:
    set $S2789, $P2788
    find_lex $P2790, "$idx"
    unless_null $P2790, vivify_1158
    new $P2790, "Undef"
  vivify_1158:
    set $I2791, $P2790
    substr $S2792, $S2789, 0, $I2791
    new $P2793, 'String'
    set $P2793, $S2792
    store_lex "$opt", $P2793
.annotate 'line', 2022
    new $P2794, "Integer"
    assign $P2794, 1
    store_lex "$has-value", $P2794
  if_2777_end:
.annotate 'line', 2024
    find_lex $P2799, "$opt"
    unless_null $P2799, vivify_1159
    new $P2799, "Undef"
  vivify_1159:
    find_lex $P2796, "self"
    find_lex $P2797, "$?CLASS"
    getattribute $P2798, $P2796, $P2797, "%!options"
    unless_null $P2798, vivify_1160
    $P2798 = root_new ['parrot';'Hash']
  vivify_1160:
    exists $I2800, $P2798[$P2799]
    if $I2800, unless_2795_end
    new $P2801, 'String'
    set $P2801, "Illegal option --"
    find_lex $P2802, "$opt"
    unless_null $P2802, vivify_1161
    new $P2802, "Undef"
  vivify_1161:
    concat $P2803, $P2801, $P2802
    die $P2803
  unless_2795_end:
.annotate 'line', 2025
    find_lex $P2807, "$opt"
    unless_null $P2807, vivify_1162
    new $P2807, "Undef"
  vivify_1162:
    find_lex $P2808, "self"
    find_lex $P2809, "$?CLASS"
    getattribute $P2810, $P2808, $P2809, "%!options"
    unless_null $P2810, vivify_1163
    $P2810 = root_new ['parrot';'Hash']
  vivify_1163:
    set $P2811, $P2810[$P2807]
    unless_null $P2811, vivify_1164
    new $P2811, "Undef"
  vivify_1164:
    set $S2812, $P2811
    isne $I2813, $S2812, "s"
    if $I2813, if_2806
    new $P2805, 'Integer'
    set $P2805, $I2813
    goto if_2806_end
  if_2806:
    find_lex $P2814, "$has-value"
    unless_null $P2814, vivify_1165
    new $P2814, "Undef"
  vivify_1165:
    set $P2805, $P2814
  if_2806_end:
    unless $P2805, if_2804_end
    new $P2815, 'String'
    set $P2815, "Option --"
    find_lex $P2816, "$opt"
    unless_null $P2816, vivify_1166
    new $P2816, "Undef"
  vivify_1166:
    concat $P2817, $P2815, $P2816
    concat $P2818, $P2817, " does not allow a value"
    die $P2818
  if_2804_end:
.annotate 'line', 2026
    find_lex $P2822, "$has-value"
    unless_null $P2822, vivify_1167
    new $P2822, "Undef"
  vivify_1167:
    isfalse $I2823, $P2822
    if $I2823, if_2821
    new $P2820, 'Integer'
    set $P2820, $I2823
    goto if_2821_end
  if_2821:
    find_lex $P2824, "self"
    find_lex $P2825, "$opt"
    unless_null $P2825, vivify_1168
    new $P2825, "Undef"
  vivify_1168:
    $P2826 = $P2824."wants-value"($P2825)
    set $P2820, $P2826
  if_2821_end:
    unless $P2820, if_2819_end
.annotate 'line', 2027
    new $P2827, 'String'
    set $P2827, "--"
    find_lex $P2828, "$opt"
    unless_null $P2828, vivify_1169
    new $P2828, "Undef"
  vivify_1169:
    concat $P2829, $P2827, $P2828
    $P2830 = "get-value"($P2829)
    store_lex "$value", $P2830
  if_2819_end:
.annotate 'line', 2029
    find_lex $P2831, "$result"
    unless_null $P2831, vivify_1170
    new $P2831, "Undef"
  vivify_1170:
    find_lex $P2832, "$opt"
    unless_null $P2832, vivify_1171
    new $P2832, "Undef"
  vivify_1171:
    find_lex $P2833, "$value"
    unless_null $P2833, vivify_1172
    new $P2833, "Undef"
  vivify_1172:
    $P2831."add-option"($P2832, $P2833)
.annotate 'line', 2030
    new $P2836, 'String'
    set $P2836, "--"
    find_lex $P2837, "$opt"
    unless_null $P2837, vivify_1173
    new $P2837, "Undef"
  vivify_1173:
    concat $P2838, $P2836, $P2837
    find_lex $P2839, "self"
    find_lex $P2840, "$?CLASS"
    getattribute $P2841, $P2839, $P2840, "%!stopper"
    unless_null $P2841, vivify_1174
    $P2841 = root_new ['parrot';'Hash']
  vivify_1174:
    set $P2842, $P2841[$P2838]
    unless_null $P2842, vivify_1175
    new $P2842, "Undef"
  vivify_1175:
    if $P2842, if_2835
    set $P2834, $P2842
    goto if_2835_end
  if_2835:
    find_lex $P2843, "slurp-rest"
    set $P2834, $P2843
  if_2835_end:
.annotate 'line', 2012
    .return ($P2834)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2941"  :subid("262_1304277405.374") :outer("10_1304277405.374")
.annotate 'line', 2096
    .const 'Sub' $P3904 = "298_1304277405.374" 
    capture_lex $P3904
    .const 'Sub' $P3790 = "296_1304277405.374" 
    capture_lex $P3790
    .const 'Sub' $P3785 = "295_1304277405.374" 
    capture_lex $P3785
    .const 'Sub' $P3762 = "294_1304277405.374" 
    capture_lex $P3762
    .const 'Sub' $P3729 = "293_1304277405.374" 
    capture_lex $P3729
    .const 'Sub' $P3682 = "292_1304277405.374" 
    capture_lex $P3682
    .const 'Sub' $P3606 = "291_1304277405.374" 
    capture_lex $P3606
    .const 'Sub' $P3602 = "290_1304277405.374" 
    capture_lex $P3602
    .const 'Sub' $P3516 = "287_1304277405.374" 
    capture_lex $P3516
    .const 'Sub' $P3439 = "286_1304277405.374" 
    capture_lex $P3439
    .const 'Sub' $P3403 = "285_1304277405.374" 
    capture_lex $P3403
    .const 'Sub' $P3340 = "284_1304277405.374" 
    capture_lex $P3340
    .const 'Sub' $P3264 = "281_1304277405.374" 
    capture_lex $P3264
    .const 'Sub' $P3223 = "280_1304277405.374" 
    capture_lex $P3223
    .const 'Sub' $P3165 = "278_1304277405.374" 
    capture_lex $P3165
    .const 'Sub' $P3127 = "277_1304277405.374" 
    capture_lex $P3127
    .const 'Sub' $P3113 = "276_1304277405.374" 
    capture_lex $P3113
    .const 'Sub' $P3092 = "275_1304277405.374" 
    capture_lex $P3092
    .const 'Sub' $P3067 = "274_1304277405.374" 
    capture_lex $P3067
    .const 'Sub' $P3053 = "273_1304277405.374" 
    capture_lex $P3053
    .const 'Sub' $P3035 = "272_1304277405.374" 
    capture_lex $P3035
    .const 'Sub' $P3015 = "271_1304277405.374" 
    capture_lex $P3015
    .const 'Sub' $P3001 = "270_1304277405.374" 
    capture_lex $P3001
    .const 'Sub' $P2983 = "269_1304277405.374" 
    capture_lex $P2983
    .const 'Sub' $P2974 = "268_1304277405.374" 
    capture_lex $P2974
    .const 'Sub' $P2954 = "264_1304277405.374" 
    capture_lex $P2954
    .const 'Sub' $P2944 = "263_1304277405.374" 
    capture_lex $P2944
    .lex "Event", $P2943
.annotate 'line', 2117
    .const 'Sub' $P2944 = "263_1304277405.374" 
    newclosure $P2948, $P2944
    .lex "addr", $P2948
.annotate 'line', 2224
    new $P2949, "Undef"
    .lex "$loader", $P2949
.annotate 'line', 2420
    new $P2950, "Undef"
    .lex "$stub_code", $P2950
    .lex "$?PACKAGE", $P2951
    .lex "$?CLASS", $P2952
.annotate 'line', 2098
    .const 'Sub' $P2954 = "264_1304277405.374" 
    capture_lex $P2954
    $P2954()
    find_lex $P2973, "addr"
.annotate 'line', 2224
    get_hll_global $P3164, "ModuleLoader"
    store_lex "$loader", $P3164
.annotate 'line', 2420
    .const 'Sub' $P3602 = "290_1304277405.374" 
    newclosure $P3605, $P3602
    store_lex "$stub_code", $P3605
.annotate 'line', 2526
    .const 'Sub' $P3790 = "296_1304277405.374" 
    newclosure $P3902, $P3790
.annotate 'line', 2096
    .return ($P3902)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1178") :outer("262_1304277405.374")
.annotate 'line', 2096
    .const 'Sub' $P2942 = "262_1304277405.374" 
    .local pmc block
    set block, $P2942
    .const 'Sub' $P3904 = "298_1304277405.374" 
    capture_lex $P3904
    $P3904()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3903"  :anon :subid("298_1304277405.374") :outer("262_1304277405.374")
.annotate 'line', 2096
    nqp_get_sc_object $P3905, "1304277396.391", 154
    .local pmc type_obj
    set type_obj, $P3905
    get_how $P3906, type_obj
    $P3907 = $P3906."compose"(type_obj)
    .return ($P3907)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("263_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_2945
.annotate 'line', 2117
    .lex "$obj", param_2945
.annotate 'line', 2118
    find_lex $P2946, "$obj"
    unless_null $P2946, vivify_1179
    new $P2946, "Undef"
  vivify_1179:
    get_addr $I2947, $P2946
.annotate 'line', 2117
    .return ($I2947)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2953"  :anon :subid("264_1304277405.374") :outer("262_1304277405.374")
.annotate 'line', 2098
    .const 'Sub' $P2969 = "267_1304277405.374" 
    capture_lex $P2969
    .const 'Sub' $P2962 = "266_1304277405.374" 
    capture_lex $P2962
    .const 'Sub' $P2957 = "265_1304277405.374" 
    capture_lex $P2957
    .lex "$?PACKAGE", $P2955
    .lex "$?CLASS", $P2956
.annotate 'line', 2105
    .const 'Sub' $P2962 = "266_1304277405.374" 
    newclosure $P2967, $P2962
.annotate 'line', 2098
    .return ($P2967)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1180") :outer("264_1304277405.374")
.annotate 'line', 2098
    .const 'Sub' $P2954 = "264_1304277405.374" 
    .local pmc block
    set block, $P2954
    .const 'Sub' $P2969 = "267_1304277405.374" 
    capture_lex $P2969
    $P2969()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2968"  :anon :subid("267_1304277405.374") :outer("264_1304277405.374")
.annotate 'line', 2098
    nqp_get_sc_object $P2970, "1304277396.391", 155
    .local pmc type_obj
    set type_obj, $P2970
    get_how $P2971, type_obj
    $P2972 = $P2971."compose"(type_obj)
    .return ($P2972)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("265_1304277405.374") :outer("264_1304277405.374")
    .param pmc param_2958
.annotate 'line', 2101
    .lex "self", param_2958
    find_lex $P2959, "self"
    find_lex $P2960, "$?CLASS"
    getattribute $P2961, $P2959, $P2960, "$!deserialize_past"
    unless_null $P2961, vivify_1181
    new $P2961, "Undef"
  vivify_1181:
    .return ($P2961)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("266_1304277405.374") :outer("264_1304277405.374")
    .param pmc param_2963
.annotate 'line', 2105
    .lex "self", param_2963
    find_lex $P2964, "self"
    find_lex $P2965, "$?CLASS"
    getattribute $P2966, $P2964, $P2965, "$!fixup_past"
    unless_null $P2966, vivify_1182
    new $P2966, "Undef"
  vivify_1182:
    .return ($P2966)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_2975
    .param pmc param_2976 :named("handle")
.annotate 'line', 2125
    .lex "self", param_2975
    .lex "$handle", param_2976
.annotate 'line', 2126
    new $P2977, "Undef"
    .lex "$obj", $P2977
    find_lex $P2978, "self"
    $P2979 = $P2978."CREATE"()
    store_lex "$obj", $P2979
.annotate 'line', 2127
    find_lex $P2980, "$obj"
    unless_null $P2980, vivify_1183
    new $P2980, "Undef"
  vivify_1183:
    find_lex $P2981, "$handle"
    unless_null $P2981, vivify_1184
    new $P2981, "Undef"
  vivify_1184:
    $P2980."BUILD"($P2981 :named("handle"))
    find_lex $P2982, "$obj"
    unless_null $P2982, vivify_1185
    new $P2982, "Undef"
  vivify_1185:
.annotate 'line', 2125
    .return ($P2982)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_2984
    .param pmc param_2985 :optional :named("handle")
    .param int has_param_2985 :opt_flag
.annotate 'line', 2131
    .lex "self", param_2984
    if has_param_2985, optparam_1186
    new $P2986, "Undef"
    set param_2985, $P2986
  optparam_1186:
    .lex "$handle", param_2985
.annotate 'line', 2132
    find_lex $P2987, "$handle"
    unless_null $P2987, vivify_1187
    new $P2987, "Undef"
  vivify_1187:
    set $S2988, $P2987
    nqp_create_sc $P2989, $S2988
    find_lex $P2990, "self"
    find_lex $P2991, "$?CLASS"
    setattribute $P2990, $P2991, "$!sc", $P2989
.annotate 'line', 2133
    find_lex $P2992, "$handle"
    unless_null $P2992, vivify_1188
    new $P2992, "Undef"
  vivify_1188:
    find_lex $P2993, "self"
    find_lex $P2994, "$?CLASS"
    setattribute $P2993, $P2994, "$!handle", $P2992
.annotate 'line', 2134
    new $P2995, "Hash"
    find_lex $P2996, "self"
    find_lex $P2997, "$?CLASS"
    setattribute $P2996, $P2997, "%!addr_to_slot", $P2995
.annotate 'line', 2135
    new $P2998, "ResizablePMCArray"
    find_lex $P2999, "self"
    find_lex $P3000, "$?CLASS"
    setattribute $P2999, $P3000, "@!event_stream", $P2998
.annotate 'line', 2131
    .return ($P2998)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3002
    .param pmc param_3003
.annotate 'line', 2139
    .lex "self", param_3002
    .lex "$obj", param_3003
.annotate 'line', 2140
    new $P3004, "Undef"
    .lex "$slot", $P3004
    find_lex $P3005, "$obj"
    unless_null $P3005, vivify_1189
    new $P3005, "Undef"
  vivify_1189:
    $P3006 = "addr"($P3005)
    find_lex $P3007, "self"
    find_lex $P3008, "$?CLASS"
    getattribute $P3009, $P3007, $P3008, "%!addr_to_slot"
    unless_null $P3009, vivify_1190
    $P3009 = root_new ['parrot';'Hash']
  vivify_1190:
    set $P3010, $P3009[$P3006]
    unless_null $P3010, vivify_1191
    new $P3010, "Undef"
  vivify_1191:
    store_lex "$slot", $P3010
.annotate 'line', 2141
    find_lex $P3012, "$slot"
    unless_null $P3012, vivify_1192
    new $P3012, "Undef"
  vivify_1192:
    defined $I3013, $P3012
    if $I3013, unless_3011_end
.annotate 'line', 2142
    die "slot_for_object called on object not in context"
  unless_3011_end:
.annotate 'line', 2141
    find_lex $P3014, "$slot"
    unless_null $P3014, vivify_1193
    new $P3014, "Undef"
  vivify_1193:
.annotate 'line', 2139
    .return ($P3014)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3018
    .param pmc param_3019
.annotate 'line', 2151
    new $P3017, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3017, control_3016
    push_eh $P3017
    .lex "self", param_3018
    .lex "$obj", param_3019
.annotate 'line', 2152
    new $P3020, "Undef"
    .lex "$slot", $P3020
    find_lex $P3021, "self"
    find_lex $P3022, "$obj"
    unless_null $P3022, vivify_1194
    new $P3022, "Undef"
  vivify_1194:
    $P3023 = $P3021."slot_for_object"($P3022)
    store_lex "$slot", $P3023
.annotate 'line', 2153
    new $P3024, "Exception"
    set $P3024['type'], .CONTROL_RETURN
    get_hll_global $P3025, "GLOBAL"
    nqp_get_package_through_who $P3026, $P3025, "PAST"
    get_who $P3027, $P3026
    set $P3028, $P3027["Op"]
    find_lex $P3029, "self"
    find_lex $P3030, "$?CLASS"
    getattribute $P3031, $P3029, $P3030, "$!handle"
    unless_null $P3031, vivify_1195
    new $P3031, "Undef"
  vivify_1195:
    find_lex $P3032, "$slot"
    unless_null $P3032, vivify_1196
    new $P3032, "Undef"
  vivify_1196:
    $P3033 = $P3028."new"($P3031, $P3032, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3024, 'payload', $P3033
    throw $P3024
.annotate 'line', 2151
    .return ()
  control_3016:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3034, exception, "payload"
    .return ($P3034)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3038
    .param pmc param_3039
    .param pmc param_3040
.annotate 'line', 2157
    new $P3037, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3037, control_3036
    push_eh $P3037
    .lex "self", param_3038
    .lex "$slot", param_3039
    .lex "$past_to_set", param_3040
.annotate 'line', 2158
    new $P3041, "Exception"
    set $P3041['type'], .CONTROL_RETURN
    get_hll_global $P3042, "GLOBAL"
    nqp_get_package_through_who $P3043, $P3042, "PAST"
    get_who $P3044, $P3043
    set $P3045, $P3044["Op"]
    find_lex $P3046, "self"
    find_lex $P3047, "$?CLASS"
    getattribute $P3048, $P3046, $P3047, "$!handle"
    unless_null $P3048, vivify_1197
    new $P3048, "Undef"
  vivify_1197:
    find_lex $P3049, "$slot"
    unless_null $P3049, vivify_1198
    new $P3049, "Undef"
  vivify_1198:
    find_lex $P3050, "$past_to_set"
    unless_null $P3050, vivify_1199
    new $P3050, "Undef"
  vivify_1199:
    $P3051 = $P3045."new"($P3048, $P3049, $P3050, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3041, 'payload', $P3051
    throw $P3041
.annotate 'line', 2157
    .return ()
  control_3036:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3052, exception, "payload"
    .return ($P3052)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3054
    .param pmc param_3055
.annotate 'line', 2164
    .lex "self", param_3054
    .lex "$to_wrap", param_3055
.annotate 'line', 2165
    get_hll_global $P3056, "GLOBAL"
    nqp_get_package_through_who $P3057, $P3056, "PAST"
    get_who $P3058, $P3057
    set $P3059, $P3058["Op"]
    find_lex $P3060, "$to_wrap"
    unless_null $P3060, vivify_1200
    new $P3060, "Undef"
  vivify_1200:
.annotate 'line', 2168
    get_hll_global $P3061, "GLOBAL"
    nqp_get_package_through_who $P3062, $P3061, "PAST"
    get_who $P3063, $P3062
    set $P3064, $P3063["Var"]
    $P3065 = $P3064."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3066 = $P3059."new"($P3060, $P3065, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2164
    .return ($P3066)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3068
    .param pmc param_3069
.annotate 'line', 2173
    .lex "self", param_3068
    .lex "$obj", param_3069
.annotate 'line', 2175
    new $P3070, "Undef"
    .lex "$idx", $P3070
.annotate 'line', 2174
    find_lex $P3071, "$obj"
    unless_null $P3071, vivify_1201
    new $P3071, "Undef"
  vivify_1201:
    find_lex $P3072, "self"
    find_lex $P3073, "$?CLASS"
    getattribute $P3074, $P3072, $P3073, "$!sc"
    unless_null $P3074, vivify_1202
    new $P3074, "Undef"
  vivify_1202:
    nqp_set_sc_for_object $P3071, $P3074
.annotate 'line', 2175
    find_lex $P3075, "self"
    find_lex $P3076, "$?CLASS"
    getattribute $P3077, $P3075, $P3076, "$!sc"
    unless_null $P3077, vivify_1203
    new $P3077, "Undef"
  vivify_1203:
    $P3078 = $P3077."elems"()
    store_lex "$idx", $P3078
.annotate 'line', 2176
    find_lex $P3079, "$obj"
    unless_null $P3079, vivify_1204
    new $P3079, "Undef"
  vivify_1204:
    find_lex $P3080, "$idx"
    unless_null $P3080, vivify_1205
    new $P3080, "Undef"
  vivify_1205:
    set $I3081, $P3080
    find_lex $P3082, "self"
    find_lex $P3083, "$?CLASS"
    getattribute $P3084, $P3082, $P3083, "$!sc"
    unless_null $P3084, vivify_1206
    $P3084 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3082, $P3083, "$!sc", $P3084
  vivify_1206:
    set $P3084[$I3081], $P3079
.annotate 'line', 2177
    find_lex $P3085, "$idx"
    unless_null $P3085, vivify_1207
    new $P3085, "Undef"
  vivify_1207:
    find_lex $P3086, "$obj"
    unless_null $P3086, vivify_1208
    new $P3086, "Undef"
  vivify_1208:
    $P3087 = "addr"($P3086)
    find_lex $P3088, "self"
    find_lex $P3089, "$?CLASS"
    getattribute $P3090, $P3088, $P3089, "%!addr_to_slot"
    unless_null $P3090, vivify_1209
    $P3090 = root_new ['parrot';'Hash']
    setattribute $P3088, $P3089, "%!addr_to_slot", $P3090
  vivify_1209:
    set $P3090[$P3087], $P3085
    find_lex $P3091, "$idx"
    unless_null $P3091, vivify_1210
    new $P3091, "Undef"
  vivify_1210:
.annotate 'line', 2173
    .return ($P3091)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code"  :subid("275_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3093
    .param pmc param_3094
.annotate 'line', 2182
    .lex "self", param_3093
    .lex "$obj", param_3094
.annotate 'line', 2183
    new $P3095, "Undef"
    .lex "$idx", $P3095
    find_lex $P3096, "self"
    find_lex $P3097, "$?CLASS"
    getattribute $P3098, $P3096, $P3097, "$!sc"
    unless_null $P3098, vivify_1211
    new $P3098, "Undef"
  vivify_1211:
    $P3099 = $P3098."elems"()
    store_lex "$idx", $P3099
.annotate 'line', 2184
    find_lex $P3100, "$obj"
    unless_null $P3100, vivify_1212
    new $P3100, "Undef"
  vivify_1212:
    find_lex $P3101, "$idx"
    unless_null $P3101, vivify_1213
    new $P3101, "Undef"
  vivify_1213:
    set $I3102, $P3101
    find_lex $P3103, "self"
    find_lex $P3104, "$?CLASS"
    getattribute $P3105, $P3103, $P3104, "$!sc"
    unless_null $P3105, vivify_1214
    $P3105 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3103, $P3104, "$!sc", $P3105
  vivify_1214:
    set $P3105[$I3102], $P3100
.annotate 'line', 2185
    find_lex $P3106, "$idx"
    unless_null $P3106, vivify_1215
    new $P3106, "Undef"
  vivify_1215:
    find_lex $P3107, "$obj"
    unless_null $P3107, vivify_1216
    new $P3107, "Undef"
  vivify_1216:
    $P3108 = "addr"($P3107)
    find_lex $P3109, "self"
    find_lex $P3110, "$?CLASS"
    getattribute $P3111, $P3109, $P3110, "%!addr_to_slot"
    unless_null $P3111, vivify_1217
    $P3111 = root_new ['parrot';'Hash']
    setattribute $P3109, $P3110, "%!addr_to_slot", $P3111
  vivify_1217:
    set $P3111[$P3108], $P3106
    find_lex $P3112, "$idx"
    unless_null $P3112, vivify_1218
    new $P3112, "Undef"
  vivify_1218:
.annotate 'line', 2182
    .return ($P3112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("276_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3114
    .param pmc param_3115 :optional :named("deserialize_past")
    .param int has_param_3115 :opt_flag
    .param pmc param_3117 :optional :named("fixup_past")
    .param int has_param_3117 :opt_flag
.annotate 'line', 2190
    .lex "self", param_3114
    if has_param_3115, optparam_1219
    new $P3116, "Undef"
    set param_3115, $P3116
  optparam_1219:
    .lex "$deserialize_past", param_3115
    if has_param_3117, optparam_1220
    new $P3118, "Undef"
    set param_3117, $P3118
  optparam_1220:
    .lex "$fixup_past", param_3117
.annotate 'line', 2191
    find_lex $P3119, "self"
    find_lex $P3120, "$?CLASS"
    getattribute $P3121, $P3119, $P3120, "@!event_stream"
    unless_null $P3121, vivify_1221
    $P3121 = root_new ['parrot';'ResizablePMCArray']
  vivify_1221:
    find_lex $P3122, "Event"
    find_lex $P3123, "$deserialize_past"
    unless_null $P3123, vivify_1222
    new $P3123, "Undef"
  vivify_1222:
    find_lex $P3124, "$fixup_past"
    unless_null $P3124, vivify_1223
    new $P3124, "Undef"
  vivify_1223:
    $P3125 = $P3122."new"($P3123 :named("deserialize_past"), $P3124 :named("fixup_past"))
    $P3126 = $P3121."push"($P3125)
.annotate 'line', 2190
    .return ($P3126)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("277_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3128
    .param pmc param_3129
.annotate 'line', 2198
    .lex "self", param_3128
    .lex "$obj", param_3129
.annotate 'line', 2201
    new $P3130, "Undef"
    .lex "$sc", $P3130
    find_lex $P3131, "$obj"
    unless_null $P3131, vivify_1224
    new $P3131, "Undef"
  vivify_1224:
    nqp_get_sc_for_object $P3132, $P3131
    store_lex "$sc", $P3132
.annotate 'line', 2202
    find_lex $P3134, "$sc"
    unless_null $P3134, vivify_1225
    new $P3134, "Undef"
  vivify_1225:
    defined $I3135, $P3134
    if $I3135, unless_3133_end
.annotate 'line', 2203
    new $P3136, "String"
    assign $P3136, "Object of type '"
    find_lex $P3137, "$obj"
    unless_null $P3137, vivify_1226
    new $P3137, "Undef"
  vivify_1226:
    get_how $P3138, $P3137
    find_lex $P3139, "$obj"
    unless_null $P3139, vivify_1227
    new $P3139, "Undef"
  vivify_1227:
    $S3140 = $P3138."name"($P3139)
    concat $P3141, $P3136, $S3140
    concat $P3142, $P3141, "' cannot be referenced without having been "
    concat $P3143, $P3142, "assigned a serialization context"
.annotate 'line', 2204
    die $P3143
  unless_3133_end:
.annotate 'line', 2210
    find_lex $P3146, "$sc"
    unless_null $P3146, vivify_1228
    new $P3146, "Undef"
  vivify_1228:
    find_lex $P3147, "self"
    find_lex $P3148, "$?CLASS"
    getattribute $P3149, $P3147, $P3148, "$!sc"
    unless_null $P3149, vivify_1229
    new $P3149, "Undef"
  vivify_1229:
    issame $I3150, $P3146, $P3149
    if $I3150, if_3145
.annotate 'line', 2214
    get_hll_global $P3154, "GLOBAL"
    nqp_get_package_through_who $P3155, $P3154, "PAST"
    get_who $P3156, $P3155
    set $P3157, $P3156["Op"]
.annotate 'line', 2215
    find_lex $P3158, "$sc"
    unless_null $P3158, vivify_1230
    new $P3158, "Undef"
  vivify_1230:
    $P3159 = $P3158."handle"()
    find_lex $P3160, "$sc"
    unless_null $P3160, vivify_1231
    new $P3160, "Undef"
  vivify_1231:
    find_lex $P3161, "$obj"
    unless_null $P3161, vivify_1232
    new $P3161, "Undef"
  vivify_1232:
    $P3162 = $P3160."slot_index_for"($P3161)
    $P3163 = $P3157."new"($P3159, $P3162, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2213
    set $P3144, $P3163
.annotate 'line', 2210
    goto if_3145_end
  if_3145:
.annotate 'line', 2211
    find_lex $P3151, "self"
    find_lex $P3152, "$obj"
    unless_null $P3152, vivify_1233
    new $P3152, "Undef"
  vivify_1233:
    $P3153 = $P3151."get_slot_past_for_object"($P3152)
.annotate 'line', 2210
    set $P3144, $P3153
  if_3145_end:
.annotate 'line', 2198
    .return ($P3144)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_setting"  :subid("278_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3168
    .param pmc param_3169
.annotate 'line', 2227
    .const 'Sub' $P3176 = "279_1304277405.374" 
    capture_lex $P3176
    new $P3167, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3167, control_3166
    push_eh $P3167
    .lex "self", param_3168
    .lex "$setting_name", param_3169
.annotate 'line', 2229
    find_lex $P3172, "$setting_name"
    unless_null $P3172, vivify_1234
    new $P3172, "Undef"
  vivify_1234:
    set $S3173, $P3172
    isne $I3174, $S3173, "NULL"
    if $I3174, if_3171
    new $P3170, 'Integer'
    set $P3170, $I3174
    goto if_3171_end
  if_3171:
    .const 'Sub' $P3176 = "279_1304277405.374" 
    capture_lex $P3176
    $P3221 = $P3176()
    set $P3170, $P3221
  if_3171_end:
.annotate 'line', 2227
    .return ($P3170)
  control_3166:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3222, exception, "payload"
    .return ($P3222)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3175"  :anon :subid("279_1304277405.374") :outer("278_1304277405.374")
.annotate 'line', 2233
    new $P3177, "Undef"
    .lex "$setting", $P3177
.annotate 'line', 2234
    find_lex $P3178, "$loader"
    unless_null $P3178, vivify_1235
    new $P3178, "Undef"
  vivify_1235:
    find_lex $P3179, "$setting_name"
    unless_null $P3179, vivify_1236
    new $P3179, "Undef"
  vivify_1236:
    $P3180 = $P3178."load_setting"($P3179)
    find_dynamic_lex $P3183, "%*COMPILING"
    unless_null $P3183, vivify_1237
    get_hll_global $P3181, "GLOBAL"
    get_who $P3182, $P3181
    set $P3183, $P3182["%COMPILING"]
    unless_null $P3183, vivify_1238
    die "Contextual %*COMPILING not found"
  vivify_1238:
    store_dynamic_lex "%*COMPILING", $P3183
  vivify_1237:
    set $P3184, $P3183["%?OPTIONS"]
    unless_null $P3184, vivify_1239
    $P3184 = root_new ['parrot';'Hash']
    set $P3183["%?OPTIONS"], $P3184
  vivify_1239:
    set $P3184["outer_ctx"], $P3180
    store_lex "$setting", $P3180
.annotate 'line', 2237
    find_lex $P3185, "self"
    get_hll_global $P3186, "GLOBAL"
    nqp_get_package_through_who $P3187, $P3186, "PAST"
    get_who $P3188, $P3187
    set $P3189, $P3188["Stmts"]
.annotate 'line', 2238
    get_hll_global $P3190, "GLOBAL"
    nqp_get_package_through_who $P3191, $P3190, "PAST"
    get_who $P3192, $P3191
    set $P3193, $P3192["Op"]
    $P3194 = $P3193."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2241
    get_hll_global $P3195, "GLOBAL"
    nqp_get_package_through_who $P3196, $P3195, "PAST"
    get_who $P3197, $P3196
    set $P3198, $P3197["Op"]
.annotate 'line', 2243
    get_hll_global $P3199, "GLOBAL"
    nqp_get_package_through_who $P3200, $P3199, "PAST"
    get_who $P3201, $P3200
    set $P3202, $P3201["Var"]
    $P3203 = $P3202."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2244
    get_hll_global $P3204, "GLOBAL"
    nqp_get_package_through_who $P3205, $P3204, "PAST"
    get_who $P3206, $P3205
    set $P3207, $P3206["Op"]
.annotate 'line', 2246
    get_hll_global $P3208, "GLOBAL"
    nqp_get_package_through_who $P3209, $P3208, "PAST"
    get_who $P3210, $P3209
    set $P3211, $P3210["Var"]
    new $P3212, "ResizablePMCArray"
    $P3213 = $P3211."new"("ModuleLoader" :named("name"), $P3212 :named("namespace"), "package" :named("scope"))
    find_lex $P3214, "$setting_name"
    unless_null $P3214, vivify_1240
    new $P3214, "Undef"
  vivify_1240:
    $P3215 = $P3207."new"($P3213, $P3214, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2244
    $P3216 = $P3198."new"($P3203, $P3215, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2241
    $P3217 = $P3189."new"($P3194, $P3216)
.annotate 'line', 2237
    $P3185."add_event"($P3217 :named("deserialize_past"))
.annotate 'line', 2252
    new $P3218, "Exception"
    set $P3218['type'], .CONTROL_RETURN
    find_lex $P3219, "$setting"
    unless_null $P3219, vivify_1241
    new $P3219, "Undef"
  vivify_1241:
    getattribute $P3220, $P3219, "lex_pad"
    setattribute $P3218, 'payload', $P3220
    throw $P3218
.annotate 'line', 2229
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_module"  :subid("280_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3226
    .param pmc param_3227
    .param pmc param_3228
.annotate 'line', 2258
    new $P3225, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3225, control_3224
    push_eh $P3225
    .lex "self", param_3226
    .lex "$module_name", param_3227
    .lex "$cur_GLOBALish", param_3228
.annotate 'line', 2260
    new $P3229, "Undef"
    .lex "$module", $P3229
    find_lex $P3230, "$loader"
    unless_null $P3230, vivify_1242
    new $P3230, "Undef"
  vivify_1242:
    find_lex $P3231, "$module_name"
    unless_null $P3231, vivify_1243
    new $P3231, "Undef"
  vivify_1243:
    find_lex $P3232, "$cur_GLOBALish"
    unless_null $P3232, vivify_1244
    new $P3232, "Undef"
  vivify_1244:
    $P3233 = $P3230."load_module"($P3231, $P3232)
    store_lex "$module", $P3233
.annotate 'line', 2263
    find_lex $P3234, "self"
    get_hll_global $P3235, "GLOBAL"
    nqp_get_package_through_who $P3236, $P3235, "PAST"
    get_who $P3237, $P3236
    set $P3238, $P3237["Stmts"]
.annotate 'line', 2264
    get_hll_global $P3239, "GLOBAL"
    nqp_get_package_through_who $P3240, $P3239, "PAST"
    get_who $P3241, $P3240
    set $P3242, $P3241["Op"]
    $P3243 = $P3242."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2267
    get_hll_global $P3244, "GLOBAL"
    nqp_get_package_through_who $P3245, $P3244, "PAST"
    get_who $P3246, $P3245
    set $P3247, $P3246["Op"]
.annotate 'line', 2269
    get_hll_global $P3248, "GLOBAL"
    nqp_get_package_through_who $P3249, $P3248, "PAST"
    get_who $P3250, $P3249
    set $P3251, $P3250["Var"]
    new $P3252, "ResizablePMCArray"
    $P3253 = $P3251."new"("ModuleLoader" :named("name"), $P3252 :named("namespace"), "package" :named("scope"))
    find_lex $P3254, "$module_name"
    unless_null $P3254, vivify_1245
    new $P3254, "Undef"
  vivify_1245:
.annotate 'line', 2271
    find_lex $P3255, "self"
    find_lex $P3256, "$cur_GLOBALish"
    unless_null $P3256, vivify_1246
    new $P3256, "Undef"
  vivify_1246:
    $P3257 = $P3255."get_slot_past_for_object"($P3256)
    $P3258 = $P3247."new"($P3253, $P3254, $P3257, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2267
    $P3259 = $P3238."new"($P3243, $P3258)
.annotate 'line', 2263
    $P3234."add_event"($P3259 :named("deserialize_past"))
.annotate 'line', 2274
    new $P3260, "Exception"
    set $P3260['type'], .CONTROL_RETURN
    find_lex $P3261, "$module"
    unless_null $P3261, vivify_1247
    new $P3261, "Undef"
  vivify_1247:
    getattribute $P3262, $P3261, "lex_pad"
    setattribute $P3260, 'payload', $P3262
    throw $P3260
.annotate 'line', 2258
    .return ()
  control_3224:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3263, exception, "payload"
    .return ($P3263)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("281_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3265
    .param pmc param_3266
    .param pmc param_3267
    .param pmc param_3268
.annotate 'line', 2279
    .const 'Sub' $P3305 = "283_1304277405.374" 
    capture_lex $P3305
    .const 'Sub' $P3284 = "282_1304277405.374" 
    capture_lex $P3284
    .lex "self", param_3265
    .lex "$package", param_3266
    .lex "@sym", param_3267
    .lex "$obj", param_3268
.annotate 'line', 2281
    new $P3269, "Undef"
    .lex "$name", $P3269
.annotate 'line', 2284
    new $P3270, "Undef"
    .lex "$target", $P3270
.annotate 'line', 2291
    new $P3271, "Undef"
    .lex "$path", $P3271
.annotate 'line', 2280
    find_lex $P3272, "@sym"
    unless_null $P3272, vivify_1248
    $P3272 = root_new ['parrot';'ResizablePMCArray']
  vivify_1248:
    clone $P3273, $P3272
    store_lex "@sym", $P3273
.annotate 'line', 2281
    find_lex $P3274, "@sym"
    unless_null $P3274, vivify_1249
    $P3274 = root_new ['parrot';'ResizablePMCArray']
  vivify_1249:
    $P3275 = $P3274."pop"()
    set $S3276, $P3275
    new $P3277, 'String'
    set $P3277, $S3276
    store_lex "$name", $P3277
.annotate 'line', 2284
    find_lex $P3278, "$package"
    unless_null $P3278, vivify_1250
    new $P3278, "Undef"
  vivify_1250:
    store_lex "$target", $P3278
.annotate 'line', 2285
    find_lex $P3280, "@sym"
    unless_null $P3280, vivify_1251
    $P3280 = root_new ['parrot';'ResizablePMCArray']
  vivify_1251:
    defined $I3281, $P3280
    unless $I3281, for_undef_1252
    iter $P3279, $P3280
    new $P3291, 'ExceptionHandler'
    set_label $P3291, loop3290_handler
    $P3291."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3291
  loop3290_test:
    unless $P3279, loop3290_done
    shift $P3282, $P3279
  loop3290_redo:
    .const 'Sub' $P3284 = "282_1304277405.374" 
    capture_lex $P3284
    $P3284($P3282)
  loop3290_next:
    goto loop3290_test
  loop3290_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3292, exception, 'type'
    eq $P3292, .CONTROL_LOOP_NEXT, loop3290_next
    eq $P3292, .CONTROL_LOOP_REDO, loop3290_redo
  loop3290_done:
    pop_eh 
  for_undef_1252:
.annotate 'line', 2288
    find_lex $P3293, "$obj"
    unless_null $P3293, vivify_1255
    new $P3293, "Undef"
  vivify_1255:
    find_lex $P3294, "$name"
    unless_null $P3294, vivify_1256
    new $P3294, "Undef"
  vivify_1256:
    find_lex $P3295, "$target"
    unless_null $P3295, vivify_1257
    new $P3295, "Undef"
    store_lex "$target", $P3295
  vivify_1257:
    get_who $P3296, $P3295
    set $P3296[$P3294], $P3293
.annotate 'line', 2291
    find_lex $P3297, "self"
    find_lex $P3298, "$package"
    unless_null $P3298, vivify_1258
    new $P3298, "Undef"
  vivify_1258:
    $P3299 = $P3297."get_slot_past_for_object"($P3298)
    store_lex "$path", $P3299
.annotate 'line', 2292
    find_lex $P3301, "@sym"
    unless_null $P3301, vivify_1259
    $P3301 = root_new ['parrot';'ResizablePMCArray']
  vivify_1259:
    defined $I3302, $P3301
    unless $I3302, for_undef_1260
    iter $P3300, $P3301
    new $P3316, 'ExceptionHandler'
    set_label $P3316, loop3315_handler
    $P3316."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3316
  loop3315_test:
    unless $P3300, loop3315_done
    shift $P3303, $P3300
  loop3315_redo:
    .const 'Sub' $P3305 = "283_1304277405.374" 
    capture_lex $P3305
    $P3305($P3303)
  loop3315_next:
    goto loop3315_test
  loop3315_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3317, exception, 'type'
    eq $P3317, .CONTROL_LOOP_NEXT, loop3315_next
    eq $P3317, .CONTROL_LOOP_REDO, loop3315_redo
  loop3315_done:
    pop_eh 
  for_undef_1260:
.annotate 'line', 2295
    find_lex $P3318, "self"
    get_hll_global $P3319, "GLOBAL"
    nqp_get_package_through_who $P3320, $P3319, "PAST"
    get_who $P3321, $P3320
    set $P3322, $P3321["Op"]
.annotate 'line', 2297
    get_hll_global $P3323, "GLOBAL"
    nqp_get_package_through_who $P3324, $P3323, "PAST"
    get_who $P3325, $P3324
    set $P3326, $P3325["Var"]
.annotate 'line', 2299
    get_hll_global $P3327, "GLOBAL"
    nqp_get_package_through_who $P3328, $P3327, "PAST"
    get_who $P3329, $P3328
    set $P3330, $P3329["Op"]
    find_lex $P3331, "$path"
    unless_null $P3331, vivify_1263
    new $P3331, "Undef"
  vivify_1263:
    $P3332 = $P3330."new"($P3331, "get_who PP" :named("pirop"))
    find_lex $P3333, "$name"
    unless_null $P3333, vivify_1264
    new $P3333, "Undef"
  vivify_1264:
    $P3334 = $P3326."new"($P3332, $P3333, "keyed" :named("scope"))
.annotate 'line', 2302
    find_lex $P3335, "self"
    find_lex $P3336, "$obj"
    unless_null $P3336, vivify_1265
    new $P3336, "Undef"
  vivify_1265:
    $P3337 = $P3335."get_slot_past_for_object"($P3336)
    $P3338 = $P3322."new"($P3334, $P3337, "bind" :named("pasttype"))
.annotate 'line', 2295
    $P3339 = $P3318."add_event"($P3338 :named("deserialize_past"))
.annotate 'line', 2279
    .return ($P3339)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3283"  :anon :subid("282_1304277405.374") :outer("281_1304277405.374")
    .param pmc param_3285
.annotate 'line', 2285
    .lex "$_", param_3285
.annotate 'line', 2286
    find_lex $P3286, "$target"
    unless_null $P3286, vivify_1253
    new $P3286, "Undef"
  vivify_1253:
    find_lex $P3287, "$_"
    unless_null $P3287, vivify_1254
    new $P3287, "Undef"
  vivify_1254:
    set $S3288, $P3287
    nqp_get_package_through_who $P3289, $P3286, $S3288
    store_lex "$target", $P3289
.annotate 'line', 2285
    .return ($P3289)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3304"  :anon :subid("283_1304277405.374") :outer("281_1304277405.374")
    .param pmc param_3306
.annotate 'line', 2292
    .lex "$_", param_3306
.annotate 'line', 2293
    get_hll_global $P3307, "GLOBAL"
    nqp_get_package_through_who $P3308, $P3307, "PAST"
    get_who $P3309, $P3308
    set $P3310, $P3309["Op"]
    find_lex $P3311, "$path"
    unless_null $P3311, vivify_1261
    new $P3311, "Undef"
  vivify_1261:
    find_lex $P3312, "$_"
    unless_null $P3312, vivify_1262
    new $P3312, "Undef"
  vivify_1262:
    set $S3313, $P3312
    $P3314 = $P3310."new"($P3311, $S3313, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3314
.annotate 'line', 2292
    .return ($P3314)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("284_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3341
    .param pmc param_3342
    .param pmc param_3343
    .param pmc param_3344
.annotate 'line', 2310
    .lex "self", param_3341
    .lex "$block", param_3342
    .lex "$name", param_3343
    .lex "$obj", param_3344
.annotate 'line', 2316
    new $P3345, "Undef"
    .lex "$fixup", $P3345
.annotate 'line', 2312
    find_lex $P3346, "$block"
    unless_null $P3346, vivify_1266
    new $P3346, "Undef"
  vivify_1266:
    find_lex $P3347, "$name"
    unless_null $P3347, vivify_1267
    new $P3347, "Undef"
  vivify_1267:
    find_lex $P3348, "$obj"
    unless_null $P3348, vivify_1268
    new $P3348, "Undef"
  vivify_1268:
    $P3346."symbol"($P3347, "lexical" :named("scope"), $P3348 :named("value"))
.annotate 'line', 2313
    find_lex $P3349, "$block"
    unless_null $P3349, vivify_1269
    $P3349 = root_new ['parrot';'ResizablePMCArray']
  vivify_1269:
    set $P3350, $P3349[0]
    unless_null $P3350, vivify_1270
    new $P3350, "Undef"
  vivify_1270:
    get_hll_global $P3351, "GLOBAL"
    nqp_get_package_through_who $P3352, $P3351, "PAST"
    get_who $P3353, $P3352
    set $P3354, $P3353["Var"]
    find_lex $P3355, "$name"
    unless_null $P3355, vivify_1271
    new $P3355, "Undef"
  vivify_1271:
    $P3356 = $P3354."new"("lexical" :named("scope"), $P3355 :named("name"), 1 :named("isdecl"))
    $P3350."push"($P3356)
.annotate 'line', 2316
    get_hll_global $P3357, "GLOBAL"
    nqp_get_package_through_who $P3358, $P3357, "PAST"
    get_who $P3359, $P3358
    set $P3360, $P3359["Stmts"]
.annotate 'line', 2317
    get_hll_global $P3361, "GLOBAL"
    nqp_get_package_through_who $P3362, $P3361, "PAST"
    get_who $P3363, $P3362
    set $P3364, $P3363["Op"]
.annotate 'line', 2319
    get_hll_global $P3365, "GLOBAL"
    nqp_get_package_through_who $P3366, $P3365, "PAST"
    get_who $P3367, $P3366
    set $P3368, $P3367["Op"]
.annotate 'line', 2321
    get_hll_global $P3369, "GLOBAL"
    nqp_get_package_through_who $P3370, $P3369, "PAST"
    get_who $P3371, $P3370
    set $P3372, $P3371["Val"]
    find_lex $P3373, "$block"
    unless_null $P3373, vivify_1272
    new $P3373, "Undef"
  vivify_1272:
    $P3374 = $P3372."new"($P3373 :named("value"))
    $P3375 = $P3368."new"($P3374, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2323
    find_lex $P3376, "$name"
    unless_null $P3376, vivify_1273
    new $P3376, "Undef"
  vivify_1273:
    set $S3377, $P3376
    find_lex $P3378, "self"
    find_lex $P3379, "$obj"
    unless_null $P3379, vivify_1274
    new $P3379, "Undef"
  vivify_1274:
    $P3380 = $P3378."get_slot_past_for_object"($P3379)
    $P3381 = $P3364."new"($P3375, $S3377, $P3380, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2327
    get_hll_global $P3382, "GLOBAL"
    nqp_get_package_through_who $P3383, $P3382, "PAST"
    get_who $P3384, $P3383
    set $P3385, $P3384["Op"]
.annotate 'line', 2329
    get_hll_global $P3386, "GLOBAL"
    nqp_get_package_through_who $P3387, $P3386, "PAST"
    get_who $P3388, $P3387
    set $P3389, $P3388["Op"]
.annotate 'line', 2331
    get_hll_global $P3390, "GLOBAL"
    nqp_get_package_through_who $P3391, $P3390, "PAST"
    get_who $P3392, $P3391
    set $P3393, $P3392["Val"]
    find_lex $P3394, "$block"
    unless_null $P3394, vivify_1275
    new $P3394, "Undef"
  vivify_1275:
    $P3395 = $P3393."new"($P3394 :named("value"))
    $P3396 = $P3389."new"($P3395, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2329
    $P3397 = $P3385."new"($P3396, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2327
    $P3398 = $P3360."new"($P3381, $P3397)
.annotate 'line', 2316
    store_lex "$fixup", $P3398
.annotate 'line', 2335
    find_lex $P3399, "self"
    find_lex $P3400, "$fixup"
    unless_null $P3400, vivify_1276
    new $P3400, "Undef"
  vivify_1276:
    find_lex $P3401, "$fixup"
    unless_null $P3401, vivify_1277
    new $P3401, "Undef"
  vivify_1277:
    $P3402 = $P3399."add_event"($P3400 :named("deserialize_past"), $P3401 :named("fixup_past"))
.annotate 'line', 2310
    .return ($P3402)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("285_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3404
    .param pmc param_3405
    .param pmc param_3406
    .param pmc param_3407
.annotate 'line', 2340
    .lex "self", param_3404
    .lex "$package", param_3405
    .lex "$name", param_3406
    .lex "$past_block", param_3407
.annotate 'line', 2341
    new $P3408, "Undef"
    .lex "$fixup", $P3408
    get_hll_global $P3409, "GLOBAL"
    nqp_get_package_through_who $P3410, $P3409, "PAST"
    get_who $P3411, $P3410
    set $P3412, $P3411["Op"]
.annotate 'line', 2343
    get_hll_global $P3413, "GLOBAL"
    nqp_get_package_through_who $P3414, $P3413, "PAST"
    get_who $P3415, $P3414
    set $P3416, $P3415["Var"]
.annotate 'line', 2345
    get_hll_global $P3417, "GLOBAL"
    nqp_get_package_through_who $P3418, $P3417, "PAST"
    get_who $P3419, $P3418
    set $P3420, $P3419["Op"]
    find_lex $P3421, "self"
    find_lex $P3422, "$package"
    unless_null $P3422, vivify_1278
    new $P3422, "Undef"
  vivify_1278:
    $P3423 = $P3421."get_slot_past_for_object"($P3422)
    $P3424 = $P3420."new"($P3423, "get_who PP" :named("pirop"))
.annotate 'line', 2346
    find_lex $P3425, "$name"
    unless_null $P3425, vivify_1279
    new $P3425, "Undef"
  vivify_1279:
    set $S3426, $P3425
    $P3427 = $P3416."new"($P3424, $S3426, "keyed" :named("scope"))
.annotate 'line', 2348
    get_hll_global $P3428, "GLOBAL"
    nqp_get_package_through_who $P3429, $P3428, "PAST"
    get_who $P3430, $P3429
    set $P3431, $P3430["Val"]
    find_lex $P3432, "$past_block"
    unless_null $P3432, vivify_1280
    new $P3432, "Undef"
  vivify_1280:
    $P3433 = $P3431."new"($P3432 :named("value"))
    $P3434 = $P3412."new"($P3427, $P3433, "bind" :named("pasttype"))
.annotate 'line', 2341
    store_lex "$fixup", $P3434
.annotate 'line', 2350
    find_lex $P3435, "self"
    find_lex $P3436, "$fixup"
    unless_null $P3436, vivify_1281
    new $P3436, "Undef"
  vivify_1281:
    find_lex $P3437, "$fixup"
    unless_null $P3437, vivify_1282
    new $P3437, "Undef"
  vivify_1282:
    $P3438 = $P3435."add_event"($P3436 :named("deserialize_past"), $P3437 :named("fixup_past"))
.annotate 'line', 2340
    .return ($P3438)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("286_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3442
    .param pmc param_3443
    .param pmc param_3444 :optional :named("name")
    .param int has_param_3444 :opt_flag
    .param pmc param_3446 :optional :named("repr")
    .param int has_param_3446 :opt_flag
.annotate 'line', 2355
    new $P3441, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3441, control_3440
    push_eh $P3441
    .lex "self", param_3442
    .lex "$how", param_3443
    if has_param_3444, optparam_1283
    new $P3445, "Undef"
    set param_3444, $P3445
  optparam_1283:
    .lex "$name", param_3444
    if has_param_3446, optparam_1284
    new $P3447, "Undef"
    set param_3446, $P3447
  optparam_1284:
    .lex "$repr", param_3446
.annotate 'line', 2357
    $P3448 = root_new ['parrot';'Hash']
    .lex "%args", $P3448
.annotate 'line', 2360
    new $P3449, "Undef"
    .lex "$mo", $P3449
.annotate 'line', 2361
    new $P3450, "Undef"
    .lex "$slot", $P3450
.annotate 'line', 2365
    $P3451 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3451
.annotate 'line', 2366
    new $P3452, "Undef"
    .lex "$how_name", $P3452
.annotate 'line', 2367
    new $P3453, "Undef"
    .lex "$setup_call", $P3453
.annotate 'line', 2355
    find_lex $P3454, "%args"
    unless_null $P3454, vivify_1285
    $P3454 = root_new ['parrot';'Hash']
  vivify_1285:
.annotate 'line', 2358
    find_lex $P3456, "$name"
    unless_null $P3456, vivify_1286
    new $P3456, "Undef"
  vivify_1286:
    defined $I3457, $P3456
    unless $I3457, if_3455_end
    find_lex $P3458, "$name"
    unless_null $P3458, vivify_1287
    new $P3458, "Undef"
  vivify_1287:
    find_lex $P3459, "%args"
    unless_null $P3459, vivify_1288
    $P3459 = root_new ['parrot';'Hash']
    store_lex "%args", $P3459
  vivify_1288:
    set $P3459["name"], $P3458
  if_3455_end:
.annotate 'line', 2359
    find_lex $P3461, "$repr"
    unless_null $P3461, vivify_1289
    new $P3461, "Undef"
  vivify_1289:
    defined $I3462, $P3461
    unless $I3462, if_3460_end
    find_lex $P3463, "$repr"
    unless_null $P3463, vivify_1290
    new $P3463, "Undef"
  vivify_1290:
    find_lex $P3464, "%args"
    unless_null $P3464, vivify_1291
    $P3464 = root_new ['parrot';'Hash']
    store_lex "%args", $P3464
  vivify_1291:
    set $P3464["repr"], $P3463
  if_3460_end:
.annotate 'line', 2360
    find_lex $P3465, "$how"
    unless_null $P3465, vivify_1292
    new $P3465, "Undef"
  vivify_1292:
    find_lex $P3466, "%args"
    unless_null $P3466, vivify_1293
    $P3466 = root_new ['parrot';'Hash']
  vivify_1293:
    $P3467 = $P3465."new_type"($P3466 :flat)
    store_lex "$mo", $P3467
.annotate 'line', 2361
    find_lex $P3468, "self"
    find_lex $P3469, "$mo"
    unless_null $P3469, vivify_1294
    new $P3469, "Undef"
  vivify_1294:
    $P3470 = $P3468."add_object"($P3469)
    store_lex "$slot", $P3470
.annotate 'line', 2365
    find_lex $P3471, "$how"
    unless_null $P3471, vivify_1295
    new $P3471, "Undef"
  vivify_1295:
    get_how $P3472, $P3471
    find_lex $P3473, "$how"
    unless_null $P3473, vivify_1296
    new $P3473, "Undef"
  vivify_1296:
    $S3474 = $P3472."name"($P3473)
    split $P3475, "::", $S3474
    store_lex "@how_ns", $P3475
.annotate 'line', 2366
    find_lex $P3476, "@how_ns"
    unless_null $P3476, vivify_1297
    $P3476 = root_new ['parrot';'ResizablePMCArray']
  vivify_1297:
    $P3477 = $P3476."pop"()
    store_lex "$how_name", $P3477
.annotate 'line', 2367
    get_hll_global $P3478, "GLOBAL"
    nqp_get_package_through_who $P3479, $P3478, "PAST"
    get_who $P3480, $P3479
    set $P3481, $P3480["Op"]
.annotate 'line', 2369
    find_lex $P3482, "self"
    find_lex $P3483, "$how"
    unless_null $P3483, vivify_1298
    new $P3483, "Undef"
  vivify_1298:
    $P3484 = $P3482."get_object_sc_ref_past"($P3483)
    $P3485 = $P3481."new"($P3484, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2367
    store_lex "$setup_call", $P3485
.annotate 'line', 2371
    find_lex $P3487, "$name"
    unless_null $P3487, vivify_1299
    new $P3487, "Undef"
  vivify_1299:
    defined $I3488, $P3487
    unless $I3488, if_3486_end
.annotate 'line', 2372
    find_lex $P3489, "$setup_call"
    unless_null $P3489, vivify_1300
    new $P3489, "Undef"
  vivify_1300:
    get_hll_global $P3490, "GLOBAL"
    nqp_get_package_through_who $P3491, $P3490, "PAST"
    get_who $P3492, $P3491
    set $P3493, $P3492["Val"]
    find_lex $P3494, "$name"
    unless_null $P3494, vivify_1301
    new $P3494, "Undef"
  vivify_1301:
    $P3495 = $P3493."new"($P3494 :named("value"), "name" :named("named"))
    $P3489."push"($P3495)
  if_3486_end:
.annotate 'line', 2374
    find_lex $P3497, "$repr"
    unless_null $P3497, vivify_1302
    new $P3497, "Undef"
  vivify_1302:
    defined $I3498, $P3497
    unless $I3498, if_3496_end
.annotate 'line', 2375
    find_lex $P3499, "$setup_call"
    unless_null $P3499, vivify_1303
    new $P3499, "Undef"
  vivify_1303:
    get_hll_global $P3500, "GLOBAL"
    nqp_get_package_through_who $P3501, $P3500, "PAST"
    get_who $P3502, $P3501
    set $P3503, $P3502["Val"]
    find_lex $P3504, "$repr"
    unless_null $P3504, vivify_1304
    new $P3504, "Undef"
  vivify_1304:
    $P3505 = $P3503."new"($P3504 :named("value"), "repr" :named("named"))
    $P3499."push"($P3505)
  if_3496_end:
.annotate 'line', 2377
    find_lex $P3506, "self"
.annotate 'line', 2378
    find_lex $P3507, "self"
    find_lex $P3508, "$slot"
    unless_null $P3508, vivify_1305
    new $P3508, "Undef"
  vivify_1305:
    find_lex $P3509, "self"
    find_lex $P3510, "$setup_call"
    unless_null $P3510, vivify_1306
    new $P3510, "Undef"
  vivify_1306:
    $P3511 = $P3509."set_cur_sc"($P3510)
    $P3512 = $P3507."set_slot_past"($P3508, $P3511)
    $P3506."add_event"($P3512 :named("deserialize_past"))
.annotate 'line', 2381
    new $P3513, "Exception"
    set $P3513['type'], .CONTROL_RETURN
    find_lex $P3514, "$mo"
    unless_null $P3514, vivify_1307
    new $P3514, "Undef"
  vivify_1307:
    setattribute $P3513, 'payload', $P3514
    throw $P3513
.annotate 'line', 2355
    .return ()
  control_3440:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3515, exception, "payload"
    .return ($P3515)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_add_attribute"  :subid("287_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3517
    .param pmc param_3518
    .param pmc param_3519
    .param pmc param_3520
    .param pmc param_3521
.annotate 'line', 2389
    .const 'Sub' $P3567 = "289_1304277405.374" 
    capture_lex $P3567
    .const 'Sub' $P3546 = "288_1304277405.374" 
    capture_lex $P3546
    .lex "self", param_3517
    .lex "$obj", param_3518
    .lex "$meta_attr", param_3519
    .lex "%lit_args", param_3520
    .lex "%obj_args", param_3521
.annotate 'line', 2391
    new $P3522, "Undef"
    .lex "$attr", $P3522
.annotate 'line', 2395
    new $P3523, "Undef"
    .lex "$create_call", $P3523
.annotate 'line', 2407
    new $P3524, "Undef"
    .lex "$obj_slot_past", $P3524
.annotate 'line', 2391
    find_lex $P3525, "$meta_attr"
    unless_null $P3525, vivify_1308
    new $P3525, "Undef"
  vivify_1308:
    find_lex $P3526, "%lit_args"
    unless_null $P3526, vivify_1309
    $P3526 = root_new ['parrot';'Hash']
  vivify_1309:
    find_lex $P3527, "%obj_args"
    unless_null $P3527, vivify_1310
    $P3527 = root_new ['parrot';'Hash']
  vivify_1310:
    $P3528 = $P3525."new"($P3526 :flat, $P3527 :flat)
    store_lex "$attr", $P3528
.annotate 'line', 2392
    find_lex $P3529, "$obj"
    unless_null $P3529, vivify_1311
    new $P3529, "Undef"
  vivify_1311:
    get_how $P3530, $P3529
    find_lex $P3531, "$obj"
    unless_null $P3531, vivify_1312
    new $P3531, "Undef"
  vivify_1312:
    find_lex $P3532, "$attr"
    unless_null $P3532, vivify_1313
    new $P3532, "Undef"
  vivify_1313:
    $P3530."add_attribute"($P3531, $P3532)
.annotate 'line', 2395
    get_hll_global $P3533, "GLOBAL"
    nqp_get_package_through_who $P3534, $P3533, "PAST"
    get_who $P3535, $P3534
    set $P3536, $P3535["Op"]
.annotate 'line', 2397
    find_lex $P3537, "self"
    find_lex $P3538, "$meta_attr"
    unless_null $P3538, vivify_1314
    new $P3538, "Undef"
  vivify_1314:
    $P3539 = $P3537."get_object_sc_ref_past"($P3538)
    $P3540 = $P3536."new"($P3539, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 2395
    store_lex "$create_call", $P3540
.annotate 'line', 2399
    find_lex $P3542, "%lit_args"
    unless_null $P3542, vivify_1315
    $P3542 = root_new ['parrot';'Hash']
  vivify_1315:
    defined $I3543, $P3542
    unless $I3543, for_undef_1316
    iter $P3541, $P3542
    new $P3560, 'ExceptionHandler'
    set_label $P3560, loop3559_handler
    $P3560."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3560
  loop3559_test:
    unless $P3541, loop3559_done
    shift $P3544, $P3541
  loop3559_redo:
    .const 'Sub' $P3546 = "288_1304277405.374" 
    capture_lex $P3546
    $P3546($P3544)
  loop3559_next:
    goto loop3559_test
  loop3559_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3561, exception, 'type'
    eq $P3561, .CONTROL_LOOP_NEXT, loop3559_next
    eq $P3561, .CONTROL_LOOP_REDO, loop3559_redo
  loop3559_done:
    pop_eh 
  for_undef_1316:
.annotate 'line', 2402
    find_lex $P3563, "%obj_args"
    unless_null $P3563, vivify_1320
    $P3563 = root_new ['parrot';'Hash']
  vivify_1320:
    defined $I3564, $P3563
    unless $I3564, for_undef_1321
    iter $P3562, $P3563
    new $P3581, 'ExceptionHandler'
    set_label $P3581, loop3580_handler
    $P3581."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3581
  loop3580_test:
    unless $P3562, loop3580_done
    shift $P3565, $P3562
  loop3580_redo:
    .const 'Sub' $P3567 = "289_1304277405.374" 
    capture_lex $P3567
    $P3567($P3565)
  loop3580_next:
    goto loop3580_test
  loop3580_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3582, exception, 'type'
    eq $P3582, .CONTROL_LOOP_NEXT, loop3580_next
    eq $P3582, .CONTROL_LOOP_REDO, loop3580_redo
  loop3580_done:
    pop_eh 
  for_undef_1321:
.annotate 'line', 2407
    find_lex $P3583, "self"
    find_lex $P3584, "$obj"
    unless_null $P3584, vivify_1327
    new $P3584, "Undef"
  vivify_1327:
    $P3585 = $P3583."get_slot_past_for_object"($P3584)
    store_lex "$obj_slot_past", $P3585
.annotate 'line', 2408
    find_lex $P3586, "self"
    get_hll_global $P3587, "GLOBAL"
    nqp_get_package_through_who $P3588, $P3587, "PAST"
    get_who $P3589, $P3588
    set $P3590, $P3589["Op"]
.annotate 'line', 2410
    get_hll_global $P3591, "GLOBAL"
    nqp_get_package_through_who $P3592, $P3591, "PAST"
    get_who $P3593, $P3592
    set $P3594, $P3593["Op"]
    find_lex $P3595, "$obj_slot_past"
    unless_null $P3595, vivify_1328
    new $P3595, "Undef"
  vivify_1328:
    $P3596 = $P3594."new"($P3595, "get_how PP" :named("pirop"))
    find_lex $P3597, "$obj_slot_past"
    unless_null $P3597, vivify_1329
    new $P3597, "Undef"
  vivify_1329:
    find_lex $P3598, "$create_call"
    unless_null $P3598, vivify_1330
    new $P3598, "Undef"
  vivify_1330:
    $P3599 = $P3590."new"($P3596, $P3597, $P3598, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
.annotate 'line', 2408
    $P3600 = $P3586."add_event"($P3599 :named("deserialize_past"))
.annotate 'line', 2389
    .return ($P3600)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3545"  :anon :subid("288_1304277405.374") :outer("287_1304277405.374")
    .param pmc param_3547
.annotate 'line', 2399
    .lex "$_", param_3547
.annotate 'line', 2400
    find_lex $P3548, "$create_call"
    unless_null $P3548, vivify_1317
    new $P3548, "Undef"
  vivify_1317:
    get_hll_global $P3549, "GLOBAL"
    nqp_get_package_through_who $P3550, $P3549, "PAST"
    get_who $P3551, $P3550
    set $P3552, $P3551["Val"]
    find_lex $P3553, "$_"
    unless_null $P3553, vivify_1318
    new $P3553, "Undef"
  vivify_1318:
    $P3554 = $P3553."value"()
    find_lex $P3555, "$_"
    unless_null $P3555, vivify_1319
    new $P3555, "Undef"
  vivify_1319:
    $P3556 = $P3555."key"()
    $P3557 = $P3552."new"($P3554 :named("value"), $P3556 :named("named"))
    $P3558 = $P3548."push"($P3557)
.annotate 'line', 2399
    .return ($P3558)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3566"  :anon :subid("289_1304277405.374") :outer("287_1304277405.374")
    .param pmc param_3569
.annotate 'line', 2403
    new $P3568, "Undef"
    .lex "$lookup", $P3568
    .lex "$_", param_3569
    find_lex $P3570, "self"
    find_lex $P3571, "$_"
    unless_null $P3571, vivify_1322
    new $P3571, "Undef"
  vivify_1322:
    $P3572 = $P3571."value"()
    $P3573 = $P3570."get_object_sc_ref_past"($P3572)
    store_lex "$lookup", $P3573
.annotate 'line', 2404
    find_lex $P3574, "$lookup"
    unless_null $P3574, vivify_1323
    new $P3574, "Undef"
  vivify_1323:
    find_lex $P3575, "$_"
    unless_null $P3575, vivify_1324
    new $P3575, "Undef"
  vivify_1324:
    $P3576 = $P3575."key"()
    $P3574."named"($P3576)
.annotate 'line', 2405
    find_lex $P3577, "$create_call"
    unless_null $P3577, vivify_1325
    new $P3577, "Undef"
  vivify_1325:
    find_lex $P3578, "$lookup"
    unless_null $P3578, vivify_1326
    new $P3578, "Undef"
  vivify_1326:
    $P3579 = $P3577."push"($P3578)
.annotate 'line', 2402
    .return ($P3579)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3601"  :anon :subid("290_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3603 :slurpy
    .param pmc param_3604 :slurpy :named
.annotate 'line', 2420
    .lex "@args", param_3603
    .lex "%named", param_3604
.annotate 'line', 2421
    die "Cannot run code that has not yet been compiled."
.annotate 'line', 2420
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("291_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3607
    .param pmc param_3608
    .param pmc param_3609
    .param pmc param_3610
    .param pmc param_3611
    .param pmc param_3612
.annotate 'line', 2427
    .lex "self", param_3607
    .lex "$obj", param_3608
    .lex "$meta_method_name", param_3609
    .lex "$name", param_3610
    .lex "$method_past", param_3611
    .lex "$is_dispatcher", param_3612
.annotate 'line', 2430
    new $P3613, "Undef"
    .lex "$dummy", $P3613
.annotate 'line', 2456
    new $P3614, "Undef"
    .lex "$slot_past", $P3614
.annotate 'line', 2427
    find_lex $P3615, "$dummy"
    unless_null $P3615, vivify_1331
    new $P3615, "Undef"
  vivify_1331:
.annotate 'line', 2431
    find_lex $P3617, "$method_past"
    unless_null $P3617, vivify_1332
    $P3617 = root_new ['parrot';'Hash']
  vivify_1332:
    set $P3618, $P3617["compile_time_dummy"]
    unless_null $P3618, vivify_1333
    new $P3618, "Undef"
  vivify_1333:
    defined $I3619, $P3618
    if $I3619, if_3616
.annotate 'line', 2438
    find_lex $P3623, "$is_dispatcher"
    unless_null $P3623, vivify_1334
    new $P3623, "Undef"
  vivify_1334:
    if $P3623, if_3622
.annotate 'line', 2443
    find_lex $P3627, "$stub_code"
    unless_null $P3627, vivify_1335
    new $P3627, "Undef"
  vivify_1335:
    clone $P3628, $P3627
    store_lex "$dummy", $P3628
.annotate 'line', 2442
    goto if_3622_end
  if_3622:
.annotate 'line', 2439
    find_lex $P3624, "$method_past"
    unless_null $P3624, vivify_1336
    new $P3624, "Undef"
  vivify_1336:
    $P3624."pirflags"(":instanceof(\"DispatcherSub\")")
.annotate 'line', 2440
    new $P3625, "DispatcherSub"
    find_lex $P3626, "$stub_code"
    unless_null $P3626, vivify_1337
    new $P3626, "Undef"
  vivify_1337:
    assign $P3625, $P3626
    store_lex "$dummy", $P3625
  if_3622_end:
.annotate 'line', 2445
    find_lex $P3629, "$dummy"
    unless_null $P3629, vivify_1338
    new $P3629, "Undef"
  vivify_1338:
    find_lex $P3630, "$name"
    unless_null $P3630, vivify_1339
    new $P3630, "Undef"
  vivify_1339:
    set $S3631, $P3630
    assign $P3629, $S3631
.annotate 'line', 2446
    find_lex $P3632, "self"
    find_lex $P3633, "$dummy"
    unless_null $P3633, vivify_1340
    new $P3633, "Undef"
  vivify_1340:
    $P3632."add_code"($P3633)
.annotate 'line', 2447
    find_lex $P3634, "$dummy"
    unless_null $P3634, vivify_1341
    new $P3634, "Undef"
  vivify_1341:
    find_lex $P3635, "$method_past"
    unless_null $P3635, vivify_1342
    $P3635 = root_new ['parrot';'Hash']
    store_lex "$method_past", $P3635
  vivify_1342:
    set $P3635["compile_time_dummy"], $P3634
.annotate 'line', 2434
    goto if_3616_end
  if_3616:
.annotate 'line', 2432
    find_lex $P3620, "$method_past"
    unless_null $P3620, vivify_1343
    $P3620 = root_new ['parrot';'Hash']
  vivify_1343:
    set $P3621, $P3620["compile_time_dummy"]
    unless_null $P3621, vivify_1344
    new $P3621, "Undef"
  vivify_1344:
    store_lex "$dummy", $P3621
  if_3616_end:
.annotate 'line', 2451
    find_lex $P3636, "$obj"
    unless_null $P3636, vivify_1345
    new $P3636, "Undef"
  vivify_1345:
    get_how $P3637, $P3636
    find_lex $P3638, "$obj"
    unless_null $P3638, vivify_1346
    new $P3638, "Undef"
  vivify_1346:
    find_lex $P3639, "$name"
    unless_null $P3639, vivify_1347
    new $P3639, "Undef"
  vivify_1347:
    find_lex $P3640, "$dummy"
    unless_null $P3640, vivify_1348
    new $P3640, "Undef"
  vivify_1348:
    find_lex $P3641, "$meta_method_name"
    unless_null $P3641, vivify_1349
    new $P3641, "Undef"
  vivify_1349:
    set $S3642, $P3641
    $P3637.$S3642($P3638, $P3639, $P3640)
.annotate 'line', 2456
    find_lex $P3643, "self"
    find_lex $P3644, "$obj"
    unless_null $P3644, vivify_1350
    new $P3644, "Undef"
  vivify_1350:
    $P3645 = $P3643."get_slot_past_for_object"($P3644)
    store_lex "$slot_past", $P3645
.annotate 'line', 2457
    find_lex $P3646, "self"
.annotate 'line', 2458
    get_hll_global $P3647, "GLOBAL"
    nqp_get_package_through_who $P3648, $P3647, "PAST"
    get_who $P3649, $P3648
    set $P3650, $P3649["Op"]
    find_lex $P3651, "$meta_method_name"
    unless_null $P3651, vivify_1351
    new $P3651, "Undef"
  vivify_1351:
.annotate 'line', 2460
    get_hll_global $P3652, "GLOBAL"
    nqp_get_package_through_who $P3653, $P3652, "PAST"
    get_who $P3654, $P3653
    set $P3655, $P3654["Op"]
    find_lex $P3656, "$slot_past"
    unless_null $P3656, vivify_1352
    new $P3656, "Undef"
  vivify_1352:
    $P3657 = $P3655."new"($P3656, "get_how PP" :named("pirop"))
    find_lex $P3658, "$slot_past"
    unless_null $P3658, vivify_1353
    new $P3658, "Undef"
  vivify_1353:
    find_lex $P3659, "$name"
    unless_null $P3659, vivify_1354
    new $P3659, "Undef"
  vivify_1354:
.annotate 'line', 2463
    get_hll_global $P3660, "GLOBAL"
    nqp_get_package_through_who $P3661, $P3660, "PAST"
    get_who $P3662, $P3661
    set $P3663, $P3662["Val"]
    find_lex $P3664, "$method_past"
    unless_null $P3664, vivify_1355
    new $P3664, "Undef"
  vivify_1355:
    $P3665 = $P3663."new"($P3664 :named("value"))
    $P3666 = $P3650."new"($P3657, $P3658, $P3659, $P3665, "callmethod" :named("pasttype"), $P3651 :named("name"))
.annotate 'line', 2465
    get_hll_global $P3667, "GLOBAL"
    nqp_get_package_through_who $P3668, $P3667, "PAST"
    get_who $P3669, $P3668
    set $P3670, $P3669["Op"]
.annotate 'line', 2467
    find_lex $P3671, "self"
    find_lex $P3672, "$dummy"
    unless_null $P3672, vivify_1356
    new $P3672, "Undef"
  vivify_1356:
    $P3673 = $P3671."get_slot_past_for_object"($P3672)
.annotate 'line', 2468
    get_hll_global $P3674, "GLOBAL"
    nqp_get_package_through_who $P3675, $P3674, "PAST"
    get_who $P3676, $P3675
    set $P3677, $P3676["Val"]
    find_lex $P3678, "$method_past"
    unless_null $P3678, vivify_1357
    new $P3678, "Undef"
  vivify_1357:
    $P3679 = $P3677."new"($P3678 :named("value"))
    $P3680 = $P3670."new"($P3673, $P3679, "copy vPP" :named("pirop"))
.annotate 'line', 2465
    $P3681 = $P3646."add_event"($P3666 :named("deserialize_past"), $P3680 :named("fixup_past"))
.annotate 'line', 2427
    .return ($P3681)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_routine_signature"  :subid("292_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3683
    .param pmc param_3684
    .param pmc param_3685
    .param pmc param_3686
.annotate 'line', 2473
    .lex "self", param_3683
    .lex "$routine", param_3684
    .lex "$types", param_3685
    .lex "$definednesses", param_3686
.annotate 'line', 2476
    new $P3687, "Undef"
    .lex "$fixup", $P3687
.annotate 'line', 2483
    new $P3688, "Undef"
    .lex "$des", $P3688
.annotate 'line', 2476
    get_hll_global $P3689, "GLOBAL"
    nqp_get_package_through_who $P3690, $P3689, "PAST"
    get_who $P3691, $P3690
    set $P3692, $P3691["Op"]
    find_lex $P3693, "$types"
    unless_null $P3693, vivify_1358
    new $P3693, "Undef"
  vivify_1358:
    find_lex $P3694, "$definednesses"
    unless_null $P3694, vivify_1359
    new $P3694, "Undef"
  vivify_1359:
    $P3695 = $P3692."new"($P3693, $P3694, "set_sub_multisig vPPP" :named("pirop"))
    store_lex "$fixup", $P3695
.annotate 'line', 2477
    find_lex $P3697, "$routine"
    unless_null $P3697, vivify_1360
    $P3697 = root_new ['parrot';'Hash']
  vivify_1360:
    set $P3698, $P3697["compile_time_dummy"]
    unless_null $P3698, vivify_1361
    new $P3698, "Undef"
  vivify_1361:
    defined $I3699, $P3698
    if $I3699, if_3696
.annotate 'line', 2481
    find_lex $P3705, "$fixup"
    unless_null $P3705, vivify_1362
    new $P3705, "Undef"
  vivify_1362:
    get_hll_global $P3706, "GLOBAL"
    nqp_get_package_through_who $P3707, $P3706, "PAST"
    get_who $P3708, $P3707
    set $P3709, $P3708["Val"]
    find_lex $P3710, "$routine"
    unless_null $P3710, vivify_1363
    new $P3710, "Undef"
  vivify_1363:
    $P3711 = $P3709."new"($P3710 :named("value"))
    $P3705."unshift"($P3711)
.annotate 'line', 2480
    goto if_3696_end
  if_3696:
.annotate 'line', 2478
    find_lex $P3700, "$fixup"
    unless_null $P3700, vivify_1364
    new $P3700, "Undef"
  vivify_1364:
    find_lex $P3701, "self"
    find_lex $P3702, "$routine"
    unless_null $P3702, vivify_1365
    $P3702 = root_new ['parrot';'Hash']
  vivify_1365:
    set $P3703, $P3702["compile_time_dummy"]
    unless_null $P3703, vivify_1366
    new $P3703, "Undef"
  vivify_1366:
    $P3704 = $P3701."get_slot_past_for_object"($P3703)
    $P3700."unshift"($P3704)
  if_3696_end:
.annotate 'line', 2483
    get_hll_global $P3712, "GLOBAL"
    nqp_get_package_through_who $P3713, $P3712, "PAST"
    get_who $P3714, $P3713
    set $P3715, $P3714["Op"]
.annotate 'line', 2484
    get_hll_global $P3716, "GLOBAL"
    nqp_get_package_through_who $P3717, $P3716, "PAST"
    get_who $P3718, $P3717
    set $P3719, $P3718["Val"]
    find_lex $P3720, "$routine"
    unless_null $P3720, vivify_1367
    new $P3720, "Undef"
  vivify_1367:
    $P3721 = $P3719."new"($P3720 :named("value"))
    find_lex $P3722, "$types"
    unless_null $P3722, vivify_1368
    new $P3722, "Undef"
  vivify_1368:
    find_lex $P3723, "$definednesses"
    unless_null $P3723, vivify_1369
    new $P3723, "Undef"
  vivify_1369:
    $P3724 = $P3715."new"($P3721, $P3722, $P3723, "set_sub_multisig vPPP" :named("pirop"))
.annotate 'line', 2483
    store_lex "$des", $P3724
.annotate 'line', 2486
    find_lex $P3725, "self"
    find_lex $P3726, "$des"
    unless_null $P3726, vivify_1370
    new $P3726, "Undef"
  vivify_1370:
    find_lex $P3727, "$fixup"
    unless_null $P3727, vivify_1371
    new $P3727, "Undef"
  vivify_1371:
    $P3728 = $P3725."add_event"($P3726 :named("deserialize_past"), $P3727 :named("fixup_past"))
.annotate 'line', 2473
    .return ($P3728)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("293_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3730
    .param pmc param_3731
    .param pmc param_3732
    .param pmc param_3733
.annotate 'line', 2491
    .lex "self", param_3730
    .lex "$obj", param_3731
    .lex "$meta_method_name", param_3732
    .lex "$to_add", param_3733
.annotate 'line', 2496
    new $P3734, "Undef"
    .lex "$slot_past", $P3734
.annotate 'line', 2493
    find_lex $P3735, "$obj"
    unless_null $P3735, vivify_1372
    new $P3735, "Undef"
  vivify_1372:
    get_how $P3736, $P3735
    find_lex $P3737, "$obj"
    unless_null $P3737, vivify_1373
    new $P3737, "Undef"
  vivify_1373:
    find_lex $P3738, "$to_add"
    unless_null $P3738, vivify_1374
    new $P3738, "Undef"
  vivify_1374:
    find_lex $P3739, "$meta_method_name"
    unless_null $P3739, vivify_1375
    new $P3739, "Undef"
  vivify_1375:
    set $S3740, $P3739
    $P3736.$S3740($P3737, $P3738)
.annotate 'line', 2496
    find_lex $P3741, "self"
    find_lex $P3742, "$obj"
    unless_null $P3742, vivify_1376
    new $P3742, "Undef"
  vivify_1376:
    $P3743 = $P3741."get_slot_past_for_object"($P3742)
    store_lex "$slot_past", $P3743
.annotate 'line', 2497
    find_lex $P3744, "self"
    get_hll_global $P3745, "GLOBAL"
    nqp_get_package_through_who $P3746, $P3745, "PAST"
    get_who $P3747, $P3746
    set $P3748, $P3747["Op"]
    find_lex $P3749, "$meta_method_name"
    unless_null $P3749, vivify_1377
    new $P3749, "Undef"
  vivify_1377:
.annotate 'line', 2499
    get_hll_global $P3750, "GLOBAL"
    nqp_get_package_through_who $P3751, $P3750, "PAST"
    get_who $P3752, $P3751
    set $P3753, $P3752["Op"]
    find_lex $P3754, "$slot_past"
    unless_null $P3754, vivify_1378
    new $P3754, "Undef"
  vivify_1378:
    $P3755 = $P3753."new"($P3754, "get_how PP" :named("pirop"))
    find_lex $P3756, "$slot_past"
    unless_null $P3756, vivify_1379
    new $P3756, "Undef"
  vivify_1379:
.annotate 'line', 2501
    find_lex $P3757, "self"
    find_lex $P3758, "$to_add"
    unless_null $P3758, vivify_1380
    new $P3758, "Undef"
  vivify_1380:
    $P3759 = $P3757."get_object_sc_ref_past"($P3758)
    $P3760 = $P3748."new"($P3755, $P3756, $P3759, "callmethod" :named("pasttype"), $P3749 :named("name"))
.annotate 'line', 2497
    $P3761 = $P3744."add_event"($P3760 :named("deserialize_past"))
.annotate 'line', 2491
    .return ($P3761)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("294_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3763
    .param pmc param_3764
.annotate 'line', 2506
    .lex "self", param_3763
    .lex "$obj", param_3764
.annotate 'line', 2511
    new $P3765, "Undef"
    .lex "$slot_past", $P3765
.annotate 'line', 2508
    find_lex $P3766, "$obj"
    unless_null $P3766, vivify_1381
    new $P3766, "Undef"
  vivify_1381:
    get_how $P3767, $P3766
    find_lex $P3768, "$obj"
    unless_null $P3768, vivify_1382
    new $P3768, "Undef"
  vivify_1382:
    $P3767."compose"($P3768)
.annotate 'line', 2511
    find_lex $P3769, "$obj"
    unless_null $P3769, vivify_1383
    new $P3769, "Undef"
  vivify_1383:
    $P3770 = "get_slot_past_for_object"($P3769)
    store_lex "$slot_past", $P3770
.annotate 'line', 2512
    find_lex $P3771, "self"
    get_hll_global $P3772, "GLOBAL"
    nqp_get_package_through_who $P3773, $P3772, "PAST"
    get_who $P3774, $P3773
    set $P3775, $P3774["Op"]
.annotate 'line', 2514
    get_hll_global $P3776, "GLOBAL"
    nqp_get_package_through_who $P3777, $P3776, "PAST"
    get_who $P3778, $P3777
    set $P3779, $P3778["Op"]
    find_lex $P3780, "$slot_past"
    unless_null $P3780, vivify_1384
    new $P3780, "Undef"
  vivify_1384:
    $P3781 = $P3779."new"($P3780, "get_how PP" :named("pirop"))
    find_lex $P3782, "$slot_past"
    unless_null $P3782, vivify_1385
    new $P3782, "Undef"
  vivify_1385:
    $P3783 = $P3775."new"($P3781, $P3782, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2512
    $P3784 = $P3771."add_event"($P3783 :named("deserialize_past"))
.annotate 'line', 2506
    .return ($P3784)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("295_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3786
.annotate 'line', 2520
    .lex "self", param_3786
    find_lex $P3787, "self"
    find_lex $P3788, "$?CLASS"
    getattribute $P3789, $P3787, $P3788, "$!sc"
    unless_null $P3789, vivify_1386
    new $P3789, "Undef"
  vivify_1386:
    .return ($P3789)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("296_1304277405.374") :outer("262_1304277405.374")
    .param pmc param_3791
.annotate 'line', 2526
    .const 'Sub' $P3811 = "297_1304277405.374" 
    capture_lex $P3811
    .lex "self", param_3791
.annotate 'line', 2527
    new $P3792, "Undef"
    .lex "$des", $P3792
.annotate 'line', 2528
    new $P3793, "Undef"
    .lex "$fix", $P3793
.annotate 'line', 2527
    get_hll_global $P3794, "GLOBAL"
    nqp_get_package_through_who $P3795, $P3794, "PAST"
    get_who $P3796, $P3795
    set $P3797, $P3796["Stmts"]
    $P3798 = $P3797."new"()
    store_lex "$des", $P3798
.annotate 'line', 2528
    get_hll_global $P3799, "GLOBAL"
    nqp_get_package_through_who $P3800, $P3799, "PAST"
    get_who $P3801, $P3800
    set $P3802, $P3801["Stmts"]
    $P3803 = $P3802."new"()
    store_lex "$fix", $P3803
.annotate 'line', 2529
    find_lex $P3805, "self"
    find_lex $P3806, "$?CLASS"
    getattribute $P3807, $P3805, $P3806, "@!event_stream"
    unless_null $P3807, vivify_1387
    $P3807 = root_new ['parrot';'ResizablePMCArray']
  vivify_1387:
    defined $I3808, $P3807
    unless $I3808, for_undef_1388
    iter $P3804, $P3807
    new $P3830, 'ExceptionHandler'
    set_label $P3830, loop3829_handler
    $P3830."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3830
  loop3829_test:
    unless $P3804, loop3829_done
    shift $P3809, $P3804
  loop3829_redo:
    .const 'Sub' $P3811 = "297_1304277405.374" 
    capture_lex $P3811
    $P3811($P3809)
  loop3829_next:
    goto loop3829_test
  loop3829_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3831, exception, 'type'
    eq $P3831, .CONTROL_LOOP_NEXT, loop3829_next
    eq $P3831, .CONTROL_LOOP_REDO, loop3829_redo
  loop3829_done:
    pop_eh 
  for_undef_1388:
.annotate 'line', 2533
    find_dynamic_lex $P3832, "$/"
    get_hll_global $P3833, "GLOBAL"
    nqp_get_package_through_who $P3834, $P3833, "PAST"
    get_who $P3835, $P3834
    set $P3836, $P3835["Op"]
.annotate 'line', 2535
    get_hll_global $P3837, "GLOBAL"
    nqp_get_package_through_who $P3838, $P3837, "PAST"
    get_who $P3839, $P3838
    set $P3840, $P3839["Op"]
.annotate 'line', 2537
    get_hll_global $P3841, "GLOBAL"
    nqp_get_package_through_who $P3842, $P3841, "PAST"
    get_who $P3843, $P3842
    set $P3844, $P3843["Op"]
    find_lex $P3845, "self"
    find_lex $P3846, "$?CLASS"
    getattribute $P3847, $P3845, $P3846, "$!handle"
    unless_null $P3847, vivify_1395
    new $P3847, "Undef"
  vivify_1395:
    $P3848 = $P3844."new"($P3847, "nqp_get_sc Ps" :named("pirop"))
    $P3849 = $P3840."new"($P3848, "isnull IP" :named("pirop"))
.annotate 'line', 2539
    get_hll_global $P3850, "GLOBAL"
    nqp_get_package_through_who $P3851, $P3850, "PAST"
    get_who $P3852, $P3851
    set $P3853, $P3852["Stmts"]
.annotate 'line', 2540
    get_hll_global $P3854, "GLOBAL"
    nqp_get_package_through_who $P3855, $P3854, "PAST"
    get_who $P3856, $P3855
    set $P3857, $P3856["Op"]
    $P3858 = $P3857."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2541
    get_hll_global $P3859, "GLOBAL"
    nqp_get_package_through_who $P3860, $P3859, "PAST"
    get_who $P3861, $P3860
    set $P3862, $P3861["Op"]
.annotate 'line', 2543
    get_hll_global $P3863, "GLOBAL"
    nqp_get_package_through_who $P3864, $P3863, "PAST"
    get_who $P3865, $P3864
    set $P3866, $P3865["Op"]
    $P3867 = $P3866."new"("getinterp P" :named("pirop"))
.annotate 'line', 2544
    get_hll_global $P3868, "GLOBAL"
    nqp_get_package_through_who $P3869, $P3868, "PAST"
    get_who $P3870, $P3869
    set $P3871, $P3870["Op"]
    $P3872 = $P3871."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2545
    get_hll_global $P3873, "GLOBAL"
    nqp_get_package_through_who $P3874, $P3873, "PAST"
    get_who $P3875, $P3874
    set $P3876, $P3875["Op"]
    $P3877 = $P3876."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3878 = $P3862."new"($P3867, $P3872, $P3877, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2547
    get_hll_global $P3879, "GLOBAL"
    nqp_get_package_through_who $P3880, $P3879, "PAST"
    get_who $P3881, $P3880
    set $P3882, $P3881["Op"]
.annotate 'line', 2549
    get_hll_global $P3883, "GLOBAL"
    nqp_get_package_through_who $P3884, $P3883, "PAST"
    get_who $P3885, $P3884
    set $P3886, $P3885["Var"]
    $P3887 = $P3886."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2550
    get_hll_global $P3888, "GLOBAL"
    nqp_get_package_through_who $P3889, $P3888, "PAST"
    get_who $P3890, $P3889
    set $P3891, $P3890["Op"]
    find_lex $P3892, "self"
    find_lex $P3893, "$?CLASS"
    getattribute $P3894, $P3892, $P3893, "$!handle"
    unless_null $P3894, vivify_1396
    new $P3894, "Undef"
  vivify_1396:
    $P3895 = $P3891."new"($P3894, "nqp_create_sc Ps" :named("pirop"))
    $P3896 = $P3882."new"($P3887, $P3895, "bind" :named("pasttype"))
.annotate 'line', 2547
    find_lex $P3897, "$des"
    unless_null $P3897, vivify_1397
    new $P3897, "Undef"
  vivify_1397:
    $P3898 = $P3853."new"($P3858, $P3878, $P3896, $P3897)
.annotate 'line', 2539
    find_lex $P3899, "$fix"
    unless_null $P3899, vivify_1398
    new $P3899, "Undef"
  vivify_1398:
    $P3900 = $P3836."new"($P3849, $P3898, $P3899, "if" :named("pasttype"))
.annotate 'line', 2533
    $P3901 = $P3832."!make"($P3900)
.annotate 'line', 2526
    .return ($P3901)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3810"  :anon :subid("297_1304277405.374") :outer("296_1304277405.374")
    .param pmc param_3812
.annotate 'line', 2529
    .lex "$_", param_3812
.annotate 'line', 2530
    find_lex $P3814, "$_"
    unless_null $P3814, vivify_1389
    new $P3814, "Undef"
  vivify_1389:
    $P3815 = $P3814."deserialize_past"()
    defined $I3816, $P3815
    unless $I3816, if_3813_end
    find_lex $P3817, "$des"
    unless_null $P3817, vivify_1390
    new $P3817, "Undef"
  vivify_1390:
    find_lex $P3818, "$_"
    unless_null $P3818, vivify_1391
    new $P3818, "Undef"
  vivify_1391:
    $P3819 = $P3818."deserialize_past"()
    $P3817."push"($P3819)
  if_3813_end:
.annotate 'line', 2531
    find_lex $P3822, "$_"
    unless_null $P3822, vivify_1392
    new $P3822, "Undef"
  vivify_1392:
    $P3823 = $P3822."fixup_past"()
    defined $I3824, $P3823
    if $I3824, if_3821
    new $P3820, 'Integer'
    set $P3820, $I3824
    goto if_3821_end
  if_3821:
    find_lex $P3825, "$fix"
    unless_null $P3825, vivify_1393
    new $P3825, "Undef"
  vivify_1393:
    find_lex $P3826, "$_"
    unless_null $P3826, vivify_1394
    new $P3826, "Undef"
  vivify_1394:
    $P3827 = $P3826."fixup_past"()
    $P3828 = $P3825."push"($P3827)
    set $P3820, $P3828
  if_3821_end:
.annotate 'line', 2529
    .return ($P3820)
.end


.HLL "nqp"

.namespace []
.sub "_block3909" :load :anon :subid("299_1304277405.374")
.annotate 'line', 1064
    .const 'Sub' $P3911 = "10_1304277405.374" 
    $P3912 = $P3911()
    .return ($P3912)
.end

