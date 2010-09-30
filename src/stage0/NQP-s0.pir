# Copyright (C) 2009, The Perl Foundation.

=head1 NAME

NQP::Compiler - NQP compiler

=head1 DESCRIPTION

=cut

.sub '' :anon :load :init
    load_bytecode 'P6Regex.pbc'
.end

### .include 'gen/nqp-grammar.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1285886565.968")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P1510 = $P14()
    .return ($P1510)
    .const 'Sub' $P1512 = "383_1285886565.968" 
    .return ($P1512)
.end


.namespace []
.sub "" :load :init :subid("post384") :outer("10_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1285886565.968" 
    .local pmc block
    set block, $P12
    $P1515 = get_root_global ["parrot"], "P6metaclass"
    $P1515."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1285886565.968") :outer("10_1285886565.968")
.annotate 'line', 0
    get_hll_global $P1427, ["NQP";"Regex"], "_block1426" 
    capture_lex $P1427
    .const 'Sub' $P1413 = "360_1285886565.968" 
    capture_lex $P1413
    .const 'Sub' $P1407 = "358_1285886565.968" 
    capture_lex $P1407
    .const 'Sub' $P1401 = "356_1285886565.968" 
    capture_lex $P1401
    .const 'Sub' $P1395 = "354_1285886565.968" 
    capture_lex $P1395
    .const 'Sub' $P1389 = "352_1285886565.968" 
    capture_lex $P1389
    .const 'Sub' $P1383 = "350_1285886565.968" 
    capture_lex $P1383
    .const 'Sub' $P1376 = "348_1285886565.968" 
    capture_lex $P1376
    .const 'Sub' $P1369 = "346_1285886565.968" 
    capture_lex $P1369
    .const 'Sub' $P1362 = "344_1285886565.968" 
    capture_lex $P1362
    .const 'Sub' $P1355 = "342_1285886565.968" 
    capture_lex $P1355
    .const 'Sub' $P1349 = "340_1285886565.968" 
    capture_lex $P1349
    .const 'Sub' $P1342 = "338_1285886565.968" 
    capture_lex $P1342
    .const 'Sub' $P1335 = "336_1285886565.968" 
    capture_lex $P1335
    .const 'Sub' $P1328 = "334_1285886565.968" 
    capture_lex $P1328
    .const 'Sub' $P1321 = "332_1285886565.968" 
    capture_lex $P1321
    .const 'Sub' $P1314 = "330_1285886565.968" 
    capture_lex $P1314
    .const 'Sub' $P1307 = "328_1285886565.968" 
    capture_lex $P1307
    .const 'Sub' $P1300 = "326_1285886565.968" 
    capture_lex $P1300
    .const 'Sub' $P1293 = "324_1285886565.968" 
    capture_lex $P1293
    .const 'Sub' $P1286 = "322_1285886565.968" 
    capture_lex $P1286
    .const 'Sub' $P1279 = "320_1285886565.968" 
    capture_lex $P1279
    .const 'Sub' $P1272 = "318_1285886565.968" 
    capture_lex $P1272
    .const 'Sub' $P1265 = "316_1285886565.968" 
    capture_lex $P1265
    .const 'Sub' $P1258 = "314_1285886565.968" 
    capture_lex $P1258
    .const 'Sub' $P1251 = "312_1285886565.968" 
    capture_lex $P1251
    .const 'Sub' $P1244 = "310_1285886565.968" 
    capture_lex $P1244
    .const 'Sub' $P1237 = "308_1285886565.968" 
    capture_lex $P1237
    .const 'Sub' $P1230 = "306_1285886565.968" 
    capture_lex $P1230
    .const 'Sub' $P1223 = "304_1285886565.968" 
    capture_lex $P1223
    .const 'Sub' $P1216 = "302_1285886565.968" 
    capture_lex $P1216
    .const 'Sub' $P1209 = "300_1285886565.968" 
    capture_lex $P1209
    .const 'Sub' $P1202 = "298_1285886565.968" 
    capture_lex $P1202
    .const 'Sub' $P1195 = "296_1285886565.968" 
    capture_lex $P1195
    .const 'Sub' $P1188 = "294_1285886565.968" 
    capture_lex $P1188
    .const 'Sub' $P1181 = "292_1285886565.968" 
    capture_lex $P1181
    .const 'Sub' $P1174 = "290_1285886565.968" 
    capture_lex $P1174
    .const 'Sub' $P1167 = "288_1285886565.968" 
    capture_lex $P1167
    .const 'Sub' $P1160 = "286_1285886565.968" 
    capture_lex $P1160
    .const 'Sub' $P1153 = "284_1285886565.968" 
    capture_lex $P1153
    .const 'Sub' $P1146 = "282_1285886565.968" 
    capture_lex $P1146
    .const 'Sub' $P1140 = "280_1285886565.968" 
    capture_lex $P1140
    .const 'Sub' $P1133 = "278_1285886565.968" 
    capture_lex $P1133
    .const 'Sub' $P1126 = "276_1285886565.968" 
    capture_lex $P1126
    .const 'Sub' $P1119 = "274_1285886565.968" 
    capture_lex $P1119
    .const 'Sub' $P1112 = "272_1285886565.968" 
    capture_lex $P1112
    .const 'Sub' $P1105 = "270_1285886565.968" 
    capture_lex $P1105
    .const 'Sub' $P1098 = "268_1285886565.968" 
    capture_lex $P1098
    .const 'Sub' $P1091 = "266_1285886565.968" 
    capture_lex $P1091
    .const 'Sub' $P1085 = "264_1285886565.968" 
    capture_lex $P1085
    .const 'Sub' $P1079 = "262_1285886565.968" 
    capture_lex $P1079
    .const 'Sub' $P1074 = "260_1285886565.968" 
    capture_lex $P1074
    .const 'Sub' $P1068 = "258_1285886565.968" 
    capture_lex $P1068
    .const 'Sub' $P1062 = "256_1285886565.968" 
    capture_lex $P1062
    .const 'Sub' $P1057 = "254_1285886565.968" 
    capture_lex $P1057
    .const 'Sub' $P1052 = "252_1285886565.968" 
    capture_lex $P1052
    .const 'Sub' $P1044 = "250_1285886565.968" 
    capture_lex $P1044
    .const 'Sub' $P1035 = "248_1285886565.968" 
    capture_lex $P1035
    .const 'Sub' $P1030 = "246_1285886565.968" 
    capture_lex $P1030
    .const 'Sub' $P1025 = "244_1285886565.968" 
    capture_lex $P1025
    .const 'Sub' $P1020 = "242_1285886565.968" 
    capture_lex $P1020
    .const 'Sub' $P1012 = "240_1285886565.968" 
    capture_lex $P1012
    .const 'Sub' $P1004 = "238_1285886565.968" 
    capture_lex $P1004
    .const 'Sub' $P999 = "236_1285886565.968" 
    capture_lex $P999
    .const 'Sub' $P994 = "234_1285886565.968" 
    capture_lex $P994
    .const 'Sub' $P989 = "232_1285886565.968" 
    capture_lex $P989
    .const 'Sub' $P983 = "230_1285886565.968" 
    capture_lex $P983
    .const 'Sub' $P977 = "228_1285886565.968" 
    capture_lex $P977
    .const 'Sub' $P971 = "226_1285886565.968" 
    capture_lex $P971
    .const 'Sub' $P965 = "224_1285886565.968" 
    capture_lex $P965
    .const 'Sub' $P959 = "222_1285886565.968" 
    capture_lex $P959
    .const 'Sub' $P954 = "220_1285886565.968" 
    capture_lex $P954
    .const 'Sub' $P949 = "218_1285886565.968" 
    capture_lex $P949
    .const 'Sub' $P937 = "214_1285886565.968" 
    capture_lex $P937
    .const 'Sub' $P929 = "212_1285886565.968" 
    capture_lex $P929
    .const 'Sub' $P923 = "210_1285886565.968" 
    capture_lex $P923
    .const 'Sub' $P916 = "208_1285886565.968" 
    capture_lex $P916
    .const 'Sub' $P910 = "206_1285886565.968" 
    capture_lex $P910
    .const 'Sub' $P902 = "204_1285886565.968" 
    capture_lex $P902
    .const 'Sub' $P894 = "202_1285886565.968" 
    capture_lex $P894
    .const 'Sub' $P888 = "200_1285886565.968" 
    capture_lex $P888
    .const 'Sub' $P882 = "198_1285886565.968" 
    capture_lex $P882
    .const 'Sub' $P868 = "194_1285886565.968" 
    capture_lex $P868
    .const 'Sub' $P831 = "192_1285886565.968" 
    capture_lex $P831
    .const 'Sub' $P820 = "190_1285886565.968" 
    capture_lex $P820
    .const 'Sub' $P808 = "186_1285886565.968" 
    capture_lex $P808
    .const 'Sub' $P799 = "184_1285886565.968" 
    capture_lex $P799
    .const 'Sub' $P793 = "182_1285886565.968" 
    capture_lex $P793
    .const 'Sub' $P783 = "180_1285886565.968" 
    capture_lex $P783
    .const 'Sub' $P770 = "178_1285886565.968" 
    capture_lex $P770
    .const 'Sub' $P763 = "176_1285886565.968" 
    capture_lex $P763
    .const 'Sub' $P755 = "174_1285886565.968" 
    capture_lex $P755
    .const 'Sub' $P745 = "172_1285886565.968" 
    capture_lex $P745
    .const 'Sub' $P718 = "168_1285886565.968" 
    capture_lex $P718
    .const 'Sub' $P692 = "166_1285886565.968" 
    capture_lex $P692
    .const 'Sub' $P685 = "164_1285886565.968" 
    capture_lex $P685
    .const 'Sub' $P678 = "162_1285886565.968" 
    capture_lex $P678
    .const 'Sub' $P668 = "158_1285886565.968" 
    capture_lex $P668
    .const 'Sub' $P660 = "156_1285886565.968" 
    capture_lex $P660
    .const 'Sub' $P654 = "154_1285886565.968" 
    capture_lex $P654
    .const 'Sub' $P641 = "152_1285886565.968" 
    capture_lex $P641
    .const 'Sub' $P634 = "150_1285886565.968" 
    capture_lex $P634
    .const 'Sub' $P627 = "148_1285886565.968" 
    capture_lex $P627
    .const 'Sub' $P620 = "146_1285886565.968" 
    capture_lex $P620
    .const 'Sub' $P586 = "142_1285886565.968" 
    capture_lex $P586
    .const 'Sub' $P574 = "140_1285886565.968" 
    capture_lex $P574
    .const 'Sub' $P565 = "138_1285886565.968" 
    capture_lex $P565
    .const 'Sub' $P556 = "136_1285886565.968" 
    capture_lex $P556
    .const 'Sub' $P544 = "134_1285886565.968" 
    capture_lex $P544
    .const 'Sub' $P537 = "132_1285886565.968" 
    capture_lex $P537
    .const 'Sub' $P528 = "128_1285886565.968" 
    capture_lex $P528
    .const 'Sub' $P523 = "126_1285886565.968" 
    capture_lex $P523
    .const 'Sub' $P511 = "124_1285886565.968" 
    capture_lex $P511
    .const 'Sub' $P499 = "122_1285886565.968" 
    capture_lex $P499
    .const 'Sub' $P492 = "120_1285886565.968" 
    capture_lex $P492
    .const 'Sub' $P487 = "118_1285886565.968" 
    capture_lex $P487
    .const 'Sub' $P481 = "116_1285886565.968" 
    capture_lex $P481
    .const 'Sub' $P475 = "114_1285886565.968" 
    capture_lex $P475
    .const 'Sub' $P465 = "111_1285886565.968" 
    capture_lex $P465
    .const 'Sub' $P459 = "109_1285886565.968" 
    capture_lex $P459
    .const 'Sub' $P453 = "107_1285886565.968" 
    capture_lex $P453
    .const 'Sub' $P447 = "105_1285886565.968" 
    capture_lex $P447
    .const 'Sub' $P441 = "103_1285886565.968" 
    capture_lex $P441
    .const 'Sub' $P435 = "101_1285886565.968" 
    capture_lex $P435
    .const 'Sub' $P429 = "99_1285886565.968" 
    capture_lex $P429
    .const 'Sub' $P420 = "97_1285886565.968" 
    capture_lex $P420
    .const 'Sub' $P411 = "95_1285886565.968" 
    capture_lex $P411
    .const 'Sub' $P402 = "93_1285886565.968" 
    capture_lex $P402
    .const 'Sub' $P389 = "89_1285886565.968" 
    capture_lex $P389
    .const 'Sub' $P380 = "87_1285886565.968" 
    capture_lex $P380
    .const 'Sub' $P370 = "83_1285886565.968" 
    capture_lex $P370
    .const 'Sub' $P363 = "81_1285886565.968" 
    capture_lex $P363
    .const 'Sub' $P356 = "79_1285886565.968" 
    capture_lex $P356
    .const 'Sub' $P344 = "75_1285886565.968" 
    capture_lex $P344
    .const 'Sub' $P336 = "73_1285886565.968" 
    capture_lex $P336
    .const 'Sub' $P328 = "71_1285886565.968" 
    capture_lex $P328
    .const 'Sub' $P308 = "69_1285886565.968" 
    capture_lex $P308
    .const 'Sub' $P299 = "67_1285886565.968" 
    capture_lex $P299
    .const 'Sub' $P281 = "64_1285886565.968" 
    capture_lex $P281
    .const 'Sub' $P263 = "62_1285886565.968" 
    capture_lex $P263
    .const 'Sub' $P254 = "58_1285886565.968" 
    capture_lex $P254
    .const 'Sub' $P249 = "56_1285886565.968" 
    capture_lex $P249
    .const 'Sub' $P240 = "52_1285886565.968" 
    capture_lex $P240
    .const 'Sub' $P235 = "50_1285886565.968" 
    capture_lex $P235
    .const 'Sub' $P230 = "48_1285886565.968" 
    capture_lex $P230
    .const 'Sub' $P221 = "46_1285886565.968" 
    capture_lex $P221
    .const 'Sub' $P214 = "44_1285886565.968" 
    capture_lex $P214
    .const 'Sub' $P208 = "42_1285886565.968" 
    capture_lex $P208
    .const 'Sub' $P200 = "40_1285886565.968" 
    capture_lex $P200
    .const 'Sub' $P194 = "38_1285886565.968" 
    capture_lex $P194
    .const 'Sub' $P188 = "36_1285886565.968" 
    capture_lex $P188
    .const 'Sub' $P173 = "33_1285886565.968" 
    capture_lex $P173
    .const 'Sub' $P159 = "31_1285886565.968" 
    capture_lex $P159
    .const 'Sub' $P152 = "29_1285886565.968" 
    capture_lex $P152
    .const 'Sub' $P113 = "26_1285886565.968" 
    capture_lex $P113
    .const 'Sub' $P98 = "23_1285886565.968" 
    capture_lex $P98
    .const 'Sub' $P87 = "21_1285886565.968" 
    capture_lex $P87
    .const 'Sub' $P75 = "19_1285886565.968" 
    capture_lex $P75
    .const 'Sub' $P67 = "17_1285886565.968" 
    capture_lex $P67
    .const 'Sub' $P60 = "15_1285886565.968" 
    capture_lex $P60
    .const 'Sub' $P53 = "13_1285886565.968" 
    capture_lex $P53
    .const 'Sub' $P15 = "12_1285886565.968" 
    capture_lex $P15
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P1427, ["NQP";"Regex"], "_block1426" 
    capture_lex $P1427
    $P1489 = $P1427()
    .return ($P1489)
    .const 'Sub' $P1491 = "382_1285886565.968" 
    .return ($P1491)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post385") :outer("11_1285886565.968")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
    get_hll_global $P1494, ["NQP"], "Grammar"
    $P1494."O"(":prec<y=>, :assoc<unary>", "%methodop")
    get_hll_global $P1495, ["NQP"], "Grammar"
    $P1495."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
    get_hll_global $P1496, ["NQP"], "Grammar"
    $P1496."O"(":prec<w=>, :assoc<left>", "%exponentiation")
    get_hll_global $P1497, ["NQP"], "Grammar"
    $P1497."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
    get_hll_global $P1498, ["NQP"], "Grammar"
    $P1498."O"(":prec<u=>, :assoc<left>", "%multiplicative")
    get_hll_global $P1499, ["NQP"], "Grammar"
    $P1499."O"(":prec<t=>, :assoc<left>", "%additive")
    get_hll_global $P1500, ["NQP"], "Grammar"
    $P1500."O"(":prec<r=>, :assoc<left>", "%concatenation")
    get_hll_global $P1501, ["NQP"], "Grammar"
    $P1501."O"(":prec<m=>, :assoc<left>", "%relational")
    get_hll_global $P1502, ["NQP"], "Grammar"
    $P1502."O"(":prec<l=>, :assoc<left>", "%tight_and")
    get_hll_global $P1503, ["NQP"], "Grammar"
    $P1503."O"(":prec<k=>, :assoc<left>", "%tight_or")
    get_hll_global $P1504, ["NQP"], "Grammar"
    $P1504."O"(":prec<j=>, :assoc<right>", "%conditional")
    get_hll_global $P1505, ["NQP"], "Grammar"
    $P1505."O"(":prec<i=>, :assoc<right>", "%assignment")
    get_hll_global $P1506, ["NQP"], "Grammar"
    $P1506."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
    get_hll_global $P1507, ["NQP"], "Grammar"
    $P1507."O"(":prec<f=>, :assoc<list>", "%list_infix")
    get_hll_global $P1508, ["NQP"], "Grammar"
    $P1508."O"(":prec<e=>, :assoc<unary>", "%list_prefix")
    $P1509 = get_root_global ["parrot"], "P6metaclass"
    $P1509."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.include "except_types.pasm"
.sub "TOP"  :subid("12_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    new $P17, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P17, control_16
    push_eh $P17
    .lex "self", self
    $P18 = root_new ['parrot';'Hash']
    .lex "%*LANG", $P18
    $P19 = root_new ['parrot';'Hash']
    .lex "%*HOW", $P19
    new $P20, "Undef"
    .lex "$*DEFAULT-METAATTR", $P20
    $P21 = root_new ['parrot';'Hash']
    .lex "%*HOW-METAATTR", $P21
    new $P22, "Undef"
    .lex "$*SCOPE", $P22
    new $P23, "Undef"
    .lex "$*MULTINESS", $P23
    new $P24, "Undef"
    .lex "$*PACKAGE-SETUP", $P24
    find_lex $P25, "%*LANG"
    unless_null $P25, vivify_386
    get_hll_global $P25, "%LANG"
    unless_null $P25, vivify_387
    die "Contextual %*LANG not found"
  vivify_387:
  vivify_386:
    get_hll_global $P26, ["NQP"], "Regex"
    find_lex $P27, "%*LANG"
    unless_null $P27, vivify_388
    get_hll_global $P27, "%LANG"
    unless_null $P27, vivify_389
    die "Contextual %*LANG not found"
  vivify_389:
    store_lex "%*LANG", $P27
  vivify_388:
    set $P27["Regex"], $P26
    get_hll_global $P28, ["NQP"], "RegexActions"
    find_lex $P29, "%*LANG"
    unless_null $P29, vivify_390
    get_hll_global $P29, "%LANG"
    unless_null $P29, vivify_391
    die "Contextual %*LANG not found"
  vivify_391:
    store_lex "%*LANG", $P29
  vivify_390:
    set $P29["Regex-actions"], $P28
    get_hll_global $P30, ["NQP"], "Grammar"
    find_lex $P31, "%*LANG"
    unless_null $P31, vivify_392
    get_hll_global $P31, "%LANG"
    unless_null $P31, vivify_393
    die "Contextual %*LANG not found"
  vivify_393:
    store_lex "%*LANG", $P31
  vivify_392:
    set $P31["MAIN"], $P30
    get_hll_global $P32, ["NQP"], "Actions"
    find_lex $P33, "%*LANG"
    unless_null $P33, vivify_394
    get_hll_global $P33, "%LANG"
    unless_null $P33, vivify_395
    die "Contextual %*LANG not found"
  vivify_395:
    store_lex "%*LANG", $P33
  vivify_394:
    set $P33["MAIN-actions"], $P32
    find_lex $P34, "%*HOW"
    unless_null $P34, vivify_396
    get_hll_global $P34, "%HOW"
    unless_null $P34, vivify_397
    die "Contextual %*HOW not found"
  vivify_397:
  vivify_396:
    new $P35, "String"
    assign $P35, "KnowHOW"
    find_lex $P36, "%*HOW"
    unless_null $P36, vivify_398
    get_hll_global $P36, "%HOW"
    unless_null $P36, vivify_399
    die "Contextual %*HOW not found"
  vivify_399:
    store_lex "%*HOW", $P36
  vivify_398:
    set $P36["knowhow"], $P35
    new $P37, "String"
    assign $P37, "NQPClassHOW"
    find_lex $P38, "%*HOW"
    unless_null $P38, vivify_400
    get_hll_global $P38, "%HOW"
    unless_null $P38, vivify_401
    die "Contextual %*HOW not found"
  vivify_401:
    store_lex "%*HOW", $P38
  vivify_400:
    set $P38["class"], $P37
    new $P39, "String"
    assign $P39, "NQPGrammarHOW"
    find_lex $P40, "%*HOW"
    unless_null $P40, vivify_402
    get_hll_global $P40, "%HOW"
    unless_null $P40, vivify_403
    die "Contextual %*HOW not found"
  vivify_403:
    store_lex "%*HOW", $P40
  vivify_402:
    set $P40["grammar"], $P39
    new $P41, "String"
    assign $P41, "NQPRoleHOW"
    find_lex $P42, "%*HOW"
    unless_null $P42, vivify_404
    get_hll_global $P42, "%HOW"
    unless_null $P42, vivify_405
    die "Contextual %*HOW not found"
  vivify_405:
    store_lex "%*HOW", $P42
  vivify_404:
    set $P42["role"], $P41
    new $P43, "String"
    assign $P43, "NQPAttribute"
    store_lex "$*DEFAULT-METAATTR", $P43
    find_lex $P44, "%*HOW-METAATTR"
    unless_null $P44, vivify_406
    get_hll_global $P44, "%HOW-METAATTR"
    unless_null $P44, vivify_407
    die "Contextual %*HOW-METAATTR not found"
  vivify_407:
  vivify_406:
    new $P45, "String"
    assign $P45, "KnowHOWAttribute"
    find_lex $P46, "%*HOW-METAATTR"
    unless_null $P46, vivify_408
    get_hll_global $P46, "%HOW-METAATTR"
    unless_null $P46, vivify_409
    die "Contextual %*HOW-METAATTR not found"
  vivify_409:
    store_lex "%*HOW-METAATTR", $P46
  vivify_408:
    set $P46["knowhow"], $P45
    new $P47, "String"
    assign $P47, ""
    store_lex "$*SCOPE", $P47
    new $P48, "String"
    assign $P48, ""
    store_lex "$*MULTINESS", $P48
    find_lex $P49, "$*PACKAGE-SETUP"
    unless_null $P49, vivify_410
    get_hll_global $P49, "$PACKAGE-SETUP"
    unless_null $P49, vivify_411
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_411:
  vivify_410:
    find_lex $P50, "self"
    $P51 = $P50."comp_unit"()
    .return ($P51)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P52, exception, "payload"
    .return ($P52)
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx54_tgt
    .local int rx54_pos
    .local int rx54_off
    .local int rx54_eos
    .local int rx54_rep
    .local pmc rx54_cur
    .local pmc rx54_debug
    (rx54_cur, rx54_pos, rx54_tgt, $I10) = self."!cursor_start"()
    getattribute rx54_debug, rx54_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx54_cur
    .local pmc match
    .lex "$/", match
    length rx54_eos, rx54_tgt
    gt rx54_pos, rx54_eos, rx54_done
    set rx54_off, 0
    lt rx54_pos, 2, rx54_start
    sub rx54_off, rx54_pos, 1
    substr rx54_tgt, rx54_tgt, rx54_off
  rx54_start:
    eq $I10, 1, rx54_restart
    if_null rx54_debug, debug_412
    rx54_cur."!cursor_debug"("START", "identifier")
  debug_412:
    $I10 = self.'from'()
    ne $I10, -1, rxscan58_done
    goto rxscan58_scan
  rxscan58_loop:
    ($P10) = rx54_cur."from"()
    inc $P10
    set rx54_pos, $P10
    ge rx54_pos, rx54_eos, rxscan58_done
  rxscan58_scan:
    set_addr $I10, rxscan58_loop
    rx54_cur."!mark_push"(0, rx54_pos, $I10)
  rxscan58_done:
  # rx subrule "ident" subtype=method negate=
    rx54_cur."!cursor_pos"(rx54_pos)
    $P10 = rx54_cur."ident"()
    unless $P10, rx54_fail
    rx54_pos = $P10."pos"()
  # rx rxquantr59 ** 0..*
    set_addr $I10, rxquantr59_done
    rx54_cur."!mark_push"(0, rx54_pos, $I10)
  rxquantr59_loop:
  # rx enumcharlist negate=0 
    ge rx54_pos, rx54_eos, rx54_fail
    sub $I10, rx54_pos, rx54_off
    substr $S10, rx54_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx54_fail
    inc rx54_pos
  # rx subrule "ident" subtype=method negate=
    rx54_cur."!cursor_pos"(rx54_pos)
    $P10 = rx54_cur."ident"()
    unless $P10, rx54_fail
    rx54_pos = $P10."pos"()
    set_addr $I10, rxquantr59_done
    (rx54_rep) = rx54_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr59_done
    rx54_cur."!mark_push"(rx54_rep, rx54_pos, $I10)
    goto rxquantr59_loop
  rxquantr59_done:
  # rx pass
    rx54_cur."!cursor_pass"(rx54_pos, "identifier")
    if_null rx54_debug, debug_413
    rx54_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx54_pos)
  debug_413:
    .return (rx54_cur)
  rx54_restart:
    if_null rx54_debug, debug_414
    rx54_cur."!cursor_debug"("NEXT", "identifier")
  debug_414:
  rx54_fail:
    (rx54_rep, rx54_pos, $I10, $P10) = rx54_cur."!mark_fail"(0)
    lt rx54_pos, -1, rx54_done
    eq rx54_pos, -1, rx54_fail
    jump $I10
  rx54_done:
    rx54_cur."!cursor_fail"()
    if_null rx54_debug, debug_415
    rx54_cur."!cursor_debug"("FAIL", "identifier")
  debug_415:
    .return (rx54_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1285886565.968") :method
.annotate 'line', 0
    $P56 = self."!PREFIX__!subrule"("ident", "")
    new $P57, "ResizablePMCArray"
    push $P57, $P56
    .return ($P57)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    .local pmc rx61_debug
    (rx61_cur, rx61_pos, rx61_tgt, $I10) = self."!cursor_start"()
    rx61_cur."!cursor_caparray"("identifier")
    getattribute rx61_debug, rx61_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx61_cur
    .local pmc match
    .lex "$/", match
    length rx61_eos, rx61_tgt
    gt rx61_pos, rx61_eos, rx61_done
    set rx61_off, 0
    lt rx61_pos, 2, rx61_start
    sub rx61_off, rx61_pos, 1
    substr rx61_tgt, rx61_tgt, rx61_off
  rx61_start:
    eq $I10, 1, rx61_restart
    if_null rx61_debug, debug_416
    rx61_cur."!cursor_debug"("START", "name")
  debug_416:
    $I10 = self.'from'()
    ne $I10, -1, rxscan64_done
    goto rxscan64_scan
  rxscan64_loop:
    ($P10) = rx61_cur."from"()
    inc $P10
    set rx61_pos, $P10
    ge rx61_pos, rx61_eos, rxscan64_done
  rxscan64_scan:
    set_addr $I10, rxscan64_loop
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  rxscan64_done:
  # rx rxquantr65 ** 1..*
    set_addr $I10, rxquantr65_done
    rx61_cur."!mark_push"(0, -1, $I10)
  rxquantr65_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."identifier"()
    unless $P10, rx61_fail
    goto rxsubrule66_pass
  rxsubrule66_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx61_fail
  rxsubrule66_pass:
    set_addr $I10, rxsubrule66_back
    rx61_cur."!mark_push"(0, rx61_pos, $I10, $P10)
    $P10."!cursor_names"("identifier")
    rx61_pos = $P10."pos"()
    set_addr $I10, rxquantr65_done
    (rx61_rep) = rx61_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr65_done
    rx61_cur."!mark_push"(rx61_rep, rx61_pos, $I10)
  # rx literal  "::"
    add $I11, rx61_pos, 2
    gt $I11, rx61_eos, rx61_fail
    sub $I11, rx61_pos, rx61_off
    substr $S10, rx61_tgt, $I11, 2
    ne $S10, "::", rx61_fail
    add rx61_pos, 2
    goto rxquantr65_loop
  rxquantr65_done:
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "name")
    if_null rx61_debug, debug_417
    rx61_cur."!cursor_debug"("PASS", "name", " at pos=", rx61_pos)
  debug_417:
    .return (rx61_cur)
  rx61_restart:
    if_null rx61_debug, debug_418
    rx61_cur."!cursor_debug"("NEXT", "name")
  debug_418:
  rx61_fail:
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    if_null rx61_debug, debug_419
    rx61_cur."!cursor_debug"("FAIL", "name")
  debug_419:
    .return (rx61_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1285886565.968") :method
.annotate 'line', 0
    new $P63, "ResizablePMCArray"
    push $P63, ""
    .return ($P63)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    .local pmc rx68_debug
    (rx68_cur, rx68_pos, rx68_tgt, $I10) = self."!cursor_start"()
    rx68_cur."!cursor_caparray"("colonpair")
    getattribute rx68_debug, rx68_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx68_cur
    .local pmc match
    .lex "$/", match
    length rx68_eos, rx68_tgt
    gt rx68_pos, rx68_eos, rx68_done
    set rx68_off, 0
    lt rx68_pos, 2, rx68_start
    sub rx68_off, rx68_pos, 1
    substr rx68_tgt, rx68_tgt, rx68_off
  rx68_start:
    eq $I10, 1, rx68_restart
    if_null rx68_debug, debug_420
    rx68_cur."!cursor_debug"("START", "deflongname")
  debug_420:
    $I10 = self.'from'()
    ne $I10, -1, rxscan72_done
    goto rxscan72_scan
  rxscan72_loop:
    ($P10) = rx68_cur."from"()
    inc $P10
    set rx68_pos, $P10
    ge rx68_pos, rx68_eos, rxscan72_done
  rxscan72_scan:
    set_addr $I10, rxscan72_loop
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  rxscan72_done:
  # rx subrule "identifier" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."identifier"()
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx68_pos = $P10."pos"()
  # rx rxquantr73 ** 0..1
    set_addr $I10, rxquantr73_done
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  rxquantr73_loop:
  # rx subrule "colonpair" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."colonpair"()
    unless $P10, rx68_fail
    goto rxsubrule74_pass
  rxsubrule74_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx68_fail
  rxsubrule74_pass:
    set_addr $I10, rxsubrule74_back
    rx68_cur."!mark_push"(0, rx68_pos, $I10, $P10)
    $P10."!cursor_names"("colonpair")
    rx68_pos = $P10."pos"()
    set_addr $I10, rxquantr73_done
    (rx68_rep) = rx68_cur."!mark_commit"($I10)
  rxquantr73_done:
  # rx pass
    rx68_cur."!cursor_pass"(rx68_pos, "deflongname")
    if_null rx68_debug, debug_421
    rx68_cur."!cursor_debug"("PASS", "deflongname", " at pos=", rx68_pos)
  debug_421:
    .return (rx68_cur)
  rx68_restart:
    if_null rx68_debug, debug_422
    rx68_cur."!cursor_debug"("NEXT", "deflongname")
  debug_422:
  rx68_fail:
    (rx68_rep, rx68_pos, $I10, $P10) = rx68_cur."!mark_fail"(0)
    lt rx68_pos, -1, rx68_done
    eq rx68_pos, -1, rx68_fail
    jump $I10
  rx68_done:
    rx68_cur."!cursor_fail"()
    if_null rx68_debug, debug_423
    rx68_cur."!cursor_debug"("FAIL", "deflongname")
  debug_423:
    .return (rx68_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1285886565.968") :method
.annotate 'line', 0
    $P70 = self."!PREFIX__!subrule"("identifier", "")
    new $P71, "ResizablePMCArray"
    push $P71, $P70
    .return ($P71)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx76_tgt
    .local int rx76_pos
    .local int rx76_off
    .local int rx76_eos
    .local int rx76_rep
    .local pmc rx76_cur
    .local pmc rx76_debug
    (rx76_cur, rx76_pos, rx76_tgt, $I10) = self."!cursor_start"()
    getattribute rx76_debug, rx76_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx76_cur
    .local pmc match
    .lex "$/", match
    length rx76_eos, rx76_tgt
    gt rx76_pos, rx76_eos, rx76_done
    set rx76_off, 0
    lt rx76_pos, 2, rx76_start
    sub rx76_off, rx76_pos, 1
    substr rx76_tgt, rx76_tgt, rx76_off
  rx76_start:
    eq $I10, 1, rx76_restart
    if_null rx76_debug, debug_424
    rx76_cur."!cursor_debug"("START", "ENDSTMT")
  debug_424:
    $I10 = self.'from'()
    ne $I10, -1, rxscan79_done
    goto rxscan79_scan
  rxscan79_loop:
    ($P10) = rx76_cur."from"()
    inc $P10
    set rx76_pos, $P10
    ge rx76_pos, rx76_eos, rxscan79_done
  rxscan79_scan:
    set_addr $I10, rxscan79_loop
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  rxscan79_done:
  # rx rxquantr80 ** 0..1
    set_addr $I10, rxquantr80_done
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  rxquantr80_loop:
  alt81_0:
    set_addr $I10, alt81_1
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx76_pos, rx76_off
    set rx76_rep, 0
    sub $I12, rx76_eos, rx76_pos
  rxenumcharlistq82_loop:
    le $I12, 0, rxenumcharlistq82_done
    substr $S10, rx76_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq82_done
    inc rx76_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq82_loop
  rxenumcharlistq82_done:
    add rx76_pos, rx76_pos, rx76_rep
  # rxanchor eol
    sub $I10, rx76_pos, rx76_off
    is_cclass $I11, 4096, rx76_tgt, $I10
    if $I11, rxanchor83_done
    ne rx76_pos, rx76_eos, rx76_fail
    eq rx76_pos, 0, rxanchor83_done
    dec $I10
    is_cclass $I11, 4096, rx76_tgt, $I10
    if $I11, rx76_fail
  rxanchor83_done:
  # rx subrule "ws" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."ws"()
    unless $P10, rx76_fail
    rx76_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."MARKER"("endstmt")
    unless $P10, rx76_fail
    goto alt81_end
  alt81_1:
  # rx rxquantr84 ** 0..1
    set_addr $I10, rxquantr84_done
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  rxquantr84_loop:
  # rx subrule "unv" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."unv"()
    unless $P10, rx76_fail
    goto rxsubrule85_pass
  rxsubrule85_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx76_fail
  rxsubrule85_pass:
    set_addr $I10, rxsubrule85_back
    rx76_cur."!mark_push"(0, rx76_pos, $I10, $P10)
    rx76_pos = $P10."pos"()
    set_addr $I10, rxquantr84_done
    (rx76_rep) = rx76_cur."!mark_commit"($I10)
  rxquantr84_done:
  # rxanchor eol
    sub $I10, rx76_pos, rx76_off
    is_cclass $I11, 4096, rx76_tgt, $I10
    if $I11, rxanchor86_done
    ne rx76_pos, rx76_eos, rx76_fail
    eq rx76_pos, 0, rxanchor86_done
    dec $I10
    is_cclass $I11, 4096, rx76_tgt, $I10
    if $I11, rx76_fail
  rxanchor86_done:
  # rx subrule "ws" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."ws"()
    unless $P10, rx76_fail
    rx76_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."MARKER"("endstmt")
    unless $P10, rx76_fail
  alt81_end:
    set_addr $I10, rxquantr80_done
    (rx76_rep) = rx76_cur."!mark_commit"($I10)
  rxquantr80_done:
  # rx pass
    rx76_cur."!cursor_pass"(rx76_pos, "ENDSTMT")
    if_null rx76_debug, debug_425
    rx76_cur."!cursor_debug"("PASS", "ENDSTMT", " at pos=", rx76_pos)
  debug_425:
    .return (rx76_cur)
  rx76_restart:
    if_null rx76_debug, debug_426
    rx76_cur."!cursor_debug"("NEXT", "ENDSTMT")
  debug_426:
  rx76_fail:
    (rx76_rep, rx76_pos, $I10, $P10) = rx76_cur."!mark_fail"(0)
    lt rx76_pos, -1, rx76_done
    eq rx76_pos, -1, rx76_fail
    jump $I10
  rx76_done:
    rx76_cur."!cursor_fail"()
    if_null rx76_debug, debug_427
    rx76_cur."!cursor_debug"("FAIL", "ENDSTMT")
  debug_427:
    .return (rx76_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1285886565.968") :method
.annotate 'line', 0
    new $P78, "ResizablePMCArray"
    push $P78, ""
    .return ($P78)
.end


.namespace ["NQP";"Grammar"]
.sub "ws"  :subid("21_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    getattribute rx88_debug, rx88_cur, "$!debug"
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
    if_null rx88_debug, debug_428
    rx88_cur."!cursor_debug"("START", "ws")
  debug_428:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    ($P10) = rx88_cur."from"()
    inc $P10
    set rx88_pos, $P10
    ge rx88_pos, rx88_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan91_done:
  alt92_0:
    set_addr $I10, alt92_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."MARKED"("ws")
    unless $P10, rx88_fail
    goto alt92_end
  alt92_1:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ww"()
    if $P10, rx88_fail
  # rx rxquantr93 ** 0..*
    set_addr $I10, rxquantr93_done
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxquantr93_loop:
  alt94_0:
    set_addr $I10, alt94_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx88_pos, rx88_off
    set rx88_rep, 0
    sub $I12, rx88_eos, rx88_pos
  rxenumcharlistq95_loop:
    le $I12, 0, rxenumcharlistq95_done
    substr $S10, rx88_tgt, $I10, 1
    index $I11, unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", $S10
    lt $I11, 0, rxenumcharlistq95_done
    inc rx88_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq95_loop
  rxenumcharlistq95_done:
    lt rx88_rep, 1, rx88_fail
    add rx88_pos, rx88_pos, rx88_rep
    goto alt94_end
  alt94_1:
    set_addr $I10, alt94_2
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "#"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 35, rx88_fail
    add rx88_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx88_pos, rx88_off
    find_cclass $I11, 4096, rx88_tgt, $I10, rx88_eos
    add rx88_pos, rx88_off, $I11
    goto alt94_end
  alt94_2:
    set_addr $I10, alt94_3
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rxanchor bol
    eq rx88_pos, 0, rxanchor96_done
    ge rx88_pos, rx88_eos, rx88_fail
    sub $I10, rx88_pos, rx88_off
    dec $I10
    is_cclass $I11, 4096, rx88_tgt, $I10
    unless $I11, rx88_fail
  rxanchor96_done:
  # rx subrule "pod_comment" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."pod_comment"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
    goto alt94_end
  alt94_3:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx88_pos, rx88_off
    set rx88_rep, 0
    sub $I12, rx88_eos, rx88_pos
  rxenumcharlistq97_loop:
    le $I12, 0, rxenumcharlistq97_done
    substr $S10, rx88_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq97_done
    inc rx88_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq97_loop
  rxenumcharlistq97_done:
    lt rx88_rep, 1, rx88_fail
    add rx88_pos, rx88_pos, rx88_rep
  alt94_end:
    set_addr $I10, rxquantr93_done
    (rx88_rep) = rx88_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr93_done
    rx88_cur."!mark_push"(rx88_rep, rx88_pos, $I10)
    goto rxquantr93_loop
  rxquantr93_done:
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."MARKER"("ws")
    unless $P10, rx88_fail
  alt92_end:
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "ws")
    if_null rx88_debug, debug_429
    rx88_cur."!cursor_debug"("PASS", "ws", " at pos=", rx88_pos)
  debug_429:
    .return (rx88_cur)
  rx88_restart:
    if_null rx88_debug, debug_430
    rx88_cur."!cursor_debug"("NEXT", "ws")
  debug_430:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_431
    rx88_cur."!cursor_debug"("FAIL", "ws")
  debug_431:
    .return (rx88_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ws"  :subid("22_1285886565.968") :method
.annotate 'line', 0
    new $P90, "ResizablePMCArray"
    push $P90, ""
    push $P90, ""
    .return ($P90)
.end


.namespace ["NQP";"Grammar"]
.sub "unv"  :subid("23_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P106 = "25_1285886565.968" 
    capture_lex $P106
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    .local pmc rx99_debug
    (rx99_cur, rx99_pos, rx99_tgt, $I10) = self."!cursor_start"()
    getattribute rx99_debug, rx99_cur, "$!debug"
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
    if_null rx99_debug, debug_432
    rx99_cur."!cursor_debug"("START", "unv")
  debug_432:
    $I10 = self.'from'()
    ne $I10, -1, rxscan102_done
    goto rxscan102_scan
  rxscan102_loop:
    ($P10) = rx99_cur."from"()
    inc $P10
    set rx99_pos, $P10
    ge rx99_pos, rx99_eos, rxscan102_done
  rxscan102_scan:
    set_addr $I10, rxscan102_loop
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxscan102_done:
  alt103_0:
    set_addr $I10, alt103_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  # rxanchor bol
    eq rx99_pos, 0, rxanchor104_done
    ge rx99_pos, rx99_eos, rx99_fail
    sub $I10, rx99_pos, rx99_off
    dec $I10
    is_cclass $I11, 4096, rx99_tgt, $I10
    unless $I11, rx99_fail
  rxanchor104_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    .const 'Sub' $P106 = "25_1285886565.968" 
    capture_lex $P106
    $P10 = rx99_cur."before"($P106)
    unless $P10, rx99_fail
  # rx subrule "pod_comment" subtype=method negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."pod_comment"()
    unless $P10, rx99_fail
    rx99_pos = $P10."pos"()
    goto alt103_end
  alt103_1:
    set_addr $I10, alt103_2
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx99_pos, rx99_off
    set rx99_rep, 0
    sub $I12, rx99_eos, rx99_pos
  rxenumcharlistq111_loop:
    le $I12, 0, rxenumcharlistq111_done
    substr $S10, rx99_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq111_done
    inc rx99_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq111_loop
  rxenumcharlistq111_done:
    add rx99_pos, rx99_pos, rx99_rep
  # rx literal  "#"
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    ord $I11, rx99_tgt, $I11
    ne $I11, 35, rx99_fail
    add rx99_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx99_pos, rx99_off
    find_cclass $I11, 4096, rx99_tgt, $I10, rx99_eos
    add rx99_pos, rx99_off, $I11
    goto alt103_end
  alt103_2:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx99_pos, rx99_off
    set rx99_rep, 0
    sub $I12, rx99_eos, rx99_pos
  rxenumcharlistq112_loop:
    le $I12, 0, rxenumcharlistq112_done
    substr $S10, rx99_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq112_done
    inc rx99_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq112_loop
  rxenumcharlistq112_done:
    lt rx99_rep, 1, rx99_fail
    add rx99_pos, rx99_pos, rx99_rep
  alt103_end:
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "unv")
    if_null rx99_debug, debug_437
    rx99_cur."!cursor_debug"("PASS", "unv", " at pos=", rx99_pos)
  debug_437:
    .return (rx99_cur)
  rx99_restart:
    if_null rx99_debug, debug_438
    rx99_cur."!cursor_debug"("NEXT", "unv")
  debug_438:
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    if_null rx99_debug, debug_439
    rx99_cur."!cursor_debug"("FAIL", "unv")
  debug_439:
    .return (rx99_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__unv"  :subid("24_1285886565.968") :method
.annotate 'line', 0
    new $P101, "ResizablePMCArray"
    push $P101, ""
    push $P101, ""
    push $P101, ""
    .return ($P101)
.end


.namespace ["NQP";"Grammar"]
.sub "_block105"  :anon :subid("25_1285886565.968") :method :outer("23_1285886565.968")
.annotate 'line', 0
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_debug
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    getattribute rx107_debug, rx107_cur, "$!debug"
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
    if_null rx107_debug, debug_433
    rx107_cur."!cursor_debug"("START", "")
  debug_433:
    $I10 = self.'from'()
    ne $I10, -1, rxscan108_done
    goto rxscan108_scan
  rxscan108_loop:
    ($P10) = rx107_cur."from"()
    inc $P10
    set rx107_pos, $P10
    ge rx107_pos, rx107_eos, rxscan108_done
  rxscan108_scan:
    set_addr $I10, rxscan108_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan108_done:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx107_pos, rx107_off
    set rx107_rep, 0
    sub $I12, rx107_eos, rx107_pos
  rxenumcharlistq109_loop:
    le $I12, 0, rxenumcharlistq109_done
    substr $S10, rx107_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq109_done
    inc rx107_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq109_loop
  rxenumcharlistq109_done:
    add rx107_pos, rx107_pos, rx107_rep
  # rx literal  "="
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    ord $I11, rx107_tgt, $I11
    ne $I11, 61, rx107_fail
    add rx107_pos, 1
  alt110_0:
    set_addr $I10, alt110_1
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  # rx charclass w
    ge rx107_pos, rx107_eos, rx107_fail
    sub $I10, rx107_pos, rx107_off
    is_cclass $I11, 8192, rx107_tgt, $I10
    unless $I11, rx107_fail
    inc rx107_pos
    goto alt110_end
  alt110_1:
  # rx literal  "\\"
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    ord $I11, rx107_tgt, $I11
    ne $I11, 92, rx107_fail
    add rx107_pos, 1
  alt110_end:
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "")
    if_null rx107_debug, debug_434
    rx107_cur."!cursor_debug"("PASS", "", " at pos=", rx107_pos)
  debug_434:
    .return (rx107_cur)
  rx107_restart:
    if_null rx107_debug, debug_435
    rx107_cur."!cursor_debug"("NEXT", "")
  debug_435:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_436
    rx107_cur."!cursor_debug"("FAIL", "")
  debug_436:
    .return (rx107_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "pod_comment"  :subid("26_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P145 = "28_1285886565.968" 
    capture_lex $P145
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    .local pmc rx114_debug
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    getattribute rx114_debug, rx114_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx114_cur
    .local pmc match
    .lex "$/", match
    length rx114_eos, rx114_tgt
    gt rx114_pos, rx114_eos, rx114_done
    set rx114_off, 0
    lt rx114_pos, 2, rx114_start
    sub rx114_off, rx114_pos, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
    eq $I10, 1, rx114_restart
    if_null rx114_debug, debug_440
    rx114_cur."!cursor_debug"("START", "pod_comment")
  debug_440:
    $I10 = self.'from'()
    ne $I10, -1, rxscan117_done
    goto rxscan117_scan
  rxscan117_loop:
    ($P10) = rx114_cur."from"()
    inc $P10
    set rx114_pos, $P10
    ge rx114_pos, rx114_eos, rxscan117_done
  rxscan117_scan:
    set_addr $I10, rxscan117_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxscan117_done:
  # rxanchor bol
    eq rx114_pos, 0, rxanchor118_done
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    dec $I10
    is_cclass $I11, 4096, rx114_tgt, $I10
    unless $I11, rx114_fail
  rxanchor118_done:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq119_loop:
    le $I12, 0, rxenumcharlistq119_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq119_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq119_loop
  rxenumcharlistq119_done:
    add rx114_pos, rx114_pos, rx114_rep
  # rx literal  "="
    add $I11, rx114_pos, 1
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    ord $I11, rx114_tgt, $I11
    ne $I11, 61, rx114_fail
    add rx114_pos, 1
  alt120_0:
    set_addr $I10, alt120_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx literal  "begin"
    add $I11, rx114_pos, 5
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 5
    ne $S10, "begin", rx114_fail
    add rx114_pos, 5
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq121_loop:
    le $I12, 0, rxenumcharlistq121_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq121_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq121_loop
  rxenumcharlistq121_done:
    lt rx114_rep, 1, rx114_fail
    add rx114_pos, rx114_pos, rx114_rep
  # rx literal  "END"
    add $I11, rx114_pos, 3
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 3
    ne $S10, "END", rx114_fail
    add rx114_pos, 3
  # rxanchor rwb
    le rx114_pos, 0, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 8192, rx114_tgt, $I10
    if $I11, rx114_fail
    dec $I10
    is_cclass $I11, 8192, rx114_tgt, $I10
    unless $I11, rx114_fail
  alt122_0:
    set_addr $I10, alt122_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx rxquantf123 ** 0..*
    set_addr $I10, rxquantf123_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
    goto rxquantf123_done
  rxquantf123_loop:
  # rx charclass .
    ge rx114_pos, rx114_eos, rx114_fail
    inc rx114_pos
    set_addr $I10, rxquantf123_loop
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I10)
  rxquantf123_done:
  # rx charclass nl
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 4096, rx114_tgt, $I10
    unless $I11, rx114_fail
    substr $S10, rx114_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx114_pos, $I11
    inc rx114_pos
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq125_loop:
    le $I12, 0, rxenumcharlistq125_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq125_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq125_loop
  rxenumcharlistq125_done:
    add rx114_pos, rx114_pos, rx114_rep
  # rx literal  "=end"
    add $I11, rx114_pos, 4
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 4
    ne $S10, "=end", rx114_fail
    add rx114_pos, 4
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq126_loop:
    le $I12, 0, rxenumcharlistq126_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq126_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq126_loop
  rxenumcharlistq126_done:
    lt rx114_rep, 1, rx114_fail
    add rx114_pos, rx114_pos, rx114_rep
  # rx literal  "END"
    add $I11, rx114_pos, 3
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 3
    ne $S10, "END", rx114_fail
    add rx114_pos, 3
  # rxanchor rwb
    le rx114_pos, 0, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 8192, rx114_tgt, $I10
    if $I11, rx114_fail
    dec $I10
    is_cclass $I11, 8192, rx114_tgt, $I10
    unless $I11, rx114_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx114_pos, rx114_off
    find_cclass $I11, 4096, rx114_tgt, $I10, rx114_eos
    add rx114_pos, rx114_off, $I11
    goto alt122_end
  alt122_1:
  # rx charclass_q . r 0..-1
    sub $I10, rx114_pos, rx114_off
    find_not_cclass $I11, 65535, rx114_tgt, $I10, rx114_eos
    add rx114_pos, rx114_off, $I11
  alt122_end:
    goto alt120_end
  alt120_1:
    set_addr $I10, alt120_2
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx literal  "begin"
    add $I11, rx114_pos, 5
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 5
    ne $S10, "begin", rx114_fail
    add rx114_pos, 5
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq127_loop:
    le $I12, 0, rxenumcharlistq127_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq127_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq127_loop
  rxenumcharlistq127_done:
    lt rx114_rep, 1, rx114_fail
    add rx114_pos, rx114_pos, rx114_rep
  # rx subrule "identifier" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."identifier"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx114_pos = $P10."pos"()
  alt128_0:
    set_addr $I10, alt128_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx rxquantf129 ** 0..*
    set_addr $I10, rxquantf129_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
    goto rxquantf129_done
  rxquantf129_loop:
  # rx charclass .
    ge rx114_pos, rx114_eos, rx114_fail
    inc rx114_pos
    set_addr $I10, rxquantf129_loop
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I10)
  rxquantf129_done:
  # rx charclass nl
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 4096, rx114_tgt, $I10
    unless $I11, rx114_fail
    substr $S10, rx114_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx114_pos, $I11
    inc rx114_pos
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq131_loop:
    le $I12, 0, rxenumcharlistq131_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq131_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq131_loop
  rxenumcharlistq131_done:
    add rx114_pos, rx114_pos, rx114_rep
  # rx literal  "=end"
    add $I11, rx114_pos, 4
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 4
    ne $S10, "=end", rx114_fail
    add rx114_pos, 4
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq132_loop:
    le $I12, 0, rxenumcharlistq132_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq132_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq132_loop
  rxenumcharlistq132_done:
    lt rx114_rep, 1, rx114_fail
    add rx114_pos, rx114_pos, rx114_rep
  # rx subrule "!BACKREF" subtype=method negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."!BACKREF"("identifier")
    unless $P10, rx114_fail
    rx114_pos = $P10."pos"()
  # rxanchor rwb
    le rx114_pos, 0, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 8192, rx114_tgt, $I10
    if $I11, rx114_fail
    dec $I10
    is_cclass $I11, 8192, rx114_tgt, $I10
    unless $I11, rx114_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx114_pos, rx114_off
    find_cclass $I11, 4096, rx114_tgt, $I10, rx114_eos
    add rx114_pos, rx114_off, $I11
    goto alt128_end
  alt128_1:
  # rx subrule "panic" subtype=method negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."panic"("=begin without matching =end")
    unless $P10, rx114_fail
    rx114_pos = $P10."pos"()
  alt128_end:
    goto alt120_end
  alt120_2:
    set_addr $I10, alt120_3
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx literal  "begin"
    add $I11, rx114_pos, 5
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 5
    ne $S10, "begin", rx114_fail
    add rx114_pos, 5
  # rxanchor rwb
    le rx114_pos, 0, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 8192, rx114_tgt, $I10
    if $I11, rx114_fail
    dec $I10
    is_cclass $I11, 8192, rx114_tgt, $I10
    unless $I11, rx114_fail
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq134_loop:
    le $I12, 0, rxenumcharlistq134_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq134_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq134_loop
  rxenumcharlistq134_done:
    add rx114_pos, rx114_pos, rx114_rep
  alt135_0:
    set_addr $I10, alt135_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rxanchor eol
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 4096, rx114_tgt, $I10
    if $I11, rxanchor136_done
    ne rx114_pos, rx114_eos, rx114_fail
    eq rx114_pos, 0, rxanchor136_done
    dec $I10
    is_cclass $I11, 4096, rx114_tgt, $I10
    if $I11, rx114_fail
  rxanchor136_done:
    goto alt135_end
  alt135_1:
    set_addr $I10, alt135_2
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx literal  "#"
    add $I11, rx114_pos, 1
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    ord $I11, rx114_tgt, $I11
    ne $I11, 35, rx114_fail
    add rx114_pos, 1
    goto alt135_end
  alt135_2:
  # rx subrule "panic" subtype=method negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."panic"("Unrecognized token after =begin")
    unless $P10, rx114_fail
    rx114_pos = $P10."pos"()
  alt135_end:
  alt137_0:
    set_addr $I10, alt137_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx rxquantf138 ** 0..*
    set_addr $I10, rxquantf138_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
    goto rxquantf138_done
  rxquantf138_loop:
  # rx charclass .
    ge rx114_pos, rx114_eos, rx114_fail
    inc rx114_pos
    set_addr $I10, rxquantf138_loop
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I10)
  rxquantf138_done:
  # rx charclass nl
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 4096, rx114_tgt, $I10
    unless $I11, rx114_fail
    substr $S10, rx114_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx114_pos, $I11
    inc rx114_pos
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx114_pos, rx114_off
    set rx114_rep, 0
    sub $I12, rx114_eos, rx114_pos
  rxenumcharlistq140_loop:
    le $I12, 0, rxenumcharlistq140_done
    substr $S10, rx114_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq140_done
    inc rx114_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq140_loop
  rxenumcharlistq140_done:
    add rx114_pos, rx114_pos, rx114_rep
  # rx literal  "=end"
    add $I11, rx114_pos, 4
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 4
    ne $S10, "=end", rx114_fail
    add rx114_pos, 4
  # rxanchor rwb
    le rx114_pos, 0, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 8192, rx114_tgt, $I10
    if $I11, rx114_fail
    dec $I10
    is_cclass $I11, 8192, rx114_tgt, $I10
    unless $I11, rx114_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx114_pos, rx114_off
    find_cclass $I11, 4096, rx114_tgt, $I10, rx114_eos
    add rx114_pos, rx114_off, $I11
    goto alt137_end
  alt137_1:
  # rx subrule "panic" subtype=method negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."panic"("=begin without matching =end")
    unless $P10, rx114_fail
    rx114_pos = $P10."pos"()
  alt137_end:
    goto alt120_end
  alt120_3:
    set_addr $I10, alt120_4
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx subrule "identifier" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."identifier"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx114_pos = $P10."pos"()
  # rx rxquantf141 ** 0..*
    set_addr $I10, rxquantf141_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
    goto rxquantf141_done
  rxquantf141_loop:
  # rx charclass .
    ge rx114_pos, rx114_eos, rx114_fail
    inc rx114_pos
    set_addr $I10, rxquantf141_loop
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I10)
  rxquantf141_done:
  # rxanchor bol
    eq rx114_pos, 0, rxanchor143_done
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    dec $I10
    is_cclass $I11, 4096, rx114_tgt, $I10
    unless $I11, rx114_fail
  rxanchor143_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    .const 'Sub' $P145 = "28_1285886565.968" 
    capture_lex $P145
    $P10 = rx114_cur."before"($P145)
    unless $P10, rx114_fail
    goto alt120_end
  alt120_4:
  alt151_0:
    set_addr $I10, alt151_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx charclass s
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    is_cclass $I11, 32, rx114_tgt, $I10
    unless $I11, rx114_fail
    inc rx114_pos
    goto alt151_end
  alt151_1:
  # rx subrule "panic" subtype=method negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."panic"("Illegal pod directive")
    unless $P10, rx114_fail
    rx114_pos = $P10."pos"()
  alt151_end:
  # rx charclass_q N r 0..-1
    sub $I10, rx114_pos, rx114_off
    find_cclass $I11, 4096, rx114_tgt, $I10, rx114_eos
    add rx114_pos, rx114_off, $I11
  alt120_end:
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "pod_comment")
    if_null rx114_debug, debug_445
    rx114_cur."!cursor_debug"("PASS", "pod_comment", " at pos=", rx114_pos)
  debug_445:
    .return (rx114_cur)
  rx114_restart:
    if_null rx114_debug, debug_446
    rx114_cur."!cursor_debug"("NEXT", "pod_comment")
  debug_446:
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    if_null rx114_debug, debug_447
    rx114_cur."!cursor_debug"("FAIL", "pod_comment")
  debug_447:
    .return (rx114_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pod_comment"  :subid("27_1285886565.968") :method
.annotate 'line', 0
    new $P116, "ResizablePMCArray"
    push $P116, ""
    .return ($P116)
.end


.namespace ["NQP";"Grammar"]
.sub "_block144"  :anon :subid("28_1285886565.968") :method :outer("26_1285886565.968")
.annotate 'line', 0
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    .local pmc rx146_debug
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    getattribute rx146_debug, rx146_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    gt rx146_pos, rx146_eos, rx146_done
    set rx146_off, 0
    lt rx146_pos, 2, rx146_start
    sub rx146_off, rx146_pos, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    eq $I10, 1, rx146_restart
    if_null rx146_debug, debug_441
    rx146_cur."!cursor_debug"("START", "")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan147_done
    goto rxscan147_scan
  rxscan147_loop:
    ($P10) = rx146_cur."from"()
    inc $P10
    set rx146_pos, $P10
    ge rx146_pos, rx146_eos, rxscan147_done
  rxscan147_scan:
    set_addr $I10, rxscan147_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan147_done:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx146_pos, rx146_off
    set rx146_rep, 0
    sub $I12, rx146_eos, rx146_pos
  rxenumcharlistq148_loop:
    le $I12, 0, rxenumcharlistq148_done
    substr $S10, rx146_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq148_done
    inc rx146_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq148_loop
  rxenumcharlistq148_done:
    add rx146_pos, rx146_pos, rx146_rep
  alt149_0:
    set_addr $I10, alt149_1
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  # rx literal  "="
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    ord $I11, rx146_tgt, $I11
    ne $I11, 61, rx146_fail
    add rx146_pos, 1
  # rx rxquantr150 ** 0..1
    set_addr $I10, rxquantr150_done
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxquantr150_loop:
  # rx literal  "cut"
    add $I11, rx146_pos, 3
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 3
    ne $S10, "cut", rx146_fail
    add rx146_pos, 3
  # rxanchor rwb
    le rx146_pos, 0, rx146_fail
    sub $I10, rx146_pos, rx146_off
    is_cclass $I11, 8192, rx146_tgt, $I10
    if $I11, rx146_fail
    dec $I10
    is_cclass $I11, 8192, rx146_tgt, $I10
    unless $I11, rx146_fail
  # rx subrule "panic" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."panic"("Obsolete pod format, please use =begin/=end instead")
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
    set_addr $I10, rxquantr150_done
    (rx146_rep) = rx146_cur."!mark_commit"($I10)
  rxquantr150_done:
    goto alt149_end
  alt149_1:
  # rx charclass nl
    ge rx146_pos, rx146_eos, rx146_fail
    sub $I10, rx146_pos, rx146_off
    is_cclass $I11, 4096, rx146_tgt, $I10
    unless $I11, rx146_fail
    substr $S10, rx146_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx146_pos, $I11
    inc rx146_pos
  alt149_end:
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "")
    if_null rx146_debug, debug_442
    rx146_cur."!cursor_debug"("PASS", "", " at pos=", rx146_pos)
  debug_442:
    .return (rx146_cur)
  rx146_restart:
    if_null rx146_debug, debug_443
    rx146_cur."!cursor_debug"("NEXT", "")
  debug_443:
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    if_null rx146_debug, debug_444
    rx146_cur."!cursor_debug"("FAIL", "")
  debug_444:
    .return (rx146_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("29_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    .local pmc rx153_debug
    (rx153_cur, rx153_pos, rx153_tgt, $I10) = self."!cursor_start"()
    getattribute rx153_debug, rx153_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx153_cur
    .local pmc match
    .lex "$/", match
    length rx153_eos, rx153_tgt
    gt rx153_pos, rx153_eos, rx153_done
    set rx153_off, 0
    lt rx153_pos, 2, rx153_start
    sub rx153_off, rx153_pos, 1
    substr rx153_tgt, rx153_tgt, rx153_off
  rx153_start:
    eq $I10, 1, rx153_restart
    if_null rx153_debug, debug_448
    rx153_cur."!cursor_debug"("START", "comp_unit")
  debug_448:
    $I10 = self.'from'()
    ne $I10, -1, rxscan157_done
    goto rxscan157_scan
  rxscan157_loop:
    ($P10) = rx153_cur."from"()
    inc $P10
    set rx153_pos, $P10
    ge rx153_pos, rx153_eos, rxscan157_done
  rxscan157_scan:
    set_addr $I10, rxscan157_loop
    rx153_cur."!mark_push"(0, rx153_pos, $I10)
  rxscan157_done:
  # rx subrule "newpad" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."newpad"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "outerctx" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."outerctx"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "statementlist" subtype=capture negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."statementlist"()
    unless $P10, rx153_fail
    rx153_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx153_pos = $P10."pos"()
  alt158_0:
    set_addr $I10, alt158_1
    rx153_cur."!mark_push"(0, rx153_pos, $I10)
  # rxanchor eos
    ne rx153_pos, rx153_eos, rx153_fail
    goto alt158_end
  alt158_1:
  # rx subrule "panic" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."panic"("Confused")
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  alt158_end:
  # rx pass
    rx153_cur."!cursor_pass"(rx153_pos, "comp_unit")
    if_null rx153_debug, debug_449
    rx153_cur."!cursor_debug"("PASS", "comp_unit", " at pos=", rx153_pos)
  debug_449:
    .return (rx153_cur)
  rx153_restart:
    if_null rx153_debug, debug_450
    rx153_cur."!cursor_debug"("NEXT", "comp_unit")
  debug_450:
  rx153_fail:
    (rx153_rep, rx153_pos, $I10, $P10) = rx153_cur."!mark_fail"(0)
    lt rx153_pos, -1, rx153_done
    eq rx153_pos, -1, rx153_fail
    jump $I10
  rx153_done:
    rx153_cur."!cursor_fail"()
    if_null rx153_debug, debug_451
    rx153_cur."!cursor_debug"("FAIL", "comp_unit")
  debug_451:
    .return (rx153_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("30_1285886565.968") :method
.annotate 'line', 0
    $P155 = self."!PREFIX__!subrule"("newpad", "")
    new $P156, "ResizablePMCArray"
    push $P156, $P155
    .return ($P156)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("31_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx160_tgt
    .local int rx160_pos
    .local int rx160_off
    .local int rx160_eos
    .local int rx160_rep
    .local pmc rx160_cur
    .local pmc rx160_debug
    (rx160_cur, rx160_pos, rx160_tgt, $I10) = self."!cursor_start"()
    rx160_cur."!cursor_caparray"("statement")
    getattribute rx160_debug, rx160_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx160_cur
    .local pmc match
    .lex "$/", match
    length rx160_eos, rx160_tgt
    gt rx160_pos, rx160_eos, rx160_done
    set rx160_off, 0
    lt rx160_pos, 2, rx160_start
    sub rx160_off, rx160_pos, 1
    substr rx160_tgt, rx160_tgt, rx160_off
  rx160_start:
    eq $I10, 1, rx160_restart
    if_null rx160_debug, debug_452
    rx160_cur."!cursor_debug"("START", "statementlist")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    ($P10) = rx160_cur."from"()
    inc $P10
    set rx160_pos, $P10
    ge rx160_pos, rx160_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx160_cur."!mark_push"(0, rx160_pos, $I10)
  rxscan165_done:
  alt166_0:
    set_addr $I10, alt166_1
    rx160_cur."!mark_push"(0, rx160_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  # rxanchor eos
    ne rx160_pos, rx160_eos, rx160_fail
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
    goto alt166_end
  alt166_1:
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  # rx rxquantr170 ** 0..*
    set_addr $I10, rxquantr170_done
    rx160_cur."!mark_push"(0, rx160_pos, $I10)
  rxquantr170_loop:
  # rx subrule "statement" subtype=capture negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."statement"()
    unless $P10, rx160_fail
    rx160_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx160_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."eat_terminator"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
    set_addr $I10, rxquantr170_done
    (rx160_rep) = rx160_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr170_done
    rx160_cur."!mark_push"(rx160_rep, rx160_pos, $I10)
    goto rxquantr170_loop
  rxquantr170_done:
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  alt166_end:
  # rx pass
    rx160_cur."!cursor_pass"(rx160_pos, "statementlist")
    if_null rx160_debug, debug_453
    rx160_cur."!cursor_debug"("PASS", "statementlist", " at pos=", rx160_pos)
  debug_453:
    .return (rx160_cur)
  rx160_restart:
    if_null rx160_debug, debug_454
    rx160_cur."!cursor_debug"("NEXT", "statementlist")
  debug_454:
  rx160_fail:
    (rx160_rep, rx160_pos, $I10, $P10) = rx160_cur."!mark_fail"(0)
    lt rx160_pos, -1, rx160_done
    eq rx160_pos, -1, rx160_fail
    jump $I10
  rx160_done:
    rx160_cur."!cursor_fail"()
    if_null rx160_debug, debug_455
    rx160_cur."!cursor_debug"("FAIL", "statementlist")
  debug_455:
    .return (rx160_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("32_1285886565.968") :method
.annotate 'line', 0
    $P162 = self."!PREFIX__!subrule"("ws", "")
    $P163 = self."!PREFIX__!subrule"("ws", "")
    new $P164, "ResizablePMCArray"
    push $P164, $P162
    push $P164, $P163
    .return ($P164)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("33_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P179 = "35_1285886565.968" 
    capture_lex $P179
    .local string rx174_tgt
    .local int rx174_pos
    .local int rx174_off
    .local int rx174_eos
    .local int rx174_rep
    .local pmc rx174_cur
    .local pmc rx174_debug
    (rx174_cur, rx174_pos, rx174_tgt, $I10) = self."!cursor_start"()
    rx174_cur."!cursor_caparray"("statement_mod_cond", "statement_mod_loop")
    getattribute rx174_debug, rx174_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx174_cur
    .local pmc match
    .lex "$/", match
    length rx174_eos, rx174_tgt
    gt rx174_pos, rx174_eos, rx174_done
    set rx174_off, 0
    lt rx174_pos, 2, rx174_start
    sub rx174_off, rx174_pos, 1
    substr rx174_tgt, rx174_tgt, rx174_off
  rx174_start:
    eq $I10, 1, rx174_restart
    if_null rx174_debug, debug_456
    rx174_cur."!cursor_debug"("START", "statement")
  debug_456:
    $I10 = self.'from'()
    ne $I10, -1, rxscan177_done
    goto rxscan177_scan
  rxscan177_loop:
    ($P10) = rx174_cur."from"()
    inc $P10
    set rx174_pos, $P10
    ge rx174_pos, rx174_eos, rxscan177_done
  rxscan177_scan:
    set_addr $I10, rxscan177_loop
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  rxscan177_done:
  # rx subrule "before" subtype=zerowidth negate=1
    rx174_cur."!cursor_pos"(rx174_pos)
    .const 'Sub' $P179 = "35_1285886565.968" 
    capture_lex $P179
    $P10 = rx174_cur."before"($P179)
    if $P10, rx174_fail
  alt183_0:
    set_addr $I10, alt183_1
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  # rx subrule "statement_control" subtype=capture negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."statement_control"()
    unless $P10, rx174_fail
    rx174_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx174_pos = $P10."pos"()
    goto alt183_end
  alt183_1:
  # rx subrule "EXPR" subtype=capture negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."EXPR"()
    unless $P10, rx174_fail
    rx174_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx174_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."ws"()
    unless $P10, rx174_fail
    rx174_pos = $P10."pos"()
  # rx rxquantr184 ** 0..1
    set_addr $I10, rxquantr184_done
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  rxquantr184_loop:
  alt185_0:
    set_addr $I10, alt185_1
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."MARKED"("endstmt")
    unless $P10, rx174_fail
    goto alt185_end
  alt185_1:
    set_addr $I10, alt185_2
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  # rx subrule "statement_mod_cond" subtype=capture negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."statement_mod_cond"()
    unless $P10, rx174_fail
    rx174_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_cond")
    rx174_pos = $P10."pos"()
  # rx rxquantr186 ** 0..1
    set_addr $I10, rxquantr186_done
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  rxquantr186_loop:
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."statement_mod_loop"()
    unless $P10, rx174_fail
    goto rxsubrule187_pass
  rxsubrule187_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx174_fail
  rxsubrule187_pass:
    set_addr $I10, rxsubrule187_back
    rx174_cur."!mark_push"(0, rx174_pos, $I10, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx174_pos = $P10."pos"()
    set_addr $I10, rxquantr186_done
    (rx174_rep) = rx174_cur."!mark_commit"($I10)
  rxquantr186_done:
    goto alt185_end
  alt185_2:
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."statement_mod_loop"()
    unless $P10, rx174_fail
    rx174_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx174_pos = $P10."pos"()
  alt185_end:
    set_addr $I10, rxquantr184_done
    (rx174_rep) = rx174_cur."!mark_commit"($I10)
  rxquantr184_done:
  alt183_end:
  # rx pass
    rx174_cur."!cursor_pass"(rx174_pos, "statement")
    if_null rx174_debug, debug_461
    rx174_cur."!cursor_debug"("PASS", "statement", " at pos=", rx174_pos)
  debug_461:
    .return (rx174_cur)
  rx174_restart:
    if_null rx174_debug, debug_462
    rx174_cur."!cursor_debug"("NEXT", "statement")
  debug_462:
  rx174_fail:
    (rx174_rep, rx174_pos, $I10, $P10) = rx174_cur."!mark_fail"(0)
    lt rx174_pos, -1, rx174_done
    eq rx174_pos, -1, rx174_fail
    jump $I10
  rx174_done:
    rx174_cur."!cursor_fail"()
    if_null rx174_debug, debug_463
    rx174_cur."!cursor_debug"("FAIL", "statement")
  debug_463:
    .return (rx174_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("34_1285886565.968") :method
.annotate 'line', 0
    new $P176, "ResizablePMCArray"
    push $P176, ""
    .return ($P176)
.end


.namespace ["NQP";"Grammar"]
.sub "_block178"  :anon :subid("35_1285886565.968") :method :outer("33_1285886565.968")
.annotate 'line', 0
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    .local pmc rx180_debug
    (rx180_cur, rx180_pos, rx180_tgt, $I10) = self."!cursor_start"()
    getattribute rx180_debug, rx180_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx180_cur
    .local pmc match
    .lex "$/", match
    length rx180_eos, rx180_tgt
    gt rx180_pos, rx180_eos, rx180_done
    set rx180_off, 0
    lt rx180_pos, 2, rx180_start
    sub rx180_off, rx180_pos, 1
    substr rx180_tgt, rx180_tgt, rx180_off
  rx180_start:
    eq $I10, 1, rx180_restart
    if_null rx180_debug, debug_457
    rx180_cur."!cursor_debug"("START", "")
  debug_457:
    $I10 = self.'from'()
    ne $I10, -1, rxscan181_done
    goto rxscan181_scan
  rxscan181_loop:
    ($P10) = rx180_cur."from"()
    inc $P10
    set rx180_pos, $P10
    ge rx180_pos, rx180_eos, rxscan181_done
  rxscan181_scan:
    set_addr $I10, rxscan181_loop
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
  rxscan181_done:
  alt182_0:
    set_addr $I10, alt182_1
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx180_pos, rx180_eos, rx180_fail
    sub $I10, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx180_fail
    inc rx180_pos
    goto alt182_end
  alt182_1:
  # rxanchor eos
    ne rx180_pos, rx180_eos, rx180_fail
  alt182_end:
  # rx pass
    rx180_cur."!cursor_pass"(rx180_pos, "")
    if_null rx180_debug, debug_458
    rx180_cur."!cursor_debug"("PASS", "", " at pos=", rx180_pos)
  debug_458:
    .return (rx180_cur)
  rx180_restart:
    if_null rx180_debug, debug_459
    rx180_cur."!cursor_debug"("NEXT", "")
  debug_459:
  rx180_fail:
    (rx180_rep, rx180_pos, $I10, $P10) = rx180_cur."!mark_fail"(0)
    lt rx180_pos, -1, rx180_done
    eq rx180_pos, -1, rx180_fail
    jump $I10
  rx180_done:
    rx180_cur."!cursor_fail"()
    if_null rx180_debug, debug_460
    rx180_cur."!cursor_debug"("FAIL", "")
  debug_460:
    .return (rx180_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("36_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    .local pmc rx189_debug
    (rx189_cur, rx189_pos, rx189_tgt, $I10) = self."!cursor_start"()
    getattribute rx189_debug, rx189_cur, "$!debug"
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
    if_null rx189_debug, debug_464
    rx189_cur."!cursor_debug"("START", "eat_terminator")
  debug_464:
    $I10 = self.'from'()
    ne $I10, -1, rxscan192_done
    goto rxscan192_scan
  rxscan192_loop:
    ($P10) = rx189_cur."from"()
    inc $P10
    set rx189_pos, $P10
    ge rx189_pos, rx189_eos, rxscan192_done
  rxscan192_scan:
    set_addr $I10, rxscan192_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxscan192_done:
  alt193_0:
    set_addr $I10, alt193_1
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  # rx literal  ";"
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail
    sub $I11, rx189_pos, rx189_off
    ord $I11, rx189_tgt, $I11
    ne $I11, 59, rx189_fail
    add rx189_pos, 1
    goto alt193_end
  alt193_1:
    set_addr $I10, alt193_2
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."MARKED"("endstmt")
    unless $P10, rx189_fail
    goto alt193_end
  alt193_2:
    set_addr $I10, alt193_3
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  # rx subrule "terminator" subtype=zerowidth negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."terminator"()
    unless $P10, rx189_fail
    goto alt193_end
  alt193_3:
  # rxanchor eos
    ne rx189_pos, rx189_eos, rx189_fail
  alt193_end:
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "eat_terminator")
    if_null rx189_debug, debug_465
    rx189_cur."!cursor_debug"("PASS", "eat_terminator", " at pos=", rx189_pos)
  debug_465:
    .return (rx189_cur)
  rx189_restart:
    if_null rx189_debug, debug_466
    rx189_cur."!cursor_debug"("NEXT", "eat_terminator")
  debug_466:
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    if_null rx189_debug, debug_467
    rx189_cur."!cursor_debug"("FAIL", "eat_terminator")
  debug_467:
    .return (rx189_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("37_1285886565.968") :method
.annotate 'line', 0
    new $P191, "ResizablePMCArray"
    push $P191, ""
    push $P191, ""
    push $P191, ""
    push $P191, ";"
    .return ($P191)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("38_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_debug
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    getattribute rx195_debug, rx195_cur, "$!debug"
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
    if_null rx195_debug, debug_468
    rx195_cur."!cursor_debug"("START", "xblock")
  debug_468:
    $I10 = self.'from'()
    ne $I10, -1, rxscan199_done
    goto rxscan199_scan
  rxscan199_loop:
    ($P10) = rx195_cur."from"()
    inc $P10
    set rx195_pos, $P10
    ge rx195_pos, rx195_eos, rxscan199_done
  rxscan199_scan:
    set_addr $I10, rxscan199_loop
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxscan199_done:
  # rx subrule "EXPR" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."EXPR"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx195_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."ws"()
    unless $P10, rx195_fail
    rx195_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."pblock"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx195_pos = $P10."pos"()
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "xblock")
    if_null rx195_debug, debug_469
    rx195_cur."!cursor_debug"("PASS", "xblock", " at pos=", rx195_pos)
  debug_469:
    .return (rx195_cur)
  rx195_restart:
    if_null rx195_debug, debug_470
    rx195_cur."!cursor_debug"("NEXT", "xblock")
  debug_470:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_471
    rx195_cur."!cursor_debug"("FAIL", "xblock")
  debug_471:
    .return (rx195_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("39_1285886565.968") :method
.annotate 'line', 0
    $P197 = self."!PREFIX__!subrule"("EXPR", "")
    new $P198, "ResizablePMCArray"
    push $P198, $P197
    .return ($P198)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("40_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx201_tgt
    .local int rx201_pos
    .local int rx201_off
    .local int rx201_eos
    .local int rx201_rep
    .local pmc rx201_cur
    .local pmc rx201_debug
    (rx201_cur, rx201_pos, rx201_tgt, $I10) = self."!cursor_start"()
    getattribute rx201_debug, rx201_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx201_cur
    .local pmc match
    .lex "$/", match
    length rx201_eos, rx201_tgt
    gt rx201_pos, rx201_eos, rx201_done
    set rx201_off, 0
    lt rx201_pos, 2, rx201_start
    sub rx201_off, rx201_pos, 1
    substr rx201_tgt, rx201_tgt, rx201_off
  rx201_start:
    eq $I10, 1, rx201_restart
    if_null rx201_debug, debug_472
    rx201_cur."!cursor_debug"("START", "pblock")
  debug_472:
    $I10 = self.'from'()
    ne $I10, -1, rxscan206_done
    goto rxscan206_scan
  rxscan206_loop:
    ($P10) = rx201_cur."from"()
    inc $P10
    set rx201_pos, $P10
    ge rx201_pos, rx201_eos, rxscan206_done
  rxscan206_scan:
    set_addr $I10, rxscan206_loop
    rx201_cur."!mark_push"(0, rx201_pos, $I10)
  rxscan206_done:
  alt207_0:
    set_addr $I10, alt207_1
    rx201_cur."!mark_push"(0, rx201_pos, $I10)
  # rx subrule "lambda" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."lambda"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx subrule "newpad" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."newpad"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."signature"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx201_pos = $P10."pos"()
  # rx subrule "blockoid" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."blockoid"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx201_pos = $P10."pos"()
    goto alt207_end
  alt207_1:
    set_addr $I10, alt207_2
    rx201_cur."!mark_push"(0, rx201_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx201_pos, rx201_eos, rx201_fail
    sub $I10, rx201_pos, rx201_off
    substr $S10, rx201_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx201_fail
  # rx subrule "newpad" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."newpad"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx subrule "blockoid" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."blockoid"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx201_pos = $P10."pos"()
    goto alt207_end
  alt207_2:
  # rx subrule "panic" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."panic"("Missing block")
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  alt207_end:
  # rx pass
    rx201_cur."!cursor_pass"(rx201_pos, "pblock")
    if_null rx201_debug, debug_473
    rx201_cur."!cursor_debug"("PASS", "pblock", " at pos=", rx201_pos)
  debug_473:
    .return (rx201_cur)
  rx201_restart:
    if_null rx201_debug, debug_474
    rx201_cur."!cursor_debug"("NEXT", "pblock")
  debug_474:
  rx201_fail:
    (rx201_rep, rx201_pos, $I10, $P10) = rx201_cur."!mark_fail"(0)
    lt rx201_pos, -1, rx201_done
    eq rx201_pos, -1, rx201_fail
    jump $I10
  rx201_done:
    rx201_cur."!cursor_fail"()
    if_null rx201_debug, debug_475
    rx201_cur."!cursor_debug"("FAIL", "pblock")
  debug_475:
    .return (rx201_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("41_1285886565.968") :method
.annotate 'line', 0
    $P203 = self."!PREFIX__!subrule"("panic", "")
    $P204 = self."!PREFIX__!subrule"("lambda", "")
    new $P205, "ResizablePMCArray"
    push $P205, $P203
    push $P205, "{"
    push $P205, $P204
    .return ($P205)
.end


.namespace ["NQP";"Grammar"]
.sub "lambda"  :subid("42_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx209_tgt
    .local int rx209_pos
    .local int rx209_off
    .local int rx209_eos
    .local int rx209_rep
    .local pmc rx209_cur
    .local pmc rx209_debug
    (rx209_cur, rx209_pos, rx209_tgt, $I10) = self."!cursor_start"()
    getattribute rx209_debug, rx209_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx209_cur
    .local pmc match
    .lex "$/", match
    length rx209_eos, rx209_tgt
    gt rx209_pos, rx209_eos, rx209_done
    set rx209_off, 0
    lt rx209_pos, 2, rx209_start
    sub rx209_off, rx209_pos, 1
    substr rx209_tgt, rx209_tgt, rx209_off
  rx209_start:
    eq $I10, 1, rx209_restart
    if_null rx209_debug, debug_476
    rx209_cur."!cursor_debug"("START", "lambda")
  debug_476:
    $I10 = self.'from'()
    ne $I10, -1, rxscan212_done
    goto rxscan212_scan
  rxscan212_loop:
    ($P10) = rx209_cur."from"()
    inc $P10
    set rx209_pos, $P10
    ge rx209_pos, rx209_eos, rxscan212_done
  rxscan212_scan:
    set_addr $I10, rxscan212_loop
    rx209_cur."!mark_push"(0, rx209_pos, $I10)
  rxscan212_done:
  alt213_0:
    set_addr $I10, alt213_1
    rx209_cur."!mark_push"(0, rx209_pos, $I10)
  # rx literal  "->"
    add $I11, rx209_pos, 2
    gt $I11, rx209_eos, rx209_fail
    sub $I11, rx209_pos, rx209_off
    substr $S10, rx209_tgt, $I11, 2
    ne $S10, "->", rx209_fail
    add rx209_pos, 2
    goto alt213_end
  alt213_1:
  # rx literal  "<->"
    add $I11, rx209_pos, 3
    gt $I11, rx209_eos, rx209_fail
    sub $I11, rx209_pos, rx209_off
    substr $S10, rx209_tgt, $I11, 3
    ne $S10, "<->", rx209_fail
    add rx209_pos, 3
  alt213_end:
  # rx pass
    rx209_cur."!cursor_pass"(rx209_pos, "lambda")
    if_null rx209_debug, debug_477
    rx209_cur."!cursor_debug"("PASS", "lambda", " at pos=", rx209_pos)
  debug_477:
    .return (rx209_cur)
  rx209_restart:
    if_null rx209_debug, debug_478
    rx209_cur."!cursor_debug"("NEXT", "lambda")
  debug_478:
  rx209_fail:
    (rx209_rep, rx209_pos, $I10, $P10) = rx209_cur."!mark_fail"(0)
    lt rx209_pos, -1, rx209_done
    eq rx209_pos, -1, rx209_fail
    jump $I10
  rx209_done:
    rx209_cur."!cursor_fail"()
    if_null rx209_debug, debug_479
    rx209_cur."!cursor_debug"("FAIL", "lambda")
  debug_479:
    .return (rx209_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__lambda"  :subid("43_1285886565.968") :method
.annotate 'line', 0
    new $P211, "ResizablePMCArray"
    push $P211, "<->"
    push $P211, "->"
    .return ($P211)
.end


.namespace ["NQP";"Grammar"]
.sub "block"  :subid("44_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx215_tgt
    .local int rx215_pos
    .local int rx215_off
    .local int rx215_eos
    .local int rx215_rep
    .local pmc rx215_cur
    .local pmc rx215_debug
    (rx215_cur, rx215_pos, rx215_tgt, $I10) = self."!cursor_start"()
    getattribute rx215_debug, rx215_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx215_cur
    .local pmc match
    .lex "$/", match
    length rx215_eos, rx215_tgt
    gt rx215_pos, rx215_eos, rx215_done
    set rx215_off, 0
    lt rx215_pos, 2, rx215_start
    sub rx215_off, rx215_pos, 1
    substr rx215_tgt, rx215_tgt, rx215_off
  rx215_start:
    eq $I10, 1, rx215_restart
    if_null rx215_debug, debug_480
    rx215_cur."!cursor_debug"("START", "block")
  debug_480:
    $I10 = self.'from'()
    ne $I10, -1, rxscan219_done
    goto rxscan219_scan
  rxscan219_loop:
    ($P10) = rx215_cur."from"()
    inc $P10
    set rx215_pos, $P10
    ge rx215_pos, rx215_eos, rxscan219_done
  rxscan219_scan:
    set_addr $I10, rxscan219_loop
    rx215_cur."!mark_push"(0, rx215_pos, $I10)
  rxscan219_done:
  alt220_0:
    set_addr $I10, alt220_1
    rx215_cur."!mark_push"(0, rx215_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx215_pos, rx215_eos, rx215_fail
    sub $I10, rx215_pos, rx215_off
    substr $S10, rx215_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx215_fail
    goto alt220_end
  alt220_1:
  # rx subrule "panic" subtype=method negate=
    rx215_cur."!cursor_pos"(rx215_pos)
    $P10 = rx215_cur."panic"("Missing block")
    unless $P10, rx215_fail
    rx215_pos = $P10."pos"()
  alt220_end:
  # rx subrule "newpad" subtype=method negate=
    rx215_cur."!cursor_pos"(rx215_pos)
    $P10 = rx215_cur."newpad"()
    unless $P10, rx215_fail
    rx215_pos = $P10."pos"()
  # rx subrule "blockoid" subtype=capture negate=
    rx215_cur."!cursor_pos"(rx215_pos)
    $P10 = rx215_cur."blockoid"()
    unless $P10, rx215_fail
    rx215_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx215_pos = $P10."pos"()
  # rx pass
    rx215_cur."!cursor_pass"(rx215_pos, "block")
    if_null rx215_debug, debug_481
    rx215_cur."!cursor_debug"("PASS", "block", " at pos=", rx215_pos)
  debug_481:
    .return (rx215_cur)
  rx215_restart:
    if_null rx215_debug, debug_482
    rx215_cur."!cursor_debug"("NEXT", "block")
  debug_482:
  rx215_fail:
    (rx215_rep, rx215_pos, $I10, $P10) = rx215_cur."!mark_fail"(0)
    lt rx215_pos, -1, rx215_done
    eq rx215_pos, -1, rx215_fail
    jump $I10
  rx215_done:
    rx215_cur."!cursor_fail"()
    if_null rx215_debug, debug_483
    rx215_cur."!cursor_debug"("FAIL", "block")
  debug_483:
    .return (rx215_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__block"  :subid("45_1285886565.968") :method
.annotate 'line', 0
    $P217 = self."!PREFIX__!subrule"("panic", "")
    new $P218, "ResizablePMCArray"
    push $P218, $P217
    push $P218, "{"
    .return ($P218)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("46_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    .local pmc rx222_debug
    (rx222_cur, rx222_pos, rx222_tgt, $I10) = self."!cursor_start"()
    getattribute rx222_debug, rx222_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx222_cur
    .local pmc match
    .lex "$/", match
    length rx222_eos, rx222_tgt
    gt rx222_pos, rx222_eos, rx222_done
    set rx222_off, 0
    lt rx222_pos, 2, rx222_start
    sub rx222_off, rx222_pos, 1
    substr rx222_tgt, rx222_tgt, rx222_off
  rx222_start:
    eq $I10, 1, rx222_restart
    if_null rx222_debug, debug_484
    rx222_cur."!cursor_debug"("START", "blockoid")
  debug_484:
    $I10 = self.'from'()
    ne $I10, -1, rxscan226_done
    goto rxscan226_scan
  rxscan226_loop:
    ($P10) = rx222_cur."from"()
    inc $P10
    set rx222_pos, $P10
    ge rx222_pos, rx222_eos, rxscan226_done
  rxscan226_scan:
    set_addr $I10, rxscan226_loop
    rx222_cur."!mark_push"(0, rx222_pos, $I10)
  rxscan226_done:
  # rx subrule "finishpad" subtype=method negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."finishpad"()
    unless $P10, rx222_fail
    rx222_pos = $P10."pos"()
  # rx literal  "{"
    add $I11, rx222_pos, 1
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    ord $I11, rx222_tgt, $I11
    ne $I11, 123, rx222_fail
    add rx222_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."statementlist"()
    unless $P10, rx222_fail
    rx222_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx222_pos = $P10."pos"()
  alt227_0:
    set_addr $I10, alt227_1
    rx222_cur."!mark_push"(0, rx222_pos, $I10)
  # rx literal  "}"
    add $I11, rx222_pos, 1
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    ord $I11, rx222_tgt, $I11
    ne $I11, 125, rx222_fail
    add rx222_pos, 1
    goto alt227_end
  alt227_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."FAILGOAL"("'}'")
    unless $P10, rx222_fail
    goto rxsubrule229_pass
  rxsubrule229_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx222_fail
  rxsubrule229_pass:
    set_addr $I10, rxsubrule229_back
    rx222_cur."!mark_push"(0, rx222_pos, $I10, $P10)
    rx222_pos = $P10."pos"()
  alt227_end:
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."ENDSTMT"()
    unless $P10, rx222_fail
  # rx pass
    rx222_cur."!cursor_pass"(rx222_pos, "blockoid")
    if_null rx222_debug, debug_485
    rx222_cur."!cursor_debug"("PASS", "blockoid", " at pos=", rx222_pos)
  debug_485:
    .return (rx222_cur)
  rx222_restart:
    if_null rx222_debug, debug_486
    rx222_cur."!cursor_debug"("NEXT", "blockoid")
  debug_486:
  rx222_fail:
    (rx222_rep, rx222_pos, $I10, $P10) = rx222_cur."!mark_fail"(0)
    lt rx222_pos, -1, rx222_done
    eq rx222_pos, -1, rx222_fail
    jump $I10
  rx222_done:
    rx222_cur."!cursor_fail"()
    if_null rx222_debug, debug_487
    rx222_cur."!cursor_debug"("FAIL", "blockoid")
  debug_487:
    .return (rx222_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("47_1285886565.968") :method
.annotate 'line', 0
    $P224 = self."!PREFIX__!subrule"("finishpad", "")
    new $P225, "ResizablePMCArray"
    push $P225, $P224
    .return ($P225)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("48_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    .local pmc rx231_debug
    (rx231_cur, rx231_pos, rx231_tgt, $I10) = self."!cursor_start"()
    getattribute rx231_debug, rx231_cur, "$!debug"
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
    if_null rx231_debug, debug_488
    rx231_cur."!cursor_debug"("START", "newpad")
  debug_488:
    $I10 = self.'from'()
    ne $I10, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    ($P10) = rx231_cur."from"()
    inc $P10
    set rx231_pos, $P10
    ge rx231_pos, rx231_eos, rxscan234_done
  rxscan234_scan:
    set_addr $I10, rxscan234_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan234_done:
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "newpad")
    if_null rx231_debug, debug_489
    rx231_cur."!cursor_debug"("PASS", "newpad", " at pos=", rx231_pos)
  debug_489:
    .return (rx231_cur)
  rx231_restart:
    if_null rx231_debug, debug_490
    rx231_cur."!cursor_debug"("NEXT", "newpad")
  debug_490:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_491
    rx231_cur."!cursor_debug"("FAIL", "newpad")
  debug_491:
    .return (rx231_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("49_1285886565.968") :method
.annotate 'line', 0
    new $P233, "ResizablePMCArray"
    push $P233, ""
    .return ($P233)
.end


.namespace ["NQP";"Grammar"]
.sub "outerctx"  :subid("50_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    .local pmc rx236_debug
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    getattribute rx236_debug, rx236_cur, "$!debug"
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
    if_null rx236_debug, debug_492
    rx236_cur."!cursor_debug"("START", "outerctx")
  debug_492:
    $I10 = self.'from'()
    ne $I10, -1, rxscan239_done
    goto rxscan239_scan
  rxscan239_loop:
    ($P10) = rx236_cur."from"()
    inc $P10
    set rx236_pos, $P10
    ge rx236_pos, rx236_eos, rxscan239_done
  rxscan239_scan:
    set_addr $I10, rxscan239_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan239_done:
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "outerctx")
    if_null rx236_debug, debug_493
    rx236_cur."!cursor_debug"("PASS", "outerctx", " at pos=", rx236_pos)
  debug_493:
    .return (rx236_cur)
  rx236_restart:
    if_null rx236_debug, debug_494
    rx236_cur."!cursor_debug"("NEXT", "outerctx")
  debug_494:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_495
    rx236_cur."!cursor_debug"("FAIL", "outerctx")
  debug_495:
    .return (rx236_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__outerctx"  :subid("51_1285886565.968") :method
.annotate 'line', 0
    new $P238, "ResizablePMCArray"
    push $P238, ""
    .return ($P238)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("52_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx241_tgt
    .local int rx241_pos
    .local int rx241_off
    .local int rx241_eos
    .local int rx241_rep
    .local pmc rx241_cur
    .local pmc rx241_debug
    (rx241_cur, rx241_pos, rx241_tgt, $I10) = self."!cursor_start"()
    getattribute rx241_debug, rx241_cur, "$!debug"
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
    if_null rx241_debug, debug_496
    rx241_cur."!cursor_debug"("START", "finishpad")
  debug_496:
    $I10 = self.'from'()
    ne $I10, -1, rxscan244_done
    goto rxscan244_scan
  rxscan244_loop:
    ($P10) = rx241_cur."from"()
    inc $P10
    set rx241_pos, $P10
    ge rx241_pos, rx241_eos, rxscan244_done
  rxscan244_scan:
    set_addr $I10, rxscan244_loop
    rx241_cur."!mark_push"(0, rx241_pos, $I10)
  rxscan244_done:
  # rx pass
    rx241_cur."!cursor_pass"(rx241_pos, "finishpad")
    if_null rx241_debug, debug_497
    rx241_cur."!cursor_debug"("PASS", "finishpad", " at pos=", rx241_pos)
  debug_497:
    .return (rx241_cur)
  rx241_restart:
    if_null rx241_debug, debug_498
    rx241_cur."!cursor_debug"("NEXT", "finishpad")
  debug_498:
  rx241_fail:
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    if_null rx241_debug, debug_499
    rx241_cur."!cursor_debug"("FAIL", "finishpad")
  debug_499:
    .return (rx241_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("53_1285886565.968") :method
.annotate 'line', 0
    new $P243, "ResizablePMCArray"
    push $P243, ""
    .return ($P243)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("54_1285886565.968") :method
.annotate 'line', 0
    $P246 = self."!protoregex"("terminator")
    .return ($P246)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("55_1285886565.968") :method
.annotate 'line', 0
    $P248 = self."!PREFIX__!protoregex"("terminator")
    .return ($P248)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("56_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    .local pmc rx250_debug
    (rx250_cur, rx250_pos, rx250_tgt, $I10) = self."!cursor_start"()
    getattribute rx250_debug, rx250_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx250_cur
    .local pmc match
    .lex "$/", match
    length rx250_eos, rx250_tgt
    gt rx250_pos, rx250_eos, rx250_done
    set rx250_off, 0
    lt rx250_pos, 2, rx250_start
    sub rx250_off, rx250_pos, 1
    substr rx250_tgt, rx250_tgt, rx250_off
  rx250_start:
    eq $I10, 1, rx250_restart
    if_null rx250_debug, debug_500
    rx250_cur."!cursor_debug"("START", "terminator:sym<;>")
  debug_500:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    ($P10) = rx250_cur."from"()
    inc $P10
    set rx250_pos, $P10
    ge rx250_pos, rx250_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx250_cur."!mark_push"(0, rx250_pos, $I10)
  rxscan253_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx250_pos, rx250_eos, rx250_fail
    sub $I10, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx250_fail
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "terminator:sym<;>")
    if_null rx250_debug, debug_501
    rx250_cur."!cursor_debug"("PASS", "terminator:sym<;>", " at pos=", rx250_pos)
  debug_501:
    .return (rx250_cur)
  rx250_restart:
    if_null rx250_debug, debug_502
    rx250_cur."!cursor_debug"("NEXT", "terminator:sym<;>")
  debug_502:
  rx250_fail:
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    if_null rx250_debug, debug_503
    rx250_cur."!cursor_debug"("FAIL", "terminator:sym<;>")
  debug_503:
    .return (rx250_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("57_1285886565.968") :method
.annotate 'line', 0
    new $P252, "ResizablePMCArray"
    push $P252, ";"
    .return ($P252)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("58_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    .local pmc rx255_debug
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    getattribute rx255_debug, rx255_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    gt rx255_pos, rx255_eos, rx255_done
    set rx255_off, 0
    lt rx255_pos, 2, rx255_start
    sub rx255_off, rx255_pos, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
    eq $I10, 1, rx255_restart
    if_null rx255_debug, debug_504
    rx255_cur."!cursor_debug"("START", "terminator:sym<}>")
  debug_504:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    ($P10) = rx255_cur."from"()
    inc $P10
    set rx255_pos, $P10
    ge rx255_pos, rx255_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan258_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx255_pos, rx255_eos, rx255_fail
    sub $I10, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx255_fail
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "terminator:sym<}>")
    if_null rx255_debug, debug_505
    rx255_cur."!cursor_debug"("PASS", "terminator:sym<}>", " at pos=", rx255_pos)
  debug_505:
    .return (rx255_cur)
  rx255_restart:
    if_null rx255_debug, debug_506
    rx255_cur."!cursor_debug"("NEXT", "terminator:sym<}>")
  debug_506:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_507
    rx255_cur."!cursor_debug"("FAIL", "terminator:sym<}>")
  debug_507:
    .return (rx255_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("59_1285886565.968") :method
.annotate 'line', 0
    new $P257, "ResizablePMCArray"
    push $P257, "}"
    .return ($P257)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("60_1285886565.968") :method
.annotate 'line', 0
    $P260 = self."!protoregex"("statement_control")
    .return ($P260)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("61_1285886565.968") :method
.annotate 'line', 0
    $P262 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P262)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("62_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    .local pmc rx264_debug
    (rx264_cur, rx264_pos, rx264_tgt, $I10) = self."!cursor_start"()
    rx264_cur."!cursor_caparray"("xblock", "else")
    getattribute rx264_debug, rx264_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx264_cur
    .local pmc match
    .lex "$/", match
    length rx264_eos, rx264_tgt
    gt rx264_pos, rx264_eos, rx264_done
    set rx264_off, 0
    lt rx264_pos, 2, rx264_start
    sub rx264_off, rx264_pos, 1
    substr rx264_tgt, rx264_tgt, rx264_off
  rx264_start:
    eq $I10, 1, rx264_restart
    if_null rx264_debug, debug_508
    rx264_cur."!cursor_debug"("START", "statement_control:sym<if>")
  debug_508:
    $I10 = self.'from'()
    ne $I10, -1, rxscan267_done
    goto rxscan267_scan
  rxscan267_loop:
    ($P10) = rx264_cur."from"()
    inc $P10
    set rx264_pos, $P10
    ge rx264_pos, rx264_eos, rxscan267_done
  rxscan267_scan:
    set_addr $I10, rxscan267_loop
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  rxscan267_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_268_fail
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  # rx literal  "if"
    add $I11, rx264_pos, 2
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I11, 2
    ne $S10, "if", rx264_fail
    add rx264_pos, 2
    set_addr $I10, rxcap_268_fail
    ($I12, $I11) = rx264_cur."!mark_peek"($I10)
    rx264_cur."!cursor_pos"($I11)
    ($P10) = rx264_cur."!cursor_start"()
    $P10."!cursor_pass"(rx264_pos, "")
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_268_done
  rxcap_268_fail:
    goto rx264_fail
  rxcap_268_done:
  # rx charclass s
    ge rx264_pos, rx264_eos, rx264_fail
    sub $I10, rx264_pos, rx264_off
    is_cclass $I11, 32, rx264_tgt, $I10
    unless $I11, rx264_fail
    inc rx264_pos
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."xblock"()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx264_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx rxquantr271 ** 0..*
    set_addr $I10, rxquantr271_done
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  rxquantr271_loop:
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx264_pos, 5
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I11, 5
    ne $S10, "elsif", rx264_fail
    add rx264_pos, 5
  # rx charclass s
    ge rx264_pos, rx264_eos, rx264_fail
    sub $I10, rx264_pos, rx264_off
    is_cclass $I11, 32, rx264_tgt, $I10
    unless $I11, rx264_fail
    inc rx264_pos
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."xblock"()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx264_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
    set_addr $I10, rxquantr271_done
    (rx264_rep) = rx264_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr271_done
    rx264_cur."!mark_push"(rx264_rep, rx264_pos, $I10)
    goto rxquantr271_loop
  rxquantr271_done:
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx rxquantr276 ** 0..1
    set_addr $I10, rxquantr276_done
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  rxquantr276_loop:
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx264_pos, 4
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I11, 4
    ne $S10, "else", rx264_fail
    add rx264_pos, 4
  # rx charclass s
    ge rx264_pos, rx264_eos, rx264_fail
    sub $I10, rx264_pos, rx264_off
    is_cclass $I11, 32, rx264_tgt, $I10
    unless $I11, rx264_fail
    inc rx264_pos
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."pblock"()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx264_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
    set_addr $I10, rxquantr276_done
    (rx264_rep) = rx264_cur."!mark_commit"($I10)
  rxquantr276_done:
  # rx subrule "ws" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."ws"()
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
  # rx pass
    rx264_cur."!cursor_pass"(rx264_pos, "statement_control:sym<if>")
    if_null rx264_debug, debug_509
    rx264_cur."!cursor_debug"("PASS", "statement_control:sym<if>", " at pos=", rx264_pos)
  debug_509:
    .return (rx264_cur)
  rx264_restart:
    if_null rx264_debug, debug_510
    rx264_cur."!cursor_debug"("NEXT", "statement_control:sym<if>")
  debug_510:
  rx264_fail:
    (rx264_rep, rx264_pos, $I10, $P10) = rx264_cur."!mark_fail"(0)
    lt rx264_pos, -1, rx264_done
    eq rx264_pos, -1, rx264_fail
    jump $I10
  rx264_done:
    rx264_cur."!cursor_fail"()
    if_null rx264_debug, debug_511
    rx264_cur."!cursor_debug"("FAIL", "statement_control:sym<if>")
  debug_511:
    .return (rx264_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("63_1285886565.968") :method
.annotate 'line', 0
    new $P266, "ResizablePMCArray"
    push $P266, "if"
    .return ($P266)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("64_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P292 = "66_1285886565.968" 
    capture_lex $P292
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    .local pmc rx282_debug
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    getattribute rx282_debug, rx282_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    gt rx282_pos, rx282_eos, rx282_done
    set rx282_off, 0
    lt rx282_pos, 2, rx282_start
    sub rx282_off, rx282_pos, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
    eq $I10, 1, rx282_restart
    if_null rx282_debug, debug_512
    rx282_cur."!cursor_debug"("START", "statement_control:sym<unless>")
  debug_512:
    $I10 = self.'from'()
    ne $I10, -1, rxscan285_done
    goto rxscan285_scan
  rxscan285_loop:
    ($P10) = rx282_cur."from"()
    inc $P10
    set rx282_pos, $P10
    ge rx282_pos, rx282_eos, rxscan285_done
  rxscan285_scan:
    set_addr $I10, rxscan285_loop
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  rxscan285_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_286_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "unless"
    add $I11, rx282_pos, 6
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 6
    ne $S10, "unless", rx282_fail
    add rx282_pos, 6
    set_addr $I10, rxcap_286_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_286_done
  rxcap_286_fail:
    goto rx282_fail
  rxcap_286_done:
  # rx charclass s
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    is_cclass $I11, 32, rx282_tgt, $I10
    unless $I11, rx282_fail
    inc rx282_pos
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."xblock"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx282_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  alt289_0:
    set_addr $I10, alt289_1
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx282_cur."!cursor_pos"(rx282_pos)
    .const 'Sub' $P292 = "66_1285886565.968" 
    capture_lex $P292
    $P10 = rx282_cur."before"($P292)
    if $P10, rx282_fail
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
    goto alt289_end
  alt289_1:
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  alt289_end:
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "statement_control:sym<unless>")
    if_null rx282_debug, debug_517
    rx282_cur."!cursor_debug"("PASS", "statement_control:sym<unless>", " at pos=", rx282_pos)
  debug_517:
    .return (rx282_cur)
  rx282_restart:
    if_null rx282_debug, debug_518
    rx282_cur."!cursor_debug"("NEXT", "statement_control:sym<unless>")
  debug_518:
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    if_null rx282_debug, debug_519
    rx282_cur."!cursor_debug"("FAIL", "statement_control:sym<unless>")
  debug_519:
    .return (rx282_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("65_1285886565.968") :method
.annotate 'line', 0
    new $P284, "ResizablePMCArray"
    push $P284, "unless"
    .return ($P284)
.end


.namespace ["NQP";"Grammar"]
.sub "_block291"  :anon :subid("66_1285886565.968") :method :outer("64_1285886565.968")
.annotate 'line', 0
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    .local pmc rx293_debug
    (rx293_cur, rx293_pos, rx293_tgt, $I10) = self."!cursor_start"()
    getattribute rx293_debug, rx293_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx293_cur
    .local pmc match
    .lex "$/", match
    length rx293_eos, rx293_tgt
    gt rx293_pos, rx293_eos, rx293_done
    set rx293_off, 0
    lt rx293_pos, 2, rx293_start
    sub rx293_off, rx293_pos, 1
    substr rx293_tgt, rx293_tgt, rx293_off
  rx293_start:
    eq $I10, 1, rx293_restart
    if_null rx293_debug, debug_513
    rx293_cur."!cursor_debug"("START", "")
  debug_513:
    $I10 = self.'from'()
    ne $I10, -1, rxscan294_done
    goto rxscan294_scan
  rxscan294_loop:
    ($P10) = rx293_cur."from"()
    inc $P10
    set rx293_pos, $P10
    ge rx293_pos, rx293_eos, rxscan294_done
  rxscan294_scan:
    set_addr $I10, rxscan294_loop
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  rxscan294_done:
  # rx literal  "else"
    add $I11, rx293_pos, 4
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 4
    ne $S10, "else", rx293_fail
    add rx293_pos, 4
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "")
    if_null rx293_debug, debug_514
    rx293_cur."!cursor_debug"("PASS", "", " at pos=", rx293_pos)
  debug_514:
    .return (rx293_cur)
  rx293_restart:
    if_null rx293_debug, debug_515
    rx293_cur."!cursor_debug"("NEXT", "")
  debug_515:
  rx293_fail:
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    if_null rx293_debug, debug_516
    rx293_cur."!cursor_debug"("FAIL", "")
  debug_516:
    .return (rx293_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("67_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx300_tgt
    .local int rx300_pos
    .local int rx300_off
    .local int rx300_eos
    .local int rx300_rep
    .local pmc rx300_cur
    .local pmc rx300_debug
    (rx300_cur, rx300_pos, rx300_tgt, $I10) = self."!cursor_start"()
    getattribute rx300_debug, rx300_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx300_cur
    .local pmc match
    .lex "$/", match
    length rx300_eos, rx300_tgt
    gt rx300_pos, rx300_eos, rx300_done
    set rx300_off, 0
    lt rx300_pos, 2, rx300_start
    sub rx300_off, rx300_pos, 1
    substr rx300_tgt, rx300_tgt, rx300_off
  rx300_start:
    eq $I10, 1, rx300_restart
    if_null rx300_debug, debug_520
    rx300_cur."!cursor_debug"("START", "statement_control:sym<while>")
  debug_520:
    $I10 = self.'from'()
    ne $I10, -1, rxscan303_done
    goto rxscan303_scan
  rxscan303_loop:
    ($P10) = rx300_cur."from"()
    inc $P10
    set rx300_pos, $P10
    ge rx300_pos, rx300_eos, rxscan303_done
  rxscan303_scan:
    set_addr $I10, rxscan303_loop
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  rxscan303_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_305_fail
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  alt304_0:
    set_addr $I10, alt304_1
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  # rx literal  "while"
    add $I11, rx300_pos, 5
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I11, 5
    ne $S10, "while", rx300_fail
    add rx300_pos, 5
    goto alt304_end
  alt304_1:
  # rx literal  "until"
    add $I11, rx300_pos, 5
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I11, 5
    ne $S10, "until", rx300_fail
    add rx300_pos, 5
  alt304_end:
    set_addr $I10, rxcap_305_fail
    ($I12, $I11) = rx300_cur."!mark_peek"($I10)
    rx300_cur."!cursor_pos"($I11)
    ($P10) = rx300_cur."!cursor_start"()
    $P10."!cursor_pass"(rx300_pos, "")
    rx300_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_305_done
  rxcap_305_fail:
    goto rx300_fail
  rxcap_305_done:
  # rx charclass s
    ge rx300_pos, rx300_eos, rx300_fail
    sub $I10, rx300_pos, rx300_off
    is_cclass $I11, 32, rx300_tgt, $I10
    unless $I11, rx300_fail
    inc rx300_pos
  # rx subrule "ws" subtype=method negate=
    rx300_cur."!cursor_pos"(rx300_pos)
    $P10 = rx300_cur."ws"()
    unless $P10, rx300_fail
    rx300_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx300_cur."!cursor_pos"(rx300_pos)
    $P10 = rx300_cur."xblock"()
    unless $P10, rx300_fail
    rx300_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx300_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx300_cur."!cursor_pos"(rx300_pos)
    $P10 = rx300_cur."ws"()
    unless $P10, rx300_fail
    rx300_pos = $P10."pos"()
  # rx pass
    rx300_cur."!cursor_pass"(rx300_pos, "statement_control:sym<while>")
    if_null rx300_debug, debug_521
    rx300_cur."!cursor_debug"("PASS", "statement_control:sym<while>", " at pos=", rx300_pos)
  debug_521:
    .return (rx300_cur)
  rx300_restart:
    if_null rx300_debug, debug_522
    rx300_cur."!cursor_debug"("NEXT", "statement_control:sym<while>")
  debug_522:
  rx300_fail:
    (rx300_rep, rx300_pos, $I10, $P10) = rx300_cur."!mark_fail"(0)
    lt rx300_pos, -1, rx300_done
    eq rx300_pos, -1, rx300_fail
    jump $I10
  rx300_done:
    rx300_cur."!cursor_fail"()
    if_null rx300_debug, debug_523
    rx300_cur."!cursor_debug"("FAIL", "statement_control:sym<while>")
  debug_523:
    .return (rx300_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("68_1285886565.968") :method
.annotate 'line', 0
    new $P302, "ResizablePMCArray"
    push $P302, "until"
    push $P302, "while"
    .return ($P302)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("69_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx309_tgt
    .local int rx309_pos
    .local int rx309_off
    .local int rx309_eos
    .local int rx309_rep
    .local pmc rx309_cur
    .local pmc rx309_debug
    (rx309_cur, rx309_pos, rx309_tgt, $I10) = self."!cursor_start"()
    getattribute rx309_debug, rx309_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx309_cur
    .local pmc match
    .lex "$/", match
    length rx309_eos, rx309_tgt
    gt rx309_pos, rx309_eos, rx309_done
    set rx309_off, 0
    lt rx309_pos, 2, rx309_start
    sub rx309_off, rx309_pos, 1
    substr rx309_tgt, rx309_tgt, rx309_off
  rx309_start:
    eq $I10, 1, rx309_restart
    if_null rx309_debug, debug_524
    rx309_cur."!cursor_debug"("START", "statement_control:sym<repeat>")
  debug_524:
    $I10 = self.'from'()
    ne $I10, -1, rxscan312_done
    goto rxscan312_scan
  rxscan312_loop:
    ($P10) = rx309_cur."from"()
    inc $P10
    set rx309_pos, $P10
    ge rx309_pos, rx309_eos, rxscan312_done
  rxscan312_scan:
    set_addr $I10, rxscan312_loop
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  rxscan312_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_313_fail
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx309_pos, 6
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I11, 6
    ne $S10, "repeat", rx309_fail
    add rx309_pos, 6
    set_addr $I10, rxcap_313_fail
    ($I12, $I11) = rx309_cur."!mark_peek"($I10)
    rx309_cur."!cursor_pos"($I11)
    ($P10) = rx309_cur."!cursor_start"()
    $P10."!cursor_pass"(rx309_pos, "")
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_313_done
  rxcap_313_fail:
    goto rx309_fail
  rxcap_313_done:
  # rx charclass s
    ge rx309_pos, rx309_eos, rx309_fail
    sub $I10, rx309_pos, rx309_off
    is_cclass $I11, 32, rx309_tgt, $I10
    unless $I11, rx309_fail
    inc rx309_pos
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  alt315_0:
    set_addr $I10, alt315_1
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_318_fail
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  alt317_0:
    set_addr $I10, alt317_1
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  # rx literal  "while"
    add $I11, rx309_pos, 5
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I11, 5
    ne $S10, "while", rx309_fail
    add rx309_pos, 5
    goto alt317_end
  alt317_1:
  # rx literal  "until"
    add $I11, rx309_pos, 5
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I11, 5
    ne $S10, "until", rx309_fail
    add rx309_pos, 5
  alt317_end:
    set_addr $I10, rxcap_318_fail
    ($I12, $I11) = rx309_cur."!mark_peek"($I10)
    rx309_cur."!cursor_pos"($I11)
    ($P10) = rx309_cur."!cursor_start"()
    $P10."!cursor_pass"(rx309_pos, "")
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_318_done
  rxcap_318_fail:
    goto rx309_fail
  rxcap_318_done:
  # rx charclass s
    ge rx309_pos, rx309_eos, rx309_fail
    sub $I10, rx309_pos, rx309_off
    is_cclass $I11, 32, rx309_tgt, $I10
    unless $I11, rx309_fail
    inc rx309_pos
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."xblock"()
    unless $P10, rx309_fail
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx309_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
    goto alt315_end
  alt315_1:
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."pblock"()
    unless $P10, rx309_fail
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx309_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_324_fail
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  alt323_0:
    set_addr $I10, alt323_1
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  # rx literal  "while"
    add $I11, rx309_pos, 5
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I11, 5
    ne $S10, "while", rx309_fail
    add rx309_pos, 5
    goto alt323_end
  alt323_1:
  # rx literal  "until"
    add $I11, rx309_pos, 5
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I11, 5
    ne $S10, "until", rx309_fail
    add rx309_pos, 5
  alt323_end:
    set_addr $I10, rxcap_324_fail
    ($I12, $I11) = rx309_cur."!mark_peek"($I10)
    rx309_cur."!cursor_pos"($I11)
    ($P10) = rx309_cur."!cursor_start"()
    $P10."!cursor_pass"(rx309_pos, "")
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_324_done
  rxcap_324_fail:
    goto rx309_fail
  rxcap_324_done:
  # rx charclass s
    ge rx309_pos, rx309_eos, rx309_fail
    sub $I10, rx309_pos, rx309_off
    is_cclass $I11, 32, rx309_tgt, $I10
    unless $I11, rx309_fail
    inc rx309_pos
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."EXPR"()
    unless $P10, rx309_fail
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx309_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  alt315_end:
  # rx subrule "ws" subtype=method negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."ws"()
    unless $P10, rx309_fail
    rx309_pos = $P10."pos"()
  # rx pass
    rx309_cur."!cursor_pass"(rx309_pos, "statement_control:sym<repeat>")
    if_null rx309_debug, debug_525
    rx309_cur."!cursor_debug"("PASS", "statement_control:sym<repeat>", " at pos=", rx309_pos)
  debug_525:
    .return (rx309_cur)
  rx309_restart:
    if_null rx309_debug, debug_526
    rx309_cur."!cursor_debug"("NEXT", "statement_control:sym<repeat>")
  debug_526:
  rx309_fail:
    (rx309_rep, rx309_pos, $I10, $P10) = rx309_cur."!mark_fail"(0)
    lt rx309_pos, -1, rx309_done
    eq rx309_pos, -1, rx309_fail
    jump $I10
  rx309_done:
    rx309_cur."!cursor_fail"()
    if_null rx309_debug, debug_527
    rx309_cur."!cursor_debug"("FAIL", "statement_control:sym<repeat>")
  debug_527:
    .return (rx309_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("70_1285886565.968") :method
.annotate 'line', 0
    new $P311, "ResizablePMCArray"
    push $P311, "repeat"
    .return ($P311)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("71_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    .local pmc rx329_debug
    (rx329_cur, rx329_pos, rx329_tgt, $I10) = self."!cursor_start"()
    getattribute rx329_debug, rx329_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx329_cur
    .local pmc match
    .lex "$/", match
    length rx329_eos, rx329_tgt
    gt rx329_pos, rx329_eos, rx329_done
    set rx329_off, 0
    lt rx329_pos, 2, rx329_start
    sub rx329_off, rx329_pos, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
    eq $I10, 1, rx329_restart
    if_null rx329_debug, debug_528
    rx329_cur."!cursor_debug"("START", "statement_control:sym<for>")
  debug_528:
    $I10 = self.'from'()
    ne $I10, -1, rxscan332_done
    goto rxscan332_scan
  rxscan332_loop:
    ($P10) = rx329_cur."from"()
    inc $P10
    set rx329_pos, $P10
    ge rx329_pos, rx329_eos, rxscan332_done
  rxscan332_scan:
    set_addr $I10, rxscan332_loop
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  rxscan332_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_333_fail
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  # rx literal  "for"
    add $I11, rx329_pos, 3
    gt $I11, rx329_eos, rx329_fail
    sub $I11, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I11, 3
    ne $S10, "for", rx329_fail
    add rx329_pos, 3
    set_addr $I10, rxcap_333_fail
    ($I12, $I11) = rx329_cur."!mark_peek"($I10)
    rx329_cur."!cursor_pos"($I11)
    ($P10) = rx329_cur."!cursor_start"()
    $P10."!cursor_pass"(rx329_pos, "")
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_333_done
  rxcap_333_fail:
    goto rx329_fail
  rxcap_333_done:
  # rx charclass s
    ge rx329_pos, rx329_eos, rx329_fail
    sub $I10, rx329_pos, rx329_off
    is_cclass $I11, 32, rx329_tgt, $I10
    unless $I11, rx329_fail
    inc rx329_pos
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."xblock"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx329_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "statement_control:sym<for>")
    if_null rx329_debug, debug_529
    rx329_cur."!cursor_debug"("PASS", "statement_control:sym<for>", " at pos=", rx329_pos)
  debug_529:
    .return (rx329_cur)
  rx329_restart:
    if_null rx329_debug, debug_530
    rx329_cur."!cursor_debug"("NEXT", "statement_control:sym<for>")
  debug_530:
  rx329_fail:
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    if_null rx329_debug, debug_531
    rx329_cur."!cursor_debug"("FAIL", "statement_control:sym<for>")
  debug_531:
    .return (rx329_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("72_1285886565.968") :method
.annotate 'line', 0
    new $P331, "ResizablePMCArray"
    push $P331, "for"
    .return ($P331)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CATCH>"  :subid("73_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx337_tgt
    .local int rx337_pos
    .local int rx337_off
    .local int rx337_eos
    .local int rx337_rep
    .local pmc rx337_cur
    .local pmc rx337_debug
    (rx337_cur, rx337_pos, rx337_tgt, $I10) = self."!cursor_start"()
    getattribute rx337_debug, rx337_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx337_cur
    .local pmc match
    .lex "$/", match
    length rx337_eos, rx337_tgt
    gt rx337_pos, rx337_eos, rx337_done
    set rx337_off, 0
    lt rx337_pos, 2, rx337_start
    sub rx337_off, rx337_pos, 1
    substr rx337_tgt, rx337_tgt, rx337_off
  rx337_start:
    eq $I10, 1, rx337_restart
    if_null rx337_debug, debug_532
    rx337_cur."!cursor_debug"("START", "statement_control:sym<CATCH>")
  debug_532:
    $I10 = self.'from'()
    ne $I10, -1, rxscan340_done
    goto rxscan340_scan
  rxscan340_loop:
    ($P10) = rx337_cur."from"()
    inc $P10
    set rx337_pos, $P10
    ge rx337_pos, rx337_eos, rxscan340_done
  rxscan340_scan:
    set_addr $I10, rxscan340_loop
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  rxscan340_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_341_fail
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  # rx literal  "CATCH"
    add $I11, rx337_pos, 5
    gt $I11, rx337_eos, rx337_fail
    sub $I11, rx337_pos, rx337_off
    substr $S10, rx337_tgt, $I11, 5
    ne $S10, "CATCH", rx337_fail
    add rx337_pos, 5
    set_addr $I10, rxcap_341_fail
    ($I12, $I11) = rx337_cur."!mark_peek"($I10)
    rx337_cur."!cursor_pos"($I11)
    ($P10) = rx337_cur."!cursor_start"()
    $P10."!cursor_pass"(rx337_pos, "")
    rx337_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_341_done
  rxcap_341_fail:
    goto rx337_fail
  rxcap_341_done:
  # rx charclass s
    ge rx337_pos, rx337_eos, rx337_fail
    sub $I10, rx337_pos, rx337_off
    is_cclass $I11, 32, rx337_tgt, $I10
    unless $I11, rx337_fail
    inc rx337_pos
  # rx subrule "ws" subtype=method negate=
    rx337_cur."!cursor_pos"(rx337_pos)
    $P10 = rx337_cur."ws"()
    unless $P10, rx337_fail
    rx337_pos = $P10."pos"()
  # rx subrule "block" subtype=capture negate=
    rx337_cur."!cursor_pos"(rx337_pos)
    $P10 = rx337_cur."block"()
    unless $P10, rx337_fail
    rx337_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx337_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx337_cur."!cursor_pos"(rx337_pos)
    $P10 = rx337_cur."ws"()
    unless $P10, rx337_fail
    rx337_pos = $P10."pos"()
  # rx pass
    rx337_cur."!cursor_pass"(rx337_pos, "statement_control:sym<CATCH>")
    if_null rx337_debug, debug_533
    rx337_cur."!cursor_debug"("PASS", "statement_control:sym<CATCH>", " at pos=", rx337_pos)
  debug_533:
    .return (rx337_cur)
  rx337_restart:
    if_null rx337_debug, debug_534
    rx337_cur."!cursor_debug"("NEXT", "statement_control:sym<CATCH>")
  debug_534:
  rx337_fail:
    (rx337_rep, rx337_pos, $I10, $P10) = rx337_cur."!mark_fail"(0)
    lt rx337_pos, -1, rx337_done
    eq rx337_pos, -1, rx337_fail
    jump $I10
  rx337_done:
    rx337_cur."!cursor_fail"()
    if_null rx337_debug, debug_535
    rx337_cur."!cursor_debug"("FAIL", "statement_control:sym<CATCH>")
  debug_535:
    .return (rx337_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CATCH>"  :subid("74_1285886565.968") :method
.annotate 'line', 0
    new $P339, "ResizablePMCArray"
    push $P339, "CATCH"
    .return ($P339)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CONTROL>"  :subid("75_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    .local pmc rx345_debug
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    getattribute rx345_debug, rx345_cur, "$!debug"
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
    if_null rx345_debug, debug_536
    rx345_cur."!cursor_debug"("START", "statement_control:sym<CONTROL>")
  debug_536:
    $I10 = self.'from'()
    ne $I10, -1, rxscan348_done
    goto rxscan348_scan
  rxscan348_loop:
    ($P10) = rx345_cur."from"()
    inc $P10
    set rx345_pos, $P10
    ge rx345_pos, rx345_eos, rxscan348_done
  rxscan348_scan:
    set_addr $I10, rxscan348_loop
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxscan348_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_349_fail
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  # rx literal  "CONTROL"
    add $I11, rx345_pos, 7
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I11, 7
    ne $S10, "CONTROL", rx345_fail
    add rx345_pos, 7
    set_addr $I10, rxcap_349_fail
    ($I12, $I11) = rx345_cur."!mark_peek"($I10)
    rx345_cur."!cursor_pos"($I11)
    ($P10) = rx345_cur."!cursor_start"()
    $P10."!cursor_pass"(rx345_pos, "")
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_349_done
  rxcap_349_fail:
    goto rx345_fail
  rxcap_349_done:
  # rx charclass s
    ge rx345_pos, rx345_eos, rx345_fail
    sub $I10, rx345_pos, rx345_off
    is_cclass $I11, 32, rx345_tgt, $I10
    unless $I11, rx345_fail
    inc rx345_pos
  # rx subrule "ws" subtype=method negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."ws"()
    unless $P10, rx345_fail
    rx345_pos = $P10."pos"()
  # rx subrule "block" subtype=capture negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."block"()
    unless $P10, rx345_fail
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx345_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."ws"()
    unless $P10, rx345_fail
    rx345_pos = $P10."pos"()
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "statement_control:sym<CONTROL>")
    if_null rx345_debug, debug_537
    rx345_cur."!cursor_debug"("PASS", "statement_control:sym<CONTROL>", " at pos=", rx345_pos)
  debug_537:
    .return (rx345_cur)
  rx345_restart:
    if_null rx345_debug, debug_538
    rx345_cur."!cursor_debug"("NEXT", "statement_control:sym<CONTROL>")
  debug_538:
  rx345_fail:
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    if_null rx345_debug, debug_539
    rx345_cur."!cursor_debug"("FAIL", "statement_control:sym<CONTROL>")
  debug_539:
    .return (rx345_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CONTROL>"  :subid("76_1285886565.968") :method
.annotate 'line', 0
    new $P347, "ResizablePMCArray"
    push $P347, "CONTROL"
    .return ($P347)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("77_1285886565.968") :method
.annotate 'line', 0
    $P353 = self."!protoregex"("statement_prefix")
    .return ($P353)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("78_1285886565.968") :method
.annotate 'line', 0
    $P355 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P355)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("79_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    .local pmc rx357_debug
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    getattribute rx357_debug, rx357_cur, "$!debug"
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
    if_null rx357_debug, debug_540
    rx357_cur."!cursor_debug"("START", "statement_prefix:sym<INIT>")
  debug_540:
    $I10 = self.'from'()
    ne $I10, -1, rxscan361_done
    goto rxscan361_scan
  rxscan361_loop:
    ($P10) = rx357_cur."from"()
    inc $P10
    set rx357_pos, $P10
    ge rx357_pos, rx357_eos, rxscan361_done
  rxscan361_scan:
    set_addr $I10, rxscan361_loop
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  rxscan361_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_362_fail
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx357_pos, 4
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I11, 4
    ne $S10, "INIT", rx357_fail
    add rx357_pos, 4
    set_addr $I10, rxcap_362_fail
    ($I12, $I11) = rx357_cur."!mark_peek"($I10)
    rx357_cur."!cursor_pos"($I11)
    ($P10) = rx357_cur."!cursor_start"()
    $P10."!cursor_pass"(rx357_pos, "")
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_362_done
  rxcap_362_fail:
    goto rx357_fail
  rxcap_362_done:
  # rx subrule "blorst" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."blorst"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx357_pos = $P10."pos"()
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "statement_prefix:sym<INIT>")
    if_null rx357_debug, debug_541
    rx357_cur."!cursor_debug"("PASS", "statement_prefix:sym<INIT>", " at pos=", rx357_pos)
  debug_541:
    .return (rx357_cur)
  rx357_restart:
    if_null rx357_debug, debug_542
    rx357_cur."!cursor_debug"("NEXT", "statement_prefix:sym<INIT>")
  debug_542:
  rx357_fail:
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    if_null rx357_debug, debug_543
    rx357_cur."!cursor_debug"("FAIL", "statement_prefix:sym<INIT>")
  debug_543:
    .return (rx357_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("80_1285886565.968") :method
.annotate 'line', 0
    $P359 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P360, "ResizablePMCArray"
    push $P360, $P359
    .return ($P360)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<try>"  :subid("81_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx364_tgt
    .local int rx364_pos
    .local int rx364_off
    .local int rx364_eos
    .local int rx364_rep
    .local pmc rx364_cur
    .local pmc rx364_debug
    (rx364_cur, rx364_pos, rx364_tgt, $I10) = self."!cursor_start"()
    getattribute rx364_debug, rx364_cur, "$!debug"
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
    if_null rx364_debug, debug_544
    rx364_cur."!cursor_debug"("START", "statement_prefix:sym<try>")
  debug_544:
    $I10 = self.'from'()
    ne $I10, -1, rxscan368_done
    goto rxscan368_scan
  rxscan368_loop:
    ($P10) = rx364_cur."from"()
    inc $P10
    set rx364_pos, $P10
    ge rx364_pos, rx364_eos, rxscan368_done
  rxscan368_scan:
    set_addr $I10, rxscan368_loop
    rx364_cur."!mark_push"(0, rx364_pos, $I10)
  rxscan368_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_369_fail
    rx364_cur."!mark_push"(0, rx364_pos, $I10)
  # rx literal  "try"
    add $I11, rx364_pos, 3
    gt $I11, rx364_eos, rx364_fail
    sub $I11, rx364_pos, rx364_off
    substr $S10, rx364_tgt, $I11, 3
    ne $S10, "try", rx364_fail
    add rx364_pos, 3
    set_addr $I10, rxcap_369_fail
    ($I12, $I11) = rx364_cur."!mark_peek"($I10)
    rx364_cur."!cursor_pos"($I11)
    ($P10) = rx364_cur."!cursor_start"()
    $P10."!cursor_pass"(rx364_pos, "")
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_369_done
  rxcap_369_fail:
    goto rx364_fail
  rxcap_369_done:
  # rx subrule "blorst" subtype=capture negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."blorst"()
    unless $P10, rx364_fail
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx364_pos = $P10."pos"()
  # rx pass
    rx364_cur."!cursor_pass"(rx364_pos, "statement_prefix:sym<try>")
    if_null rx364_debug, debug_545
    rx364_cur."!cursor_debug"("PASS", "statement_prefix:sym<try>", " at pos=", rx364_pos)
  debug_545:
    .return (rx364_cur)
  rx364_restart:
    if_null rx364_debug, debug_546
    rx364_cur."!cursor_debug"("NEXT", "statement_prefix:sym<try>")
  debug_546:
  rx364_fail:
    (rx364_rep, rx364_pos, $I10, $P10) = rx364_cur."!mark_fail"(0)
    lt rx364_pos, -1, rx364_done
    eq rx364_pos, -1, rx364_fail
    jump $I10
  rx364_done:
    rx364_cur."!cursor_fail"()
    if_null rx364_debug, debug_547
    rx364_cur."!cursor_debug"("FAIL", "statement_prefix:sym<try>")
  debug_547:
    .return (rx364_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<try>"  :subid("82_1285886565.968") :method
.annotate 'line', 0
    $P366 = self."!PREFIX__!subrule"("blorst", "try")
    new $P367, "ResizablePMCArray"
    push $P367, $P366
    .return ($P367)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("83_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx371_tgt
    .local int rx371_pos
    .local int rx371_off
    .local int rx371_eos
    .local int rx371_rep
    .local pmc rx371_cur
    .local pmc rx371_debug
    (rx371_cur, rx371_pos, rx371_tgt, $I10) = self."!cursor_start"()
    getattribute rx371_debug, rx371_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx371_cur
    .local pmc match
    .lex "$/", match
    length rx371_eos, rx371_tgt
    gt rx371_pos, rx371_eos, rx371_done
    set rx371_off, 0
    lt rx371_pos, 2, rx371_start
    sub rx371_off, rx371_pos, 1
    substr rx371_tgt, rx371_tgt, rx371_off
  rx371_start:
    eq $I10, 1, rx371_restart
    if_null rx371_debug, debug_548
    rx371_cur."!cursor_debug"("START", "blorst")
  debug_548:
    $I10 = self.'from'()
    ne $I10, -1, rxscan374_done
    goto rxscan374_scan
  rxscan374_loop:
    ($P10) = rx371_cur."from"()
    inc $P10
    set rx371_pos, $P10
    ge rx371_pos, rx371_eos, rxscan374_done
  rxscan374_scan:
    set_addr $I10, rxscan374_loop
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
  rxscan374_done:
  # rx charclass s
    ge rx371_pos, rx371_eos, rx371_fail
    sub $I10, rx371_pos, rx371_off
    is_cclass $I11, 32, rx371_tgt, $I10
    unless $I11, rx371_fail
    inc rx371_pos
  # rx subrule "ws" subtype=method negate=
    rx371_cur."!cursor_pos"(rx371_pos)
    $P10 = rx371_cur."ws"()
    unless $P10, rx371_fail
    rx371_pos = $P10."pos"()
  alt375_0:
    set_addr $I10, alt375_1
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx371_pos, rx371_eos, rx371_fail
    sub $I10, rx371_pos, rx371_off
    substr $S10, rx371_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx371_fail
  # rx subrule "block" subtype=capture negate=
    rx371_cur."!cursor_pos"(rx371_pos)
    $P10 = rx371_cur."block"()
    unless $P10, rx371_fail
    rx371_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx371_pos = $P10."pos"()
    goto alt375_end
  alt375_1:
  # rx subrule "statement" subtype=capture negate=
    rx371_cur."!cursor_pos"(rx371_pos)
    $P10 = rx371_cur."statement"()
    unless $P10, rx371_fail
    rx371_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx371_pos = $P10."pos"()
  alt375_end:
  # rx pass
    rx371_cur."!cursor_pass"(rx371_pos, "blorst")
    if_null rx371_debug, debug_549
    rx371_cur."!cursor_debug"("PASS", "blorst", " at pos=", rx371_pos)
  debug_549:
    .return (rx371_cur)
  rx371_restart:
    if_null rx371_debug, debug_550
    rx371_cur."!cursor_debug"("NEXT", "blorst")
  debug_550:
  rx371_fail:
    (rx371_rep, rx371_pos, $I10, $P10) = rx371_cur."!mark_fail"(0)
    lt rx371_pos, -1, rx371_done
    eq rx371_pos, -1, rx371_fail
    jump $I10
  rx371_done:
    rx371_cur."!cursor_fail"()
    if_null rx371_debug, debug_551
    rx371_cur."!cursor_debug"("FAIL", "blorst")
  debug_551:
    .return (rx371_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("84_1285886565.968") :method
.annotate 'line', 0
    new $P373, "ResizablePMCArray"
    push $P373, ""
    .return ($P373)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond"  :subid("85_1285886565.968") :method
.annotate 'line', 0
    $P377 = self."!protoregex"("statement_mod_cond")
    .return ($P377)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond"  :subid("86_1285886565.968") :method
.annotate 'line', 0
    $P379 = self."!PREFIX__!protoregex"("statement_mod_cond")
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<if>"  :subid("87_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    .local pmc rx381_debug
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    getattribute rx381_debug, rx381_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx381_cur
    .local pmc match
    .lex "$/", match
    length rx381_eos, rx381_tgt
    gt rx381_pos, rx381_eos, rx381_done
    set rx381_off, 0
    lt rx381_pos, 2, rx381_start
    sub rx381_off, rx381_pos, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
    eq $I10, 1, rx381_restart
    if_null rx381_debug, debug_552
    rx381_cur."!cursor_debug"("START", "statement_mod_cond:sym<if>")
  debug_552:
    $I10 = self.'from'()
    ne $I10, -1, rxscan385_done
    goto rxscan385_scan
  rxscan385_loop:
    ($P10) = rx381_cur."from"()
    inc $P10
    set rx381_pos, $P10
    ge rx381_pos, rx381_eos, rxscan385_done
  rxscan385_scan:
    set_addr $I10, rxscan385_loop
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  rxscan385_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_386_fail
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  # rx literal  "if"
    add $I11, rx381_pos, 2
    gt $I11, rx381_eos, rx381_fail
    sub $I11, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I11, 2
    ne $S10, "if", rx381_fail
    add rx381_pos, 2
    set_addr $I10, rxcap_386_fail
    ($I12, $I11) = rx381_cur."!mark_peek"($I10)
    rx381_cur."!cursor_pos"($I11)
    ($P10) = rx381_cur."!cursor_start"()
    $P10."!cursor_pass"(rx381_pos, "")
    rx381_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_386_done
  rxcap_386_fail:
    goto rx381_fail
  rxcap_386_done:
  # rx subrule "ws" subtype=method negate=
    rx381_cur."!cursor_pos"(rx381_pos)
    $P10 = rx381_cur."ws"()
    unless $P10, rx381_fail
    rx381_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx381_cur."!cursor_pos"(rx381_pos)
    $P10 = rx381_cur."EXPR"()
    unless $P10, rx381_fail
    rx381_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx381_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx381_cur."!cursor_pos"(rx381_pos)
    $P10 = rx381_cur."ws"()
    unless $P10, rx381_fail
    rx381_pos = $P10."pos"()
  # rx pass
    rx381_cur."!cursor_pass"(rx381_pos, "statement_mod_cond:sym<if>")
    if_null rx381_debug, debug_553
    rx381_cur."!cursor_debug"("PASS", "statement_mod_cond:sym<if>", " at pos=", rx381_pos)
  debug_553:
    .return (rx381_cur)
  rx381_restart:
    if_null rx381_debug, debug_554
    rx381_cur."!cursor_debug"("NEXT", "statement_mod_cond:sym<if>")
  debug_554:
  rx381_fail:
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    if_null rx381_debug, debug_555
    rx381_cur."!cursor_debug"("FAIL", "statement_mod_cond:sym<if>")
  debug_555:
    .return (rx381_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<if>"  :subid("88_1285886565.968") :method
.annotate 'line', 0
    $P383 = self."!PREFIX__!subrule"("ws", "if")
    new $P384, "ResizablePMCArray"
    push $P384, $P383
    .return ($P384)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<unless>"  :subid("89_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx390_tgt
    .local int rx390_pos
    .local int rx390_off
    .local int rx390_eos
    .local int rx390_rep
    .local pmc rx390_cur
    .local pmc rx390_debug
    (rx390_cur, rx390_pos, rx390_tgt, $I10) = self."!cursor_start"()
    getattribute rx390_debug, rx390_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx390_cur
    .local pmc match
    .lex "$/", match
    length rx390_eos, rx390_tgt
    gt rx390_pos, rx390_eos, rx390_done
    set rx390_off, 0
    lt rx390_pos, 2, rx390_start
    sub rx390_off, rx390_pos, 1
    substr rx390_tgt, rx390_tgt, rx390_off
  rx390_start:
    eq $I10, 1, rx390_restart
    if_null rx390_debug, debug_556
    rx390_cur."!cursor_debug"("START", "statement_mod_cond:sym<unless>")
  debug_556:
    $I10 = self.'from'()
    ne $I10, -1, rxscan394_done
    goto rxscan394_scan
  rxscan394_loop:
    ($P10) = rx390_cur."from"()
    inc $P10
    set rx390_pos, $P10
    ge rx390_pos, rx390_eos, rxscan394_done
  rxscan394_scan:
    set_addr $I10, rxscan394_loop
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  rxscan394_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_395_fail
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx literal  "unless"
    add $I11, rx390_pos, 6
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 6
    ne $S10, "unless", rx390_fail
    add rx390_pos, 6
    set_addr $I10, rxcap_395_fail
    ($I12, $I11) = rx390_cur."!mark_peek"($I10)
    rx390_cur."!cursor_pos"($I11)
    ($P10) = rx390_cur."!cursor_start"()
    $P10."!cursor_pass"(rx390_pos, "")
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_395_done
  rxcap_395_fail:
    goto rx390_fail
  rxcap_395_done:
  # rx subrule "ws" subtype=method negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."ws"()
    unless $P10, rx390_fail
    rx390_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."EXPR"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx390_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."ws"()
    unless $P10, rx390_fail
    rx390_pos = $P10."pos"()
  # rx pass
    rx390_cur."!cursor_pass"(rx390_pos, "statement_mod_cond:sym<unless>")
    if_null rx390_debug, debug_557
    rx390_cur."!cursor_debug"("PASS", "statement_mod_cond:sym<unless>", " at pos=", rx390_pos)
  debug_557:
    .return (rx390_cur)
  rx390_restart:
    if_null rx390_debug, debug_558
    rx390_cur."!cursor_debug"("NEXT", "statement_mod_cond:sym<unless>")
  debug_558:
  rx390_fail:
    (rx390_rep, rx390_pos, $I10, $P10) = rx390_cur."!mark_fail"(0)
    lt rx390_pos, -1, rx390_done
    eq rx390_pos, -1, rx390_fail
    jump $I10
  rx390_done:
    rx390_cur."!cursor_fail"()
    if_null rx390_debug, debug_559
    rx390_cur."!cursor_debug"("FAIL", "statement_mod_cond:sym<unless>")
  debug_559:
    .return (rx390_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<unless>"  :subid("90_1285886565.968") :method
.annotate 'line', 0
    $P392 = self."!PREFIX__!subrule"("ws", "unless")
    new $P393, "ResizablePMCArray"
    push $P393, $P392
    .return ($P393)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop"  :subid("91_1285886565.968") :method
.annotate 'line', 0
    $P399 = self."!protoregex"("statement_mod_loop")
    .return ($P399)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop"  :subid("92_1285886565.968") :method
.annotate 'line', 0
    $P401 = self."!PREFIX__!protoregex"("statement_mod_loop")
    .return ($P401)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<while>"  :subid("93_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx403_tgt
    .local int rx403_pos
    .local int rx403_off
    .local int rx403_eos
    .local int rx403_rep
    .local pmc rx403_cur
    .local pmc rx403_debug
    (rx403_cur, rx403_pos, rx403_tgt, $I10) = self."!cursor_start"()
    getattribute rx403_debug, rx403_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx403_cur
    .local pmc match
    .lex "$/", match
    length rx403_eos, rx403_tgt
    gt rx403_pos, rx403_eos, rx403_done
    set rx403_off, 0
    lt rx403_pos, 2, rx403_start
    sub rx403_off, rx403_pos, 1
    substr rx403_tgt, rx403_tgt, rx403_off
  rx403_start:
    eq $I10, 1, rx403_restart
    if_null rx403_debug, debug_560
    rx403_cur."!cursor_debug"("START", "statement_mod_loop:sym<while>")
  debug_560:
    $I10 = self.'from'()
    ne $I10, -1, rxscan407_done
    goto rxscan407_scan
  rxscan407_loop:
    ($P10) = rx403_cur."from"()
    inc $P10
    set rx403_pos, $P10
    ge rx403_pos, rx403_eos, rxscan407_done
  rxscan407_scan:
    set_addr $I10, rxscan407_loop
    rx403_cur."!mark_push"(0, rx403_pos, $I10)
  rxscan407_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_408_fail
    rx403_cur."!mark_push"(0, rx403_pos, $I10)
  # rx literal  "while"
    add $I11, rx403_pos, 5
    gt $I11, rx403_eos, rx403_fail
    sub $I11, rx403_pos, rx403_off
    substr $S10, rx403_tgt, $I11, 5
    ne $S10, "while", rx403_fail
    add rx403_pos, 5
    set_addr $I10, rxcap_408_fail
    ($I12, $I11) = rx403_cur."!mark_peek"($I10)
    rx403_cur."!cursor_pos"($I11)
    ($P10) = rx403_cur."!cursor_start"()
    $P10."!cursor_pass"(rx403_pos, "")
    rx403_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_408_done
  rxcap_408_fail:
    goto rx403_fail
  rxcap_408_done:
  # rx subrule "ws" subtype=method negate=
    rx403_cur."!cursor_pos"(rx403_pos)
    $P10 = rx403_cur."ws"()
    unless $P10, rx403_fail
    rx403_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx403_cur."!cursor_pos"(rx403_pos)
    $P10 = rx403_cur."EXPR"()
    unless $P10, rx403_fail
    rx403_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx403_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx403_cur."!cursor_pos"(rx403_pos)
    $P10 = rx403_cur."ws"()
    unless $P10, rx403_fail
    rx403_pos = $P10."pos"()
  # rx pass
    rx403_cur."!cursor_pass"(rx403_pos, "statement_mod_loop:sym<while>")
    if_null rx403_debug, debug_561
    rx403_cur."!cursor_debug"("PASS", "statement_mod_loop:sym<while>", " at pos=", rx403_pos)
  debug_561:
    .return (rx403_cur)
  rx403_restart:
    if_null rx403_debug, debug_562
    rx403_cur."!cursor_debug"("NEXT", "statement_mod_loop:sym<while>")
  debug_562:
  rx403_fail:
    (rx403_rep, rx403_pos, $I10, $P10) = rx403_cur."!mark_fail"(0)
    lt rx403_pos, -1, rx403_done
    eq rx403_pos, -1, rx403_fail
    jump $I10
  rx403_done:
    rx403_cur."!cursor_fail"()
    if_null rx403_debug, debug_563
    rx403_cur."!cursor_debug"("FAIL", "statement_mod_loop:sym<while>")
  debug_563:
    .return (rx403_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<while>"  :subid("94_1285886565.968") :method
.annotate 'line', 0
    $P405 = self."!PREFIX__!subrule"("ws", "while")
    new $P406, "ResizablePMCArray"
    push $P406, $P405
    .return ($P406)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<until>"  :subid("95_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx412_tgt
    .local int rx412_pos
    .local int rx412_off
    .local int rx412_eos
    .local int rx412_rep
    .local pmc rx412_cur
    .local pmc rx412_debug
    (rx412_cur, rx412_pos, rx412_tgt, $I10) = self."!cursor_start"()
    getattribute rx412_debug, rx412_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx412_cur
    .local pmc match
    .lex "$/", match
    length rx412_eos, rx412_tgt
    gt rx412_pos, rx412_eos, rx412_done
    set rx412_off, 0
    lt rx412_pos, 2, rx412_start
    sub rx412_off, rx412_pos, 1
    substr rx412_tgt, rx412_tgt, rx412_off
  rx412_start:
    eq $I10, 1, rx412_restart
    if_null rx412_debug, debug_564
    rx412_cur."!cursor_debug"("START", "statement_mod_loop:sym<until>")
  debug_564:
    $I10 = self.'from'()
    ne $I10, -1, rxscan416_done
    goto rxscan416_scan
  rxscan416_loop:
    ($P10) = rx412_cur."from"()
    inc $P10
    set rx412_pos, $P10
    ge rx412_pos, rx412_eos, rxscan416_done
  rxscan416_scan:
    set_addr $I10, rxscan416_loop
    rx412_cur."!mark_push"(0, rx412_pos, $I10)
  rxscan416_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_417_fail
    rx412_cur."!mark_push"(0, rx412_pos, $I10)
  # rx literal  "until"
    add $I11, rx412_pos, 5
    gt $I11, rx412_eos, rx412_fail
    sub $I11, rx412_pos, rx412_off
    substr $S10, rx412_tgt, $I11, 5
    ne $S10, "until", rx412_fail
    add rx412_pos, 5
    set_addr $I10, rxcap_417_fail
    ($I12, $I11) = rx412_cur."!mark_peek"($I10)
    rx412_cur."!cursor_pos"($I11)
    ($P10) = rx412_cur."!cursor_start"()
    $P10."!cursor_pass"(rx412_pos, "")
    rx412_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_417_done
  rxcap_417_fail:
    goto rx412_fail
  rxcap_417_done:
  # rx subrule "ws" subtype=method negate=
    rx412_cur."!cursor_pos"(rx412_pos)
    $P10 = rx412_cur."ws"()
    unless $P10, rx412_fail
    rx412_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx412_cur."!cursor_pos"(rx412_pos)
    $P10 = rx412_cur."EXPR"()
    unless $P10, rx412_fail
    rx412_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx412_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx412_cur."!cursor_pos"(rx412_pos)
    $P10 = rx412_cur."ws"()
    unless $P10, rx412_fail
    rx412_pos = $P10."pos"()
  # rx pass
    rx412_cur."!cursor_pass"(rx412_pos, "statement_mod_loop:sym<until>")
    if_null rx412_debug, debug_565
    rx412_cur."!cursor_debug"("PASS", "statement_mod_loop:sym<until>", " at pos=", rx412_pos)
  debug_565:
    .return (rx412_cur)
  rx412_restart:
    if_null rx412_debug, debug_566
    rx412_cur."!cursor_debug"("NEXT", "statement_mod_loop:sym<until>")
  debug_566:
  rx412_fail:
    (rx412_rep, rx412_pos, $I10, $P10) = rx412_cur."!mark_fail"(0)
    lt rx412_pos, -1, rx412_done
    eq rx412_pos, -1, rx412_fail
    jump $I10
  rx412_done:
    rx412_cur."!cursor_fail"()
    if_null rx412_debug, debug_567
    rx412_cur."!cursor_debug"("FAIL", "statement_mod_loop:sym<until>")
  debug_567:
    .return (rx412_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<until>"  :subid("96_1285886565.968") :method
.annotate 'line', 0
    $P414 = self."!PREFIX__!subrule"("ws", "until")
    new $P415, "ResizablePMCArray"
    push $P415, $P414
    .return ($P415)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<for>"  :subid("97_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    .local pmc rx421_debug
    (rx421_cur, rx421_pos, rx421_tgt, $I10) = self."!cursor_start"()
    getattribute rx421_debug, rx421_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    gt rx421_pos, rx421_eos, rx421_done
    set rx421_off, 0
    lt rx421_pos, 2, rx421_start
    sub rx421_off, rx421_pos, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
    eq $I10, 1, rx421_restart
    if_null rx421_debug, debug_568
    rx421_cur."!cursor_debug"("START", "statement_mod_loop:sym<for>")
  debug_568:
    $I10 = self.'from'()
    ne $I10, -1, rxscan425_done
    goto rxscan425_scan
  rxscan425_loop:
    ($P10) = rx421_cur."from"()
    inc $P10
    set rx421_pos, $P10
    ge rx421_pos, rx421_eos, rxscan425_done
  rxscan425_scan:
    set_addr $I10, rxscan425_loop
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  rxscan425_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_426_fail
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  # rx literal  "for"
    add $I11, rx421_pos, 3
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 3
    ne $S10, "for", rx421_fail
    add rx421_pos, 3
    set_addr $I10, rxcap_426_fail
    ($I12, $I11) = rx421_cur."!mark_peek"($I10)
    rx421_cur."!cursor_pos"($I11)
    ($P10) = rx421_cur."!cursor_start"()
    $P10."!cursor_pass"(rx421_pos, "")
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_426_done
  rxcap_426_fail:
    goto rx421_fail
  rxcap_426_done:
  # rx subrule "ws" subtype=method negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."ws"()
    unless $P10, rx421_fail
    rx421_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."EXPR"()
    unless $P10, rx421_fail
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx421_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."ws"()
    unless $P10, rx421_fail
    rx421_pos = $P10."pos"()
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "statement_mod_loop:sym<for>")
    if_null rx421_debug, debug_569
    rx421_cur."!cursor_debug"("PASS", "statement_mod_loop:sym<for>", " at pos=", rx421_pos)
  debug_569:
    .return (rx421_cur)
  rx421_restart:
    if_null rx421_debug, debug_570
    rx421_cur."!cursor_debug"("NEXT", "statement_mod_loop:sym<for>")
  debug_570:
  rx421_fail:
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    if_null rx421_debug, debug_571
    rx421_cur."!cursor_debug"("FAIL", "statement_mod_loop:sym<for>")
  debug_571:
    .return (rx421_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<for>"  :subid("98_1285886565.968") :method
.annotate 'line', 0
    $P423 = self."!PREFIX__!subrule"("ws", "for")
    new $P424, "ResizablePMCArray"
    push $P424, $P423
    .return ($P424)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<fatarrow>"  :subid("99_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    .local pmc rx430_debug
    (rx430_cur, rx430_pos, rx430_tgt, $I10) = self."!cursor_start"()
    getattribute rx430_debug, rx430_cur, "$!debug"
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
    if_null rx430_debug, debug_572
    rx430_cur."!cursor_debug"("START", "term:sym<fatarrow>")
  debug_572:
    $I10 = self.'from'()
    ne $I10, -1, rxscan434_done
    goto rxscan434_scan
  rxscan434_loop:
    ($P10) = rx430_cur."from"()
    inc $P10
    set rx430_pos, $P10
    ge rx430_pos, rx430_eos, rxscan434_done
  rxscan434_scan:
    set_addr $I10, rxscan434_loop
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxscan434_done:
  # rx subrule "fatarrow" subtype=capture negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    $P10 = rx430_cur."fatarrow"()
    unless $P10, rx430_fail
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("fatarrow")
    rx430_pos = $P10."pos"()
  # rx pass
    rx430_cur."!cursor_pass"(rx430_pos, "term:sym<fatarrow>")
    if_null rx430_debug, debug_573
    rx430_cur."!cursor_debug"("PASS", "term:sym<fatarrow>", " at pos=", rx430_pos)
  debug_573:
    .return (rx430_cur)
  rx430_restart:
    if_null rx430_debug, debug_574
    rx430_cur."!cursor_debug"("NEXT", "term:sym<fatarrow>")
  debug_574:
  rx430_fail:
    (rx430_rep, rx430_pos, $I10, $P10) = rx430_cur."!mark_fail"(0)
    lt rx430_pos, -1, rx430_done
    eq rx430_pos, -1, rx430_fail
    jump $I10
  rx430_done:
    rx430_cur."!cursor_fail"()
    if_null rx430_debug, debug_575
    rx430_cur."!cursor_debug"("FAIL", "term:sym<fatarrow>")
  debug_575:
    .return (rx430_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<fatarrow>"  :subid("100_1285886565.968") :method
.annotate 'line', 0
    $P432 = self."!PREFIX__!subrule"("fatarrow", "")
    new $P433, "ResizablePMCArray"
    push $P433, $P432
    .return ($P433)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("101_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx436_tgt
    .local int rx436_pos
    .local int rx436_off
    .local int rx436_eos
    .local int rx436_rep
    .local pmc rx436_cur
    .local pmc rx436_debug
    (rx436_cur, rx436_pos, rx436_tgt, $I10) = self."!cursor_start"()
    getattribute rx436_debug, rx436_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx436_cur
    .local pmc match
    .lex "$/", match
    length rx436_eos, rx436_tgt
    gt rx436_pos, rx436_eos, rx436_done
    set rx436_off, 0
    lt rx436_pos, 2, rx436_start
    sub rx436_off, rx436_pos, 1
    substr rx436_tgt, rx436_tgt, rx436_off
  rx436_start:
    eq $I10, 1, rx436_restart
    if_null rx436_debug, debug_576
    rx436_cur."!cursor_debug"("START", "term:sym<colonpair>")
  debug_576:
    $I10 = self.'from'()
    ne $I10, -1, rxscan440_done
    goto rxscan440_scan
  rxscan440_loop:
    ($P10) = rx436_cur."from"()
    inc $P10
    set rx436_pos, $P10
    ge rx436_pos, rx436_eos, rxscan440_done
  rxscan440_scan:
    set_addr $I10, rxscan440_loop
    rx436_cur."!mark_push"(0, rx436_pos, $I10)
  rxscan440_done:
  # rx subrule "colonpair" subtype=capture negate=
    rx436_cur."!cursor_pos"(rx436_pos)
    $P10 = rx436_cur."colonpair"()
    unless $P10, rx436_fail
    rx436_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx436_pos = $P10."pos"()
  # rx pass
    rx436_cur."!cursor_pass"(rx436_pos, "term:sym<colonpair>")
    if_null rx436_debug, debug_577
    rx436_cur."!cursor_debug"("PASS", "term:sym<colonpair>", " at pos=", rx436_pos)
  debug_577:
    .return (rx436_cur)
  rx436_restart:
    if_null rx436_debug, debug_578
    rx436_cur."!cursor_debug"("NEXT", "term:sym<colonpair>")
  debug_578:
  rx436_fail:
    (rx436_rep, rx436_pos, $I10, $P10) = rx436_cur."!mark_fail"(0)
    lt rx436_pos, -1, rx436_done
    eq rx436_pos, -1, rx436_fail
    jump $I10
  rx436_done:
    rx436_cur."!cursor_fail"()
    if_null rx436_debug, debug_579
    rx436_cur."!cursor_debug"("FAIL", "term:sym<colonpair>")
  debug_579:
    .return (rx436_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("102_1285886565.968") :method
.annotate 'line', 0
    $P438 = self."!PREFIX__!subrule"("colonpair", "")
    new $P439, "ResizablePMCArray"
    push $P439, $P438
    .return ($P439)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("103_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx442_tgt
    .local int rx442_pos
    .local int rx442_off
    .local int rx442_eos
    .local int rx442_rep
    .local pmc rx442_cur
    .local pmc rx442_debug
    (rx442_cur, rx442_pos, rx442_tgt, $I10) = self."!cursor_start"()
    getattribute rx442_debug, rx442_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx442_cur
    .local pmc match
    .lex "$/", match
    length rx442_eos, rx442_tgt
    gt rx442_pos, rx442_eos, rx442_done
    set rx442_off, 0
    lt rx442_pos, 2, rx442_start
    sub rx442_off, rx442_pos, 1
    substr rx442_tgt, rx442_tgt, rx442_off
  rx442_start:
    eq $I10, 1, rx442_restart
    if_null rx442_debug, debug_580
    rx442_cur."!cursor_debug"("START", "term:sym<variable>")
  debug_580:
    $I10 = self.'from'()
    ne $I10, -1, rxscan446_done
    goto rxscan446_scan
  rxscan446_loop:
    ($P10) = rx442_cur."from"()
    inc $P10
    set rx442_pos, $P10
    ge rx442_pos, rx442_eos, rxscan446_done
  rxscan446_scan:
    set_addr $I10, rxscan446_loop
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
  rxscan446_done:
  # rx subrule "variable" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."variable"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx442_pos = $P10."pos"()
  # rx pass
    rx442_cur."!cursor_pass"(rx442_pos, "term:sym<variable>")
    if_null rx442_debug, debug_581
    rx442_cur."!cursor_debug"("PASS", "term:sym<variable>", " at pos=", rx442_pos)
  debug_581:
    .return (rx442_cur)
  rx442_restart:
    if_null rx442_debug, debug_582
    rx442_cur."!cursor_debug"("NEXT", "term:sym<variable>")
  debug_582:
  rx442_fail:
    (rx442_rep, rx442_pos, $I10, $P10) = rx442_cur."!mark_fail"(0)
    lt rx442_pos, -1, rx442_done
    eq rx442_pos, -1, rx442_fail
    jump $I10
  rx442_done:
    rx442_cur."!cursor_fail"()
    if_null rx442_debug, debug_583
    rx442_cur."!cursor_debug"("FAIL", "term:sym<variable>")
  debug_583:
    .return (rx442_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("104_1285886565.968") :method
.annotate 'line', 0
    $P444 = self."!PREFIX__!subrule"("variable", "")
    new $P445, "ResizablePMCArray"
    push $P445, $P444
    .return ($P445)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("105_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx448_tgt
    .local int rx448_pos
    .local int rx448_off
    .local int rx448_eos
    .local int rx448_rep
    .local pmc rx448_cur
    .local pmc rx448_debug
    (rx448_cur, rx448_pos, rx448_tgt, $I10) = self."!cursor_start"()
    getattribute rx448_debug, rx448_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx448_cur
    .local pmc match
    .lex "$/", match
    length rx448_eos, rx448_tgt
    gt rx448_pos, rx448_eos, rx448_done
    set rx448_off, 0
    lt rx448_pos, 2, rx448_start
    sub rx448_off, rx448_pos, 1
    substr rx448_tgt, rx448_tgt, rx448_off
  rx448_start:
    eq $I10, 1, rx448_restart
    if_null rx448_debug, debug_584
    rx448_cur."!cursor_debug"("START", "term:sym<package_declarator>")
  debug_584:
    $I10 = self.'from'()
    ne $I10, -1, rxscan452_done
    goto rxscan452_scan
  rxscan452_loop:
    ($P10) = rx448_cur."from"()
    inc $P10
    set rx448_pos, $P10
    ge rx448_pos, rx448_eos, rxscan452_done
  rxscan452_scan:
    set_addr $I10, rxscan452_loop
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  rxscan452_done:
  # rx subrule "package_declarator" subtype=capture negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."package_declarator"()
    unless $P10, rx448_fail
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx448_pos = $P10."pos"()
  # rx pass
    rx448_cur."!cursor_pass"(rx448_pos, "term:sym<package_declarator>")
    if_null rx448_debug, debug_585
    rx448_cur."!cursor_debug"("PASS", "term:sym<package_declarator>", " at pos=", rx448_pos)
  debug_585:
    .return (rx448_cur)
  rx448_restart:
    if_null rx448_debug, debug_586
    rx448_cur."!cursor_debug"("NEXT", "term:sym<package_declarator>")
  debug_586:
  rx448_fail:
    (rx448_rep, rx448_pos, $I10, $P10) = rx448_cur."!mark_fail"(0)
    lt rx448_pos, -1, rx448_done
    eq rx448_pos, -1, rx448_fail
    jump $I10
  rx448_done:
    rx448_cur."!cursor_fail"()
    if_null rx448_debug, debug_587
    rx448_cur."!cursor_debug"("FAIL", "term:sym<package_declarator>")
  debug_587:
    .return (rx448_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("106_1285886565.968") :method
.annotate 'line', 0
    $P450 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P451, "ResizablePMCArray"
    push $P451, $P450
    .return ($P451)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("107_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx454_tgt
    .local int rx454_pos
    .local int rx454_off
    .local int rx454_eos
    .local int rx454_rep
    .local pmc rx454_cur
    .local pmc rx454_debug
    (rx454_cur, rx454_pos, rx454_tgt, $I10) = self."!cursor_start"()
    getattribute rx454_debug, rx454_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx454_cur
    .local pmc match
    .lex "$/", match
    length rx454_eos, rx454_tgt
    gt rx454_pos, rx454_eos, rx454_done
    set rx454_off, 0
    lt rx454_pos, 2, rx454_start
    sub rx454_off, rx454_pos, 1
    substr rx454_tgt, rx454_tgt, rx454_off
  rx454_start:
    eq $I10, 1, rx454_restart
    if_null rx454_debug, debug_588
    rx454_cur."!cursor_debug"("START", "term:sym<scope_declarator>")
  debug_588:
    $I10 = self.'from'()
    ne $I10, -1, rxscan458_done
    goto rxscan458_scan
  rxscan458_loop:
    ($P10) = rx454_cur."from"()
    inc $P10
    set rx454_pos, $P10
    ge rx454_pos, rx454_eos, rxscan458_done
  rxscan458_scan:
    set_addr $I10, rxscan458_loop
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  rxscan458_done:
  # rx subrule "scope_declarator" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."scope_declarator"()
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx454_pos = $P10."pos"()
  # rx pass
    rx454_cur."!cursor_pass"(rx454_pos, "term:sym<scope_declarator>")
    if_null rx454_debug, debug_589
    rx454_cur."!cursor_debug"("PASS", "term:sym<scope_declarator>", " at pos=", rx454_pos)
  debug_589:
    .return (rx454_cur)
  rx454_restart:
    if_null rx454_debug, debug_590
    rx454_cur."!cursor_debug"("NEXT", "term:sym<scope_declarator>")
  debug_590:
  rx454_fail:
    (rx454_rep, rx454_pos, $I10, $P10) = rx454_cur."!mark_fail"(0)
    lt rx454_pos, -1, rx454_done
    eq rx454_pos, -1, rx454_fail
    jump $I10
  rx454_done:
    rx454_cur."!cursor_fail"()
    if_null rx454_debug, debug_591
    rx454_cur."!cursor_debug"("FAIL", "term:sym<scope_declarator>")
  debug_591:
    .return (rx454_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("108_1285886565.968") :method
.annotate 'line', 0
    $P456 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P457, "ResizablePMCArray"
    push $P457, $P456
    .return ($P457)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("109_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx460_tgt
    .local int rx460_pos
    .local int rx460_off
    .local int rx460_eos
    .local int rx460_rep
    .local pmc rx460_cur
    .local pmc rx460_debug
    (rx460_cur, rx460_pos, rx460_tgt, $I10) = self."!cursor_start"()
    getattribute rx460_debug, rx460_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx460_cur
    .local pmc match
    .lex "$/", match
    length rx460_eos, rx460_tgt
    gt rx460_pos, rx460_eos, rx460_done
    set rx460_off, 0
    lt rx460_pos, 2, rx460_start
    sub rx460_off, rx460_pos, 1
    substr rx460_tgt, rx460_tgt, rx460_off
  rx460_start:
    eq $I10, 1, rx460_restart
    if_null rx460_debug, debug_592
    rx460_cur."!cursor_debug"("START", "term:sym<routine_declarator>")
  debug_592:
    $I10 = self.'from'()
    ne $I10, -1, rxscan464_done
    goto rxscan464_scan
  rxscan464_loop:
    ($P10) = rx460_cur."from"()
    inc $P10
    set rx460_pos, $P10
    ge rx460_pos, rx460_eos, rxscan464_done
  rxscan464_scan:
    set_addr $I10, rxscan464_loop
    rx460_cur."!mark_push"(0, rx460_pos, $I10)
  rxscan464_done:
  # rx subrule "routine_declarator" subtype=capture negate=
    rx460_cur."!cursor_pos"(rx460_pos)
    $P10 = rx460_cur."routine_declarator"()
    unless $P10, rx460_fail
    rx460_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx460_pos = $P10."pos"()
  # rx pass
    rx460_cur."!cursor_pass"(rx460_pos, "term:sym<routine_declarator>")
    if_null rx460_debug, debug_593
    rx460_cur."!cursor_debug"("PASS", "term:sym<routine_declarator>", " at pos=", rx460_pos)
  debug_593:
    .return (rx460_cur)
  rx460_restart:
    if_null rx460_debug, debug_594
    rx460_cur."!cursor_debug"("NEXT", "term:sym<routine_declarator>")
  debug_594:
  rx460_fail:
    (rx460_rep, rx460_pos, $I10, $P10) = rx460_cur."!mark_fail"(0)
    lt rx460_pos, -1, rx460_done
    eq rx460_pos, -1, rx460_fail
    jump $I10
  rx460_done:
    rx460_cur."!cursor_fail"()
    if_null rx460_debug, debug_595
    rx460_cur."!cursor_debug"("FAIL", "term:sym<routine_declarator>")
  debug_595:
    .return (rx460_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("110_1285886565.968") :method
.annotate 'line', 0
    $P462 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P463, "ResizablePMCArray"
    push $P463, $P462
    .return ($P463)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<multi_declarator>"  :subid("111_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P471 = "113_1285886565.968" 
    capture_lex $P471
    .local string rx466_tgt
    .local int rx466_pos
    .local int rx466_off
    .local int rx466_eos
    .local int rx466_rep
    .local pmc rx466_cur
    .local pmc rx466_debug
    (rx466_cur, rx466_pos, rx466_tgt, $I10) = self."!cursor_start"()
    getattribute rx466_debug, rx466_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx466_cur
    .local pmc match
    .lex "$/", match
    length rx466_eos, rx466_tgt
    gt rx466_pos, rx466_eos, rx466_done
    set rx466_off, 0
    lt rx466_pos, 2, rx466_start
    sub rx466_off, rx466_pos, 1
    substr rx466_tgt, rx466_tgt, rx466_off
  rx466_start:
    eq $I10, 1, rx466_restart
    if_null rx466_debug, debug_596
    rx466_cur."!cursor_debug"("START", "term:sym<multi_declarator>")
  debug_596:
    $I10 = self.'from'()
    ne $I10, -1, rxscan469_done
    goto rxscan469_scan
  rxscan469_loop:
    ($P10) = rx466_cur."from"()
    inc $P10
    set rx466_pos, $P10
    ge rx466_pos, rx466_eos, rxscan469_done
  rxscan469_scan:
    set_addr $I10, rxscan469_loop
    rx466_cur."!mark_push"(0, rx466_pos, $I10)
  rxscan469_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx466_cur."!cursor_pos"(rx466_pos)
    .const 'Sub' $P471 = "113_1285886565.968" 
    capture_lex $P471
    $P10 = rx466_cur."before"($P471)
    unless $P10, rx466_fail
  # rx subrule "multi_declarator" subtype=capture negate=
    rx466_cur."!cursor_pos"(rx466_pos)
    $P10 = rx466_cur."multi_declarator"()
    unless $P10, rx466_fail
    rx466_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("multi_declarator")
    rx466_pos = $P10."pos"()
  # rx pass
    rx466_cur."!cursor_pass"(rx466_pos, "term:sym<multi_declarator>")
    if_null rx466_debug, debug_601
    rx466_cur."!cursor_debug"("PASS", "term:sym<multi_declarator>", " at pos=", rx466_pos)
  debug_601:
    .return (rx466_cur)
  rx466_restart:
    if_null rx466_debug, debug_602
    rx466_cur."!cursor_debug"("NEXT", "term:sym<multi_declarator>")
  debug_602:
  rx466_fail:
    (rx466_rep, rx466_pos, $I10, $P10) = rx466_cur."!mark_fail"(0)
    lt rx466_pos, -1, rx466_done
    eq rx466_pos, -1, rx466_fail
    jump $I10
  rx466_done:
    rx466_cur."!cursor_fail"()
    if_null rx466_debug, debug_603
    rx466_cur."!cursor_debug"("FAIL", "term:sym<multi_declarator>")
  debug_603:
    .return (rx466_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<multi_declarator>"  :subid("112_1285886565.968") :method
.annotate 'line', 0
    new $P468, "ResizablePMCArray"
    push $P468, ""
    .return ($P468)
.end


.namespace ["NQP";"Grammar"]
.sub "_block470"  :anon :subid("113_1285886565.968") :method :outer("111_1285886565.968")
.annotate 'line', 0
    .local string rx472_tgt
    .local int rx472_pos
    .local int rx472_off
    .local int rx472_eos
    .local int rx472_rep
    .local pmc rx472_cur
    .local pmc rx472_debug
    (rx472_cur, rx472_pos, rx472_tgt, $I10) = self."!cursor_start"()
    getattribute rx472_debug, rx472_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx472_cur
    .local pmc match
    .lex "$/", match
    length rx472_eos, rx472_tgt
    gt rx472_pos, rx472_eos, rx472_done
    set rx472_off, 0
    lt rx472_pos, 2, rx472_start
    sub rx472_off, rx472_pos, 1
    substr rx472_tgt, rx472_tgt, rx472_off
  rx472_start:
    eq $I10, 1, rx472_restart
    if_null rx472_debug, debug_597
    rx472_cur."!cursor_debug"("START", "")
  debug_597:
    $I10 = self.'from'()
    ne $I10, -1, rxscan473_done
    goto rxscan473_scan
  rxscan473_loop:
    ($P10) = rx472_cur."from"()
    inc $P10
    set rx472_pos, $P10
    ge rx472_pos, rx472_eos, rxscan473_done
  rxscan473_scan:
    set_addr $I10, rxscan473_loop
    rx472_cur."!mark_push"(0, rx472_pos, $I10)
  rxscan473_done:
  alt474_0:
    set_addr $I10, alt474_1
    rx472_cur."!mark_push"(0, rx472_pos, $I10)
  # rx literal  "multi"
    add $I11, rx472_pos, 5
    gt $I11, rx472_eos, rx472_fail
    sub $I11, rx472_pos, rx472_off
    substr $S10, rx472_tgt, $I11, 5
    ne $S10, "multi", rx472_fail
    add rx472_pos, 5
    goto alt474_end
  alt474_1:
    set_addr $I10, alt474_2
    rx472_cur."!mark_push"(0, rx472_pos, $I10)
  # rx literal  "proto"
    add $I11, rx472_pos, 5
    gt $I11, rx472_eos, rx472_fail
    sub $I11, rx472_pos, rx472_off
    substr $S10, rx472_tgt, $I11, 5
    ne $S10, "proto", rx472_fail
    add rx472_pos, 5
    goto alt474_end
  alt474_2:
  # rx literal  "only"
    add $I11, rx472_pos, 4
    gt $I11, rx472_eos, rx472_fail
    sub $I11, rx472_pos, rx472_off
    substr $S10, rx472_tgt, $I11, 4
    ne $S10, "only", rx472_fail
    add rx472_pos, 4
  alt474_end:
  # rx pass
    rx472_cur."!cursor_pass"(rx472_pos, "")
    if_null rx472_debug, debug_598
    rx472_cur."!cursor_debug"("PASS", "", " at pos=", rx472_pos)
  debug_598:
    .return (rx472_cur)
  rx472_restart:
    if_null rx472_debug, debug_599
    rx472_cur."!cursor_debug"("NEXT", "")
  debug_599:
  rx472_fail:
    (rx472_rep, rx472_pos, $I10, $P10) = rx472_cur."!mark_fail"(0)
    lt rx472_pos, -1, rx472_done
    eq rx472_pos, -1, rx472_fail
    jump $I10
  rx472_done:
    rx472_cur."!cursor_fail"()
    if_null rx472_debug, debug_600
    rx472_cur."!cursor_debug"("FAIL", "")
  debug_600:
    .return (rx472_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("114_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx476_tgt
    .local int rx476_pos
    .local int rx476_off
    .local int rx476_eos
    .local int rx476_rep
    .local pmc rx476_cur
    .local pmc rx476_debug
    (rx476_cur, rx476_pos, rx476_tgt, $I10) = self."!cursor_start"()
    getattribute rx476_debug, rx476_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx476_cur
    .local pmc match
    .lex "$/", match
    length rx476_eos, rx476_tgt
    gt rx476_pos, rx476_eos, rx476_done
    set rx476_off, 0
    lt rx476_pos, 2, rx476_start
    sub rx476_off, rx476_pos, 1
    substr rx476_tgt, rx476_tgt, rx476_off
  rx476_start:
    eq $I10, 1, rx476_restart
    if_null rx476_debug, debug_604
    rx476_cur."!cursor_debug"("START", "term:sym<regex_declarator>")
  debug_604:
    $I10 = self.'from'()
    ne $I10, -1, rxscan480_done
    goto rxscan480_scan
  rxscan480_loop:
    ($P10) = rx476_cur."from"()
    inc $P10
    set rx476_pos, $P10
    ge rx476_pos, rx476_eos, rxscan480_done
  rxscan480_scan:
    set_addr $I10, rxscan480_loop
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  rxscan480_done:
  # rx subrule "regex_declarator" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."regex_declarator"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx476_pos = $P10."pos"()
  # rx pass
    rx476_cur."!cursor_pass"(rx476_pos, "term:sym<regex_declarator>")
    if_null rx476_debug, debug_605
    rx476_cur."!cursor_debug"("PASS", "term:sym<regex_declarator>", " at pos=", rx476_pos)
  debug_605:
    .return (rx476_cur)
  rx476_restart:
    if_null rx476_debug, debug_606
    rx476_cur."!cursor_debug"("NEXT", "term:sym<regex_declarator>")
  debug_606:
  rx476_fail:
    (rx476_rep, rx476_pos, $I10, $P10) = rx476_cur."!mark_fail"(0)
    lt rx476_pos, -1, rx476_done
    eq rx476_pos, -1, rx476_fail
    jump $I10
  rx476_done:
    rx476_cur."!cursor_fail"()
    if_null rx476_debug, debug_607
    rx476_cur."!cursor_debug"("FAIL", "term:sym<regex_declarator>")
  debug_607:
    .return (rx476_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("115_1285886565.968") :method
.annotate 'line', 0
    $P478 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P479, "ResizablePMCArray"
    push $P479, $P478
    .return ($P479)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("116_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx482_tgt
    .local int rx482_pos
    .local int rx482_off
    .local int rx482_eos
    .local int rx482_rep
    .local pmc rx482_cur
    .local pmc rx482_debug
    (rx482_cur, rx482_pos, rx482_tgt, $I10) = self."!cursor_start"()
    getattribute rx482_debug, rx482_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx482_cur
    .local pmc match
    .lex "$/", match
    length rx482_eos, rx482_tgt
    gt rx482_pos, rx482_eos, rx482_done
    set rx482_off, 0
    lt rx482_pos, 2, rx482_start
    sub rx482_off, rx482_pos, 1
    substr rx482_tgt, rx482_tgt, rx482_off
  rx482_start:
    eq $I10, 1, rx482_restart
    if_null rx482_debug, debug_608
    rx482_cur."!cursor_debug"("START", "term:sym<statement_prefix>")
  debug_608:
    $I10 = self.'from'()
    ne $I10, -1, rxscan486_done
    goto rxscan486_scan
  rxscan486_loop:
    ($P10) = rx482_cur."from"()
    inc $P10
    set rx482_pos, $P10
    ge rx482_pos, rx482_eos, rxscan486_done
  rxscan486_scan:
    set_addr $I10, rxscan486_loop
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
  rxscan486_done:
  # rx subrule "statement_prefix" subtype=capture negate=
    rx482_cur."!cursor_pos"(rx482_pos)
    $P10 = rx482_cur."statement_prefix"()
    unless $P10, rx482_fail
    rx482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx482_pos = $P10."pos"()
  # rx pass
    rx482_cur."!cursor_pass"(rx482_pos, "term:sym<statement_prefix>")
    if_null rx482_debug, debug_609
    rx482_cur."!cursor_debug"("PASS", "term:sym<statement_prefix>", " at pos=", rx482_pos)
  debug_609:
    .return (rx482_cur)
  rx482_restart:
    if_null rx482_debug, debug_610
    rx482_cur."!cursor_debug"("NEXT", "term:sym<statement_prefix>")
  debug_610:
  rx482_fail:
    (rx482_rep, rx482_pos, $I10, $P10) = rx482_cur."!mark_fail"(0)
    lt rx482_pos, -1, rx482_done
    eq rx482_pos, -1, rx482_fail
    jump $I10
  rx482_done:
    rx482_cur."!cursor_fail"()
    if_null rx482_debug, debug_611
    rx482_cur."!cursor_debug"("FAIL", "term:sym<statement_prefix>")
  debug_611:
    .return (rx482_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("117_1285886565.968") :method
.annotate 'line', 0
    $P484 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P485, "ResizablePMCArray"
    push $P485, $P484
    .return ($P485)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<lambda>"  :subid("118_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx488_tgt
    .local int rx488_pos
    .local int rx488_off
    .local int rx488_eos
    .local int rx488_rep
    .local pmc rx488_cur
    .local pmc rx488_debug
    (rx488_cur, rx488_pos, rx488_tgt, $I10) = self."!cursor_start"()
    getattribute rx488_debug, rx488_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx488_cur
    .local pmc match
    .lex "$/", match
    length rx488_eos, rx488_tgt
    gt rx488_pos, rx488_eos, rx488_done
    set rx488_off, 0
    lt rx488_pos, 2, rx488_start
    sub rx488_off, rx488_pos, 1
    substr rx488_tgt, rx488_tgt, rx488_off
  rx488_start:
    eq $I10, 1, rx488_restart
    if_null rx488_debug, debug_612
    rx488_cur."!cursor_debug"("START", "term:sym<lambda>")
  debug_612:
    $I10 = self.'from'()
    ne $I10, -1, rxscan491_done
    goto rxscan491_scan
  rxscan491_loop:
    ($P10) = rx488_cur."from"()
    inc $P10
    set rx488_pos, $P10
    ge rx488_pos, rx488_eos, rxscan491_done
  rxscan491_scan:
    set_addr $I10, rxscan491_loop
    rx488_cur."!mark_push"(0, rx488_pos, $I10)
  rxscan491_done:
  # rx subrule "lambda" subtype=zerowidth negate=
    rx488_cur."!cursor_pos"(rx488_pos)
    $P10 = rx488_cur."lambda"()
    unless $P10, rx488_fail
  # rx subrule "pblock" subtype=capture negate=
    rx488_cur."!cursor_pos"(rx488_pos)
    $P10 = rx488_cur."pblock"()
    unless $P10, rx488_fail
    rx488_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx488_pos = $P10."pos"()
  # rx pass
    rx488_cur."!cursor_pass"(rx488_pos, "term:sym<lambda>")
    if_null rx488_debug, debug_613
    rx488_cur."!cursor_debug"("PASS", "term:sym<lambda>", " at pos=", rx488_pos)
  debug_613:
    .return (rx488_cur)
  rx488_restart:
    if_null rx488_debug, debug_614
    rx488_cur."!cursor_debug"("NEXT", "term:sym<lambda>")
  debug_614:
  rx488_fail:
    (rx488_rep, rx488_pos, $I10, $P10) = rx488_cur."!mark_fail"(0)
    lt rx488_pos, -1, rx488_done
    eq rx488_pos, -1, rx488_fail
    jump $I10
  rx488_done:
    rx488_cur."!cursor_fail"()
    if_null rx488_debug, debug_615
    rx488_cur."!cursor_debug"("FAIL", "term:sym<lambda>")
  debug_615:
    .return (rx488_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<lambda>"  :subid("119_1285886565.968") :method
.annotate 'line', 0
    new $P490, "ResizablePMCArray"
    push $P490, ""
    .return ($P490)
.end


.namespace ["NQP";"Grammar"]
.sub "fatarrow"  :subid("120_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx493_tgt
    .local int rx493_pos
    .local int rx493_off
    .local int rx493_eos
    .local int rx493_rep
    .local pmc rx493_cur
    .local pmc rx493_debug
    (rx493_cur, rx493_pos, rx493_tgt, $I10) = self."!cursor_start"()
    getattribute rx493_debug, rx493_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx493_cur
    .local pmc match
    .lex "$/", match
    length rx493_eos, rx493_tgt
    gt rx493_pos, rx493_eos, rx493_done
    set rx493_off, 0
    lt rx493_pos, 2, rx493_start
    sub rx493_off, rx493_pos, 1
    substr rx493_tgt, rx493_tgt, rx493_off
  rx493_start:
    eq $I10, 1, rx493_restart
    if_null rx493_debug, debug_616
    rx493_cur."!cursor_debug"("START", "fatarrow")
  debug_616:
    $I10 = self.'from'()
    ne $I10, -1, rxscan497_done
    goto rxscan497_scan
  rxscan497_loop:
    ($P10) = rx493_cur."from"()
    inc $P10
    set rx493_pos, $P10
    ge rx493_pos, rx493_eos, rxscan497_done
  rxscan497_scan:
    set_addr $I10, rxscan497_loop
    rx493_cur."!mark_push"(0, rx493_pos, $I10)
  rxscan497_done:
  # rx subrule "identifier" subtype=capture negate=
    rx493_cur."!cursor_pos"(rx493_pos)
    $P10 = rx493_cur."identifier"()
    unless $P10, rx493_fail
    rx493_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    rx493_pos = $P10."pos"()
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx493_pos, rx493_off
    set rx493_rep, 0
    sub $I12, rx493_eos, rx493_pos
  rxenumcharlistq498_loop:
    le $I12, 0, rxenumcharlistq498_done
    substr $S10, rx493_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq498_done
    inc rx493_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq498_loop
  rxenumcharlistq498_done:
    add rx493_pos, rx493_pos, rx493_rep
  # rx literal  "=>"
    add $I11, rx493_pos, 2
    gt $I11, rx493_eos, rx493_fail
    sub $I11, rx493_pos, rx493_off
    substr $S10, rx493_tgt, $I11, 2
    ne $S10, "=>", rx493_fail
    add rx493_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx493_cur."!cursor_pos"(rx493_pos)
    $P10 = rx493_cur."ws"()
    unless $P10, rx493_fail
    rx493_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx493_cur."!cursor_pos"(rx493_pos)
    $P10 = rx493_cur."EXPR"("i=")
    unless $P10, rx493_fail
    rx493_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    rx493_pos = $P10."pos"()
  # rx pass
    rx493_cur."!cursor_pass"(rx493_pos, "fatarrow")
    if_null rx493_debug, debug_617
    rx493_cur."!cursor_debug"("PASS", "fatarrow", " at pos=", rx493_pos)
  debug_617:
    .return (rx493_cur)
  rx493_restart:
    if_null rx493_debug, debug_618
    rx493_cur."!cursor_debug"("NEXT", "fatarrow")
  debug_618:
  rx493_fail:
    (rx493_rep, rx493_pos, $I10, $P10) = rx493_cur."!mark_fail"(0)
    lt rx493_pos, -1, rx493_done
    eq rx493_pos, -1, rx493_fail
    jump $I10
  rx493_done:
    rx493_cur."!cursor_fail"()
    if_null rx493_debug, debug_619
    rx493_cur."!cursor_debug"("FAIL", "fatarrow")
  debug_619:
    .return (rx493_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__fatarrow"  :subid("121_1285886565.968") :method
.annotate 'line', 0
    $P495 = self."!PREFIX__!subrule"("identifier", "")
    new $P496, "ResizablePMCArray"
    push $P496, $P495
    .return ($P496)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("122_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx500_tgt
    .local int rx500_pos
    .local int rx500_off
    .local int rx500_eos
    .local int rx500_rep
    .local pmc rx500_cur
    .local pmc rx500_debug
    (rx500_cur, rx500_pos, rx500_tgt, $I10) = self."!cursor_start"()
    rx500_cur."!cursor_caparray"("circumfix")
    getattribute rx500_debug, rx500_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx500_cur
    .local pmc match
    .lex "$/", match
    length rx500_eos, rx500_tgt
    gt rx500_pos, rx500_eos, rx500_done
    set rx500_off, 0
    lt rx500_pos, 2, rx500_start
    sub rx500_off, rx500_pos, 1
    substr rx500_tgt, rx500_tgt, rx500_off
  rx500_start:
    eq $I10, 1, rx500_restart
    if_null rx500_debug, debug_620
    rx500_cur."!cursor_debug"("START", "colonpair")
  debug_620:
    $I10 = self.'from'()
    ne $I10, -1, rxscan506_done
    goto rxscan506_scan
  rxscan506_loop:
    ($P10) = rx500_cur."from"()
    inc $P10
    set rx500_pos, $P10
    ge rx500_pos, rx500_eos, rxscan506_done
  rxscan506_scan:
    set_addr $I10, rxscan506_loop
    rx500_cur."!mark_push"(0, rx500_pos, $I10)
  rxscan506_done:
  # rx literal  ":"
    add $I11, rx500_pos, 1
    gt $I11, rx500_eos, rx500_fail
    sub $I11, rx500_pos, rx500_off
    ord $I11, rx500_tgt, $I11
    ne $I11, 58, rx500_fail
    add rx500_pos, 1
  alt507_0:
    set_addr $I10, alt507_1
    rx500_cur."!mark_push"(0, rx500_pos, $I10)
  # rx subcapture "not"
    set_addr $I10, rxcap_508_fail
    rx500_cur."!mark_push"(0, rx500_pos, $I10)
  # rx literal  "!"
    add $I11, rx500_pos, 1
    gt $I11, rx500_eos, rx500_fail
    sub $I11, rx500_pos, rx500_off
    ord $I11, rx500_tgt, $I11
    ne $I11, 33, rx500_fail
    add rx500_pos, 1
    set_addr $I10, rxcap_508_fail
    ($I12, $I11) = rx500_cur."!mark_peek"($I10)
    rx500_cur."!cursor_pos"($I11)
    ($P10) = rx500_cur."!cursor_start"()
    $P10."!cursor_pass"(rx500_pos, "")
    rx500_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_508_done
  rxcap_508_fail:
    goto rx500_fail
  rxcap_508_done:
  # rx subrule "identifier" subtype=capture negate=
    rx500_cur."!cursor_pos"(rx500_pos)
    $P10 = rx500_cur."identifier"()
    unless $P10, rx500_fail
    rx500_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx500_pos = $P10."pos"()
    goto alt507_end
  alt507_1:
    set_addr $I10, alt507_2
    rx500_cur."!mark_push"(0, rx500_pos, $I10)
  # rx subrule "identifier" subtype=capture negate=
    rx500_cur."!cursor_pos"(rx500_pos)
    $P10 = rx500_cur."identifier"()
    unless $P10, rx500_fail
    rx500_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx500_pos = $P10."pos"()
  # rx rxquantr509 ** 0..1
    set_addr $I10, rxquantr509_done
    rx500_cur."!mark_push"(0, rx500_pos, $I10)
  rxquantr509_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx500_cur."!cursor_pos"(rx500_pos)
    $P10 = rx500_cur."circumfix"()
    unless $P10, rx500_fail
    goto rxsubrule510_pass
  rxsubrule510_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx500_fail
  rxsubrule510_pass:
    set_addr $I10, rxsubrule510_back
    rx500_cur."!mark_push"(0, rx500_pos, $I10, $P10)
    $P10."!cursor_names"("circumfix")
    rx500_pos = $P10."pos"()
    set_addr $I10, rxquantr509_done
    (rx500_rep) = rx500_cur."!mark_commit"($I10)
  rxquantr509_done:
    goto alt507_end
  alt507_2:
  # rx subrule "circumfix" subtype=capture negate=
    rx500_cur."!cursor_pos"(rx500_pos)
    $P10 = rx500_cur."circumfix"()
    unless $P10, rx500_fail
    rx500_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx500_pos = $P10."pos"()
  alt507_end:
  # rx pass
    rx500_cur."!cursor_pass"(rx500_pos, "colonpair")
    if_null rx500_debug, debug_621
    rx500_cur."!cursor_debug"("PASS", "colonpair", " at pos=", rx500_pos)
  debug_621:
    .return (rx500_cur)
  rx500_restart:
    if_null rx500_debug, debug_622
    rx500_cur."!cursor_debug"("NEXT", "colonpair")
  debug_622:
  rx500_fail:
    (rx500_rep, rx500_pos, $I10, $P10) = rx500_cur."!mark_fail"(0)
    lt rx500_pos, -1, rx500_done
    eq rx500_pos, -1, rx500_fail
    jump $I10
  rx500_done:
    rx500_cur."!cursor_fail"()
    if_null rx500_debug, debug_623
    rx500_cur."!cursor_debug"("FAIL", "colonpair")
  debug_623:
    .return (rx500_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("123_1285886565.968") :method
.annotate 'line', 0
    $P502 = self."!PREFIX__!subrule"("circumfix", ":")
    $P503 = self."!PREFIX__!subrule"("identifier", ":")
    $P504 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P505, "ResizablePMCArray"
    push $P505, $P502
    push $P505, $P503
    push $P505, $P504
    .return ($P505)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("124_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx512_tgt
    .local int rx512_pos
    .local int rx512_off
    .local int rx512_eos
    .local int rx512_rep
    .local pmc rx512_cur
    .local pmc rx512_debug
    (rx512_cur, rx512_pos, rx512_tgt, $I10) = self."!cursor_start"()
    rx512_cur."!cursor_caparray"("twigil")
    getattribute rx512_debug, rx512_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx512_cur
    .local pmc match
    .lex "$/", match
    length rx512_eos, rx512_tgt
    gt rx512_pos, rx512_eos, rx512_done
    set rx512_off, 0
    lt rx512_pos, 2, rx512_start
    sub rx512_off, rx512_pos, 1
    substr rx512_tgt, rx512_tgt, rx512_off
  rx512_start:
    eq $I10, 1, rx512_restart
    if_null rx512_debug, debug_624
    rx512_cur."!cursor_debug"("START", "variable")
  debug_624:
    $I10 = self.'from'()
    ne $I10, -1, rxscan517_done
    goto rxscan517_scan
  rxscan517_loop:
    ($P10) = rx512_cur."from"()
    inc $P10
    set rx512_pos, $P10
    ge rx512_pos, rx512_eos, rxscan517_done
  rxscan517_scan:
    set_addr $I10, rxscan517_loop
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  rxscan517_done:
  alt518_0:
    set_addr $I10, alt518_1
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  # rx subrule "sigil" subtype=capture negate=
    rx512_cur."!cursor_pos"(rx512_pos)
    $P10 = rx512_cur."sigil"()
    unless $P10, rx512_fail
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx512_pos = $P10."pos"()
  # rx rxquantr519 ** 0..1
    set_addr $I10, rxquantr519_done
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  rxquantr519_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx512_cur."!cursor_pos"(rx512_pos)
    $P10 = rx512_cur."twigil"()
    unless $P10, rx512_fail
    goto rxsubrule520_pass
  rxsubrule520_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx512_fail
  rxsubrule520_pass:
    set_addr $I10, rxsubrule520_back
    rx512_cur."!mark_push"(0, rx512_pos, $I10, $P10)
    $P10."!cursor_names"("twigil")
    rx512_pos = $P10."pos"()
    set_addr $I10, rxquantr519_done
    (rx512_rep) = rx512_cur."!mark_commit"($I10)
  rxquantr519_done:
  # rx subrule "name" subtype=capture negate=
    rx512_cur."!cursor_pos"(rx512_pos)
    $P10 = rx512_cur."name"()
    unless $P10, rx512_fail
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx512_pos = $P10."pos"()
    goto alt518_end
  alt518_1:
    set_addr $I10, alt518_2
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  # rx subrule "sigil" subtype=capture negate=
    rx512_cur."!cursor_pos"(rx512_pos)
    $P10 = rx512_cur."sigil"()
    unless $P10, rx512_fail
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx512_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx512_pos, rx512_eos, rx512_fail
    sub $I10, rx512_pos, rx512_off
    substr $S10, rx512_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx512_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx512_cur."!cursor_pos"(rx512_pos)
    $P10 = rx512_cur."postcircumfix"()
    unless $P10, rx512_fail
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx512_pos = $P10."pos"()
    goto alt518_end
  alt518_2:
  # rx subcapture "sigil"
    set_addr $I10, rxcap_521_fail
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  # rx literal  "$"
    add $I11, rx512_pos, 1
    gt $I11, rx512_eos, rx512_fail
    sub $I11, rx512_pos, rx512_off
    ord $I11, rx512_tgt, $I11
    ne $I11, 36, rx512_fail
    add rx512_pos, 1
    set_addr $I10, rxcap_521_fail
    ($I12, $I11) = rx512_cur."!mark_peek"($I10)
    rx512_cur."!cursor_pos"($I11)
    ($P10) = rx512_cur."!cursor_start"()
    $P10."!cursor_pass"(rx512_pos, "")
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_521_done
  rxcap_521_fail:
    goto rx512_fail
  rxcap_521_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_522_fail
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx512_pos, rx512_eos, rx512_fail
    sub $I10, rx512_pos, rx512_off
    substr $S10, rx512_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx512_fail
    inc rx512_pos
    set_addr $I10, rxcap_522_fail
    ($I12, $I11) = rx512_cur."!mark_peek"($I10)
    rx512_cur."!cursor_pos"($I11)
    ($P10) = rx512_cur."!cursor_start"()
    $P10."!cursor_pass"(rx512_pos, "")
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_522_done
  rxcap_522_fail:
    goto rx512_fail
  rxcap_522_done:
  alt518_end:
  # rx pass
    rx512_cur."!cursor_pass"(rx512_pos, "variable")
    if_null rx512_debug, debug_625
    rx512_cur."!cursor_debug"("PASS", "variable", " at pos=", rx512_pos)
  debug_625:
    .return (rx512_cur)
  rx512_restart:
    if_null rx512_debug, debug_626
    rx512_cur."!cursor_debug"("NEXT", "variable")
  debug_626:
  rx512_fail:
    (rx512_rep, rx512_pos, $I10, $P10) = rx512_cur."!mark_fail"(0)
    lt rx512_pos, -1, rx512_done
    eq rx512_pos, -1, rx512_fail
    jump $I10
  rx512_done:
    rx512_cur."!cursor_fail"()
    if_null rx512_debug, debug_627
    rx512_cur."!cursor_debug"("FAIL", "variable")
  debug_627:
    .return (rx512_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("125_1285886565.968") :method
.annotate 'line', 0
    $P514 = self."!PREFIX__!subrule"("sigil", "")
    $P515 = self."!PREFIX__!subrule"("sigil", "")
    new $P516, "ResizablePMCArray"
    push $P516, "$!"
    push $P516, "$_"
    push $P516, "$/"
    push $P516, $P514
    push $P516, $P515
    .return ($P516)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("126_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx524_tgt
    .local int rx524_pos
    .local int rx524_off
    .local int rx524_eos
    .local int rx524_rep
    .local pmc rx524_cur
    .local pmc rx524_debug
    (rx524_cur, rx524_pos, rx524_tgt, $I10) = self."!cursor_start"()
    getattribute rx524_debug, rx524_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx524_cur
    .local pmc match
    .lex "$/", match
    length rx524_eos, rx524_tgt
    gt rx524_pos, rx524_eos, rx524_done
    set rx524_off, 0
    lt rx524_pos, 2, rx524_start
    sub rx524_off, rx524_pos, 1
    substr rx524_tgt, rx524_tgt, rx524_off
  rx524_start:
    eq $I10, 1, rx524_restart
    if_null rx524_debug, debug_628
    rx524_cur."!cursor_debug"("START", "sigil")
  debug_628:
    $I10 = self.'from'()
    ne $I10, -1, rxscan527_done
    goto rxscan527_scan
  rxscan527_loop:
    ($P10) = rx524_cur."from"()
    inc $P10
    set rx524_pos, $P10
    ge rx524_pos, rx524_eos, rxscan527_done
  rxscan527_scan:
    set_addr $I10, rxscan527_loop
    rx524_cur."!mark_push"(0, rx524_pos, $I10)
  rxscan527_done:
  # rx enumcharlist negate=0 
    ge rx524_pos, rx524_eos, rx524_fail
    sub $I10, rx524_pos, rx524_off
    substr $S10, rx524_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx524_fail
    inc rx524_pos
  # rx pass
    rx524_cur."!cursor_pass"(rx524_pos, "sigil")
    if_null rx524_debug, debug_629
    rx524_cur."!cursor_debug"("PASS", "sigil", " at pos=", rx524_pos)
  debug_629:
    .return (rx524_cur)
  rx524_restart:
    if_null rx524_debug, debug_630
    rx524_cur."!cursor_debug"("NEXT", "sigil")
  debug_630:
  rx524_fail:
    (rx524_rep, rx524_pos, $I10, $P10) = rx524_cur."!mark_fail"(0)
    lt rx524_pos, -1, rx524_done
    eq rx524_pos, -1, rx524_fail
    jump $I10
  rx524_done:
    rx524_cur."!cursor_fail"()
    if_null rx524_debug, debug_631
    rx524_cur."!cursor_debug"("FAIL", "sigil")
  debug_631:
    .return (rx524_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("127_1285886565.968") :method
.annotate 'line', 0
    new $P526, "ResizablePMCArray"
    push $P526, "&"
    push $P526, "%"
    push $P526, "@"
    push $P526, "$"
    .return ($P526)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("128_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx529_tgt
    .local int rx529_pos
    .local int rx529_off
    .local int rx529_eos
    .local int rx529_rep
    .local pmc rx529_cur
    .local pmc rx529_debug
    (rx529_cur, rx529_pos, rx529_tgt, $I10) = self."!cursor_start"()
    getattribute rx529_debug, rx529_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx529_cur
    .local pmc match
    .lex "$/", match
    length rx529_eos, rx529_tgt
    gt rx529_pos, rx529_eos, rx529_done
    set rx529_off, 0
    lt rx529_pos, 2, rx529_start
    sub rx529_off, rx529_pos, 1
    substr rx529_tgt, rx529_tgt, rx529_off
  rx529_start:
    eq $I10, 1, rx529_restart
    if_null rx529_debug, debug_632
    rx529_cur."!cursor_debug"("START", "twigil")
  debug_632:
    $I10 = self.'from'()
    ne $I10, -1, rxscan532_done
    goto rxscan532_scan
  rxscan532_loop:
    ($P10) = rx529_cur."from"()
    inc $P10
    set rx529_pos, $P10
    ge rx529_pos, rx529_eos, rxscan532_done
  rxscan532_scan:
    set_addr $I10, rxscan532_loop
    rx529_cur."!mark_push"(0, rx529_pos, $I10)
  rxscan532_done:
  # rx enumcharlist negate=0 
    ge rx529_pos, rx529_eos, rx529_fail
    sub $I10, rx529_pos, rx529_off
    substr $S10, rx529_tgt, $I10, 1
    index $I11, "*!?", $S10
    lt $I11, 0, rx529_fail
    inc rx529_pos
  # rx pass
    rx529_cur."!cursor_pass"(rx529_pos, "twigil")
    if_null rx529_debug, debug_633
    rx529_cur."!cursor_debug"("PASS", "twigil", " at pos=", rx529_pos)
  debug_633:
    .return (rx529_cur)
  rx529_restart:
    if_null rx529_debug, debug_634
    rx529_cur."!cursor_debug"("NEXT", "twigil")
  debug_634:
  rx529_fail:
    (rx529_rep, rx529_pos, $I10, $P10) = rx529_cur."!mark_fail"(0)
    lt rx529_pos, -1, rx529_done
    eq rx529_pos, -1, rx529_fail
    jump $I10
  rx529_done:
    rx529_cur."!cursor_fail"()
    if_null rx529_debug, debug_635
    rx529_cur."!cursor_debug"("FAIL", "twigil")
  debug_635:
    .return (rx529_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("129_1285886565.968") :method
.annotate 'line', 0
    new $P531, "ResizablePMCArray"
    push $P531, "?"
    push $P531, "!"
    push $P531, "*"
    .return ($P531)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("130_1285886565.968") :method
.annotate 'line', 0
    $P534 = self."!protoregex"("package_declarator")
    .return ($P534)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("131_1285886565.968") :method
.annotate 'line', 0
    $P536 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P536)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("132_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx538_tgt
    .local int rx538_pos
    .local int rx538_off
    .local int rx538_eos
    .local int rx538_rep
    .local pmc rx538_cur
    .local pmc rx538_debug
    (rx538_cur, rx538_pos, rx538_tgt, $I10) = self."!cursor_start"()
    getattribute rx538_debug, rx538_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx538_cur
    .local pmc match
    .lex "$/", match
    length rx538_eos, rx538_tgt
    gt rx538_pos, rx538_eos, rx538_done
    set rx538_off, 0
    lt rx538_pos, 2, rx538_start
    sub rx538_off, rx538_pos, 1
    substr rx538_tgt, rx538_tgt, rx538_off
  rx538_start:
    eq $I10, 1, rx538_restart
    if_null rx538_debug, debug_636
    rx538_cur."!cursor_debug"("START", "package_declarator:sym<module>")
  debug_636:
    $I10 = self.'from'()
    ne $I10, -1, rxscan542_done
    goto rxscan542_scan
  rxscan542_loop:
    ($P10) = rx538_cur."from"()
    inc $P10
    set rx538_pos, $P10
    ge rx538_pos, rx538_eos, rxscan542_done
  rxscan542_scan:
    set_addr $I10, rxscan542_loop
    rx538_cur."!mark_push"(0, rx538_pos, $I10)
  rxscan542_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_543_fail
    rx538_cur."!mark_push"(0, rx538_pos, $I10)
  # rx literal  "module"
    add $I11, rx538_pos, 6
    gt $I11, rx538_eos, rx538_fail
    sub $I11, rx538_pos, rx538_off
    substr $S10, rx538_tgt, $I11, 6
    ne $S10, "module", rx538_fail
    add rx538_pos, 6
    set_addr $I10, rxcap_543_fail
    ($I12, $I11) = rx538_cur."!mark_peek"($I10)
    rx538_cur."!cursor_pos"($I11)
    ($P10) = rx538_cur."!cursor_start"()
    $P10."!cursor_pass"(rx538_pos, "")
    rx538_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_543_done
  rxcap_543_fail:
    goto rx538_fail
  rxcap_543_done:
  # rx subrule "package_def" subtype=capture negate=
    rx538_cur."!cursor_pos"(rx538_pos)
    $P10 = rx538_cur."package_def"()
    unless $P10, rx538_fail
    rx538_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx538_pos = $P10."pos"()
  # rx pass
    rx538_cur."!cursor_pass"(rx538_pos, "package_declarator:sym<module>")
    if_null rx538_debug, debug_637
    rx538_cur."!cursor_debug"("PASS", "package_declarator:sym<module>", " at pos=", rx538_pos)
  debug_637:
    .return (rx538_cur)
  rx538_restart:
    if_null rx538_debug, debug_638
    rx538_cur."!cursor_debug"("NEXT", "package_declarator:sym<module>")
  debug_638:
  rx538_fail:
    (rx538_rep, rx538_pos, $I10, $P10) = rx538_cur."!mark_fail"(0)
    lt rx538_pos, -1, rx538_done
    eq rx538_pos, -1, rx538_fail
    jump $I10
  rx538_done:
    rx538_cur."!cursor_fail"()
    if_null rx538_debug, debug_639
    rx538_cur."!cursor_debug"("FAIL", "package_declarator:sym<module>")
  debug_639:
    .return (rx538_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("133_1285886565.968") :method
.annotate 'line', 0
    $P540 = self."!PREFIX__!subrule"("package_def", "module")
    new $P541, "ResizablePMCArray"
    push $P541, $P540
    .return ($P541)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<knowhow>"  :subid("134_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    new $P545, "Undef"
    .lex "$*PACKAGE-SETUP", $P545
    new $P546, "Undef"
    .lex "$*PKGDECL", $P546
    .local string rx547_tgt
    .local int rx547_pos
    .local int rx547_off
    .local int rx547_eos
    .local int rx547_rep
    .local pmc rx547_cur
    .local pmc rx547_debug
    (rx547_cur, rx547_pos, rx547_tgt, $I10) = self."!cursor_start"()
    getattribute rx547_debug, rx547_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx547_cur
    .local pmc match
    .lex "$/", match
    length rx547_eos, rx547_tgt
    gt rx547_pos, rx547_eos, rx547_done
    set rx547_off, 0
    lt rx547_pos, 2, rx547_start
    sub rx547_off, rx547_pos, 1
    substr rx547_tgt, rx547_tgt, rx547_off
  rx547_start:
    eq $I10, 1, rx547_restart
    if_null rx547_debug, debug_640
    rx547_cur."!cursor_debug"("START", "package_declarator:sym<knowhow>")
  debug_640:
    $I10 = self.'from'()
    ne $I10, -1, rxscan551_done
    goto rxscan551_scan
  rxscan551_loop:
    ($P10) = rx547_cur."from"()
    inc $P10
    set rx547_pos, $P10
    ge rx547_pos, rx547_eos, rxscan551_done
  rxscan551_scan:
    set_addr $I10, rxscan551_loop
    rx547_cur."!mark_push"(0, rx547_pos, $I10)
  rxscan551_done:
    rx547_cur."!cursor_pos"(rx547_pos)
    get_hll_global $P552, ["PAST"], "Stmts"
    $P553 = $P552."new"()
    store_lex "$*PACKAGE-SETUP", $P553
    rx547_cur."!cursor_pos"(rx547_pos)
    new $P554, "String"
    assign $P554, "knowhow"
    store_lex "$*PKGDECL", $P554
  # rx subcapture "sym"
    set_addr $I10, rxcap_555_fail
    rx547_cur."!mark_push"(0, rx547_pos, $I10)
  # rx literal  "knowhow"
    add $I11, rx547_pos, 7
    gt $I11, rx547_eos, rx547_fail
    sub $I11, rx547_pos, rx547_off
    substr $S10, rx547_tgt, $I11, 7
    ne $S10, "knowhow", rx547_fail
    add rx547_pos, 7
    set_addr $I10, rxcap_555_fail
    ($I12, $I11) = rx547_cur."!mark_peek"($I10)
    rx547_cur."!cursor_pos"($I11)
    ($P10) = rx547_cur."!cursor_start"()
    $P10."!cursor_pass"(rx547_pos, "")
    rx547_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_555_done
  rxcap_555_fail:
    goto rx547_fail
  rxcap_555_done:
  # rx subrule "package_def" subtype=capture negate=
    rx547_cur."!cursor_pos"(rx547_pos)
    $P10 = rx547_cur."package_def"()
    unless $P10, rx547_fail
    rx547_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx547_pos = $P10."pos"()
  # rx pass
    rx547_cur."!cursor_pass"(rx547_pos, "package_declarator:sym<knowhow>")
    if_null rx547_debug, debug_641
    rx547_cur."!cursor_debug"("PASS", "package_declarator:sym<knowhow>", " at pos=", rx547_pos)
  debug_641:
    .return (rx547_cur)
  rx547_restart:
    if_null rx547_debug, debug_642
    rx547_cur."!cursor_debug"("NEXT", "package_declarator:sym<knowhow>")
  debug_642:
  rx547_fail:
    (rx547_rep, rx547_pos, $I10, $P10) = rx547_cur."!mark_fail"(0)
    lt rx547_pos, -1, rx547_done
    eq rx547_pos, -1, rx547_fail
    jump $I10
  rx547_done:
    rx547_cur."!cursor_fail"()
    if_null rx547_debug, debug_643
    rx547_cur."!cursor_debug"("FAIL", "package_declarator:sym<knowhow>")
  debug_643:
    .return (rx547_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<knowhow>"  :subid("135_1285886565.968") :method
.annotate 'line', 0
    $P549 = self."!PREFIX__!subrule"("package_def", "knowhow")
    new $P550, "ResizablePMCArray"
    push $P550, $P549
    .return ($P550)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("136_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    new $P557, "Undef"
    .lex "$*PKGDECL", $P557
    .local string rx558_tgt
    .local int rx558_pos
    .local int rx558_off
    .local int rx558_eos
    .local int rx558_rep
    .local pmc rx558_cur
    .local pmc rx558_debug
    (rx558_cur, rx558_pos, rx558_tgt, $I10) = self."!cursor_start"()
    getattribute rx558_debug, rx558_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx558_cur
    .local pmc match
    .lex "$/", match
    length rx558_eos, rx558_tgt
    gt rx558_pos, rx558_eos, rx558_done
    set rx558_off, 0
    lt rx558_pos, 2, rx558_start
    sub rx558_off, rx558_pos, 1
    substr rx558_tgt, rx558_tgt, rx558_off
  rx558_start:
    eq $I10, 1, rx558_restart
    if_null rx558_debug, debug_644
    rx558_cur."!cursor_debug"("START", "package_declarator:sym<class>")
  debug_644:
    $I10 = self.'from'()
    ne $I10, -1, rxscan562_done
    goto rxscan562_scan
  rxscan562_loop:
    ($P10) = rx558_cur."from"()
    inc $P10
    set rx558_pos, $P10
    ge rx558_pos, rx558_eos, rxscan562_done
  rxscan562_scan:
    set_addr $I10, rxscan562_loop
    rx558_cur."!mark_push"(0, rx558_pos, $I10)
  rxscan562_done:
    rx558_cur."!cursor_pos"(rx558_pos)
    new $P563, "String"
    assign $P563, "class"
    store_lex "$*PKGDECL", $P563
  # rx subcapture "sym"
    set_addr $I10, rxcap_564_fail
    rx558_cur."!mark_push"(0, rx558_pos, $I10)
  # rx literal  "class"
    add $I11, rx558_pos, 5
    gt $I11, rx558_eos, rx558_fail
    sub $I11, rx558_pos, rx558_off
    substr $S10, rx558_tgt, $I11, 5
    ne $S10, "class", rx558_fail
    add rx558_pos, 5
    set_addr $I10, rxcap_564_fail
    ($I12, $I11) = rx558_cur."!mark_peek"($I10)
    rx558_cur."!cursor_pos"($I11)
    ($P10) = rx558_cur."!cursor_start"()
    $P10."!cursor_pass"(rx558_pos, "")
    rx558_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_564_done
  rxcap_564_fail:
    goto rx558_fail
  rxcap_564_done:
  # rx subrule "package_def" subtype=capture negate=
    rx558_cur."!cursor_pos"(rx558_pos)
    $P10 = rx558_cur."package_def"()
    unless $P10, rx558_fail
    rx558_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx558_pos = $P10."pos"()
  # rx pass
    rx558_cur."!cursor_pass"(rx558_pos, "package_declarator:sym<class>")
    if_null rx558_debug, debug_645
    rx558_cur."!cursor_debug"("PASS", "package_declarator:sym<class>", " at pos=", rx558_pos)
  debug_645:
    .return (rx558_cur)
  rx558_restart:
    if_null rx558_debug, debug_646
    rx558_cur."!cursor_debug"("NEXT", "package_declarator:sym<class>")
  debug_646:
  rx558_fail:
    (rx558_rep, rx558_pos, $I10, $P10) = rx558_cur."!mark_fail"(0)
    lt rx558_pos, -1, rx558_done
    eq rx558_pos, -1, rx558_fail
    jump $I10
  rx558_done:
    rx558_cur."!cursor_fail"()
    if_null rx558_debug, debug_647
    rx558_cur."!cursor_debug"("FAIL", "package_declarator:sym<class>")
  debug_647:
    .return (rx558_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("137_1285886565.968") :method
.annotate 'line', 0
    $P560 = self."!PREFIX__!subrule"("package_def", "class")
    new $P561, "ResizablePMCArray"
    push $P561, $P560
    .return ($P561)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<grammar>"  :subid("138_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    new $P566, "Undef"
    .lex "$*PKGDECL", $P566
    .local string rx567_tgt
    .local int rx567_pos
    .local int rx567_off
    .local int rx567_eos
    .local int rx567_rep
    .local pmc rx567_cur
    .local pmc rx567_debug
    (rx567_cur, rx567_pos, rx567_tgt, $I10) = self."!cursor_start"()
    getattribute rx567_debug, rx567_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx567_cur
    .local pmc match
    .lex "$/", match
    length rx567_eos, rx567_tgt
    gt rx567_pos, rx567_eos, rx567_done
    set rx567_off, 0
    lt rx567_pos, 2, rx567_start
    sub rx567_off, rx567_pos, 1
    substr rx567_tgt, rx567_tgt, rx567_off
  rx567_start:
    eq $I10, 1, rx567_restart
    if_null rx567_debug, debug_648
    rx567_cur."!cursor_debug"("START", "package_declarator:sym<grammar>")
  debug_648:
    $I10 = self.'from'()
    ne $I10, -1, rxscan571_done
    goto rxscan571_scan
  rxscan571_loop:
    ($P10) = rx567_cur."from"()
    inc $P10
    set rx567_pos, $P10
    ge rx567_pos, rx567_eos, rxscan571_done
  rxscan571_scan:
    set_addr $I10, rxscan571_loop
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
  rxscan571_done:
    rx567_cur."!cursor_pos"(rx567_pos)
    new $P572, "String"
    assign $P572, "grammar"
    store_lex "$*PKGDECL", $P572
  # rx subcapture "sym"
    set_addr $I10, rxcap_573_fail
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
  # rx literal  "grammar"
    add $I11, rx567_pos, 7
    gt $I11, rx567_eos, rx567_fail
    sub $I11, rx567_pos, rx567_off
    substr $S10, rx567_tgt, $I11, 7
    ne $S10, "grammar", rx567_fail
    add rx567_pos, 7
    set_addr $I10, rxcap_573_fail
    ($I12, $I11) = rx567_cur."!mark_peek"($I10)
    rx567_cur."!cursor_pos"($I11)
    ($P10) = rx567_cur."!cursor_start"()
    $P10."!cursor_pass"(rx567_pos, "")
    rx567_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_573_done
  rxcap_573_fail:
    goto rx567_fail
  rxcap_573_done:
  # rx subrule "package_def" subtype=capture negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."package_def"()
    unless $P10, rx567_fail
    rx567_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx567_pos = $P10."pos"()
  # rx pass
    rx567_cur."!cursor_pass"(rx567_pos, "package_declarator:sym<grammar>")
    if_null rx567_debug, debug_649
    rx567_cur."!cursor_debug"("PASS", "package_declarator:sym<grammar>", " at pos=", rx567_pos)
  debug_649:
    .return (rx567_cur)
  rx567_restart:
    if_null rx567_debug, debug_650
    rx567_cur."!cursor_debug"("NEXT", "package_declarator:sym<grammar>")
  debug_650:
  rx567_fail:
    (rx567_rep, rx567_pos, $I10, $P10) = rx567_cur."!mark_fail"(0)
    lt rx567_pos, -1, rx567_done
    eq rx567_pos, -1, rx567_fail
    jump $I10
  rx567_done:
    rx567_cur."!cursor_fail"()
    if_null rx567_debug, debug_651
    rx567_cur."!cursor_debug"("FAIL", "package_declarator:sym<grammar>")
  debug_651:
    .return (rx567_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<grammar>"  :subid("139_1285886565.968") :method
.annotate 'line', 0
    $P569 = self."!PREFIX__!subrule"("package_def", "grammar")
    new $P570, "ResizablePMCArray"
    push $P570, $P569
    .return ($P570)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<role>"  :subid("140_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    new $P575, "Undef"
    .lex "$*PACKAGE-SETUP", $P575
    new $P576, "Undef"
    .lex "$*PKGDECL", $P576
    .local string rx577_tgt
    .local int rx577_pos
    .local int rx577_off
    .local int rx577_eos
    .local int rx577_rep
    .local pmc rx577_cur
    .local pmc rx577_debug
    (rx577_cur, rx577_pos, rx577_tgt, $I10) = self."!cursor_start"()
    getattribute rx577_debug, rx577_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx577_cur
    .local pmc match
    .lex "$/", match
    length rx577_eos, rx577_tgt
    gt rx577_pos, rx577_eos, rx577_done
    set rx577_off, 0
    lt rx577_pos, 2, rx577_start
    sub rx577_off, rx577_pos, 1
    substr rx577_tgt, rx577_tgt, rx577_off
  rx577_start:
    eq $I10, 1, rx577_restart
    if_null rx577_debug, debug_652
    rx577_cur."!cursor_debug"("START", "package_declarator:sym<role>")
  debug_652:
    $I10 = self.'from'()
    ne $I10, -1, rxscan581_done
    goto rxscan581_scan
  rxscan581_loop:
    ($P10) = rx577_cur."from"()
    inc $P10
    set rx577_pos, $P10
    ge rx577_pos, rx577_eos, rxscan581_done
  rxscan581_scan:
    set_addr $I10, rxscan581_loop
    rx577_cur."!mark_push"(0, rx577_pos, $I10)
  rxscan581_done:
    rx577_cur."!cursor_pos"(rx577_pos)
    get_hll_global $P582, ["PAST"], "Stmts"
    $P583 = $P582."new"()
    store_lex "$*PACKAGE-SETUP", $P583
    rx577_cur."!cursor_pos"(rx577_pos)
    new $P584, "String"
    assign $P584, "role"
    store_lex "$*PKGDECL", $P584
  # rx subcapture "sym"
    set_addr $I10, rxcap_585_fail
    rx577_cur."!mark_push"(0, rx577_pos, $I10)
  # rx literal  "role"
    add $I11, rx577_pos, 4
    gt $I11, rx577_eos, rx577_fail
    sub $I11, rx577_pos, rx577_off
    substr $S10, rx577_tgt, $I11, 4
    ne $S10, "role", rx577_fail
    add rx577_pos, 4
    set_addr $I10, rxcap_585_fail
    ($I12, $I11) = rx577_cur."!mark_peek"($I10)
    rx577_cur."!cursor_pos"($I11)
    ($P10) = rx577_cur."!cursor_start"()
    $P10."!cursor_pass"(rx577_pos, "")
    rx577_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_585_done
  rxcap_585_fail:
    goto rx577_fail
  rxcap_585_done:
  # rx subrule "package_def" subtype=capture negate=
    rx577_cur."!cursor_pos"(rx577_pos)
    $P10 = rx577_cur."package_def"()
    unless $P10, rx577_fail
    rx577_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx577_pos = $P10."pos"()
  # rx pass
    rx577_cur."!cursor_pass"(rx577_pos, "package_declarator:sym<role>")
    if_null rx577_debug, debug_653
    rx577_cur."!cursor_debug"("PASS", "package_declarator:sym<role>", " at pos=", rx577_pos)
  debug_653:
    .return (rx577_cur)
  rx577_restart:
    if_null rx577_debug, debug_654
    rx577_cur."!cursor_debug"("NEXT", "package_declarator:sym<role>")
  debug_654:
  rx577_fail:
    (rx577_rep, rx577_pos, $I10, $P10) = rx577_cur."!mark_fail"(0)
    lt rx577_pos, -1, rx577_done
    eq rx577_pos, -1, rx577_fail
    jump $I10
  rx577_done:
    rx577_cur."!cursor_fail"()
    if_null rx577_debug, debug_655
    rx577_cur."!cursor_debug"("FAIL", "package_declarator:sym<role>")
  debug_655:
    .return (rx577_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<role>"  :subid("141_1285886565.968") :method
.annotate 'line', 0
    $P579 = self."!PREFIX__!subrule"("package_def", "role")
    new $P580, "ResizablePMCArray"
    push $P580, $P579
    .return ($P580)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("142_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx587_tgt
    .local int rx587_pos
    .local int rx587_off
    .local int rx587_eos
    .local int rx587_rep
    .local pmc rx587_cur
    .local pmc rx587_debug
    (rx587_cur, rx587_pos, rx587_tgt, $I10) = self."!cursor_start"()
    rx587_cur."!cursor_caparray"("repr", "parent")
    getattribute rx587_debug, rx587_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx587_cur
    .local pmc match
    .lex "$/", match
    length rx587_eos, rx587_tgt
    gt rx587_pos, rx587_eos, rx587_done
    set rx587_off, 0
    lt rx587_pos, 2, rx587_start
    sub rx587_off, rx587_pos, 1
    substr rx587_tgt, rx587_tgt, rx587_off
  rx587_start:
    eq $I10, 1, rx587_restart
    if_null rx587_debug, debug_656
    rx587_cur."!cursor_debug"("START", "package_def")
  debug_656:
    $I10 = self.'from'()
    ne $I10, -1, rxscan591_done
    goto rxscan591_scan
  rxscan591_loop:
    ($P10) = rx587_cur."from"()
    inc $P10
    set rx587_pos, $P10
    ge rx587_pos, rx587_eos, rxscan591_done
  rxscan591_scan:
    set_addr $I10, rxscan591_loop
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  rxscan591_done:
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."name"()
    unless $P10, rx587_fail
    rx587_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx587_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx rxquantr594 ** 0..1
    set_addr $I10, rxquantr594_done
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  rxquantr594_loop:
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx587_pos, 2
    gt $I11, rx587_eos, rx587_fail
    sub $I11, rx587_pos, rx587_off
    substr $S10, rx587_tgt, $I11, 2
    ne $S10, "is", rx587_fail
    add rx587_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx literal  "repr("
    add $I11, rx587_pos, 5
    gt $I11, rx587_eos, rx587_fail
    sub $I11, rx587_pos, rx587_off
    substr $S10, rx587_tgt, $I11, 5
    ne $S10, "repr(", rx587_fail
    add rx587_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."quote_EXPR"()
    unless $P10, rx587_fail
    rx587_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("repr")
    rx587_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx587_pos, 1
    gt $I11, rx587_eos, rx587_fail
    sub $I11, rx587_pos, rx587_off
    ord $I11, rx587_tgt, $I11
    ne $I11, 41, rx587_fail
    add rx587_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
    set_addr $I10, rxquantr594_done
    (rx587_rep) = rx587_cur."!mark_commit"($I10)
  rxquantr594_done:
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx rxquantr601 ** 0..1
    set_addr $I10, rxquantr601_done
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  rxquantr601_loop:
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx587_pos, 2
    gt $I11, rx587_eos, rx587_fail
    sub $I11, rx587_pos, rx587_off
    substr $S10, rx587_tgt, $I11, 2
    ne $S10, "is", rx587_fail
    add rx587_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."name"()
    unless $P10, rx587_fail
    rx587_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx587_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
    set_addr $I10, rxquantr601_done
    (rx587_rep) = rx587_cur."!mark_commit"($I10)
  rxquantr601_done:
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  alt606_0:
    set_addr $I10, alt606_1
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx587_pos, 1
    gt $I11, rx587_eos, rx587_fail
    sub $I11, rx587_pos, rx587_off
    ord $I11, rx587_tgt, $I11
    ne $I11, 59, rx587_fail
    add rx587_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."comp_unit"()
    unless $P10, rx587_fail
    rx587_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx587_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
    goto alt606_end
  alt606_1:
    set_addr $I10, alt606_2
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx587_pos, rx587_eos, rx587_fail
    sub $I10, rx587_pos, rx587_off
    substr $S10, rx587_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx587_fail
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx subrule "block" subtype=capture negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."block"()
    unless $P10, rx587_fail
    rx587_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx587_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
    goto alt606_end
  alt606_2:
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."panic"("Malformed package declaration")
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  alt606_end:
  # rx subrule "ws" subtype=method negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."ws"()
    unless $P10, rx587_fail
    rx587_pos = $P10."pos"()
  # rx pass
    rx587_cur."!cursor_pass"(rx587_pos, "package_def")
    if_null rx587_debug, debug_657
    rx587_cur."!cursor_debug"("PASS", "package_def", " at pos=", rx587_pos)
  debug_657:
    .return (rx587_cur)
  rx587_restart:
    if_null rx587_debug, debug_658
    rx587_cur."!cursor_debug"("NEXT", "package_def")
  debug_658:
  rx587_fail:
    (rx587_rep, rx587_pos, $I10, $P10) = rx587_cur."!mark_fail"(0)
    lt rx587_pos, -1, rx587_done
    eq rx587_pos, -1, rx587_fail
    jump $I10
  rx587_done:
    rx587_cur."!cursor_fail"()
    if_null rx587_debug, debug_659
    rx587_cur."!cursor_debug"("FAIL", "package_def")
  debug_659:
    .return (rx587_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("143_1285886565.968") :method
.annotate 'line', 0
    $P589 = self."!PREFIX__!subrule"("ws", "")
    new $P590, "ResizablePMCArray"
    push $P590, $P589
    .return ($P590)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("144_1285886565.968") :method
.annotate 'line', 0
    $P617 = self."!protoregex"("scope_declarator")
    .return ($P617)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("145_1285886565.968") :method
.annotate 'line', 0
    $P619 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P619)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("146_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx621_tgt
    .local int rx621_pos
    .local int rx621_off
    .local int rx621_eos
    .local int rx621_rep
    .local pmc rx621_cur
    .local pmc rx621_debug
    (rx621_cur, rx621_pos, rx621_tgt, $I10) = self."!cursor_start"()
    getattribute rx621_debug, rx621_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx621_cur
    .local pmc match
    .lex "$/", match
    length rx621_eos, rx621_tgt
    gt rx621_pos, rx621_eos, rx621_done
    set rx621_off, 0
    lt rx621_pos, 2, rx621_start
    sub rx621_off, rx621_pos, 1
    substr rx621_tgt, rx621_tgt, rx621_off
  rx621_start:
    eq $I10, 1, rx621_restart
    if_null rx621_debug, debug_660
    rx621_cur."!cursor_debug"("START", "scope_declarator:sym<my>")
  debug_660:
    $I10 = self.'from'()
    ne $I10, -1, rxscan625_done
    goto rxscan625_scan
  rxscan625_loop:
    ($P10) = rx621_cur."from"()
    inc $P10
    set rx621_pos, $P10
    ge rx621_pos, rx621_eos, rxscan625_done
  rxscan625_scan:
    set_addr $I10, rxscan625_loop
    rx621_cur."!mark_push"(0, rx621_pos, $I10)
  rxscan625_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_626_fail
    rx621_cur."!mark_push"(0, rx621_pos, $I10)
  # rx literal  "my"
    add $I11, rx621_pos, 2
    gt $I11, rx621_eos, rx621_fail
    sub $I11, rx621_pos, rx621_off
    substr $S10, rx621_tgt, $I11, 2
    ne $S10, "my", rx621_fail
    add rx621_pos, 2
    set_addr $I10, rxcap_626_fail
    ($I12, $I11) = rx621_cur."!mark_peek"($I10)
    rx621_cur."!cursor_pos"($I11)
    ($P10) = rx621_cur."!cursor_start"()
    $P10."!cursor_pass"(rx621_pos, "")
    rx621_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_626_done
  rxcap_626_fail:
    goto rx621_fail
  rxcap_626_done:
  # rx subrule "scoped" subtype=capture negate=
    rx621_cur."!cursor_pos"(rx621_pos)
    $P10 = rx621_cur."scoped"("my")
    unless $P10, rx621_fail
    rx621_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx621_pos = $P10."pos"()
  # rx pass
    rx621_cur."!cursor_pass"(rx621_pos, "scope_declarator:sym<my>")
    if_null rx621_debug, debug_661
    rx621_cur."!cursor_debug"("PASS", "scope_declarator:sym<my>", " at pos=", rx621_pos)
  debug_661:
    .return (rx621_cur)
  rx621_restart:
    if_null rx621_debug, debug_662
    rx621_cur."!cursor_debug"("NEXT", "scope_declarator:sym<my>")
  debug_662:
  rx621_fail:
    (rx621_rep, rx621_pos, $I10, $P10) = rx621_cur."!mark_fail"(0)
    lt rx621_pos, -1, rx621_done
    eq rx621_pos, -1, rx621_fail
    jump $I10
  rx621_done:
    rx621_cur."!cursor_fail"()
    if_null rx621_debug, debug_663
    rx621_cur."!cursor_debug"("FAIL", "scope_declarator:sym<my>")
  debug_663:
    .return (rx621_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("147_1285886565.968") :method
.annotate 'line', 0
    $P623 = self."!PREFIX__!subrule"("scoped", "my")
    new $P624, "ResizablePMCArray"
    push $P624, $P623
    .return ($P624)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("148_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx628_tgt
    .local int rx628_pos
    .local int rx628_off
    .local int rx628_eos
    .local int rx628_rep
    .local pmc rx628_cur
    .local pmc rx628_debug
    (rx628_cur, rx628_pos, rx628_tgt, $I10) = self."!cursor_start"()
    getattribute rx628_debug, rx628_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx628_cur
    .local pmc match
    .lex "$/", match
    length rx628_eos, rx628_tgt
    gt rx628_pos, rx628_eos, rx628_done
    set rx628_off, 0
    lt rx628_pos, 2, rx628_start
    sub rx628_off, rx628_pos, 1
    substr rx628_tgt, rx628_tgt, rx628_off
  rx628_start:
    eq $I10, 1, rx628_restart
    if_null rx628_debug, debug_664
    rx628_cur."!cursor_debug"("START", "scope_declarator:sym<our>")
  debug_664:
    $I10 = self.'from'()
    ne $I10, -1, rxscan632_done
    goto rxscan632_scan
  rxscan632_loop:
    ($P10) = rx628_cur."from"()
    inc $P10
    set rx628_pos, $P10
    ge rx628_pos, rx628_eos, rxscan632_done
  rxscan632_scan:
    set_addr $I10, rxscan632_loop
    rx628_cur."!mark_push"(0, rx628_pos, $I10)
  rxscan632_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_633_fail
    rx628_cur."!mark_push"(0, rx628_pos, $I10)
  # rx literal  "our"
    add $I11, rx628_pos, 3
    gt $I11, rx628_eos, rx628_fail
    sub $I11, rx628_pos, rx628_off
    substr $S10, rx628_tgt, $I11, 3
    ne $S10, "our", rx628_fail
    add rx628_pos, 3
    set_addr $I10, rxcap_633_fail
    ($I12, $I11) = rx628_cur."!mark_peek"($I10)
    rx628_cur."!cursor_pos"($I11)
    ($P10) = rx628_cur."!cursor_start"()
    $P10."!cursor_pass"(rx628_pos, "")
    rx628_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_633_done
  rxcap_633_fail:
    goto rx628_fail
  rxcap_633_done:
  # rx subrule "scoped" subtype=capture negate=
    rx628_cur."!cursor_pos"(rx628_pos)
    $P10 = rx628_cur."scoped"("our")
    unless $P10, rx628_fail
    rx628_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx628_pos = $P10."pos"()
  # rx pass
    rx628_cur."!cursor_pass"(rx628_pos, "scope_declarator:sym<our>")
    if_null rx628_debug, debug_665
    rx628_cur."!cursor_debug"("PASS", "scope_declarator:sym<our>", " at pos=", rx628_pos)
  debug_665:
    .return (rx628_cur)
  rx628_restart:
    if_null rx628_debug, debug_666
    rx628_cur."!cursor_debug"("NEXT", "scope_declarator:sym<our>")
  debug_666:
  rx628_fail:
    (rx628_rep, rx628_pos, $I10, $P10) = rx628_cur."!mark_fail"(0)
    lt rx628_pos, -1, rx628_done
    eq rx628_pos, -1, rx628_fail
    jump $I10
  rx628_done:
    rx628_cur."!cursor_fail"()
    if_null rx628_debug, debug_667
    rx628_cur."!cursor_debug"("FAIL", "scope_declarator:sym<our>")
  debug_667:
    .return (rx628_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("149_1285886565.968") :method
.annotate 'line', 0
    $P630 = self."!PREFIX__!subrule"("scoped", "our")
    new $P631, "ResizablePMCArray"
    push $P631, $P630
    .return ($P631)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("150_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx635_tgt
    .local int rx635_pos
    .local int rx635_off
    .local int rx635_eos
    .local int rx635_rep
    .local pmc rx635_cur
    .local pmc rx635_debug
    (rx635_cur, rx635_pos, rx635_tgt, $I10) = self."!cursor_start"()
    getattribute rx635_debug, rx635_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx635_cur
    .local pmc match
    .lex "$/", match
    length rx635_eos, rx635_tgt
    gt rx635_pos, rx635_eos, rx635_done
    set rx635_off, 0
    lt rx635_pos, 2, rx635_start
    sub rx635_off, rx635_pos, 1
    substr rx635_tgt, rx635_tgt, rx635_off
  rx635_start:
    eq $I10, 1, rx635_restart
    if_null rx635_debug, debug_668
    rx635_cur."!cursor_debug"("START", "scope_declarator:sym<has>")
  debug_668:
    $I10 = self.'from'()
    ne $I10, -1, rxscan639_done
    goto rxscan639_scan
  rxscan639_loop:
    ($P10) = rx635_cur."from"()
    inc $P10
    set rx635_pos, $P10
    ge rx635_pos, rx635_eos, rxscan639_done
  rxscan639_scan:
    set_addr $I10, rxscan639_loop
    rx635_cur."!mark_push"(0, rx635_pos, $I10)
  rxscan639_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_640_fail
    rx635_cur."!mark_push"(0, rx635_pos, $I10)
  # rx literal  "has"
    add $I11, rx635_pos, 3
    gt $I11, rx635_eos, rx635_fail
    sub $I11, rx635_pos, rx635_off
    substr $S10, rx635_tgt, $I11, 3
    ne $S10, "has", rx635_fail
    add rx635_pos, 3
    set_addr $I10, rxcap_640_fail
    ($I12, $I11) = rx635_cur."!mark_peek"($I10)
    rx635_cur."!cursor_pos"($I11)
    ($P10) = rx635_cur."!cursor_start"()
    $P10."!cursor_pass"(rx635_pos, "")
    rx635_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_640_done
  rxcap_640_fail:
    goto rx635_fail
  rxcap_640_done:
  # rx subrule "scoped" subtype=capture negate=
    rx635_cur."!cursor_pos"(rx635_pos)
    $P10 = rx635_cur."scoped"("has")
    unless $P10, rx635_fail
    rx635_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx635_pos = $P10."pos"()
  # rx pass
    rx635_cur."!cursor_pass"(rx635_pos, "scope_declarator:sym<has>")
    if_null rx635_debug, debug_669
    rx635_cur."!cursor_debug"("PASS", "scope_declarator:sym<has>", " at pos=", rx635_pos)
  debug_669:
    .return (rx635_cur)
  rx635_restart:
    if_null rx635_debug, debug_670
    rx635_cur."!cursor_debug"("NEXT", "scope_declarator:sym<has>")
  debug_670:
  rx635_fail:
    (rx635_rep, rx635_pos, $I10, $P10) = rx635_cur."!mark_fail"(0)
    lt rx635_pos, -1, rx635_done
    eq rx635_pos, -1, rx635_fail
    jump $I10
  rx635_done:
    rx635_cur."!cursor_fail"()
    if_null rx635_debug, debug_671
    rx635_cur."!cursor_debug"("FAIL", "scope_declarator:sym<has>")
  debug_671:
    .return (rx635_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("151_1285886565.968") :method
.annotate 'line', 0
    $P637 = self."!PREFIX__!subrule"("scoped", "has")
    new $P638, "ResizablePMCArray"
    push $P638, $P637
    .return ($P638)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("152_1285886565.968") :method :outer("11_1285886565.968")
    .param pmc param_642
.annotate 'line', 0
    .lex "$*SCOPE", param_642
    .local string rx643_tgt
    .local int rx643_pos
    .local int rx643_off
    .local int rx643_eos
    .local int rx643_rep
    .local pmc rx643_cur
    .local pmc rx643_debug
    (rx643_cur, rx643_pos, rx643_tgt, $I10) = self."!cursor_start"()
    getattribute rx643_debug, rx643_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx643_cur
    .local pmc match
    .lex "$/", match
    length rx643_eos, rx643_tgt
    gt rx643_pos, rx643_eos, rx643_done
    set rx643_off, 0
    lt rx643_pos, 2, rx643_start
    sub rx643_off, rx643_pos, 1
    substr rx643_tgt, rx643_tgt, rx643_off
  rx643_start:
    eq $I10, 1, rx643_restart
    if_null rx643_debug, debug_672
    rx643_cur."!cursor_debug"("START", "scoped")
  debug_672:
    $I10 = self.'from'()
    ne $I10, -1, rxscan648_done
    goto rxscan648_scan
  rxscan648_loop:
    ($P10) = rx643_cur."from"()
    inc $P10
    set rx643_pos, $P10
    ge rx643_pos, rx643_eos, rxscan648_done
  rxscan648_scan:
    set_addr $I10, rxscan648_loop
    rx643_cur."!mark_push"(0, rx643_pos, $I10)
  rxscan648_done:
  alt649_0:
    set_addr $I10, alt649_1
    rx643_cur."!mark_push"(0, rx643_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx643_cur."!cursor_pos"(rx643_pos)
    $P10 = rx643_cur."ws"()
    unless $P10, rx643_fail
    rx643_pos = $P10."pos"()
  # rx subrule "declarator" subtype=capture negate=
    rx643_cur."!cursor_pos"(rx643_pos)
    $P10 = rx643_cur."declarator"()
    unless $P10, rx643_fail
    rx643_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("declarator")
    rx643_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx643_cur."!cursor_pos"(rx643_pos)
    $P10 = rx643_cur."ws"()
    unless $P10, rx643_fail
    rx643_pos = $P10."pos"()
    goto alt649_end
  alt649_1:
  # rx subrule "ws" subtype=method negate=
    rx643_cur."!cursor_pos"(rx643_pos)
    $P10 = rx643_cur."ws"()
    unless $P10, rx643_fail
    rx643_pos = $P10."pos"()
  # rx subrule "multi_declarator" subtype=capture negate=
    rx643_cur."!cursor_pos"(rx643_pos)
    $P10 = rx643_cur."multi_declarator"()
    unless $P10, rx643_fail
    rx643_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("multi_declarator")
    rx643_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx643_cur."!cursor_pos"(rx643_pos)
    $P10 = rx643_cur."ws"()
    unless $P10, rx643_fail
    rx643_pos = $P10."pos"()
  alt649_end:
  # rx pass
    rx643_cur."!cursor_pass"(rx643_pos, "scoped")
    if_null rx643_debug, debug_673
    rx643_cur."!cursor_debug"("PASS", "scoped", " at pos=", rx643_pos)
  debug_673:
    .return (rx643_cur)
  rx643_restart:
    if_null rx643_debug, debug_674
    rx643_cur."!cursor_debug"("NEXT", "scoped")
  debug_674:
  rx643_fail:
    (rx643_rep, rx643_pos, $I10, $P10) = rx643_cur."!mark_fail"(0)
    lt rx643_pos, -1, rx643_done
    eq rx643_pos, -1, rx643_fail
    jump $I10
  rx643_done:
    rx643_cur."!cursor_fail"()
    if_null rx643_debug, debug_675
    rx643_cur."!cursor_debug"("FAIL", "scoped")
  debug_675:
    .return (rx643_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("153_1285886565.968") :method
.annotate 'line', 0
    $P645 = self."!PREFIX__!subrule"("ws", "")
    $P646 = self."!PREFIX__!subrule"("ws", "")
    new $P647, "ResizablePMCArray"
    push $P647, $P645
    push $P647, $P646
    .return ($P647)
.end


.namespace ["NQP";"Grammar"]
.sub "typename"  :subid("154_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx655_tgt
    .local int rx655_pos
    .local int rx655_off
    .local int rx655_eos
    .local int rx655_rep
    .local pmc rx655_cur
    .local pmc rx655_debug
    (rx655_cur, rx655_pos, rx655_tgt, $I10) = self."!cursor_start"()
    getattribute rx655_debug, rx655_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx655_cur
    .local pmc match
    .lex "$/", match
    length rx655_eos, rx655_tgt
    gt rx655_pos, rx655_eos, rx655_done
    set rx655_off, 0
    lt rx655_pos, 2, rx655_start
    sub rx655_off, rx655_pos, 1
    substr rx655_tgt, rx655_tgt, rx655_off
  rx655_start:
    eq $I10, 1, rx655_restart
    if_null rx655_debug, debug_676
    rx655_cur."!cursor_debug"("START", "typename")
  debug_676:
    $I10 = self.'from'()
    ne $I10, -1, rxscan659_done
    goto rxscan659_scan
  rxscan659_loop:
    ($P10) = rx655_cur."from"()
    inc $P10
    set rx655_pos, $P10
    ge rx655_pos, rx655_eos, rxscan659_done
  rxscan659_scan:
    set_addr $I10, rxscan659_loop
    rx655_cur."!mark_push"(0, rx655_pos, $I10)
  rxscan659_done:
  # rx subrule "name" subtype=capture negate=
    rx655_cur."!cursor_pos"(rx655_pos)
    $P10 = rx655_cur."name"()
    unless $P10, rx655_fail
    rx655_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx655_pos = $P10."pos"()
  # rx pass
    rx655_cur."!cursor_pass"(rx655_pos, "typename")
    if_null rx655_debug, debug_677
    rx655_cur."!cursor_debug"("PASS", "typename", " at pos=", rx655_pos)
  debug_677:
    .return (rx655_cur)
  rx655_restart:
    if_null rx655_debug, debug_678
    rx655_cur."!cursor_debug"("NEXT", "typename")
  debug_678:
  rx655_fail:
    (rx655_rep, rx655_pos, $I10, $P10) = rx655_cur."!mark_fail"(0)
    lt rx655_pos, -1, rx655_done
    eq rx655_pos, -1, rx655_fail
    jump $I10
  rx655_done:
    rx655_cur."!cursor_fail"()
    if_null rx655_debug, debug_679
    rx655_cur."!cursor_debug"("FAIL", "typename")
  debug_679:
    .return (rx655_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__typename"  :subid("155_1285886565.968") :method
.annotate 'line', 0
    $P657 = self."!PREFIX__!subrule"("name", "")
    new $P658, "ResizablePMCArray"
    push $P658, $P657
    .return ($P658)
.end


.namespace ["NQP";"Grammar"]
.sub "declarator"  :subid("156_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx661_tgt
    .local int rx661_pos
    .local int rx661_off
    .local int rx661_eos
    .local int rx661_rep
    .local pmc rx661_cur
    .local pmc rx661_debug
    (rx661_cur, rx661_pos, rx661_tgt, $I10) = self."!cursor_start"()
    getattribute rx661_debug, rx661_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx661_cur
    .local pmc match
    .lex "$/", match
    length rx661_eos, rx661_tgt
    gt rx661_pos, rx661_eos, rx661_done
    set rx661_off, 0
    lt rx661_pos, 2, rx661_start
    sub rx661_off, rx661_pos, 1
    substr rx661_tgt, rx661_tgt, rx661_off
  rx661_start:
    eq $I10, 1, rx661_restart
    if_null rx661_debug, debug_680
    rx661_cur."!cursor_debug"("START", "declarator")
  debug_680:
    $I10 = self.'from'()
    ne $I10, -1, rxscan666_done
    goto rxscan666_scan
  rxscan666_loop:
    ($P10) = rx661_cur."from"()
    inc $P10
    set rx661_pos, $P10
    ge rx661_pos, rx661_eos, rxscan666_done
  rxscan666_scan:
    set_addr $I10, rxscan666_loop
    rx661_cur."!mark_push"(0, rx661_pos, $I10)
  rxscan666_done:
  alt667_0:
    set_addr $I10, alt667_1
    rx661_cur."!mark_push"(0, rx661_pos, $I10)
  # rx subrule "variable_declarator" subtype=capture negate=
    rx661_cur."!cursor_pos"(rx661_pos)
    $P10 = rx661_cur."variable_declarator"()
    unless $P10, rx661_fail
    rx661_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx661_pos = $P10."pos"()
    goto alt667_end
  alt667_1:
  # rx subrule "routine_declarator" subtype=capture negate=
    rx661_cur."!cursor_pos"(rx661_pos)
    $P10 = rx661_cur."routine_declarator"()
    unless $P10, rx661_fail
    rx661_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx661_pos = $P10."pos"()
  alt667_end:
  # rx pass
    rx661_cur."!cursor_pass"(rx661_pos, "declarator")
    if_null rx661_debug, debug_681
    rx661_cur."!cursor_debug"("PASS", "declarator", " at pos=", rx661_pos)
  debug_681:
    .return (rx661_cur)
  rx661_restart:
    if_null rx661_debug, debug_682
    rx661_cur."!cursor_debug"("NEXT", "declarator")
  debug_682:
  rx661_fail:
    (rx661_rep, rx661_pos, $I10, $P10) = rx661_cur."!mark_fail"(0)
    lt rx661_pos, -1, rx661_done
    eq rx661_pos, -1, rx661_fail
    jump $I10
  rx661_done:
    rx661_cur."!cursor_fail"()
    if_null rx661_debug, debug_683
    rx661_cur."!cursor_debug"("FAIL", "declarator")
  debug_683:
    .return (rx661_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__declarator"  :subid("157_1285886565.968") :method
.annotate 'line', 0
    $P663 = self."!PREFIX__!subrule"("routine_declarator", "")
    $P664 = self."!PREFIX__!subrule"("variable_declarator", "")
    new $P665, "ResizablePMCArray"
    push $P665, $P663
    push $P665, $P664
    .return ($P665)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("158_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx669_tgt
    .local int rx669_pos
    .local int rx669_off
    .local int rx669_eos
    .local int rx669_rep
    .local pmc rx669_cur
    .local pmc rx669_debug
    (rx669_cur, rx669_pos, rx669_tgt, $I10) = self."!cursor_start"()
    getattribute rx669_debug, rx669_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx669_cur
    .local pmc match
    .lex "$/", match
    length rx669_eos, rx669_tgt
    gt rx669_pos, rx669_eos, rx669_done
    set rx669_off, 0
    lt rx669_pos, 2, rx669_start
    sub rx669_off, rx669_pos, 1
    substr rx669_tgt, rx669_tgt, rx669_off
  rx669_start:
    eq $I10, 1, rx669_restart
    if_null rx669_debug, debug_684
    rx669_cur."!cursor_debug"("START", "variable_declarator")
  debug_684:
    $I10 = self.'from'()
    ne $I10, -1, rxscan673_done
    goto rxscan673_scan
  rxscan673_loop:
    ($P10) = rx669_cur."from"()
    inc $P10
    set rx669_pos, $P10
    ge rx669_pos, rx669_eos, rxscan673_done
  rxscan673_scan:
    set_addr $I10, rxscan673_loop
    rx669_cur."!mark_push"(0, rx669_pos, $I10)
  rxscan673_done:
  # rx subrule "variable" subtype=capture negate=
    rx669_cur."!cursor_pos"(rx669_pos)
    $P10 = rx669_cur."variable"()
    unless $P10, rx669_fail
    rx669_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx669_pos = $P10."pos"()
  # rx pass
    rx669_cur."!cursor_pass"(rx669_pos, "variable_declarator")
    if_null rx669_debug, debug_685
    rx669_cur."!cursor_debug"("PASS", "variable_declarator", " at pos=", rx669_pos)
  debug_685:
    .return (rx669_cur)
  rx669_restart:
    if_null rx669_debug, debug_686
    rx669_cur."!cursor_debug"("NEXT", "variable_declarator")
  debug_686:
  rx669_fail:
    (rx669_rep, rx669_pos, $I10, $P10) = rx669_cur."!mark_fail"(0)
    lt rx669_pos, -1, rx669_done
    eq rx669_pos, -1, rx669_fail
    jump $I10
  rx669_done:
    rx669_cur."!cursor_fail"()
    if_null rx669_debug, debug_687
    rx669_cur."!cursor_debug"("FAIL", "variable_declarator")
  debug_687:
    .return (rx669_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("159_1285886565.968") :method
.annotate 'line', 0
    $P671 = self."!PREFIX__!subrule"("variable", "")
    new $P672, "ResizablePMCArray"
    push $P672, $P671
    .return ($P672)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("160_1285886565.968") :method
.annotate 'line', 0
    $P675 = self."!protoregex"("routine_declarator")
    .return ($P675)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("161_1285886565.968") :method
.annotate 'line', 0
    $P677 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P677)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("162_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx679_tgt
    .local int rx679_pos
    .local int rx679_off
    .local int rx679_eos
    .local int rx679_rep
    .local pmc rx679_cur
    .local pmc rx679_debug
    (rx679_cur, rx679_pos, rx679_tgt, $I10) = self."!cursor_start"()
    getattribute rx679_debug, rx679_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx679_cur
    .local pmc match
    .lex "$/", match
    length rx679_eos, rx679_tgt
    gt rx679_pos, rx679_eos, rx679_done
    set rx679_off, 0
    lt rx679_pos, 2, rx679_start
    sub rx679_off, rx679_pos, 1
    substr rx679_tgt, rx679_tgt, rx679_off
  rx679_start:
    eq $I10, 1, rx679_restart
    if_null rx679_debug, debug_688
    rx679_cur."!cursor_debug"("START", "routine_declarator:sym<sub>")
  debug_688:
    $I10 = self.'from'()
    ne $I10, -1, rxscan683_done
    goto rxscan683_scan
  rxscan683_loop:
    ($P10) = rx679_cur."from"()
    inc $P10
    set rx679_pos, $P10
    ge rx679_pos, rx679_eos, rxscan683_done
  rxscan683_scan:
    set_addr $I10, rxscan683_loop
    rx679_cur."!mark_push"(0, rx679_pos, $I10)
  rxscan683_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_684_fail
    rx679_cur."!mark_push"(0, rx679_pos, $I10)
  # rx literal  "sub"
    add $I11, rx679_pos, 3
    gt $I11, rx679_eos, rx679_fail
    sub $I11, rx679_pos, rx679_off
    substr $S10, rx679_tgt, $I11, 3
    ne $S10, "sub", rx679_fail
    add rx679_pos, 3
    set_addr $I10, rxcap_684_fail
    ($I12, $I11) = rx679_cur."!mark_peek"($I10)
    rx679_cur."!cursor_pos"($I11)
    ($P10) = rx679_cur."!cursor_start"()
    $P10."!cursor_pass"(rx679_pos, "")
    rx679_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_684_done
  rxcap_684_fail:
    goto rx679_fail
  rxcap_684_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx679_cur."!cursor_pos"(rx679_pos)
    $P10 = rx679_cur."routine_def"()
    unless $P10, rx679_fail
    rx679_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx679_pos = $P10."pos"()
  # rx pass
    rx679_cur."!cursor_pass"(rx679_pos, "routine_declarator:sym<sub>")
    if_null rx679_debug, debug_689
    rx679_cur."!cursor_debug"("PASS", "routine_declarator:sym<sub>", " at pos=", rx679_pos)
  debug_689:
    .return (rx679_cur)
  rx679_restart:
    if_null rx679_debug, debug_690
    rx679_cur."!cursor_debug"("NEXT", "routine_declarator:sym<sub>")
  debug_690:
  rx679_fail:
    (rx679_rep, rx679_pos, $I10, $P10) = rx679_cur."!mark_fail"(0)
    lt rx679_pos, -1, rx679_done
    eq rx679_pos, -1, rx679_fail
    jump $I10
  rx679_done:
    rx679_cur."!cursor_fail"()
    if_null rx679_debug, debug_691
    rx679_cur."!cursor_debug"("FAIL", "routine_declarator:sym<sub>")
  debug_691:
    .return (rx679_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("163_1285886565.968") :method
.annotate 'line', 0
    $P681 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P682, "ResizablePMCArray"
    push $P682, $P681
    .return ($P682)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("164_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx686_tgt
    .local int rx686_pos
    .local int rx686_off
    .local int rx686_eos
    .local int rx686_rep
    .local pmc rx686_cur
    .local pmc rx686_debug
    (rx686_cur, rx686_pos, rx686_tgt, $I10) = self."!cursor_start"()
    getattribute rx686_debug, rx686_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx686_cur
    .local pmc match
    .lex "$/", match
    length rx686_eos, rx686_tgt
    gt rx686_pos, rx686_eos, rx686_done
    set rx686_off, 0
    lt rx686_pos, 2, rx686_start
    sub rx686_off, rx686_pos, 1
    substr rx686_tgt, rx686_tgt, rx686_off
  rx686_start:
    eq $I10, 1, rx686_restart
    if_null rx686_debug, debug_692
    rx686_cur."!cursor_debug"("START", "routine_declarator:sym<method>")
  debug_692:
    $I10 = self.'from'()
    ne $I10, -1, rxscan690_done
    goto rxscan690_scan
  rxscan690_loop:
    ($P10) = rx686_cur."from"()
    inc $P10
    set rx686_pos, $P10
    ge rx686_pos, rx686_eos, rxscan690_done
  rxscan690_scan:
    set_addr $I10, rxscan690_loop
    rx686_cur."!mark_push"(0, rx686_pos, $I10)
  rxscan690_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_691_fail
    rx686_cur."!mark_push"(0, rx686_pos, $I10)
  # rx literal  "method"
    add $I11, rx686_pos, 6
    gt $I11, rx686_eos, rx686_fail
    sub $I11, rx686_pos, rx686_off
    substr $S10, rx686_tgt, $I11, 6
    ne $S10, "method", rx686_fail
    add rx686_pos, 6
    set_addr $I10, rxcap_691_fail
    ($I12, $I11) = rx686_cur."!mark_peek"($I10)
    rx686_cur."!cursor_pos"($I11)
    ($P10) = rx686_cur."!cursor_start"()
    $P10."!cursor_pass"(rx686_pos, "")
    rx686_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_691_done
  rxcap_691_fail:
    goto rx686_fail
  rxcap_691_done:
  # rx subrule "method_def" subtype=capture negate=
    rx686_cur."!cursor_pos"(rx686_pos)
    $P10 = rx686_cur."method_def"()
    unless $P10, rx686_fail
    rx686_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_def")
    rx686_pos = $P10."pos"()
  # rx pass
    rx686_cur."!cursor_pass"(rx686_pos, "routine_declarator:sym<method>")
    if_null rx686_debug, debug_693
    rx686_cur."!cursor_debug"("PASS", "routine_declarator:sym<method>", " at pos=", rx686_pos)
  debug_693:
    .return (rx686_cur)
  rx686_restart:
    if_null rx686_debug, debug_694
    rx686_cur."!cursor_debug"("NEXT", "routine_declarator:sym<method>")
  debug_694:
  rx686_fail:
    (rx686_rep, rx686_pos, $I10, $P10) = rx686_cur."!mark_fail"(0)
    lt rx686_pos, -1, rx686_done
    eq rx686_pos, -1, rx686_fail
    jump $I10
  rx686_done:
    rx686_cur."!cursor_fail"()
    if_null rx686_debug, debug_695
    rx686_cur."!cursor_debug"("FAIL", "routine_declarator:sym<method>")
  debug_695:
    .return (rx686_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("165_1285886565.968") :method
.annotate 'line', 0
    $P688 = self."!PREFIX__!subrule"("method_def", "method")
    new $P689, "ResizablePMCArray"
    push $P689, $P688
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("166_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx693_tgt
    .local int rx693_pos
    .local int rx693_off
    .local int rx693_eos
    .local int rx693_rep
    .local pmc rx693_cur
    .local pmc rx693_debug
    (rx693_cur, rx693_pos, rx693_tgt, $I10) = self."!cursor_start"()
    rx693_cur."!cursor_caparray"("sigil", "deflongname", "trait")
    getattribute rx693_debug, rx693_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx693_cur
    .local pmc match
    .lex "$/", match
    length rx693_eos, rx693_tgt
    gt rx693_pos, rx693_eos, rx693_done
    set rx693_off, 0
    lt rx693_pos, 2, rx693_start
    sub rx693_off, rx693_pos, 1
    substr rx693_tgt, rx693_tgt, rx693_off
  rx693_start:
    eq $I10, 1, rx693_restart
    if_null rx693_debug, debug_696
    rx693_cur."!cursor_debug"("START", "routine_def")
  debug_696:
    $I10 = self.'from'()
    ne $I10, -1, rxscan697_done
    goto rxscan697_scan
  rxscan697_loop:
    ($P10) = rx693_cur."from"()
    inc $P10
    set rx693_pos, $P10
    ge rx693_pos, rx693_eos, rxscan697_done
  rxscan697_scan:
    set_addr $I10, rxscan697_loop
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  rxscan697_done:
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx rxquantr699 ** 0..1
    set_addr $I10, rxquantr699_done
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  rxquantr699_loop:
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx subcapture "sigil"
    set_addr $I10, rxcap_702_fail
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  # rx rxquantr701 ** 0..1
    set_addr $I10, rxquantr701_done
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  rxquantr701_loop:
  # rx literal  "&"
    add $I11, rx693_pos, 1
    gt $I11, rx693_eos, rx693_fail
    sub $I11, rx693_pos, rx693_off
    ord $I11, rx693_tgt, $I11
    ne $I11, 38, rx693_fail
    add rx693_pos, 1
    set_addr $I10, rxquantr701_done
    (rx693_rep) = rx693_cur."!mark_commit"($I10)
  rxquantr701_done:
    set_addr $I10, rxcap_702_fail
    ($I12, $I11) = rx693_cur."!mark_peek"($I10)
    rx693_cur."!cursor_pos"($I11)
    ($P10) = rx693_cur."!cursor_start"()
    $P10."!cursor_pass"(rx693_pos, "")
    rx693_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_702_done
  rxcap_702_fail:
    goto rx693_fail
  rxcap_702_done:
  # rx subrule "deflongname" subtype=capture negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."deflongname"()
    unless $P10, rx693_fail
    rx693_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx693_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
    set_addr $I10, rxquantr699_done
    (rx693_rep) = rx693_cur."!mark_commit"($I10)
  rxquantr699_done:
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx subrule "newpad" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."newpad"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  alt706_0:
    set_addr $I10, alt706_1
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx693_pos, 1
    gt $I11, rx693_eos, rx693_fail
    sub $I11, rx693_pos, rx693_off
    ord $I11, rx693_tgt, $I11
    ne $I11, 40, rx693_fail
    add rx693_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."signature"()
    unless $P10, rx693_fail
    rx693_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx693_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx693_pos, 1
    gt $I11, rx693_eos, rx693_fail
    sub $I11, rx693_pos, rx693_off
    ord $I11, rx693_tgt, $I11
    ne $I11, 41, rx693_fail
    add rx693_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
    goto alt706_end
  alt706_1:
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  alt706_end:
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx rxquantr714 ** 0..*
    set_addr $I10, rxquantr714_done
    rx693_cur."!mark_push"(0, rx693_pos, $I10)
  rxquantr714_loop:
  # rx subrule "trait" subtype=capture negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."trait"()
    unless $P10, rx693_fail
    goto rxsubrule715_pass
  rxsubrule715_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx693_fail
  rxsubrule715_pass:
    set_addr $I10, rxsubrule715_back
    rx693_cur."!mark_push"(0, rx693_pos, $I10, $P10)
    $P10."!cursor_names"("trait")
    rx693_pos = $P10."pos"()
    set_addr $I10, rxquantr714_done
    (rx693_rep) = rx693_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr714_done
    rx693_cur."!mark_push"(rx693_rep, rx693_pos, $I10)
    goto rxquantr714_loop
  rxquantr714_done:
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx subrule "blockoid" subtype=capture negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."blockoid"()
    unless $P10, rx693_fail
    rx693_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx693_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx693_cur."!cursor_pos"(rx693_pos)
    $P10 = rx693_cur."ws"()
    unless $P10, rx693_fail
    rx693_pos = $P10."pos"()
  # rx pass
    rx693_cur."!cursor_pass"(rx693_pos, "routine_def")
    if_null rx693_debug, debug_697
    rx693_cur."!cursor_debug"("PASS", "routine_def", " at pos=", rx693_pos)
  debug_697:
    .return (rx693_cur)
  rx693_restart:
    if_null rx693_debug, debug_698
    rx693_cur."!cursor_debug"("NEXT", "routine_def")
  debug_698:
  rx693_fail:
    (rx693_rep, rx693_pos, $I10, $P10) = rx693_cur."!mark_fail"(0)
    lt rx693_pos, -1, rx693_done
    eq rx693_pos, -1, rx693_fail
    jump $I10
  rx693_done:
    rx693_cur."!cursor_fail"()
    if_null rx693_debug, debug_699
    rx693_cur."!cursor_debug"("FAIL", "routine_def")
  debug_699:
    .return (rx693_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("167_1285886565.968") :method
.annotate 'line', 0
    $P695 = self."!PREFIX__!subrule"("ws", "")
    new $P696, "ResizablePMCArray"
    push $P696, $P695
    .return ($P696)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("168_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx719_tgt
    .local int rx719_pos
    .local int rx719_off
    .local int rx719_eos
    .local int rx719_rep
    .local pmc rx719_cur
    .local pmc rx719_debug
    (rx719_cur, rx719_pos, rx719_tgt, $I10) = self."!cursor_start"()
    rx719_cur."!cursor_caparray"("deflongname", "trait")
    getattribute rx719_debug, rx719_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx719_cur
    .local pmc match
    .lex "$/", match
    length rx719_eos, rx719_tgt
    gt rx719_pos, rx719_eos, rx719_done
    set rx719_off, 0
    lt rx719_pos, 2, rx719_start
    sub rx719_off, rx719_pos, 1
    substr rx719_tgt, rx719_tgt, rx719_off
  rx719_start:
    eq $I10, 1, rx719_restart
    if_null rx719_debug, debug_700
    rx719_cur."!cursor_debug"("START", "method_def")
  debug_700:
    $I10 = self.'from'()
    ne $I10, -1, rxscan723_done
    goto rxscan723_scan
  rxscan723_loop:
    ($P10) = rx719_cur."from"()
    inc $P10
    set rx719_pos, $P10
    ge rx719_pos, rx719_eos, rxscan723_done
  rxscan723_scan:
    set_addr $I10, rxscan723_loop
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  rxscan723_done:
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx rxquantr725 ** 0..1
    set_addr $I10, rxquantr725_done
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  rxquantr725_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."deflongname"()
    unless $P10, rx719_fail
    goto rxsubrule726_pass
  rxsubrule726_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx719_fail
  rxsubrule726_pass:
    set_addr $I10, rxsubrule726_back
    rx719_cur."!mark_push"(0, rx719_pos, $I10, $P10)
    $P10."!cursor_names"("deflongname")
    rx719_pos = $P10."pos"()
    set_addr $I10, rxquantr725_done
    (rx719_rep) = rx719_cur."!mark_commit"($I10)
  rxquantr725_done:
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx subrule "newpad" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."newpad"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  alt729_0:
    set_addr $I10, alt729_1
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx719_pos, 1
    gt $I11, rx719_eos, rx719_fail
    sub $I11, rx719_pos, rx719_off
    ord $I11, rx719_tgt, $I11
    ne $I11, 40, rx719_fail
    add rx719_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."signature"()
    unless $P10, rx719_fail
    rx719_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx719_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx719_pos, 1
    gt $I11, rx719_eos, rx719_fail
    sub $I11, rx719_pos, rx719_off
    ord $I11, rx719_tgt, $I11
    ne $I11, 41, rx719_fail
    add rx719_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
    goto alt729_end
  alt729_1:
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  alt729_end:
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx rxquantr737 ** 0..*
    set_addr $I10, rxquantr737_done
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  rxquantr737_loop:
  # rx subrule "trait" subtype=capture negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."trait"()
    unless $P10, rx719_fail
    goto rxsubrule738_pass
  rxsubrule738_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx719_fail
  rxsubrule738_pass:
    set_addr $I10, rxsubrule738_back
    rx719_cur."!mark_push"(0, rx719_pos, $I10, $P10)
    $P10."!cursor_names"("trait")
    rx719_pos = $P10."pos"()
    set_addr $I10, rxquantr737_done
    (rx719_rep) = rx719_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr737_done
    rx719_cur."!mark_push"(rx719_rep, rx719_pos, $I10)
    goto rxquantr737_loop
  rxquantr737_done:
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx subrule "blockoid" subtype=capture negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."blockoid"()
    unless $P10, rx719_fail
    rx719_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx719_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."ws"()
    unless $P10, rx719_fail
    rx719_pos = $P10."pos"()
  # rx pass
    rx719_cur."!cursor_pass"(rx719_pos, "method_def")
    if_null rx719_debug, debug_701
    rx719_cur."!cursor_debug"("PASS", "method_def", " at pos=", rx719_pos)
  debug_701:
    .return (rx719_cur)
  rx719_restart:
    if_null rx719_debug, debug_702
    rx719_cur."!cursor_debug"("NEXT", "method_def")
  debug_702:
  rx719_fail:
    (rx719_rep, rx719_pos, $I10, $P10) = rx719_cur."!mark_fail"(0)
    lt rx719_pos, -1, rx719_done
    eq rx719_pos, -1, rx719_fail
    jump $I10
  rx719_done:
    rx719_cur."!cursor_fail"()
    if_null rx719_debug, debug_703
    rx719_cur."!cursor_debug"("FAIL", "method_def")
  debug_703:
    .return (rx719_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__method_def"  :subid("169_1285886565.968") :method
.annotate 'line', 0
    $P721 = self."!PREFIX__!subrule"("ws", "")
    new $P722, "ResizablePMCArray"
    push $P722, $P721
    .return ($P722)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator"  :subid("170_1285886565.968") :method
.annotate 'line', 0
    $P742 = self."!protoregex"("multi_declarator")
    .return ($P742)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__multi_declarator"  :subid("171_1285886565.968") :method
.annotate 'line', 0
    $P744 = self."!PREFIX__!protoregex"("multi_declarator")
    .return ($P744)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator:sym<multi>"  :subid("172_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    new $P746, "Undef"
    .lex "$*MULTINESS", $P746
    .local string rx747_tgt
    .local int rx747_pos
    .local int rx747_off
    .local int rx747_eos
    .local int rx747_rep
    .local pmc rx747_cur
    .local pmc rx747_debug
    (rx747_cur, rx747_pos, rx747_tgt, $I10) = self."!cursor_start"()
    getattribute rx747_debug, rx747_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx747_cur
    .local pmc match
    .lex "$/", match
    length rx747_eos, rx747_tgt
    gt rx747_pos, rx747_eos, rx747_done
    set rx747_off, 0
    lt rx747_pos, 2, rx747_start
    sub rx747_off, rx747_pos, 1
    substr rx747_tgt, rx747_tgt, rx747_off
  rx747_start:
    eq $I10, 1, rx747_restart
    if_null rx747_debug, debug_704
    rx747_cur."!cursor_debug"("START", "multi_declarator:sym<multi>")
  debug_704:
    $I10 = self.'from'()
    ne $I10, -1, rxscan751_done
    goto rxscan751_scan
  rxscan751_loop:
    ($P10) = rx747_cur."from"()
    inc $P10
    set rx747_pos, $P10
    ge rx747_pos, rx747_eos, rxscan751_done
  rxscan751_scan:
    set_addr $I10, rxscan751_loop
    rx747_cur."!mark_push"(0, rx747_pos, $I10)
  rxscan751_done:
    rx747_cur."!cursor_pos"(rx747_pos)
    new $P752, "String"
    assign $P752, "multi"
    store_lex "$*MULTINESS", $P752
  # rx subcapture "sym"
    set_addr $I10, rxcap_753_fail
    rx747_cur."!mark_push"(0, rx747_pos, $I10)
  # rx literal  "multi"
    add $I11, rx747_pos, 5
    gt $I11, rx747_eos, rx747_fail
    sub $I11, rx747_pos, rx747_off
    substr $S10, rx747_tgt, $I11, 5
    ne $S10, "multi", rx747_fail
    add rx747_pos, 5
    set_addr $I10, rxcap_753_fail
    ($I12, $I11) = rx747_cur."!mark_peek"($I10)
    rx747_cur."!cursor_pos"($I11)
    ($P10) = rx747_cur."!cursor_start"()
    $P10."!cursor_pass"(rx747_pos, "")
    rx747_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_753_done
  rxcap_753_fail:
    goto rx747_fail
  rxcap_753_done:
  # rx subrule "ws" subtype=method negate=
    rx747_cur."!cursor_pos"(rx747_pos)
    $P10 = rx747_cur."ws"()
    unless $P10, rx747_fail
    rx747_pos = $P10."pos"()
  alt754_0:
    set_addr $I10, alt754_1
    rx747_cur."!mark_push"(0, rx747_pos, $I10)
  # rx subrule "declarator" subtype=capture negate=
    rx747_cur."!cursor_pos"(rx747_pos)
    $P10 = rx747_cur."declarator"()
    unless $P10, rx747_fail
    rx747_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("declarator")
    rx747_pos = $P10."pos"()
    goto alt754_end
  alt754_1:
    set_addr $I10, alt754_2
    rx747_cur."!mark_push"(0, rx747_pos, $I10)
  # rx subrule "routine_def" subtype=capture negate=
    rx747_cur."!cursor_pos"(rx747_pos)
    $P10 = rx747_cur."routine_def"()
    unless $P10, rx747_fail
    rx747_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx747_pos = $P10."pos"()
    goto alt754_end
  alt754_2:
  # rx subrule "panic" subtype=method negate=
    rx747_cur."!cursor_pos"(rx747_pos)
    $P10 = rx747_cur."panic"("Malformed multi")
    unless $P10, rx747_fail
    rx747_pos = $P10."pos"()
  alt754_end:
  # rx pass
    rx747_cur."!cursor_pass"(rx747_pos, "multi_declarator:sym<multi>")
    if_null rx747_debug, debug_705
    rx747_cur."!cursor_debug"("PASS", "multi_declarator:sym<multi>", " at pos=", rx747_pos)
  debug_705:
    .return (rx747_cur)
  rx747_restart:
    if_null rx747_debug, debug_706
    rx747_cur."!cursor_debug"("NEXT", "multi_declarator:sym<multi>")
  debug_706:
  rx747_fail:
    (rx747_rep, rx747_pos, $I10, $P10) = rx747_cur."!mark_fail"(0)
    lt rx747_pos, -1, rx747_done
    eq rx747_pos, -1, rx747_fail
    jump $I10
  rx747_done:
    rx747_cur."!cursor_fail"()
    if_null rx747_debug, debug_707
    rx747_cur."!cursor_debug"("FAIL", "multi_declarator:sym<multi>")
  debug_707:
    .return (rx747_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__multi_declarator:sym<multi>"  :subid("173_1285886565.968") :method
.annotate 'line', 0
    $P749 = self."!PREFIX__!subrule"("ws", "multi")
    new $P750, "ResizablePMCArray"
    push $P750, $P749
    .return ($P750)
.end


.namespace ["NQP";"Grammar"]
.sub "multi_declarator:sym<null>"  :subid("174_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    new $P756, "Undef"
    .lex "$*MULTINESS", $P756
    .local string rx757_tgt
    .local int rx757_pos
    .local int rx757_off
    .local int rx757_eos
    .local int rx757_rep
    .local pmc rx757_cur
    .local pmc rx757_debug
    (rx757_cur, rx757_pos, rx757_tgt, $I10) = self."!cursor_start"()
    getattribute rx757_debug, rx757_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx757_cur
    .local pmc match
    .lex "$/", match
    length rx757_eos, rx757_tgt
    gt rx757_pos, rx757_eos, rx757_done
    set rx757_off, 0
    lt rx757_pos, 2, rx757_start
    sub rx757_off, rx757_pos, 1
    substr rx757_tgt, rx757_tgt, rx757_off
  rx757_start:
    eq $I10, 1, rx757_restart
    if_null rx757_debug, debug_708
    rx757_cur."!cursor_debug"("START", "multi_declarator:sym<null>")
  debug_708:
    $I10 = self.'from'()
    ne $I10, -1, rxscan761_done
    goto rxscan761_scan
  rxscan761_loop:
    ($P10) = rx757_cur."from"()
    inc $P10
    set rx757_pos, $P10
    ge rx757_pos, rx757_eos, rxscan761_done
  rxscan761_scan:
    set_addr $I10, rxscan761_loop
    rx757_cur."!mark_push"(0, rx757_pos, $I10)
  rxscan761_done:
    rx757_cur."!cursor_pos"(rx757_pos)
    new $P762, "String"
    assign $P762, ""
    store_lex "$*MULTINESS", $P762
  # rx subrule "declarator" subtype=capture negate=
    rx757_cur."!cursor_pos"(rx757_pos)
    $P10 = rx757_cur."declarator"()
    unless $P10, rx757_fail
    rx757_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("declarator")
    rx757_pos = $P10."pos"()
  # rx pass
    rx757_cur."!cursor_pass"(rx757_pos, "multi_declarator:sym<null>")
    if_null rx757_debug, debug_709
    rx757_cur."!cursor_debug"("PASS", "multi_declarator:sym<null>", " at pos=", rx757_pos)
  debug_709:
    .return (rx757_cur)
  rx757_restart:
    if_null rx757_debug, debug_710
    rx757_cur."!cursor_debug"("NEXT", "multi_declarator:sym<null>")
  debug_710:
  rx757_fail:
    (rx757_rep, rx757_pos, $I10, $P10) = rx757_cur."!mark_fail"(0)
    lt rx757_pos, -1, rx757_done
    eq rx757_pos, -1, rx757_fail
    jump $I10
  rx757_done:
    rx757_cur."!cursor_fail"()
    if_null rx757_debug, debug_711
    rx757_cur."!cursor_debug"("FAIL", "multi_declarator:sym<null>")
  debug_711:
    .return (rx757_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__multi_declarator:sym<null>"  :subid("175_1285886565.968") :method
.annotate 'line', 0
    $P759 = self."!PREFIX__!subrule"("declarator", "")
    new $P760, "ResizablePMCArray"
    push $P760, $P759
    .return ($P760)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("176_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx764_tgt
    .local int rx764_pos
    .local int rx764_off
    .local int rx764_eos
    .local int rx764_rep
    .local pmc rx764_cur
    .local pmc rx764_debug
    (rx764_cur, rx764_pos, rx764_tgt, $I10) = self."!cursor_start"()
    rx764_cur."!cursor_caparray"("parameter")
    getattribute rx764_debug, rx764_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx764_cur
    .local pmc match
    .lex "$/", match
    length rx764_eos, rx764_tgt
    gt rx764_pos, rx764_eos, rx764_done
    set rx764_off, 0
    lt rx764_pos, 2, rx764_start
    sub rx764_off, rx764_pos, 1
    substr rx764_tgt, rx764_tgt, rx764_off
  rx764_start:
    eq $I10, 1, rx764_restart
    if_null rx764_debug, debug_712
    rx764_cur."!cursor_debug"("START", "signature")
  debug_712:
    $I10 = self.'from'()
    ne $I10, -1, rxscan767_done
    goto rxscan767_scan
  rxscan767_loop:
    ($P10) = rx764_cur."from"()
    inc $P10
    set rx764_pos, $P10
    ge rx764_pos, rx764_eos, rxscan767_done
  rxscan767_scan:
    set_addr $I10, rxscan767_loop
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  rxscan767_done:
  # rx rxquantr768 ** 0..1
    set_addr $I10, rxquantr768_done
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  rxquantr768_loop:
  # rx rxquantr769 ** 1..*
    set_addr $I10, rxquantr769_done
    rx764_cur."!mark_push"(0, -1, $I10)
  rxquantr769_loop:
  # rx subrule "ws" subtype=method negate=
    rx764_cur."!cursor_pos"(rx764_pos)
    $P10 = rx764_cur."ws"()
    unless $P10, rx764_fail
    rx764_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx764_cur."!cursor_pos"(rx764_pos)
    $P10 = rx764_cur."parameter"()
    unless $P10, rx764_fail
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx764_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx764_cur."!cursor_pos"(rx764_pos)
    $P10 = rx764_cur."ws"()
    unless $P10, rx764_fail
    rx764_pos = $P10."pos"()
    set_addr $I10, rxquantr769_done
    (rx764_rep) = rx764_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr769_done
    rx764_cur."!mark_push"(rx764_rep, rx764_pos, $I10)
  # rx literal  ","
    add $I11, rx764_pos, 1
    gt $I11, rx764_eos, rx764_fail
    sub $I11, rx764_pos, rx764_off
    ord $I11, rx764_tgt, $I11
    ne $I11, 44, rx764_fail
    add rx764_pos, 1
    goto rxquantr769_loop
  rxquantr769_done:
    set_addr $I10, rxquantr768_done
    (rx764_rep) = rx764_cur."!mark_commit"($I10)
  rxquantr768_done:
  # rx pass
    rx764_cur."!cursor_pass"(rx764_pos, "signature")
    if_null rx764_debug, debug_713
    rx764_cur."!cursor_debug"("PASS", "signature", " at pos=", rx764_pos)
  debug_713:
    .return (rx764_cur)
  rx764_restart:
    if_null rx764_debug, debug_714
    rx764_cur."!cursor_debug"("NEXT", "signature")
  debug_714:
  rx764_fail:
    (rx764_rep, rx764_pos, $I10, $P10) = rx764_cur."!mark_fail"(0)
    lt rx764_pos, -1, rx764_done
    eq rx764_pos, -1, rx764_fail
    jump $I10
  rx764_done:
    rx764_cur."!cursor_fail"()
    if_null rx764_debug, debug_715
    rx764_cur."!cursor_debug"("FAIL", "signature")
  debug_715:
    .return (rx764_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("177_1285886565.968") :method
.annotate 'line', 0
    new $P766, "ResizablePMCArray"
    push $P766, ""
    .return ($P766)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("178_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx771_tgt
    .local int rx771_pos
    .local int rx771_off
    .local int rx771_eos
    .local int rx771_rep
    .local pmc rx771_cur
    .local pmc rx771_debug
    (rx771_cur, rx771_pos, rx771_tgt, $I10) = self."!cursor_start"()
    rx771_cur."!cursor_caparray"("typename", "default_value")
    getattribute rx771_debug, rx771_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx771_cur
    .local pmc match
    .lex "$/", match
    length rx771_eos, rx771_tgt
    gt rx771_pos, rx771_eos, rx771_done
    set rx771_off, 0
    lt rx771_pos, 2, rx771_start
    sub rx771_off, rx771_pos, 1
    substr rx771_tgt, rx771_tgt, rx771_off
  rx771_start:
    eq $I10, 1, rx771_restart
    if_null rx771_debug, debug_716
    rx771_cur."!cursor_debug"("START", "parameter")
  debug_716:
    $I10 = self.'from'()
    ne $I10, -1, rxscan774_done
    goto rxscan774_scan
  rxscan774_loop:
    ($P10) = rx771_cur."from"()
    inc $P10
    set rx771_pos, $P10
    ge rx771_pos, rx771_eos, rxscan774_done
  rxscan774_scan:
    set_addr $I10, rxscan774_loop
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  rxscan774_done:
  # rx rxquantr775 ** 0..*
    set_addr $I10, rxquantr775_done
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  rxquantr775_loop:
  # rx subrule "typename" subtype=capture negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."typename"()
    unless $P10, rx771_fail
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("typename")
    rx771_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."ws"()
    unless $P10, rx771_fail
    rx771_pos = $P10."pos"()
    set_addr $I10, rxquantr775_done
    (rx771_rep) = rx771_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr775_done
    rx771_cur."!mark_push"(rx771_rep, rx771_pos, $I10)
    goto rxquantr775_loop
  rxquantr775_done:
  alt776_0:
    set_addr $I10, alt776_1
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  # rx subcapture "quant"
    set_addr $I10, rxcap_777_fail
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  # rx literal  "*"
    add $I11, rx771_pos, 1
    gt $I11, rx771_eos, rx771_fail
    sub $I11, rx771_pos, rx771_off
    ord $I11, rx771_tgt, $I11
    ne $I11, 42, rx771_fail
    add rx771_pos, 1
    set_addr $I10, rxcap_777_fail
    ($I12, $I11) = rx771_cur."!mark_peek"($I10)
    rx771_cur."!cursor_pos"($I11)
    ($P10) = rx771_cur."!cursor_start"()
    $P10."!cursor_pass"(rx771_pos, "")
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_777_done
  rxcap_777_fail:
    goto rx771_fail
  rxcap_777_done:
  # rx subrule "param_var" subtype=capture negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."param_var"()
    unless $P10, rx771_fail
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx771_pos = $P10."pos"()
    goto alt776_end
  alt776_1:
  alt778_0:
    set_addr $I10, alt778_1
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."param_var"()
    unless $P10, rx771_fail
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx771_pos = $P10."pos"()
    goto alt778_end
  alt778_1:
  # rx subrule "named_param" subtype=capture negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."named_param"()
    unless $P10, rx771_fail
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx771_pos = $P10."pos"()
  alt778_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_780_fail
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  alt779_0:
    set_addr $I10, alt779_1
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  # rx literal  "?"
    add $I11, rx771_pos, 1
    gt $I11, rx771_eos, rx771_fail
    sub $I11, rx771_pos, rx771_off
    ord $I11, rx771_tgt, $I11
    ne $I11, 63, rx771_fail
    add rx771_pos, 1
    goto alt779_end
  alt779_1:
    set_addr $I10, alt779_2
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  # rx literal  "!"
    add $I11, rx771_pos, 1
    gt $I11, rx771_eos, rx771_fail
    sub $I11, rx771_pos, rx771_off
    ord $I11, rx771_tgt, $I11
    ne $I11, 33, rx771_fail
    add rx771_pos, 1
    goto alt779_end
  alt779_2:
  alt779_end:
    set_addr $I10, rxcap_780_fail
    ($I12, $I11) = rx771_cur."!mark_peek"($I10)
    rx771_cur."!cursor_pos"($I11)
    ($P10) = rx771_cur."!cursor_start"()
    $P10."!cursor_pass"(rx771_pos, "")
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_780_done
  rxcap_780_fail:
    goto rx771_fail
  rxcap_780_done:
  alt776_end:
  # rx rxquantr781 ** 0..1
    set_addr $I10, rxquantr781_done
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  rxquantr781_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."default_value"()
    unless $P10, rx771_fail
    goto rxsubrule782_pass
  rxsubrule782_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx771_fail
  rxsubrule782_pass:
    set_addr $I10, rxsubrule782_back
    rx771_cur."!mark_push"(0, rx771_pos, $I10, $P10)
    $P10."!cursor_names"("default_value")
    rx771_pos = $P10."pos"()
    set_addr $I10, rxquantr781_done
    (rx771_rep) = rx771_cur."!mark_commit"($I10)
  rxquantr781_done:
  # rx pass
    rx771_cur."!cursor_pass"(rx771_pos, "parameter")
    if_null rx771_debug, debug_717
    rx771_cur."!cursor_debug"("PASS", "parameter", " at pos=", rx771_pos)
  debug_717:
    .return (rx771_cur)
  rx771_restart:
    if_null rx771_debug, debug_718
    rx771_cur."!cursor_debug"("NEXT", "parameter")
  debug_718:
  rx771_fail:
    (rx771_rep, rx771_pos, $I10, $P10) = rx771_cur."!mark_fail"(0)
    lt rx771_pos, -1, rx771_done
    eq rx771_pos, -1, rx771_fail
    jump $I10
  rx771_done:
    rx771_cur."!cursor_fail"()
    if_null rx771_debug, debug_719
    rx771_cur."!cursor_debug"("FAIL", "parameter")
  debug_719:
    .return (rx771_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("179_1285886565.968") :method
.annotate 'line', 0
    new $P773, "ResizablePMCArray"
    push $P773, ""
    .return ($P773)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("180_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx784_tgt
    .local int rx784_pos
    .local int rx784_off
    .local int rx784_eos
    .local int rx784_rep
    .local pmc rx784_cur
    .local pmc rx784_debug
    (rx784_cur, rx784_pos, rx784_tgt, $I10) = self."!cursor_start"()
    rx784_cur."!cursor_caparray"("twigil")
    getattribute rx784_debug, rx784_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx784_cur
    .local pmc match
    .lex "$/", match
    length rx784_eos, rx784_tgt
    gt rx784_pos, rx784_eos, rx784_done
    set rx784_off, 0
    lt rx784_pos, 2, rx784_start
    sub rx784_off, rx784_pos, 1
    substr rx784_tgt, rx784_tgt, rx784_off
  rx784_start:
    eq $I10, 1, rx784_restart
    if_null rx784_debug, debug_720
    rx784_cur."!cursor_debug"("START", "param_var")
  debug_720:
    $I10 = self.'from'()
    ne $I10, -1, rxscan788_done
    goto rxscan788_scan
  rxscan788_loop:
    ($P10) = rx784_cur."from"()
    inc $P10
    set rx784_pos, $P10
    ge rx784_pos, rx784_eos, rxscan788_done
  rxscan788_scan:
    set_addr $I10, rxscan788_loop
    rx784_cur."!mark_push"(0, rx784_pos, $I10)
  rxscan788_done:
  # rx subrule "sigil" subtype=capture negate=
    rx784_cur."!cursor_pos"(rx784_pos)
    $P10 = rx784_cur."sigil"()
    unless $P10, rx784_fail
    rx784_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx784_pos = $P10."pos"()
  # rx rxquantr789 ** 0..1
    set_addr $I10, rxquantr789_done
    rx784_cur."!mark_push"(0, rx784_pos, $I10)
  rxquantr789_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx784_cur."!cursor_pos"(rx784_pos)
    $P10 = rx784_cur."twigil"()
    unless $P10, rx784_fail
    goto rxsubrule790_pass
  rxsubrule790_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx784_fail
  rxsubrule790_pass:
    set_addr $I10, rxsubrule790_back
    rx784_cur."!mark_push"(0, rx784_pos, $I10, $P10)
    $P10."!cursor_names"("twigil")
    rx784_pos = $P10."pos"()
    set_addr $I10, rxquantr789_done
    (rx784_rep) = rx784_cur."!mark_commit"($I10)
  rxquantr789_done:
  alt791_0:
    set_addr $I10, alt791_1
    rx784_cur."!mark_push"(0, rx784_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx784_cur."!cursor_pos"(rx784_pos)
    $P10 = rx784_cur."ident"()
    unless $P10, rx784_fail
    rx784_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx784_pos = $P10."pos"()
    goto alt791_end
  alt791_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_792_fail
    rx784_cur."!mark_push"(0, rx784_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx784_pos, rx784_eos, rx784_fail
    sub $I10, rx784_pos, rx784_off
    substr $S10, rx784_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx784_fail
    inc rx784_pos
    set_addr $I10, rxcap_792_fail
    ($I12, $I11) = rx784_cur."!mark_peek"($I10)
    rx784_cur."!cursor_pos"($I11)
    ($P10) = rx784_cur."!cursor_start"()
    $P10."!cursor_pass"(rx784_pos, "")
    rx784_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_792_done
  rxcap_792_fail:
    goto rx784_fail
  rxcap_792_done:
  alt791_end:
  # rx pass
    rx784_cur."!cursor_pass"(rx784_pos, "param_var")
    if_null rx784_debug, debug_721
    rx784_cur."!cursor_debug"("PASS", "param_var", " at pos=", rx784_pos)
  debug_721:
    .return (rx784_cur)
  rx784_restart:
    if_null rx784_debug, debug_722
    rx784_cur."!cursor_debug"("NEXT", "param_var")
  debug_722:
  rx784_fail:
    (rx784_rep, rx784_pos, $I10, $P10) = rx784_cur."!mark_fail"(0)
    lt rx784_pos, -1, rx784_done
    eq rx784_pos, -1, rx784_fail
    jump $I10
  rx784_done:
    rx784_cur."!cursor_fail"()
    if_null rx784_debug, debug_723
    rx784_cur."!cursor_debug"("FAIL", "param_var")
  debug_723:
    .return (rx784_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("181_1285886565.968") :method
.annotate 'line', 0
    $P786 = self."!PREFIX__!subrule"("sigil", "")
    new $P787, "ResizablePMCArray"
    push $P787, $P786
    .return ($P787)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("182_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx794_tgt
    .local int rx794_pos
    .local int rx794_off
    .local int rx794_eos
    .local int rx794_rep
    .local pmc rx794_cur
    .local pmc rx794_debug
    (rx794_cur, rx794_pos, rx794_tgt, $I10) = self."!cursor_start"()
    getattribute rx794_debug, rx794_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx794_cur
    .local pmc match
    .lex "$/", match
    length rx794_eos, rx794_tgt
    gt rx794_pos, rx794_eos, rx794_done
    set rx794_off, 0
    lt rx794_pos, 2, rx794_start
    sub rx794_off, rx794_pos, 1
    substr rx794_tgt, rx794_tgt, rx794_off
  rx794_start:
    eq $I10, 1, rx794_restart
    if_null rx794_debug, debug_724
    rx794_cur."!cursor_debug"("START", "named_param")
  debug_724:
    $I10 = self.'from'()
    ne $I10, -1, rxscan798_done
    goto rxscan798_scan
  rxscan798_loop:
    ($P10) = rx794_cur."from"()
    inc $P10
    set rx794_pos, $P10
    ge rx794_pos, rx794_eos, rxscan798_done
  rxscan798_scan:
    set_addr $I10, rxscan798_loop
    rx794_cur."!mark_push"(0, rx794_pos, $I10)
  rxscan798_done:
  # rx literal  ":"
    add $I11, rx794_pos, 1
    gt $I11, rx794_eos, rx794_fail
    sub $I11, rx794_pos, rx794_off
    ord $I11, rx794_tgt, $I11
    ne $I11, 58, rx794_fail
    add rx794_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx794_cur."!cursor_pos"(rx794_pos)
    $P10 = rx794_cur."param_var"()
    unless $P10, rx794_fail
    rx794_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx794_pos = $P10."pos"()
  # rx pass
    rx794_cur."!cursor_pass"(rx794_pos, "named_param")
    if_null rx794_debug, debug_725
    rx794_cur."!cursor_debug"("PASS", "named_param", " at pos=", rx794_pos)
  debug_725:
    .return (rx794_cur)
  rx794_restart:
    if_null rx794_debug, debug_726
    rx794_cur."!cursor_debug"("NEXT", "named_param")
  debug_726:
  rx794_fail:
    (rx794_rep, rx794_pos, $I10, $P10) = rx794_cur."!mark_fail"(0)
    lt rx794_pos, -1, rx794_done
    eq rx794_pos, -1, rx794_fail
    jump $I10
  rx794_done:
    rx794_cur."!cursor_fail"()
    if_null rx794_debug, debug_727
    rx794_cur."!cursor_debug"("FAIL", "named_param")
  debug_727:
    .return (rx794_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("183_1285886565.968") :method
.annotate 'line', 0
    $P796 = self."!PREFIX__!subrule"("param_var", ":")
    new $P797, "ResizablePMCArray"
    push $P797, $P796
    .return ($P797)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("184_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx800_tgt
    .local int rx800_pos
    .local int rx800_off
    .local int rx800_eos
    .local int rx800_rep
    .local pmc rx800_cur
    .local pmc rx800_debug
    (rx800_cur, rx800_pos, rx800_tgt, $I10) = self."!cursor_start"()
    getattribute rx800_debug, rx800_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx800_cur
    .local pmc match
    .lex "$/", match
    length rx800_eos, rx800_tgt
    gt rx800_pos, rx800_eos, rx800_done
    set rx800_off, 0
    lt rx800_pos, 2, rx800_start
    sub rx800_off, rx800_pos, 1
    substr rx800_tgt, rx800_tgt, rx800_off
  rx800_start:
    eq $I10, 1, rx800_restart
    if_null rx800_debug, debug_728
    rx800_cur."!cursor_debug"("START", "default_value")
  debug_728:
    $I10 = self.'from'()
    ne $I10, -1, rxscan804_done
    goto rxscan804_scan
  rxscan804_loop:
    ($P10) = rx800_cur."from"()
    inc $P10
    set rx800_pos, $P10
    ge rx800_pos, rx800_eos, rxscan804_done
  rxscan804_scan:
    set_addr $I10, rxscan804_loop
    rx800_cur."!mark_push"(0, rx800_pos, $I10)
  rxscan804_done:
  # rx subrule "ws" subtype=method negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."ws"()
    unless $P10, rx800_fail
    rx800_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx800_pos, 1
    gt $I11, rx800_eos, rx800_fail
    sub $I11, rx800_pos, rx800_off
    ord $I11, rx800_tgt, $I11
    ne $I11, 61, rx800_fail
    add rx800_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."ws"()
    unless $P10, rx800_fail
    rx800_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."EXPR"("i=")
    unless $P10, rx800_fail
    rx800_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx800_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."ws"()
    unless $P10, rx800_fail
    rx800_pos = $P10."pos"()
  # rx pass
    rx800_cur."!cursor_pass"(rx800_pos, "default_value")
    if_null rx800_debug, debug_729
    rx800_cur."!cursor_debug"("PASS", "default_value", " at pos=", rx800_pos)
  debug_729:
    .return (rx800_cur)
  rx800_restart:
    if_null rx800_debug, debug_730
    rx800_cur."!cursor_debug"("NEXT", "default_value")
  debug_730:
  rx800_fail:
    (rx800_rep, rx800_pos, $I10, $P10) = rx800_cur."!mark_fail"(0)
    lt rx800_pos, -1, rx800_done
    eq rx800_pos, -1, rx800_fail
    jump $I10
  rx800_done:
    rx800_cur."!cursor_fail"()
    if_null rx800_debug, debug_731
    rx800_cur."!cursor_debug"("FAIL", "default_value")
  debug_731:
    .return (rx800_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("185_1285886565.968") :method
.annotate 'line', 0
    $P802 = self."!PREFIX__!subrule"("ws", "")
    new $P803, "ResizablePMCArray"
    push $P803, $P802
    .return ($P803)
.end


.namespace ["NQP";"Grammar"]
.sub "trait"  :subid("186_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx809_tgt
    .local int rx809_pos
    .local int rx809_off
    .local int rx809_eos
    .local int rx809_rep
    .local pmc rx809_cur
    .local pmc rx809_debug
    (rx809_cur, rx809_pos, rx809_tgt, $I10) = self."!cursor_start"()
    getattribute rx809_debug, rx809_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx809_cur
    .local pmc match
    .lex "$/", match
    length rx809_eos, rx809_tgt
    gt rx809_pos, rx809_eos, rx809_done
    set rx809_off, 0
    lt rx809_pos, 2, rx809_start
    sub rx809_off, rx809_pos, 1
    substr rx809_tgt, rx809_tgt, rx809_off
  rx809_start:
    eq $I10, 1, rx809_restart
    if_null rx809_debug, debug_732
    rx809_cur."!cursor_debug"("START", "trait")
  debug_732:
    $I10 = self.'from'()
    ne $I10, -1, rxscan813_done
    goto rxscan813_scan
  rxscan813_loop:
    ($P10) = rx809_cur."from"()
    inc $P10
    set rx809_pos, $P10
    ge rx809_pos, rx809_eos, rxscan813_done
  rxscan813_scan:
    set_addr $I10, rxscan813_loop
    rx809_cur."!mark_push"(0, rx809_pos, $I10)
  rxscan813_done:
  # rx subrule "ws" subtype=method negate=
    rx809_cur."!cursor_pos"(rx809_pos)
    $P10 = rx809_cur."ws"()
    unless $P10, rx809_fail
    rx809_pos = $P10."pos"()
  # rx subrule "trait_mod" subtype=capture negate=
    rx809_cur."!cursor_pos"(rx809_pos)
    $P10 = rx809_cur."trait_mod"()
    unless $P10, rx809_fail
    rx809_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("trait_mod")
    rx809_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx809_cur."!cursor_pos"(rx809_pos)
    $P10 = rx809_cur."ws"()
    unless $P10, rx809_fail
    rx809_pos = $P10."pos"()
  # rx pass
    rx809_cur."!cursor_pass"(rx809_pos, "trait")
    if_null rx809_debug, debug_733
    rx809_cur."!cursor_debug"("PASS", "trait", " at pos=", rx809_pos)
  debug_733:
    .return (rx809_cur)
  rx809_restart:
    if_null rx809_debug, debug_734
    rx809_cur."!cursor_debug"("NEXT", "trait")
  debug_734:
  rx809_fail:
    (rx809_rep, rx809_pos, $I10, $P10) = rx809_cur."!mark_fail"(0)
    lt rx809_pos, -1, rx809_done
    eq rx809_pos, -1, rx809_fail
    jump $I10
  rx809_done:
    rx809_cur."!cursor_fail"()
    if_null rx809_debug, debug_735
    rx809_cur."!cursor_debug"("FAIL", "trait")
  debug_735:
    .return (rx809_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__trait"  :subid("187_1285886565.968") :method
.annotate 'line', 0
    $P811 = self."!PREFIX__!subrule"("ws", "")
    new $P812, "ResizablePMCArray"
    push $P812, $P811
    .return ($P812)
.end


.namespace ["NQP";"Grammar"]
.sub "trait_mod"  :subid("188_1285886565.968") :method
.annotate 'line', 0
    $P817 = self."!protoregex"("trait_mod")
    .return ($P817)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__trait_mod"  :subid("189_1285886565.968") :method
.annotate 'line', 0
    $P819 = self."!PREFIX__!protoregex"("trait_mod")
    .return ($P819)
.end


.namespace ["NQP";"Grammar"]
.sub "trait_mod:sym<is>"  :subid("190_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx821_tgt
    .local int rx821_pos
    .local int rx821_off
    .local int rx821_eos
    .local int rx821_rep
    .local pmc rx821_cur
    .local pmc rx821_debug
    (rx821_cur, rx821_pos, rx821_tgt, $I10) = self."!cursor_start"()
    rx821_cur."!cursor_caparray"("circumfix")
    getattribute rx821_debug, rx821_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx821_cur
    .local pmc match
    .lex "$/", match
    length rx821_eos, rx821_tgt
    gt rx821_pos, rx821_eos, rx821_done
    set rx821_off, 0
    lt rx821_pos, 2, rx821_start
    sub rx821_off, rx821_pos, 1
    substr rx821_tgt, rx821_tgt, rx821_off
  rx821_start:
    eq $I10, 1, rx821_restart
    if_null rx821_debug, debug_736
    rx821_cur."!cursor_debug"("START", "trait_mod:sym<is>")
  debug_736:
    $I10 = self.'from'()
    ne $I10, -1, rxscan825_done
    goto rxscan825_scan
  rxscan825_loop:
    ($P10) = rx821_cur."from"()
    inc $P10
    set rx821_pos, $P10
    ge rx821_pos, rx821_eos, rxscan825_done
  rxscan825_scan:
    set_addr $I10, rxscan825_loop
    rx821_cur."!mark_push"(0, rx821_pos, $I10)
  rxscan825_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_826_fail
    rx821_cur."!mark_push"(0, rx821_pos, $I10)
  # rx literal  "is"
    add $I11, rx821_pos, 2
    gt $I11, rx821_eos, rx821_fail
    sub $I11, rx821_pos, rx821_off
    substr $S10, rx821_tgt, $I11, 2
    ne $S10, "is", rx821_fail
    add rx821_pos, 2
    set_addr $I10, rxcap_826_fail
    ($I12, $I11) = rx821_cur."!mark_peek"($I10)
    rx821_cur."!cursor_pos"($I11)
    ($P10) = rx821_cur."!cursor_start"()
    $P10."!cursor_pass"(rx821_pos, "")
    rx821_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_826_done
  rxcap_826_fail:
    goto rx821_fail
  rxcap_826_done:
  # rx subrule "ws" subtype=method negate=
    rx821_cur."!cursor_pos"(rx821_pos)
    $P10 = rx821_cur."ws"()
    unless $P10, rx821_fail
    rx821_pos = $P10."pos"()
  # rx subrule "deflongname" subtype=capture negate=
    rx821_cur."!cursor_pos"(rx821_pos)
    $P10 = rx821_cur."deflongname"()
    unless $P10, rx821_fail
    rx821_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx821_pos = $P10."pos"()
  # rx rxquantr828 ** 0..1
    set_addr $I10, rxquantr828_done
    rx821_cur."!mark_push"(0, rx821_pos, $I10)
  rxquantr828_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx821_cur."!cursor_pos"(rx821_pos)
    $P10 = rx821_cur."circumfix"()
    unless $P10, rx821_fail
    goto rxsubrule829_pass
  rxsubrule829_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx821_fail
  rxsubrule829_pass:
    set_addr $I10, rxsubrule829_back
    rx821_cur."!mark_push"(0, rx821_pos, $I10, $P10)
    $P10."!cursor_names"("circumfix")
    rx821_pos = $P10."pos"()
    set_addr $I10, rxquantr828_done
    (rx821_rep) = rx821_cur."!mark_commit"($I10)
  rxquantr828_done:
  # rx subrule "ws" subtype=method negate=
    rx821_cur."!cursor_pos"(rx821_pos)
    $P10 = rx821_cur."ws"()
    unless $P10, rx821_fail
    rx821_pos = $P10."pos"()
  # rx pass
    rx821_cur."!cursor_pass"(rx821_pos, "trait_mod:sym<is>")
    if_null rx821_debug, debug_737
    rx821_cur."!cursor_debug"("PASS", "trait_mod:sym<is>", " at pos=", rx821_pos)
  debug_737:
    .return (rx821_cur)
  rx821_restart:
    if_null rx821_debug, debug_738
    rx821_cur."!cursor_debug"("NEXT", "trait_mod:sym<is>")
  debug_738:
  rx821_fail:
    (rx821_rep, rx821_pos, $I10, $P10) = rx821_cur."!mark_fail"(0)
    lt rx821_pos, -1, rx821_done
    eq rx821_pos, -1, rx821_fail
    jump $I10
  rx821_done:
    rx821_cur."!cursor_fail"()
    if_null rx821_debug, debug_739
    rx821_cur."!cursor_debug"("FAIL", "trait_mod:sym<is>")
  debug_739:
    .return (rx821_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__trait_mod:sym<is>"  :subid("191_1285886565.968") :method
.annotate 'line', 0
    $P823 = self."!PREFIX__!subrule"("ws", "is")
    new $P824, "ResizablePMCArray"
    push $P824, $P823
    .return ($P824)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("192_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx832_tgt
    .local int rx832_pos
    .local int rx832_off
    .local int rx832_eos
    .local int rx832_rep
    .local pmc rx832_cur
    .local pmc rx832_debug
    (rx832_cur, rx832_pos, rx832_tgt, $I10) = self."!cursor_start"()
    rx832_cur."!cursor_caparray"("signature")
    getattribute rx832_debug, rx832_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx832_cur
    .local pmc match
    .lex "$/", match
    length rx832_eos, rx832_tgt
    gt rx832_pos, rx832_eos, rx832_done
    set rx832_off, 0
    lt rx832_pos, 2, rx832_start
    sub rx832_off, rx832_pos, 1
    substr rx832_tgt, rx832_tgt, rx832_off
  rx832_start:
    eq $I10, 1, rx832_restart
    if_null rx832_debug, debug_740
    rx832_cur."!cursor_debug"("START", "regex_declarator")
  debug_740:
    $I10 = self.'from'()
    ne $I10, -1, rxscan836_done
    goto rxscan836_scan
  rxscan836_loop:
    ($P10) = rx832_cur."from"()
    inc $P10
    set rx832_pos, $P10
    ge rx832_pos, rx832_eos, rxscan836_done
  rxscan836_scan:
    set_addr $I10, rxscan836_loop
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  rxscan836_done:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  alt838_0:
    set_addr $I10, alt838_1
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_840_fail
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  # rx literal  "proto"
    add $I11, rx832_pos, 5
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 5
    ne $S10, "proto", rx832_fail
    add rx832_pos, 5
    set_addr $I10, rxcap_840_fail
    ($I12, $I11) = rx832_cur."!mark_peek"($I10)
    rx832_cur."!cursor_pos"($I11)
    ($P10) = rx832_cur."!cursor_start"()
    $P10."!cursor_pass"(rx832_pos, "")
    rx832_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_840_done
  rxcap_840_fail:
    goto rx832_fail
  rxcap_840_done:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  alt842_0:
    set_addr $I10, alt842_1
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  # rx literal  "regex"
    add $I11, rx832_pos, 5
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 5
    ne $S10, "regex", rx832_fail
    add rx832_pos, 5
    goto alt842_end
  alt842_1:
    set_addr $I10, alt842_2
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  # rx literal  "token"
    add $I11, rx832_pos, 5
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 5
    ne $S10, "token", rx832_fail
    add rx832_pos, 5
    goto alt842_end
  alt842_2:
  # rx literal  "rule"
    add $I11, rx832_pos, 4
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 4
    ne $S10, "rule", rx832_fail
    add rx832_pos, 4
  alt842_end:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subrule "deflongname" subtype=capture negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."deflongname"()
    unless $P10, rx832_fail
    rx832_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx832_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  alt845_0:
    set_addr $I10, alt845_1
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx literal  "{"
    add $I11, rx832_pos, 1
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    ord $I11, rx832_tgt, $I11
    ne $I11, 123, rx832_fail
    add rx832_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx832_pos, 5
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 5
    ne $S10, "<...>", rx832_fail
    add rx832_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx832_pos, 1
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    ord $I11, rx832_tgt, $I11
    ne $I11, 125, rx832_fail
    add rx832_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ENDSTMT"()
    unless $P10, rx832_fail
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
    goto alt845_end
  alt845_1:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."panic"("Proto regex body must be <...>")
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  alt845_end:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
    goto alt838_end
  alt838_1:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_855_fail
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  alt854_0:
    set_addr $I10, alt854_1
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  # rx literal  "regex"
    add $I11, rx832_pos, 5
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 5
    ne $S10, "regex", rx832_fail
    add rx832_pos, 5
    goto alt854_end
  alt854_1:
    set_addr $I10, alt854_2
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  # rx literal  "token"
    add $I11, rx832_pos, 5
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 5
    ne $S10, "token", rx832_fail
    add rx832_pos, 5
    goto alt854_end
  alt854_2:
  # rx literal  "rule"
    add $I11, rx832_pos, 4
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    substr $S10, rx832_tgt, $I11, 4
    ne $S10, "rule", rx832_fail
    add rx832_pos, 4
  alt854_end:
    set_addr $I10, rxcap_855_fail
    ($I12, $I11) = rx832_cur."!mark_peek"($I10)
    rx832_cur."!cursor_pos"($I11)
    ($P10) = rx832_cur."!cursor_start"()
    $P10."!cursor_pass"(rx832_pos, "")
    rx832_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_855_done
  rxcap_855_fail:
    goto rx832_fail
  rxcap_855_done:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subrule "deflongname" subtype=capture negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."deflongname"()
    unless $P10, rx832_fail
    rx832_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx832_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subrule "newpad" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."newpad"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx rxquantr859 ** 0..1
    set_addr $I10, rxquantr859_done
    rx832_cur."!mark_push"(0, rx832_pos, $I10)
  rxquantr859_loop:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx832_pos, 1
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    ord $I11, rx832_tgt, $I11
    ne $I11, 40, rx832_fail
    add rx832_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."signature"()
    unless $P10, rx832_fail
    rx832_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx832_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx832_pos, 1
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    ord $I11, rx832_tgt, $I11
    ne $I11, 41, rx832_fail
    add rx832_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
    set_addr $I10, rxquantr859_done
    (rx832_rep) = rx832_cur."!mark_commit"($I10)
  rxquantr859_done:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx reduce name="regex_declarator" key="open"
    rx832_cur."!cursor_pos"(rx832_pos)
    rx832_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx literal  "{"
    add $I11, rx832_pos, 1
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    ord $I11, rx832_tgt, $I11
    ne $I11, 123, rx832_fail
    add rx832_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."LANG"("Regex", "nibbler")
    unless $P10, rx832_fail
    rx832_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx832_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx832_pos, 1
    gt $I11, rx832_eos, rx832_fail
    sub $I11, rx832_pos, rx832_off
    ord $I11, rx832_tgt, $I11
    ne $I11, 125, rx832_fail
    add rx832_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ENDSTMT"()
    unless $P10, rx832_fail
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  alt838_end:
  # rx subrule "ws" subtype=method negate=
    rx832_cur."!cursor_pos"(rx832_pos)
    $P10 = rx832_cur."ws"()
    unless $P10, rx832_fail
    rx832_pos = $P10."pos"()
  # rx pass
    rx832_cur."!cursor_pass"(rx832_pos, "regex_declarator")
    if_null rx832_debug, debug_741
    rx832_cur."!cursor_debug"("PASS", "regex_declarator", " at pos=", rx832_pos)
  debug_741:
    .return (rx832_cur)
  rx832_restart:
    if_null rx832_debug, debug_742
    rx832_cur."!cursor_debug"("NEXT", "regex_declarator")
  debug_742:
  rx832_fail:
    (rx832_rep, rx832_pos, $I10, $P10) = rx832_cur."!mark_fail"(0)
    lt rx832_pos, -1, rx832_done
    eq rx832_pos, -1, rx832_fail
    jump $I10
  rx832_done:
    rx832_cur."!cursor_fail"()
    if_null rx832_debug, debug_743
    rx832_cur."!cursor_debug"("FAIL", "regex_declarator")
  debug_743:
    .return (rx832_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("193_1285886565.968") :method
.annotate 'line', 0
    $P834 = self."!PREFIX__!subrule"("ws", "")
    new $P835, "ResizablePMCArray"
    push $P835, $P834
    .return ($P835)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("194_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx869_tgt
    .local int rx869_pos
    .local int rx869_off
    .local int rx869_eos
    .local int rx869_rep
    .local pmc rx869_cur
    .local pmc rx869_debug
    (rx869_cur, rx869_pos, rx869_tgt, $I10) = self."!cursor_start"()
    rx869_cur."!cursor_caparray"("args")
    getattribute rx869_debug, rx869_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx869_cur
    .local pmc match
    .lex "$/", match
    length rx869_eos, rx869_tgt
    gt rx869_pos, rx869_eos, rx869_done
    set rx869_off, 0
    lt rx869_pos, 2, rx869_start
    sub rx869_off, rx869_pos, 1
    substr rx869_tgt, rx869_tgt, rx869_off
  rx869_start:
    eq $I10, 1, rx869_restart
    if_null rx869_debug, debug_744
    rx869_cur."!cursor_debug"("START", "dotty")
  debug_744:
    $I10 = self.'from'()
    ne $I10, -1, rxscan873_done
    goto rxscan873_scan
  rxscan873_loop:
    ($P10) = rx869_cur."from"()
    inc $P10
    set rx869_pos, $P10
    ge rx869_pos, rx869_eos, rxscan873_done
  rxscan873_scan:
    set_addr $I10, rxscan873_loop
    rx869_cur."!mark_push"(0, rx869_pos, $I10)
  rxscan873_done:
  # rx literal  "."
    add $I11, rx869_pos, 1
    gt $I11, rx869_eos, rx869_fail
    sub $I11, rx869_pos, rx869_off
    ord $I11, rx869_tgt, $I11
    ne $I11, 46, rx869_fail
    add rx869_pos, 1
  alt874_0:
    set_addr $I10, alt874_1
    rx869_cur."!mark_push"(0, rx869_pos, $I10)
  # rx subrule "deflongname" subtype=capture negate=
    rx869_cur."!cursor_pos"(rx869_pos)
    $P10 = rx869_cur."deflongname"()
    unless $P10, rx869_fail
    rx869_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname=deflongname")
    rx869_pos = $P10."pos"()
    goto alt874_end
  alt874_1:
  # rx enumcharlist negate=0 zerowidth
    ge rx869_pos, rx869_eos, rx869_fail
    sub $I10, rx869_pos, rx869_off
    substr $S10, rx869_tgt, $I10, 1
    index $I11, "'\"", $S10
    lt $I11, 0, rx869_fail
  # rx subrule "quote" subtype=capture negate=
    rx869_cur."!cursor_pos"(rx869_pos)
    $P10 = rx869_cur."quote"()
    unless $P10, rx869_fail
    rx869_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx869_pos = $P10."pos"()
  alt875_0:
    set_addr $I10, alt875_1
    rx869_cur."!mark_push"(0, rx869_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx869_pos, rx869_eos, rx869_fail
    sub $I10, rx869_pos, rx869_off
    substr $S10, rx869_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx869_fail
    goto alt875_end
  alt875_1:
  # rx subrule "panic" subtype=method negate=
    rx869_cur."!cursor_pos"(rx869_pos)
    $P10 = rx869_cur."panic"("Quoted method name requires parenthesized arguments")
    unless $P10, rx869_fail
    rx869_pos = $P10."pos"()
  alt875_end:
  alt874_end:
  # rx rxquantr876 ** 0..1
    set_addr $I10, rxquantr876_done
    rx869_cur."!mark_push"(0, rx869_pos, $I10)
  rxquantr876_loop:
  alt877_0:
    set_addr $I10, alt877_1
    rx869_cur."!mark_push"(0, rx869_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx869_pos, rx869_eos, rx869_fail
    sub $I10, rx869_pos, rx869_off
    substr $S10, rx869_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx869_fail
  # rx subrule "args" subtype=capture negate=
    rx869_cur."!cursor_pos"(rx869_pos)
    $P10 = rx869_cur."args"()
    unless $P10, rx869_fail
    rx869_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx869_pos = $P10."pos"()
    goto alt877_end
  alt877_1:
  # rx literal  ":"
    add $I11, rx869_pos, 1
    gt $I11, rx869_eos, rx869_fail
    sub $I11, rx869_pos, rx869_off
    ord $I11, rx869_tgt, $I11
    ne $I11, 58, rx869_fail
    add rx869_pos, 1
  # rx charclass s
    ge rx869_pos, rx869_eos, rx869_fail
    sub $I10, rx869_pos, rx869_off
    is_cclass $I11, 32, rx869_tgt, $I10
    unless $I11, rx869_fail
    inc rx869_pos
  # rx subrule "arglist" subtype=capture negate=
    rx869_cur."!cursor_pos"(rx869_pos)
    $P10 = rx869_cur."arglist"()
    unless $P10, rx869_fail
    rx869_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx869_pos = $P10."pos"()
  alt877_end:
    set_addr $I10, rxquantr876_done
    (rx869_rep) = rx869_cur."!mark_commit"($I10)
  rxquantr876_done:
  # rx pass
    rx869_cur."!cursor_pass"(rx869_pos, "dotty")
    if_null rx869_debug, debug_745
    rx869_cur."!cursor_debug"("PASS", "dotty", " at pos=", rx869_pos)
  debug_745:
    .return (rx869_cur)
  rx869_restart:
    if_null rx869_debug, debug_746
    rx869_cur."!cursor_debug"("NEXT", "dotty")
  debug_746:
  rx869_fail:
    (rx869_rep, rx869_pos, $I10, $P10) = rx869_cur."!mark_fail"(0)
    lt rx869_pos, -1, rx869_done
    eq rx869_pos, -1, rx869_fail
    jump $I10
  rx869_done:
    rx869_cur."!cursor_fail"()
    if_null rx869_debug, debug_747
    rx869_cur."!cursor_debug"("FAIL", "dotty")
  debug_747:
    .return (rx869_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("195_1285886565.968") :method
.annotate 'line', 0
    $P871 = self."!PREFIX__!subrule"("deflongname", ".")
    new $P872, "ResizablePMCArray"
    push $P872, "'"
    push $P872, "\""
    push $P872, $P871
    .return ($P872)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("196_1285886565.968") :method
.annotate 'line', 0
    $P879 = self."!protoregex"("term")
    .return ($P879)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("197_1285886565.968") :method
.annotate 'line', 0
    $P881 = self."!PREFIX__!protoregex"("term")
    .return ($P881)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("198_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx883_tgt
    .local int rx883_pos
    .local int rx883_off
    .local int rx883_eos
    .local int rx883_rep
    .local pmc rx883_cur
    .local pmc rx883_debug
    (rx883_cur, rx883_pos, rx883_tgt, $I10) = self."!cursor_start"()
    getattribute rx883_debug, rx883_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx883_cur
    .local pmc match
    .lex "$/", match
    length rx883_eos, rx883_tgt
    gt rx883_pos, rx883_eos, rx883_done
    set rx883_off, 0
    lt rx883_pos, 2, rx883_start
    sub rx883_off, rx883_pos, 1
    substr rx883_tgt, rx883_tgt, rx883_off
  rx883_start:
    eq $I10, 1, rx883_restart
    if_null rx883_debug, debug_748
    rx883_cur."!cursor_debug"("START", "term:sym<self>")
  debug_748:
    $I10 = self.'from'()
    ne $I10, -1, rxscan886_done
    goto rxscan886_scan
  rxscan886_loop:
    ($P10) = rx883_cur."from"()
    inc $P10
    set rx883_pos, $P10
    ge rx883_pos, rx883_eos, rxscan886_done
  rxscan886_scan:
    set_addr $I10, rxscan886_loop
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
  rxscan886_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_887_fail
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
  # rx literal  "self"
    add $I11, rx883_pos, 4
    gt $I11, rx883_eos, rx883_fail
    sub $I11, rx883_pos, rx883_off
    substr $S10, rx883_tgt, $I11, 4
    ne $S10, "self", rx883_fail
    add rx883_pos, 4
    set_addr $I10, rxcap_887_fail
    ($I12, $I11) = rx883_cur."!mark_peek"($I10)
    rx883_cur."!cursor_pos"($I11)
    ($P10) = rx883_cur."!cursor_start"()
    $P10."!cursor_pass"(rx883_pos, "")
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_887_done
  rxcap_887_fail:
    goto rx883_fail
  rxcap_887_done:
  # rxanchor rwb
    le rx883_pos, 0, rx883_fail
    sub $I10, rx883_pos, rx883_off
    is_cclass $I11, 8192, rx883_tgt, $I10
    if $I11, rx883_fail
    dec $I10
    is_cclass $I11, 8192, rx883_tgt, $I10
    unless $I11, rx883_fail
  # rx pass
    rx883_cur."!cursor_pass"(rx883_pos, "term:sym<self>")
    if_null rx883_debug, debug_749
    rx883_cur."!cursor_debug"("PASS", "term:sym<self>", " at pos=", rx883_pos)
  debug_749:
    .return (rx883_cur)
  rx883_restart:
    if_null rx883_debug, debug_750
    rx883_cur."!cursor_debug"("NEXT", "term:sym<self>")
  debug_750:
  rx883_fail:
    (rx883_rep, rx883_pos, $I10, $P10) = rx883_cur."!mark_fail"(0)
    lt rx883_pos, -1, rx883_done
    eq rx883_pos, -1, rx883_fail
    jump $I10
  rx883_done:
    rx883_cur."!cursor_fail"()
    if_null rx883_debug, debug_751
    rx883_cur."!cursor_debug"("FAIL", "term:sym<self>")
  debug_751:
    .return (rx883_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("199_1285886565.968") :method
.annotate 'line', 0
    new $P885, "ResizablePMCArray"
    push $P885, "self"
    .return ($P885)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("200_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx889_tgt
    .local int rx889_pos
    .local int rx889_off
    .local int rx889_eos
    .local int rx889_rep
    .local pmc rx889_cur
    .local pmc rx889_debug
    (rx889_cur, rx889_pos, rx889_tgt, $I10) = self."!cursor_start"()
    getattribute rx889_debug, rx889_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx889_cur
    .local pmc match
    .lex "$/", match
    length rx889_eos, rx889_tgt
    gt rx889_pos, rx889_eos, rx889_done
    set rx889_off, 0
    lt rx889_pos, 2, rx889_start
    sub rx889_off, rx889_pos, 1
    substr rx889_tgt, rx889_tgt, rx889_off
  rx889_start:
    eq $I10, 1, rx889_restart
    if_null rx889_debug, debug_752
    rx889_cur."!cursor_debug"("START", "term:sym<identifier>")
  debug_752:
    $I10 = self.'from'()
    ne $I10, -1, rxscan893_done
    goto rxscan893_scan
  rxscan893_loop:
    ($P10) = rx889_cur."from"()
    inc $P10
    set rx889_pos, $P10
    ge rx889_pos, rx889_eos, rxscan893_done
  rxscan893_scan:
    set_addr $I10, rxscan893_loop
    rx889_cur."!mark_push"(0, rx889_pos, $I10)
  rxscan893_done:
  # rx subrule "deflongname" subtype=capture negate=
    rx889_cur."!cursor_pos"(rx889_pos)
    $P10 = rx889_cur."deflongname"()
    unless $P10, rx889_fail
    rx889_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx889_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx889_pos, rx889_eos, rx889_fail
    sub $I10, rx889_pos, rx889_off
    substr $S10, rx889_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx889_fail
  # rx subrule "args" subtype=capture negate=
    rx889_cur."!cursor_pos"(rx889_pos)
    $P10 = rx889_cur."args"()
    unless $P10, rx889_fail
    rx889_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx889_pos = $P10."pos"()
  # rx pass
    rx889_cur."!cursor_pass"(rx889_pos, "term:sym<identifier>")
    if_null rx889_debug, debug_753
    rx889_cur."!cursor_debug"("PASS", "term:sym<identifier>", " at pos=", rx889_pos)
  debug_753:
    .return (rx889_cur)
  rx889_restart:
    if_null rx889_debug, debug_754
    rx889_cur."!cursor_debug"("NEXT", "term:sym<identifier>")
  debug_754:
  rx889_fail:
    (rx889_rep, rx889_pos, $I10, $P10) = rx889_cur."!mark_fail"(0)
    lt rx889_pos, -1, rx889_done
    eq rx889_pos, -1, rx889_fail
    jump $I10
  rx889_done:
    rx889_cur."!cursor_fail"()
    if_null rx889_debug, debug_755
    rx889_cur."!cursor_debug"("FAIL", "term:sym<identifier>")
  debug_755:
    .return (rx889_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("201_1285886565.968") :method
.annotate 'line', 0
    $P891 = self."!PREFIX__!subrule"("deflongname", "")
    new $P892, "ResizablePMCArray"
    push $P892, $P891
    .return ($P892)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("202_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx895_tgt
    .local int rx895_pos
    .local int rx895_off
    .local int rx895_eos
    .local int rx895_rep
    .local pmc rx895_cur
    .local pmc rx895_debug
    (rx895_cur, rx895_pos, rx895_tgt, $I10) = self."!cursor_start"()
    rx895_cur."!cursor_caparray"("args")
    getattribute rx895_debug, rx895_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx895_cur
    .local pmc match
    .lex "$/", match
    length rx895_eos, rx895_tgt
    gt rx895_pos, rx895_eos, rx895_done
    set rx895_off, 0
    lt rx895_pos, 2, rx895_start
    sub rx895_off, rx895_pos, 1
    substr rx895_tgt, rx895_tgt, rx895_off
  rx895_start:
    eq $I10, 1, rx895_restart
    if_null rx895_debug, debug_756
    rx895_cur."!cursor_debug"("START", "term:sym<name>")
  debug_756:
    $I10 = self.'from'()
    ne $I10, -1, rxscan899_done
    goto rxscan899_scan
  rxscan899_loop:
    ($P10) = rx895_cur."from"()
    inc $P10
    set rx895_pos, $P10
    ge rx895_pos, rx895_eos, rxscan899_done
  rxscan899_scan:
    set_addr $I10, rxscan899_loop
    rx895_cur."!mark_push"(0, rx895_pos, $I10)
  rxscan899_done:
  # rx subrule "name" subtype=capture negate=
    rx895_cur."!cursor_pos"(rx895_pos)
    $P10 = rx895_cur."name"()
    unless $P10, rx895_fail
    rx895_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx895_pos = $P10."pos"()
  # rx rxquantr900 ** 0..1
    set_addr $I10, rxquantr900_done
    rx895_cur."!mark_push"(0, rx895_pos, $I10)
  rxquantr900_loop:
  # rx subrule "args" subtype=capture negate=
    rx895_cur."!cursor_pos"(rx895_pos)
    $P10 = rx895_cur."args"()
    unless $P10, rx895_fail
    goto rxsubrule901_pass
  rxsubrule901_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx895_fail
  rxsubrule901_pass:
    set_addr $I10, rxsubrule901_back
    rx895_cur."!mark_push"(0, rx895_pos, $I10, $P10)
    $P10."!cursor_names"("args")
    rx895_pos = $P10."pos"()
    set_addr $I10, rxquantr900_done
    (rx895_rep) = rx895_cur."!mark_commit"($I10)
  rxquantr900_done:
  # rx pass
    rx895_cur."!cursor_pass"(rx895_pos, "term:sym<name>")
    if_null rx895_debug, debug_757
    rx895_cur."!cursor_debug"("PASS", "term:sym<name>", " at pos=", rx895_pos)
  debug_757:
    .return (rx895_cur)
  rx895_restart:
    if_null rx895_debug, debug_758
    rx895_cur."!cursor_debug"("NEXT", "term:sym<name>")
  debug_758:
  rx895_fail:
    (rx895_rep, rx895_pos, $I10, $P10) = rx895_cur."!mark_fail"(0)
    lt rx895_pos, -1, rx895_done
    eq rx895_pos, -1, rx895_fail
    jump $I10
  rx895_done:
    rx895_cur."!cursor_fail"()
    if_null rx895_debug, debug_759
    rx895_cur."!cursor_debug"("FAIL", "term:sym<name>")
  debug_759:
    .return (rx895_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("203_1285886565.968") :method
.annotate 'line', 0
    $P897 = self."!PREFIX__!subrule"("name", "")
    new $P898, "ResizablePMCArray"
    push $P898, $P897
    .return ($P898)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("204_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx903_tgt
    .local int rx903_pos
    .local int rx903_off
    .local int rx903_eos
    .local int rx903_rep
    .local pmc rx903_cur
    .local pmc rx903_debug
    (rx903_cur, rx903_pos, rx903_tgt, $I10) = self."!cursor_start"()
    rx903_cur."!cursor_caparray"("args")
    getattribute rx903_debug, rx903_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx903_cur
    .local pmc match
    .lex "$/", match
    length rx903_eos, rx903_tgt
    gt rx903_pos, rx903_eos, rx903_done
    set rx903_off, 0
    lt rx903_pos, 2, rx903_start
    sub rx903_off, rx903_pos, 1
    substr rx903_tgt, rx903_tgt, rx903_off
  rx903_start:
    eq $I10, 1, rx903_restart
    if_null rx903_debug, debug_760
    rx903_cur."!cursor_debug"("START", "term:sym<pir::op>")
  debug_760:
    $I10 = self.'from'()
    ne $I10, -1, rxscan906_done
    goto rxscan906_scan
  rxscan906_loop:
    ($P10) = rx903_cur."from"()
    inc $P10
    set rx903_pos, $P10
    ge rx903_pos, rx903_eos, rxscan906_done
  rxscan906_scan:
    set_addr $I10, rxscan906_loop
    rx903_cur."!mark_push"(0, rx903_pos, $I10)
  rxscan906_done:
  # rx literal  "pir::"
    add $I11, rx903_pos, 5
    gt $I11, rx903_eos, rx903_fail
    sub $I11, rx903_pos, rx903_off
    substr $S10, rx903_tgt, $I11, 5
    ne $S10, "pir::", rx903_fail
    add rx903_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_907_fail
    rx903_cur."!mark_push"(0, rx903_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx903_pos, rx903_off
    find_not_cclass $I11, 8192, rx903_tgt, $I10, rx903_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx903_fail
    add rx903_pos, rx903_off, $I11
    set_addr $I10, rxcap_907_fail
    ($I12, $I11) = rx903_cur."!mark_peek"($I10)
    rx903_cur."!cursor_pos"($I11)
    ($P10) = rx903_cur."!cursor_start"()
    $P10."!cursor_pass"(rx903_pos, "")
    rx903_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_907_done
  rxcap_907_fail:
    goto rx903_fail
  rxcap_907_done:
  # rx rxquantr908 ** 0..1
    set_addr $I10, rxquantr908_done
    rx903_cur."!mark_push"(0, rx903_pos, $I10)
  rxquantr908_loop:
  # rx subrule "args" subtype=capture negate=
    rx903_cur."!cursor_pos"(rx903_pos)
    $P10 = rx903_cur."args"()
    unless $P10, rx903_fail
    goto rxsubrule909_pass
  rxsubrule909_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx903_fail
  rxsubrule909_pass:
    set_addr $I10, rxsubrule909_back
    rx903_cur."!mark_push"(0, rx903_pos, $I10, $P10)
    $P10."!cursor_names"("args")
    rx903_pos = $P10."pos"()
    set_addr $I10, rxquantr908_done
    (rx903_rep) = rx903_cur."!mark_commit"($I10)
  rxquantr908_done:
  # rx pass
    rx903_cur."!cursor_pass"(rx903_pos, "term:sym<pir::op>")
    if_null rx903_debug, debug_761
    rx903_cur."!cursor_debug"("PASS", "term:sym<pir::op>", " at pos=", rx903_pos)
  debug_761:
    .return (rx903_cur)
  rx903_restart:
    if_null rx903_debug, debug_762
    rx903_cur."!cursor_debug"("NEXT", "term:sym<pir::op>")
  debug_762:
  rx903_fail:
    (rx903_rep, rx903_pos, $I10, $P10) = rx903_cur."!mark_fail"(0)
    lt rx903_pos, -1, rx903_done
    eq rx903_pos, -1, rx903_fail
    jump $I10
  rx903_done:
    rx903_cur."!cursor_fail"()
    if_null rx903_debug, debug_763
    rx903_cur."!cursor_debug"("FAIL", "term:sym<pir::op>")
  debug_763:
    .return (rx903_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("205_1285886565.968") :method
.annotate 'line', 0
    new $P905, "ResizablePMCArray"
    push $P905, "pir::"
    .return ($P905)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("206_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx911_tgt
    .local int rx911_pos
    .local int rx911_off
    .local int rx911_eos
    .local int rx911_rep
    .local pmc rx911_cur
    .local pmc rx911_debug
    (rx911_cur, rx911_pos, rx911_tgt, $I10) = self."!cursor_start"()
    getattribute rx911_debug, rx911_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx911_cur
    .local pmc match
    .lex "$/", match
    length rx911_eos, rx911_tgt
    gt rx911_pos, rx911_eos, rx911_done
    set rx911_off, 0
    lt rx911_pos, 2, rx911_start
    sub rx911_off, rx911_pos, 1
    substr rx911_tgt, rx911_tgt, rx911_off
  rx911_start:
    eq $I10, 1, rx911_restart
    if_null rx911_debug, debug_764
    rx911_cur."!cursor_debug"("START", "args")
  debug_764:
    $I10 = self.'from'()
    ne $I10, -1, rxscan915_done
    goto rxscan915_scan
  rxscan915_loop:
    ($P10) = rx911_cur."from"()
    inc $P10
    set rx911_pos, $P10
    ge rx911_pos, rx911_eos, rxscan915_done
  rxscan915_scan:
    set_addr $I10, rxscan915_loop
    rx911_cur."!mark_push"(0, rx911_pos, $I10)
  rxscan915_done:
  # rx literal  "("
    add $I11, rx911_pos, 1
    gt $I11, rx911_eos, rx911_fail
    sub $I11, rx911_pos, rx911_off
    ord $I11, rx911_tgt, $I11
    ne $I11, 40, rx911_fail
    add rx911_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx911_cur."!cursor_pos"(rx911_pos)
    $P10 = rx911_cur."arglist"()
    unless $P10, rx911_fail
    rx911_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx911_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx911_pos, 1
    gt $I11, rx911_eos, rx911_fail
    sub $I11, rx911_pos, rx911_off
    ord $I11, rx911_tgt, $I11
    ne $I11, 41, rx911_fail
    add rx911_pos, 1
  # rx pass
    rx911_cur."!cursor_pass"(rx911_pos, "args")
    if_null rx911_debug, debug_765
    rx911_cur."!cursor_debug"("PASS", "args", " at pos=", rx911_pos)
  debug_765:
    .return (rx911_cur)
  rx911_restart:
    if_null rx911_debug, debug_766
    rx911_cur."!cursor_debug"("NEXT", "args")
  debug_766:
  rx911_fail:
    (rx911_rep, rx911_pos, $I10, $P10) = rx911_cur."!mark_fail"(0)
    lt rx911_pos, -1, rx911_done
    eq rx911_pos, -1, rx911_fail
    jump $I10
  rx911_done:
    rx911_cur."!cursor_fail"()
    if_null rx911_debug, debug_767
    rx911_cur."!cursor_debug"("FAIL", "args")
  debug_767:
    .return (rx911_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("207_1285886565.968") :method
.annotate 'line', 0
    $P913 = self."!PREFIX__!subrule"("arglist", "(")
    new $P914, "ResizablePMCArray"
    push $P914, $P913
    .return ($P914)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("208_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx917_tgt
    .local int rx917_pos
    .local int rx917_off
    .local int rx917_eos
    .local int rx917_rep
    .local pmc rx917_cur
    .local pmc rx917_debug
    (rx917_cur, rx917_pos, rx917_tgt, $I10) = self."!cursor_start"()
    getattribute rx917_debug, rx917_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx917_cur
    .local pmc match
    .lex "$/", match
    length rx917_eos, rx917_tgt
    gt rx917_pos, rx917_eos, rx917_done
    set rx917_off, 0
    lt rx917_pos, 2, rx917_start
    sub rx917_off, rx917_pos, 1
    substr rx917_tgt, rx917_tgt, rx917_off
  rx917_start:
    eq $I10, 1, rx917_restart
    if_null rx917_debug, debug_768
    rx917_cur."!cursor_debug"("START", "arglist")
  debug_768:
    $I10 = self.'from'()
    ne $I10, -1, rxscan921_done
    goto rxscan921_scan
  rxscan921_loop:
    ($P10) = rx917_cur."from"()
    inc $P10
    set rx917_pos, $P10
    ge rx917_pos, rx917_eos, rxscan921_done
  rxscan921_scan:
    set_addr $I10, rxscan921_loop
    rx917_cur."!mark_push"(0, rx917_pos, $I10)
  rxscan921_done:
  # rx subrule "ws" subtype=method negate=
    rx917_cur."!cursor_pos"(rx917_pos)
    $P10 = rx917_cur."ws"()
    unless $P10, rx917_fail
    rx917_pos = $P10."pos"()
  alt922_0:
    set_addr $I10, alt922_1
    rx917_cur."!mark_push"(0, rx917_pos, $I10)
  # rx subrule "EXPR" subtype=capture negate=
    rx917_cur."!cursor_pos"(rx917_pos)
    $P10 = rx917_cur."EXPR"("f=")
    unless $P10, rx917_fail
    rx917_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx917_pos = $P10."pos"()
    goto alt922_end
  alt922_1:
  alt922_end:
  # rx pass
    rx917_cur."!cursor_pass"(rx917_pos, "arglist")
    if_null rx917_debug, debug_769
    rx917_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx917_pos)
  debug_769:
    .return (rx917_cur)
  rx917_restart:
    if_null rx917_debug, debug_770
    rx917_cur."!cursor_debug"("NEXT", "arglist")
  debug_770:
  rx917_fail:
    (rx917_rep, rx917_pos, $I10, $P10) = rx917_cur."!mark_fail"(0)
    lt rx917_pos, -1, rx917_done
    eq rx917_pos, -1, rx917_fail
    jump $I10
  rx917_done:
    rx917_cur."!cursor_fail"()
    if_null rx917_debug, debug_771
    rx917_cur."!cursor_debug"("FAIL", "arglist")
  debug_771:
    .return (rx917_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("209_1285886565.968") :method
.annotate 'line', 0
    $P919 = self."!PREFIX__!subrule"("ws", "")
    new $P920, "ResizablePMCArray"
    push $P920, $P919
    .return ($P920)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("210_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx924_tgt
    .local int rx924_pos
    .local int rx924_off
    .local int rx924_eos
    .local int rx924_rep
    .local pmc rx924_cur
    .local pmc rx924_debug
    (rx924_cur, rx924_pos, rx924_tgt, $I10) = self."!cursor_start"()
    getattribute rx924_debug, rx924_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx924_cur
    .local pmc match
    .lex "$/", match
    length rx924_eos, rx924_tgt
    gt rx924_pos, rx924_eos, rx924_done
    set rx924_off, 0
    lt rx924_pos, 2, rx924_start
    sub rx924_off, rx924_pos, 1
    substr rx924_tgt, rx924_tgt, rx924_off
  rx924_start:
    eq $I10, 1, rx924_restart
    if_null rx924_debug, debug_772
    rx924_cur."!cursor_debug"("START", "term:sym<value>")
  debug_772:
    $I10 = self.'from'()
    ne $I10, -1, rxscan928_done
    goto rxscan928_scan
  rxscan928_loop:
    ($P10) = rx924_cur."from"()
    inc $P10
    set rx924_pos, $P10
    ge rx924_pos, rx924_eos, rxscan928_done
  rxscan928_scan:
    set_addr $I10, rxscan928_loop
    rx924_cur."!mark_push"(0, rx924_pos, $I10)
  rxscan928_done:
  # rx subrule "value" subtype=capture negate=
    rx924_cur."!cursor_pos"(rx924_pos)
    $P10 = rx924_cur."value"()
    unless $P10, rx924_fail
    rx924_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx924_pos = $P10."pos"()
  # rx pass
    rx924_cur."!cursor_pass"(rx924_pos, "term:sym<value>")
    if_null rx924_debug, debug_773
    rx924_cur."!cursor_debug"("PASS", "term:sym<value>", " at pos=", rx924_pos)
  debug_773:
    .return (rx924_cur)
  rx924_restart:
    if_null rx924_debug, debug_774
    rx924_cur."!cursor_debug"("NEXT", "term:sym<value>")
  debug_774:
  rx924_fail:
    (rx924_rep, rx924_pos, $I10, $P10) = rx924_cur."!mark_fail"(0)
    lt rx924_pos, -1, rx924_done
    eq rx924_pos, -1, rx924_fail
    jump $I10
  rx924_done:
    rx924_cur."!cursor_fail"()
    if_null rx924_debug, debug_775
    rx924_cur."!cursor_debug"("FAIL", "term:sym<value>")
  debug_775:
    .return (rx924_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("211_1285886565.968") :method
.annotate 'line', 0
    $P926 = self."!PREFIX__!subrule"("value", "")
    new $P927, "ResizablePMCArray"
    push $P927, $P926
    .return ($P927)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("212_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx930_tgt
    .local int rx930_pos
    .local int rx930_off
    .local int rx930_eos
    .local int rx930_rep
    .local pmc rx930_cur
    .local pmc rx930_debug
    (rx930_cur, rx930_pos, rx930_tgt, $I10) = self."!cursor_start"()
    getattribute rx930_debug, rx930_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx930_cur
    .local pmc match
    .lex "$/", match
    length rx930_eos, rx930_tgt
    gt rx930_pos, rx930_eos, rx930_done
    set rx930_off, 0
    lt rx930_pos, 2, rx930_start
    sub rx930_off, rx930_pos, 1
    substr rx930_tgt, rx930_tgt, rx930_off
  rx930_start:
    eq $I10, 1, rx930_restart
    if_null rx930_debug, debug_776
    rx930_cur."!cursor_debug"("START", "value")
  debug_776:
    $I10 = self.'from'()
    ne $I10, -1, rxscan935_done
    goto rxscan935_scan
  rxscan935_loop:
    ($P10) = rx930_cur."from"()
    inc $P10
    set rx930_pos, $P10
    ge rx930_pos, rx930_eos, rxscan935_done
  rxscan935_scan:
    set_addr $I10, rxscan935_loop
    rx930_cur."!mark_push"(0, rx930_pos, $I10)
  rxscan935_done:
  alt936_0:
    set_addr $I10, alt936_1
    rx930_cur."!mark_push"(0, rx930_pos, $I10)
  # rx subrule "quote" subtype=capture negate=
    rx930_cur."!cursor_pos"(rx930_pos)
    $P10 = rx930_cur."quote"()
    unless $P10, rx930_fail
    rx930_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx930_pos = $P10."pos"()
    goto alt936_end
  alt936_1:
  # rx subrule "number" subtype=capture negate=
    rx930_cur."!cursor_pos"(rx930_pos)
    $P10 = rx930_cur."number"()
    unless $P10, rx930_fail
    rx930_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("number")
    rx930_pos = $P10."pos"()
  alt936_end:
  # rx pass
    rx930_cur."!cursor_pass"(rx930_pos, "value")
    if_null rx930_debug, debug_777
    rx930_cur."!cursor_debug"("PASS", "value", " at pos=", rx930_pos)
  debug_777:
    .return (rx930_cur)
  rx930_restart:
    if_null rx930_debug, debug_778
    rx930_cur."!cursor_debug"("NEXT", "value")
  debug_778:
  rx930_fail:
    (rx930_rep, rx930_pos, $I10, $P10) = rx930_cur."!mark_fail"(0)
    lt rx930_pos, -1, rx930_done
    eq rx930_pos, -1, rx930_fail
    jump $I10
  rx930_done:
    rx930_cur."!cursor_fail"()
    if_null rx930_debug, debug_779
    rx930_cur."!cursor_debug"("FAIL", "value")
  debug_779:
    .return (rx930_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("213_1285886565.968") :method
.annotate 'line', 0
    $P932 = self."!PREFIX__!subrule"("number", "")
    $P933 = self."!PREFIX__!subrule"("quote", "")
    new $P934, "ResizablePMCArray"
    push $P934, $P932
    push $P934, $P933
    .return ($P934)
.end


.namespace ["NQP";"Grammar"]
.sub "number"  :subid("214_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx938_tgt
    .local int rx938_pos
    .local int rx938_off
    .local int rx938_eos
    .local int rx938_rep
    .local pmc rx938_cur
    .local pmc rx938_debug
    (rx938_cur, rx938_pos, rx938_tgt, $I10) = self."!cursor_start"()
    getattribute rx938_debug, rx938_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx938_cur
    .local pmc match
    .lex "$/", match
    length rx938_eos, rx938_tgt
    gt rx938_pos, rx938_eos, rx938_done
    set rx938_off, 0
    lt rx938_pos, 2, rx938_start
    sub rx938_off, rx938_pos, 1
    substr rx938_tgt, rx938_tgt, rx938_off
  rx938_start:
    eq $I10, 1, rx938_restart
    if_null rx938_debug, debug_780
    rx938_cur."!cursor_debug"("START", "number")
  debug_780:
    $I10 = self.'from'()
    ne $I10, -1, rxscan941_done
    goto rxscan941_scan
  rxscan941_loop:
    ($P10) = rx938_cur."from"()
    inc $P10
    set rx938_pos, $P10
    ge rx938_pos, rx938_eos, rxscan941_done
  rxscan941_scan:
    set_addr $I10, rxscan941_loop
    rx938_cur."!mark_push"(0, rx938_pos, $I10)
  rxscan941_done:
  # rx subcapture "sign"
    set_addr $I10, rxcap_943_fail
    rx938_cur."!mark_push"(0, rx938_pos, $I10)
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx938_pos, rx938_off
    set rx938_rep, 0
    sub $I12, rx938_eos, rx938_pos
    le $I12, 1, rxenumcharlistq942_loop
    set $I12, 1
  rxenumcharlistq942_loop:
    le $I12, 0, rxenumcharlistq942_done
    substr $S10, rx938_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq942_done
    inc rx938_rep
  rxenumcharlistq942_done:
    add rx938_pos, rx938_pos, rx938_rep
    set_addr $I10, rxcap_943_fail
    ($I12, $I11) = rx938_cur."!mark_peek"($I10)
    rx938_cur."!cursor_pos"($I11)
    ($P10) = rx938_cur."!cursor_start"()
    $P10."!cursor_pass"(rx938_pos, "")
    rx938_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_943_done
  rxcap_943_fail:
    goto rx938_fail
  rxcap_943_done:
  alt944_0:
    set_addr $I10, alt944_1
    rx938_cur."!mark_push"(0, rx938_pos, $I10)
  # rx subrule "dec_number" subtype=capture negate=
    rx938_cur."!cursor_pos"(rx938_pos)
    $P10 = rx938_cur."dec_number"()
    unless $P10, rx938_fail
    rx938_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dec_number")
    rx938_pos = $P10."pos"()
    goto alt944_end
  alt944_1:
  # rx subrule "integer" subtype=capture negate=
    rx938_cur."!cursor_pos"(rx938_pos)
    $P10 = rx938_cur."integer"()
    unless $P10, rx938_fail
    rx938_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx938_pos = $P10."pos"()
  alt944_end:
  # rx pass
    rx938_cur."!cursor_pass"(rx938_pos, "number")
    if_null rx938_debug, debug_781
    rx938_cur."!cursor_debug"("PASS", "number", " at pos=", rx938_pos)
  debug_781:
    .return (rx938_cur)
  rx938_restart:
    if_null rx938_debug, debug_782
    rx938_cur."!cursor_debug"("NEXT", "number")
  debug_782:
  rx938_fail:
    (rx938_rep, rx938_pos, $I10, $P10) = rx938_cur."!mark_fail"(0)
    lt rx938_pos, -1, rx938_done
    eq rx938_pos, -1, rx938_fail
    jump $I10
  rx938_done:
    rx938_cur."!cursor_fail"()
    if_null rx938_debug, debug_783
    rx938_cur."!cursor_debug"("FAIL", "number")
  debug_783:
    .return (rx938_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__number"  :subid("215_1285886565.968") :method
.annotate 'line', 0
    new $P940, "ResizablePMCArray"
    push $P940, ""
    .return ($P940)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("216_1285886565.968") :method
.annotate 'line', 0
    $P946 = self."!protoregex"("quote")
    .return ($P946)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("217_1285886565.968") :method
.annotate 'line', 0
    $P948 = self."!PREFIX__!protoregex"("quote")
    .return ($P948)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("218_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx950_tgt
    .local int rx950_pos
    .local int rx950_off
    .local int rx950_eos
    .local int rx950_rep
    .local pmc rx950_cur
    .local pmc rx950_debug
    (rx950_cur, rx950_pos, rx950_tgt, $I10) = self."!cursor_start"()
    getattribute rx950_debug, rx950_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx950_cur
    .local pmc match
    .lex "$/", match
    length rx950_eos, rx950_tgt
    gt rx950_pos, rx950_eos, rx950_done
    set rx950_off, 0
    lt rx950_pos, 2, rx950_start
    sub rx950_off, rx950_pos, 1
    substr rx950_tgt, rx950_tgt, rx950_off
  rx950_start:
    eq $I10, 1, rx950_restart
    if_null rx950_debug, debug_784
    rx950_cur."!cursor_debug"("START", "quote:sym<apos>")
  debug_784:
    $I10 = self.'from'()
    ne $I10, -1, rxscan953_done
    goto rxscan953_scan
  rxscan953_loop:
    ($P10) = rx950_cur."from"()
    inc $P10
    set rx950_pos, $P10
    ge rx950_pos, rx950_eos, rxscan953_done
  rxscan953_scan:
    set_addr $I10, rxscan953_loop
    rx950_cur."!mark_push"(0, rx950_pos, $I10)
  rxscan953_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx950_pos, rx950_eos, rx950_fail
    sub $I10, rx950_pos, rx950_off
    substr $S10, rx950_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx950_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx950_cur."!cursor_pos"(rx950_pos)
    $P10 = rx950_cur."quote_EXPR"(":q")
    unless $P10, rx950_fail
    rx950_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx950_pos = $P10."pos"()
  # rx pass
    rx950_cur."!cursor_pass"(rx950_pos, "quote:sym<apos>")
    if_null rx950_debug, debug_785
    rx950_cur."!cursor_debug"("PASS", "quote:sym<apos>", " at pos=", rx950_pos)
  debug_785:
    .return (rx950_cur)
  rx950_restart:
    if_null rx950_debug, debug_786
    rx950_cur."!cursor_debug"("NEXT", "quote:sym<apos>")
  debug_786:
  rx950_fail:
    (rx950_rep, rx950_pos, $I10, $P10) = rx950_cur."!mark_fail"(0)
    lt rx950_pos, -1, rx950_done
    eq rx950_pos, -1, rx950_fail
    jump $I10
  rx950_done:
    rx950_cur."!cursor_fail"()
    if_null rx950_debug, debug_787
    rx950_cur."!cursor_debug"("FAIL", "quote:sym<apos>")
  debug_787:
    .return (rx950_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("219_1285886565.968") :method
.annotate 'line', 0
    new $P952, "ResizablePMCArray"
    push $P952, "'"
    .return ($P952)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("220_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx955_tgt
    .local int rx955_pos
    .local int rx955_off
    .local int rx955_eos
    .local int rx955_rep
    .local pmc rx955_cur
    .local pmc rx955_debug
    (rx955_cur, rx955_pos, rx955_tgt, $I10) = self."!cursor_start"()
    getattribute rx955_debug, rx955_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx955_cur
    .local pmc match
    .lex "$/", match
    length rx955_eos, rx955_tgt
    gt rx955_pos, rx955_eos, rx955_done
    set rx955_off, 0
    lt rx955_pos, 2, rx955_start
    sub rx955_off, rx955_pos, 1
    substr rx955_tgt, rx955_tgt, rx955_off
  rx955_start:
    eq $I10, 1, rx955_restart
    if_null rx955_debug, debug_788
    rx955_cur."!cursor_debug"("START", "quote:sym<dblq>")
  debug_788:
    $I10 = self.'from'()
    ne $I10, -1, rxscan958_done
    goto rxscan958_scan
  rxscan958_loop:
    ($P10) = rx955_cur."from"()
    inc $P10
    set rx955_pos, $P10
    ge rx955_pos, rx955_eos, rxscan958_done
  rxscan958_scan:
    set_addr $I10, rxscan958_loop
    rx955_cur."!mark_push"(0, rx955_pos, $I10)
  rxscan958_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx955_pos, rx955_eos, rx955_fail
    sub $I10, rx955_pos, rx955_off
    substr $S10, rx955_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx955_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx955_cur."!cursor_pos"(rx955_pos)
    $P10 = rx955_cur."quote_EXPR"(":qq")
    unless $P10, rx955_fail
    rx955_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx955_pos = $P10."pos"()
  # rx pass
    rx955_cur."!cursor_pass"(rx955_pos, "quote:sym<dblq>")
    if_null rx955_debug, debug_789
    rx955_cur."!cursor_debug"("PASS", "quote:sym<dblq>", " at pos=", rx955_pos)
  debug_789:
    .return (rx955_cur)
  rx955_restart:
    if_null rx955_debug, debug_790
    rx955_cur."!cursor_debug"("NEXT", "quote:sym<dblq>")
  debug_790:
  rx955_fail:
    (rx955_rep, rx955_pos, $I10, $P10) = rx955_cur."!mark_fail"(0)
    lt rx955_pos, -1, rx955_done
    eq rx955_pos, -1, rx955_fail
    jump $I10
  rx955_done:
    rx955_cur."!cursor_fail"()
    if_null rx955_debug, debug_791
    rx955_cur."!cursor_debug"("FAIL", "quote:sym<dblq>")
  debug_791:
    .return (rx955_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("221_1285886565.968") :method
.annotate 'line', 0
    new $P957, "ResizablePMCArray"
    push $P957, "\""
    .return ($P957)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("222_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx960_tgt
    .local int rx960_pos
    .local int rx960_off
    .local int rx960_eos
    .local int rx960_rep
    .local pmc rx960_cur
    .local pmc rx960_debug
    (rx960_cur, rx960_pos, rx960_tgt, $I10) = self."!cursor_start"()
    getattribute rx960_debug, rx960_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx960_cur
    .local pmc match
    .lex "$/", match
    length rx960_eos, rx960_tgt
    gt rx960_pos, rx960_eos, rx960_done
    set rx960_off, 0
    lt rx960_pos, 2, rx960_start
    sub rx960_off, rx960_pos, 1
    substr rx960_tgt, rx960_tgt, rx960_off
  rx960_start:
    eq $I10, 1, rx960_restart
    if_null rx960_debug, debug_792
    rx960_cur."!cursor_debug"("START", "quote:sym<q>")
  debug_792:
    $I10 = self.'from'()
    ne $I10, -1, rxscan964_done
    goto rxscan964_scan
  rxscan964_loop:
    ($P10) = rx960_cur."from"()
    inc $P10
    set rx960_pos, $P10
    ge rx960_pos, rx960_eos, rxscan964_done
  rxscan964_scan:
    set_addr $I10, rxscan964_loop
    rx960_cur."!mark_push"(0, rx960_pos, $I10)
  rxscan964_done:
  # rx literal  "q"
    add $I11, rx960_pos, 1
    gt $I11, rx960_eos, rx960_fail
    sub $I11, rx960_pos, rx960_off
    ord $I11, rx960_tgt, $I11
    ne $I11, 113, rx960_fail
    add rx960_pos, 1
  # rxanchor rwb
    le rx960_pos, 0, rx960_fail
    sub $I10, rx960_pos, rx960_off
    is_cclass $I11, 8192, rx960_tgt, $I10
    if $I11, rx960_fail
    dec $I10
    is_cclass $I11, 8192, rx960_tgt, $I10
    unless $I11, rx960_fail
  # rx enumcharlist negate=1 zerowidth
    ge rx960_pos, rx960_eos, rx960_fail
    sub $I10, rx960_pos, rx960_off
    substr $S10, rx960_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx960_fail
  # rx subrule "ws" subtype=method negate=
    rx960_cur."!cursor_pos"(rx960_pos)
    $P10 = rx960_cur."ws"()
    unless $P10, rx960_fail
    rx960_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx960_cur."!cursor_pos"(rx960_pos)
    $P10 = rx960_cur."quote_EXPR"(":q")
    unless $P10, rx960_fail
    rx960_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx960_pos = $P10."pos"()
  # rx pass
    rx960_cur."!cursor_pass"(rx960_pos, "quote:sym<q>")
    if_null rx960_debug, debug_793
    rx960_cur."!cursor_debug"("PASS", "quote:sym<q>", " at pos=", rx960_pos)
  debug_793:
    .return (rx960_cur)
  rx960_restart:
    if_null rx960_debug, debug_794
    rx960_cur."!cursor_debug"("NEXT", "quote:sym<q>")
  debug_794:
  rx960_fail:
    (rx960_rep, rx960_pos, $I10, $P10) = rx960_cur."!mark_fail"(0)
    lt rx960_pos, -1, rx960_done
    eq rx960_pos, -1, rx960_fail
    jump $I10
  rx960_done:
    rx960_cur."!cursor_fail"()
    if_null rx960_debug, debug_795
    rx960_cur."!cursor_debug"("FAIL", "quote:sym<q>")
  debug_795:
    .return (rx960_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("223_1285886565.968") :method
.annotate 'line', 0
    $P962 = self."!PREFIX__!subrule"("ws", "q")
    new $P963, "ResizablePMCArray"
    push $P963, $P962
    .return ($P963)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("224_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx966_tgt
    .local int rx966_pos
    .local int rx966_off
    .local int rx966_eos
    .local int rx966_rep
    .local pmc rx966_cur
    .local pmc rx966_debug
    (rx966_cur, rx966_pos, rx966_tgt, $I10) = self."!cursor_start"()
    getattribute rx966_debug, rx966_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx966_cur
    .local pmc match
    .lex "$/", match
    length rx966_eos, rx966_tgt
    gt rx966_pos, rx966_eos, rx966_done
    set rx966_off, 0
    lt rx966_pos, 2, rx966_start
    sub rx966_off, rx966_pos, 1
    substr rx966_tgt, rx966_tgt, rx966_off
  rx966_start:
    eq $I10, 1, rx966_restart
    if_null rx966_debug, debug_796
    rx966_cur."!cursor_debug"("START", "quote:sym<qq>")
  debug_796:
    $I10 = self.'from'()
    ne $I10, -1, rxscan970_done
    goto rxscan970_scan
  rxscan970_loop:
    ($P10) = rx966_cur."from"()
    inc $P10
    set rx966_pos, $P10
    ge rx966_pos, rx966_eos, rxscan970_done
  rxscan970_scan:
    set_addr $I10, rxscan970_loop
    rx966_cur."!mark_push"(0, rx966_pos, $I10)
  rxscan970_done:
  # rx literal  "qq"
    add $I11, rx966_pos, 2
    gt $I11, rx966_eos, rx966_fail
    sub $I11, rx966_pos, rx966_off
    substr $S10, rx966_tgt, $I11, 2
    ne $S10, "qq", rx966_fail
    add rx966_pos, 2
  # rxanchor rwb
    le rx966_pos, 0, rx966_fail
    sub $I10, rx966_pos, rx966_off
    is_cclass $I11, 8192, rx966_tgt, $I10
    if $I11, rx966_fail
    dec $I10
    is_cclass $I11, 8192, rx966_tgt, $I10
    unless $I11, rx966_fail
  # rx enumcharlist negate=1 zerowidth
    ge rx966_pos, rx966_eos, rx966_fail
    sub $I10, rx966_pos, rx966_off
    substr $S10, rx966_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx966_fail
  # rx subrule "ws" subtype=method negate=
    rx966_cur."!cursor_pos"(rx966_pos)
    $P10 = rx966_cur."ws"()
    unless $P10, rx966_fail
    rx966_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx966_cur."!cursor_pos"(rx966_pos)
    $P10 = rx966_cur."quote_EXPR"(":qq")
    unless $P10, rx966_fail
    rx966_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx966_pos = $P10."pos"()
  # rx pass
    rx966_cur."!cursor_pass"(rx966_pos, "quote:sym<qq>")
    if_null rx966_debug, debug_797
    rx966_cur."!cursor_debug"("PASS", "quote:sym<qq>", " at pos=", rx966_pos)
  debug_797:
    .return (rx966_cur)
  rx966_restart:
    if_null rx966_debug, debug_798
    rx966_cur."!cursor_debug"("NEXT", "quote:sym<qq>")
  debug_798:
  rx966_fail:
    (rx966_rep, rx966_pos, $I10, $P10) = rx966_cur."!mark_fail"(0)
    lt rx966_pos, -1, rx966_done
    eq rx966_pos, -1, rx966_fail
    jump $I10
  rx966_done:
    rx966_cur."!cursor_fail"()
    if_null rx966_debug, debug_799
    rx966_cur."!cursor_debug"("FAIL", "quote:sym<qq>")
  debug_799:
    .return (rx966_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("225_1285886565.968") :method
.annotate 'line', 0
    $P968 = self."!PREFIX__!subrule"("ws", "qq")
    new $P969, "ResizablePMCArray"
    push $P969, $P968
    .return ($P969)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("226_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx972_tgt
    .local int rx972_pos
    .local int rx972_off
    .local int rx972_eos
    .local int rx972_rep
    .local pmc rx972_cur
    .local pmc rx972_debug
    (rx972_cur, rx972_pos, rx972_tgt, $I10) = self."!cursor_start"()
    getattribute rx972_debug, rx972_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx972_cur
    .local pmc match
    .lex "$/", match
    length rx972_eos, rx972_tgt
    gt rx972_pos, rx972_eos, rx972_done
    set rx972_off, 0
    lt rx972_pos, 2, rx972_start
    sub rx972_off, rx972_pos, 1
    substr rx972_tgt, rx972_tgt, rx972_off
  rx972_start:
    eq $I10, 1, rx972_restart
    if_null rx972_debug, debug_800
    rx972_cur."!cursor_debug"("START", "quote:sym<Q>")
  debug_800:
    $I10 = self.'from'()
    ne $I10, -1, rxscan976_done
    goto rxscan976_scan
  rxscan976_loop:
    ($P10) = rx972_cur."from"()
    inc $P10
    set rx972_pos, $P10
    ge rx972_pos, rx972_eos, rxscan976_done
  rxscan976_scan:
    set_addr $I10, rxscan976_loop
    rx972_cur."!mark_push"(0, rx972_pos, $I10)
  rxscan976_done:
  # rx literal  "Q"
    add $I11, rx972_pos, 1
    gt $I11, rx972_eos, rx972_fail
    sub $I11, rx972_pos, rx972_off
    ord $I11, rx972_tgt, $I11
    ne $I11, 81, rx972_fail
    add rx972_pos, 1
  # rxanchor rwb
    le rx972_pos, 0, rx972_fail
    sub $I10, rx972_pos, rx972_off
    is_cclass $I11, 8192, rx972_tgt, $I10
    if $I11, rx972_fail
    dec $I10
    is_cclass $I11, 8192, rx972_tgt, $I10
    unless $I11, rx972_fail
  # rx enumcharlist negate=1 zerowidth
    ge rx972_pos, rx972_eos, rx972_fail
    sub $I10, rx972_pos, rx972_off
    substr $S10, rx972_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx972_fail
  # rx subrule "ws" subtype=method negate=
    rx972_cur."!cursor_pos"(rx972_pos)
    $P10 = rx972_cur."ws"()
    unless $P10, rx972_fail
    rx972_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx972_cur."!cursor_pos"(rx972_pos)
    $P10 = rx972_cur."quote_EXPR"()
    unless $P10, rx972_fail
    rx972_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx972_pos = $P10."pos"()
  # rx pass
    rx972_cur."!cursor_pass"(rx972_pos, "quote:sym<Q>")
    if_null rx972_debug, debug_801
    rx972_cur."!cursor_debug"("PASS", "quote:sym<Q>", " at pos=", rx972_pos)
  debug_801:
    .return (rx972_cur)
  rx972_restart:
    if_null rx972_debug, debug_802
    rx972_cur."!cursor_debug"("NEXT", "quote:sym<Q>")
  debug_802:
  rx972_fail:
    (rx972_rep, rx972_pos, $I10, $P10) = rx972_cur."!mark_fail"(0)
    lt rx972_pos, -1, rx972_done
    eq rx972_pos, -1, rx972_fail
    jump $I10
  rx972_done:
    rx972_cur."!cursor_fail"()
    if_null rx972_debug, debug_803
    rx972_cur."!cursor_debug"("FAIL", "quote:sym<Q>")
  debug_803:
    .return (rx972_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("227_1285886565.968") :method
.annotate 'line', 0
    $P974 = self."!PREFIX__!subrule"("ws", "Q")
    new $P975, "ResizablePMCArray"
    push $P975, $P974
    .return ($P975)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("228_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx978_tgt
    .local int rx978_pos
    .local int rx978_off
    .local int rx978_eos
    .local int rx978_rep
    .local pmc rx978_cur
    .local pmc rx978_debug
    (rx978_cur, rx978_pos, rx978_tgt, $I10) = self."!cursor_start"()
    getattribute rx978_debug, rx978_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx978_cur
    .local pmc match
    .lex "$/", match
    length rx978_eos, rx978_tgt
    gt rx978_pos, rx978_eos, rx978_done
    set rx978_off, 0
    lt rx978_pos, 2, rx978_start
    sub rx978_off, rx978_pos, 1
    substr rx978_tgt, rx978_tgt, rx978_off
  rx978_start:
    eq $I10, 1, rx978_restart
    if_null rx978_debug, debug_804
    rx978_cur."!cursor_debug"("START", "quote:sym<Q:PIR>")
  debug_804:
    $I10 = self.'from'()
    ne $I10, -1, rxscan982_done
    goto rxscan982_scan
  rxscan982_loop:
    ($P10) = rx978_cur."from"()
    inc $P10
    set rx978_pos, $P10
    ge rx978_pos, rx978_eos, rxscan982_done
  rxscan982_scan:
    set_addr $I10, rxscan982_loop
    rx978_cur."!mark_push"(0, rx978_pos, $I10)
  rxscan982_done:
  # rx literal  "Q:PIR"
    add $I11, rx978_pos, 5
    gt $I11, rx978_eos, rx978_fail
    sub $I11, rx978_pos, rx978_off
    substr $S10, rx978_tgt, $I11, 5
    ne $S10, "Q:PIR", rx978_fail
    add rx978_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx978_cur."!cursor_pos"(rx978_pos)
    $P10 = rx978_cur."ws"()
    unless $P10, rx978_fail
    rx978_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx978_cur."!cursor_pos"(rx978_pos)
    $P10 = rx978_cur."quote_EXPR"()
    unless $P10, rx978_fail
    rx978_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx978_pos = $P10."pos"()
  # rx pass
    rx978_cur."!cursor_pass"(rx978_pos, "quote:sym<Q:PIR>")
    if_null rx978_debug, debug_805
    rx978_cur."!cursor_debug"("PASS", "quote:sym<Q:PIR>", " at pos=", rx978_pos)
  debug_805:
    .return (rx978_cur)
  rx978_restart:
    if_null rx978_debug, debug_806
    rx978_cur."!cursor_debug"("NEXT", "quote:sym<Q:PIR>")
  debug_806:
  rx978_fail:
    (rx978_rep, rx978_pos, $I10, $P10) = rx978_cur."!mark_fail"(0)
    lt rx978_pos, -1, rx978_done
    eq rx978_pos, -1, rx978_fail
    jump $I10
  rx978_done:
    rx978_cur."!cursor_fail"()
    if_null rx978_debug, debug_807
    rx978_cur."!cursor_debug"("FAIL", "quote:sym<Q:PIR>")
  debug_807:
    .return (rx978_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("229_1285886565.968") :method
.annotate 'line', 0
    $P980 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P981, "ResizablePMCArray"
    push $P981, $P980
    .return ($P981)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym</ />"  :subid("230_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx984_tgt
    .local int rx984_pos
    .local int rx984_off
    .local int rx984_eos
    .local int rx984_rep
    .local pmc rx984_cur
    .local pmc rx984_debug
    (rx984_cur, rx984_pos, rx984_tgt, $I10) = self."!cursor_start"()
    getattribute rx984_debug, rx984_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx984_cur
    .local pmc match
    .lex "$/", match
    length rx984_eos, rx984_tgt
    gt rx984_pos, rx984_eos, rx984_done
    set rx984_off, 0
    lt rx984_pos, 2, rx984_start
    sub rx984_off, rx984_pos, 1
    substr rx984_tgt, rx984_tgt, rx984_off
  rx984_start:
    eq $I10, 1, rx984_restart
    if_null rx984_debug, debug_808
    rx984_cur."!cursor_debug"("START", "quote:sym</ />")
  debug_808:
    $I10 = self.'from'()
    ne $I10, -1, rxscan988_done
    goto rxscan988_scan
  rxscan988_loop:
    ($P10) = rx984_cur."from"()
    inc $P10
    set rx984_pos, $P10
    ge rx984_pos, rx984_eos, rxscan988_done
  rxscan988_scan:
    set_addr $I10, rxscan988_loop
    rx984_cur."!mark_push"(0, rx984_pos, $I10)
  rxscan988_done:
  # rx literal  "/"
    add $I11, rx984_pos, 1
    gt $I11, rx984_eos, rx984_fail
    sub $I11, rx984_pos, rx984_off
    ord $I11, rx984_tgt, $I11
    ne $I11, 47, rx984_fail
    add rx984_pos, 1
  # rx subrule "newpad" subtype=method negate=
    rx984_cur."!cursor_pos"(rx984_pos)
    $P10 = rx984_cur."newpad"()
    unless $P10, rx984_fail
    rx984_pos = $P10."pos"()
  # rx reduce name="quote:sym</ />" key="open"
    rx984_cur."!cursor_pos"(rx984_pos)
    rx984_cur."!reduce"("quote:sym</ />", "open")
  # rx subrule "LANG" subtype=capture negate=
    rx984_cur."!cursor_pos"(rx984_pos)
    $P10 = rx984_cur."LANG"("Regex", "nibbler")
    unless $P10, rx984_fail
    rx984_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx984_pos = $P10."pos"()
  # rx literal  "/"
    add $I11, rx984_pos, 1
    gt $I11, rx984_eos, rx984_fail
    sub $I11, rx984_pos, rx984_off
    ord $I11, rx984_tgt, $I11
    ne $I11, 47, rx984_fail
    add rx984_pos, 1
  # rx pass
    rx984_cur."!cursor_pass"(rx984_pos, "quote:sym</ />")
    if_null rx984_debug, debug_809
    rx984_cur."!cursor_debug"("PASS", "quote:sym</ />", " at pos=", rx984_pos)
  debug_809:
    .return (rx984_cur)
  rx984_restart:
    if_null rx984_debug, debug_810
    rx984_cur."!cursor_debug"("NEXT", "quote:sym</ />")
  debug_810:
  rx984_fail:
    (rx984_rep, rx984_pos, $I10, $P10) = rx984_cur."!mark_fail"(0)
    lt rx984_pos, -1, rx984_done
    eq rx984_pos, -1, rx984_fail
    jump $I10
  rx984_done:
    rx984_cur."!cursor_fail"()
    if_null rx984_debug, debug_811
    rx984_cur."!cursor_debug"("FAIL", "quote:sym</ />")
  debug_811:
    .return (rx984_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym</ />"  :subid("231_1285886565.968") :method
.annotate 'line', 0
    $P986 = self."!PREFIX__!subrule"("newpad", "/")
    new $P987, "ResizablePMCArray"
    push $P987, $P986
    .return ($P987)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("232_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx990_tgt
    .local int rx990_pos
    .local int rx990_off
    .local int rx990_eos
    .local int rx990_rep
    .local pmc rx990_cur
    .local pmc rx990_debug
    (rx990_cur, rx990_pos, rx990_tgt, $I10) = self."!cursor_start"()
    getattribute rx990_debug, rx990_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx990_cur
    .local pmc match
    .lex "$/", match
    length rx990_eos, rx990_tgt
    gt rx990_pos, rx990_eos, rx990_done
    set rx990_off, 0
    lt rx990_pos, 2, rx990_start
    sub rx990_off, rx990_pos, 1
    substr rx990_tgt, rx990_tgt, rx990_off
  rx990_start:
    eq $I10, 1, rx990_restart
    if_null rx990_debug, debug_812
    rx990_cur."!cursor_debug"("START", "quote_escape:sym<$>")
  debug_812:
    $I10 = self.'from'()
    ne $I10, -1, rxscan993_done
    goto rxscan993_scan
  rxscan993_loop:
    ($P10) = rx990_cur."from"()
    inc $P10
    set rx990_pos, $P10
    ge rx990_pos, rx990_eos, rxscan993_done
  rxscan993_scan:
    set_addr $I10, rxscan993_loop
    rx990_cur."!mark_push"(0, rx990_pos, $I10)
  rxscan993_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx990_pos, rx990_eos, rx990_fail
    sub $I10, rx990_pos, rx990_off
    substr $S10, rx990_tgt, $I10, 1
    index $I11, "$", $S10
    lt $I11, 0, rx990_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx990_cur."!cursor_pos"(rx990_pos)
    $P10 = rx990_cur."quotemod_check"("s")
    unless $P10, rx990_fail
  # rx subrule "variable" subtype=capture negate=
    rx990_cur."!cursor_pos"(rx990_pos)
    $P10 = rx990_cur."variable"()
    unless $P10, rx990_fail
    rx990_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx990_pos = $P10."pos"()
  # rx pass
    rx990_cur."!cursor_pass"(rx990_pos, "quote_escape:sym<$>")
    if_null rx990_debug, debug_813
    rx990_cur."!cursor_debug"("PASS", "quote_escape:sym<$>", " at pos=", rx990_pos)
  debug_813:
    .return (rx990_cur)
  rx990_restart:
    if_null rx990_debug, debug_814
    rx990_cur."!cursor_debug"("NEXT", "quote_escape:sym<$>")
  debug_814:
  rx990_fail:
    (rx990_rep, rx990_pos, $I10, $P10) = rx990_cur."!mark_fail"(0)
    lt rx990_pos, -1, rx990_done
    eq rx990_pos, -1, rx990_fail
    jump $I10
  rx990_done:
    rx990_cur."!cursor_fail"()
    if_null rx990_debug, debug_815
    rx990_cur."!cursor_debug"("FAIL", "quote_escape:sym<$>")
  debug_815:
    .return (rx990_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<$>"  :subid("233_1285886565.968") :method
.annotate 'line', 0
    new $P992, "ResizablePMCArray"
    push $P992, "$"
    .return ($P992)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<{ }>"  :subid("234_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx995_tgt
    .local int rx995_pos
    .local int rx995_off
    .local int rx995_eos
    .local int rx995_rep
    .local pmc rx995_cur
    .local pmc rx995_debug
    (rx995_cur, rx995_pos, rx995_tgt, $I10) = self."!cursor_start"()
    getattribute rx995_debug, rx995_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx995_cur
    .local pmc match
    .lex "$/", match
    length rx995_eos, rx995_tgt
    gt rx995_pos, rx995_eos, rx995_done
    set rx995_off, 0
    lt rx995_pos, 2, rx995_start
    sub rx995_off, rx995_pos, 1
    substr rx995_tgt, rx995_tgt, rx995_off
  rx995_start:
    eq $I10, 1, rx995_restart
    if_null rx995_debug, debug_816
    rx995_cur."!cursor_debug"("START", "quote_escape:sym<{ }>")
  debug_816:
    $I10 = self.'from'()
    ne $I10, -1, rxscan998_done
    goto rxscan998_scan
  rxscan998_loop:
    ($P10) = rx995_cur."from"()
    inc $P10
    set rx995_pos, $P10
    ge rx995_pos, rx995_eos, rxscan998_done
  rxscan998_scan:
    set_addr $I10, rxscan998_loop
    rx995_cur."!mark_push"(0, rx995_pos, $I10)
  rxscan998_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx995_pos, rx995_eos, rx995_fail
    sub $I10, rx995_pos, rx995_off
    substr $S10, rx995_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx995_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx995_cur."!cursor_pos"(rx995_pos)
    $P10 = rx995_cur."quotemod_check"("c")
    unless $P10, rx995_fail
  # rx subrule "block" subtype=capture negate=
    rx995_cur."!cursor_pos"(rx995_pos)
    $P10 = rx995_cur."block"()
    unless $P10, rx995_fail
    rx995_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx995_pos = $P10."pos"()
  # rx pass
    rx995_cur."!cursor_pass"(rx995_pos, "quote_escape:sym<{ }>")
    if_null rx995_debug, debug_817
    rx995_cur."!cursor_debug"("PASS", "quote_escape:sym<{ }>", " at pos=", rx995_pos)
  debug_817:
    .return (rx995_cur)
  rx995_restart:
    if_null rx995_debug, debug_818
    rx995_cur."!cursor_debug"("NEXT", "quote_escape:sym<{ }>")
  debug_818:
  rx995_fail:
    (rx995_rep, rx995_pos, $I10, $P10) = rx995_cur."!mark_fail"(0)
    lt rx995_pos, -1, rx995_done
    eq rx995_pos, -1, rx995_fail
    jump $I10
  rx995_done:
    rx995_cur."!cursor_fail"()
    if_null rx995_debug, debug_819
    rx995_cur."!cursor_debug"("FAIL", "quote_escape:sym<{ }>")
  debug_819:
    .return (rx995_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<{ }>"  :subid("235_1285886565.968") :method
.annotate 'line', 0
    new $P997, "ResizablePMCArray"
    push $P997, "{"
    .return ($P997)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("236_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1000_tgt
    .local int rx1000_pos
    .local int rx1000_off
    .local int rx1000_eos
    .local int rx1000_rep
    .local pmc rx1000_cur
    .local pmc rx1000_debug
    (rx1000_cur, rx1000_pos, rx1000_tgt, $I10) = self."!cursor_start"()
    getattribute rx1000_debug, rx1000_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1000_cur
    .local pmc match
    .lex "$/", match
    length rx1000_eos, rx1000_tgt
    gt rx1000_pos, rx1000_eos, rx1000_done
    set rx1000_off, 0
    lt rx1000_pos, 2, rx1000_start
    sub rx1000_off, rx1000_pos, 1
    substr rx1000_tgt, rx1000_tgt, rx1000_off
  rx1000_start:
    eq $I10, 1, rx1000_restart
    if_null rx1000_debug, debug_820
    rx1000_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_820:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1003_done
    goto rxscan1003_scan
  rxscan1003_loop:
    ($P10) = rx1000_cur."from"()
    inc $P10
    set rx1000_pos, $P10
    ge rx1000_pos, rx1000_eos, rxscan1003_done
  rxscan1003_scan:
    set_addr $I10, rxscan1003_loop
    rx1000_cur."!mark_push"(0, rx1000_pos, $I10)
  rxscan1003_done:
  # rx literal  "\\e"
    add $I11, rx1000_pos, 2
    gt $I11, rx1000_eos, rx1000_fail
    sub $I11, rx1000_pos, rx1000_off
    substr $S10, rx1000_tgt, $I11, 2
    ne $S10, "\\e", rx1000_fail
    add rx1000_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1000_cur."!cursor_pos"(rx1000_pos)
    $P10 = rx1000_cur."quotemod_check"("b")
    unless $P10, rx1000_fail
  # rx pass
    rx1000_cur."!cursor_pass"(rx1000_pos, "quote_escape:sym<esc>")
    if_null rx1000_debug, debug_821
    rx1000_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx1000_pos)
  debug_821:
    .return (rx1000_cur)
  rx1000_restart:
    if_null rx1000_debug, debug_822
    rx1000_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_822:
  rx1000_fail:
    (rx1000_rep, rx1000_pos, $I10, $P10) = rx1000_cur."!mark_fail"(0)
    lt rx1000_pos, -1, rx1000_done
    eq rx1000_pos, -1, rx1000_fail
    jump $I10
  rx1000_done:
    rx1000_cur."!cursor_fail"()
    if_null rx1000_debug, debug_823
    rx1000_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_823:
    .return (rx1000_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("237_1285886565.968") :method
.annotate 'line', 0
    new $P1002, "ResizablePMCArray"
    push $P1002, "\\e"
    .return ($P1002)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("238_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1005_tgt
    .local int rx1005_pos
    .local int rx1005_off
    .local int rx1005_eos
    .local int rx1005_rep
    .local pmc rx1005_cur
    .local pmc rx1005_debug
    (rx1005_cur, rx1005_pos, rx1005_tgt, $I10) = self."!cursor_start"()
    rx1005_cur."!cursor_caparray"("EXPR")
    getattribute rx1005_debug, rx1005_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1005_cur
    .local pmc match
    .lex "$/", match
    length rx1005_eos, rx1005_tgt
    gt rx1005_pos, rx1005_eos, rx1005_done
    set rx1005_off, 0
    lt rx1005_pos, 2, rx1005_start
    sub rx1005_off, rx1005_pos, 1
    substr rx1005_tgt, rx1005_tgt, rx1005_off
  rx1005_start:
    eq $I10, 1, rx1005_restart
    if_null rx1005_debug, debug_824
    rx1005_cur."!cursor_debug"("START", "circumfix:sym<( )>")
  debug_824:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1009_done
    goto rxscan1009_scan
  rxscan1009_loop:
    ($P10) = rx1005_cur."from"()
    inc $P10
    set rx1005_pos, $P10
    ge rx1005_pos, rx1005_eos, rxscan1009_done
  rxscan1009_scan:
    set_addr $I10, rxscan1009_loop
    rx1005_cur."!mark_push"(0, rx1005_pos, $I10)
  rxscan1009_done:
  # rx literal  "("
    add $I11, rx1005_pos, 1
    gt $I11, rx1005_eos, rx1005_fail
    sub $I11, rx1005_pos, rx1005_off
    ord $I11, rx1005_tgt, $I11
    ne $I11, 40, rx1005_fail
    add rx1005_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1005_cur."!cursor_pos"(rx1005_pos)
    $P10 = rx1005_cur."ws"()
    unless $P10, rx1005_fail
    rx1005_pos = $P10."pos"()
  # rx rxquantr1010 ** 0..1
    set_addr $I10, rxquantr1010_done
    rx1005_cur."!mark_push"(0, rx1005_pos, $I10)
  rxquantr1010_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx1005_cur."!cursor_pos"(rx1005_pos)
    $P10 = rx1005_cur."EXPR"()
    unless $P10, rx1005_fail
    goto rxsubrule1011_pass
  rxsubrule1011_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1005_fail
  rxsubrule1011_pass:
    set_addr $I10, rxsubrule1011_back
    rx1005_cur."!mark_push"(0, rx1005_pos, $I10, $P10)
    $P10."!cursor_names"("EXPR")
    rx1005_pos = $P10."pos"()
    set_addr $I10, rxquantr1010_done
    (rx1005_rep) = rx1005_cur."!mark_commit"($I10)
  rxquantr1010_done:
  # rx literal  ")"
    add $I11, rx1005_pos, 1
    gt $I11, rx1005_eos, rx1005_fail
    sub $I11, rx1005_pos, rx1005_off
    ord $I11, rx1005_tgt, $I11
    ne $I11, 41, rx1005_fail
    add rx1005_pos, 1
  # rx pass
    rx1005_cur."!cursor_pass"(rx1005_pos, "circumfix:sym<( )>")
    if_null rx1005_debug, debug_825
    rx1005_cur."!cursor_debug"("PASS", "circumfix:sym<( )>", " at pos=", rx1005_pos)
  debug_825:
    .return (rx1005_cur)
  rx1005_restart:
    if_null rx1005_debug, debug_826
    rx1005_cur."!cursor_debug"("NEXT", "circumfix:sym<( )>")
  debug_826:
  rx1005_fail:
    (rx1005_rep, rx1005_pos, $I10, $P10) = rx1005_cur."!mark_fail"(0)
    lt rx1005_pos, -1, rx1005_done
    eq rx1005_pos, -1, rx1005_fail
    jump $I10
  rx1005_done:
    rx1005_cur."!cursor_fail"()
    if_null rx1005_debug, debug_827
    rx1005_cur."!cursor_debug"("FAIL", "circumfix:sym<( )>")
  debug_827:
    .return (rx1005_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("239_1285886565.968") :method
.annotate 'line', 0
    $P1007 = self."!PREFIX__!subrule"("ws", "(")
    new $P1008, "ResizablePMCArray"
    push $P1008, $P1007
    .return ($P1008)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<[ ]>"  :subid("240_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1013_tgt
    .local int rx1013_pos
    .local int rx1013_off
    .local int rx1013_eos
    .local int rx1013_rep
    .local pmc rx1013_cur
    .local pmc rx1013_debug
    (rx1013_cur, rx1013_pos, rx1013_tgt, $I10) = self."!cursor_start"()
    rx1013_cur."!cursor_caparray"("EXPR")
    getattribute rx1013_debug, rx1013_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1013_cur
    .local pmc match
    .lex "$/", match
    length rx1013_eos, rx1013_tgt
    gt rx1013_pos, rx1013_eos, rx1013_done
    set rx1013_off, 0
    lt rx1013_pos, 2, rx1013_start
    sub rx1013_off, rx1013_pos, 1
    substr rx1013_tgt, rx1013_tgt, rx1013_off
  rx1013_start:
    eq $I10, 1, rx1013_restart
    if_null rx1013_debug, debug_828
    rx1013_cur."!cursor_debug"("START", "circumfix:sym<[ ]>")
  debug_828:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1017_done
    goto rxscan1017_scan
  rxscan1017_loop:
    ($P10) = rx1013_cur."from"()
    inc $P10
    set rx1013_pos, $P10
    ge rx1013_pos, rx1013_eos, rxscan1017_done
  rxscan1017_scan:
    set_addr $I10, rxscan1017_loop
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  rxscan1017_done:
  # rx literal  "["
    add $I11, rx1013_pos, 1
    gt $I11, rx1013_eos, rx1013_fail
    sub $I11, rx1013_pos, rx1013_off
    ord $I11, rx1013_tgt, $I11
    ne $I11, 91, rx1013_fail
    add rx1013_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1013_cur."!cursor_pos"(rx1013_pos)
    $P10 = rx1013_cur."ws"()
    unless $P10, rx1013_fail
    rx1013_pos = $P10."pos"()
  # rx rxquantr1018 ** 0..1
    set_addr $I10, rxquantr1018_done
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  rxquantr1018_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx1013_cur."!cursor_pos"(rx1013_pos)
    $P10 = rx1013_cur."EXPR"()
    unless $P10, rx1013_fail
    goto rxsubrule1019_pass
  rxsubrule1019_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1013_fail
  rxsubrule1019_pass:
    set_addr $I10, rxsubrule1019_back
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10, $P10)
    $P10."!cursor_names"("EXPR")
    rx1013_pos = $P10."pos"()
    set_addr $I10, rxquantr1018_done
    (rx1013_rep) = rx1013_cur."!mark_commit"($I10)
  rxquantr1018_done:
  # rx literal  "]"
    add $I11, rx1013_pos, 1
    gt $I11, rx1013_eos, rx1013_fail
    sub $I11, rx1013_pos, rx1013_off
    ord $I11, rx1013_tgt, $I11
    ne $I11, 93, rx1013_fail
    add rx1013_pos, 1
  # rx pass
    rx1013_cur."!cursor_pass"(rx1013_pos, "circumfix:sym<[ ]>")
    if_null rx1013_debug, debug_829
    rx1013_cur."!cursor_debug"("PASS", "circumfix:sym<[ ]>", " at pos=", rx1013_pos)
  debug_829:
    .return (rx1013_cur)
  rx1013_restart:
    if_null rx1013_debug, debug_830
    rx1013_cur."!cursor_debug"("NEXT", "circumfix:sym<[ ]>")
  debug_830:
  rx1013_fail:
    (rx1013_rep, rx1013_pos, $I10, $P10) = rx1013_cur."!mark_fail"(0)
    lt rx1013_pos, -1, rx1013_done
    eq rx1013_pos, -1, rx1013_fail
    jump $I10
  rx1013_done:
    rx1013_cur."!cursor_fail"()
    if_null rx1013_debug, debug_831
    rx1013_cur."!cursor_debug"("FAIL", "circumfix:sym<[ ]>")
  debug_831:
    .return (rx1013_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<[ ]>"  :subid("241_1285886565.968") :method
.annotate 'line', 0
    $P1015 = self."!PREFIX__!subrule"("ws", "[")
    new $P1016, "ResizablePMCArray"
    push $P1016, $P1015
    .return ($P1016)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("242_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1021_tgt
    .local int rx1021_pos
    .local int rx1021_off
    .local int rx1021_eos
    .local int rx1021_rep
    .local pmc rx1021_cur
    .local pmc rx1021_debug
    (rx1021_cur, rx1021_pos, rx1021_tgt, $I10) = self."!cursor_start"()
    getattribute rx1021_debug, rx1021_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1021_cur
    .local pmc match
    .lex "$/", match
    length rx1021_eos, rx1021_tgt
    gt rx1021_pos, rx1021_eos, rx1021_done
    set rx1021_off, 0
    lt rx1021_pos, 2, rx1021_start
    sub rx1021_off, rx1021_pos, 1
    substr rx1021_tgt, rx1021_tgt, rx1021_off
  rx1021_start:
    eq $I10, 1, rx1021_restart
    if_null rx1021_debug, debug_832
    rx1021_cur."!cursor_debug"("START", "circumfix:sym<ang>")
  debug_832:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1024_done
    goto rxscan1024_scan
  rxscan1024_loop:
    ($P10) = rx1021_cur."from"()
    inc $P10
    set rx1021_pos, $P10
    ge rx1021_pos, rx1021_eos, rxscan1024_done
  rxscan1024_scan:
    set_addr $I10, rxscan1024_loop
    rx1021_cur."!mark_push"(0, rx1021_pos, $I10)
  rxscan1024_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1021_pos, rx1021_eos, rx1021_fail
    sub $I10, rx1021_pos, rx1021_off
    substr $S10, rx1021_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx1021_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1021_cur."!cursor_pos"(rx1021_pos)
    $P10 = rx1021_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx1021_fail
    rx1021_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1021_pos = $P10."pos"()
  # rx pass
    rx1021_cur."!cursor_pass"(rx1021_pos, "circumfix:sym<ang>")
    if_null rx1021_debug, debug_833
    rx1021_cur."!cursor_debug"("PASS", "circumfix:sym<ang>", " at pos=", rx1021_pos)
  debug_833:
    .return (rx1021_cur)
  rx1021_restart:
    if_null rx1021_debug, debug_834
    rx1021_cur."!cursor_debug"("NEXT", "circumfix:sym<ang>")
  debug_834:
  rx1021_fail:
    (rx1021_rep, rx1021_pos, $I10, $P10) = rx1021_cur."!mark_fail"(0)
    lt rx1021_pos, -1, rx1021_done
    eq rx1021_pos, -1, rx1021_fail
    jump $I10
  rx1021_done:
    rx1021_cur."!cursor_fail"()
    if_null rx1021_debug, debug_835
    rx1021_cur."!cursor_debug"("FAIL", "circumfix:sym<ang>")
  debug_835:
    .return (rx1021_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("243_1285886565.968") :method
.annotate 'line', 0
    new $P1023, "ResizablePMCArray"
    push $P1023, "<"
    .return ($P1023)
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("244_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1026_tgt
    .local int rx1026_pos
    .local int rx1026_off
    .local int rx1026_eos
    .local int rx1026_rep
    .local pmc rx1026_cur
    .local pmc rx1026_debug
    (rx1026_cur, rx1026_pos, rx1026_tgt, $I10) = self."!cursor_start"()
    getattribute rx1026_debug, rx1026_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1026_cur
    .local pmc match
    .lex "$/", match
    length rx1026_eos, rx1026_tgt
    gt rx1026_pos, rx1026_eos, rx1026_done
    set rx1026_off, 0
    lt rx1026_pos, 2, rx1026_start
    sub rx1026_off, rx1026_pos, 1
    substr rx1026_tgt, rx1026_tgt, rx1026_off
  rx1026_start:
    eq $I10, 1, rx1026_restart
    if_null rx1026_debug, debug_836
    rx1026_cur."!cursor_debug"("START", unicode:"circumfix:sym<\x{ab} \x{bb}>")
  debug_836:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1029_done
    goto rxscan1029_scan
  rxscan1029_loop:
    ($P10) = rx1026_cur."from"()
    inc $P10
    set rx1026_pos, $P10
    ge rx1026_pos, rx1026_eos, rxscan1029_done
  rxscan1029_scan:
    set_addr $I10, rxscan1029_loop
    rx1026_cur."!mark_push"(0, rx1026_pos, $I10)
  rxscan1029_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1026_pos, rx1026_eos, rx1026_fail
    sub $I10, rx1026_pos, rx1026_off
    substr $S10, rx1026_tgt, $I10, 1
    index $I11, unicode:"\x{ab}", $S10
    lt $I11, 0, rx1026_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1026_cur."!cursor_pos"(rx1026_pos)
    $P10 = rx1026_cur."quote_EXPR"(":qq", ":w")
    unless $P10, rx1026_fail
    rx1026_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1026_pos = $P10."pos"()
  # rx pass
    rx1026_cur."!cursor_pass"(rx1026_pos, unicode:"circumfix:sym<\x{ab} \x{bb}>")
    if_null rx1026_debug, debug_837
    rx1026_cur."!cursor_debug"("PASS", unicode:"circumfix:sym<\x{ab} \x{bb}>", " at pos=", rx1026_pos)
  debug_837:
    .return (rx1026_cur)
  rx1026_restart:
    if_null rx1026_debug, debug_838
    rx1026_cur."!cursor_debug"("NEXT", unicode:"circumfix:sym<\x{ab} \x{bb}>")
  debug_838:
  rx1026_fail:
    (rx1026_rep, rx1026_pos, $I10, $P10) = rx1026_cur."!mark_fail"(0)
    lt rx1026_pos, -1, rx1026_done
    eq rx1026_pos, -1, rx1026_fail
    jump $I10
  rx1026_done:
    rx1026_cur."!cursor_fail"()
    if_null rx1026_debug, debug_839
    rx1026_cur."!cursor_debug"("FAIL", unicode:"circumfix:sym<\x{ab} \x{bb}>")
  debug_839:
    .return (rx1026_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"!PREFIX__circumfix:sym<\x{ab} \x{bb}>"  :subid("245_1285886565.968") :method
.annotate 'line', 0
    new $P1028, "ResizablePMCArray"
    push $P1028, unicode:"\x{ab}"
    .return ($P1028)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("246_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1031_tgt
    .local int rx1031_pos
    .local int rx1031_off
    .local int rx1031_eos
    .local int rx1031_rep
    .local pmc rx1031_cur
    .local pmc rx1031_debug
    (rx1031_cur, rx1031_pos, rx1031_tgt, $I10) = self."!cursor_start"()
    getattribute rx1031_debug, rx1031_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1031_cur
    .local pmc match
    .lex "$/", match
    length rx1031_eos, rx1031_tgt
    gt rx1031_pos, rx1031_eos, rx1031_done
    set rx1031_off, 0
    lt rx1031_pos, 2, rx1031_start
    sub rx1031_off, rx1031_pos, 1
    substr rx1031_tgt, rx1031_tgt, rx1031_off
  rx1031_start:
    eq $I10, 1, rx1031_restart
    if_null rx1031_debug, debug_840
    rx1031_cur."!cursor_debug"("START", "circumfix:sym<{ }>")
  debug_840:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1034_done
    goto rxscan1034_scan
  rxscan1034_loop:
    ($P10) = rx1031_cur."from"()
    inc $P10
    set rx1031_pos, $P10
    ge rx1031_pos, rx1031_eos, rxscan1034_done
  rxscan1034_scan:
    set_addr $I10, rxscan1034_loop
    rx1031_cur."!mark_push"(0, rx1031_pos, $I10)
  rxscan1034_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1031_pos, rx1031_eos, rx1031_fail
    sub $I10, rx1031_pos, rx1031_off
    substr $S10, rx1031_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1031_fail
  # rx subrule "pblock" subtype=capture negate=
    rx1031_cur."!cursor_pos"(rx1031_pos)
    $P10 = rx1031_cur."pblock"()
    unless $P10, rx1031_fail
    rx1031_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx1031_pos = $P10."pos"()
  # rx pass
    rx1031_cur."!cursor_pass"(rx1031_pos, "circumfix:sym<{ }>")
    if_null rx1031_debug, debug_841
    rx1031_cur."!cursor_debug"("PASS", "circumfix:sym<{ }>", " at pos=", rx1031_pos)
  debug_841:
    .return (rx1031_cur)
  rx1031_restart:
    if_null rx1031_debug, debug_842
    rx1031_cur."!cursor_debug"("NEXT", "circumfix:sym<{ }>")
  debug_842:
  rx1031_fail:
    (rx1031_rep, rx1031_pos, $I10, $P10) = rx1031_cur."!mark_fail"(0)
    lt rx1031_pos, -1, rx1031_done
    eq rx1031_pos, -1, rx1031_fail
    jump $I10
  rx1031_done:
    rx1031_cur."!cursor_fail"()
    if_null rx1031_debug, debug_843
    rx1031_cur."!cursor_debug"("FAIL", "circumfix:sym<{ }>")
  debug_843:
    .return (rx1031_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("247_1285886565.968") :method
.annotate 'line', 0
    new $P1033, "ResizablePMCArray"
    push $P1033, "{"
    .return ($P1033)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("248_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1036_tgt
    .local int rx1036_pos
    .local int rx1036_off
    .local int rx1036_eos
    .local int rx1036_rep
    .local pmc rx1036_cur
    .local pmc rx1036_debug
    (rx1036_cur, rx1036_pos, rx1036_tgt, $I10) = self."!cursor_start"()
    getattribute rx1036_debug, rx1036_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1036_cur
    .local pmc match
    .lex "$/", match
    length rx1036_eos, rx1036_tgt
    gt rx1036_pos, rx1036_eos, rx1036_done
    set rx1036_off, 0
    lt rx1036_pos, 2, rx1036_start
    sub rx1036_off, rx1036_pos, 1
    substr rx1036_tgt, rx1036_tgt, rx1036_off
  rx1036_start:
    eq $I10, 1, rx1036_restart
    if_null rx1036_debug, debug_844
    rx1036_cur."!cursor_debug"("START", "circumfix:sym<sigil>")
  debug_844:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1040_done
    goto rxscan1040_scan
  rxscan1040_loop:
    ($P10) = rx1036_cur."from"()
    inc $P10
    set rx1036_pos, $P10
    ge rx1036_pos, rx1036_eos, rxscan1040_done
  rxscan1040_scan:
    set_addr $I10, rxscan1040_loop
    rx1036_cur."!mark_push"(0, rx1036_pos, $I10)
  rxscan1040_done:
  # rx subrule "sigil" subtype=capture negate=
    rx1036_cur."!cursor_pos"(rx1036_pos)
    $P10 = rx1036_cur."sigil"()
    unless $P10, rx1036_fail
    rx1036_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx1036_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx1036_pos, 1
    gt $I11, rx1036_eos, rx1036_fail
    sub $I11, rx1036_pos, rx1036_off
    ord $I11, rx1036_tgt, $I11
    ne $I11, 40, rx1036_fail
    add rx1036_pos, 1
  # rx subrule "semilist" subtype=capture negate=
    rx1036_cur."!cursor_pos"(rx1036_pos)
    $P10 = rx1036_cur."semilist"()
    unless $P10, rx1036_fail
    rx1036_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("semilist")
    rx1036_pos = $P10."pos"()
  alt1041_0:
    set_addr $I10, alt1041_1
    rx1036_cur."!mark_push"(0, rx1036_pos, $I10)
  # rx literal  ")"
    add $I11, rx1036_pos, 1
    gt $I11, rx1036_eos, rx1036_fail
    sub $I11, rx1036_pos, rx1036_off
    ord $I11, rx1036_tgt, $I11
    ne $I11, 41, rx1036_fail
    add rx1036_pos, 1
    goto alt1041_end
  alt1041_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx1036_cur."!cursor_pos"(rx1036_pos)
    $P10 = rx1036_cur."FAILGOAL"("')'")
    unless $P10, rx1036_fail
    goto rxsubrule1043_pass
  rxsubrule1043_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1036_fail
  rxsubrule1043_pass:
    set_addr $I10, rxsubrule1043_back
    rx1036_cur."!mark_push"(0, rx1036_pos, $I10, $P10)
    rx1036_pos = $P10."pos"()
  alt1041_end:
  # rx pass
    rx1036_cur."!cursor_pass"(rx1036_pos, "circumfix:sym<sigil>")
    if_null rx1036_debug, debug_845
    rx1036_cur."!cursor_debug"("PASS", "circumfix:sym<sigil>", " at pos=", rx1036_pos)
  debug_845:
    .return (rx1036_cur)
  rx1036_restart:
    if_null rx1036_debug, debug_846
    rx1036_cur."!cursor_debug"("NEXT", "circumfix:sym<sigil>")
  debug_846:
  rx1036_fail:
    (rx1036_rep, rx1036_pos, $I10, $P10) = rx1036_cur."!mark_fail"(0)
    lt rx1036_pos, -1, rx1036_done
    eq rx1036_pos, -1, rx1036_fail
    jump $I10
  rx1036_done:
    rx1036_cur."!cursor_fail"()
    if_null rx1036_debug, debug_847
    rx1036_cur."!cursor_debug"("FAIL", "circumfix:sym<sigil>")
  debug_847:
    .return (rx1036_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("249_1285886565.968") :method
.annotate 'line', 0
    $P1038 = self."!PREFIX__!subrule"("sigil", "")
    new $P1039, "ResizablePMCArray"
    push $P1039, $P1038
    .return ($P1039)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("250_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1045_tgt
    .local int rx1045_pos
    .local int rx1045_off
    .local int rx1045_eos
    .local int rx1045_rep
    .local pmc rx1045_cur
    .local pmc rx1045_debug
    (rx1045_cur, rx1045_pos, rx1045_tgt, $I10) = self."!cursor_start"()
    getattribute rx1045_debug, rx1045_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1045_cur
    .local pmc match
    .lex "$/", match
    length rx1045_eos, rx1045_tgt
    gt rx1045_pos, rx1045_eos, rx1045_done
    set rx1045_off, 0
    lt rx1045_pos, 2, rx1045_start
    sub rx1045_off, rx1045_pos, 1
    substr rx1045_tgt, rx1045_tgt, rx1045_off
  rx1045_start:
    eq $I10, 1, rx1045_restart
    if_null rx1045_debug, debug_848
    rx1045_cur."!cursor_debug"("START", "semilist")
  debug_848:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1049_done
    goto rxscan1049_scan
  rxscan1049_loop:
    ($P10) = rx1045_cur."from"()
    inc $P10
    set rx1045_pos, $P10
    ge rx1045_pos, rx1045_eos, rxscan1049_done
  rxscan1049_scan:
    set_addr $I10, rxscan1049_loop
    rx1045_cur."!mark_push"(0, rx1045_pos, $I10)
  rxscan1049_done:
  # rx subrule "ws" subtype=method negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."ws"()
    unless $P10, rx1045_fail
    rx1045_pos = $P10."pos"()
  # rx subrule "statement" subtype=capture negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."statement"()
    unless $P10, rx1045_fail
    rx1045_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx1045_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."ws"()
    unless $P10, rx1045_fail
    rx1045_pos = $P10."pos"()
  # rx pass
    rx1045_cur."!cursor_pass"(rx1045_pos, "semilist")
    if_null rx1045_debug, debug_849
    rx1045_cur."!cursor_debug"("PASS", "semilist", " at pos=", rx1045_pos)
  debug_849:
    .return (rx1045_cur)
  rx1045_restart:
    if_null rx1045_debug, debug_850
    rx1045_cur."!cursor_debug"("NEXT", "semilist")
  debug_850:
  rx1045_fail:
    (rx1045_rep, rx1045_pos, $I10, $P10) = rx1045_cur."!mark_fail"(0)
    lt rx1045_pos, -1, rx1045_done
    eq rx1045_pos, -1, rx1045_fail
    jump $I10
  rx1045_done:
    rx1045_cur."!cursor_fail"()
    if_null rx1045_debug, debug_851
    rx1045_cur."!cursor_debug"("FAIL", "semilist")
  debug_851:
    .return (rx1045_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__semilist"  :subid("251_1285886565.968") :method
.annotate 'line', 0
    $P1047 = self."!PREFIX__!subrule"("ws", "")
    new $P1048, "ResizablePMCArray"
    push $P1048, $P1047
    .return ($P1048)
.end


.namespace ["NQP";"Grammar"]
.sub "infixish"  :subid("252_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1053_tgt
    .local int rx1053_pos
    .local int rx1053_off
    .local int rx1053_eos
    .local int rx1053_rep
    .local pmc rx1053_cur
    .local pmc rx1053_debug
    (rx1053_cur, rx1053_pos, rx1053_tgt, $I10) = self."!cursor_start"()
    getattribute rx1053_debug, rx1053_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1053_cur
    .local pmc match
    .lex "$/", match
    length rx1053_eos, rx1053_tgt
    gt rx1053_pos, rx1053_eos, rx1053_done
    set rx1053_off, 0
    lt rx1053_pos, 2, rx1053_start
    sub rx1053_off, rx1053_pos, 1
    substr rx1053_tgt, rx1053_tgt, rx1053_off
  rx1053_start:
    eq $I10, 1, rx1053_restart
    if_null rx1053_debug, debug_852
    rx1053_cur."!cursor_debug"("START", "infixish")
  debug_852:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1056_done
    goto rxscan1056_scan
  rxscan1056_loop:
    ($P10) = rx1053_cur."from"()
    inc $P10
    set rx1053_pos, $P10
    ge rx1053_pos, rx1053_eos, rxscan1056_done
  rxscan1056_scan:
    set_addr $I10, rxscan1056_loop
    rx1053_cur."!mark_push"(0, rx1053_pos, $I10)
  rxscan1056_done:
  # rx subrule "infixstopper" subtype=zerowidth negate=1
    rx1053_cur."!cursor_pos"(rx1053_pos)
    $P10 = rx1053_cur."infixstopper"()
    if $P10, rx1053_fail
  # rx subrule "infix" subtype=capture negate=
    rx1053_cur."!cursor_pos"(rx1053_pos)
    $P10 = rx1053_cur."infix"()
    unless $P10, rx1053_fail
    rx1053_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx1053_pos = $P10."pos"()
  # rx pass
    rx1053_cur."!cursor_pass"(rx1053_pos, "infixish")
    if_null rx1053_debug, debug_853
    rx1053_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx1053_pos)
  debug_853:
    .return (rx1053_cur)
  rx1053_restart:
    if_null rx1053_debug, debug_854
    rx1053_cur."!cursor_debug"("NEXT", "infixish")
  debug_854:
  rx1053_fail:
    (rx1053_rep, rx1053_pos, $I10, $P10) = rx1053_cur."!mark_fail"(0)
    lt rx1053_pos, -1, rx1053_done
    eq rx1053_pos, -1, rx1053_fail
    jump $I10
  rx1053_done:
    rx1053_cur."!cursor_fail"()
    if_null rx1053_debug, debug_855
    rx1053_cur."!cursor_debug"("FAIL", "infixish")
  debug_855:
    .return (rx1053_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixish"  :subid("253_1285886565.968") :method
.annotate 'line', 0
    new $P1055, "ResizablePMCArray"
    push $P1055, ""
    .return ($P1055)
.end


.namespace ["NQP";"Grammar"]
.sub "infixstopper"  :subid("254_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1058_tgt
    .local int rx1058_pos
    .local int rx1058_off
    .local int rx1058_eos
    .local int rx1058_rep
    .local pmc rx1058_cur
    .local pmc rx1058_debug
    (rx1058_cur, rx1058_pos, rx1058_tgt, $I10) = self."!cursor_start"()
    getattribute rx1058_debug, rx1058_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1058_cur
    .local pmc match
    .lex "$/", match
    length rx1058_eos, rx1058_tgt
    gt rx1058_pos, rx1058_eos, rx1058_done
    set rx1058_off, 0
    lt rx1058_pos, 2, rx1058_start
    sub rx1058_off, rx1058_pos, 1
    substr rx1058_tgt, rx1058_tgt, rx1058_off
  rx1058_start:
    eq $I10, 1, rx1058_restart
    if_null rx1058_debug, debug_856
    rx1058_cur."!cursor_debug"("START", "infixstopper")
  debug_856:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1061_done
    goto rxscan1061_scan
  rxscan1061_loop:
    ($P10) = rx1058_cur."from"()
    inc $P10
    set rx1058_pos, $P10
    ge rx1058_pos, rx1058_eos, rxscan1061_done
  rxscan1061_scan:
    set_addr $I10, rxscan1061_loop
    rx1058_cur."!mark_push"(0, rx1058_pos, $I10)
  rxscan1061_done:
  # rx subrule "lambda" subtype=zerowidth negate=
    rx1058_cur."!cursor_pos"(rx1058_pos)
    $P10 = rx1058_cur."lambda"()
    unless $P10, rx1058_fail
  # rx pass
    rx1058_cur."!cursor_pass"(rx1058_pos, "infixstopper")
    if_null rx1058_debug, debug_857
    rx1058_cur."!cursor_debug"("PASS", "infixstopper", " at pos=", rx1058_pos)
  debug_857:
    .return (rx1058_cur)
  rx1058_restart:
    if_null rx1058_debug, debug_858
    rx1058_cur."!cursor_debug"("NEXT", "infixstopper")
  debug_858:
  rx1058_fail:
    (rx1058_rep, rx1058_pos, $I10, $P10) = rx1058_cur."!mark_fail"(0)
    lt rx1058_pos, -1, rx1058_done
    eq rx1058_pos, -1, rx1058_fail
    jump $I10
  rx1058_done:
    rx1058_cur."!cursor_fail"()
    if_null rx1058_debug, debug_859
    rx1058_cur."!cursor_debug"("FAIL", "infixstopper")
  debug_859:
    .return (rx1058_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixstopper"  :subid("255_1285886565.968") :method
.annotate 'line', 0
    new $P1060, "ResizablePMCArray"
    push $P1060, ""
    .return ($P1060)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("256_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1063_tgt
    .local int rx1063_pos
    .local int rx1063_off
    .local int rx1063_eos
    .local int rx1063_rep
    .local pmc rx1063_cur
    .local pmc rx1063_debug
    (rx1063_cur, rx1063_pos, rx1063_tgt, $I10) = self."!cursor_start"()
    getattribute rx1063_debug, rx1063_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1063_cur
    .local pmc match
    .lex "$/", match
    length rx1063_eos, rx1063_tgt
    gt rx1063_pos, rx1063_eos, rx1063_done
    set rx1063_off, 0
    lt rx1063_pos, 2, rx1063_start
    sub rx1063_off, rx1063_pos, 1
    substr rx1063_tgt, rx1063_tgt, rx1063_off
  rx1063_start:
    eq $I10, 1, rx1063_restart
    if_null rx1063_debug, debug_860
    rx1063_cur."!cursor_debug"("START", "postcircumfix:sym<[ ]>")
  debug_860:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1067_done
    goto rxscan1067_scan
  rxscan1067_loop:
    ($P10) = rx1063_cur."from"()
    inc $P10
    set rx1063_pos, $P10
    ge rx1063_pos, rx1063_eos, rxscan1067_done
  rxscan1067_scan:
    set_addr $I10, rxscan1067_loop
    rx1063_cur."!mark_push"(0, rx1063_pos, $I10)
  rxscan1067_done:
  # rx literal  "["
    add $I11, rx1063_pos, 1
    gt $I11, rx1063_eos, rx1063_fail
    sub $I11, rx1063_pos, rx1063_off
    ord $I11, rx1063_tgt, $I11
    ne $I11, 91, rx1063_fail
    add rx1063_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."ws"()
    unless $P10, rx1063_fail
    rx1063_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."EXPR"()
    unless $P10, rx1063_fail
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1063_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1063_pos, 1
    gt $I11, rx1063_eos, rx1063_fail
    sub $I11, rx1063_pos, rx1063_off
    ord $I11, rx1063_tgt, $I11
    ne $I11, 93, rx1063_fail
    add rx1063_pos, 1
  # rx subrule "O" subtype=capture negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."O"("%methodop")
    unless $P10, rx1063_fail
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1063_pos = $P10."pos"()
  # rx pass
    rx1063_cur."!cursor_pass"(rx1063_pos, "postcircumfix:sym<[ ]>")
    if_null rx1063_debug, debug_861
    rx1063_cur."!cursor_debug"("PASS", "postcircumfix:sym<[ ]>", " at pos=", rx1063_pos)
  debug_861:
    .return (rx1063_cur)
  rx1063_restart:
    if_null rx1063_debug, debug_862
    rx1063_cur."!cursor_debug"("NEXT", "postcircumfix:sym<[ ]>")
  debug_862:
  rx1063_fail:
    (rx1063_rep, rx1063_pos, $I10, $P10) = rx1063_cur."!mark_fail"(0)
    lt rx1063_pos, -1, rx1063_done
    eq rx1063_pos, -1, rx1063_fail
    jump $I10
  rx1063_done:
    rx1063_cur."!cursor_fail"()
    if_null rx1063_debug, debug_863
    rx1063_cur."!cursor_debug"("FAIL", "postcircumfix:sym<[ ]>")
  debug_863:
    .return (rx1063_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("257_1285886565.968") :method
.annotate 'line', 0
    $P1065 = self."!PREFIX__!subrule"("ws", "[")
    new $P1066, "ResizablePMCArray"
    push $P1066, $P1065
    .return ($P1066)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("258_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1069_tgt
    .local int rx1069_pos
    .local int rx1069_off
    .local int rx1069_eos
    .local int rx1069_rep
    .local pmc rx1069_cur
    .local pmc rx1069_debug
    (rx1069_cur, rx1069_pos, rx1069_tgt, $I10) = self."!cursor_start"()
    getattribute rx1069_debug, rx1069_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1069_cur
    .local pmc match
    .lex "$/", match
    length rx1069_eos, rx1069_tgt
    gt rx1069_pos, rx1069_eos, rx1069_done
    set rx1069_off, 0
    lt rx1069_pos, 2, rx1069_start
    sub rx1069_off, rx1069_pos, 1
    substr rx1069_tgt, rx1069_tgt, rx1069_off
  rx1069_start:
    eq $I10, 1, rx1069_restart
    if_null rx1069_debug, debug_864
    rx1069_cur."!cursor_debug"("START", "postcircumfix:sym<{ }>")
  debug_864:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1073_done
    goto rxscan1073_scan
  rxscan1073_loop:
    ($P10) = rx1069_cur."from"()
    inc $P10
    set rx1069_pos, $P10
    ge rx1069_pos, rx1069_eos, rxscan1073_done
  rxscan1073_scan:
    set_addr $I10, rxscan1073_loop
    rx1069_cur."!mark_push"(0, rx1069_pos, $I10)
  rxscan1073_done:
  # rx literal  "{"
    add $I11, rx1069_pos, 1
    gt $I11, rx1069_eos, rx1069_fail
    sub $I11, rx1069_pos, rx1069_off
    ord $I11, rx1069_tgt, $I11
    ne $I11, 123, rx1069_fail
    add rx1069_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1069_cur."!cursor_pos"(rx1069_pos)
    $P10 = rx1069_cur."ws"()
    unless $P10, rx1069_fail
    rx1069_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx1069_cur."!cursor_pos"(rx1069_pos)
    $P10 = rx1069_cur."EXPR"()
    unless $P10, rx1069_fail
    rx1069_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1069_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx1069_pos, 1
    gt $I11, rx1069_eos, rx1069_fail
    sub $I11, rx1069_pos, rx1069_off
    ord $I11, rx1069_tgt, $I11
    ne $I11, 125, rx1069_fail
    add rx1069_pos, 1
  # rx subrule "O" subtype=capture negate=
    rx1069_cur."!cursor_pos"(rx1069_pos)
    $P10 = rx1069_cur."O"("%methodop")
    unless $P10, rx1069_fail
    rx1069_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1069_pos = $P10."pos"()
  # rx pass
    rx1069_cur."!cursor_pass"(rx1069_pos, "postcircumfix:sym<{ }>")
    if_null rx1069_debug, debug_865
    rx1069_cur."!cursor_debug"("PASS", "postcircumfix:sym<{ }>", " at pos=", rx1069_pos)
  debug_865:
    .return (rx1069_cur)
  rx1069_restart:
    if_null rx1069_debug, debug_866
    rx1069_cur."!cursor_debug"("NEXT", "postcircumfix:sym<{ }>")
  debug_866:
  rx1069_fail:
    (rx1069_rep, rx1069_pos, $I10, $P10) = rx1069_cur."!mark_fail"(0)
    lt rx1069_pos, -1, rx1069_done
    eq rx1069_pos, -1, rx1069_fail
    jump $I10
  rx1069_done:
    rx1069_cur."!cursor_fail"()
    if_null rx1069_debug, debug_867
    rx1069_cur."!cursor_debug"("FAIL", "postcircumfix:sym<{ }>")
  debug_867:
    .return (rx1069_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("259_1285886565.968") :method
.annotate 'line', 0
    $P1071 = self."!PREFIX__!subrule"("ws", "{")
    new $P1072, "ResizablePMCArray"
    push $P1072, $P1071
    .return ($P1072)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("260_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1075_tgt
    .local int rx1075_pos
    .local int rx1075_off
    .local int rx1075_eos
    .local int rx1075_rep
    .local pmc rx1075_cur
    .local pmc rx1075_debug
    (rx1075_cur, rx1075_pos, rx1075_tgt, $I10) = self."!cursor_start"()
    getattribute rx1075_debug, rx1075_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1075_cur
    .local pmc match
    .lex "$/", match
    length rx1075_eos, rx1075_tgt
    gt rx1075_pos, rx1075_eos, rx1075_done
    set rx1075_off, 0
    lt rx1075_pos, 2, rx1075_start
    sub rx1075_off, rx1075_pos, 1
    substr rx1075_tgt, rx1075_tgt, rx1075_off
  rx1075_start:
    eq $I10, 1, rx1075_restart
    if_null rx1075_debug, debug_868
    rx1075_cur."!cursor_debug"("START", "postcircumfix:sym<ang>")
  debug_868:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1078_done
    goto rxscan1078_scan
  rxscan1078_loop:
    ($P10) = rx1075_cur."from"()
    inc $P10
    set rx1075_pos, $P10
    ge rx1075_pos, rx1075_eos, rxscan1078_done
  rxscan1078_scan:
    set_addr $I10, rxscan1078_loop
    rx1075_cur."!mark_push"(0, rx1075_pos, $I10)
  rxscan1078_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1075_pos, rx1075_eos, rx1075_fail
    sub $I10, rx1075_pos, rx1075_off
    substr $S10, rx1075_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx1075_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx1075_cur."!cursor_pos"(rx1075_pos)
    $P10 = rx1075_cur."quote_EXPR"(":q")
    unless $P10, rx1075_fail
    rx1075_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx1075_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx1075_cur."!cursor_pos"(rx1075_pos)
    $P10 = rx1075_cur."O"("%methodop")
    unless $P10, rx1075_fail
    rx1075_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1075_pos = $P10."pos"()
  # rx pass
    rx1075_cur."!cursor_pass"(rx1075_pos, "postcircumfix:sym<ang>")
    if_null rx1075_debug, debug_869
    rx1075_cur."!cursor_debug"("PASS", "postcircumfix:sym<ang>", " at pos=", rx1075_pos)
  debug_869:
    .return (rx1075_cur)
  rx1075_restart:
    if_null rx1075_debug, debug_870
    rx1075_cur."!cursor_debug"("NEXT", "postcircumfix:sym<ang>")
  debug_870:
  rx1075_fail:
    (rx1075_rep, rx1075_pos, $I10, $P10) = rx1075_cur."!mark_fail"(0)
    lt rx1075_pos, -1, rx1075_done
    eq rx1075_pos, -1, rx1075_fail
    jump $I10
  rx1075_done:
    rx1075_cur."!cursor_fail"()
    if_null rx1075_debug, debug_871
    rx1075_cur."!cursor_debug"("FAIL", "postcircumfix:sym<ang>")
  debug_871:
    .return (rx1075_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("261_1285886565.968") :method
.annotate 'line', 0
    new $P1077, "ResizablePMCArray"
    push $P1077, "<"
    .return ($P1077)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("262_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1080_tgt
    .local int rx1080_pos
    .local int rx1080_off
    .local int rx1080_eos
    .local int rx1080_rep
    .local pmc rx1080_cur
    .local pmc rx1080_debug
    (rx1080_cur, rx1080_pos, rx1080_tgt, $I10) = self."!cursor_start"()
    getattribute rx1080_debug, rx1080_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1080_cur
    .local pmc match
    .lex "$/", match
    length rx1080_eos, rx1080_tgt
    gt rx1080_pos, rx1080_eos, rx1080_done
    set rx1080_off, 0
    lt rx1080_pos, 2, rx1080_start
    sub rx1080_off, rx1080_pos, 1
    substr rx1080_tgt, rx1080_tgt, rx1080_off
  rx1080_start:
    eq $I10, 1, rx1080_restart
    if_null rx1080_debug, debug_872
    rx1080_cur."!cursor_debug"("START", "postcircumfix:sym<( )>")
  debug_872:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1084_done
    goto rxscan1084_scan
  rxscan1084_loop:
    ($P10) = rx1080_cur."from"()
    inc $P10
    set rx1080_pos, $P10
    ge rx1080_pos, rx1080_eos, rxscan1084_done
  rxscan1084_scan:
    set_addr $I10, rxscan1084_loop
    rx1080_cur."!mark_push"(0, rx1080_pos, $I10)
  rxscan1084_done:
  # rx literal  "("
    add $I11, rx1080_pos, 1
    gt $I11, rx1080_eos, rx1080_fail
    sub $I11, rx1080_pos, rx1080_off
    ord $I11, rx1080_tgt, $I11
    ne $I11, 40, rx1080_fail
    add rx1080_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx1080_cur."!cursor_pos"(rx1080_pos)
    $P10 = rx1080_cur."ws"()
    unless $P10, rx1080_fail
    rx1080_pos = $P10."pos"()
  # rx subrule "arglist" subtype=capture negate=
    rx1080_cur."!cursor_pos"(rx1080_pos)
    $P10 = rx1080_cur."arglist"()
    unless $P10, rx1080_fail
    rx1080_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1080_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1080_pos, 1
    gt $I11, rx1080_eos, rx1080_fail
    sub $I11, rx1080_pos, rx1080_off
    ord $I11, rx1080_tgt, $I11
    ne $I11, 41, rx1080_fail
    add rx1080_pos, 1
  # rx subrule "O" subtype=capture negate=
    rx1080_cur."!cursor_pos"(rx1080_pos)
    $P10 = rx1080_cur."O"("%methodop")
    unless $P10, rx1080_fail
    rx1080_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1080_pos = $P10."pos"()
  # rx pass
    rx1080_cur."!cursor_pass"(rx1080_pos, "postcircumfix:sym<( )>")
    if_null rx1080_debug, debug_873
    rx1080_cur."!cursor_debug"("PASS", "postcircumfix:sym<( )>", " at pos=", rx1080_pos)
  debug_873:
    .return (rx1080_cur)
  rx1080_restart:
    if_null rx1080_debug, debug_874
    rx1080_cur."!cursor_debug"("NEXT", "postcircumfix:sym<( )>")
  debug_874:
  rx1080_fail:
    (rx1080_rep, rx1080_pos, $I10, $P10) = rx1080_cur."!mark_fail"(0)
    lt rx1080_pos, -1, rx1080_done
    eq rx1080_pos, -1, rx1080_fail
    jump $I10
  rx1080_done:
    rx1080_cur."!cursor_fail"()
    if_null rx1080_debug, debug_875
    rx1080_cur."!cursor_debug"("FAIL", "postcircumfix:sym<( )>")
  debug_875:
    .return (rx1080_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("263_1285886565.968") :method
.annotate 'line', 0
    $P1082 = self."!PREFIX__!subrule"("ws", "(")
    new $P1083, "ResizablePMCArray"
    push $P1083, $P1082
    .return ($P1083)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("264_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1086_tgt
    .local int rx1086_pos
    .local int rx1086_off
    .local int rx1086_eos
    .local int rx1086_rep
    .local pmc rx1086_cur
    .local pmc rx1086_debug
    (rx1086_cur, rx1086_pos, rx1086_tgt, $I10) = self."!cursor_start"()
    getattribute rx1086_debug, rx1086_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1086_cur
    .local pmc match
    .lex "$/", match
    length rx1086_eos, rx1086_tgt
    gt rx1086_pos, rx1086_eos, rx1086_done
    set rx1086_off, 0
    lt rx1086_pos, 2, rx1086_start
    sub rx1086_off, rx1086_pos, 1
    substr rx1086_tgt, rx1086_tgt, rx1086_off
  rx1086_start:
    eq $I10, 1, rx1086_restart
    if_null rx1086_debug, debug_876
    rx1086_cur."!cursor_debug"("START", "postfix:sym<.>")
  debug_876:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1090_done
    goto rxscan1090_scan
  rxscan1090_loop:
    ($P10) = rx1086_cur."from"()
    inc $P10
    set rx1086_pos, $P10
    ge rx1086_pos, rx1086_eos, rxscan1090_done
  rxscan1090_scan:
    set_addr $I10, rxscan1090_loop
    rx1086_cur."!mark_push"(0, rx1086_pos, $I10)
  rxscan1090_done:
  # rx subrule "dotty" subtype=capture negate=
    rx1086_cur."!cursor_pos"(rx1086_pos)
    $P10 = rx1086_cur."dotty"()
    unless $P10, rx1086_fail
    rx1086_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx1086_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx1086_cur."!cursor_pos"(rx1086_pos)
    $P10 = rx1086_cur."O"("%methodop")
    unless $P10, rx1086_fail
    rx1086_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1086_pos = $P10."pos"()
  # rx pass
    rx1086_cur."!cursor_pass"(rx1086_pos, "postfix:sym<.>")
    if_null rx1086_debug, debug_877
    rx1086_cur."!cursor_debug"("PASS", "postfix:sym<.>", " at pos=", rx1086_pos)
  debug_877:
    .return (rx1086_cur)
  rx1086_restart:
    if_null rx1086_debug, debug_878
    rx1086_cur."!cursor_debug"("NEXT", "postfix:sym<.>")
  debug_878:
  rx1086_fail:
    (rx1086_rep, rx1086_pos, $I10, $P10) = rx1086_cur."!mark_fail"(0)
    lt rx1086_pos, -1, rx1086_done
    eq rx1086_pos, -1, rx1086_fail
    jump $I10
  rx1086_done:
    rx1086_cur."!cursor_fail"()
    if_null rx1086_debug, debug_879
    rx1086_cur."!cursor_debug"("FAIL", "postfix:sym<.>")
  debug_879:
    .return (rx1086_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("265_1285886565.968") :method
.annotate 'line', 0
    $P1088 = self."!PREFIX__!subrule"("dotty", "")
    new $P1089, "ResizablePMCArray"
    push $P1089, $P1088
    .return ($P1089)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("266_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1092_tgt
    .local int rx1092_pos
    .local int rx1092_off
    .local int rx1092_eos
    .local int rx1092_rep
    .local pmc rx1092_cur
    .local pmc rx1092_debug
    (rx1092_cur, rx1092_pos, rx1092_tgt, $I10) = self."!cursor_start"()
    getattribute rx1092_debug, rx1092_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1092_cur
    .local pmc match
    .lex "$/", match
    length rx1092_eos, rx1092_tgt
    gt rx1092_pos, rx1092_eos, rx1092_done
    set rx1092_off, 0
    lt rx1092_pos, 2, rx1092_start
    sub rx1092_off, rx1092_pos, 1
    substr rx1092_tgt, rx1092_tgt, rx1092_off
  rx1092_start:
    eq $I10, 1, rx1092_restart
    if_null rx1092_debug, debug_880
    rx1092_cur."!cursor_debug"("START", "prefix:sym<++>")
  debug_880:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1096_done
    goto rxscan1096_scan
  rxscan1096_loop:
    ($P10) = rx1092_cur."from"()
    inc $P10
    set rx1092_pos, $P10
    ge rx1092_pos, rx1092_eos, rxscan1096_done
  rxscan1096_scan:
    set_addr $I10, rxscan1096_loop
    rx1092_cur."!mark_push"(0, rx1092_pos, $I10)
  rxscan1096_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1097_fail
    rx1092_cur."!mark_push"(0, rx1092_pos, $I10)
  # rx literal  "++"
    add $I11, rx1092_pos, 2
    gt $I11, rx1092_eos, rx1092_fail
    sub $I11, rx1092_pos, rx1092_off
    substr $S10, rx1092_tgt, $I11, 2
    ne $S10, "++", rx1092_fail
    add rx1092_pos, 2
    set_addr $I10, rxcap_1097_fail
    ($I12, $I11) = rx1092_cur."!mark_peek"($I10)
    rx1092_cur."!cursor_pos"($I11)
    ($P10) = rx1092_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1092_pos, "")
    rx1092_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1097_done
  rxcap_1097_fail:
    goto rx1092_fail
  rxcap_1097_done:
  # rx subrule "O" subtype=capture negate=
    rx1092_cur."!cursor_pos"(rx1092_pos)
    $P10 = rx1092_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx1092_fail
    rx1092_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1092_pos = $P10."pos"()
  # rx pass
    rx1092_cur."!cursor_pass"(rx1092_pos, "prefix:sym<++>")
    if_null rx1092_debug, debug_881
    rx1092_cur."!cursor_debug"("PASS", "prefix:sym<++>", " at pos=", rx1092_pos)
  debug_881:
    .return (rx1092_cur)
  rx1092_restart:
    if_null rx1092_debug, debug_882
    rx1092_cur."!cursor_debug"("NEXT", "prefix:sym<++>")
  debug_882:
  rx1092_fail:
    (rx1092_rep, rx1092_pos, $I10, $P10) = rx1092_cur."!mark_fail"(0)
    lt rx1092_pos, -1, rx1092_done
    eq rx1092_pos, -1, rx1092_fail
    jump $I10
  rx1092_done:
    rx1092_cur."!cursor_fail"()
    if_null rx1092_debug, debug_883
    rx1092_cur."!cursor_debug"("FAIL", "prefix:sym<++>")
  debug_883:
    .return (rx1092_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("267_1285886565.968") :method
.annotate 'line', 0
    $P1094 = self."!PREFIX__!subrule"("O", "++")
    new $P1095, "ResizablePMCArray"
    push $P1095, $P1094
    .return ($P1095)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("268_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1099_tgt
    .local int rx1099_pos
    .local int rx1099_off
    .local int rx1099_eos
    .local int rx1099_rep
    .local pmc rx1099_cur
    .local pmc rx1099_debug
    (rx1099_cur, rx1099_pos, rx1099_tgt, $I10) = self."!cursor_start"()
    getattribute rx1099_debug, rx1099_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1099_cur
    .local pmc match
    .lex "$/", match
    length rx1099_eos, rx1099_tgt
    gt rx1099_pos, rx1099_eos, rx1099_done
    set rx1099_off, 0
    lt rx1099_pos, 2, rx1099_start
    sub rx1099_off, rx1099_pos, 1
    substr rx1099_tgt, rx1099_tgt, rx1099_off
  rx1099_start:
    eq $I10, 1, rx1099_restart
    if_null rx1099_debug, debug_884
    rx1099_cur."!cursor_debug"("START", "prefix:sym<-->")
  debug_884:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1103_done
    goto rxscan1103_scan
  rxscan1103_loop:
    ($P10) = rx1099_cur."from"()
    inc $P10
    set rx1099_pos, $P10
    ge rx1099_pos, rx1099_eos, rxscan1103_done
  rxscan1103_scan:
    set_addr $I10, rxscan1103_loop
    rx1099_cur."!mark_push"(0, rx1099_pos, $I10)
  rxscan1103_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1104_fail
    rx1099_cur."!mark_push"(0, rx1099_pos, $I10)
  # rx literal  "--"
    add $I11, rx1099_pos, 2
    gt $I11, rx1099_eos, rx1099_fail
    sub $I11, rx1099_pos, rx1099_off
    substr $S10, rx1099_tgt, $I11, 2
    ne $S10, "--", rx1099_fail
    add rx1099_pos, 2
    set_addr $I10, rxcap_1104_fail
    ($I12, $I11) = rx1099_cur."!mark_peek"($I10)
    rx1099_cur."!cursor_pos"($I11)
    ($P10) = rx1099_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1099_pos, "")
    rx1099_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1104_done
  rxcap_1104_fail:
    goto rx1099_fail
  rxcap_1104_done:
  # rx subrule "O" subtype=capture negate=
    rx1099_cur."!cursor_pos"(rx1099_pos)
    $P10 = rx1099_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx1099_fail
    rx1099_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1099_pos = $P10."pos"()
  # rx pass
    rx1099_cur."!cursor_pass"(rx1099_pos, "prefix:sym<-->")
    if_null rx1099_debug, debug_885
    rx1099_cur."!cursor_debug"("PASS", "prefix:sym<-->", " at pos=", rx1099_pos)
  debug_885:
    .return (rx1099_cur)
  rx1099_restart:
    if_null rx1099_debug, debug_886
    rx1099_cur."!cursor_debug"("NEXT", "prefix:sym<-->")
  debug_886:
  rx1099_fail:
    (rx1099_rep, rx1099_pos, $I10, $P10) = rx1099_cur."!mark_fail"(0)
    lt rx1099_pos, -1, rx1099_done
    eq rx1099_pos, -1, rx1099_fail
    jump $I10
  rx1099_done:
    rx1099_cur."!cursor_fail"()
    if_null rx1099_debug, debug_887
    rx1099_cur."!cursor_debug"("FAIL", "prefix:sym<-->")
  debug_887:
    .return (rx1099_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("269_1285886565.968") :method
.annotate 'line', 0
    $P1101 = self."!PREFIX__!subrule"("O", "--")
    new $P1102, "ResizablePMCArray"
    push $P1102, $P1101
    .return ($P1102)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("270_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1106_tgt
    .local int rx1106_pos
    .local int rx1106_off
    .local int rx1106_eos
    .local int rx1106_rep
    .local pmc rx1106_cur
    .local pmc rx1106_debug
    (rx1106_cur, rx1106_pos, rx1106_tgt, $I10) = self."!cursor_start"()
    getattribute rx1106_debug, rx1106_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1106_cur
    .local pmc match
    .lex "$/", match
    length rx1106_eos, rx1106_tgt
    gt rx1106_pos, rx1106_eos, rx1106_done
    set rx1106_off, 0
    lt rx1106_pos, 2, rx1106_start
    sub rx1106_off, rx1106_pos, 1
    substr rx1106_tgt, rx1106_tgt, rx1106_off
  rx1106_start:
    eq $I10, 1, rx1106_restart
    if_null rx1106_debug, debug_888
    rx1106_cur."!cursor_debug"("START", "postfix:sym<++>")
  debug_888:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1110_done
    goto rxscan1110_scan
  rxscan1110_loop:
    ($P10) = rx1106_cur."from"()
    inc $P10
    set rx1106_pos, $P10
    ge rx1106_pos, rx1106_eos, rxscan1110_done
  rxscan1110_scan:
    set_addr $I10, rxscan1110_loop
    rx1106_cur."!mark_push"(0, rx1106_pos, $I10)
  rxscan1110_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1111_fail
    rx1106_cur."!mark_push"(0, rx1106_pos, $I10)
  # rx literal  "++"
    add $I11, rx1106_pos, 2
    gt $I11, rx1106_eos, rx1106_fail
    sub $I11, rx1106_pos, rx1106_off
    substr $S10, rx1106_tgt, $I11, 2
    ne $S10, "++", rx1106_fail
    add rx1106_pos, 2
    set_addr $I10, rxcap_1111_fail
    ($I12, $I11) = rx1106_cur."!mark_peek"($I10)
    rx1106_cur."!cursor_pos"($I11)
    ($P10) = rx1106_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1106_pos, "")
    rx1106_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1111_done
  rxcap_1111_fail:
    goto rx1106_fail
  rxcap_1111_done:
  # rx subrule "O" subtype=capture negate=
    rx1106_cur."!cursor_pos"(rx1106_pos)
    $P10 = rx1106_cur."O"("%autoincrement")
    unless $P10, rx1106_fail
    rx1106_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1106_pos = $P10."pos"()
  # rx pass
    rx1106_cur."!cursor_pass"(rx1106_pos, "postfix:sym<++>")
    if_null rx1106_debug, debug_889
    rx1106_cur."!cursor_debug"("PASS", "postfix:sym<++>", " at pos=", rx1106_pos)
  debug_889:
    .return (rx1106_cur)
  rx1106_restart:
    if_null rx1106_debug, debug_890
    rx1106_cur."!cursor_debug"("NEXT", "postfix:sym<++>")
  debug_890:
  rx1106_fail:
    (rx1106_rep, rx1106_pos, $I10, $P10) = rx1106_cur."!mark_fail"(0)
    lt rx1106_pos, -1, rx1106_done
    eq rx1106_pos, -1, rx1106_fail
    jump $I10
  rx1106_done:
    rx1106_cur."!cursor_fail"()
    if_null rx1106_debug, debug_891
    rx1106_cur."!cursor_debug"("FAIL", "postfix:sym<++>")
  debug_891:
    .return (rx1106_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("271_1285886565.968") :method
.annotate 'line', 0
    $P1108 = self."!PREFIX__!subrule"("O", "++")
    new $P1109, "ResizablePMCArray"
    push $P1109, $P1108
    .return ($P1109)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("272_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1113_tgt
    .local int rx1113_pos
    .local int rx1113_off
    .local int rx1113_eos
    .local int rx1113_rep
    .local pmc rx1113_cur
    .local pmc rx1113_debug
    (rx1113_cur, rx1113_pos, rx1113_tgt, $I10) = self."!cursor_start"()
    getattribute rx1113_debug, rx1113_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1113_cur
    .local pmc match
    .lex "$/", match
    length rx1113_eos, rx1113_tgt
    gt rx1113_pos, rx1113_eos, rx1113_done
    set rx1113_off, 0
    lt rx1113_pos, 2, rx1113_start
    sub rx1113_off, rx1113_pos, 1
    substr rx1113_tgt, rx1113_tgt, rx1113_off
  rx1113_start:
    eq $I10, 1, rx1113_restart
    if_null rx1113_debug, debug_892
    rx1113_cur."!cursor_debug"("START", "postfix:sym<-->")
  debug_892:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1117_done
    goto rxscan1117_scan
  rxscan1117_loop:
    ($P10) = rx1113_cur."from"()
    inc $P10
    set rx1113_pos, $P10
    ge rx1113_pos, rx1113_eos, rxscan1117_done
  rxscan1117_scan:
    set_addr $I10, rxscan1117_loop
    rx1113_cur."!mark_push"(0, rx1113_pos, $I10)
  rxscan1117_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1118_fail
    rx1113_cur."!mark_push"(0, rx1113_pos, $I10)
  # rx literal  "--"
    add $I11, rx1113_pos, 2
    gt $I11, rx1113_eos, rx1113_fail
    sub $I11, rx1113_pos, rx1113_off
    substr $S10, rx1113_tgt, $I11, 2
    ne $S10, "--", rx1113_fail
    add rx1113_pos, 2
    set_addr $I10, rxcap_1118_fail
    ($I12, $I11) = rx1113_cur."!mark_peek"($I10)
    rx1113_cur."!cursor_pos"($I11)
    ($P10) = rx1113_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1113_pos, "")
    rx1113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1118_done
  rxcap_1118_fail:
    goto rx1113_fail
  rxcap_1118_done:
  # rx subrule "O" subtype=capture negate=
    rx1113_cur."!cursor_pos"(rx1113_pos)
    $P10 = rx1113_cur."O"("%autoincrement")
    unless $P10, rx1113_fail
    rx1113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1113_pos = $P10."pos"()
  # rx pass
    rx1113_cur."!cursor_pass"(rx1113_pos, "postfix:sym<-->")
    if_null rx1113_debug, debug_893
    rx1113_cur."!cursor_debug"("PASS", "postfix:sym<-->", " at pos=", rx1113_pos)
  debug_893:
    .return (rx1113_cur)
  rx1113_restart:
    if_null rx1113_debug, debug_894
    rx1113_cur."!cursor_debug"("NEXT", "postfix:sym<-->")
  debug_894:
  rx1113_fail:
    (rx1113_rep, rx1113_pos, $I10, $P10) = rx1113_cur."!mark_fail"(0)
    lt rx1113_pos, -1, rx1113_done
    eq rx1113_pos, -1, rx1113_fail
    jump $I10
  rx1113_done:
    rx1113_cur."!cursor_fail"()
    if_null rx1113_debug, debug_895
    rx1113_cur."!cursor_debug"("FAIL", "postfix:sym<-->")
  debug_895:
    .return (rx1113_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("273_1285886565.968") :method
.annotate 'line', 0
    $P1115 = self."!PREFIX__!subrule"("O", "--")
    new $P1116, "ResizablePMCArray"
    push $P1116, $P1115
    .return ($P1116)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("274_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1120_tgt
    .local int rx1120_pos
    .local int rx1120_off
    .local int rx1120_eos
    .local int rx1120_rep
    .local pmc rx1120_cur
    .local pmc rx1120_debug
    (rx1120_cur, rx1120_pos, rx1120_tgt, $I10) = self."!cursor_start"()
    getattribute rx1120_debug, rx1120_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1120_cur
    .local pmc match
    .lex "$/", match
    length rx1120_eos, rx1120_tgt
    gt rx1120_pos, rx1120_eos, rx1120_done
    set rx1120_off, 0
    lt rx1120_pos, 2, rx1120_start
    sub rx1120_off, rx1120_pos, 1
    substr rx1120_tgt, rx1120_tgt, rx1120_off
  rx1120_start:
    eq $I10, 1, rx1120_restart
    if_null rx1120_debug, debug_896
    rx1120_cur."!cursor_debug"("START", "infix:sym<**>")
  debug_896:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1124_done
    goto rxscan1124_scan
  rxscan1124_loop:
    ($P10) = rx1120_cur."from"()
    inc $P10
    set rx1120_pos, $P10
    ge rx1120_pos, rx1120_eos, rxscan1124_done
  rxscan1124_scan:
    set_addr $I10, rxscan1124_loop
    rx1120_cur."!mark_push"(0, rx1120_pos, $I10)
  rxscan1124_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1125_fail
    rx1120_cur."!mark_push"(0, rx1120_pos, $I10)
  # rx literal  "**"
    add $I11, rx1120_pos, 2
    gt $I11, rx1120_eos, rx1120_fail
    sub $I11, rx1120_pos, rx1120_off
    substr $S10, rx1120_tgt, $I11, 2
    ne $S10, "**", rx1120_fail
    add rx1120_pos, 2
    set_addr $I10, rxcap_1125_fail
    ($I12, $I11) = rx1120_cur."!mark_peek"($I10)
    rx1120_cur."!cursor_pos"($I11)
    ($P10) = rx1120_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1120_pos, "")
    rx1120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1125_done
  rxcap_1125_fail:
    goto rx1120_fail
  rxcap_1125_done:
  # rx subrule "O" subtype=capture negate=
    rx1120_cur."!cursor_pos"(rx1120_pos)
    $P10 = rx1120_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx1120_fail
    rx1120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1120_pos = $P10."pos"()
  # rx pass
    rx1120_cur."!cursor_pass"(rx1120_pos, "infix:sym<**>")
    if_null rx1120_debug, debug_897
    rx1120_cur."!cursor_debug"("PASS", "infix:sym<**>", " at pos=", rx1120_pos)
  debug_897:
    .return (rx1120_cur)
  rx1120_restart:
    if_null rx1120_debug, debug_898
    rx1120_cur."!cursor_debug"("NEXT", "infix:sym<**>")
  debug_898:
  rx1120_fail:
    (rx1120_rep, rx1120_pos, $I10, $P10) = rx1120_cur."!mark_fail"(0)
    lt rx1120_pos, -1, rx1120_done
    eq rx1120_pos, -1, rx1120_fail
    jump $I10
  rx1120_done:
    rx1120_cur."!cursor_fail"()
    if_null rx1120_debug, debug_899
    rx1120_cur."!cursor_debug"("FAIL", "infix:sym<**>")
  debug_899:
    .return (rx1120_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("275_1285886565.968") :method
.annotate 'line', 0
    $P1122 = self."!PREFIX__!subrule"("O", "**")
    new $P1123, "ResizablePMCArray"
    push $P1123, $P1122
    .return ($P1123)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("276_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1127_tgt
    .local int rx1127_pos
    .local int rx1127_off
    .local int rx1127_eos
    .local int rx1127_rep
    .local pmc rx1127_cur
    .local pmc rx1127_debug
    (rx1127_cur, rx1127_pos, rx1127_tgt, $I10) = self."!cursor_start"()
    getattribute rx1127_debug, rx1127_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1127_cur
    .local pmc match
    .lex "$/", match
    length rx1127_eos, rx1127_tgt
    gt rx1127_pos, rx1127_eos, rx1127_done
    set rx1127_off, 0
    lt rx1127_pos, 2, rx1127_start
    sub rx1127_off, rx1127_pos, 1
    substr rx1127_tgt, rx1127_tgt, rx1127_off
  rx1127_start:
    eq $I10, 1, rx1127_restart
    if_null rx1127_debug, debug_900
    rx1127_cur."!cursor_debug"("START", "prefix:sym<+>")
  debug_900:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1131_done
    goto rxscan1131_scan
  rxscan1131_loop:
    ($P10) = rx1127_cur."from"()
    inc $P10
    set rx1127_pos, $P10
    ge rx1127_pos, rx1127_eos, rxscan1131_done
  rxscan1131_scan:
    set_addr $I10, rxscan1131_loop
    rx1127_cur."!mark_push"(0, rx1127_pos, $I10)
  rxscan1131_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1132_fail
    rx1127_cur."!mark_push"(0, rx1127_pos, $I10)
  # rx literal  "+"
    add $I11, rx1127_pos, 1
    gt $I11, rx1127_eos, rx1127_fail
    sub $I11, rx1127_pos, rx1127_off
    ord $I11, rx1127_tgt, $I11
    ne $I11, 43, rx1127_fail
    add rx1127_pos, 1
    set_addr $I10, rxcap_1132_fail
    ($I12, $I11) = rx1127_cur."!mark_peek"($I10)
    rx1127_cur."!cursor_pos"($I11)
    ($P10) = rx1127_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1127_pos, "")
    rx1127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1132_done
  rxcap_1132_fail:
    goto rx1127_fail
  rxcap_1132_done:
  # rx subrule "O" subtype=capture negate=
    rx1127_cur."!cursor_pos"(rx1127_pos)
    $P10 = rx1127_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx1127_fail
    rx1127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1127_pos = $P10."pos"()
  # rx pass
    rx1127_cur."!cursor_pass"(rx1127_pos, "prefix:sym<+>")
    if_null rx1127_debug, debug_901
    rx1127_cur."!cursor_debug"("PASS", "prefix:sym<+>", " at pos=", rx1127_pos)
  debug_901:
    .return (rx1127_cur)
  rx1127_restart:
    if_null rx1127_debug, debug_902
    rx1127_cur."!cursor_debug"("NEXT", "prefix:sym<+>")
  debug_902:
  rx1127_fail:
    (rx1127_rep, rx1127_pos, $I10, $P10) = rx1127_cur."!mark_fail"(0)
    lt rx1127_pos, -1, rx1127_done
    eq rx1127_pos, -1, rx1127_fail
    jump $I10
  rx1127_done:
    rx1127_cur."!cursor_fail"()
    if_null rx1127_debug, debug_903
    rx1127_cur."!cursor_debug"("FAIL", "prefix:sym<+>")
  debug_903:
    .return (rx1127_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("277_1285886565.968") :method
.annotate 'line', 0
    $P1129 = self."!PREFIX__!subrule"("O", "+")
    new $P1130, "ResizablePMCArray"
    push $P1130, $P1129
    .return ($P1130)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("278_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1134_tgt
    .local int rx1134_pos
    .local int rx1134_off
    .local int rx1134_eos
    .local int rx1134_rep
    .local pmc rx1134_cur
    .local pmc rx1134_debug
    (rx1134_cur, rx1134_pos, rx1134_tgt, $I10) = self."!cursor_start"()
    getattribute rx1134_debug, rx1134_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1134_cur
    .local pmc match
    .lex "$/", match
    length rx1134_eos, rx1134_tgt
    gt rx1134_pos, rx1134_eos, rx1134_done
    set rx1134_off, 0
    lt rx1134_pos, 2, rx1134_start
    sub rx1134_off, rx1134_pos, 1
    substr rx1134_tgt, rx1134_tgt, rx1134_off
  rx1134_start:
    eq $I10, 1, rx1134_restart
    if_null rx1134_debug, debug_904
    rx1134_cur."!cursor_debug"("START", "prefix:sym<~>")
  debug_904:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1138_done
    goto rxscan1138_scan
  rxscan1138_loop:
    ($P10) = rx1134_cur."from"()
    inc $P10
    set rx1134_pos, $P10
    ge rx1134_pos, rx1134_eos, rxscan1138_done
  rxscan1138_scan:
    set_addr $I10, rxscan1138_loop
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  rxscan1138_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1139_fail
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  # rx literal  "~"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 126, rx1134_fail
    add rx1134_pos, 1
    set_addr $I10, rxcap_1139_fail
    ($I12, $I11) = rx1134_cur."!mark_peek"($I10)
    rx1134_cur."!cursor_pos"($I11)
    ($P10) = rx1134_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1134_pos, "")
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1139_done
  rxcap_1139_fail:
    goto rx1134_fail
  rxcap_1139_done:
  # rx subrule "O" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1134_pos = $P10."pos"()
  # rx pass
    rx1134_cur."!cursor_pass"(rx1134_pos, "prefix:sym<~>")
    if_null rx1134_debug, debug_905
    rx1134_cur."!cursor_debug"("PASS", "prefix:sym<~>", " at pos=", rx1134_pos)
  debug_905:
    .return (rx1134_cur)
  rx1134_restart:
    if_null rx1134_debug, debug_906
    rx1134_cur."!cursor_debug"("NEXT", "prefix:sym<~>")
  debug_906:
  rx1134_fail:
    (rx1134_rep, rx1134_pos, $I10, $P10) = rx1134_cur."!mark_fail"(0)
    lt rx1134_pos, -1, rx1134_done
    eq rx1134_pos, -1, rx1134_fail
    jump $I10
  rx1134_done:
    rx1134_cur."!cursor_fail"()
    if_null rx1134_debug, debug_907
    rx1134_cur."!cursor_debug"("FAIL", "prefix:sym<~>")
  debug_907:
    .return (rx1134_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("279_1285886565.968") :method
.annotate 'line', 0
    $P1136 = self."!PREFIX__!subrule"("O", "~")
    new $P1137, "ResizablePMCArray"
    push $P1137, $P1136
    .return ($P1137)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("280_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1141_tgt
    .local int rx1141_pos
    .local int rx1141_off
    .local int rx1141_eos
    .local int rx1141_rep
    .local pmc rx1141_cur
    .local pmc rx1141_debug
    (rx1141_cur, rx1141_pos, rx1141_tgt, $I10) = self."!cursor_start"()
    getattribute rx1141_debug, rx1141_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1141_cur
    .local pmc match
    .lex "$/", match
    length rx1141_eos, rx1141_tgt
    gt rx1141_pos, rx1141_eos, rx1141_done
    set rx1141_off, 0
    lt rx1141_pos, 2, rx1141_start
    sub rx1141_off, rx1141_pos, 1
    substr rx1141_tgt, rx1141_tgt, rx1141_off
  rx1141_start:
    eq $I10, 1, rx1141_restart
    if_null rx1141_debug, debug_908
    rx1141_cur."!cursor_debug"("START", "prefix:sym<->")
  debug_908:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1144_done
    goto rxscan1144_scan
  rxscan1144_loop:
    ($P10) = rx1141_cur."from"()
    inc $P10
    set rx1141_pos, $P10
    ge rx1141_pos, rx1141_eos, rxscan1144_done
  rxscan1144_scan:
    set_addr $I10, rxscan1144_loop
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
  rxscan1144_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1145_fail
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
  # rx literal  "-"
    add $I11, rx1141_pos, 1
    gt $I11, rx1141_eos, rx1141_fail
    sub $I11, rx1141_pos, rx1141_off
    ord $I11, rx1141_tgt, $I11
    ne $I11, 45, rx1141_fail
    add rx1141_pos, 1
    set_addr $I10, rxcap_1145_fail
    ($I12, $I11) = rx1141_cur."!mark_peek"($I10)
    rx1141_cur."!cursor_pos"($I11)
    ($P10) = rx1141_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1141_pos, "")
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1145_done
  rxcap_1145_fail:
    goto rx1141_fail
  rxcap_1145_done:
  # rx enumcharlist negate=1 zerowidth
    ge rx1141_pos, rx1141_eos, rx1141_fail
    sub $I10, rx1141_pos, rx1141_off
    substr $S10, rx1141_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx1141_fail
  # rx subrule "number" subtype=zerowidth negate=1
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."number"()
    if $P10, rx1141_fail
  # rx subrule "O" subtype=capture negate=
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx1141_fail
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1141_pos = $P10."pos"()
  # rx pass
    rx1141_cur."!cursor_pass"(rx1141_pos, "prefix:sym<->")
    if_null rx1141_debug, debug_909
    rx1141_cur."!cursor_debug"("PASS", "prefix:sym<->", " at pos=", rx1141_pos)
  debug_909:
    .return (rx1141_cur)
  rx1141_restart:
    if_null rx1141_debug, debug_910
    rx1141_cur."!cursor_debug"("NEXT", "prefix:sym<->")
  debug_910:
  rx1141_fail:
    (rx1141_rep, rx1141_pos, $I10, $P10) = rx1141_cur."!mark_fail"(0)
    lt rx1141_pos, -1, rx1141_done
    eq rx1141_pos, -1, rx1141_fail
    jump $I10
  rx1141_done:
    rx1141_cur."!cursor_fail"()
    if_null rx1141_debug, debug_911
    rx1141_cur."!cursor_debug"("FAIL", "prefix:sym<->")
  debug_911:
    .return (rx1141_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("281_1285886565.968") :method
.annotate 'line', 0
    new $P1143, "ResizablePMCArray"
    push $P1143, "-"
    .return ($P1143)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("282_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1147_tgt
    .local int rx1147_pos
    .local int rx1147_off
    .local int rx1147_eos
    .local int rx1147_rep
    .local pmc rx1147_cur
    .local pmc rx1147_debug
    (rx1147_cur, rx1147_pos, rx1147_tgt, $I10) = self."!cursor_start"()
    getattribute rx1147_debug, rx1147_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1147_cur
    .local pmc match
    .lex "$/", match
    length rx1147_eos, rx1147_tgt
    gt rx1147_pos, rx1147_eos, rx1147_done
    set rx1147_off, 0
    lt rx1147_pos, 2, rx1147_start
    sub rx1147_off, rx1147_pos, 1
    substr rx1147_tgt, rx1147_tgt, rx1147_off
  rx1147_start:
    eq $I10, 1, rx1147_restart
    if_null rx1147_debug, debug_912
    rx1147_cur."!cursor_debug"("START", "prefix:sym<?>")
  debug_912:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1151_done
    goto rxscan1151_scan
  rxscan1151_loop:
    ($P10) = rx1147_cur."from"()
    inc $P10
    set rx1147_pos, $P10
    ge rx1147_pos, rx1147_eos, rxscan1151_done
  rxscan1151_scan:
    set_addr $I10, rxscan1151_loop
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxscan1151_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1152_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  # rx literal  "?"
    add $I11, rx1147_pos, 1
    gt $I11, rx1147_eos, rx1147_fail
    sub $I11, rx1147_pos, rx1147_off
    ord $I11, rx1147_tgt, $I11
    ne $I11, 63, rx1147_fail
    add rx1147_pos, 1
    set_addr $I10, rxcap_1152_fail
    ($I12, $I11) = rx1147_cur."!mark_peek"($I10)
    rx1147_cur."!cursor_pos"($I11)
    ($P10) = rx1147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1147_pos, "")
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1152_done
  rxcap_1152_fail:
    goto rx1147_fail
  rxcap_1152_done:
  # rx subrule "O" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx1147_fail
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1147_pos = $P10."pos"()
  # rx pass
    rx1147_cur."!cursor_pass"(rx1147_pos, "prefix:sym<?>")
    if_null rx1147_debug, debug_913
    rx1147_cur."!cursor_debug"("PASS", "prefix:sym<?>", " at pos=", rx1147_pos)
  debug_913:
    .return (rx1147_cur)
  rx1147_restart:
    if_null rx1147_debug, debug_914
    rx1147_cur."!cursor_debug"("NEXT", "prefix:sym<?>")
  debug_914:
  rx1147_fail:
    (rx1147_rep, rx1147_pos, $I10, $P10) = rx1147_cur."!mark_fail"(0)
    lt rx1147_pos, -1, rx1147_done
    eq rx1147_pos, -1, rx1147_fail
    jump $I10
  rx1147_done:
    rx1147_cur."!cursor_fail"()
    if_null rx1147_debug, debug_915
    rx1147_cur."!cursor_debug"("FAIL", "prefix:sym<?>")
  debug_915:
    .return (rx1147_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("283_1285886565.968") :method
.annotate 'line', 0
    $P1149 = self."!PREFIX__!subrule"("O", "?")
    new $P1150, "ResizablePMCArray"
    push $P1150, $P1149
    .return ($P1150)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("284_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1154_tgt
    .local int rx1154_pos
    .local int rx1154_off
    .local int rx1154_eos
    .local int rx1154_rep
    .local pmc rx1154_cur
    .local pmc rx1154_debug
    (rx1154_cur, rx1154_pos, rx1154_tgt, $I10) = self."!cursor_start"()
    getattribute rx1154_debug, rx1154_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1154_cur
    .local pmc match
    .lex "$/", match
    length rx1154_eos, rx1154_tgt
    gt rx1154_pos, rx1154_eos, rx1154_done
    set rx1154_off, 0
    lt rx1154_pos, 2, rx1154_start
    sub rx1154_off, rx1154_pos, 1
    substr rx1154_tgt, rx1154_tgt, rx1154_off
  rx1154_start:
    eq $I10, 1, rx1154_restart
    if_null rx1154_debug, debug_916
    rx1154_cur."!cursor_debug"("START", "prefix:sym<!>")
  debug_916:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1158_done
    goto rxscan1158_scan
  rxscan1158_loop:
    ($P10) = rx1154_cur."from"()
    inc $P10
    set rx1154_pos, $P10
    ge rx1154_pos, rx1154_eos, rxscan1158_done
  rxscan1158_scan:
    set_addr $I10, rxscan1158_loop
    rx1154_cur."!mark_push"(0, rx1154_pos, $I10)
  rxscan1158_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1159_fail
    rx1154_cur."!mark_push"(0, rx1154_pos, $I10)
  # rx literal  "!"
    add $I11, rx1154_pos, 1
    gt $I11, rx1154_eos, rx1154_fail
    sub $I11, rx1154_pos, rx1154_off
    ord $I11, rx1154_tgt, $I11
    ne $I11, 33, rx1154_fail
    add rx1154_pos, 1
    set_addr $I10, rxcap_1159_fail
    ($I12, $I11) = rx1154_cur."!mark_peek"($I10)
    rx1154_cur."!cursor_pos"($I11)
    ($P10) = rx1154_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1154_pos, "")
    rx1154_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1159_done
  rxcap_1159_fail:
    goto rx1154_fail
  rxcap_1159_done:
  # rx subrule "O" subtype=capture negate=
    rx1154_cur."!cursor_pos"(rx1154_pos)
    $P10 = rx1154_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx1154_fail
    rx1154_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1154_pos = $P10."pos"()
  # rx pass
    rx1154_cur."!cursor_pass"(rx1154_pos, "prefix:sym<!>")
    if_null rx1154_debug, debug_917
    rx1154_cur."!cursor_debug"("PASS", "prefix:sym<!>", " at pos=", rx1154_pos)
  debug_917:
    .return (rx1154_cur)
  rx1154_restart:
    if_null rx1154_debug, debug_918
    rx1154_cur."!cursor_debug"("NEXT", "prefix:sym<!>")
  debug_918:
  rx1154_fail:
    (rx1154_rep, rx1154_pos, $I10, $P10) = rx1154_cur."!mark_fail"(0)
    lt rx1154_pos, -1, rx1154_done
    eq rx1154_pos, -1, rx1154_fail
    jump $I10
  rx1154_done:
    rx1154_cur."!cursor_fail"()
    if_null rx1154_debug, debug_919
    rx1154_cur."!cursor_debug"("FAIL", "prefix:sym<!>")
  debug_919:
    .return (rx1154_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("285_1285886565.968") :method
.annotate 'line', 0
    $P1156 = self."!PREFIX__!subrule"("O", "!")
    new $P1157, "ResizablePMCArray"
    push $P1157, $P1156
    .return ($P1157)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<|>"  :subid("286_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1161_tgt
    .local int rx1161_pos
    .local int rx1161_off
    .local int rx1161_eos
    .local int rx1161_rep
    .local pmc rx1161_cur
    .local pmc rx1161_debug
    (rx1161_cur, rx1161_pos, rx1161_tgt, $I10) = self."!cursor_start"()
    getattribute rx1161_debug, rx1161_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1161_cur
    .local pmc match
    .lex "$/", match
    length rx1161_eos, rx1161_tgt
    gt rx1161_pos, rx1161_eos, rx1161_done
    set rx1161_off, 0
    lt rx1161_pos, 2, rx1161_start
    sub rx1161_off, rx1161_pos, 1
    substr rx1161_tgt, rx1161_tgt, rx1161_off
  rx1161_start:
    eq $I10, 1, rx1161_restart
    if_null rx1161_debug, debug_920
    rx1161_cur."!cursor_debug"("START", "prefix:sym<|>")
  debug_920:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1165_done
    goto rxscan1165_scan
  rxscan1165_loop:
    ($P10) = rx1161_cur."from"()
    inc $P10
    set rx1161_pos, $P10
    ge rx1161_pos, rx1161_eos, rxscan1165_done
  rxscan1165_scan:
    set_addr $I10, rxscan1165_loop
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  rxscan1165_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1166_fail
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  # rx literal  "|"
    add $I11, rx1161_pos, 1
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    ord $I11, rx1161_tgt, $I11
    ne $I11, 124, rx1161_fail
    add rx1161_pos, 1
    set_addr $I10, rxcap_1166_fail
    ($I12, $I11) = rx1161_cur."!mark_peek"($I10)
    rx1161_cur."!cursor_pos"($I11)
    ($P10) = rx1161_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1161_pos, "")
    rx1161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1166_done
  rxcap_1166_fail:
    goto rx1161_fail
  rxcap_1166_done:
  # rx subrule "O" subtype=capture negate=
    rx1161_cur."!cursor_pos"(rx1161_pos)
    $P10 = rx1161_cur."O"("%symbolic_unary")
    unless $P10, rx1161_fail
    rx1161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1161_pos = $P10."pos"()
  # rx pass
    rx1161_cur."!cursor_pass"(rx1161_pos, "prefix:sym<|>")
    if_null rx1161_debug, debug_921
    rx1161_cur."!cursor_debug"("PASS", "prefix:sym<|>", " at pos=", rx1161_pos)
  debug_921:
    .return (rx1161_cur)
  rx1161_restart:
    if_null rx1161_debug, debug_922
    rx1161_cur."!cursor_debug"("NEXT", "prefix:sym<|>")
  debug_922:
  rx1161_fail:
    (rx1161_rep, rx1161_pos, $I10, $P10) = rx1161_cur."!mark_fail"(0)
    lt rx1161_pos, -1, rx1161_done
    eq rx1161_pos, -1, rx1161_fail
    jump $I10
  rx1161_done:
    rx1161_cur."!cursor_fail"()
    if_null rx1161_debug, debug_923
    rx1161_cur."!cursor_debug"("FAIL", "prefix:sym<|>")
  debug_923:
    .return (rx1161_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<|>"  :subid("287_1285886565.968") :method
.annotate 'line', 0
    $P1163 = self."!PREFIX__!subrule"("O", "|")
    new $P1164, "ResizablePMCArray"
    push $P1164, $P1163
    .return ($P1164)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("288_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1168_tgt
    .local int rx1168_pos
    .local int rx1168_off
    .local int rx1168_eos
    .local int rx1168_rep
    .local pmc rx1168_cur
    .local pmc rx1168_debug
    (rx1168_cur, rx1168_pos, rx1168_tgt, $I10) = self."!cursor_start"()
    getattribute rx1168_debug, rx1168_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1168_cur
    .local pmc match
    .lex "$/", match
    length rx1168_eos, rx1168_tgt
    gt rx1168_pos, rx1168_eos, rx1168_done
    set rx1168_off, 0
    lt rx1168_pos, 2, rx1168_start
    sub rx1168_off, rx1168_pos, 1
    substr rx1168_tgt, rx1168_tgt, rx1168_off
  rx1168_start:
    eq $I10, 1, rx1168_restart
    if_null rx1168_debug, debug_924
    rx1168_cur."!cursor_debug"("START", "infix:sym<*>")
  debug_924:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1172_done
    goto rxscan1172_scan
  rxscan1172_loop:
    ($P10) = rx1168_cur."from"()
    inc $P10
    set rx1168_pos, $P10
    ge rx1168_pos, rx1168_eos, rxscan1172_done
  rxscan1172_scan:
    set_addr $I10, rxscan1172_loop
    rx1168_cur."!mark_push"(0, rx1168_pos, $I10)
  rxscan1172_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1173_fail
    rx1168_cur."!mark_push"(0, rx1168_pos, $I10)
  # rx literal  "*"
    add $I11, rx1168_pos, 1
    gt $I11, rx1168_eos, rx1168_fail
    sub $I11, rx1168_pos, rx1168_off
    ord $I11, rx1168_tgt, $I11
    ne $I11, 42, rx1168_fail
    add rx1168_pos, 1
    set_addr $I10, rxcap_1173_fail
    ($I12, $I11) = rx1168_cur."!mark_peek"($I10)
    rx1168_cur."!cursor_pos"($I11)
    ($P10) = rx1168_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1168_pos, "")
    rx1168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1173_done
  rxcap_1173_fail:
    goto rx1168_fail
  rxcap_1173_done:
  # rx subrule "O" subtype=capture negate=
    rx1168_cur."!cursor_pos"(rx1168_pos)
    $P10 = rx1168_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx1168_fail
    rx1168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1168_pos = $P10."pos"()
  # rx pass
    rx1168_cur."!cursor_pass"(rx1168_pos, "infix:sym<*>")
    if_null rx1168_debug, debug_925
    rx1168_cur."!cursor_debug"("PASS", "infix:sym<*>", " at pos=", rx1168_pos)
  debug_925:
    .return (rx1168_cur)
  rx1168_restart:
    if_null rx1168_debug, debug_926
    rx1168_cur."!cursor_debug"("NEXT", "infix:sym<*>")
  debug_926:
  rx1168_fail:
    (rx1168_rep, rx1168_pos, $I10, $P10) = rx1168_cur."!mark_fail"(0)
    lt rx1168_pos, -1, rx1168_done
    eq rx1168_pos, -1, rx1168_fail
    jump $I10
  rx1168_done:
    rx1168_cur."!cursor_fail"()
    if_null rx1168_debug, debug_927
    rx1168_cur."!cursor_debug"("FAIL", "infix:sym<*>")
  debug_927:
    .return (rx1168_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("289_1285886565.968") :method
.annotate 'line', 0
    $P1170 = self."!PREFIX__!subrule"("O", "*")
    new $P1171, "ResizablePMCArray"
    push $P1171, $P1170
    .return ($P1171)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("290_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1175_tgt
    .local int rx1175_pos
    .local int rx1175_off
    .local int rx1175_eos
    .local int rx1175_rep
    .local pmc rx1175_cur
    .local pmc rx1175_debug
    (rx1175_cur, rx1175_pos, rx1175_tgt, $I10) = self."!cursor_start"()
    getattribute rx1175_debug, rx1175_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1175_cur
    .local pmc match
    .lex "$/", match
    length rx1175_eos, rx1175_tgt
    gt rx1175_pos, rx1175_eos, rx1175_done
    set rx1175_off, 0
    lt rx1175_pos, 2, rx1175_start
    sub rx1175_off, rx1175_pos, 1
    substr rx1175_tgt, rx1175_tgt, rx1175_off
  rx1175_start:
    eq $I10, 1, rx1175_restart
    if_null rx1175_debug, debug_928
    rx1175_cur."!cursor_debug"("START", "infix:sym</>")
  debug_928:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1179_done
    goto rxscan1179_scan
  rxscan1179_loop:
    ($P10) = rx1175_cur."from"()
    inc $P10
    set rx1175_pos, $P10
    ge rx1175_pos, rx1175_eos, rxscan1179_done
  rxscan1179_scan:
    set_addr $I10, rxscan1179_loop
    rx1175_cur."!mark_push"(0, rx1175_pos, $I10)
  rxscan1179_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1180_fail
    rx1175_cur."!mark_push"(0, rx1175_pos, $I10)
  # rx literal  "/"
    add $I11, rx1175_pos, 1
    gt $I11, rx1175_eos, rx1175_fail
    sub $I11, rx1175_pos, rx1175_off
    ord $I11, rx1175_tgt, $I11
    ne $I11, 47, rx1175_fail
    add rx1175_pos, 1
    set_addr $I10, rxcap_1180_fail
    ($I12, $I11) = rx1175_cur."!mark_peek"($I10)
    rx1175_cur."!cursor_pos"($I11)
    ($P10) = rx1175_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1175_pos, "")
    rx1175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1180_done
  rxcap_1180_fail:
    goto rx1175_fail
  rxcap_1180_done:
  # rx subrule "O" subtype=capture negate=
    rx1175_cur."!cursor_pos"(rx1175_pos)
    $P10 = rx1175_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx1175_fail
    rx1175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1175_pos = $P10."pos"()
  # rx pass
    rx1175_cur."!cursor_pass"(rx1175_pos, "infix:sym</>")
    if_null rx1175_debug, debug_929
    rx1175_cur."!cursor_debug"("PASS", "infix:sym</>", " at pos=", rx1175_pos)
  debug_929:
    .return (rx1175_cur)
  rx1175_restart:
    if_null rx1175_debug, debug_930
    rx1175_cur."!cursor_debug"("NEXT", "infix:sym</>")
  debug_930:
  rx1175_fail:
    (rx1175_rep, rx1175_pos, $I10, $P10) = rx1175_cur."!mark_fail"(0)
    lt rx1175_pos, -1, rx1175_done
    eq rx1175_pos, -1, rx1175_fail
    jump $I10
  rx1175_done:
    rx1175_cur."!cursor_fail"()
    if_null rx1175_debug, debug_931
    rx1175_cur."!cursor_debug"("FAIL", "infix:sym</>")
  debug_931:
    .return (rx1175_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("291_1285886565.968") :method
.annotate 'line', 0
    $P1177 = self."!PREFIX__!subrule"("O", "/")
    new $P1178, "ResizablePMCArray"
    push $P1178, $P1177
    .return ($P1178)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("292_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1182_tgt
    .local int rx1182_pos
    .local int rx1182_off
    .local int rx1182_eos
    .local int rx1182_rep
    .local pmc rx1182_cur
    .local pmc rx1182_debug
    (rx1182_cur, rx1182_pos, rx1182_tgt, $I10) = self."!cursor_start"()
    getattribute rx1182_debug, rx1182_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1182_cur
    .local pmc match
    .lex "$/", match
    length rx1182_eos, rx1182_tgt
    gt rx1182_pos, rx1182_eos, rx1182_done
    set rx1182_off, 0
    lt rx1182_pos, 2, rx1182_start
    sub rx1182_off, rx1182_pos, 1
    substr rx1182_tgt, rx1182_tgt, rx1182_off
  rx1182_start:
    eq $I10, 1, rx1182_restart
    if_null rx1182_debug, debug_932
    rx1182_cur."!cursor_debug"("START", "infix:sym<%>")
  debug_932:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1186_done
    goto rxscan1186_scan
  rxscan1186_loop:
    ($P10) = rx1182_cur."from"()
    inc $P10
    set rx1182_pos, $P10
    ge rx1182_pos, rx1182_eos, rxscan1186_done
  rxscan1186_scan:
    set_addr $I10, rxscan1186_loop
    rx1182_cur."!mark_push"(0, rx1182_pos, $I10)
  rxscan1186_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1187_fail
    rx1182_cur."!mark_push"(0, rx1182_pos, $I10)
  # rx literal  "%"
    add $I11, rx1182_pos, 1
    gt $I11, rx1182_eos, rx1182_fail
    sub $I11, rx1182_pos, rx1182_off
    ord $I11, rx1182_tgt, $I11
    ne $I11, 37, rx1182_fail
    add rx1182_pos, 1
    set_addr $I10, rxcap_1187_fail
    ($I12, $I11) = rx1182_cur."!mark_peek"($I10)
    rx1182_cur."!cursor_pos"($I11)
    ($P10) = rx1182_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1182_pos, "")
    rx1182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1187_done
  rxcap_1187_fail:
    goto rx1182_fail
  rxcap_1187_done:
  # rx subrule "O" subtype=capture negate=
    rx1182_cur."!cursor_pos"(rx1182_pos)
    $P10 = rx1182_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx1182_fail
    rx1182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1182_pos = $P10."pos"()
  # rx pass
    rx1182_cur."!cursor_pass"(rx1182_pos, "infix:sym<%>")
    if_null rx1182_debug, debug_933
    rx1182_cur."!cursor_debug"("PASS", "infix:sym<%>", " at pos=", rx1182_pos)
  debug_933:
    .return (rx1182_cur)
  rx1182_restart:
    if_null rx1182_debug, debug_934
    rx1182_cur."!cursor_debug"("NEXT", "infix:sym<%>")
  debug_934:
  rx1182_fail:
    (rx1182_rep, rx1182_pos, $I10, $P10) = rx1182_cur."!mark_fail"(0)
    lt rx1182_pos, -1, rx1182_done
    eq rx1182_pos, -1, rx1182_fail
    jump $I10
  rx1182_done:
    rx1182_cur."!cursor_fail"()
    if_null rx1182_debug, debug_935
    rx1182_cur."!cursor_debug"("FAIL", "infix:sym<%>")
  debug_935:
    .return (rx1182_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("293_1285886565.968") :method
.annotate 'line', 0
    $P1184 = self."!PREFIX__!subrule"("O", "%")
    new $P1185, "ResizablePMCArray"
    push $P1185, $P1184
    .return ($P1185)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+&>"  :subid("294_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1189_tgt
    .local int rx1189_pos
    .local int rx1189_off
    .local int rx1189_eos
    .local int rx1189_rep
    .local pmc rx1189_cur
    .local pmc rx1189_debug
    (rx1189_cur, rx1189_pos, rx1189_tgt, $I10) = self."!cursor_start"()
    getattribute rx1189_debug, rx1189_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1189_cur
    .local pmc match
    .lex "$/", match
    length rx1189_eos, rx1189_tgt
    gt rx1189_pos, rx1189_eos, rx1189_done
    set rx1189_off, 0
    lt rx1189_pos, 2, rx1189_start
    sub rx1189_off, rx1189_pos, 1
    substr rx1189_tgt, rx1189_tgt, rx1189_off
  rx1189_start:
    eq $I10, 1, rx1189_restart
    if_null rx1189_debug, debug_936
    rx1189_cur."!cursor_debug"("START", "infix:sym<+&>")
  debug_936:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1193_done
    goto rxscan1193_scan
  rxscan1193_loop:
    ($P10) = rx1189_cur."from"()
    inc $P10
    set rx1189_pos, $P10
    ge rx1189_pos, rx1189_eos, rxscan1193_done
  rxscan1193_scan:
    set_addr $I10, rxscan1193_loop
    rx1189_cur."!mark_push"(0, rx1189_pos, $I10)
  rxscan1193_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1194_fail
    rx1189_cur."!mark_push"(0, rx1189_pos, $I10)
  # rx literal  "+&"
    add $I11, rx1189_pos, 2
    gt $I11, rx1189_eos, rx1189_fail
    sub $I11, rx1189_pos, rx1189_off
    substr $S10, rx1189_tgt, $I11, 2
    ne $S10, "+&", rx1189_fail
    add rx1189_pos, 2
    set_addr $I10, rxcap_1194_fail
    ($I12, $I11) = rx1189_cur."!mark_peek"($I10)
    rx1189_cur."!cursor_pos"($I11)
    ($P10) = rx1189_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1189_pos, "")
    rx1189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1194_done
  rxcap_1194_fail:
    goto rx1189_fail
  rxcap_1194_done:
  # rx subrule "O" subtype=capture negate=
    rx1189_cur."!cursor_pos"(rx1189_pos)
    $P10 = rx1189_cur."O"("%multiplicative, :pirop<band III>")
    unless $P10, rx1189_fail
    rx1189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1189_pos = $P10."pos"()
  # rx pass
    rx1189_cur."!cursor_pass"(rx1189_pos, "infix:sym<+&>")
    if_null rx1189_debug, debug_937
    rx1189_cur."!cursor_debug"("PASS", "infix:sym<+&>", " at pos=", rx1189_pos)
  debug_937:
    .return (rx1189_cur)
  rx1189_restart:
    if_null rx1189_debug, debug_938
    rx1189_cur."!cursor_debug"("NEXT", "infix:sym<+&>")
  debug_938:
  rx1189_fail:
    (rx1189_rep, rx1189_pos, $I10, $P10) = rx1189_cur."!mark_fail"(0)
    lt rx1189_pos, -1, rx1189_done
    eq rx1189_pos, -1, rx1189_fail
    jump $I10
  rx1189_done:
    rx1189_cur."!cursor_fail"()
    if_null rx1189_debug, debug_939
    rx1189_cur."!cursor_debug"("FAIL", "infix:sym<+&>")
  debug_939:
    .return (rx1189_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+&>"  :subid("295_1285886565.968") :method
.annotate 'line', 0
    $P1191 = self."!PREFIX__!subrule"("O", "+&")
    new $P1192, "ResizablePMCArray"
    push $P1192, $P1191
    .return ($P1192)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("296_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1196_tgt
    .local int rx1196_pos
    .local int rx1196_off
    .local int rx1196_eos
    .local int rx1196_rep
    .local pmc rx1196_cur
    .local pmc rx1196_debug
    (rx1196_cur, rx1196_pos, rx1196_tgt, $I10) = self."!cursor_start"()
    getattribute rx1196_debug, rx1196_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1196_cur
    .local pmc match
    .lex "$/", match
    length rx1196_eos, rx1196_tgt
    gt rx1196_pos, rx1196_eos, rx1196_done
    set rx1196_off, 0
    lt rx1196_pos, 2, rx1196_start
    sub rx1196_off, rx1196_pos, 1
    substr rx1196_tgt, rx1196_tgt, rx1196_off
  rx1196_start:
    eq $I10, 1, rx1196_restart
    if_null rx1196_debug, debug_940
    rx1196_cur."!cursor_debug"("START", "infix:sym<+>")
  debug_940:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1200_done
    goto rxscan1200_scan
  rxscan1200_loop:
    ($P10) = rx1196_cur."from"()
    inc $P10
    set rx1196_pos, $P10
    ge rx1196_pos, rx1196_eos, rxscan1200_done
  rxscan1200_scan:
    set_addr $I10, rxscan1200_loop
    rx1196_cur."!mark_push"(0, rx1196_pos, $I10)
  rxscan1200_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1201_fail
    rx1196_cur."!mark_push"(0, rx1196_pos, $I10)
  # rx literal  "+"
    add $I11, rx1196_pos, 1
    gt $I11, rx1196_eos, rx1196_fail
    sub $I11, rx1196_pos, rx1196_off
    ord $I11, rx1196_tgt, $I11
    ne $I11, 43, rx1196_fail
    add rx1196_pos, 1
    set_addr $I10, rxcap_1201_fail
    ($I12, $I11) = rx1196_cur."!mark_peek"($I10)
    rx1196_cur."!cursor_pos"($I11)
    ($P10) = rx1196_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1196_pos, "")
    rx1196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1201_done
  rxcap_1201_fail:
    goto rx1196_fail
  rxcap_1201_done:
  # rx subrule "O" subtype=capture negate=
    rx1196_cur."!cursor_pos"(rx1196_pos)
    $P10 = rx1196_cur."O"("%additive, :pirop<add>")
    unless $P10, rx1196_fail
    rx1196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1196_pos = $P10."pos"()
  # rx pass
    rx1196_cur."!cursor_pass"(rx1196_pos, "infix:sym<+>")
    if_null rx1196_debug, debug_941
    rx1196_cur."!cursor_debug"("PASS", "infix:sym<+>", " at pos=", rx1196_pos)
  debug_941:
    .return (rx1196_cur)
  rx1196_restart:
    if_null rx1196_debug, debug_942
    rx1196_cur."!cursor_debug"("NEXT", "infix:sym<+>")
  debug_942:
  rx1196_fail:
    (rx1196_rep, rx1196_pos, $I10, $P10) = rx1196_cur."!mark_fail"(0)
    lt rx1196_pos, -1, rx1196_done
    eq rx1196_pos, -1, rx1196_fail
    jump $I10
  rx1196_done:
    rx1196_cur."!cursor_fail"()
    if_null rx1196_debug, debug_943
    rx1196_cur."!cursor_debug"("FAIL", "infix:sym<+>")
  debug_943:
    .return (rx1196_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("297_1285886565.968") :method
.annotate 'line', 0
    $P1198 = self."!PREFIX__!subrule"("O", "+")
    new $P1199, "ResizablePMCArray"
    push $P1199, $P1198
    .return ($P1199)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("298_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1203_tgt
    .local int rx1203_pos
    .local int rx1203_off
    .local int rx1203_eos
    .local int rx1203_rep
    .local pmc rx1203_cur
    .local pmc rx1203_debug
    (rx1203_cur, rx1203_pos, rx1203_tgt, $I10) = self."!cursor_start"()
    getattribute rx1203_debug, rx1203_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1203_cur
    .local pmc match
    .lex "$/", match
    length rx1203_eos, rx1203_tgt
    gt rx1203_pos, rx1203_eos, rx1203_done
    set rx1203_off, 0
    lt rx1203_pos, 2, rx1203_start
    sub rx1203_off, rx1203_pos, 1
    substr rx1203_tgt, rx1203_tgt, rx1203_off
  rx1203_start:
    eq $I10, 1, rx1203_restart
    if_null rx1203_debug, debug_944
    rx1203_cur."!cursor_debug"("START", "infix:sym<->")
  debug_944:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1207_done
    goto rxscan1207_scan
  rxscan1207_loop:
    ($P10) = rx1203_cur."from"()
    inc $P10
    set rx1203_pos, $P10
    ge rx1203_pos, rx1203_eos, rxscan1207_done
  rxscan1207_scan:
    set_addr $I10, rxscan1207_loop
    rx1203_cur."!mark_push"(0, rx1203_pos, $I10)
  rxscan1207_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1208_fail
    rx1203_cur."!mark_push"(0, rx1203_pos, $I10)
  # rx literal  "-"
    add $I11, rx1203_pos, 1
    gt $I11, rx1203_eos, rx1203_fail
    sub $I11, rx1203_pos, rx1203_off
    ord $I11, rx1203_tgt, $I11
    ne $I11, 45, rx1203_fail
    add rx1203_pos, 1
    set_addr $I10, rxcap_1208_fail
    ($I12, $I11) = rx1203_cur."!mark_peek"($I10)
    rx1203_cur."!cursor_pos"($I11)
    ($P10) = rx1203_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1203_pos, "")
    rx1203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1208_done
  rxcap_1208_fail:
    goto rx1203_fail
  rxcap_1208_done:
  # rx subrule "O" subtype=capture negate=
    rx1203_cur."!cursor_pos"(rx1203_pos)
    $P10 = rx1203_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx1203_fail
    rx1203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1203_pos = $P10."pos"()
  # rx pass
    rx1203_cur."!cursor_pass"(rx1203_pos, "infix:sym<->")
    if_null rx1203_debug, debug_945
    rx1203_cur."!cursor_debug"("PASS", "infix:sym<->", " at pos=", rx1203_pos)
  debug_945:
    .return (rx1203_cur)
  rx1203_restart:
    if_null rx1203_debug, debug_946
    rx1203_cur."!cursor_debug"("NEXT", "infix:sym<->")
  debug_946:
  rx1203_fail:
    (rx1203_rep, rx1203_pos, $I10, $P10) = rx1203_cur."!mark_fail"(0)
    lt rx1203_pos, -1, rx1203_done
    eq rx1203_pos, -1, rx1203_fail
    jump $I10
  rx1203_done:
    rx1203_cur."!cursor_fail"()
    if_null rx1203_debug, debug_947
    rx1203_cur."!cursor_debug"("FAIL", "infix:sym<->")
  debug_947:
    .return (rx1203_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("299_1285886565.968") :method
.annotate 'line', 0
    $P1205 = self."!PREFIX__!subrule"("O", "-")
    new $P1206, "ResizablePMCArray"
    push $P1206, $P1205
    .return ($P1206)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+|>"  :subid("300_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1210_tgt
    .local int rx1210_pos
    .local int rx1210_off
    .local int rx1210_eos
    .local int rx1210_rep
    .local pmc rx1210_cur
    .local pmc rx1210_debug
    (rx1210_cur, rx1210_pos, rx1210_tgt, $I10) = self."!cursor_start"()
    getattribute rx1210_debug, rx1210_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1210_cur
    .local pmc match
    .lex "$/", match
    length rx1210_eos, rx1210_tgt
    gt rx1210_pos, rx1210_eos, rx1210_done
    set rx1210_off, 0
    lt rx1210_pos, 2, rx1210_start
    sub rx1210_off, rx1210_pos, 1
    substr rx1210_tgt, rx1210_tgt, rx1210_off
  rx1210_start:
    eq $I10, 1, rx1210_restart
    if_null rx1210_debug, debug_948
    rx1210_cur."!cursor_debug"("START", "infix:sym<+|>")
  debug_948:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1214_done
    goto rxscan1214_scan
  rxscan1214_loop:
    ($P10) = rx1210_cur."from"()
    inc $P10
    set rx1210_pos, $P10
    ge rx1210_pos, rx1210_eos, rxscan1214_done
  rxscan1214_scan:
    set_addr $I10, rxscan1214_loop
    rx1210_cur."!mark_push"(0, rx1210_pos, $I10)
  rxscan1214_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1215_fail
    rx1210_cur."!mark_push"(0, rx1210_pos, $I10)
  # rx literal  "+|"
    add $I11, rx1210_pos, 2
    gt $I11, rx1210_eos, rx1210_fail
    sub $I11, rx1210_pos, rx1210_off
    substr $S10, rx1210_tgt, $I11, 2
    ne $S10, "+|", rx1210_fail
    add rx1210_pos, 2
    set_addr $I10, rxcap_1215_fail
    ($I12, $I11) = rx1210_cur."!mark_peek"($I10)
    rx1210_cur."!cursor_pos"($I11)
    ($P10) = rx1210_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1210_pos, "")
    rx1210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1215_done
  rxcap_1215_fail:
    goto rx1210_fail
  rxcap_1215_done:
  # rx subrule "O" subtype=capture negate=
    rx1210_cur."!cursor_pos"(rx1210_pos)
    $P10 = rx1210_cur."O"("%additive, :pirop<bor III>")
    unless $P10, rx1210_fail
    rx1210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1210_pos = $P10."pos"()
  # rx pass
    rx1210_cur."!cursor_pass"(rx1210_pos, "infix:sym<+|>")
    if_null rx1210_debug, debug_949
    rx1210_cur."!cursor_debug"("PASS", "infix:sym<+|>", " at pos=", rx1210_pos)
  debug_949:
    .return (rx1210_cur)
  rx1210_restart:
    if_null rx1210_debug, debug_950
    rx1210_cur."!cursor_debug"("NEXT", "infix:sym<+|>")
  debug_950:
  rx1210_fail:
    (rx1210_rep, rx1210_pos, $I10, $P10) = rx1210_cur."!mark_fail"(0)
    lt rx1210_pos, -1, rx1210_done
    eq rx1210_pos, -1, rx1210_fail
    jump $I10
  rx1210_done:
    rx1210_cur."!cursor_fail"()
    if_null rx1210_debug, debug_951
    rx1210_cur."!cursor_debug"("FAIL", "infix:sym<+|>")
  debug_951:
    .return (rx1210_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+|>"  :subid("301_1285886565.968") :method
.annotate 'line', 0
    $P1212 = self."!PREFIX__!subrule"("O", "+|")
    new $P1213, "ResizablePMCArray"
    push $P1213, $P1212
    .return ($P1213)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+^>"  :subid("302_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1217_tgt
    .local int rx1217_pos
    .local int rx1217_off
    .local int rx1217_eos
    .local int rx1217_rep
    .local pmc rx1217_cur
    .local pmc rx1217_debug
    (rx1217_cur, rx1217_pos, rx1217_tgt, $I10) = self."!cursor_start"()
    getattribute rx1217_debug, rx1217_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1217_cur
    .local pmc match
    .lex "$/", match
    length rx1217_eos, rx1217_tgt
    gt rx1217_pos, rx1217_eos, rx1217_done
    set rx1217_off, 0
    lt rx1217_pos, 2, rx1217_start
    sub rx1217_off, rx1217_pos, 1
    substr rx1217_tgt, rx1217_tgt, rx1217_off
  rx1217_start:
    eq $I10, 1, rx1217_restart
    if_null rx1217_debug, debug_952
    rx1217_cur."!cursor_debug"("START", "infix:sym<+^>")
  debug_952:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1221_done
    goto rxscan1221_scan
  rxscan1221_loop:
    ($P10) = rx1217_cur."from"()
    inc $P10
    set rx1217_pos, $P10
    ge rx1217_pos, rx1217_eos, rxscan1221_done
  rxscan1221_scan:
    set_addr $I10, rxscan1221_loop
    rx1217_cur."!mark_push"(0, rx1217_pos, $I10)
  rxscan1221_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1222_fail
    rx1217_cur."!mark_push"(0, rx1217_pos, $I10)
  # rx literal  "+^"
    add $I11, rx1217_pos, 2
    gt $I11, rx1217_eos, rx1217_fail
    sub $I11, rx1217_pos, rx1217_off
    substr $S10, rx1217_tgt, $I11, 2
    ne $S10, "+^", rx1217_fail
    add rx1217_pos, 2
    set_addr $I10, rxcap_1222_fail
    ($I12, $I11) = rx1217_cur."!mark_peek"($I10)
    rx1217_cur."!cursor_pos"($I11)
    ($P10) = rx1217_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1217_pos, "")
    rx1217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1222_done
  rxcap_1222_fail:
    goto rx1217_fail
  rxcap_1222_done:
  # rx subrule "O" subtype=capture negate=
    rx1217_cur."!cursor_pos"(rx1217_pos)
    $P10 = rx1217_cur."O"("%additive, :pirop<bxor III>")
    unless $P10, rx1217_fail
    rx1217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1217_pos = $P10."pos"()
  # rx pass
    rx1217_cur."!cursor_pass"(rx1217_pos, "infix:sym<+^>")
    if_null rx1217_debug, debug_953
    rx1217_cur."!cursor_debug"("PASS", "infix:sym<+^>", " at pos=", rx1217_pos)
  debug_953:
    .return (rx1217_cur)
  rx1217_restart:
    if_null rx1217_debug, debug_954
    rx1217_cur."!cursor_debug"("NEXT", "infix:sym<+^>")
  debug_954:
  rx1217_fail:
    (rx1217_rep, rx1217_pos, $I10, $P10) = rx1217_cur."!mark_fail"(0)
    lt rx1217_pos, -1, rx1217_done
    eq rx1217_pos, -1, rx1217_fail
    jump $I10
  rx1217_done:
    rx1217_cur."!cursor_fail"()
    if_null rx1217_debug, debug_955
    rx1217_cur."!cursor_debug"("FAIL", "infix:sym<+^>")
  debug_955:
    .return (rx1217_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+^>"  :subid("303_1285886565.968") :method
.annotate 'line', 0
    $P1219 = self."!PREFIX__!subrule"("O", "+^")
    new $P1220, "ResizablePMCArray"
    push $P1220, $P1219
    .return ($P1220)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("304_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1224_tgt
    .local int rx1224_pos
    .local int rx1224_off
    .local int rx1224_eos
    .local int rx1224_rep
    .local pmc rx1224_cur
    .local pmc rx1224_debug
    (rx1224_cur, rx1224_pos, rx1224_tgt, $I10) = self."!cursor_start"()
    getattribute rx1224_debug, rx1224_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1224_cur
    .local pmc match
    .lex "$/", match
    length rx1224_eos, rx1224_tgt
    gt rx1224_pos, rx1224_eos, rx1224_done
    set rx1224_off, 0
    lt rx1224_pos, 2, rx1224_start
    sub rx1224_off, rx1224_pos, 1
    substr rx1224_tgt, rx1224_tgt, rx1224_off
  rx1224_start:
    eq $I10, 1, rx1224_restart
    if_null rx1224_debug, debug_956
    rx1224_cur."!cursor_debug"("START", "infix:sym<~>")
  debug_956:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1228_done
    goto rxscan1228_scan
  rxscan1228_loop:
    ($P10) = rx1224_cur."from"()
    inc $P10
    set rx1224_pos, $P10
    ge rx1224_pos, rx1224_eos, rxscan1228_done
  rxscan1228_scan:
    set_addr $I10, rxscan1228_loop
    rx1224_cur."!mark_push"(0, rx1224_pos, $I10)
  rxscan1228_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1229_fail
    rx1224_cur."!mark_push"(0, rx1224_pos, $I10)
  # rx literal  "~"
    add $I11, rx1224_pos, 1
    gt $I11, rx1224_eos, rx1224_fail
    sub $I11, rx1224_pos, rx1224_off
    ord $I11, rx1224_tgt, $I11
    ne $I11, 126, rx1224_fail
    add rx1224_pos, 1
    set_addr $I10, rxcap_1229_fail
    ($I12, $I11) = rx1224_cur."!mark_peek"($I10)
    rx1224_cur."!cursor_pos"($I11)
    ($P10) = rx1224_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1224_pos, "")
    rx1224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1229_done
  rxcap_1229_fail:
    goto rx1224_fail
  rxcap_1229_done:
  # rx subrule "O" subtype=capture negate=
    rx1224_cur."!cursor_pos"(rx1224_pos)
    $P10 = rx1224_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx1224_fail
    rx1224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1224_pos = $P10."pos"()
  # rx pass
    rx1224_cur."!cursor_pass"(rx1224_pos, "infix:sym<~>")
    if_null rx1224_debug, debug_957
    rx1224_cur."!cursor_debug"("PASS", "infix:sym<~>", " at pos=", rx1224_pos)
  debug_957:
    .return (rx1224_cur)
  rx1224_restart:
    if_null rx1224_debug, debug_958
    rx1224_cur."!cursor_debug"("NEXT", "infix:sym<~>")
  debug_958:
  rx1224_fail:
    (rx1224_rep, rx1224_pos, $I10, $P10) = rx1224_cur."!mark_fail"(0)
    lt rx1224_pos, -1, rx1224_done
    eq rx1224_pos, -1, rx1224_fail
    jump $I10
  rx1224_done:
    rx1224_cur."!cursor_fail"()
    if_null rx1224_debug, debug_959
    rx1224_cur."!cursor_debug"("FAIL", "infix:sym<~>")
  debug_959:
    .return (rx1224_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("305_1285886565.968") :method
.annotate 'line', 0
    $P1226 = self."!PREFIX__!subrule"("O", "~")
    new $P1227, "ResizablePMCArray"
    push $P1227, $P1226
    .return ($P1227)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("306_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1231_tgt
    .local int rx1231_pos
    .local int rx1231_off
    .local int rx1231_eos
    .local int rx1231_rep
    .local pmc rx1231_cur
    .local pmc rx1231_debug
    (rx1231_cur, rx1231_pos, rx1231_tgt, $I10) = self."!cursor_start"()
    getattribute rx1231_debug, rx1231_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1231_cur
    .local pmc match
    .lex "$/", match
    length rx1231_eos, rx1231_tgt
    gt rx1231_pos, rx1231_eos, rx1231_done
    set rx1231_off, 0
    lt rx1231_pos, 2, rx1231_start
    sub rx1231_off, rx1231_pos, 1
    substr rx1231_tgt, rx1231_tgt, rx1231_off
  rx1231_start:
    eq $I10, 1, rx1231_restart
    if_null rx1231_debug, debug_960
    rx1231_cur."!cursor_debug"("START", "infix:sym<==>")
  debug_960:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1235_done
    goto rxscan1235_scan
  rxscan1235_loop:
    ($P10) = rx1231_cur."from"()
    inc $P10
    set rx1231_pos, $P10
    ge rx1231_pos, rx1231_eos, rxscan1235_done
  rxscan1235_scan:
    set_addr $I10, rxscan1235_loop
    rx1231_cur."!mark_push"(0, rx1231_pos, $I10)
  rxscan1235_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1236_fail
    rx1231_cur."!mark_push"(0, rx1231_pos, $I10)
  # rx literal  "=="
    add $I11, rx1231_pos, 2
    gt $I11, rx1231_eos, rx1231_fail
    sub $I11, rx1231_pos, rx1231_off
    substr $S10, rx1231_tgt, $I11, 2
    ne $S10, "==", rx1231_fail
    add rx1231_pos, 2
    set_addr $I10, rxcap_1236_fail
    ($I12, $I11) = rx1231_cur."!mark_peek"($I10)
    rx1231_cur."!cursor_pos"($I11)
    ($P10) = rx1231_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1231_pos, "")
    rx1231_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1236_done
  rxcap_1236_fail:
    goto rx1231_fail
  rxcap_1236_done:
  # rx subrule "O" subtype=capture negate=
    rx1231_cur."!cursor_pos"(rx1231_pos)
    $P10 = rx1231_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx1231_fail
    rx1231_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1231_pos = $P10."pos"()
  # rx pass
    rx1231_cur."!cursor_pass"(rx1231_pos, "infix:sym<==>")
    if_null rx1231_debug, debug_961
    rx1231_cur."!cursor_debug"("PASS", "infix:sym<==>", " at pos=", rx1231_pos)
  debug_961:
    .return (rx1231_cur)
  rx1231_restart:
    if_null rx1231_debug, debug_962
    rx1231_cur."!cursor_debug"("NEXT", "infix:sym<==>")
  debug_962:
  rx1231_fail:
    (rx1231_rep, rx1231_pos, $I10, $P10) = rx1231_cur."!mark_fail"(0)
    lt rx1231_pos, -1, rx1231_done
    eq rx1231_pos, -1, rx1231_fail
    jump $I10
  rx1231_done:
    rx1231_cur."!cursor_fail"()
    if_null rx1231_debug, debug_963
    rx1231_cur."!cursor_debug"("FAIL", "infix:sym<==>")
  debug_963:
    .return (rx1231_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("307_1285886565.968") :method
.annotate 'line', 0
    $P1233 = self."!PREFIX__!subrule"("O", "==")
    new $P1234, "ResizablePMCArray"
    push $P1234, $P1233
    .return ($P1234)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("308_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1238_tgt
    .local int rx1238_pos
    .local int rx1238_off
    .local int rx1238_eos
    .local int rx1238_rep
    .local pmc rx1238_cur
    .local pmc rx1238_debug
    (rx1238_cur, rx1238_pos, rx1238_tgt, $I10) = self."!cursor_start"()
    getattribute rx1238_debug, rx1238_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1238_cur
    .local pmc match
    .lex "$/", match
    length rx1238_eos, rx1238_tgt
    gt rx1238_pos, rx1238_eos, rx1238_done
    set rx1238_off, 0
    lt rx1238_pos, 2, rx1238_start
    sub rx1238_off, rx1238_pos, 1
    substr rx1238_tgt, rx1238_tgt, rx1238_off
  rx1238_start:
    eq $I10, 1, rx1238_restart
    if_null rx1238_debug, debug_964
    rx1238_cur."!cursor_debug"("START", "infix:sym<!=>")
  debug_964:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1242_done
    goto rxscan1242_scan
  rxscan1242_loop:
    ($P10) = rx1238_cur."from"()
    inc $P10
    set rx1238_pos, $P10
    ge rx1238_pos, rx1238_eos, rxscan1242_done
  rxscan1242_scan:
    set_addr $I10, rxscan1242_loop
    rx1238_cur."!mark_push"(0, rx1238_pos, $I10)
  rxscan1242_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1243_fail
    rx1238_cur."!mark_push"(0, rx1238_pos, $I10)
  # rx literal  "!="
    add $I11, rx1238_pos, 2
    gt $I11, rx1238_eos, rx1238_fail
    sub $I11, rx1238_pos, rx1238_off
    substr $S10, rx1238_tgt, $I11, 2
    ne $S10, "!=", rx1238_fail
    add rx1238_pos, 2
    set_addr $I10, rxcap_1243_fail
    ($I12, $I11) = rx1238_cur."!mark_peek"($I10)
    rx1238_cur."!cursor_pos"($I11)
    ($P10) = rx1238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1238_pos, "")
    rx1238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1243_done
  rxcap_1243_fail:
    goto rx1238_fail
  rxcap_1243_done:
  # rx subrule "O" subtype=capture negate=
    rx1238_cur."!cursor_pos"(rx1238_pos)
    $P10 = rx1238_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx1238_fail
    rx1238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1238_pos = $P10."pos"()
  # rx pass
    rx1238_cur."!cursor_pass"(rx1238_pos, "infix:sym<!=>")
    if_null rx1238_debug, debug_965
    rx1238_cur."!cursor_debug"("PASS", "infix:sym<!=>", " at pos=", rx1238_pos)
  debug_965:
    .return (rx1238_cur)
  rx1238_restart:
    if_null rx1238_debug, debug_966
    rx1238_cur."!cursor_debug"("NEXT", "infix:sym<!=>")
  debug_966:
  rx1238_fail:
    (rx1238_rep, rx1238_pos, $I10, $P10) = rx1238_cur."!mark_fail"(0)
    lt rx1238_pos, -1, rx1238_done
    eq rx1238_pos, -1, rx1238_fail
    jump $I10
  rx1238_done:
    rx1238_cur."!cursor_fail"()
    if_null rx1238_debug, debug_967
    rx1238_cur."!cursor_debug"("FAIL", "infix:sym<!=>")
  debug_967:
    .return (rx1238_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("309_1285886565.968") :method
.annotate 'line', 0
    $P1240 = self."!PREFIX__!subrule"("O", "!=")
    new $P1241, "ResizablePMCArray"
    push $P1241, $P1240
    .return ($P1241)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("310_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1245_tgt
    .local int rx1245_pos
    .local int rx1245_off
    .local int rx1245_eos
    .local int rx1245_rep
    .local pmc rx1245_cur
    .local pmc rx1245_debug
    (rx1245_cur, rx1245_pos, rx1245_tgt, $I10) = self."!cursor_start"()
    getattribute rx1245_debug, rx1245_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1245_cur
    .local pmc match
    .lex "$/", match
    length rx1245_eos, rx1245_tgt
    gt rx1245_pos, rx1245_eos, rx1245_done
    set rx1245_off, 0
    lt rx1245_pos, 2, rx1245_start
    sub rx1245_off, rx1245_pos, 1
    substr rx1245_tgt, rx1245_tgt, rx1245_off
  rx1245_start:
    eq $I10, 1, rx1245_restart
    if_null rx1245_debug, debug_968
    rx1245_cur."!cursor_debug"("START", "infix:sym<<=>")
  debug_968:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1249_done
    goto rxscan1249_scan
  rxscan1249_loop:
    ($P10) = rx1245_cur."from"()
    inc $P10
    set rx1245_pos, $P10
    ge rx1245_pos, rx1245_eos, rxscan1249_done
  rxscan1249_scan:
    set_addr $I10, rxscan1249_loop
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  rxscan1249_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1250_fail
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  # rx literal  "<="
    add $I11, rx1245_pos, 2
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    substr $S10, rx1245_tgt, $I11, 2
    ne $S10, "<=", rx1245_fail
    add rx1245_pos, 2
    set_addr $I10, rxcap_1250_fail
    ($I12, $I11) = rx1245_cur."!mark_peek"($I10)
    rx1245_cur."!cursor_pos"($I11)
    ($P10) = rx1245_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1245_pos, "")
    rx1245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1250_done
  rxcap_1250_fail:
    goto rx1245_fail
  rxcap_1250_done:
  # rx subrule "O" subtype=capture negate=
    rx1245_cur."!cursor_pos"(rx1245_pos)
    $P10 = rx1245_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx1245_fail
    rx1245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1245_pos = $P10."pos"()
  # rx pass
    rx1245_cur."!cursor_pass"(rx1245_pos, "infix:sym<<=>")
    if_null rx1245_debug, debug_969
    rx1245_cur."!cursor_debug"("PASS", "infix:sym<<=>", " at pos=", rx1245_pos)
  debug_969:
    .return (rx1245_cur)
  rx1245_restart:
    if_null rx1245_debug, debug_970
    rx1245_cur."!cursor_debug"("NEXT", "infix:sym<<=>")
  debug_970:
  rx1245_fail:
    (rx1245_rep, rx1245_pos, $I10, $P10) = rx1245_cur."!mark_fail"(0)
    lt rx1245_pos, -1, rx1245_done
    eq rx1245_pos, -1, rx1245_fail
    jump $I10
  rx1245_done:
    rx1245_cur."!cursor_fail"()
    if_null rx1245_debug, debug_971
    rx1245_cur."!cursor_debug"("FAIL", "infix:sym<<=>")
  debug_971:
    .return (rx1245_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("311_1285886565.968") :method
.annotate 'line', 0
    $P1247 = self."!PREFIX__!subrule"("O", "<=")
    new $P1248, "ResizablePMCArray"
    push $P1248, $P1247
    .return ($P1248)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("312_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1252_tgt
    .local int rx1252_pos
    .local int rx1252_off
    .local int rx1252_eos
    .local int rx1252_rep
    .local pmc rx1252_cur
    .local pmc rx1252_debug
    (rx1252_cur, rx1252_pos, rx1252_tgt, $I10) = self."!cursor_start"()
    getattribute rx1252_debug, rx1252_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1252_cur
    .local pmc match
    .lex "$/", match
    length rx1252_eos, rx1252_tgt
    gt rx1252_pos, rx1252_eos, rx1252_done
    set rx1252_off, 0
    lt rx1252_pos, 2, rx1252_start
    sub rx1252_off, rx1252_pos, 1
    substr rx1252_tgt, rx1252_tgt, rx1252_off
  rx1252_start:
    eq $I10, 1, rx1252_restart
    if_null rx1252_debug, debug_972
    rx1252_cur."!cursor_debug"("START", "infix:sym<>=>")
  debug_972:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1256_done
    goto rxscan1256_scan
  rxscan1256_loop:
    ($P10) = rx1252_cur."from"()
    inc $P10
    set rx1252_pos, $P10
    ge rx1252_pos, rx1252_eos, rxscan1256_done
  rxscan1256_scan:
    set_addr $I10, rxscan1256_loop
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
  rxscan1256_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1257_fail
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
  # rx literal  ">="
    add $I11, rx1252_pos, 2
    gt $I11, rx1252_eos, rx1252_fail
    sub $I11, rx1252_pos, rx1252_off
    substr $S10, rx1252_tgt, $I11, 2
    ne $S10, ">=", rx1252_fail
    add rx1252_pos, 2
    set_addr $I10, rxcap_1257_fail
    ($I12, $I11) = rx1252_cur."!mark_peek"($I10)
    rx1252_cur."!cursor_pos"($I11)
    ($P10) = rx1252_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1252_pos, "")
    rx1252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1257_done
  rxcap_1257_fail:
    goto rx1252_fail
  rxcap_1257_done:
  # rx subrule "O" subtype=capture negate=
    rx1252_cur."!cursor_pos"(rx1252_pos)
    $P10 = rx1252_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx1252_fail
    rx1252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1252_pos = $P10."pos"()
  # rx pass
    rx1252_cur."!cursor_pass"(rx1252_pos, "infix:sym<>=>")
    if_null rx1252_debug, debug_973
    rx1252_cur."!cursor_debug"("PASS", "infix:sym<>=>", " at pos=", rx1252_pos)
  debug_973:
    .return (rx1252_cur)
  rx1252_restart:
    if_null rx1252_debug, debug_974
    rx1252_cur."!cursor_debug"("NEXT", "infix:sym<>=>")
  debug_974:
  rx1252_fail:
    (rx1252_rep, rx1252_pos, $I10, $P10) = rx1252_cur."!mark_fail"(0)
    lt rx1252_pos, -1, rx1252_done
    eq rx1252_pos, -1, rx1252_fail
    jump $I10
  rx1252_done:
    rx1252_cur."!cursor_fail"()
    if_null rx1252_debug, debug_975
    rx1252_cur."!cursor_debug"("FAIL", "infix:sym<>=>")
  debug_975:
    .return (rx1252_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("313_1285886565.968") :method
.annotate 'line', 0
    $P1254 = self."!PREFIX__!subrule"("O", ">=")
    new $P1255, "ResizablePMCArray"
    push $P1255, $P1254
    .return ($P1255)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("314_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1259_tgt
    .local int rx1259_pos
    .local int rx1259_off
    .local int rx1259_eos
    .local int rx1259_rep
    .local pmc rx1259_cur
    .local pmc rx1259_debug
    (rx1259_cur, rx1259_pos, rx1259_tgt, $I10) = self."!cursor_start"()
    getattribute rx1259_debug, rx1259_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1259_cur
    .local pmc match
    .lex "$/", match
    length rx1259_eos, rx1259_tgt
    gt rx1259_pos, rx1259_eos, rx1259_done
    set rx1259_off, 0
    lt rx1259_pos, 2, rx1259_start
    sub rx1259_off, rx1259_pos, 1
    substr rx1259_tgt, rx1259_tgt, rx1259_off
  rx1259_start:
    eq $I10, 1, rx1259_restart
    if_null rx1259_debug, debug_976
    rx1259_cur."!cursor_debug"("START", "infix:sym<<>")
  debug_976:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1263_done
    goto rxscan1263_scan
  rxscan1263_loop:
    ($P10) = rx1259_cur."from"()
    inc $P10
    set rx1259_pos, $P10
    ge rx1259_pos, rx1259_eos, rxscan1263_done
  rxscan1263_scan:
    set_addr $I10, rxscan1263_loop
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  rxscan1263_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1264_fail
    rx1259_cur."!mark_push"(0, rx1259_pos, $I10)
  # rx literal  "<"
    add $I11, rx1259_pos, 1
    gt $I11, rx1259_eos, rx1259_fail
    sub $I11, rx1259_pos, rx1259_off
    ord $I11, rx1259_tgt, $I11
    ne $I11, 60, rx1259_fail
    add rx1259_pos, 1
    set_addr $I10, rxcap_1264_fail
    ($I12, $I11) = rx1259_cur."!mark_peek"($I10)
    rx1259_cur."!cursor_pos"($I11)
    ($P10) = rx1259_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1259_pos, "")
    rx1259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1264_done
  rxcap_1264_fail:
    goto rx1259_fail
  rxcap_1264_done:
  # rx subrule "O" subtype=capture negate=
    rx1259_cur."!cursor_pos"(rx1259_pos)
    $P10 = rx1259_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx1259_fail
    rx1259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1259_pos = $P10."pos"()
  # rx pass
    rx1259_cur."!cursor_pass"(rx1259_pos, "infix:sym<<>")
    if_null rx1259_debug, debug_977
    rx1259_cur."!cursor_debug"("PASS", "infix:sym<<>", " at pos=", rx1259_pos)
  debug_977:
    .return (rx1259_cur)
  rx1259_restart:
    if_null rx1259_debug, debug_978
    rx1259_cur."!cursor_debug"("NEXT", "infix:sym<<>")
  debug_978:
  rx1259_fail:
    (rx1259_rep, rx1259_pos, $I10, $P10) = rx1259_cur."!mark_fail"(0)
    lt rx1259_pos, -1, rx1259_done
    eq rx1259_pos, -1, rx1259_fail
    jump $I10
  rx1259_done:
    rx1259_cur."!cursor_fail"()
    if_null rx1259_debug, debug_979
    rx1259_cur."!cursor_debug"("FAIL", "infix:sym<<>")
  debug_979:
    .return (rx1259_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("315_1285886565.968") :method
.annotate 'line', 0
    $P1261 = self."!PREFIX__!subrule"("O", "<")
    new $P1262, "ResizablePMCArray"
    push $P1262, $P1261
    .return ($P1262)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("316_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1266_tgt
    .local int rx1266_pos
    .local int rx1266_off
    .local int rx1266_eos
    .local int rx1266_rep
    .local pmc rx1266_cur
    .local pmc rx1266_debug
    (rx1266_cur, rx1266_pos, rx1266_tgt, $I10) = self."!cursor_start"()
    getattribute rx1266_debug, rx1266_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1266_cur
    .local pmc match
    .lex "$/", match
    length rx1266_eos, rx1266_tgt
    gt rx1266_pos, rx1266_eos, rx1266_done
    set rx1266_off, 0
    lt rx1266_pos, 2, rx1266_start
    sub rx1266_off, rx1266_pos, 1
    substr rx1266_tgt, rx1266_tgt, rx1266_off
  rx1266_start:
    eq $I10, 1, rx1266_restart
    if_null rx1266_debug, debug_980
    rx1266_cur."!cursor_debug"("START", "infix:sym<>>")
  debug_980:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1270_done
    goto rxscan1270_scan
  rxscan1270_loop:
    ($P10) = rx1266_cur."from"()
    inc $P10
    set rx1266_pos, $P10
    ge rx1266_pos, rx1266_eos, rxscan1270_done
  rxscan1270_scan:
    set_addr $I10, rxscan1270_loop
    rx1266_cur."!mark_push"(0, rx1266_pos, $I10)
  rxscan1270_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1271_fail
    rx1266_cur."!mark_push"(0, rx1266_pos, $I10)
  # rx literal  ">"
    add $I11, rx1266_pos, 1
    gt $I11, rx1266_eos, rx1266_fail
    sub $I11, rx1266_pos, rx1266_off
    ord $I11, rx1266_tgt, $I11
    ne $I11, 62, rx1266_fail
    add rx1266_pos, 1
    set_addr $I10, rxcap_1271_fail
    ($I12, $I11) = rx1266_cur."!mark_peek"($I10)
    rx1266_cur."!cursor_pos"($I11)
    ($P10) = rx1266_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1266_pos, "")
    rx1266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1271_done
  rxcap_1271_fail:
    goto rx1266_fail
  rxcap_1271_done:
  # rx subrule "O" subtype=capture negate=
    rx1266_cur."!cursor_pos"(rx1266_pos)
    $P10 = rx1266_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx1266_fail
    rx1266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1266_pos = $P10."pos"()
  # rx pass
    rx1266_cur."!cursor_pass"(rx1266_pos, "infix:sym<>>")
    if_null rx1266_debug, debug_981
    rx1266_cur."!cursor_debug"("PASS", "infix:sym<>>", " at pos=", rx1266_pos)
  debug_981:
    .return (rx1266_cur)
  rx1266_restart:
    if_null rx1266_debug, debug_982
    rx1266_cur."!cursor_debug"("NEXT", "infix:sym<>>")
  debug_982:
  rx1266_fail:
    (rx1266_rep, rx1266_pos, $I10, $P10) = rx1266_cur."!mark_fail"(0)
    lt rx1266_pos, -1, rx1266_done
    eq rx1266_pos, -1, rx1266_fail
    jump $I10
  rx1266_done:
    rx1266_cur."!cursor_fail"()
    if_null rx1266_debug, debug_983
    rx1266_cur."!cursor_debug"("FAIL", "infix:sym<>>")
  debug_983:
    .return (rx1266_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("317_1285886565.968") :method
.annotate 'line', 0
    $P1268 = self."!PREFIX__!subrule"("O", ">")
    new $P1269, "ResizablePMCArray"
    push $P1269, $P1268
    .return ($P1269)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("318_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1273_tgt
    .local int rx1273_pos
    .local int rx1273_off
    .local int rx1273_eos
    .local int rx1273_rep
    .local pmc rx1273_cur
    .local pmc rx1273_debug
    (rx1273_cur, rx1273_pos, rx1273_tgt, $I10) = self."!cursor_start"()
    getattribute rx1273_debug, rx1273_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1273_cur
    .local pmc match
    .lex "$/", match
    length rx1273_eos, rx1273_tgt
    gt rx1273_pos, rx1273_eos, rx1273_done
    set rx1273_off, 0
    lt rx1273_pos, 2, rx1273_start
    sub rx1273_off, rx1273_pos, 1
    substr rx1273_tgt, rx1273_tgt, rx1273_off
  rx1273_start:
    eq $I10, 1, rx1273_restart
    if_null rx1273_debug, debug_984
    rx1273_cur."!cursor_debug"("START", "infix:sym<eq>")
  debug_984:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1277_done
    goto rxscan1277_scan
  rxscan1277_loop:
    ($P10) = rx1273_cur."from"()
    inc $P10
    set rx1273_pos, $P10
    ge rx1273_pos, rx1273_eos, rxscan1277_done
  rxscan1277_scan:
    set_addr $I10, rxscan1277_loop
    rx1273_cur."!mark_push"(0, rx1273_pos, $I10)
  rxscan1277_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1278_fail
    rx1273_cur."!mark_push"(0, rx1273_pos, $I10)
  # rx literal  "eq"
    add $I11, rx1273_pos, 2
    gt $I11, rx1273_eos, rx1273_fail
    sub $I11, rx1273_pos, rx1273_off
    substr $S10, rx1273_tgt, $I11, 2
    ne $S10, "eq", rx1273_fail
    add rx1273_pos, 2
    set_addr $I10, rxcap_1278_fail
    ($I12, $I11) = rx1273_cur."!mark_peek"($I10)
    rx1273_cur."!cursor_pos"($I11)
    ($P10) = rx1273_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1273_pos, "")
    rx1273_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1278_done
  rxcap_1278_fail:
    goto rx1273_fail
  rxcap_1278_done:
  # rx subrule "O" subtype=capture negate=
    rx1273_cur."!cursor_pos"(rx1273_pos)
    $P10 = rx1273_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx1273_fail
    rx1273_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1273_pos = $P10."pos"()
  # rx pass
    rx1273_cur."!cursor_pass"(rx1273_pos, "infix:sym<eq>")
    if_null rx1273_debug, debug_985
    rx1273_cur."!cursor_debug"("PASS", "infix:sym<eq>", " at pos=", rx1273_pos)
  debug_985:
    .return (rx1273_cur)
  rx1273_restart:
    if_null rx1273_debug, debug_986
    rx1273_cur."!cursor_debug"("NEXT", "infix:sym<eq>")
  debug_986:
  rx1273_fail:
    (rx1273_rep, rx1273_pos, $I10, $P10) = rx1273_cur."!mark_fail"(0)
    lt rx1273_pos, -1, rx1273_done
    eq rx1273_pos, -1, rx1273_fail
    jump $I10
  rx1273_done:
    rx1273_cur."!cursor_fail"()
    if_null rx1273_debug, debug_987
    rx1273_cur."!cursor_debug"("FAIL", "infix:sym<eq>")
  debug_987:
    .return (rx1273_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("319_1285886565.968") :method
.annotate 'line', 0
    $P1275 = self."!PREFIX__!subrule"("O", "eq")
    new $P1276, "ResizablePMCArray"
    push $P1276, $P1275
    .return ($P1276)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("320_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1280_tgt
    .local int rx1280_pos
    .local int rx1280_off
    .local int rx1280_eos
    .local int rx1280_rep
    .local pmc rx1280_cur
    .local pmc rx1280_debug
    (rx1280_cur, rx1280_pos, rx1280_tgt, $I10) = self."!cursor_start"()
    getattribute rx1280_debug, rx1280_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1280_cur
    .local pmc match
    .lex "$/", match
    length rx1280_eos, rx1280_tgt
    gt rx1280_pos, rx1280_eos, rx1280_done
    set rx1280_off, 0
    lt rx1280_pos, 2, rx1280_start
    sub rx1280_off, rx1280_pos, 1
    substr rx1280_tgt, rx1280_tgt, rx1280_off
  rx1280_start:
    eq $I10, 1, rx1280_restart
    if_null rx1280_debug, debug_988
    rx1280_cur."!cursor_debug"("START", "infix:sym<ne>")
  debug_988:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1284_done
    goto rxscan1284_scan
  rxscan1284_loop:
    ($P10) = rx1280_cur."from"()
    inc $P10
    set rx1280_pos, $P10
    ge rx1280_pos, rx1280_eos, rxscan1284_done
  rxscan1284_scan:
    set_addr $I10, rxscan1284_loop
    rx1280_cur."!mark_push"(0, rx1280_pos, $I10)
  rxscan1284_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1285_fail
    rx1280_cur."!mark_push"(0, rx1280_pos, $I10)
  # rx literal  "ne"
    add $I11, rx1280_pos, 2
    gt $I11, rx1280_eos, rx1280_fail
    sub $I11, rx1280_pos, rx1280_off
    substr $S10, rx1280_tgt, $I11, 2
    ne $S10, "ne", rx1280_fail
    add rx1280_pos, 2
    set_addr $I10, rxcap_1285_fail
    ($I12, $I11) = rx1280_cur."!mark_peek"($I10)
    rx1280_cur."!cursor_pos"($I11)
    ($P10) = rx1280_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1280_pos, "")
    rx1280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1285_done
  rxcap_1285_fail:
    goto rx1280_fail
  rxcap_1285_done:
  # rx subrule "O" subtype=capture negate=
    rx1280_cur."!cursor_pos"(rx1280_pos)
    $P10 = rx1280_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx1280_fail
    rx1280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1280_pos = $P10."pos"()
  # rx pass
    rx1280_cur."!cursor_pass"(rx1280_pos, "infix:sym<ne>")
    if_null rx1280_debug, debug_989
    rx1280_cur."!cursor_debug"("PASS", "infix:sym<ne>", " at pos=", rx1280_pos)
  debug_989:
    .return (rx1280_cur)
  rx1280_restart:
    if_null rx1280_debug, debug_990
    rx1280_cur."!cursor_debug"("NEXT", "infix:sym<ne>")
  debug_990:
  rx1280_fail:
    (rx1280_rep, rx1280_pos, $I10, $P10) = rx1280_cur."!mark_fail"(0)
    lt rx1280_pos, -1, rx1280_done
    eq rx1280_pos, -1, rx1280_fail
    jump $I10
  rx1280_done:
    rx1280_cur."!cursor_fail"()
    if_null rx1280_debug, debug_991
    rx1280_cur."!cursor_debug"("FAIL", "infix:sym<ne>")
  debug_991:
    .return (rx1280_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("321_1285886565.968") :method
.annotate 'line', 0
    $P1282 = self."!PREFIX__!subrule"("O", "ne")
    new $P1283, "ResizablePMCArray"
    push $P1283, $P1282
    .return ($P1283)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("322_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1287_tgt
    .local int rx1287_pos
    .local int rx1287_off
    .local int rx1287_eos
    .local int rx1287_rep
    .local pmc rx1287_cur
    .local pmc rx1287_debug
    (rx1287_cur, rx1287_pos, rx1287_tgt, $I10) = self."!cursor_start"()
    getattribute rx1287_debug, rx1287_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1287_cur
    .local pmc match
    .lex "$/", match
    length rx1287_eos, rx1287_tgt
    gt rx1287_pos, rx1287_eos, rx1287_done
    set rx1287_off, 0
    lt rx1287_pos, 2, rx1287_start
    sub rx1287_off, rx1287_pos, 1
    substr rx1287_tgt, rx1287_tgt, rx1287_off
  rx1287_start:
    eq $I10, 1, rx1287_restart
    if_null rx1287_debug, debug_992
    rx1287_cur."!cursor_debug"("START", "infix:sym<le>")
  debug_992:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1291_done
    goto rxscan1291_scan
  rxscan1291_loop:
    ($P10) = rx1287_cur."from"()
    inc $P10
    set rx1287_pos, $P10
    ge rx1287_pos, rx1287_eos, rxscan1291_done
  rxscan1291_scan:
    set_addr $I10, rxscan1291_loop
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
  rxscan1291_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1292_fail
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
  # rx literal  "le"
    add $I11, rx1287_pos, 2
    gt $I11, rx1287_eos, rx1287_fail
    sub $I11, rx1287_pos, rx1287_off
    substr $S10, rx1287_tgt, $I11, 2
    ne $S10, "le", rx1287_fail
    add rx1287_pos, 2
    set_addr $I10, rxcap_1292_fail
    ($I12, $I11) = rx1287_cur."!mark_peek"($I10)
    rx1287_cur."!cursor_pos"($I11)
    ($P10) = rx1287_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1287_pos, "")
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1292_done
  rxcap_1292_fail:
    goto rx1287_fail
  rxcap_1292_done:
  # rx subrule "O" subtype=capture negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    $P10 = rx1287_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx1287_fail
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1287_pos = $P10."pos"()
  # rx pass
    rx1287_cur."!cursor_pass"(rx1287_pos, "infix:sym<le>")
    if_null rx1287_debug, debug_993
    rx1287_cur."!cursor_debug"("PASS", "infix:sym<le>", " at pos=", rx1287_pos)
  debug_993:
    .return (rx1287_cur)
  rx1287_restart:
    if_null rx1287_debug, debug_994
    rx1287_cur."!cursor_debug"("NEXT", "infix:sym<le>")
  debug_994:
  rx1287_fail:
    (rx1287_rep, rx1287_pos, $I10, $P10) = rx1287_cur."!mark_fail"(0)
    lt rx1287_pos, -1, rx1287_done
    eq rx1287_pos, -1, rx1287_fail
    jump $I10
  rx1287_done:
    rx1287_cur."!cursor_fail"()
    if_null rx1287_debug, debug_995
    rx1287_cur."!cursor_debug"("FAIL", "infix:sym<le>")
  debug_995:
    .return (rx1287_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("323_1285886565.968") :method
.annotate 'line', 0
    $P1289 = self."!PREFIX__!subrule"("O", "le")
    new $P1290, "ResizablePMCArray"
    push $P1290, $P1289
    .return ($P1290)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("324_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1294_tgt
    .local int rx1294_pos
    .local int rx1294_off
    .local int rx1294_eos
    .local int rx1294_rep
    .local pmc rx1294_cur
    .local pmc rx1294_debug
    (rx1294_cur, rx1294_pos, rx1294_tgt, $I10) = self."!cursor_start"()
    getattribute rx1294_debug, rx1294_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1294_cur
    .local pmc match
    .lex "$/", match
    length rx1294_eos, rx1294_tgt
    gt rx1294_pos, rx1294_eos, rx1294_done
    set rx1294_off, 0
    lt rx1294_pos, 2, rx1294_start
    sub rx1294_off, rx1294_pos, 1
    substr rx1294_tgt, rx1294_tgt, rx1294_off
  rx1294_start:
    eq $I10, 1, rx1294_restart
    if_null rx1294_debug, debug_996
    rx1294_cur."!cursor_debug"("START", "infix:sym<ge>")
  debug_996:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1298_done
    goto rxscan1298_scan
  rxscan1298_loop:
    ($P10) = rx1294_cur."from"()
    inc $P10
    set rx1294_pos, $P10
    ge rx1294_pos, rx1294_eos, rxscan1298_done
  rxscan1298_scan:
    set_addr $I10, rxscan1298_loop
    rx1294_cur."!mark_push"(0, rx1294_pos, $I10)
  rxscan1298_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1299_fail
    rx1294_cur."!mark_push"(0, rx1294_pos, $I10)
  # rx literal  "ge"
    add $I11, rx1294_pos, 2
    gt $I11, rx1294_eos, rx1294_fail
    sub $I11, rx1294_pos, rx1294_off
    substr $S10, rx1294_tgt, $I11, 2
    ne $S10, "ge", rx1294_fail
    add rx1294_pos, 2
    set_addr $I10, rxcap_1299_fail
    ($I12, $I11) = rx1294_cur."!mark_peek"($I10)
    rx1294_cur."!cursor_pos"($I11)
    ($P10) = rx1294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1294_pos, "")
    rx1294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1299_done
  rxcap_1299_fail:
    goto rx1294_fail
  rxcap_1299_done:
  # rx subrule "O" subtype=capture negate=
    rx1294_cur."!cursor_pos"(rx1294_pos)
    $P10 = rx1294_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx1294_fail
    rx1294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1294_pos = $P10."pos"()
  # rx pass
    rx1294_cur."!cursor_pass"(rx1294_pos, "infix:sym<ge>")
    if_null rx1294_debug, debug_997
    rx1294_cur."!cursor_debug"("PASS", "infix:sym<ge>", " at pos=", rx1294_pos)
  debug_997:
    .return (rx1294_cur)
  rx1294_restart:
    if_null rx1294_debug, debug_998
    rx1294_cur."!cursor_debug"("NEXT", "infix:sym<ge>")
  debug_998:
  rx1294_fail:
    (rx1294_rep, rx1294_pos, $I10, $P10) = rx1294_cur."!mark_fail"(0)
    lt rx1294_pos, -1, rx1294_done
    eq rx1294_pos, -1, rx1294_fail
    jump $I10
  rx1294_done:
    rx1294_cur."!cursor_fail"()
    if_null rx1294_debug, debug_999
    rx1294_cur."!cursor_debug"("FAIL", "infix:sym<ge>")
  debug_999:
    .return (rx1294_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("325_1285886565.968") :method
.annotate 'line', 0
    $P1296 = self."!PREFIX__!subrule"("O", "ge")
    new $P1297, "ResizablePMCArray"
    push $P1297, $P1296
    .return ($P1297)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("326_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1301_tgt
    .local int rx1301_pos
    .local int rx1301_off
    .local int rx1301_eos
    .local int rx1301_rep
    .local pmc rx1301_cur
    .local pmc rx1301_debug
    (rx1301_cur, rx1301_pos, rx1301_tgt, $I10) = self."!cursor_start"()
    getattribute rx1301_debug, rx1301_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1301_cur
    .local pmc match
    .lex "$/", match
    length rx1301_eos, rx1301_tgt
    gt rx1301_pos, rx1301_eos, rx1301_done
    set rx1301_off, 0
    lt rx1301_pos, 2, rx1301_start
    sub rx1301_off, rx1301_pos, 1
    substr rx1301_tgt, rx1301_tgt, rx1301_off
  rx1301_start:
    eq $I10, 1, rx1301_restart
    if_null rx1301_debug, debug_1000
    rx1301_cur."!cursor_debug"("START", "infix:sym<lt>")
  debug_1000:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1305_done
    goto rxscan1305_scan
  rxscan1305_loop:
    ($P10) = rx1301_cur."from"()
    inc $P10
    set rx1301_pos, $P10
    ge rx1301_pos, rx1301_eos, rxscan1305_done
  rxscan1305_scan:
    set_addr $I10, rxscan1305_loop
    rx1301_cur."!mark_push"(0, rx1301_pos, $I10)
  rxscan1305_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1306_fail
    rx1301_cur."!mark_push"(0, rx1301_pos, $I10)
  # rx literal  "lt"
    add $I11, rx1301_pos, 2
    gt $I11, rx1301_eos, rx1301_fail
    sub $I11, rx1301_pos, rx1301_off
    substr $S10, rx1301_tgt, $I11, 2
    ne $S10, "lt", rx1301_fail
    add rx1301_pos, 2
    set_addr $I10, rxcap_1306_fail
    ($I12, $I11) = rx1301_cur."!mark_peek"($I10)
    rx1301_cur."!cursor_pos"($I11)
    ($P10) = rx1301_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1301_pos, "")
    rx1301_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1306_done
  rxcap_1306_fail:
    goto rx1301_fail
  rxcap_1306_done:
  # rx subrule "O" subtype=capture negate=
    rx1301_cur."!cursor_pos"(rx1301_pos)
    $P10 = rx1301_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx1301_fail
    rx1301_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1301_pos = $P10."pos"()
  # rx pass
    rx1301_cur."!cursor_pass"(rx1301_pos, "infix:sym<lt>")
    if_null rx1301_debug, debug_1001
    rx1301_cur."!cursor_debug"("PASS", "infix:sym<lt>", " at pos=", rx1301_pos)
  debug_1001:
    .return (rx1301_cur)
  rx1301_restart:
    if_null rx1301_debug, debug_1002
    rx1301_cur."!cursor_debug"("NEXT", "infix:sym<lt>")
  debug_1002:
  rx1301_fail:
    (rx1301_rep, rx1301_pos, $I10, $P10) = rx1301_cur."!mark_fail"(0)
    lt rx1301_pos, -1, rx1301_done
    eq rx1301_pos, -1, rx1301_fail
    jump $I10
  rx1301_done:
    rx1301_cur."!cursor_fail"()
    if_null rx1301_debug, debug_1003
    rx1301_cur."!cursor_debug"("FAIL", "infix:sym<lt>")
  debug_1003:
    .return (rx1301_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("327_1285886565.968") :method
.annotate 'line', 0
    $P1303 = self."!PREFIX__!subrule"("O", "lt")
    new $P1304, "ResizablePMCArray"
    push $P1304, $P1303
    .return ($P1304)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("328_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1308_tgt
    .local int rx1308_pos
    .local int rx1308_off
    .local int rx1308_eos
    .local int rx1308_rep
    .local pmc rx1308_cur
    .local pmc rx1308_debug
    (rx1308_cur, rx1308_pos, rx1308_tgt, $I10) = self."!cursor_start"()
    getattribute rx1308_debug, rx1308_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1308_cur
    .local pmc match
    .lex "$/", match
    length rx1308_eos, rx1308_tgt
    gt rx1308_pos, rx1308_eos, rx1308_done
    set rx1308_off, 0
    lt rx1308_pos, 2, rx1308_start
    sub rx1308_off, rx1308_pos, 1
    substr rx1308_tgt, rx1308_tgt, rx1308_off
  rx1308_start:
    eq $I10, 1, rx1308_restart
    if_null rx1308_debug, debug_1004
    rx1308_cur."!cursor_debug"("START", "infix:sym<gt>")
  debug_1004:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1312_done
    goto rxscan1312_scan
  rxscan1312_loop:
    ($P10) = rx1308_cur."from"()
    inc $P10
    set rx1308_pos, $P10
    ge rx1308_pos, rx1308_eos, rxscan1312_done
  rxscan1312_scan:
    set_addr $I10, rxscan1312_loop
    rx1308_cur."!mark_push"(0, rx1308_pos, $I10)
  rxscan1312_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1313_fail
    rx1308_cur."!mark_push"(0, rx1308_pos, $I10)
  # rx literal  "gt"
    add $I11, rx1308_pos, 2
    gt $I11, rx1308_eos, rx1308_fail
    sub $I11, rx1308_pos, rx1308_off
    substr $S10, rx1308_tgt, $I11, 2
    ne $S10, "gt", rx1308_fail
    add rx1308_pos, 2
    set_addr $I10, rxcap_1313_fail
    ($I12, $I11) = rx1308_cur."!mark_peek"($I10)
    rx1308_cur."!cursor_pos"($I11)
    ($P10) = rx1308_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1308_pos, "")
    rx1308_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1313_done
  rxcap_1313_fail:
    goto rx1308_fail
  rxcap_1313_done:
  # rx subrule "O" subtype=capture negate=
    rx1308_cur."!cursor_pos"(rx1308_pos)
    $P10 = rx1308_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx1308_fail
    rx1308_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1308_pos = $P10."pos"()
  # rx pass
    rx1308_cur."!cursor_pass"(rx1308_pos, "infix:sym<gt>")
    if_null rx1308_debug, debug_1005
    rx1308_cur."!cursor_debug"("PASS", "infix:sym<gt>", " at pos=", rx1308_pos)
  debug_1005:
    .return (rx1308_cur)
  rx1308_restart:
    if_null rx1308_debug, debug_1006
    rx1308_cur."!cursor_debug"("NEXT", "infix:sym<gt>")
  debug_1006:
  rx1308_fail:
    (rx1308_rep, rx1308_pos, $I10, $P10) = rx1308_cur."!mark_fail"(0)
    lt rx1308_pos, -1, rx1308_done
    eq rx1308_pos, -1, rx1308_fail
    jump $I10
  rx1308_done:
    rx1308_cur."!cursor_fail"()
    if_null rx1308_debug, debug_1007
    rx1308_cur."!cursor_debug"("FAIL", "infix:sym<gt>")
  debug_1007:
    .return (rx1308_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("329_1285886565.968") :method
.annotate 'line', 0
    $P1310 = self."!PREFIX__!subrule"("O", "gt")
    new $P1311, "ResizablePMCArray"
    push $P1311, $P1310
    .return ($P1311)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("330_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1315_tgt
    .local int rx1315_pos
    .local int rx1315_off
    .local int rx1315_eos
    .local int rx1315_rep
    .local pmc rx1315_cur
    .local pmc rx1315_debug
    (rx1315_cur, rx1315_pos, rx1315_tgt, $I10) = self."!cursor_start"()
    getattribute rx1315_debug, rx1315_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1315_cur
    .local pmc match
    .lex "$/", match
    length rx1315_eos, rx1315_tgt
    gt rx1315_pos, rx1315_eos, rx1315_done
    set rx1315_off, 0
    lt rx1315_pos, 2, rx1315_start
    sub rx1315_off, rx1315_pos, 1
    substr rx1315_tgt, rx1315_tgt, rx1315_off
  rx1315_start:
    eq $I10, 1, rx1315_restart
    if_null rx1315_debug, debug_1008
    rx1315_cur."!cursor_debug"("START", "infix:sym<=:=>")
  debug_1008:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1319_done
    goto rxscan1319_scan
  rxscan1319_loop:
    ($P10) = rx1315_cur."from"()
    inc $P10
    set rx1315_pos, $P10
    ge rx1315_pos, rx1315_eos, rxscan1319_done
  rxscan1319_scan:
    set_addr $I10, rxscan1319_loop
    rx1315_cur."!mark_push"(0, rx1315_pos, $I10)
  rxscan1319_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1320_fail
    rx1315_cur."!mark_push"(0, rx1315_pos, $I10)
  # rx literal  "=:="
    add $I11, rx1315_pos, 3
    gt $I11, rx1315_eos, rx1315_fail
    sub $I11, rx1315_pos, rx1315_off
    substr $S10, rx1315_tgt, $I11, 3
    ne $S10, "=:=", rx1315_fail
    add rx1315_pos, 3
    set_addr $I10, rxcap_1320_fail
    ($I12, $I11) = rx1315_cur."!mark_peek"($I10)
    rx1315_cur."!cursor_pos"($I11)
    ($P10) = rx1315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1315_pos, "")
    rx1315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1320_done
  rxcap_1320_fail:
    goto rx1315_fail
  rxcap_1320_done:
  # rx subrule "O" subtype=capture negate=
    rx1315_cur."!cursor_pos"(rx1315_pos)
    $P10 = rx1315_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx1315_fail
    rx1315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1315_pos = $P10."pos"()
  # rx pass
    rx1315_cur."!cursor_pass"(rx1315_pos, "infix:sym<=:=>")
    if_null rx1315_debug, debug_1009
    rx1315_cur."!cursor_debug"("PASS", "infix:sym<=:=>", " at pos=", rx1315_pos)
  debug_1009:
    .return (rx1315_cur)
  rx1315_restart:
    if_null rx1315_debug, debug_1010
    rx1315_cur."!cursor_debug"("NEXT", "infix:sym<=:=>")
  debug_1010:
  rx1315_fail:
    (rx1315_rep, rx1315_pos, $I10, $P10) = rx1315_cur."!mark_fail"(0)
    lt rx1315_pos, -1, rx1315_done
    eq rx1315_pos, -1, rx1315_fail
    jump $I10
  rx1315_done:
    rx1315_cur."!cursor_fail"()
    if_null rx1315_debug, debug_1011
    rx1315_cur."!cursor_debug"("FAIL", "infix:sym<=:=>")
  debug_1011:
    .return (rx1315_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("331_1285886565.968") :method
.annotate 'line', 0
    $P1317 = self."!PREFIX__!subrule"("O", "=:=")
    new $P1318, "ResizablePMCArray"
    push $P1318, $P1317
    .return ($P1318)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~~>"  :subid("332_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1322_tgt
    .local int rx1322_pos
    .local int rx1322_off
    .local int rx1322_eos
    .local int rx1322_rep
    .local pmc rx1322_cur
    .local pmc rx1322_debug
    (rx1322_cur, rx1322_pos, rx1322_tgt, $I10) = self."!cursor_start"()
    getattribute rx1322_debug, rx1322_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1322_cur
    .local pmc match
    .lex "$/", match
    length rx1322_eos, rx1322_tgt
    gt rx1322_pos, rx1322_eos, rx1322_done
    set rx1322_off, 0
    lt rx1322_pos, 2, rx1322_start
    sub rx1322_off, rx1322_pos, 1
    substr rx1322_tgt, rx1322_tgt, rx1322_off
  rx1322_start:
    eq $I10, 1, rx1322_restart
    if_null rx1322_debug, debug_1012
    rx1322_cur."!cursor_debug"("START", "infix:sym<~~>")
  debug_1012:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1326_done
    goto rxscan1326_scan
  rxscan1326_loop:
    ($P10) = rx1322_cur."from"()
    inc $P10
    set rx1322_pos, $P10
    ge rx1322_pos, rx1322_eos, rxscan1326_done
  rxscan1326_scan:
    set_addr $I10, rxscan1326_loop
    rx1322_cur."!mark_push"(0, rx1322_pos, $I10)
  rxscan1326_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1327_fail
    rx1322_cur."!mark_push"(0, rx1322_pos, $I10)
  # rx literal  "~~"
    add $I11, rx1322_pos, 2
    gt $I11, rx1322_eos, rx1322_fail
    sub $I11, rx1322_pos, rx1322_off
    substr $S10, rx1322_tgt, $I11, 2
    ne $S10, "~~", rx1322_fail
    add rx1322_pos, 2
    set_addr $I10, rxcap_1327_fail
    ($I12, $I11) = rx1322_cur."!mark_peek"($I10)
    rx1322_cur."!cursor_pos"($I11)
    ($P10) = rx1322_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1322_pos, "")
    rx1322_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1327_done
  rxcap_1327_fail:
    goto rx1322_fail
  rxcap_1327_done:
  # rx subrule "O" subtype=capture negate=
    rx1322_cur."!cursor_pos"(rx1322_pos)
    $P10 = rx1322_cur."O"("%relational, :reducecheck<smartmatch>")
    unless $P10, rx1322_fail
    rx1322_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1322_pos = $P10."pos"()
  # rx pass
    rx1322_cur."!cursor_pass"(rx1322_pos, "infix:sym<~~>")
    if_null rx1322_debug, debug_1013
    rx1322_cur."!cursor_debug"("PASS", "infix:sym<~~>", " at pos=", rx1322_pos)
  debug_1013:
    .return (rx1322_cur)
  rx1322_restart:
    if_null rx1322_debug, debug_1014
    rx1322_cur."!cursor_debug"("NEXT", "infix:sym<~~>")
  debug_1014:
  rx1322_fail:
    (rx1322_rep, rx1322_pos, $I10, $P10) = rx1322_cur."!mark_fail"(0)
    lt rx1322_pos, -1, rx1322_done
    eq rx1322_pos, -1, rx1322_fail
    jump $I10
  rx1322_done:
    rx1322_cur."!cursor_fail"()
    if_null rx1322_debug, debug_1015
    rx1322_cur."!cursor_debug"("FAIL", "infix:sym<~~>")
  debug_1015:
    .return (rx1322_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~~>"  :subid("333_1285886565.968") :method
.annotate 'line', 0
    $P1324 = self."!PREFIX__!subrule"("O", "~~")
    new $P1325, "ResizablePMCArray"
    push $P1325, $P1324
    .return ($P1325)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("334_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1329_tgt
    .local int rx1329_pos
    .local int rx1329_off
    .local int rx1329_eos
    .local int rx1329_rep
    .local pmc rx1329_cur
    .local pmc rx1329_debug
    (rx1329_cur, rx1329_pos, rx1329_tgt, $I10) = self."!cursor_start"()
    getattribute rx1329_debug, rx1329_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1329_cur
    .local pmc match
    .lex "$/", match
    length rx1329_eos, rx1329_tgt
    gt rx1329_pos, rx1329_eos, rx1329_done
    set rx1329_off, 0
    lt rx1329_pos, 2, rx1329_start
    sub rx1329_off, rx1329_pos, 1
    substr rx1329_tgt, rx1329_tgt, rx1329_off
  rx1329_start:
    eq $I10, 1, rx1329_restart
    if_null rx1329_debug, debug_1016
    rx1329_cur."!cursor_debug"("START", "infix:sym<&&>")
  debug_1016:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1333_done
    goto rxscan1333_scan
  rxscan1333_loop:
    ($P10) = rx1329_cur."from"()
    inc $P10
    set rx1329_pos, $P10
    ge rx1329_pos, rx1329_eos, rxscan1333_done
  rxscan1333_scan:
    set_addr $I10, rxscan1333_loop
    rx1329_cur."!mark_push"(0, rx1329_pos, $I10)
  rxscan1333_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1334_fail
    rx1329_cur."!mark_push"(0, rx1329_pos, $I10)
  # rx literal  "&&"
    add $I11, rx1329_pos, 2
    gt $I11, rx1329_eos, rx1329_fail
    sub $I11, rx1329_pos, rx1329_off
    substr $S10, rx1329_tgt, $I11, 2
    ne $S10, "&&", rx1329_fail
    add rx1329_pos, 2
    set_addr $I10, rxcap_1334_fail
    ($I12, $I11) = rx1329_cur."!mark_peek"($I10)
    rx1329_cur."!cursor_pos"($I11)
    ($P10) = rx1329_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1329_pos, "")
    rx1329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1334_done
  rxcap_1334_fail:
    goto rx1329_fail
  rxcap_1334_done:
  # rx subrule "O" subtype=capture negate=
    rx1329_cur."!cursor_pos"(rx1329_pos)
    $P10 = rx1329_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx1329_fail
    rx1329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1329_pos = $P10."pos"()
  # rx pass
    rx1329_cur."!cursor_pass"(rx1329_pos, "infix:sym<&&>")
    if_null rx1329_debug, debug_1017
    rx1329_cur."!cursor_debug"("PASS", "infix:sym<&&>", " at pos=", rx1329_pos)
  debug_1017:
    .return (rx1329_cur)
  rx1329_restart:
    if_null rx1329_debug, debug_1018
    rx1329_cur."!cursor_debug"("NEXT", "infix:sym<&&>")
  debug_1018:
  rx1329_fail:
    (rx1329_rep, rx1329_pos, $I10, $P10) = rx1329_cur."!mark_fail"(0)
    lt rx1329_pos, -1, rx1329_done
    eq rx1329_pos, -1, rx1329_fail
    jump $I10
  rx1329_done:
    rx1329_cur."!cursor_fail"()
    if_null rx1329_debug, debug_1019
    rx1329_cur."!cursor_debug"("FAIL", "infix:sym<&&>")
  debug_1019:
    .return (rx1329_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("335_1285886565.968") :method
.annotate 'line', 0
    $P1331 = self."!PREFIX__!subrule"("O", "&&")
    new $P1332, "ResizablePMCArray"
    push $P1332, $P1331
    .return ($P1332)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("336_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1336_tgt
    .local int rx1336_pos
    .local int rx1336_off
    .local int rx1336_eos
    .local int rx1336_rep
    .local pmc rx1336_cur
    .local pmc rx1336_debug
    (rx1336_cur, rx1336_pos, rx1336_tgt, $I10) = self."!cursor_start"()
    getattribute rx1336_debug, rx1336_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1336_cur
    .local pmc match
    .lex "$/", match
    length rx1336_eos, rx1336_tgt
    gt rx1336_pos, rx1336_eos, rx1336_done
    set rx1336_off, 0
    lt rx1336_pos, 2, rx1336_start
    sub rx1336_off, rx1336_pos, 1
    substr rx1336_tgt, rx1336_tgt, rx1336_off
  rx1336_start:
    eq $I10, 1, rx1336_restart
    if_null rx1336_debug, debug_1020
    rx1336_cur."!cursor_debug"("START", "infix:sym<||>")
  debug_1020:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1340_done
    goto rxscan1340_scan
  rxscan1340_loop:
    ($P10) = rx1336_cur."from"()
    inc $P10
    set rx1336_pos, $P10
    ge rx1336_pos, rx1336_eos, rxscan1340_done
  rxscan1340_scan:
    set_addr $I10, rxscan1340_loop
    rx1336_cur."!mark_push"(0, rx1336_pos, $I10)
  rxscan1340_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1341_fail
    rx1336_cur."!mark_push"(0, rx1336_pos, $I10)
  # rx literal  "||"
    add $I11, rx1336_pos, 2
    gt $I11, rx1336_eos, rx1336_fail
    sub $I11, rx1336_pos, rx1336_off
    substr $S10, rx1336_tgt, $I11, 2
    ne $S10, "||", rx1336_fail
    add rx1336_pos, 2
    set_addr $I10, rxcap_1341_fail
    ($I12, $I11) = rx1336_cur."!mark_peek"($I10)
    rx1336_cur."!cursor_pos"($I11)
    ($P10) = rx1336_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1336_pos, "")
    rx1336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1341_done
  rxcap_1341_fail:
    goto rx1336_fail
  rxcap_1341_done:
  # rx subrule "O" subtype=capture negate=
    rx1336_cur."!cursor_pos"(rx1336_pos)
    $P10 = rx1336_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx1336_fail
    rx1336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1336_pos = $P10."pos"()
  # rx pass
    rx1336_cur."!cursor_pass"(rx1336_pos, "infix:sym<||>")
    if_null rx1336_debug, debug_1021
    rx1336_cur."!cursor_debug"("PASS", "infix:sym<||>", " at pos=", rx1336_pos)
  debug_1021:
    .return (rx1336_cur)
  rx1336_restart:
    if_null rx1336_debug, debug_1022
    rx1336_cur."!cursor_debug"("NEXT", "infix:sym<||>")
  debug_1022:
  rx1336_fail:
    (rx1336_rep, rx1336_pos, $I10, $P10) = rx1336_cur."!mark_fail"(0)
    lt rx1336_pos, -1, rx1336_done
    eq rx1336_pos, -1, rx1336_fail
    jump $I10
  rx1336_done:
    rx1336_cur."!cursor_fail"()
    if_null rx1336_debug, debug_1023
    rx1336_cur."!cursor_debug"("FAIL", "infix:sym<||>")
  debug_1023:
    .return (rx1336_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("337_1285886565.968") :method
.annotate 'line', 0
    $P1338 = self."!PREFIX__!subrule"("O", "||")
    new $P1339, "ResizablePMCArray"
    push $P1339, $P1338
    .return ($P1339)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("338_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1343_tgt
    .local int rx1343_pos
    .local int rx1343_off
    .local int rx1343_eos
    .local int rx1343_rep
    .local pmc rx1343_cur
    .local pmc rx1343_debug
    (rx1343_cur, rx1343_pos, rx1343_tgt, $I10) = self."!cursor_start"()
    getattribute rx1343_debug, rx1343_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1343_cur
    .local pmc match
    .lex "$/", match
    length rx1343_eos, rx1343_tgt
    gt rx1343_pos, rx1343_eos, rx1343_done
    set rx1343_off, 0
    lt rx1343_pos, 2, rx1343_start
    sub rx1343_off, rx1343_pos, 1
    substr rx1343_tgt, rx1343_tgt, rx1343_off
  rx1343_start:
    eq $I10, 1, rx1343_restart
    if_null rx1343_debug, debug_1024
    rx1343_cur."!cursor_debug"("START", "infix:sym<//>")
  debug_1024:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1347_done
    goto rxscan1347_scan
  rxscan1347_loop:
    ($P10) = rx1343_cur."from"()
    inc $P10
    set rx1343_pos, $P10
    ge rx1343_pos, rx1343_eos, rxscan1347_done
  rxscan1347_scan:
    set_addr $I10, rxscan1347_loop
    rx1343_cur."!mark_push"(0, rx1343_pos, $I10)
  rxscan1347_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1348_fail
    rx1343_cur."!mark_push"(0, rx1343_pos, $I10)
  # rx literal  "//"
    add $I11, rx1343_pos, 2
    gt $I11, rx1343_eos, rx1343_fail
    sub $I11, rx1343_pos, rx1343_off
    substr $S10, rx1343_tgt, $I11, 2
    ne $S10, "//", rx1343_fail
    add rx1343_pos, 2
    set_addr $I10, rxcap_1348_fail
    ($I12, $I11) = rx1343_cur."!mark_peek"($I10)
    rx1343_cur."!cursor_pos"($I11)
    ($P10) = rx1343_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1343_pos, "")
    rx1343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1348_done
  rxcap_1348_fail:
    goto rx1343_fail
  rxcap_1348_done:
  # rx subrule "O" subtype=capture negate=
    rx1343_cur."!cursor_pos"(rx1343_pos)
    $P10 = rx1343_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx1343_fail
    rx1343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1343_pos = $P10."pos"()
  # rx pass
    rx1343_cur."!cursor_pass"(rx1343_pos, "infix:sym<//>")
    if_null rx1343_debug, debug_1025
    rx1343_cur."!cursor_debug"("PASS", "infix:sym<//>", " at pos=", rx1343_pos)
  debug_1025:
    .return (rx1343_cur)
  rx1343_restart:
    if_null rx1343_debug, debug_1026
    rx1343_cur."!cursor_debug"("NEXT", "infix:sym<//>")
  debug_1026:
  rx1343_fail:
    (rx1343_rep, rx1343_pos, $I10, $P10) = rx1343_cur."!mark_fail"(0)
    lt rx1343_pos, -1, rx1343_done
    eq rx1343_pos, -1, rx1343_fail
    jump $I10
  rx1343_done:
    rx1343_cur."!cursor_fail"()
    if_null rx1343_debug, debug_1027
    rx1343_cur."!cursor_debug"("FAIL", "infix:sym<//>")
  debug_1027:
    .return (rx1343_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("339_1285886565.968") :method
.annotate 'line', 0
    $P1345 = self."!PREFIX__!subrule"("O", "//")
    new $P1346, "ResizablePMCArray"
    push $P1346, $P1345
    .return ($P1346)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("340_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1350_tgt
    .local int rx1350_pos
    .local int rx1350_off
    .local int rx1350_eos
    .local int rx1350_rep
    .local pmc rx1350_cur
    .local pmc rx1350_debug
    (rx1350_cur, rx1350_pos, rx1350_tgt, $I10) = self."!cursor_start"()
    getattribute rx1350_debug, rx1350_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1350_cur
    .local pmc match
    .lex "$/", match
    length rx1350_eos, rx1350_tgt
    gt rx1350_pos, rx1350_eos, rx1350_done
    set rx1350_off, 0
    lt rx1350_pos, 2, rx1350_start
    sub rx1350_off, rx1350_pos, 1
    substr rx1350_tgt, rx1350_tgt, rx1350_off
  rx1350_start:
    eq $I10, 1, rx1350_restart
    if_null rx1350_debug, debug_1028
    rx1350_cur."!cursor_debug"("START", "infix:sym<?? !!>")
  debug_1028:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1354_done
    goto rxscan1354_scan
  rxscan1354_loop:
    ($P10) = rx1350_cur."from"()
    inc $P10
    set rx1350_pos, $P10
    ge rx1350_pos, rx1350_eos, rxscan1354_done
  rxscan1354_scan:
    set_addr $I10, rxscan1354_loop
    rx1350_cur."!mark_push"(0, rx1350_pos, $I10)
  rxscan1354_done:
  # rx literal  "??"
    add $I11, rx1350_pos, 2
    gt $I11, rx1350_eos, rx1350_fail
    sub $I11, rx1350_pos, rx1350_off
    substr $S10, rx1350_tgt, $I11, 2
    ne $S10, "??", rx1350_fail
    add rx1350_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx1350_cur."!cursor_pos"(rx1350_pos)
    $P10 = rx1350_cur."ws"()
    unless $P10, rx1350_fail
    rx1350_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx1350_cur."!cursor_pos"(rx1350_pos)
    $P10 = rx1350_cur."EXPR"("i=")
    unless $P10, rx1350_fail
    rx1350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1350_pos = $P10."pos"()
  # rx literal  "!!"
    add $I11, rx1350_pos, 2
    gt $I11, rx1350_eos, rx1350_fail
    sub $I11, rx1350_pos, rx1350_off
    substr $S10, rx1350_tgt, $I11, 2
    ne $S10, "!!", rx1350_fail
    add rx1350_pos, 2
  # rx subrule "O" subtype=capture negate=
    rx1350_cur."!cursor_pos"(rx1350_pos)
    $P10 = rx1350_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx1350_fail
    rx1350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1350_pos = $P10."pos"()
  # rx pass
    rx1350_cur."!cursor_pass"(rx1350_pos, "infix:sym<?? !!>")
    if_null rx1350_debug, debug_1029
    rx1350_cur."!cursor_debug"("PASS", "infix:sym<?? !!>", " at pos=", rx1350_pos)
  debug_1029:
    .return (rx1350_cur)
  rx1350_restart:
    if_null rx1350_debug, debug_1030
    rx1350_cur."!cursor_debug"("NEXT", "infix:sym<?? !!>")
  debug_1030:
  rx1350_fail:
    (rx1350_rep, rx1350_pos, $I10, $P10) = rx1350_cur."!mark_fail"(0)
    lt rx1350_pos, -1, rx1350_done
    eq rx1350_pos, -1, rx1350_fail
    jump $I10
  rx1350_done:
    rx1350_cur."!cursor_fail"()
    if_null rx1350_debug, debug_1031
    rx1350_cur."!cursor_debug"("FAIL", "infix:sym<?? !!>")
  debug_1031:
    .return (rx1350_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("341_1285886565.968") :method
.annotate 'line', 0
    $P1352 = self."!PREFIX__!subrule"("ws", "??")
    new $P1353, "ResizablePMCArray"
    push $P1353, $P1352
    .return ($P1353)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("342_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1356_tgt
    .local int rx1356_pos
    .local int rx1356_off
    .local int rx1356_eos
    .local int rx1356_rep
    .local pmc rx1356_cur
    .local pmc rx1356_debug
    (rx1356_cur, rx1356_pos, rx1356_tgt, $I10) = self."!cursor_start"()
    getattribute rx1356_debug, rx1356_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1356_cur
    .local pmc match
    .lex "$/", match
    length rx1356_eos, rx1356_tgt
    gt rx1356_pos, rx1356_eos, rx1356_done
    set rx1356_off, 0
    lt rx1356_pos, 2, rx1356_start
    sub rx1356_off, rx1356_pos, 1
    substr rx1356_tgt, rx1356_tgt, rx1356_off
  rx1356_start:
    eq $I10, 1, rx1356_restart
    if_null rx1356_debug, debug_1032
    rx1356_cur."!cursor_debug"("START", "infix:sym<=>")
  debug_1032:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1360_done
    goto rxscan1360_scan
  rxscan1360_loop:
    ($P10) = rx1356_cur."from"()
    inc $P10
    set rx1356_pos, $P10
    ge rx1356_pos, rx1356_eos, rxscan1360_done
  rxscan1360_scan:
    set_addr $I10, rxscan1360_loop
    rx1356_cur."!mark_push"(0, rx1356_pos, $I10)
  rxscan1360_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1361_fail
    rx1356_cur."!mark_push"(0, rx1356_pos, $I10)
  # rx literal  "="
    add $I11, rx1356_pos, 1
    gt $I11, rx1356_eos, rx1356_fail
    sub $I11, rx1356_pos, rx1356_off
    ord $I11, rx1356_tgt, $I11
    ne $I11, 61, rx1356_fail
    add rx1356_pos, 1
    set_addr $I10, rxcap_1361_fail
    ($I12, $I11) = rx1356_cur."!mark_peek"($I10)
    rx1356_cur."!cursor_pos"($I11)
    ($P10) = rx1356_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1356_pos, "")
    rx1356_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1361_done
  rxcap_1361_fail:
    goto rx1356_fail
  rxcap_1361_done:
  # rx subrule "panic" subtype=method negate=
    rx1356_cur."!cursor_pos"(rx1356_pos)
    $P10 = rx1356_cur."panic"("Assignment (\"=\") not supported in NQP, use \":=\" instead")
    unless $P10, rx1356_fail
    rx1356_pos = $P10."pos"()
  # rx pass
    rx1356_cur."!cursor_pass"(rx1356_pos, "infix:sym<=>")
    if_null rx1356_debug, debug_1033
    rx1356_cur."!cursor_debug"("PASS", "infix:sym<=>", " at pos=", rx1356_pos)
  debug_1033:
    .return (rx1356_cur)
  rx1356_restart:
    if_null rx1356_debug, debug_1034
    rx1356_cur."!cursor_debug"("NEXT", "infix:sym<=>")
  debug_1034:
  rx1356_fail:
    (rx1356_rep, rx1356_pos, $I10, $P10) = rx1356_cur."!mark_fail"(0)
    lt rx1356_pos, -1, rx1356_done
    eq rx1356_pos, -1, rx1356_fail
    jump $I10
  rx1356_done:
    rx1356_cur."!cursor_fail"()
    if_null rx1356_debug, debug_1035
    rx1356_cur."!cursor_debug"("FAIL", "infix:sym<=>")
  debug_1035:
    .return (rx1356_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=>"  :subid("343_1285886565.968") :method
.annotate 'line', 0
    $P1358 = self."!PREFIX__!subrule"("panic", "=")
    new $P1359, "ResizablePMCArray"
    push $P1359, $P1358
    .return ($P1359)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("344_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1363_tgt
    .local int rx1363_pos
    .local int rx1363_off
    .local int rx1363_eos
    .local int rx1363_rep
    .local pmc rx1363_cur
    .local pmc rx1363_debug
    (rx1363_cur, rx1363_pos, rx1363_tgt, $I10) = self."!cursor_start"()
    getattribute rx1363_debug, rx1363_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1363_cur
    .local pmc match
    .lex "$/", match
    length rx1363_eos, rx1363_tgt
    gt rx1363_pos, rx1363_eos, rx1363_done
    set rx1363_off, 0
    lt rx1363_pos, 2, rx1363_start
    sub rx1363_off, rx1363_pos, 1
    substr rx1363_tgt, rx1363_tgt, rx1363_off
  rx1363_start:
    eq $I10, 1, rx1363_restart
    if_null rx1363_debug, debug_1036
    rx1363_cur."!cursor_debug"("START", "infix:sym<:=>")
  debug_1036:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1367_done
    goto rxscan1367_scan
  rxscan1367_loop:
    ($P10) = rx1363_cur."from"()
    inc $P10
    set rx1363_pos, $P10
    ge rx1363_pos, rx1363_eos, rxscan1367_done
  rxscan1367_scan:
    set_addr $I10, rxscan1367_loop
    rx1363_cur."!mark_push"(0, rx1363_pos, $I10)
  rxscan1367_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1368_fail
    rx1363_cur."!mark_push"(0, rx1363_pos, $I10)
  # rx literal  ":="
    add $I11, rx1363_pos, 2
    gt $I11, rx1363_eos, rx1363_fail
    sub $I11, rx1363_pos, rx1363_off
    substr $S10, rx1363_tgt, $I11, 2
    ne $S10, ":=", rx1363_fail
    add rx1363_pos, 2
    set_addr $I10, rxcap_1368_fail
    ($I12, $I11) = rx1363_cur."!mark_peek"($I10)
    rx1363_cur."!cursor_pos"($I11)
    ($P10) = rx1363_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1363_pos, "")
    rx1363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1368_done
  rxcap_1368_fail:
    goto rx1363_fail
  rxcap_1368_done:
  # rx subrule "O" subtype=capture negate=
    rx1363_cur."!cursor_pos"(rx1363_pos)
    $P10 = rx1363_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1363_fail
    rx1363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1363_pos = $P10."pos"()
  # rx pass
    rx1363_cur."!cursor_pass"(rx1363_pos, "infix:sym<:=>")
    if_null rx1363_debug, debug_1037
    rx1363_cur."!cursor_debug"("PASS", "infix:sym<:=>", " at pos=", rx1363_pos)
  debug_1037:
    .return (rx1363_cur)
  rx1363_restart:
    if_null rx1363_debug, debug_1038
    rx1363_cur."!cursor_debug"("NEXT", "infix:sym<:=>")
  debug_1038:
  rx1363_fail:
    (rx1363_rep, rx1363_pos, $I10, $P10) = rx1363_cur."!mark_fail"(0)
    lt rx1363_pos, -1, rx1363_done
    eq rx1363_pos, -1, rx1363_fail
    jump $I10
  rx1363_done:
    rx1363_cur."!cursor_fail"()
    if_null rx1363_debug, debug_1039
    rx1363_cur."!cursor_debug"("FAIL", "infix:sym<:=>")
  debug_1039:
    .return (rx1363_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("345_1285886565.968") :method
.annotate 'line', 0
    $P1365 = self."!PREFIX__!subrule"("O", ":=")
    new $P1366, "ResizablePMCArray"
    push $P1366, $P1365
    .return ($P1366)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("346_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1370_tgt
    .local int rx1370_pos
    .local int rx1370_off
    .local int rx1370_eos
    .local int rx1370_rep
    .local pmc rx1370_cur
    .local pmc rx1370_debug
    (rx1370_cur, rx1370_pos, rx1370_tgt, $I10) = self."!cursor_start"()
    getattribute rx1370_debug, rx1370_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1370_cur
    .local pmc match
    .lex "$/", match
    length rx1370_eos, rx1370_tgt
    gt rx1370_pos, rx1370_eos, rx1370_done
    set rx1370_off, 0
    lt rx1370_pos, 2, rx1370_start
    sub rx1370_off, rx1370_pos, 1
    substr rx1370_tgt, rx1370_tgt, rx1370_off
  rx1370_start:
    eq $I10, 1, rx1370_restart
    if_null rx1370_debug, debug_1040
    rx1370_cur."!cursor_debug"("START", "infix:sym<::=>")
  debug_1040:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1374_done
    goto rxscan1374_scan
  rxscan1374_loop:
    ($P10) = rx1370_cur."from"()
    inc $P10
    set rx1370_pos, $P10
    ge rx1370_pos, rx1370_eos, rxscan1374_done
  rxscan1374_scan:
    set_addr $I10, rxscan1374_loop
    rx1370_cur."!mark_push"(0, rx1370_pos, $I10)
  rxscan1374_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1375_fail
    rx1370_cur."!mark_push"(0, rx1370_pos, $I10)
  # rx literal  "::="
    add $I11, rx1370_pos, 3
    gt $I11, rx1370_eos, rx1370_fail
    sub $I11, rx1370_pos, rx1370_off
    substr $S10, rx1370_tgt, $I11, 3
    ne $S10, "::=", rx1370_fail
    add rx1370_pos, 3
    set_addr $I10, rxcap_1375_fail
    ($I12, $I11) = rx1370_cur."!mark_peek"($I10)
    rx1370_cur."!cursor_pos"($I11)
    ($P10) = rx1370_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1370_pos, "")
    rx1370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1375_done
  rxcap_1375_fail:
    goto rx1370_fail
  rxcap_1375_done:
  # rx subrule "O" subtype=capture negate=
    rx1370_cur."!cursor_pos"(rx1370_pos)
    $P10 = rx1370_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1370_fail
    rx1370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1370_pos = $P10."pos"()
  # rx pass
    rx1370_cur."!cursor_pass"(rx1370_pos, "infix:sym<::=>")
    if_null rx1370_debug, debug_1041
    rx1370_cur."!cursor_debug"("PASS", "infix:sym<::=>", " at pos=", rx1370_pos)
  debug_1041:
    .return (rx1370_cur)
  rx1370_restart:
    if_null rx1370_debug, debug_1042
    rx1370_cur."!cursor_debug"("NEXT", "infix:sym<::=>")
  debug_1042:
  rx1370_fail:
    (rx1370_rep, rx1370_pos, $I10, $P10) = rx1370_cur."!mark_fail"(0)
    lt rx1370_pos, -1, rx1370_done
    eq rx1370_pos, -1, rx1370_fail
    jump $I10
  rx1370_done:
    rx1370_cur."!cursor_fail"()
    if_null rx1370_debug, debug_1043
    rx1370_cur."!cursor_debug"("FAIL", "infix:sym<::=>")
  debug_1043:
    .return (rx1370_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("347_1285886565.968") :method
.annotate 'line', 0
    $P1372 = self."!PREFIX__!subrule"("O", "::=")
    new $P1373, "ResizablePMCArray"
    push $P1373, $P1372
    .return ($P1373)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("348_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1377_tgt
    .local int rx1377_pos
    .local int rx1377_off
    .local int rx1377_eos
    .local int rx1377_rep
    .local pmc rx1377_cur
    .local pmc rx1377_debug
    (rx1377_cur, rx1377_pos, rx1377_tgt, $I10) = self."!cursor_start"()
    getattribute rx1377_debug, rx1377_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1377_cur
    .local pmc match
    .lex "$/", match
    length rx1377_eos, rx1377_tgt
    gt rx1377_pos, rx1377_eos, rx1377_done
    set rx1377_off, 0
    lt rx1377_pos, 2, rx1377_start
    sub rx1377_off, rx1377_pos, 1
    substr rx1377_tgt, rx1377_tgt, rx1377_off
  rx1377_start:
    eq $I10, 1, rx1377_restart
    if_null rx1377_debug, debug_1044
    rx1377_cur."!cursor_debug"("START", "infix:sym<,>")
  debug_1044:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1381_done
    goto rxscan1381_scan
  rxscan1381_loop:
    ($P10) = rx1377_cur."from"()
    inc $P10
    set rx1377_pos, $P10
    ge rx1377_pos, rx1377_eos, rxscan1381_done
  rxscan1381_scan:
    set_addr $I10, rxscan1381_loop
    rx1377_cur."!mark_push"(0, rx1377_pos, $I10)
  rxscan1381_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1382_fail
    rx1377_cur."!mark_push"(0, rx1377_pos, $I10)
  # rx literal  ","
    add $I11, rx1377_pos, 1
    gt $I11, rx1377_eos, rx1377_fail
    sub $I11, rx1377_pos, rx1377_off
    ord $I11, rx1377_tgt, $I11
    ne $I11, 44, rx1377_fail
    add rx1377_pos, 1
    set_addr $I10, rxcap_1382_fail
    ($I12, $I11) = rx1377_cur."!mark_peek"($I10)
    rx1377_cur."!cursor_pos"($I11)
    ($P10) = rx1377_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1377_pos, "")
    rx1377_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1382_done
  rxcap_1382_fail:
    goto rx1377_fail
  rxcap_1382_done:
  # rx subrule "O" subtype=capture negate=
    rx1377_cur."!cursor_pos"(rx1377_pos)
    $P10 = rx1377_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx1377_fail
    rx1377_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1377_pos = $P10."pos"()
  # rx pass
    rx1377_cur."!cursor_pass"(rx1377_pos, "infix:sym<,>")
    if_null rx1377_debug, debug_1045
    rx1377_cur."!cursor_debug"("PASS", "infix:sym<,>", " at pos=", rx1377_pos)
  debug_1045:
    .return (rx1377_cur)
  rx1377_restart:
    if_null rx1377_debug, debug_1046
    rx1377_cur."!cursor_debug"("NEXT", "infix:sym<,>")
  debug_1046:
  rx1377_fail:
    (rx1377_rep, rx1377_pos, $I10, $P10) = rx1377_cur."!mark_fail"(0)
    lt rx1377_pos, -1, rx1377_done
    eq rx1377_pos, -1, rx1377_fail
    jump $I10
  rx1377_done:
    rx1377_cur."!cursor_fail"()
    if_null rx1377_debug, debug_1047
    rx1377_cur."!cursor_debug"("FAIL", "infix:sym<,>")
  debug_1047:
    .return (rx1377_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("349_1285886565.968") :method
.annotate 'line', 0
    $P1379 = self."!PREFIX__!subrule"("O", ",")
    new $P1380, "ResizablePMCArray"
    push $P1380, $P1379
    .return ($P1380)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<return>"  :subid("350_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1384_tgt
    .local int rx1384_pos
    .local int rx1384_off
    .local int rx1384_eos
    .local int rx1384_rep
    .local pmc rx1384_cur
    .local pmc rx1384_debug
    (rx1384_cur, rx1384_pos, rx1384_tgt, $I10) = self."!cursor_start"()
    getattribute rx1384_debug, rx1384_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1384_cur
    .local pmc match
    .lex "$/", match
    length rx1384_eos, rx1384_tgt
    gt rx1384_pos, rx1384_eos, rx1384_done
    set rx1384_off, 0
    lt rx1384_pos, 2, rx1384_start
    sub rx1384_off, rx1384_pos, 1
    substr rx1384_tgt, rx1384_tgt, rx1384_off
  rx1384_start:
    eq $I10, 1, rx1384_restart
    if_null rx1384_debug, debug_1048
    rx1384_cur."!cursor_debug"("START", "prefix:sym<return>")
  debug_1048:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1387_done
    goto rxscan1387_scan
  rxscan1387_loop:
    ($P10) = rx1384_cur."from"()
    inc $P10
    set rx1384_pos, $P10
    ge rx1384_pos, rx1384_eos, rxscan1387_done
  rxscan1387_scan:
    set_addr $I10, rxscan1387_loop
    rx1384_cur."!mark_push"(0, rx1384_pos, $I10)
  rxscan1387_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1388_fail
    rx1384_cur."!mark_push"(0, rx1384_pos, $I10)
  # rx literal  "return"
    add $I11, rx1384_pos, 6
    gt $I11, rx1384_eos, rx1384_fail
    sub $I11, rx1384_pos, rx1384_off
    substr $S10, rx1384_tgt, $I11, 6
    ne $S10, "return", rx1384_fail
    add rx1384_pos, 6
    set_addr $I10, rxcap_1388_fail
    ($I12, $I11) = rx1384_cur."!mark_peek"($I10)
    rx1384_cur."!cursor_pos"($I11)
    ($P10) = rx1384_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1384_pos, "")
    rx1384_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1388_done
  rxcap_1388_fail:
    goto rx1384_fail
  rxcap_1388_done:
  # rx charclass s
    ge rx1384_pos, rx1384_eos, rx1384_fail
    sub $I10, rx1384_pos, rx1384_off
    is_cclass $I11, 32, rx1384_tgt, $I10
    unless $I11, rx1384_fail
    inc rx1384_pos
  # rx subrule "O" subtype=capture negate=
    rx1384_cur."!cursor_pos"(rx1384_pos)
    $P10 = rx1384_cur."O"("%list_prefix, :pasttype<return>")
    unless $P10, rx1384_fail
    rx1384_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1384_pos = $P10."pos"()
  # rx pass
    rx1384_cur."!cursor_pass"(rx1384_pos, "prefix:sym<return>")
    if_null rx1384_debug, debug_1049
    rx1384_cur."!cursor_debug"("PASS", "prefix:sym<return>", " at pos=", rx1384_pos)
  debug_1049:
    .return (rx1384_cur)
  rx1384_restart:
    if_null rx1384_debug, debug_1050
    rx1384_cur."!cursor_debug"("NEXT", "prefix:sym<return>")
  debug_1050:
  rx1384_fail:
    (rx1384_rep, rx1384_pos, $I10, $P10) = rx1384_cur."!mark_fail"(0)
    lt rx1384_pos, -1, rx1384_done
    eq rx1384_pos, -1, rx1384_fail
    jump $I10
  rx1384_done:
    rx1384_cur."!cursor_fail"()
    if_null rx1384_debug, debug_1051
    rx1384_cur."!cursor_debug"("FAIL", "prefix:sym<return>")
  debug_1051:
    .return (rx1384_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<return>"  :subid("351_1285886565.968") :method
.annotate 'line', 0
    new $P1386, "ResizablePMCArray"
    push $P1386, "return"
    .return ($P1386)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<make>"  :subid("352_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1390_tgt
    .local int rx1390_pos
    .local int rx1390_off
    .local int rx1390_eos
    .local int rx1390_rep
    .local pmc rx1390_cur
    .local pmc rx1390_debug
    (rx1390_cur, rx1390_pos, rx1390_tgt, $I10) = self."!cursor_start"()
    getattribute rx1390_debug, rx1390_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1390_cur
    .local pmc match
    .lex "$/", match
    length rx1390_eos, rx1390_tgt
    gt rx1390_pos, rx1390_eos, rx1390_done
    set rx1390_off, 0
    lt rx1390_pos, 2, rx1390_start
    sub rx1390_off, rx1390_pos, 1
    substr rx1390_tgt, rx1390_tgt, rx1390_off
  rx1390_start:
    eq $I10, 1, rx1390_restart
    if_null rx1390_debug, debug_1052
    rx1390_cur."!cursor_debug"("START", "prefix:sym<make>")
  debug_1052:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1393_done
    goto rxscan1393_scan
  rxscan1393_loop:
    ($P10) = rx1390_cur."from"()
    inc $P10
    set rx1390_pos, $P10
    ge rx1390_pos, rx1390_eos, rxscan1393_done
  rxscan1393_scan:
    set_addr $I10, rxscan1393_loop
    rx1390_cur."!mark_push"(0, rx1390_pos, $I10)
  rxscan1393_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1394_fail
    rx1390_cur."!mark_push"(0, rx1390_pos, $I10)
  # rx literal  "make"
    add $I11, rx1390_pos, 4
    gt $I11, rx1390_eos, rx1390_fail
    sub $I11, rx1390_pos, rx1390_off
    substr $S10, rx1390_tgt, $I11, 4
    ne $S10, "make", rx1390_fail
    add rx1390_pos, 4
    set_addr $I10, rxcap_1394_fail
    ($I12, $I11) = rx1390_cur."!mark_peek"($I10)
    rx1390_cur."!cursor_pos"($I11)
    ($P10) = rx1390_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1390_pos, "")
    rx1390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1394_done
  rxcap_1394_fail:
    goto rx1390_fail
  rxcap_1394_done:
  # rx charclass s
    ge rx1390_pos, rx1390_eos, rx1390_fail
    sub $I10, rx1390_pos, rx1390_off
    is_cclass $I11, 32, rx1390_tgt, $I10
    unless $I11, rx1390_fail
    inc rx1390_pos
  # rx subrule "O" subtype=capture negate=
    rx1390_cur."!cursor_pos"(rx1390_pos)
    $P10 = rx1390_cur."O"("%list_prefix")
    unless $P10, rx1390_fail
    rx1390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1390_pos = $P10."pos"()
  # rx pass
    rx1390_cur."!cursor_pass"(rx1390_pos, "prefix:sym<make>")
    if_null rx1390_debug, debug_1053
    rx1390_cur."!cursor_debug"("PASS", "prefix:sym<make>", " at pos=", rx1390_pos)
  debug_1053:
    .return (rx1390_cur)
  rx1390_restart:
    if_null rx1390_debug, debug_1054
    rx1390_cur."!cursor_debug"("NEXT", "prefix:sym<make>")
  debug_1054:
  rx1390_fail:
    (rx1390_rep, rx1390_pos, $I10, $P10) = rx1390_cur."!mark_fail"(0)
    lt rx1390_pos, -1, rx1390_done
    eq rx1390_pos, -1, rx1390_fail
    jump $I10
  rx1390_done:
    rx1390_cur."!cursor_fail"()
    if_null rx1390_debug, debug_1055
    rx1390_cur."!cursor_debug"("FAIL", "prefix:sym<make>")
  debug_1055:
    .return (rx1390_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<make>"  :subid("353_1285886565.968") :method
.annotate 'line', 0
    new $P1392, "ResizablePMCArray"
    push $P1392, "make"
    .return ($P1392)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<last>"  :subid("354_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1396_tgt
    .local int rx1396_pos
    .local int rx1396_off
    .local int rx1396_eos
    .local int rx1396_rep
    .local pmc rx1396_cur
    .local pmc rx1396_debug
    (rx1396_cur, rx1396_pos, rx1396_tgt, $I10) = self."!cursor_start"()
    getattribute rx1396_debug, rx1396_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1396_cur
    .local pmc match
    .lex "$/", match
    length rx1396_eos, rx1396_tgt
    gt rx1396_pos, rx1396_eos, rx1396_done
    set rx1396_off, 0
    lt rx1396_pos, 2, rx1396_start
    sub rx1396_off, rx1396_pos, 1
    substr rx1396_tgt, rx1396_tgt, rx1396_off
  rx1396_start:
    eq $I10, 1, rx1396_restart
    if_null rx1396_debug, debug_1056
    rx1396_cur."!cursor_debug"("START", "term:sym<last>")
  debug_1056:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1399_done
    goto rxscan1399_scan
  rxscan1399_loop:
    ($P10) = rx1396_cur."from"()
    inc $P10
    set rx1396_pos, $P10
    ge rx1396_pos, rx1396_eos, rxscan1399_done
  rxscan1399_scan:
    set_addr $I10, rxscan1399_loop
    rx1396_cur."!mark_push"(0, rx1396_pos, $I10)
  rxscan1399_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1400_fail
    rx1396_cur."!mark_push"(0, rx1396_pos, $I10)
  # rx literal  "last"
    add $I11, rx1396_pos, 4
    gt $I11, rx1396_eos, rx1396_fail
    sub $I11, rx1396_pos, rx1396_off
    substr $S10, rx1396_tgt, $I11, 4
    ne $S10, "last", rx1396_fail
    add rx1396_pos, 4
    set_addr $I10, rxcap_1400_fail
    ($I12, $I11) = rx1396_cur."!mark_peek"($I10)
    rx1396_cur."!cursor_pos"($I11)
    ($P10) = rx1396_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1396_pos, "")
    rx1396_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1400_done
  rxcap_1400_fail:
    goto rx1396_fail
  rxcap_1400_done:
  # rx pass
    rx1396_cur."!cursor_pass"(rx1396_pos, "term:sym<last>")
    if_null rx1396_debug, debug_1057
    rx1396_cur."!cursor_debug"("PASS", "term:sym<last>", " at pos=", rx1396_pos)
  debug_1057:
    .return (rx1396_cur)
  rx1396_restart:
    if_null rx1396_debug, debug_1058
    rx1396_cur."!cursor_debug"("NEXT", "term:sym<last>")
  debug_1058:
  rx1396_fail:
    (rx1396_rep, rx1396_pos, $I10, $P10) = rx1396_cur."!mark_fail"(0)
    lt rx1396_pos, -1, rx1396_done
    eq rx1396_pos, -1, rx1396_fail
    jump $I10
  rx1396_done:
    rx1396_cur."!cursor_fail"()
    if_null rx1396_debug, debug_1059
    rx1396_cur."!cursor_debug"("FAIL", "term:sym<last>")
  debug_1059:
    .return (rx1396_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<last>"  :subid("355_1285886565.968") :method
.annotate 'line', 0
    new $P1398, "ResizablePMCArray"
    push $P1398, "last"
    .return ($P1398)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<next>"  :subid("356_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1402_tgt
    .local int rx1402_pos
    .local int rx1402_off
    .local int rx1402_eos
    .local int rx1402_rep
    .local pmc rx1402_cur
    .local pmc rx1402_debug
    (rx1402_cur, rx1402_pos, rx1402_tgt, $I10) = self."!cursor_start"()
    getattribute rx1402_debug, rx1402_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1402_cur
    .local pmc match
    .lex "$/", match
    length rx1402_eos, rx1402_tgt
    gt rx1402_pos, rx1402_eos, rx1402_done
    set rx1402_off, 0
    lt rx1402_pos, 2, rx1402_start
    sub rx1402_off, rx1402_pos, 1
    substr rx1402_tgt, rx1402_tgt, rx1402_off
  rx1402_start:
    eq $I10, 1, rx1402_restart
    if_null rx1402_debug, debug_1060
    rx1402_cur."!cursor_debug"("START", "term:sym<next>")
  debug_1060:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1405_done
    goto rxscan1405_scan
  rxscan1405_loop:
    ($P10) = rx1402_cur."from"()
    inc $P10
    set rx1402_pos, $P10
    ge rx1402_pos, rx1402_eos, rxscan1405_done
  rxscan1405_scan:
    set_addr $I10, rxscan1405_loop
    rx1402_cur."!mark_push"(0, rx1402_pos, $I10)
  rxscan1405_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1406_fail
    rx1402_cur."!mark_push"(0, rx1402_pos, $I10)
  # rx literal  "next"
    add $I11, rx1402_pos, 4
    gt $I11, rx1402_eos, rx1402_fail
    sub $I11, rx1402_pos, rx1402_off
    substr $S10, rx1402_tgt, $I11, 4
    ne $S10, "next", rx1402_fail
    add rx1402_pos, 4
    set_addr $I10, rxcap_1406_fail
    ($I12, $I11) = rx1402_cur."!mark_peek"($I10)
    rx1402_cur."!cursor_pos"($I11)
    ($P10) = rx1402_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1402_pos, "")
    rx1402_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1406_done
  rxcap_1406_fail:
    goto rx1402_fail
  rxcap_1406_done:
  # rx pass
    rx1402_cur."!cursor_pass"(rx1402_pos, "term:sym<next>")
    if_null rx1402_debug, debug_1061
    rx1402_cur."!cursor_debug"("PASS", "term:sym<next>", " at pos=", rx1402_pos)
  debug_1061:
    .return (rx1402_cur)
  rx1402_restart:
    if_null rx1402_debug, debug_1062
    rx1402_cur."!cursor_debug"("NEXT", "term:sym<next>")
  debug_1062:
  rx1402_fail:
    (rx1402_rep, rx1402_pos, $I10, $P10) = rx1402_cur."!mark_fail"(0)
    lt rx1402_pos, -1, rx1402_done
    eq rx1402_pos, -1, rx1402_fail
    jump $I10
  rx1402_done:
    rx1402_cur."!cursor_fail"()
    if_null rx1402_debug, debug_1063
    rx1402_cur."!cursor_debug"("FAIL", "term:sym<next>")
  debug_1063:
    .return (rx1402_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<next>"  :subid("357_1285886565.968") :method
.annotate 'line', 0
    new $P1404, "ResizablePMCArray"
    push $P1404, "next"
    .return ($P1404)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<redo>"  :subid("358_1285886565.968") :method :outer("11_1285886565.968")
.annotate 'line', 0
    .local string rx1408_tgt
    .local int rx1408_pos
    .local int rx1408_off
    .local int rx1408_eos
    .local int rx1408_rep
    .local pmc rx1408_cur
    .local pmc rx1408_debug
    (rx1408_cur, rx1408_pos, rx1408_tgt, $I10) = self."!cursor_start"()
    getattribute rx1408_debug, rx1408_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1408_cur
    .local pmc match
    .lex "$/", match
    length rx1408_eos, rx1408_tgt
    gt rx1408_pos, rx1408_eos, rx1408_done
    set rx1408_off, 0
    lt rx1408_pos, 2, rx1408_start
    sub rx1408_off, rx1408_pos, 1
    substr rx1408_tgt, rx1408_tgt, rx1408_off
  rx1408_start:
    eq $I10, 1, rx1408_restart
    if_null rx1408_debug, debug_1064
    rx1408_cur."!cursor_debug"("START", "term:sym<redo>")
  debug_1064:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1411_done
    goto rxscan1411_scan
  rxscan1411_loop:
    ($P10) = rx1408_cur."from"()
    inc $P10
    set rx1408_pos, $P10
    ge rx1408_pos, rx1408_eos, rxscan1411_done
  rxscan1411_scan:
    set_addr $I10, rxscan1411_loop
    rx1408_cur."!mark_push"(0, rx1408_pos, $I10)
  rxscan1411_done:
  # rx subcapture "sym"
    set_addr $I10, rxcap_1412_fail
    rx1408_cur."!mark_push"(0, rx1408_pos, $I10)
  # rx literal  "redo"
    add $I11, rx1408_pos, 4
    gt $I11, rx1408_eos, rx1408_fail
    sub $I11, rx1408_pos, rx1408_off
    substr $S10, rx1408_tgt, $I11, 4
    ne $S10, "redo", rx1408_fail
    add rx1408_pos, 4
    set_addr $I10, rxcap_1412_fail
    ($I12, $I11) = rx1408_cur."!mark_peek"($I10)
    rx1408_cur."!cursor_pos"($I11)
    ($P10) = rx1408_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1408_pos, "")
    rx1408_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1412_done
  rxcap_1412_fail:
    goto rx1408_fail
  rxcap_1412_done:
  # rx pass
    rx1408_cur."!cursor_pass"(rx1408_pos, "term:sym<redo>")
    if_null rx1408_debug, debug_1065
    rx1408_cur."!cursor_debug"("PASS", "term:sym<redo>", " at pos=", rx1408_pos)
  debug_1065:
    .return (rx1408_cur)
  rx1408_restart:
    if_null rx1408_debug, debug_1066
    rx1408_cur."!cursor_debug"("NEXT", "term:sym<redo>")
  debug_1066:
  rx1408_fail:
    (rx1408_rep, rx1408_pos, $I10, $P10) = rx1408_cur."!mark_fail"(0)
    lt rx1408_pos, -1, rx1408_done
    eq rx1408_pos, -1, rx1408_fail
    jump $I10
  rx1408_done:
    rx1408_cur."!cursor_fail"()
    if_null rx1408_debug, debug_1067
    rx1408_cur."!cursor_debug"("FAIL", "term:sym<redo>")
  debug_1067:
    .return (rx1408_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<redo>"  :subid("359_1285886565.968") :method
.annotate 'line', 0
    new $P1410, "ResizablePMCArray"
    push $P1410, "redo"
    .return ($P1410)
.end


.namespace ["NQP";"Grammar"]
.include "except_types.pasm"
.sub "smartmatch"  :subid("360_1285886565.968") :method :outer("11_1285886565.968")
    .param pmc param_1416
.annotate 'line', 0
    new $P1415, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1415, control_1414
    push_eh $P1415
    .lex "self", self
    .lex "$/", param_1416
    new $P1417, "Undef"
    .lex "$t", $P1417
    find_lex $P1418, "$/"
    unless_null $P1418, vivify_1068
    $P1418 = root_new ['parrot';'ResizablePMCArray']
  vivify_1068:
    set $P1419, $P1418[0]
    unless_null $P1419, vivify_1069
    new $P1419, "Undef"
  vivify_1069:
    store_lex "$t", $P1419
    find_lex $P1420, "$/"
    unless_null $P1420, vivify_1070
    $P1420 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    set $P1421, $P1420[1]
    unless_null $P1421, vivify_1071
    new $P1421, "Undef"
  vivify_1071:
    find_lex $P1422, "$/"
    unless_null $P1422, vivify_1072
    $P1422 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$/", $P1422
  vivify_1072:
    set $P1422[0], $P1421
    find_lex $P1423, "$t"
    find_lex $P1424, "$/"
    unless_null $P1424, vivify_1073
    $P1424 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$/", $P1424
  vivify_1073:
    set $P1424[1], $P1423
    .return ($P1423)
  control_1414:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1425, exception, "payload"
    .return ($P1425)
.end


.namespace ["NQP";"Regex"]
.sub "_block1426"  :subid("361_1285886565.968") :outer("11_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P1483 = "380_1285886565.968" 
    capture_lex $P1483
    .const 'Sub' $P1478 = "378_1285886565.968" 
    capture_lex $P1478
    .const 'Sub' $P1466 = "375_1285886565.968" 
    capture_lex $P1466
    .const 'Sub' $P1456 = "372_1285886565.968" 
    capture_lex $P1456
    .const 'Sub' $P1451 = "370_1285886565.968" 
    capture_lex $P1451
    .const 'Sub' $P1442 = "367_1285886565.968" 
    capture_lex $P1442
    .const 'Sub' $P1437 = "365_1285886565.968" 
    capture_lex $P1437
    .const 'Sub' $P1428 = "362_1285886565.968" 
    capture_lex $P1428
    .const 'Sub' $P1483 = "380_1285886565.968" 
    capture_lex $P1483
    .return ($P1483)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("362_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P1434 = "364_1285886565.968" 
    capture_lex $P1434
    .local string rx1429_tgt
    .local int rx1429_pos
    .local int rx1429_off
    .local int rx1429_eos
    .local int rx1429_rep
    .local pmc rx1429_cur
    .local pmc rx1429_debug
    (rx1429_cur, rx1429_pos, rx1429_tgt, $I10) = self."!cursor_start"()
    getattribute rx1429_debug, rx1429_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1429_cur
    .local pmc match
    .lex "$/", match
    length rx1429_eos, rx1429_tgt
    gt rx1429_pos, rx1429_eos, rx1429_done
    set rx1429_off, 0
    lt rx1429_pos, 2, rx1429_start
    sub rx1429_off, rx1429_pos, 1
    substr rx1429_tgt, rx1429_tgt, rx1429_off
  rx1429_start:
    eq $I10, 1, rx1429_restart
    if_null rx1429_debug, debug_1074
    rx1429_cur."!cursor_debug"("START", "metachar:sym<:my>")
  debug_1074:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1432_done
    goto rxscan1432_scan
  rxscan1432_loop:
    ($P10) = rx1429_cur."from"()
    inc $P10
    set rx1429_pos, $P10
    ge rx1429_pos, rx1429_eos, rxscan1432_done
  rxscan1432_scan:
    set_addr $I10, rxscan1432_loop
    rx1429_cur."!mark_push"(0, rx1429_pos, $I10)
  rxscan1432_done:
  # rx literal  ":"
    add $I11, rx1429_pos, 1
    gt $I11, rx1429_eos, rx1429_fail
    sub $I11, rx1429_pos, rx1429_off
    ord $I11, rx1429_tgt, $I11
    ne $I11, 58, rx1429_fail
    add rx1429_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx1429_cur."!cursor_pos"(rx1429_pos)
    .const 'Sub' $P1434 = "364_1285886565.968" 
    capture_lex $P1434
    $P10 = rx1429_cur."before"($P1434)
    unless $P10, rx1429_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1429_cur."!cursor_pos"(rx1429_pos)
    $P10 = rx1429_cur."LANG"("MAIN", "statement")
    unless $P10, rx1429_fail
    rx1429_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx1429_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1429_cur."!cursor_pos"(rx1429_pos)
    $P10 = rx1429_cur."ws"()
    unless $P10, rx1429_fail
    rx1429_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx1429_pos, 1
    gt $I11, rx1429_eos, rx1429_fail
    sub $I11, rx1429_pos, rx1429_off
    ord $I11, rx1429_tgt, $I11
    ne $I11, 59, rx1429_fail
    add rx1429_pos, 1
  # rx pass
    rx1429_cur."!cursor_pass"(rx1429_pos, "metachar:sym<:my>")
    if_null rx1429_debug, debug_1079
    rx1429_cur."!cursor_debug"("PASS", "metachar:sym<:my>", " at pos=", rx1429_pos)
  debug_1079:
    .return (rx1429_cur)
  rx1429_restart:
    if_null rx1429_debug, debug_1080
    rx1429_cur."!cursor_debug"("NEXT", "metachar:sym<:my>")
  debug_1080:
  rx1429_fail:
    (rx1429_rep, rx1429_pos, $I10, $P10) = rx1429_cur."!mark_fail"(0)
    lt rx1429_pos, -1, rx1429_done
    eq rx1429_pos, -1, rx1429_fail
    jump $I10
  rx1429_done:
    rx1429_cur."!cursor_fail"()
    if_null rx1429_debug, debug_1081
    rx1429_cur."!cursor_debug"("FAIL", "metachar:sym<:my>")
  debug_1081:
    .return (rx1429_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("363_1285886565.968") :method
.annotate 'line', 0
    new $P1431, "ResizablePMCArray"
    push $P1431, ":"
    .return ($P1431)
.end


.namespace ["NQP";"Regex"]
.sub "_block1433"  :anon :subid("364_1285886565.968") :method :outer("362_1285886565.968")
.annotate 'line', 0
    .local string rx1435_tgt
    .local int rx1435_pos
    .local int rx1435_off
    .local int rx1435_eos
    .local int rx1435_rep
    .local pmc rx1435_cur
    .local pmc rx1435_debug
    (rx1435_cur, rx1435_pos, rx1435_tgt, $I10) = self."!cursor_start"()
    getattribute rx1435_debug, rx1435_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1435_cur
    .local pmc match
    .lex "$/", match
    length rx1435_eos, rx1435_tgt
    gt rx1435_pos, rx1435_eos, rx1435_done
    set rx1435_off, 0
    lt rx1435_pos, 2, rx1435_start
    sub rx1435_off, rx1435_pos, 1
    substr rx1435_tgt, rx1435_tgt, rx1435_off
  rx1435_start:
    eq $I10, 1, rx1435_restart
    if_null rx1435_debug, debug_1075
    rx1435_cur."!cursor_debug"("START", "")
  debug_1075:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1436_done
    goto rxscan1436_scan
  rxscan1436_loop:
    ($P10) = rx1435_cur."from"()
    inc $P10
    set rx1435_pos, $P10
    ge rx1435_pos, rx1435_eos, rxscan1436_done
  rxscan1436_scan:
    set_addr $I10, rxscan1436_loop
    rx1435_cur."!mark_push"(0, rx1435_pos, $I10)
  rxscan1436_done:
  # rx literal  "my"
    add $I11, rx1435_pos, 2
    gt $I11, rx1435_eos, rx1435_fail
    sub $I11, rx1435_pos, rx1435_off
    substr $S10, rx1435_tgt, $I11, 2
    ne $S10, "my", rx1435_fail
    add rx1435_pos, 2
  # rx pass
    rx1435_cur."!cursor_pass"(rx1435_pos, "")
    if_null rx1435_debug, debug_1076
    rx1435_cur."!cursor_debug"("PASS", "", " at pos=", rx1435_pos)
  debug_1076:
    .return (rx1435_cur)
  rx1435_restart:
    if_null rx1435_debug, debug_1077
    rx1435_cur."!cursor_debug"("NEXT", "")
  debug_1077:
  rx1435_fail:
    (rx1435_rep, rx1435_pos, $I10, $P10) = rx1435_cur."!mark_fail"(0)
    lt rx1435_pos, -1, rx1435_done
    eq rx1435_pos, -1, rx1435_fail
    jump $I10
  rx1435_done:
    rx1435_cur."!cursor_fail"()
    if_null rx1435_debug, debug_1078
    rx1435_cur."!cursor_debug"("FAIL", "")
  debug_1078:
    .return (rx1435_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("365_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .local string rx1438_tgt
    .local int rx1438_pos
    .local int rx1438_off
    .local int rx1438_eos
    .local int rx1438_rep
    .local pmc rx1438_cur
    .local pmc rx1438_debug
    (rx1438_cur, rx1438_pos, rx1438_tgt, $I10) = self."!cursor_start"()
    getattribute rx1438_debug, rx1438_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1438_cur
    .local pmc match
    .lex "$/", match
    length rx1438_eos, rx1438_tgt
    gt rx1438_pos, rx1438_eos, rx1438_done
    set rx1438_off, 0
    lt rx1438_pos, 2, rx1438_start
    sub rx1438_off, rx1438_pos, 1
    substr rx1438_tgt, rx1438_tgt, rx1438_off
  rx1438_start:
    eq $I10, 1, rx1438_restart
    if_null rx1438_debug, debug_1082
    rx1438_cur."!cursor_debug"("START", "metachar:sym<{ }>")
  debug_1082:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1441_done
    goto rxscan1441_scan
  rxscan1441_loop:
    ($P10) = rx1438_cur."from"()
    inc $P10
    set rx1438_pos, $P10
    ge rx1438_pos, rx1438_eos, rxscan1441_done
  rxscan1441_scan:
    set_addr $I10, rxscan1441_loop
    rx1438_cur."!mark_push"(0, rx1438_pos, $I10)
  rxscan1441_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1438_pos, rx1438_eos, rx1438_fail
    sub $I10, rx1438_pos, rx1438_off
    substr $S10, rx1438_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1438_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1438_cur."!cursor_pos"(rx1438_pos)
    $P10 = rx1438_cur."codeblock"()
    unless $P10, rx1438_fail
    rx1438_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1438_pos = $P10."pos"()
  # rx pass
    rx1438_cur."!cursor_pass"(rx1438_pos, "metachar:sym<{ }>")
    if_null rx1438_debug, debug_1083
    rx1438_cur."!cursor_debug"("PASS", "metachar:sym<{ }>", " at pos=", rx1438_pos)
  debug_1083:
    .return (rx1438_cur)
  rx1438_restart:
    if_null rx1438_debug, debug_1084
    rx1438_cur."!cursor_debug"("NEXT", "metachar:sym<{ }>")
  debug_1084:
  rx1438_fail:
    (rx1438_rep, rx1438_pos, $I10, $P10) = rx1438_cur."!mark_fail"(0)
    lt rx1438_pos, -1, rx1438_done
    eq rx1438_pos, -1, rx1438_fail
    jump $I10
  rx1438_done:
    rx1438_cur."!cursor_fail"()
    if_null rx1438_debug, debug_1085
    rx1438_cur."!cursor_debug"("FAIL", "metachar:sym<{ }>")
  debug_1085:
    .return (rx1438_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("366_1285886565.968") :method
.annotate 'line', 0
    new $P1440, "ResizablePMCArray"
    push $P1440, "{"
    .return ($P1440)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<nqpvar>"  :subid("367_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P1448 = "369_1285886565.968" 
    capture_lex $P1448
    .local string rx1443_tgt
    .local int rx1443_pos
    .local int rx1443_off
    .local int rx1443_eos
    .local int rx1443_rep
    .local pmc rx1443_cur
    .local pmc rx1443_debug
    (rx1443_cur, rx1443_pos, rx1443_tgt, $I10) = self."!cursor_start"()
    getattribute rx1443_debug, rx1443_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1443_cur
    .local pmc match
    .lex "$/", match
    length rx1443_eos, rx1443_tgt
    gt rx1443_pos, rx1443_eos, rx1443_done
    set rx1443_off, 0
    lt rx1443_pos, 2, rx1443_start
    sub rx1443_off, rx1443_pos, 1
    substr rx1443_tgt, rx1443_tgt, rx1443_off
  rx1443_start:
    eq $I10, 1, rx1443_restart
    if_null rx1443_debug, debug_1086
    rx1443_cur."!cursor_debug"("START", "metachar:sym<nqpvar>")
  debug_1086:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1446_done
    goto rxscan1446_scan
  rxscan1446_loop:
    ($P10) = rx1443_cur."from"()
    inc $P10
    set rx1443_pos, $P10
    ge rx1443_pos, rx1443_eos, rxscan1446_done
  rxscan1446_scan:
    set_addr $I10, rxscan1446_loop
    rx1443_cur."!mark_push"(0, rx1443_pos, $I10)
  rxscan1446_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1443_pos, rx1443_eos, rx1443_fail
    sub $I10, rx1443_pos, rx1443_off
    substr $S10, rx1443_tgt, $I10, 1
    index $I11, "$@", $S10
    lt $I11, 0, rx1443_fail
  # rx subrule "before" subtype=zerowidth negate=
    rx1443_cur."!cursor_pos"(rx1443_pos)
    .const 'Sub' $P1448 = "369_1285886565.968" 
    capture_lex $P1448
    $P10 = rx1443_cur."before"($P1448)
    unless $P10, rx1443_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1443_cur."!cursor_pos"(rx1443_pos)
    $P10 = rx1443_cur."LANG"("MAIN", "variable")
    unless $P10, rx1443_fail
    rx1443_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("var")
    rx1443_pos = $P10."pos"()
  # rx pass
    rx1443_cur."!cursor_pass"(rx1443_pos, "metachar:sym<nqpvar>")
    if_null rx1443_debug, debug_1091
    rx1443_cur."!cursor_debug"("PASS", "metachar:sym<nqpvar>", " at pos=", rx1443_pos)
  debug_1091:
    .return (rx1443_cur)
  rx1443_restart:
    if_null rx1443_debug, debug_1092
    rx1443_cur."!cursor_debug"("NEXT", "metachar:sym<nqpvar>")
  debug_1092:
  rx1443_fail:
    (rx1443_rep, rx1443_pos, $I10, $P10) = rx1443_cur."!mark_fail"(0)
    lt rx1443_pos, -1, rx1443_done
    eq rx1443_pos, -1, rx1443_fail
    jump $I10
  rx1443_done:
    rx1443_cur."!cursor_fail"()
    if_null rx1443_debug, debug_1093
    rx1443_cur."!cursor_debug"("FAIL", "metachar:sym<nqpvar>")
  debug_1093:
    .return (rx1443_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<nqpvar>"  :subid("368_1285886565.968") :method
.annotate 'line', 0
    new $P1445, "ResizablePMCArray"
    push $P1445, "$"
    push $P1445, "@"
    .return ($P1445)
.end


.namespace ["NQP";"Regex"]
.sub "_block1447"  :anon :subid("369_1285886565.968") :method :outer("367_1285886565.968")
.annotate 'line', 0
    .local string rx1449_tgt
    .local int rx1449_pos
    .local int rx1449_off
    .local int rx1449_eos
    .local int rx1449_rep
    .local pmc rx1449_cur
    .local pmc rx1449_debug
    (rx1449_cur, rx1449_pos, rx1449_tgt, $I10) = self."!cursor_start"()
    getattribute rx1449_debug, rx1449_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1449_cur
    .local pmc match
    .lex "$/", match
    length rx1449_eos, rx1449_tgt
    gt rx1449_pos, rx1449_eos, rx1449_done
    set rx1449_off, 0
    lt rx1449_pos, 2, rx1449_start
    sub rx1449_off, rx1449_pos, 1
    substr rx1449_tgt, rx1449_tgt, rx1449_off
  rx1449_start:
    eq $I10, 1, rx1449_restart
    if_null rx1449_debug, debug_1087
    rx1449_cur."!cursor_debug"("START", "")
  debug_1087:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1450_done
    goto rxscan1450_scan
  rxscan1450_loop:
    ($P10) = rx1449_cur."from"()
    inc $P10
    set rx1449_pos, $P10
    ge rx1449_pos, rx1449_eos, rxscan1450_done
  rxscan1450_scan:
    set_addr $I10, rxscan1450_loop
    rx1449_cur."!mark_push"(0, rx1449_pos, $I10)
  rxscan1450_done:
  # rx charclass .
    ge rx1449_pos, rx1449_eos, rx1449_fail
    inc rx1449_pos
  # rx charclass w
    ge rx1449_pos, rx1449_eos, rx1449_fail
    sub $I10, rx1449_pos, rx1449_off
    is_cclass $I11, 8192, rx1449_tgt, $I10
    unless $I11, rx1449_fail
    inc rx1449_pos
  # rx pass
    rx1449_cur."!cursor_pass"(rx1449_pos, "")
    if_null rx1449_debug, debug_1088
    rx1449_cur."!cursor_debug"("PASS", "", " at pos=", rx1449_pos)
  debug_1088:
    .return (rx1449_cur)
  rx1449_restart:
    if_null rx1449_debug, debug_1089
    rx1449_cur."!cursor_debug"("NEXT", "")
  debug_1089:
  rx1449_fail:
    (rx1449_rep, rx1449_pos, $I10, $P10) = rx1449_cur."!mark_fail"(0)
    lt rx1449_pos, -1, rx1449_done
    eq rx1449_pos, -1, rx1449_fail
    jump $I10
  rx1449_done:
    rx1449_cur."!cursor_fail"()
    if_null rx1449_debug, debug_1090
    rx1449_cur."!cursor_debug"("FAIL", "")
  debug_1090:
    .return (rx1449_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("370_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .local string rx1452_tgt
    .local int rx1452_pos
    .local int rx1452_off
    .local int rx1452_eos
    .local int rx1452_rep
    .local pmc rx1452_cur
    .local pmc rx1452_debug
    (rx1452_cur, rx1452_pos, rx1452_tgt, $I10) = self."!cursor_start"()
    getattribute rx1452_debug, rx1452_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1452_cur
    .local pmc match
    .lex "$/", match
    length rx1452_eos, rx1452_tgt
    gt rx1452_pos, rx1452_eos, rx1452_done
    set rx1452_off, 0
    lt rx1452_pos, 2, rx1452_start
    sub rx1452_off, rx1452_pos, 1
    substr rx1452_tgt, rx1452_tgt, rx1452_off
  rx1452_start:
    eq $I10, 1, rx1452_restart
    if_null rx1452_debug, debug_1094
    rx1452_cur."!cursor_debug"("START", "assertion:sym<{ }>")
  debug_1094:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1455_done
    goto rxscan1455_scan
  rxscan1455_loop:
    ($P10) = rx1452_cur."from"()
    inc $P10
    set rx1452_pos, $P10
    ge rx1452_pos, rx1452_eos, rxscan1455_done
  rxscan1455_scan:
    set_addr $I10, rxscan1455_loop
    rx1452_cur."!mark_push"(0, rx1452_pos, $I10)
  rxscan1455_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1452_pos, rx1452_eos, rx1452_fail
    sub $I10, rx1452_pos, rx1452_off
    substr $S10, rx1452_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1452_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1452_cur."!cursor_pos"(rx1452_pos)
    $P10 = rx1452_cur."codeblock"()
    unless $P10, rx1452_fail
    rx1452_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1452_pos = $P10."pos"()
  # rx pass
    rx1452_cur."!cursor_pass"(rx1452_pos, "assertion:sym<{ }>")
    if_null rx1452_debug, debug_1095
    rx1452_cur."!cursor_debug"("PASS", "assertion:sym<{ }>", " at pos=", rx1452_pos)
  debug_1095:
    .return (rx1452_cur)
  rx1452_restart:
    if_null rx1452_debug, debug_1096
    rx1452_cur."!cursor_debug"("NEXT", "assertion:sym<{ }>")
  debug_1096:
  rx1452_fail:
    (rx1452_rep, rx1452_pos, $I10, $P10) = rx1452_cur."!mark_fail"(0)
    lt rx1452_pos, -1, rx1452_done
    eq rx1452_pos, -1, rx1452_fail
    jump $I10
  rx1452_done:
    rx1452_cur."!cursor_fail"()
    if_null rx1452_debug, debug_1097
    rx1452_cur."!cursor_debug"("FAIL", "assertion:sym<{ }>")
  debug_1097:
    .return (rx1452_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("371_1285886565.968") :method
.annotate 'line', 0
    new $P1454, "ResizablePMCArray"
    push $P1454, "{"
    .return ($P1454)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<?{ }>"  :subid("372_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P1462 = "374_1285886565.968" 
    capture_lex $P1462
    .local string rx1457_tgt
    .local int rx1457_pos
    .local int rx1457_off
    .local int rx1457_eos
    .local int rx1457_rep
    .local pmc rx1457_cur
    .local pmc rx1457_debug
    (rx1457_cur, rx1457_pos, rx1457_tgt, $I10) = self."!cursor_start"()
    getattribute rx1457_debug, rx1457_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1457_cur
    .local pmc match
    .lex "$/", match
    length rx1457_eos, rx1457_tgt
    gt rx1457_pos, rx1457_eos, rx1457_done
    set rx1457_off, 0
    lt rx1457_pos, 2, rx1457_start
    sub rx1457_off, rx1457_pos, 1
    substr rx1457_tgt, rx1457_tgt, rx1457_off
  rx1457_start:
    eq $I10, 1, rx1457_restart
    if_null rx1457_debug, debug_1098
    rx1457_cur."!cursor_debug"("START", "assertion:sym<?{ }>")
  debug_1098:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1460_done
    goto rxscan1460_scan
  rxscan1460_loop:
    ($P10) = rx1457_cur."from"()
    inc $P10
    set rx1457_pos, $P10
    ge rx1457_pos, rx1457_eos, rxscan1460_done
  rxscan1460_scan:
    set_addr $I10, rxscan1460_loop
    rx1457_cur."!mark_push"(0, rx1457_pos, $I10)
  rxscan1460_done:
  # rx subcapture "zw"
    set_addr $I10, rxcap_1465_fail
    rx1457_cur."!mark_push"(0, rx1457_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx1457_pos, rx1457_eos, rx1457_fail
    sub $I10, rx1457_pos, rx1457_off
    substr $S10, rx1457_tgt, $I10, 1
    index $I11, "?!", $S10
    lt $I11, 0, rx1457_fail
    inc rx1457_pos
  # rx subrule "before" subtype=zerowidth negate=
    rx1457_cur."!cursor_pos"(rx1457_pos)
    .const 'Sub' $P1462 = "374_1285886565.968" 
    capture_lex $P1462
    $P10 = rx1457_cur."before"($P1462)
    unless $P10, rx1457_fail
    set_addr $I10, rxcap_1465_fail
    ($I12, $I11) = rx1457_cur."!mark_peek"($I10)
    rx1457_cur."!cursor_pos"($I11)
    ($P10) = rx1457_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1457_pos, "")
    rx1457_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("zw")
    goto rxcap_1465_done
  rxcap_1465_fail:
    goto rx1457_fail
  rxcap_1465_done:
  # rx subrule "codeblock" subtype=capture negate=
    rx1457_cur."!cursor_pos"(rx1457_pos)
    $P10 = rx1457_cur."codeblock"()
    unless $P10, rx1457_fail
    rx1457_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1457_pos = $P10."pos"()
  # rx pass
    rx1457_cur."!cursor_pass"(rx1457_pos, "assertion:sym<?{ }>")
    if_null rx1457_debug, debug_1103
    rx1457_cur."!cursor_debug"("PASS", "assertion:sym<?{ }>", " at pos=", rx1457_pos)
  debug_1103:
    .return (rx1457_cur)
  rx1457_restart:
    if_null rx1457_debug, debug_1104
    rx1457_cur."!cursor_debug"("NEXT", "assertion:sym<?{ }>")
  debug_1104:
  rx1457_fail:
    (rx1457_rep, rx1457_pos, $I10, $P10) = rx1457_cur."!mark_fail"(0)
    lt rx1457_pos, -1, rx1457_done
    eq rx1457_pos, -1, rx1457_fail
    jump $I10
  rx1457_done:
    rx1457_cur."!cursor_fail"()
    if_null rx1457_debug, debug_1105
    rx1457_cur."!cursor_debug"("FAIL", "assertion:sym<?{ }>")
  debug_1105:
    .return (rx1457_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<?{ }>"  :subid("373_1285886565.968") :method
.annotate 'line', 0
    new $P1459, "ResizablePMCArray"
    push $P1459, "!"
    push $P1459, "?"
    .return ($P1459)
.end


.namespace ["NQP";"Regex"]
.sub "_block1461"  :anon :subid("374_1285886565.968") :method :outer("372_1285886565.968")
.annotate 'line', 0
    .local string rx1463_tgt
    .local int rx1463_pos
    .local int rx1463_off
    .local int rx1463_eos
    .local int rx1463_rep
    .local pmc rx1463_cur
    .local pmc rx1463_debug
    (rx1463_cur, rx1463_pos, rx1463_tgt, $I10) = self."!cursor_start"()
    getattribute rx1463_debug, rx1463_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1463_cur
    .local pmc match
    .lex "$/", match
    length rx1463_eos, rx1463_tgt
    gt rx1463_pos, rx1463_eos, rx1463_done
    set rx1463_off, 0
    lt rx1463_pos, 2, rx1463_start
    sub rx1463_off, rx1463_pos, 1
    substr rx1463_tgt, rx1463_tgt, rx1463_off
  rx1463_start:
    eq $I10, 1, rx1463_restart
    if_null rx1463_debug, debug_1099
    rx1463_cur."!cursor_debug"("START", "")
  debug_1099:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1464_done
    goto rxscan1464_scan
  rxscan1464_loop:
    ($P10) = rx1463_cur."from"()
    inc $P10
    set rx1463_pos, $P10
    ge rx1463_pos, rx1463_eos, rxscan1464_done
  rxscan1464_scan:
    set_addr $I10, rxscan1464_loop
    rx1463_cur."!mark_push"(0, rx1463_pos, $I10)
  rxscan1464_done:
  # rx literal  "{"
    add $I11, rx1463_pos, 1
    gt $I11, rx1463_eos, rx1463_fail
    sub $I11, rx1463_pos, rx1463_off
    ord $I11, rx1463_tgt, $I11
    ne $I11, 123, rx1463_fail
    add rx1463_pos, 1
  # rx pass
    rx1463_cur."!cursor_pass"(rx1463_pos, "")
    if_null rx1463_debug, debug_1100
    rx1463_cur."!cursor_debug"("PASS", "", " at pos=", rx1463_pos)
  debug_1100:
    .return (rx1463_cur)
  rx1463_restart:
    if_null rx1463_debug, debug_1101
    rx1463_cur."!cursor_debug"("NEXT", "")
  debug_1101:
  rx1463_fail:
    (rx1463_rep, rx1463_pos, $I10, $P10) = rx1463_cur."!mark_fail"(0)
    lt rx1463_pos, -1, rx1463_done
    eq rx1463_pos, -1, rx1463_fail
    jump $I10
  rx1463_done:
    rx1463_cur."!cursor_fail"()
    if_null rx1463_debug, debug_1102
    rx1463_cur."!cursor_debug"("FAIL", "")
  debug_1102:
    .return (rx1463_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<name>"  :subid("375_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P1475 = "377_1285886565.968" 
    capture_lex $P1475
    .local string rx1467_tgt
    .local int rx1467_pos
    .local int rx1467_off
    .local int rx1467_eos
    .local int rx1467_rep
    .local pmc rx1467_cur
    .local pmc rx1467_debug
    (rx1467_cur, rx1467_pos, rx1467_tgt, $I10) = self."!cursor_start"()
    rx1467_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    getattribute rx1467_debug, rx1467_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1467_cur
    .local pmc match
    .lex "$/", match
    length rx1467_eos, rx1467_tgt
    gt rx1467_pos, rx1467_eos, rx1467_done
    set rx1467_off, 0
    lt rx1467_pos, 2, rx1467_start
    sub rx1467_off, rx1467_pos, 1
    substr rx1467_tgt, rx1467_tgt, rx1467_off
  rx1467_start:
    eq $I10, 1, rx1467_restart
    if_null rx1467_debug, debug_1106
    rx1467_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_1106:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1471_done
    goto rxscan1471_scan
  rxscan1471_loop:
    ($P10) = rx1467_cur."from"()
    inc $P10
    set rx1467_pos, $P10
    ge rx1467_pos, rx1467_eos, rxscan1471_done
  rxscan1471_scan:
    set_addr $I10, rxscan1471_loop
    rx1467_cur."!mark_push"(0, rx1467_pos, $I10)
  rxscan1471_done:
  # rx subrule "identifier" subtype=capture negate=
    rx1467_cur."!cursor_pos"(rx1467_pos)
    $P10 = rx1467_cur."identifier"()
    unless $P10, rx1467_fail
    rx1467_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx1467_pos = $P10."pos"()
  # rx rxquantr1472 ** 0..1
    set_addr $I10, rxquantr1472_done
    rx1467_cur."!mark_push"(0, rx1467_pos, $I10)
  rxquantr1472_loop:
  alt1473_0:
    set_addr $I10, alt1473_1
    rx1467_cur."!mark_push"(0, rx1467_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx1467_cur."!cursor_pos"(rx1467_pos)
    .const 'Sub' $P1475 = "377_1285886565.968" 
    capture_lex $P1475
    $P10 = rx1467_cur."before"($P1475)
    unless $P10, rx1467_fail
    goto alt1473_end
  alt1473_1:
    set_addr $I10, alt1473_2
    rx1467_cur."!mark_push"(0, rx1467_pos, $I10)
  # rx literal  "="
    add $I11, rx1467_pos, 1
    gt $I11, rx1467_eos, rx1467_fail
    sub $I11, rx1467_pos, rx1467_off
    ord $I11, rx1467_tgt, $I11
    ne $I11, 61, rx1467_fail
    add rx1467_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1467_cur."!cursor_pos"(rx1467_pos)
    $P10 = rx1467_cur."assertion"()
    unless $P10, rx1467_fail
    rx1467_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1467_pos = $P10."pos"()
    goto alt1473_end
  alt1473_2:
    set_addr $I10, alt1473_3
    rx1467_cur."!mark_push"(0, rx1467_pos, $I10)
  # rx literal  ":"
    add $I11, rx1467_pos, 1
    gt $I11, rx1467_eos, rx1467_fail
    sub $I11, rx1467_pos, rx1467_off
    ord $I11, rx1467_tgt, $I11
    ne $I11, 58, rx1467_fail
    add rx1467_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx1467_cur."!cursor_pos"(rx1467_pos)
    $P10 = rx1467_cur."arglist"()
    unless $P10, rx1467_fail
    rx1467_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1467_pos = $P10."pos"()
    goto alt1473_end
  alt1473_3:
    set_addr $I10, alt1473_4
    rx1467_cur."!mark_push"(0, rx1467_pos, $I10)
  # rx literal  "("
    add $I11, rx1467_pos, 1
    gt $I11, rx1467_eos, rx1467_fail
    sub $I11, rx1467_pos, rx1467_off
    ord $I11, rx1467_tgt, $I11
    ne $I11, 40, rx1467_fail
    add rx1467_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx1467_cur."!cursor_pos"(rx1467_pos)
    $P10 = rx1467_cur."LANG"("MAIN", "arglist")
    unless $P10, rx1467_fail
    rx1467_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1467_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1467_pos, 1
    gt $I11, rx1467_eos, rx1467_fail
    sub $I11, rx1467_pos, rx1467_off
    ord $I11, rx1467_tgt, $I11
    ne $I11, 41, rx1467_fail
    add rx1467_pos, 1
    goto alt1473_end
  alt1473_4:
  # rx subrule "normspace" subtype=method negate=
    rx1467_cur."!cursor_pos"(rx1467_pos)
    $P10 = rx1467_cur."normspace"()
    unless $P10, rx1467_fail
    rx1467_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx1467_cur."!cursor_pos"(rx1467_pos)
    $P10 = rx1467_cur."nibbler"()
    unless $P10, rx1467_fail
    rx1467_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1467_pos = $P10."pos"()
  alt1473_end:
    set_addr $I10, rxquantr1472_done
    (rx1467_rep) = rx1467_cur."!mark_commit"($I10)
  rxquantr1472_done:
  # rx pass
    rx1467_cur."!cursor_pass"(rx1467_pos, "assertion:sym<name>")
    if_null rx1467_debug, debug_1111
    rx1467_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx1467_pos)
  debug_1111:
    .return (rx1467_cur)
  rx1467_restart:
    if_null rx1467_debug, debug_1112
    rx1467_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_1112:
  rx1467_fail:
    (rx1467_rep, rx1467_pos, $I10, $P10) = rx1467_cur."!mark_fail"(0)
    lt rx1467_pos, -1, rx1467_done
    eq rx1467_pos, -1, rx1467_fail
    jump $I10
  rx1467_done:
    rx1467_cur."!cursor_fail"()
    if_null rx1467_debug, debug_1113
    rx1467_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_1113:
    .return (rx1467_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<name>"  :subid("376_1285886565.968") :method
.annotate 'line', 0
    $P1469 = self."!PREFIX__!subrule"("identifier", "")
    new $P1470, "ResizablePMCArray"
    push $P1470, $P1469
    .return ($P1470)
.end


.namespace ["NQP";"Regex"]
.sub "_block1474"  :anon :subid("377_1285886565.968") :method :outer("375_1285886565.968")
.annotate 'line', 0
    .local string rx1476_tgt
    .local int rx1476_pos
    .local int rx1476_off
    .local int rx1476_eos
    .local int rx1476_rep
    .local pmc rx1476_cur
    .local pmc rx1476_debug
    (rx1476_cur, rx1476_pos, rx1476_tgt, $I10) = self."!cursor_start"()
    getattribute rx1476_debug, rx1476_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1476_cur
    .local pmc match
    .lex "$/", match
    length rx1476_eos, rx1476_tgt
    gt rx1476_pos, rx1476_eos, rx1476_done
    set rx1476_off, 0
    lt rx1476_pos, 2, rx1476_start
    sub rx1476_off, rx1476_pos, 1
    substr rx1476_tgt, rx1476_tgt, rx1476_off
  rx1476_start:
    eq $I10, 1, rx1476_restart
    if_null rx1476_debug, debug_1107
    rx1476_cur."!cursor_debug"("START", "")
  debug_1107:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1477_done
    goto rxscan1477_scan
  rxscan1477_loop:
    ($P10) = rx1476_cur."from"()
    inc $P10
    set rx1476_pos, $P10
    ge rx1476_pos, rx1476_eos, rxscan1477_done
  rxscan1477_scan:
    set_addr $I10, rxscan1477_loop
    rx1476_cur."!mark_push"(0, rx1476_pos, $I10)
  rxscan1477_done:
  # rx literal  ">"
    add $I11, rx1476_pos, 1
    gt $I11, rx1476_eos, rx1476_fail
    sub $I11, rx1476_pos, rx1476_off
    ord $I11, rx1476_tgt, $I11
    ne $I11, 62, rx1476_fail
    add rx1476_pos, 1
  # rx pass
    rx1476_cur."!cursor_pass"(rx1476_pos, "")
    if_null rx1476_debug, debug_1108
    rx1476_cur."!cursor_debug"("PASS", "", " at pos=", rx1476_pos)
  debug_1108:
    .return (rx1476_cur)
  rx1476_restart:
    if_null rx1476_debug, debug_1109
    rx1476_cur."!cursor_debug"("NEXT", "")
  debug_1109:
  rx1476_fail:
    (rx1476_rep, rx1476_pos, $I10, $P10) = rx1476_cur."!mark_fail"(0)
    lt rx1476_pos, -1, rx1476_done
    eq rx1476_pos, -1, rx1476_fail
    jump $I10
  rx1476_done:
    rx1476_cur."!cursor_fail"()
    if_null rx1476_debug, debug_1110
    rx1476_cur."!cursor_debug"("FAIL", "")
  debug_1110:
    .return (rx1476_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<var>"  :subid("378_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .local string rx1479_tgt
    .local int rx1479_pos
    .local int rx1479_off
    .local int rx1479_eos
    .local int rx1479_rep
    .local pmc rx1479_cur
    .local pmc rx1479_debug
    (rx1479_cur, rx1479_pos, rx1479_tgt, $I10) = self."!cursor_start"()
    getattribute rx1479_debug, rx1479_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1479_cur
    .local pmc match
    .lex "$/", match
    length rx1479_eos, rx1479_tgt
    gt rx1479_pos, rx1479_eos, rx1479_done
    set rx1479_off, 0
    lt rx1479_pos, 2, rx1479_start
    sub rx1479_off, rx1479_pos, 1
    substr rx1479_tgt, rx1479_tgt, rx1479_off
  rx1479_start:
    eq $I10, 1, rx1479_restart
    if_null rx1479_debug, debug_1114
    rx1479_cur."!cursor_debug"("START", "assertion:sym<var>")
  debug_1114:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1482_done
    goto rxscan1482_scan
  rxscan1482_loop:
    ($P10) = rx1479_cur."from"()
    inc $P10
    set rx1479_pos, $P10
    ge rx1479_pos, rx1479_eos, rxscan1482_done
  rxscan1482_scan:
    set_addr $I10, rxscan1482_loop
    rx1479_cur."!mark_push"(0, rx1479_pos, $I10)
  rxscan1482_done:
  # rx enumcharlist negate=0 zerowidth
    ge rx1479_pos, rx1479_eos, rx1479_fail
    sub $I10, rx1479_pos, rx1479_off
    substr $S10, rx1479_tgt, $I10, 1
    index $I11, "$@", $S10
    lt $I11, 0, rx1479_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1479_cur."!cursor_pos"(rx1479_pos)
    $P10 = rx1479_cur."LANG"("MAIN", "variable")
    unless $P10, rx1479_fail
    rx1479_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("var")
    rx1479_pos = $P10."pos"()
  # rx pass
    rx1479_cur."!cursor_pass"(rx1479_pos, "assertion:sym<var>")
    if_null rx1479_debug, debug_1115
    rx1479_cur."!cursor_debug"("PASS", "assertion:sym<var>", " at pos=", rx1479_pos)
  debug_1115:
    .return (rx1479_cur)
  rx1479_restart:
    if_null rx1479_debug, debug_1116
    rx1479_cur."!cursor_debug"("NEXT", "assertion:sym<var>")
  debug_1116:
  rx1479_fail:
    (rx1479_rep, rx1479_pos, $I10, $P10) = rx1479_cur."!mark_fail"(0)
    lt rx1479_pos, -1, rx1479_done
    eq rx1479_pos, -1, rx1479_fail
    jump $I10
  rx1479_done:
    rx1479_cur."!cursor_fail"()
    if_null rx1479_debug, debug_1117
    rx1479_cur."!cursor_debug"("FAIL", "assertion:sym<var>")
  debug_1117:
    .return (rx1479_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<var>"  :subid("379_1285886565.968") :method
.annotate 'line', 0
    new $P1481, "ResizablePMCArray"
    push $P1481, "$"
    push $P1481, "@"
    .return ($P1481)
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("380_1285886565.968") :method :outer("361_1285886565.968")
.annotate 'line', 0
    .local string rx1484_tgt
    .local int rx1484_pos
    .local int rx1484_off
    .local int rx1484_eos
    .local int rx1484_rep
    .local pmc rx1484_cur
    .local pmc rx1484_debug
    (rx1484_cur, rx1484_pos, rx1484_tgt, $I10) = self."!cursor_start"()
    getattribute rx1484_debug, rx1484_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx1484_cur
    .local pmc match
    .lex "$/", match
    length rx1484_eos, rx1484_tgt
    gt rx1484_pos, rx1484_eos, rx1484_done
    set rx1484_off, 0
    lt rx1484_pos, 2, rx1484_start
    sub rx1484_off, rx1484_pos, 1
    substr rx1484_tgt, rx1484_tgt, rx1484_off
  rx1484_start:
    eq $I10, 1, rx1484_restart
    if_null rx1484_debug, debug_1118
    rx1484_cur."!cursor_debug"("START", "codeblock")
  debug_1118:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1488_done
    goto rxscan1488_scan
  rxscan1488_loop:
    ($P10) = rx1484_cur."from"()
    inc $P10
    set rx1484_pos, $P10
    ge rx1484_pos, rx1484_eos, rxscan1488_done
  rxscan1488_scan:
    set_addr $I10, rxscan1488_loop
    rx1484_cur."!mark_push"(0, rx1484_pos, $I10)
  rxscan1488_done:
  # rx subrule "LANG" subtype=capture negate=
    rx1484_cur."!cursor_pos"(rx1484_pos)
    $P10 = rx1484_cur."LANG"("MAIN", "pblock")
    unless $P10, rx1484_fail
    rx1484_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx1484_pos = $P10."pos"()
  # rx pass
    rx1484_cur."!cursor_pass"(rx1484_pos, "codeblock")
    if_null rx1484_debug, debug_1119
    rx1484_cur."!cursor_debug"("PASS", "codeblock", " at pos=", rx1484_pos)
  debug_1119:
    .return (rx1484_cur)
  rx1484_restart:
    if_null rx1484_debug, debug_1120
    rx1484_cur."!cursor_debug"("NEXT", "codeblock")
  debug_1120:
  rx1484_fail:
    (rx1484_rep, rx1484_pos, $I10, $P10) = rx1484_cur."!mark_fail"(0)
    lt rx1484_pos, -1, rx1484_done
    eq rx1484_pos, -1, rx1484_fail
    jump $I10
  rx1484_done:
    rx1484_cur."!cursor_fail"()
    if_null rx1484_debug, debug_1121
    rx1484_cur."!cursor_debug"("FAIL", "codeblock")
  debug_1121:
    .return (rx1484_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("381_1285886565.968") :method
.annotate 'line', 0
    $P1486 = self."!PREFIX__!subrule"("LANG", "")
    new $P1487, "ResizablePMCArray"
    push $P1487, $P1486
    .return ($P1487)
.end


.namespace ["NQP";"Grammar"]
.sub "_block1490" :load :anon :subid("382_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P1492 = "11_1285886565.968" 
    $P1493 = $P1492()
    .return ($P1493)
.end


.namespace []
.sub "_block1511" :load :anon :subid("383_1285886565.968")
.annotate 'line', 0
    .const 'Sub' $P1513 = "10_1285886565.968" 
    $P1514 = $P1513()
    .return ($P1514)
.end

### .include 'gen/nqp-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1285886573.859")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P2793 = $P14()
    .return ($P2793)
    .const 'Sub' $P2795 = "158_1285886573.859" 
    .return ($P2795)
.end


.namespace []
.sub "" :load :init :subid("post159") :outer("10_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1285886573.859" 
    .local pmc block
    set block, $P12
    $P2798 = get_root_global ["parrot"], "P6metaclass"
    $P2798."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1285886573.859") :outer("10_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P2789 = "157_1285886573.859" 
    capture_lex $P2789
    get_hll_global $P2672, ["NQP";"RegexActions"], "_block2671" 
    capture_lex $P2672
    .const 'Sub' $P2661 = "147_1285886573.859" 
    capture_lex $P2661
    .const 'Sub' $P2654 = "146_1285886573.859" 
    capture_lex $P2654
    .const 'Sub' $P2647 = "145_1285886573.859" 
    capture_lex $P2647
    .const 'Sub' $P2640 = "144_1285886573.859" 
    capture_lex $P2640
    .const 'Sub' $P2627 = "143_1285886573.859" 
    capture_lex $P2627
    .const 'Sub' $P2617 = "142_1285886573.859" 
    capture_lex $P2617
    .const 'Sub' $P2607 = "141_1285886573.859" 
    capture_lex $P2607
    .const 'Sub' $P2597 = "140_1285886573.859" 
    capture_lex $P2597
    .const 'Sub' $P2590 = "139_1285886573.859" 
    capture_lex $P2590
    .const 'Sub' $P2576 = "138_1285886573.859" 
    capture_lex $P2576
    .const 'Sub' $P2566 = "137_1285886573.859" 
    capture_lex $P2566
    .const 'Sub' $P2529 = "136_1285886573.859" 
    capture_lex $P2529
    .const 'Sub' $P2515 = "135_1285886573.859" 
    capture_lex $P2515
    .const 'Sub' $P2505 = "134_1285886573.859" 
    capture_lex $P2505
    .const 'Sub' $P2495 = "133_1285886573.859" 
    capture_lex $P2495
    .const 'Sub' $P2485 = "132_1285886573.859" 
    capture_lex $P2485
    .const 'Sub' $P2475 = "131_1285886573.859" 
    capture_lex $P2475
    .const 'Sub' $P2465 = "130_1285886573.859" 
    capture_lex $P2465
    .const 'Sub' $P2437 = "129_1285886573.859" 
    capture_lex $P2437
    .const 'Sub' $P2420 = "128_1285886573.859" 
    capture_lex $P2420
    .const 'Sub' $P2410 = "127_1285886573.859" 
    capture_lex $P2410
    .const 'Sub' $P2397 = "126_1285886573.859" 
    capture_lex $P2397
    .const 'Sub' $P2384 = "125_1285886573.859" 
    capture_lex $P2384
    .const 'Sub' $P2371 = "124_1285886573.859" 
    capture_lex $P2371
    .const 'Sub' $P2361 = "123_1285886573.859" 
    capture_lex $P2361
    .const 'Sub' $P2332 = "122_1285886573.859" 
    capture_lex $P2332
    .const 'Sub' $P2308 = "121_1285886573.859" 
    capture_lex $P2308
    .const 'Sub' $P2298 = "120_1285886573.859" 
    capture_lex $P2298
    .const 'Sub' $P2288 = "119_1285886573.859" 
    capture_lex $P2288
    .const 'Sub' $P2261 = "118_1285886573.859" 
    capture_lex $P2261
    .const 'Sub' $P2243 = "117_1285886573.859" 
    capture_lex $P2243
    .const 'Sub' $P2233 = "116_1285886573.859" 
    capture_lex $P2233
    .const 'Sub' $P2129 = "113_1285886573.859" 
    capture_lex $P2129
    .const 'Sub' $P2119 = "112_1285886573.859" 
    capture_lex $P2119
    .const 'Sub' $P2090 = "111_1285886573.859" 
    capture_lex $P2090
    .const 'Sub' $P2048 = "110_1285886573.859" 
    capture_lex $P2048
    .const 'Sub' $P2032 = "109_1285886573.859" 
    capture_lex $P2032
    .const 'Sub' $P2023 = "108_1285886573.859" 
    capture_lex $P2023
    .const 'Sub' $P1991 = "107_1285886573.859" 
    capture_lex $P1991
    .const 'Sub' $P1892 = "104_1285886573.859" 
    capture_lex $P1892
    .const 'Sub' $P1850 = "102_1285886573.859" 
    capture_lex $P1850
    .const 'Sub' $P1840 = "101_1285886573.859" 
    capture_lex $P1840
    .const 'Sub' $P1823 = "100_1285886573.859" 
    capture_lex $P1823
    .const 'Sub' $P1803 = "99_1285886573.859" 
    capture_lex $P1803
    .const 'Sub' $P1691 = "96_1285886573.859" 
    capture_lex $P1691
    .const 'Sub' $P1622 = "92_1285886573.859" 
    capture_lex $P1622
    .const 'Sub' $P1493 = "86_1285886573.859" 
    capture_lex $P1493
    .const 'Sub' $P1421 = "83_1285886573.859" 
    capture_lex $P1421
    .const 'Sub' $P1411 = "82_1285886573.859" 
    capture_lex $P1411
    .const 'Sub' $P1401 = "81_1285886573.859" 
    capture_lex $P1401
    .const 'Sub' $P1301 = "78_1285886573.859" 
    capture_lex $P1301
    .const 'Sub' $P1291 = "77_1285886573.859" 
    capture_lex $P1291
    .const 'Sub' $P1274 = "76_1285886573.859" 
    capture_lex $P1274
    .const 'Sub' $P1257 = "75_1285886573.859" 
    capture_lex $P1257
    .const 'Sub' $P1240 = "74_1285886573.859" 
    capture_lex $P1240
    .const 'Sub' $P1230 = "73_1285886573.859" 
    capture_lex $P1230
    .const 'Sub' $P1220 = "72_1285886573.859" 
    capture_lex $P1220
    .const 'Sub' $P1210 = "71_1285886573.859" 
    capture_lex $P1210
    .const 'Sub' $P1186 = "70_1285886573.859" 
    capture_lex $P1186
    .const 'Sub' $P1175 = "69_1285886573.859" 
    capture_lex $P1175
    .const 'Sub' $P1166 = "68_1285886573.859" 
    capture_lex $P1166
    .const 'Sub' $P1157 = "67_1285886573.859" 
    capture_lex $P1157
    .const 'Sub' $P1148 = "66_1285886573.859" 
    capture_lex $P1148
    .const 'Sub' $P1138 = "65_1285886573.859" 
    capture_lex $P1138
    .const 'Sub' $P1043 = "63_1285886573.859" 
    capture_lex $P1043
    .const 'Sub' $P1017 = "62_1285886573.859" 
    capture_lex $P1017
    .const 'Sub' $P1001 = "61_1285886573.859" 
    capture_lex $P1001
    .const 'Sub' $P991 = "60_1285886573.859" 
    capture_lex $P991
    .const 'Sub' $P981 = "59_1285886573.859" 
    capture_lex $P981
    .const 'Sub' $P971 = "58_1285886573.859" 
    capture_lex $P971
    .const 'Sub' $P961 = "57_1285886573.859" 
    capture_lex $P961
    .const 'Sub' $P951 = "56_1285886573.859" 
    capture_lex $P951
    .const 'Sub' $P941 = "55_1285886573.859" 
    capture_lex $P941
    .const 'Sub' $P931 = "54_1285886573.859" 
    capture_lex $P931
    .const 'Sub' $P921 = "53_1285886573.859" 
    capture_lex $P921
    .const 'Sub' $P911 = "52_1285886573.859" 
    capture_lex $P911
    .const 'Sub' $P901 = "51_1285886573.859" 
    capture_lex $P901
    .const 'Sub' $P891 = "50_1285886573.859" 
    capture_lex $P891
    .const 'Sub' $P881 = "49_1285886573.859" 
    capture_lex $P881
    .const 'Sub' $P871 = "48_1285886573.859" 
    capture_lex $P871
    .const 'Sub' $P853 = "47_1285886573.859" 
    capture_lex $P853
    .const 'Sub' $P818 = "46_1285886573.859" 
    capture_lex $P818
    .const 'Sub' $P802 = "45_1285886573.859" 
    capture_lex $P802
    .const 'Sub' $P781 = "44_1285886573.859" 
    capture_lex $P781
    .const 'Sub' $P761 = "43_1285886573.859" 
    capture_lex $P761
    .const 'Sub' $P748 = "42_1285886573.859" 
    capture_lex $P748
    .const 'Sub' $P722 = "41_1285886573.859" 
    capture_lex $P722
    .const 'Sub' $P686 = "40_1285886573.859" 
    capture_lex $P686
    .const 'Sub' $P669 = "39_1285886573.859" 
    capture_lex $P669
    .const 'Sub' $P655 = "38_1285886573.859" 
    capture_lex $P655
    .const 'Sub' $P602 = "36_1285886573.859" 
    capture_lex $P602
    .const 'Sub' $P591 = "35_1285886573.859" 
    capture_lex $P591
    .const 'Sub' $P578 = "34_1285886573.859" 
    capture_lex $P578
    .const 'Sub' $P558 = "33_1285886573.859" 
    capture_lex $P558
    .const 'Sub' $P548 = "32_1285886573.859" 
    capture_lex $P548
    .const 'Sub' $P538 = "31_1285886573.859" 
    capture_lex $P538
    .const 'Sub' $P522 = "30_1285886573.859" 
    capture_lex $P522
    .const 'Sub' $P439 = "28_1285886573.859" 
    capture_lex $P439
    .const 'Sub' $P396 = "26_1285886573.859" 
    capture_lex $P396
    .const 'Sub' $P360 = "25_1285886573.859" 
    capture_lex $P360
    .const 'Sub' $P327 = "24_1285886573.859" 
    capture_lex $P327
    .const 'Sub' $P317 = "23_1285886573.859" 
    capture_lex $P317
    .const 'Sub' $P298 = "22_1285886573.859" 
    capture_lex $P298
    .const 'Sub' $P244 = "21_1285886573.859" 
    capture_lex $P244
    .const 'Sub' $P151 = "19_1285886573.859" 
    capture_lex $P151
    .const 'Sub' $P100 = "18_1285886573.859" 
    capture_lex $P100
    .const 'Sub' $P84 = "17_1285886573.859" 
    capture_lex $P84
    .const 'Sub' $P63 = "16_1285886573.859" 
    capture_lex $P63
    .const 'Sub' $P27 = "13_1285886573.859" 
    capture_lex $P27
    .const 'Sub' $P16 = "12_1285886573.859" 
    capture_lex $P16
    nqp_dynop_setup 
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_162
    $P15 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P15
  vivify_162:
    .const 'Sub' $P16 = "12_1285886573.859" 
    newclosure $P26, $P16
    .lex "xblock_immediate", $P26
    .const 'Sub' $P27 = "13_1285886573.859" 
    newclosure $P62, $P27
    .lex "block_immediate", $P62
    .const 'Sub' $P63 = "16_1285886573.859" 
    newclosure $P83, $P63
    .lex "vivitype", $P83
    .const 'Sub' $P84 = "17_1285886573.859" 
    newclosure $P99, $P84
    .lex "colonpair_str", $P99
    .const 'Sub' $P100 = "18_1285886573.859" 
    newclosure $P150, $P100
    .lex "push_block_handler", $P150
    .const 'Sub' $P151 = "19_1285886573.859" 
    newclosure $P243, $P151
    .lex "package", $P243
    .const 'Sub' $P244 = "21_1285886573.859" 
    newclosure $P297, $P244
    .lex "old_package", $P297
    .const 'Sub' $P298 = "22_1285886573.859" 
    newclosure $P312, $P298
    .lex "control", $P312
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P313, "@BLOCK"
    find_lex $P314, "xblock_immediate"
    find_lex $P315, "block_immediate"
    find_lex $P316, "vivitype"
    find_lex $P359, "colonpair_str"
    find_lex $P801, "push_block_handler"
    find_lex $P1184, "package"
    find_lex $P1185, "old_package"
    find_lex $P2639, "control"
    get_hll_global $P2672, ["NQP";"RegexActions"], "_block2671" 
    capture_lex $P2672
    $P2783 = $P2672()
    .return ($P2783)
    .const 'Sub' $P2785 = "156_1285886573.859" 
    .return ($P2785)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post160") :outer("11_1285886573.859")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
    .const 'Sub' $P2789 = "157_1285886573.859" 
    capture_lex $P2789
    $P2789()
    $P2792 = get_root_global ["parrot"], "P6metaclass"
    $P2792."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block2788"  :anon :subid("157_1285886573.859") :outer("11_1285886573.859")
.annotate 'line', 0
    get_global $P2790, "@BLOCK"
    unless_null $P2790, vivify_161
    $P2790 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P2790
  vivify_161:
 $P2791 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P2791
    .return ($P2791)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "xblock_immediate"  :subid("12_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_19
.annotate 'line', 0
    new $P18, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P18, control_17
    push_eh $P18
    .lex "$xblock", param_19
    find_lex $P20, "$xblock"
    unless_null $P20, vivify_163
    $P20 = root_new ['parrot';'ResizablePMCArray']
  vivify_163:
    set $P21, $P20[1]
    unless_null $P21, vivify_164
    new $P21, "Undef"
  vivify_164:
    $P22 = "block_immediate"($P21)
    find_lex $P23, "$xblock"
    unless_null $P23, vivify_165
    $P23 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$xblock", $P23
  vivify_165:
    set $P23[1], $P22
    find_lex $P24, "$xblock"
    .return ($P24)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P25, exception, "payload"
    .return ($P25)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "block_immediate"  :subid("13_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_30
.annotate 'line', 0
    .const 'Sub' $P40 = "14_1285886573.859" 
    capture_lex $P40
    new $P29, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P29, control_28
    push_eh $P29
    .lex "$block", param_30
    find_lex $P31, "$block"
    $P31."blocktype"("immediate")
    find_lex $P35, "$block"
    $P36 = $P35."symtable"()
    unless $P36, unless_34
    set $P33, $P36
    goto unless_34_end
  unless_34:
    find_lex $P37, "$block"
    $P38 = $P37."handlers"()
    set $P33, $P38
  unless_34_end:
    if $P33, unless_32_end
    .const 'Sub' $P40 = "14_1285886573.859" 
    capture_lex $P40
    $P40()
  unless_32_end:
    find_lex $P60, "$block"
    .return ($P60)
  control_28:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P61, exception, "payload"
    .return ($P61)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block39"  :anon :subid("14_1285886573.859") :outer("13_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P51 = "15_1285886573.859" 
    capture_lex $P51
    new $P41, "Undef"
    .lex "$stmts", $P41
    get_hll_global $P42, ["PAST"], "Stmts"
    find_lex $P43, "$block"
    $P44 = $P42."new"($P43 :named("node"))
    store_lex "$stmts", $P44
    find_lex $P46, "$block"
    $P47 = $P46."list"()
    defined $I48, $P47
    unless $I48, for_undef_166
    iter $P45, $P47
    new $P57, 'ExceptionHandler'
    set_addr $P57, loop56_handler
    $P57."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P57
  loop56_test:
    unless $P45, loop56_done
    shift $P49, $P45
  loop56_redo:
    .const 'Sub' $P51 = "15_1285886573.859" 
    capture_lex $P51
    $P51($P49)
  loop56_next:
    goto loop56_test
  loop56_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P58, exception, 'type'
    eq $P58, .CONTROL_LOOP_NEXT, loop56_next
    eq $P58, .CONTROL_LOOP_REDO, loop56_redo
  loop56_done:
    pop_eh 
  for_undef_166:
    find_lex $P59, "$stmts"
    store_lex "$block", $P59
    .return ($P59)
.end


.namespace ["NQP";"Actions"]
.sub "_block50"  :anon :subid("15_1285886573.859") :outer("14_1285886573.859")
    .param pmc param_52
.annotate 'line', 0
    .lex "$_", param_52
    find_lex $P53, "$stmts"
    find_lex $P54, "$_"
    $P55 = $P53."push"($P54)
    .return ($P55)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "vivitype"  :subid("16_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_66
.annotate 'line', 0
    new $P65, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P65, control_64
    push_eh $P65
    .lex "$sigil", param_66
    find_lex $P69, "$sigil"
    set $S70, $P69
    iseq $I71, $S70, "%"
    if $I71, if_68
    find_lex $P76, "$sigil"
    set $S77, $P76
    iseq $I78, $S77, "@"
    if $I78, if_75
    new $P81, "String"
    assign $P81, "Undef"
    set $P74, $P81
    goto if_75_end
  if_75:
    get_hll_global $P79, ["PAST"], "Op"
    $P80 = $P79."new"("    %r = root_new ['parrot';'ResizablePMCArray']" :named("inline"))
    set $P74, $P80
  if_75_end:
    set $P67, $P74
    goto if_68_end
  if_68:
    get_hll_global $P72, ["PAST"], "Op"
    $P73 = $P72."new"("    %r = root_new ['parrot';'Hash']" :named("inline"))
    set $P67, $P73
  if_68_end:
    .return ($P67)
  control_64:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, "payload"
    .return ($P82)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "colonpair_str"  :subid("17_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_87
.annotate 'line', 0
    new $P86, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P86, control_85
    push_eh $P86
    .lex "$ast", param_87
    get_hll_global $P90, ["PAST"], "Op"
    find_lex $P91, "$ast"
    $P92 = $P90."ACCEPTS"($P91)
    if $P92, if_89
    find_lex $P96, "$ast"
    $P97 = $P96."value"()
    set $P88, $P97
    goto if_89_end
  if_89:
    find_lex $P93, "$ast"
    $P94 = $P93."list"()
    join $S95, " ", $P94
    new $P88, 'String'
    set $P88, $S95
  if_89_end:
    .return ($P88)
  control_85:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P98, exception, "payload"
    .return ($P98)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "push_block_handler"  :subid("18_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_103
    .param pmc param_104
.annotate 'line', 0
    new $P102, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P102, control_101
    push_eh $P102
    .lex "$/", param_103
    .lex "$block", param_104
    get_global $P106, "@BLOCK"
    unless_null $P106, vivify_167
    $P106 = root_new ['parrot';'ResizablePMCArray']
  vivify_167:
    set $P107, $P106[0]
    unless_null $P107, vivify_168
    new $P107, "Undef"
  vivify_168:
    $P108 = $P107."handlers"()
    if $P108, unless_105_end
    get_global $P109, "@BLOCK"
    unless_null $P109, vivify_169
    $P109 = root_new ['parrot';'ResizablePMCArray']
  vivify_169:
    set $P110, $P109[0]
    unless_null $P110, vivify_170
    new $P110, "Undef"
  vivify_170:
    new $P111, "ResizablePMCArray"
    $P110."handlers"($P111)
  unless_105_end:
    find_lex $P113, "$block"
    $P114 = $P113."arity"()
    if $P114, unless_112_end
    find_lex $P115, "$block"
    get_hll_global $P116, ["PAST"], "Op"
    get_hll_global $P117, ["PAST"], "Var"
    $P118 = $P117."new"("lexical" :named("scope"), "$!" :named("name"), 1 :named("isdecl"))
    get_hll_global $P119, ["PAST"], "Var"
    $P120 = $P119."new"("lexical" :named("scope"), "$_" :named("name"))
    $P121 = $P116."new"($P118, $P120, "bind" :named("pasttype"))
    $P115."unshift"($P121)
    find_lex $P122, "$block"
    get_hll_global $P123, ["PAST"], "Var"
    $P124 = $P123."new"("$_" :named("name"), "parameter" :named("scope"))
    $P122."unshift"($P124)
    find_lex $P125, "$block"
    $P125."symbol"("$_", "lexical" :named("scope"))
    find_lex $P126, "$block"
    $P126."symbol"("$!", "lexical" :named("scope"))
    find_lex $P127, "$block"
    $P127."arity"(1)
  unless_112_end:
    find_lex $P128, "$block"
    $P128."blocktype"("declaration")
    get_global $P129, "@BLOCK"
    unless_null $P129, vivify_171
    $P129 = root_new ['parrot';'ResizablePMCArray']
  vivify_171:
    set $P130, $P129[0]
    unless_null $P130, vivify_172
    new $P130, "Undef"
  vivify_172:
    $P131 = $P130."handlers"()
    get_hll_global $P132, ["PAST"], "Control"
    find_lex $P133, "$/"
    get_hll_global $P134, ["PAST"], "Stmts"
    get_hll_global $P135, ["PAST"], "Op"
    find_lex $P136, "$block"
    get_hll_global $P137, ["PAST"], "Var"
    $P138 = $P137."new"("register" :named("scope"), "exception" :named("name"))
    $P139 = $P135."new"($P136, $P138, "call" :named("pasttype"))
    get_hll_global $P140, ["PAST"], "Op"
    get_hll_global $P141, ["PAST"], "Var"
    get_hll_global $P142, ["PAST"], "Var"
    $P143 = $P142."new"("register" :named("scope"), "exception" :named("name"))
    $P144 = $P141."new"($P143, "handled", "keyed" :named("scope"))
    $P145 = $P140."new"($P144, 1, "bind" :named("pasttype"))
    $P146 = $P134."new"($P139, $P145)
    $P147 = $P132."new"($P146, $P133 :named("node"))
    $P148 = $P131."unshift"($P147)
    .return ($P148)
  control_101:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P149, exception, "payload"
    .return ($P149)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package"  :subid("19_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_154
.annotate 'line', 0
    .const 'Sub' $P196 = "20_1285886573.859" 
    capture_lex $P196
    new $P153, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P153, control_152
    push_eh $P153
    .lex "$/", param_154
    new $P155, "Undef"
    .lex "$name", $P155
    new $P156, "Undef"
    .lex "$past", $P156
    find_lex $P157, "$/"
    unless_null $P157, vivify_173
    $P157 = root_new ['parrot';'Hash']
  vivify_173:
    set $P158, $P157["package_def"]
    unless_null $P158, vivify_174
    $P158 = root_new ['parrot';'Hash']
  vivify_174:
    set $P159, $P158["name"]
    unless_null $P159, vivify_175
    new $P159, "Undef"
  vivify_175:
    set $S160, $P159
    new $P161, 'String'
    set $P161, $S160
    store_lex "$name", $P161
    find_dynamic_lex $P162, "$*PACKAGE-SETUP"
    unless_null $P162, vivify_176
    get_hll_global $P162, "$PACKAGE-SETUP"
    unless_null $P162, vivify_177
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_177:
  vivify_176:
    get_hll_global $P163, ["PAST"], "Stmts"
    get_hll_global $P164, ["PAST"], "Op"
    get_hll_global $P165, ["PAST"], "Var"
    $P166 = $P165."new"("type_obj" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
    get_hll_global $P167, ["PAST"], "Op"
    get_hll_global $P168, ["PAST"], "Var"
    find_lex $P169, "$/"
    unless_null $P169, vivify_178
    $P169 = root_new ['parrot';'Hash']
  vivify_178:
    set $P170, $P169["sym"]
    unless_null $P170, vivify_179
    new $P170, "Undef"
  vivify_179:
    set $S171, $P170
    find_dynamic_lex $P172, "%*HOW"
    unless_null $P172, vivify_180
    get_hll_global $P172, "%HOW"
    unless_null $P172, vivify_181
    die "Contextual %*HOW not found"
  vivify_181:
  vivify_180:
    set $P173, $P172[$S171]
    unless_null $P173, vivify_182
    new $P173, "Undef"
  vivify_182:
    $P174 = $P168."new"($P173 :named("name"), "" :named("namespace"), "package" :named("scope"))
    $P175 = $P167."new"($P174, "callmethod" :named("pasttype"), "new_type" :named("name"))
    $P176 = $P164."new"($P166, $P175, "bind" :named("pasttype"))
    get_hll_global $P177, ["PAST"], "Op"
    get_hll_global $P178, ["PAST"], "Var"
    find_lex $P179, "$name"
    $P180 = $P178."new"($P179 :named("name"), "" :named("namespace"), "package" :named("scope"))
    get_hll_global $P181, ["PAST"], "Var"
    $P182 = $P181."new"("type_obj" :named("name"), "register" :named("scope"))
    $P183 = $P177."new"($P180, $P182, "bind" :named("pasttype"))
    get_hll_global $P184, ["PAST"], "Op"
    get_hll_global $P185, ["PAST"], "Var"
    $P186 = $P185."new"("$?CLASS" :named("name"))
    get_hll_global $P187, ["PAST"], "Var"
    $P188 = $P187."new"("type_obj" :named("name"), "register" :named("scope"))
    $P189 = $P184."new"($P186, $P188, "bind" :named("pasttype"))
    $P190 = $P163."new"($P176, $P183, $P189)
    $P162."unshift"($P190)
    find_lex $P192, "$/"
    unless_null $P192, vivify_183
    $P192 = root_new ['parrot';'Hash']
  vivify_183:
    set $P193, $P192["package_def"]
    unless_null $P193, vivify_184
    $P193 = root_new ['parrot';'Hash']
  vivify_184:
    set $P194, $P193["repr"]
    unless_null $P194, vivify_185
    new $P194, "Undef"
  vivify_185:
    unless $P194, if_191_end
    .const 'Sub' $P196 = "20_1285886573.859" 
    capture_lex $P196
    $P196()
  if_191_end:
    find_dynamic_lex $P210, "$*PACKAGE-SETUP"
    unless_null $P210, vivify_195
    get_hll_global $P210, "$PACKAGE-SETUP"
    unless_null $P210, vivify_196
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_196:
  vivify_195:
    get_hll_global $P211, ["PAST"], "Op"
    get_hll_global $P212, ["PAST"], "Op"
    get_hll_global $P213, ["PAST"], "Var"
    $P214 = $P213."new"("type_obj" :named("name"), "register" :named("scope"))
    $P215 = $P212."new"($P214, "get_how PP" :named("pirop"))
    get_hll_global $P216, ["PAST"], "Var"
    $P217 = $P216."new"("type_obj" :named("name"), "register" :named("scope"))
    $P218 = $P211."new"($P215, $P217, "callmethod" :named("pasttype"), "compose" :named("name"))
    $P210."push"($P218)
    get_global $P219, "@BLOCK"
    unless_null $P219, vivify_197
    $P219 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    set $P220, $P219[0]
    unless_null $P220, vivify_198
    $P220 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    set $P221, $P220[0]
    unless_null $P221, vivify_199
    new $P221, "Undef"
  vivify_199:
    get_hll_global $P222, ["PAST"], "Var"
    find_lex $P223, "$name"
    $P224 = $P222."new"($P223 :named("name"), "package" :named("scope"), 1 :named("isdecl"))
    $P221."unshift"($P224)
    get_global $P225, "@BLOCK"
    unless_null $P225, vivify_200
    $P225 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    set $P226, $P225[0]
    unless_null $P226, vivify_201
    new $P226, "Undef"
  vivify_201:
    find_lex $P227, "$name"
    $P226."symbol"($P227, "package" :named("scope"))
    find_lex $P228, "$/"
    unless_null $P228, vivify_202
    $P228 = root_new ['parrot';'Hash']
  vivify_202:
    set $P229, $P228["package_def"]
    unless_null $P229, vivify_203
    new $P229, "Undef"
  vivify_203:
    $P230 = $P229."ast"()
    store_lex "$past", $P230
    find_lex $P231, "$past"
    get_hll_global $P232, ["PAST"], "Var"
    $P233 = $P232."new"("$?CLASS" :named("name"), "package" :named("scope"), 1 :named("isdecl"))
    $P231."unshift"($P233)
    find_lex $P234, "$past"
    $P234."symbol"("$?CLASS", "package" :named("scope"))
    find_lex $P235, "$past"
    $P236 = $P235."loadinit"()
    get_hll_global $P237, ["PAST"], "Block"
    find_dynamic_lex $P238, "$*PACKAGE-SETUP"
    unless_null $P238, vivify_204
    get_hll_global $P238, "$PACKAGE-SETUP"
    unless_null $P238, vivify_205
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_205:
  vivify_204:
    $P239 = $P237."new"($P238, "immediate" :named("blocktype"))
    $P236."push"($P239)
    new $P240, "Exception"
    set $P240['type'], .CONTROL_RETURN
    find_lex $P241, "$past"
    setattribute $P240, 'payload', $P241
    throw $P240
    .return ()
  control_152:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P242, exception, "payload"
    .return ($P242)
.end


.namespace ["NQP";"Actions"]
.sub "_block195"  :anon :subid("20_1285886573.859") :outer("19_1285886573.859")
.annotate 'line', 0
    new $P197, "Undef"
    .lex "$repr_name", $P197
    find_lex $P198, "$/"
    unless_null $P198, vivify_186
    $P198 = root_new ['parrot';'Hash']
  vivify_186:
    set $P199, $P198["package_def"]
    unless_null $P199, vivify_187
    $P199 = root_new ['parrot';'Hash']
  vivify_187:
    set $P200, $P199["repr"]
    unless_null $P200, vivify_188
    $P200 = root_new ['parrot';'ResizablePMCArray']
  vivify_188:
    set $P201, $P200[0]
    unless_null $P201, vivify_189
    new $P201, "Undef"
  vivify_189:
    $P202 = $P201."ast"()
    store_lex "$repr_name", $P202
    find_lex $P203, "$repr_name"
    $P203."named"("repr")
    find_dynamic_lex $P204, "$*PACKAGE-SETUP"
    unless_null $P204, vivify_190
    get_hll_global $P204, "$PACKAGE-SETUP"
    unless_null $P204, vivify_191
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_191:
  vivify_190:
    set $P205, $P204[0]
    unless_null $P205, vivify_192
    $P205 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    set $P206, $P205[0]
    unless_null $P206, vivify_193
    $P206 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    set $P207, $P206[1]
    unless_null $P207, vivify_194
    new $P207, "Undef"
  vivify_194:
    find_lex $P208, "$repr_name"
    $P209 = $P207."push"($P208)
    .return ($P209)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "old_package"  :subid("21_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_247
.annotate 'line', 0
    new $P246, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P246, control_245
    push_eh $P246
    .lex "$/", param_247
    new $P248, "Undef"
    .lex "$past", $P248
    new $P249, "Undef"
    .lex "$classinit", $P249
    new $P250, "Undef"
    .lex "$parent", $P250
    find_lex $P251, "$/"
    unless_null $P251, vivify_206
    $P251 = root_new ['parrot';'Hash']
  vivify_206:
    set $P252, $P251["package_def"]
    unless_null $P252, vivify_207
    new $P252, "Undef"
  vivify_207:
    $P253 = $P252."ast"()
    store_lex "$past", $P253
    get_hll_global $P254, ["PAST"], "Op"
    get_hll_global $P255, ["PAST"], "Op"
    $P256 = $P255."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
    find_lex $P257, "$/"
    unless_null $P257, vivify_208
    $P257 = root_new ['parrot';'Hash']
  vivify_208:
    set $P258, $P257["package_def"]
    unless_null $P258, vivify_209
    $P258 = root_new ['parrot';'Hash']
  vivify_209:
    set $P259, $P258["name"]
    unless_null $P259, vivify_210
    new $P259, "Undef"
  vivify_210:
    set $S260, $P259
    $P261 = $P254."new"($P256, $S260, "new_class" :named("name"), "callmethod" :named("pasttype"))
    store_lex "$classinit", $P261
    find_lex $P264, "$/"
    unless_null $P264, vivify_211
    $P264 = root_new ['parrot';'Hash']
  vivify_211:
    set $P265, $P264["package_def"]
    unless_null $P265, vivify_212
    $P265 = root_new ['parrot';'Hash']
  vivify_212:
    set $P266, $P265["parent"]
    unless_null $P266, vivify_213
    $P266 = root_new ['parrot';'ResizablePMCArray']
  vivify_213:
    set $P267, $P266[0]
    unless_null $P267, vivify_214
    new $P267, "Undef"
  vivify_214:
    set $S268, $P267
    unless $S268, unless_263
    new $P262, 'String'
    set $P262, $S268
    goto unless_263_end
  unless_263:
    find_lex $P271, "$/"
    unless_null $P271, vivify_215
    $P271 = root_new ['parrot';'Hash']
  vivify_215:
    set $P272, $P271["sym"]
    unless_null $P272, vivify_216
    new $P272, "Undef"
  vivify_216:
    set $S273, $P272
    iseq $I274, $S273, "grammar"
    if $I274, if_270
    new $P276, "String"
    assign $P276, ""
    set $P269, $P276
    goto if_270_end
  if_270:
    new $P275, "String"
    assign $P275, "Regex::Cursor"
    set $P269, $P275
  if_270_end:
    set $P262, $P269
  unless_263_end:
    store_lex "$parent", $P262
    find_lex $P278, "$parent"
    unless $P278, if_277_end
    find_lex $P279, "$classinit"
    get_hll_global $P280, ["PAST"], "Val"
    find_lex $P281, "$parent"
    $P282 = $P280."new"($P281 :named("value"), "parent" :named("named"))
    $P279."push"($P282)
  if_277_end:
    find_lex $P284, "$past"
    unless_null $P284, vivify_217
    $P284 = root_new ['parrot';'Hash']
  vivify_217:
    set $P285, $P284["attributes"]
    unless_null $P285, vivify_218
    new $P285, "Undef"
  vivify_218:
    unless $P285, if_283_end
    find_lex $P286, "$classinit"
    find_lex $P287, "$past"
    unless_null $P287, vivify_219
    $P287 = root_new ['parrot';'Hash']
  vivify_219:
    set $P288, $P287["attributes"]
    unless_null $P288, vivify_220
    new $P288, "Undef"
  vivify_220:
    $P286."push"($P288)
  if_283_end:
    get_global $P289, "@BLOCK"
    unless_null $P289, vivify_221
    $P289 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    set $P290, $P289[0]
    unless_null $P290, vivify_222
    new $P290, "Undef"
  vivify_222:
    $P291 = $P290."loadinit"()
    find_lex $P292, "$classinit"
    $P291."push"($P292)
    find_lex $P293, "$/"
    find_lex $P294, "$past"
    $P295 = $P293."!make"($P294)
    .return ($P295)
  control_245:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P296, exception, "payload"
    .return ($P296)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "control"  :subid("22_1285886573.859") :outer("11_1285886573.859")
    .param pmc param_301
    .param pmc param_302
.annotate 'line', 0
    new $P300, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P300, control_299
    push_eh $P300
    .lex "$/", param_301
    .lex "$type", param_302
    find_lex $P303, "$/"
    get_hll_global $P304, ["PAST"], "Op"
    find_lex $P305, "$/"
    get_hll_global $P306, ["PAST"], "Val"
    find_lex $P307, "$type"
    $P308 = $P306."new"($P307 :named("value"), "!except_types" :named("returns"))
    $P309 = $P304."new"(0, $P308, $P305 :named("node"), "die__vii" :named("pirop"))
    $P310 = $P303."!make"($P309)
    .return ($P310)
  control_299:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P311, exception, "payload"
    .return ($P311)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "TOP"  :subid("23_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_320
.annotate 'line', 0
    new $P319, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P319, control_318
    push_eh $P319
    .lex "self", self
    .lex "$/", param_320
    find_lex $P321, "$/"
    find_lex $P322, "$/"
    unless_null $P322, vivify_223
    $P322 = root_new ['parrot';'Hash']
  vivify_223:
    set $P323, $P322["comp_unit"]
    unless_null $P323, vivify_224
    new $P323, "Undef"
  vivify_224:
    $P324 = $P323."ast"()
    $P325 = $P321."!make"($P324)
    .return ($P325)
  control_318:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P326, exception, "payload"
    .return ($P326)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "deflongname"  :subid("24_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_330
.annotate 'line', 0
    new $P329, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P329, control_328
    push_eh $P329
    .lex "self", self
    .lex "$/", param_330
    find_lex $P331, "$/"
    find_lex $P334, "$/"
    unless_null $P334, vivify_225
    $P334 = root_new ['parrot';'Hash']
  vivify_225:
    set $P335, $P334["colonpair"]
    unless_null $P335, vivify_226
    new $P335, "Undef"
  vivify_226:
    if $P335, if_333
    find_lex $P355, "$/"
    set $S356, $P355
    new $P332, 'String'
    set $P332, $S356
    goto if_333_end
  if_333:
    find_lex $P336, "$/"
    unless_null $P336, vivify_227
    $P336 = root_new ['parrot';'Hash']
  vivify_227:
    set $P337, $P336["identifier"]
    unless_null $P337, vivify_228
    new $P337, "Undef"
  vivify_228:
    set $S338, $P337
    new $P339, 'String'
    set $P339, $S338
    concat $P340, $P339, ":"
    find_lex $P341, "$/"
    unless_null $P341, vivify_229
    $P341 = root_new ['parrot';'Hash']
  vivify_229:
    set $P342, $P341["colonpair"]
    unless_null $P342, vivify_230
    $P342 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P343, $P342[0]
    unless_null $P343, vivify_231
    new $P343, "Undef"
  vivify_231:
    $P344 = $P343."ast"()
    $S345 = $P344."named"()
    concat $P346, $P340, $S345
    concat $P347, $P346, "<"
    find_lex $P348, "$/"
    unless_null $P348, vivify_232
    $P348 = root_new ['parrot';'Hash']
  vivify_232:
    set $P349, $P348["colonpair"]
    unless_null $P349, vivify_233
    $P349 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P350, $P349[0]
    unless_null $P350, vivify_234
    new $P350, "Undef"
  vivify_234:
    $P351 = $P350."ast"()
    $S352 = "colonpair_str"($P351)
    concat $P353, $P347, $S352
    concat $P354, $P353, ">"
    set $P332, $P354
  if_333_end:
    $P357 = $P331."!make"($P332)
    .return ($P357)
  control_328:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P358, exception, "payload"
    .return ($P358)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "comp_unit"  :subid("25_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_363
.annotate 'line', 0
    new $P362, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P362, control_361
    push_eh $P362
    .lex "self", self
    .lex "$/", param_363
    new $P364, "Undef"
    .lex "$mainline", $P364
    new $P365, "Undef"
    .lex "$unit", $P365
    find_lex $P366, "$/"
    unless_null $P366, vivify_235
    $P366 = root_new ['parrot';'Hash']
  vivify_235:
    set $P367, $P366["statementlist"]
    unless_null $P367, vivify_236
    new $P367, "Undef"
  vivify_236:
    $P368 = $P367."ast"()
    store_lex "$mainline", $P368
    get_global $P369, "@BLOCK"
    $P370 = $P369."shift"()
    store_lex "$unit", $P370
    find_lex $P371, "$unit"
    find_lex $P372, "self"
    $P373 = $P372."CTXSAVE"()
    $P371."push"($P373)
    find_lex $P374, "$unit"
    $P374."loadlibs"("nqp_group", "nqp_ops")
    find_lex $P375, "$unit"
    get_hll_global $P376, ["PAST"], "Op"
    $P377 = $P376."new"("nqp_dynop_setup v" :named("pirop"))
    $P375."unshift"($P377)
    find_lex $P378, "$unit"
    get_hll_global $P379, ["PAST"], "Op"
    find_lex $P380, "$mainline"
    $P381 = $P379."new"($P380, "return" :named("pirop"))
    $P378."push"($P381)
    find_lex $P382, "$unit"
    get_hll_global $P383, ["PAST"], "Block"
    get_hll_global $P384, ["PAST"], "Op"
    get_hll_global $P385, ["PAST"], "Val"
    find_lex $P386, "$unit"
    $P387 = $P385."new"($P386 :named("value"))
    $P388 = $P384."new"($P387, "call" :named("pasttype"))
    $P389 = $P383."new"($P388, ":load" :named("pirflags"), 0 :named("lexical"), "" :named("namespace"))
    $P382."push"($P389)
    find_lex $P390, "$unit"
    find_lex $P391, "$/"
    $P390."node"($P391)
    find_lex $P392, "$/"
    find_lex $P393, "$unit"
    $P394 = $P392."!make"($P393)
    .return ($P394)
  control_361:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P395, exception, "payload"
    .return ($P395)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statementlist"  :subid("26_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_399
.annotate 'line', 0
    .const 'Sub' $P413 = "27_1285886573.859" 
    capture_lex $P413
    new $P398, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P398, control_397
    push_eh $P398
    .lex "self", self
    .lex "$/", param_399
    new $P400, "Undef"
    .lex "$past", $P400
    get_hll_global $P401, ["PAST"], "Stmts"
    find_lex $P402, "$/"
    $P403 = $P401."new"($P402 :named("node"))
    store_lex "$past", $P403
    find_lex $P405, "$/"
    unless_null $P405, vivify_237
    $P405 = root_new ['parrot';'Hash']
  vivify_237:
    set $P406, $P405["statement"]
    unless_null $P406, vivify_238
    new $P406, "Undef"
  vivify_238:
    unless $P406, if_404_end
    find_lex $P408, "$/"
    unless_null $P408, vivify_239
    $P408 = root_new ['parrot';'Hash']
  vivify_239:
    set $P409, $P408["statement"]
    unless_null $P409, vivify_240
    new $P409, "Undef"
  vivify_240:
    defined $I410, $P409
    unless $I410, for_undef_241
    iter $P407, $P409
    new $P433, 'ExceptionHandler'
    set_addr $P433, loop432_handler
    $P433."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P433
  loop432_test:
    unless $P407, loop432_done
    shift $P411, $P407
  loop432_redo:
    .const 'Sub' $P413 = "27_1285886573.859" 
    capture_lex $P413
    $P413($P411)
  loop432_next:
    goto loop432_test
  loop432_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P434, exception, 'type'
    eq $P434, .CONTROL_LOOP_NEXT, loop432_next
    eq $P434, .CONTROL_LOOP_REDO, loop432_redo
  loop432_done:
    pop_eh 
  for_undef_241:
  if_404_end:
    find_lex $P435, "$/"
    find_lex $P436, "$past"
    $P437 = $P435."!make"($P436)
    .return ($P437)
  control_397:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P438, exception, "payload"
    .return ($P438)
.end


.namespace ["NQP";"Actions"]
.sub "_block412"  :anon :subid("27_1285886573.859") :outer("26_1285886573.859")
    .param pmc param_415
.annotate 'line', 0
    new $P414, "Undef"
    .lex "$ast", $P414
    .lex "$_", param_415
    find_lex $P416, "$_"
    $P417 = $P416."ast"()
    store_lex "$ast", $P417
    find_lex $P419, "$ast"
    unless_null $P419, vivify_242
    $P419 = root_new ['parrot';'Hash']
  vivify_242:
    set $P420, $P419["sink"]
    unless_null $P420, vivify_243
    new $P420, "Undef"
  vivify_243:
    defined $I421, $P420
    unless $I421, if_418_end
    find_lex $P422, "$ast"
    unless_null $P422, vivify_244
    $P422 = root_new ['parrot';'Hash']
  vivify_244:
    set $P423, $P422["sink"]
    unless_null $P423, vivify_245
    new $P423, "Undef"
  vivify_245:
    store_lex "$ast", $P423
  if_418_end:
    find_lex $P425, "$ast"
    unless_null $P425, vivify_246
    $P425 = root_new ['parrot';'Hash']
  vivify_246:
    set $P426, $P425["bareblock"]
    unless_null $P426, vivify_247
    new $P426, "Undef"
  vivify_247:
    unless $P426, if_424_end
    find_lex $P427, "$ast"
    $P428 = "block_immediate"($P427)
    store_lex "$ast", $P428
  if_424_end:
    find_lex $P429, "$past"
    find_lex $P430, "$ast"
    $P431 = $P429."push"($P430)
    .return ($P431)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement"  :subid("28_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_442
    .param pmc param_443 :optional
    .param int has_param_443 :opt_flag
.annotate 'line', 0
    .const 'Sub' $P451 = "29_1285886573.859" 
    capture_lex $P451
    new $P441, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P441, control_440
    push_eh $P441
    .lex "self", self
    .lex "$/", param_442
    if has_param_443, optparam_248
    new $P444, "Undef"
    set param_443, $P444
  optparam_248:
    .lex "$key", param_443
    new $P445, "Undef"
    .lex "$past", $P445
    find_lex $P446, "$past"
    find_lex $P448, "$/"
    unless_null $P448, vivify_249
    $P448 = root_new ['parrot';'Hash']
  vivify_249:
    set $P449, $P448["EXPR"]
    unless_null $P449, vivify_250
    new $P449, "Undef"
  vivify_250:
    if $P449, if_447
    find_lex $P512, "$/"
    unless_null $P512, vivify_251
    $P512 = root_new ['parrot';'Hash']
  vivify_251:
    set $P513, $P512["statement_control"]
    unless_null $P513, vivify_252
    new $P513, "Undef"
  vivify_252:
    if $P513, if_511
    new $P517, "Integer"
    assign $P517, 0
    store_lex "$past", $P517
    goto if_511_end
  if_511:
    find_lex $P514, "$/"
    unless_null $P514, vivify_253
    $P514 = root_new ['parrot';'Hash']
  vivify_253:
    set $P515, $P514["statement_control"]
    unless_null $P515, vivify_254
    new $P515, "Undef"
  vivify_254:
    $P516 = $P515."ast"()
    store_lex "$past", $P516
  if_511_end:
    goto if_447_end
  if_447:
    .const 'Sub' $P451 = "29_1285886573.859" 
    capture_lex $P451
    $P451()
  if_447_end:
    find_lex $P518, "$/"
    find_lex $P519, "$past"
    $P520 = $P518."!make"($P519)
    .return ($P520)
  control_440:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P521, exception, "payload"
    .return ($P521)
.end


.namespace ["NQP";"Actions"]
.sub "_block450"  :anon :subid("29_1285886573.859") :outer("28_1285886573.859")
.annotate 'line', 0
    new $P452, "Undef"
    .lex "$mc", $P452
    new $P453, "Undef"
    .lex "$ml", $P453
    find_lex $P454, "$/"
    unless_null $P454, vivify_255
    $P454 = root_new ['parrot';'Hash']
  vivify_255:
    set $P455, $P454["statement_mod_cond"]
    unless_null $P455, vivify_256
    $P455 = root_new ['parrot';'ResizablePMCArray']
  vivify_256:
    set $P456, $P455[0]
    unless_null $P456, vivify_257
    new $P456, "Undef"
  vivify_257:
    store_lex "$mc", $P456
    find_lex $P457, "$/"
    unless_null $P457, vivify_258
    $P457 = root_new ['parrot';'Hash']
  vivify_258:
    set $P458, $P457["statement_mod_loop"]
    unless_null $P458, vivify_259
    $P458 = root_new ['parrot';'ResizablePMCArray']
  vivify_259:
    set $P459, $P458[0]
    unless_null $P459, vivify_260
    new $P459, "Undef"
  vivify_260:
    store_lex "$ml", $P459
    find_lex $P460, "$/"
    unless_null $P460, vivify_261
    $P460 = root_new ['parrot';'Hash']
  vivify_261:
    set $P461, $P460["EXPR"]
    unless_null $P461, vivify_262
    new $P461, "Undef"
  vivify_262:
    $P462 = $P461."ast"()
    store_lex "$past", $P462
    find_lex $P464, "$mc"
    unless $P464, if_463_end
    get_hll_global $P465, ["PAST"], "Op"
    find_lex $P466, "$mc"
    unless_null $P466, vivify_263
    $P466 = root_new ['parrot';'Hash']
  vivify_263:
    set $P467, $P466["cond"]
    unless_null $P467, vivify_264
    new $P467, "Undef"
  vivify_264:
    $P468 = $P467."ast"()
    find_lex $P469, "$past"
    find_lex $P470, "$mc"
    unless_null $P470, vivify_265
    $P470 = root_new ['parrot';'Hash']
  vivify_265:
    set $P471, $P470["sym"]
    unless_null $P471, vivify_266
    new $P471, "Undef"
  vivify_266:
    set $S472, $P471
    find_lex $P473, "$/"
    $P474 = $P465."new"($P468, $P469, $S472 :named("pasttype"), $P473 :named("node"))
    store_lex "$past", $P474
  if_463_end:
    find_lex $P477, "$ml"
    if $P477, if_476
    set $P475, $P477
    goto if_476_end
  if_476:
    find_lex $P480, "$ml"
    unless_null $P480, vivify_267
    $P480 = root_new ['parrot';'Hash']
  vivify_267:
    set $P481, $P480["sym"]
    unless_null $P481, vivify_268
    new $P481, "Undef"
  vivify_268:
    set $S482, $P481
    iseq $I483, $S482, "for"
    if $I483, if_479
    get_hll_global $P501, ["PAST"], "Op"
    find_lex $P502, "$ml"
    unless_null $P502, vivify_269
    $P502 = root_new ['parrot';'Hash']
  vivify_269:
    set $P503, $P502["cond"]
    unless_null $P503, vivify_270
    new $P503, "Undef"
  vivify_270:
    $P504 = $P503."ast"()
    find_lex $P505, "$past"
    find_lex $P506, "$ml"
    unless_null $P506, vivify_271
    $P506 = root_new ['parrot';'Hash']
  vivify_271:
    set $P507, $P506["sym"]
    unless_null $P507, vivify_272
    new $P507, "Undef"
  vivify_272:
    set $S508, $P507
    find_lex $P509, "$/"
    $P510 = $P501."new"($P504, $P505, $S508 :named("pasttype"), $P509 :named("node"))
    store_lex "$past", $P510
    set $P478, $P510
    goto if_479_end
  if_479:
    get_hll_global $P484, ["PAST"], "Block"
    get_hll_global $P485, ["PAST"], "Var"
    $P486 = $P485."new"("$_" :named("name"), "parameter" :named("scope"), 1 :named("isdecl"))
    find_lex $P487, "$past"
    $P488 = $P484."new"($P486, $P487, "immediate" :named("blocktype"))
    store_lex "$past", $P488
    find_lex $P489, "$past"
    $P489."symbol"("$_", "lexical" :named("scope"))
    find_lex $P490, "$past"
    $P490."arity"(1)
    get_hll_global $P491, ["PAST"], "Op"
    find_lex $P492, "$ml"
    unless_null $P492, vivify_273
    $P492 = root_new ['parrot';'Hash']
  vivify_273:
    set $P493, $P492["cond"]
    unless_null $P493, vivify_274
    new $P493, "Undef"
  vivify_274:
    $P494 = $P493."ast"()
    find_lex $P495, "$past"
    find_lex $P496, "$ml"
    unless_null $P496, vivify_275
    $P496 = root_new ['parrot';'Hash']
  vivify_275:
    set $P497, $P496["sym"]
    unless_null $P497, vivify_276
    new $P497, "Undef"
  vivify_276:
    set $S498, $P497
    find_lex $P499, "$/"
    $P500 = $P491."new"($P494, $P495, $S498 :named("pasttype"), $P499 :named("node"))
    store_lex "$past", $P500
    set $P478, $P500
  if_479_end:
    set $P475, $P478
  if_476_end:
    .return ($P475)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "xblock"  :subid("30_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_525
.annotate 'line', 0
    new $P524, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P524, control_523
    push_eh $P524
    .lex "self", self
    .lex "$/", param_525
    find_lex $P526, "$/"
    get_hll_global $P527, ["PAST"], "Op"
    find_lex $P528, "$/"
    unless_null $P528, vivify_277
    $P528 = root_new ['parrot';'Hash']
  vivify_277:
    set $P529, $P528["EXPR"]
    unless_null $P529, vivify_278
    new $P529, "Undef"
  vivify_278:
    $P530 = $P529."ast"()
    find_lex $P531, "$/"
    unless_null $P531, vivify_279
    $P531 = root_new ['parrot';'Hash']
  vivify_279:
    set $P532, $P531["pblock"]
    unless_null $P532, vivify_280
    new $P532, "Undef"
  vivify_280:
    $P533 = $P532."ast"()
    find_lex $P534, "$/"
    $P535 = $P527."new"($P530, $P533, "if" :named("pasttype"), $P534 :named("node"))
    $P536 = $P526."!make"($P535)
    .return ($P536)
  control_523:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P537, exception, "payload"
    .return ($P537)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "pblock"  :subid("31_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_541
.annotate 'line', 0
    new $P540, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P540, control_539
    push_eh $P540
    .lex "self", self
    .lex "$/", param_541
    find_lex $P542, "$/"
    find_lex $P543, "$/"
    unless_null $P543, vivify_281
    $P543 = root_new ['parrot';'Hash']
  vivify_281:
    set $P544, $P543["blockoid"]
    unless_null $P544, vivify_282
    new $P544, "Undef"
  vivify_282:
    $P545 = $P544."ast"()
    $P546 = $P542."!make"($P545)
    .return ($P546)
  control_539:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P547, exception, "payload"
    .return ($P547)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "block"  :subid("32_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_551
.annotate 'line', 0
    new $P550, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P550, control_549
    push_eh $P550
    .lex "self", self
    .lex "$/", param_551
    find_lex $P552, "$/"
    find_lex $P553, "$/"
    unless_null $P553, vivify_283
    $P553 = root_new ['parrot';'Hash']
  vivify_283:
    set $P554, $P553["blockoid"]
    unless_null $P554, vivify_284
    new $P554, "Undef"
  vivify_284:
    $P555 = $P554."ast"()
    $P556 = $P552."!make"($P555)
    .return ($P556)
  control_549:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P557, exception, "payload"
    .return ($P557)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "blockoid"  :subid("33_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_561
.annotate 'line', 0
    new $P560, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P560, control_559
    push_eh $P560
    .lex "self", self
    .lex "$/", param_561
    new $P562, "Undef"
    .lex "$past", $P562
    new $P563, "Undef"
    .lex "$BLOCK", $P563
    find_lex $P564, "$/"
    unless_null $P564, vivify_285
    $P564 = root_new ['parrot';'Hash']
  vivify_285:
    set $P565, $P564["statementlist"]
    unless_null $P565, vivify_286
    new $P565, "Undef"
  vivify_286:
    $P566 = $P565."ast"()
    store_lex "$past", $P566
    get_global $P567, "@BLOCK"
    $P568 = $P567."shift"()
    store_lex "$BLOCK", $P568
    find_lex $P569, "$BLOCK"
    find_lex $P570, "$past"
    $P569."push"($P570)
    find_lex $P571, "$BLOCK"
    find_lex $P572, "$/"
    $P571."node"($P572)
    find_lex $P573, "$BLOCK"
    $P573."closure"(1)
    find_lex $P574, "$/"
    find_lex $P575, "$BLOCK"
    $P576 = $P574."!make"($P575)
    .return ($P576)
  control_559:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P577, exception, "payload"
    .return ($P577)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "newpad"  :subid("34_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_581
.annotate 'line', 0
    new $P580, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P580, control_579
    push_eh $P580
    .lex "self", self
    .lex "$/", param_581
    get_global $P582, "@BLOCK"
    unless_null $P582, vivify_287
    $P582 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P582
  vivify_287:
    get_global $P583, "@BLOCK"
    get_global $P584, "@BLOCK"
    get_hll_global $P585, ["PAST"], "Block"
    get_hll_global $P586, ["PAST"], "Stmts"
    $P587 = $P586."new"()
    $P588 = $P585."new"($P587)
    $P589 = $P584."unshift"($P588)
    .return ($P589)
  control_579:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P590, exception, "payload"
    .return ($P590)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "outerctx"  :subid("35_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_594
.annotate 'line', 0
    new $P593, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P593, control_592
    push_eh $P593
    .lex "self", self
    .lex "$/", param_594
    get_global $P595, "@BLOCK"
    unless_null $P595, vivify_288
    $P595 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P595
  vivify_288:
    get_global $P596, "@BLOCK"
    find_lex $P597, "self"
    get_global $P598, "@BLOCK"
    unless_null $P598, vivify_289
    $P598 = root_new ['parrot';'ResizablePMCArray']
  vivify_289:
    set $P599, $P598[0]
    unless_null $P599, vivify_290
    new $P599, "Undef"
  vivify_290:
    $P600 = $P597."SET_BLOCK_OUTER_CTX"($P599)
    .return ($P600)
  control_592:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P601, exception, "payload"
    .return ($P601)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<if>"  :subid("36_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_605
.annotate 'line', 0
    .const 'Sub' $P633 = "37_1285886573.859" 
    capture_lex $P633
    new $P604, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P604, control_603
    push_eh $P604
    .lex "self", self
    .lex "$/", param_605
    new $P606, "Undef"
    .lex "$count", $P606
    new $P607, "Undef"
    .lex "$past", $P607
    find_lex $P608, "$/"
    unless_null $P608, vivify_291
    $P608 = root_new ['parrot';'Hash']
  vivify_291:
    set $P609, $P608["xblock"]
    unless_null $P609, vivify_292
    new $P609, "Undef"
  vivify_292:
    set $N610, $P609
    new $P611, 'Float'
    set $P611, $N610
    sub $P612, $P611, 1
    store_lex "$count", $P612
    find_lex $P613, "$count"
    set $I614, $P613
    find_lex $P615, "$/"
    unless_null $P615, vivify_293
    $P615 = root_new ['parrot';'Hash']
  vivify_293:
    set $P616, $P615["xblock"]
    unless_null $P616, vivify_294
    $P616 = root_new ['parrot';'ResizablePMCArray']
  vivify_294:
    set $P617, $P616[$I614]
    unless_null $P617, vivify_295
    new $P617, "Undef"
  vivify_295:
    $P618 = $P617."ast"()
    $P619 = "xblock_immediate"($P618)
    store_lex "$past", $P619
    find_lex $P621, "$/"
    unless_null $P621, vivify_296
    $P621 = root_new ['parrot';'Hash']
  vivify_296:
    set $P622, $P621["else"]
    unless_null $P622, vivify_297
    new $P622, "Undef"
  vivify_297:
    unless $P622, if_620_end
    find_lex $P623, "$past"
    find_lex $P624, "$/"
    unless_null $P624, vivify_298
    $P624 = root_new ['parrot';'Hash']
  vivify_298:
    set $P625, $P624["else"]
    unless_null $P625, vivify_299
    $P625 = root_new ['parrot';'ResizablePMCArray']
  vivify_299:
    set $P626, $P625[0]
    unless_null $P626, vivify_300
    new $P626, "Undef"
  vivify_300:
    $P627 = $P626."ast"()
    $P628 = "block_immediate"($P627)
    $P623."push"($P628)
  if_620_end:
    new $P649, 'ExceptionHandler'
    set_addr $P649, loop648_handler
    $P649."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P649
  loop648_test:
    find_lex $P629, "$count"
    set $N630, $P629
    isgt $I631, $N630, 0.0
    unless $I631, loop648_done
  loop648_redo:
    .const 'Sub' $P633 = "37_1285886573.859" 
    capture_lex $P633
    $P633()
  loop648_next:
    goto loop648_test
  loop648_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P650, exception, 'type'
    eq $P650, .CONTROL_LOOP_NEXT, loop648_next
    eq $P650, .CONTROL_LOOP_REDO, loop648_redo
  loop648_done:
    pop_eh 
    find_lex $P651, "$/"
    find_lex $P652, "$past"
    $P653 = $P651."!make"($P652)
    .return ($P653)
  control_603:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P654, exception, "payload"
    .return ($P654)
.end


.namespace ["NQP";"Actions"]
.sub "_block632"  :anon :subid("37_1285886573.859") :outer("36_1285886573.859")
.annotate 'line', 0
    new $P634, "Undef"
    .lex "$else", $P634
    find_lex $P635, "$count"
    clone $P636, $P635
    dec $P635
    find_lex $P637, "$past"
    store_lex "$else", $P637
    find_lex $P638, "$count"
    set $I639, $P638
    find_lex $P640, "$/"
    unless_null $P640, vivify_301
    $P640 = root_new ['parrot';'Hash']
  vivify_301:
    set $P641, $P640["xblock"]
    unless_null $P641, vivify_302
    $P641 = root_new ['parrot';'ResizablePMCArray']
  vivify_302:
    set $P642, $P641[$I639]
    unless_null $P642, vivify_303
    new $P642, "Undef"
  vivify_303:
    $P643 = $P642."ast"()
    $P644 = "xblock_immediate"($P643)
    store_lex "$past", $P644
    find_lex $P645, "$past"
    find_lex $P646, "$else"
    $P647 = $P645."push"($P646)
    .return ($P647)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<unless>"  :subid("38_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_658
.annotate 'line', 0
    new $P657, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P657, control_656
    push_eh $P657
    .lex "self", self
    .lex "$/", param_658
    new $P659, "Undef"
    .lex "$past", $P659
    find_lex $P660, "$/"
    unless_null $P660, vivify_304
    $P660 = root_new ['parrot';'Hash']
  vivify_304:
    set $P661, $P660["xblock"]
    unless_null $P661, vivify_305
    new $P661, "Undef"
  vivify_305:
    $P662 = $P661."ast"()
    $P663 = "xblock_immediate"($P662)
    store_lex "$past", $P663
    find_lex $P664, "$past"
    $P664."pasttype"("unless")
    find_lex $P665, "$/"
    find_lex $P666, "$past"
    $P667 = $P665."!make"($P666)
    .return ($P667)
  control_656:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P668, exception, "payload"
    .return ($P668)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<while>"  :subid("39_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_672
.annotate 'line', 0
    new $P671, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P671, control_670
    push_eh $P671
    .lex "self", self
    .lex "$/", param_672
    new $P673, "Undef"
    .lex "$past", $P673
    find_lex $P674, "$/"
    unless_null $P674, vivify_306
    $P674 = root_new ['parrot';'Hash']
  vivify_306:
    set $P675, $P674["xblock"]
    unless_null $P675, vivify_307
    new $P675, "Undef"
  vivify_307:
    $P676 = $P675."ast"()
    $P677 = "xblock_immediate"($P676)
    store_lex "$past", $P677
    find_lex $P678, "$past"
    find_lex $P679, "$/"
    unless_null $P679, vivify_308
    $P679 = root_new ['parrot';'Hash']
  vivify_308:
    set $P680, $P679["sym"]
    unless_null $P680, vivify_309
    new $P680, "Undef"
  vivify_309:
    set $S681, $P680
    $P678."pasttype"($S681)
    find_lex $P682, "$/"
    find_lex $P683, "$past"
    $P684 = $P682."!make"($P683)
    .return ($P684)
  control_670:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P685, exception, "payload"
    .return ($P685)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<repeat>"  :subid("40_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_689
.annotate 'line', 0
    new $P688, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P688, control_687
    push_eh $P688
    .lex "self", self
    .lex "$/", param_689
    new $P690, "Undef"
    .lex "$pasttype", $P690
    new $P691, "Undef"
    .lex "$past", $P691
    new $P692, "String"
    assign $P692, "repeat_"
    find_lex $P693, "$/"
    unless_null $P693, vivify_310
    $P693 = root_new ['parrot';'Hash']
  vivify_310:
    set $P694, $P693["wu"]
    unless_null $P694, vivify_311
    new $P694, "Undef"
  vivify_311:
    set $S695, $P694
    concat $P696, $P692, $S695
    store_lex "$pasttype", $P696
    find_lex $P697, "$past"
    find_lex $P699, "$/"
    unless_null $P699, vivify_312
    $P699 = root_new ['parrot';'Hash']
  vivify_312:
    set $P700, $P699["xblock"]
    unless_null $P700, vivify_313
    new $P700, "Undef"
  vivify_313:
    if $P700, if_698
    get_hll_global $P707, ["PAST"], "Op"
    find_lex $P708, "$/"
    unless_null $P708, vivify_314
    $P708 = root_new ['parrot';'Hash']
  vivify_314:
    set $P709, $P708["EXPR"]
    unless_null $P709, vivify_315
    new $P709, "Undef"
  vivify_315:
    $P710 = $P709."ast"()
    find_lex $P711, "$/"
    unless_null $P711, vivify_316
    $P711 = root_new ['parrot';'Hash']
  vivify_316:
    set $P712, $P711["pblock"]
    unless_null $P712, vivify_317
    new $P712, "Undef"
  vivify_317:
    $P713 = $P712."ast"()
    $P714 = "block_immediate"($P713)
    find_lex $P715, "$pasttype"
    find_lex $P716, "$/"
    $P717 = $P707."new"($P710, $P714, $P715 :named("pasttype"), $P716 :named("node"))
    store_lex "$past", $P717
    goto if_698_end
  if_698:
    find_lex $P701, "$/"
    unless_null $P701, vivify_318
    $P701 = root_new ['parrot';'Hash']
  vivify_318:
    set $P702, $P701["xblock"]
    unless_null $P702, vivify_319
    new $P702, "Undef"
  vivify_319:
    $P703 = $P702."ast"()
    $P704 = "xblock_immediate"($P703)
    store_lex "$past", $P704
    find_lex $P705, "$past"
    find_lex $P706, "$pasttype"
    $P705."pasttype"($P706)
  if_698_end:
    find_lex $P718, "$/"
    find_lex $P719, "$past"
    $P720 = $P718."!make"($P719)
    .return ($P720)
  control_687:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P721, exception, "payload"
    .return ($P721)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<for>"  :subid("41_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_725
.annotate 'line', 0
    new $P724, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P724, control_723
    push_eh $P724
    .lex "self", self
    .lex "$/", param_725
    new $P726, "Undef"
    .lex "$past", $P726
    new $P727, "Undef"
    .lex "$block", $P727
    find_lex $P728, "$/"
    unless_null $P728, vivify_320
    $P728 = root_new ['parrot';'Hash']
  vivify_320:
    set $P729, $P728["xblock"]
    unless_null $P729, vivify_321
    new $P729, "Undef"
  vivify_321:
    $P730 = $P729."ast"()
    store_lex "$past", $P730
    find_lex $P731, "$past"
    $P731."pasttype"("for")
    find_lex $P732, "$past"
    unless_null $P732, vivify_322
    $P732 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    set $P733, $P732[1]
    unless_null $P733, vivify_323
    new $P733, "Undef"
  vivify_323:
    store_lex "$block", $P733
    find_lex $P735, "$block"
    $P736 = $P735."arity"()
    if $P736, unless_734_end
    find_lex $P737, "$block"
    unless_null $P737, vivify_324
    $P737 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    set $P738, $P737[0]
    unless_null $P738, vivify_325
    new $P738, "Undef"
  vivify_325:
    get_hll_global $P739, ["PAST"], "Var"
    $P740 = $P739."new"("$_" :named("name"), "parameter" :named("scope"))
    $P738."push"($P740)
    find_lex $P741, "$block"
    $P741."symbol"("$_", "lexical" :named("scope"))
    find_lex $P742, "$block"
    $P742."arity"(1)
  unless_734_end:
    find_lex $P743, "$block"
    $P743."blocktype"("immediate")
    find_lex $P744, "$/"
    find_lex $P745, "$past"
    $P746 = $P744."!make"($P745)
    .return ($P746)
  control_723:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P747, exception, "payload"
    .return ($P747)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<return>"  :subid("42_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_751
.annotate 'line', 0
    new $P750, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P750, control_749
    push_eh $P750
    .lex "self", self
    .lex "$/", param_751
    find_lex $P752, "$/"
    get_hll_global $P753, ["PAST"], "Op"
    find_lex $P754, "$/"
    unless_null $P754, vivify_326
    $P754 = root_new ['parrot';'Hash']
  vivify_326:
    set $P755, $P754["EXPR"]
    unless_null $P755, vivify_327
    new $P755, "Undef"
  vivify_327:
    $P756 = $P755."ast"()
    find_lex $P757, "$/"
    $P758 = $P753."new"($P756, "return" :named("pasttype"), $P757 :named("node"))
    $P759 = $P752."!make"($P758)
    .return ($P759)
  control_749:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P760, exception, "payload"
    .return ($P760)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<CATCH>"  :subid("43_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_764
.annotate 'line', 0
    new $P763, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P763, control_762
    push_eh $P763
    .lex "self", self
    .lex "$/", param_764
    new $P765, "Undef"
    .lex "$block", $P765
    find_lex $P766, "$/"
    unless_null $P766, vivify_328
    $P766 = root_new ['parrot';'Hash']
  vivify_328:
    set $P767, $P766["block"]
    unless_null $P767, vivify_329
    new $P767, "Undef"
  vivify_329:
    $P768 = $P767."ast"()
    store_lex "$block", $P768
    find_lex $P769, "$/"
    find_lex $P770, "$block"
    "push_block_handler"($P769, $P770)
    get_global $P771, "@BLOCK"
    unless_null $P771, vivify_330
    $P771 = root_new ['parrot';'ResizablePMCArray']
  vivify_330:
    set $P772, $P771[0]
    unless_null $P772, vivify_331
    new $P772, "Undef"
  vivify_331:
    $P773 = $P772."handlers"()
    set $P774, $P773[0]
    unless_null $P774, vivify_332
    new $P774, "Undef"
  vivify_332:
    $P774."handle_types_except"("CONTROL")
    find_lex $P775, "$/"
    get_hll_global $P776, ["PAST"], "Stmts"
    find_lex $P777, "$/"
    $P778 = $P776."new"($P777 :named("node"))
    $P779 = $P775."!make"($P778)
    .return ($P779)
  control_762:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P780, exception, "payload"
    .return ($P780)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_control:sym<CONTROL>"  :subid("44_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_784
.annotate 'line', 0
    new $P783, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P783, control_782
    push_eh $P783
    .lex "self", self
    .lex "$/", param_784
    new $P785, "Undef"
    .lex "$block", $P785
    find_lex $P786, "$/"
    unless_null $P786, vivify_333
    $P786 = root_new ['parrot';'Hash']
  vivify_333:
    set $P787, $P786["block"]
    unless_null $P787, vivify_334
    new $P787, "Undef"
  vivify_334:
    $P788 = $P787."ast"()
    store_lex "$block", $P788
    find_lex $P789, "$/"
    find_lex $P790, "$block"
    "push_block_handler"($P789, $P790)
    get_global $P791, "@BLOCK"
    unless_null $P791, vivify_335
    $P791 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    set $P792, $P791[0]
    unless_null $P792, vivify_336
    new $P792, "Undef"
  vivify_336:
    $P793 = $P792."handlers"()
    set $P794, $P793[0]
    unless_null $P794, vivify_337
    new $P794, "Undef"
  vivify_337:
    $P794."handle_types"("CONTROL")
    find_lex $P795, "$/"
    get_hll_global $P796, ["PAST"], "Stmts"
    find_lex $P797, "$/"
    $P798 = $P796."new"($P797 :named("node"))
    $P799 = $P795."!make"($P798)
    .return ($P799)
  control_782:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P800, exception, "payload"
    .return ($P800)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_prefix:sym<INIT>"  :subid("45_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_805
.annotate 'line', 0
    new $P804, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P804, control_803
    push_eh $P804
    .lex "self", self
    .lex "$/", param_805
    get_global $P806, "@BLOCK"
    unless_null $P806, vivify_338
    $P806 = root_new ['parrot';'ResizablePMCArray']
  vivify_338:
    set $P807, $P806[0]
    unless_null $P807, vivify_339
    new $P807, "Undef"
  vivify_339:
    $P808 = $P807."loadinit"()
    find_lex $P809, "$/"
    unless_null $P809, vivify_340
    $P809 = root_new ['parrot';'Hash']
  vivify_340:
    set $P810, $P809["blorst"]
    unless_null $P810, vivify_341
    new $P810, "Undef"
  vivify_341:
    $P811 = $P810."ast"()
    $P808."push"($P811)
    find_lex $P812, "$/"
    get_hll_global $P813, ["PAST"], "Stmts"
    find_lex $P814, "$/"
    $P815 = $P813."new"($P814 :named("node"))
    $P816 = $P812."!make"($P815)
    .return ($P816)
  control_803:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P817, exception, "payload"
    .return ($P817)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_prefix:sym<try>"  :subid("46_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_821
.annotate 'line', 0
    new $P820, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P820, control_819
    push_eh $P820
    .lex "self", self
    .lex "$/", param_821
    new $P822, "Undef"
    .lex "$past", $P822
    find_lex $P823, "$/"
    unless_null $P823, vivify_342
    $P823 = root_new ['parrot';'Hash']
  vivify_342:
    set $P824, $P823["blorst"]
    unless_null $P824, vivify_343
    new $P824, "Undef"
  vivify_343:
    $P825 = $P824."ast"()
    store_lex "$past", $P825
    find_lex $P827, "$past"
    $S828 = $P827."WHAT"()
    isne $I829, $S828, "PAST::Block()"
    unless $I829, if_826_end
    get_hll_global $P830, ["PAST"], "Block"
    find_lex $P831, "$past"
    find_lex $P832, "$/"
    $P833 = $P830."new"($P831, "immediate" :named("blocktype"), $P832 :named("node"))
    store_lex "$past", $P833
  if_826_end:
    find_lex $P835, "$past"
    $P836 = $P835."handlers"()
    if $P836, unless_834_end
    find_lex $P837, "$past"
    get_hll_global $P838, ["PAST"], "Control"
    get_hll_global $P839, ["PAST"], "Stmts"
    get_hll_global $P840, ["PAST"], "Op"
    get_hll_global $P841, ["PAST"], "Var"
    get_hll_global $P842, ["PAST"], "Var"
    $P843 = $P842."new"("register" :named("scope"), "exception" :named("name"))
    $P844 = $P841."new"($P843, "handled", "keyed" :named("scope"))
    $P845 = $P840."new"($P844, 1, "bind" :named("pasttype"))
    $P846 = $P839."new"($P845)
    $P847 = $P838."new"($P846, "CONTROL" :named("handle_types_except"))
    new $P848, "ResizablePMCArray"
    push $P848, $P847
    $P837."handlers"($P848)
  unless_834_end:
    find_lex $P849, "$/"
    find_lex $P850, "$past"
    $P851 = $P849."!make"($P850)
    .return ($P851)
  control_819:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P852, exception, "payload"
    .return ($P852)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "blorst"  :subid("47_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_856
.annotate 'line', 0
    new $P855, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P855, control_854
    push_eh $P855
    .lex "self", self
    .lex "$/", param_856
    find_lex $P857, "$/"
    find_lex $P860, "$/"
    unless_null $P860, vivify_344
    $P860 = root_new ['parrot';'Hash']
  vivify_344:
    set $P861, $P860["block"]
    unless_null $P861, vivify_345
    new $P861, "Undef"
  vivify_345:
    if $P861, if_859
    find_lex $P866, "$/"
    unless_null $P866, vivify_346
    $P866 = root_new ['parrot';'Hash']
  vivify_346:
    set $P867, $P866["statement"]
    unless_null $P867, vivify_347
    new $P867, "Undef"
  vivify_347:
    $P868 = $P867."ast"()
    set $P858, $P868
    goto if_859_end
  if_859:
    find_lex $P862, "$/"
    unless_null $P862, vivify_348
    $P862 = root_new ['parrot';'Hash']
  vivify_348:
    set $P863, $P862["block"]
    unless_null $P863, vivify_349
    new $P863, "Undef"
  vivify_349:
    $P864 = $P863."ast"()
    $P865 = "block_immediate"($P864)
    set $P858, $P865
  if_859_end:
    $P869 = $P857."!make"($P858)
    .return ($P869)
  control_854:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P870, exception, "payload"
    .return ($P870)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_cond:sym<if>"  :subid("48_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_874
.annotate 'line', 0
    new $P873, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P873, control_872
    push_eh $P873
    .lex "self", self
    .lex "$/", param_874
    find_lex $P875, "$/"
    find_lex $P876, "$/"
    unless_null $P876, vivify_350
    $P876 = root_new ['parrot';'Hash']
  vivify_350:
    set $P877, $P876["cond"]
    unless_null $P877, vivify_351
    new $P877, "Undef"
  vivify_351:
    $P878 = $P877."ast"()
    $P879 = $P875."!make"($P878)
    .return ($P879)
  control_872:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P880, exception, "payload"
    .return ($P880)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_cond:sym<unless>"  :subid("49_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_884
.annotate 'line', 0
    new $P883, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P883, control_882
    push_eh $P883
    .lex "self", self
    .lex "$/", param_884
    find_lex $P885, "$/"
    find_lex $P886, "$/"
    unless_null $P886, vivify_352
    $P886 = root_new ['parrot';'Hash']
  vivify_352:
    set $P887, $P886["cond"]
    unless_null $P887, vivify_353
    new $P887, "Undef"
  vivify_353:
    $P888 = $P887."ast"()
    $P889 = $P885."!make"($P888)
    .return ($P889)
  control_882:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P890, exception, "payload"
    .return ($P890)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_loop:sym<while>"  :subid("50_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_894
.annotate 'line', 0
    new $P893, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P893, control_892
    push_eh $P893
    .lex "self", self
    .lex "$/", param_894
    find_lex $P895, "$/"
    find_lex $P896, "$/"
    unless_null $P896, vivify_354
    $P896 = root_new ['parrot';'Hash']
  vivify_354:
    set $P897, $P896["cond"]
    unless_null $P897, vivify_355
    new $P897, "Undef"
  vivify_355:
    $P898 = $P897."ast"()
    $P899 = $P895."!make"($P898)
    .return ($P899)
  control_892:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P900, exception, "payload"
    .return ($P900)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "statement_mod_loop:sym<until>"  :subid("51_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_904
.annotate 'line', 0
    new $P903, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P903, control_902
    push_eh $P903
    .lex "self", self
    .lex "$/", param_904
    find_lex $P905, "$/"
    find_lex $P906, "$/"
    unless_null $P906, vivify_356
    $P906 = root_new ['parrot';'Hash']
  vivify_356:
    set $P907, $P906["cond"]
    unless_null $P907, vivify_357
    new $P907, "Undef"
  vivify_357:
    $P908 = $P907."ast"()
    $P909 = $P905."!make"($P908)
    .return ($P909)
  control_902:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P910, exception, "payload"
    .return ($P910)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<fatarrow>"  :subid("52_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_914
.annotate 'line', 0
    new $P913, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P913, control_912
    push_eh $P913
    .lex "self", self
    .lex "$/", param_914
    find_lex $P915, "$/"
    find_lex $P916, "$/"
    unless_null $P916, vivify_358
    $P916 = root_new ['parrot';'Hash']
  vivify_358:
    set $P917, $P916["fatarrow"]
    unless_null $P917, vivify_359
    new $P917, "Undef"
  vivify_359:
    $P918 = $P917."ast"()
    $P919 = $P915."!make"($P918)
    .return ($P919)
  control_912:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P920, exception, "payload"
    .return ($P920)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<colonpair>"  :subid("53_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_924
.annotate 'line', 0
    new $P923, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P923, control_922
    push_eh $P923
    .lex "self", self
    .lex "$/", param_924
    find_lex $P925, "$/"
    find_lex $P926, "$/"
    unless_null $P926, vivify_360
    $P926 = root_new ['parrot';'Hash']
  vivify_360:
    set $P927, $P926["colonpair"]
    unless_null $P927, vivify_361
    new $P927, "Undef"
  vivify_361:
    $P928 = $P927."ast"()
    $P929 = $P925."!make"($P928)
    .return ($P929)
  control_922:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P930, exception, "payload"
    .return ($P930)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<variable>"  :subid("54_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_934
.annotate 'line', 0
    new $P933, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P933, control_932
    push_eh $P933
    .lex "self", self
    .lex "$/", param_934
    find_lex $P935, "$/"
    find_lex $P936, "$/"
    unless_null $P936, vivify_362
    $P936 = root_new ['parrot';'Hash']
  vivify_362:
    set $P937, $P936["variable"]
    unless_null $P937, vivify_363
    new $P937, "Undef"
  vivify_363:
    $P938 = $P937."ast"()
    $P939 = $P935."!make"($P938)
    .return ($P939)
  control_932:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P940, exception, "payload"
    .return ($P940)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<package_declarator>"  :subid("55_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_944
.annotate 'line', 0
    new $P943, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P943, control_942
    push_eh $P943
    .lex "self", self
    .lex "$/", param_944
    find_lex $P945, "$/"
    find_lex $P946, "$/"
    unless_null $P946, vivify_364
    $P946 = root_new ['parrot';'Hash']
  vivify_364:
    set $P947, $P946["package_declarator"]
    unless_null $P947, vivify_365
    new $P947, "Undef"
  vivify_365:
    $P948 = $P947."ast"()
    $P949 = $P945."!make"($P948)
    .return ($P949)
  control_942:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P950, exception, "payload"
    .return ($P950)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<scope_declarator>"  :subid("56_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_954
.annotate 'line', 0
    new $P953, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P953, control_952
    push_eh $P953
    .lex "self", self
    .lex "$/", param_954
    find_lex $P955, "$/"
    find_lex $P956, "$/"
    unless_null $P956, vivify_366
    $P956 = root_new ['parrot';'Hash']
  vivify_366:
    set $P957, $P956["scope_declarator"]
    unless_null $P957, vivify_367
    new $P957, "Undef"
  vivify_367:
    $P958 = $P957."ast"()
    $P959 = $P955."!make"($P958)
    .return ($P959)
  control_952:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P960, exception, "payload"
    .return ($P960)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<routine_declarator>"  :subid("57_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_964
.annotate 'line', 0
    new $P963, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P963, control_962
    push_eh $P963
    .lex "self", self
    .lex "$/", param_964
    find_lex $P965, "$/"
    find_lex $P966, "$/"
    unless_null $P966, vivify_368
    $P966 = root_new ['parrot';'Hash']
  vivify_368:
    set $P967, $P966["routine_declarator"]
    unless_null $P967, vivify_369
    new $P967, "Undef"
  vivify_369:
    $P968 = $P967."ast"()
    $P969 = $P965."!make"($P968)
    .return ($P969)
  control_962:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P970, exception, "payload"
    .return ($P970)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<regex_declarator>"  :subid("58_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_974
.annotate 'line', 0
    new $P973, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P973, control_972
    push_eh $P973
    .lex "self", self
    .lex "$/", param_974
    find_lex $P975, "$/"
    find_lex $P976, "$/"
    unless_null $P976, vivify_370
    $P976 = root_new ['parrot';'Hash']
  vivify_370:
    set $P977, $P976["regex_declarator"]
    unless_null $P977, vivify_371
    new $P977, "Undef"
  vivify_371:
    $P978 = $P977."ast"()
    $P979 = $P975."!make"($P978)
    .return ($P979)
  control_972:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P980, exception, "payload"
    .return ($P980)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<statement_prefix>"  :subid("59_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_984
.annotate 'line', 0
    new $P983, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P983, control_982
    push_eh $P983
    .lex "self", self
    .lex "$/", param_984
    find_lex $P985, "$/"
    find_lex $P986, "$/"
    unless_null $P986, vivify_372
    $P986 = root_new ['parrot';'Hash']
  vivify_372:
    set $P987, $P986["statement_prefix"]
    unless_null $P987, vivify_373
    new $P987, "Undef"
  vivify_373:
    $P988 = $P987."ast"()
    $P989 = $P985."!make"($P988)
    .return ($P989)
  control_982:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P990, exception, "payload"
    .return ($P990)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<lambda>"  :subid("60_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_994
.annotate 'line', 0
    new $P993, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P993, control_992
    push_eh $P993
    .lex "self", self
    .lex "$/", param_994
    find_lex $P995, "$/"
    find_lex $P996, "$/"
    unless_null $P996, vivify_374
    $P996 = root_new ['parrot';'Hash']
  vivify_374:
    set $P997, $P996["pblock"]
    unless_null $P997, vivify_375
    new $P997, "Undef"
  vivify_375:
    $P998 = $P997."ast"()
    $P999 = $P995."!make"($P998)
    .return ($P999)
  control_992:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1000, exception, "payload"
    .return ($P1000)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "fatarrow"  :subid("61_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1004
.annotate 'line', 0
    new $P1003, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1003, control_1002
    push_eh $P1003
    .lex "self", self
    .lex "$/", param_1004
    new $P1005, "Undef"
    .lex "$past", $P1005
    find_lex $P1006, "$/"
    unless_null $P1006, vivify_376
    $P1006 = root_new ['parrot';'Hash']
  vivify_376:
    set $P1007, $P1006["val"]
    unless_null $P1007, vivify_377
    new $P1007, "Undef"
  vivify_377:
    $P1008 = $P1007."ast"()
    store_lex "$past", $P1008
    find_lex $P1009, "$past"
    find_lex $P1010, "$/"
    unless_null $P1010, vivify_378
    $P1010 = root_new ['parrot';'Hash']
  vivify_378:
    set $P1011, $P1010["key"]
    unless_null $P1011, vivify_379
    new $P1011, "Undef"
  vivify_379:
    $P1012 = $P1011."Str"()
    $P1009."named"($P1012)
    find_lex $P1013, "$/"
    find_lex $P1014, "$past"
    $P1015 = $P1013."!make"($P1014)
    .return ($P1015)
  control_1002:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1016, exception, "payload"
    .return ($P1016)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "colonpair"  :subid("62_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1020
.annotate 'line', 0
    new $P1019, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1019, control_1018
    push_eh $P1019
    .lex "self", self
    .lex "$/", param_1020
    new $P1021, "Undef"
    .lex "$past", $P1021
    find_lex $P1024, "$/"
    unless_null $P1024, vivify_380
    $P1024 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1025, $P1024["circumfix"]
    unless_null $P1025, vivify_381
    new $P1025, "Undef"
  vivify_381:
    if $P1025, if_1023
    get_hll_global $P1030, ["PAST"], "Val"
    find_lex $P1031, "$/"
    unless_null $P1031, vivify_382
    $P1031 = root_new ['parrot';'Hash']
  vivify_382:
    set $P1032, $P1031["not"]
    unless_null $P1032, vivify_383
    new $P1032, "Undef"
  vivify_383:
    isfalse $I1033, $P1032
    $P1034 = $P1030."new"($I1033 :named("value"))
    set $P1022, $P1034
    goto if_1023_end
  if_1023:
    find_lex $P1026, "$/"
    unless_null $P1026, vivify_384
    $P1026 = root_new ['parrot';'Hash']
  vivify_384:
    set $P1027, $P1026["circumfix"]
    unless_null $P1027, vivify_385
    $P1027 = root_new ['parrot';'ResizablePMCArray']
  vivify_385:
    set $P1028, $P1027[0]
    unless_null $P1028, vivify_386
    new $P1028, "Undef"
  vivify_386:
    $P1029 = $P1028."ast"()
    set $P1022, $P1029
  if_1023_end:
    store_lex "$past", $P1022
    find_lex $P1035, "$past"
    find_lex $P1036, "$/"
    unless_null $P1036, vivify_387
    $P1036 = root_new ['parrot';'Hash']
  vivify_387:
    set $P1037, $P1036["identifier"]
    unless_null $P1037, vivify_388
    new $P1037, "Undef"
  vivify_388:
    set $S1038, $P1037
    $P1035."named"($S1038)
    find_lex $P1039, "$/"
    find_lex $P1040, "$past"
    $P1041 = $P1039."!make"($P1040)
    .return ($P1041)
  control_1018:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1042, exception, "payload"
    .return ($P1042)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "variable"  :subid("63_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1046
.annotate 'line', 0
    .const 'Sub' $P1059 = "64_1285886573.859" 
    capture_lex $P1059
    new $P1045, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1045, control_1044
    push_eh $P1045
    .lex "self", self
    .lex "$/", param_1046
    new $P1047, "Undef"
    .lex "$past", $P1047
    find_lex $P1048, "$past"
    find_lex $P1050, "$/"
    unless_null $P1050, vivify_389
    $P1050 = root_new ['parrot';'Hash']
  vivify_389:
    set $P1051, $P1050["postcircumfix"]
    unless_null $P1051, vivify_390
    new $P1051, "Undef"
  vivify_390:
    if $P1051, if_1049
    .const 'Sub' $P1059 = "64_1285886573.859" 
    capture_lex $P1059
    $P1059()
    goto if_1049_end
  if_1049:
    find_lex $P1052, "$/"
    unless_null $P1052, vivify_409
    $P1052 = root_new ['parrot';'Hash']
  vivify_409:
    set $P1053, $P1052["postcircumfix"]
    unless_null $P1053, vivify_410
    new $P1053, "Undef"
  vivify_410:
    $P1054 = $P1053."ast"()
    store_lex "$past", $P1054
    find_lex $P1055, "$past"
    get_hll_global $P1056, ["PAST"], "Var"
    $P1057 = $P1056."new"("$/" :named("name"))
    $P1055."unshift"($P1057)
  if_1049_end:
    find_lex $P1134, "$/"
    find_lex $P1135, "$past"
    $P1136 = $P1134."!make"($P1135)
    .return ($P1136)
  control_1044:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1137, exception, "payload"
    .return ($P1137)
.end


.namespace ["NQP";"Actions"]
.sub "_block1058"  :anon :subid("64_1285886573.859") :outer("63_1285886573.859")
.annotate 'line', 0
    $P1060 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1060
    get_hll_global $P1061, ["NQP"], "Compiler"
    find_lex $P1062, "$/"
    set $S1063, $P1062
    $P1064 = $P1061."parse_name"($S1063)
    store_lex "@name", $P1064
    get_hll_global $P1065, ["PAST"], "Var"
    find_lex $P1066, "@name"
    $P1067 = $P1066."pop"()
    set $S1068, $P1067
    $P1069 = $P1065."new"($S1068 :named("name"))
    store_lex "$past", $P1069
    find_lex $P1071, "@name"
    unless $P1071, if_1070_end
    find_lex $P1073, "@name"
    unless_null $P1073, vivify_391
    $P1073 = root_new ['parrot';'ResizablePMCArray']
  vivify_391:
    set $P1074, $P1073[0]
    unless_null $P1074, vivify_392
    new $P1074, "Undef"
  vivify_392:
    set $S1075, $P1074
    iseq $I1076, $S1075, "GLOBAL"
    unless $I1076, if_1072_end
    find_lex $P1077, "@name"
    $P1077."shift"()
  if_1072_end:
    find_lex $P1078, "$past"
    find_lex $P1079, "@name"
    $P1078."namespace"($P1079)
    find_lex $P1080, "$past"
    $P1080."scope"("package")
    find_lex $P1081, "$past"
    find_lex $P1082, "$/"
    unless_null $P1082, vivify_393
    $P1082 = root_new ['parrot';'Hash']
  vivify_393:
    set $P1083, $P1082["sigil"]
    unless_null $P1083, vivify_394
    new $P1083, "Undef"
  vivify_394:
    $P1084 = "vivitype"($P1083)
    $P1081."viviself"($P1084)
    find_lex $P1085, "$past"
    $P1085."lvalue"(1)
  if_1070_end:
    find_lex $P1088, "$/"
    unless_null $P1088, vivify_395
    $P1088 = root_new ['parrot';'Hash']
  vivify_395:
    set $P1089, $P1088["twigil"]
    unless_null $P1089, vivify_396
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_396:
    set $P1090, $P1089[0]
    unless_null $P1090, vivify_397
    new $P1090, "Undef"
  vivify_397:
    set $S1091, $P1090
    iseq $I1092, $S1091, "*"
    if $I1092, if_1087
    find_lex $P1114, "$/"
    unless_null $P1114, vivify_398
    $P1114 = root_new ['parrot';'Hash']
  vivify_398:
    set $P1115, $P1114["twigil"]
    unless_null $P1115, vivify_399
    $P1115 = root_new ['parrot';'ResizablePMCArray']
  vivify_399:
    set $P1116, $P1115[0]
    unless_null $P1116, vivify_400
    new $P1116, "Undef"
  vivify_400:
    set $S1117, $P1116
    iseq $I1118, $S1117, "!"
    if $I1118, if_1113
    new $P1112, 'Integer'
    set $P1112, $I1118
    goto if_1113_end
  if_1113:
    find_lex $P1119, "$past"
    get_hll_global $P1120, ["PAST"], "Var"
    $P1121 = $P1120."new"("self" :named("name"))
    $P1119."push"($P1121)
    find_lex $P1122, "$past"
    $P1122."scope"("attribute")
    find_lex $P1123, "$past"
    find_lex $P1124, "$/"
    unless_null $P1124, vivify_401
    $P1124 = root_new ['parrot';'Hash']
  vivify_401:
    set $P1125, $P1124["sigil"]
    unless_null $P1125, vivify_402
    new $P1125, "Undef"
  vivify_402:
    $P1126 = "vivitype"($P1125)
    $P1123."viviself"($P1126)
    find_dynamic_lex $P1129, "$*PACKAGE-SETUP"
    unless_null $P1129, vivify_403
    get_hll_global $P1129, "$PACKAGE-SETUP"
    unless_null $P1129, vivify_404
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_404:
  vivify_403:
    if $P1129, if_1128
    set $P1127, $P1129
    goto if_1128_end
  if_1128:
    find_lex $P1130, "$past"
    get_hll_global $P1131, ["PAST"], "Var"
    $P1132 = $P1131."new"("$?CLASS" :named("name"))
    $P1133 = $P1130."push"($P1132)
    set $P1127, $P1133
  if_1128_end:
    set $P1112, $P1127
  if_1113_end:
    set $P1086, $P1112
    goto if_1087_end
  if_1087:
    find_lex $P1093, "$past"
    $P1093."scope"("contextual")
    find_lex $P1094, "$past"
    get_hll_global $P1095, ["PAST"], "Var"
    find_lex $P1096, "$/"
    unless_null $P1096, vivify_405
    $P1096 = root_new ['parrot';'Hash']
  vivify_405:
    set $P1097, $P1096["sigil"]
    unless_null $P1097, vivify_406
    new $P1097, "Undef"
  vivify_406:
    set $S1098, $P1097
    new $P1099, 'String'
    set $P1099, $S1098
    find_lex $P1100, "$/"
    unless_null $P1100, vivify_407
    $P1100 = root_new ['parrot';'Hash']
  vivify_407:
    set $P1101, $P1100["desigilname"]
    unless_null $P1101, vivify_408
    new $P1101, "Undef"
  vivify_408:
    concat $P1102, $P1099, $P1101
    get_hll_global $P1103, ["PAST"], "Op"
    new $P1104, "String"
    assign $P1104, "Contextual "
    find_lex $P1105, "$/"
    set $S1106, $P1105
    concat $P1107, $P1104, $S1106
    concat $P1108, $P1107, " not found"
    $P1109 = $P1103."new"($P1108, "die" :named("pirop"))
    $P1110 = $P1095."new"("package" :named("scope"), "" :named("namespace"), $P1102 :named("name"), $P1109 :named("viviself"))
    $P1111 = $P1094."viviself"($P1110)
    set $P1086, $P1111
  if_1087_end:
    .return ($P1086)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<module>"  :subid("65_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1141
.annotate 'line', 0
    new $P1140, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1140, control_1139
    push_eh $P1140
    .lex "self", self
    .lex "$/", param_1141
    find_lex $P1142, "$/"
    find_lex $P1143, "$/"
    unless_null $P1143, vivify_411
    $P1143 = root_new ['parrot';'Hash']
  vivify_411:
    set $P1144, $P1143["package_def"]
    unless_null $P1144, vivify_412
    new $P1144, "Undef"
  vivify_412:
    $P1145 = $P1144."ast"()
    $P1146 = $P1142."!make"($P1145)
    .return ($P1146)
  control_1139:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1147, exception, "payload"
    .return ($P1147)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<knowhow>"  :subid("66_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1151
.annotate 'line', 0
    new $P1150, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1150, control_1149
    push_eh $P1150
    .lex "self", self
    .lex "$/", param_1151
    find_lex $P1152, "$/"
    find_lex $P1153, "$/"
    $P1154 = "package"($P1153)
    $P1155 = $P1152."!make"($P1154)
    .return ($P1155)
  control_1149:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1156, exception, "payload"
    .return ($P1156)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<class>"  :subid("67_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1160
.annotate 'line', 0
    new $P1159, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1159, control_1158
    push_eh $P1159
    .lex "self", self
    .lex "$/", param_1160
    find_lex $P1161, "$/"
    find_lex $P1162, "$/"
    $P1163 = "old_package"($P1162)
    $P1164 = $P1161."!make"($P1163)
    .return ($P1164)
  control_1158:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1165, exception, "payload"
    .return ($P1165)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<grammar>"  :subid("68_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1169
.annotate 'line', 0
    new $P1168, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1168, control_1167
    push_eh $P1168
    .lex "self", self
    .lex "$/", param_1169
    find_lex $P1170, "$/"
    find_lex $P1171, "$/"
    $P1172 = "old_package"($P1171)
    $P1173 = $P1170."!make"($P1172)
    .return ($P1173)
  control_1167:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1174, exception, "payload"
    .return ($P1174)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_declarator:sym<role>"  :subid("69_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1178
.annotate 'line', 0
    new $P1177, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1177, control_1176
    push_eh $P1177
    .lex "self", self
    .lex "$/", param_1178
    find_lex $P1179, "$/"
    find_lex $P1180, "$/"
    $P1181 = "package"($P1180)
    $P1182 = $P1179."!make"($P1181)
    .return ($P1182)
  control_1176:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1183, exception, "payload"
    .return ($P1183)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "package_def"  :subid("70_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1189
.annotate 'line', 0
    new $P1188, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1188, control_1187
    push_eh $P1188
    .lex "self", self
    .lex "$/", param_1189
    new $P1190, "Undef"
    .lex "$past", $P1190
    find_lex $P1193, "$/"
    unless_null $P1193, vivify_413
    $P1193 = root_new ['parrot';'Hash']
  vivify_413:
    set $P1194, $P1193["block"]
    unless_null $P1194, vivify_414
    new $P1194, "Undef"
  vivify_414:
    if $P1194, if_1192
    find_lex $P1198, "$/"
    unless_null $P1198, vivify_415
    $P1198 = root_new ['parrot';'Hash']
  vivify_415:
    set $P1199, $P1198["comp_unit"]
    unless_null $P1199, vivify_416
    new $P1199, "Undef"
  vivify_416:
    $P1200 = $P1199."ast"()
    set $P1191, $P1200
    goto if_1192_end
  if_1192:
    find_lex $P1195, "$/"
    unless_null $P1195, vivify_417
    $P1195 = root_new ['parrot';'Hash']
  vivify_417:
    set $P1196, $P1195["block"]
    unless_null $P1196, vivify_418
    new $P1196, "Undef"
  vivify_418:
    $P1197 = $P1196."ast"()
    set $P1191, $P1197
  if_1192_end:
    store_lex "$past", $P1191
    find_lex $P1201, "$past"
    find_lex $P1202, "$/"
    unless_null $P1202, vivify_419
    $P1202 = root_new ['parrot';'Hash']
  vivify_419:
    set $P1203, $P1202["name"]
    unless_null $P1203, vivify_420
    $P1203 = root_new ['parrot';'Hash']
  vivify_420:
    set $P1204, $P1203["identifier"]
    unless_null $P1204, vivify_421
    new $P1204, "Undef"
  vivify_421:
    $P1201."namespace"($P1204)
    find_lex $P1205, "$past"
    $P1205."blocktype"("immediate")
    find_lex $P1206, "$/"
    find_lex $P1207, "$past"
    $P1208 = $P1206."!make"($P1207)
    .return ($P1208)
  control_1187:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1209, exception, "payload"
    .return ($P1209)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<my>"  :subid("71_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1213
.annotate 'line', 0
    new $P1212, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1212, control_1211
    push_eh $P1212
    .lex "self", self
    .lex "$/", param_1213
    find_lex $P1214, "$/"
    find_lex $P1215, "$/"
    unless_null $P1215, vivify_422
    $P1215 = root_new ['parrot';'Hash']
  vivify_422:
    set $P1216, $P1215["scoped"]
    unless_null $P1216, vivify_423
    new $P1216, "Undef"
  vivify_423:
    $P1217 = $P1216."ast"()
    $P1218 = $P1214."!make"($P1217)
    .return ($P1218)
  control_1211:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1219, exception, "payload"
    .return ($P1219)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<our>"  :subid("72_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1223
.annotate 'line', 0
    new $P1222, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1222, control_1221
    push_eh $P1222
    .lex "self", self
    .lex "$/", param_1223
    find_lex $P1224, "$/"
    find_lex $P1225, "$/"
    unless_null $P1225, vivify_424
    $P1225 = root_new ['parrot';'Hash']
  vivify_424:
    set $P1226, $P1225["scoped"]
    unless_null $P1226, vivify_425
    new $P1226, "Undef"
  vivify_425:
    $P1227 = $P1226."ast"()
    $P1228 = $P1224."!make"($P1227)
    .return ($P1228)
  control_1221:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1229, exception, "payload"
    .return ($P1229)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scope_declarator:sym<has>"  :subid("73_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1233
.annotate 'line', 0
    new $P1232, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1232, control_1231
    push_eh $P1232
    .lex "self", self
    .lex "$/", param_1233
    find_lex $P1234, "$/"
    find_lex $P1235, "$/"
    unless_null $P1235, vivify_426
    $P1235 = root_new ['parrot';'Hash']
  vivify_426:
    set $P1236, $P1235["scoped"]
    unless_null $P1236, vivify_427
    new $P1236, "Undef"
  vivify_427:
    $P1237 = $P1236."ast"()
    $P1238 = $P1234."!make"($P1237)
    .return ($P1238)
  control_1231:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1239, exception, "payload"
    .return ($P1239)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "scoped"  :subid("74_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1243
.annotate 'line', 0
    new $P1242, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1242, control_1241
    push_eh $P1242
    .lex "self", self
    .lex "$/", param_1243
    find_lex $P1244, "$/"
    find_lex $P1247, "$/"
    unless_null $P1247, vivify_428
    $P1247 = root_new ['parrot';'Hash']
  vivify_428:
    set $P1248, $P1247["declarator"]
    unless_null $P1248, vivify_429
    new $P1248, "Undef"
  vivify_429:
    if $P1248, if_1246
    find_lex $P1252, "$/"
    unless_null $P1252, vivify_430
    $P1252 = root_new ['parrot';'Hash']
  vivify_430:
    set $P1253, $P1252["multi_declarator"]
    unless_null $P1253, vivify_431
    new $P1253, "Undef"
  vivify_431:
    $P1254 = $P1253."ast"()
    set $P1245, $P1254
    goto if_1246_end
  if_1246:
    find_lex $P1249, "$/"
    unless_null $P1249, vivify_432
    $P1249 = root_new ['parrot';'Hash']
  vivify_432:
    set $P1250, $P1249["declarator"]
    unless_null $P1250, vivify_433
    new $P1250, "Undef"
  vivify_433:
    $P1251 = $P1250."ast"()
    set $P1245, $P1251
  if_1246_end:
    $P1255 = $P1244."!make"($P1245)
    .return ($P1255)
  control_1241:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1256, exception, "payload"
    .return ($P1256)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "declarator"  :subid("75_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1260
.annotate 'line', 0
    new $P1259, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1259, control_1258
    push_eh $P1259
    .lex "self", self
    .lex "$/", param_1260
    find_lex $P1261, "$/"
    find_lex $P1264, "$/"
    unless_null $P1264, vivify_434
    $P1264 = root_new ['parrot';'Hash']
  vivify_434:
    set $P1265, $P1264["routine_declarator"]
    unless_null $P1265, vivify_435
    new $P1265, "Undef"
  vivify_435:
    if $P1265, if_1263
    find_lex $P1269, "$/"
    unless_null $P1269, vivify_436
    $P1269 = root_new ['parrot';'Hash']
  vivify_436:
    set $P1270, $P1269["variable_declarator"]
    unless_null $P1270, vivify_437
    new $P1270, "Undef"
  vivify_437:
    $P1271 = $P1270."ast"()
    set $P1262, $P1271
    goto if_1263_end
  if_1263:
    find_lex $P1266, "$/"
    unless_null $P1266, vivify_438
    $P1266 = root_new ['parrot';'Hash']
  vivify_438:
    set $P1267, $P1266["routine_declarator"]
    unless_null $P1267, vivify_439
    new $P1267, "Undef"
  vivify_439:
    $P1268 = $P1267."ast"()
    set $P1262, $P1268
  if_1263_end:
    $P1272 = $P1261."!make"($P1262)
    .return ($P1272)
  control_1258:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1273, exception, "payload"
    .return ($P1273)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "multi_declarator:sym<multi>"  :subid("76_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1277
.annotate 'line', 0
    new $P1276, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1276, control_1275
    push_eh $P1276
    .lex "self", self
    .lex "$/", param_1277
    find_lex $P1278, "$/"
    find_lex $P1281, "$/"
    unless_null $P1281, vivify_440
    $P1281 = root_new ['parrot';'Hash']
  vivify_440:
    set $P1282, $P1281["declarator"]
    unless_null $P1282, vivify_441
    new $P1282, "Undef"
  vivify_441:
    if $P1282, if_1280
    find_lex $P1286, "$/"
    unless_null $P1286, vivify_442
    $P1286 = root_new ['parrot';'Hash']
  vivify_442:
    set $P1287, $P1286["routine_def"]
    unless_null $P1287, vivify_443
    new $P1287, "Undef"
  vivify_443:
    $P1288 = $P1287."ast"()
    set $P1279, $P1288
    goto if_1280_end
  if_1280:
    find_lex $P1283, "$/"
    unless_null $P1283, vivify_444
    $P1283 = root_new ['parrot';'Hash']
  vivify_444:
    set $P1284, $P1283["declarator"]
    unless_null $P1284, vivify_445
    new $P1284, "Undef"
  vivify_445:
    $P1285 = $P1284."ast"()
    set $P1279, $P1285
  if_1280_end:
    $P1289 = $P1278."!make"($P1279)
    .return ($P1289)
  control_1275:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1290, exception, "payload"
    .return ($P1290)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "multi_declarator:sym<null>"  :subid("77_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1294
.annotate 'line', 0
    new $P1293, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1293, control_1292
    push_eh $P1293
    .lex "self", self
    .lex "$/", param_1294
    find_lex $P1295, "$/"
    find_lex $P1296, "$/"
    unless_null $P1296, vivify_446
    $P1296 = root_new ['parrot';'Hash']
  vivify_446:
    set $P1297, $P1296["declarator"]
    unless_null $P1297, vivify_447
    new $P1297, "Undef"
  vivify_447:
    $P1298 = $P1297."ast"()
    $P1299 = $P1295."!make"($P1298)
    .return ($P1299)
  control_1292:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1300, exception, "payload"
    .return ($P1300)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "variable_declarator"  :subid("78_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1304
.annotate 'line', 0
    .const 'Sub' $P1373 = "80_1285886573.859" 
    capture_lex $P1373
    .const 'Sub' $P1335 = "79_1285886573.859" 
    capture_lex $P1335
    new $P1303, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1303, control_1302
    push_eh $P1303
    .lex "self", self
    .lex "$/", param_1304
    new $P1305, "Undef"
    .lex "$past", $P1305
    new $P1306, "Undef"
    .lex "$sigil", $P1306
    new $P1307, "Undef"
    .lex "$name", $P1307
    new $P1308, "Undef"
    .lex "$BLOCK", $P1308
    find_lex $P1309, "$/"
    unless_null $P1309, vivify_448
    $P1309 = root_new ['parrot';'Hash']
  vivify_448:
    set $P1310, $P1309["variable"]
    unless_null $P1310, vivify_449
    new $P1310, "Undef"
  vivify_449:
    $P1311 = $P1310."ast"()
    store_lex "$past", $P1311
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_450
    $P1312 = root_new ['parrot';'Hash']
  vivify_450:
    set $P1313, $P1312["variable"]
    unless_null $P1313, vivify_451
    $P1313 = root_new ['parrot';'Hash']
  vivify_451:
    set $P1314, $P1313["sigil"]
    unless_null $P1314, vivify_452
    new $P1314, "Undef"
  vivify_452:
    store_lex "$sigil", $P1314
    find_lex $P1315, "$past"
    $P1316 = $P1315."name"()
    store_lex "$name", $P1316
    get_global $P1317, "@BLOCK"
    unless_null $P1317, vivify_453
    $P1317 = root_new ['parrot';'ResizablePMCArray']
  vivify_453:
    set $P1318, $P1317[0]
    unless_null $P1318, vivify_454
    new $P1318, "Undef"
  vivify_454:
    store_lex "$BLOCK", $P1318
    find_lex $P1320, "$BLOCK"
    find_lex $P1321, "$name"
    $P1322 = $P1320."symbol"($P1321)
    unless $P1322, if_1319_end
    find_lex $P1323, "$/"
    $P1324 = $P1323."CURSOR"()
    find_lex $P1325, "$name"
    $P1324."panic"("Redeclaration of symbol ", $P1325)
  if_1319_end:
    find_dynamic_lex $P1327, "$*SCOPE"
    unless_null $P1327, vivify_455
    get_hll_global $P1327, "$SCOPE"
    unless_null $P1327, vivify_456
    die "Contextual $*SCOPE not found"
  vivify_456:
  vivify_455:
    set $S1328, $P1327
    iseq $I1329, $S1328, "has"
    if $I1329, if_1326
    .const 'Sub' $P1373 = "80_1285886573.859" 
    capture_lex $P1373
    $P1373()
    goto if_1326_end
  if_1326:
    find_lex $P1330, "$BLOCK"
    find_lex $P1331, "$name"
    $P1330."symbol"($P1331, "attribute" :named("scope"))
    find_dynamic_lex $P1333, "$*PACKAGE-SETUP"
    unless_null $P1333, vivify_461
    get_hll_global $P1333, "$PACKAGE-SETUP"
    unless_null $P1333, vivify_462
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_462:
  vivify_461:
    if $P1333, if_1332
    find_lex $P1362, "$BLOCK"
    unless_null $P1362, vivify_463
    $P1362 = root_new ['parrot';'Hash']
  vivify_463:
    set $P1363, $P1362["attributes"]
    unless_null $P1363, vivify_464
    new $P1363, "Undef"
  vivify_464:
    if $P1363, unless_1361_end
    get_hll_global $P1364, ["PAST"], "Op"
    $P1365 = $P1364."new"("list" :named("pasttype"), "attr" :named("named"))
    find_lex $P1366, "$BLOCK"
    unless_null $P1366, vivify_465
    $P1366 = root_new ['parrot';'Hash']
    store_lex "$BLOCK", $P1366
  vivify_465:
    set $P1366["attributes"], $P1365
  unless_1361_end:
    find_lex $P1367, "$BLOCK"
    unless_null $P1367, vivify_466
    $P1367 = root_new ['parrot';'Hash']
  vivify_466:
    set $P1368, $P1367["attributes"]
    unless_null $P1368, vivify_467
    new $P1368, "Undef"
  vivify_467:
    find_lex $P1369, "$name"
    $P1368."push"($P1369)
    goto if_1332_end
  if_1332:
    .const 'Sub' $P1335 = "79_1285886573.859" 
    capture_lex $P1335
    $P1335()
  if_1332_end:
    get_hll_global $P1370, ["PAST"], "Stmts"
    $P1371 = $P1370."new"()
    store_lex "$past", $P1371
  if_1326_end:
    find_lex $P1397, "$/"
    find_lex $P1398, "$past"
    $P1399 = $P1397."!make"($P1398)
    .return ($P1399)
  control_1302:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1400, exception, "payload"
    .return ($P1400)
.end


.namespace ["NQP";"Actions"]
.sub "_block1372"  :anon :subid("80_1285886573.859") :outer("78_1285886573.859")
.annotate 'line', 0
    new $P1374, "Undef"
    .lex "$scope", $P1374
    new $P1375, "Undef"
    .lex "$decl", $P1375
    find_dynamic_lex $P1378, "$*SCOPE"
    unless_null $P1378, vivify_457
    get_hll_global $P1378, "$SCOPE"
    unless_null $P1378, vivify_458
    die "Contextual $*SCOPE not found"
  vivify_458:
  vivify_457:
    set $S1379, $P1378
    iseq $I1380, $S1379, "our"
    if $I1380, if_1377
    new $P1382, "String"
    assign $P1382, "lexical"
    set $P1376, $P1382
    goto if_1377_end
  if_1377:
    new $P1381, "String"
    assign $P1381, "package"
    set $P1376, $P1381
  if_1377_end:
    store_lex "$scope", $P1376
    get_hll_global $P1383, ["PAST"], "Var"
    find_lex $P1384, "$name"
    find_lex $P1385, "$scope"
    find_lex $P1386, "$sigil"
    $P1387 = "vivitype"($P1386)
    find_lex $P1388, "$/"
    $P1389 = $P1383."new"($P1384 :named("name"), $P1385 :named("scope"), 1 :named("isdecl"), 1 :named("lvalue"), $P1387 :named("viviself"), $P1388 :named("node"))
    store_lex "$decl", $P1389
    find_lex $P1390, "$BLOCK"
    find_lex $P1391, "$name"
    find_lex $P1392, "$scope"
    $P1390."symbol"($P1391, $P1392 :named("scope"))
    find_lex $P1393, "$BLOCK"
    unless_null $P1393, vivify_459
    $P1393 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
    set $P1394, $P1393[0]
    unless_null $P1394, vivify_460
    new $P1394, "Undef"
  vivify_460:
    find_lex $P1395, "$decl"
    $P1396 = $P1394."push"($P1395)
    .return ($P1396)
.end


.namespace ["NQP";"Actions"]
.sub "_block1334"  :anon :subid("79_1285886573.859") :outer("78_1285886573.859")
.annotate 'line', 0
    new $P1336, "Undef"
    .lex "$meta-attr-type", $P1336
    find_dynamic_lex $P1339, "$*PKGDECL"
    unless_null $P1339, vivify_468
    get_hll_global $P1339, "$PKGDECL"
    unless_null $P1339, vivify_469
    die "Contextual $*PKGDECL not found"
  vivify_469:
  vivify_468:
    find_dynamic_lex $P1340, "%*HOW-METAATTR"
    unless_null $P1340, vivify_470
    get_hll_global $P1340, "%HOW-METAATTR"
    unless_null $P1340, vivify_471
    die "Contextual %*HOW-METAATTR not found"
  vivify_471:
  vivify_470:
    set $P1341, $P1340[$P1339]
    unless_null $P1341, vivify_472
    new $P1341, "Undef"
  vivify_472:
    unless $P1341, unless_1338
    set $P1337, $P1341
    goto unless_1338_end
  unless_1338:
    find_dynamic_lex $P1342, "$*DEFAULT-METAATTR"
    unless_null $P1342, vivify_473
    get_hll_global $P1342, "$DEFAULT-METAATTR"
    unless_null $P1342, vivify_474
    die "Contextual $*DEFAULT-METAATTR not found"
  vivify_474:
  vivify_473:
    set $P1337, $P1342
  unless_1338_end:
    store_lex "$meta-attr-type", $P1337
    find_dynamic_lex $P1343, "$*PACKAGE-SETUP"
    unless_null $P1343, vivify_475
    get_hll_global $P1343, "$PACKAGE-SETUP"
    unless_null $P1343, vivify_476
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_476:
  vivify_475:
    get_hll_global $P1344, ["PAST"], "Op"
    get_hll_global $P1345, ["PAST"], "Op"
    get_hll_global $P1346, ["PAST"], "Var"
    $P1347 = $P1346."new"("type_obj" :named("name"), "register" :named("scope"))
    $P1348 = $P1345."new"($P1347, "get_how PP" :named("pirop"))
    get_hll_global $P1349, ["PAST"], "Var"
    $P1350 = $P1349."new"("type_obj" :named("name"), "register" :named("scope"))
    get_hll_global $P1351, ["PAST"], "Op"
    get_hll_global $P1352, ["PAST"], "Var"
    find_lex $P1353, "$meta-attr-type"
    $P1354 = $P1352."new"($P1353 :named("name"), "" :named("namespace"), "package" :named("scope"))
    get_hll_global $P1355, ["PAST"], "Val"
    find_lex $P1356, "$name"
    $P1357 = $P1355."new"($P1356 :named("value"), "name" :named("named"))
    $P1358 = $P1351."new"($P1354, $P1357, "callmethod" :named("pasttype"), "new" :named("name"))
    $P1359 = $P1344."new"($P1348, $P1350, $P1358, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
    $P1360 = $P1343."push"($P1359)
    .return ($P1360)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_declarator:sym<sub>"  :subid("81_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1404
.annotate 'line', 0
    new $P1403, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1403, control_1402
    push_eh $P1403
    .lex "self", self
    .lex "$/", param_1404
    find_lex $P1405, "$/"
    find_lex $P1406, "$/"
    unless_null $P1406, vivify_477
    $P1406 = root_new ['parrot';'Hash']
  vivify_477:
    set $P1407, $P1406["routine_def"]
    unless_null $P1407, vivify_478
    new $P1407, "Undef"
  vivify_478:
    $P1408 = $P1407."ast"()
    $P1409 = $P1405."!make"($P1408)
    .return ($P1409)
  control_1402:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1410, exception, "payload"
    .return ($P1410)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_declarator:sym<method>"  :subid("82_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1414
.annotate 'line', 0
    new $P1413, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1413, control_1412
    push_eh $P1413
    .lex "self", self
    .lex "$/", param_1414
    find_lex $P1415, "$/"
    find_lex $P1416, "$/"
    unless_null $P1416, vivify_479
    $P1416 = root_new ['parrot';'Hash']
  vivify_479:
    set $P1417, $P1416["method_def"]
    unless_null $P1417, vivify_480
    new $P1417, "Undef"
  vivify_480:
    $P1418 = $P1417."ast"()
    $P1419 = $P1415."!make"($P1418)
    .return ($P1419)
  control_1412:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1420, exception, "payload"
    .return ($P1420)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "routine_def"  :subid("83_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1424
.annotate 'line', 0
    .const 'Sub' $P1483 = "85_1285886573.859" 
    capture_lex $P1483
    .const 'Sub' $P1437 = "84_1285886573.859" 
    capture_lex $P1437
    new $P1423, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1423, control_1422
    push_eh $P1423
    .lex "self", self
    .lex "$/", param_1424
    new $P1425, "Undef"
    .lex "$block", $P1425
    new $P1426, "Undef"
    .lex "$past", $P1426
    find_lex $P1427, "$/"
    unless_null $P1427, vivify_481
    $P1427 = root_new ['parrot';'Hash']
  vivify_481:
    set $P1428, $P1427["blockoid"]
    unless_null $P1428, vivify_482
    new $P1428, "Undef"
  vivify_482:
    $P1429 = $P1428."ast"()
    store_lex "$block", $P1429
    find_lex $P1430, "$block"
    $P1430."blocktype"("declaration")
    find_lex $P1431, "$block"
    $P1431."control"("return_pir")
    find_lex $P1432, "$block"
    store_lex "$past", $P1432
    find_lex $P1434, "$/"
    unless_null $P1434, vivify_483
    $P1434 = root_new ['parrot';'Hash']
  vivify_483:
    set $P1435, $P1434["deflongname"]
    unless_null $P1435, vivify_484
    new $P1435, "Undef"
  vivify_484:
    unless $P1435, if_1433_end
    .const 'Sub' $P1437 = "84_1285886573.859" 
    capture_lex $P1437
    $P1437()
  if_1433_end:
    find_lex $P1469, "$block"
    find_lex $P1470, "$past"
    unless_null $P1470, vivify_498
    $P1470 = root_new ['parrot';'Hash']
    store_lex "$past", $P1470
  vivify_498:
    set $P1470["block_past"], $P1469
    find_lex $P1471, "$/"
    find_lex $P1472, "$past"
    $P1471."!make"($P1472)
    find_lex $P1475, "$/"
    unless_null $P1475, vivify_499
    $P1475 = root_new ['parrot';'Hash']
  vivify_499:
    set $P1476, $P1475["trait"]
    unless_null $P1476, vivify_500
    new $P1476, "Undef"
  vivify_500:
    if $P1476, if_1474
    set $P1473, $P1476
    goto if_1474_end
  if_1474:
    find_lex $P1478, "$/"
    unless_null $P1478, vivify_501
    $P1478 = root_new ['parrot';'Hash']
  vivify_501:
    set $P1479, $P1478["trait"]
    unless_null $P1479, vivify_502
    new $P1479, "Undef"
  vivify_502:
    defined $I1480, $P1479
    unless $I1480, for_undef_503
    iter $P1477, $P1479
    new $P1490, 'ExceptionHandler'
    set_addr $P1490, loop1489_handler
    $P1490."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1490
  loop1489_test:
    unless $P1477, loop1489_done
    shift $P1481, $P1477
  loop1489_redo:
    .const 'Sub' $P1483 = "85_1285886573.859" 
    capture_lex $P1483
    $P1483($P1481)
  loop1489_next:
    goto loop1489_test
  loop1489_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1491, exception, 'type'
    eq $P1491, .CONTROL_LOOP_NEXT, loop1489_next
    eq $P1491, .CONTROL_LOOP_REDO, loop1489_redo
  loop1489_done:
    pop_eh 
  for_undef_503:
    set $P1473, $P1477
  if_1474_end:
    .return ($P1473)
  control_1422:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1492, exception, "payload"
    .return ($P1492)
.end


.namespace ["NQP";"Actions"]
.sub "_block1436"  :anon :subid("84_1285886573.859") :outer("83_1285886573.859")
.annotate 'line', 0
    new $P1438, "Undef"
    .lex "$name", $P1438
    find_lex $P1439, "$/"
    unless_null $P1439, vivify_485
    $P1439 = root_new ['parrot';'Hash']
  vivify_485:
    set $P1440, $P1439["sigil"]
    unless_null $P1440, vivify_486
    $P1440 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    set $P1441, $P1440[0]
    unless_null $P1441, vivify_487
    new $P1441, "Undef"
  vivify_487:
    set $S1442, $P1441
    new $P1443, 'String'
    set $P1443, $S1442
    find_lex $P1444, "$/"
    unless_null $P1444, vivify_488
    $P1444 = root_new ['parrot';'Hash']
  vivify_488:
    set $P1445, $P1444["deflongname"]
    unless_null $P1445, vivify_489
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    set $P1446, $P1445[0]
    unless_null $P1446, vivify_490
    new $P1446, "Undef"
  vivify_490:
    $S1447 = $P1446."ast"()
    concat $P1448, $P1443, $S1447
    store_lex "$name", $P1448
    find_lex $P1449, "$past"
    find_lex $P1450, "$name"
    $P1449."name"($P1450)
    find_dynamic_lex $P1453, "$*SCOPE"
    unless_null $P1453, vivify_491
    get_hll_global $P1453, "$SCOPE"
    unless_null $P1453, vivify_492
    die "Contextual $*SCOPE not found"
  vivify_492:
  vivify_491:
    set $S1454, $P1453
    isne $I1455, $S1454, "our"
    if $I1455, if_1452
    new $P1451, 'Integer'
    set $P1451, $I1455
    goto if_1452_end
  if_1452:
    get_global $P1456, "@BLOCK"
    unless_null $P1456, vivify_493
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_493:
    set $P1457, $P1456[0]
    unless_null $P1457, vivify_494
    $P1457 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    set $P1458, $P1457[0]
    unless_null $P1458, vivify_495
    new $P1458, "Undef"
  vivify_495:
    get_hll_global $P1459, ["PAST"], "Var"
    find_lex $P1460, "$name"
    find_lex $P1461, "$past"
    $P1462 = $P1459."new"($P1460 :named("name"), 1 :named("isdecl"), $P1461 :named("viviself"), "lexical" :named("scope"))
    $P1458."push"($P1462)
    get_global $P1463, "@BLOCK"
    unless_null $P1463, vivify_496
    $P1463 = root_new ['parrot';'ResizablePMCArray']
  vivify_496:
    set $P1464, $P1463[0]
    unless_null $P1464, vivify_497
    new $P1464, "Undef"
  vivify_497:
    find_lex $P1465, "$name"
    $P1464."symbol"($P1465, "lexical" :named("scope"))
    get_hll_global $P1466, ["PAST"], "Var"
    find_lex $P1467, "$name"
    $P1468 = $P1466."new"($P1467 :named("name"))
    store_lex "$past", $P1468
    set $P1451, $P1468
  if_1452_end:
    .return ($P1451)
.end


.namespace ["NQP";"Actions"]
.sub "_block1482"  :anon :subid("85_1285886573.859") :outer("83_1285886573.859")
    .param pmc param_1484
.annotate 'line', 0
    .lex "$_", param_1484
    find_lex $P1485, "$_"
    $P1486 = $P1485."ast"()
    find_lex $P1487, "$/"
    $P1488 = $P1486($P1487)
    .return ($P1488)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "method_def"  :subid("86_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1496
.annotate 'line', 0
    .const 'Sub' $P1612 = "91_1285886573.859" 
    capture_lex $P1612
    .const 'Sub' $P1559 = "89_1285886573.859" 
    capture_lex $P1559
    .const 'Sub' $P1500 = "87_1285886573.859" 
    capture_lex $P1500
    new $P1495, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1495, control_1494
    push_eh $P1495
    .lex "self", self
    .lex "$/", param_1496
    find_dynamic_lex $P1498, "$*PACKAGE-SETUP"
    unless_null $P1498, vivify_504
    get_hll_global $P1498, "$PACKAGE-SETUP"
    unless_null $P1498, vivify_505
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_505:
  vivify_504:
    if $P1498, if_1497
    .const 'Sub' $P1559 = "89_1285886573.859" 
    capture_lex $P1559
    $P1559()
    goto if_1497_end
  if_1497:
    .const 'Sub' $P1500 = "87_1285886573.859" 
    capture_lex $P1500
    $P1500()
  if_1497_end:
    find_lex $P1604, "$/"
    unless_null $P1604, vivify_536
    $P1604 = root_new ['parrot';'Hash']
  vivify_536:
    set $P1605, $P1604["trait"]
    unless_null $P1605, vivify_537
    new $P1605, "Undef"
  vivify_537:
    if $P1605, if_1603
    set $P1602, $P1605
    goto if_1603_end
  if_1603:
    find_lex $P1607, "$/"
    unless_null $P1607, vivify_538
    $P1607 = root_new ['parrot';'Hash']
  vivify_538:
    set $P1608, $P1607["trait"]
    unless_null $P1608, vivify_539
    new $P1608, "Undef"
  vivify_539:
    defined $I1609, $P1608
    unless $I1609, for_undef_540
    iter $P1606, $P1608
    new $P1619, 'ExceptionHandler'
    set_addr $P1619, loop1618_handler
    $P1619."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1619
  loop1618_test:
    unless $P1606, loop1618_done
    shift $P1610, $P1606
  loop1618_redo:
    .const 'Sub' $P1612 = "91_1285886573.859" 
    capture_lex $P1612
    $P1612($P1610)
  loop1618_next:
    goto loop1618_test
  loop1618_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1620, exception, 'type'
    eq $P1620, .CONTROL_LOOP_NEXT, loop1618_next
    eq $P1620, .CONTROL_LOOP_REDO, loop1618_redo
  loop1618_done:
    pop_eh 
  for_undef_540:
    set $P1602, $P1606
  if_1603_end:
    .return ($P1602)
  control_1494:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1621, exception, "payload"
    .return ($P1621)
.end


.namespace ["NQP";"Actions"]
.sub "_block1558"  :anon :subid("89_1285886573.859") :outer("86_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P1580 = "90_1285886573.859" 
    capture_lex $P1580
    new $P1560, "Undef"
    .lex "$past", $P1560
    find_lex $P1561, "$/"
    unless_null $P1561, vivify_506
    $P1561 = root_new ['parrot';'Hash']
  vivify_506:
    set $P1562, $P1561["blockoid"]
    unless_null $P1562, vivify_507
    new $P1562, "Undef"
  vivify_507:
    $P1563 = $P1562."ast"()
    store_lex "$past", $P1563
    find_lex $P1564, "$past"
    $P1564."blocktype"("method")
    find_dynamic_lex $P1566, "$*SCOPE"
    unless_null $P1566, vivify_508
    get_hll_global $P1566, "$SCOPE"
    unless_null $P1566, vivify_509
    die "Contextual $*SCOPE not found"
  vivify_509:
  vivify_508:
    set $S1567, $P1566
    iseq $I1568, $S1567, "our"
    unless $I1568, if_1565_end
    find_lex $P1569, "$past"
    $P1569."pirflags"(":nsentry")
  if_1565_end:
    find_lex $P1570, "$past"
    $P1570."control"("return_pir")
    find_lex $P1571, "$past"
    unless_null $P1571, vivify_510
    $P1571 = root_new ['parrot';'ResizablePMCArray']
  vivify_510:
    set $P1572, $P1571[0]
    unless_null $P1572, vivify_511
    new $P1572, "Undef"
  vivify_511:
    get_hll_global $P1573, ["PAST"], "Op"
    $P1574 = $P1573."new"("    .lex \"self\", self" :named("inline"))
    $P1572."unshift"($P1574)
    find_lex $P1575, "$past"
    $P1575."symbol"("self", "lexical" :named("scope"))
    find_lex $P1577, "$/"
    unless_null $P1577, vivify_512
    $P1577 = root_new ['parrot';'Hash']
  vivify_512:
    set $P1578, $P1577["deflongname"]
    unless_null $P1578, vivify_513
    new $P1578, "Undef"
  vivify_513:
    unless $P1578, if_1576_end
    .const 'Sub' $P1580 = "90_1285886573.859" 
    capture_lex $P1580
    $P1580()
  if_1576_end:
    find_dynamic_lex $P1592, "$*MULTINESS"
    unless_null $P1592, vivify_517
    get_hll_global $P1592, "$MULTINESS"
    unless_null $P1592, vivify_518
    die "Contextual $*MULTINESS not found"
  vivify_518:
  vivify_517:
    set $S1593, $P1592
    iseq $I1594, $S1593, "multi"
    unless $I1594, if_1591_end
    find_lex $P1595, "$past"
    $P1596 = $P1595."multi"()
    $P1596."unshift"("_")
  if_1591_end:
    find_lex $P1597, "$past"
    find_lex $P1598, "$past"
    unless_null $P1598, vivify_519
    $P1598 = root_new ['parrot';'Hash']
    store_lex "$past", $P1598
  vivify_519:
    set $P1598["block_past"], $P1597
    find_dynamic_lex $P1599, "$/"
    find_lex $P1600, "$past"
    $P1601 = $P1599."!make"($P1600)
    .return ($P1601)
.end


.namespace ["NQP";"Actions"]
.sub "_block1579"  :anon :subid("90_1285886573.859") :outer("89_1285886573.859")
.annotate 'line', 0
    new $P1581, "Undef"
    .lex "$name", $P1581
    find_lex $P1582, "$/"
    unless_null $P1582, vivify_514
    $P1582 = root_new ['parrot';'Hash']
  vivify_514:
    set $P1583, $P1582["deflongname"]
    unless_null $P1583, vivify_515
    $P1583 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    set $P1584, $P1583[0]
    unless_null $P1584, vivify_516
    new $P1584, "Undef"
  vivify_516:
    $P1585 = $P1584."ast"()
    set $S1586, $P1585
    new $P1587, 'String'
    set $P1587, $S1586
    store_lex "$name", $P1587
    find_lex $P1588, "$past"
    find_lex $P1589, "$name"
    $P1590 = $P1588."name"($P1589)
    .return ($P1590)
.end


.namespace ["NQP";"Actions"]
.sub "_block1499"  :anon :subid("87_1285886573.859") :outer("86_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P1515 = "88_1285886573.859" 
    capture_lex $P1515
    new $P1501, "Undef"
    .lex "$past", $P1501
    find_lex $P1502, "$/"
    unless_null $P1502, vivify_520
    $P1502 = root_new ['parrot';'Hash']
  vivify_520:
    set $P1503, $P1502["blockoid"]
    unless_null $P1503, vivify_521
    new $P1503, "Undef"
  vivify_521:
    $P1504 = $P1503."ast"()
    store_lex "$past", $P1504
    find_lex $P1505, "$past"
    $P1505."control"("return_pir")
    find_lex $P1506, "$past"
    unless_null $P1506, vivify_522
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
    set $P1507, $P1506[0]
    unless_null $P1507, vivify_523
    new $P1507, "Undef"
  vivify_523:
    get_hll_global $P1508, ["PAST"], "Var"
    $P1509 = $P1508."new"("self" :named("name"), "parameter" :named("scope"))
    $P1507."unshift"($P1509)
    find_lex $P1510, "$past"
    $P1510."symbol"("self", "lexical" :named("scope"))
    find_lex $P1512, "$/"
    unless_null $P1512, vivify_524
    $P1512 = root_new ['parrot';'Hash']
  vivify_524:
    set $P1513, $P1512["deflongname"]
    unless_null $P1513, vivify_525
    new $P1513, "Undef"
  vivify_525:
    unless $P1513, if_1511_end
    .const 'Sub' $P1515 = "88_1285886573.859" 
    capture_lex $P1515
    $P1515()
  if_1511_end:
    find_dynamic_lex $P1549, "$*SCOPE"
    unless_null $P1549, vivify_533
    get_hll_global $P1549, "$SCOPE"
    unless_null $P1549, vivify_534
    die "Contextual $*SCOPE not found"
  vivify_534:
  vivify_533:
    set $S1550, $P1549
    iseq $I1551, $S1550, "our"
    unless $I1551, if_1548_end
    find_lex $P1552, "$past"
    $P1552."pirflags"(":nsentry")
  if_1548_end:
    find_lex $P1553, "$past"
    find_lex $P1554, "$past"
    unless_null $P1554, vivify_535
    $P1554 = root_new ['parrot';'Hash']
    store_lex "$past", $P1554
  vivify_535:
    set $P1554["block_past"], $P1553
    find_dynamic_lex $P1555, "$/"
    find_lex $P1556, "$past"
    $P1557 = $P1555."!make"($P1556)
    .return ($P1557)
.end


.namespace ["NQP";"Actions"]
.sub "_block1514"  :anon :subid("88_1285886573.859") :outer("87_1285886573.859")
.annotate 'line', 0
    new $P1516, "Undef"
    .lex "$name", $P1516
    find_lex $P1517, "$/"
    unless_null $P1517, vivify_526
    $P1517 = root_new ['parrot';'Hash']
  vivify_526:
    set $P1518, $P1517["deflongname"]
    unless_null $P1518, vivify_527
    $P1518 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    set $P1519, $P1518[0]
    unless_null $P1519, vivify_528
    new $P1519, "Undef"
  vivify_528:
    $P1520 = $P1519."ast"()
    set $S1521, $P1520
    new $P1522, 'String'
    set $P1522, $S1521
    store_lex "$name", $P1522
    find_lex $P1523, "$past"
    find_lex $P1524, "$name"
    $P1523."name"($P1524)
    find_dynamic_lex $P1525, "$*PACKAGE-SETUP"
    unless_null $P1525, vivify_529
    get_hll_global $P1525, "$PACKAGE-SETUP"
    unless_null $P1525, vivify_530
    die "Contextual $*PACKAGE-SETUP not found"
  vivify_530:
  vivify_529:
    get_hll_global $P1526, ["PAST"], "Op"
    find_dynamic_lex $P1529, "$*MULTINESS"
    unless_null $P1529, vivify_531
    get_hll_global $P1529, "$MULTINESS"
    unless_null $P1529, vivify_532
    die "Contextual $*MULTINESS not found"
  vivify_532:
  vivify_531:
    set $S1530, $P1529
    iseq $I1531, $S1530, "multi"
    if $I1531, if_1528
    new $P1533, "String"
    assign $P1533, "add_method"
    set $P1527, $P1533
    goto if_1528_end
  if_1528:
    new $P1532, "String"
    assign $P1532, "add_multi_method"
    set $P1527, $P1532
  if_1528_end:
    get_hll_global $P1534, ["PAST"], "Op"
    get_hll_global $P1535, ["PAST"], "Var"
    $P1536 = $P1535."new"("type_obj" :named("name"), "register" :named("scope"))
    $P1537 = $P1534."new"($P1536, "get_how PP" :named("pirop"))
    get_hll_global $P1538, ["PAST"], "Var"
    $P1539 = $P1538."new"("type_obj" :named("name"), "register" :named("scope"))
    get_hll_global $P1540, ["PAST"], "Val"
    find_lex $P1541, "$name"
    $P1542 = $P1540."new"($P1541 :named("value"))
    get_hll_global $P1543, ["PAST"], "Val"
    find_lex $P1544, "$past"
    $P1545 = $P1543."new"($P1544 :named("value"))
    $P1546 = $P1526."new"($P1537, $P1539, $P1542, $P1545, "callmethod" :named("pasttype"), $P1527 :named("name"))
    $P1547 = $P1525."push"($P1546)
    .return ($P1547)
.end


.namespace ["NQP";"Actions"]
.sub "_block1611"  :anon :subid("91_1285886573.859") :outer("86_1285886573.859")
    .param pmc param_1613
.annotate 'line', 0
    .lex "$_", param_1613
    find_lex $P1614, "$_"
    $P1615 = $P1614."ast"()
    find_lex $P1616, "$/"
    $P1617 = $P1615($P1616)
    .return ($P1617)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "signature"  :subid("92_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1625
.annotate 'line', 0
    .const 'Sub' $P1651 = "94_1285886573.859" 
    capture_lex $P1651
    .const 'Sub' $P1636 = "93_1285886573.859" 
    capture_lex $P1636
    new $P1624, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1624, control_1623
    push_eh $P1624
    .lex "self", self
    .lex "$/", param_1625
    new $P1626, "Undef"
    .lex "$BLOCKINIT", $P1626
    get_global $P1627, "@BLOCK"
    unless_null $P1627, vivify_541
    $P1627 = root_new ['parrot';'ResizablePMCArray']
  vivify_541:
    set $P1628, $P1627[0]
    unless_null $P1628, vivify_542
    $P1628 = root_new ['parrot';'ResizablePMCArray']
  vivify_542:
    set $P1629, $P1628[0]
    unless_null $P1629, vivify_543
    new $P1629, "Undef"
  vivify_543:
    store_lex "$BLOCKINIT", $P1629
    find_lex $P1631, "$/"
    unless_null $P1631, vivify_544
    $P1631 = root_new ['parrot';'Hash']
  vivify_544:
    set $P1632, $P1631["parameter"]
    unless_null $P1632, vivify_545
    new $P1632, "Undef"
  vivify_545:
    defined $I1633, $P1632
    unless $I1633, for_undef_546
    iter $P1630, $P1632
    new $P1643, 'ExceptionHandler'
    set_addr $P1643, loop1642_handler
    $P1643."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1643
  loop1642_test:
    unless $P1630, loop1642_done
    shift $P1634, $P1630
  loop1642_redo:
    .const 'Sub' $P1636 = "93_1285886573.859" 
    capture_lex $P1636
    $P1636($P1634)
  loop1642_next:
    goto loop1642_test
  loop1642_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1644, exception, 'type'
    eq $P1644, .CONTROL_LOOP_NEXT, loop1642_next
    eq $P1644, .CONTROL_LOOP_REDO, loop1642_redo
  loop1642_done:
    pop_eh 
  for_undef_546:
    find_dynamic_lex $P1647, "$*MULTINESS"
    unless_null $P1647, vivify_547
    get_hll_global $P1647, "$MULTINESS"
    unless_null $P1647, vivify_548
    die "Contextual $*MULTINESS not found"
  vivify_548:
  vivify_547:
    set $S1648, $P1647
    iseq $I1649, $S1648, "multi"
    if $I1649, if_1646
    new $P1645, 'Integer'
    set $P1645, $I1649
    goto if_1646_end
  if_1646:
    .const 'Sub' $P1651 = "94_1285886573.859" 
    capture_lex $P1651
    $P1689 = $P1651()
    set $P1645, $P1689
  if_1646_end:
    .return ($P1645)
  control_1623:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1690, exception, "payload"
    .return ($P1690)
.end


.namespace ["NQP";"Actions"]
.sub "_block1635"  :anon :subid("93_1285886573.859") :outer("92_1285886573.859")
    .param pmc param_1637
.annotate 'line', 0
    .lex "$_", param_1637
    find_lex $P1638, "$BLOCKINIT"
    find_lex $P1639, "$_"
    $P1640 = $P1639."ast"()
    $P1641 = $P1638."push"($P1640)
    .return ($P1641)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1650"  :anon :subid("94_1285886573.859") :outer("92_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P1660 = "95_1285886573.859" 
    capture_lex $P1660
    $P1652 = root_new ['parrot';'ResizablePMCArray']
    .lex "@params", $P1652
    find_lex $P1653, "@params"
    find_lex $P1655, "$BLOCKINIT"
    $P1656 = $P1655."list"()
    defined $I1657, $P1656
    unless $I1657, for_undef_549
    iter $P1654, $P1656
    new $P1683, 'ExceptionHandler'
    set_addr $P1683, loop1682_handler
    $P1683."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1683
  loop1682_test:
    unless $P1654, loop1682_done
    shift $P1658, $P1654
  loop1682_redo:
    .const 'Sub' $P1660 = "95_1285886573.859" 
    capture_lex $P1660
    $P1660($P1658)
  loop1682_next:
    goto loop1682_test
  loop1682_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1684, exception, 'type'
    eq $P1684, .CONTROL_LOOP_NEXT, loop1682_next
    eq $P1684, .CONTROL_LOOP_REDO, loop1682_redo
  loop1682_done:
    pop_eh 
  for_undef_549:
    get_global $P1685, "@BLOCK"
    unless_null $P1685, vivify_550
    $P1685 = root_new ['parrot';'ResizablePMCArray']
  vivify_550:
    set $P1686, $P1685[0]
    unless_null $P1686, vivify_551
    new $P1686, "Undef"
  vivify_551:
    find_lex $P1687, "@params"
    $P1688 = $P1686."multi"($P1687)
    .return ($P1688)
.end


.namespace ["NQP";"Actions"]
.sub "_block1659"  :anon :subid("95_1285886573.859") :outer("94_1285886573.859")
    .param pmc param_1661
.annotate 'line', 0
    .lex "$_", param_1661
    find_lex $P1668, "$_"
    $P1669 = $P1668."slurpy"()
    unless $P1669, unless_1667
    set $P1666, $P1669
    goto unless_1667_end
  unless_1667:
    find_lex $P1670, "$_"
    $P1671 = $P1670."named"()
    set $P1666, $P1671
  unless_1667_end:
    unless $P1666, unless_1665
    set $P1664, $P1666
    goto unless_1665_end
  unless_1665:
    find_lex $P1672, "$_"
    $P1673 = $P1672."viviself"()
    set $P1664, $P1673
  unless_1665_end:
    unless $P1664, unless_1663
    set $P1662, $P1664
    goto unless_1663_end
  unless_1663:
    find_lex $P1674, "@params"
    find_lex $P1676, "$_"
    $P1677 = $P1676."multitype"()
    set $P1675, $P1677
    defined $I1679, $P1675
    if $I1679, default_1678
    new $P1680, "String"
    assign $P1680, "_"
    set $P1675, $P1680
  default_1678:
    $P1681 = $P1674."push"($P1675)
    set $P1662, $P1681
  unless_1663_end:
    .return ($P1662)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "parameter"  :subid("96_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1694
.annotate 'line', 0
    .const 'Sub' $P1775 = "97_1285886573.859" 
    capture_lex $P1775
    new $P1693, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1693, control_1692
    push_eh $P1693
    .lex "self", self
    .lex "$/", param_1694
    new $P1695, "Undef"
    .lex "$quant", $P1695
    new $P1696, "Undef"
    .lex "$past", $P1696
    find_lex $P1697, "$/"
    unless_null $P1697, vivify_552
    $P1697 = root_new ['parrot';'Hash']
  vivify_552:
    set $P1698, $P1697["quant"]
    unless_null $P1698, vivify_553
    new $P1698, "Undef"
  vivify_553:
    store_lex "$quant", $P1698
    find_lex $P1699, "$past"
    find_lex $P1701, "$/"
    unless_null $P1701, vivify_554
    $P1701 = root_new ['parrot';'Hash']
  vivify_554:
    set $P1702, $P1701["named_param"]
    unless_null $P1702, vivify_555
    new $P1702, "Undef"
  vivify_555:
    if $P1702, if_1700
    find_lex $P1716, "$/"
    unless_null $P1716, vivify_556
    $P1716 = root_new ['parrot';'Hash']
  vivify_556:
    set $P1717, $P1716["param_var"]
    unless_null $P1717, vivify_557
    new $P1717, "Undef"
  vivify_557:
    $P1718 = $P1717."ast"()
    store_lex "$past", $P1718
    find_lex $P1720, "$quant"
    set $S1721, $P1720
    iseq $I1722, $S1721, "*"
    if $I1722, if_1719
    find_lex $P1731, "$quant"
    set $S1732, $P1731
    iseq $I1733, $S1732, "?"
    unless $I1733, if_1730_end
    find_lex $P1734, "$past"
    find_lex $P1735, "$/"
    unless_null $P1735, vivify_558
    $P1735 = root_new ['parrot';'Hash']
  vivify_558:
    set $P1736, $P1735["param_var"]
    unless_null $P1736, vivify_559
    $P1736 = root_new ['parrot';'Hash']
  vivify_559:
    set $P1737, $P1736["sigil"]
    unless_null $P1737, vivify_560
    new $P1737, "Undef"
  vivify_560:
    $P1738 = "vivitype"($P1737)
    $P1734."viviself"($P1738)
  if_1730_end:
    goto if_1719_end
  if_1719:
    find_lex $P1723, "$past"
    $P1723."slurpy"(1)
    find_lex $P1724, "$past"
    find_lex $P1725, "$/"
    unless_null $P1725, vivify_561
    $P1725 = root_new ['parrot';'Hash']
  vivify_561:
    set $P1726, $P1725["param_var"]
    unless_null $P1726, vivify_562
    $P1726 = root_new ['parrot';'Hash']
  vivify_562:
    set $P1727, $P1726["sigil"]
    unless_null $P1727, vivify_563
    new $P1727, "Undef"
  vivify_563:
    set $S1728, $P1727
    iseq $I1729, $S1728, "%"
    $P1724."named"($I1729)
  if_1719_end:
    goto if_1700_end
  if_1700:
    find_lex $P1703, "$/"
    unless_null $P1703, vivify_564
    $P1703 = root_new ['parrot';'Hash']
  vivify_564:
    set $P1704, $P1703["named_param"]
    unless_null $P1704, vivify_565
    new $P1704, "Undef"
  vivify_565:
    $P1705 = $P1704."ast"()
    store_lex "$past", $P1705
    find_lex $P1707, "$quant"
    set $S1708, $P1707
    isne $I1709, $S1708, "!"
    unless $I1709, if_1706_end
    find_lex $P1710, "$past"
    find_lex $P1711, "$/"
    unless_null $P1711, vivify_566
    $P1711 = root_new ['parrot';'Hash']
  vivify_566:
    set $P1712, $P1711["named_param"]
    unless_null $P1712, vivify_567
    $P1712 = root_new ['parrot';'Hash']
  vivify_567:
    set $P1713, $P1712["param_var"]
    unless_null $P1713, vivify_568
    $P1713 = root_new ['parrot';'Hash']
  vivify_568:
    set $P1714, $P1713["sigil"]
    unless_null $P1714, vivify_569
    new $P1714, "Undef"
  vivify_569:
    $P1715 = "vivitype"($P1714)
    $P1710."viviself"($P1715)
  if_1706_end:
  if_1700_end:
    find_lex $P1740, "$/"
    unless_null $P1740, vivify_570
    $P1740 = root_new ['parrot';'Hash']
  vivify_570:
    set $P1741, $P1740["default_value"]
    unless_null $P1741, vivify_571
    new $P1741, "Undef"
  vivify_571:
    unless $P1741, if_1739_end
    find_lex $P1743, "$quant"
    set $S1744, $P1743
    iseq $I1745, $S1744, "*"
    unless $I1745, if_1742_end
    find_lex $P1746, "$/"
    $P1747 = $P1746."CURSOR"()
    $P1747."panic"("Can't put default on slurpy parameter")
  if_1742_end:
    find_lex $P1749, "$quant"
    set $S1750, $P1749
    iseq $I1751, $S1750, "!"
    unless $I1751, if_1748_end
    find_lex $P1752, "$/"
    $P1753 = $P1752."CURSOR"()
    $P1753."panic"("Can't put default on required parameter")
  if_1748_end:
    find_lex $P1754, "$past"
    find_lex $P1755, "$/"
    unless_null $P1755, vivify_572
    $P1755 = root_new ['parrot';'Hash']
  vivify_572:
    set $P1756, $P1755["default_value"]
    unless_null $P1756, vivify_573
    $P1756 = root_new ['parrot';'ResizablePMCArray']
  vivify_573:
    set $P1757, $P1756[0]
    unless_null $P1757, vivify_574
    $P1757 = root_new ['parrot';'Hash']
  vivify_574:
    set $P1758, $P1757["EXPR"]
    unless_null $P1758, vivify_575
    new $P1758, "Undef"
  vivify_575:
    $P1759 = $P1758."ast"()
    $P1754."viviself"($P1759)
  if_1739_end:
    find_lex $P1761, "$past"
    $P1762 = $P1761."viviself"()
    if $P1762, unless_1760_end
    get_global $P1763, "@BLOCK"
    unless_null $P1763, vivify_576
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    set $P1764, $P1763[0]
    unless_null $P1764, vivify_577
    new $P1764, "Undef"
  vivify_577:
    get_global $P1765, "@BLOCK"
    unless_null $P1765, vivify_578
    $P1765 = root_new ['parrot';'ResizablePMCArray']
  vivify_578:
    set $P1766, $P1765[0]
    unless_null $P1766, vivify_579
    new $P1766, "Undef"
  vivify_579:
    $P1767 = $P1766."arity"()
    set $N1768, $P1767
    new $P1769, 'Float'
    set $P1769, $N1768
    add $P1770, $P1769, 1
    $P1764."arity"($P1770)
  unless_1760_end:
    find_lex $P1772, "$/"
    unless_null $P1772, vivify_580
    $P1772 = root_new ['parrot';'Hash']
  vivify_580:
    set $P1773, $P1772["typename"]
    unless_null $P1773, vivify_581
    new $P1773, "Undef"
  vivify_581:
    unless $P1773, if_1771_end
    .const 'Sub' $P1775 = "97_1285886573.859" 
    capture_lex $P1775
    $P1775()
  if_1771_end:
    find_lex $P1799, "$/"
    find_lex $P1800, "$past"
    $P1801 = $P1799."!make"($P1800)
    .return ($P1801)
  control_1692:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1802, exception, "payload"
    .return ($P1802)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1774"  :anon :subid("97_1285886573.859") :outer("96_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P1787 = "98_1285886573.859" 
    capture_lex $P1787
    $P1776 = root_new ['parrot';'ResizablePMCArray']
    .lex "@multitype", $P1776
    find_lex $P1777, "@multitype"
    find_lex $P1779, "$/"
    unless_null $P1779, vivify_582
    $P1779 = root_new ['parrot';'Hash']
  vivify_582:
    set $P1780, $P1779["typename"]
    unless_null $P1780, vivify_583
    $P1780 = root_new ['parrot';'ResizablePMCArray']
  vivify_583:
    set $P1781, $P1780[0]
    unless_null $P1781, vivify_584
    $P1781 = root_new ['parrot';'Hash']
  vivify_584:
    set $P1782, $P1781["name"]
    unless_null $P1782, vivify_585
    $P1782 = root_new ['parrot';'Hash']
  vivify_585:
    set $P1783, $P1782["identifier"]
    unless_null $P1783, vivify_586
    new $P1783, "Undef"
  vivify_586:
    defined $I1784, $P1783
    unless $I1784, for_undef_587
    iter $P1778, $P1783
    new $P1794, 'ExceptionHandler'
    set_addr $P1794, loop1793_handler
    $P1794."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1794
  loop1793_test:
    unless $P1778, loop1793_done
    shift $P1785, $P1778
  loop1793_redo:
    .const 'Sub' $P1787 = "98_1285886573.859" 
    capture_lex $P1787
    $P1787($P1785)
  loop1793_next:
    goto loop1793_test
  loop1793_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1795, exception, 'type'
    eq $P1795, .CONTROL_LOOP_NEXT, loop1793_next
    eq $P1795, .CONTROL_LOOP_REDO, loop1793_redo
  loop1793_done:
    pop_eh 
  for_undef_587:
    find_lex $P1796, "$past"
    find_lex $P1797, "@multitype"
    $P1798 = $P1796."multitype"($P1797)
    .return ($P1798)
.end


.namespace ["NQP";"Actions"]
.sub "_block1786"  :anon :subid("98_1285886573.859") :outer("97_1285886573.859")
    .param pmc param_1788
.annotate 'line', 0
    .lex "$_", param_1788
    find_lex $P1789, "@multitype"
    find_lex $P1790, "$_"
    set $S1791, $P1790
    $P1792 = $P1789."push"($S1791)
    .return ($P1792)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "param_var"  :subid("99_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1806
.annotate 'line', 0
    new $P1805, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1805, control_1804
    push_eh $P1805
    .lex "self", self
    .lex "$/", param_1806
    new $P1807, "Undef"
    .lex "$name", $P1807
    new $P1808, "Undef"
    .lex "$past", $P1808
    find_lex $P1809, "$/"
    set $S1810, $P1809
    new $P1811, 'String'
    set $P1811, $S1810
    store_lex "$name", $P1811
    get_hll_global $P1812, ["PAST"], "Var"
    find_lex $P1813, "$name"
    find_lex $P1814, "$/"
    $P1815 = $P1812."new"($P1813 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P1814 :named("node"))
    store_lex "$past", $P1815
    get_global $P1816, "@BLOCK"
    unless_null $P1816, vivify_588
    $P1816 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $P1817, $P1816[0]
    unless_null $P1817, vivify_589
    new $P1817, "Undef"
  vivify_589:
    find_lex $P1818, "$name"
    $P1817."symbol"($P1818, "lexical" :named("scope"))
    find_lex $P1819, "$/"
    find_lex $P1820, "$past"
    $P1821 = $P1819."!make"($P1820)
    .return ($P1821)
  control_1804:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1822, exception, "payload"
    .return ($P1822)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "named_param"  :subid("100_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1826
.annotate 'line', 0
    new $P1825, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1825, control_1824
    push_eh $P1825
    .lex "self", self
    .lex "$/", param_1826
    new $P1827, "Undef"
    .lex "$past", $P1827
    find_lex $P1828, "$/"
    unless_null $P1828, vivify_590
    $P1828 = root_new ['parrot';'Hash']
  vivify_590:
    set $P1829, $P1828["param_var"]
    unless_null $P1829, vivify_591
    new $P1829, "Undef"
  vivify_591:
    $P1830 = $P1829."ast"()
    store_lex "$past", $P1830
    find_lex $P1831, "$past"
    find_lex $P1832, "$/"
    unless_null $P1832, vivify_592
    $P1832 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1833, $P1832["param_var"]
    unless_null $P1833, vivify_593
    $P1833 = root_new ['parrot';'Hash']
  vivify_593:
    set $P1834, $P1833["name"]
    unless_null $P1834, vivify_594
    new $P1834, "Undef"
  vivify_594:
    set $S1835, $P1834
    $P1831."named"($S1835)
    find_lex $P1836, "$/"
    find_lex $P1837, "$past"
    $P1838 = $P1836."!make"($P1837)
    .return ($P1838)
  control_1824:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1839, exception, "payload"
    .return ($P1839)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "trait"  :subid("101_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1843
.annotate 'line', 0
    new $P1842, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1842, control_1841
    push_eh $P1842
    .lex "self", self
    .lex "$/", param_1843
    find_lex $P1844, "$/"
    find_lex $P1845, "$/"
    unless_null $P1845, vivify_595
    $P1845 = root_new ['parrot';'Hash']
  vivify_595:
    set $P1846, $P1845["trait_mod"]
    unless_null $P1846, vivify_596
    new $P1846, "Undef"
  vivify_596:
    $P1847 = $P1846."ast"()
    $P1848 = $P1844."!make"($P1847)
    .return ($P1848)
  control_1841:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1849, exception, "payload"
    .return ($P1849)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "trait_mod:sym<is>"  :subid("102_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1853
.annotate 'line', 0
    .const 'Sub' $P1873 = "103_1285886573.859" 
    capture_lex $P1873
    new $P1852, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1852, control_1851
    push_eh $P1852
    .lex "self", self
    .lex "$/", param_1853
    new $P1854, "Undef"
    .lex "$cpast", $P1854
    find_lex $P1855, "$/"
    unless_null $P1855, vivify_597
    $P1855 = root_new ['parrot';'Hash']
  vivify_597:
    set $P1856, $P1855["circumfix"]
    unless_null $P1856, vivify_598
    $P1856 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    set $P1857, $P1856[0]
    unless_null $P1857, vivify_599
    new $P1857, "Undef"
  vivify_599:
    $P1858 = $P1857."ast"()
    store_lex "$cpast", $P1858
    find_lex $P1861, "$/"
    unless_null $P1861, vivify_600
    $P1861 = root_new ['parrot';'Hash']
  vivify_600:
    set $P1862, $P1861["longname"]
    unless_null $P1862, vivify_601
    new $P1862, "Undef"
  vivify_601:
    set $S1863, $P1862
    iseq $I1864, $S1863, "pirflags"
    if $I1864, if_1860
    find_lex $P1883, "$/"
    $P1884 = $P1883."CURSOR"()
    new $P1885, 'String'
    set $P1885, "Trait '"
    find_lex $P1886, "$/"
    unless_null $P1886, vivify_602
    $P1886 = root_new ['parrot';'Hash']
  vivify_602:
    set $P1887, $P1886["longname"]
    unless_null $P1887, vivify_603
    new $P1887, "Undef"
  vivify_603:
    concat $P1888, $P1885, $P1887
    concat $P1889, $P1888, "' not implemented"
    $P1890 = $P1884."panic"($P1889)
    set $P1859, $P1890
    goto if_1860_end
  if_1860:
    get_hll_global $P1866, ["PAST"], "Val"
    find_lex $P1867, "$cpast"
    $P1868 = $P1866."ACCEPTS"($P1867)
    if $P1868, unless_1865_end
    find_lex $P1869, "$/"
    $P1870 = $P1869."CURSOR"()
    $P1870."panic"("Trait 'pirflags' requires constant scalar argument")
  unless_1865_end:
    find_lex $P1871, "$/"
    .const 'Sub' $P1873 = "103_1285886573.859" 
    newclosure $P1881, $P1873
    $P1882 = $P1871."!make"($P1881)
    set $P1859, $P1882
  if_1860_end:
    .return ($P1859)
  control_1851:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1891, exception, "payload"
    .return ($P1891)
.end


.namespace ["NQP";"Actions"]
.sub "_block1872"  :anon :subid("103_1285886573.859") :outer("102_1285886573.859")
    .param pmc param_1874
.annotate 'line', 0
    .lex "$match", param_1874
    find_lex $P1875, "$match"
    $P1876 = $P1875."ast"()
    set $P1877, $P1876["block_past"]
    unless_null $P1877, vivify_604
    new $P1877, "Undef"
  vivify_604:
    find_lex $P1878, "$cpast"
    $P1879 = $P1878."value"()
    $P1880 = $P1877."pirflags"($P1879)
    .return ($P1880)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "regex_declarator"  :subid("104_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1895
    .param pmc param_1896 :optional
    .param int has_param_1896 :opt_flag
.annotate 'line', 0
    .const 'Sub' $P1966 = "106_1285886573.859" 
    capture_lex $P1966
    .const 'Sub' $P1938 = "105_1285886573.859" 
    capture_lex $P1938
    new $P1894, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1894, control_1893
    push_eh $P1894
    .lex "self", self
    .lex "$/", param_1895
    if has_param_1896, optparam_605
    new $P1897, "Undef"
    set param_1896, $P1897
  optparam_605:
    .lex "$key", param_1896
    $P1898 = root_new ['parrot';'ResizablePMCArray']
    .lex "@MODIFIERS", $P1898
    new $P1899, "Undef"
    .lex "$name", $P1899
    new $P1900, "Undef"
    .lex "$past", $P1900

        $P1901 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    store_lex "@MODIFIERS", $P1901
    find_lex $P1902, "$/"
    unless_null $P1902, vivify_606
    $P1902 = root_new ['parrot';'Hash']
  vivify_606:
    set $P1903, $P1902["deflongname"]
    unless_null $P1903, vivify_607
    new $P1903, "Undef"
  vivify_607:
    $P1904 = $P1903."ast"()
    set $S1905, $P1904
    new $P1906, 'String'
    set $P1906, $S1905
    store_lex "$name", $P1906
    find_lex $P1907, "$past"
    find_lex $P1909, "$/"
    unless_null $P1909, vivify_608
    $P1909 = root_new ['parrot';'Hash']
  vivify_608:
    set $P1910, $P1909["proto"]
    unless_null $P1910, vivify_609
    new $P1910, "Undef"
  vivify_609:
    if $P1910, if_1908
    find_lex $P1934, "$key"
    set $S1935, $P1934
    iseq $I1936, $S1935, "open"
    if $I1936, if_1933
    .const 'Sub' $P1966 = "106_1285886573.859" 
    capture_lex $P1966
    $P1966()
    goto if_1933_end
  if_1933:
    .const 'Sub' $P1938 = "105_1285886573.859" 
    capture_lex $P1938
    $P1938()
  if_1933_end:
    goto if_1908_end
  if_1908:
    get_hll_global $P1911, ["PAST"], "Stmts"
    get_hll_global $P1912, ["PAST"], "Block"
    find_lex $P1913, "$name"
    get_hll_global $P1914, ["PAST"], "Op"
    get_hll_global $P1915, ["PAST"], "Var"
    $P1916 = $P1915."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1917, "$name"
    $P1918 = $P1914."new"($P1916, $P1917, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
    find_lex $P1919, "$/"
    $P1920 = $P1912."new"($P1918, $P1913 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1919 :named("node"))
    get_hll_global $P1921, ["PAST"], "Block"
    new $P1922, "String"
    assign $P1922, "!PREFIX__"
    find_lex $P1923, "$name"
    concat $P1924, $P1922, $P1923
    get_hll_global $P1925, ["PAST"], "Op"
    get_hll_global $P1926, ["PAST"], "Var"
    $P1927 = $P1926."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1928, "$name"
    $P1929 = $P1925."new"($P1927, $P1928, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
    find_lex $P1930, "$/"
    $P1931 = $P1921."new"($P1929, $P1924 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1930 :named("node"))
    $P1932 = $P1911."new"($P1920, $P1931)
    store_lex "$past", $P1932
  if_1908_end:
    find_lex $P1987, "$/"
    find_lex $P1988, "$past"
    $P1989 = $P1987."!make"($P1988)
    .return ($P1989)
  control_1893:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1990, exception, "payload"
    .return ($P1990)
.end


.namespace ["NQP";"Actions"]
.sub "_block1965"  :anon :subid("106_1285886573.859") :outer("104_1285886573.859")
.annotate 'line', 0
    new $P1967, "Undef"
    .lex "$regex", $P1967
    get_hll_global $P1968, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P1969, "$/"
    unless_null $P1969, vivify_610
    $P1969 = root_new ['parrot';'Hash']
  vivify_610:
    set $P1970, $P1969["p6regex"]
    unless_null $P1970, vivify_611
    new $P1970, "Undef"
  vivify_611:
    $P1971 = $P1970."ast"()
    get_global $P1972, "@BLOCK"
    $P1973 = $P1972."shift"()
    $P1974 = $P1968($P1971, $P1973)
    store_lex "$regex", $P1974
    find_lex $P1975, "$regex"
    find_lex $P1976, "$name"
    $P1975."name"($P1976)
    get_hll_global $P1977, ["PAST"], "Op"
    get_hll_global $P1978, ["PAST"], "Var"
    new $P1979, "ResizablePMCArray"
    push $P1979, "Regex"
    $P1980 = $P1978."new"("Method" :named("name"), $P1979 :named("namespace"), "package" :named("scope"))
    find_lex $P1981, "$regex"
    $P1982 = $P1977."new"($P1980, $P1981, "callmethod" :named("pasttype"), "new" :named("name"))
    store_lex "$past", $P1982
    find_lex $P1983, "$regex"
    find_lex $P1984, "$past"
    unless_null $P1984, vivify_612
    $P1984 = root_new ['parrot';'Hash']
    store_lex "$past", $P1984
  vivify_612:
    set $P1984["sink"], $P1983
    find_lex $P1985, "@MODIFIERS"
    $P1986 = $P1985."shift"()
    .return ($P1986)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block1937"  :anon :subid("105_1285886573.859") :outer("104_1285886573.859")
.annotate 'line', 0
    $P1939 = root_new ['parrot';'Hash']
    .lex "%h", $P1939
    find_lex $P1940, "%h"
    find_lex $P1942, "$/"
    unless_null $P1942, vivify_613
    $P1942 = root_new ['parrot';'Hash']
  vivify_613:
    set $P1943, $P1942["sym"]
    unless_null $P1943, vivify_614
    new $P1943, "Undef"
  vivify_614:
    set $S1944, $P1943
    iseq $I1945, $S1944, "token"
    unless $I1945, if_1941_end
    new $P1946, "Integer"
    assign $P1946, 1
    find_lex $P1947, "%h"
    unless_null $P1947, vivify_615
    $P1947 = root_new ['parrot';'Hash']
    store_lex "%h", $P1947
  vivify_615:
    set $P1947["r"], $P1946
  if_1941_end:
    find_lex $P1949, "$/"
    unless_null $P1949, vivify_616
    $P1949 = root_new ['parrot';'Hash']
  vivify_616:
    set $P1950, $P1949["sym"]
    unless_null $P1950, vivify_617
    new $P1950, "Undef"
  vivify_617:
    set $S1951, $P1950
    iseq $I1952, $S1951, "rule"
    unless $I1952, if_1948_end
    new $P1953, "Integer"
    assign $P1953, 1
    find_lex $P1954, "%h"
    unless_null $P1954, vivify_618
    $P1954 = root_new ['parrot';'Hash']
    store_lex "%h", $P1954
  vivify_618:
    set $P1954["r"], $P1953
    new $P1955, "Integer"
    assign $P1955, 1
    find_lex $P1956, "%h"
    unless_null $P1956, vivify_619
    $P1956 = root_new ['parrot';'Hash']
    store_lex "%h", $P1956
  vivify_619:
    set $P1956["s"], $P1955
  if_1948_end:
    find_lex $P1957, "@MODIFIERS"
    find_lex $P1958, "%h"
    $P1957."unshift"($P1958)

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
    get_global $P1959, "@BLOCK"
    unless_null $P1959, vivify_620
    $P1959 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    set $P1960, $P1959[0]
    unless_null $P1960, vivify_621
    new $P1960, "Undef"
  vivify_621:
    $P1960."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
    get_global $P1961, "@BLOCK"
    unless_null $P1961, vivify_622
    $P1961 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    set $P1962, $P1961[0]
    unless_null $P1962, vivify_623
    new $P1962, "Undef"
  vivify_623:
    $P1962."symbol"("$/", "lexical" :named("scope"))
    new $P1963, "Exception"
    set $P1963['type'], .CONTROL_RETURN
    new $P1964, "Integer"
    assign $P1964, 0
    setattribute $P1963, 'payload', $P1964
    throw $P1963
    .return ()
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "dotty"  :subid("107_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_1994
.annotate 'line', 0
    new $P1993, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1993, control_1992
    push_eh $P1993
    .lex "self", self
    .lex "$/", param_1994
    new $P1995, "Undef"
    .lex "$past", $P1995
    find_lex $P1998, "$/"
    unless_null $P1998, vivify_624
    $P1998 = root_new ['parrot';'Hash']
  vivify_624:
    set $P1999, $P1998["args"]
    unless_null $P1999, vivify_625
    new $P1999, "Undef"
  vivify_625:
    if $P1999, if_1997
    get_hll_global $P2004, ["PAST"], "Op"
    find_lex $P2005, "$/"
    $P2006 = $P2004."new"($P2005 :named("node"))
    set $P1996, $P2006
    goto if_1997_end
  if_1997:
    find_lex $P2000, "$/"
    unless_null $P2000, vivify_626
    $P2000 = root_new ['parrot';'Hash']
  vivify_626:
    set $P2001, $P2000["args"]
    unless_null $P2001, vivify_627
    $P2001 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    set $P2002, $P2001[0]
    unless_null $P2002, vivify_628
    new $P2002, "Undef"
  vivify_628:
    $P2003 = $P2002."ast"()
    set $P1996, $P2003
  if_1997_end:
    store_lex "$past", $P1996
    find_lex $P2007, "$past"
    find_lex $P2010, "$/"
    unless_null $P2010, vivify_629
    $P2010 = root_new ['parrot';'Hash']
  vivify_629:
    set $P2011, $P2010["quote"]
    unless_null $P2011, vivify_630
    new $P2011, "Undef"
  vivify_630:
    if $P2011, if_2009
    find_lex $P2015, "$/"
    unless_null $P2015, vivify_631
    $P2015 = root_new ['parrot';'Hash']
  vivify_631:
    set $P2016, $P2015["longname"]
    unless_null $P2016, vivify_632
    new $P2016, "Undef"
  vivify_632:
    set $S2017, $P2016
    new $P2008, 'String'
    set $P2008, $S2017
    goto if_2009_end
  if_2009:
    find_lex $P2012, "$/"
    unless_null $P2012, vivify_633
    $P2012 = root_new ['parrot';'Hash']
  vivify_633:
    set $P2013, $P2012["quote"]
    unless_null $P2013, vivify_634
    new $P2013, "Undef"
  vivify_634:
    $P2014 = $P2013."ast"()
    set $P2008, $P2014
  if_2009_end:
    $P2007."name"($P2008)
    find_lex $P2018, "$past"
    $P2018."pasttype"("callmethod")
    find_lex $P2019, "$/"
    find_lex $P2020, "$past"
    $P2021 = $P2019."!make"($P2020)
    .return ($P2021)
  control_1992:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2022, exception, "payload"
    .return ($P2022)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<self>"  :subid("108_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2026
.annotate 'line', 0
    new $P2025, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2025, control_2024
    push_eh $P2025
    .lex "self", self
    .lex "$/", param_2026
    find_lex $P2027, "$/"
    get_hll_global $P2028, ["PAST"], "Var"
    $P2029 = $P2028."new"("self" :named("name"))
    $P2030 = $P2027."!make"($P2029)
    .return ($P2030)
  control_2024:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2031, exception, "payload"
    .return ($P2031)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<identifier>"  :subid("109_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2035
.annotate 'line', 0
    new $P2034, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2034, control_2033
    push_eh $P2034
    .lex "self", self
    .lex "$/", param_2035
    new $P2036, "Undef"
    .lex "$past", $P2036
    find_lex $P2037, "$/"
    unless_null $P2037, vivify_635
    $P2037 = root_new ['parrot';'Hash']
  vivify_635:
    set $P2038, $P2037["args"]
    unless_null $P2038, vivify_636
    new $P2038, "Undef"
  vivify_636:
    $P2039 = $P2038."ast"()
    store_lex "$past", $P2039
    find_lex $P2040, "$past"
    find_lex $P2041, "$/"
    unless_null $P2041, vivify_637
    $P2041 = root_new ['parrot';'Hash']
  vivify_637:
    set $P2042, $P2041["deflongname"]
    unless_null $P2042, vivify_638
    new $P2042, "Undef"
  vivify_638:
    set $S2043, $P2042
    $P2040."name"($S2043)
    find_lex $P2044, "$/"
    find_lex $P2045, "$past"
    $P2046 = $P2044."!make"($P2045)
    .return ($P2046)
  control_2033:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2047, exception, "payload"
    .return ($P2047)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<name>"  :subid("110_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2051
.annotate 'line', 0
    new $P2050, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2050, control_2049
    push_eh $P2050
    .lex "self", self
    .lex "$/", param_2051
    $P2052 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2052
    new $P2053, "Undef"
    .lex "$name", $P2053
    new $P2054, "Undef"
    .lex "$var", $P2054
    new $P2055, "Undef"
    .lex "$past", $P2055
    find_lex $P2056, "$/"
    unless_null $P2056, vivify_639
    $P2056 = root_new ['parrot';'Hash']
  vivify_639:
    set $P2057, $P2056["name"]
    unless_null $P2057, vivify_640
    $P2057 = root_new ['parrot';'Hash']
  vivify_640:
    set $P2058, $P2057["identifier"]
    unless_null $P2058, vivify_641
    new $P2058, "Undef"
  vivify_641:
    clone $P2059, $P2058
    store_lex "@ns", $P2059
    find_lex $P2060, "@ns"
    $P2061 = $P2060."pop"()
    store_lex "$name", $P2061
    find_lex $P2065, "@ns"
    if $P2065, if_2064
    set $P2063, $P2065
    goto if_2064_end
  if_2064:
    find_lex $P2066, "@ns"
    unless_null $P2066, vivify_642
    $P2066 = root_new ['parrot';'ResizablePMCArray']
  vivify_642:
    set $P2067, $P2066[0]
    unless_null $P2067, vivify_643
    new $P2067, "Undef"
  vivify_643:
    set $S2068, $P2067
    iseq $I2069, $S2068, "GLOBAL"
    new $P2063, 'Integer'
    set $P2063, $I2069
  if_2064_end:
    unless $P2063, if_2062_end
    find_lex $P2070, "@ns"
    $P2070."shift"()
  if_2062_end:
    get_hll_global $P2071, ["PAST"], "Var"
    find_lex $P2072, "$name"
    set $S2073, $P2072
    find_lex $P2074, "@ns"
    $P2075 = $P2071."new"($S2073 :named("name"), $P2074 :named("namespace"), "package" :named("scope"))
    store_lex "$var", $P2075
    find_lex $P2076, "$var"
    store_lex "$past", $P2076
    find_lex $P2078, "$/"
    unless_null $P2078, vivify_644
    $P2078 = root_new ['parrot';'Hash']
  vivify_644:
    set $P2079, $P2078["args"]
    unless_null $P2079, vivify_645
    new $P2079, "Undef"
  vivify_645:
    unless $P2079, if_2077_end
    find_lex $P2080, "$/"
    unless_null $P2080, vivify_646
    $P2080 = root_new ['parrot';'Hash']
  vivify_646:
    set $P2081, $P2080["args"]
    unless_null $P2081, vivify_647
    $P2081 = root_new ['parrot';'ResizablePMCArray']
  vivify_647:
    set $P2082, $P2081[0]
    unless_null $P2082, vivify_648
    new $P2082, "Undef"
  vivify_648:
    $P2083 = $P2082."ast"()
    store_lex "$past", $P2083
    find_lex $P2084, "$past"
    find_lex $P2085, "$var"
    $P2084."unshift"($P2085)
  if_2077_end:
    find_lex $P2086, "$/"
    find_lex $P2087, "$past"
    $P2088 = $P2086."!make"($P2087)
    .return ($P2088)
  control_2049:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2089, exception, "payload"
    .return ($P2089)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<pir::op>"  :subid("111_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2093
.annotate 'line', 0
    new $P2092, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2092, control_2091
    push_eh $P2092
    .lex "self", self
    .lex "$/", param_2093
    new $P2094, "Undef"
    .lex "$past", $P2094
    new $P2095, "Undef"
    .lex "$pirop", $P2095
    find_lex $P2098, "$/"
    unless_null $P2098, vivify_649
    $P2098 = root_new ['parrot';'Hash']
  vivify_649:
    set $P2099, $P2098["args"]
    unless_null $P2099, vivify_650
    new $P2099, "Undef"
  vivify_650:
    if $P2099, if_2097
    get_hll_global $P2104, ["PAST"], "Op"
    find_lex $P2105, "$/"
    $P2106 = $P2104."new"($P2105 :named("node"))
    set $P2096, $P2106
    goto if_2097_end
  if_2097:
    find_lex $P2100, "$/"
    unless_null $P2100, vivify_651
    $P2100 = root_new ['parrot';'Hash']
  vivify_651:
    set $P2101, $P2100["args"]
    unless_null $P2101, vivify_652
    $P2101 = root_new ['parrot';'ResizablePMCArray']
  vivify_652:
    set $P2102, $P2101[0]
    unless_null $P2102, vivify_653
    new $P2102, "Undef"
  vivify_653:
    $P2103 = $P2102."ast"()
    set $P2096, $P2103
  if_2097_end:
    store_lex "$past", $P2096
    find_lex $P2107, "$/"
    unless_null $P2107, vivify_654
    $P2107 = root_new ['parrot';'Hash']
  vivify_654:
    set $P2108, $P2107["op"]
    unless_null $P2108, vivify_655
    new $P2108, "Undef"
  vivify_655:
    set $S2109, $P2108
    new $P2110, 'String'
    set $P2110, $S2109
    store_lex "$pirop", $P2110

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P2111 = box $S0
    
    store_lex "$pirop", $P2111
    find_lex $P2112, "$past"
    find_lex $P2113, "$pirop"
    $P2112."pirop"($P2113)
    find_lex $P2114, "$past"
    $P2114."pasttype"("pirop")
    find_lex $P2115, "$/"
    find_lex $P2116, "$past"
    $P2117 = $P2115."!make"($P2116)
    .return ($P2117)
  control_2091:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2118, exception, "payload"
    .return ($P2118)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "args"  :subid("112_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2122
.annotate 'line', 0
    new $P2121, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2121, control_2120
    push_eh $P2121
    .lex "self", self
    .lex "$/", param_2122
    find_lex $P2123, "$/"
    find_lex $P2124, "$/"
    unless_null $P2124, vivify_656
    $P2124 = root_new ['parrot';'Hash']
  vivify_656:
    set $P2125, $P2124["arglist"]
    unless_null $P2125, vivify_657
    new $P2125, "Undef"
  vivify_657:
    $P2126 = $P2125."ast"()
    $P2127 = $P2123."!make"($P2126)
    .return ($P2127)
  control_2120:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2128, exception, "payload"
    .return ($P2128)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("113_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2132
.annotate 'line', 0
    .const 'Sub' $P2143 = "114_1285886573.859" 
    capture_lex $P2143
    new $P2131, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2131, control_2130
    push_eh $P2131
    .lex "self", self
    .lex "$/", param_2132
    new $P2133, "Undef"
    .lex "$past", $P2133
    new $P2134, "Undef"
    .lex "$i", $P2134
    new $P2135, "Undef"
    .lex "$n", $P2135
    get_hll_global $P2136, ["PAST"], "Op"
    find_lex $P2137, "$/"
    $P2138 = $P2136."new"("call" :named("pasttype"), $P2137 :named("node"))
    store_lex "$past", $P2138
    find_lex $P2140, "$/"
    unless_null $P2140, vivify_658
    $P2140 = root_new ['parrot';'Hash']
  vivify_658:
    set $P2141, $P2140["EXPR"]
    unless_null $P2141, vivify_659
    new $P2141, "Undef"
  vivify_659:
    unless $P2141, if_2139_end
    .const 'Sub' $P2143 = "114_1285886573.859" 
    capture_lex $P2143
    $P2143()
  if_2139_end:
    new $P2175, "Integer"
    assign $P2175, 0
    store_lex "$i", $P2175
    find_lex $P2176, "$past"
    $P2177 = $P2176."list"()
    set $N2178, $P2177
    new $P2179, 'Float'
    set $P2179, $N2178
    store_lex "$n", $P2179
    new $P2227, 'ExceptionHandler'
    set_addr $P2227, loop2226_handler
    $P2227."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2227
  loop2226_test:
    find_lex $P2180, "$i"
    set $N2181, $P2180
    find_lex $P2182, "$n"
    set $N2183, $P2182
    islt $I2184, $N2181, $N2183
    unless $I2184, loop2226_done
  loop2226_redo:
    find_lex $P2186, "$i"
    set $I2187, $P2186
    find_lex $P2188, "$past"
    unless_null $P2188, vivify_663
    $P2188 = root_new ['parrot';'ResizablePMCArray']
  vivify_663:
    set $P2189, $P2188[$I2187]
    unless_null $P2189, vivify_664
    new $P2189, "Undef"
  vivify_664:
    $S2190 = $P2189."name"()
    iseq $I2191, $S2190, "&prefix:<|>"
    unless $I2191, if_2185_end
    find_lex $P2192, "$i"
    set $I2193, $P2192
    find_lex $P2194, "$past"
    unless_null $P2194, vivify_665
    $P2194 = root_new ['parrot';'ResizablePMCArray']
  vivify_665:
    set $P2195, $P2194[$I2193]
    unless_null $P2195, vivify_666
    $P2195 = root_new ['parrot';'ResizablePMCArray']
  vivify_666:
    set $P2196, $P2195[0]
    unless_null $P2196, vivify_667
    new $P2196, "Undef"
  vivify_667:
    find_lex $P2197, "$i"
    set $I2198, $P2197
    find_lex $P2199, "$past"
    unless_null $P2199, vivify_668
    $P2199 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$past", $P2199
  vivify_668:
    set $P2199[$I2198], $P2196
    find_lex $P2200, "$i"
    set $I2201, $P2200
    find_lex $P2202, "$past"
    unless_null $P2202, vivify_669
    $P2202 = root_new ['parrot';'ResizablePMCArray']
  vivify_669:
    set $P2203, $P2202[$I2201]
    unless_null $P2203, vivify_670
    new $P2203, "Undef"
  vivify_670:
    $P2203."flat"(1)
    find_lex $P2207, "$i"
    set $I2208, $P2207
    find_lex $P2209, "$past"
    unless_null $P2209, vivify_671
    $P2209 = root_new ['parrot';'ResizablePMCArray']
  vivify_671:
    set $P2210, $P2209[$I2208]
    unless_null $P2210, vivify_672
    new $P2210, "Undef"
  vivify_672:
    get_hll_global $P2211, ["PAST"], "Val"
    $P2212 = $P2210."isa"($P2211)
    if $P2212, if_2206
    set $P2205, $P2212
    goto if_2206_end
  if_2206:
    find_lex $P2213, "$i"
    set $I2214, $P2213
    find_lex $P2215, "$past"
    unless_null $P2215, vivify_673
    $P2215 = root_new ['parrot';'ResizablePMCArray']
  vivify_673:
    set $P2216, $P2215[$I2214]
    unless_null $P2216, vivify_674
    new $P2216, "Undef"
  vivify_674:
    $S2217 = $P2216."name"()
    substr $S2218, $S2217, 0, 1
    iseq $I2219, $S2218, "%"
    new $P2205, 'Integer'
    set $P2205, $I2219
  if_2206_end:
    unless $P2205, if_2204_end
    find_lex $P2220, "$i"
    set $I2221, $P2220
    find_lex $P2222, "$past"
    unless_null $P2222, vivify_675
    $P2222 = root_new ['parrot';'ResizablePMCArray']
  vivify_675:
    set $P2223, $P2222[$I2221]
    unless_null $P2223, vivify_676
    new $P2223, "Undef"
  vivify_676:
    $P2223."named"(1)
  if_2204_end:
  if_2185_end:
    find_lex $P2224, "$i"
    clone $P2225, $P2224
    inc $P2224
  loop2226_next:
    goto loop2226_test
  loop2226_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2228, exception, 'type'
    eq $P2228, .CONTROL_LOOP_NEXT, loop2226_next
    eq $P2228, .CONTROL_LOOP_REDO, loop2226_redo
  loop2226_done:
    pop_eh 
    find_lex $P2229, "$/"
    find_lex $P2230, "$past"
    $P2231 = $P2229."!make"($P2230)
    .return ($P2231)
  control_2130:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2232, exception, "payload"
    .return ($P2232)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "_block2142"  :anon :subid("114_1285886573.859") :outer("113_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P2164 = "115_1285886573.859" 
    capture_lex $P2164
    new $P2144, "Undef"
    .lex "$expr", $P2144
    find_lex $P2145, "$/"
    unless_null $P2145, vivify_660
    $P2145 = root_new ['parrot';'Hash']
  vivify_660:
    set $P2146, $P2145["EXPR"]
    unless_null $P2146, vivify_661
    new $P2146, "Undef"
  vivify_661:
    $P2147 = $P2146."ast"()
    store_lex "$expr", $P2147
    find_lex $P2152, "$expr"
    $S2153 = $P2152."name"()
    iseq $I2154, $S2153, "&infix:<,>"
    if $I2154, if_2151
    new $P2150, 'Integer'
    set $P2150, $I2154
    goto if_2151_end
  if_2151:
    find_lex $P2155, "$expr"
    $P2156 = $P2155."named"()
    isfalse $I2157, $P2156
    new $P2150, 'Integer'
    set $P2150, $I2157
  if_2151_end:
    if $P2150, if_2149
    find_lex $P2172, "$past"
    find_lex $P2173, "$expr"
    $P2174 = $P2172."push"($P2173)
    set $P2148, $P2174
    goto if_2149_end
  if_2149:
    find_lex $P2159, "$expr"
    $P2160 = $P2159."list"()
    defined $I2161, $P2160
    unless $I2161, for_undef_662
    iter $P2158, $P2160
    new $P2170, 'ExceptionHandler'
    set_addr $P2170, loop2169_handler
    $P2170."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2170
  loop2169_test:
    unless $P2158, loop2169_done
    shift $P2162, $P2158
  loop2169_redo:
    .const 'Sub' $P2164 = "115_1285886573.859" 
    capture_lex $P2164
    $P2164($P2162)
  loop2169_next:
    goto loop2169_test
  loop2169_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2171, exception, 'type'
    eq $P2171, .CONTROL_LOOP_NEXT, loop2169_next
    eq $P2171, .CONTROL_LOOP_REDO, loop2169_redo
  loop2169_done:
    pop_eh 
  for_undef_662:
    set $P2148, $P2158
  if_2149_end:
    .return ($P2148)
.end


.namespace ["NQP";"Actions"]
.sub "_block2163"  :anon :subid("115_1285886573.859") :outer("114_1285886573.859")
    .param pmc param_2165
.annotate 'line', 0
    .lex "$_", param_2165
    find_lex $P2166, "$past"
    find_lex $P2167, "$_"
    $P2168 = $P2166."push"($P2167)
    .return ($P2168)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<value>"  :subid("116_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2236
.annotate 'line', 0
    new $P2235, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2235, control_2234
    push_eh $P2235
    .lex "self", self
    .lex "$/", param_2236
    find_lex $P2237, "$/"
    find_lex $P2238, "$/"
    unless_null $P2238, vivify_677
    $P2238 = root_new ['parrot';'Hash']
  vivify_677:
    set $P2239, $P2238["value"]
    unless_null $P2239, vivify_678
    new $P2239, "Undef"
  vivify_678:
    $P2240 = $P2239."ast"()
    $P2241 = $P2237."!make"($P2240)
    .return ($P2241)
  control_2234:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2242, exception, "payload"
    .return ($P2242)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<( )>"  :subid("117_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2246
.annotate 'line', 0
    new $P2245, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2245, control_2244
    push_eh $P2245
    .lex "self", self
    .lex "$/", param_2246
    find_lex $P2247, "$/"
    find_lex $P2250, "$/"
    unless_null $P2250, vivify_679
    $P2250 = root_new ['parrot';'Hash']
  vivify_679:
    set $P2251, $P2250["EXPR"]
    unless_null $P2251, vivify_680
    new $P2251, "Undef"
  vivify_680:
    if $P2251, if_2249
    get_hll_global $P2256, ["PAST"], "Op"
    find_lex $P2257, "$/"
    $P2258 = $P2256."new"("list" :named("pasttype"), $P2257 :named("node"))
    set $P2248, $P2258
    goto if_2249_end
  if_2249:
    find_lex $P2252, "$/"
    unless_null $P2252, vivify_681
    $P2252 = root_new ['parrot';'Hash']
  vivify_681:
    set $P2253, $P2252["EXPR"]
    unless_null $P2253, vivify_682
    $P2253 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    set $P2254, $P2253[0]
    unless_null $P2254, vivify_683
    new $P2254, "Undef"
  vivify_683:
    $P2255 = $P2254."ast"()
    set $P2248, $P2255
  if_2249_end:
    $P2259 = $P2247."!make"($P2248)
    .return ($P2259)
  control_2244:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2260, exception, "payload"
    .return ($P2260)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<[ ]>"  :subid("118_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2264
.annotate 'line', 0
    new $P2263, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2263, control_2262
    push_eh $P2263
    .lex "self", self
    .lex "$/", param_2264
    new $P2265, "Undef"
    .lex "$past", $P2265
    find_lex $P2266, "$past"
    find_lex $P2268, "$/"
    unless_null $P2268, vivify_684
    $P2268 = root_new ['parrot';'Hash']
  vivify_684:
    set $P2269, $P2268["EXPR"]
    unless_null $P2269, vivify_685
    new $P2269, "Undef"
  vivify_685:
    if $P2269, if_2267
    get_hll_global $P2281, ["PAST"], "Op"
    $P2282 = $P2281."new"("list" :named("pasttype"))
    store_lex "$past", $P2282
    goto if_2267_end
  if_2267:
    find_lex $P2270, "$/"
    unless_null $P2270, vivify_686
    $P2270 = root_new ['parrot';'Hash']
  vivify_686:
    set $P2271, $P2270["EXPR"]
    unless_null $P2271, vivify_687
    $P2271 = root_new ['parrot';'ResizablePMCArray']
  vivify_687:
    set $P2272, $P2271[0]
    unless_null $P2272, vivify_688
    new $P2272, "Undef"
  vivify_688:
    $P2273 = $P2272."ast"()
    store_lex "$past", $P2273
    find_lex $P2275, "$past"
    $S2276 = $P2275."name"()
    isne $I2277, $S2276, "&infix:<,>"
    unless $I2277, if_2274_end
    get_hll_global $P2278, ["PAST"], "Op"
    find_lex $P2279, "$past"
    $P2280 = $P2278."new"($P2279, "list" :named("pasttype"))
    store_lex "$past", $P2280
  if_2274_end:
  if_2267_end:
    find_lex $P2283, "$past"
    $P2283."name"("&circumfix:<[ ]>")
    find_lex $P2284, "$/"
    find_lex $P2285, "$past"
    $P2286 = $P2284."!make"($P2285)
    .return ($P2286)
  control_2262:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2287, exception, "payload"
    .return ($P2287)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<ang>"  :subid("119_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2291
.annotate 'line', 0
    new $P2290, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2290, control_2289
    push_eh $P2290
    .lex "self", self
    .lex "$/", param_2291
    find_lex $P2292, "$/"
    find_lex $P2293, "$/"
    unless_null $P2293, vivify_689
    $P2293 = root_new ['parrot';'Hash']
  vivify_689:
    set $P2294, $P2293["quote_EXPR"]
    unless_null $P2294, vivify_690
    new $P2294, "Undef"
  vivify_690:
    $P2295 = $P2294."ast"()
    $P2296 = $P2292."!make"($P2295)
    .return ($P2296)
  control_2289:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2297, exception, "payload"
    .return ($P2297)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("120_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2301
.annotate 'line', 0
    new $P2300, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2300, control_2299
    push_eh $P2300
    .lex "self", self
    .lex "$/", param_2301
    find_lex $P2302, "$/"
    find_lex $P2303, "$/"
    unless_null $P2303, vivify_691
    $P2303 = root_new ['parrot';'Hash']
  vivify_691:
    set $P2304, $P2303["quote_EXPR"]
    unless_null $P2304, vivify_692
    new $P2304, "Undef"
  vivify_692:
    $P2305 = $P2304."ast"()
    $P2306 = $P2302."!make"($P2305)
    .return ($P2306)
  control_2299:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2307, exception, "payload"
    .return ($P2307)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<{ }>"  :subid("121_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2311
.annotate 'line', 0
    new $P2310, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2310, control_2309
    push_eh $P2310
    .lex "self", self
    .lex "$/", param_2311
    new $P2312, "Undef"
    .lex "$past", $P2312
    find_lex $P2315, "$/"
    unless_null $P2315, vivify_693
    $P2315 = root_new ['parrot';'Hash']
  vivify_693:
    set $P2316, $P2315["pblock"]
    unless_null $P2316, vivify_694
    $P2316 = root_new ['parrot';'Hash']
  vivify_694:
    set $P2317, $P2316["blockoid"]
    unless_null $P2317, vivify_695
    $P2317 = root_new ['parrot';'Hash']
  vivify_695:
    set $P2318, $P2317["statementlist"]
    unless_null $P2318, vivify_696
    $P2318 = root_new ['parrot';'Hash']
  vivify_696:
    set $P2319, $P2318["statement"]
    unless_null $P2319, vivify_697
    new $P2319, "Undef"
  vivify_697:
    set $N2320, $P2319
    isgt $I2321, $N2320, 0.0
    if $I2321, if_2314
    $P2325 = "vivitype"("%")
    set $P2313, $P2325
    goto if_2314_end
  if_2314:
    find_lex $P2322, "$/"
    unless_null $P2322, vivify_698
    $P2322 = root_new ['parrot';'Hash']
  vivify_698:
    set $P2323, $P2322["pblock"]
    unless_null $P2323, vivify_699
    new $P2323, "Undef"
  vivify_699:
    $P2324 = $P2323."ast"()
    set $P2313, $P2324
  if_2314_end:
    store_lex "$past", $P2313
    new $P2326, "Integer"
    assign $P2326, 1
    find_lex $P2327, "$past"
    unless_null $P2327, vivify_700
    $P2327 = root_new ['parrot';'Hash']
    store_lex "$past", $P2327
  vivify_700:
    set $P2327["bareblock"], $P2326
    find_lex $P2328, "$/"
    find_lex $P2329, "$past"
    $P2330 = $P2328."!make"($P2329)
    .return ($P2330)
  control_2309:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2331, exception, "payload"
    .return ($P2331)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "circumfix:sym<sigil>"  :subid("122_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2335
.annotate 'line', 0
    new $P2334, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2334, control_2333
    push_eh $P2334
    .lex "self", self
    .lex "$/", param_2335
    new $P2336, "Undef"
    .lex "$name", $P2336
    find_lex $P2339, "$/"
    unless_null $P2339, vivify_701
    $P2339 = root_new ['parrot';'Hash']
  vivify_701:
    set $P2340, $P2339["sigil"]
    unless_null $P2340, vivify_702
    new $P2340, "Undef"
  vivify_702:
    set $S2341, $P2340
    iseq $I2342, $S2341, "@"
    if $I2342, if_2338
    find_lex $P2346, "$/"
    unless_null $P2346, vivify_703
    $P2346 = root_new ['parrot';'Hash']
  vivify_703:
    set $P2347, $P2346["sigil"]
    unless_null $P2347, vivify_704
    new $P2347, "Undef"
  vivify_704:
    set $S2348, $P2347
    iseq $I2349, $S2348, "%"
    if $I2349, if_2345
    new $P2351, "String"
    assign $P2351, "item"
    set $P2344, $P2351
    goto if_2345_end
  if_2345:
    new $P2350, "String"
    assign $P2350, "hash"
    set $P2344, $P2350
  if_2345_end:
    set $P2337, $P2344
    goto if_2338_end
  if_2338:
    new $P2343, "String"
    assign $P2343, "list"
    set $P2337, $P2343
  if_2338_end:
    store_lex "$name", $P2337
    find_lex $P2352, "$/"
    get_hll_global $P2353, ["PAST"], "Op"
    find_lex $P2354, "$name"
    find_lex $P2355, "$/"
    unless_null $P2355, vivify_705
    $P2355 = root_new ['parrot';'Hash']
  vivify_705:
    set $P2356, $P2355["semilist"]
    unless_null $P2356, vivify_706
    new $P2356, "Undef"
  vivify_706:
    $P2357 = $P2356."ast"()
    $P2358 = $P2353."new"($P2357, "callmethod" :named("pasttype"), $P2354 :named("name"))
    $P2359 = $P2352."!make"($P2358)
    .return ($P2359)
  control_2333:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2360, exception, "payload"
    .return ($P2360)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "semilist"  :subid("123_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2364
.annotate 'line', 0
    new $P2363, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2363, control_2362
    push_eh $P2363
    .lex "self", self
    .lex "$/", param_2364
    find_lex $P2365, "$/"
    find_lex $P2366, "$/"
    unless_null $P2366, vivify_707
    $P2366 = root_new ['parrot';'Hash']
  vivify_707:
    set $P2367, $P2366["statement"]
    unless_null $P2367, vivify_708
    new $P2367, "Undef"
  vivify_708:
    $P2368 = $P2367."ast"()
    $P2369 = $P2365."!make"($P2368)
    .return ($P2369)
  control_2362:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2370, exception, "payload"
    .return ($P2370)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<[ ]>"  :subid("124_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2374
.annotate 'line', 0
    new $P2373, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2373, control_2372
    push_eh $P2373
    .lex "self", self
    .lex "$/", param_2374
    find_lex $P2375, "$/"
    get_hll_global $P2376, ["PAST"], "Var"
    find_lex $P2377, "$/"
    unless_null $P2377, vivify_709
    $P2377 = root_new ['parrot';'Hash']
  vivify_709:
    set $P2378, $P2377["EXPR"]
    unless_null $P2378, vivify_710
    new $P2378, "Undef"
  vivify_710:
    $P2379 = $P2378."ast"()
    $P2380 = "vivitype"("@")
    $P2381 = $P2376."new"($P2379, "keyed_int" :named("scope"), "Undef" :named("viviself"), $P2380 :named("vivibase"))
    $P2382 = $P2375."!make"($P2381)
    .return ($P2382)
  control_2372:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2383, exception, "payload"
    .return ($P2383)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<{ }>"  :subid("125_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2387
.annotate 'line', 0
    new $P2386, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2386, control_2385
    push_eh $P2386
    .lex "self", self
    .lex "$/", param_2387
    find_lex $P2388, "$/"
    get_hll_global $P2389, ["PAST"], "Var"
    find_lex $P2390, "$/"
    unless_null $P2390, vivify_711
    $P2390 = root_new ['parrot';'Hash']
  vivify_711:
    set $P2391, $P2390["EXPR"]
    unless_null $P2391, vivify_712
    new $P2391, "Undef"
  vivify_712:
    $P2392 = $P2391."ast"()
    $P2393 = "vivitype"("%")
    $P2394 = $P2389."new"($P2392, "keyed" :named("scope"), "Undef" :named("viviself"), $P2393 :named("vivibase"))
    $P2395 = $P2388."!make"($P2394)
    .return ($P2395)
  control_2385:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2396, exception, "payload"
    .return ($P2396)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<ang>"  :subid("126_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2400
.annotate 'line', 0
    new $P2399, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2399, control_2398
    push_eh $P2399
    .lex "self", self
    .lex "$/", param_2400
    find_lex $P2401, "$/"
    get_hll_global $P2402, ["PAST"], "Var"
    find_lex $P2403, "$/"
    unless_null $P2403, vivify_713
    $P2403 = root_new ['parrot';'Hash']
  vivify_713:
    set $P2404, $P2403["quote_EXPR"]
    unless_null $P2404, vivify_714
    new $P2404, "Undef"
  vivify_714:
    $P2405 = $P2404."ast"()
    $P2406 = "vivitype"("%")
    $P2407 = $P2402."new"($P2405, "keyed" :named("scope"), "Undef" :named("viviself"), $P2406 :named("vivibase"))
    $P2408 = $P2401."!make"($P2407)
    .return ($P2408)
  control_2398:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2409, exception, "payload"
    .return ($P2409)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postcircumfix:sym<( )>"  :subid("127_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2413
.annotate 'line', 0
    new $P2412, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2412, control_2411
    push_eh $P2412
    .lex "self", self
    .lex "$/", param_2413
    find_lex $P2414, "$/"
    find_lex $P2415, "$/"
    unless_null $P2415, vivify_715
    $P2415 = root_new ['parrot';'Hash']
  vivify_715:
    set $P2416, $P2415["arglist"]
    unless_null $P2416, vivify_716
    new $P2416, "Undef"
  vivify_716:
    $P2417 = $P2416."ast"()
    $P2418 = $P2414."!make"($P2417)
    .return ($P2418)
  control_2411:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2419, exception, "payload"
    .return ($P2419)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "value"  :subid("128_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2423
.annotate 'line', 0
    new $P2422, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2422, control_2421
    push_eh $P2422
    .lex "self", self
    .lex "$/", param_2423
    find_lex $P2424, "$/"
    find_lex $P2427, "$/"
    unless_null $P2427, vivify_717
    $P2427 = root_new ['parrot';'Hash']
  vivify_717:
    set $P2428, $P2427["quote"]
    unless_null $P2428, vivify_718
    new $P2428, "Undef"
  vivify_718:
    if $P2428, if_2426
    find_lex $P2432, "$/"
    unless_null $P2432, vivify_719
    $P2432 = root_new ['parrot';'Hash']
  vivify_719:
    set $P2433, $P2432["number"]
    unless_null $P2433, vivify_720
    new $P2433, "Undef"
  vivify_720:
    $P2434 = $P2433."ast"()
    set $P2425, $P2434
    goto if_2426_end
  if_2426:
    find_lex $P2429, "$/"
    unless_null $P2429, vivify_721
    $P2429 = root_new ['parrot';'Hash']
  vivify_721:
    set $P2430, $P2429["quote"]
    unless_null $P2430, vivify_722
    new $P2430, "Undef"
  vivify_722:
    $P2431 = $P2430."ast"()
    set $P2425, $P2431
  if_2426_end:
    $P2435 = $P2424."!make"($P2425)
    .return ($P2435)
  control_2421:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2436, exception, "payload"
    .return ($P2436)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "number"  :subid("129_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2440
.annotate 'line', 0
    new $P2439, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2439, control_2438
    push_eh $P2439
    .lex "self", self
    .lex "$/", param_2440
    new $P2441, "Undef"
    .lex "$value", $P2441
    find_lex $P2444, "$/"
    unless_null $P2444, vivify_723
    $P2444 = root_new ['parrot';'Hash']
  vivify_723:
    set $P2445, $P2444["dec_number"]
    unless_null $P2445, vivify_724
    new $P2445, "Undef"
  vivify_724:
    if $P2445, if_2443
    find_lex $P2449, "$/"
    unless_null $P2449, vivify_725
    $P2449 = root_new ['parrot';'Hash']
  vivify_725:
    set $P2450, $P2449["integer"]
    unless_null $P2450, vivify_726
    new $P2450, "Undef"
  vivify_726:
    $P2451 = $P2450."ast"()
    set $P2442, $P2451
    goto if_2443_end
  if_2443:
    find_lex $P2446, "$/"
    unless_null $P2446, vivify_727
    $P2446 = root_new ['parrot';'Hash']
  vivify_727:
    set $P2447, $P2446["dec_number"]
    unless_null $P2447, vivify_728
    new $P2447, "Undef"
  vivify_728:
    $P2448 = $P2447."ast"()
    set $P2442, $P2448
  if_2443_end:
    store_lex "$value", $P2442
    find_lex $P2453, "$/"
    unless_null $P2453, vivify_729
    $P2453 = root_new ['parrot';'Hash']
  vivify_729:
    set $P2454, $P2453["sign"]
    unless_null $P2454, vivify_730
    new $P2454, "Undef"
  vivify_730:
    set $S2455, $P2454
    iseq $I2456, $S2455, "-"
    unless $I2456, if_2452_end
    find_lex $P2457, "$value"
    neg $P2458, $P2457
    store_lex "$value", $P2458
  if_2452_end:
    find_lex $P2459, "$/"
    get_hll_global $P2460, ["PAST"], "Val"
    find_lex $P2461, "$value"
    $P2462 = $P2460."new"($P2461 :named("value"))
    $P2463 = $P2459."!make"($P2462)
    .return ($P2463)
  control_2438:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2464, exception, "payload"
    .return ($P2464)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<apos>"  :subid("130_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2468
.annotate 'line', 0
    new $P2467, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2467, control_2466
    push_eh $P2467
    .lex "self", self
    .lex "$/", param_2468
    find_lex $P2469, "$/"
    find_lex $P2470, "$/"
    unless_null $P2470, vivify_731
    $P2470 = root_new ['parrot';'Hash']
  vivify_731:
    set $P2471, $P2470["quote_EXPR"]
    unless_null $P2471, vivify_732
    new $P2471, "Undef"
  vivify_732:
    $P2472 = $P2471."ast"()
    $P2473 = $P2469."!make"($P2472)
    .return ($P2473)
  control_2466:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2474, exception, "payload"
    .return ($P2474)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<dblq>"  :subid("131_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2478
.annotate 'line', 0
    new $P2477, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2477, control_2476
    push_eh $P2477
    .lex "self", self
    .lex "$/", param_2478
    find_lex $P2479, "$/"
    find_lex $P2480, "$/"
    unless_null $P2480, vivify_733
    $P2480 = root_new ['parrot';'Hash']
  vivify_733:
    set $P2481, $P2480["quote_EXPR"]
    unless_null $P2481, vivify_734
    new $P2481, "Undef"
  vivify_734:
    $P2482 = $P2481."ast"()
    $P2483 = $P2479."!make"($P2482)
    .return ($P2483)
  control_2476:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2484, exception, "payload"
    .return ($P2484)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<qq>"  :subid("132_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2488
.annotate 'line', 0
    new $P2487, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2487, control_2486
    push_eh $P2487
    .lex "self", self
    .lex "$/", param_2488
    find_lex $P2489, "$/"
    find_lex $P2490, "$/"
    unless_null $P2490, vivify_735
    $P2490 = root_new ['parrot';'Hash']
  vivify_735:
    set $P2491, $P2490["quote_EXPR"]
    unless_null $P2491, vivify_736
    new $P2491, "Undef"
  vivify_736:
    $P2492 = $P2491."ast"()
    $P2493 = $P2489."!make"($P2492)
    .return ($P2493)
  control_2486:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2494, exception, "payload"
    .return ($P2494)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<q>"  :subid("133_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2498
.annotate 'line', 0
    new $P2497, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2497, control_2496
    push_eh $P2497
    .lex "self", self
    .lex "$/", param_2498
    find_lex $P2499, "$/"
    find_lex $P2500, "$/"
    unless_null $P2500, vivify_737
    $P2500 = root_new ['parrot';'Hash']
  vivify_737:
    set $P2501, $P2500["quote_EXPR"]
    unless_null $P2501, vivify_738
    new $P2501, "Undef"
  vivify_738:
    $P2502 = $P2501."ast"()
    $P2503 = $P2499."!make"($P2502)
    .return ($P2503)
  control_2496:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2504, exception, "payload"
    .return ($P2504)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<Q>"  :subid("134_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2508
.annotate 'line', 0
    new $P2507, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2507, control_2506
    push_eh $P2507
    .lex "self", self
    .lex "$/", param_2508
    find_lex $P2509, "$/"
    find_lex $P2510, "$/"
    unless_null $P2510, vivify_739
    $P2510 = root_new ['parrot';'Hash']
  vivify_739:
    set $P2511, $P2510["quote_EXPR"]
    unless_null $P2511, vivify_740
    new $P2511, "Undef"
  vivify_740:
    $P2512 = $P2511."ast"()
    $P2513 = $P2509."!make"($P2512)
    .return ($P2513)
  control_2506:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2514, exception, "payload"
    .return ($P2514)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym<Q:PIR>"  :subid("135_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2518
.annotate 'line', 0
    new $P2517, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2517, control_2516
    push_eh $P2517
    .lex "self", self
    .lex "$/", param_2518
    find_lex $P2519, "$/"
    get_hll_global $P2520, ["PAST"], "Op"
    find_lex $P2521, "$/"
    unless_null $P2521, vivify_741
    $P2521 = root_new ['parrot';'Hash']
  vivify_741:
    set $P2522, $P2521["quote_EXPR"]
    unless_null $P2522, vivify_742
    new $P2522, "Undef"
  vivify_742:
    $P2523 = $P2522."ast"()
    $P2524 = $P2523."value"()
    find_lex $P2525, "$/"
    $P2526 = $P2520."new"($P2524 :named("inline"), "inline" :named("pasttype"), $P2525 :named("node"))
    $P2527 = $P2519."!make"($P2526)
    .return ($P2527)
  control_2516:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2528, exception, "payload"
    .return ($P2528)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote:sym</ />"  :subid("136_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2532
    .param pmc param_2533 :optional
    .param int has_param_2533 :opt_flag
.annotate 'line', 0
    new $P2531, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2531, control_2530
    push_eh $P2531
    .lex "self", self
    .lex "$/", param_2532
    if has_param_2533, optparam_743
    new $P2534, "Undef"
    set param_2533, $P2534
  optparam_743:
    .lex "$key", param_2533
    new $P2535, "Undef"
    .lex "$regex", $P2535
    new $P2536, "Undef"
    .lex "$past", $P2536
    find_lex $P2538, "$key"
    set $S2539, $P2538
    iseq $I2540, $S2539, "open"
    unless $I2540, if_2537_end

            null $P0
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
    get_global $P2541, "@BLOCK"
    unless_null $P2541, vivify_744
    $P2541 = root_new ['parrot';'ResizablePMCArray']
  vivify_744:
    set $P2542, $P2541[0]
    unless_null $P2542, vivify_745
    new $P2542, "Undef"
  vivify_745:
    $P2542."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
    get_global $P2543, "@BLOCK"
    unless_null $P2543, vivify_746
    $P2543 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $P2544, $P2543[0]
    unless_null $P2544, vivify_747
    new $P2544, "Undef"
  vivify_747:
    $P2544."symbol"("$/", "lexical" :named("scope"))
    new $P2545, "Exception"
    set $P2545['type'], .CONTROL_RETURN
    new $P2546, "Integer"
    assign $P2546, 0
    setattribute $P2545, 'payload', $P2546
    throw $P2545
  if_2537_end:
    get_hll_global $P2547, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P2548, "$/"
    unless_null $P2548, vivify_748
    $P2548 = root_new ['parrot';'Hash']
  vivify_748:
    set $P2549, $P2548["p6regex"]
    unless_null $P2549, vivify_749
    new $P2549, "Undef"
  vivify_749:
    $P2550 = $P2549."ast"()
    get_global $P2551, "@BLOCK"
    $P2552 = $P2551."shift"()
    $P2553 = $P2547($P2550, $P2552)
    store_lex "$regex", $P2553
    get_hll_global $P2554, ["PAST"], "Op"
    get_hll_global $P2555, ["PAST"], "Var"
    new $P2556, "ResizablePMCArray"
    push $P2556, "Regex"
    $P2557 = $P2555."new"("Regex" :named("name"), $P2556 :named("namespace"), "package" :named("scope"))
    find_lex $P2558, "$regex"
    $P2559 = $P2554."new"($P2557, $P2558, "callmethod" :named("pasttype"), "new" :named("name"))
    store_lex "$past", $P2559
    find_lex $P2560, "$regex"
    find_lex $P2561, "$past"
    unless_null $P2561, vivify_750
    $P2561 = root_new ['parrot';'Hash']
    store_lex "$past", $P2561
  vivify_750:
    set $P2561["sink"], $P2560
    find_lex $P2562, "$/"
    find_lex $P2563, "$past"
    $P2564 = $P2562."!make"($P2563)
    .return ($P2564)
  control_2530:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2565, exception, "payload"
    .return ($P2565)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<$>"  :subid("137_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2569
.annotate 'line', 0
    new $P2568, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2568, control_2567
    push_eh $P2568
    .lex "self", self
    .lex "$/", param_2569
    find_lex $P2570, "$/"
    find_lex $P2571, "$/"
    unless_null $P2571, vivify_751
    $P2571 = root_new ['parrot';'Hash']
  vivify_751:
    set $P2572, $P2571["variable"]
    unless_null $P2572, vivify_752
    new $P2572, "Undef"
  vivify_752:
    $P2573 = $P2572."ast"()
    $P2574 = $P2570."!make"($P2573)
    .return ($P2574)
  control_2567:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2575, exception, "payload"
    .return ($P2575)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<{ }>"  :subid("138_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2579
.annotate 'line', 0
    new $P2578, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2578, control_2577
    push_eh $P2578
    .lex "self", self
    .lex "$/", param_2579
    find_lex $P2580, "$/"
    get_hll_global $P2581, ["PAST"], "Op"
    find_lex $P2582, "$/"
    unless_null $P2582, vivify_753
    $P2582 = root_new ['parrot';'Hash']
  vivify_753:
    set $P2583, $P2582["block"]
    unless_null $P2583, vivify_754
    new $P2583, "Undef"
  vivify_754:
    $P2584 = $P2583."ast"()
    $P2585 = "block_immediate"($P2584)
    find_lex $P2586, "$/"
    $P2587 = $P2581."new"($P2585, "set S*" :named("pirop"), $P2586 :named("node"))
    $P2588 = $P2580."!make"($P2587)
    .return ($P2588)
  control_2577:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2589, exception, "payload"
    .return ($P2589)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<esc>"  :subid("139_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2593
.annotate 'line', 0
    new $P2592, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2592, control_2591
    push_eh $P2592
    .lex "self", self
    .lex "$/", param_2593
    find_lex $P2594, "$/"
    $P2595 = $P2594."!make"("\e")
    .return ($P2595)
  control_2591:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2596, exception, "payload"
    .return ($P2596)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<.>"  :subid("140_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2600
.annotate 'line', 0
    new $P2599, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2599, control_2598
    push_eh $P2599
    .lex "self", self
    .lex "$/", param_2600
    find_lex $P2601, "$/"
    find_lex $P2602, "$/"
    unless_null $P2602, vivify_755
    $P2602 = root_new ['parrot';'Hash']
  vivify_755:
    set $P2603, $P2602["dotty"]
    unless_null $P2603, vivify_756
    new $P2603, "Undef"
  vivify_756:
    $P2604 = $P2603."ast"()
    $P2605 = $P2601."!make"($P2604)
    .return ($P2605)
  control_2598:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2606, exception, "payload"
    .return ($P2606)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<++>"  :subid("141_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2610
.annotate 'line', 0
    new $P2609, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2609, control_2608
    push_eh $P2609
    .lex "self", self
    .lex "$/", param_2610
    find_lex $P2611, "$/"
    get_hll_global $P2612, ["PAST"], "Op"
    new $P2613, "ResizablePMCArray"
    push $P2613, "    clone %r, %0"
    push $P2613, "    inc %0"
    $P2614 = $P2612."new"("postfix:<++>" :named("name"), $P2613 :named("inline"), "inline" :named("pasttype"))
    $P2615 = $P2611."!make"($P2614)
    .return ($P2615)
  control_2608:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2616, exception, "payload"
    .return ($P2616)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "postfix:sym<-->"  :subid("142_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2620
.annotate 'line', 0
    new $P2619, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2619, control_2618
    push_eh $P2619
    .lex "self", self
    .lex "$/", param_2620
    find_lex $P2621, "$/"
    get_hll_global $P2622, ["PAST"], "Op"
    new $P2623, "ResizablePMCArray"
    push $P2623, "    clone %r, %0"
    push $P2623, "    dec %0"
    $P2624 = $P2622."new"("postfix:<-->" :named("name"), $P2623 :named("inline"), "inline" :named("pasttype"))
    $P2625 = $P2621."!make"($P2624)
    .return ($P2625)
  control_2618:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2626, exception, "payload"
    .return ($P2626)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "prefix:sym<make>"  :subid("143_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2630
.annotate 'line', 0
    new $P2629, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2629, control_2628
    push_eh $P2629
    .lex "self", self
    .lex "$/", param_2630
    find_lex $P2631, "$/"
    get_hll_global $P2632, ["PAST"], "Op"
    get_hll_global $P2633, ["PAST"], "Var"
    $P2634 = $P2633."new"("$/" :named("name"), "contextual" :named("scope"))
    find_lex $P2635, "$/"
    $P2636 = $P2632."new"($P2634, "callmethod" :named("pasttype"), "!make" :named("name"), $P2635 :named("node"))
    $P2637 = $P2631."!make"($P2636)
    .return ($P2637)
  control_2628:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2638, exception, "payload"
    .return ($P2638)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<next>"  :subid("144_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2643
.annotate 'line', 0
    new $P2642, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2642, control_2641
    push_eh $P2642
    .lex "self", self
    .lex "$/", param_2643
    find_lex $P2644, "$/"
    $P2645 = "control"($P2644, "CONTROL_LOOP_NEXT")
    .return ($P2645)
  control_2641:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2646, exception, "payload"
    .return ($P2646)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<last>"  :subid("145_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2650
.annotate 'line', 0
    new $P2649, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2649, control_2648
    push_eh $P2649
    .lex "self", self
    .lex "$/", param_2650
    find_lex $P2651, "$/"
    $P2652 = "control"($P2651, "CONTROL_LOOP_LAST")
    .return ($P2652)
  control_2648:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2653, exception, "payload"
    .return ($P2653)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "term:sym<redo>"  :subid("146_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2657
.annotate 'line', 0
    new $P2656, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2656, control_2655
    push_eh $P2656
    .lex "self", self
    .lex "$/", param_2657
    find_lex $P2658, "$/"
    $P2659 = "control"($P2658, "CONTROL_LOOP_REDO")
    .return ($P2659)
  control_2655:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2660, exception, "payload"
    .return ($P2660)
.end


.namespace ["NQP";"Actions"]
.include "except_types.pasm"
.sub "infix:sym<~~>"  :subid("147_1285886573.859") :method :outer("11_1285886573.859")
    .param pmc param_2664
.annotate 'line', 0
    new $P2663, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2663, control_2662
    push_eh $P2663
    .lex "self", self
    .lex "$/", param_2664
    find_lex $P2665, "$/"
    get_hll_global $P2666, ["PAST"], "Op"
    find_lex $P2667, "$/"
    $P2668 = $P2666."new"("callmethod" :named("pasttype"), "ACCEPTS" :named("name"), $P2667 :named("node"))
    $P2669 = $P2665."!make"($P2668)
    .return ($P2669)
  control_2662:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2670, exception, "payload"
    .return ($P2670)
.end


.namespace ["NQP";"RegexActions"]
.sub "_block2671"  :subid("148_1285886573.859") :outer("11_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P2757 = "155_1285886573.859" 
    capture_lex $P2757
    .const 'Sub' $P2744 = "154_1285886573.859" 
    capture_lex $P2744
    .const 'Sub' $P2727 = "153_1285886573.859" 
    capture_lex $P2727
    .const 'Sub' $P2714 = "152_1285886573.859" 
    capture_lex $P2714
    .const 'Sub' $P2701 = "151_1285886573.859" 
    capture_lex $P2701
    .const 'Sub' $P2688 = "150_1285886573.859" 
    capture_lex $P2688
    .const 'Sub' $P2673 = "149_1285886573.859" 
    capture_lex $P2673
    .const 'Sub' $P2757 = "155_1285886573.859" 
    newclosure $P2782, $P2757
    .return ($P2782)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<:my>"  :subid("149_1285886573.859") :method :outer("148_1285886573.859")
    .param pmc param_2676
.annotate 'line', 0
    new $P2675, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2675, control_2674
    push_eh $P2675
    .lex "self", self
    .lex "$/", param_2676
    new $P2677, "Undef"
    .lex "$past", $P2677
    find_lex $P2678, "$/"
    unless_null $P2678, vivify_757
    $P2678 = root_new ['parrot';'Hash']
  vivify_757:
    set $P2679, $P2678["statement"]
    unless_null $P2679, vivify_758
    new $P2679, "Undef"
  vivify_758:
    $P2680 = $P2679."ast"()
    store_lex "$past", $P2680
    find_lex $P2681, "$/"
    get_hll_global $P2682, ["PAST"], "Regex"
    find_lex $P2683, "$past"
    find_lex $P2684, "$/"
    $P2685 = $P2682."new"($P2683, "pastnode" :named("pasttype"), "declarative" :named("subtype"), $P2684 :named("node"))
    $P2686 = $P2681."!make"($P2685)
    .return ($P2686)
  control_2674:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2687, exception, "payload"
    .return ($P2687)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<{ }>"  :subid("150_1285886573.859") :method :outer("148_1285886573.859")
    .param pmc param_2691
.annotate 'line', 0
    new $P2690, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2690, control_2689
    push_eh $P2690
    .lex "self", self
    .lex "$/", param_2691
    find_lex $P2692, "$/"
    get_hll_global $P2693, ["PAST"], "Regex"
    find_lex $P2694, "$/"
    unless_null $P2694, vivify_759
    $P2694 = root_new ['parrot';'Hash']
  vivify_759:
    set $P2695, $P2694["codeblock"]
    unless_null $P2695, vivify_760
    new $P2695, "Undef"
  vivify_760:
    $P2696 = $P2695."ast"()
    find_lex $P2697, "$/"
    $P2698 = $P2693."new"($P2696, "pastnode" :named("pasttype"), $P2697 :named("node"))
    $P2699 = $P2692."!make"($P2698)
    .return ($P2699)
  control_2689:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2700, exception, "payload"
    .return ($P2700)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "metachar:sym<nqpvar>"  :subid("151_1285886573.859") :method :outer("148_1285886573.859")
    .param pmc param_2704
.annotate 'line', 0
    new $P2703, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2703, control_2702
    push_eh $P2703
    .lex "self", self
    .lex "$/", param_2704
    find_lex $P2705, "$/"
    get_hll_global $P2706, ["PAST"], "Regex"
    find_lex $P2707, "$/"
    unless_null $P2707, vivify_761
    $P2707 = root_new ['parrot';'Hash']
  vivify_761:
    set $P2708, $P2707["var"]
    unless_null $P2708, vivify_762
    new $P2708, "Undef"
  vivify_762:
    $P2709 = $P2708."ast"()
    find_lex $P2710, "$/"
    $P2711 = $P2706."new"("!INTERPOLATE", $P2709, "subrule" :named("pasttype"), "method" :named("subtype"), $P2710 :named("node"))
    $P2712 = $P2705."!make"($P2711)
    .return ($P2712)
  control_2702:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2713, exception, "payload"
    .return ($P2713)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<{ }>"  :subid("152_1285886573.859") :method :outer("148_1285886573.859")
    .param pmc param_2717
.annotate 'line', 0
    new $P2716, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2716, control_2715
    push_eh $P2716
    .lex "self", self
    .lex "$/", param_2717
    find_lex $P2718, "$/"
    get_hll_global $P2719, ["PAST"], "Regex"
    find_lex $P2720, "$/"
    unless_null $P2720, vivify_763
    $P2720 = root_new ['parrot';'Hash']
  vivify_763:
    set $P2721, $P2720["codeblock"]
    unless_null $P2721, vivify_764
    new $P2721, "Undef"
  vivify_764:
    $P2722 = $P2721."ast"()
    find_lex $P2723, "$/"
    $P2724 = $P2719."new"("!INTERPOLATE_REGEX", $P2722, "subrule" :named("pasttype"), "method" :named("subtype"), $P2723 :named("node"))
    $P2725 = $P2718."!make"($P2724)
    .return ($P2725)
  control_2715:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2726, exception, "payload"
    .return ($P2726)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<?{ }>"  :subid("153_1285886573.859") :method :outer("148_1285886573.859")
    .param pmc param_2730
.annotate 'line', 0
    new $P2729, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2729, control_2728
    push_eh $P2729
    .lex "self", self
    .lex "$/", param_2730
    find_lex $P2731, "$/"
    get_hll_global $P2732, ["PAST"], "Regex"
    find_lex $P2733, "$/"
    unless_null $P2733, vivify_765
    $P2733 = root_new ['parrot';'Hash']
  vivify_765:
    set $P2734, $P2733["codeblock"]
    unless_null $P2734, vivify_766
    new $P2734, "Undef"
  vivify_766:
    $P2735 = $P2734."ast"()
    find_lex $P2736, "$/"
    unless_null $P2736, vivify_767
    $P2736 = root_new ['parrot';'Hash']
  vivify_767:
    set $P2737, $P2736["zw"]
    unless_null $P2737, vivify_768
    new $P2737, "Undef"
  vivify_768:
    set $S2738, $P2737
    iseq $I2739, $S2738, "!"
    find_lex $P2740, "$/"
    $P2741 = $P2732."new"($P2735, "zerowidth" :named("subtype"), $I2739 :named("negate"), "pastnode" :named("pasttype"), $P2740 :named("node"))
    $P2742 = $P2731."!make"($P2741)
    .return ($P2742)
  control_2728:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2743, exception, "payload"
    .return ($P2743)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "assertion:sym<var>"  :subid("154_1285886573.859") :method :outer("148_1285886573.859")
    .param pmc param_2747
.annotate 'line', 0
    new $P2746, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2746, control_2745
    push_eh $P2746
    .lex "self", self
    .lex "$/", param_2747
    find_lex $P2748, "$/"
    get_hll_global $P2749, ["PAST"], "Regex"
    find_lex $P2750, "$/"
    unless_null $P2750, vivify_769
    $P2750 = root_new ['parrot';'Hash']
  vivify_769:
    set $P2751, $P2750["var"]
    unless_null $P2751, vivify_770
    new $P2751, "Undef"
  vivify_770:
    $P2752 = $P2751."ast"()
    find_lex $P2753, "$/"
    $P2754 = $P2749."new"("!INTERPOLATE_REGEX", $P2752, "subrule" :named("pasttype"), "method" :named("subtype"), $P2753 :named("node"))
    $P2755 = $P2748."!make"($P2754)
    .return ($P2755)
  control_2745:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2756, exception, "payload"
    .return ($P2756)
.end


.namespace ["NQP";"RegexActions"]
.include "except_types.pasm"
.sub "codeblock"  :subid("155_1285886573.859") :method :outer("148_1285886573.859")
    .param pmc param_2760
.annotate 'line', 0
    new $P2759, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P2759, control_2758
    push_eh $P2759
    .lex "self", self
    .lex "$/", param_2760
    new $P2761, "Undef"
    .lex "$block", $P2761
    new $P2762, "Undef"
    .lex "$past", $P2762
    find_lex $P2763, "$/"
    unless_null $P2763, vivify_771
    $P2763 = root_new ['parrot';'Hash']
  vivify_771:
    set $P2764, $P2763["block"]
    unless_null $P2764, vivify_772
    new $P2764, "Undef"
  vivify_772:
    $P2765 = $P2764."ast"()
    store_lex "$block", $P2765
    find_lex $P2766, "$block"
    $P2766."blocktype"("immediate")
    get_hll_global $P2767, ["PAST"], "Stmts"
    get_hll_global $P2768, ["PAST"], "Op"
    get_hll_global $P2769, ["PAST"], "Var"
    $P2770 = $P2769."new"("$/" :named("name"))
    get_hll_global $P2771, ["PAST"], "Op"
    get_hll_global $P2772, ["PAST"], "Var"
    $P2773 = $P2772."new"(unicode:"$\x{a2}" :named("name"))
    $P2774 = $P2771."new"($P2773, "MATCH" :named("name"), "callmethod" :named("pasttype"))
    $P2775 = $P2768."new"($P2770, $P2774, "bind" :named("pasttype"))
    find_lex $P2776, "$block"
    $P2777 = $P2767."new"($P2775, $P2776)
    store_lex "$past", $P2777
    find_lex $P2778, "$/"
    find_lex $P2779, "$past"
    $P2780 = $P2778."!make"($P2779)
    .return ($P2780)
  control_2758:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2781, exception, "payload"
    .return ($P2781)
.end


.namespace ["NQP";"Actions"]
.sub "_block2784" :load :anon :subid("156_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P2786 = "11_1285886573.859" 
    $P2787 = $P2786()
    .return ($P2787)
.end


.namespace []
.sub "_block2794" :load :anon :subid("158_1285886573.859")
.annotate 'line', 0
    .const 'Sub' $P2796 = "10_1285886573.859" 
    $P2797 = $P2796()
    .return ($P2797)
.end

### .include 'src/cheats/nqp-builtins.pir'
.namespace []

.sub 'print'
    .param pmc list            :slurpy
    .local pmc list_it
    list_it = iter list
  list_loop:
    unless list_it goto list_done
    $P0 = shift list_it
    print $P0
    goto list_loop
  list_done:
    .return (1)
.end

.sub 'say'
    .param pmc list            :slurpy
    .tailcall 'print'(list :flat, "\n")
.end

.sub 'ok'
    .param pmc    condition
    .param string description :optional
    .param int    has_desc    :opt_flag
    if condition goto it_was_ok
        print "not "
  it_was_ok:
    print "ok "
    $P0 = get_global "$test_counter"
    $P0 += 1
    print $P0
    unless has_desc goto no_description
        print " # "
        print description
  no_description:
    print "\n"
    .return (1)
.end

.sub 'plan'
    .param int quantity
    print "1.."
    print quantity
    print "\n"
.end

.sub '' :anon :init :load
    $P0 = box 0
    set_global '$test_counter', $P0
.end



.namespace ['NQP';'Compiler']

.sub '' :anon :load :init
    .local pmc p6meta, nqpproto
    p6meta = get_hll_global 'P6metaclass'
    nqpproto = p6meta.'new_class'('NQP::Compiler', 'parent'=>'HLL::Compiler')
    nqpproto.'language'('NQP-rx')
    $P0 = get_hll_global ['NQP'], 'Grammar'
    nqpproto.'parsegrammar'($P0)
    $P0 = get_hll_global ['NQP'], 'Actions'
    nqpproto.'parseactions'($P0)
    $P0 = getattribute nqpproto, '@cmdoptions'
    push $P0, 'parsetrace'
.end

.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'NQP-rx'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
