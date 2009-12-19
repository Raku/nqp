# Copyright (C) 2009, The Perl Foundation.

=head1 NAME

NQP::Compiler - NQP compiler

=head1 DESCRIPTION

=cut

.sub '' :anon :load :init
    load_bytecode 'P6Regex.pbc'
.end

### .include 'gen/nqp-grammar.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1261201519.6115")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P1293 = $P14()
.annotate "line", 1
    .return ($P1293)
.end


.namespace []
.sub "" :load :init :subid("post331") :outer("10_1261201519.6115")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1261201519.6115" 
    .local pmc block
    set block, $P12
    $P1294 = get_root_global ["parrot"], "P6metaclass"
    $P1294."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1261201519.6115") :outer("10_1261201519.6115")
.annotate "line", 4
    get_hll_global $P1237, ["NQP";"Regex"], "_block1236" 
    capture_lex $P1237
    .const 'Sub' $P1222 = "317_1261201519.6115" 
    capture_lex $P1222
    .const 'Sub' $P1216 = "315_1261201519.6115" 
    capture_lex $P1216
    .const 'Sub' $P1210 = "313_1261201519.6115" 
    capture_lex $P1210
    .const 'Sub' $P1203 = "311_1261201519.6115" 
    capture_lex $P1203
    .const 'Sub' $P1196 = "309_1261201519.6115" 
    capture_lex $P1196
    .const 'Sub' $P1189 = "307_1261201519.6115" 
    capture_lex $P1189
    .const 'Sub' $P1182 = "305_1261201519.6115" 
    capture_lex $P1182
    .const 'Sub' $P1176 = "303_1261201519.6115" 
    capture_lex $P1176
    .const 'Sub' $P1169 = "301_1261201519.6115" 
    capture_lex $P1169
    .const 'Sub' $P1162 = "299_1261201519.6115" 
    capture_lex $P1162
    .const 'Sub' $P1155 = "297_1261201519.6115" 
    capture_lex $P1155
    .const 'Sub' $P1148 = "295_1261201519.6115" 
    capture_lex $P1148
    .const 'Sub' $P1141 = "293_1261201519.6115" 
    capture_lex $P1141
    .const 'Sub' $P1134 = "291_1261201519.6115" 
    capture_lex $P1134
    .const 'Sub' $P1127 = "289_1261201519.6115" 
    capture_lex $P1127
    .const 'Sub' $P1120 = "287_1261201519.6115" 
    capture_lex $P1120
    .const 'Sub' $P1113 = "285_1261201519.6115" 
    capture_lex $P1113
    .const 'Sub' $P1106 = "283_1261201519.6115" 
    capture_lex $P1106
    .const 'Sub' $P1099 = "281_1261201519.6115" 
    capture_lex $P1099
    .const 'Sub' $P1092 = "279_1261201519.6115" 
    capture_lex $P1092
    .const 'Sub' $P1085 = "277_1261201519.6115" 
    capture_lex $P1085
    .const 'Sub' $P1078 = "275_1261201519.6115" 
    capture_lex $P1078
    .const 'Sub' $P1071 = "273_1261201519.6115" 
    capture_lex $P1071
    .const 'Sub' $P1064 = "271_1261201519.6115" 
    capture_lex $P1064
    .const 'Sub' $P1057 = "269_1261201519.6115" 
    capture_lex $P1057
    .const 'Sub' $P1050 = "267_1261201519.6115" 
    capture_lex $P1050
    .const 'Sub' $P1043 = "265_1261201519.6115" 
    capture_lex $P1043
    .const 'Sub' $P1036 = "263_1261201519.6115" 
    capture_lex $P1036
    .const 'Sub' $P1029 = "261_1261201519.6115" 
    capture_lex $P1029
    .const 'Sub' $P1022 = "259_1261201519.6115" 
    capture_lex $P1022
    .const 'Sub' $P1015 = "257_1261201519.6115" 
    capture_lex $P1015
    .const 'Sub' $P1008 = "255_1261201519.6115" 
    capture_lex $P1008
    .const 'Sub' $P1001 = "253_1261201519.6115" 
    capture_lex $P1001
    .const 'Sub' $P994 = "251_1261201519.6115" 
    capture_lex $P994
    .const 'Sub' $P988 = "249_1261201519.6115" 
    capture_lex $P988
    .const 'Sub' $P981 = "247_1261201519.6115" 
    capture_lex $P981
    .const 'Sub' $P974 = "245_1261201519.6115" 
    capture_lex $P974
    .const 'Sub' $P967 = "243_1261201519.6115" 
    capture_lex $P967
    .const 'Sub' $P960 = "241_1261201519.6115" 
    capture_lex $P960
    .const 'Sub' $P953 = "239_1261201519.6115" 
    capture_lex $P953
    .const 'Sub' $P946 = "237_1261201519.6115" 
    capture_lex $P946
    .const 'Sub' $P939 = "235_1261201519.6115" 
    capture_lex $P939
    .const 'Sub' $P933 = "233_1261201519.6115" 
    capture_lex $P933
    .const 'Sub' $P927 = "231_1261201519.6115" 
    capture_lex $P927
    .const 'Sub' $P922 = "229_1261201519.6115" 
    capture_lex $P922
    .const 'Sub' $P916 = "227_1261201519.6115" 
    capture_lex $P916
    .const 'Sub' $P910 = "225_1261201519.6115" 
    capture_lex $P910
    .const 'Sub' $P905 = "223_1261201519.6115" 
    capture_lex $P905
    .const 'Sub' $P900 = "221_1261201519.6115" 
    capture_lex $P900
    .const 'Sub' $P893 = "219_1261201519.6115" 
    capture_lex $P893
    .const 'Sub' $P885 = "217_1261201519.6115" 
    capture_lex $P885
    .const 'Sub' $P880 = "215_1261201519.6115" 
    capture_lex $P880
    .const 'Sub' $P875 = "213_1261201519.6115" 
    capture_lex $P875
    .const 'Sub' $P870 = "211_1261201519.6115" 
    capture_lex $P870
    .const 'Sub' $P862 = "209_1261201519.6115" 
    capture_lex $P862
    .const 'Sub' $P854 = "207_1261201519.6115" 
    capture_lex $P854
    .const 'Sub' $P849 = "205_1261201519.6115" 
    capture_lex $P849
    .const 'Sub' $P844 = "203_1261201519.6115" 
    capture_lex $P844
    .const 'Sub' $P838 = "201_1261201519.6115" 
    capture_lex $P838
    .const 'Sub' $P832 = "199_1261201519.6115" 
    capture_lex $P832
    .const 'Sub' $P826 = "197_1261201519.6115" 
    capture_lex $P826
    .const 'Sub' $P820 = "195_1261201519.6115" 
    capture_lex $P820
    .const 'Sub' $P814 = "193_1261201519.6115" 
    capture_lex $P814
    .const 'Sub' $P809 = "191_1261201519.6115" 
    capture_lex $P809
    .const 'Sub' $P804 = "189_1261201519.6115" 
    capture_lex $P804
    .const 'Sub' $P791 = "185_1261201519.6115" 
    capture_lex $P791
    .const 'Sub' $P783 = "183_1261201519.6115" 
    capture_lex $P783
    .const 'Sub' $P777 = "181_1261201519.6115" 
    capture_lex $P777
    .const 'Sub' $P770 = "179_1261201519.6115" 
    capture_lex $P770
    .const 'Sub' $P764 = "177_1261201519.6115" 
    capture_lex $P764
    .const 'Sub' $P756 = "175_1261201519.6115" 
    capture_lex $P756
    .const 'Sub' $P748 = "173_1261201519.6115" 
    capture_lex $P748
    .const 'Sub' $P742 = "171_1261201519.6115" 
    capture_lex $P742
    .const 'Sub' $P736 = "169_1261201519.6115" 
    capture_lex $P736
    .const 'Sub' $P721 = "165_1261201519.6115" 
    capture_lex $P721
    .const 'Sub' $P689 = "163_1261201519.6115" 
    capture_lex $P689
    .const 'Sub' $P681 = "161_1261201519.6115" 
    capture_lex $P681
    .const 'Sub' $P675 = "159_1261201519.6115" 
    capture_lex $P675
    .const 'Sub' $P665 = "157_1261201519.6115" 
    capture_lex $P665
    .const 'Sub' $P650 = "155_1261201519.6115" 
    capture_lex $P650
    .const 'Sub' $P641 = "153_1261201519.6115" 
    capture_lex $P641
    .const 'Sub' $P622 = "151_1261201519.6115" 
    capture_lex $P622
    .const 'Sub' $P598 = "149_1261201519.6115" 
    capture_lex $P598
    .const 'Sub' $P591 = "147_1261201519.6115" 
    capture_lex $P591
    .const 'Sub' $P584 = "145_1261201519.6115" 
    capture_lex $P584
    .const 'Sub' $P574 = "141_1261201519.6115" 
    capture_lex $P574
    .const 'Sub' $P563 = "139_1261201519.6115" 
    capture_lex $P563
    .const 'Sub' $P556 = "137_1261201519.6115" 
    capture_lex $P556
    .const 'Sub' $P549 = "135_1261201519.6115" 
    capture_lex $P549
    .const 'Sub' $P542 = "133_1261201519.6115" 
    capture_lex $P542
    .const 'Sub' $P515 = "129_1261201519.6115" 
    capture_lex $P515
    .const 'Sub' $P506 = "127_1261201519.6115" 
    capture_lex $P506
    .const 'Sub' $P499 = "125_1261201519.6115" 
    capture_lex $P499
    .const 'Sub' $P490 = "121_1261201519.6115" 
    capture_lex $P490
    .const 'Sub' $P485 = "119_1261201519.6115" 
    capture_lex $P485
    .const 'Sub' $P473 = "117_1261201519.6115" 
    capture_lex $P473
    .const 'Sub' $P461 = "115_1261201519.6115" 
    capture_lex $P461
    .const 'Sub' $P453 = "113_1261201519.6115" 
    capture_lex $P453
    .const 'Sub' $P448 = "111_1261201519.6115" 
    capture_lex $P448
    .const 'Sub' $P442 = "109_1261201519.6115" 
    capture_lex $P442
    .const 'Sub' $P436 = "107_1261201519.6115" 
    capture_lex $P436
    .const 'Sub' $P430 = "105_1261201519.6115" 
    capture_lex $P430
    .const 'Sub' $P424 = "103_1261201519.6115" 
    capture_lex $P424
    .const 'Sub' $P418 = "101_1261201519.6115" 
    capture_lex $P418
    .const 'Sub' $P412 = "99_1261201519.6115" 
    capture_lex $P412
    .const 'Sub' $P406 = "97_1261201519.6115" 
    capture_lex $P406
    .const 'Sub' $P400 = "95_1261201519.6115" 
    capture_lex $P400
    .const 'Sub' $P392 = "93_1261201519.6115" 
    capture_lex $P392
    .const 'Sub' $P384 = "91_1261201519.6115" 
    capture_lex $P384
    .const 'Sub' $P372 = "87_1261201519.6115" 
    capture_lex $P372
    .const 'Sub' $P364 = "85_1261201519.6115" 
    capture_lex $P364
    .const 'Sub' $P354 = "81_1261201519.6115" 
    capture_lex $P354
    .const 'Sub' $P347 = "79_1261201519.6115" 
    capture_lex $P347
    .const 'Sub' $P340 = "77_1261201519.6115" 
    capture_lex $P340
    .const 'Sub' $P328 = "73_1261201519.6115" 
    capture_lex $P328
    .const 'Sub' $P320 = "71_1261201519.6115" 
    capture_lex $P320
    .const 'Sub' $P312 = "69_1261201519.6115" 
    capture_lex $P312
    .const 'Sub' $P292 = "67_1261201519.6115" 
    capture_lex $P292
    .const 'Sub' $P283 = "65_1261201519.6115" 
    capture_lex $P283
    .const 'Sub' $P265 = "62_1261201519.6115" 
    capture_lex $P265
    .const 'Sub' $P245 = "60_1261201519.6115" 
    capture_lex $P245
    .const 'Sub' $P236 = "56_1261201519.6115" 
    capture_lex $P236
    .const 'Sub' $P231 = "54_1261201519.6115" 
    capture_lex $P231
    .const 'Sub' $P222 = "50_1261201519.6115" 
    capture_lex $P222
    .const 'Sub' $P217 = "48_1261201519.6115" 
    capture_lex $P217
    .const 'Sub' $P209 = "46_1261201519.6115" 
    capture_lex $P209
    .const 'Sub' $P202 = "44_1261201519.6115" 
    capture_lex $P202
    .const 'Sub' $P196 = "42_1261201519.6115" 
    capture_lex $P196
    .const 'Sub' $P188 = "40_1261201519.6115" 
    capture_lex $P188
    .const 'Sub' $P182 = "38_1261201519.6115" 
    capture_lex $P182
    .const 'Sub' $P176 = "36_1261201519.6115" 
    capture_lex $P176
    .const 'Sub' $P160 = "33_1261201519.6115" 
    capture_lex $P160
    .const 'Sub' $P147 = "31_1261201519.6115" 
    capture_lex $P147
    .const 'Sub' $P140 = "29_1261201519.6115" 
    capture_lex $P140
    .const 'Sub' $P97 = "26_1261201519.6115" 
    capture_lex $P97
    .const 'Sub' $P79 = "23_1261201519.6115" 
    capture_lex $P79
    .const 'Sub' $P69 = "21_1261201519.6115" 
    capture_lex $P69
    .const 'Sub' $P55 = "19_1261201519.6115" 
    capture_lex $P55
    .const 'Sub' $P47 = "17_1261201519.6115" 
    capture_lex $P47
    .const 'Sub' $P40 = "15_1261201519.6115" 
    capture_lex $P40
    .const 'Sub' $P34 = "13_1261201519.6115" 
    capture_lex $P34
    .const 'Sub' $P15 = "12_1261201519.6115" 
    capture_lex $P15
.annotate "line", 527
    get_hll_global $P1237, ["NQP";"Regex"], "_block1236" 
    capture_lex $P1237
    $P1276 = $P1237()
.annotate "line", 4
    .return ($P1276)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post332") :outer("11_1261201519.6115")
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 414
    get_hll_global $P1277, ["NQP"], "Grammar"
    $P1277."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate "line", 415
    get_hll_global $P1278, ["NQP"], "Grammar"
    $P1278."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate "line", 416
    get_hll_global $P1279, ["NQP"], "Grammar"
    $P1279."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate "line", 417
    get_hll_global $P1280, ["NQP"], "Grammar"
    $P1280."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate "line", 418
    get_hll_global $P1281, ["NQP"], "Grammar"
    $P1281."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate "line", 419
    get_hll_global $P1282, ["NQP"], "Grammar"
    $P1282."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate "line", 420
    get_hll_global $P1283, ["NQP"], "Grammar"
    $P1283."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate "line", 421
    get_hll_global $P1284, ["NQP"], "Grammar"
    $P1284."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate "line", 422
    get_hll_global $P1285, ["NQP"], "Grammar"
    $P1285."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate "line", 423
    get_hll_global $P1286, ["NQP"], "Grammar"
    $P1286."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate "line", 424
    get_hll_global $P1287, ["NQP"], "Grammar"
    $P1287."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate "line", 425
    get_hll_global $P1288, ["NQP"], "Grammar"
    $P1288."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate "line", 426
    get_hll_global $P1289, ["NQP"], "Grammar"
    $P1289."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate "line", 427
    get_hll_global $P1290, ["NQP"], "Grammar"
    $P1290."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate "line", 428
    get_hll_global $P1291, ["NQP"], "Grammar"
    $P1291."O"(":prec<e=>, :assoc<unary>", "%list_prefix")
.annotate "line", 413
    $P1292 = get_root_global ["parrot"], "P6metaclass"
    $P1292."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    get_root_global $P17, ["parrot";"PCT"], "reuse18_1261201519.61363"
    unless_null $P17, reuse18
    new $P17, ["ExceptionHandler"]
    $P17."handle_types"(58)
  reuse18:
    set_addr $P17, control_16
    push_eh $P17
    .lex "self", self
.annotate "line", 5
    new $P19, "Hash"
    .lex "%*LANG", $P19
.annotate "line", 10
    new $P20, "Undef"
    .lex "$*SCOPE", $P20
.annotate "line", 4
    find_lex $P21, "%*LANG"
    unless_null $P21, vivify_333
    get_hll_global $P21, "%LANG"
    unless_null $P21, vivify_334
    die "Contextual %*LANG not found"
  vivify_334:
  vivify_333:
.annotate "line", 6
    get_hll_global $P22, ["NQP"], "Regex"
    find_lex $P23, "%*LANG"
    unless_null $P23, vivify_335
    get_hll_global $P23, "%LANG"
    unless_null $P23, vivify_336
    die "Contextual %*LANG not found"
  vivify_336:
    store_lex "%*LANG", $P23
  vivify_335:
    set $P23["Regex"], $P22
.annotate "line", 7
    get_hll_global $P24, ["NQP"], "RegexActions"
    find_lex $P25, "%*LANG"
    unless_null $P25, vivify_337
    get_hll_global $P25, "%LANG"
    unless_null $P25, vivify_338
    die "Contextual %*LANG not found"
  vivify_338:
    store_lex "%*LANG", $P25
  vivify_337:
    set $P25["Regex-actions"], $P24
.annotate "line", 8
    get_hll_global $P26, ["NQP"], "Grammar"
    find_lex $P27, "%*LANG"
    unless_null $P27, vivify_339
    get_hll_global $P27, "%LANG"
    unless_null $P27, vivify_340
    die "Contextual %*LANG not found"
  vivify_340:
    store_lex "%*LANG", $P27
  vivify_339:
    set $P27["MAIN"], $P26
.annotate "line", 9
    get_hll_global $P28, ["NQP"], "Actions"
    find_lex $P29, "%*LANG"
    unless_null $P29, vivify_341
    get_hll_global $P29, "%LANG"
    unless_null $P29, vivify_342
    die "Contextual %*LANG not found"
  vivify_342:
    store_lex "%*LANG", $P29
  vivify_341:
    set $P29["MAIN-actions"], $P28
.annotate "line", 10
    new $P30, "String"
    assign $P30, ""
    store_lex "$*SCOPE", $P30
.annotate "line", 11
    find_lex $P31, "self"
    $P32 = $P31."comp_unit"()
.annotate "line", 4
    .return ($P32)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P33, exception, "payload"
    .return ($P33)
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx35_tgt
    .local int rx35_pos
    .local int rx35_off
    .local int rx35_eos
    .local int rx35_rep
    .local pmc rx35_cur
    (rx35_cur, rx35_pos, rx35_tgt) = self."!cursor_start"()
    rx35_cur."!cursor_debug"("START ", "identifier")
    .lex unicode:"$\x{a2}", rx35_cur
    .local pmc match
    .lex "$/", match
    length rx35_eos, rx35_tgt
    set rx35_off, 0
    lt rx35_pos, 2, rx35_start
    sub rx35_off, rx35_pos, 1
    substr rx35_tgt, rx35_tgt, rx35_off
  rx35_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan39_done
    goto rxscan39_scan
  rxscan39_loop:
    ($P10) = rx35_cur."from"()
    inc $P10
    set rx35_pos, $P10
    ge rx35_pos, rx35_eos, rxscan39_done
  rxscan39_scan:
    set_addr $I10, rxscan39_loop
    rx35_cur."!mark_push"(0, rx35_pos, $I10)
  rxscan39_done:
.annotate "line", 16
  # rx subrule "ident" subtype=capture negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ident"()
    unless $P10, rx35_fail
    rx35_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx35_pos = $P10."pos"()
  # rx pass
    rx35_cur."!cursor_pass"(rx35_pos, "identifier")
    rx35_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx35_pos)
    .return (rx35_cur)
  rx35_fail:
.annotate "line", 4
    (rx35_rep, rx35_pos, $I10, $P10) = rx35_cur."!mark_fail"(0)
    lt rx35_pos, -1, rx35_done
    eq rx35_pos, -1, rx35_fail
    jump $I10
  rx35_done:
    rx35_cur."!cursor_fail"()
    rx35_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx35_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1261201519.6115") :method
.annotate "line", 4
    $P37 = self."!PREFIX__!subrule"("ident", "")
    new $P38, "ResizablePMCArray"
    push $P38, $P37
    .return ($P38)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx41_tgt
    .local int rx41_pos
    .local int rx41_off
    .local int rx41_eos
    .local int rx41_rep
    .local pmc rx41_cur
    (rx41_cur, rx41_pos, rx41_tgt) = self."!cursor_start"()
    rx41_cur."!cursor_debug"("START ", "name")
    rx41_cur."!cursor_caparray"("identifier")
    .lex unicode:"$\x{a2}", rx41_cur
    .local pmc match
    .lex "$/", match
    length rx41_eos, rx41_tgt
    set rx41_off, 0
    lt rx41_pos, 2, rx41_start
    sub rx41_off, rx41_pos, 1
    substr rx41_tgt, rx41_tgt, rx41_off
  rx41_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan44_done
    goto rxscan44_scan
  rxscan44_loop:
    ($P10) = rx41_cur."from"()
    inc $P10
    set rx41_pos, $P10
    ge rx41_pos, rx41_eos, rxscan44_done
  rxscan44_scan:
    set_addr $I10, rxscan44_loop
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
  rxscan44_done:
.annotate "line", 18
  # rx rxquantr45 ** 1..*
    set_addr $I46, rxquantr45_done
    rx41_cur."!mark_push"(0, -1, $I46)
  rxquantr45_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."identifier"()
    unless $P10, rx41_fail
    rx41_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx41_pos = $P10."pos"()
    (rx41_rep) = rx41_cur."!mark_commit"($I46)
    rx41_cur."!mark_push"(rx41_rep, rx41_pos, $I46)
  # rx literal  "::"
    add $I11, rx41_pos, 2
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 2
    ne $S10, "::", rx41_fail
    add rx41_pos, 2
    goto rxquantr45_loop
  rxquantr45_done:
  # rx pass
    rx41_cur."!cursor_pass"(rx41_pos, "name")
    rx41_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx41_pos)
    .return (rx41_cur)
  rx41_fail:
.annotate "line", 4
    (rx41_rep, rx41_pos, $I10, $P10) = rx41_cur."!mark_fail"(0)
    lt rx41_pos, -1, rx41_done
    eq rx41_pos, -1, rx41_fail
    jump $I10
  rx41_done:
    rx41_cur."!cursor_fail"()
    rx41_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx41_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1261201519.6115") :method
.annotate "line", 4
    new $P43, "ResizablePMCArray"
    push $P43, ""
    .return ($P43)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    (rx48_cur, rx48_pos, rx48_tgt) = self."!cursor_start"()
    rx48_cur."!cursor_debug"("START ", "deflongname")
    rx48_cur."!cursor_caparray"("colonpair")
    .lex unicode:"$\x{a2}", rx48_cur
    .local pmc match
    .lex "$/", match
    length rx48_eos, rx48_tgt
    set rx48_off, 0
    lt rx48_pos, 2, rx48_start
    sub rx48_off, rx48_pos, 1
    substr rx48_tgt, rx48_tgt, rx48_off
  rx48_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan52_done
    goto rxscan52_scan
  rxscan52_loop:
    ($P10) = rx48_cur."from"()
    inc $P10
    set rx48_pos, $P10
    ge rx48_pos, rx48_eos, rxscan52_done
  rxscan52_scan:
    set_addr $I10, rxscan52_loop
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxscan52_done:
.annotate "line", 21
  # rx subrule "identifier" subtype=capture negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    $P10 = rx48_cur."identifier"()
    unless $P10, rx48_fail
    rx48_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx48_pos = $P10."pos"()
  # rx rxquantr53 ** 0..1
    set_addr $I54, rxquantr53_done
    rx48_cur."!mark_push"(0, rx48_pos, $I54)
  rxquantr53_loop:
  # rx subrule "colonpair" subtype=capture negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    $P10 = rx48_cur."colonpair"()
    unless $P10, rx48_fail
    rx48_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx48_pos = $P10."pos"()
    (rx48_rep) = rx48_cur."!mark_commit"($I54)
  rxquantr53_done:
.annotate "line", 20
  # rx pass
    rx48_cur."!cursor_pass"(rx48_pos, "deflongname")
    rx48_cur."!cursor_debug"("PASS  ", "deflongname", " at pos=", rx48_pos)
    .return (rx48_cur)
  rx48_fail:
.annotate "line", 4
    (rx48_rep, rx48_pos, $I10, $P10) = rx48_cur."!mark_fail"(0)
    lt rx48_pos, -1, rx48_done
    eq rx48_pos, -1, rx48_fail
    jump $I10
  rx48_done:
    rx48_cur."!cursor_fail"()
    rx48_cur."!cursor_debug"("FAIL  ", "deflongname")
    .return (rx48_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1261201519.6115") :method
.annotate "line", 4
    $P50 = self."!PREFIX__!subrule"("identifier", "")
    new $P51, "ResizablePMCArray"
    push $P51, $P50
    .return ($P51)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    (rx56_cur, rx56_pos, rx56_tgt) = self."!cursor_start"()
    rx56_cur."!cursor_debug"("START ", "ENDSTMT")
    .lex unicode:"$\x{a2}", rx56_cur
    .local pmc match
    .lex "$/", match
    length rx56_eos, rx56_tgt
    set rx56_off, 0
    lt rx56_pos, 2, rx56_start
    sub rx56_off, rx56_pos, 1
    substr rx56_tgt, rx56_tgt, rx56_off
  rx56_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan59_done
    goto rxscan59_scan
  rxscan59_loop:
    ($P10) = rx56_cur."from"()
    inc $P10
    set rx56_pos, $P10
    ge rx56_pos, rx56_eos, rxscan59_done
  rxscan59_scan:
    set_addr $I10, rxscan59_loop
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  rxscan59_done:
.annotate "line", 28
  # rx rxquantr60 ** 0..1
    set_addr $I68, rxquantr60_done
    rx56_cur."!mark_push"(0, rx56_pos, $I68)
  rxquantr60_loop:
  alt61_0:
.annotate "line", 25
    set_addr $I10, alt61_1
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
.annotate "line", 26
  # rx rxquantr62 ** 0..*
    set_addr $I63, rxquantr62_done
    rx56_cur."!mark_push"(0, rx56_pos, $I63)
  rxquantr62_loop:
  # rx enumcharlist negate=0 
    ge rx56_pos, rx56_eos, rx56_fail
    sub $I10, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx56_fail
    inc rx56_pos
    (rx56_rep) = rx56_cur."!mark_commit"($I63)
    rx56_cur."!mark_push"(rx56_rep, rx56_pos, $I63)
    goto rxquantr62_loop
  rxquantr62_done:
  # rxanchor eol
    sub $I10, rx56_pos, rx56_off
    is_cclass $I11, 4096, rx56_tgt, $I10
    if $I11, rxanchor64_done
    ne rx56_pos, rx56_eos, rx56_fail
    eq rx56_pos, 0, rxanchor64_done
    dec $I10
    is_cclass $I11, 4096, rx56_tgt, $I10
    if $I11, rx56_fail
  rxanchor64_done:
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."MARKER"("endstmt")
    unless $P10, rx56_fail
    goto alt61_end
  alt61_1:
.annotate "line", 27
  # rx rxquantr65 ** 0..1
    set_addr $I66, rxquantr65_done
    rx56_cur."!mark_push"(0, rx56_pos, $I66)
  rxquantr65_loop:
  # rx subrule "unv" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."unv"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
    (rx56_rep) = rx56_cur."!mark_commit"($I66)
  rxquantr65_done:
  # rxanchor eol
    sub $I10, rx56_pos, rx56_off
    is_cclass $I11, 4096, rx56_tgt, $I10
    if $I11, rxanchor67_done
    ne rx56_pos, rx56_eos, rx56_fail
    eq rx56_pos, 0, rxanchor67_done
    dec $I10
    is_cclass $I11, 4096, rx56_tgt, $I10
    if $I11, rx56_fail
  rxanchor67_done:
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."MARKER"("endstmt")
    unless $P10, rx56_fail
  alt61_end:
.annotate "line", 28
    (rx56_rep) = rx56_cur."!mark_commit"($I68)
  rxquantr60_done:
.annotate "line", 24
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "ENDSTMT")
    rx56_cur."!cursor_debug"("PASS  ", "ENDSTMT", " at pos=", rx56_pos)
    .return (rx56_cur)
  rx56_fail:
.annotate "line", 4
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    rx56_cur."!cursor_debug"("FAIL  ", "ENDSTMT")
    .return (rx56_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1261201519.6115") :method
.annotate "line", 4
    new $P58, "ResizablePMCArray"
    push $P58, ""
    .return ($P58)
.end


.namespace ["NQP";"Grammar"]
.sub "ws"  :subid("21_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    (rx70_cur, rx70_pos, rx70_tgt) = self."!cursor_start"()
    rx70_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx70_cur
    .local pmc match
    .lex "$/", match
    length rx70_eos, rx70_tgt
    set rx70_off, 0
    lt rx70_pos, 2, rx70_start
    sub rx70_off, rx70_pos, 1
    substr rx70_tgt, rx70_tgt, rx70_off
  rx70_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    ($P10) = rx70_cur."from"()
    inc $P10
    set rx70_pos, $P10
    ge rx70_pos, rx70_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
  rxscan73_done:
  alt74_0:
.annotate "line", 31
    set_addr $I10, alt74_1
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
.annotate "line", 32
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."MARKED"("ws")
    unless $P10, rx70_fail
    goto alt74_end
  alt74_1:
.annotate "line", 33
  # rx subrule "ww" subtype=zerowidth negate=1
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."ww"()
    if $P10, rx70_fail
.annotate "line", 37
  # rx rxquantr75 ** 0..*
    set_addr $I78, rxquantr75_done
    rx70_cur."!mark_push"(0, rx70_pos, $I78)
  rxquantr75_loop:
  alt76_0:
.annotate "line", 34
    set_addr $I10, alt76_1
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx70_pos, rx70_off
    find_not_cclass $I11, 32, rx70_tgt, $I10, rx70_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx70_fail
    add rx70_pos, rx70_off, $I11
    goto alt76_end
  alt76_1:
    set_addr $I10, alt76_2
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
.annotate "line", 35
  # rx literal  "#"
    add $I11, rx70_pos, 1
    gt $I11, rx70_eos, rx70_fail
    sub $I11, rx70_pos, rx70_off
    substr $S10, rx70_tgt, $I11, 1
    ne $S10, "#", rx70_fail
    add rx70_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx70_pos, rx70_off
    find_cclass $I11, 4096, rx70_tgt, $I10, rx70_eos
    add rx70_pos, rx70_off, $I11
    goto alt76_end
  alt76_2:
.annotate "line", 36
  # rxanchor bol
    eq rx70_pos, 0, rxanchor77_done
    ge rx70_pos, rx70_eos, rx70_fail
    sub $I10, rx70_pos, rx70_off
    dec $I10
    is_cclass $I11, 4096, rx70_tgt, $I10
    unless $I11, rx70_fail
  rxanchor77_done:
  # rx subrule "pod_comment" subtype=method negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."pod_comment"()
    unless $P10, rx70_fail
    rx70_pos = $P10."pos"()
  alt76_end:
.annotate "line", 37
    (rx70_rep) = rx70_cur."!mark_commit"($I78)
    rx70_cur."!mark_push"(rx70_rep, rx70_pos, $I78)
    goto rxquantr75_loop
  rxquantr75_done:
.annotate "line", 38
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."MARKER"("ws")
    unless $P10, rx70_fail
  alt74_end:
.annotate "line", 31
  # rx pass
    rx70_cur."!cursor_pass"(rx70_pos, "ws")
    rx70_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx70_pos)
    .return (rx70_cur)
  rx70_fail:
.annotate "line", 4
    (rx70_rep, rx70_pos, $I10, $P10) = rx70_cur."!mark_fail"(0)
    lt rx70_pos, -1, rx70_done
    eq rx70_pos, -1, rx70_fail
    jump $I10
  rx70_done:
    rx70_cur."!cursor_fail"()
    rx70_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx70_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ws"  :subid("22_1261201519.6115") :method
.annotate "line", 4
    new $P72, "ResizablePMCArray"
    push $P72, ""
    push $P72, ""
    .return ($P72)
.end


.namespace ["NQP";"Grammar"]
.sub "unv"  :subid("23_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .const 'Sub' $P87 = "25_1261201519.6115" 
    capture_lex $P87
    .local string rx80_tgt
    .local int rx80_pos
    .local int rx80_off
    .local int rx80_eos
    .local int rx80_rep
    .local pmc rx80_cur
    (rx80_cur, rx80_pos, rx80_tgt) = self."!cursor_start"()
    rx80_cur."!cursor_debug"("START ", "unv")
    .lex unicode:"$\x{a2}", rx80_cur
    .local pmc match
    .lex "$/", match
    length rx80_eos, rx80_tgt
    set rx80_off, 0
    lt rx80_pos, 2, rx80_start
    sub rx80_off, rx80_pos, 1
    substr rx80_tgt, rx80_tgt, rx80_off
  rx80_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan83_done
    goto rxscan83_scan
  rxscan83_loop:
    ($P10) = rx80_cur."from"()
    inc $P10
    set rx80_pos, $P10
    ge rx80_pos, rx80_eos, rxscan83_done
  rxscan83_scan:
    set_addr $I10, rxscan83_loop
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
  rxscan83_done:
  alt84_0:
.annotate "line", 43
    set_addr $I10, alt84_1
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
.annotate "line", 44
  # rxanchor bol
    eq rx80_pos, 0, rxanchor85_done
    ge rx80_pos, rx80_eos, rx80_fail
    sub $I10, rx80_pos, rx80_off
    dec $I10
    is_cclass $I11, 4096, rx80_tgt, $I10
    unless $I11, rx80_fail
  rxanchor85_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    .const 'Sub' $P87 = "25_1261201519.6115" 
    capture_lex $P87
    $P10 = rx80_cur."before"($P87)
    unless $P10, rx80_fail
  # rx subrule "pod_comment" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."pod_comment"()
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
    goto alt84_end
  alt84_1:
    set_addr $I10, alt84_2
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
.annotate "line", 45
  # rx rxquantr93 ** 0..*
    set_addr $I94, rxquantr93_done
    rx80_cur."!mark_push"(0, rx80_pos, $I94)
  rxquantr93_loop:
  # rx enumcharlist negate=0 
    ge rx80_pos, rx80_eos, rx80_fail
    sub $I10, rx80_pos, rx80_off
    substr $S10, rx80_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx80_fail
    inc rx80_pos
    (rx80_rep) = rx80_cur."!mark_commit"($I94)
    rx80_cur."!mark_push"(rx80_rep, rx80_pos, $I94)
    goto rxquantr93_loop
  rxquantr93_done:
  # rx literal  "#"
    add $I11, rx80_pos, 1
    gt $I11, rx80_eos, rx80_fail
    sub $I11, rx80_pos, rx80_off
    substr $S10, rx80_tgt, $I11, 1
    ne $S10, "#", rx80_fail
    add rx80_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx80_pos, rx80_off
    find_cclass $I11, 4096, rx80_tgt, $I10, rx80_eos
    add rx80_pos, rx80_off, $I11
    goto alt84_end
  alt84_2:
.annotate "line", 46
  # rx rxquantr95 ** 1..*
    set_addr $I96, rxquantr95_done
    rx80_cur."!mark_push"(0, -1, $I96)
  rxquantr95_loop:
  # rx enumcharlist negate=0 
    ge rx80_pos, rx80_eos, rx80_fail
    sub $I10, rx80_pos, rx80_off
    substr $S10, rx80_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx80_fail
    inc rx80_pos
    (rx80_rep) = rx80_cur."!mark_commit"($I96)
    rx80_cur."!mark_push"(rx80_rep, rx80_pos, $I96)
    goto rxquantr95_loop
  rxquantr95_done:
  alt84_end:
.annotate "line", 41
  # rx pass
    rx80_cur."!cursor_pass"(rx80_pos, "unv")
    rx80_cur."!cursor_debug"("PASS  ", "unv", " at pos=", rx80_pos)
    .return (rx80_cur)
  rx80_fail:
.annotate "line", 4
    (rx80_rep, rx80_pos, $I10, $P10) = rx80_cur."!mark_fail"(0)
    lt rx80_pos, -1, rx80_done
    eq rx80_pos, -1, rx80_fail
    jump $I10
  rx80_done:
    rx80_cur."!cursor_fail"()
    rx80_cur."!cursor_debug"("FAIL  ", "unv")
    .return (rx80_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__unv"  :subid("24_1261201519.6115") :method
.annotate "line", 4
    new $P82, "ResizablePMCArray"
    push $P82, ""
    push $P82, ""
    push $P82, ""
    .return ($P82)
.end


.namespace ["NQP";"Grammar"]
.sub "_block86"  :anon :subid("25_1261201519.6115") :method :outer("23_1261201519.6115")
.annotate "line", 44
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    (rx88_cur, rx88_pos, rx88_tgt) = self."!cursor_start"()
    rx88_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx88_cur
    .local pmc match
    .lex "$/", match
    length rx88_eos, rx88_tgt
    set rx88_off, 0
    lt rx88_pos, 2, rx88_start
    sub rx88_off, rx88_pos, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan89_done
    goto rxscan89_scan
  rxscan89_loop:
    ($P10) = rx88_cur."from"()
    inc $P10
    set rx88_pos, $P10
    ge rx88_pos, rx88_eos, rxscan89_done
  rxscan89_scan:
    set_addr $I10, rxscan89_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan89_done:
  # rx rxquantr90 ** 0..*
    set_addr $I91, rxquantr90_done
    rx88_cur."!mark_push"(0, rx88_pos, $I91)
  rxquantr90_loop:
  # rx enumcharlist negate=0 
    ge rx88_pos, rx88_eos, rx88_fail
    sub $I10, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx88_fail
    inc rx88_pos
    (rx88_rep) = rx88_cur."!mark_commit"($I91)
    rx88_cur."!mark_push"(rx88_rep, rx88_pos, $I91)
    goto rxquantr90_loop
  rxquantr90_done:
  # rx literal  "="
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 1
    ne $S10, "=", rx88_fail
    add rx88_pos, 1
  alt92_0:
    set_addr $I10, alt92_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx charclass w
    ge rx88_pos, rx88_eos, rx88_fail
    sub $I10, rx88_pos, rx88_off
    is_cclass $I11, 8192, rx88_tgt, $I10
    unless $I11, rx88_fail
    inc rx88_pos
    goto alt92_end
  alt92_1:
  # rx literal  "\\"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 1
    ne $S10, "\\", rx88_fail
    add rx88_pos, 1
  alt92_end:
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "")
    rx88_cur."!cursor_debug"("PASS  ", "", " at pos=", rx88_pos)
    .return (rx88_cur)
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    rx88_cur."!cursor_debug"("FAIL  ", "")
    .return (rx88_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "pod_comment"  :subid("26_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .const 'Sub' $P132 = "28_1261201519.6115" 
    capture_lex $P132
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    (rx98_cur, rx98_pos, rx98_tgt) = self."!cursor_start"()
    rx98_cur."!cursor_debug"("START ", "pod_comment")
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    set rx98_off, 0
    lt rx98_pos, 2, rx98_start
    sub rx98_off, rx98_pos, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    ($P10) = rx98_cur."from"()
    inc $P10
    set rx98_pos, $P10
    ge rx98_pos, rx98_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan101_done:
.annotate "line", 51
  # rxanchor bol
    eq rx98_pos, 0, rxanchor102_done
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    dec $I10
    is_cclass $I11, 4096, rx98_tgt, $I10
    unless $I11, rx98_fail
  rxanchor102_done:
  # rx rxquantr103 ** 0..*
    set_addr $I104, rxquantr103_done
    rx98_cur."!mark_push"(0, rx98_pos, $I104)
  rxquantr103_loop:
  # rx enumcharlist negate=0 
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx98_fail
    inc rx98_pos
    (rx98_rep) = rx98_cur."!mark_commit"($I104)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I104)
    goto rxquantr103_loop
  rxquantr103_done:
  # rx literal  "="
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 1
    ne $S10, "=", rx98_fail
    add rx98_pos, 1
  alt105_0:
.annotate "line", 52
    set_addr $I10, alt105_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
.annotate "line", 53
  # rx literal  "begin"
    add $I11, rx98_pos, 5
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 5
    ne $S10, "begin", rx98_fail
    add rx98_pos, 5
  # rx rxquantr106 ** 1..*
    set_addr $I107, rxquantr106_done
    rx98_cur."!mark_push"(0, -1, $I107)
  rxquantr106_loop:
  # rx enumcharlist negate=0 
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx98_fail
    inc rx98_pos
    (rx98_rep) = rx98_cur."!mark_commit"($I107)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I107)
    goto rxquantr106_loop
  rxquantr106_done:
  # rx literal  "END"
    add $I11, rx98_pos, 3
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 3
    ne $S10, "END", rx98_fail
    add rx98_pos, 3
  # rxanchor rwb
    le rx98_pos, 0, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 8192, rx98_tgt, $I10
    if $I11, rx98_fail
    dec $I10
    is_cclass $I11, 8192, rx98_tgt, $I10
    unless $I11, rx98_fail
  alt108_0:
.annotate "line", 54
    set_addr $I10, alt108_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx rxquantf109 ** 0..*
    set_addr $I10, rxquantf109_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
    goto rxquantf109_done
  rxquantf109_loop:
  # rx charclass .
    ge rx98_pos, rx98_eos, rx98_fail
    inc rx98_pos
    set_addr $I10, rxquantf109_loop
    rx98_cur."!mark_push"($I110, rx98_pos, $I10)
  rxquantf109_done:
  # rx charclass nl
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 4096, rx98_tgt, $I10
    unless $I11, rx98_fail
    substr $S10, rx98_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx98_pos, $I11
    inc rx98_pos
  # rx literal  "=end"
    add $I11, rx98_pos, 4
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 4
    ne $S10, "=end", rx98_fail
    add rx98_pos, 4
  # rx rxquantr111 ** 1..*
    set_addr $I112, rxquantr111_done
    rx98_cur."!mark_push"(0, -1, $I112)
  rxquantr111_loop:
  # rx enumcharlist negate=0 
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx98_fail
    inc rx98_pos
    (rx98_rep) = rx98_cur."!mark_commit"($I112)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I112)
    goto rxquantr111_loop
  rxquantr111_done:
  # rx literal  "END"
    add $I11, rx98_pos, 3
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 3
    ne $S10, "END", rx98_fail
    add rx98_pos, 3
  # rxanchor rwb
    le rx98_pos, 0, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 8192, rx98_tgt, $I10
    if $I11, rx98_fail
    dec $I10
    is_cclass $I11, 8192, rx98_tgt, $I10
    unless $I11, rx98_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx98_pos, rx98_off
    find_cclass $I11, 4096, rx98_tgt, $I10, rx98_eos
    add rx98_pos, rx98_off, $I11
    goto alt108_end
  alt108_1:
  # rx charclass_q . r 0..-1
    sub $I10, rx98_pos, rx98_off
    find_not_cclass $I11, 65535, rx98_tgt, $I10, rx98_eos
    add rx98_pos, rx98_off, $I11
  alt108_end:
.annotate "line", 53
    goto alt105_end
  alt105_1:
    set_addr $I10, alt105_2
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
.annotate "line", 55
  # rx literal  "begin"
    add $I11, rx98_pos, 5
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 5
    ne $S10, "begin", rx98_fail
    add rx98_pos, 5
  # rx rxquantr113 ** 1..*
    set_addr $I114, rxquantr113_done
    rx98_cur."!mark_push"(0, -1, $I114)
  rxquantr113_loop:
  # rx enumcharlist negate=0 
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx98_fail
    inc rx98_pos
    (rx98_rep) = rx98_cur."!mark_commit"($I114)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I114)
    goto rxquantr113_loop
  rxquantr113_done:
  # rx subrule "identifier" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."identifier"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx98_pos = $P10."pos"()
  alt115_0:
.annotate "line", 56
    set_addr $I10, alt115_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
.annotate "line", 57
  # rx rxquantf116 ** 0..*
    set_addr $I10, rxquantf116_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
    goto rxquantf116_done
  rxquantf116_loop:
  # rx charclass .
    ge rx98_pos, rx98_eos, rx98_fail
    inc rx98_pos
    set_addr $I10, rxquantf116_loop
    rx98_cur."!mark_push"($I117, rx98_pos, $I10)
  rxquantf116_done:
  # rx charclass nl
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 4096, rx98_tgt, $I10
    unless $I11, rx98_fail
    substr $S10, rx98_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx98_pos, $I11
    inc rx98_pos
  # rx literal  "=end"
    add $I11, rx98_pos, 4
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 4
    ne $S10, "=end", rx98_fail
    add rx98_pos, 4
  # rx rxquantr118 ** 1..*
    set_addr $I119, rxquantr118_done
    rx98_cur."!mark_push"(0, -1, $I119)
  rxquantr118_loop:
  # rx enumcharlist negate=0 
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx98_fail
    inc rx98_pos
    (rx98_rep) = rx98_cur."!mark_commit"($I119)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I119)
    goto rxquantr118_loop
  rxquantr118_done:
  # rx subrule "!BACKREF" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."!BACKREF"("identifier")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  # rxanchor rwb
    le rx98_pos, 0, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 8192, rx98_tgt, $I10
    if $I11, rx98_fail
    dec $I10
    is_cclass $I11, 8192, rx98_tgt, $I10
    unless $I11, rx98_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx98_pos, rx98_off
    find_cclass $I11, 4096, rx98_tgt, $I10, rx98_eos
    add rx98_pos, rx98_off, $I11
    goto alt115_end
  alt115_1:
.annotate "line", 58
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("=begin without matching =end")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt115_end:
.annotate "line", 55
    goto alt105_end
  alt105_2:
    set_addr $I10, alt105_3
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
.annotate "line", 60
  # rx literal  "begin"
    add $I11, rx98_pos, 5
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 5
    ne $S10, "begin", rx98_fail
    add rx98_pos, 5
  # rxanchor rwb
    le rx98_pos, 0, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 8192, rx98_tgt, $I10
    if $I11, rx98_fail
    dec $I10
    is_cclass $I11, 8192, rx98_tgt, $I10
    unless $I11, rx98_fail
  # rx rxquantr121 ** 0..*
    set_addr $I122, rxquantr121_done
    rx98_cur."!mark_push"(0, rx98_pos, $I122)
  rxquantr121_loop:
  # rx enumcharlist negate=0 
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx98_fail
    inc rx98_pos
    (rx98_rep) = rx98_cur."!mark_commit"($I122)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I122)
    goto rxquantr121_loop
  rxquantr121_done:
  alt123_0:
.annotate "line", 61
    set_addr $I10, alt123_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rxanchor eol
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 4096, rx98_tgt, $I10
    if $I11, rxanchor124_done
    ne rx98_pos, rx98_eos, rx98_fail
    eq rx98_pos, 0, rxanchor124_done
    dec $I10
    is_cclass $I11, 4096, rx98_tgt, $I10
    if $I11, rx98_fail
  rxanchor124_done:
    goto alt123_end
  alt123_1:
    set_addr $I10, alt123_2
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "#"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 1
    ne $S10, "#", rx98_fail
    add rx98_pos, 1
    goto alt123_end
  alt123_2:
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Unrecognized token after =begin")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt123_end:
  alt125_0:
.annotate "line", 62
    set_addr $I10, alt125_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
.annotate "line", 63
  # rx rxquantf126 ** 0..*
    set_addr $I10, rxquantf126_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
    goto rxquantf126_done
  rxquantf126_loop:
  # rx charclass .
    ge rx98_pos, rx98_eos, rx98_fail
    inc rx98_pos
    set_addr $I10, rxquantf126_loop
    rx98_cur."!mark_push"($I127, rx98_pos, $I10)
  rxquantf126_done:
  # rx charclass nl
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 4096, rx98_tgt, $I10
    unless $I11, rx98_fail
    substr $S10, rx98_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx98_pos, $I11
    inc rx98_pos
  # rx rxquantr128 ** 0..*
    set_addr $I129, rxquantr128_done
    rx98_cur."!mark_push"(0, rx98_pos, $I129)
  rxquantr128_loop:
  # rx enumcharlist negate=0 
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx98_fail
    inc rx98_pos
    (rx98_rep) = rx98_cur."!mark_commit"($I129)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I129)
    goto rxquantr128_loop
  rxquantr128_done:
  # rx literal  "=end"
    add $I11, rx98_pos, 4
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 4
    ne $S10, "=end", rx98_fail
    add rx98_pos, 4
  # rxanchor rwb
    le rx98_pos, 0, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 8192, rx98_tgt, $I10
    if $I11, rx98_fail
    dec $I10
    is_cclass $I11, 8192, rx98_tgt, $I10
    unless $I11, rx98_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx98_pos, rx98_off
    find_cclass $I11, 4096, rx98_tgt, $I10, rx98_eos
    add rx98_pos, rx98_off, $I11
    goto alt125_end
  alt125_1:
.annotate "line", 64
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("=begin without matching =end")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt125_end:
.annotate "line", 60
    goto alt105_end
  alt105_3:
.annotate "line", 68
  # rx rxquantr130 ** 0..1
    set_addr $I138, rxquantr130_done
    rx98_cur."!mark_push"(0, rx98_pos, $I138)
  rxquantr130_loop:
.annotate "line", 67
  # rx subrule "before" subtype=zerowidth negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    .const 'Sub' $P132 = "28_1261201519.6115" 
    capture_lex $P132
    $P10 = rx98_cur."before"($P132)
    unless $P10, rx98_fail
.annotate "line", 68
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Obsolete pod format, please use =begin/=end instead")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
    (rx98_rep) = rx98_cur."!mark_commit"($I138)
  rxquantr130_done:
  alt139_0:
.annotate "line", 69
    set_addr $I10, alt139_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx subrule "alpha" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."alpha"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("alpha")
    rx98_pos = $P10."pos"()
    goto alt139_end
  alt139_1:
    set_addr $I10, alt139_2
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx charclass s
    ge rx98_pos, rx98_eos, rx98_fail
    sub $I10, rx98_pos, rx98_off
    is_cclass $I11, 32, rx98_tgt, $I10
    unless $I11, rx98_fail
    inc rx98_pos
    goto alt139_end
  alt139_2:
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Illegal pod directive")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt139_end:
.annotate "line", 70
  # rx charclass_q N r 0..-1
    sub $I10, rx98_pos, rx98_off
    find_cclass $I11, 4096, rx98_tgt, $I10, rx98_eos
    add rx98_pos, rx98_off, $I11
  alt105_end:
.annotate "line", 50
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "pod_comment")
    rx98_cur."!cursor_debug"("PASS  ", "pod_comment", " at pos=", rx98_pos)
    .return (rx98_cur)
  rx98_fail:
.annotate "line", 4
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    rx98_cur."!cursor_debug"("FAIL  ", "pod_comment")
    .return (rx98_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pod_comment"  :subid("27_1261201519.6115") :method
.annotate "line", 4
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.namespace ["NQP";"Grammar"]
.sub "_block131"  :anon :subid("28_1261201519.6115") :method :outer("26_1261201519.6115")
.annotate "line", 67
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    (rx133_cur, rx133_pos, rx133_tgt) = self."!cursor_start"()
    rx133_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx133_cur
    .local pmc match
    .lex "$/", match
    length rx133_eos, rx133_tgt
    set rx133_off, 0
    lt rx133_pos, 2, rx133_start
    sub rx133_off, rx133_pos, 1
    substr rx133_tgt, rx133_tgt, rx133_off
  rx133_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan134_done
    goto rxscan134_scan
  rxscan134_loop:
    ($P10) = rx133_cur."from"()
    inc $P10
    set rx133_pos, $P10
    ge rx133_pos, rx133_eos, rxscan134_done
  rxscan134_scan:
    set_addr $I10, rxscan134_loop
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  rxscan134_done:
  # rx rxquantf135 ** 0..*
    set_addr $I10, rxquantf135_loop
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
    goto rxquantf135_done
  rxquantf135_loop:
  # rx charclass .
    ge rx133_pos, rx133_eos, rx133_fail
    inc rx133_pos
    set_addr $I10, rxquantf135_loop
    rx133_cur."!mark_push"($I136, rx133_pos, $I10)
  rxquantf135_done:
  # rxanchor bol
    eq rx133_pos, 0, rxanchor137_done
    ge rx133_pos, rx133_eos, rx133_fail
    sub $I10, rx133_pos, rx133_off
    dec $I10
    is_cclass $I11, 4096, rx133_tgt, $I10
    unless $I11, rx133_fail
  rxanchor137_done:
  # rx literal  "=cut"
    add $I11, rx133_pos, 4
    gt $I11, rx133_eos, rx133_fail
    sub $I11, rx133_pos, rx133_off
    substr $S10, rx133_tgt, $I11, 4
    ne $S10, "=cut", rx133_fail
    add rx133_pos, 4
  # rxanchor rwb
    le rx133_pos, 0, rx133_fail
    sub $I10, rx133_pos, rx133_off
    is_cclass $I11, 8192, rx133_tgt, $I10
    if $I11, rx133_fail
    dec $I10
    is_cclass $I11, 8192, rx133_tgt, $I10
    unless $I11, rx133_fail
  # rx pass
    rx133_cur."!cursor_pass"(rx133_pos, "")
    rx133_cur."!cursor_debug"("PASS  ", "", " at pos=", rx133_pos)
    .return (rx133_cur)
  rx133_fail:
    (rx133_rep, rx133_pos, $I10, $P10) = rx133_cur."!mark_fail"(0)
    lt rx133_pos, -1, rx133_done
    eq rx133_pos, -1, rx133_fail
    jump $I10
  rx133_done:
    rx133_cur."!cursor_fail"()
    rx133_cur."!cursor_debug"("FAIL  ", "")
    .return (rx133_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("29_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx141_tgt
    .local int rx141_pos
    .local int rx141_off
    .local int rx141_eos
    .local int rx141_rep
    .local pmc rx141_cur
    (rx141_cur, rx141_pos, rx141_tgt) = self."!cursor_start"()
    rx141_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx141_cur
    .local pmc match
    .lex "$/", match
    length rx141_eos, rx141_tgt
    set rx141_off, 0
    lt rx141_pos, 2, rx141_start
    sub rx141_off, rx141_pos, 1
    substr rx141_tgt, rx141_tgt, rx141_off
  rx141_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan145_done
    goto rxscan145_scan
  rxscan145_loop:
    ($P10) = rx141_cur."from"()
    inc $P10
    set rx141_pos, $P10
    ge rx141_pos, rx141_eos, rxscan145_done
  rxscan145_scan:
    set_addr $I10, rxscan145_loop
    rx141_cur."!mark_push"(0, rx141_pos, $I10)
  rxscan145_done:
.annotate "line", 78
  # rx subrule "newpad" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."newpad"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
.annotate "line", 79
  # rx subrule "statementlist" subtype=capture negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."statementlist"()
    unless $P10, rx141_fail
    rx141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx141_pos = $P10."pos"()
  alt146_0:
.annotate "line", 80
    set_addr $I10, alt146_1
    rx141_cur."!mark_push"(0, rx141_pos, $I10)
  # rxanchor eos
    ne rx141_pos, rx141_eos, rx141_fail
    goto alt146_end
  alt146_1:
  # rx subrule "panic" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."panic"("Confused")
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
  alt146_end:
.annotate "line", 77
  # rx pass
    rx141_cur."!cursor_pass"(rx141_pos, "comp_unit")
    rx141_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx141_pos)
    .return (rx141_cur)
  rx141_fail:
.annotate "line", 4
    (rx141_rep, rx141_pos, $I10, $P10) = rx141_cur."!mark_fail"(0)
    lt rx141_pos, -1, rx141_done
    eq rx141_pos, -1, rx141_fail
    jump $I10
  rx141_done:
    rx141_cur."!cursor_fail"()
    rx141_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx141_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("30_1261201519.6115") :method
.annotate "line", 4
    $P143 = self."!PREFIX__!subrule"("", "")
    new $P144, "ResizablePMCArray"
    push $P144, $P143
    .return ($P144)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("31_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    (rx148_cur, rx148_pos, rx148_tgt) = self."!cursor_start"()
    rx148_cur."!cursor_debug"("START ", "statementlist")
    rx148_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx148_cur
    .local pmc match
    .lex "$/", match
    length rx148_eos, rx148_tgt
    set rx148_off, 0
    lt rx148_pos, 2, rx148_start
    sub rx148_off, rx148_pos, 1
    substr rx148_tgt, rx148_tgt, rx148_off
  rx148_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan151_done
    goto rxscan151_scan
  rxscan151_loop:
    ($P10) = rx148_cur."from"()
    inc $P10
    set rx148_pos, $P10
    ge rx148_pos, rx148_eos, rxscan151_done
  rxscan151_scan:
    set_addr $I10, rxscan151_loop
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
  rxscan151_done:
  alt152_0:
.annotate "line", 83
    set_addr $I10, alt152_1
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
.annotate "line", 84
  # rx subrule "ws" subtype=method negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."ws"()
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
  # rxanchor eos
    ne rx148_pos, rx148_eos, rx148_fail
  # rx subrule "ws" subtype=method negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."ws"()
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
    goto alt152_end
  alt152_1:
.annotate "line", 85
  # rx subrule "ws" subtype=method negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."ws"()
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
  # rx rxquantr156 ** 0..*
    set_addr $I158, rxquantr156_done
    rx148_cur."!mark_push"(0, rx148_pos, $I158)
  rxquantr156_loop:
  # rx subrule "statement" subtype=capture negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."statement"()
    unless $P10, rx148_fail
    rx148_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx148_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."eat_terminator"()
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."ws"()
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
    (rx148_rep) = rx148_cur."!mark_commit"($I158)
    rx148_cur."!mark_push"(rx148_rep, rx148_pos, $I158)
    goto rxquantr156_loop
  rxquantr156_done:
  # rx subrule "ws" subtype=method negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."ws"()
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
  alt152_end:
.annotate "line", 83
  # rx pass
    rx148_cur."!cursor_pass"(rx148_pos, "statementlist")
    rx148_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx148_pos)
    .return (rx148_cur)
  rx148_fail:
.annotate "line", 4
    (rx148_rep, rx148_pos, $I10, $P10) = rx148_cur."!mark_fail"(0)
    lt rx148_pos, -1, rx148_done
    eq rx148_pos, -1, rx148_fail
    jump $I10
  rx148_done:
    rx148_cur."!cursor_fail"()
    rx148_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx148_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("32_1261201519.6115") :method
.annotate "line", 4
    new $P150, "ResizablePMCArray"
    push $P150, ""
    push $P150, ""
    .return ($P150)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("33_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .const 'Sub' $P166 = "35_1261201519.6115" 
    capture_lex $P166
    .local string rx161_tgt
    .local int rx161_pos
    .local int rx161_off
    .local int rx161_eos
    .local int rx161_rep
    .local pmc rx161_cur
    (rx161_cur, rx161_pos, rx161_tgt) = self."!cursor_start"()
    rx161_cur."!cursor_debug"("START ", "statement")
    rx161_cur."!cursor_caparray"("statement_mod_loop", "statement_mod_cond")
    .lex unicode:"$\x{a2}", rx161_cur
    .local pmc match
    .lex "$/", match
    length rx161_eos, rx161_tgt
    set rx161_off, 0
    lt rx161_pos, 2, rx161_start
    sub rx161_off, rx161_pos, 1
    substr rx161_tgt, rx161_tgt, rx161_off
  rx161_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan164_done
    goto rxscan164_scan
  rxscan164_loop:
    ($P10) = rx161_cur."from"()
    inc $P10
    set rx161_pos, $P10
    ge rx161_pos, rx161_eos, rxscan164_done
  rxscan164_scan:
    set_addr $I10, rxscan164_loop
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
  rxscan164_done:
.annotate "line", 89
  # rx subrule "before" subtype=zerowidth negate=1
    rx161_cur."!cursor_pos"(rx161_pos)
    .const 'Sub' $P166 = "35_1261201519.6115" 
    capture_lex $P166
    $P10 = rx161_cur."before"($P166)
    if $P10, rx161_fail
  alt170_0:
.annotate "line", 90
    set_addr $I10, alt170_1
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
.annotate "line", 91
  # rx subrule "statement_control" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."statement_control"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx161_pos = $P10."pos"()
    goto alt170_end
  alt170_1:
.annotate "line", 92
  # rx subrule "EXPR" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."EXPR"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx161_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."ws"()
    unless $P10, rx161_fail
    rx161_pos = $P10."pos"()
.annotate "line", 96
  # rx rxquantr171 ** 0..1
    set_addr $I175, rxquantr171_done
    rx161_cur."!mark_push"(0, rx161_pos, $I175)
  rxquantr171_loop:
  alt172_0:
.annotate "line", 93
    set_addr $I10, alt172_1
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
.annotate "line", 94
  # rx subrule "statement_mod_cond" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."statement_mod_cond"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_cond")
    rx161_pos = $P10."pos"()
  # rx rxquantr173 ** 0..1
    set_addr $I174, rxquantr173_done
    rx161_cur."!mark_push"(0, rx161_pos, $I174)
  rxquantr173_loop:
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."statement_mod_loop"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx161_pos = $P10."pos"()
    (rx161_rep) = rx161_cur."!mark_commit"($I174)
  rxquantr173_done:
    goto alt172_end
  alt172_1:
.annotate "line", 95
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."statement_mod_loop"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx161_pos = $P10."pos"()
  alt172_end:
.annotate "line", 96
    (rx161_rep) = rx161_cur."!mark_commit"($I175)
  rxquantr171_done:
  alt170_end:
.annotate "line", 88
  # rx pass
    rx161_cur."!cursor_pass"(rx161_pos, "statement")
    rx161_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx161_pos)
    .return (rx161_cur)
  rx161_fail:
.annotate "line", 4
    (rx161_rep, rx161_pos, $I10, $P10) = rx161_cur."!mark_fail"(0)
    lt rx161_pos, -1, rx161_done
    eq rx161_pos, -1, rx161_fail
    jump $I10
  rx161_done:
    rx161_cur."!cursor_fail"()
    rx161_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx161_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("34_1261201519.6115") :method
.annotate "line", 4
    new $P163, "ResizablePMCArray"
    push $P163, ""
    .return ($P163)
.end


.namespace ["NQP";"Grammar"]
.sub "_block165"  :anon :subid("35_1261201519.6115") :method :outer("33_1261201519.6115")
.annotate "line", 89
    .local string rx167_tgt
    .local int rx167_pos
    .local int rx167_off
    .local int rx167_eos
    .local int rx167_rep
    .local pmc rx167_cur
    (rx167_cur, rx167_pos, rx167_tgt) = self."!cursor_start"()
    rx167_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx167_cur
    .local pmc match
    .lex "$/", match
    length rx167_eos, rx167_tgt
    set rx167_off, 0
    lt rx167_pos, 2, rx167_start
    sub rx167_off, rx167_pos, 1
    substr rx167_tgt, rx167_tgt, rx167_off
  rx167_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan168_done
    goto rxscan168_scan
  rxscan168_loop:
    ($P10) = rx167_cur."from"()
    inc $P10
    set rx167_pos, $P10
    ge rx167_pos, rx167_eos, rxscan168_done
  rxscan168_scan:
    set_addr $I10, rxscan168_loop
    rx167_cur."!mark_push"(0, rx167_pos, $I10)
  rxscan168_done:
  alt169_0:
    set_addr $I10, alt169_1
    rx167_cur."!mark_push"(0, rx167_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx167_pos, rx167_eos, rx167_fail
    sub $I10, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx167_fail
    inc rx167_pos
    goto alt169_end
  alt169_1:
  # rxanchor eos
    ne rx167_pos, rx167_eos, rx167_fail
  alt169_end:
  # rx pass
    rx167_cur."!cursor_pass"(rx167_pos, "")
    rx167_cur."!cursor_debug"("PASS  ", "", " at pos=", rx167_pos)
    .return (rx167_cur)
  rx167_fail:
    (rx167_rep, rx167_pos, $I10, $P10) = rx167_cur."!mark_fail"(0)
    lt rx167_pos, -1, rx167_done
    eq rx167_pos, -1, rx167_fail
    jump $I10
  rx167_done:
    rx167_cur."!cursor_fail"()
    rx167_cur."!cursor_debug"("FAIL  ", "")
    .return (rx167_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("36_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    (rx177_cur, rx177_pos, rx177_tgt) = self."!cursor_start"()
    rx177_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx177_cur
    .local pmc match
    .lex "$/", match
    length rx177_eos, rx177_tgt
    set rx177_off, 0
    lt rx177_pos, 2, rx177_start
    sub rx177_off, rx177_pos, 1
    substr rx177_tgt, rx177_tgt, rx177_off
  rx177_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan180_done
    goto rxscan180_scan
  rxscan180_loop:
    ($P10) = rx177_cur."from"()
    inc $P10
    set rx177_pos, $P10
    ge rx177_pos, rx177_eos, rxscan180_done
  rxscan180_scan:
    set_addr $I10, rxscan180_loop
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  rxscan180_done:
  alt181_0:
.annotate "line", 100
    set_addr $I10, alt181_1
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
.annotate "line", 101
  # rx literal  ";"
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail
    sub $I11, rx177_pos, rx177_off
    substr $S10, rx177_tgt, $I11, 1
    ne $S10, ";", rx177_fail
    add rx177_pos, 1
    goto alt181_end
  alt181_1:
    set_addr $I10, alt181_2
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
.annotate "line", 102
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."MARKED"("endstmt")
    unless $P10, rx177_fail
    goto alt181_end
  alt181_2:
    set_addr $I10, alt181_3
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
.annotate "line", 103
  # rx subrule "terminator" subtype=zerowidth negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."terminator"()
    unless $P10, rx177_fail
    goto alt181_end
  alt181_3:
.annotate "line", 104
  # rxanchor eos
    ne rx177_pos, rx177_eos, rx177_fail
  alt181_end:
.annotate "line", 100
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "eat_terminator")
    rx177_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx177_pos)
    .return (rx177_cur)
  rx177_fail:
.annotate "line", 4
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    rx177_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx177_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("37_1261201519.6115") :method
.annotate "line", 4
    new $P179, "ResizablePMCArray"
    push $P179, ""
    push $P179, ""
    push $P179, ""
    push $P179, ";"
    .return ($P179)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("38_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    (rx183_cur, rx183_pos, rx183_tgt) = self."!cursor_start"()
    rx183_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx183_cur
    .local pmc match
    .lex "$/", match
    length rx183_eos, rx183_tgt
    set rx183_off, 0
    lt rx183_pos, 2, rx183_start
    sub rx183_off, rx183_pos, 1
    substr rx183_tgt, rx183_tgt, rx183_off
  rx183_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan187_done
    goto rxscan187_scan
  rxscan187_loop:
    ($P10) = rx183_cur."from"()
    inc $P10
    set rx183_pos, $P10
    ge rx183_pos, rx183_eos, rxscan187_done
  rxscan187_scan:
    set_addr $I10, rxscan187_loop
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  rxscan187_done:
.annotate "line", 108
  # rx subrule "EXPR" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."EXPR"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx183_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."ws"()
    unless $P10, rx183_fail
    rx183_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."pblock"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx183_pos = $P10."pos"()
.annotate "line", 107
  # rx pass
    rx183_cur."!cursor_pass"(rx183_pos, "xblock")
    rx183_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx183_pos)
    .return (rx183_cur)
  rx183_fail:
.annotate "line", 4
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    rx183_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx183_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("39_1261201519.6115") :method
.annotate "line", 4
    $P185 = self."!PREFIX__!subrule"("EXPR", "")
    new $P186, "ResizablePMCArray"
    push $P186, $P185
    .return ($P186)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("40_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    (rx189_cur, rx189_pos, rx189_tgt) = self."!cursor_start"()
    rx189_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx189_cur
    .local pmc match
    .lex "$/", match
    length rx189_eos, rx189_tgt
    set rx189_off, 0
    lt rx189_pos, 2, rx189_start
    sub rx189_off, rx189_pos, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan194_done
    goto rxscan194_scan
  rxscan194_loop:
    ($P10) = rx189_cur."from"()
    inc $P10
    set rx189_pos, $P10
    ge rx189_pos, rx189_eos, rxscan194_done
  rxscan194_scan:
    set_addr $I10, rxscan194_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxscan194_done:
  alt195_0:
.annotate "line", 111
    set_addr $I10, alt195_1
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate "line", 112
  # rx subrule "lambda" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."lambda"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
.annotate "line", 113
  # rx subrule "newpad" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."newpad"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
.annotate "line", 114
  # rx subrule "signature" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."signature"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx189_pos = $P10."pos"()
.annotate "line", 115
  # rx subrule "blockoid" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."blockoid"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx189_pos = $P10."pos"()
.annotate "line", 112
    goto alt195_end
  alt195_1:
    set_addr $I10, alt195_2
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate "line", 116
  # rx enumcharlist negate=0 zerowidth
    ge rx189_pos, rx189_eos, rx189_fail
    sub $I10, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx189_fail
.annotate "line", 117
  # rx subrule "newpad" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."newpad"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
.annotate "line", 118
  # rx subrule "blockoid" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."blockoid"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx189_pos = $P10."pos"()
.annotate "line", 116
    goto alt195_end
  alt195_2:
.annotate "line", 119
  # rx subrule "panic" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."panic"("Missing block")
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  alt195_end:
.annotate "line", 111
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "pblock")
    rx189_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx189_pos)
    .return (rx189_cur)
  rx189_fail:
.annotate "line", 4
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    rx189_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx189_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("41_1261201519.6115") :method
.annotate "line", 4
    $P191 = self."!PREFIX__!subrule"("", "")
    $P192 = self."!PREFIX__!subrule"("", "")
    new $P193, "ResizablePMCArray"
    push $P193, $P191
    push $P193, "{"
    push $P193, $P192
    .return ($P193)
.end


.namespace ["NQP";"Grammar"]
.sub "lambda"  :subid("42_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    (rx197_cur, rx197_pos, rx197_tgt) = self."!cursor_start"()
    rx197_cur."!cursor_debug"("START ", "lambda")
    .lex unicode:"$\x{a2}", rx197_cur
    .local pmc match
    .lex "$/", match
    length rx197_eos, rx197_tgt
    set rx197_off, 0
    lt rx197_pos, 2, rx197_start
    sub rx197_off, rx197_pos, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan200_done
    goto rxscan200_scan
  rxscan200_loop:
    ($P10) = rx197_cur."from"()
    inc $P10
    set rx197_pos, $P10
    ge rx197_pos, rx197_eos, rxscan200_done
  rxscan200_scan:
    set_addr $I10, rxscan200_loop
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  rxscan200_done:
  alt201_0:
.annotate "line", 122
    set_addr $I10, alt201_1
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx literal  "->"
    add $I11, rx197_pos, 2
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    substr $S10, rx197_tgt, $I11, 2
    ne $S10, "->", rx197_fail
    add rx197_pos, 2
    goto alt201_end
  alt201_1:
  # rx literal  "<->"
    add $I11, rx197_pos, 3
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    substr $S10, rx197_tgt, $I11, 3
    ne $S10, "<->", rx197_fail
    add rx197_pos, 3
  alt201_end:
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "lambda")
    rx197_cur."!cursor_debug"("PASS  ", "lambda", " at pos=", rx197_pos)
    .return (rx197_cur)
  rx197_fail:
.annotate "line", 4
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    rx197_cur."!cursor_debug"("FAIL  ", "lambda")
    .return (rx197_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__lambda"  :subid("43_1261201519.6115") :method
.annotate "line", 4
    new $P199, "ResizablePMCArray"
    push $P199, "<->"
    push $P199, "->"
    .return ($P199)
.end


.namespace ["NQP";"Grammar"]
.sub "block"  :subid("44_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    (rx203_cur, rx203_pos, rx203_tgt) = self."!cursor_start"()
    rx203_cur."!cursor_debug"("START ", "block")
    .lex unicode:"$\x{a2}", rx203_cur
    .local pmc match
    .lex "$/", match
    length rx203_eos, rx203_tgt
    set rx203_off, 0
    lt rx203_pos, 2, rx203_start
    sub rx203_off, rx203_pos, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan207_done
    goto rxscan207_scan
  rxscan207_loop:
    ($P10) = rx203_cur."from"()
    inc $P10
    set rx203_pos, $P10
    ge rx203_pos, rx203_eos, rxscan207_done
  rxscan207_scan:
    set_addr $I10, rxscan207_loop
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  rxscan207_done:
  alt208_0:
.annotate "line", 125
    set_addr $I10, alt208_1
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx203_pos, rx203_eos, rx203_fail
    sub $I10, rx203_pos, rx203_off
    substr $S10, rx203_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx203_fail
    goto alt208_end
  alt208_1:
  # rx subrule "panic" subtype=method negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."panic"("Missing block")
    unless $P10, rx203_fail
    rx203_pos = $P10."pos"()
  alt208_end:
.annotate "line", 126
  # rx subrule "newpad" subtype=method negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."newpad"()
    unless $P10, rx203_fail
    rx203_pos = $P10."pos"()
.annotate "line", 127
  # rx subrule "blockoid" subtype=capture negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."blockoid"()
    unless $P10, rx203_fail
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx203_pos = $P10."pos"()
.annotate "line", 124
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "block")
    rx203_cur."!cursor_debug"("PASS  ", "block", " at pos=", rx203_pos)
    .return (rx203_cur)
  rx203_fail:
.annotate "line", 4
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    rx203_cur."!cursor_debug"("FAIL  ", "block")
    .return (rx203_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__block"  :subid("45_1261201519.6115") :method
.annotate "line", 4
    $P205 = self."!PREFIX__!subrule"("", "")
    new $P206, "ResizablePMCArray"
    push $P206, $P205
    push $P206, "{"
    .return ($P206)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("46_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    (rx210_cur, rx210_pos, rx210_tgt) = self."!cursor_start"()
    rx210_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx210_cur
    .local pmc match
    .lex "$/", match
    length rx210_eos, rx210_tgt
    set rx210_off, 0
    lt rx210_pos, 2, rx210_start
    sub rx210_off, rx210_pos, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan214_done
    goto rxscan214_scan
  rxscan214_loop:
    ($P10) = rx210_cur."from"()
    inc $P10
    set rx210_pos, $P10
    ge rx210_pos, rx210_eos, rxscan214_done
  rxscan214_scan:
    set_addr $I10, rxscan214_loop
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  rxscan214_done:
.annotate "line", 131
  # rx subrule "finishpad" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."finishpad"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
.annotate "line", 132
  # rx literal  "{"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I11, 1
    ne $S10, "{", rx210_fail
    add rx210_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."statementlist"()
    unless $P10, rx210_fail
    rx210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx210_pos = $P10."pos"()
  alt215_0:
    set_addr $I10, alt215_1
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  # rx literal  "}"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I11, 1
    ne $S10, "}", rx210_fail
    add rx210_pos, 1
    goto alt215_end
  alt215_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."FAILGOAL"("'}'")
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
  alt215_end:
.annotate "line", 133
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."ENDSTMT"()
    unless $P10, rx210_fail
.annotate "line", 130
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "blockoid")
    rx210_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx210_pos)
    .return (rx210_cur)
  rx210_fail:
.annotate "line", 4
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    rx210_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx210_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("47_1261201519.6115") :method
.annotate "line", 4
    $P212 = self."!PREFIX__!subrule"("", "")
    new $P213, "ResizablePMCArray"
    push $P213, $P212
    .return ($P213)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("48_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx218_tgt
    .local int rx218_pos
    .local int rx218_off
    .local int rx218_eos
    .local int rx218_rep
    .local pmc rx218_cur
    (rx218_cur, rx218_pos, rx218_tgt) = self."!cursor_start"()
    rx218_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx218_cur
    .local pmc match
    .lex "$/", match
    length rx218_eos, rx218_tgt
    set rx218_off, 0
    lt rx218_pos, 2, rx218_start
    sub rx218_off, rx218_pos, 1
    substr rx218_tgt, rx218_tgt, rx218_off
  rx218_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan221_done
    goto rxscan221_scan
  rxscan221_loop:
    ($P10) = rx218_cur."from"()
    inc $P10
    set rx218_pos, $P10
    ge rx218_pos, rx218_eos, rxscan221_done
  rxscan221_scan:
    set_addr $I10, rxscan221_loop
    rx218_cur."!mark_push"(0, rx218_pos, $I10)
  rxscan221_done:
.annotate "line", 136
  # rx pass
    rx218_cur."!cursor_pass"(rx218_pos, "newpad")
    rx218_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx218_pos)
    .return (rx218_cur)
  rx218_fail:
.annotate "line", 4
    (rx218_rep, rx218_pos, $I10, $P10) = rx218_cur."!mark_fail"(0)
    lt rx218_pos, -1, rx218_done
    eq rx218_pos, -1, rx218_fail
    jump $I10
  rx218_done:
    rx218_cur."!cursor_fail"()
    rx218_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx218_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("49_1261201519.6115") :method
.annotate "line", 4
    new $P220, "ResizablePMCArray"
    push $P220, ""
    .return ($P220)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("50_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx223_tgt
    .local int rx223_pos
    .local int rx223_off
    .local int rx223_eos
    .local int rx223_rep
    .local pmc rx223_cur
    (rx223_cur, rx223_pos, rx223_tgt) = self."!cursor_start"()
    rx223_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx223_cur
    .local pmc match
    .lex "$/", match
    length rx223_eos, rx223_tgt
    set rx223_off, 0
    lt rx223_pos, 2, rx223_start
    sub rx223_off, rx223_pos, 1
    substr rx223_tgt, rx223_tgt, rx223_off
  rx223_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan226_done
    goto rxscan226_scan
  rxscan226_loop:
    ($P10) = rx223_cur."from"()
    inc $P10
    set rx223_pos, $P10
    ge rx223_pos, rx223_eos, rxscan226_done
  rxscan226_scan:
    set_addr $I10, rxscan226_loop
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  rxscan226_done:
.annotate "line", 137
  # rx pass
    rx223_cur."!cursor_pass"(rx223_pos, "finishpad")
    rx223_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx223_pos)
    .return (rx223_cur)
  rx223_fail:
.annotate "line", 4
    (rx223_rep, rx223_pos, $I10, $P10) = rx223_cur."!mark_fail"(0)
    lt rx223_pos, -1, rx223_done
    eq rx223_pos, -1, rx223_fail
    jump $I10
  rx223_done:
    rx223_cur."!cursor_fail"()
    rx223_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx223_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("51_1261201519.6115") :method
.annotate "line", 4
    new $P225, "ResizablePMCArray"
    push $P225, ""
    .return ($P225)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("52_1261201519.6115") :method
.annotate "line", 139
    $P228 = self."!protoregex"("terminator")
    .return ($P228)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("53_1261201519.6115") :method
.annotate "line", 139
    $P230 = self."!PREFIX__!protoregex"("terminator")
    .return ($P230)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("54_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    (rx232_cur, rx232_pos, rx232_tgt) = self."!cursor_start"()
    rx232_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx232_cur
    .local pmc match
    .lex "$/", match
    length rx232_eos, rx232_tgt
    set rx232_off, 0
    lt rx232_pos, 2, rx232_start
    sub rx232_off, rx232_pos, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan235_done
    goto rxscan235_scan
  rxscan235_loop:
    ($P10) = rx232_cur."from"()
    inc $P10
    set rx232_pos, $P10
    ge rx232_pos, rx232_eos, rxscan235_done
  rxscan235_scan:
    set_addr $I10, rxscan235_loop
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  rxscan235_done:
.annotate "line", 141
  # rx enumcharlist negate=0 zerowidth
    ge rx232_pos, rx232_eos, rx232_fail
    sub $I10, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx232_fail
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "terminator:sym<;>")
    rx232_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx232_pos)
    .return (rx232_cur)
  rx232_fail:
.annotate "line", 4
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    rx232_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx232_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("55_1261201519.6115") :method
.annotate "line", 4
    new $P234, "ResizablePMCArray"
    push $P234, ";"
    .return ($P234)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("56_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx237_tgt
    .local int rx237_pos
    .local int rx237_off
    .local int rx237_eos
    .local int rx237_rep
    .local pmc rx237_cur
    (rx237_cur, rx237_pos, rx237_tgt) = self."!cursor_start"()
    rx237_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx237_cur
    .local pmc match
    .lex "$/", match
    length rx237_eos, rx237_tgt
    set rx237_off, 0
    lt rx237_pos, 2, rx237_start
    sub rx237_off, rx237_pos, 1
    substr rx237_tgt, rx237_tgt, rx237_off
  rx237_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan240_done
    goto rxscan240_scan
  rxscan240_loop:
    ($P10) = rx237_cur."from"()
    inc $P10
    set rx237_pos, $P10
    ge rx237_pos, rx237_eos, rxscan240_done
  rxscan240_scan:
    set_addr $I10, rxscan240_loop
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  rxscan240_done:
.annotate "line", 142
  # rx enumcharlist negate=0 zerowidth
    ge rx237_pos, rx237_eos, rx237_fail
    sub $I10, rx237_pos, rx237_off
    substr $S10, rx237_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx237_fail
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "terminator:sym<}>")
    rx237_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx237_pos)
    .return (rx237_cur)
  rx237_fail:
.annotate "line", 4
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    rx237_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx237_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("57_1261201519.6115") :method
.annotate "line", 4
    new $P239, "ResizablePMCArray"
    push $P239, "}"
    .return ($P239)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("58_1261201519.6115") :method
.annotate "line", 146
    $P242 = self."!protoregex"("statement_control")
    .return ($P242)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("59_1261201519.6115") :method
.annotate "line", 146
    $P244 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P244)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("60_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    (rx246_cur, rx246_pos, rx246_tgt) = self."!cursor_start"()
    rx246_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx246_cur."!cursor_caparray"("xblock", "else")
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    set rx246_off, 0
    lt rx246_pos, 2, rx246_start
    sub rx246_off, rx246_pos, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan249_done
    goto rxscan249_scan
  rxscan249_loop:
    ($P10) = rx246_cur."from"()
    inc $P10
    set rx246_pos, $P10
    ge rx246_pos, rx246_eos, rxscan249_done
  rxscan249_scan:
    set_addr $I10, rxscan249_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan249_done:
.annotate "line", 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_250_fail
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  # rx literal  "if"
    add $I11, rx246_pos, 2
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 2
    ne $S10, "if", rx246_fail
    add rx246_pos, 2
    set_addr $I10, rxcap_250_fail
    ($I12, $I11) = rx246_cur."!mark_peek"($I10)
    rx246_cur."!cursor_pos"($I11)
    ($P10) = rx246_cur."!cursor_start"()
    $P10."!cursor_pass"(rx246_pos, "")
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_250_done
  rxcap_250_fail:
    goto rx246_fail
  rxcap_250_done:
  # rx charclass s
    ge rx246_pos, rx246_eos, rx246_fail
    sub $I10, rx246_pos, rx246_off
    is_cclass $I11, 32, rx246_tgt, $I10
    unless $I11, rx246_fail
    inc rx246_pos
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
.annotate "line", 150
  # rx subrule "xblock" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."xblock"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx246_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
.annotate "line", 151
  # rx rxquantr253 ** 0..*
    set_addr $I257, rxquantr253_done
    rx246_cur."!mark_push"(0, rx246_pos, $I257)
  rxquantr253_loop:
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx246_pos, 5
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 5
    ne $S10, "elsif", rx246_fail
    add rx246_pos, 5
  # rx charclass s
    ge rx246_pos, rx246_eos, rx246_fail
    sub $I10, rx246_pos, rx246_off
    is_cclass $I11, 32, rx246_tgt, $I10
    unless $I11, rx246_fail
    inc rx246_pos
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."xblock"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx246_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
    (rx246_rep) = rx246_cur."!mark_commit"($I257)
    rx246_cur."!mark_push"(rx246_rep, rx246_pos, $I257)
    goto rxquantr253_loop
  rxquantr253_done:
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
.annotate "line", 152
  # rx rxquantr259 ** 0..1
    set_addr $I263, rxquantr259_done
    rx246_cur."!mark_push"(0, rx246_pos, $I263)
  rxquantr259_loop:
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx246_pos, 4
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 4
    ne $S10, "else", rx246_fail
    add rx246_pos, 4
  # rx charclass s
    ge rx246_pos, rx246_eos, rx246_fail
    sub $I10, rx246_pos, rx246_off
    is_cclass $I11, 32, rx246_tgt, $I10
    unless $I11, rx246_fail
    inc rx246_pos
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."pblock"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx246_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
    (rx246_rep) = rx246_cur."!mark_commit"($I263)
  rxquantr259_done:
  # rx subrule "ws" subtype=method negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."ws"()
    unless $P10, rx246_fail
    rx246_pos = $P10."pos"()
.annotate "line", 148
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "statement_control:sym<if>")
    rx246_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx246_pos)
    .return (rx246_cur)
  rx246_fail:
.annotate "line", 4
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    rx246_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx246_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("61_1261201519.6115") :method
.annotate "line", 4
    new $P248, "ResizablePMCArray"
    push $P248, "if"
    .return ($P248)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("62_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .const 'Sub' $P276 = "64_1261201519.6115" 
    capture_lex $P276
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    (rx266_cur, rx266_pos, rx266_tgt) = self."!cursor_start"()
    rx266_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    ($P10) = rx266_cur."from"()
    inc $P10
    set rx266_pos, $P10
    ge rx266_pos, rx266_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan269_done:
.annotate "line", 156
  # rx subcapture "sym"
    set_addr $I10, rxcap_270_fail
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  # rx literal  "unless"
    add $I11, rx266_pos, 6
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 6
    ne $S10, "unless", rx266_fail
    add rx266_pos, 6
    set_addr $I10, rxcap_270_fail
    ($I12, $I11) = rx266_cur."!mark_peek"($I10)
    rx266_cur."!cursor_pos"($I11)
    ($P10) = rx266_cur."!cursor_start"()
    $P10."!cursor_pass"(rx266_pos, "")
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_270_done
  rxcap_270_fail:
    goto rx266_fail
  rxcap_270_done:
  # rx charclass s
    ge rx266_pos, rx266_eos, rx266_fail
    sub $I10, rx266_pos, rx266_off
    is_cclass $I11, 32, rx266_tgt, $I10
    unless $I11, rx266_fail
    inc rx266_pos
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
.annotate "line", 157
  # rx subrule "xblock" subtype=capture negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."xblock"()
    unless $P10, rx266_fail
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx266_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  alt273_0:
.annotate "line", 158
    set_addr $I10, alt273_1
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx266_cur."!cursor_pos"(rx266_pos)
    .const 'Sub' $P276 = "64_1261201519.6115" 
    capture_lex $P276
    $P10 = rx266_cur."before"($P276)
    if $P10, rx266_fail
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
    goto alt273_end
  alt273_1:
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
  alt273_end:
  # rx subrule "ws" subtype=method negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."ws"()
    unless $P10, rx266_fail
    rx266_pos = $P10."pos"()
.annotate "line", 155
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "statement_control:sym<unless>")
    rx266_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx266_pos)
    .return (rx266_cur)
  rx266_fail:
.annotate "line", 4
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    rx266_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx266_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("63_1261201519.6115") :method
.annotate "line", 4
    new $P268, "ResizablePMCArray"
    push $P268, "unless"
    .return ($P268)
.end


.namespace ["NQP";"Grammar"]
.sub "_block275"  :anon :subid("64_1261201519.6115") :method :outer("62_1261201519.6115")
.annotate "line", 158
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    (rx277_cur, rx277_pos, rx277_tgt) = self."!cursor_start"()
    rx277_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    set rx277_off, 0
    lt rx277_pos, 2, rx277_start
    sub rx277_off, rx277_pos, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan278_done
    goto rxscan278_scan
  rxscan278_loop:
    ($P10) = rx277_cur."from"()
    inc $P10
    set rx277_pos, $P10
    ge rx277_pos, rx277_eos, rxscan278_done
  rxscan278_scan:
    set_addr $I10, rxscan278_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan278_done:
  # rx literal  "else"
    add $I11, rx277_pos, 4
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 4
    ne $S10, "else", rx277_fail
    add rx277_pos, 4
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "")
    rx277_cur."!cursor_debug"("PASS  ", "", " at pos=", rx277_pos)
    .return (rx277_cur)
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    rx277_cur."!cursor_debug"("FAIL  ", "")
    .return (rx277_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("65_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx284_tgt
    .local int rx284_pos
    .local int rx284_off
    .local int rx284_eos
    .local int rx284_rep
    .local pmc rx284_cur
    (rx284_cur, rx284_pos, rx284_tgt) = self."!cursor_start"()
    rx284_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx284_cur
    .local pmc match
    .lex "$/", match
    length rx284_eos, rx284_tgt
    set rx284_off, 0
    lt rx284_pos, 2, rx284_start
    sub rx284_off, rx284_pos, 1
    substr rx284_tgt, rx284_tgt, rx284_off
  rx284_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan287_done
    goto rxscan287_scan
  rxscan287_loop:
    ($P10) = rx284_cur."from"()
    inc $P10
    set rx284_pos, $P10
    ge rx284_pos, rx284_eos, rxscan287_done
  rxscan287_scan:
    set_addr $I10, rxscan287_loop
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  rxscan287_done:
.annotate "line", 162
  # rx subcapture "sym"
    set_addr $I10, rxcap_289_fail
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  alt288_0:
    set_addr $I10, alt288_1
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  # rx literal  "while"
    add $I11, rx284_pos, 5
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 5
    ne $S10, "while", rx284_fail
    add rx284_pos, 5
    goto alt288_end
  alt288_1:
  # rx literal  "until"
    add $I11, rx284_pos, 5
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 5
    ne $S10, "until", rx284_fail
    add rx284_pos, 5
  alt288_end:
    set_addr $I10, rxcap_289_fail
    ($I12, $I11) = rx284_cur."!mark_peek"($I10)
    rx284_cur."!cursor_pos"($I11)
    ($P10) = rx284_cur."!cursor_start"()
    $P10."!cursor_pass"(rx284_pos, "")
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_289_done
  rxcap_289_fail:
    goto rx284_fail
  rxcap_289_done:
  # rx charclass s
    ge rx284_pos, rx284_eos, rx284_fail
    sub $I10, rx284_pos, rx284_off
    is_cclass $I11, 32, rx284_tgt, $I10
    unless $I11, rx284_fail
    inc rx284_pos
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
.annotate "line", 163
  # rx subrule "xblock" subtype=capture negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."xblock"()
    unless $P10, rx284_fail
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx284_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
.annotate "line", 161
  # rx pass
    rx284_cur."!cursor_pass"(rx284_pos, "statement_control:sym<while>")
    rx284_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx284_pos)
    .return (rx284_cur)
  rx284_fail:
.annotate "line", 4
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    rx284_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx284_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("66_1261201519.6115") :method
.annotate "line", 4
    new $P286, "ResizablePMCArray"
    push $P286, "until"
    push $P286, "while"
    .return ($P286)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("67_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    (rx293_cur, rx293_pos, rx293_tgt) = self."!cursor_start"()
    rx293_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx293_cur
    .local pmc match
    .lex "$/", match
    length rx293_eos, rx293_tgt
    set rx293_off, 0
    lt rx293_pos, 2, rx293_start
    sub rx293_off, rx293_pos, 1
    substr rx293_tgt, rx293_tgt, rx293_off
  rx293_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    ($P10) = rx293_cur."from"()
    inc $P10
    set rx293_pos, $P10
    ge rx293_pos, rx293_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  rxscan296_done:
.annotate "line", 167
  # rx subcapture "sym"
    set_addr $I10, rxcap_297_fail
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx293_pos, 6
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 6
    ne $S10, "repeat", rx293_fail
    add rx293_pos, 6
    set_addr $I10, rxcap_297_fail
    ($I12, $I11) = rx293_cur."!mark_peek"($I10)
    rx293_cur."!cursor_pos"($I11)
    ($P10) = rx293_cur."!cursor_start"()
    $P10."!cursor_pass"(rx293_pos, "")
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_297_done
  rxcap_297_fail:
    goto rx293_fail
  rxcap_297_done:
  # rx charclass s
    ge rx293_pos, rx293_eos, rx293_fail
    sub $I10, rx293_pos, rx293_off
    is_cclass $I11, 32, rx293_tgt, $I10
    unless $I11, rx293_fail
    inc rx293_pos
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  alt299_0:
.annotate "line", 168
    set_addr $I10, alt299_1
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
.annotate "line", 169
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_302_fail
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  alt301_0:
    set_addr $I10, alt301_1
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx literal  "while"
    add $I11, rx293_pos, 5
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 5
    ne $S10, "while", rx293_fail
    add rx293_pos, 5
    goto alt301_end
  alt301_1:
  # rx literal  "until"
    add $I11, rx293_pos, 5
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 5
    ne $S10, "until", rx293_fail
    add rx293_pos, 5
  alt301_end:
    set_addr $I10, rxcap_302_fail
    ($I12, $I11) = rx293_cur."!mark_peek"($I10)
    rx293_cur."!cursor_pos"($I11)
    ($P10) = rx293_cur."!cursor_start"()
    $P10."!cursor_pass"(rx293_pos, "")
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_302_done
  rxcap_302_fail:
    goto rx293_fail
  rxcap_302_done:
  # rx charclass s
    ge rx293_pos, rx293_eos, rx293_fail
    sub $I10, rx293_pos, rx293_off
    is_cclass $I11, 32, rx293_tgt, $I10
    unless $I11, rx293_fail
    inc rx293_pos
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."xblock"()
    unless $P10, rx293_fail
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx293_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
    goto alt299_end
  alt299_1:
.annotate "line", 170
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."pblock"()
    unless $P10, rx293_fail
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx293_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_308_fail
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  alt307_0:
    set_addr $I10, alt307_1
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx literal  "while"
    add $I11, rx293_pos, 5
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 5
    ne $S10, "while", rx293_fail
    add rx293_pos, 5
    goto alt307_end
  alt307_1:
  # rx literal  "until"
    add $I11, rx293_pos, 5
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 5
    ne $S10, "until", rx293_fail
    add rx293_pos, 5
  alt307_end:
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx293_cur."!mark_peek"($I10)
    rx293_cur."!cursor_pos"($I11)
    ($P10) = rx293_cur."!cursor_start"()
    $P10."!cursor_pass"(rx293_pos, "")
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx293_fail
  rxcap_308_done:
  # rx charclass s
    ge rx293_pos, rx293_eos, rx293_fail
    sub $I10, rx293_pos, rx293_off
    is_cclass $I11, 32, rx293_tgt, $I10
    unless $I11, rx293_fail
    inc rx293_pos
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."EXPR"()
    unless $P10, rx293_fail
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx293_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  alt299_end:
.annotate "line", 171
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
.annotate "line", 166
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "statement_control:sym<repeat>")
    rx293_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx293_pos)
    .return (rx293_cur)
  rx293_fail:
.annotate "line", 4
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    rx293_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx293_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("68_1261201519.6115") :method
.annotate "line", 4
    new $P295, "ResizablePMCArray"
    push $P295, "repeat"
    .return ($P295)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("69_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx313_tgt
    .local int rx313_pos
    .local int rx313_off
    .local int rx313_eos
    .local int rx313_rep
    .local pmc rx313_cur
    (rx313_cur, rx313_pos, rx313_tgt) = self."!cursor_start"()
    rx313_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx313_cur
    .local pmc match
    .lex "$/", match
    length rx313_eos, rx313_tgt
    set rx313_off, 0
    lt rx313_pos, 2, rx313_start
    sub rx313_off, rx313_pos, 1
    substr rx313_tgt, rx313_tgt, rx313_off
  rx313_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan316_done
    goto rxscan316_scan
  rxscan316_loop:
    ($P10) = rx313_cur."from"()
    inc $P10
    set rx313_pos, $P10
    ge rx313_pos, rx313_eos, rxscan316_done
  rxscan316_scan:
    set_addr $I10, rxscan316_loop
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  rxscan316_done:
.annotate "line", 175
  # rx subcapture "sym"
    set_addr $I10, rxcap_317_fail
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  # rx literal  "for"
    add $I11, rx313_pos, 3
    gt $I11, rx313_eos, rx313_fail
    sub $I11, rx313_pos, rx313_off
    substr $S10, rx313_tgt, $I11, 3
    ne $S10, "for", rx313_fail
    add rx313_pos, 3
    set_addr $I10, rxcap_317_fail
    ($I12, $I11) = rx313_cur."!mark_peek"($I10)
    rx313_cur."!cursor_pos"($I11)
    ($P10) = rx313_cur."!cursor_start"()
    $P10."!cursor_pass"(rx313_pos, "")
    rx313_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_317_done
  rxcap_317_fail:
    goto rx313_fail
  rxcap_317_done:
  # rx charclass s
    ge rx313_pos, rx313_eos, rx313_fail
    sub $I10, rx313_pos, rx313_off
    is_cclass $I11, 32, rx313_tgt, $I10
    unless $I11, rx313_fail
    inc rx313_pos
  # rx subrule "ws" subtype=method negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."ws"()
    unless $P10, rx313_fail
    rx313_pos = $P10."pos"()
.annotate "line", 176
  # rx subrule "xblock" subtype=capture negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."xblock"()
    unless $P10, rx313_fail
    rx313_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx313_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."ws"()
    unless $P10, rx313_fail
    rx313_pos = $P10."pos"()
.annotate "line", 174
  # rx pass
    rx313_cur."!cursor_pass"(rx313_pos, "statement_control:sym<for>")
    rx313_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx313_pos)
    .return (rx313_cur)
  rx313_fail:
.annotate "line", 4
    (rx313_rep, rx313_pos, $I10, $P10) = rx313_cur."!mark_fail"(0)
    lt rx313_pos, -1, rx313_done
    eq rx313_pos, -1, rx313_fail
    jump $I10
  rx313_done:
    rx313_cur."!cursor_fail"()
    rx313_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx313_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("70_1261201519.6115") :method
.annotate "line", 4
    new $P315, "ResizablePMCArray"
    push $P315, "for"
    .return ($P315)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CATCH>"  :subid("71_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx321_tgt
    .local int rx321_pos
    .local int rx321_off
    .local int rx321_eos
    .local int rx321_rep
    .local pmc rx321_cur
    (rx321_cur, rx321_pos, rx321_tgt) = self."!cursor_start"()
    rx321_cur."!cursor_debug"("START ", "statement_control:sym<CATCH>")
    .lex unicode:"$\x{a2}", rx321_cur
    .local pmc match
    .lex "$/", match
    length rx321_eos, rx321_tgt
    set rx321_off, 0
    lt rx321_pos, 2, rx321_start
    sub rx321_off, rx321_pos, 1
    substr rx321_tgt, rx321_tgt, rx321_off
  rx321_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan324_done
    goto rxscan324_scan
  rxscan324_loop:
    ($P10) = rx321_cur."from"()
    inc $P10
    set rx321_pos, $P10
    ge rx321_pos, rx321_eos, rxscan324_done
  rxscan324_scan:
    set_addr $I10, rxscan324_loop
    rx321_cur."!mark_push"(0, rx321_pos, $I10)
  rxscan324_done:
.annotate "line", 180
  # rx subcapture "sym"
    set_addr $I10, rxcap_325_fail
    rx321_cur."!mark_push"(0, rx321_pos, $I10)
  # rx literal  "CATCH"
    add $I11, rx321_pos, 5
    gt $I11, rx321_eos, rx321_fail
    sub $I11, rx321_pos, rx321_off
    substr $S10, rx321_tgt, $I11, 5
    ne $S10, "CATCH", rx321_fail
    add rx321_pos, 5
    set_addr $I10, rxcap_325_fail
    ($I12, $I11) = rx321_cur."!mark_peek"($I10)
    rx321_cur."!cursor_pos"($I11)
    ($P10) = rx321_cur."!cursor_start"()
    $P10."!cursor_pass"(rx321_pos, "")
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_325_done
  rxcap_325_fail:
    goto rx321_fail
  rxcap_325_done:
  # rx charclass s
    ge rx321_pos, rx321_eos, rx321_fail
    sub $I10, rx321_pos, rx321_off
    is_cclass $I11, 32, rx321_tgt, $I10
    unless $I11, rx321_fail
    inc rx321_pos
  # rx subrule "ws" subtype=method negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."ws"()
    unless $P10, rx321_fail
    rx321_pos = $P10."pos"()
.annotate "line", 181
  # rx subrule "block" subtype=capture negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."block"()
    unless $P10, rx321_fail
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx321_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."ws"()
    unless $P10, rx321_fail
    rx321_pos = $P10."pos"()
.annotate "line", 179
  # rx pass
    rx321_cur."!cursor_pass"(rx321_pos, "statement_control:sym<CATCH>")
    rx321_cur."!cursor_debug"("PASS  ", "statement_control:sym<CATCH>", " at pos=", rx321_pos)
    .return (rx321_cur)
  rx321_fail:
.annotate "line", 4
    (rx321_rep, rx321_pos, $I10, $P10) = rx321_cur."!mark_fail"(0)
    lt rx321_pos, -1, rx321_done
    eq rx321_pos, -1, rx321_fail
    jump $I10
  rx321_done:
    rx321_cur."!cursor_fail"()
    rx321_cur."!cursor_debug"("FAIL  ", "statement_control:sym<CATCH>")
    .return (rx321_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CATCH>"  :subid("72_1261201519.6115") :method
.annotate "line", 4
    new $P323, "ResizablePMCArray"
    push $P323, "CATCH"
    .return ($P323)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CONTROL>"  :subid("73_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    (rx329_cur, rx329_pos, rx329_tgt) = self."!cursor_start"()
    rx329_cur."!cursor_debug"("START ", "statement_control:sym<CONTROL>")
    .lex unicode:"$\x{a2}", rx329_cur
    .local pmc match
    .lex "$/", match
    length rx329_eos, rx329_tgt
    set rx329_off, 0
    lt rx329_pos, 2, rx329_start
    sub rx329_off, rx329_pos, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
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
.annotate "line", 185
  # rx subcapture "sym"
    set_addr $I10, rxcap_333_fail
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  # rx literal  "CONTROL"
    add $I11, rx329_pos, 7
    gt $I11, rx329_eos, rx329_fail
    sub $I11, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I11, 7
    ne $S10, "CONTROL", rx329_fail
    add rx329_pos, 7
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
.annotate "line", 186
  # rx subrule "block" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."block"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx329_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
.annotate "line", 184
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "statement_control:sym<CONTROL>")
    rx329_cur."!cursor_debug"("PASS  ", "statement_control:sym<CONTROL>", " at pos=", rx329_pos)
    .return (rx329_cur)
  rx329_fail:
.annotate "line", 4
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    rx329_cur."!cursor_debug"("FAIL  ", "statement_control:sym<CONTROL>")
    .return (rx329_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CONTROL>"  :subid("74_1261201519.6115") :method
.annotate "line", 4
    new $P331, "ResizablePMCArray"
    push $P331, "CONTROL"
    .return ($P331)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("75_1261201519.6115") :method
.annotate "line", 189
    $P337 = self."!protoregex"("statement_prefix")
    .return ($P337)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("76_1261201519.6115") :method
.annotate "line", 189
    $P339 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P339)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("77_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx341_tgt
    .local int rx341_pos
    .local int rx341_off
    .local int rx341_eos
    .local int rx341_rep
    .local pmc rx341_cur
    (rx341_cur, rx341_pos, rx341_tgt) = self."!cursor_start"()
    rx341_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx341_cur
    .local pmc match
    .lex "$/", match
    length rx341_eos, rx341_tgt
    set rx341_off, 0
    lt rx341_pos, 2, rx341_start
    sub rx341_off, rx341_pos, 1
    substr rx341_tgt, rx341_tgt, rx341_off
  rx341_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan345_done
    goto rxscan345_scan
  rxscan345_loop:
    ($P10) = rx341_cur."from"()
    inc $P10
    set rx341_pos, $P10
    ge rx341_pos, rx341_eos, rxscan345_done
  rxscan345_scan:
    set_addr $I10, rxscan345_loop
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  rxscan345_done:
.annotate "line", 190
  # rx subcapture "sym"
    set_addr $I10, rxcap_346_fail
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx341_pos, 4
    gt $I11, rx341_eos, rx341_fail
    sub $I11, rx341_pos, rx341_off
    substr $S10, rx341_tgt, $I11, 4
    ne $S10, "INIT", rx341_fail
    add rx341_pos, 4
    set_addr $I10, rxcap_346_fail
    ($I12, $I11) = rx341_cur."!mark_peek"($I10)
    rx341_cur."!cursor_pos"($I11)
    ($P10) = rx341_cur."!cursor_start"()
    $P10."!cursor_pass"(rx341_pos, "")
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_346_done
  rxcap_346_fail:
    goto rx341_fail
  rxcap_346_done:
  # rx subrule "blorst" subtype=capture negate=
    rx341_cur."!cursor_pos"(rx341_pos)
    $P10 = rx341_cur."blorst"()
    unless $P10, rx341_fail
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx341_pos = $P10."pos"()
  # rx pass
    rx341_cur."!cursor_pass"(rx341_pos, "statement_prefix:sym<INIT>")
    rx341_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx341_pos)
    .return (rx341_cur)
  rx341_fail:
.annotate "line", 4
    (rx341_rep, rx341_pos, $I10, $P10) = rx341_cur."!mark_fail"(0)
    lt rx341_pos, -1, rx341_done
    eq rx341_pos, -1, rx341_fail
    jump $I10
  rx341_done:
    rx341_cur."!cursor_fail"()
    rx341_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx341_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("78_1261201519.6115") :method
.annotate "line", 4
    $P343 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P344, "ResizablePMCArray"
    push $P344, $P343
    .return ($P344)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<try>"  :subid("79_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx348_tgt
    .local int rx348_pos
    .local int rx348_off
    .local int rx348_eos
    .local int rx348_rep
    .local pmc rx348_cur
    (rx348_cur, rx348_pos, rx348_tgt) = self."!cursor_start"()
    rx348_cur."!cursor_debug"("START ", "statement_prefix:sym<try>")
    .lex unicode:"$\x{a2}", rx348_cur
    .local pmc match
    .lex "$/", match
    length rx348_eos, rx348_tgt
    set rx348_off, 0
    lt rx348_pos, 2, rx348_start
    sub rx348_off, rx348_pos, 1
    substr rx348_tgt, rx348_tgt, rx348_off
  rx348_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan352_done
    goto rxscan352_scan
  rxscan352_loop:
    ($P10) = rx348_cur."from"()
    inc $P10
    set rx348_pos, $P10
    ge rx348_pos, rx348_eos, rxscan352_done
  rxscan352_scan:
    set_addr $I10, rxscan352_loop
    rx348_cur."!mark_push"(0, rx348_pos, $I10)
  rxscan352_done:
.annotate "line", 193
  # rx subcapture "sym"
    set_addr $I10, rxcap_353_fail
    rx348_cur."!mark_push"(0, rx348_pos, $I10)
  # rx literal  "try"
    add $I11, rx348_pos, 3
    gt $I11, rx348_eos, rx348_fail
    sub $I11, rx348_pos, rx348_off
    substr $S10, rx348_tgt, $I11, 3
    ne $S10, "try", rx348_fail
    add rx348_pos, 3
    set_addr $I10, rxcap_353_fail
    ($I12, $I11) = rx348_cur."!mark_peek"($I10)
    rx348_cur."!cursor_pos"($I11)
    ($P10) = rx348_cur."!cursor_start"()
    $P10."!cursor_pass"(rx348_pos, "")
    rx348_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_353_done
  rxcap_353_fail:
    goto rx348_fail
  rxcap_353_done:
.annotate "line", 194
  # rx subrule "blorst" subtype=capture negate=
    rx348_cur."!cursor_pos"(rx348_pos)
    $P10 = rx348_cur."blorst"()
    unless $P10, rx348_fail
    rx348_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx348_pos = $P10."pos"()
.annotate "line", 192
  # rx pass
    rx348_cur."!cursor_pass"(rx348_pos, "statement_prefix:sym<try>")
    rx348_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<try>", " at pos=", rx348_pos)
    .return (rx348_cur)
  rx348_fail:
.annotate "line", 4
    (rx348_rep, rx348_pos, $I10, $P10) = rx348_cur."!mark_fail"(0)
    lt rx348_pos, -1, rx348_done
    eq rx348_pos, -1, rx348_fail
    jump $I10
  rx348_done:
    rx348_cur."!cursor_fail"()
    rx348_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<try>")
    .return (rx348_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<try>"  :subid("80_1261201519.6115") :method
.annotate "line", 4
    $P350 = self."!PREFIX__!subrule"("blorst", "try")
    new $P351, "ResizablePMCArray"
    push $P351, $P350
    .return ($P351)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("81_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    (rx355_cur, rx355_pos, rx355_tgt) = self."!cursor_start"()
    rx355_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx355_cur
    .local pmc match
    .lex "$/", match
    length rx355_eos, rx355_tgt
    set rx355_off, 0
    lt rx355_pos, 2, rx355_start
    sub rx355_off, rx355_pos, 1
    substr rx355_tgt, rx355_tgt, rx355_off
  rx355_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan358_done
    goto rxscan358_scan
  rxscan358_loop:
    ($P10) = rx355_cur."from"()
    inc $P10
    set rx355_pos, $P10
    ge rx355_pos, rx355_eos, rxscan358_done
  rxscan358_scan:
    set_addr $I10, rxscan358_loop
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  rxscan358_done:
.annotate "line", 198
  # rx charclass s
    ge rx355_pos, rx355_eos, rx355_fail
    sub $I10, rx355_pos, rx355_off
    is_cclass $I11, 32, rx355_tgt, $I10
    unless $I11, rx355_fail
    inc rx355_pos
  # rx subrule "ws" subtype=method negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."ws"()
    unless $P10, rx355_fail
    rx355_pos = $P10."pos"()
  alt359_0:
    set_addr $I10, alt359_1
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx355_pos, rx355_eos, rx355_fail
    sub $I10, rx355_pos, rx355_off
    substr $S10, rx355_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx355_fail
  # rx subrule "block" subtype=capture negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."block"()
    unless $P10, rx355_fail
    rx355_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx355_pos = $P10."pos"()
    goto alt359_end
  alt359_1:
  # rx subrule "statement" subtype=capture negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."statement"()
    unless $P10, rx355_fail
    rx355_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx355_pos = $P10."pos"()
  alt359_end:
.annotate "line", 197
  # rx pass
    rx355_cur."!cursor_pass"(rx355_pos, "blorst")
    rx355_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx355_pos)
    .return (rx355_cur)
  rx355_fail:
.annotate "line", 4
    (rx355_rep, rx355_pos, $I10, $P10) = rx355_cur."!mark_fail"(0)
    lt rx355_pos, -1, rx355_done
    eq rx355_pos, -1, rx355_fail
    jump $I10
  rx355_done:
    rx355_cur."!cursor_fail"()
    rx355_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx355_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("82_1261201519.6115") :method
.annotate "line", 4
    new $P357, "ResizablePMCArray"
    push $P357, ""
    .return ($P357)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond"  :subid("83_1261201519.6115") :method
.annotate "line", 203
    $P361 = self."!protoregex"("statement_mod_cond")
    .return ($P361)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond"  :subid("84_1261201519.6115") :method
.annotate "line", 203
    $P363 = self."!PREFIX__!protoregex"("statement_mod_cond")
    .return ($P363)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<if>"  :subid("85_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx365_tgt
    .local int rx365_pos
    .local int rx365_off
    .local int rx365_eos
    .local int rx365_rep
    .local pmc rx365_cur
    (rx365_cur, rx365_pos, rx365_tgt) = self."!cursor_start"()
    rx365_cur."!cursor_debug"("START ", "statement_mod_cond:sym<if>")
    .lex unicode:"$\x{a2}", rx365_cur
    .local pmc match
    .lex "$/", match
    length rx365_eos, rx365_tgt
    set rx365_off, 0
    lt rx365_pos, 2, rx365_start
    sub rx365_off, rx365_pos, 1
    substr rx365_tgt, rx365_tgt, rx365_off
  rx365_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan368_done
    goto rxscan368_scan
  rxscan368_loop:
    ($P10) = rx365_cur."from"()
    inc $P10
    set rx365_pos, $P10
    ge rx365_pos, rx365_eos, rxscan368_done
  rxscan368_scan:
    set_addr $I10, rxscan368_loop
    rx365_cur."!mark_push"(0, rx365_pos, $I10)
  rxscan368_done:
.annotate "line", 205
  # rx subcapture "sym"
    set_addr $I10, rxcap_369_fail
    rx365_cur."!mark_push"(0, rx365_pos, $I10)
  # rx literal  "if"
    add $I11, rx365_pos, 2
    gt $I11, rx365_eos, rx365_fail
    sub $I11, rx365_pos, rx365_off
    substr $S10, rx365_tgt, $I11, 2
    ne $S10, "if", rx365_fail
    add rx365_pos, 2
    set_addr $I10, rxcap_369_fail
    ($I12, $I11) = rx365_cur."!mark_peek"($I10)
    rx365_cur."!cursor_pos"($I11)
    ($P10) = rx365_cur."!cursor_start"()
    $P10."!cursor_pass"(rx365_pos, "")
    rx365_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_369_done
  rxcap_369_fail:
    goto rx365_fail
  rxcap_369_done:
  # rx subrule "ws" subtype=method negate=
    rx365_cur."!cursor_pos"(rx365_pos)
    $P10 = rx365_cur."ws"()
    unless $P10, rx365_fail
    rx365_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx365_cur."!cursor_pos"(rx365_pos)
    $P10 = rx365_cur."EXPR"()
    unless $P10, rx365_fail
    rx365_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx365_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx365_cur."!cursor_pos"(rx365_pos)
    $P10 = rx365_cur."ws"()
    unless $P10, rx365_fail
    rx365_pos = $P10."pos"()
  # rx pass
    rx365_cur."!cursor_pass"(rx365_pos, "statement_mod_cond:sym<if>")
    rx365_cur."!cursor_debug"("PASS  ", "statement_mod_cond:sym<if>", " at pos=", rx365_pos)
    .return (rx365_cur)
  rx365_fail:
.annotate "line", 4
    (rx365_rep, rx365_pos, $I10, $P10) = rx365_cur."!mark_fail"(0)
    lt rx365_pos, -1, rx365_done
    eq rx365_pos, -1, rx365_fail
    jump $I10
  rx365_done:
    rx365_cur."!cursor_fail"()
    rx365_cur."!cursor_debug"("FAIL  ", "statement_mod_cond:sym<if>")
    .return (rx365_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<if>"  :subid("86_1261201519.6115") :method
.annotate "line", 4
    new $P367, "ResizablePMCArray"
    push $P367, "if"
    .return ($P367)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<unless>"  :subid("87_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx373_tgt
    .local int rx373_pos
    .local int rx373_off
    .local int rx373_eos
    .local int rx373_rep
    .local pmc rx373_cur
    (rx373_cur, rx373_pos, rx373_tgt) = self."!cursor_start"()
    rx373_cur."!cursor_debug"("START ", "statement_mod_cond:sym<unless>")
    .lex unicode:"$\x{a2}", rx373_cur
    .local pmc match
    .lex "$/", match
    length rx373_eos, rx373_tgt
    set rx373_off, 0
    lt rx373_pos, 2, rx373_start
    sub rx373_off, rx373_pos, 1
    substr rx373_tgt, rx373_tgt, rx373_off
  rx373_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan376_done
    goto rxscan376_scan
  rxscan376_loop:
    ($P10) = rx373_cur."from"()
    inc $P10
    set rx373_pos, $P10
    ge rx373_pos, rx373_eos, rxscan376_done
  rxscan376_scan:
    set_addr $I10, rxscan376_loop
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  rxscan376_done:
.annotate "line", 206
  # rx subcapture "sym"
    set_addr $I10, rxcap_377_fail
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  # rx literal  "unless"
    add $I11, rx373_pos, 6
    gt $I11, rx373_eos, rx373_fail
    sub $I11, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I11, 6
    ne $S10, "unless", rx373_fail
    add rx373_pos, 6
    set_addr $I10, rxcap_377_fail
    ($I12, $I11) = rx373_cur."!mark_peek"($I10)
    rx373_cur."!cursor_pos"($I11)
    ($P10) = rx373_cur."!cursor_start"()
    $P10."!cursor_pass"(rx373_pos, "")
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_377_done
  rxcap_377_fail:
    goto rx373_fail
  rxcap_377_done:
  # rx subrule "ws" subtype=method negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."ws"()
    unless $P10, rx373_fail
    rx373_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."EXPR"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx373_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."ws"()
    unless $P10, rx373_fail
    rx373_pos = $P10."pos"()
  # rx pass
    rx373_cur."!cursor_pass"(rx373_pos, "statement_mod_cond:sym<unless>")
    rx373_cur."!cursor_debug"("PASS  ", "statement_mod_cond:sym<unless>", " at pos=", rx373_pos)
    .return (rx373_cur)
  rx373_fail:
.annotate "line", 4
    (rx373_rep, rx373_pos, $I10, $P10) = rx373_cur."!mark_fail"(0)
    lt rx373_pos, -1, rx373_done
    eq rx373_pos, -1, rx373_fail
    jump $I10
  rx373_done:
    rx373_cur."!cursor_fail"()
    rx373_cur."!cursor_debug"("FAIL  ", "statement_mod_cond:sym<unless>")
    .return (rx373_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<unless>"  :subid("88_1261201519.6115") :method
.annotate "line", 4
    new $P375, "ResizablePMCArray"
    push $P375, "unless"
    .return ($P375)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop"  :subid("89_1261201519.6115") :method
.annotate "line", 208
    $P381 = self."!protoregex"("statement_mod_loop")
    .return ($P381)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop"  :subid("90_1261201519.6115") :method
.annotate "line", 208
    $P383 = self."!PREFIX__!protoregex"("statement_mod_loop")
    .return ($P383)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<while>"  :subid("91_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    (rx385_cur, rx385_pos, rx385_tgt) = self."!cursor_start"()
    rx385_cur."!cursor_debug"("START ", "statement_mod_loop:sym<while>")
    .lex unicode:"$\x{a2}", rx385_cur
    .local pmc match
    .lex "$/", match
    length rx385_eos, rx385_tgt
    set rx385_off, 0
    lt rx385_pos, 2, rx385_start
    sub rx385_off, rx385_pos, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan388_done
    goto rxscan388_scan
  rxscan388_loop:
    ($P10) = rx385_cur."from"()
    inc $P10
    set rx385_pos, $P10
    ge rx385_pos, rx385_eos, rxscan388_done
  rxscan388_scan:
    set_addr $I10, rxscan388_loop
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  rxscan388_done:
.annotate "line", 210
  # rx subcapture "sym"
    set_addr $I10, rxcap_389_fail
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  # rx literal  "while"
    add $I11, rx385_pos, 5
    gt $I11, rx385_eos, rx385_fail
    sub $I11, rx385_pos, rx385_off
    substr $S10, rx385_tgt, $I11, 5
    ne $S10, "while", rx385_fail
    add rx385_pos, 5
    set_addr $I10, rxcap_389_fail
    ($I12, $I11) = rx385_cur."!mark_peek"($I10)
    rx385_cur."!cursor_pos"($I11)
    ($P10) = rx385_cur."!cursor_start"()
    $P10."!cursor_pass"(rx385_pos, "")
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_389_done
  rxcap_389_fail:
    goto rx385_fail
  rxcap_389_done:
  # rx subrule "ws" subtype=method negate=
    rx385_cur."!cursor_pos"(rx385_pos)
    $P10 = rx385_cur."ws"()
    unless $P10, rx385_fail
    rx385_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx385_cur."!cursor_pos"(rx385_pos)
    $P10 = rx385_cur."EXPR"()
    unless $P10, rx385_fail
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx385_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx385_cur."!cursor_pos"(rx385_pos)
    $P10 = rx385_cur."ws"()
    unless $P10, rx385_fail
    rx385_pos = $P10."pos"()
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "statement_mod_loop:sym<while>")
    rx385_cur."!cursor_debug"("PASS  ", "statement_mod_loop:sym<while>", " at pos=", rx385_pos)
    .return (rx385_cur)
  rx385_fail:
.annotate "line", 4
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    rx385_cur."!cursor_debug"("FAIL  ", "statement_mod_loop:sym<while>")
    .return (rx385_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<while>"  :subid("92_1261201519.6115") :method
.annotate "line", 4
    new $P387, "ResizablePMCArray"
    push $P387, "while"
    .return ($P387)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<until>"  :subid("93_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    (rx393_cur, rx393_pos, rx393_tgt) = self."!cursor_start"()
    rx393_cur."!cursor_debug"("START ", "statement_mod_loop:sym<until>")
    .lex unicode:"$\x{a2}", rx393_cur
    .local pmc match
    .lex "$/", match
    length rx393_eos, rx393_tgt
    set rx393_off, 0
    lt rx393_pos, 2, rx393_start
    sub rx393_off, rx393_pos, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan396_done
    goto rxscan396_scan
  rxscan396_loop:
    ($P10) = rx393_cur."from"()
    inc $P10
    set rx393_pos, $P10
    ge rx393_pos, rx393_eos, rxscan396_done
  rxscan396_scan:
    set_addr $I10, rxscan396_loop
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  rxscan396_done:
.annotate "line", 211
  # rx subcapture "sym"
    set_addr $I10, rxcap_397_fail
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx literal  "until"
    add $I11, rx393_pos, 5
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 5
    ne $S10, "until", rx393_fail
    add rx393_pos, 5
    set_addr $I10, rxcap_397_fail
    ($I12, $I11) = rx393_cur."!mark_peek"($I10)
    rx393_cur."!cursor_pos"($I11)
    ($P10) = rx393_cur."!cursor_start"()
    $P10."!cursor_pass"(rx393_pos, "")
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_397_done
  rxcap_397_fail:
    goto rx393_fail
  rxcap_397_done:
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."EXPR"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx393_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "statement_mod_loop:sym<until>")
    rx393_cur."!cursor_debug"("PASS  ", "statement_mod_loop:sym<until>", " at pos=", rx393_pos)
    .return (rx393_cur)
  rx393_fail:
.annotate "line", 4
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    rx393_cur."!cursor_debug"("FAIL  ", "statement_mod_loop:sym<until>")
    .return (rx393_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<until>"  :subid("94_1261201519.6115") :method
.annotate "line", 4
    new $P395, "ResizablePMCArray"
    push $P395, "until"
    .return ($P395)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<fatarrow>"  :subid("95_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx401_tgt
    .local int rx401_pos
    .local int rx401_off
    .local int rx401_eos
    .local int rx401_rep
    .local pmc rx401_cur
    (rx401_cur, rx401_pos, rx401_tgt) = self."!cursor_start"()
    rx401_cur."!cursor_debug"("START ", "term:sym<fatarrow>")
    .lex unicode:"$\x{a2}", rx401_cur
    .local pmc match
    .lex "$/", match
    length rx401_eos, rx401_tgt
    set rx401_off, 0
    lt rx401_pos, 2, rx401_start
    sub rx401_off, rx401_pos, 1
    substr rx401_tgt, rx401_tgt, rx401_off
  rx401_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan405_done
    goto rxscan405_scan
  rxscan405_loop:
    ($P10) = rx401_cur."from"()
    inc $P10
    set rx401_pos, $P10
    ge rx401_pos, rx401_eos, rxscan405_done
  rxscan405_scan:
    set_addr $I10, rxscan405_loop
    rx401_cur."!mark_push"(0, rx401_pos, $I10)
  rxscan405_done:
.annotate "line", 215
  # rx subrule "fatarrow" subtype=capture negate=
    rx401_cur."!cursor_pos"(rx401_pos)
    $P10 = rx401_cur."fatarrow"()
    unless $P10, rx401_fail
    rx401_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("fatarrow")
    rx401_pos = $P10."pos"()
  # rx pass
    rx401_cur."!cursor_pass"(rx401_pos, "term:sym<fatarrow>")
    rx401_cur."!cursor_debug"("PASS  ", "term:sym<fatarrow>", " at pos=", rx401_pos)
    .return (rx401_cur)
  rx401_fail:
.annotate "line", 4
    (rx401_rep, rx401_pos, $I10, $P10) = rx401_cur."!mark_fail"(0)
    lt rx401_pos, -1, rx401_done
    eq rx401_pos, -1, rx401_fail
    jump $I10
  rx401_done:
    rx401_cur."!cursor_fail"()
    rx401_cur."!cursor_debug"("FAIL  ", "term:sym<fatarrow>")
    .return (rx401_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<fatarrow>"  :subid("96_1261201519.6115") :method
.annotate "line", 4
    $P403 = self."!PREFIX__!subrule"("fatarrow", "")
    new $P404, "ResizablePMCArray"
    push $P404, $P403
    .return ($P404)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("97_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx407_tgt
    .local int rx407_pos
    .local int rx407_off
    .local int rx407_eos
    .local int rx407_rep
    .local pmc rx407_cur
    (rx407_cur, rx407_pos, rx407_tgt) = self."!cursor_start"()
    rx407_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx407_cur
    .local pmc match
    .lex "$/", match
    length rx407_eos, rx407_tgt
    set rx407_off, 0
    lt rx407_pos, 2, rx407_start
    sub rx407_off, rx407_pos, 1
    substr rx407_tgt, rx407_tgt, rx407_off
  rx407_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan411_done
    goto rxscan411_scan
  rxscan411_loop:
    ($P10) = rx407_cur."from"()
    inc $P10
    set rx407_pos, $P10
    ge rx407_pos, rx407_eos, rxscan411_done
  rxscan411_scan:
    set_addr $I10, rxscan411_loop
    rx407_cur."!mark_push"(0, rx407_pos, $I10)
  rxscan411_done:
.annotate "line", 216
  # rx subrule "colonpair" subtype=capture negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."colonpair"()
    unless $P10, rx407_fail
    rx407_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx407_pos = $P10."pos"()
  # rx pass
    rx407_cur."!cursor_pass"(rx407_pos, "term:sym<colonpair>")
    rx407_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx407_pos)
    .return (rx407_cur)
  rx407_fail:
.annotate "line", 4
    (rx407_rep, rx407_pos, $I10, $P10) = rx407_cur."!mark_fail"(0)
    lt rx407_pos, -1, rx407_done
    eq rx407_pos, -1, rx407_fail
    jump $I10
  rx407_done:
    rx407_cur."!cursor_fail"()
    rx407_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx407_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("98_1261201519.6115") :method
.annotate "line", 4
    $P409 = self."!PREFIX__!subrule"("colonpair", "")
    new $P410, "ResizablePMCArray"
    push $P410, $P409
    .return ($P410)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("99_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx413_tgt
    .local int rx413_pos
    .local int rx413_off
    .local int rx413_eos
    .local int rx413_rep
    .local pmc rx413_cur
    (rx413_cur, rx413_pos, rx413_tgt) = self."!cursor_start"()
    rx413_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx413_cur
    .local pmc match
    .lex "$/", match
    length rx413_eos, rx413_tgt
    set rx413_off, 0
    lt rx413_pos, 2, rx413_start
    sub rx413_off, rx413_pos, 1
    substr rx413_tgt, rx413_tgt, rx413_off
  rx413_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan417_done
    goto rxscan417_scan
  rxscan417_loop:
    ($P10) = rx413_cur."from"()
    inc $P10
    set rx413_pos, $P10
    ge rx413_pos, rx413_eos, rxscan417_done
  rxscan417_scan:
    set_addr $I10, rxscan417_loop
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
  rxscan417_done:
.annotate "line", 217
  # rx subrule "variable" subtype=capture negate=
    rx413_cur."!cursor_pos"(rx413_pos)
    $P10 = rx413_cur."variable"()
    unless $P10, rx413_fail
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx413_pos = $P10."pos"()
  # rx pass
    rx413_cur."!cursor_pass"(rx413_pos, "term:sym<variable>")
    rx413_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx413_pos)
    .return (rx413_cur)
  rx413_fail:
.annotate "line", 4
    (rx413_rep, rx413_pos, $I10, $P10) = rx413_cur."!mark_fail"(0)
    lt rx413_pos, -1, rx413_done
    eq rx413_pos, -1, rx413_fail
    jump $I10
  rx413_done:
    rx413_cur."!cursor_fail"()
    rx413_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx413_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("100_1261201519.6115") :method
.annotate "line", 4
    $P415 = self."!PREFIX__!subrule"("variable", "")
    new $P416, "ResizablePMCArray"
    push $P416, $P415
    .return ($P416)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("101_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx419_tgt
    .local int rx419_pos
    .local int rx419_off
    .local int rx419_eos
    .local int rx419_rep
    .local pmc rx419_cur
    (rx419_cur, rx419_pos, rx419_tgt) = self."!cursor_start"()
    rx419_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx419_cur
    .local pmc match
    .lex "$/", match
    length rx419_eos, rx419_tgt
    set rx419_off, 0
    lt rx419_pos, 2, rx419_start
    sub rx419_off, rx419_pos, 1
    substr rx419_tgt, rx419_tgt, rx419_off
  rx419_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan423_done
    goto rxscan423_scan
  rxscan423_loop:
    ($P10) = rx419_cur."from"()
    inc $P10
    set rx419_pos, $P10
    ge rx419_pos, rx419_eos, rxscan423_done
  rxscan423_scan:
    set_addr $I10, rxscan423_loop
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
  rxscan423_done:
.annotate "line", 218
  # rx subrule "package_declarator" subtype=capture negate=
    rx419_cur."!cursor_pos"(rx419_pos)
    $P10 = rx419_cur."package_declarator"()
    unless $P10, rx419_fail
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx419_pos = $P10."pos"()
  # rx pass
    rx419_cur."!cursor_pass"(rx419_pos, "term:sym<package_declarator>")
    rx419_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx419_pos)
    .return (rx419_cur)
  rx419_fail:
.annotate "line", 4
    (rx419_rep, rx419_pos, $I10, $P10) = rx419_cur."!mark_fail"(0)
    lt rx419_pos, -1, rx419_done
    eq rx419_pos, -1, rx419_fail
    jump $I10
  rx419_done:
    rx419_cur."!cursor_fail"()
    rx419_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx419_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("102_1261201519.6115") :method
.annotate "line", 4
    $P421 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P422, "ResizablePMCArray"
    push $P422, $P421
    .return ($P422)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("103_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx425_tgt
    .local int rx425_pos
    .local int rx425_off
    .local int rx425_eos
    .local int rx425_rep
    .local pmc rx425_cur
    (rx425_cur, rx425_pos, rx425_tgt) = self."!cursor_start"()
    rx425_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx425_cur
    .local pmc match
    .lex "$/", match
    length rx425_eos, rx425_tgt
    set rx425_off, 0
    lt rx425_pos, 2, rx425_start
    sub rx425_off, rx425_pos, 1
    substr rx425_tgt, rx425_tgt, rx425_off
  rx425_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan429_done
    goto rxscan429_scan
  rxscan429_loop:
    ($P10) = rx425_cur."from"()
    inc $P10
    set rx425_pos, $P10
    ge rx425_pos, rx425_eos, rxscan429_done
  rxscan429_scan:
    set_addr $I10, rxscan429_loop
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  rxscan429_done:
.annotate "line", 219
  # rx subrule "scope_declarator" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."scope_declarator"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx425_pos = $P10."pos"()
  # rx pass
    rx425_cur."!cursor_pass"(rx425_pos, "term:sym<scope_declarator>")
    rx425_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx425_pos)
    .return (rx425_cur)
  rx425_fail:
.annotate "line", 4
    (rx425_rep, rx425_pos, $I10, $P10) = rx425_cur."!mark_fail"(0)
    lt rx425_pos, -1, rx425_done
    eq rx425_pos, -1, rx425_fail
    jump $I10
  rx425_done:
    rx425_cur."!cursor_fail"()
    rx425_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx425_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("104_1261201519.6115") :method
.annotate "line", 4
    $P427 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P428, "ResizablePMCArray"
    push $P428, $P427
    .return ($P428)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("105_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx431_tgt
    .local int rx431_pos
    .local int rx431_off
    .local int rx431_eos
    .local int rx431_rep
    .local pmc rx431_cur
    (rx431_cur, rx431_pos, rx431_tgt) = self."!cursor_start"()
    rx431_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx431_cur
    .local pmc match
    .lex "$/", match
    length rx431_eos, rx431_tgt
    set rx431_off, 0
    lt rx431_pos, 2, rx431_start
    sub rx431_off, rx431_pos, 1
    substr rx431_tgt, rx431_tgt, rx431_off
  rx431_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan435_done
    goto rxscan435_scan
  rxscan435_loop:
    ($P10) = rx431_cur."from"()
    inc $P10
    set rx431_pos, $P10
    ge rx431_pos, rx431_eos, rxscan435_done
  rxscan435_scan:
    set_addr $I10, rxscan435_loop
    rx431_cur."!mark_push"(0, rx431_pos, $I10)
  rxscan435_done:
.annotate "line", 220
  # rx subrule "routine_declarator" subtype=capture negate=
    rx431_cur."!cursor_pos"(rx431_pos)
    $P10 = rx431_cur."routine_declarator"()
    unless $P10, rx431_fail
    rx431_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx431_pos = $P10."pos"()
  # rx pass
    rx431_cur."!cursor_pass"(rx431_pos, "term:sym<routine_declarator>")
    rx431_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx431_pos)
    .return (rx431_cur)
  rx431_fail:
.annotate "line", 4
    (rx431_rep, rx431_pos, $I10, $P10) = rx431_cur."!mark_fail"(0)
    lt rx431_pos, -1, rx431_done
    eq rx431_pos, -1, rx431_fail
    jump $I10
  rx431_done:
    rx431_cur."!cursor_fail"()
    rx431_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx431_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("106_1261201519.6115") :method
.annotate "line", 4
    $P433 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P434, "ResizablePMCArray"
    push $P434, $P433
    .return ($P434)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("107_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx437_tgt
    .local int rx437_pos
    .local int rx437_off
    .local int rx437_eos
    .local int rx437_rep
    .local pmc rx437_cur
    (rx437_cur, rx437_pos, rx437_tgt) = self."!cursor_start"()
    rx437_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx437_cur
    .local pmc match
    .lex "$/", match
    length rx437_eos, rx437_tgt
    set rx437_off, 0
    lt rx437_pos, 2, rx437_start
    sub rx437_off, rx437_pos, 1
    substr rx437_tgt, rx437_tgt, rx437_off
  rx437_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan441_done
    goto rxscan441_scan
  rxscan441_loop:
    ($P10) = rx437_cur."from"()
    inc $P10
    set rx437_pos, $P10
    ge rx437_pos, rx437_eos, rxscan441_done
  rxscan441_scan:
    set_addr $I10, rxscan441_loop
    rx437_cur."!mark_push"(0, rx437_pos, $I10)
  rxscan441_done:
.annotate "line", 221
  # rx subrule "regex_declarator" subtype=capture negate=
    rx437_cur."!cursor_pos"(rx437_pos)
    $P10 = rx437_cur."regex_declarator"()
    unless $P10, rx437_fail
    rx437_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx437_pos = $P10."pos"()
  # rx pass
    rx437_cur."!cursor_pass"(rx437_pos, "term:sym<regex_declarator>")
    rx437_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx437_pos)
    .return (rx437_cur)
  rx437_fail:
.annotate "line", 4
    (rx437_rep, rx437_pos, $I10, $P10) = rx437_cur."!mark_fail"(0)
    lt rx437_pos, -1, rx437_done
    eq rx437_pos, -1, rx437_fail
    jump $I10
  rx437_done:
    rx437_cur."!cursor_fail"()
    rx437_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx437_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("108_1261201519.6115") :method
.annotate "line", 4
    $P439 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P440, "ResizablePMCArray"
    push $P440, $P439
    .return ($P440)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("109_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx443_tgt
    .local int rx443_pos
    .local int rx443_off
    .local int rx443_eos
    .local int rx443_rep
    .local pmc rx443_cur
    (rx443_cur, rx443_pos, rx443_tgt) = self."!cursor_start"()
    rx443_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx443_cur
    .local pmc match
    .lex "$/", match
    length rx443_eos, rx443_tgt
    set rx443_off, 0
    lt rx443_pos, 2, rx443_start
    sub rx443_off, rx443_pos, 1
    substr rx443_tgt, rx443_tgt, rx443_off
  rx443_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan447_done
    goto rxscan447_scan
  rxscan447_loop:
    ($P10) = rx443_cur."from"()
    inc $P10
    set rx443_pos, $P10
    ge rx443_pos, rx443_eos, rxscan447_done
  rxscan447_scan:
    set_addr $I10, rxscan447_loop
    rx443_cur."!mark_push"(0, rx443_pos, $I10)
  rxscan447_done:
.annotate "line", 222
  # rx subrule "statement_prefix" subtype=capture negate=
    rx443_cur."!cursor_pos"(rx443_pos)
    $P10 = rx443_cur."statement_prefix"()
    unless $P10, rx443_fail
    rx443_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx443_pos = $P10."pos"()
  # rx pass
    rx443_cur."!cursor_pass"(rx443_pos, "term:sym<statement_prefix>")
    rx443_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx443_pos)
    .return (rx443_cur)
  rx443_fail:
.annotate "line", 4
    (rx443_rep, rx443_pos, $I10, $P10) = rx443_cur."!mark_fail"(0)
    lt rx443_pos, -1, rx443_done
    eq rx443_pos, -1, rx443_fail
    jump $I10
  rx443_done:
    rx443_cur."!cursor_fail"()
    rx443_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx443_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("110_1261201519.6115") :method
.annotate "line", 4
    $P445 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P446, "ResizablePMCArray"
    push $P446, $P445
    .return ($P446)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<lambda>"  :subid("111_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx449_tgt
    .local int rx449_pos
    .local int rx449_off
    .local int rx449_eos
    .local int rx449_rep
    .local pmc rx449_cur
    (rx449_cur, rx449_pos, rx449_tgt) = self."!cursor_start"()
    rx449_cur."!cursor_debug"("START ", "term:sym<lambda>")
    .lex unicode:"$\x{a2}", rx449_cur
    .local pmc match
    .lex "$/", match
    length rx449_eos, rx449_tgt
    set rx449_off, 0
    lt rx449_pos, 2, rx449_start
    sub rx449_off, rx449_pos, 1
    substr rx449_tgt, rx449_tgt, rx449_off
  rx449_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan452_done
    goto rxscan452_scan
  rxscan452_loop:
    ($P10) = rx449_cur."from"()
    inc $P10
    set rx449_pos, $P10
    ge rx449_pos, rx449_eos, rxscan452_done
  rxscan452_scan:
    set_addr $I10, rxscan452_loop
    rx449_cur."!mark_push"(0, rx449_pos, $I10)
  rxscan452_done:
.annotate "line", 223
  # rx subrule "lambda" subtype=zerowidth negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    $P10 = rx449_cur."lambda"()
    unless $P10, rx449_fail
  # rx subrule "pblock" subtype=capture negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    $P10 = rx449_cur."pblock"()
    unless $P10, rx449_fail
    rx449_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx449_pos = $P10."pos"()
  # rx pass
    rx449_cur."!cursor_pass"(rx449_pos, "term:sym<lambda>")
    rx449_cur."!cursor_debug"("PASS  ", "term:sym<lambda>", " at pos=", rx449_pos)
    .return (rx449_cur)
  rx449_fail:
.annotate "line", 4
    (rx449_rep, rx449_pos, $I10, $P10) = rx449_cur."!mark_fail"(0)
    lt rx449_pos, -1, rx449_done
    eq rx449_pos, -1, rx449_fail
    jump $I10
  rx449_done:
    rx449_cur."!cursor_fail"()
    rx449_cur."!cursor_debug"("FAIL  ", "term:sym<lambda>")
    .return (rx449_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<lambda>"  :subid("112_1261201519.6115") :method
.annotate "line", 4
    new $P451, "ResizablePMCArray"
    push $P451, ""
    .return ($P451)
.end


.namespace ["NQP";"Grammar"]
.sub "fatarrow"  :subid("113_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx454_tgt
    .local int rx454_pos
    .local int rx454_off
    .local int rx454_eos
    .local int rx454_rep
    .local pmc rx454_cur
    (rx454_cur, rx454_pos, rx454_tgt) = self."!cursor_start"()
    rx454_cur."!cursor_debug"("START ", "fatarrow")
    .lex unicode:"$\x{a2}", rx454_cur
    .local pmc match
    .lex "$/", match
    length rx454_eos, rx454_tgt
    set rx454_off, 0
    lt rx454_pos, 2, rx454_start
    sub rx454_off, rx454_pos, 1
    substr rx454_tgt, rx454_tgt, rx454_off
  rx454_start:
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
.annotate "line", 226
  # rx subrule "identifier" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."identifier"()
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    rx454_pos = $P10."pos"()
  # rx rxquantr459 ** 0..*
    set_addr $I460, rxquantr459_done
    rx454_cur."!mark_push"(0, rx454_pos, $I460)
  rxquantr459_loop:
  # rx enumcharlist negate=0 
    ge rx454_pos, rx454_eos, rx454_fail
    sub $I10, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx454_fail
    inc rx454_pos
    (rx454_rep) = rx454_cur."!mark_commit"($I460)
    rx454_cur."!mark_push"(rx454_rep, rx454_pos, $I460)
    goto rxquantr459_loop
  rxquantr459_done:
  # rx literal  "=>"
    add $I11, rx454_pos, 2
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 2
    ne $S10, "=>", rx454_fail
    add rx454_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."EXPR"("i=")
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    rx454_pos = $P10."pos"()
.annotate "line", 225
  # rx pass
    rx454_cur."!cursor_pass"(rx454_pos, "fatarrow")
    rx454_cur."!cursor_debug"("PASS  ", "fatarrow", " at pos=", rx454_pos)
    .return (rx454_cur)
  rx454_fail:
.annotate "line", 4
    (rx454_rep, rx454_pos, $I10, $P10) = rx454_cur."!mark_fail"(0)
    lt rx454_pos, -1, rx454_done
    eq rx454_pos, -1, rx454_fail
    jump $I10
  rx454_done:
    rx454_cur."!cursor_fail"()
    rx454_cur."!cursor_debug"("FAIL  ", "fatarrow")
    .return (rx454_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__fatarrow"  :subid("114_1261201519.6115") :method
.annotate "line", 4
    $P456 = self."!PREFIX__!subrule"("key", "")
    new $P457, "ResizablePMCArray"
    push $P457, $P456
    .return ($P457)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("115_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx462_tgt
    .local int rx462_pos
    .local int rx462_off
    .local int rx462_eos
    .local int rx462_rep
    .local pmc rx462_cur
    (rx462_cur, rx462_pos, rx462_tgt) = self."!cursor_start"()
    rx462_cur."!cursor_debug"("START ", "colonpair")
    rx462_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx462_cur
    .local pmc match
    .lex "$/", match
    length rx462_eos, rx462_tgt
    set rx462_off, 0
    lt rx462_pos, 2, rx462_start
    sub rx462_off, rx462_pos, 1
    substr rx462_tgt, rx462_tgt, rx462_off
  rx462_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan468_done
    goto rxscan468_scan
  rxscan468_loop:
    ($P10) = rx462_cur."from"()
    inc $P10
    set rx462_pos, $P10
    ge rx462_pos, rx462_eos, rxscan468_done
  rxscan468_scan:
    set_addr $I10, rxscan468_loop
    rx462_cur."!mark_push"(0, rx462_pos, $I10)
  rxscan468_done:
.annotate "line", 230
  # rx literal  ":"
    add $I11, rx462_pos, 1
    gt $I11, rx462_eos, rx462_fail
    sub $I11, rx462_pos, rx462_off
    substr $S10, rx462_tgt, $I11, 1
    ne $S10, ":", rx462_fail
    add rx462_pos, 1
  alt469_0:
.annotate "line", 231
    set_addr $I10, alt469_1
    rx462_cur."!mark_push"(0, rx462_pos, $I10)
.annotate "line", 232
  # rx subcapture "not"
    set_addr $I10, rxcap_470_fail
    rx462_cur."!mark_push"(0, rx462_pos, $I10)
  # rx literal  "!"
    add $I11, rx462_pos, 1
    gt $I11, rx462_eos, rx462_fail
    sub $I11, rx462_pos, rx462_off
    substr $S10, rx462_tgt, $I11, 1
    ne $S10, "!", rx462_fail
    add rx462_pos, 1
    set_addr $I10, rxcap_470_fail
    ($I12, $I11) = rx462_cur."!mark_peek"($I10)
    rx462_cur."!cursor_pos"($I11)
    ($P10) = rx462_cur."!cursor_start"()
    $P10."!cursor_pass"(rx462_pos, "")
    rx462_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_470_done
  rxcap_470_fail:
    goto rx462_fail
  rxcap_470_done:
  # rx subrule "identifier" subtype=capture negate=
    rx462_cur."!cursor_pos"(rx462_pos)
    $P10 = rx462_cur."identifier"()
    unless $P10, rx462_fail
    rx462_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx462_pos = $P10."pos"()
    goto alt469_end
  alt469_1:
    set_addr $I10, alt469_2
    rx462_cur."!mark_push"(0, rx462_pos, $I10)
.annotate "line", 233
  # rx subrule "identifier" subtype=capture negate=
    rx462_cur."!cursor_pos"(rx462_pos)
    $P10 = rx462_cur."identifier"()
    unless $P10, rx462_fail
    rx462_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx462_pos = $P10."pos"()
  # rx rxquantr471 ** 0..1
    set_addr $I472, rxquantr471_done
    rx462_cur."!mark_push"(0, rx462_pos, $I472)
  rxquantr471_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx462_cur."!cursor_pos"(rx462_pos)
    $P10 = rx462_cur."circumfix"()
    unless $P10, rx462_fail
    rx462_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx462_pos = $P10."pos"()
    (rx462_rep) = rx462_cur."!mark_commit"($I472)
  rxquantr471_done:
    goto alt469_end
  alt469_2:
.annotate "line", 234
  # rx subrule "circumfix" subtype=capture negate=
    rx462_cur."!cursor_pos"(rx462_pos)
    $P10 = rx462_cur."circumfix"()
    unless $P10, rx462_fail
    rx462_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx462_pos = $P10."pos"()
  alt469_end:
.annotate "line", 229
  # rx pass
    rx462_cur."!cursor_pass"(rx462_pos, "colonpair")
    rx462_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx462_pos)
    .return (rx462_cur)
  rx462_fail:
.annotate "line", 4
    (rx462_rep, rx462_pos, $I10, $P10) = rx462_cur."!mark_fail"(0)
    lt rx462_pos, -1, rx462_done
    eq rx462_pos, -1, rx462_fail
    jump $I10
  rx462_done:
    rx462_cur."!cursor_fail"()
    rx462_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx462_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("116_1261201519.6115") :method
.annotate "line", 4
    $P464 = self."!PREFIX__!subrule"("circumfix", ":")
    $P465 = self."!PREFIX__!subrule"("identifier", ":")
    $P466 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P467, "ResizablePMCArray"
    push $P467, $P464
    push $P467, $P465
    push $P467, $P466
    .return ($P467)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("117_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx474_tgt
    .local int rx474_pos
    .local int rx474_off
    .local int rx474_eos
    .local int rx474_rep
    .local pmc rx474_cur
    (rx474_cur, rx474_pos, rx474_tgt) = self."!cursor_start"()
    rx474_cur."!cursor_debug"("START ", "variable")
    rx474_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx474_cur
    .local pmc match
    .lex "$/", match
    length rx474_eos, rx474_tgt
    set rx474_off, 0
    lt rx474_pos, 2, rx474_start
    sub rx474_off, rx474_pos, 1
    substr rx474_tgt, rx474_tgt, rx474_off
  rx474_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan479_done
    goto rxscan479_scan
  rxscan479_loop:
    ($P10) = rx474_cur."from"()
    inc $P10
    set rx474_pos, $P10
    ge rx474_pos, rx474_eos, rxscan479_done
  rxscan479_scan:
    set_addr $I10, rxscan479_loop
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  rxscan479_done:
  alt480_0:
.annotate "line", 238
    set_addr $I10, alt480_1
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
.annotate "line", 239
  # rx subrule "sigil" subtype=capture negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."sigil"()
    unless $P10, rx474_fail
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx474_pos = $P10."pos"()
  # rx rxquantr481 ** 0..1
    set_addr $I482, rxquantr481_done
    rx474_cur."!mark_push"(0, rx474_pos, $I482)
  rxquantr481_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."twigil"()
    unless $P10, rx474_fail
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx474_pos = $P10."pos"()
    (rx474_rep) = rx474_cur."!mark_commit"($I482)
  rxquantr481_done:
  # rx subrule "name" subtype=capture negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."name"()
    unless $P10, rx474_fail
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx474_pos = $P10."pos"()
    goto alt480_end
  alt480_1:
    set_addr $I10, alt480_2
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
.annotate "line", 240
  # rx subrule "sigil" subtype=capture negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."sigil"()
    unless $P10, rx474_fail
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx474_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx474_pos, rx474_eos, rx474_fail
    sub $I10, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx474_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."postcircumfix"()
    unless $P10, rx474_fail
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx474_pos = $P10."pos"()
    goto alt480_end
  alt480_2:
.annotate "line", 241
  # rx subcapture "sigil"
    set_addr $I10, rxcap_483_fail
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  # rx literal  "$"
    add $I11, rx474_pos, 1
    gt $I11, rx474_eos, rx474_fail
    sub $I11, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I11, 1
    ne $S10, "$", rx474_fail
    add rx474_pos, 1
    set_addr $I10, rxcap_483_fail
    ($I12, $I11) = rx474_cur."!mark_peek"($I10)
    rx474_cur."!cursor_pos"($I11)
    ($P10) = rx474_cur."!cursor_start"()
    $P10."!cursor_pass"(rx474_pos, "")
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_483_done
  rxcap_483_fail:
    goto rx474_fail
  rxcap_483_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_484_fail
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx474_pos, rx474_eos, rx474_fail
    sub $I10, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx474_fail
    inc rx474_pos
    set_addr $I10, rxcap_484_fail
    ($I12, $I11) = rx474_cur."!mark_peek"($I10)
    rx474_cur."!cursor_pos"($I11)
    ($P10) = rx474_cur."!cursor_start"()
    $P10."!cursor_pass"(rx474_pos, "")
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_484_done
  rxcap_484_fail:
    goto rx474_fail
  rxcap_484_done:
  alt480_end:
.annotate "line", 238
  # rx pass
    rx474_cur."!cursor_pass"(rx474_pos, "variable")
    rx474_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx474_pos)
    .return (rx474_cur)
  rx474_fail:
.annotate "line", 4
    (rx474_rep, rx474_pos, $I10, $P10) = rx474_cur."!mark_fail"(0)
    lt rx474_pos, -1, rx474_done
    eq rx474_pos, -1, rx474_fail
    jump $I10
  rx474_done:
    rx474_cur."!cursor_fail"()
    rx474_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx474_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("118_1261201519.6115") :method
.annotate "line", 4
    $P476 = self."!PREFIX__!subrule"("sigil", "")
    $P477 = self."!PREFIX__!subrule"("sigil", "")
    new $P478, "ResizablePMCArray"
    push $P478, "$!"
    push $P478, "$_"
    push $P478, "$/"
    push $P478, $P476
    push $P478, $P477
    .return ($P478)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("119_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx486_tgt
    .local int rx486_pos
    .local int rx486_off
    .local int rx486_eos
    .local int rx486_rep
    .local pmc rx486_cur
    (rx486_cur, rx486_pos, rx486_tgt) = self."!cursor_start"()
    rx486_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx486_cur
    .local pmc match
    .lex "$/", match
    length rx486_eos, rx486_tgt
    set rx486_off, 0
    lt rx486_pos, 2, rx486_start
    sub rx486_off, rx486_pos, 1
    substr rx486_tgt, rx486_tgt, rx486_off
  rx486_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan489_done
    goto rxscan489_scan
  rxscan489_loop:
    ($P10) = rx486_cur."from"()
    inc $P10
    set rx486_pos, $P10
    ge rx486_pos, rx486_eos, rxscan489_done
  rxscan489_scan:
    set_addr $I10, rxscan489_loop
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  rxscan489_done:
.annotate "line", 244
  # rx enumcharlist negate=0 
    ge rx486_pos, rx486_eos, rx486_fail
    sub $I10, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx486_fail
    inc rx486_pos
  # rx pass
    rx486_cur."!cursor_pass"(rx486_pos, "sigil")
    rx486_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx486_pos)
    .return (rx486_cur)
  rx486_fail:
.annotate "line", 4
    (rx486_rep, rx486_pos, $I10, $P10) = rx486_cur."!mark_fail"(0)
    lt rx486_pos, -1, rx486_done
    eq rx486_pos, -1, rx486_fail
    jump $I10
  rx486_done:
    rx486_cur."!cursor_fail"()
    rx486_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx486_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("120_1261201519.6115") :method
.annotate "line", 4
    new $P488, "ResizablePMCArray"
    push $P488, "&"
    push $P488, "%"
    push $P488, "@"
    push $P488, "$"
    .return ($P488)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("121_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx491_tgt
    .local int rx491_pos
    .local int rx491_off
    .local int rx491_eos
    .local int rx491_rep
    .local pmc rx491_cur
    (rx491_cur, rx491_pos, rx491_tgt) = self."!cursor_start"()
    rx491_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx491_cur
    .local pmc match
    .lex "$/", match
    length rx491_eos, rx491_tgt
    set rx491_off, 0
    lt rx491_pos, 2, rx491_start
    sub rx491_off, rx491_pos, 1
    substr rx491_tgt, rx491_tgt, rx491_off
  rx491_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan494_done
    goto rxscan494_scan
  rxscan494_loop:
    ($P10) = rx491_cur."from"()
    inc $P10
    set rx491_pos, $P10
    ge rx491_pos, rx491_eos, rxscan494_done
  rxscan494_scan:
    set_addr $I10, rxscan494_loop
    rx491_cur."!mark_push"(0, rx491_pos, $I10)
  rxscan494_done:
.annotate "line", 246
  # rx enumcharlist negate=0 
    ge rx491_pos, rx491_eos, rx491_fail
    sub $I10, rx491_pos, rx491_off
    substr $S10, rx491_tgt, $I10, 1
    index $I11, "*!?", $S10
    lt $I11, 0, rx491_fail
    inc rx491_pos
  # rx pass
    rx491_cur."!cursor_pass"(rx491_pos, "twigil")
    rx491_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx491_pos)
    .return (rx491_cur)
  rx491_fail:
.annotate "line", 4
    (rx491_rep, rx491_pos, $I10, $P10) = rx491_cur."!mark_fail"(0)
    lt rx491_pos, -1, rx491_done
    eq rx491_pos, -1, rx491_fail
    jump $I10
  rx491_done:
    rx491_cur."!cursor_fail"()
    rx491_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx491_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("122_1261201519.6115") :method
.annotate "line", 4
    new $P493, "ResizablePMCArray"
    push $P493, "?"
    push $P493, "!"
    push $P493, "*"
    .return ($P493)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("123_1261201519.6115") :method
.annotate "line", 248
    $P496 = self."!protoregex"("package_declarator")
    .return ($P496)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("124_1261201519.6115") :method
.annotate "line", 248
    $P498 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P498)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("125_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx500_tgt
    .local int rx500_pos
    .local int rx500_off
    .local int rx500_eos
    .local int rx500_rep
    .local pmc rx500_cur
    (rx500_cur, rx500_pos, rx500_tgt) = self."!cursor_start"()
    rx500_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx500_cur
    .local pmc match
    .lex "$/", match
    length rx500_eos, rx500_tgt
    set rx500_off, 0
    lt rx500_pos, 2, rx500_start
    sub rx500_off, rx500_pos, 1
    substr rx500_tgt, rx500_tgt, rx500_off
  rx500_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan504_done
    goto rxscan504_scan
  rxscan504_loop:
    ($P10) = rx500_cur."from"()
    inc $P10
    set rx500_pos, $P10
    ge rx500_pos, rx500_eos, rxscan504_done
  rxscan504_scan:
    set_addr $I10, rxscan504_loop
    rx500_cur."!mark_push"(0, rx500_pos, $I10)
  rxscan504_done:
.annotate "line", 249
  # rx subcapture "sym"
    set_addr $I10, rxcap_505_fail
    rx500_cur."!mark_push"(0, rx500_pos, $I10)
  # rx literal  "module"
    add $I11, rx500_pos, 6
    gt $I11, rx500_eos, rx500_fail
    sub $I11, rx500_pos, rx500_off
    substr $S10, rx500_tgt, $I11, 6
    ne $S10, "module", rx500_fail
    add rx500_pos, 6
    set_addr $I10, rxcap_505_fail
    ($I12, $I11) = rx500_cur."!mark_peek"($I10)
    rx500_cur."!cursor_pos"($I11)
    ($P10) = rx500_cur."!cursor_start"()
    $P10."!cursor_pass"(rx500_pos, "")
    rx500_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_505_done
  rxcap_505_fail:
    goto rx500_fail
  rxcap_505_done:
  # rx subrule "package_def" subtype=capture negate=
    rx500_cur."!cursor_pos"(rx500_pos)
    $P10 = rx500_cur."package_def"()
    unless $P10, rx500_fail
    rx500_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx500_pos = $P10."pos"()
  # rx pass
    rx500_cur."!cursor_pass"(rx500_pos, "package_declarator:sym<module>")
    rx500_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx500_pos)
    .return (rx500_cur)
  rx500_fail:
.annotate "line", 4
    (rx500_rep, rx500_pos, $I10, $P10) = rx500_cur."!mark_fail"(0)
    lt rx500_pos, -1, rx500_done
    eq rx500_pos, -1, rx500_fail
    jump $I10
  rx500_done:
    rx500_cur."!cursor_fail"()
    rx500_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx500_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("126_1261201519.6115") :method
.annotate "line", 4
    $P502 = self."!PREFIX__!subrule"("package_def", "module")
    new $P503, "ResizablePMCArray"
    push $P503, $P502
    .return ($P503)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("127_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx507_tgt
    .local int rx507_pos
    .local int rx507_off
    .local int rx507_eos
    .local int rx507_rep
    .local pmc rx507_cur
    (rx507_cur, rx507_pos, rx507_tgt) = self."!cursor_start"()
    rx507_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx507_cur
    .local pmc match
    .lex "$/", match
    length rx507_eos, rx507_tgt
    set rx507_off, 0
    lt rx507_pos, 2, rx507_start
    sub rx507_off, rx507_pos, 1
    substr rx507_tgt, rx507_tgt, rx507_off
  rx507_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan512_done
    goto rxscan512_scan
  rxscan512_loop:
    ($P10) = rx507_cur."from"()
    inc $P10
    set rx507_pos, $P10
    ge rx507_pos, rx507_eos, rxscan512_done
  rxscan512_scan:
    set_addr $I10, rxscan512_loop
    rx507_cur."!mark_push"(0, rx507_pos, $I10)
  rxscan512_done:
.annotate "line", 250
  # rx subcapture "sym"
    set_addr $I10, rxcap_514_fail
    rx507_cur."!mark_push"(0, rx507_pos, $I10)
  alt513_0:
    set_addr $I10, alt513_1
    rx507_cur."!mark_push"(0, rx507_pos, $I10)
  # rx literal  "class"
    add $I11, rx507_pos, 5
    gt $I11, rx507_eos, rx507_fail
    sub $I11, rx507_pos, rx507_off
    substr $S10, rx507_tgt, $I11, 5
    ne $S10, "class", rx507_fail
    add rx507_pos, 5
    goto alt513_end
  alt513_1:
  # rx literal  "grammar"
    add $I11, rx507_pos, 7
    gt $I11, rx507_eos, rx507_fail
    sub $I11, rx507_pos, rx507_off
    substr $S10, rx507_tgt, $I11, 7
    ne $S10, "grammar", rx507_fail
    add rx507_pos, 7
  alt513_end:
    set_addr $I10, rxcap_514_fail
    ($I12, $I11) = rx507_cur."!mark_peek"($I10)
    rx507_cur."!cursor_pos"($I11)
    ($P10) = rx507_cur."!cursor_start"()
    $P10."!cursor_pass"(rx507_pos, "")
    rx507_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_514_done
  rxcap_514_fail:
    goto rx507_fail
  rxcap_514_done:
  # rx subrule "package_def" subtype=capture negate=
    rx507_cur."!cursor_pos"(rx507_pos)
    $P10 = rx507_cur."package_def"()
    unless $P10, rx507_fail
    rx507_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx507_pos = $P10."pos"()
  # rx pass
    rx507_cur."!cursor_pass"(rx507_pos, "package_declarator:sym<class>")
    rx507_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx507_pos)
    .return (rx507_cur)
  rx507_fail:
.annotate "line", 4
    (rx507_rep, rx507_pos, $I10, $P10) = rx507_cur."!mark_fail"(0)
    lt rx507_pos, -1, rx507_done
    eq rx507_pos, -1, rx507_fail
    jump $I10
  rx507_done:
    rx507_cur."!cursor_fail"()
    rx507_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx507_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("128_1261201519.6115") :method
.annotate "line", 4
    $P509 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P510 = self."!PREFIX__!subrule"("package_def", "class")
    new $P511, "ResizablePMCArray"
    push $P511, $P509
    push $P511, $P510
    .return ($P511)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("129_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx516_tgt
    .local int rx516_pos
    .local int rx516_off
    .local int rx516_eos
    .local int rx516_rep
    .local pmc rx516_cur
    (rx516_cur, rx516_pos, rx516_tgt) = self."!cursor_start"()
    rx516_cur."!cursor_debug"("START ", "package_def")
    rx516_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx516_cur
    .local pmc match
    .lex "$/", match
    length rx516_eos, rx516_tgt
    set rx516_off, 0
    lt rx516_pos, 2, rx516_start
    sub rx516_off, rx516_pos, 1
    substr rx516_tgt, rx516_tgt, rx516_off
  rx516_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan519_done
    goto rxscan519_scan
  rxscan519_loop:
    ($P10) = rx516_cur."from"()
    inc $P10
    set rx516_pos, $P10
    ge rx516_pos, rx516_eos, rxscan519_done
  rxscan519_scan:
    set_addr $I10, rxscan519_loop
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  rxscan519_done:
.annotate "line", 252
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
.annotate "line", 253
  # rx subrule "name" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."name"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx516_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
.annotate "line", 254
  # rx rxquantr522 ** 0..1
    set_addr $I526, rxquantr522_done
    rx516_cur."!mark_push"(0, rx516_pos, $I526)
  rxquantr522_loop:
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx516_pos, 2
    gt $I11, rx516_eos, rx516_fail
    sub $I11, rx516_pos, rx516_off
    substr $S10, rx516_tgt, $I11, 2
    ne $S10, "is", rx516_fail
    add rx516_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."name"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx516_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
    (rx516_rep) = rx516_cur."!mark_commit"($I526)
  rxquantr522_done:
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  alt528_0:
.annotate "line", 255
    set_addr $I10, alt528_1
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
.annotate "line", 256
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx516_pos, 1
    gt $I11, rx516_eos, rx516_fail
    sub $I11, rx516_pos, rx516_off
    substr $S10, rx516_tgt, $I11, 1
    ne $S10, ";", rx516_fail
    add rx516_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."comp_unit"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx516_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
    goto alt528_end
  alt528_1:
    set_addr $I10, alt528_2
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
.annotate "line", 257
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx516_pos, rx516_eos, rx516_fail
    sub $I10, rx516_pos, rx516_off
    substr $S10, rx516_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx516_fail
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx subrule "block" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."block"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx516_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
    goto alt528_end
  alt528_2:
.annotate "line", 258
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."panic"("Malformed package declaration")
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
  alt528_end:
.annotate "line", 259
  # rx subrule "ws" subtype=method negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ws"()
    unless $P10, rx516_fail
    rx516_pos = $P10."pos"()
.annotate "line", 252
  # rx pass
    rx516_cur."!cursor_pass"(rx516_pos, "package_def")
    rx516_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx516_pos)
    .return (rx516_cur)
  rx516_fail:
.annotate "line", 4
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    rx516_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx516_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("130_1261201519.6115") :method
.annotate "line", 4
    new $P518, "ResizablePMCArray"
    push $P518, ""
    .return ($P518)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("131_1261201519.6115") :method
.annotate "line", 262
    $P539 = self."!protoregex"("scope_declarator")
    .return ($P539)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("132_1261201519.6115") :method
.annotate "line", 262
    $P541 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P541)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("133_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx543_tgt
    .local int rx543_pos
    .local int rx543_off
    .local int rx543_eos
    .local int rx543_rep
    .local pmc rx543_cur
    (rx543_cur, rx543_pos, rx543_tgt) = self."!cursor_start"()
    rx543_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx543_cur
    .local pmc match
    .lex "$/", match
    length rx543_eos, rx543_tgt
    set rx543_off, 0
    lt rx543_pos, 2, rx543_start
    sub rx543_off, rx543_pos, 1
    substr rx543_tgt, rx543_tgt, rx543_off
  rx543_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan547_done
    goto rxscan547_scan
  rxscan547_loop:
    ($P10) = rx543_cur."from"()
    inc $P10
    set rx543_pos, $P10
    ge rx543_pos, rx543_eos, rxscan547_done
  rxscan547_scan:
    set_addr $I10, rxscan547_loop
    rx543_cur."!mark_push"(0, rx543_pos, $I10)
  rxscan547_done:
.annotate "line", 263
  # rx subcapture "sym"
    set_addr $I10, rxcap_548_fail
    rx543_cur."!mark_push"(0, rx543_pos, $I10)
  # rx literal  "my"
    add $I11, rx543_pos, 2
    gt $I11, rx543_eos, rx543_fail
    sub $I11, rx543_pos, rx543_off
    substr $S10, rx543_tgt, $I11, 2
    ne $S10, "my", rx543_fail
    add rx543_pos, 2
    set_addr $I10, rxcap_548_fail
    ($I12, $I11) = rx543_cur."!mark_peek"($I10)
    rx543_cur."!cursor_pos"($I11)
    ($P10) = rx543_cur."!cursor_start"()
    $P10."!cursor_pass"(rx543_pos, "")
    rx543_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_548_done
  rxcap_548_fail:
    goto rx543_fail
  rxcap_548_done:
  # rx subrule "scoped" subtype=capture negate=
    rx543_cur."!cursor_pos"(rx543_pos)
    $P10 = rx543_cur."scoped"("my")
    unless $P10, rx543_fail
    rx543_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx543_pos = $P10."pos"()
  # rx pass
    rx543_cur."!cursor_pass"(rx543_pos, "scope_declarator:sym<my>")
    rx543_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx543_pos)
    .return (rx543_cur)
  rx543_fail:
.annotate "line", 4
    (rx543_rep, rx543_pos, $I10, $P10) = rx543_cur."!mark_fail"(0)
    lt rx543_pos, -1, rx543_done
    eq rx543_pos, -1, rx543_fail
    jump $I10
  rx543_done:
    rx543_cur."!cursor_fail"()
    rx543_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx543_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("134_1261201519.6115") :method
.annotate "line", 4
    $P545 = self."!PREFIX__!subrule"("scoped", "my")
    new $P546, "ResizablePMCArray"
    push $P546, $P545
    .return ($P546)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("135_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx550_tgt
    .local int rx550_pos
    .local int rx550_off
    .local int rx550_eos
    .local int rx550_rep
    .local pmc rx550_cur
    (rx550_cur, rx550_pos, rx550_tgt) = self."!cursor_start"()
    rx550_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx550_cur
    .local pmc match
    .lex "$/", match
    length rx550_eos, rx550_tgt
    set rx550_off, 0
    lt rx550_pos, 2, rx550_start
    sub rx550_off, rx550_pos, 1
    substr rx550_tgt, rx550_tgt, rx550_off
  rx550_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan554_done
    goto rxscan554_scan
  rxscan554_loop:
    ($P10) = rx550_cur."from"()
    inc $P10
    set rx550_pos, $P10
    ge rx550_pos, rx550_eos, rxscan554_done
  rxscan554_scan:
    set_addr $I10, rxscan554_loop
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  rxscan554_done:
.annotate "line", 264
  # rx subcapture "sym"
    set_addr $I10, rxcap_555_fail
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  # rx literal  "our"
    add $I11, rx550_pos, 3
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    substr $S10, rx550_tgt, $I11, 3
    ne $S10, "our", rx550_fail
    add rx550_pos, 3
    set_addr $I10, rxcap_555_fail
    ($I12, $I11) = rx550_cur."!mark_peek"($I10)
    rx550_cur."!cursor_pos"($I11)
    ($P10) = rx550_cur."!cursor_start"()
    $P10."!cursor_pass"(rx550_pos, "")
    rx550_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_555_done
  rxcap_555_fail:
    goto rx550_fail
  rxcap_555_done:
  # rx subrule "scoped" subtype=capture negate=
    rx550_cur."!cursor_pos"(rx550_pos)
    $P10 = rx550_cur."scoped"("our")
    unless $P10, rx550_fail
    rx550_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx550_pos = $P10."pos"()
  # rx pass
    rx550_cur."!cursor_pass"(rx550_pos, "scope_declarator:sym<our>")
    rx550_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx550_pos)
    .return (rx550_cur)
  rx550_fail:
.annotate "line", 4
    (rx550_rep, rx550_pos, $I10, $P10) = rx550_cur."!mark_fail"(0)
    lt rx550_pos, -1, rx550_done
    eq rx550_pos, -1, rx550_fail
    jump $I10
  rx550_done:
    rx550_cur."!cursor_fail"()
    rx550_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx550_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("136_1261201519.6115") :method
.annotate "line", 4
    $P552 = self."!PREFIX__!subrule"("scoped", "our")
    new $P553, "ResizablePMCArray"
    push $P553, $P552
    .return ($P553)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("137_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx557_tgt
    .local int rx557_pos
    .local int rx557_off
    .local int rx557_eos
    .local int rx557_rep
    .local pmc rx557_cur
    (rx557_cur, rx557_pos, rx557_tgt) = self."!cursor_start"()
    rx557_cur."!cursor_debug"("START ", "scope_declarator:sym<has>")
    .lex unicode:"$\x{a2}", rx557_cur
    .local pmc match
    .lex "$/", match
    length rx557_eos, rx557_tgt
    set rx557_off, 0
    lt rx557_pos, 2, rx557_start
    sub rx557_off, rx557_pos, 1
    substr rx557_tgt, rx557_tgt, rx557_off
  rx557_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan561_done
    goto rxscan561_scan
  rxscan561_loop:
    ($P10) = rx557_cur."from"()
    inc $P10
    set rx557_pos, $P10
    ge rx557_pos, rx557_eos, rxscan561_done
  rxscan561_scan:
    set_addr $I10, rxscan561_loop
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  rxscan561_done:
.annotate "line", 265
  # rx subcapture "sym"
    set_addr $I10, rxcap_562_fail
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  # rx literal  "has"
    add $I11, rx557_pos, 3
    gt $I11, rx557_eos, rx557_fail
    sub $I11, rx557_pos, rx557_off
    substr $S10, rx557_tgt, $I11, 3
    ne $S10, "has", rx557_fail
    add rx557_pos, 3
    set_addr $I10, rxcap_562_fail
    ($I12, $I11) = rx557_cur."!mark_peek"($I10)
    rx557_cur."!cursor_pos"($I11)
    ($P10) = rx557_cur."!cursor_start"()
    $P10."!cursor_pass"(rx557_pos, "")
    rx557_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_562_done
  rxcap_562_fail:
    goto rx557_fail
  rxcap_562_done:
  # rx subrule "scoped" subtype=capture negate=
    rx557_cur."!cursor_pos"(rx557_pos)
    $P10 = rx557_cur."scoped"("has")
    unless $P10, rx557_fail
    rx557_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx557_pos = $P10."pos"()
  # rx pass
    rx557_cur."!cursor_pass"(rx557_pos, "scope_declarator:sym<has>")
    rx557_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<has>", " at pos=", rx557_pos)
    .return (rx557_cur)
  rx557_fail:
.annotate "line", 4
    (rx557_rep, rx557_pos, $I10, $P10) = rx557_cur."!mark_fail"(0)
    lt rx557_pos, -1, rx557_done
    eq rx557_pos, -1, rx557_fail
    jump $I10
  rx557_done:
    rx557_cur."!cursor_fail"()
    rx557_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<has>")
    .return (rx557_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("138_1261201519.6115") :method
.annotate "line", 4
    $P559 = self."!PREFIX__!subrule"("scoped", "has")
    new $P560, "ResizablePMCArray"
    push $P560, $P559
    .return ($P560)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("139_1261201519.6115") :method :outer("11_1261201519.6115")
    .param pmc param_564
.annotate "line", 267
    .lex "$*SCOPE", param_564
.annotate "line", 4
    .local string rx565_tgt
    .local int rx565_pos
    .local int rx565_off
    .local int rx565_eos
    .local int rx565_rep
    .local pmc rx565_cur
    (rx565_cur, rx565_pos, rx565_tgt) = self."!cursor_start"()
    rx565_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx565_cur
    .local pmc match
    .lex "$/", match
    length rx565_eos, rx565_tgt
    set rx565_off, 0
    lt rx565_pos, 2, rx565_start
    sub rx565_off, rx565_pos, 1
    substr rx565_tgt, rx565_tgt, rx565_off
  rx565_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan568_done
    goto rxscan568_scan
  rxscan568_loop:
    ($P10) = rx565_cur."from"()
    inc $P10
    set rx565_pos, $P10
    ge rx565_pos, rx565_eos, rxscan568_done
  rxscan568_scan:
    set_addr $I10, rxscan568_loop
    rx565_cur."!mark_push"(0, rx565_pos, $I10)
  rxscan568_done:
  alt569_0:
.annotate "line", 267
    set_addr $I10, alt569_1
    rx565_cur."!mark_push"(0, rx565_pos, $I10)
.annotate "line", 268
  # rx subrule "ws" subtype=method negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."ws"()
    unless $P10, rx565_fail
    rx565_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."variable_declarator"()
    unless $P10, rx565_fail
    rx565_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx565_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."ws"()
    unless $P10, rx565_fail
    rx565_pos = $P10."pos"()
    goto alt569_end
  alt569_1:
.annotate "line", 269
  # rx subrule "ws" subtype=method negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."ws"()
    unless $P10, rx565_fail
    rx565_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."routine_declarator"()
    unless $P10, rx565_fail
    rx565_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx565_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."ws"()
    unless $P10, rx565_fail
    rx565_pos = $P10."pos"()
  alt569_end:
.annotate "line", 267
  # rx pass
    rx565_cur."!cursor_pass"(rx565_pos, "scoped")
    rx565_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx565_pos)
    .return (rx565_cur)
  rx565_fail:
.annotate "line", 4
    (rx565_rep, rx565_pos, $I10, $P10) = rx565_cur."!mark_fail"(0)
    lt rx565_pos, -1, rx565_done
    eq rx565_pos, -1, rx565_fail
    jump $I10
  rx565_done:
    rx565_cur."!cursor_fail"()
    rx565_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx565_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("140_1261201519.6115") :method
.annotate "line", 4
    new $P567, "ResizablePMCArray"
    push $P567, ""
    push $P567, ""
    .return ($P567)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("141_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx575_tgt
    .local int rx575_pos
    .local int rx575_off
    .local int rx575_eos
    .local int rx575_rep
    .local pmc rx575_cur
    (rx575_cur, rx575_pos, rx575_tgt) = self."!cursor_start"()
    rx575_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx575_cur
    .local pmc match
    .lex "$/", match
    length rx575_eos, rx575_tgt
    set rx575_off, 0
    lt rx575_pos, 2, rx575_start
    sub rx575_off, rx575_pos, 1
    substr rx575_tgt, rx575_tgt, rx575_off
  rx575_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan579_done
    goto rxscan579_scan
  rxscan579_loop:
    ($P10) = rx575_cur."from"()
    inc $P10
    set rx575_pos, $P10
    ge rx575_pos, rx575_eos, rxscan579_done
  rxscan579_scan:
    set_addr $I10, rxscan579_loop
    rx575_cur."!mark_push"(0, rx575_pos, $I10)
  rxscan579_done:
.annotate "line", 272
  # rx subrule "variable" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."variable"()
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx575_pos = $P10."pos"()
  # rx pass
    rx575_cur."!cursor_pass"(rx575_pos, "variable_declarator")
    rx575_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx575_pos)
    .return (rx575_cur)
  rx575_fail:
.annotate "line", 4
    (rx575_rep, rx575_pos, $I10, $P10) = rx575_cur."!mark_fail"(0)
    lt rx575_pos, -1, rx575_done
    eq rx575_pos, -1, rx575_fail
    jump $I10
  rx575_done:
    rx575_cur."!cursor_fail"()
    rx575_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx575_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("142_1261201519.6115") :method
.annotate "line", 4
    $P577 = self."!PREFIX__!subrule"("variable", "")
    new $P578, "ResizablePMCArray"
    push $P578, $P577
    .return ($P578)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("143_1261201519.6115") :method
.annotate "line", 274
    $P581 = self."!protoregex"("routine_declarator")
    .return ($P581)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("144_1261201519.6115") :method
.annotate "line", 274
    $P583 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P583)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("145_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx585_tgt
    .local int rx585_pos
    .local int rx585_off
    .local int rx585_eos
    .local int rx585_rep
    .local pmc rx585_cur
    (rx585_cur, rx585_pos, rx585_tgt) = self."!cursor_start"()
    rx585_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx585_cur
    .local pmc match
    .lex "$/", match
    length rx585_eos, rx585_tgt
    set rx585_off, 0
    lt rx585_pos, 2, rx585_start
    sub rx585_off, rx585_pos, 1
    substr rx585_tgt, rx585_tgt, rx585_off
  rx585_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan589_done
    goto rxscan589_scan
  rxscan589_loop:
    ($P10) = rx585_cur."from"()
    inc $P10
    set rx585_pos, $P10
    ge rx585_pos, rx585_eos, rxscan589_done
  rxscan589_scan:
    set_addr $I10, rxscan589_loop
    rx585_cur."!mark_push"(0, rx585_pos, $I10)
  rxscan589_done:
.annotate "line", 275
  # rx subcapture "sym"
    set_addr $I10, rxcap_590_fail
    rx585_cur."!mark_push"(0, rx585_pos, $I10)
  # rx literal  "sub"
    add $I11, rx585_pos, 3
    gt $I11, rx585_eos, rx585_fail
    sub $I11, rx585_pos, rx585_off
    substr $S10, rx585_tgt, $I11, 3
    ne $S10, "sub", rx585_fail
    add rx585_pos, 3
    set_addr $I10, rxcap_590_fail
    ($I12, $I11) = rx585_cur."!mark_peek"($I10)
    rx585_cur."!cursor_pos"($I11)
    ($P10) = rx585_cur."!cursor_start"()
    $P10."!cursor_pass"(rx585_pos, "")
    rx585_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_590_done
  rxcap_590_fail:
    goto rx585_fail
  rxcap_590_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx585_cur."!cursor_pos"(rx585_pos)
    $P10 = rx585_cur."routine_def"()
    unless $P10, rx585_fail
    rx585_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx585_pos = $P10."pos"()
  # rx pass
    rx585_cur."!cursor_pass"(rx585_pos, "routine_declarator:sym<sub>")
    rx585_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx585_pos)
    .return (rx585_cur)
  rx585_fail:
.annotate "line", 4
    (rx585_rep, rx585_pos, $I10, $P10) = rx585_cur."!mark_fail"(0)
    lt rx585_pos, -1, rx585_done
    eq rx585_pos, -1, rx585_fail
    jump $I10
  rx585_done:
    rx585_cur."!cursor_fail"()
    rx585_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx585_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("146_1261201519.6115") :method
.annotate "line", 4
    $P587 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P588, "ResizablePMCArray"
    push $P588, $P587
    .return ($P588)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("147_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx592_tgt
    .local int rx592_pos
    .local int rx592_off
    .local int rx592_eos
    .local int rx592_rep
    .local pmc rx592_cur
    (rx592_cur, rx592_pos, rx592_tgt) = self."!cursor_start"()
    rx592_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx592_cur
    .local pmc match
    .lex "$/", match
    length rx592_eos, rx592_tgt
    set rx592_off, 0
    lt rx592_pos, 2, rx592_start
    sub rx592_off, rx592_pos, 1
    substr rx592_tgt, rx592_tgt, rx592_off
  rx592_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan596_done
    goto rxscan596_scan
  rxscan596_loop:
    ($P10) = rx592_cur."from"()
    inc $P10
    set rx592_pos, $P10
    ge rx592_pos, rx592_eos, rxscan596_done
  rxscan596_scan:
    set_addr $I10, rxscan596_loop
    rx592_cur."!mark_push"(0, rx592_pos, $I10)
  rxscan596_done:
.annotate "line", 276
  # rx subcapture "sym"
    set_addr $I10, rxcap_597_fail
    rx592_cur."!mark_push"(0, rx592_pos, $I10)
  # rx literal  "method"
    add $I11, rx592_pos, 6
    gt $I11, rx592_eos, rx592_fail
    sub $I11, rx592_pos, rx592_off
    substr $S10, rx592_tgt, $I11, 6
    ne $S10, "method", rx592_fail
    add rx592_pos, 6
    set_addr $I10, rxcap_597_fail
    ($I12, $I11) = rx592_cur."!mark_peek"($I10)
    rx592_cur."!cursor_pos"($I11)
    ($P10) = rx592_cur."!cursor_start"()
    $P10."!cursor_pass"(rx592_pos, "")
    rx592_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_597_done
  rxcap_597_fail:
    goto rx592_fail
  rxcap_597_done:
  # rx subrule "method_def" subtype=capture negate=
    rx592_cur."!cursor_pos"(rx592_pos)
    $P10 = rx592_cur."method_def"()
    unless $P10, rx592_fail
    rx592_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_def")
    rx592_pos = $P10."pos"()
  # rx pass
    rx592_cur."!cursor_pass"(rx592_pos, "routine_declarator:sym<method>")
    rx592_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx592_pos)
    .return (rx592_cur)
  rx592_fail:
.annotate "line", 4
    (rx592_rep, rx592_pos, $I10, $P10) = rx592_cur."!mark_fail"(0)
    lt rx592_pos, -1, rx592_done
    eq rx592_pos, -1, rx592_fail
    jump $I10
  rx592_done:
    rx592_cur."!cursor_fail"()
    rx592_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx592_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("148_1261201519.6115") :method
.annotate "line", 4
    $P594 = self."!PREFIX__!subrule"("method_def", "method")
    new $P595, "ResizablePMCArray"
    push $P595, $P594
    .return ($P595)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("149_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx599_tgt
    .local int rx599_pos
    .local int rx599_off
    .local int rx599_eos
    .local int rx599_rep
    .local pmc rx599_cur
    (rx599_cur, rx599_pos, rx599_tgt) = self."!cursor_start"()
    rx599_cur."!cursor_debug"("START ", "routine_def")
    rx599_cur."!cursor_caparray"("sigil", "deflongname")
    .lex unicode:"$\x{a2}", rx599_cur
    .local pmc match
    .lex "$/", match
    length rx599_eos, rx599_tgt
    set rx599_off, 0
    lt rx599_pos, 2, rx599_start
    sub rx599_off, rx599_pos, 1
    substr rx599_tgt, rx599_tgt, rx599_off
  rx599_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan602_done
    goto rxscan602_scan
  rxscan602_loop:
    ($P10) = rx599_cur."from"()
    inc $P10
    set rx599_pos, $P10
    ge rx599_pos, rx599_eos, rxscan602_done
  rxscan602_scan:
    set_addr $I10, rxscan602_loop
    rx599_cur."!mark_push"(0, rx599_pos, $I10)
  rxscan602_done:
.annotate "line", 278
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
.annotate "line", 279
  # rx rxquantr604 ** 0..1
    set_addr $I610, rxquantr604_done
    rx599_cur."!mark_push"(0, rx599_pos, $I610)
  rxquantr604_loop:
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx subcapture "sigil"
    set_addr $I10, rxcap_608_fail
    rx599_cur."!mark_push"(0, rx599_pos, $I10)
  # rx rxquantr606 ** 0..1
    set_addr $I607, rxquantr606_done
    rx599_cur."!mark_push"(0, rx599_pos, $I607)
  rxquantr606_loop:
  # rx literal  "&"
    add $I11, rx599_pos, 1
    gt $I11, rx599_eos, rx599_fail
    sub $I11, rx599_pos, rx599_off
    substr $S10, rx599_tgt, $I11, 1
    ne $S10, "&", rx599_fail
    add rx599_pos, 1
    (rx599_rep) = rx599_cur."!mark_commit"($I607)
  rxquantr606_done:
    set_addr $I10, rxcap_608_fail
    ($I12, $I11) = rx599_cur."!mark_peek"($I10)
    rx599_cur."!cursor_pos"($I11)
    ($P10) = rx599_cur."!cursor_start"()
    $P10."!cursor_pass"(rx599_pos, "")
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_608_done
  rxcap_608_fail:
    goto rx599_fail
  rxcap_608_done:
  # rx subrule "deflongname" subtype=capture negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."deflongname"()
    unless $P10, rx599_fail
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx599_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
    (rx599_rep) = rx599_cur."!mark_commit"($I610)
  rxquantr604_done:
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
.annotate "line", 280
  # rx subrule "newpad" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."newpad"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  alt613_0:
.annotate "line", 281
    set_addr $I10, alt613_1
    rx599_cur."!mark_push"(0, rx599_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx599_pos, 1
    gt $I11, rx599_eos, rx599_fail
    sub $I11, rx599_pos, rx599_off
    substr $S10, rx599_tgt, $I11, 1
    ne $S10, "(", rx599_fail
    add rx599_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."signature"()
    unless $P10, rx599_fail
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx599_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx599_pos, 1
    gt $I11, rx599_eos, rx599_fail
    sub $I11, rx599_pos, rx599_off
    substr $S10, rx599_tgt, $I11, 1
    ne $S10, ")", rx599_fail
    add rx599_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
    goto alt613_end
  alt613_1:
.annotate "line", 282
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  alt613_end:
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
.annotate "line", 283
  # rx subrule "blockoid" subtype=capture negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."blockoid"()
    unless $P10, rx599_fail
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx599_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
.annotate "line", 278
  # rx pass
    rx599_cur."!cursor_pass"(rx599_pos, "routine_def")
    rx599_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx599_pos)
    .return (rx599_cur)
  rx599_fail:
.annotate "line", 4
    (rx599_rep, rx599_pos, $I10, $P10) = rx599_cur."!mark_fail"(0)
    lt rx599_pos, -1, rx599_done
    eq rx599_pos, -1, rx599_fail
    jump $I10
  rx599_done:
    rx599_cur."!cursor_fail"()
    rx599_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx599_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("150_1261201519.6115") :method
.annotate "line", 4
    new $P601, "ResizablePMCArray"
    push $P601, ""
    .return ($P601)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("151_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx623_tgt
    .local int rx623_pos
    .local int rx623_off
    .local int rx623_eos
    .local int rx623_rep
    .local pmc rx623_cur
    (rx623_cur, rx623_pos, rx623_tgt) = self."!cursor_start"()
    rx623_cur."!cursor_debug"("START ", "method_def")
    rx623_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx623_cur
    .local pmc match
    .lex "$/", match
    length rx623_eos, rx623_tgt
    set rx623_off, 0
    lt rx623_pos, 2, rx623_start
    sub rx623_off, rx623_pos, 1
    substr rx623_tgt, rx623_tgt, rx623_off
  rx623_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan626_done
    goto rxscan626_scan
  rxscan626_loop:
    ($P10) = rx623_cur."from"()
    inc $P10
    set rx623_pos, $P10
    ge rx623_pos, rx623_eos, rxscan626_done
  rxscan626_scan:
    set_addr $I10, rxscan626_loop
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  rxscan626_done:
.annotate "line", 286
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
.annotate "line", 287
  # rx rxquantr628 ** 0..1
    set_addr $I629, rxquantr628_done
    rx623_cur."!mark_push"(0, rx623_pos, $I629)
  rxquantr628_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."deflongname"()
    unless $P10, rx623_fail
    rx623_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx623_pos = $P10."pos"()
    (rx623_rep) = rx623_cur."!mark_commit"($I629)
  rxquantr628_done:
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
.annotate "line", 288
  # rx subrule "newpad" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."newpad"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  alt632_0:
.annotate "line", 289
    set_addr $I10, alt632_1
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx623_pos, 1
    gt $I11, rx623_eos, rx623_fail
    sub $I11, rx623_pos, rx623_off
    substr $S10, rx623_tgt, $I11, 1
    ne $S10, "(", rx623_fail
    add rx623_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."signature"()
    unless $P10, rx623_fail
    rx623_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx623_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx623_pos, 1
    gt $I11, rx623_eos, rx623_fail
    sub $I11, rx623_pos, rx623_off
    substr $S10, rx623_tgt, $I11, 1
    ne $S10, ")", rx623_fail
    add rx623_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
    goto alt632_end
  alt632_1:
.annotate "line", 290
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
  alt632_end:
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
.annotate "line", 291
  # rx subrule "blockoid" subtype=capture negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."blockoid"()
    unless $P10, rx623_fail
    rx623_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx623_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    $P10 = rx623_cur."ws"()
    unless $P10, rx623_fail
    rx623_pos = $P10."pos"()
.annotate "line", 286
  # rx pass
    rx623_cur."!cursor_pass"(rx623_pos, "method_def")
    rx623_cur."!cursor_debug"("PASS  ", "method_def", " at pos=", rx623_pos)
    .return (rx623_cur)
  rx623_fail:
.annotate "line", 4
    (rx623_rep, rx623_pos, $I10, $P10) = rx623_cur."!mark_fail"(0)
    lt rx623_pos, -1, rx623_done
    eq rx623_pos, -1, rx623_fail
    jump $I10
  rx623_done:
    rx623_cur."!cursor_fail"()
    rx623_cur."!cursor_debug"("FAIL  ", "method_def")
    .return (rx623_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__method_def"  :subid("152_1261201519.6115") :method
.annotate "line", 4
    new $P625, "ResizablePMCArray"
    push $P625, ""
    .return ($P625)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("153_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx642_tgt
    .local int rx642_pos
    .local int rx642_off
    .local int rx642_eos
    .local int rx642_rep
    .local pmc rx642_cur
    (rx642_cur, rx642_pos, rx642_tgt) = self."!cursor_start"()
    rx642_cur."!cursor_debug"("START ", "signature")
    rx642_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx642_cur
    .local pmc match
    .lex "$/", match
    length rx642_eos, rx642_tgt
    set rx642_off, 0
    lt rx642_pos, 2, rx642_start
    sub rx642_off, rx642_pos, 1
    substr rx642_tgt, rx642_tgt, rx642_off
  rx642_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan645_done
    goto rxscan645_scan
  rxscan645_loop:
    ($P10) = rx642_cur."from"()
    inc $P10
    set rx642_pos, $P10
    ge rx642_pos, rx642_eos, rxscan645_done
  rxscan645_scan:
    set_addr $I10, rxscan645_loop
    rx642_cur."!mark_push"(0, rx642_pos, $I10)
  rxscan645_done:
.annotate "line", 294
  # rx rxquantr646 ** 0..1
    set_addr $I649, rxquantr646_done
    rx642_cur."!mark_push"(0, rx642_pos, $I649)
  rxquantr646_loop:
  # rx rxquantr647 ** 1..*
    set_addr $I648, rxquantr647_done
    rx642_cur."!mark_push"(0, -1, $I648)
  rxquantr647_loop:
  # rx subrule "ws" subtype=method negate=
    rx642_cur."!cursor_pos"(rx642_pos)
    $P10 = rx642_cur."ws"()
    unless $P10, rx642_fail
    rx642_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx642_cur."!cursor_pos"(rx642_pos)
    $P10 = rx642_cur."parameter"()
    unless $P10, rx642_fail
    rx642_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx642_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx642_cur."!cursor_pos"(rx642_pos)
    $P10 = rx642_cur."ws"()
    unless $P10, rx642_fail
    rx642_pos = $P10."pos"()
    (rx642_rep) = rx642_cur."!mark_commit"($I648)
    rx642_cur."!mark_push"(rx642_rep, rx642_pos, $I648)
  # rx literal  ","
    add $I11, rx642_pos, 1
    gt $I11, rx642_eos, rx642_fail
    sub $I11, rx642_pos, rx642_off
    substr $S10, rx642_tgt, $I11, 1
    ne $S10, ",", rx642_fail
    add rx642_pos, 1
    goto rxquantr647_loop
  rxquantr647_done:
    (rx642_rep) = rx642_cur."!mark_commit"($I649)
  rxquantr646_done:
  # rx pass
    rx642_cur."!cursor_pass"(rx642_pos, "signature")
    rx642_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx642_pos)
    .return (rx642_cur)
  rx642_fail:
.annotate "line", 4
    (rx642_rep, rx642_pos, $I10, $P10) = rx642_cur."!mark_fail"(0)
    lt rx642_pos, -1, rx642_done
    eq rx642_pos, -1, rx642_fail
    jump $I10
  rx642_done:
    rx642_cur."!cursor_fail"()
    rx642_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx642_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("154_1261201519.6115") :method
.annotate "line", 4
    new $P644, "ResizablePMCArray"
    push $P644, ""
    .return ($P644)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("155_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx651_tgt
    .local int rx651_pos
    .local int rx651_off
    .local int rx651_eos
    .local int rx651_rep
    .local pmc rx651_cur
    (rx651_cur, rx651_pos, rx651_tgt) = self."!cursor_start"()
    rx651_cur."!cursor_debug"("START ", "parameter")
    rx651_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx651_cur
    .local pmc match
    .lex "$/", match
    length rx651_eos, rx651_tgt
    set rx651_off, 0
    lt rx651_pos, 2, rx651_start
    sub rx651_off, rx651_pos, 1
    substr rx651_tgt, rx651_tgt, rx651_off
  rx651_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan657_done
    goto rxscan657_scan
  rxscan657_loop:
    ($P10) = rx651_cur."from"()
    inc $P10
    set rx651_pos, $P10
    ge rx651_pos, rx651_eos, rxscan657_done
  rxscan657_scan:
    set_addr $I10, rxscan657_loop
    rx651_cur."!mark_push"(0, rx651_pos, $I10)
  rxscan657_done:
  alt658_0:
.annotate "line", 297
    set_addr $I10, alt658_1
    rx651_cur."!mark_push"(0, rx651_pos, $I10)
.annotate "line", 298
  # rx subcapture "quant"
    set_addr $I10, rxcap_659_fail
    rx651_cur."!mark_push"(0, rx651_pos, $I10)
  # rx literal  "*"
    add $I11, rx651_pos, 1
    gt $I11, rx651_eos, rx651_fail
    sub $I11, rx651_pos, rx651_off
    substr $S10, rx651_tgt, $I11, 1
    ne $S10, "*", rx651_fail
    add rx651_pos, 1
    set_addr $I10, rxcap_659_fail
    ($I12, $I11) = rx651_cur."!mark_peek"($I10)
    rx651_cur."!cursor_pos"($I11)
    ($P10) = rx651_cur."!cursor_start"()
    $P10."!cursor_pass"(rx651_pos, "")
    rx651_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_659_done
  rxcap_659_fail:
    goto rx651_fail
  rxcap_659_done:
  # rx subrule "param_var" subtype=capture negate=
    rx651_cur."!cursor_pos"(rx651_pos)
    $P10 = rx651_cur."param_var"()
    unless $P10, rx651_fail
    rx651_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx651_pos = $P10."pos"()
    goto alt658_end
  alt658_1:
  alt660_0:
.annotate "line", 299
    set_addr $I10, alt660_1
    rx651_cur."!mark_push"(0, rx651_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx651_cur."!cursor_pos"(rx651_pos)
    $P10 = rx651_cur."param_var"()
    unless $P10, rx651_fail
    rx651_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx651_pos = $P10."pos"()
    goto alt660_end
  alt660_1:
  # rx subrule "named_param" subtype=capture negate=
    rx651_cur."!cursor_pos"(rx651_pos)
    $P10 = rx651_cur."named_param"()
    unless $P10, rx651_fail
    rx651_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx651_pos = $P10."pos"()
  alt660_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_662_fail
    rx651_cur."!mark_push"(0, rx651_pos, $I10)
  alt661_0:
    set_addr $I10, alt661_1
    rx651_cur."!mark_push"(0, rx651_pos, $I10)
  # rx literal  "?"
    add $I11, rx651_pos, 1
    gt $I11, rx651_eos, rx651_fail
    sub $I11, rx651_pos, rx651_off
    substr $S10, rx651_tgt, $I11, 1
    ne $S10, "?", rx651_fail
    add rx651_pos, 1
    goto alt661_end
  alt661_1:
    set_addr $I10, alt661_2
    rx651_cur."!mark_push"(0, rx651_pos, $I10)
  # rx literal  "!"
    add $I11, rx651_pos, 1
    gt $I11, rx651_eos, rx651_fail
    sub $I11, rx651_pos, rx651_off
    substr $S10, rx651_tgt, $I11, 1
    ne $S10, "!", rx651_fail
    add rx651_pos, 1
    goto alt661_end
  alt661_2:
  alt661_end:
    set_addr $I10, rxcap_662_fail
    ($I12, $I11) = rx651_cur."!mark_peek"($I10)
    rx651_cur."!cursor_pos"($I11)
    ($P10) = rx651_cur."!cursor_start"()
    $P10."!cursor_pass"(rx651_pos, "")
    rx651_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_662_done
  rxcap_662_fail:
    goto rx651_fail
  rxcap_662_done:
  alt658_end:
.annotate "line", 301
  # rx rxquantr663 ** 0..1
    set_addr $I664, rxquantr663_done
    rx651_cur."!mark_push"(0, rx651_pos, $I664)
  rxquantr663_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx651_cur."!cursor_pos"(rx651_pos)
    $P10 = rx651_cur."default_value"()
    unless $P10, rx651_fail
    rx651_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx651_pos = $P10."pos"()
    (rx651_rep) = rx651_cur."!mark_commit"($I664)
  rxquantr663_done:
.annotate "line", 296
  # rx pass
    rx651_cur."!cursor_pass"(rx651_pos, "parameter")
    rx651_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx651_pos)
    .return (rx651_cur)
  rx651_fail:
.annotate "line", 4
    (rx651_rep, rx651_pos, $I10, $P10) = rx651_cur."!mark_fail"(0)
    lt rx651_pos, -1, rx651_done
    eq rx651_pos, -1, rx651_fail
    jump $I10
  rx651_done:
    rx651_cur."!cursor_fail"()
    rx651_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx651_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("156_1261201519.6115") :method
.annotate "line", 4
    $P653 = self."!PREFIX__!subrule"("named_param", "")
    $P654 = self."!PREFIX__!subrule"("param_var", "")
    $P655 = self."!PREFIX__!subrule"("param_var", "*")
    new $P656, "ResizablePMCArray"
    push $P656, $P653
    push $P656, $P654
    push $P656, $P655
    .return ($P656)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("157_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx666_tgt
    .local int rx666_pos
    .local int rx666_off
    .local int rx666_eos
    .local int rx666_rep
    .local pmc rx666_cur
    (rx666_cur, rx666_pos, rx666_tgt) = self."!cursor_start"()
    rx666_cur."!cursor_debug"("START ", "param_var")
    rx666_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx666_cur
    .local pmc match
    .lex "$/", match
    length rx666_eos, rx666_tgt
    set rx666_off, 0
    lt rx666_pos, 2, rx666_start
    sub rx666_off, rx666_pos, 1
    substr rx666_tgt, rx666_tgt, rx666_off
  rx666_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan670_done
    goto rxscan670_scan
  rxscan670_loop:
    ($P10) = rx666_cur."from"()
    inc $P10
    set rx666_pos, $P10
    ge rx666_pos, rx666_eos, rxscan670_done
  rxscan670_scan:
    set_addr $I10, rxscan670_loop
    rx666_cur."!mark_push"(0, rx666_pos, $I10)
  rxscan670_done:
.annotate "line", 305
  # rx subrule "sigil" subtype=capture negate=
    rx666_cur."!cursor_pos"(rx666_pos)
    $P10 = rx666_cur."sigil"()
    unless $P10, rx666_fail
    rx666_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx666_pos = $P10."pos"()
  # rx rxquantr671 ** 0..1
    set_addr $I672, rxquantr671_done
    rx666_cur."!mark_push"(0, rx666_pos, $I672)
  rxquantr671_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx666_cur."!cursor_pos"(rx666_pos)
    $P10 = rx666_cur."twigil"()
    unless $P10, rx666_fail
    rx666_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx666_pos = $P10."pos"()
    (rx666_rep) = rx666_cur."!mark_commit"($I672)
  rxquantr671_done:
  alt673_0:
.annotate "line", 306
    set_addr $I10, alt673_1
    rx666_cur."!mark_push"(0, rx666_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx666_cur."!cursor_pos"(rx666_pos)
    $P10 = rx666_cur."ident"()
    unless $P10, rx666_fail
    rx666_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx666_pos = $P10."pos"()
    goto alt673_end
  alt673_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_674_fail
    rx666_cur."!mark_push"(0, rx666_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx666_pos, rx666_eos, rx666_fail
    sub $I10, rx666_pos, rx666_off
    substr $S10, rx666_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx666_fail
    inc rx666_pos
    set_addr $I10, rxcap_674_fail
    ($I12, $I11) = rx666_cur."!mark_peek"($I10)
    rx666_cur."!cursor_pos"($I11)
    ($P10) = rx666_cur."!cursor_start"()
    $P10."!cursor_pass"(rx666_pos, "")
    rx666_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_674_done
  rxcap_674_fail:
    goto rx666_fail
  rxcap_674_done:
  alt673_end:
.annotate "line", 304
  # rx pass
    rx666_cur."!cursor_pass"(rx666_pos, "param_var")
    rx666_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx666_pos)
    .return (rx666_cur)
  rx666_fail:
.annotate "line", 4
    (rx666_rep, rx666_pos, $I10, $P10) = rx666_cur."!mark_fail"(0)
    lt rx666_pos, -1, rx666_done
    eq rx666_pos, -1, rx666_fail
    jump $I10
  rx666_done:
    rx666_cur."!cursor_fail"()
    rx666_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx666_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("158_1261201519.6115") :method
.annotate "line", 4
    $P668 = self."!PREFIX__!subrule"("sigil", "")
    new $P669, "ResizablePMCArray"
    push $P669, $P668
    .return ($P669)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("159_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx676_tgt
    .local int rx676_pos
    .local int rx676_off
    .local int rx676_eos
    .local int rx676_rep
    .local pmc rx676_cur
    (rx676_cur, rx676_pos, rx676_tgt) = self."!cursor_start"()
    rx676_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx676_cur
    .local pmc match
    .lex "$/", match
    length rx676_eos, rx676_tgt
    set rx676_off, 0
    lt rx676_pos, 2, rx676_start
    sub rx676_off, rx676_pos, 1
    substr rx676_tgt, rx676_tgt, rx676_off
  rx676_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan680_done
    goto rxscan680_scan
  rxscan680_loop:
    ($P10) = rx676_cur."from"()
    inc $P10
    set rx676_pos, $P10
    ge rx676_pos, rx676_eos, rxscan680_done
  rxscan680_scan:
    set_addr $I10, rxscan680_loop
    rx676_cur."!mark_push"(0, rx676_pos, $I10)
  rxscan680_done:
.annotate "line", 310
  # rx literal  ":"
    add $I11, rx676_pos, 1
    gt $I11, rx676_eos, rx676_fail
    sub $I11, rx676_pos, rx676_off
    substr $S10, rx676_tgt, $I11, 1
    ne $S10, ":", rx676_fail
    add rx676_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx676_cur."!cursor_pos"(rx676_pos)
    $P10 = rx676_cur."param_var"()
    unless $P10, rx676_fail
    rx676_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx676_pos = $P10."pos"()
.annotate "line", 309
  # rx pass
    rx676_cur."!cursor_pass"(rx676_pos, "named_param")
    rx676_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx676_pos)
    .return (rx676_cur)
  rx676_fail:
.annotate "line", 4
    (rx676_rep, rx676_pos, $I10, $P10) = rx676_cur."!mark_fail"(0)
    lt rx676_pos, -1, rx676_done
    eq rx676_pos, -1, rx676_fail
    jump $I10
  rx676_done:
    rx676_cur."!cursor_fail"()
    rx676_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx676_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("160_1261201519.6115") :method
.annotate "line", 4
    $P678 = self."!PREFIX__!subrule"("param_var", ":")
    new $P679, "ResizablePMCArray"
    push $P679, $P678
    .return ($P679)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("161_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx682_tgt
    .local int rx682_pos
    .local int rx682_off
    .local int rx682_eos
    .local int rx682_rep
    .local pmc rx682_cur
    (rx682_cur, rx682_pos, rx682_tgt) = self."!cursor_start"()
    rx682_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx682_cur
    .local pmc match
    .lex "$/", match
    length rx682_eos, rx682_tgt
    set rx682_off, 0
    lt rx682_pos, 2, rx682_start
    sub rx682_off, rx682_pos, 1
    substr rx682_tgt, rx682_tgt, rx682_off
  rx682_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan685_done
    goto rxscan685_scan
  rxscan685_loop:
    ($P10) = rx682_cur."from"()
    inc $P10
    set rx682_pos, $P10
    ge rx682_pos, rx682_eos, rxscan685_done
  rxscan685_scan:
    set_addr $I10, rxscan685_loop
    rx682_cur."!mark_push"(0, rx682_pos, $I10)
  rxscan685_done:
.annotate "line", 313
  # rx subrule "ws" subtype=method negate=
    rx682_cur."!cursor_pos"(rx682_pos)
    $P10 = rx682_cur."ws"()
    unless $P10, rx682_fail
    rx682_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx682_pos, 1
    gt $I11, rx682_eos, rx682_fail
    sub $I11, rx682_pos, rx682_off
    substr $S10, rx682_tgt, $I11, 1
    ne $S10, "=", rx682_fail
    add rx682_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx682_cur."!cursor_pos"(rx682_pos)
    $P10 = rx682_cur."ws"()
    unless $P10, rx682_fail
    rx682_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx682_cur."!cursor_pos"(rx682_pos)
    $P10 = rx682_cur."EXPR"("i=")
    unless $P10, rx682_fail
    rx682_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx682_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx682_cur."!cursor_pos"(rx682_pos)
    $P10 = rx682_cur."ws"()
    unless $P10, rx682_fail
    rx682_pos = $P10."pos"()
  # rx pass
    rx682_cur."!cursor_pass"(rx682_pos, "default_value")
    rx682_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx682_pos)
    .return (rx682_cur)
  rx682_fail:
.annotate "line", 4
    (rx682_rep, rx682_pos, $I10, $P10) = rx682_cur."!mark_fail"(0)
    lt rx682_pos, -1, rx682_done
    eq rx682_pos, -1, rx682_fail
    jump $I10
  rx682_done:
    rx682_cur."!cursor_fail"()
    rx682_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx682_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("162_1261201519.6115") :method
.annotate "line", 4
    new $P684, "ResizablePMCArray"
    push $P684, ""
    .return ($P684)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("163_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx690_tgt
    .local int rx690_pos
    .local int rx690_off
    .local int rx690_eos
    .local int rx690_rep
    .local pmc rx690_cur
    (rx690_cur, rx690_pos, rx690_tgt) = self."!cursor_start"()
    rx690_cur."!cursor_debug"("START ", "regex_declarator")
    rx690_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx690_cur
    .local pmc match
    .lex "$/", match
    length rx690_eos, rx690_tgt
    set rx690_off, 0
    lt rx690_pos, 2, rx690_start
    sub rx690_off, rx690_pos, 1
    substr rx690_tgt, rx690_tgt, rx690_off
  rx690_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan693_done
    goto rxscan693_scan
  rxscan693_loop:
    ($P10) = rx690_cur."from"()
    inc $P10
    set rx690_pos, $P10
    ge rx690_pos, rx690_eos, rxscan693_done
  rxscan693_scan:
    set_addr $I10, rxscan693_loop
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  rxscan693_done:
.annotate "line", 315
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  alt695_0:
.annotate "line", 316
    set_addr $I10, alt695_1
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
.annotate "line", 317
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_697_fail
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  # rx literal  "proto"
    add $I11, rx690_pos, 5
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 5
    ne $S10, "proto", rx690_fail
    add rx690_pos, 5
    set_addr $I10, rxcap_697_fail
    ($I12, $I11) = rx690_cur."!mark_peek"($I10)
    rx690_cur."!cursor_pos"($I11)
    ($P10) = rx690_cur."!cursor_start"()
    $P10."!cursor_pass"(rx690_pos, "")
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_697_done
  rxcap_697_fail:
    goto rx690_fail
  rxcap_697_done:
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  alt699_0:
    set_addr $I10, alt699_1
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  # rx literal  "regex"
    add $I11, rx690_pos, 5
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 5
    ne $S10, "regex", rx690_fail
    add rx690_pos, 5
    goto alt699_end
  alt699_1:
    set_addr $I10, alt699_2
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  # rx literal  "token"
    add $I11, rx690_pos, 5
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 5
    ne $S10, "token", rx690_fail
    add rx690_pos, 5
    goto alt699_end
  alt699_2:
  # rx literal  "rule"
    add $I11, rx690_pos, 4
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 4
    ne $S10, "rule", rx690_fail
    add rx690_pos, 4
  alt699_end:
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 318
  # rx subrule "deflongname" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."deflongname"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx690_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 319
  # rx literal  "{"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 1
    ne $S10, "{", rx690_fail
    add rx690_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx690_pos, 5
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 5
    ne $S10, "<...>", rx690_fail
    add rx690_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 1
    ne $S10, "}", rx690_fail
    add rx690_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ENDSTMT"()
    unless $P10, rx690_fail
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 317
    goto alt695_end
  alt695_1:
.annotate "line", 320
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_707_fail
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  alt706_0:
    set_addr $I10, alt706_1
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  # rx literal  "regex"
    add $I11, rx690_pos, 5
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 5
    ne $S10, "regex", rx690_fail
    add rx690_pos, 5
    goto alt706_end
  alt706_1:
    set_addr $I10, alt706_2
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  # rx literal  "token"
    add $I11, rx690_pos, 5
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 5
    ne $S10, "token", rx690_fail
    add rx690_pos, 5
    goto alt706_end
  alt706_2:
  # rx literal  "rule"
    add $I11, rx690_pos, 4
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 4
    ne $S10, "rule", rx690_fail
    add rx690_pos, 4
  alt706_end:
    set_addr $I10, rxcap_707_fail
    ($I12, $I11) = rx690_cur."!mark_peek"($I10)
    rx690_cur."!cursor_pos"($I11)
    ($P10) = rx690_cur."!cursor_start"()
    $P10."!cursor_pass"(rx690_pos, "")
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_707_done
  rxcap_707_fail:
    goto rx690_fail
  rxcap_707_done:
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 321
  # rx subrule "deflongname" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."deflongname"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx690_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 322
  # rx subrule "newpad" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."newpad"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 323
  # rx rxquantr711 ** 0..1
    set_addr $I716, rxquantr711_done
    rx690_cur."!mark_push"(0, rx690_pos, $I716)
  rxquantr711_loop:
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 1
    ne $S10, "(", rx690_fail
    add rx690_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."signature"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx690_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 1
    ne $S10, ")", rx690_fail
    add rx690_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
    (rx690_rep) = rx690_cur."!mark_commit"($I716)
  rxquantr711_done:
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 324
  # rx reduce name="regex_declarator" key="open"
    rx690_cur."!cursor_pos"(rx690_pos)
    rx690_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 325
  # rx literal  "{"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 1
    ne $S10, "{", rx690_fail
    add rx690_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."LANG"("Regex", "nibbler")
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx690_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 1
    ne $S10, "}", rx690_fail
    add rx690_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ENDSTMT"()
    unless $P10, rx690_fail
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  alt695_end:
.annotate "line", 326
  # rx subrule "ws" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."ws"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
.annotate "line", 315
  # rx pass
    rx690_cur."!cursor_pass"(rx690_pos, "regex_declarator")
    rx690_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx690_pos)
    .return (rx690_cur)
  rx690_fail:
.annotate "line", 4
    (rx690_rep, rx690_pos, $I10, $P10) = rx690_cur."!mark_fail"(0)
    lt rx690_pos, -1, rx690_done
    eq rx690_pos, -1, rx690_fail
    jump $I10
  rx690_done:
    rx690_cur."!cursor_fail"()
    rx690_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx690_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("164_1261201519.6115") :method
.annotate "line", 4
    new $P692, "ResizablePMCArray"
    push $P692, ""
    .return ($P692)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("165_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx722_tgt
    .local int rx722_pos
    .local int rx722_off
    .local int rx722_eos
    .local int rx722_rep
    .local pmc rx722_cur
    (rx722_cur, rx722_pos, rx722_tgt) = self."!cursor_start"()
    rx722_cur."!cursor_debug"("START ", "dotty")
    rx722_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx722_cur
    .local pmc match
    .lex "$/", match
    length rx722_eos, rx722_tgt
    set rx722_off, 0
    lt rx722_pos, 2, rx722_start
    sub rx722_off, rx722_pos, 1
    substr rx722_tgt, rx722_tgt, rx722_off
  rx722_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan726_done
    goto rxscan726_scan
  rxscan726_loop:
    ($P10) = rx722_cur."from"()
    inc $P10
    set rx722_pos, $P10
    ge rx722_pos, rx722_eos, rxscan726_done
  rxscan726_scan:
    set_addr $I10, rxscan726_loop
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
  rxscan726_done:
.annotate "line", 330
  # rx literal  "."
    add $I11, rx722_pos, 1
    gt $I11, rx722_eos, rx722_fail
    sub $I11, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I11, 1
    ne $S10, ".", rx722_fail
    add rx722_pos, 1
  alt727_0:
.annotate "line", 331
    set_addr $I10, alt727_1
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
  # rx subrule "identifier" subtype=capture negate=
    rx722_cur."!cursor_pos"(rx722_pos)
    $P10 = rx722_cur."identifier"()
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname=identifier")
    rx722_pos = $P10."pos"()
    goto alt727_end
  alt727_1:
.annotate "line", 332
  # rx enumcharlist negate=0 zerowidth
    ge rx722_pos, rx722_eos, rx722_fail
    sub $I10, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I10, 1
    index $I11, "'\"", $S10
    lt $I11, 0, rx722_fail
  # rx subrule "quote" subtype=capture negate=
    rx722_cur."!cursor_pos"(rx722_pos)
    $P10 = rx722_cur."quote"()
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx722_pos = $P10."pos"()
  alt728_0:
.annotate "line", 333
    set_addr $I10, alt728_1
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx722_pos, rx722_eos, rx722_fail
    sub $I10, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx722_fail
    goto alt728_end
  alt728_1:
  # rx subrule "panic" subtype=method negate=
    rx722_cur."!cursor_pos"(rx722_pos)
    $P10 = rx722_cur."panic"("Quoted method name requires parenthesized arguments")
    unless $P10, rx722_fail
    rx722_pos = $P10."pos"()
  alt728_end:
  alt727_end:
.annotate "line", 339
  # rx rxquantr729 ** 0..1
    set_addr $I731, rxquantr729_done
    rx722_cur."!mark_push"(0, rx722_pos, $I731)
  rxquantr729_loop:
  alt730_0:
.annotate "line", 336
    set_addr $I10, alt730_1
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
.annotate "line", 337
  # rx enumcharlist negate=0 zerowidth
    ge rx722_pos, rx722_eos, rx722_fail
    sub $I10, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx722_fail
  # rx subrule "args" subtype=capture negate=
    rx722_cur."!cursor_pos"(rx722_pos)
    $P10 = rx722_cur."args"()
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx722_pos = $P10."pos"()
    goto alt730_end
  alt730_1:
.annotate "line", 338
  # rx literal  ":"
    add $I11, rx722_pos, 1
    gt $I11, rx722_eos, rx722_fail
    sub $I11, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I11, 1
    ne $S10, ":", rx722_fail
    add rx722_pos, 1
  # rx charclass s
    ge rx722_pos, rx722_eos, rx722_fail
    sub $I10, rx722_pos, rx722_off
    is_cclass $I11, 32, rx722_tgt, $I10
    unless $I11, rx722_fail
    inc rx722_pos
  # rx subrule "arglist" subtype=capture negate=
    rx722_cur."!cursor_pos"(rx722_pos)
    $P10 = rx722_cur."arglist"()
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx722_pos = $P10."pos"()
  alt730_end:
.annotate "line", 339
    (rx722_rep) = rx722_cur."!mark_commit"($I731)
  rxquantr729_done:
.annotate "line", 329
  # rx pass
    rx722_cur."!cursor_pass"(rx722_pos, "dotty")
    rx722_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx722_pos)
    .return (rx722_cur)
  rx722_fail:
.annotate "line", 4
    (rx722_rep, rx722_pos, $I10, $P10) = rx722_cur."!mark_fail"(0)
    lt rx722_pos, -1, rx722_done
    eq rx722_pos, -1, rx722_fail
    jump $I10
  rx722_done:
    rx722_cur."!cursor_fail"()
    rx722_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx722_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("166_1261201519.6115") :method
.annotate "line", 4
    $P724 = self."!PREFIX__!subrule"("longname=identifier", ".")
    new $P725, "ResizablePMCArray"
    push $P725, "'"
    push $P725, "\""
    push $P725, $P724
    .return ($P725)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("167_1261201519.6115") :method
.annotate "line", 343
    $P733 = self."!protoregex"("term")
    .return ($P733)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("168_1261201519.6115") :method
.annotate "line", 343
    $P735 = self."!PREFIX__!protoregex"("term")
    .return ($P735)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("169_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx737_tgt
    .local int rx737_pos
    .local int rx737_off
    .local int rx737_eos
    .local int rx737_rep
    .local pmc rx737_cur
    (rx737_cur, rx737_pos, rx737_tgt) = self."!cursor_start"()
    rx737_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx737_cur
    .local pmc match
    .lex "$/", match
    length rx737_eos, rx737_tgt
    set rx737_off, 0
    lt rx737_pos, 2, rx737_start
    sub rx737_off, rx737_pos, 1
    substr rx737_tgt, rx737_tgt, rx737_off
  rx737_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan740_done
    goto rxscan740_scan
  rxscan740_loop:
    ($P10) = rx737_cur."from"()
    inc $P10
    set rx737_pos, $P10
    ge rx737_pos, rx737_eos, rxscan740_done
  rxscan740_scan:
    set_addr $I10, rxscan740_loop
    rx737_cur."!mark_push"(0, rx737_pos, $I10)
  rxscan740_done:
.annotate "line", 345
  # rx subcapture "sym"
    set_addr $I10, rxcap_741_fail
    rx737_cur."!mark_push"(0, rx737_pos, $I10)
  # rx literal  "self"
    add $I11, rx737_pos, 4
    gt $I11, rx737_eos, rx737_fail
    sub $I11, rx737_pos, rx737_off
    substr $S10, rx737_tgt, $I11, 4
    ne $S10, "self", rx737_fail
    add rx737_pos, 4
    set_addr $I10, rxcap_741_fail
    ($I12, $I11) = rx737_cur."!mark_peek"($I10)
    rx737_cur."!cursor_pos"($I11)
    ($P10) = rx737_cur."!cursor_start"()
    $P10."!cursor_pass"(rx737_pos, "")
    rx737_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_741_done
  rxcap_741_fail:
    goto rx737_fail
  rxcap_741_done:
  # rxanchor rwb
    le rx737_pos, 0, rx737_fail
    sub $I10, rx737_pos, rx737_off
    is_cclass $I11, 8192, rx737_tgt, $I10
    if $I11, rx737_fail
    dec $I10
    is_cclass $I11, 8192, rx737_tgt, $I10
    unless $I11, rx737_fail
  # rx pass
    rx737_cur."!cursor_pass"(rx737_pos, "term:sym<self>")
    rx737_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx737_pos)
    .return (rx737_cur)
  rx737_fail:
.annotate "line", 4
    (rx737_rep, rx737_pos, $I10, $P10) = rx737_cur."!mark_fail"(0)
    lt rx737_pos, -1, rx737_done
    eq rx737_pos, -1, rx737_fail
    jump $I10
  rx737_done:
    rx737_cur."!cursor_fail"()
    rx737_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx737_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("170_1261201519.6115") :method
.annotate "line", 4
    new $P739, "ResizablePMCArray"
    push $P739, "self"
    .return ($P739)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("171_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx743_tgt
    .local int rx743_pos
    .local int rx743_off
    .local int rx743_eos
    .local int rx743_rep
    .local pmc rx743_cur
    (rx743_cur, rx743_pos, rx743_tgt) = self."!cursor_start"()
    rx743_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx743_cur
    .local pmc match
    .lex "$/", match
    length rx743_eos, rx743_tgt
    set rx743_off, 0
    lt rx743_pos, 2, rx743_start
    sub rx743_off, rx743_pos, 1
    substr rx743_tgt, rx743_tgt, rx743_off
  rx743_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan747_done
    goto rxscan747_scan
  rxscan747_loop:
    ($P10) = rx743_cur."from"()
    inc $P10
    set rx743_pos, $P10
    ge rx743_pos, rx743_eos, rxscan747_done
  rxscan747_scan:
    set_addr $I10, rxscan747_loop
    rx743_cur."!mark_push"(0, rx743_pos, $I10)
  rxscan747_done:
.annotate "line", 348
  # rx subrule "identifier" subtype=capture negate=
    rx743_cur."!cursor_pos"(rx743_pos)
    $P10 = rx743_cur."identifier"()
    unless $P10, rx743_fail
    rx743_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx743_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx743_pos, rx743_eos, rx743_fail
    sub $I10, rx743_pos, rx743_off
    substr $S10, rx743_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx743_fail
  # rx subrule "args" subtype=capture negate=
    rx743_cur."!cursor_pos"(rx743_pos)
    $P10 = rx743_cur."args"()
    unless $P10, rx743_fail
    rx743_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx743_pos = $P10."pos"()
.annotate "line", 347
  # rx pass
    rx743_cur."!cursor_pass"(rx743_pos, "term:sym<identifier>")
    rx743_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx743_pos)
    .return (rx743_cur)
  rx743_fail:
.annotate "line", 4
    (rx743_rep, rx743_pos, $I10, $P10) = rx743_cur."!mark_fail"(0)
    lt rx743_pos, -1, rx743_done
    eq rx743_pos, -1, rx743_fail
    jump $I10
  rx743_done:
    rx743_cur."!cursor_fail"()
    rx743_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx743_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("172_1261201519.6115") :method
.annotate "line", 4
    $P745 = self."!PREFIX__!subrule"("identifier", "")
    new $P746, "ResizablePMCArray"
    push $P746, $P745
    .return ($P746)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("173_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx749_tgt
    .local int rx749_pos
    .local int rx749_off
    .local int rx749_eos
    .local int rx749_rep
    .local pmc rx749_cur
    (rx749_cur, rx749_pos, rx749_tgt) = self."!cursor_start"()
    rx749_cur."!cursor_debug"("START ", "term:sym<name>")
    rx749_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx749_cur
    .local pmc match
    .lex "$/", match
    length rx749_eos, rx749_tgt
    set rx749_off, 0
    lt rx749_pos, 2, rx749_start
    sub rx749_off, rx749_pos, 1
    substr rx749_tgt, rx749_tgt, rx749_off
  rx749_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan753_done
    goto rxscan753_scan
  rxscan753_loop:
    ($P10) = rx749_cur."from"()
    inc $P10
    set rx749_pos, $P10
    ge rx749_pos, rx749_eos, rxscan753_done
  rxscan753_scan:
    set_addr $I10, rxscan753_loop
    rx749_cur."!mark_push"(0, rx749_pos, $I10)
  rxscan753_done:
.annotate "line", 352
  # rx subrule "name" subtype=capture negate=
    rx749_cur."!cursor_pos"(rx749_pos)
    $P10 = rx749_cur."name"()
    unless $P10, rx749_fail
    rx749_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx749_pos = $P10."pos"()
  # rx rxquantr754 ** 0..1
    set_addr $I755, rxquantr754_done
    rx749_cur."!mark_push"(0, rx749_pos, $I755)
  rxquantr754_loop:
  # rx subrule "args" subtype=capture negate=
    rx749_cur."!cursor_pos"(rx749_pos)
    $P10 = rx749_cur."args"()
    unless $P10, rx749_fail
    rx749_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx749_pos = $P10."pos"()
    (rx749_rep) = rx749_cur."!mark_commit"($I755)
  rxquantr754_done:
.annotate "line", 351
  # rx pass
    rx749_cur."!cursor_pass"(rx749_pos, "term:sym<name>")
    rx749_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx749_pos)
    .return (rx749_cur)
  rx749_fail:
.annotate "line", 4
    (rx749_rep, rx749_pos, $I10, $P10) = rx749_cur."!mark_fail"(0)
    lt rx749_pos, -1, rx749_done
    eq rx749_pos, -1, rx749_fail
    jump $I10
  rx749_done:
    rx749_cur."!cursor_fail"()
    rx749_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx749_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("174_1261201519.6115") :method
.annotate "line", 4
    $P751 = self."!PREFIX__!subrule"("name", "")
    new $P752, "ResizablePMCArray"
    push $P752, $P751
    .return ($P752)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("175_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx757_tgt
    .local int rx757_pos
    .local int rx757_off
    .local int rx757_eos
    .local int rx757_rep
    .local pmc rx757_cur
    (rx757_cur, rx757_pos, rx757_tgt) = self."!cursor_start"()
    rx757_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx757_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx757_cur
    .local pmc match
    .lex "$/", match
    length rx757_eos, rx757_tgt
    set rx757_off, 0
    lt rx757_pos, 2, rx757_start
    sub rx757_off, rx757_pos, 1
    substr rx757_tgt, rx757_tgt, rx757_off
  rx757_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan760_done
    goto rxscan760_scan
  rxscan760_loop:
    ($P10) = rx757_cur."from"()
    inc $P10
    set rx757_pos, $P10
    ge rx757_pos, rx757_eos, rxscan760_done
  rxscan760_scan:
    set_addr $I10, rxscan760_loop
    rx757_cur."!mark_push"(0, rx757_pos, $I10)
  rxscan760_done:
.annotate "line", 356
  # rx literal  "pir::"
    add $I11, rx757_pos, 5
    gt $I11, rx757_eos, rx757_fail
    sub $I11, rx757_pos, rx757_off
    substr $S10, rx757_tgt, $I11, 5
    ne $S10, "pir::", rx757_fail
    add rx757_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_761_fail
    rx757_cur."!mark_push"(0, rx757_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx757_pos, rx757_off
    find_not_cclass $I11, 8192, rx757_tgt, $I10, rx757_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx757_fail
    add rx757_pos, rx757_off, $I11
    set_addr $I10, rxcap_761_fail
    ($I12, $I11) = rx757_cur."!mark_peek"($I10)
    rx757_cur."!cursor_pos"($I11)
    ($P10) = rx757_cur."!cursor_start"()
    $P10."!cursor_pass"(rx757_pos, "")
    rx757_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_761_done
  rxcap_761_fail:
    goto rx757_fail
  rxcap_761_done:
  # rx rxquantr762 ** 0..1
    set_addr $I763, rxquantr762_done
    rx757_cur."!mark_push"(0, rx757_pos, $I763)
  rxquantr762_loop:
  # rx subrule "args" subtype=capture negate=
    rx757_cur."!cursor_pos"(rx757_pos)
    $P10 = rx757_cur."args"()
    unless $P10, rx757_fail
    rx757_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx757_pos = $P10."pos"()
    (rx757_rep) = rx757_cur."!mark_commit"($I763)
  rxquantr762_done:
.annotate "line", 355
  # rx pass
    rx757_cur."!cursor_pass"(rx757_pos, "term:sym<pir::op>")
    rx757_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx757_pos)
    .return (rx757_cur)
  rx757_fail:
.annotate "line", 4
    (rx757_rep, rx757_pos, $I10, $P10) = rx757_cur."!mark_fail"(0)
    lt rx757_pos, -1, rx757_done
    eq rx757_pos, -1, rx757_fail
    jump $I10
  rx757_done:
    rx757_cur."!cursor_fail"()
    rx757_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx757_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("176_1261201519.6115") :method
.annotate "line", 4
    new $P759, "ResizablePMCArray"
    push $P759, "pir::"
    .return ($P759)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("177_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx765_tgt
    .local int rx765_pos
    .local int rx765_off
    .local int rx765_eos
    .local int rx765_rep
    .local pmc rx765_cur
    (rx765_cur, rx765_pos, rx765_tgt) = self."!cursor_start"()
    rx765_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx765_cur
    .local pmc match
    .lex "$/", match
    length rx765_eos, rx765_tgt
    set rx765_off, 0
    lt rx765_pos, 2, rx765_start
    sub rx765_off, rx765_pos, 1
    substr rx765_tgt, rx765_tgt, rx765_off
  rx765_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan769_done
    goto rxscan769_scan
  rxscan769_loop:
    ($P10) = rx765_cur."from"()
    inc $P10
    set rx765_pos, $P10
    ge rx765_pos, rx765_eos, rxscan769_done
  rxscan769_scan:
    set_addr $I10, rxscan769_loop
    rx765_cur."!mark_push"(0, rx765_pos, $I10)
  rxscan769_done:
.annotate "line", 360
  # rx literal  "("
    add $I11, rx765_pos, 1
    gt $I11, rx765_eos, rx765_fail
    sub $I11, rx765_pos, rx765_off
    substr $S10, rx765_tgt, $I11, 1
    ne $S10, "(", rx765_fail
    add rx765_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx765_cur."!cursor_pos"(rx765_pos)
    $P10 = rx765_cur."arglist"()
    unless $P10, rx765_fail
    rx765_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx765_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx765_pos, 1
    gt $I11, rx765_eos, rx765_fail
    sub $I11, rx765_pos, rx765_off
    substr $S10, rx765_tgt, $I11, 1
    ne $S10, ")", rx765_fail
    add rx765_pos, 1
  # rx pass
    rx765_cur."!cursor_pass"(rx765_pos, "args")
    rx765_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx765_pos)
    .return (rx765_cur)
  rx765_fail:
.annotate "line", 4
    (rx765_rep, rx765_pos, $I10, $P10) = rx765_cur."!mark_fail"(0)
    lt rx765_pos, -1, rx765_done
    eq rx765_pos, -1, rx765_fail
    jump $I10
  rx765_done:
    rx765_cur."!cursor_fail"()
    rx765_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx765_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("178_1261201519.6115") :method
.annotate "line", 4
    $P767 = self."!PREFIX__!subrule"("arglist", "(")
    new $P768, "ResizablePMCArray"
    push $P768, $P767
    .return ($P768)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("179_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx771_tgt
    .local int rx771_pos
    .local int rx771_off
    .local int rx771_eos
    .local int rx771_rep
    .local pmc rx771_cur
    (rx771_cur, rx771_pos, rx771_tgt) = self."!cursor_start"()
    rx771_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx771_cur
    .local pmc match
    .lex "$/", match
    length rx771_eos, rx771_tgt
    set rx771_off, 0
    lt rx771_pos, 2, rx771_start
    sub rx771_off, rx771_pos, 1
    substr rx771_tgt, rx771_tgt, rx771_off
  rx771_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan775_done
    goto rxscan775_scan
  rxscan775_loop:
    ($P10) = rx771_cur."from"()
    inc $P10
    set rx771_pos, $P10
    ge rx771_pos, rx771_eos, rxscan775_done
  rxscan775_scan:
    set_addr $I10, rxscan775_loop
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
  rxscan775_done:
.annotate "line", 364
  # rx subrule "ws" subtype=method negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."ws"()
    unless $P10, rx771_fail
    rx771_pos = $P10."pos"()
  alt776_0:
.annotate "line", 365
    set_addr $I10, alt776_1
    rx771_cur."!mark_push"(0, rx771_pos, $I10)
.annotate "line", 366
  # rx subrule "EXPR" subtype=capture negate=
    rx771_cur."!cursor_pos"(rx771_pos)
    $P10 = rx771_cur."EXPR"("f=")
    unless $P10, rx771_fail
    rx771_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx771_pos = $P10."pos"()
    goto alt776_end
  alt776_1:
  alt776_end:
.annotate "line", 363
  # rx pass
    rx771_cur."!cursor_pass"(rx771_pos, "arglist")
    rx771_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx771_pos)
    .return (rx771_cur)
  rx771_fail:
.annotate "line", 4
    (rx771_rep, rx771_pos, $I10, $P10) = rx771_cur."!mark_fail"(0)
    lt rx771_pos, -1, rx771_done
    eq rx771_pos, -1, rx771_fail
    jump $I10
  rx771_done:
    rx771_cur."!cursor_fail"()
    rx771_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx771_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("180_1261201519.6115") :method
.annotate "line", 4
    $P773 = self."!PREFIX__!subrule"("", "")
    new $P774, "ResizablePMCArray"
    push $P774, $P773
    .return ($P774)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("181_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx778_tgt
    .local int rx778_pos
    .local int rx778_off
    .local int rx778_eos
    .local int rx778_rep
    .local pmc rx778_cur
    (rx778_cur, rx778_pos, rx778_tgt) = self."!cursor_start"()
    rx778_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx778_cur
    .local pmc match
    .lex "$/", match
    length rx778_eos, rx778_tgt
    set rx778_off, 0
    lt rx778_pos, 2, rx778_start
    sub rx778_off, rx778_pos, 1
    substr rx778_tgt, rx778_tgt, rx778_off
  rx778_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan782_done
    goto rxscan782_scan
  rxscan782_loop:
    ($P10) = rx778_cur."from"()
    inc $P10
    set rx778_pos, $P10
    ge rx778_pos, rx778_eos, rxscan782_done
  rxscan782_scan:
    set_addr $I10, rxscan782_loop
    rx778_cur."!mark_push"(0, rx778_pos, $I10)
  rxscan782_done:
.annotate "line", 372
  # rx subrule "value" subtype=capture negate=
    rx778_cur."!cursor_pos"(rx778_pos)
    $P10 = rx778_cur."value"()
    unless $P10, rx778_fail
    rx778_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx778_pos = $P10."pos"()
  # rx pass
    rx778_cur."!cursor_pass"(rx778_pos, "term:sym<value>")
    rx778_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx778_pos)
    .return (rx778_cur)
  rx778_fail:
.annotate "line", 4
    (rx778_rep, rx778_pos, $I10, $P10) = rx778_cur."!mark_fail"(0)
    lt rx778_pos, -1, rx778_done
    eq rx778_pos, -1, rx778_fail
    jump $I10
  rx778_done:
    rx778_cur."!cursor_fail"()
    rx778_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx778_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("182_1261201519.6115") :method
.annotate "line", 4
    $P780 = self."!PREFIX__!subrule"("value", "")
    new $P781, "ResizablePMCArray"
    push $P781, $P780
    .return ($P781)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("183_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx784_tgt
    .local int rx784_pos
    .local int rx784_off
    .local int rx784_eos
    .local int rx784_rep
    .local pmc rx784_cur
    (rx784_cur, rx784_pos, rx784_tgt) = self."!cursor_start"()
    rx784_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx784_cur
    .local pmc match
    .lex "$/", match
    length rx784_eos, rx784_tgt
    set rx784_off, 0
    lt rx784_pos, 2, rx784_start
    sub rx784_off, rx784_pos, 1
    substr rx784_tgt, rx784_tgt, rx784_off
  rx784_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan789_done
    goto rxscan789_scan
  rxscan789_loop:
    ($P10) = rx784_cur."from"()
    inc $P10
    set rx784_pos, $P10
    ge rx784_pos, rx784_eos, rxscan789_done
  rxscan789_scan:
    set_addr $I10, rxscan789_loop
    rx784_cur."!mark_push"(0, rx784_pos, $I10)
  rxscan789_done:
  alt790_0:
.annotate "line", 374
    set_addr $I10, alt790_1
    rx784_cur."!mark_push"(0, rx784_pos, $I10)
.annotate "line", 375
  # rx subrule "quote" subtype=capture negate=
    rx784_cur."!cursor_pos"(rx784_pos)
    $P10 = rx784_cur."quote"()
    unless $P10, rx784_fail
    rx784_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx784_pos = $P10."pos"()
    goto alt790_end
  alt790_1:
.annotate "line", 376
  # rx subrule "number" subtype=capture negate=
    rx784_cur."!cursor_pos"(rx784_pos)
    $P10 = rx784_cur."number"()
    unless $P10, rx784_fail
    rx784_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("number")
    rx784_pos = $P10."pos"()
  alt790_end:
.annotate "line", 374
  # rx pass
    rx784_cur."!cursor_pass"(rx784_pos, "value")
    rx784_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx784_pos)
    .return (rx784_cur)
  rx784_fail:
.annotate "line", 4
    (rx784_rep, rx784_pos, $I10, $P10) = rx784_cur."!mark_fail"(0)
    lt rx784_pos, -1, rx784_done
    eq rx784_pos, -1, rx784_fail
    jump $I10
  rx784_done:
    rx784_cur."!cursor_fail"()
    rx784_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx784_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("184_1261201519.6115") :method
.annotate "line", 4
    $P786 = self."!PREFIX__!subrule"("number", "")
    $P787 = self."!PREFIX__!subrule"("quote", "")
    new $P788, "ResizablePMCArray"
    push $P788, $P786
    push $P788, $P787
    .return ($P788)
.end


.namespace ["NQP";"Grammar"]
.sub "number"  :subid("185_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx792_tgt
    .local int rx792_pos
    .local int rx792_off
    .local int rx792_eos
    .local int rx792_rep
    .local pmc rx792_cur
    (rx792_cur, rx792_pos, rx792_tgt) = self."!cursor_start"()
    rx792_cur."!cursor_debug"("START ", "number")
    .lex unicode:"$\x{a2}", rx792_cur
    .local pmc match
    .lex "$/", match
    length rx792_eos, rx792_tgt
    set rx792_off, 0
    lt rx792_pos, 2, rx792_start
    sub rx792_off, rx792_pos, 1
    substr rx792_tgt, rx792_tgt, rx792_off
  rx792_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan795_done
    goto rxscan795_scan
  rxscan795_loop:
    ($P10) = rx792_cur."from"()
    inc $P10
    set rx792_pos, $P10
    ge rx792_pos, rx792_eos, rxscan795_done
  rxscan795_scan:
    set_addr $I10, rxscan795_loop
    rx792_cur."!mark_push"(0, rx792_pos, $I10)
  rxscan795_done:
.annotate "line", 380
  # rx subcapture "sign"
    set_addr $I10, rxcap_798_fail
    rx792_cur."!mark_push"(0, rx792_pos, $I10)
  # rx rxquantr796 ** 0..1
    set_addr $I797, rxquantr796_done
    rx792_cur."!mark_push"(0, rx792_pos, $I797)
  rxquantr796_loop:
  # rx enumcharlist negate=0 
    ge rx792_pos, rx792_eos, rx792_fail
    sub $I10, rx792_pos, rx792_off
    substr $S10, rx792_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rx792_fail
    inc rx792_pos
    (rx792_rep) = rx792_cur."!mark_commit"($I797)
  rxquantr796_done:
    set_addr $I10, rxcap_798_fail
    ($I12, $I11) = rx792_cur."!mark_peek"($I10)
    rx792_cur."!cursor_pos"($I11)
    ($P10) = rx792_cur."!cursor_start"()
    $P10."!cursor_pass"(rx792_pos, "")
    rx792_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_798_done
  rxcap_798_fail:
    goto rx792_fail
  rxcap_798_done:
  alt799_0:
.annotate "line", 381
    set_addr $I10, alt799_1
    rx792_cur."!mark_push"(0, rx792_pos, $I10)
  # rx subrule "dec_number" subtype=capture negate=
    rx792_cur."!cursor_pos"(rx792_pos)
    $P10 = rx792_cur."dec_number"()
    unless $P10, rx792_fail
    rx792_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dec_number")
    rx792_pos = $P10."pos"()
    goto alt799_end
  alt799_1:
  # rx subrule "integer" subtype=capture negate=
    rx792_cur."!cursor_pos"(rx792_pos)
    $P10 = rx792_cur."integer"()
    unless $P10, rx792_fail
    rx792_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx792_pos = $P10."pos"()
  alt799_end:
.annotate "line", 379
  # rx pass
    rx792_cur."!cursor_pass"(rx792_pos, "number")
    rx792_cur."!cursor_debug"("PASS  ", "number", " at pos=", rx792_pos)
    .return (rx792_cur)
  rx792_fail:
.annotate "line", 4
    (rx792_rep, rx792_pos, $I10, $P10) = rx792_cur."!mark_fail"(0)
    lt rx792_pos, -1, rx792_done
    eq rx792_pos, -1, rx792_fail
    jump $I10
  rx792_done:
    rx792_cur."!cursor_fail"()
    rx792_cur."!cursor_debug"("FAIL  ", "number")
    .return (rx792_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__number"  :subid("186_1261201519.6115") :method
.annotate "line", 4
    new $P794, "ResizablePMCArray"
    push $P794, ""
    .return ($P794)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("187_1261201519.6115") :method
.annotate "line", 384
    $P801 = self."!protoregex"("quote")
    .return ($P801)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("188_1261201519.6115") :method
.annotate "line", 384
    $P803 = self."!PREFIX__!protoregex"("quote")
    .return ($P803)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("189_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx805_tgt
    .local int rx805_pos
    .local int rx805_off
    .local int rx805_eos
    .local int rx805_rep
    .local pmc rx805_cur
    (rx805_cur, rx805_pos, rx805_tgt) = self."!cursor_start"()
    rx805_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx805_cur
    .local pmc match
    .lex "$/", match
    length rx805_eos, rx805_tgt
    set rx805_off, 0
    lt rx805_pos, 2, rx805_start
    sub rx805_off, rx805_pos, 1
    substr rx805_tgt, rx805_tgt, rx805_off
  rx805_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan808_done
    goto rxscan808_scan
  rxscan808_loop:
    ($P10) = rx805_cur."from"()
    inc $P10
    set rx805_pos, $P10
    ge rx805_pos, rx805_eos, rxscan808_done
  rxscan808_scan:
    set_addr $I10, rxscan808_loop
    rx805_cur."!mark_push"(0, rx805_pos, $I10)
  rxscan808_done:
.annotate "line", 385
  # rx enumcharlist negate=0 zerowidth
    ge rx805_pos, rx805_eos, rx805_fail
    sub $I10, rx805_pos, rx805_off
    substr $S10, rx805_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx805_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx805_cur."!cursor_pos"(rx805_pos)
    $P10 = rx805_cur."quote_EXPR"(":q")
    unless $P10, rx805_fail
    rx805_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx805_pos = $P10."pos"()
  # rx pass
    rx805_cur."!cursor_pass"(rx805_pos, "quote:sym<apos>")
    rx805_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx805_pos)
    .return (rx805_cur)
  rx805_fail:
.annotate "line", 4
    (rx805_rep, rx805_pos, $I10, $P10) = rx805_cur."!mark_fail"(0)
    lt rx805_pos, -1, rx805_done
    eq rx805_pos, -1, rx805_fail
    jump $I10
  rx805_done:
    rx805_cur."!cursor_fail"()
    rx805_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx805_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("190_1261201519.6115") :method
.annotate "line", 4
    new $P807, "ResizablePMCArray"
    push $P807, "'"
    .return ($P807)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("191_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx810_tgt
    .local int rx810_pos
    .local int rx810_off
    .local int rx810_eos
    .local int rx810_rep
    .local pmc rx810_cur
    (rx810_cur, rx810_pos, rx810_tgt) = self."!cursor_start"()
    rx810_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx810_cur
    .local pmc match
    .lex "$/", match
    length rx810_eos, rx810_tgt
    set rx810_off, 0
    lt rx810_pos, 2, rx810_start
    sub rx810_off, rx810_pos, 1
    substr rx810_tgt, rx810_tgt, rx810_off
  rx810_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan813_done
    goto rxscan813_scan
  rxscan813_loop:
    ($P10) = rx810_cur."from"()
    inc $P10
    set rx810_pos, $P10
    ge rx810_pos, rx810_eos, rxscan813_done
  rxscan813_scan:
    set_addr $I10, rxscan813_loop
    rx810_cur."!mark_push"(0, rx810_pos, $I10)
  rxscan813_done:
.annotate "line", 386
  # rx enumcharlist negate=0 zerowidth
    ge rx810_pos, rx810_eos, rx810_fail
    sub $I10, rx810_pos, rx810_off
    substr $S10, rx810_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx810_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx810_cur."!cursor_pos"(rx810_pos)
    $P10 = rx810_cur."quote_EXPR"(":qq")
    unless $P10, rx810_fail
    rx810_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx810_pos = $P10."pos"()
  # rx pass
    rx810_cur."!cursor_pass"(rx810_pos, "quote:sym<dblq>")
    rx810_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx810_pos)
    .return (rx810_cur)
  rx810_fail:
.annotate "line", 4
    (rx810_rep, rx810_pos, $I10, $P10) = rx810_cur."!mark_fail"(0)
    lt rx810_pos, -1, rx810_done
    eq rx810_pos, -1, rx810_fail
    jump $I10
  rx810_done:
    rx810_cur."!cursor_fail"()
    rx810_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx810_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("192_1261201519.6115") :method
.annotate "line", 4
    new $P812, "ResizablePMCArray"
    push $P812, "\""
    .return ($P812)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("193_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx815_tgt
    .local int rx815_pos
    .local int rx815_off
    .local int rx815_eos
    .local int rx815_rep
    .local pmc rx815_cur
    (rx815_cur, rx815_pos, rx815_tgt) = self."!cursor_start"()
    rx815_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx815_cur
    .local pmc match
    .lex "$/", match
    length rx815_eos, rx815_tgt
    set rx815_off, 0
    lt rx815_pos, 2, rx815_start
    sub rx815_off, rx815_pos, 1
    substr rx815_tgt, rx815_tgt, rx815_off
  rx815_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan819_done
    goto rxscan819_scan
  rxscan819_loop:
    ($P10) = rx815_cur."from"()
    inc $P10
    set rx815_pos, $P10
    ge rx815_pos, rx815_eos, rxscan819_done
  rxscan819_scan:
    set_addr $I10, rxscan819_loop
    rx815_cur."!mark_push"(0, rx815_pos, $I10)
  rxscan819_done:
.annotate "line", 387
  # rx literal  "q"
    add $I11, rx815_pos, 1
    gt $I11, rx815_eos, rx815_fail
    sub $I11, rx815_pos, rx815_off
    substr $S10, rx815_tgt, $I11, 1
    ne $S10, "q", rx815_fail
    add rx815_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx815_pos, rx815_eos, rx815_fail
    sub $I10, rx815_pos, rx815_off
    substr $S10, rx815_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx815_fail
  # rx subrule "ws" subtype=method negate=
    rx815_cur."!cursor_pos"(rx815_pos)
    $P10 = rx815_cur."ws"()
    unless $P10, rx815_fail
    rx815_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx815_cur."!cursor_pos"(rx815_pos)
    $P10 = rx815_cur."quote_EXPR"(":q")
    unless $P10, rx815_fail
    rx815_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx815_pos = $P10."pos"()
  # rx pass
    rx815_cur."!cursor_pass"(rx815_pos, "quote:sym<q>")
    rx815_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx815_pos)
    .return (rx815_cur)
  rx815_fail:
.annotate "line", 4
    (rx815_rep, rx815_pos, $I10, $P10) = rx815_cur."!mark_fail"(0)
    lt rx815_pos, -1, rx815_done
    eq rx815_pos, -1, rx815_fail
    jump $I10
  rx815_done:
    rx815_cur."!cursor_fail"()
    rx815_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx815_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("194_1261201519.6115") :method
.annotate "line", 4
    $P817 = self."!PREFIX__!subrule"("", "q")
    new $P818, "ResizablePMCArray"
    push $P818, $P817
    .return ($P818)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("195_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx821_tgt
    .local int rx821_pos
    .local int rx821_off
    .local int rx821_eos
    .local int rx821_rep
    .local pmc rx821_cur
    (rx821_cur, rx821_pos, rx821_tgt) = self."!cursor_start"()
    rx821_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx821_cur
    .local pmc match
    .lex "$/", match
    length rx821_eos, rx821_tgt
    set rx821_off, 0
    lt rx821_pos, 2, rx821_start
    sub rx821_off, rx821_pos, 1
    substr rx821_tgt, rx821_tgt, rx821_off
  rx821_start:
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
.annotate "line", 388
  # rx literal  "qq"
    add $I11, rx821_pos, 2
    gt $I11, rx821_eos, rx821_fail
    sub $I11, rx821_pos, rx821_off
    substr $S10, rx821_tgt, $I11, 2
    ne $S10, "qq", rx821_fail
    add rx821_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx821_pos, rx821_eos, rx821_fail
    sub $I10, rx821_pos, rx821_off
    substr $S10, rx821_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx821_fail
  # rx subrule "ws" subtype=method negate=
    rx821_cur."!cursor_pos"(rx821_pos)
    $P10 = rx821_cur."ws"()
    unless $P10, rx821_fail
    rx821_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx821_cur."!cursor_pos"(rx821_pos)
    $P10 = rx821_cur."quote_EXPR"(":qq")
    unless $P10, rx821_fail
    rx821_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx821_pos = $P10."pos"()
  # rx pass
    rx821_cur."!cursor_pass"(rx821_pos, "quote:sym<qq>")
    rx821_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx821_pos)
    .return (rx821_cur)
  rx821_fail:
.annotate "line", 4
    (rx821_rep, rx821_pos, $I10, $P10) = rx821_cur."!mark_fail"(0)
    lt rx821_pos, -1, rx821_done
    eq rx821_pos, -1, rx821_fail
    jump $I10
  rx821_done:
    rx821_cur."!cursor_fail"()
    rx821_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx821_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("196_1261201519.6115") :method
.annotate "line", 4
    $P823 = self."!PREFIX__!subrule"("", "qq")
    new $P824, "ResizablePMCArray"
    push $P824, $P823
    .return ($P824)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("197_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx827_tgt
    .local int rx827_pos
    .local int rx827_off
    .local int rx827_eos
    .local int rx827_rep
    .local pmc rx827_cur
    (rx827_cur, rx827_pos, rx827_tgt) = self."!cursor_start"()
    rx827_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx827_cur
    .local pmc match
    .lex "$/", match
    length rx827_eos, rx827_tgt
    set rx827_off, 0
    lt rx827_pos, 2, rx827_start
    sub rx827_off, rx827_pos, 1
    substr rx827_tgt, rx827_tgt, rx827_off
  rx827_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan831_done
    goto rxscan831_scan
  rxscan831_loop:
    ($P10) = rx827_cur."from"()
    inc $P10
    set rx827_pos, $P10
    ge rx827_pos, rx827_eos, rxscan831_done
  rxscan831_scan:
    set_addr $I10, rxscan831_loop
    rx827_cur."!mark_push"(0, rx827_pos, $I10)
  rxscan831_done:
.annotate "line", 389
  # rx literal  "Q"
    add $I11, rx827_pos, 1
    gt $I11, rx827_eos, rx827_fail
    sub $I11, rx827_pos, rx827_off
    substr $S10, rx827_tgt, $I11, 1
    ne $S10, "Q", rx827_fail
    add rx827_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx827_pos, rx827_eos, rx827_fail
    sub $I10, rx827_pos, rx827_off
    substr $S10, rx827_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx827_fail
  # rx subrule "ws" subtype=method negate=
    rx827_cur."!cursor_pos"(rx827_pos)
    $P10 = rx827_cur."ws"()
    unless $P10, rx827_fail
    rx827_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx827_cur."!cursor_pos"(rx827_pos)
    $P10 = rx827_cur."quote_EXPR"()
    unless $P10, rx827_fail
    rx827_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx827_pos = $P10."pos"()
  # rx pass
    rx827_cur."!cursor_pass"(rx827_pos, "quote:sym<Q>")
    rx827_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx827_pos)
    .return (rx827_cur)
  rx827_fail:
.annotate "line", 4
    (rx827_rep, rx827_pos, $I10, $P10) = rx827_cur."!mark_fail"(0)
    lt rx827_pos, -1, rx827_done
    eq rx827_pos, -1, rx827_fail
    jump $I10
  rx827_done:
    rx827_cur."!cursor_fail"()
    rx827_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx827_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("198_1261201519.6115") :method
.annotate "line", 4
    $P829 = self."!PREFIX__!subrule"("", "Q")
    new $P830, "ResizablePMCArray"
    push $P830, $P829
    .return ($P830)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("199_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx833_tgt
    .local int rx833_pos
    .local int rx833_off
    .local int rx833_eos
    .local int rx833_rep
    .local pmc rx833_cur
    (rx833_cur, rx833_pos, rx833_tgt) = self."!cursor_start"()
    rx833_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx833_cur
    .local pmc match
    .lex "$/", match
    length rx833_eos, rx833_tgt
    set rx833_off, 0
    lt rx833_pos, 2, rx833_start
    sub rx833_off, rx833_pos, 1
    substr rx833_tgt, rx833_tgt, rx833_off
  rx833_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan837_done
    goto rxscan837_scan
  rxscan837_loop:
    ($P10) = rx833_cur."from"()
    inc $P10
    set rx833_pos, $P10
    ge rx833_pos, rx833_eos, rxscan837_done
  rxscan837_scan:
    set_addr $I10, rxscan837_loop
    rx833_cur."!mark_push"(0, rx833_pos, $I10)
  rxscan837_done:
.annotate "line", 390
  # rx literal  "Q:PIR"
    add $I11, rx833_pos, 5
    gt $I11, rx833_eos, rx833_fail
    sub $I11, rx833_pos, rx833_off
    substr $S10, rx833_tgt, $I11, 5
    ne $S10, "Q:PIR", rx833_fail
    add rx833_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx833_cur."!cursor_pos"(rx833_pos)
    $P10 = rx833_cur."ws"()
    unless $P10, rx833_fail
    rx833_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx833_cur."!cursor_pos"(rx833_pos)
    $P10 = rx833_cur."quote_EXPR"()
    unless $P10, rx833_fail
    rx833_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx833_pos = $P10."pos"()
  # rx pass
    rx833_cur."!cursor_pass"(rx833_pos, "quote:sym<Q:PIR>")
    rx833_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx833_pos)
    .return (rx833_cur)
  rx833_fail:
.annotate "line", 4
    (rx833_rep, rx833_pos, $I10, $P10) = rx833_cur."!mark_fail"(0)
    lt rx833_pos, -1, rx833_done
    eq rx833_pos, -1, rx833_fail
    jump $I10
  rx833_done:
    rx833_cur."!cursor_fail"()
    rx833_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx833_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("200_1261201519.6115") :method
.annotate "line", 4
    $P835 = self."!PREFIX__!subrule"("", "Q:PIR")
    new $P836, "ResizablePMCArray"
    push $P836, $P835
    .return ($P836)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym</ />"  :subid("201_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx839_tgt
    .local int rx839_pos
    .local int rx839_off
    .local int rx839_eos
    .local int rx839_rep
    .local pmc rx839_cur
    (rx839_cur, rx839_pos, rx839_tgt) = self."!cursor_start"()
    rx839_cur."!cursor_debug"("START ", "quote:sym</ />")
    .lex unicode:"$\x{a2}", rx839_cur
    .local pmc match
    .lex "$/", match
    length rx839_eos, rx839_tgt
    set rx839_off, 0
    lt rx839_pos, 2, rx839_start
    sub rx839_off, rx839_pos, 1
    substr rx839_tgt, rx839_tgt, rx839_off
  rx839_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan843_done
    goto rxscan843_scan
  rxscan843_loop:
    ($P10) = rx839_cur."from"()
    inc $P10
    set rx839_pos, $P10
    ge rx839_pos, rx839_eos, rxscan843_done
  rxscan843_scan:
    set_addr $I10, rxscan843_loop
    rx839_cur."!mark_push"(0, rx839_pos, $I10)
  rxscan843_done:
.annotate "line", 392
  # rx literal  "/"
    add $I11, rx839_pos, 1
    gt $I11, rx839_eos, rx839_fail
    sub $I11, rx839_pos, rx839_off
    substr $S10, rx839_tgt, $I11, 1
    ne $S10, "/", rx839_fail
    add rx839_pos, 1
.annotate "line", 393
  # rx subrule "newpad" subtype=method negate=
    rx839_cur."!cursor_pos"(rx839_pos)
    $P10 = rx839_cur."newpad"()
    unless $P10, rx839_fail
    rx839_pos = $P10."pos"()
.annotate "line", 394
  # rx reduce name="quote:sym</ />" key="open"
    rx839_cur."!cursor_pos"(rx839_pos)
    rx839_cur."!reduce"("quote:sym</ />", "open")
.annotate "line", 395
  # rx subrule "LANG" subtype=capture negate=
    rx839_cur."!cursor_pos"(rx839_pos)
    $P10 = rx839_cur."LANG"("Regex", "nibbler")
    unless $P10, rx839_fail
    rx839_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx839_pos = $P10."pos"()
.annotate "line", 396
  # rx literal  "/"
    add $I11, rx839_pos, 1
    gt $I11, rx839_eos, rx839_fail
    sub $I11, rx839_pos, rx839_off
    substr $S10, rx839_tgt, $I11, 1
    ne $S10, "/", rx839_fail
    add rx839_pos, 1
.annotate "line", 391
  # rx pass
    rx839_cur."!cursor_pass"(rx839_pos, "quote:sym</ />")
    rx839_cur."!cursor_debug"("PASS  ", "quote:sym</ />", " at pos=", rx839_pos)
    .return (rx839_cur)
  rx839_fail:
.annotate "line", 4
    (rx839_rep, rx839_pos, $I10, $P10) = rx839_cur."!mark_fail"(0)
    lt rx839_pos, -1, rx839_done
    eq rx839_pos, -1, rx839_fail
    jump $I10
  rx839_done:
    rx839_cur."!cursor_fail"()
    rx839_cur."!cursor_debug"("FAIL  ", "quote:sym</ />")
    .return (rx839_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym</ />"  :subid("202_1261201519.6115") :method
.annotate "line", 4
    $P841 = self."!PREFIX__!subrule"("", "/")
    new $P842, "ResizablePMCArray"
    push $P842, $P841
    .return ($P842)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("203_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx845_tgt
    .local int rx845_pos
    .local int rx845_off
    .local int rx845_eos
    .local int rx845_rep
    .local pmc rx845_cur
    (rx845_cur, rx845_pos, rx845_tgt) = self."!cursor_start"()
    rx845_cur."!cursor_debug"("START ", "quote_escape:sym<$>")
    .lex unicode:"$\x{a2}", rx845_cur
    .local pmc match
    .lex "$/", match
    length rx845_eos, rx845_tgt
    set rx845_off, 0
    lt rx845_pos, 2, rx845_start
    sub rx845_off, rx845_pos, 1
    substr rx845_tgt, rx845_tgt, rx845_off
  rx845_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan848_done
    goto rxscan848_scan
  rxscan848_loop:
    ($P10) = rx845_cur."from"()
    inc $P10
    set rx845_pos, $P10
    ge rx845_pos, rx845_eos, rxscan848_done
  rxscan848_scan:
    set_addr $I10, rxscan848_loop
    rx845_cur."!mark_push"(0, rx845_pos, $I10)
  rxscan848_done:
.annotate "line", 399
  # rx enumcharlist negate=0 zerowidth
    ge rx845_pos, rx845_eos, rx845_fail
    sub $I10, rx845_pos, rx845_off
    substr $S10, rx845_tgt, $I10, 1
    index $I11, "$", $S10
    lt $I11, 0, rx845_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx845_cur."!cursor_pos"(rx845_pos)
    $P10 = rx845_cur."quotemod_check"("s")
    unless $P10, rx845_fail
  # rx subrule "variable" subtype=capture negate=
    rx845_cur."!cursor_pos"(rx845_pos)
    $P10 = rx845_cur."variable"()
    unless $P10, rx845_fail
    rx845_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx845_pos = $P10."pos"()
  # rx pass
    rx845_cur."!cursor_pass"(rx845_pos, "quote_escape:sym<$>")
    rx845_cur."!cursor_debug"("PASS  ", "quote_escape:sym<$>", " at pos=", rx845_pos)
    .return (rx845_cur)
  rx845_fail:
.annotate "line", 4
    (rx845_rep, rx845_pos, $I10, $P10) = rx845_cur."!mark_fail"(0)
    lt rx845_pos, -1, rx845_done
    eq rx845_pos, -1, rx845_fail
    jump $I10
  rx845_done:
    rx845_cur."!cursor_fail"()
    rx845_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<$>")
    .return (rx845_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<$>"  :subid("204_1261201519.6115") :method
.annotate "line", 4
    new $P847, "ResizablePMCArray"
    push $P847, "$"
    .return ($P847)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<{ }>"  :subid("205_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx850_tgt
    .local int rx850_pos
    .local int rx850_off
    .local int rx850_eos
    .local int rx850_rep
    .local pmc rx850_cur
    (rx850_cur, rx850_pos, rx850_tgt) = self."!cursor_start"()
    rx850_cur."!cursor_debug"("START ", "quote_escape:sym<{ }>")
    .lex unicode:"$\x{a2}", rx850_cur
    .local pmc match
    .lex "$/", match
    length rx850_eos, rx850_tgt
    set rx850_off, 0
    lt rx850_pos, 2, rx850_start
    sub rx850_off, rx850_pos, 1
    substr rx850_tgt, rx850_tgt, rx850_off
  rx850_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan853_done
    goto rxscan853_scan
  rxscan853_loop:
    ($P10) = rx850_cur."from"()
    inc $P10
    set rx850_pos, $P10
    ge rx850_pos, rx850_eos, rxscan853_done
  rxscan853_scan:
    set_addr $I10, rxscan853_loop
    rx850_cur."!mark_push"(0, rx850_pos, $I10)
  rxscan853_done:
.annotate "line", 400
  # rx enumcharlist negate=0 zerowidth
    ge rx850_pos, rx850_eos, rx850_fail
    sub $I10, rx850_pos, rx850_off
    substr $S10, rx850_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx850_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx850_cur."!cursor_pos"(rx850_pos)
    $P10 = rx850_cur."quotemod_check"("c")
    unless $P10, rx850_fail
  # rx subrule "block" subtype=capture negate=
    rx850_cur."!cursor_pos"(rx850_pos)
    $P10 = rx850_cur."block"()
    unless $P10, rx850_fail
    rx850_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx850_pos = $P10."pos"()
  # rx pass
    rx850_cur."!cursor_pass"(rx850_pos, "quote_escape:sym<{ }>")
    rx850_cur."!cursor_debug"("PASS  ", "quote_escape:sym<{ }>", " at pos=", rx850_pos)
    .return (rx850_cur)
  rx850_fail:
.annotate "line", 4
    (rx850_rep, rx850_pos, $I10, $P10) = rx850_cur."!mark_fail"(0)
    lt rx850_pos, -1, rx850_done
    eq rx850_pos, -1, rx850_fail
    jump $I10
  rx850_done:
    rx850_cur."!cursor_fail"()
    rx850_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<{ }>")
    .return (rx850_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<{ }>"  :subid("206_1261201519.6115") :method
.annotate "line", 4
    new $P852, "ResizablePMCArray"
    push $P852, "{"
    .return ($P852)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("207_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx855_tgt
    .local int rx855_pos
    .local int rx855_off
    .local int rx855_eos
    .local int rx855_rep
    .local pmc rx855_cur
    (rx855_cur, rx855_pos, rx855_tgt) = self."!cursor_start"()
    rx855_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    rx855_cur."!cursor_caparray"("EXPR")
    .lex unicode:"$\x{a2}", rx855_cur
    .local pmc match
    .lex "$/", match
    length rx855_eos, rx855_tgt
    set rx855_off, 0
    lt rx855_pos, 2, rx855_start
    sub rx855_off, rx855_pos, 1
    substr rx855_tgt, rx855_tgt, rx855_off
  rx855_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan859_done
    goto rxscan859_scan
  rxscan859_loop:
    ($P10) = rx855_cur."from"()
    inc $P10
    set rx855_pos, $P10
    ge rx855_pos, rx855_eos, rxscan859_done
  rxscan859_scan:
    set_addr $I10, rxscan859_loop
    rx855_cur."!mark_push"(0, rx855_pos, $I10)
  rxscan859_done:
.annotate "line", 402
  # rx literal  "("
    add $I11, rx855_pos, 1
    gt $I11, rx855_eos, rx855_fail
    sub $I11, rx855_pos, rx855_off
    substr $S10, rx855_tgt, $I11, 1
    ne $S10, "(", rx855_fail
    add rx855_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx855_cur."!cursor_pos"(rx855_pos)
    $P10 = rx855_cur."ws"()
    unless $P10, rx855_fail
    rx855_pos = $P10."pos"()
  # rx rxquantr860 ** 0..1
    set_addr $I861, rxquantr860_done
    rx855_cur."!mark_push"(0, rx855_pos, $I861)
  rxquantr860_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx855_cur."!cursor_pos"(rx855_pos)
    $P10 = rx855_cur."EXPR"()
    unless $P10, rx855_fail
    rx855_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx855_pos = $P10."pos"()
    (rx855_rep) = rx855_cur."!mark_commit"($I861)
  rxquantr860_done:
  # rx literal  ")"
    add $I11, rx855_pos, 1
    gt $I11, rx855_eos, rx855_fail
    sub $I11, rx855_pos, rx855_off
    substr $S10, rx855_tgt, $I11, 1
    ne $S10, ")", rx855_fail
    add rx855_pos, 1
  # rx pass
    rx855_cur."!cursor_pass"(rx855_pos, "circumfix:sym<( )>")
    rx855_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx855_pos)
    .return (rx855_cur)
  rx855_fail:
.annotate "line", 4
    (rx855_rep, rx855_pos, $I10, $P10) = rx855_cur."!mark_fail"(0)
    lt rx855_pos, -1, rx855_done
    eq rx855_pos, -1, rx855_fail
    jump $I10
  rx855_done:
    rx855_cur."!cursor_fail"()
    rx855_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx855_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("208_1261201519.6115") :method
.annotate "line", 4
    $P857 = self."!PREFIX__!subrule"("", "(")
    new $P858, "ResizablePMCArray"
    push $P858, $P857
    .return ($P858)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<[ ]>"  :subid("209_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx863_tgt
    .local int rx863_pos
    .local int rx863_off
    .local int rx863_eos
    .local int rx863_rep
    .local pmc rx863_cur
    (rx863_cur, rx863_pos, rx863_tgt) = self."!cursor_start"()
    rx863_cur."!cursor_debug"("START ", "circumfix:sym<[ ]>")
    rx863_cur."!cursor_caparray"("EXPR")
    .lex unicode:"$\x{a2}", rx863_cur
    .local pmc match
    .lex "$/", match
    length rx863_eos, rx863_tgt
    set rx863_off, 0
    lt rx863_pos, 2, rx863_start
    sub rx863_off, rx863_pos, 1
    substr rx863_tgt, rx863_tgt, rx863_off
  rx863_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan867_done
    goto rxscan867_scan
  rxscan867_loop:
    ($P10) = rx863_cur."from"()
    inc $P10
    set rx863_pos, $P10
    ge rx863_pos, rx863_eos, rxscan867_done
  rxscan867_scan:
    set_addr $I10, rxscan867_loop
    rx863_cur."!mark_push"(0, rx863_pos, $I10)
  rxscan867_done:
.annotate "line", 403
  # rx literal  "["
    add $I11, rx863_pos, 1
    gt $I11, rx863_eos, rx863_fail
    sub $I11, rx863_pos, rx863_off
    substr $S10, rx863_tgt, $I11, 1
    ne $S10, "[", rx863_fail
    add rx863_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx863_cur."!cursor_pos"(rx863_pos)
    $P10 = rx863_cur."ws"()
    unless $P10, rx863_fail
    rx863_pos = $P10."pos"()
  # rx rxquantr868 ** 0..1
    set_addr $I869, rxquantr868_done
    rx863_cur."!mark_push"(0, rx863_pos, $I869)
  rxquantr868_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx863_cur."!cursor_pos"(rx863_pos)
    $P10 = rx863_cur."EXPR"()
    unless $P10, rx863_fail
    rx863_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx863_pos = $P10."pos"()
    (rx863_rep) = rx863_cur."!mark_commit"($I869)
  rxquantr868_done:
  # rx literal  "]"
    add $I11, rx863_pos, 1
    gt $I11, rx863_eos, rx863_fail
    sub $I11, rx863_pos, rx863_off
    substr $S10, rx863_tgt, $I11, 1
    ne $S10, "]", rx863_fail
    add rx863_pos, 1
  # rx pass
    rx863_cur."!cursor_pass"(rx863_pos, "circumfix:sym<[ ]>")
    rx863_cur."!cursor_debug"("PASS  ", "circumfix:sym<[ ]>", " at pos=", rx863_pos)
    .return (rx863_cur)
  rx863_fail:
.annotate "line", 4
    (rx863_rep, rx863_pos, $I10, $P10) = rx863_cur."!mark_fail"(0)
    lt rx863_pos, -1, rx863_done
    eq rx863_pos, -1, rx863_fail
    jump $I10
  rx863_done:
    rx863_cur."!cursor_fail"()
    rx863_cur."!cursor_debug"("FAIL  ", "circumfix:sym<[ ]>")
    .return (rx863_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<[ ]>"  :subid("210_1261201519.6115") :method
.annotate "line", 4
    $P865 = self."!PREFIX__!subrule"("", "[")
    new $P866, "ResizablePMCArray"
    push $P866, $P865
    .return ($P866)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("211_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx871_tgt
    .local int rx871_pos
    .local int rx871_off
    .local int rx871_eos
    .local int rx871_rep
    .local pmc rx871_cur
    (rx871_cur, rx871_pos, rx871_tgt) = self."!cursor_start"()
    rx871_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx871_cur
    .local pmc match
    .lex "$/", match
    length rx871_eos, rx871_tgt
    set rx871_off, 0
    lt rx871_pos, 2, rx871_start
    sub rx871_off, rx871_pos, 1
    substr rx871_tgt, rx871_tgt, rx871_off
  rx871_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan874_done
    goto rxscan874_scan
  rxscan874_loop:
    ($P10) = rx871_cur."from"()
    inc $P10
    set rx871_pos, $P10
    ge rx871_pos, rx871_eos, rxscan874_done
  rxscan874_scan:
    set_addr $I10, rxscan874_loop
    rx871_cur."!mark_push"(0, rx871_pos, $I10)
  rxscan874_done:
.annotate "line", 404
  # rx enumcharlist negate=0 zerowidth
    ge rx871_pos, rx871_eos, rx871_fail
    sub $I10, rx871_pos, rx871_off
    substr $S10, rx871_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx871_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx871_cur."!cursor_pos"(rx871_pos)
    $P10 = rx871_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx871_fail
    rx871_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx871_pos = $P10."pos"()
  # rx pass
    rx871_cur."!cursor_pass"(rx871_pos, "circumfix:sym<ang>")
    rx871_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx871_pos)
    .return (rx871_cur)
  rx871_fail:
.annotate "line", 4
    (rx871_rep, rx871_pos, $I10, $P10) = rx871_cur."!mark_fail"(0)
    lt rx871_pos, -1, rx871_done
    eq rx871_pos, -1, rx871_fail
    jump $I10
  rx871_done:
    rx871_cur."!cursor_fail"()
    rx871_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx871_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("212_1261201519.6115") :method
.annotate "line", 4
    new $P873, "ResizablePMCArray"
    push $P873, "<"
    .return ($P873)
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("213_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx876_tgt
    .local int rx876_pos
    .local int rx876_off
    .local int rx876_eos
    .local int rx876_rep
    .local pmc rx876_cur
    (rx876_cur, rx876_pos, rx876_tgt) = self."!cursor_start"()
    rx876_cur."!cursor_debug"("START ", unicode:"circumfix:sym<\x{ab} \x{bb}>")
    .lex unicode:"$\x{a2}", rx876_cur
    .local pmc match
    .lex "$/", match
    length rx876_eos, rx876_tgt
    set rx876_off, 0
    lt rx876_pos, 2, rx876_start
    sub rx876_off, rx876_pos, 1
    substr rx876_tgt, rx876_tgt, rx876_off
  rx876_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan879_done
    goto rxscan879_scan
  rxscan879_loop:
    ($P10) = rx876_cur."from"()
    inc $P10
    set rx876_pos, $P10
    ge rx876_pos, rx876_eos, rxscan879_done
  rxscan879_scan:
    set_addr $I10, rxscan879_loop
    rx876_cur."!mark_push"(0, rx876_pos, $I10)
  rxscan879_done:
.annotate "line", 405
  # rx enumcharlist negate=0 zerowidth
    ge rx876_pos, rx876_eos, rx876_fail
    sub $I10, rx876_pos, rx876_off
    substr $S10, rx876_tgt, $I10, 1
    index $I11, unicode:"\x{ab}", $S10
    lt $I11, 0, rx876_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx876_cur."!cursor_pos"(rx876_pos)
    $P10 = rx876_cur."quote_EXPR"(":qq", ":w")
    unless $P10, rx876_fail
    rx876_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx876_pos = $P10."pos"()
  # rx pass
    rx876_cur."!cursor_pass"(rx876_pos, unicode:"circumfix:sym<\x{ab} \x{bb}>")
    rx876_cur."!cursor_debug"("PASS  ", unicode:"circumfix:sym<\x{ab} \x{bb}>", " at pos=", rx876_pos)
    .return (rx876_cur)
  rx876_fail:
.annotate "line", 4
    (rx876_rep, rx876_pos, $I10, $P10) = rx876_cur."!mark_fail"(0)
    lt rx876_pos, -1, rx876_done
    eq rx876_pos, -1, rx876_fail
    jump $I10
  rx876_done:
    rx876_cur."!cursor_fail"()
    rx876_cur."!cursor_debug"("FAIL  ", unicode:"circumfix:sym<\x{ab} \x{bb}>")
    .return (rx876_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"!PREFIX__circumfix:sym<\x{ab} \x{bb}>"  :subid("214_1261201519.6115") :method
.annotate "line", 4
    new $P878, "ResizablePMCArray"
    push $P878, unicode:"\x{ab}"
    .return ($P878)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("215_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx881_tgt
    .local int rx881_pos
    .local int rx881_off
    .local int rx881_eos
    .local int rx881_rep
    .local pmc rx881_cur
    (rx881_cur, rx881_pos, rx881_tgt) = self."!cursor_start"()
    rx881_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx881_cur
    .local pmc match
    .lex "$/", match
    length rx881_eos, rx881_tgt
    set rx881_off, 0
    lt rx881_pos, 2, rx881_start
    sub rx881_off, rx881_pos, 1
    substr rx881_tgt, rx881_tgt, rx881_off
  rx881_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan884_done
    goto rxscan884_scan
  rxscan884_loop:
    ($P10) = rx881_cur."from"()
    inc $P10
    set rx881_pos, $P10
    ge rx881_pos, rx881_eos, rxscan884_done
  rxscan884_scan:
    set_addr $I10, rxscan884_loop
    rx881_cur."!mark_push"(0, rx881_pos, $I10)
  rxscan884_done:
.annotate "line", 406
  # rx enumcharlist negate=0 zerowidth
    ge rx881_pos, rx881_eos, rx881_fail
    sub $I10, rx881_pos, rx881_off
    substr $S10, rx881_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx881_fail
  # rx subrule "pblock" subtype=capture negate=
    rx881_cur."!cursor_pos"(rx881_pos)
    $P10 = rx881_cur."pblock"()
    unless $P10, rx881_fail
    rx881_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx881_pos = $P10."pos"()
  # rx pass
    rx881_cur."!cursor_pass"(rx881_pos, "circumfix:sym<{ }>")
    rx881_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx881_pos)
    .return (rx881_cur)
  rx881_fail:
.annotate "line", 4
    (rx881_rep, rx881_pos, $I10, $P10) = rx881_cur."!mark_fail"(0)
    lt rx881_pos, -1, rx881_done
    eq rx881_pos, -1, rx881_fail
    jump $I10
  rx881_done:
    rx881_cur."!cursor_fail"()
    rx881_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx881_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("216_1261201519.6115") :method
.annotate "line", 4
    new $P883, "ResizablePMCArray"
    push $P883, "{"
    .return ($P883)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("217_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx886_tgt
    .local int rx886_pos
    .local int rx886_off
    .local int rx886_eos
    .local int rx886_rep
    .local pmc rx886_cur
    (rx886_cur, rx886_pos, rx886_tgt) = self."!cursor_start"()
    rx886_cur."!cursor_debug"("START ", "circumfix:sym<sigil>")
    .lex unicode:"$\x{a2}", rx886_cur
    .local pmc match
    .lex "$/", match
    length rx886_eos, rx886_tgt
    set rx886_off, 0
    lt rx886_pos, 2, rx886_start
    sub rx886_off, rx886_pos, 1
    substr rx886_tgt, rx886_tgt, rx886_off
  rx886_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan890_done
    goto rxscan890_scan
  rxscan890_loop:
    ($P10) = rx886_cur."from"()
    inc $P10
    set rx886_pos, $P10
    ge rx886_pos, rx886_eos, rxscan890_done
  rxscan890_scan:
    set_addr $I10, rxscan890_loop
    rx886_cur."!mark_push"(0, rx886_pos, $I10)
  rxscan890_done:
.annotate "line", 407
  # rx subrule "sigil" subtype=capture negate=
    rx886_cur."!cursor_pos"(rx886_pos)
    $P10 = rx886_cur."sigil"()
    unless $P10, rx886_fail
    rx886_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx886_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx886_pos, 1
    gt $I11, rx886_eos, rx886_fail
    sub $I11, rx886_pos, rx886_off
    substr $S10, rx886_tgt, $I11, 1
    ne $S10, "(", rx886_fail
    add rx886_pos, 1
  # rx subrule "semilist" subtype=capture negate=
    rx886_cur."!cursor_pos"(rx886_pos)
    $P10 = rx886_cur."semilist"()
    unless $P10, rx886_fail
    rx886_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("semilist")
    rx886_pos = $P10."pos"()
  alt891_0:
    set_addr $I10, alt891_1
    rx886_cur."!mark_push"(0, rx886_pos, $I10)
  # rx literal  ")"
    add $I11, rx886_pos, 1
    gt $I11, rx886_eos, rx886_fail
    sub $I11, rx886_pos, rx886_off
    substr $S10, rx886_tgt, $I11, 1
    ne $S10, ")", rx886_fail
    add rx886_pos, 1
    goto alt891_end
  alt891_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx886_cur."!cursor_pos"(rx886_pos)
    $P10 = rx886_cur."FAILGOAL"("')'")
    unless $P10, rx886_fail
    rx886_pos = $P10."pos"()
  alt891_end:
  # rx pass
    rx886_cur."!cursor_pass"(rx886_pos, "circumfix:sym<sigil>")
    rx886_cur."!cursor_debug"("PASS  ", "circumfix:sym<sigil>", " at pos=", rx886_pos)
    .return (rx886_cur)
  rx886_fail:
.annotate "line", 4
    (rx886_rep, rx886_pos, $I10, $P10) = rx886_cur."!mark_fail"(0)
    lt rx886_pos, -1, rx886_done
    eq rx886_pos, -1, rx886_fail
    jump $I10
  rx886_done:
    rx886_cur."!cursor_fail"()
    rx886_cur."!cursor_debug"("FAIL  ", "circumfix:sym<sigil>")
    .return (rx886_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("218_1261201519.6115") :method
.annotate "line", 4
    $P888 = self."!PREFIX__!subrule"("sigil", "")
    new $P889, "ResizablePMCArray"
    push $P889, $P888
    .return ($P889)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("219_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 4
    .local string rx894_tgt
    .local int rx894_pos
    .local int rx894_off
    .local int rx894_eos
    .local int rx894_rep
    .local pmc rx894_cur
    (rx894_cur, rx894_pos, rx894_tgt) = self."!cursor_start"()
    rx894_cur."!cursor_debug"("START ", "semilist")
    .lex unicode:"$\x{a2}", rx894_cur
    .local pmc match
    .lex "$/", match
    length rx894_eos, rx894_tgt
    set rx894_off, 0
    lt rx894_pos, 2, rx894_start
    sub rx894_off, rx894_pos, 1
    substr rx894_tgt, rx894_tgt, rx894_off
  rx894_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan897_done
    goto rxscan897_scan
  rxscan897_loop:
    ($P10) = rx894_cur."from"()
    inc $P10
    set rx894_pos, $P10
    ge rx894_pos, rx894_eos, rxscan897_done
  rxscan897_scan:
    set_addr $I10, rxscan897_loop
    rx894_cur."!mark_push"(0, rx894_pos, $I10)
  rxscan897_done:
.annotate "line", 409
  # rx subrule "ws" subtype=method negate=
    rx894_cur."!cursor_pos"(rx894_pos)
    $P10 = rx894_cur."ws"()
    unless $P10, rx894_fail
    rx894_pos = $P10."pos"()
  # rx subrule "statement" subtype=capture negate=
    rx894_cur."!cursor_pos"(rx894_pos)
    $P10 = rx894_cur."statement"()
    unless $P10, rx894_fail
    rx894_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx894_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx894_cur."!cursor_pos"(rx894_pos)
    $P10 = rx894_cur."ws"()
    unless $P10, rx894_fail
    rx894_pos = $P10."pos"()
  # rx pass
    rx894_cur."!cursor_pass"(rx894_pos, "semilist")
    rx894_cur."!cursor_debug"("PASS  ", "semilist", " at pos=", rx894_pos)
    .return (rx894_cur)
  rx894_fail:
.annotate "line", 4
    (rx894_rep, rx894_pos, $I10, $P10) = rx894_cur."!mark_fail"(0)
    lt rx894_pos, -1, rx894_done
    eq rx894_pos, -1, rx894_fail
    jump $I10
  rx894_done:
    rx894_cur."!cursor_fail"()
    rx894_cur."!cursor_debug"("FAIL  ", "semilist")
    .return (rx894_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__semilist"  :subid("220_1261201519.6115") :method
.annotate "line", 4
    new $P896, "ResizablePMCArray"
    push $P896, ""
    .return ($P896)
.end


.namespace ["NQP";"Grammar"]
.sub "infixish"  :subid("221_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx901_tgt
    .local int rx901_pos
    .local int rx901_off
    .local int rx901_eos
    .local int rx901_rep
    .local pmc rx901_cur
    (rx901_cur, rx901_pos, rx901_tgt) = self."!cursor_start"()
    rx901_cur."!cursor_debug"("START ", "infixish")
    .lex unicode:"$\x{a2}", rx901_cur
    .local pmc match
    .lex "$/", match
    length rx901_eos, rx901_tgt
    set rx901_off, 0
    lt rx901_pos, 2, rx901_start
    sub rx901_off, rx901_pos, 1
    substr rx901_tgt, rx901_tgt, rx901_off
  rx901_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan904_done
    goto rxscan904_scan
  rxscan904_loop:
    ($P10) = rx901_cur."from"()
    inc $P10
    set rx901_pos, $P10
    ge rx901_pos, rx901_eos, rxscan904_done
  rxscan904_scan:
    set_addr $I10, rxscan904_loop
    rx901_cur."!mark_push"(0, rx901_pos, $I10)
  rxscan904_done:
.annotate "line", 432
  # rx subrule "infixstopper" subtype=zerowidth negate=1
    rx901_cur."!cursor_pos"(rx901_pos)
    $P10 = rx901_cur."infixstopper"()
    if $P10, rx901_fail
  # rx subrule "infix" subtype=capture negate=
    rx901_cur."!cursor_pos"(rx901_pos)
    $P10 = rx901_cur."infix"()
    unless $P10, rx901_fail
    rx901_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx901_pos = $P10."pos"()
  # rx pass
    rx901_cur."!cursor_pass"(rx901_pos, "infixish")
    rx901_cur."!cursor_debug"("PASS  ", "infixish", " at pos=", rx901_pos)
    .return (rx901_cur)
  rx901_fail:
.annotate "line", 413
    (rx901_rep, rx901_pos, $I10, $P10) = rx901_cur."!mark_fail"(0)
    lt rx901_pos, -1, rx901_done
    eq rx901_pos, -1, rx901_fail
    jump $I10
  rx901_done:
    rx901_cur."!cursor_fail"()
    rx901_cur."!cursor_debug"("FAIL  ", "infixish")
    .return (rx901_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixish"  :subid("222_1261201519.6115") :method
.annotate "line", 413
    new $P903, "ResizablePMCArray"
    push $P903, ""
    .return ($P903)
.end


.namespace ["NQP";"Grammar"]
.sub "infixstopper"  :subid("223_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx906_tgt
    .local int rx906_pos
    .local int rx906_off
    .local int rx906_eos
    .local int rx906_rep
    .local pmc rx906_cur
    (rx906_cur, rx906_pos, rx906_tgt) = self."!cursor_start"()
    rx906_cur."!cursor_debug"("START ", "infixstopper")
    .lex unicode:"$\x{a2}", rx906_cur
    .local pmc match
    .lex "$/", match
    length rx906_eos, rx906_tgt
    set rx906_off, 0
    lt rx906_pos, 2, rx906_start
    sub rx906_off, rx906_pos, 1
    substr rx906_tgt, rx906_tgt, rx906_off
  rx906_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan909_done
    goto rxscan909_scan
  rxscan909_loop:
    ($P10) = rx906_cur."from"()
    inc $P10
    set rx906_pos, $P10
    ge rx906_pos, rx906_eos, rxscan909_done
  rxscan909_scan:
    set_addr $I10, rxscan909_loop
    rx906_cur."!mark_push"(0, rx906_pos, $I10)
  rxscan909_done:
.annotate "line", 433
  # rx subrule "lambda" subtype=zerowidth negate=
    rx906_cur."!cursor_pos"(rx906_pos)
    $P10 = rx906_cur."lambda"()
    unless $P10, rx906_fail
  # rx pass
    rx906_cur."!cursor_pass"(rx906_pos, "infixstopper")
    rx906_cur."!cursor_debug"("PASS  ", "infixstopper", " at pos=", rx906_pos)
    .return (rx906_cur)
  rx906_fail:
.annotate "line", 413
    (rx906_rep, rx906_pos, $I10, $P10) = rx906_cur."!mark_fail"(0)
    lt rx906_pos, -1, rx906_done
    eq rx906_pos, -1, rx906_fail
    jump $I10
  rx906_done:
    rx906_cur."!cursor_fail"()
    rx906_cur."!cursor_debug"("FAIL  ", "infixstopper")
    .return (rx906_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixstopper"  :subid("224_1261201519.6115") :method
.annotate "line", 413
    new $P908, "ResizablePMCArray"
    push $P908, ""
    .return ($P908)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("225_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx911_tgt
    .local int rx911_pos
    .local int rx911_off
    .local int rx911_eos
    .local int rx911_rep
    .local pmc rx911_cur
    (rx911_cur, rx911_pos, rx911_tgt) = self."!cursor_start"()
    rx911_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx911_cur
    .local pmc match
    .lex "$/", match
    length rx911_eos, rx911_tgt
    set rx911_off, 0
    lt rx911_pos, 2, rx911_start
    sub rx911_off, rx911_pos, 1
    substr rx911_tgt, rx911_tgt, rx911_off
  rx911_start:
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
.annotate "line", 436
  # rx literal  "["
    add $I11, rx911_pos, 1
    gt $I11, rx911_eos, rx911_fail
    sub $I11, rx911_pos, rx911_off
    substr $S10, rx911_tgt, $I11, 1
    ne $S10, "[", rx911_fail
    add rx911_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx911_cur."!cursor_pos"(rx911_pos)
    $P10 = rx911_cur."ws"()
    unless $P10, rx911_fail
    rx911_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx911_cur."!cursor_pos"(rx911_pos)
    $P10 = rx911_cur."EXPR"()
    unless $P10, rx911_fail
    rx911_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx911_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx911_pos, 1
    gt $I11, rx911_eos, rx911_fail
    sub $I11, rx911_pos, rx911_off
    substr $S10, rx911_tgt, $I11, 1
    ne $S10, "]", rx911_fail
    add rx911_pos, 1
.annotate "line", 437
  # rx subrule "O" subtype=capture negate=
    rx911_cur."!cursor_pos"(rx911_pos)
    $P10 = rx911_cur."O"("%methodop")
    unless $P10, rx911_fail
    rx911_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx911_pos = $P10."pos"()
.annotate "line", 435
  # rx pass
    rx911_cur."!cursor_pass"(rx911_pos, "postcircumfix:sym<[ ]>")
    rx911_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx911_pos)
    .return (rx911_cur)
  rx911_fail:
.annotate "line", 413
    (rx911_rep, rx911_pos, $I10, $P10) = rx911_cur."!mark_fail"(0)
    lt rx911_pos, -1, rx911_done
    eq rx911_pos, -1, rx911_fail
    jump $I10
  rx911_done:
    rx911_cur."!cursor_fail"()
    rx911_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx911_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("226_1261201519.6115") :method
.annotate "line", 413
    $P913 = self."!PREFIX__!subrule"("", "[")
    new $P914, "ResizablePMCArray"
    push $P914, $P913
    .return ($P914)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("227_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx917_tgt
    .local int rx917_pos
    .local int rx917_off
    .local int rx917_eos
    .local int rx917_rep
    .local pmc rx917_cur
    (rx917_cur, rx917_pos, rx917_tgt) = self."!cursor_start"()
    rx917_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx917_cur
    .local pmc match
    .lex "$/", match
    length rx917_eos, rx917_tgt
    set rx917_off, 0
    lt rx917_pos, 2, rx917_start
    sub rx917_off, rx917_pos, 1
    substr rx917_tgt, rx917_tgt, rx917_off
  rx917_start:
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
.annotate "line", 441
  # rx literal  "{"
    add $I11, rx917_pos, 1
    gt $I11, rx917_eos, rx917_fail
    sub $I11, rx917_pos, rx917_off
    substr $S10, rx917_tgt, $I11, 1
    ne $S10, "{", rx917_fail
    add rx917_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx917_cur."!cursor_pos"(rx917_pos)
    $P10 = rx917_cur."ws"()
    unless $P10, rx917_fail
    rx917_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx917_cur."!cursor_pos"(rx917_pos)
    $P10 = rx917_cur."EXPR"()
    unless $P10, rx917_fail
    rx917_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx917_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx917_pos, 1
    gt $I11, rx917_eos, rx917_fail
    sub $I11, rx917_pos, rx917_off
    substr $S10, rx917_tgt, $I11, 1
    ne $S10, "}", rx917_fail
    add rx917_pos, 1
.annotate "line", 442
  # rx subrule "O" subtype=capture negate=
    rx917_cur."!cursor_pos"(rx917_pos)
    $P10 = rx917_cur."O"("%methodop")
    unless $P10, rx917_fail
    rx917_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx917_pos = $P10."pos"()
.annotate "line", 440
  # rx pass
    rx917_cur."!cursor_pass"(rx917_pos, "postcircumfix:sym<{ }>")
    rx917_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx917_pos)
    .return (rx917_cur)
  rx917_fail:
.annotate "line", 413
    (rx917_rep, rx917_pos, $I10, $P10) = rx917_cur."!mark_fail"(0)
    lt rx917_pos, -1, rx917_done
    eq rx917_pos, -1, rx917_fail
    jump $I10
  rx917_done:
    rx917_cur."!cursor_fail"()
    rx917_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx917_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("228_1261201519.6115") :method
.annotate "line", 413
    $P919 = self."!PREFIX__!subrule"("", "{")
    new $P920, "ResizablePMCArray"
    push $P920, $P919
    .return ($P920)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("229_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx923_tgt
    .local int rx923_pos
    .local int rx923_off
    .local int rx923_eos
    .local int rx923_rep
    .local pmc rx923_cur
    (rx923_cur, rx923_pos, rx923_tgt) = self."!cursor_start"()
    rx923_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx923_cur
    .local pmc match
    .lex "$/", match
    length rx923_eos, rx923_tgt
    set rx923_off, 0
    lt rx923_pos, 2, rx923_start
    sub rx923_off, rx923_pos, 1
    substr rx923_tgt, rx923_tgt, rx923_off
  rx923_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan926_done
    goto rxscan926_scan
  rxscan926_loop:
    ($P10) = rx923_cur."from"()
    inc $P10
    set rx923_pos, $P10
    ge rx923_pos, rx923_eos, rxscan926_done
  rxscan926_scan:
    set_addr $I10, rxscan926_loop
    rx923_cur."!mark_push"(0, rx923_pos, $I10)
  rxscan926_done:
.annotate "line", 446
  # rx enumcharlist negate=0 zerowidth
    ge rx923_pos, rx923_eos, rx923_fail
    sub $I10, rx923_pos, rx923_off
    substr $S10, rx923_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx923_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx923_cur."!cursor_pos"(rx923_pos)
    $P10 = rx923_cur."quote_EXPR"(":q")
    unless $P10, rx923_fail
    rx923_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx923_pos = $P10."pos"()
.annotate "line", 447
  # rx subrule "O" subtype=capture negate=
    rx923_cur."!cursor_pos"(rx923_pos)
    $P10 = rx923_cur."O"("%methodop")
    unless $P10, rx923_fail
    rx923_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx923_pos = $P10."pos"()
.annotate "line", 445
  # rx pass
    rx923_cur."!cursor_pass"(rx923_pos, "postcircumfix:sym<ang>")
    rx923_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx923_pos)
    .return (rx923_cur)
  rx923_fail:
.annotate "line", 413
    (rx923_rep, rx923_pos, $I10, $P10) = rx923_cur."!mark_fail"(0)
    lt rx923_pos, -1, rx923_done
    eq rx923_pos, -1, rx923_fail
    jump $I10
  rx923_done:
    rx923_cur."!cursor_fail"()
    rx923_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx923_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("230_1261201519.6115") :method
.annotate "line", 413
    new $P925, "ResizablePMCArray"
    push $P925, "<"
    .return ($P925)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("231_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx928_tgt
    .local int rx928_pos
    .local int rx928_off
    .local int rx928_eos
    .local int rx928_rep
    .local pmc rx928_cur
    (rx928_cur, rx928_pos, rx928_tgt) = self."!cursor_start"()
    rx928_cur."!cursor_debug"("START ", "postcircumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx928_cur
    .local pmc match
    .lex "$/", match
    length rx928_eos, rx928_tgt
    set rx928_off, 0
    lt rx928_pos, 2, rx928_start
    sub rx928_off, rx928_pos, 1
    substr rx928_tgt, rx928_tgt, rx928_off
  rx928_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan932_done
    goto rxscan932_scan
  rxscan932_loop:
    ($P10) = rx928_cur."from"()
    inc $P10
    set rx928_pos, $P10
    ge rx928_pos, rx928_eos, rxscan932_done
  rxscan932_scan:
    set_addr $I10, rxscan932_loop
    rx928_cur."!mark_push"(0, rx928_pos, $I10)
  rxscan932_done:
.annotate "line", 451
  # rx literal  "("
    add $I11, rx928_pos, 1
    gt $I11, rx928_eos, rx928_fail
    sub $I11, rx928_pos, rx928_off
    substr $S10, rx928_tgt, $I11, 1
    ne $S10, "(", rx928_fail
    add rx928_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx928_cur."!cursor_pos"(rx928_pos)
    $P10 = rx928_cur."ws"()
    unless $P10, rx928_fail
    rx928_pos = $P10."pos"()
  # rx subrule "arglist" subtype=capture negate=
    rx928_cur."!cursor_pos"(rx928_pos)
    $P10 = rx928_cur."arglist"()
    unless $P10, rx928_fail
    rx928_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx928_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx928_pos, 1
    gt $I11, rx928_eos, rx928_fail
    sub $I11, rx928_pos, rx928_off
    substr $S10, rx928_tgt, $I11, 1
    ne $S10, ")", rx928_fail
    add rx928_pos, 1
.annotate "line", 452
  # rx subrule "O" subtype=capture negate=
    rx928_cur."!cursor_pos"(rx928_pos)
    $P10 = rx928_cur."O"("%methodop")
    unless $P10, rx928_fail
    rx928_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx928_pos = $P10."pos"()
.annotate "line", 450
  # rx pass
    rx928_cur."!cursor_pass"(rx928_pos, "postcircumfix:sym<( )>")
    rx928_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<( )>", " at pos=", rx928_pos)
    .return (rx928_cur)
  rx928_fail:
.annotate "line", 413
    (rx928_rep, rx928_pos, $I10, $P10) = rx928_cur."!mark_fail"(0)
    lt rx928_pos, -1, rx928_done
    eq rx928_pos, -1, rx928_fail
    jump $I10
  rx928_done:
    rx928_cur."!cursor_fail"()
    rx928_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<( )>")
    .return (rx928_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("232_1261201519.6115") :method
.annotate "line", 413
    $P930 = self."!PREFIX__!subrule"("", "(")
    new $P931, "ResizablePMCArray"
    push $P931, $P930
    .return ($P931)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("233_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx934_tgt
    .local int rx934_pos
    .local int rx934_off
    .local int rx934_eos
    .local int rx934_rep
    .local pmc rx934_cur
    (rx934_cur, rx934_pos, rx934_tgt) = self."!cursor_start"()
    rx934_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx934_cur
    .local pmc match
    .lex "$/", match
    length rx934_eos, rx934_tgt
    set rx934_off, 0
    lt rx934_pos, 2, rx934_start
    sub rx934_off, rx934_pos, 1
    substr rx934_tgt, rx934_tgt, rx934_off
  rx934_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan938_done
    goto rxscan938_scan
  rxscan938_loop:
    ($P10) = rx934_cur."from"()
    inc $P10
    set rx934_pos, $P10
    ge rx934_pos, rx934_eos, rxscan938_done
  rxscan938_scan:
    set_addr $I10, rxscan938_loop
    rx934_cur."!mark_push"(0, rx934_pos, $I10)
  rxscan938_done:
.annotate "line", 455
  # rx subrule "dotty" subtype=capture negate=
    rx934_cur."!cursor_pos"(rx934_pos)
    $P10 = rx934_cur."dotty"()
    unless $P10, rx934_fail
    rx934_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx934_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx934_cur."!cursor_pos"(rx934_pos)
    $P10 = rx934_cur."O"("%methodop")
    unless $P10, rx934_fail
    rx934_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx934_pos = $P10."pos"()
  # rx pass
    rx934_cur."!cursor_pass"(rx934_pos, "postfix:sym<.>")
    rx934_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx934_pos)
    .return (rx934_cur)
  rx934_fail:
.annotate "line", 413
    (rx934_rep, rx934_pos, $I10, $P10) = rx934_cur."!mark_fail"(0)
    lt rx934_pos, -1, rx934_done
    eq rx934_pos, -1, rx934_fail
    jump $I10
  rx934_done:
    rx934_cur."!cursor_fail"()
    rx934_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx934_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("234_1261201519.6115") :method
.annotate "line", 413
    $P936 = self."!PREFIX__!subrule"("dotty", "")
    new $P937, "ResizablePMCArray"
    push $P937, $P936
    .return ($P937)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("235_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx940_tgt
    .local int rx940_pos
    .local int rx940_off
    .local int rx940_eos
    .local int rx940_rep
    .local pmc rx940_cur
    (rx940_cur, rx940_pos, rx940_tgt) = self."!cursor_start"()
    rx940_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx940_cur
    .local pmc match
    .lex "$/", match
    length rx940_eos, rx940_tgt
    set rx940_off, 0
    lt rx940_pos, 2, rx940_start
    sub rx940_off, rx940_pos, 1
    substr rx940_tgt, rx940_tgt, rx940_off
  rx940_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan944_done
    goto rxscan944_scan
  rxscan944_loop:
    ($P10) = rx940_cur."from"()
    inc $P10
    set rx940_pos, $P10
    ge rx940_pos, rx940_eos, rxscan944_done
  rxscan944_scan:
    set_addr $I10, rxscan944_loop
    rx940_cur."!mark_push"(0, rx940_pos, $I10)
  rxscan944_done:
.annotate "line", 457
  # rx subcapture "sym"
    set_addr $I10, rxcap_945_fail
    rx940_cur."!mark_push"(0, rx940_pos, $I10)
  # rx literal  "++"
    add $I11, rx940_pos, 2
    gt $I11, rx940_eos, rx940_fail
    sub $I11, rx940_pos, rx940_off
    substr $S10, rx940_tgt, $I11, 2
    ne $S10, "++", rx940_fail
    add rx940_pos, 2
    set_addr $I10, rxcap_945_fail
    ($I12, $I11) = rx940_cur."!mark_peek"($I10)
    rx940_cur."!cursor_pos"($I11)
    ($P10) = rx940_cur."!cursor_start"()
    $P10."!cursor_pass"(rx940_pos, "")
    rx940_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_945_done
  rxcap_945_fail:
    goto rx940_fail
  rxcap_945_done:
  # rx subrule "O" subtype=capture negate=
    rx940_cur."!cursor_pos"(rx940_pos)
    $P10 = rx940_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx940_fail
    rx940_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx940_pos = $P10."pos"()
  # rx pass
    rx940_cur."!cursor_pass"(rx940_pos, "prefix:sym<++>")
    rx940_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx940_pos)
    .return (rx940_cur)
  rx940_fail:
.annotate "line", 413
    (rx940_rep, rx940_pos, $I10, $P10) = rx940_cur."!mark_fail"(0)
    lt rx940_pos, -1, rx940_done
    eq rx940_pos, -1, rx940_fail
    jump $I10
  rx940_done:
    rx940_cur."!cursor_fail"()
    rx940_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx940_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("236_1261201519.6115") :method
.annotate "line", 413
    $P942 = self."!PREFIX__!subrule"("O", "++")
    new $P943, "ResizablePMCArray"
    push $P943, $P942
    .return ($P943)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("237_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx947_tgt
    .local int rx947_pos
    .local int rx947_off
    .local int rx947_eos
    .local int rx947_rep
    .local pmc rx947_cur
    (rx947_cur, rx947_pos, rx947_tgt) = self."!cursor_start"()
    rx947_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx947_cur
    .local pmc match
    .lex "$/", match
    length rx947_eos, rx947_tgt
    set rx947_off, 0
    lt rx947_pos, 2, rx947_start
    sub rx947_off, rx947_pos, 1
    substr rx947_tgt, rx947_tgt, rx947_off
  rx947_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan951_done
    goto rxscan951_scan
  rxscan951_loop:
    ($P10) = rx947_cur."from"()
    inc $P10
    set rx947_pos, $P10
    ge rx947_pos, rx947_eos, rxscan951_done
  rxscan951_scan:
    set_addr $I10, rxscan951_loop
    rx947_cur."!mark_push"(0, rx947_pos, $I10)
  rxscan951_done:
.annotate "line", 458
  # rx subcapture "sym"
    set_addr $I10, rxcap_952_fail
    rx947_cur."!mark_push"(0, rx947_pos, $I10)
  # rx literal  "--"
    add $I11, rx947_pos, 2
    gt $I11, rx947_eos, rx947_fail
    sub $I11, rx947_pos, rx947_off
    substr $S10, rx947_tgt, $I11, 2
    ne $S10, "--", rx947_fail
    add rx947_pos, 2
    set_addr $I10, rxcap_952_fail
    ($I12, $I11) = rx947_cur."!mark_peek"($I10)
    rx947_cur."!cursor_pos"($I11)
    ($P10) = rx947_cur."!cursor_start"()
    $P10."!cursor_pass"(rx947_pos, "")
    rx947_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_952_done
  rxcap_952_fail:
    goto rx947_fail
  rxcap_952_done:
  # rx subrule "O" subtype=capture negate=
    rx947_cur."!cursor_pos"(rx947_pos)
    $P10 = rx947_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx947_fail
    rx947_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx947_pos = $P10."pos"()
  # rx pass
    rx947_cur."!cursor_pass"(rx947_pos, "prefix:sym<-->")
    rx947_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx947_pos)
    .return (rx947_cur)
  rx947_fail:
.annotate "line", 413
    (rx947_rep, rx947_pos, $I10, $P10) = rx947_cur."!mark_fail"(0)
    lt rx947_pos, -1, rx947_done
    eq rx947_pos, -1, rx947_fail
    jump $I10
  rx947_done:
    rx947_cur."!cursor_fail"()
    rx947_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx947_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("238_1261201519.6115") :method
.annotate "line", 413
    $P949 = self."!PREFIX__!subrule"("O", "--")
    new $P950, "ResizablePMCArray"
    push $P950, $P949
    .return ($P950)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("239_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx954_tgt
    .local int rx954_pos
    .local int rx954_off
    .local int rx954_eos
    .local int rx954_rep
    .local pmc rx954_cur
    (rx954_cur, rx954_pos, rx954_tgt) = self."!cursor_start"()
    rx954_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx954_cur
    .local pmc match
    .lex "$/", match
    length rx954_eos, rx954_tgt
    set rx954_off, 0
    lt rx954_pos, 2, rx954_start
    sub rx954_off, rx954_pos, 1
    substr rx954_tgt, rx954_tgt, rx954_off
  rx954_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan958_done
    goto rxscan958_scan
  rxscan958_loop:
    ($P10) = rx954_cur."from"()
    inc $P10
    set rx954_pos, $P10
    ge rx954_pos, rx954_eos, rxscan958_done
  rxscan958_scan:
    set_addr $I10, rxscan958_loop
    rx954_cur."!mark_push"(0, rx954_pos, $I10)
  rxscan958_done:
.annotate "line", 461
  # rx subcapture "sym"
    set_addr $I10, rxcap_959_fail
    rx954_cur."!mark_push"(0, rx954_pos, $I10)
  # rx literal  "++"
    add $I11, rx954_pos, 2
    gt $I11, rx954_eos, rx954_fail
    sub $I11, rx954_pos, rx954_off
    substr $S10, rx954_tgt, $I11, 2
    ne $S10, "++", rx954_fail
    add rx954_pos, 2
    set_addr $I10, rxcap_959_fail
    ($I12, $I11) = rx954_cur."!mark_peek"($I10)
    rx954_cur."!cursor_pos"($I11)
    ($P10) = rx954_cur."!cursor_start"()
    $P10."!cursor_pass"(rx954_pos, "")
    rx954_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_959_done
  rxcap_959_fail:
    goto rx954_fail
  rxcap_959_done:
  # rx subrule "O" subtype=capture negate=
    rx954_cur."!cursor_pos"(rx954_pos)
    $P10 = rx954_cur."O"("%autoincrement")
    unless $P10, rx954_fail
    rx954_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx954_pos = $P10."pos"()
  # rx pass
    rx954_cur."!cursor_pass"(rx954_pos, "postfix:sym<++>")
    rx954_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx954_pos)
    .return (rx954_cur)
  rx954_fail:
.annotate "line", 413
    (rx954_rep, rx954_pos, $I10, $P10) = rx954_cur."!mark_fail"(0)
    lt rx954_pos, -1, rx954_done
    eq rx954_pos, -1, rx954_fail
    jump $I10
  rx954_done:
    rx954_cur."!cursor_fail"()
    rx954_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx954_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("240_1261201519.6115") :method
.annotate "line", 413
    $P956 = self."!PREFIX__!subrule"("O", "++")
    new $P957, "ResizablePMCArray"
    push $P957, $P956
    .return ($P957)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("241_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx961_tgt
    .local int rx961_pos
    .local int rx961_off
    .local int rx961_eos
    .local int rx961_rep
    .local pmc rx961_cur
    (rx961_cur, rx961_pos, rx961_tgt) = self."!cursor_start"()
    rx961_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx961_cur
    .local pmc match
    .lex "$/", match
    length rx961_eos, rx961_tgt
    set rx961_off, 0
    lt rx961_pos, 2, rx961_start
    sub rx961_off, rx961_pos, 1
    substr rx961_tgt, rx961_tgt, rx961_off
  rx961_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan965_done
    goto rxscan965_scan
  rxscan965_loop:
    ($P10) = rx961_cur."from"()
    inc $P10
    set rx961_pos, $P10
    ge rx961_pos, rx961_eos, rxscan965_done
  rxscan965_scan:
    set_addr $I10, rxscan965_loop
    rx961_cur."!mark_push"(0, rx961_pos, $I10)
  rxscan965_done:
.annotate "line", 462
  # rx subcapture "sym"
    set_addr $I10, rxcap_966_fail
    rx961_cur."!mark_push"(0, rx961_pos, $I10)
  # rx literal  "--"
    add $I11, rx961_pos, 2
    gt $I11, rx961_eos, rx961_fail
    sub $I11, rx961_pos, rx961_off
    substr $S10, rx961_tgt, $I11, 2
    ne $S10, "--", rx961_fail
    add rx961_pos, 2
    set_addr $I10, rxcap_966_fail
    ($I12, $I11) = rx961_cur."!mark_peek"($I10)
    rx961_cur."!cursor_pos"($I11)
    ($P10) = rx961_cur."!cursor_start"()
    $P10."!cursor_pass"(rx961_pos, "")
    rx961_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_966_done
  rxcap_966_fail:
    goto rx961_fail
  rxcap_966_done:
  # rx subrule "O" subtype=capture negate=
    rx961_cur."!cursor_pos"(rx961_pos)
    $P10 = rx961_cur."O"("%autoincrement")
    unless $P10, rx961_fail
    rx961_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx961_pos = $P10."pos"()
  # rx pass
    rx961_cur."!cursor_pass"(rx961_pos, "postfix:sym<-->")
    rx961_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx961_pos)
    .return (rx961_cur)
  rx961_fail:
.annotate "line", 413
    (rx961_rep, rx961_pos, $I10, $P10) = rx961_cur."!mark_fail"(0)
    lt rx961_pos, -1, rx961_done
    eq rx961_pos, -1, rx961_fail
    jump $I10
  rx961_done:
    rx961_cur."!cursor_fail"()
    rx961_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx961_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("242_1261201519.6115") :method
.annotate "line", 413
    $P963 = self."!PREFIX__!subrule"("O", "--")
    new $P964, "ResizablePMCArray"
    push $P964, $P963
    .return ($P964)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("243_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx968_tgt
    .local int rx968_pos
    .local int rx968_off
    .local int rx968_eos
    .local int rx968_rep
    .local pmc rx968_cur
    (rx968_cur, rx968_pos, rx968_tgt) = self."!cursor_start"()
    rx968_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx968_cur
    .local pmc match
    .lex "$/", match
    length rx968_eos, rx968_tgt
    set rx968_off, 0
    lt rx968_pos, 2, rx968_start
    sub rx968_off, rx968_pos, 1
    substr rx968_tgt, rx968_tgt, rx968_off
  rx968_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan972_done
    goto rxscan972_scan
  rxscan972_loop:
    ($P10) = rx968_cur."from"()
    inc $P10
    set rx968_pos, $P10
    ge rx968_pos, rx968_eos, rxscan972_done
  rxscan972_scan:
    set_addr $I10, rxscan972_loop
    rx968_cur."!mark_push"(0, rx968_pos, $I10)
  rxscan972_done:
.annotate "line", 464
  # rx subcapture "sym"
    set_addr $I10, rxcap_973_fail
    rx968_cur."!mark_push"(0, rx968_pos, $I10)
  # rx literal  "**"
    add $I11, rx968_pos, 2
    gt $I11, rx968_eos, rx968_fail
    sub $I11, rx968_pos, rx968_off
    substr $S10, rx968_tgt, $I11, 2
    ne $S10, "**", rx968_fail
    add rx968_pos, 2
    set_addr $I10, rxcap_973_fail
    ($I12, $I11) = rx968_cur."!mark_peek"($I10)
    rx968_cur."!cursor_pos"($I11)
    ($P10) = rx968_cur."!cursor_start"()
    $P10."!cursor_pass"(rx968_pos, "")
    rx968_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_973_done
  rxcap_973_fail:
    goto rx968_fail
  rxcap_973_done:
  # rx subrule "O" subtype=capture negate=
    rx968_cur."!cursor_pos"(rx968_pos)
    $P10 = rx968_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx968_fail
    rx968_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx968_pos = $P10."pos"()
  # rx pass
    rx968_cur."!cursor_pass"(rx968_pos, "infix:sym<**>")
    rx968_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx968_pos)
    .return (rx968_cur)
  rx968_fail:
.annotate "line", 413
    (rx968_rep, rx968_pos, $I10, $P10) = rx968_cur."!mark_fail"(0)
    lt rx968_pos, -1, rx968_done
    eq rx968_pos, -1, rx968_fail
    jump $I10
  rx968_done:
    rx968_cur."!cursor_fail"()
    rx968_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx968_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("244_1261201519.6115") :method
.annotate "line", 413
    $P970 = self."!PREFIX__!subrule"("O", "**")
    new $P971, "ResizablePMCArray"
    push $P971, $P970
    .return ($P971)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("245_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx975_tgt
    .local int rx975_pos
    .local int rx975_off
    .local int rx975_eos
    .local int rx975_rep
    .local pmc rx975_cur
    (rx975_cur, rx975_pos, rx975_tgt) = self."!cursor_start"()
    rx975_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx975_cur
    .local pmc match
    .lex "$/", match
    length rx975_eos, rx975_tgt
    set rx975_off, 0
    lt rx975_pos, 2, rx975_start
    sub rx975_off, rx975_pos, 1
    substr rx975_tgt, rx975_tgt, rx975_off
  rx975_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan979_done
    goto rxscan979_scan
  rxscan979_loop:
    ($P10) = rx975_cur."from"()
    inc $P10
    set rx975_pos, $P10
    ge rx975_pos, rx975_eos, rxscan979_done
  rxscan979_scan:
    set_addr $I10, rxscan979_loop
    rx975_cur."!mark_push"(0, rx975_pos, $I10)
  rxscan979_done:
.annotate "line", 466
  # rx subcapture "sym"
    set_addr $I10, rxcap_980_fail
    rx975_cur."!mark_push"(0, rx975_pos, $I10)
  # rx literal  "+"
    add $I11, rx975_pos, 1
    gt $I11, rx975_eos, rx975_fail
    sub $I11, rx975_pos, rx975_off
    substr $S10, rx975_tgt, $I11, 1
    ne $S10, "+", rx975_fail
    add rx975_pos, 1
    set_addr $I10, rxcap_980_fail
    ($I12, $I11) = rx975_cur."!mark_peek"($I10)
    rx975_cur."!cursor_pos"($I11)
    ($P10) = rx975_cur."!cursor_start"()
    $P10."!cursor_pass"(rx975_pos, "")
    rx975_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_980_done
  rxcap_980_fail:
    goto rx975_fail
  rxcap_980_done:
  # rx subrule "O" subtype=capture negate=
    rx975_cur."!cursor_pos"(rx975_pos)
    $P10 = rx975_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx975_fail
    rx975_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx975_pos = $P10."pos"()
  # rx pass
    rx975_cur."!cursor_pass"(rx975_pos, "prefix:sym<+>")
    rx975_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx975_pos)
    .return (rx975_cur)
  rx975_fail:
.annotate "line", 413
    (rx975_rep, rx975_pos, $I10, $P10) = rx975_cur."!mark_fail"(0)
    lt rx975_pos, -1, rx975_done
    eq rx975_pos, -1, rx975_fail
    jump $I10
  rx975_done:
    rx975_cur."!cursor_fail"()
    rx975_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx975_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("246_1261201519.6115") :method
.annotate "line", 413
    $P977 = self."!PREFIX__!subrule"("O", "+")
    new $P978, "ResizablePMCArray"
    push $P978, $P977
    .return ($P978)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("247_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx982_tgt
    .local int rx982_pos
    .local int rx982_off
    .local int rx982_eos
    .local int rx982_rep
    .local pmc rx982_cur
    (rx982_cur, rx982_pos, rx982_tgt) = self."!cursor_start"()
    rx982_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx982_cur
    .local pmc match
    .lex "$/", match
    length rx982_eos, rx982_tgt
    set rx982_off, 0
    lt rx982_pos, 2, rx982_start
    sub rx982_off, rx982_pos, 1
    substr rx982_tgt, rx982_tgt, rx982_off
  rx982_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan986_done
    goto rxscan986_scan
  rxscan986_loop:
    ($P10) = rx982_cur."from"()
    inc $P10
    set rx982_pos, $P10
    ge rx982_pos, rx982_eos, rxscan986_done
  rxscan986_scan:
    set_addr $I10, rxscan986_loop
    rx982_cur."!mark_push"(0, rx982_pos, $I10)
  rxscan986_done:
.annotate "line", 467
  # rx subcapture "sym"
    set_addr $I10, rxcap_987_fail
    rx982_cur."!mark_push"(0, rx982_pos, $I10)
  # rx literal  "~"
    add $I11, rx982_pos, 1
    gt $I11, rx982_eos, rx982_fail
    sub $I11, rx982_pos, rx982_off
    substr $S10, rx982_tgt, $I11, 1
    ne $S10, "~", rx982_fail
    add rx982_pos, 1
    set_addr $I10, rxcap_987_fail
    ($I12, $I11) = rx982_cur."!mark_peek"($I10)
    rx982_cur."!cursor_pos"($I11)
    ($P10) = rx982_cur."!cursor_start"()
    $P10."!cursor_pass"(rx982_pos, "")
    rx982_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_987_done
  rxcap_987_fail:
    goto rx982_fail
  rxcap_987_done:
  # rx subrule "O" subtype=capture negate=
    rx982_cur."!cursor_pos"(rx982_pos)
    $P10 = rx982_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx982_fail
    rx982_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx982_pos = $P10."pos"()
  # rx pass
    rx982_cur."!cursor_pass"(rx982_pos, "prefix:sym<~>")
    rx982_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx982_pos)
    .return (rx982_cur)
  rx982_fail:
.annotate "line", 413
    (rx982_rep, rx982_pos, $I10, $P10) = rx982_cur."!mark_fail"(0)
    lt rx982_pos, -1, rx982_done
    eq rx982_pos, -1, rx982_fail
    jump $I10
  rx982_done:
    rx982_cur."!cursor_fail"()
    rx982_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx982_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("248_1261201519.6115") :method
.annotate "line", 413
    $P984 = self."!PREFIX__!subrule"("O", "~")
    new $P985, "ResizablePMCArray"
    push $P985, $P984
    .return ($P985)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("249_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx989_tgt
    .local int rx989_pos
    .local int rx989_off
    .local int rx989_eos
    .local int rx989_rep
    .local pmc rx989_cur
    (rx989_cur, rx989_pos, rx989_tgt) = self."!cursor_start"()
    rx989_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx989_cur
    .local pmc match
    .lex "$/", match
    length rx989_eos, rx989_tgt
    set rx989_off, 0
    lt rx989_pos, 2, rx989_start
    sub rx989_off, rx989_pos, 1
    substr rx989_tgt, rx989_tgt, rx989_off
  rx989_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan992_done
    goto rxscan992_scan
  rxscan992_loop:
    ($P10) = rx989_cur."from"()
    inc $P10
    set rx989_pos, $P10
    ge rx989_pos, rx989_eos, rxscan992_done
  rxscan992_scan:
    set_addr $I10, rxscan992_loop
    rx989_cur."!mark_push"(0, rx989_pos, $I10)
  rxscan992_done:
.annotate "line", 468
  # rx subcapture "sym"
    set_addr $I10, rxcap_993_fail
    rx989_cur."!mark_push"(0, rx989_pos, $I10)
  # rx literal  "-"
    add $I11, rx989_pos, 1
    gt $I11, rx989_eos, rx989_fail
    sub $I11, rx989_pos, rx989_off
    substr $S10, rx989_tgt, $I11, 1
    ne $S10, "-", rx989_fail
    add rx989_pos, 1
    set_addr $I10, rxcap_993_fail
    ($I12, $I11) = rx989_cur."!mark_peek"($I10)
    rx989_cur."!cursor_pos"($I11)
    ($P10) = rx989_cur."!cursor_start"()
    $P10."!cursor_pass"(rx989_pos, "")
    rx989_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_993_done
  rxcap_993_fail:
    goto rx989_fail
  rxcap_993_done:
  # rx enumcharlist negate=1 zerowidth
    ge rx989_pos, rx989_eos, rx989_fail
    sub $I10, rx989_pos, rx989_off
    substr $S10, rx989_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx989_fail
  # rx subrule "number" subtype=zerowidth negate=1
    rx989_cur."!cursor_pos"(rx989_pos)
    $P10 = rx989_cur."number"()
    if $P10, rx989_fail
  # rx subrule "O" subtype=capture negate=
    rx989_cur."!cursor_pos"(rx989_pos)
    $P10 = rx989_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx989_fail
    rx989_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx989_pos = $P10."pos"()
  # rx pass
    rx989_cur."!cursor_pass"(rx989_pos, "prefix:sym<->")
    rx989_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx989_pos)
    .return (rx989_cur)
  rx989_fail:
.annotate "line", 413
    (rx989_rep, rx989_pos, $I10, $P10) = rx989_cur."!mark_fail"(0)
    lt rx989_pos, -1, rx989_done
    eq rx989_pos, -1, rx989_fail
    jump $I10
  rx989_done:
    rx989_cur."!cursor_fail"()
    rx989_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx989_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("250_1261201519.6115") :method
.annotate "line", 413
    new $P991, "ResizablePMCArray"
    push $P991, "-"
    .return ($P991)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("251_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx995_tgt
    .local int rx995_pos
    .local int rx995_off
    .local int rx995_eos
    .local int rx995_rep
    .local pmc rx995_cur
    (rx995_cur, rx995_pos, rx995_tgt) = self."!cursor_start"()
    rx995_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx995_cur
    .local pmc match
    .lex "$/", match
    length rx995_eos, rx995_tgt
    set rx995_off, 0
    lt rx995_pos, 2, rx995_start
    sub rx995_off, rx995_pos, 1
    substr rx995_tgt, rx995_tgt, rx995_off
  rx995_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan999_done
    goto rxscan999_scan
  rxscan999_loop:
    ($P10) = rx995_cur."from"()
    inc $P10
    set rx995_pos, $P10
    ge rx995_pos, rx995_eos, rxscan999_done
  rxscan999_scan:
    set_addr $I10, rxscan999_loop
    rx995_cur."!mark_push"(0, rx995_pos, $I10)
  rxscan999_done:
.annotate "line", 469
  # rx subcapture "sym"
    set_addr $I10, rxcap_1000_fail
    rx995_cur."!mark_push"(0, rx995_pos, $I10)
  # rx literal  "?"
    add $I11, rx995_pos, 1
    gt $I11, rx995_eos, rx995_fail
    sub $I11, rx995_pos, rx995_off
    substr $S10, rx995_tgt, $I11, 1
    ne $S10, "?", rx995_fail
    add rx995_pos, 1
    set_addr $I10, rxcap_1000_fail
    ($I12, $I11) = rx995_cur."!mark_peek"($I10)
    rx995_cur."!cursor_pos"($I11)
    ($P10) = rx995_cur."!cursor_start"()
    $P10."!cursor_pass"(rx995_pos, "")
    rx995_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1000_done
  rxcap_1000_fail:
    goto rx995_fail
  rxcap_1000_done:
  # rx subrule "O" subtype=capture negate=
    rx995_cur."!cursor_pos"(rx995_pos)
    $P10 = rx995_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx995_fail
    rx995_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx995_pos = $P10."pos"()
  # rx pass
    rx995_cur."!cursor_pass"(rx995_pos, "prefix:sym<?>")
    rx995_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx995_pos)
    .return (rx995_cur)
  rx995_fail:
.annotate "line", 413
    (rx995_rep, rx995_pos, $I10, $P10) = rx995_cur."!mark_fail"(0)
    lt rx995_pos, -1, rx995_done
    eq rx995_pos, -1, rx995_fail
    jump $I10
  rx995_done:
    rx995_cur."!cursor_fail"()
    rx995_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx995_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("252_1261201519.6115") :method
.annotate "line", 413
    $P997 = self."!PREFIX__!subrule"("O", "?")
    new $P998, "ResizablePMCArray"
    push $P998, $P997
    .return ($P998)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("253_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1002_tgt
    .local int rx1002_pos
    .local int rx1002_off
    .local int rx1002_eos
    .local int rx1002_rep
    .local pmc rx1002_cur
    (rx1002_cur, rx1002_pos, rx1002_tgt) = self."!cursor_start"()
    rx1002_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx1002_cur
    .local pmc match
    .lex "$/", match
    length rx1002_eos, rx1002_tgt
    set rx1002_off, 0
    lt rx1002_pos, 2, rx1002_start
    sub rx1002_off, rx1002_pos, 1
    substr rx1002_tgt, rx1002_tgt, rx1002_off
  rx1002_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1006_done
    goto rxscan1006_scan
  rxscan1006_loop:
    ($P10) = rx1002_cur."from"()
    inc $P10
    set rx1002_pos, $P10
    ge rx1002_pos, rx1002_eos, rxscan1006_done
  rxscan1006_scan:
    set_addr $I10, rxscan1006_loop
    rx1002_cur."!mark_push"(0, rx1002_pos, $I10)
  rxscan1006_done:
.annotate "line", 470
  # rx subcapture "sym"
    set_addr $I10, rxcap_1007_fail
    rx1002_cur."!mark_push"(0, rx1002_pos, $I10)
  # rx literal  "!"
    add $I11, rx1002_pos, 1
    gt $I11, rx1002_eos, rx1002_fail
    sub $I11, rx1002_pos, rx1002_off
    substr $S10, rx1002_tgt, $I11, 1
    ne $S10, "!", rx1002_fail
    add rx1002_pos, 1
    set_addr $I10, rxcap_1007_fail
    ($I12, $I11) = rx1002_cur."!mark_peek"($I10)
    rx1002_cur."!cursor_pos"($I11)
    ($P10) = rx1002_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1002_pos, "")
    rx1002_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1007_done
  rxcap_1007_fail:
    goto rx1002_fail
  rxcap_1007_done:
  # rx subrule "O" subtype=capture negate=
    rx1002_cur."!cursor_pos"(rx1002_pos)
    $P10 = rx1002_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx1002_fail
    rx1002_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1002_pos = $P10."pos"()
  # rx pass
    rx1002_cur."!cursor_pass"(rx1002_pos, "prefix:sym<!>")
    rx1002_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx1002_pos)
    .return (rx1002_cur)
  rx1002_fail:
.annotate "line", 413
    (rx1002_rep, rx1002_pos, $I10, $P10) = rx1002_cur."!mark_fail"(0)
    lt rx1002_pos, -1, rx1002_done
    eq rx1002_pos, -1, rx1002_fail
    jump $I10
  rx1002_done:
    rx1002_cur."!cursor_fail"()
    rx1002_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx1002_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("254_1261201519.6115") :method
.annotate "line", 413
    $P1004 = self."!PREFIX__!subrule"("O", "!")
    new $P1005, "ResizablePMCArray"
    push $P1005, $P1004
    .return ($P1005)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<|>"  :subid("255_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1009_tgt
    .local int rx1009_pos
    .local int rx1009_off
    .local int rx1009_eos
    .local int rx1009_rep
    .local pmc rx1009_cur
    (rx1009_cur, rx1009_pos, rx1009_tgt) = self."!cursor_start"()
    rx1009_cur."!cursor_debug"("START ", "prefix:sym<|>")
    .lex unicode:"$\x{a2}", rx1009_cur
    .local pmc match
    .lex "$/", match
    length rx1009_eos, rx1009_tgt
    set rx1009_off, 0
    lt rx1009_pos, 2, rx1009_start
    sub rx1009_off, rx1009_pos, 1
    substr rx1009_tgt, rx1009_tgt, rx1009_off
  rx1009_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1013_done
    goto rxscan1013_scan
  rxscan1013_loop:
    ($P10) = rx1009_cur."from"()
    inc $P10
    set rx1009_pos, $P10
    ge rx1009_pos, rx1009_eos, rxscan1013_done
  rxscan1013_scan:
    set_addr $I10, rxscan1013_loop
    rx1009_cur."!mark_push"(0, rx1009_pos, $I10)
  rxscan1013_done:
.annotate "line", 471
  # rx subcapture "sym"
    set_addr $I10, rxcap_1014_fail
    rx1009_cur."!mark_push"(0, rx1009_pos, $I10)
  # rx literal  "|"
    add $I11, rx1009_pos, 1
    gt $I11, rx1009_eos, rx1009_fail
    sub $I11, rx1009_pos, rx1009_off
    substr $S10, rx1009_tgt, $I11, 1
    ne $S10, "|", rx1009_fail
    add rx1009_pos, 1
    set_addr $I10, rxcap_1014_fail
    ($I12, $I11) = rx1009_cur."!mark_peek"($I10)
    rx1009_cur."!cursor_pos"($I11)
    ($P10) = rx1009_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1009_pos, "")
    rx1009_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1014_done
  rxcap_1014_fail:
    goto rx1009_fail
  rxcap_1014_done:
  # rx subrule "O" subtype=capture negate=
    rx1009_cur."!cursor_pos"(rx1009_pos)
    $P10 = rx1009_cur."O"("%symbolic_unary")
    unless $P10, rx1009_fail
    rx1009_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1009_pos = $P10."pos"()
  # rx pass
    rx1009_cur."!cursor_pass"(rx1009_pos, "prefix:sym<|>")
    rx1009_cur."!cursor_debug"("PASS  ", "prefix:sym<|>", " at pos=", rx1009_pos)
    .return (rx1009_cur)
  rx1009_fail:
.annotate "line", 413
    (rx1009_rep, rx1009_pos, $I10, $P10) = rx1009_cur."!mark_fail"(0)
    lt rx1009_pos, -1, rx1009_done
    eq rx1009_pos, -1, rx1009_fail
    jump $I10
  rx1009_done:
    rx1009_cur."!cursor_fail"()
    rx1009_cur."!cursor_debug"("FAIL  ", "prefix:sym<|>")
    .return (rx1009_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<|>"  :subid("256_1261201519.6115") :method
.annotate "line", 413
    $P1011 = self."!PREFIX__!subrule"("O", "|")
    new $P1012, "ResizablePMCArray"
    push $P1012, $P1011
    .return ($P1012)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("257_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1016_tgt
    .local int rx1016_pos
    .local int rx1016_off
    .local int rx1016_eos
    .local int rx1016_rep
    .local pmc rx1016_cur
    (rx1016_cur, rx1016_pos, rx1016_tgt) = self."!cursor_start"()
    rx1016_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx1016_cur
    .local pmc match
    .lex "$/", match
    length rx1016_eos, rx1016_tgt
    set rx1016_off, 0
    lt rx1016_pos, 2, rx1016_start
    sub rx1016_off, rx1016_pos, 1
    substr rx1016_tgt, rx1016_tgt, rx1016_off
  rx1016_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1020_done
    goto rxscan1020_scan
  rxscan1020_loop:
    ($P10) = rx1016_cur."from"()
    inc $P10
    set rx1016_pos, $P10
    ge rx1016_pos, rx1016_eos, rxscan1020_done
  rxscan1020_scan:
    set_addr $I10, rxscan1020_loop
    rx1016_cur."!mark_push"(0, rx1016_pos, $I10)
  rxscan1020_done:
.annotate "line", 473
  # rx subcapture "sym"
    set_addr $I10, rxcap_1021_fail
    rx1016_cur."!mark_push"(0, rx1016_pos, $I10)
  # rx literal  "*"
    add $I11, rx1016_pos, 1
    gt $I11, rx1016_eos, rx1016_fail
    sub $I11, rx1016_pos, rx1016_off
    substr $S10, rx1016_tgt, $I11, 1
    ne $S10, "*", rx1016_fail
    add rx1016_pos, 1
    set_addr $I10, rxcap_1021_fail
    ($I12, $I11) = rx1016_cur."!mark_peek"($I10)
    rx1016_cur."!cursor_pos"($I11)
    ($P10) = rx1016_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1016_pos, "")
    rx1016_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1021_done
  rxcap_1021_fail:
    goto rx1016_fail
  rxcap_1021_done:
  # rx subrule "O" subtype=capture negate=
    rx1016_cur."!cursor_pos"(rx1016_pos)
    $P10 = rx1016_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx1016_fail
    rx1016_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1016_pos = $P10."pos"()
  # rx pass
    rx1016_cur."!cursor_pass"(rx1016_pos, "infix:sym<*>")
    rx1016_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx1016_pos)
    .return (rx1016_cur)
  rx1016_fail:
.annotate "line", 413
    (rx1016_rep, rx1016_pos, $I10, $P10) = rx1016_cur."!mark_fail"(0)
    lt rx1016_pos, -1, rx1016_done
    eq rx1016_pos, -1, rx1016_fail
    jump $I10
  rx1016_done:
    rx1016_cur."!cursor_fail"()
    rx1016_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx1016_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("258_1261201519.6115") :method
.annotate "line", 413
    $P1018 = self."!PREFIX__!subrule"("O", "*")
    new $P1019, "ResizablePMCArray"
    push $P1019, $P1018
    .return ($P1019)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("259_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1023_tgt
    .local int rx1023_pos
    .local int rx1023_off
    .local int rx1023_eos
    .local int rx1023_rep
    .local pmc rx1023_cur
    (rx1023_cur, rx1023_pos, rx1023_tgt) = self."!cursor_start"()
    rx1023_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx1023_cur
    .local pmc match
    .lex "$/", match
    length rx1023_eos, rx1023_tgt
    set rx1023_off, 0
    lt rx1023_pos, 2, rx1023_start
    sub rx1023_off, rx1023_pos, 1
    substr rx1023_tgt, rx1023_tgt, rx1023_off
  rx1023_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1027_done
    goto rxscan1027_scan
  rxscan1027_loop:
    ($P10) = rx1023_cur."from"()
    inc $P10
    set rx1023_pos, $P10
    ge rx1023_pos, rx1023_eos, rxscan1027_done
  rxscan1027_scan:
    set_addr $I10, rxscan1027_loop
    rx1023_cur."!mark_push"(0, rx1023_pos, $I10)
  rxscan1027_done:
.annotate "line", 474
  # rx subcapture "sym"
    set_addr $I10, rxcap_1028_fail
    rx1023_cur."!mark_push"(0, rx1023_pos, $I10)
  # rx literal  "/"
    add $I11, rx1023_pos, 1
    gt $I11, rx1023_eos, rx1023_fail
    sub $I11, rx1023_pos, rx1023_off
    substr $S10, rx1023_tgt, $I11, 1
    ne $S10, "/", rx1023_fail
    add rx1023_pos, 1
    set_addr $I10, rxcap_1028_fail
    ($I12, $I11) = rx1023_cur."!mark_peek"($I10)
    rx1023_cur."!cursor_pos"($I11)
    ($P10) = rx1023_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1023_pos, "")
    rx1023_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1028_done
  rxcap_1028_fail:
    goto rx1023_fail
  rxcap_1028_done:
  # rx subrule "O" subtype=capture negate=
    rx1023_cur."!cursor_pos"(rx1023_pos)
    $P10 = rx1023_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx1023_fail
    rx1023_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1023_pos = $P10."pos"()
  # rx pass
    rx1023_cur."!cursor_pass"(rx1023_pos, "infix:sym</>")
    rx1023_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx1023_pos)
    .return (rx1023_cur)
  rx1023_fail:
.annotate "line", 413
    (rx1023_rep, rx1023_pos, $I10, $P10) = rx1023_cur."!mark_fail"(0)
    lt rx1023_pos, -1, rx1023_done
    eq rx1023_pos, -1, rx1023_fail
    jump $I10
  rx1023_done:
    rx1023_cur."!cursor_fail"()
    rx1023_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx1023_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("260_1261201519.6115") :method
.annotate "line", 413
    $P1025 = self."!PREFIX__!subrule"("O", "/")
    new $P1026, "ResizablePMCArray"
    push $P1026, $P1025
    .return ($P1026)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("261_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1030_tgt
    .local int rx1030_pos
    .local int rx1030_off
    .local int rx1030_eos
    .local int rx1030_rep
    .local pmc rx1030_cur
    (rx1030_cur, rx1030_pos, rx1030_tgt) = self."!cursor_start"()
    rx1030_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx1030_cur
    .local pmc match
    .lex "$/", match
    length rx1030_eos, rx1030_tgt
    set rx1030_off, 0
    lt rx1030_pos, 2, rx1030_start
    sub rx1030_off, rx1030_pos, 1
    substr rx1030_tgt, rx1030_tgt, rx1030_off
  rx1030_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1034_done
    goto rxscan1034_scan
  rxscan1034_loop:
    ($P10) = rx1030_cur."from"()
    inc $P10
    set rx1030_pos, $P10
    ge rx1030_pos, rx1030_eos, rxscan1034_done
  rxscan1034_scan:
    set_addr $I10, rxscan1034_loop
    rx1030_cur."!mark_push"(0, rx1030_pos, $I10)
  rxscan1034_done:
.annotate "line", 475
  # rx subcapture "sym"
    set_addr $I10, rxcap_1035_fail
    rx1030_cur."!mark_push"(0, rx1030_pos, $I10)
  # rx literal  "%"
    add $I11, rx1030_pos, 1
    gt $I11, rx1030_eos, rx1030_fail
    sub $I11, rx1030_pos, rx1030_off
    substr $S10, rx1030_tgt, $I11, 1
    ne $S10, "%", rx1030_fail
    add rx1030_pos, 1
    set_addr $I10, rxcap_1035_fail
    ($I12, $I11) = rx1030_cur."!mark_peek"($I10)
    rx1030_cur."!cursor_pos"($I11)
    ($P10) = rx1030_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1030_pos, "")
    rx1030_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1035_done
  rxcap_1035_fail:
    goto rx1030_fail
  rxcap_1035_done:
  # rx subrule "O" subtype=capture negate=
    rx1030_cur."!cursor_pos"(rx1030_pos)
    $P10 = rx1030_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx1030_fail
    rx1030_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1030_pos = $P10."pos"()
  # rx pass
    rx1030_cur."!cursor_pass"(rx1030_pos, "infix:sym<%>")
    rx1030_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx1030_pos)
    .return (rx1030_cur)
  rx1030_fail:
.annotate "line", 413
    (rx1030_rep, rx1030_pos, $I10, $P10) = rx1030_cur."!mark_fail"(0)
    lt rx1030_pos, -1, rx1030_done
    eq rx1030_pos, -1, rx1030_fail
    jump $I10
  rx1030_done:
    rx1030_cur."!cursor_fail"()
    rx1030_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx1030_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("262_1261201519.6115") :method
.annotate "line", 413
    $P1032 = self."!PREFIX__!subrule"("O", "%")
    new $P1033, "ResizablePMCArray"
    push $P1033, $P1032
    .return ($P1033)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("263_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1037_tgt
    .local int rx1037_pos
    .local int rx1037_off
    .local int rx1037_eos
    .local int rx1037_rep
    .local pmc rx1037_cur
    (rx1037_cur, rx1037_pos, rx1037_tgt) = self."!cursor_start"()
    rx1037_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx1037_cur
    .local pmc match
    .lex "$/", match
    length rx1037_eos, rx1037_tgt
    set rx1037_off, 0
    lt rx1037_pos, 2, rx1037_start
    sub rx1037_off, rx1037_pos, 1
    substr rx1037_tgt, rx1037_tgt, rx1037_off
  rx1037_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1041_done
    goto rxscan1041_scan
  rxscan1041_loop:
    ($P10) = rx1037_cur."from"()
    inc $P10
    set rx1037_pos, $P10
    ge rx1037_pos, rx1037_eos, rxscan1041_done
  rxscan1041_scan:
    set_addr $I10, rxscan1041_loop
    rx1037_cur."!mark_push"(0, rx1037_pos, $I10)
  rxscan1041_done:
.annotate "line", 477
  # rx subcapture "sym"
    set_addr $I10, rxcap_1042_fail
    rx1037_cur."!mark_push"(0, rx1037_pos, $I10)
  # rx literal  "+"
    add $I11, rx1037_pos, 1
    gt $I11, rx1037_eos, rx1037_fail
    sub $I11, rx1037_pos, rx1037_off
    substr $S10, rx1037_tgt, $I11, 1
    ne $S10, "+", rx1037_fail
    add rx1037_pos, 1
    set_addr $I10, rxcap_1042_fail
    ($I12, $I11) = rx1037_cur."!mark_peek"($I10)
    rx1037_cur."!cursor_pos"($I11)
    ($P10) = rx1037_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1037_pos, "")
    rx1037_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1042_done
  rxcap_1042_fail:
    goto rx1037_fail
  rxcap_1042_done:
  # rx subrule "O" subtype=capture negate=
    rx1037_cur."!cursor_pos"(rx1037_pos)
    $P10 = rx1037_cur."O"("%additive, :pirop<add>")
    unless $P10, rx1037_fail
    rx1037_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1037_pos = $P10."pos"()
  # rx pass
    rx1037_cur."!cursor_pass"(rx1037_pos, "infix:sym<+>")
    rx1037_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx1037_pos)
    .return (rx1037_cur)
  rx1037_fail:
.annotate "line", 413
    (rx1037_rep, rx1037_pos, $I10, $P10) = rx1037_cur."!mark_fail"(0)
    lt rx1037_pos, -1, rx1037_done
    eq rx1037_pos, -1, rx1037_fail
    jump $I10
  rx1037_done:
    rx1037_cur."!cursor_fail"()
    rx1037_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx1037_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("264_1261201519.6115") :method
.annotate "line", 413
    $P1039 = self."!PREFIX__!subrule"("O", "+")
    new $P1040, "ResizablePMCArray"
    push $P1040, $P1039
    .return ($P1040)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("265_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1044_tgt
    .local int rx1044_pos
    .local int rx1044_off
    .local int rx1044_eos
    .local int rx1044_rep
    .local pmc rx1044_cur
    (rx1044_cur, rx1044_pos, rx1044_tgt) = self."!cursor_start"()
    rx1044_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx1044_cur
    .local pmc match
    .lex "$/", match
    length rx1044_eos, rx1044_tgt
    set rx1044_off, 0
    lt rx1044_pos, 2, rx1044_start
    sub rx1044_off, rx1044_pos, 1
    substr rx1044_tgt, rx1044_tgt, rx1044_off
  rx1044_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1048_done
    goto rxscan1048_scan
  rxscan1048_loop:
    ($P10) = rx1044_cur."from"()
    inc $P10
    set rx1044_pos, $P10
    ge rx1044_pos, rx1044_eos, rxscan1048_done
  rxscan1048_scan:
    set_addr $I10, rxscan1048_loop
    rx1044_cur."!mark_push"(0, rx1044_pos, $I10)
  rxscan1048_done:
.annotate "line", 478
  # rx subcapture "sym"
    set_addr $I10, rxcap_1049_fail
    rx1044_cur."!mark_push"(0, rx1044_pos, $I10)
  # rx literal  "-"
    add $I11, rx1044_pos, 1
    gt $I11, rx1044_eos, rx1044_fail
    sub $I11, rx1044_pos, rx1044_off
    substr $S10, rx1044_tgt, $I11, 1
    ne $S10, "-", rx1044_fail
    add rx1044_pos, 1
    set_addr $I10, rxcap_1049_fail
    ($I12, $I11) = rx1044_cur."!mark_peek"($I10)
    rx1044_cur."!cursor_pos"($I11)
    ($P10) = rx1044_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1044_pos, "")
    rx1044_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1049_done
  rxcap_1049_fail:
    goto rx1044_fail
  rxcap_1049_done:
  # rx subrule "O" subtype=capture negate=
    rx1044_cur."!cursor_pos"(rx1044_pos)
    $P10 = rx1044_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx1044_fail
    rx1044_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1044_pos = $P10."pos"()
  # rx pass
    rx1044_cur."!cursor_pass"(rx1044_pos, "infix:sym<->")
    rx1044_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx1044_pos)
    .return (rx1044_cur)
  rx1044_fail:
.annotate "line", 413
    (rx1044_rep, rx1044_pos, $I10, $P10) = rx1044_cur."!mark_fail"(0)
    lt rx1044_pos, -1, rx1044_done
    eq rx1044_pos, -1, rx1044_fail
    jump $I10
  rx1044_done:
    rx1044_cur."!cursor_fail"()
    rx1044_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx1044_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("266_1261201519.6115") :method
.annotate "line", 413
    $P1046 = self."!PREFIX__!subrule"("O", "-")
    new $P1047, "ResizablePMCArray"
    push $P1047, $P1046
    .return ($P1047)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("267_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1051_tgt
    .local int rx1051_pos
    .local int rx1051_off
    .local int rx1051_eos
    .local int rx1051_rep
    .local pmc rx1051_cur
    (rx1051_cur, rx1051_pos, rx1051_tgt) = self."!cursor_start"()
    rx1051_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx1051_cur
    .local pmc match
    .lex "$/", match
    length rx1051_eos, rx1051_tgt
    set rx1051_off, 0
    lt rx1051_pos, 2, rx1051_start
    sub rx1051_off, rx1051_pos, 1
    substr rx1051_tgt, rx1051_tgt, rx1051_off
  rx1051_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1055_done
    goto rxscan1055_scan
  rxscan1055_loop:
    ($P10) = rx1051_cur."from"()
    inc $P10
    set rx1051_pos, $P10
    ge rx1051_pos, rx1051_eos, rxscan1055_done
  rxscan1055_scan:
    set_addr $I10, rxscan1055_loop
    rx1051_cur."!mark_push"(0, rx1051_pos, $I10)
  rxscan1055_done:
.annotate "line", 480
  # rx subcapture "sym"
    set_addr $I10, rxcap_1056_fail
    rx1051_cur."!mark_push"(0, rx1051_pos, $I10)
  # rx literal  "~"
    add $I11, rx1051_pos, 1
    gt $I11, rx1051_eos, rx1051_fail
    sub $I11, rx1051_pos, rx1051_off
    substr $S10, rx1051_tgt, $I11, 1
    ne $S10, "~", rx1051_fail
    add rx1051_pos, 1
    set_addr $I10, rxcap_1056_fail
    ($I12, $I11) = rx1051_cur."!mark_peek"($I10)
    rx1051_cur."!cursor_pos"($I11)
    ($P10) = rx1051_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1051_pos, "")
    rx1051_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1056_done
  rxcap_1056_fail:
    goto rx1051_fail
  rxcap_1056_done:
  # rx subrule "O" subtype=capture negate=
    rx1051_cur."!cursor_pos"(rx1051_pos)
    $P10 = rx1051_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx1051_fail
    rx1051_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1051_pos = $P10."pos"()
  # rx pass
    rx1051_cur."!cursor_pass"(rx1051_pos, "infix:sym<~>")
    rx1051_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx1051_pos)
    .return (rx1051_cur)
  rx1051_fail:
.annotate "line", 413
    (rx1051_rep, rx1051_pos, $I10, $P10) = rx1051_cur."!mark_fail"(0)
    lt rx1051_pos, -1, rx1051_done
    eq rx1051_pos, -1, rx1051_fail
    jump $I10
  rx1051_done:
    rx1051_cur."!cursor_fail"()
    rx1051_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx1051_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("268_1261201519.6115") :method
.annotate "line", 413
    $P1053 = self."!PREFIX__!subrule"("O", "~")
    new $P1054, "ResizablePMCArray"
    push $P1054, $P1053
    .return ($P1054)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("269_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1058_tgt
    .local int rx1058_pos
    .local int rx1058_off
    .local int rx1058_eos
    .local int rx1058_rep
    .local pmc rx1058_cur
    (rx1058_cur, rx1058_pos, rx1058_tgt) = self."!cursor_start"()
    rx1058_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx1058_cur
    .local pmc match
    .lex "$/", match
    length rx1058_eos, rx1058_tgt
    set rx1058_off, 0
    lt rx1058_pos, 2, rx1058_start
    sub rx1058_off, rx1058_pos, 1
    substr rx1058_tgt, rx1058_tgt, rx1058_off
  rx1058_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1062_done
    goto rxscan1062_scan
  rxscan1062_loop:
    ($P10) = rx1058_cur."from"()
    inc $P10
    set rx1058_pos, $P10
    ge rx1058_pos, rx1058_eos, rxscan1062_done
  rxscan1062_scan:
    set_addr $I10, rxscan1062_loop
    rx1058_cur."!mark_push"(0, rx1058_pos, $I10)
  rxscan1062_done:
.annotate "line", 482
  # rx subcapture "sym"
    set_addr $I10, rxcap_1063_fail
    rx1058_cur."!mark_push"(0, rx1058_pos, $I10)
  # rx literal  "=="
    add $I11, rx1058_pos, 2
    gt $I11, rx1058_eos, rx1058_fail
    sub $I11, rx1058_pos, rx1058_off
    substr $S10, rx1058_tgt, $I11, 2
    ne $S10, "==", rx1058_fail
    add rx1058_pos, 2
    set_addr $I10, rxcap_1063_fail
    ($I12, $I11) = rx1058_cur."!mark_peek"($I10)
    rx1058_cur."!cursor_pos"($I11)
    ($P10) = rx1058_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1058_pos, "")
    rx1058_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1063_done
  rxcap_1063_fail:
    goto rx1058_fail
  rxcap_1063_done:
  # rx subrule "O" subtype=capture negate=
    rx1058_cur."!cursor_pos"(rx1058_pos)
    $P10 = rx1058_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx1058_fail
    rx1058_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1058_pos = $P10."pos"()
  # rx pass
    rx1058_cur."!cursor_pass"(rx1058_pos, "infix:sym<==>")
    rx1058_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx1058_pos)
    .return (rx1058_cur)
  rx1058_fail:
.annotate "line", 413
    (rx1058_rep, rx1058_pos, $I10, $P10) = rx1058_cur."!mark_fail"(0)
    lt rx1058_pos, -1, rx1058_done
    eq rx1058_pos, -1, rx1058_fail
    jump $I10
  rx1058_done:
    rx1058_cur."!cursor_fail"()
    rx1058_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx1058_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("270_1261201519.6115") :method
.annotate "line", 413
    $P1060 = self."!PREFIX__!subrule"("O", "==")
    new $P1061, "ResizablePMCArray"
    push $P1061, $P1060
    .return ($P1061)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("271_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1065_tgt
    .local int rx1065_pos
    .local int rx1065_off
    .local int rx1065_eos
    .local int rx1065_rep
    .local pmc rx1065_cur
    (rx1065_cur, rx1065_pos, rx1065_tgt) = self."!cursor_start"()
    rx1065_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx1065_cur
    .local pmc match
    .lex "$/", match
    length rx1065_eos, rx1065_tgt
    set rx1065_off, 0
    lt rx1065_pos, 2, rx1065_start
    sub rx1065_off, rx1065_pos, 1
    substr rx1065_tgt, rx1065_tgt, rx1065_off
  rx1065_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1069_done
    goto rxscan1069_scan
  rxscan1069_loop:
    ($P10) = rx1065_cur."from"()
    inc $P10
    set rx1065_pos, $P10
    ge rx1065_pos, rx1065_eos, rxscan1069_done
  rxscan1069_scan:
    set_addr $I10, rxscan1069_loop
    rx1065_cur."!mark_push"(0, rx1065_pos, $I10)
  rxscan1069_done:
.annotate "line", 483
  # rx subcapture "sym"
    set_addr $I10, rxcap_1070_fail
    rx1065_cur."!mark_push"(0, rx1065_pos, $I10)
  # rx literal  "!="
    add $I11, rx1065_pos, 2
    gt $I11, rx1065_eos, rx1065_fail
    sub $I11, rx1065_pos, rx1065_off
    substr $S10, rx1065_tgt, $I11, 2
    ne $S10, "!=", rx1065_fail
    add rx1065_pos, 2
    set_addr $I10, rxcap_1070_fail
    ($I12, $I11) = rx1065_cur."!mark_peek"($I10)
    rx1065_cur."!cursor_pos"($I11)
    ($P10) = rx1065_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1065_pos, "")
    rx1065_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1070_done
  rxcap_1070_fail:
    goto rx1065_fail
  rxcap_1070_done:
  # rx subrule "O" subtype=capture negate=
    rx1065_cur."!cursor_pos"(rx1065_pos)
    $P10 = rx1065_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx1065_fail
    rx1065_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1065_pos = $P10."pos"()
  # rx pass
    rx1065_cur."!cursor_pass"(rx1065_pos, "infix:sym<!=>")
    rx1065_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx1065_pos)
    .return (rx1065_cur)
  rx1065_fail:
.annotate "line", 413
    (rx1065_rep, rx1065_pos, $I10, $P10) = rx1065_cur."!mark_fail"(0)
    lt rx1065_pos, -1, rx1065_done
    eq rx1065_pos, -1, rx1065_fail
    jump $I10
  rx1065_done:
    rx1065_cur."!cursor_fail"()
    rx1065_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx1065_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("272_1261201519.6115") :method
.annotate "line", 413
    $P1067 = self."!PREFIX__!subrule"("O", "!=")
    new $P1068, "ResizablePMCArray"
    push $P1068, $P1067
    .return ($P1068)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("273_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1072_tgt
    .local int rx1072_pos
    .local int rx1072_off
    .local int rx1072_eos
    .local int rx1072_rep
    .local pmc rx1072_cur
    (rx1072_cur, rx1072_pos, rx1072_tgt) = self."!cursor_start"()
    rx1072_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx1072_cur
    .local pmc match
    .lex "$/", match
    length rx1072_eos, rx1072_tgt
    set rx1072_off, 0
    lt rx1072_pos, 2, rx1072_start
    sub rx1072_off, rx1072_pos, 1
    substr rx1072_tgt, rx1072_tgt, rx1072_off
  rx1072_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1076_done
    goto rxscan1076_scan
  rxscan1076_loop:
    ($P10) = rx1072_cur."from"()
    inc $P10
    set rx1072_pos, $P10
    ge rx1072_pos, rx1072_eos, rxscan1076_done
  rxscan1076_scan:
    set_addr $I10, rxscan1076_loop
    rx1072_cur."!mark_push"(0, rx1072_pos, $I10)
  rxscan1076_done:
.annotate "line", 484
  # rx subcapture "sym"
    set_addr $I10, rxcap_1077_fail
    rx1072_cur."!mark_push"(0, rx1072_pos, $I10)
  # rx literal  "<="
    add $I11, rx1072_pos, 2
    gt $I11, rx1072_eos, rx1072_fail
    sub $I11, rx1072_pos, rx1072_off
    substr $S10, rx1072_tgt, $I11, 2
    ne $S10, "<=", rx1072_fail
    add rx1072_pos, 2
    set_addr $I10, rxcap_1077_fail
    ($I12, $I11) = rx1072_cur."!mark_peek"($I10)
    rx1072_cur."!cursor_pos"($I11)
    ($P10) = rx1072_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1072_pos, "")
    rx1072_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1077_done
  rxcap_1077_fail:
    goto rx1072_fail
  rxcap_1077_done:
  # rx subrule "O" subtype=capture negate=
    rx1072_cur."!cursor_pos"(rx1072_pos)
    $P10 = rx1072_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx1072_fail
    rx1072_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1072_pos = $P10."pos"()
  # rx pass
    rx1072_cur."!cursor_pass"(rx1072_pos, "infix:sym<<=>")
    rx1072_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx1072_pos)
    .return (rx1072_cur)
  rx1072_fail:
.annotate "line", 413
    (rx1072_rep, rx1072_pos, $I10, $P10) = rx1072_cur."!mark_fail"(0)
    lt rx1072_pos, -1, rx1072_done
    eq rx1072_pos, -1, rx1072_fail
    jump $I10
  rx1072_done:
    rx1072_cur."!cursor_fail"()
    rx1072_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx1072_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("274_1261201519.6115") :method
.annotate "line", 413
    $P1074 = self."!PREFIX__!subrule"("O", "<=")
    new $P1075, "ResizablePMCArray"
    push $P1075, $P1074
    .return ($P1075)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("275_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1079_tgt
    .local int rx1079_pos
    .local int rx1079_off
    .local int rx1079_eos
    .local int rx1079_rep
    .local pmc rx1079_cur
    (rx1079_cur, rx1079_pos, rx1079_tgt) = self."!cursor_start"()
    rx1079_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx1079_cur
    .local pmc match
    .lex "$/", match
    length rx1079_eos, rx1079_tgt
    set rx1079_off, 0
    lt rx1079_pos, 2, rx1079_start
    sub rx1079_off, rx1079_pos, 1
    substr rx1079_tgt, rx1079_tgt, rx1079_off
  rx1079_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1083_done
    goto rxscan1083_scan
  rxscan1083_loop:
    ($P10) = rx1079_cur."from"()
    inc $P10
    set rx1079_pos, $P10
    ge rx1079_pos, rx1079_eos, rxscan1083_done
  rxscan1083_scan:
    set_addr $I10, rxscan1083_loop
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10)
  rxscan1083_done:
.annotate "line", 485
  # rx subcapture "sym"
    set_addr $I10, rxcap_1084_fail
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10)
  # rx literal  ">="
    add $I11, rx1079_pos, 2
    gt $I11, rx1079_eos, rx1079_fail
    sub $I11, rx1079_pos, rx1079_off
    substr $S10, rx1079_tgt, $I11, 2
    ne $S10, ">=", rx1079_fail
    add rx1079_pos, 2
    set_addr $I10, rxcap_1084_fail
    ($I12, $I11) = rx1079_cur."!mark_peek"($I10)
    rx1079_cur."!cursor_pos"($I11)
    ($P10) = rx1079_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1079_pos, "")
    rx1079_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1084_done
  rxcap_1084_fail:
    goto rx1079_fail
  rxcap_1084_done:
  # rx subrule "O" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx1079_fail
    rx1079_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1079_pos = $P10."pos"()
  # rx pass
    rx1079_cur."!cursor_pass"(rx1079_pos, "infix:sym<>=>")
    rx1079_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx1079_pos)
    .return (rx1079_cur)
  rx1079_fail:
.annotate "line", 413
    (rx1079_rep, rx1079_pos, $I10, $P10) = rx1079_cur."!mark_fail"(0)
    lt rx1079_pos, -1, rx1079_done
    eq rx1079_pos, -1, rx1079_fail
    jump $I10
  rx1079_done:
    rx1079_cur."!cursor_fail"()
    rx1079_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx1079_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("276_1261201519.6115") :method
.annotate "line", 413
    $P1081 = self."!PREFIX__!subrule"("O", ">=")
    new $P1082, "ResizablePMCArray"
    push $P1082, $P1081
    .return ($P1082)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("277_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1086_tgt
    .local int rx1086_pos
    .local int rx1086_off
    .local int rx1086_eos
    .local int rx1086_rep
    .local pmc rx1086_cur
    (rx1086_cur, rx1086_pos, rx1086_tgt) = self."!cursor_start"()
    rx1086_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx1086_cur
    .local pmc match
    .lex "$/", match
    length rx1086_eos, rx1086_tgt
    set rx1086_off, 0
    lt rx1086_pos, 2, rx1086_start
    sub rx1086_off, rx1086_pos, 1
    substr rx1086_tgt, rx1086_tgt, rx1086_off
  rx1086_start:
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
.annotate "line", 486
  # rx subcapture "sym"
    set_addr $I10, rxcap_1091_fail
    rx1086_cur."!mark_push"(0, rx1086_pos, $I10)
  # rx literal  "<"
    add $I11, rx1086_pos, 1
    gt $I11, rx1086_eos, rx1086_fail
    sub $I11, rx1086_pos, rx1086_off
    substr $S10, rx1086_tgt, $I11, 1
    ne $S10, "<", rx1086_fail
    add rx1086_pos, 1
    set_addr $I10, rxcap_1091_fail
    ($I12, $I11) = rx1086_cur."!mark_peek"($I10)
    rx1086_cur."!cursor_pos"($I11)
    ($P10) = rx1086_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1086_pos, "")
    rx1086_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1091_done
  rxcap_1091_fail:
    goto rx1086_fail
  rxcap_1091_done:
  # rx subrule "O" subtype=capture negate=
    rx1086_cur."!cursor_pos"(rx1086_pos)
    $P10 = rx1086_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx1086_fail
    rx1086_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1086_pos = $P10."pos"()
  # rx pass
    rx1086_cur."!cursor_pass"(rx1086_pos, "infix:sym<<>")
    rx1086_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx1086_pos)
    .return (rx1086_cur)
  rx1086_fail:
.annotate "line", 413
    (rx1086_rep, rx1086_pos, $I10, $P10) = rx1086_cur."!mark_fail"(0)
    lt rx1086_pos, -1, rx1086_done
    eq rx1086_pos, -1, rx1086_fail
    jump $I10
  rx1086_done:
    rx1086_cur."!cursor_fail"()
    rx1086_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx1086_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("278_1261201519.6115") :method
.annotate "line", 413
    $P1088 = self."!PREFIX__!subrule"("O", "<")
    new $P1089, "ResizablePMCArray"
    push $P1089, $P1088
    .return ($P1089)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("279_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1093_tgt
    .local int rx1093_pos
    .local int rx1093_off
    .local int rx1093_eos
    .local int rx1093_rep
    .local pmc rx1093_cur
    (rx1093_cur, rx1093_pos, rx1093_tgt) = self."!cursor_start"()
    rx1093_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx1093_cur
    .local pmc match
    .lex "$/", match
    length rx1093_eos, rx1093_tgt
    set rx1093_off, 0
    lt rx1093_pos, 2, rx1093_start
    sub rx1093_off, rx1093_pos, 1
    substr rx1093_tgt, rx1093_tgt, rx1093_off
  rx1093_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1097_done
    goto rxscan1097_scan
  rxscan1097_loop:
    ($P10) = rx1093_cur."from"()
    inc $P10
    set rx1093_pos, $P10
    ge rx1093_pos, rx1093_eos, rxscan1097_done
  rxscan1097_scan:
    set_addr $I10, rxscan1097_loop
    rx1093_cur."!mark_push"(0, rx1093_pos, $I10)
  rxscan1097_done:
.annotate "line", 487
  # rx subcapture "sym"
    set_addr $I10, rxcap_1098_fail
    rx1093_cur."!mark_push"(0, rx1093_pos, $I10)
  # rx literal  ">"
    add $I11, rx1093_pos, 1
    gt $I11, rx1093_eos, rx1093_fail
    sub $I11, rx1093_pos, rx1093_off
    substr $S10, rx1093_tgt, $I11, 1
    ne $S10, ">", rx1093_fail
    add rx1093_pos, 1
    set_addr $I10, rxcap_1098_fail
    ($I12, $I11) = rx1093_cur."!mark_peek"($I10)
    rx1093_cur."!cursor_pos"($I11)
    ($P10) = rx1093_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1093_pos, "")
    rx1093_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1098_done
  rxcap_1098_fail:
    goto rx1093_fail
  rxcap_1098_done:
  # rx subrule "O" subtype=capture negate=
    rx1093_cur."!cursor_pos"(rx1093_pos)
    $P10 = rx1093_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx1093_fail
    rx1093_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1093_pos = $P10."pos"()
  # rx pass
    rx1093_cur."!cursor_pass"(rx1093_pos, "infix:sym<>>")
    rx1093_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx1093_pos)
    .return (rx1093_cur)
  rx1093_fail:
.annotate "line", 413
    (rx1093_rep, rx1093_pos, $I10, $P10) = rx1093_cur."!mark_fail"(0)
    lt rx1093_pos, -1, rx1093_done
    eq rx1093_pos, -1, rx1093_fail
    jump $I10
  rx1093_done:
    rx1093_cur."!cursor_fail"()
    rx1093_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx1093_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("280_1261201519.6115") :method
.annotate "line", 413
    $P1095 = self."!PREFIX__!subrule"("O", ">")
    new $P1096, "ResizablePMCArray"
    push $P1096, $P1095
    .return ($P1096)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("281_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1100_tgt
    .local int rx1100_pos
    .local int rx1100_off
    .local int rx1100_eos
    .local int rx1100_rep
    .local pmc rx1100_cur
    (rx1100_cur, rx1100_pos, rx1100_tgt) = self."!cursor_start"()
    rx1100_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx1100_cur
    .local pmc match
    .lex "$/", match
    length rx1100_eos, rx1100_tgt
    set rx1100_off, 0
    lt rx1100_pos, 2, rx1100_start
    sub rx1100_off, rx1100_pos, 1
    substr rx1100_tgt, rx1100_tgt, rx1100_off
  rx1100_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1104_done
    goto rxscan1104_scan
  rxscan1104_loop:
    ($P10) = rx1100_cur."from"()
    inc $P10
    set rx1100_pos, $P10
    ge rx1100_pos, rx1100_eos, rxscan1104_done
  rxscan1104_scan:
    set_addr $I10, rxscan1104_loop
    rx1100_cur."!mark_push"(0, rx1100_pos, $I10)
  rxscan1104_done:
.annotate "line", 488
  # rx subcapture "sym"
    set_addr $I10, rxcap_1105_fail
    rx1100_cur."!mark_push"(0, rx1100_pos, $I10)
  # rx literal  "eq"
    add $I11, rx1100_pos, 2
    gt $I11, rx1100_eos, rx1100_fail
    sub $I11, rx1100_pos, rx1100_off
    substr $S10, rx1100_tgt, $I11, 2
    ne $S10, "eq", rx1100_fail
    add rx1100_pos, 2
    set_addr $I10, rxcap_1105_fail
    ($I12, $I11) = rx1100_cur."!mark_peek"($I10)
    rx1100_cur."!cursor_pos"($I11)
    ($P10) = rx1100_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1100_pos, "")
    rx1100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1105_done
  rxcap_1105_fail:
    goto rx1100_fail
  rxcap_1105_done:
  # rx subrule "O" subtype=capture negate=
    rx1100_cur."!cursor_pos"(rx1100_pos)
    $P10 = rx1100_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx1100_fail
    rx1100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1100_pos = $P10."pos"()
  # rx pass
    rx1100_cur."!cursor_pass"(rx1100_pos, "infix:sym<eq>")
    rx1100_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx1100_pos)
    .return (rx1100_cur)
  rx1100_fail:
.annotate "line", 413
    (rx1100_rep, rx1100_pos, $I10, $P10) = rx1100_cur."!mark_fail"(0)
    lt rx1100_pos, -1, rx1100_done
    eq rx1100_pos, -1, rx1100_fail
    jump $I10
  rx1100_done:
    rx1100_cur."!cursor_fail"()
    rx1100_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx1100_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("282_1261201519.6115") :method
.annotate "line", 413
    $P1102 = self."!PREFIX__!subrule"("O", "eq")
    new $P1103, "ResizablePMCArray"
    push $P1103, $P1102
    .return ($P1103)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("283_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1107_tgt
    .local int rx1107_pos
    .local int rx1107_off
    .local int rx1107_eos
    .local int rx1107_rep
    .local pmc rx1107_cur
    (rx1107_cur, rx1107_pos, rx1107_tgt) = self."!cursor_start"()
    rx1107_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx1107_cur
    .local pmc match
    .lex "$/", match
    length rx1107_eos, rx1107_tgt
    set rx1107_off, 0
    lt rx1107_pos, 2, rx1107_start
    sub rx1107_off, rx1107_pos, 1
    substr rx1107_tgt, rx1107_tgt, rx1107_off
  rx1107_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1111_done
    goto rxscan1111_scan
  rxscan1111_loop:
    ($P10) = rx1107_cur."from"()
    inc $P10
    set rx1107_pos, $P10
    ge rx1107_pos, rx1107_eos, rxscan1111_done
  rxscan1111_scan:
    set_addr $I10, rxscan1111_loop
    rx1107_cur."!mark_push"(0, rx1107_pos, $I10)
  rxscan1111_done:
.annotate "line", 489
  # rx subcapture "sym"
    set_addr $I10, rxcap_1112_fail
    rx1107_cur."!mark_push"(0, rx1107_pos, $I10)
  # rx literal  "ne"
    add $I11, rx1107_pos, 2
    gt $I11, rx1107_eos, rx1107_fail
    sub $I11, rx1107_pos, rx1107_off
    substr $S10, rx1107_tgt, $I11, 2
    ne $S10, "ne", rx1107_fail
    add rx1107_pos, 2
    set_addr $I10, rxcap_1112_fail
    ($I12, $I11) = rx1107_cur."!mark_peek"($I10)
    rx1107_cur."!cursor_pos"($I11)
    ($P10) = rx1107_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1107_pos, "")
    rx1107_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1112_done
  rxcap_1112_fail:
    goto rx1107_fail
  rxcap_1112_done:
  # rx subrule "O" subtype=capture negate=
    rx1107_cur."!cursor_pos"(rx1107_pos)
    $P10 = rx1107_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx1107_fail
    rx1107_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1107_pos = $P10."pos"()
  # rx pass
    rx1107_cur."!cursor_pass"(rx1107_pos, "infix:sym<ne>")
    rx1107_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx1107_pos)
    .return (rx1107_cur)
  rx1107_fail:
.annotate "line", 413
    (rx1107_rep, rx1107_pos, $I10, $P10) = rx1107_cur."!mark_fail"(0)
    lt rx1107_pos, -1, rx1107_done
    eq rx1107_pos, -1, rx1107_fail
    jump $I10
  rx1107_done:
    rx1107_cur."!cursor_fail"()
    rx1107_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx1107_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("284_1261201519.6115") :method
.annotate "line", 413
    $P1109 = self."!PREFIX__!subrule"("O", "ne")
    new $P1110, "ResizablePMCArray"
    push $P1110, $P1109
    .return ($P1110)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("285_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1114_tgt
    .local int rx1114_pos
    .local int rx1114_off
    .local int rx1114_eos
    .local int rx1114_rep
    .local pmc rx1114_cur
    (rx1114_cur, rx1114_pos, rx1114_tgt) = self."!cursor_start"()
    rx1114_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx1114_cur
    .local pmc match
    .lex "$/", match
    length rx1114_eos, rx1114_tgt
    set rx1114_off, 0
    lt rx1114_pos, 2, rx1114_start
    sub rx1114_off, rx1114_pos, 1
    substr rx1114_tgt, rx1114_tgt, rx1114_off
  rx1114_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1118_done
    goto rxscan1118_scan
  rxscan1118_loop:
    ($P10) = rx1114_cur."from"()
    inc $P10
    set rx1114_pos, $P10
    ge rx1114_pos, rx1114_eos, rxscan1118_done
  rxscan1118_scan:
    set_addr $I10, rxscan1118_loop
    rx1114_cur."!mark_push"(0, rx1114_pos, $I10)
  rxscan1118_done:
.annotate "line", 490
  # rx subcapture "sym"
    set_addr $I10, rxcap_1119_fail
    rx1114_cur."!mark_push"(0, rx1114_pos, $I10)
  # rx literal  "le"
    add $I11, rx1114_pos, 2
    gt $I11, rx1114_eos, rx1114_fail
    sub $I11, rx1114_pos, rx1114_off
    substr $S10, rx1114_tgt, $I11, 2
    ne $S10, "le", rx1114_fail
    add rx1114_pos, 2
    set_addr $I10, rxcap_1119_fail
    ($I12, $I11) = rx1114_cur."!mark_peek"($I10)
    rx1114_cur."!cursor_pos"($I11)
    ($P10) = rx1114_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1114_pos, "")
    rx1114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1119_done
  rxcap_1119_fail:
    goto rx1114_fail
  rxcap_1119_done:
  # rx subrule "O" subtype=capture negate=
    rx1114_cur."!cursor_pos"(rx1114_pos)
    $P10 = rx1114_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx1114_fail
    rx1114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1114_pos = $P10."pos"()
  # rx pass
    rx1114_cur."!cursor_pass"(rx1114_pos, "infix:sym<le>")
    rx1114_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx1114_pos)
    .return (rx1114_cur)
  rx1114_fail:
.annotate "line", 413
    (rx1114_rep, rx1114_pos, $I10, $P10) = rx1114_cur."!mark_fail"(0)
    lt rx1114_pos, -1, rx1114_done
    eq rx1114_pos, -1, rx1114_fail
    jump $I10
  rx1114_done:
    rx1114_cur."!cursor_fail"()
    rx1114_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx1114_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("286_1261201519.6115") :method
.annotate "line", 413
    $P1116 = self."!PREFIX__!subrule"("O", "le")
    new $P1117, "ResizablePMCArray"
    push $P1117, $P1116
    .return ($P1117)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("287_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1121_tgt
    .local int rx1121_pos
    .local int rx1121_off
    .local int rx1121_eos
    .local int rx1121_rep
    .local pmc rx1121_cur
    (rx1121_cur, rx1121_pos, rx1121_tgt) = self."!cursor_start"()
    rx1121_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx1121_cur
    .local pmc match
    .lex "$/", match
    length rx1121_eos, rx1121_tgt
    set rx1121_off, 0
    lt rx1121_pos, 2, rx1121_start
    sub rx1121_off, rx1121_pos, 1
    substr rx1121_tgt, rx1121_tgt, rx1121_off
  rx1121_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1125_done
    goto rxscan1125_scan
  rxscan1125_loop:
    ($P10) = rx1121_cur."from"()
    inc $P10
    set rx1121_pos, $P10
    ge rx1121_pos, rx1121_eos, rxscan1125_done
  rxscan1125_scan:
    set_addr $I10, rxscan1125_loop
    rx1121_cur."!mark_push"(0, rx1121_pos, $I10)
  rxscan1125_done:
.annotate "line", 491
  # rx subcapture "sym"
    set_addr $I10, rxcap_1126_fail
    rx1121_cur."!mark_push"(0, rx1121_pos, $I10)
  # rx literal  "ge"
    add $I11, rx1121_pos, 2
    gt $I11, rx1121_eos, rx1121_fail
    sub $I11, rx1121_pos, rx1121_off
    substr $S10, rx1121_tgt, $I11, 2
    ne $S10, "ge", rx1121_fail
    add rx1121_pos, 2
    set_addr $I10, rxcap_1126_fail
    ($I12, $I11) = rx1121_cur."!mark_peek"($I10)
    rx1121_cur."!cursor_pos"($I11)
    ($P10) = rx1121_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1121_pos, "")
    rx1121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1126_done
  rxcap_1126_fail:
    goto rx1121_fail
  rxcap_1126_done:
  # rx subrule "O" subtype=capture negate=
    rx1121_cur."!cursor_pos"(rx1121_pos)
    $P10 = rx1121_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx1121_fail
    rx1121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1121_pos = $P10."pos"()
  # rx pass
    rx1121_cur."!cursor_pass"(rx1121_pos, "infix:sym<ge>")
    rx1121_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx1121_pos)
    .return (rx1121_cur)
  rx1121_fail:
.annotate "line", 413
    (rx1121_rep, rx1121_pos, $I10, $P10) = rx1121_cur."!mark_fail"(0)
    lt rx1121_pos, -1, rx1121_done
    eq rx1121_pos, -1, rx1121_fail
    jump $I10
  rx1121_done:
    rx1121_cur."!cursor_fail"()
    rx1121_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx1121_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("288_1261201519.6115") :method
.annotate "line", 413
    $P1123 = self."!PREFIX__!subrule"("O", "ge")
    new $P1124, "ResizablePMCArray"
    push $P1124, $P1123
    .return ($P1124)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("289_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1128_tgt
    .local int rx1128_pos
    .local int rx1128_off
    .local int rx1128_eos
    .local int rx1128_rep
    .local pmc rx1128_cur
    (rx1128_cur, rx1128_pos, rx1128_tgt) = self."!cursor_start"()
    rx1128_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx1128_cur
    .local pmc match
    .lex "$/", match
    length rx1128_eos, rx1128_tgt
    set rx1128_off, 0
    lt rx1128_pos, 2, rx1128_start
    sub rx1128_off, rx1128_pos, 1
    substr rx1128_tgt, rx1128_tgt, rx1128_off
  rx1128_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1132_done
    goto rxscan1132_scan
  rxscan1132_loop:
    ($P10) = rx1128_cur."from"()
    inc $P10
    set rx1128_pos, $P10
    ge rx1128_pos, rx1128_eos, rxscan1132_done
  rxscan1132_scan:
    set_addr $I10, rxscan1132_loop
    rx1128_cur."!mark_push"(0, rx1128_pos, $I10)
  rxscan1132_done:
.annotate "line", 492
  # rx subcapture "sym"
    set_addr $I10, rxcap_1133_fail
    rx1128_cur."!mark_push"(0, rx1128_pos, $I10)
  # rx literal  "lt"
    add $I11, rx1128_pos, 2
    gt $I11, rx1128_eos, rx1128_fail
    sub $I11, rx1128_pos, rx1128_off
    substr $S10, rx1128_tgt, $I11, 2
    ne $S10, "lt", rx1128_fail
    add rx1128_pos, 2
    set_addr $I10, rxcap_1133_fail
    ($I12, $I11) = rx1128_cur."!mark_peek"($I10)
    rx1128_cur."!cursor_pos"($I11)
    ($P10) = rx1128_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1128_pos, "")
    rx1128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1133_done
  rxcap_1133_fail:
    goto rx1128_fail
  rxcap_1133_done:
  # rx subrule "O" subtype=capture negate=
    rx1128_cur."!cursor_pos"(rx1128_pos)
    $P10 = rx1128_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx1128_fail
    rx1128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1128_pos = $P10."pos"()
  # rx pass
    rx1128_cur."!cursor_pass"(rx1128_pos, "infix:sym<lt>")
    rx1128_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx1128_pos)
    .return (rx1128_cur)
  rx1128_fail:
.annotate "line", 413
    (rx1128_rep, rx1128_pos, $I10, $P10) = rx1128_cur."!mark_fail"(0)
    lt rx1128_pos, -1, rx1128_done
    eq rx1128_pos, -1, rx1128_fail
    jump $I10
  rx1128_done:
    rx1128_cur."!cursor_fail"()
    rx1128_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx1128_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("290_1261201519.6115") :method
.annotate "line", 413
    $P1130 = self."!PREFIX__!subrule"("O", "lt")
    new $P1131, "ResizablePMCArray"
    push $P1131, $P1130
    .return ($P1131)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("291_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1135_tgt
    .local int rx1135_pos
    .local int rx1135_off
    .local int rx1135_eos
    .local int rx1135_rep
    .local pmc rx1135_cur
    (rx1135_cur, rx1135_pos, rx1135_tgt) = self."!cursor_start"()
    rx1135_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx1135_cur
    .local pmc match
    .lex "$/", match
    length rx1135_eos, rx1135_tgt
    set rx1135_off, 0
    lt rx1135_pos, 2, rx1135_start
    sub rx1135_off, rx1135_pos, 1
    substr rx1135_tgt, rx1135_tgt, rx1135_off
  rx1135_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1139_done
    goto rxscan1139_scan
  rxscan1139_loop:
    ($P10) = rx1135_cur."from"()
    inc $P10
    set rx1135_pos, $P10
    ge rx1135_pos, rx1135_eos, rxscan1139_done
  rxscan1139_scan:
    set_addr $I10, rxscan1139_loop
    rx1135_cur."!mark_push"(0, rx1135_pos, $I10)
  rxscan1139_done:
.annotate "line", 493
  # rx subcapture "sym"
    set_addr $I10, rxcap_1140_fail
    rx1135_cur."!mark_push"(0, rx1135_pos, $I10)
  # rx literal  "gt"
    add $I11, rx1135_pos, 2
    gt $I11, rx1135_eos, rx1135_fail
    sub $I11, rx1135_pos, rx1135_off
    substr $S10, rx1135_tgt, $I11, 2
    ne $S10, "gt", rx1135_fail
    add rx1135_pos, 2
    set_addr $I10, rxcap_1140_fail
    ($I12, $I11) = rx1135_cur."!mark_peek"($I10)
    rx1135_cur."!cursor_pos"($I11)
    ($P10) = rx1135_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1135_pos, "")
    rx1135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1140_done
  rxcap_1140_fail:
    goto rx1135_fail
  rxcap_1140_done:
  # rx subrule "O" subtype=capture negate=
    rx1135_cur."!cursor_pos"(rx1135_pos)
    $P10 = rx1135_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx1135_fail
    rx1135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1135_pos = $P10."pos"()
  # rx pass
    rx1135_cur."!cursor_pass"(rx1135_pos, "infix:sym<gt>")
    rx1135_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx1135_pos)
    .return (rx1135_cur)
  rx1135_fail:
.annotate "line", 413
    (rx1135_rep, rx1135_pos, $I10, $P10) = rx1135_cur."!mark_fail"(0)
    lt rx1135_pos, -1, rx1135_done
    eq rx1135_pos, -1, rx1135_fail
    jump $I10
  rx1135_done:
    rx1135_cur."!cursor_fail"()
    rx1135_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx1135_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("292_1261201519.6115") :method
.annotate "line", 413
    $P1137 = self."!PREFIX__!subrule"("O", "gt")
    new $P1138, "ResizablePMCArray"
    push $P1138, $P1137
    .return ($P1138)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("293_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1142_tgt
    .local int rx1142_pos
    .local int rx1142_off
    .local int rx1142_eos
    .local int rx1142_rep
    .local pmc rx1142_cur
    (rx1142_cur, rx1142_pos, rx1142_tgt) = self."!cursor_start"()
    rx1142_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx1142_cur
    .local pmc match
    .lex "$/", match
    length rx1142_eos, rx1142_tgt
    set rx1142_off, 0
    lt rx1142_pos, 2, rx1142_start
    sub rx1142_off, rx1142_pos, 1
    substr rx1142_tgt, rx1142_tgt, rx1142_off
  rx1142_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1146_done
    goto rxscan1146_scan
  rxscan1146_loop:
    ($P10) = rx1142_cur."from"()
    inc $P10
    set rx1142_pos, $P10
    ge rx1142_pos, rx1142_eos, rxscan1146_done
  rxscan1146_scan:
    set_addr $I10, rxscan1146_loop
    rx1142_cur."!mark_push"(0, rx1142_pos, $I10)
  rxscan1146_done:
.annotate "line", 494
  # rx subcapture "sym"
    set_addr $I10, rxcap_1147_fail
    rx1142_cur."!mark_push"(0, rx1142_pos, $I10)
  # rx literal  "=:="
    add $I11, rx1142_pos, 3
    gt $I11, rx1142_eos, rx1142_fail
    sub $I11, rx1142_pos, rx1142_off
    substr $S10, rx1142_tgt, $I11, 3
    ne $S10, "=:=", rx1142_fail
    add rx1142_pos, 3
    set_addr $I10, rxcap_1147_fail
    ($I12, $I11) = rx1142_cur."!mark_peek"($I10)
    rx1142_cur."!cursor_pos"($I11)
    ($P10) = rx1142_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1142_pos, "")
    rx1142_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1147_done
  rxcap_1147_fail:
    goto rx1142_fail
  rxcap_1147_done:
  # rx subrule "O" subtype=capture negate=
    rx1142_cur."!cursor_pos"(rx1142_pos)
    $P10 = rx1142_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx1142_fail
    rx1142_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1142_pos = $P10."pos"()
  # rx pass
    rx1142_cur."!cursor_pass"(rx1142_pos, "infix:sym<=:=>")
    rx1142_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx1142_pos)
    .return (rx1142_cur)
  rx1142_fail:
.annotate "line", 413
    (rx1142_rep, rx1142_pos, $I10, $P10) = rx1142_cur."!mark_fail"(0)
    lt rx1142_pos, -1, rx1142_done
    eq rx1142_pos, -1, rx1142_fail
    jump $I10
  rx1142_done:
    rx1142_cur."!cursor_fail"()
    rx1142_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx1142_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("294_1261201519.6115") :method
.annotate "line", 413
    $P1144 = self."!PREFIX__!subrule"("O", "=:=")
    new $P1145, "ResizablePMCArray"
    push $P1145, $P1144
    .return ($P1145)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~~>"  :subid("295_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1149_tgt
    .local int rx1149_pos
    .local int rx1149_off
    .local int rx1149_eos
    .local int rx1149_rep
    .local pmc rx1149_cur
    (rx1149_cur, rx1149_pos, rx1149_tgt) = self."!cursor_start"()
    rx1149_cur."!cursor_debug"("START ", "infix:sym<~~>")
    .lex unicode:"$\x{a2}", rx1149_cur
    .local pmc match
    .lex "$/", match
    length rx1149_eos, rx1149_tgt
    set rx1149_off, 0
    lt rx1149_pos, 2, rx1149_start
    sub rx1149_off, rx1149_pos, 1
    substr rx1149_tgt, rx1149_tgt, rx1149_off
  rx1149_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1153_done
    goto rxscan1153_scan
  rxscan1153_loop:
    ($P10) = rx1149_cur."from"()
    inc $P10
    set rx1149_pos, $P10
    ge rx1149_pos, rx1149_eos, rxscan1153_done
  rxscan1153_scan:
    set_addr $I10, rxscan1153_loop
    rx1149_cur."!mark_push"(0, rx1149_pos, $I10)
  rxscan1153_done:
.annotate "line", 495
  # rx subcapture "sym"
    set_addr $I10, rxcap_1154_fail
    rx1149_cur."!mark_push"(0, rx1149_pos, $I10)
  # rx literal  "~~"
    add $I11, rx1149_pos, 2
    gt $I11, rx1149_eos, rx1149_fail
    sub $I11, rx1149_pos, rx1149_off
    substr $S10, rx1149_tgt, $I11, 2
    ne $S10, "~~", rx1149_fail
    add rx1149_pos, 2
    set_addr $I10, rxcap_1154_fail
    ($I12, $I11) = rx1149_cur."!mark_peek"($I10)
    rx1149_cur."!cursor_pos"($I11)
    ($P10) = rx1149_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1149_pos, "")
    rx1149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1154_done
  rxcap_1154_fail:
    goto rx1149_fail
  rxcap_1154_done:
  # rx subrule "O" subtype=capture negate=
    rx1149_cur."!cursor_pos"(rx1149_pos)
    $P10 = rx1149_cur."O"("%relational, :reducecheck<smartmatch>")
    unless $P10, rx1149_fail
    rx1149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1149_pos = $P10."pos"()
  # rx pass
    rx1149_cur."!cursor_pass"(rx1149_pos, "infix:sym<~~>")
    rx1149_cur."!cursor_debug"("PASS  ", "infix:sym<~~>", " at pos=", rx1149_pos)
    .return (rx1149_cur)
  rx1149_fail:
.annotate "line", 413
    (rx1149_rep, rx1149_pos, $I10, $P10) = rx1149_cur."!mark_fail"(0)
    lt rx1149_pos, -1, rx1149_done
    eq rx1149_pos, -1, rx1149_fail
    jump $I10
  rx1149_done:
    rx1149_cur."!cursor_fail"()
    rx1149_cur."!cursor_debug"("FAIL  ", "infix:sym<~~>")
    .return (rx1149_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~~>"  :subid("296_1261201519.6115") :method
.annotate "line", 413
    $P1151 = self."!PREFIX__!subrule"("O", "~~")
    new $P1152, "ResizablePMCArray"
    push $P1152, $P1151
    .return ($P1152)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("297_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1156_tgt
    .local int rx1156_pos
    .local int rx1156_off
    .local int rx1156_eos
    .local int rx1156_rep
    .local pmc rx1156_cur
    (rx1156_cur, rx1156_pos, rx1156_tgt) = self."!cursor_start"()
    rx1156_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx1156_cur
    .local pmc match
    .lex "$/", match
    length rx1156_eos, rx1156_tgt
    set rx1156_off, 0
    lt rx1156_pos, 2, rx1156_start
    sub rx1156_off, rx1156_pos, 1
    substr rx1156_tgt, rx1156_tgt, rx1156_off
  rx1156_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1160_done
    goto rxscan1160_scan
  rxscan1160_loop:
    ($P10) = rx1156_cur."from"()
    inc $P10
    set rx1156_pos, $P10
    ge rx1156_pos, rx1156_eos, rxscan1160_done
  rxscan1160_scan:
    set_addr $I10, rxscan1160_loop
    rx1156_cur."!mark_push"(0, rx1156_pos, $I10)
  rxscan1160_done:
.annotate "line", 497
  # rx subcapture "sym"
    set_addr $I10, rxcap_1161_fail
    rx1156_cur."!mark_push"(0, rx1156_pos, $I10)
  # rx literal  "&&"
    add $I11, rx1156_pos, 2
    gt $I11, rx1156_eos, rx1156_fail
    sub $I11, rx1156_pos, rx1156_off
    substr $S10, rx1156_tgt, $I11, 2
    ne $S10, "&&", rx1156_fail
    add rx1156_pos, 2
    set_addr $I10, rxcap_1161_fail
    ($I12, $I11) = rx1156_cur."!mark_peek"($I10)
    rx1156_cur."!cursor_pos"($I11)
    ($P10) = rx1156_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1156_pos, "")
    rx1156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1161_done
  rxcap_1161_fail:
    goto rx1156_fail
  rxcap_1161_done:
  # rx subrule "O" subtype=capture negate=
    rx1156_cur."!cursor_pos"(rx1156_pos)
    $P10 = rx1156_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx1156_fail
    rx1156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1156_pos = $P10."pos"()
  # rx pass
    rx1156_cur."!cursor_pass"(rx1156_pos, "infix:sym<&&>")
    rx1156_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx1156_pos)
    .return (rx1156_cur)
  rx1156_fail:
.annotate "line", 413
    (rx1156_rep, rx1156_pos, $I10, $P10) = rx1156_cur."!mark_fail"(0)
    lt rx1156_pos, -1, rx1156_done
    eq rx1156_pos, -1, rx1156_fail
    jump $I10
  rx1156_done:
    rx1156_cur."!cursor_fail"()
    rx1156_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx1156_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("298_1261201519.6115") :method
.annotate "line", 413
    $P1158 = self."!PREFIX__!subrule"("O", "&&")
    new $P1159, "ResizablePMCArray"
    push $P1159, $P1158
    .return ($P1159)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("299_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1163_tgt
    .local int rx1163_pos
    .local int rx1163_off
    .local int rx1163_eos
    .local int rx1163_rep
    .local pmc rx1163_cur
    (rx1163_cur, rx1163_pos, rx1163_tgt) = self."!cursor_start"()
    rx1163_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx1163_cur
    .local pmc match
    .lex "$/", match
    length rx1163_eos, rx1163_tgt
    set rx1163_off, 0
    lt rx1163_pos, 2, rx1163_start
    sub rx1163_off, rx1163_pos, 1
    substr rx1163_tgt, rx1163_tgt, rx1163_off
  rx1163_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1167_done
    goto rxscan1167_scan
  rxscan1167_loop:
    ($P10) = rx1163_cur."from"()
    inc $P10
    set rx1163_pos, $P10
    ge rx1163_pos, rx1163_eos, rxscan1167_done
  rxscan1167_scan:
    set_addr $I10, rxscan1167_loop
    rx1163_cur."!mark_push"(0, rx1163_pos, $I10)
  rxscan1167_done:
.annotate "line", 499
  # rx subcapture "sym"
    set_addr $I10, rxcap_1168_fail
    rx1163_cur."!mark_push"(0, rx1163_pos, $I10)
  # rx literal  "||"
    add $I11, rx1163_pos, 2
    gt $I11, rx1163_eos, rx1163_fail
    sub $I11, rx1163_pos, rx1163_off
    substr $S10, rx1163_tgt, $I11, 2
    ne $S10, "||", rx1163_fail
    add rx1163_pos, 2
    set_addr $I10, rxcap_1168_fail
    ($I12, $I11) = rx1163_cur."!mark_peek"($I10)
    rx1163_cur."!cursor_pos"($I11)
    ($P10) = rx1163_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1163_pos, "")
    rx1163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1168_done
  rxcap_1168_fail:
    goto rx1163_fail
  rxcap_1168_done:
  # rx subrule "O" subtype=capture negate=
    rx1163_cur."!cursor_pos"(rx1163_pos)
    $P10 = rx1163_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx1163_fail
    rx1163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1163_pos = $P10."pos"()
  # rx pass
    rx1163_cur."!cursor_pass"(rx1163_pos, "infix:sym<||>")
    rx1163_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx1163_pos)
    .return (rx1163_cur)
  rx1163_fail:
.annotate "line", 413
    (rx1163_rep, rx1163_pos, $I10, $P10) = rx1163_cur."!mark_fail"(0)
    lt rx1163_pos, -1, rx1163_done
    eq rx1163_pos, -1, rx1163_fail
    jump $I10
  rx1163_done:
    rx1163_cur."!cursor_fail"()
    rx1163_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx1163_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("300_1261201519.6115") :method
.annotate "line", 413
    $P1165 = self."!PREFIX__!subrule"("O", "||")
    new $P1166, "ResizablePMCArray"
    push $P1166, $P1165
    .return ($P1166)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("301_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1170_tgt
    .local int rx1170_pos
    .local int rx1170_off
    .local int rx1170_eos
    .local int rx1170_rep
    .local pmc rx1170_cur
    (rx1170_cur, rx1170_pos, rx1170_tgt) = self."!cursor_start"()
    rx1170_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx1170_cur
    .local pmc match
    .lex "$/", match
    length rx1170_eos, rx1170_tgt
    set rx1170_off, 0
    lt rx1170_pos, 2, rx1170_start
    sub rx1170_off, rx1170_pos, 1
    substr rx1170_tgt, rx1170_tgt, rx1170_off
  rx1170_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1174_done
    goto rxscan1174_scan
  rxscan1174_loop:
    ($P10) = rx1170_cur."from"()
    inc $P10
    set rx1170_pos, $P10
    ge rx1170_pos, rx1170_eos, rxscan1174_done
  rxscan1174_scan:
    set_addr $I10, rxscan1174_loop
    rx1170_cur."!mark_push"(0, rx1170_pos, $I10)
  rxscan1174_done:
.annotate "line", 500
  # rx subcapture "sym"
    set_addr $I10, rxcap_1175_fail
    rx1170_cur."!mark_push"(0, rx1170_pos, $I10)
  # rx literal  "//"
    add $I11, rx1170_pos, 2
    gt $I11, rx1170_eos, rx1170_fail
    sub $I11, rx1170_pos, rx1170_off
    substr $S10, rx1170_tgt, $I11, 2
    ne $S10, "//", rx1170_fail
    add rx1170_pos, 2
    set_addr $I10, rxcap_1175_fail
    ($I12, $I11) = rx1170_cur."!mark_peek"($I10)
    rx1170_cur."!cursor_pos"($I11)
    ($P10) = rx1170_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1170_pos, "")
    rx1170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1175_done
  rxcap_1175_fail:
    goto rx1170_fail
  rxcap_1175_done:
  # rx subrule "O" subtype=capture negate=
    rx1170_cur."!cursor_pos"(rx1170_pos)
    $P10 = rx1170_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx1170_fail
    rx1170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1170_pos = $P10."pos"()
  # rx pass
    rx1170_cur."!cursor_pass"(rx1170_pos, "infix:sym<//>")
    rx1170_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx1170_pos)
    .return (rx1170_cur)
  rx1170_fail:
.annotate "line", 413
    (rx1170_rep, rx1170_pos, $I10, $P10) = rx1170_cur."!mark_fail"(0)
    lt rx1170_pos, -1, rx1170_done
    eq rx1170_pos, -1, rx1170_fail
    jump $I10
  rx1170_done:
    rx1170_cur."!cursor_fail"()
    rx1170_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx1170_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("302_1261201519.6115") :method
.annotate "line", 413
    $P1172 = self."!PREFIX__!subrule"("O", "//")
    new $P1173, "ResizablePMCArray"
    push $P1173, $P1172
    .return ($P1173)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("303_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1177_tgt
    .local int rx1177_pos
    .local int rx1177_off
    .local int rx1177_eos
    .local int rx1177_rep
    .local pmc rx1177_cur
    (rx1177_cur, rx1177_pos, rx1177_tgt) = self."!cursor_start"()
    rx1177_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx1177_cur
    .local pmc match
    .lex "$/", match
    length rx1177_eos, rx1177_tgt
    set rx1177_off, 0
    lt rx1177_pos, 2, rx1177_start
    sub rx1177_off, rx1177_pos, 1
    substr rx1177_tgt, rx1177_tgt, rx1177_off
  rx1177_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1181_done
    goto rxscan1181_scan
  rxscan1181_loop:
    ($P10) = rx1177_cur."from"()
    inc $P10
    set rx1177_pos, $P10
    ge rx1177_pos, rx1177_eos, rxscan1181_done
  rxscan1181_scan:
    set_addr $I10, rxscan1181_loop
    rx1177_cur."!mark_push"(0, rx1177_pos, $I10)
  rxscan1181_done:
.annotate "line", 503
  # rx literal  "??"
    add $I11, rx1177_pos, 2
    gt $I11, rx1177_eos, rx1177_fail
    sub $I11, rx1177_pos, rx1177_off
    substr $S10, rx1177_tgt, $I11, 2
    ne $S10, "??", rx1177_fail
    add rx1177_pos, 2
.annotate "line", 504
  # rx subrule "ws" subtype=method negate=
    rx1177_cur."!cursor_pos"(rx1177_pos)
    $P10 = rx1177_cur."ws"()
    unless $P10, rx1177_fail
    rx1177_pos = $P10."pos"()
.annotate "line", 505
  # rx subrule "EXPR" subtype=capture negate=
    rx1177_cur."!cursor_pos"(rx1177_pos)
    $P10 = rx1177_cur."EXPR"("i=")
    unless $P10, rx1177_fail
    rx1177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1177_pos = $P10."pos"()
.annotate "line", 506
  # rx literal  "!!"
    add $I11, rx1177_pos, 2
    gt $I11, rx1177_eos, rx1177_fail
    sub $I11, rx1177_pos, rx1177_off
    substr $S10, rx1177_tgt, $I11, 2
    ne $S10, "!!", rx1177_fail
    add rx1177_pos, 2
.annotate "line", 507
  # rx subrule "O" subtype=capture negate=
    rx1177_cur."!cursor_pos"(rx1177_pos)
    $P10 = rx1177_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx1177_fail
    rx1177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1177_pos = $P10."pos"()
.annotate "line", 502
  # rx pass
    rx1177_cur."!cursor_pass"(rx1177_pos, "infix:sym<?? !!>")
    rx1177_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx1177_pos)
    .return (rx1177_cur)
  rx1177_fail:
.annotate "line", 413
    (rx1177_rep, rx1177_pos, $I10, $P10) = rx1177_cur."!mark_fail"(0)
    lt rx1177_pos, -1, rx1177_done
    eq rx1177_pos, -1, rx1177_fail
    jump $I10
  rx1177_done:
    rx1177_cur."!cursor_fail"()
    rx1177_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx1177_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("304_1261201519.6115") :method
.annotate "line", 413
    $P1179 = self."!PREFIX__!subrule"("", "??")
    new $P1180, "ResizablePMCArray"
    push $P1180, $P1179
    .return ($P1180)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("305_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1183_tgt
    .local int rx1183_pos
    .local int rx1183_off
    .local int rx1183_eos
    .local int rx1183_rep
    .local pmc rx1183_cur
    (rx1183_cur, rx1183_pos, rx1183_tgt) = self."!cursor_start"()
    rx1183_cur."!cursor_debug"("START ", "infix:sym<=>")
    .lex unicode:"$\x{a2}", rx1183_cur
    .local pmc match
    .lex "$/", match
    length rx1183_eos, rx1183_tgt
    set rx1183_off, 0
    lt rx1183_pos, 2, rx1183_start
    sub rx1183_off, rx1183_pos, 1
    substr rx1183_tgt, rx1183_tgt, rx1183_off
  rx1183_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1187_done
    goto rxscan1187_scan
  rxscan1187_loop:
    ($P10) = rx1183_cur."from"()
    inc $P10
    set rx1183_pos, $P10
    ge rx1183_pos, rx1183_eos, rxscan1187_done
  rxscan1187_scan:
    set_addr $I10, rxscan1187_loop
    rx1183_cur."!mark_push"(0, rx1183_pos, $I10)
  rxscan1187_done:
.annotate "line", 511
  # rx subcapture "sym"
    set_addr $I10, rxcap_1188_fail
    rx1183_cur."!mark_push"(0, rx1183_pos, $I10)
  # rx literal  "="
    add $I11, rx1183_pos, 1
    gt $I11, rx1183_eos, rx1183_fail
    sub $I11, rx1183_pos, rx1183_off
    substr $S10, rx1183_tgt, $I11, 1
    ne $S10, "=", rx1183_fail
    add rx1183_pos, 1
    set_addr $I10, rxcap_1188_fail
    ($I12, $I11) = rx1183_cur."!mark_peek"($I10)
    rx1183_cur."!cursor_pos"($I11)
    ($P10) = rx1183_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1183_pos, "")
    rx1183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1188_done
  rxcap_1188_fail:
    goto rx1183_fail
  rxcap_1188_done:
  # rx subrule "panic" subtype=method negate=
    rx1183_cur."!cursor_pos"(rx1183_pos)
    $P10 = rx1183_cur."panic"("Assignment (\"=\") not supported in NQP, use \":=\" instead")
    unless $P10, rx1183_fail
    rx1183_pos = $P10."pos"()
.annotate "line", 510
  # rx pass
    rx1183_cur."!cursor_pass"(rx1183_pos, "infix:sym<=>")
    rx1183_cur."!cursor_debug"("PASS  ", "infix:sym<=>", " at pos=", rx1183_pos)
    .return (rx1183_cur)
  rx1183_fail:
.annotate "line", 413
    (rx1183_rep, rx1183_pos, $I10, $P10) = rx1183_cur."!mark_fail"(0)
    lt rx1183_pos, -1, rx1183_done
    eq rx1183_pos, -1, rx1183_fail
    jump $I10
  rx1183_done:
    rx1183_cur."!cursor_fail"()
    rx1183_cur."!cursor_debug"("FAIL  ", "infix:sym<=>")
    .return (rx1183_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=>"  :subid("306_1261201519.6115") :method
.annotate "line", 413
    $P1185 = self."!PREFIX__!subrule"("", "=")
    new $P1186, "ResizablePMCArray"
    push $P1186, $P1185
    .return ($P1186)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("307_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1190_tgt
    .local int rx1190_pos
    .local int rx1190_off
    .local int rx1190_eos
    .local int rx1190_rep
    .local pmc rx1190_cur
    (rx1190_cur, rx1190_pos, rx1190_tgt) = self."!cursor_start"()
    rx1190_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx1190_cur
    .local pmc match
    .lex "$/", match
    length rx1190_eos, rx1190_tgt
    set rx1190_off, 0
    lt rx1190_pos, 2, rx1190_start
    sub rx1190_off, rx1190_pos, 1
    substr rx1190_tgt, rx1190_tgt, rx1190_off
  rx1190_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1194_done
    goto rxscan1194_scan
  rxscan1194_loop:
    ($P10) = rx1190_cur."from"()
    inc $P10
    set rx1190_pos, $P10
    ge rx1190_pos, rx1190_eos, rxscan1194_done
  rxscan1194_scan:
    set_addr $I10, rxscan1194_loop
    rx1190_cur."!mark_push"(0, rx1190_pos, $I10)
  rxscan1194_done:
.annotate "line", 513
  # rx subcapture "sym"
    set_addr $I10, rxcap_1195_fail
    rx1190_cur."!mark_push"(0, rx1190_pos, $I10)
  # rx literal  ":="
    add $I11, rx1190_pos, 2
    gt $I11, rx1190_eos, rx1190_fail
    sub $I11, rx1190_pos, rx1190_off
    substr $S10, rx1190_tgt, $I11, 2
    ne $S10, ":=", rx1190_fail
    add rx1190_pos, 2
    set_addr $I10, rxcap_1195_fail
    ($I12, $I11) = rx1190_cur."!mark_peek"($I10)
    rx1190_cur."!cursor_pos"($I11)
    ($P10) = rx1190_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1190_pos, "")
    rx1190_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1195_done
  rxcap_1195_fail:
    goto rx1190_fail
  rxcap_1195_done:
  # rx subrule "O" subtype=capture negate=
    rx1190_cur."!cursor_pos"(rx1190_pos)
    $P10 = rx1190_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1190_fail
    rx1190_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1190_pos = $P10."pos"()
  # rx pass
    rx1190_cur."!cursor_pass"(rx1190_pos, "infix:sym<:=>")
    rx1190_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx1190_pos)
    .return (rx1190_cur)
  rx1190_fail:
.annotate "line", 413
    (rx1190_rep, rx1190_pos, $I10, $P10) = rx1190_cur."!mark_fail"(0)
    lt rx1190_pos, -1, rx1190_done
    eq rx1190_pos, -1, rx1190_fail
    jump $I10
  rx1190_done:
    rx1190_cur."!cursor_fail"()
    rx1190_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx1190_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("308_1261201519.6115") :method
.annotate "line", 413
    $P1192 = self."!PREFIX__!subrule"("O", ":=")
    new $P1193, "ResizablePMCArray"
    push $P1193, $P1192
    .return ($P1193)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("309_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1197_tgt
    .local int rx1197_pos
    .local int rx1197_off
    .local int rx1197_eos
    .local int rx1197_rep
    .local pmc rx1197_cur
    (rx1197_cur, rx1197_pos, rx1197_tgt) = self."!cursor_start"()
    rx1197_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx1197_cur
    .local pmc match
    .lex "$/", match
    length rx1197_eos, rx1197_tgt
    set rx1197_off, 0
    lt rx1197_pos, 2, rx1197_start
    sub rx1197_off, rx1197_pos, 1
    substr rx1197_tgt, rx1197_tgt, rx1197_off
  rx1197_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1201_done
    goto rxscan1201_scan
  rxscan1201_loop:
    ($P10) = rx1197_cur."from"()
    inc $P10
    set rx1197_pos, $P10
    ge rx1197_pos, rx1197_eos, rxscan1201_done
  rxscan1201_scan:
    set_addr $I10, rxscan1201_loop
    rx1197_cur."!mark_push"(0, rx1197_pos, $I10)
  rxscan1201_done:
.annotate "line", 514
  # rx subcapture "sym"
    set_addr $I10, rxcap_1202_fail
    rx1197_cur."!mark_push"(0, rx1197_pos, $I10)
  # rx literal  "::="
    add $I11, rx1197_pos, 3
    gt $I11, rx1197_eos, rx1197_fail
    sub $I11, rx1197_pos, rx1197_off
    substr $S10, rx1197_tgt, $I11, 3
    ne $S10, "::=", rx1197_fail
    add rx1197_pos, 3
    set_addr $I10, rxcap_1202_fail
    ($I12, $I11) = rx1197_cur."!mark_peek"($I10)
    rx1197_cur."!cursor_pos"($I11)
    ($P10) = rx1197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1197_pos, "")
    rx1197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1202_done
  rxcap_1202_fail:
    goto rx1197_fail
  rxcap_1202_done:
  # rx subrule "O" subtype=capture negate=
    rx1197_cur."!cursor_pos"(rx1197_pos)
    $P10 = rx1197_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1197_fail
    rx1197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1197_pos = $P10."pos"()
  # rx pass
    rx1197_cur."!cursor_pass"(rx1197_pos, "infix:sym<::=>")
    rx1197_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx1197_pos)
    .return (rx1197_cur)
  rx1197_fail:
.annotate "line", 413
    (rx1197_rep, rx1197_pos, $I10, $P10) = rx1197_cur."!mark_fail"(0)
    lt rx1197_pos, -1, rx1197_done
    eq rx1197_pos, -1, rx1197_fail
    jump $I10
  rx1197_done:
    rx1197_cur."!cursor_fail"()
    rx1197_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx1197_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("310_1261201519.6115") :method
.annotate "line", 413
    $P1199 = self."!PREFIX__!subrule"("O", "::=")
    new $P1200, "ResizablePMCArray"
    push $P1200, $P1199
    .return ($P1200)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("311_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1204_tgt
    .local int rx1204_pos
    .local int rx1204_off
    .local int rx1204_eos
    .local int rx1204_rep
    .local pmc rx1204_cur
    (rx1204_cur, rx1204_pos, rx1204_tgt) = self."!cursor_start"()
    rx1204_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx1204_cur
    .local pmc match
    .lex "$/", match
    length rx1204_eos, rx1204_tgt
    set rx1204_off, 0
    lt rx1204_pos, 2, rx1204_start
    sub rx1204_off, rx1204_pos, 1
    substr rx1204_tgt, rx1204_tgt, rx1204_off
  rx1204_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1208_done
    goto rxscan1208_scan
  rxscan1208_loop:
    ($P10) = rx1204_cur."from"()
    inc $P10
    set rx1204_pos, $P10
    ge rx1204_pos, rx1204_eos, rxscan1208_done
  rxscan1208_scan:
    set_addr $I10, rxscan1208_loop
    rx1204_cur."!mark_push"(0, rx1204_pos, $I10)
  rxscan1208_done:
.annotate "line", 516
  # rx subcapture "sym"
    set_addr $I10, rxcap_1209_fail
    rx1204_cur."!mark_push"(0, rx1204_pos, $I10)
  # rx literal  ","
    add $I11, rx1204_pos, 1
    gt $I11, rx1204_eos, rx1204_fail
    sub $I11, rx1204_pos, rx1204_off
    substr $S10, rx1204_tgt, $I11, 1
    ne $S10, ",", rx1204_fail
    add rx1204_pos, 1
    set_addr $I10, rxcap_1209_fail
    ($I12, $I11) = rx1204_cur."!mark_peek"($I10)
    rx1204_cur."!cursor_pos"($I11)
    ($P10) = rx1204_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1204_pos, "")
    rx1204_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1209_done
  rxcap_1209_fail:
    goto rx1204_fail
  rxcap_1209_done:
  # rx subrule "O" subtype=capture negate=
    rx1204_cur."!cursor_pos"(rx1204_pos)
    $P10 = rx1204_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx1204_fail
    rx1204_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1204_pos = $P10."pos"()
  # rx pass
    rx1204_cur."!cursor_pass"(rx1204_pos, "infix:sym<,>")
    rx1204_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx1204_pos)
    .return (rx1204_cur)
  rx1204_fail:
.annotate "line", 413
    (rx1204_rep, rx1204_pos, $I10, $P10) = rx1204_cur."!mark_fail"(0)
    lt rx1204_pos, -1, rx1204_done
    eq rx1204_pos, -1, rx1204_fail
    jump $I10
  rx1204_done:
    rx1204_cur."!cursor_fail"()
    rx1204_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx1204_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("312_1261201519.6115") :method
.annotate "line", 413
    $P1206 = self."!PREFIX__!subrule"("O", ",")
    new $P1207, "ResizablePMCArray"
    push $P1207, $P1206
    .return ($P1207)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<return>"  :subid("313_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1211_tgt
    .local int rx1211_pos
    .local int rx1211_off
    .local int rx1211_eos
    .local int rx1211_rep
    .local pmc rx1211_cur
    (rx1211_cur, rx1211_pos, rx1211_tgt) = self."!cursor_start"()
    rx1211_cur."!cursor_debug"("START ", "prefix:sym<return>")
    .lex unicode:"$\x{a2}", rx1211_cur
    .local pmc match
    .lex "$/", match
    length rx1211_eos, rx1211_tgt
    set rx1211_off, 0
    lt rx1211_pos, 2, rx1211_start
    sub rx1211_off, rx1211_pos, 1
    substr rx1211_tgt, rx1211_tgt, rx1211_off
  rx1211_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1214_done
    goto rxscan1214_scan
  rxscan1214_loop:
    ($P10) = rx1211_cur."from"()
    inc $P10
    set rx1211_pos, $P10
    ge rx1211_pos, rx1211_eos, rxscan1214_done
  rxscan1214_scan:
    set_addr $I10, rxscan1214_loop
    rx1211_cur."!mark_push"(0, rx1211_pos, $I10)
  rxscan1214_done:
.annotate "line", 518
  # rx subcapture "sym"
    set_addr $I10, rxcap_1215_fail
    rx1211_cur."!mark_push"(0, rx1211_pos, $I10)
  # rx literal  "return"
    add $I11, rx1211_pos, 6
    gt $I11, rx1211_eos, rx1211_fail
    sub $I11, rx1211_pos, rx1211_off
    substr $S10, rx1211_tgt, $I11, 6
    ne $S10, "return", rx1211_fail
    add rx1211_pos, 6
    set_addr $I10, rxcap_1215_fail
    ($I12, $I11) = rx1211_cur."!mark_peek"($I10)
    rx1211_cur."!cursor_pos"($I11)
    ($P10) = rx1211_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1211_pos, "")
    rx1211_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1215_done
  rxcap_1215_fail:
    goto rx1211_fail
  rxcap_1215_done:
  # rx charclass s
    ge rx1211_pos, rx1211_eos, rx1211_fail
    sub $I10, rx1211_pos, rx1211_off
    is_cclass $I11, 32, rx1211_tgt, $I10
    unless $I11, rx1211_fail
    inc rx1211_pos
  # rx subrule "O" subtype=capture negate=
    rx1211_cur."!cursor_pos"(rx1211_pos)
    $P10 = rx1211_cur."O"("%list_prefix, :pasttype<return>")
    unless $P10, rx1211_fail
    rx1211_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1211_pos = $P10."pos"()
  # rx pass
    rx1211_cur."!cursor_pass"(rx1211_pos, "prefix:sym<return>")
    rx1211_cur."!cursor_debug"("PASS  ", "prefix:sym<return>", " at pos=", rx1211_pos)
    .return (rx1211_cur)
  rx1211_fail:
.annotate "line", 413
    (rx1211_rep, rx1211_pos, $I10, $P10) = rx1211_cur."!mark_fail"(0)
    lt rx1211_pos, -1, rx1211_done
    eq rx1211_pos, -1, rx1211_fail
    jump $I10
  rx1211_done:
    rx1211_cur."!cursor_fail"()
    rx1211_cur."!cursor_debug"("FAIL  ", "prefix:sym<return>")
    .return (rx1211_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<return>"  :subid("314_1261201519.6115") :method
.annotate "line", 413
    new $P1213, "ResizablePMCArray"
    push $P1213, "return"
    .return ($P1213)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<make>"  :subid("315_1261201519.6115") :method :outer("11_1261201519.6115")
.annotate "line", 413
    .local string rx1217_tgt
    .local int rx1217_pos
    .local int rx1217_off
    .local int rx1217_eos
    .local int rx1217_rep
    .local pmc rx1217_cur
    (rx1217_cur, rx1217_pos, rx1217_tgt) = self."!cursor_start"()
    rx1217_cur."!cursor_debug"("START ", "prefix:sym<make>")
    .lex unicode:"$\x{a2}", rx1217_cur
    .local pmc match
    .lex "$/", match
    length rx1217_eos, rx1217_tgt
    set rx1217_off, 0
    lt rx1217_pos, 2, rx1217_start
    sub rx1217_off, rx1217_pos, 1
    substr rx1217_tgt, rx1217_tgt, rx1217_off
  rx1217_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1220_done
    goto rxscan1220_scan
  rxscan1220_loop:
    ($P10) = rx1217_cur."from"()
    inc $P10
    set rx1217_pos, $P10
    ge rx1217_pos, rx1217_eos, rxscan1220_done
  rxscan1220_scan:
    set_addr $I10, rxscan1220_loop
    rx1217_cur."!mark_push"(0, rx1217_pos, $I10)
  rxscan1220_done:
.annotate "line", 519
  # rx subcapture "sym"
    set_addr $I10, rxcap_1221_fail
    rx1217_cur."!mark_push"(0, rx1217_pos, $I10)
  # rx literal  "make"
    add $I11, rx1217_pos, 4
    gt $I11, rx1217_eos, rx1217_fail
    sub $I11, rx1217_pos, rx1217_off
    substr $S10, rx1217_tgt, $I11, 4
    ne $S10, "make", rx1217_fail
    add rx1217_pos, 4
    set_addr $I10, rxcap_1221_fail
    ($I12, $I11) = rx1217_cur."!mark_peek"($I10)
    rx1217_cur."!cursor_pos"($I11)
    ($P10) = rx1217_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1217_pos, "")
    rx1217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1221_done
  rxcap_1221_fail:
    goto rx1217_fail
  rxcap_1221_done:
  # rx charclass s
    ge rx1217_pos, rx1217_eos, rx1217_fail
    sub $I10, rx1217_pos, rx1217_off
    is_cclass $I11, 32, rx1217_tgt, $I10
    unless $I11, rx1217_fail
    inc rx1217_pos
  # rx subrule "O" subtype=capture negate=
    rx1217_cur."!cursor_pos"(rx1217_pos)
    $P10 = rx1217_cur."O"("%list_prefix")
    unless $P10, rx1217_fail
    rx1217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1217_pos = $P10."pos"()
  # rx pass
    rx1217_cur."!cursor_pass"(rx1217_pos, "prefix:sym<make>")
    rx1217_cur."!cursor_debug"("PASS  ", "prefix:sym<make>", " at pos=", rx1217_pos)
    .return (rx1217_cur)
  rx1217_fail:
.annotate "line", 413
    (rx1217_rep, rx1217_pos, $I10, $P10) = rx1217_cur."!mark_fail"(0)
    lt rx1217_pos, -1, rx1217_done
    eq rx1217_pos, -1, rx1217_fail
    jump $I10
  rx1217_done:
    rx1217_cur."!cursor_fail"()
    rx1217_cur."!cursor_debug"("FAIL  ", "prefix:sym<make>")
    .return (rx1217_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<make>"  :subid("316_1261201519.6115") :method
.annotate "line", 413
    new $P1219, "ResizablePMCArray"
    push $P1219, "make"
    .return ($P1219)
.end


.namespace ["NQP";"Grammar"]
.sub "smartmatch"  :subid("317_1261201519.6115") :method :outer("11_1261201519.6115")
    .param pmc param_1226
.annotate "line", 521
    get_root_global $P1224, ["parrot";"PCT"], "reuse1225_1261201521.31353"
    unless_null $P1224, reuse1225
    new $P1224, ["ExceptionHandler"]
    $P1224."handle_types"(58)
  reuse1225:
    set_addr $P1224, control_1223
    push_eh $P1224
    .lex "self", self
    .lex "$/", param_1226
.annotate "line", 523
    new $P1227, "Undef"
    .lex "$t", $P1227
    find_lex $P1228, "$/"
    unless_null $P1228, vivify_343
    new $P1228, "ResizablePMCArray"
  vivify_343:
    set $P1229, $P1228[0]
    unless_null $P1229, vivify_344
    new $P1229, "Undef"
  vivify_344:
    store_lex "$t", $P1229
    find_lex $P1230, "$/"
    unless_null $P1230, vivify_345
    new $P1230, "ResizablePMCArray"
  vivify_345:
    set $P1231, $P1230[1]
    unless_null $P1231, vivify_346
    new $P1231, "Undef"
  vivify_346:
    find_lex $P1232, "$/"
    unless_null $P1232, vivify_347
    new $P1232, "ResizablePMCArray"
    store_lex "$/", $P1232
  vivify_347:
    set $P1232[0], $P1231
    find_lex $P1233, "$t"
    find_lex $P1234, "$/"
    unless_null $P1234, vivify_348
    new $P1234, "ResizablePMCArray"
    store_lex "$/", $P1234
  vivify_348:
    set $P1234[1], $P1233
.annotate "line", 521
    .return ($P1233)
  control_1223:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1235, exception, "payload"
    .return ($P1235)
.end


.namespace ["NQP";"Regex"]
.sub "_block1236"  :subid("318_1261201519.6115") :outer("11_1261201519.6115")
.annotate "line", 527
    .const 'Sub' $P1270 = "329_1261201519.6115" 
    capture_lex $P1270
    .const 'Sub' $P1257 = "326_1261201519.6115" 
    capture_lex $P1257
    .const 'Sub' $P1252 = "324_1261201519.6115" 
    capture_lex $P1252
    .const 'Sub' $P1247 = "322_1261201519.6115" 
    capture_lex $P1247
    .const 'Sub' $P1238 = "319_1261201519.6115" 
    capture_lex $P1238
    .const 'Sub' $P1270 = "329_1261201519.6115" 
    capture_lex $P1270
    .return ($P1270)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("319_1261201519.6115") :method :outer("318_1261201519.6115")
.annotate "line", 527
    .const 'Sub' $P1244 = "321_1261201519.6115" 
    capture_lex $P1244
    .local string rx1239_tgt
    .local int rx1239_pos
    .local int rx1239_off
    .local int rx1239_eos
    .local int rx1239_rep
    .local pmc rx1239_cur
    (rx1239_cur, rx1239_pos, rx1239_tgt) = self."!cursor_start"()
    rx1239_cur."!cursor_debug"("START ", "metachar:sym<:my>")
    .lex unicode:"$\x{a2}", rx1239_cur
    .local pmc match
    .lex "$/", match
    length rx1239_eos, rx1239_tgt
    set rx1239_off, 0
    lt rx1239_pos, 2, rx1239_start
    sub rx1239_off, rx1239_pos, 1
    substr rx1239_tgt, rx1239_tgt, rx1239_off
  rx1239_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1242_done
    goto rxscan1242_scan
  rxscan1242_loop:
    ($P10) = rx1239_cur."from"()
    inc $P10
    set rx1239_pos, $P10
    ge rx1239_pos, rx1239_eos, rxscan1242_done
  rxscan1242_scan:
    set_addr $I10, rxscan1242_loop
    rx1239_cur."!mark_push"(0, rx1239_pos, $I10)
  rxscan1242_done:
.annotate "line", 529
  # rx literal  ":"
    add $I11, rx1239_pos, 1
    gt $I11, rx1239_eos, rx1239_fail
    sub $I11, rx1239_pos, rx1239_off
    substr $S10, rx1239_tgt, $I11, 1
    ne $S10, ":", rx1239_fail
    add rx1239_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx1239_cur."!cursor_pos"(rx1239_pos)
    .const 'Sub' $P1244 = "321_1261201519.6115" 
    capture_lex $P1244
    $P10 = rx1239_cur."before"($P1244)
    unless $P10, rx1239_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1239_cur."!cursor_pos"(rx1239_pos)
    $P10 = rx1239_cur."LANG"("MAIN", "statement")
    unless $P10, rx1239_fail
    rx1239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx1239_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1239_cur."!cursor_pos"(rx1239_pos)
    $P10 = rx1239_cur."ws"()
    unless $P10, rx1239_fail
    rx1239_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx1239_pos, 1
    gt $I11, rx1239_eos, rx1239_fail
    sub $I11, rx1239_pos, rx1239_off
    substr $S10, rx1239_tgt, $I11, 1
    ne $S10, ";", rx1239_fail
    add rx1239_pos, 1
.annotate "line", 528
  # rx pass
    rx1239_cur."!cursor_pass"(rx1239_pos, "metachar:sym<:my>")
    rx1239_cur."!cursor_debug"("PASS  ", "metachar:sym<:my>", " at pos=", rx1239_pos)
    .return (rx1239_cur)
  rx1239_fail:
.annotate "line", 527
    (rx1239_rep, rx1239_pos, $I10, $P10) = rx1239_cur."!mark_fail"(0)
    lt rx1239_pos, -1, rx1239_done
    eq rx1239_pos, -1, rx1239_fail
    jump $I10
  rx1239_done:
    rx1239_cur."!cursor_fail"()
    rx1239_cur."!cursor_debug"("FAIL  ", "metachar:sym<:my>")
    .return (rx1239_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("320_1261201519.6115") :method
.annotate "line", 527
    new $P1241, "ResizablePMCArray"
    push $P1241, ":"
    .return ($P1241)
.end


.namespace ["NQP";"Regex"]
.sub "_block1243"  :anon :subid("321_1261201519.6115") :method :outer("319_1261201519.6115")
.annotate "line", 529
    .local string rx1245_tgt
    .local int rx1245_pos
    .local int rx1245_off
    .local int rx1245_eos
    .local int rx1245_rep
    .local pmc rx1245_cur
    (rx1245_cur, rx1245_pos, rx1245_tgt) = self."!cursor_start"()
    rx1245_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx1245_cur
    .local pmc match
    .lex "$/", match
    length rx1245_eos, rx1245_tgt
    set rx1245_off, 0
    lt rx1245_pos, 2, rx1245_start
    sub rx1245_off, rx1245_pos, 1
    substr rx1245_tgt, rx1245_tgt, rx1245_off
  rx1245_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1246_done
    goto rxscan1246_scan
  rxscan1246_loop:
    ($P10) = rx1245_cur."from"()
    inc $P10
    set rx1245_pos, $P10
    ge rx1245_pos, rx1245_eos, rxscan1246_done
  rxscan1246_scan:
    set_addr $I10, rxscan1246_loop
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  rxscan1246_done:
  # rx literal  "my"
    add $I11, rx1245_pos, 2
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    substr $S10, rx1245_tgt, $I11, 2
    ne $S10, "my", rx1245_fail
    add rx1245_pos, 2
  # rx pass
    rx1245_cur."!cursor_pass"(rx1245_pos, "")
    rx1245_cur."!cursor_debug"("PASS  ", "", " at pos=", rx1245_pos)
    .return (rx1245_cur)
  rx1245_fail:
    (rx1245_rep, rx1245_pos, $I10, $P10) = rx1245_cur."!mark_fail"(0)
    lt rx1245_pos, -1, rx1245_done
    eq rx1245_pos, -1, rx1245_fail
    jump $I10
  rx1245_done:
    rx1245_cur."!cursor_fail"()
    rx1245_cur."!cursor_debug"("FAIL  ", "")
    .return (rx1245_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("322_1261201519.6115") :method :outer("318_1261201519.6115")
.annotate "line", 527
    .local string rx1248_tgt
    .local int rx1248_pos
    .local int rx1248_off
    .local int rx1248_eos
    .local int rx1248_rep
    .local pmc rx1248_cur
    (rx1248_cur, rx1248_pos, rx1248_tgt) = self."!cursor_start"()
    rx1248_cur."!cursor_debug"("START ", "metachar:sym<{ }>")
    .lex unicode:"$\x{a2}", rx1248_cur
    .local pmc match
    .lex "$/", match
    length rx1248_eos, rx1248_tgt
    set rx1248_off, 0
    lt rx1248_pos, 2, rx1248_start
    sub rx1248_off, rx1248_pos, 1
    substr rx1248_tgt, rx1248_tgt, rx1248_off
  rx1248_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1251_done
    goto rxscan1251_scan
  rxscan1251_loop:
    ($P10) = rx1248_cur."from"()
    inc $P10
    set rx1248_pos, $P10
    ge rx1248_pos, rx1248_eos, rxscan1251_done
  rxscan1251_scan:
    set_addr $I10, rxscan1251_loop
    rx1248_cur."!mark_push"(0, rx1248_pos, $I10)
  rxscan1251_done:
.annotate "line", 533
  # rx enumcharlist negate=0 zerowidth
    ge rx1248_pos, rx1248_eos, rx1248_fail
    sub $I10, rx1248_pos, rx1248_off
    substr $S10, rx1248_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1248_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1248_cur."!cursor_pos"(rx1248_pos)
    $P10 = rx1248_cur."codeblock"()
    unless $P10, rx1248_fail
    rx1248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1248_pos = $P10."pos"()
.annotate "line", 532
  # rx pass
    rx1248_cur."!cursor_pass"(rx1248_pos, "metachar:sym<{ }>")
    rx1248_cur."!cursor_debug"("PASS  ", "metachar:sym<{ }>", " at pos=", rx1248_pos)
    .return (rx1248_cur)
  rx1248_fail:
.annotate "line", 527
    (rx1248_rep, rx1248_pos, $I10, $P10) = rx1248_cur."!mark_fail"(0)
    lt rx1248_pos, -1, rx1248_done
    eq rx1248_pos, -1, rx1248_fail
    jump $I10
  rx1248_done:
    rx1248_cur."!cursor_fail"()
    rx1248_cur."!cursor_debug"("FAIL  ", "metachar:sym<{ }>")
    .return (rx1248_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("323_1261201519.6115") :method
.annotate "line", 527
    new $P1250, "ResizablePMCArray"
    push $P1250, "{"
    .return ($P1250)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("324_1261201519.6115") :method :outer("318_1261201519.6115")
.annotate "line", 527
    .local string rx1253_tgt
    .local int rx1253_pos
    .local int rx1253_off
    .local int rx1253_eos
    .local int rx1253_rep
    .local pmc rx1253_cur
    (rx1253_cur, rx1253_pos, rx1253_tgt) = self."!cursor_start"()
    rx1253_cur."!cursor_debug"("START ", "assertion:sym<{ }>")
    .lex unicode:"$\x{a2}", rx1253_cur
    .local pmc match
    .lex "$/", match
    length rx1253_eos, rx1253_tgt
    set rx1253_off, 0
    lt rx1253_pos, 2, rx1253_start
    sub rx1253_off, rx1253_pos, 1
    substr rx1253_tgt, rx1253_tgt, rx1253_off
  rx1253_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1256_done
    goto rxscan1256_scan
  rxscan1256_loop:
    ($P10) = rx1253_cur."from"()
    inc $P10
    set rx1253_pos, $P10
    ge rx1253_pos, rx1253_eos, rxscan1256_done
  rxscan1256_scan:
    set_addr $I10, rxscan1256_loop
    rx1253_cur."!mark_push"(0, rx1253_pos, $I10)
  rxscan1256_done:
.annotate "line", 537
  # rx enumcharlist negate=0 zerowidth
    ge rx1253_pos, rx1253_eos, rx1253_fail
    sub $I10, rx1253_pos, rx1253_off
    substr $S10, rx1253_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1253_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1253_cur."!cursor_pos"(rx1253_pos)
    $P10 = rx1253_cur."codeblock"()
    unless $P10, rx1253_fail
    rx1253_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1253_pos = $P10."pos"()
.annotate "line", 536
  # rx pass
    rx1253_cur."!cursor_pass"(rx1253_pos, "assertion:sym<{ }>")
    rx1253_cur."!cursor_debug"("PASS  ", "assertion:sym<{ }>", " at pos=", rx1253_pos)
    .return (rx1253_cur)
  rx1253_fail:
.annotate "line", 527
    (rx1253_rep, rx1253_pos, $I10, $P10) = rx1253_cur."!mark_fail"(0)
    lt rx1253_pos, -1, rx1253_done
    eq rx1253_pos, -1, rx1253_fail
    jump $I10
  rx1253_done:
    rx1253_cur."!cursor_fail"()
    rx1253_cur."!cursor_debug"("FAIL  ", "assertion:sym<{ }>")
    .return (rx1253_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("325_1261201519.6115") :method
.annotate "line", 527
    new $P1255, "ResizablePMCArray"
    push $P1255, "{"
    .return ($P1255)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<name>"  :subid("326_1261201519.6115") :method :outer("318_1261201519.6115")
.annotate "line", 527
    .const 'Sub' $P1266 = "328_1261201519.6115" 
    capture_lex $P1266
    .local string rx1258_tgt
    .local int rx1258_pos
    .local int rx1258_off
    .local int rx1258_eos
    .local int rx1258_rep
    .local pmc rx1258_cur
    (rx1258_cur, rx1258_pos, rx1258_tgt) = self."!cursor_start"()
    rx1258_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx1258_cur."!cursor_caparray"("arglist", "nibbler", "assertion")
    .lex unicode:"$\x{a2}", rx1258_cur
    .local pmc match
    .lex "$/", match
    length rx1258_eos, rx1258_tgt
    set rx1258_off, 0
    lt rx1258_pos, 2, rx1258_start
    sub rx1258_off, rx1258_pos, 1
    substr rx1258_tgt, rx1258_tgt, rx1258_off
  rx1258_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1261_done
    goto rxscan1261_scan
  rxscan1261_loop:
    ($P10) = rx1258_cur."from"()
    inc $P10
    set rx1258_pos, $P10
    ge rx1258_pos, rx1258_eos, rxscan1261_done
  rxscan1261_scan:
    set_addr $I10, rxscan1261_loop
    rx1258_cur."!mark_push"(0, rx1258_pos, $I10)
  rxscan1261_done:
.annotate "line", 541
  # rx subcapture "longname"
    set_addr $I10, rxcap_1262_fail
    rx1258_cur."!mark_push"(0, rx1258_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx1258_pos, rx1258_off
    find_not_cclass $I11, 8192, rx1258_tgt, $I10, rx1258_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1258_fail
    add rx1258_pos, rx1258_off, $I11
    set_addr $I10, rxcap_1262_fail
    ($I12, $I11) = rx1258_cur."!mark_peek"($I10)
    rx1258_cur."!cursor_pos"($I11)
    ($P10) = rx1258_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1258_pos, "")
    rx1258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_1262_done
  rxcap_1262_fail:
    goto rx1258_fail
  rxcap_1262_done:
.annotate "line", 548
  # rx rxquantr1263 ** 0..1
    set_addr $I1269, rxquantr1263_done
    rx1258_cur."!mark_push"(0, rx1258_pos, $I1269)
  rxquantr1263_loop:
  alt1264_0:
.annotate "line", 542
    set_addr $I10, alt1264_1
    rx1258_cur."!mark_push"(0, rx1258_pos, $I10)
.annotate "line", 543
  # rx subrule "before" subtype=zerowidth negate=
    rx1258_cur."!cursor_pos"(rx1258_pos)
    .const 'Sub' $P1266 = "328_1261201519.6115" 
    capture_lex $P1266
    $P10 = rx1258_cur."before"($P1266)
    unless $P10, rx1258_fail
    goto alt1264_end
  alt1264_1:
    set_addr $I10, alt1264_2
    rx1258_cur."!mark_push"(0, rx1258_pos, $I10)
.annotate "line", 544
  # rx literal  "="
    add $I11, rx1258_pos, 1
    gt $I11, rx1258_eos, rx1258_fail
    sub $I11, rx1258_pos, rx1258_off
    substr $S10, rx1258_tgt, $I11, 1
    ne $S10, "=", rx1258_fail
    add rx1258_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1258_cur."!cursor_pos"(rx1258_pos)
    $P10 = rx1258_cur."assertion"()
    unless $P10, rx1258_fail
    rx1258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1258_pos = $P10."pos"()
    goto alt1264_end
  alt1264_2:
    set_addr $I10, alt1264_3
    rx1258_cur."!mark_push"(0, rx1258_pos, $I10)
.annotate "line", 545
  # rx literal  ":"
    add $I11, rx1258_pos, 1
    gt $I11, rx1258_eos, rx1258_fail
    sub $I11, rx1258_pos, rx1258_off
    substr $S10, rx1258_tgt, $I11, 1
    ne $S10, ":", rx1258_fail
    add rx1258_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx1258_cur."!cursor_pos"(rx1258_pos)
    $P10 = rx1258_cur."arglist"()
    unless $P10, rx1258_fail
    rx1258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1258_pos = $P10."pos"()
    goto alt1264_end
  alt1264_3:
    set_addr $I10, alt1264_4
    rx1258_cur."!mark_push"(0, rx1258_pos, $I10)
.annotate "line", 546
  # rx literal  "("
    add $I11, rx1258_pos, 1
    gt $I11, rx1258_eos, rx1258_fail
    sub $I11, rx1258_pos, rx1258_off
    substr $S10, rx1258_tgt, $I11, 1
    ne $S10, "(", rx1258_fail
    add rx1258_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx1258_cur."!cursor_pos"(rx1258_pos)
    $P10 = rx1258_cur."LANG"("MAIN", "arglist")
    unless $P10, rx1258_fail
    rx1258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1258_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1258_pos, 1
    gt $I11, rx1258_eos, rx1258_fail
    sub $I11, rx1258_pos, rx1258_off
    substr $S10, rx1258_tgt, $I11, 1
    ne $S10, ")", rx1258_fail
    add rx1258_pos, 1
    goto alt1264_end
  alt1264_4:
.annotate "line", 547
  # rx subrule "normspace" subtype=method negate=
    rx1258_cur."!cursor_pos"(rx1258_pos)
    $P10 = rx1258_cur."normspace"()
    unless $P10, rx1258_fail
    rx1258_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx1258_cur."!cursor_pos"(rx1258_pos)
    $P10 = rx1258_cur."nibbler"()
    unless $P10, rx1258_fail
    rx1258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1258_pos = $P10."pos"()
  alt1264_end:
.annotate "line", 548
    (rx1258_rep) = rx1258_cur."!mark_commit"($I1269)
  rxquantr1263_done:
.annotate "line", 540
  # rx pass
    rx1258_cur."!cursor_pass"(rx1258_pos, "assertion:sym<name>")
    rx1258_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx1258_pos)
    .return (rx1258_cur)
  rx1258_fail:
.annotate "line", 527
    (rx1258_rep, rx1258_pos, $I10, $P10) = rx1258_cur."!mark_fail"(0)
    lt rx1258_pos, -1, rx1258_done
    eq rx1258_pos, -1, rx1258_fail
    jump $I10
  rx1258_done:
    rx1258_cur."!cursor_fail"()
    rx1258_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx1258_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<name>"  :subid("327_1261201519.6115") :method
.annotate "line", 527
    new $P1260, "ResizablePMCArray"
    push $P1260, ""
    .return ($P1260)
.end


.namespace ["NQP";"Regex"]
.sub "_block1265"  :anon :subid("328_1261201519.6115") :method :outer("326_1261201519.6115")
.annotate "line", 543
    .local string rx1267_tgt
    .local int rx1267_pos
    .local int rx1267_off
    .local int rx1267_eos
    .local int rx1267_rep
    .local pmc rx1267_cur
    (rx1267_cur, rx1267_pos, rx1267_tgt) = self."!cursor_start"()
    rx1267_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx1267_cur
    .local pmc match
    .lex "$/", match
    length rx1267_eos, rx1267_tgt
    set rx1267_off, 0
    lt rx1267_pos, 2, rx1267_start
    sub rx1267_off, rx1267_pos, 1
    substr rx1267_tgt, rx1267_tgt, rx1267_off
  rx1267_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1268_done
    goto rxscan1268_scan
  rxscan1268_loop:
    ($P10) = rx1267_cur."from"()
    inc $P10
    set rx1267_pos, $P10
    ge rx1267_pos, rx1267_eos, rxscan1268_done
  rxscan1268_scan:
    set_addr $I10, rxscan1268_loop
    rx1267_cur."!mark_push"(0, rx1267_pos, $I10)
  rxscan1268_done:
  # rx literal  ">"
    add $I11, rx1267_pos, 1
    gt $I11, rx1267_eos, rx1267_fail
    sub $I11, rx1267_pos, rx1267_off
    substr $S10, rx1267_tgt, $I11, 1
    ne $S10, ">", rx1267_fail
    add rx1267_pos, 1
  # rx pass
    rx1267_cur."!cursor_pass"(rx1267_pos, "")
    rx1267_cur."!cursor_debug"("PASS  ", "", " at pos=", rx1267_pos)
    .return (rx1267_cur)
  rx1267_fail:
    (rx1267_rep, rx1267_pos, $I10, $P10) = rx1267_cur."!mark_fail"(0)
    lt rx1267_pos, -1, rx1267_done
    eq rx1267_pos, -1, rx1267_fail
    jump $I10
  rx1267_done:
    rx1267_cur."!cursor_fail"()
    rx1267_cur."!cursor_debug"("FAIL  ", "")
    .return (rx1267_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("329_1261201519.6115") :method :outer("318_1261201519.6115")
.annotate "line", 527
    .local string rx1271_tgt
    .local int rx1271_pos
    .local int rx1271_off
    .local int rx1271_eos
    .local int rx1271_rep
    .local pmc rx1271_cur
    (rx1271_cur, rx1271_pos, rx1271_tgt) = self."!cursor_start"()
    rx1271_cur."!cursor_debug"("START ", "codeblock")
    .lex unicode:"$\x{a2}", rx1271_cur
    .local pmc match
    .lex "$/", match
    length rx1271_eos, rx1271_tgt
    set rx1271_off, 0
    lt rx1271_pos, 2, rx1271_start
    sub rx1271_off, rx1271_pos, 1
    substr rx1271_tgt, rx1271_tgt, rx1271_off
  rx1271_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1275_done
    goto rxscan1275_scan
  rxscan1275_loop:
    ($P10) = rx1271_cur."from"()
    inc $P10
    set rx1271_pos, $P10
    ge rx1271_pos, rx1271_eos, rxscan1275_done
  rxscan1275_scan:
    set_addr $I10, rxscan1275_loop
    rx1271_cur."!mark_push"(0, rx1271_pos, $I10)
  rxscan1275_done:
.annotate "line", 553
  # rx subrule "LANG" subtype=capture negate=
    rx1271_cur."!cursor_pos"(rx1271_pos)
    $P10 = rx1271_cur."LANG"("MAIN", "pblock")
    unless $P10, rx1271_fail
    rx1271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx1271_pos = $P10."pos"()
.annotate "line", 552
  # rx pass
    rx1271_cur."!cursor_pass"(rx1271_pos, "codeblock")
    rx1271_cur."!cursor_debug"("PASS  ", "codeblock", " at pos=", rx1271_pos)
    .return (rx1271_cur)
  rx1271_fail:
.annotate "line", 527
    (rx1271_rep, rx1271_pos, $I10, $P10) = rx1271_cur."!mark_fail"(0)
    lt rx1271_pos, -1, rx1271_done
    eq rx1271_pos, -1, rx1271_fail
    jump $I10
  rx1271_done:
    rx1271_cur."!cursor_fail"()
    rx1271_cur."!cursor_debug"("FAIL  ", "codeblock")
    .return (rx1271_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("330_1261201519.6115") :method
.annotate "line", 527
    $P1273 = self."!PREFIX__!subrule"("block", "")
    new $P1274, "ResizablePMCArray"
    push $P1274, $P1273
    .return ($P1274)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1261201532.26144")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P2263 = $P14()
.annotate "line", 1
    .return ($P2263)
.end


.namespace []
.sub "" :load :init :subid("post126") :outer("10_1261201532.26144")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1261201532.26144" 
    .local pmc block
    set block, $P12
    $P2264 = get_root_global ["parrot"], "P6metaclass"
    $P2264."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1261201532.26144") :outer("10_1261201532.26144")
.annotate "line", 3
    .const 'Sub' $P2259 = "125_1261201532.26144" 
    capture_lex $P2259
    get_hll_global $P2191, ["NQP";"RegexActions"], "_block2190" 
    capture_lex $P2191
    .const 'Sub' $P2179 = "119_1261201532.26144" 
    capture_lex $P2179
    .const 'Sub' $P2166 = "118_1261201532.26144" 
    capture_lex $P2166
    .const 'Sub' $P2155 = "117_1261201532.26144" 
    capture_lex $P2155
    .const 'Sub' $P2144 = "116_1261201532.26144" 
    capture_lex $P2144
    .const 'Sub' $P2133 = "115_1261201532.26144" 
    capture_lex $P2133
    .const 'Sub' $P2118 = "114_1261201532.26144" 
    capture_lex $P2118
    .const 'Sub' $P2107 = "113_1261201532.26144" 
    capture_lex $P2107
    .const 'Sub' $P2069 = "112_1261201532.26144" 
    capture_lex $P2069
    .const 'Sub' $P2054 = "111_1261201532.26144" 
    capture_lex $P2054
    .const 'Sub' $P2043 = "110_1261201532.26144" 
    capture_lex $P2043
    .const 'Sub' $P2032 = "109_1261201532.26144" 
    capture_lex $P2032
    .const 'Sub' $P2021 = "108_1261201532.26144" 
    capture_lex $P2021
    .const 'Sub' $P2010 = "107_1261201532.26144" 
    capture_lex $P2010
    .const 'Sub' $P1999 = "106_1261201532.26144" 
    capture_lex $P1999
    .const 'Sub' $P1970 = "105_1261201532.26144" 
    capture_lex $P1970
    .const 'Sub' $P1952 = "104_1261201532.26144" 
    capture_lex $P1952
    .const 'Sub' $P1941 = "103_1261201532.26144" 
    capture_lex $P1941
    .const 'Sub' $P1928 = "102_1261201532.26144" 
    capture_lex $P1928
    .const 'Sub' $P1915 = "101_1261201532.26144" 
    capture_lex $P1915
    .const 'Sub' $P1902 = "100_1261201532.26144" 
    capture_lex $P1902
    .const 'Sub' $P1891 = "99_1261201532.26144" 
    capture_lex $P1891
    .const 'Sub' $P1861 = "98_1261201532.26144" 
    capture_lex $P1861
    .const 'Sub' $P1838 = "97_1261201532.26144" 
    capture_lex $P1838
    .const 'Sub' $P1827 = "96_1261201532.26144" 
    capture_lex $P1827
    .const 'Sub' $P1816 = "95_1261201532.26144" 
    capture_lex $P1816
    .const 'Sub' $P1788 = "94_1261201532.26144" 
    capture_lex $P1788
    .const 'Sub' $P1769 = "93_1261201532.26144" 
    capture_lex $P1769
    .const 'Sub' $P1758 = "92_1261201532.26144" 
    capture_lex $P1758
    .const 'Sub' $P1673 = "89_1261201532.26144" 
    capture_lex $P1673
    .const 'Sub' $P1662 = "88_1261201532.26144" 
    capture_lex $P1662
    .const 'Sub' $P1632 = "87_1261201532.26144" 
    capture_lex $P1632
    .const 'Sub' $P1589 = "86_1261201532.26144" 
    capture_lex $P1589
    .const 'Sub' $P1572 = "85_1261201532.26144" 
    capture_lex $P1572
    .const 'Sub' $P1562 = "84_1261201532.26144" 
    capture_lex $P1562
    .const 'Sub' $P1529 = "83_1261201532.26144" 
    capture_lex $P1529
    .const 'Sub' $P1429 = "80_1261201532.26144" 
    capture_lex $P1429
    .const 'Sub' $P1411 = "79_1261201532.26144" 
    capture_lex $P1411
    .const 'Sub' $P1390 = "78_1261201532.26144" 
    capture_lex $P1390
    .const 'Sub' $P1305 = "77_1261201532.26144" 
    capture_lex $P1305
    .const 'Sub' $P1280 = "75_1261201532.26144" 
    capture_lex $P1280
    .const 'Sub' $P1245 = "73_1261201532.26144" 
    capture_lex $P1245
    .const 'Sub' $P1194 = "71_1261201532.26144" 
    capture_lex $P1194
    .const 'Sub' $P1183 = "70_1261201532.26144" 
    capture_lex $P1183
    .const 'Sub' $P1172 = "69_1261201532.26144" 
    capture_lex $P1172
    .const 'Sub' $P1100 = "67_1261201532.26144" 
    capture_lex $P1100
    .const 'Sub' $P1082 = "66_1261201532.26144" 
    capture_lex $P1082
    .const 'Sub' $P1071 = "65_1261201532.26144" 
    capture_lex $P1071
    .const 'Sub' $P1060 = "64_1261201532.26144" 
    capture_lex $P1060
    .const 'Sub' $P1049 = "63_1261201532.26144" 
    capture_lex $P1049
    .const 'Sub' $P1024 = "62_1261201532.26144" 
    capture_lex $P1024
    .const 'Sub' $P970 = "61_1261201532.26144" 
    capture_lex $P970
    .const 'Sub' $P959 = "60_1261201532.26144" 
    capture_lex $P959
    .const 'Sub' $P869 = "58_1261201532.26144" 
    capture_lex $P869
    .const 'Sub' $P842 = "57_1261201532.26144" 
    capture_lex $P842
    .const 'Sub' $P825 = "56_1261201532.26144" 
    capture_lex $P825
    .const 'Sub' $P814 = "55_1261201532.26144" 
    capture_lex $P814
    .const 'Sub' $P803 = "54_1261201532.26144" 
    capture_lex $P803
    .const 'Sub' $P792 = "53_1261201532.26144" 
    capture_lex $P792
    .const 'Sub' $P781 = "52_1261201532.26144" 
    capture_lex $P781
    .const 'Sub' $P770 = "51_1261201532.26144" 
    capture_lex $P770
    .const 'Sub' $P759 = "50_1261201532.26144" 
    capture_lex $P759
    .const 'Sub' $P748 = "49_1261201532.26144" 
    capture_lex $P748
    .const 'Sub' $P737 = "48_1261201532.26144" 
    capture_lex $P737
    .const 'Sub' $P726 = "47_1261201532.26144" 
    capture_lex $P726
    .const 'Sub' $P715 = "46_1261201532.26144" 
    capture_lex $P715
    .const 'Sub' $P704 = "45_1261201532.26144" 
    capture_lex $P704
    .const 'Sub' $P693 = "44_1261201532.26144" 
    capture_lex $P693
    .const 'Sub' $P682 = "43_1261201532.26144" 
    capture_lex $P682
    .const 'Sub' $P663 = "42_1261201532.26144" 
    capture_lex $P663
    .const 'Sub' $P627 = "41_1261201532.26144" 
    capture_lex $P627
    .const 'Sub' $P610 = "40_1261201532.26144" 
    capture_lex $P610
    .const 'Sub' $P588 = "39_1261201532.26144" 
    capture_lex $P588
    .const 'Sub' $P567 = "38_1261201532.26144" 
    capture_lex $P567
    .const 'Sub' $P553 = "37_1261201532.26144" 
    capture_lex $P553
    .const 'Sub' $P526 = "36_1261201532.26144" 
    capture_lex $P526
    .const 'Sub' $P489 = "35_1261201532.26144" 
    capture_lex $P489
    .const 'Sub' $P471 = "34_1261201532.26144" 
    capture_lex $P471
    .const 'Sub' $P456 = "33_1261201532.26144" 
    capture_lex $P456
    .const 'Sub' $P402 = "31_1261201532.26144" 
    capture_lex $P402
    .const 'Sub' $P388 = "30_1261201532.26144" 
    capture_lex $P388
    .const 'Sub' $P368 = "29_1261201532.26144" 
    capture_lex $P368
    .const 'Sub' $P357 = "28_1261201532.26144" 
    capture_lex $P357
    .const 'Sub' $P346 = "27_1261201532.26144" 
    capture_lex $P346
    .const 'Sub' $P329 = "26_1261201532.26144" 
    capture_lex $P329
    .const 'Sub' $P268 = "24_1261201532.26144" 
    capture_lex $P268
    .const 'Sub' $P218 = "22_1261201532.26144" 
    capture_lex $P218
    .const 'Sub' $P198 = "21_1261201532.26144" 
    capture_lex $P198
    .const 'Sub' $P164 = "20_1261201532.26144" 
    capture_lex $P164
    .const 'Sub' $P153 = "19_1261201532.26144" 
    capture_lex $P153
    .const 'Sub' $P98 = "18_1261201532.26144" 
    capture_lex $P98
    .const 'Sub' $P82 = "17_1261201532.26144" 
    capture_lex $P82
    .const 'Sub' $P63 = "16_1261201532.26144" 
    capture_lex $P63
    .const 'Sub' $P27 = "13_1261201532.26144" 
    capture_lex $P27
    .const 'Sub' $P16 = "12_1261201532.26144" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_129
    new $P15, "ResizablePMCArray"
    set_global "@BLOCK", $P15
  vivify_129:
.annotate "line", 9
    .const 'Sub' $P16 = "12_1261201532.26144" 
    capture_lex $P16
    .lex "xblock_immediate", $P16
.annotate "line", 14
    .const 'Sub' $P27 = "13_1261201532.26144" 
    capture_lex $P27
    .lex "block_immediate", $P27
.annotate "line", 24
    .const 'Sub' $P63 = "16_1261201532.26144" 
    capture_lex $P63
    .lex "sigiltype", $P63
.annotate "line", 40
    .const 'Sub' $P82 = "17_1261201532.26144" 
    capture_lex $P82
    .lex "colonpair_str", $P82
.annotate "line", 187
    .const 'Sub' $P98 = "18_1261201532.26144" 
    capture_lex $P98
    .lex "push_block_handler", $P98
.annotate "line", 3
    get_global $P149, "@BLOCK"
.annotate "line", 5
    find_lex $P150, "xblock_immediate"
    find_lex $P151, "block_immediate"
    find_lex $P152, "sigiltype"
.annotate "line", 32
    find_lex $P197, "colonpair_str"
.annotate "line", 180
    find_lex $P609, "push_block_handler"
.annotate "line", 765
    get_hll_global $P2191, ["NQP";"RegexActions"], "_block2190" 
    capture_lex $P2191
    $P2257 = $P2191()
.annotate "line", 3
    .return ($P2257)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post127") :outer("11_1261201532.26144")
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 5
    .const 'Sub' $P2259 = "125_1261201532.26144" 
    capture_lex $P2259
    $P2259()
    $P2262 = get_root_global ["parrot"], "P6metaclass"
    $P2262."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block2258"  :anon :subid("125_1261201532.26144") :outer("11_1261201532.26144")
.annotate "line", 6
    get_global $P2260, "@BLOCK"
    unless_null $P2260, vivify_128
    new $P2260, "ResizablePMCArray"
    set_global "@BLOCK", $P2260
  vivify_128:
 $P2261 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P2261
.annotate "line", 5
    .return ($P2261)
.end


.namespace ["NQP";"Actions"]
.sub "xblock_immediate"  :subid("12_1261201532.26144") :outer("11_1261201532.26144")
    .param pmc param_20
.annotate "line", 9
    get_root_global $P18, ["parrot";"PCT"], "reuse19_1261201532.26426"
    unless_null $P18, reuse19
    new $P18, ["ExceptionHandler"]
    $P18."handle_types"(58)
  reuse19:
    set_addr $P18, control_17
    push_eh $P18
    .lex "$xblock", param_20
.annotate "line", 10
    find_lex $P21, "$xblock"
    unless_null $P21, vivify_130
    new $P21, "ResizablePMCArray"
  vivify_130:
    set $P22, $P21[1]
    unless_null $P22, vivify_131
    new $P22, "Undef"
  vivify_131:
    $P23 = "block_immediate"($P22)
    find_lex $P24, "$xblock"
    unless_null $P24, vivify_132
    new $P24, "ResizablePMCArray"
    store_lex "$xblock", $P24
  vivify_132:
    set $P24[1], $P23
    find_lex $P25, "$xblock"
.annotate "line", 9
    .return ($P25)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P26, exception, "payload"
    .return ($P26)
.end


.namespace ["NQP";"Actions"]
.sub "block_immediate"  :subid("13_1261201532.26144") :outer("11_1261201532.26144")
    .param pmc param_31
.annotate "line", 14
    .const 'Sub' $P41 = "14_1261201532.26144" 
    capture_lex $P41
    get_root_global $P29, ["parrot";"PCT"], "reuse30_1261201532.26917"
    unless_null $P29, reuse30
    new $P29, ["ExceptionHandler"]
    $P29."handle_types"(58)
  reuse30:
    set_addr $P29, control_28
    push_eh $P29
    .lex "$block", param_31
.annotate "line", 15
    find_lex $P32, "$block"
    $P32."blocktype"("immediate")
.annotate "line", 16
    find_lex $P36, "$block"
    $P37 = $P36."symtable"()
    unless $P37, unless_35
    set $P34, $P37
    goto unless_35_end
  unless_35:
    find_lex $P38, "$block"
    $P39 = $P38."handlers"()
    set $P34, $P39
  unless_35_end:
    if $P34, unless_33_end
    .const 'Sub' $P41 = "14_1261201532.26144" 
    capture_lex $P41
    $P41()
  unless_33_end:
    find_lex $P61, "$block"
.annotate "line", 14
    .return ($P61)
  control_28:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P62, exception, "payload"
    .return ($P62)
.end


.namespace ["NQP";"Actions"]
.sub "_block40"  :anon :subid("14_1261201532.26144") :outer("13_1261201532.26144")
.annotate "line", 16
    .const 'Sub' $P52 = "15_1261201532.26144" 
    capture_lex $P52
.annotate "line", 17
    new $P42, "Undef"
    .lex "$stmts", $P42
    get_hll_global $P43, ["PAST"], "Stmts"
    find_lex $P44, "$block"
    $P45 = $P43."new"($P44 :named("node"))
    store_lex "$stmts", $P45
.annotate "line", 18
    find_lex $P47, "$block"
    $P48 = $P47."list"()
    defined $I49, $P48
    unless $I49, for_undef_133
    iter $P46, $P48
    new $P58, 'ExceptionHandler'
    set_addr $P58, loop57_handler
    $P58."handle_types"(65, 67, 66)
    push_eh $P58
  loop57_test:
    unless $P46, loop57_done
    shift $P50, $P46
  loop57_redo:
    .const 'Sub' $P52 = "15_1261201532.26144" 
    capture_lex $P52
    $P52($P50)
  loop57_next:
    goto loop57_test
  loop57_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P59, exception, 'type'
    eq $P59, 65, loop57_next
    eq $P59, 67, loop57_redo
  loop57_done:
    pop_eh 
  for_undef_133:
.annotate "line", 19
    find_lex $P60, "$stmts"
    store_lex "$block", $P60
.annotate "line", 16
    .return ($P60)
.end


.namespace ["NQP";"Actions"]
.sub "_block51"  :anon :subid("15_1261201532.26144") :outer("14_1261201532.26144")
    .param pmc param_53
.annotate "line", 18
    .lex "$_", param_53
    find_lex $P54, "$stmts"
    find_lex $P55, "$_"
    $P56 = $P54."push"($P55)
    .return ($P56)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("16_1261201532.26144") :outer("11_1261201532.26144")
    .param pmc param_67
.annotate "line", 24
    get_root_global $P65, ["parrot";"PCT"], "reuse66_1261201532.28259"
    unless_null $P65, reuse66
    new $P65, ["ExceptionHandler"]
    $P65."handle_types"(58)
  reuse66:
    set_addr $P65, control_64
    push_eh $P65
    .lex "$sigil", param_67
.annotate "line", 25
    find_lex $P70, "$sigil"
    set $S71, $P70
    iseq $I72, $S71, "%"
    if $I72, if_69
.annotate "line", 27
    find_lex $P76, "$sigil"
    set $S77, $P76
    iseq $I78, $S77, "@"
    if $I78, if_75
    new $P80, "String"
    assign $P80, "Undef"
    set $P74, $P80
    goto if_75_end
  if_75:
    new $P79, "String"
    assign $P79, "ResizablePMCArray"
    set $P74, $P79
  if_75_end:
    set $P68, $P74
.annotate "line", 25
    goto if_69_end
  if_69:
    new $P73, "String"
    assign $P73, "Hash"
    set $P68, $P73
  if_69_end:
.annotate "line", 24
    .return ($P68)
  control_64:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P81, exception, "payload"
    .return ($P81)
.end


.namespace ["NQP";"Actions"]
.sub "colonpair_str"  :subid("17_1261201532.26144") :outer("11_1261201532.26144")
    .param pmc param_86
.annotate "line", 40
    get_root_global $P84, ["parrot";"PCT"], "reuse85_1261201532.28825"
    unless_null $P84, reuse85
    new $P84, ["ExceptionHandler"]
    $P84."handle_types"(58)
  reuse85:
    set_addr $P84, control_83
    push_eh $P84
    .lex "$ast", param_86
.annotate "line", 41
    get_hll_global $P89, ["PAST"], "Op"
    find_lex $P90, "$ast"
    $P91 = $P89."ACCEPTS"($P90)
    if $P91, if_88
.annotate "line", 43
    find_lex $P95, "$ast"
    $P96 = $P95."value"()
    set $P87, $P96
.annotate "line", 41
    goto if_88_end
  if_88:
.annotate "line", 42
    find_lex $P92, "$ast"
    $P93 = $P92."list"()
    join $S94, " ", $P93
    new $P87, 'String'
    set $P87, $S94
  if_88_end:
.annotate "line", 40
    .return ($P87)
  control_83:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P97, exception, "payload"
    .return ($P97)
.end


.namespace ["NQP";"Actions"]
.sub "push_block_handler"  :subid("18_1261201532.26144") :outer("11_1261201532.26144")
    .param pmc param_102
    .param pmc param_103
.annotate "line", 187
    get_root_global $P100, ["parrot";"PCT"], "reuse101_1261201532.29367"
    unless_null $P100, reuse101
    new $P100, ["ExceptionHandler"]
    $P100."handle_types"(58)
  reuse101:
    set_addr $P100, control_99
    push_eh $P100
    .lex "$/", param_102
    .lex "$block", param_103
.annotate "line", 188
    get_global $P105, "@BLOCK"
    unless_null $P105, vivify_134
    new $P105, "ResizablePMCArray"
  vivify_134:
    set $P106, $P105[0]
    unless_null $P106, vivify_135
    new $P106, "Undef"
  vivify_135:
    $P107 = $P106."handlers"()
    if $P107, unless_104_end
.annotate "line", 189
    get_global $P108, "@BLOCK"
    unless_null $P108, vivify_136
    new $P108, "ResizablePMCArray"
  vivify_136:
    set $P109, $P108[0]
    unless_null $P109, vivify_137
    new $P109, "Undef"
  vivify_137:
    new $P110, "ResizablePMCArray"
    $P109."handlers"($P110)
  unless_104_end:
.annotate "line", 191
    find_lex $P112, "$block"
    $P113 = $P112."arity"()
    if $P113, unless_111_end
.annotate "line", 192
    find_lex $P114, "$block"
.annotate "line", 193
    get_hll_global $P115, ["PAST"], "Op"
.annotate "line", 194
    get_hll_global $P116, ["PAST"], "Var"
    $P117 = $P116."new"("lexical" :named("scope"), "$!" :named("name"), 1 :named("isdecl"))
.annotate "line", 195
    get_hll_global $P118, ["PAST"], "Var"
    $P119 = $P118."new"("lexical" :named("scope"), "$_" :named("name"))
    $P120 = $P115."new"($P117, $P119, "bind" :named("pasttype"))
.annotate "line", 193
    $P114."unshift"($P120)
.annotate "line", 198
    find_lex $P121, "$block"
    get_hll_global $P122, ["PAST"], "Var"
    $P123 = $P122."new"("$_" :named("name"), "parameter" :named("scope"))
    $P121."unshift"($P123)
.annotate "line", 199
    find_lex $P124, "$block"
    $P124."symbol"("$_", "lexical" :named("scope"))
.annotate "line", 200
    find_lex $P125, "$block"
    $P125."symbol"("$!", "lexical" :named("scope"))
.annotate "line", 201
    find_lex $P126, "$block"
    $P126."arity"(1)
  unless_111_end:
.annotate "line", 203
    find_lex $P127, "$block"
    $P127."blocktype"("declaration")
.annotate "line", 204
    get_global $P128, "@BLOCK"
    unless_null $P128, vivify_138
    new $P128, "ResizablePMCArray"
  vivify_138:
    set $P129, $P128[0]
    unless_null $P129, vivify_139
    new $P129, "Undef"
  vivify_139:
    $P130 = $P129."handlers"()
.annotate "line", 205
    get_hll_global $P131, ["PAST"], "Control"
    find_lex $P132, "$/"
.annotate "line", 207
    get_hll_global $P133, ["PAST"], "Stmts"
.annotate "line", 208
    get_hll_global $P134, ["PAST"], "Op"
    find_lex $P135, "$block"
.annotate "line", 210
    get_hll_global $P136, ["PAST"], "Var"
    $P137 = $P136."new"("register" :named("scope"), "exception" :named("name"))
    $P138 = $P134."new"($P135, $P137, "call" :named("pasttype"))
.annotate "line", 212
    get_hll_global $P139, ["PAST"], "Op"
.annotate "line", 213
    get_hll_global $P140, ["PAST"], "Var"
.annotate "line", 214
    get_hll_global $P141, ["PAST"], "Var"
    $P142 = $P141."new"("register" :named("scope"), "exception" :named("name"))
    $P143 = $P140."new"($P142, "handled", "keyed" :named("scope"))
.annotate "line", 213
    $P144 = $P139."new"($P143, 1, "bind" :named("pasttype"))
.annotate "line", 212
    $P145 = $P133."new"($P138, $P144)
.annotate "line", 207
    $P146 = $P131."new"($P145, $P132 :named("node"))
.annotate "line", 205
    $P147 = $P130."unshift"($P146)
.annotate "line", 187
    .return ($P147)
  control_99:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P148, exception, "payload"
    .return ($P148)
.end


.namespace ["NQP";"Actions"]
.sub "TOP"  :subid("19_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_157
.annotate "line", 30
    get_root_global $P155, ["parrot";"PCT"], "reuse156_1261201532.31927"
    unless_null $P155, reuse156
    new $P155, ["ExceptionHandler"]
    $P155."handle_types"(58)
  reuse156:
    set_addr $P155, control_154
    push_eh $P155
    .lex "self", self
    .lex "$/", param_157
    find_lex $P158, "$/"
    find_lex $P159, "$/"
    unless_null $P159, vivify_140
    new $P159, "Hash"
  vivify_140:
    set $P160, $P159["comp_unit"]
    unless_null $P160, vivify_141
    new $P160, "Undef"
  vivify_141:
    $P161 = $P160."ast"()
    $P162 = $P158."!make"($P161)
    .return ($P162)
  control_154:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P163, exception, "payload"
    .return ($P163)
.end


.namespace ["NQP";"Actions"]
.sub "deflongname"  :subid("20_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_168
.annotate "line", 32
    get_root_global $P166, ["parrot";"PCT"], "reuse167_1261201532.32343"
    unless_null $P166, reuse167
    new $P166, ["ExceptionHandler"]
    $P166."handle_types"(58)
  reuse167:
    set_addr $P166, control_165
    push_eh $P166
    .lex "self", self
    .lex "$/", param_168
.annotate "line", 33
    find_lex $P169, "$/"
.annotate "line", 34
    find_lex $P172, "$/"
    unless_null $P172, vivify_142
    new $P172, "Hash"
  vivify_142:
    set $P173, $P172["colonpair"]
    unless_null $P173, vivify_143
    new $P173, "Undef"
  vivify_143:
    if $P173, if_171
.annotate "line", 36
    find_lex $P193, "$/"
    set $S194, $P193
    new $P170, 'String'
    set $P170, $S194
.annotate "line", 34
    goto if_171_end
  if_171:
    find_lex $P174, "$/"
    unless_null $P174, vivify_144
    new $P174, "Hash"
  vivify_144:
    set $P175, $P174["identifier"]
    unless_null $P175, vivify_145
    new $P175, "Undef"
  vivify_145:
    set $S176, $P175
    new $P177, 'String'
    set $P177, $S176
    concat $P178, $P177, ":"
    find_lex $P179, "$/"
    unless_null $P179, vivify_146
    new $P179, "Hash"
  vivify_146:
    set $P180, $P179["colonpair"]
    unless_null $P180, vivify_147
    new $P180, "ResizablePMCArray"
  vivify_147:
    set $P181, $P180[0]
    unless_null $P181, vivify_148
    new $P181, "Undef"
  vivify_148:
    $P182 = $P181."ast"()
    $S183 = $P182."named"()
    concat $P184, $P178, $S183
    concat $P185, $P184, "<"
.annotate "line", 35
    find_lex $P186, "$/"
    unless_null $P186, vivify_149
    new $P186, "Hash"
  vivify_149:
    set $P187, $P186["colonpair"]
    unless_null $P187, vivify_150
    new $P187, "ResizablePMCArray"
  vivify_150:
    set $P188, $P187[0]
    unless_null $P188, vivify_151
    new $P188, "Undef"
  vivify_151:
    $P189 = $P188."ast"()
    $S190 = "colonpair_str"($P189)
    concat $P191, $P185, $S190
    concat $P192, $P191, ">"
    set $P170, $P192
  if_171_end:
.annotate "line", 34
    $P195 = $P169."!make"($P170)
.annotate "line", 32
    .return ($P195)
  control_165:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P196, exception, "payload"
    .return ($P196)
.end


.namespace ["NQP";"Actions"]
.sub "comp_unit"  :subid("21_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_202
.annotate "line", 46
    get_root_global $P200, ["parrot";"PCT"], "reuse201_1261201532.33591"
    unless_null $P200, reuse201
    new $P200, ["ExceptionHandler"]
    $P200."handle_types"(58)
  reuse201:
    set_addr $P200, control_199
    push_eh $P200
    .lex "self", self
    .lex "$/", param_202
.annotate "line", 47
    new $P203, "Undef"
    .lex "$past", $P203
.annotate "line", 48
    new $P204, "Undef"
    .lex "$BLOCK", $P204
.annotate "line", 47
    find_lex $P205, "$/"
    unless_null $P205, vivify_152
    new $P205, "Hash"
  vivify_152:
    set $P206, $P205["statementlist"]
    unless_null $P206, vivify_153
    new $P206, "Undef"
  vivify_153:
    $P207 = $P206."ast"()
    store_lex "$past", $P207
.annotate "line", 48
    get_global $P208, "@BLOCK"
    $P209 = $P208."shift"()
    store_lex "$BLOCK", $P209
.annotate "line", 49
    find_lex $P210, "$BLOCK"
    find_lex $P211, "$past"
    $P210."push"($P211)
.annotate "line", 50
    find_lex $P212, "$BLOCK"
    find_lex $P213, "$/"
    $P212."node"($P213)
.annotate "line", 51
    find_lex $P214, "$/"
    find_lex $P215, "$BLOCK"
    $P216 = $P214."!make"($P215)
.annotate "line", 46
    .return ($P216)
  control_199:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P217, exception, "payload"
    .return ($P217)
.end


.namespace ["NQP";"Actions"]
.sub "statementlist"  :subid("22_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_222
.annotate "line", 54
    .const 'Sub' $P236 = "23_1261201532.26144" 
    capture_lex $P236
    get_root_global $P220, ["parrot";"PCT"], "reuse221_1261201532.34418"
    unless_null $P220, reuse221
    new $P220, ["ExceptionHandler"]
    $P220."handle_types"(58)
  reuse221:
    set_addr $P220, control_219
    push_eh $P220
    .lex "self", self
    .lex "$/", param_222
.annotate "line", 55
    new $P223, "Undef"
    .lex "$past", $P223
    get_hll_global $P224, ["PAST"], "Stmts"
    find_lex $P225, "$/"
    $P226 = $P224."new"($P225 :named("node"))
    store_lex "$past", $P226
.annotate "line", 56
    find_lex $P228, "$/"
    unless_null $P228, vivify_154
    new $P228, "Hash"
  vivify_154:
    set $P229, $P228["statement"]
    unless_null $P229, vivify_155
    new $P229, "Undef"
  vivify_155:
    unless $P229, if_227_end
.annotate "line", 57
    find_lex $P231, "$/"
    unless_null $P231, vivify_156
    new $P231, "Hash"
  vivify_156:
    set $P232, $P231["statement"]
    unless_null $P232, vivify_157
    new $P232, "Undef"
  vivify_157:
    defined $I233, $P232
    unless $I233, for_undef_158
    iter $P230, $P232
    new $P262, 'ExceptionHandler'
    set_addr $P262, loop261_handler
    $P262."handle_types"(65, 67, 66)
    push_eh $P262
  loop261_test:
    unless $P230, loop261_done
    shift $P234, $P230
  loop261_redo:
    .const 'Sub' $P236 = "23_1261201532.26144" 
    capture_lex $P236
    $P236($P234)
  loop261_next:
    goto loop261_test
  loop261_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P263, exception, 'type'
    eq $P263, 65, loop261_next
    eq $P263, 67, loop261_redo
  loop261_done:
    pop_eh 
  for_undef_158:
  if_227_end:
.annotate "line", 66
    find_lex $P264, "$/"
    find_lex $P265, "$past"
    $P266 = $P264."!make"($P265)
.annotate "line", 54
    .return ($P266)
  control_219:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P267, exception, "payload"
    .return ($P267)
.end


.namespace ["NQP";"Actions"]
.sub "_block235"  :anon :subid("23_1261201532.26144") :outer("22_1261201532.26144")
    .param pmc param_238
.annotate "line", 58
    new $P237, "Undef"
    .lex "$ast", $P237
    .lex "$_", param_238
    find_lex $P239, "$_"
    $P240 = $P239."ast"()
    store_lex "$ast", $P240
.annotate "line", 59
    find_lex $P242, "$ast"
    unless_null $P242, vivify_159
    new $P242, "Hash"
  vivify_159:
    set $P243, $P242["sink"]
    unless_null $P243, vivify_160
    new $P243, "Undef"
  vivify_160:
    defined $I244, $P243
    unless $I244, if_241_end
    find_lex $P245, "$ast"
    unless_null $P245, vivify_161
    new $P245, "Hash"
  vivify_161:
    set $P246, $P245["sink"]
    unless_null $P246, vivify_162
    new $P246, "Undef"
  vivify_162:
    store_lex "$ast", $P246
  if_241_end:
.annotate "line", 60
    find_lex $P250, "$ast"
    get_hll_global $P251, ["PAST"], "Block"
    $P252 = $P250."isa"($P251)
    if $P252, if_249
    set $P248, $P252
    goto if_249_end
  if_249:
    find_lex $P253, "$ast"
    $P254 = $P253."blocktype"()
    isfalse $I255, $P254
    new $P248, 'Integer'
    set $P248, $I255
  if_249_end:
    unless $P248, if_247_end
.annotate "line", 61
    find_lex $P256, "$ast"
    $P257 = "block_immediate"($P256)
    store_lex "$ast", $P257
  if_247_end:
.annotate "line", 63
    find_lex $P258, "$past"
    find_lex $P259, "$ast"
    $P260 = $P258."push"($P259)
.annotate "line", 57
    .return ($P260)
.end


.namespace ["NQP";"Actions"]
.sub "statement"  :subid("24_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_272
    .param pmc param_273 :optional
    .param int has_param_273 :opt_flag
.annotate "line", 69
    .const 'Sub' $P281 = "25_1261201532.26144" 
    capture_lex $P281
    get_root_global $P270, ["parrot";"PCT"], "reuse271_1261201532.36339"
    unless_null $P270, reuse271
    new $P270, ["ExceptionHandler"]
    $P270."handle_types"(58)
  reuse271:
    set_addr $P270, control_269
    push_eh $P270
    .lex "self", self
    .lex "$/", param_272
    if has_param_273, optparam_163
    new $P274, "Undef"
    set param_273, $P274
  optparam_163:
    .lex "$key", param_273
.annotate "line", 70
    new $P275, "Undef"
    .lex "$past", $P275
.annotate "line", 69
    find_lex $P276, "$past"
.annotate "line", 71
    find_lex $P278, "$/"
    unless_null $P278, vivify_164
    new $P278, "Hash"
  vivify_164:
    set $P279, $P278["EXPR"]
    unless_null $P279, vivify_165
    new $P279, "Undef"
  vivify_165:
    if $P279, if_277
.annotate "line", 82
    find_lex $P319, "$/"
    unless_null $P319, vivify_166
    new $P319, "Hash"
  vivify_166:
    set $P320, $P319["statement_control"]
    unless_null $P320, vivify_167
    new $P320, "Undef"
  vivify_167:
    if $P320, if_318
.annotate "line", 83
    new $P324, "Integer"
    assign $P324, 0
    store_lex "$past", $P324
    goto if_318_end
  if_318:
.annotate "line", 82
    find_lex $P321, "$/"
    unless_null $P321, vivify_168
    new $P321, "Hash"
  vivify_168:
    set $P322, $P321["statement_control"]
    unless_null $P322, vivify_169
    new $P322, "Undef"
  vivify_169:
    $P323 = $P322."ast"()
    store_lex "$past", $P323
  if_318_end:
    goto if_277_end
  if_277:
.annotate "line", 71
    .const 'Sub' $P281 = "25_1261201532.26144" 
    capture_lex $P281
    $P281()
  if_277_end:
.annotate "line", 84
    find_lex $P325, "$/"
    find_lex $P326, "$past"
    $P327 = $P325."!make"($P326)
.annotate "line", 69
    .return ($P327)
  control_269:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P328, exception, "payload"
    .return ($P328)
.end


.namespace ["NQP";"Actions"]
.sub "_block280"  :anon :subid("25_1261201532.26144") :outer("24_1261201532.26144")
.annotate "line", 72
    new $P282, "Undef"
    .lex "$mc", $P282
.annotate "line", 73
    new $P283, "Undef"
    .lex "$ml", $P283
.annotate "line", 72
    find_lex $P284, "$/"
    unless_null $P284, vivify_170
    new $P284, "Hash"
  vivify_170:
    set $P285, $P284["statement_mod_cond"]
    unless_null $P285, vivify_171
    new $P285, "ResizablePMCArray"
  vivify_171:
    set $P286, $P285[0]
    unless_null $P286, vivify_172
    new $P286, "Undef"
  vivify_172:
    store_lex "$mc", $P286
.annotate "line", 73
    find_lex $P287, "$/"
    unless_null $P287, vivify_173
    new $P287, "Hash"
  vivify_173:
    set $P288, $P287["statement_mod_loop"]
    unless_null $P288, vivify_174
    new $P288, "ResizablePMCArray"
  vivify_174:
    set $P289, $P288[0]
    unless_null $P289, vivify_175
    new $P289, "Undef"
  vivify_175:
    store_lex "$ml", $P289
.annotate "line", 74
    find_lex $P290, "$/"
    unless_null $P290, vivify_176
    new $P290, "Hash"
  vivify_176:
    set $P291, $P290["EXPR"]
    unless_null $P291, vivify_177
    new $P291, "Undef"
  vivify_177:
    $P292 = $P291."ast"()
    store_lex "$past", $P292
.annotate "line", 75
    find_lex $P294, "$mc"
    unless $P294, if_293_end
.annotate "line", 76
    get_hll_global $P295, ["PAST"], "Op"
    find_lex $P296, "$mc"
    unless_null $P296, vivify_178
    new $P296, "Hash"
  vivify_178:
    set $P297, $P296["cond"]
    unless_null $P297, vivify_179
    new $P297, "Undef"
  vivify_179:
    $P298 = $P297."ast"()
    find_lex $P299, "$past"
    find_lex $P300, "$mc"
    unless_null $P300, vivify_180
    new $P300, "Hash"
  vivify_180:
    set $P301, $P300["sym"]
    unless_null $P301, vivify_181
    new $P301, "Undef"
  vivify_181:
    set $S302, $P301
    find_lex $P303, "$/"
    $P304 = $P295."new"($P298, $P299, $S302 :named("pasttype"), $P303 :named("node"))
    store_lex "$past", $P304
  if_293_end:
.annotate "line", 78
    find_lex $P307, "$ml"
    if $P307, if_306
    set $P305, $P307
    goto if_306_end
  if_306:
.annotate "line", 79
    get_hll_global $P308, ["PAST"], "Op"
    find_lex $P309, "$ml"
    unless_null $P309, vivify_182
    new $P309, "Hash"
  vivify_182:
    set $P310, $P309["cond"]
    unless_null $P310, vivify_183
    new $P310, "Undef"
  vivify_183:
    $P311 = $P310."ast"()
    find_lex $P312, "$past"
    find_lex $P313, "$ml"
    unless_null $P313, vivify_184
    new $P313, "Hash"
  vivify_184:
    set $P314, $P313["sym"]
    unless_null $P314, vivify_185
    new $P314, "Undef"
  vivify_185:
    set $S315, $P314
    find_lex $P316, "$/"
    $P317 = $P308."new"($P311, $P312, $S315 :named("pasttype"), $P316 :named("node"))
    store_lex "$past", $P317
.annotate "line", 78
    set $P305, $P317
  if_306_end:
.annotate "line", 71
    .return ($P305)
.end


.namespace ["NQP";"Actions"]
.sub "xblock"  :subid("26_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_333
.annotate "line", 87
    get_root_global $P331, ["parrot";"PCT"], "reuse332_1261201532.39116"
    unless_null $P331, reuse332
    new $P331, ["ExceptionHandler"]
    $P331."handle_types"(58)
  reuse332:
    set_addr $P331, control_330
    push_eh $P331
    .lex "self", self
    .lex "$/", param_333
.annotate "line", 88
    find_lex $P334, "$/"
    get_hll_global $P335, ["PAST"], "Op"
    find_lex $P336, "$/"
    unless_null $P336, vivify_186
    new $P336, "Hash"
  vivify_186:
    set $P337, $P336["EXPR"]
    unless_null $P337, vivify_187
    new $P337, "Undef"
  vivify_187:
    $P338 = $P337."ast"()
    find_lex $P339, "$/"
    unless_null $P339, vivify_188
    new $P339, "Hash"
  vivify_188:
    set $P340, $P339["pblock"]
    unless_null $P340, vivify_189
    new $P340, "Undef"
  vivify_189:
    $P341 = $P340."ast"()
    find_lex $P342, "$/"
    $P343 = $P335."new"($P338, $P341, "if" :named("pasttype"), $P342 :named("node"))
    $P344 = $P334."!make"($P343)
.annotate "line", 87
    .return ($P344)
  control_330:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P345, exception, "payload"
    .return ($P345)
.end


.namespace ["NQP";"Actions"]
.sub "pblock"  :subid("27_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_350
.annotate "line", 91
    get_root_global $P348, ["parrot";"PCT"], "reuse349_1261201532.39785"
    unless_null $P348, reuse349
    new $P348, ["ExceptionHandler"]
    $P348."handle_types"(58)
  reuse349:
    set_addr $P348, control_347
    push_eh $P348
    .lex "self", self
    .lex "$/", param_350
.annotate "line", 92
    find_lex $P351, "$/"
    find_lex $P352, "$/"
    unless_null $P352, vivify_190
    new $P352, "Hash"
  vivify_190:
    set $P353, $P352["blockoid"]
    unless_null $P353, vivify_191
    new $P353, "Undef"
  vivify_191:
    $P354 = $P353."ast"()
    $P355 = $P351."!make"($P354)
.annotate "line", 91
    .return ($P355)
  control_347:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P356, exception, "payload"
    .return ($P356)
.end


.namespace ["NQP";"Actions"]
.sub "block"  :subid("28_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_361
.annotate "line", 95
    get_root_global $P359, ["parrot";"PCT"], "reuse360_1261201532.40198"
    unless_null $P359, reuse360
    new $P359, ["ExceptionHandler"]
    $P359."handle_types"(58)
  reuse360:
    set_addr $P359, control_358
    push_eh $P359
    .lex "self", self
    .lex "$/", param_361
.annotate "line", 96
    find_lex $P362, "$/"
    find_lex $P363, "$/"
    unless_null $P363, vivify_192
    new $P363, "Hash"
  vivify_192:
    set $P364, $P363["blockoid"]
    unless_null $P364, vivify_193
    new $P364, "Undef"
  vivify_193:
    $P365 = $P364."ast"()
    $P366 = $P362."!make"($P365)
.annotate "line", 95
    .return ($P366)
  control_358:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P367, exception, "payload"
    .return ($P367)
.end


.namespace ["NQP";"Actions"]
.sub "blockoid"  :subid("29_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_372
.annotate "line", 99
    get_root_global $P370, ["parrot";"PCT"], "reuse371_1261201532.40613"
    unless_null $P370, reuse371
    new $P370, ["ExceptionHandler"]
    $P370."handle_types"(58)
  reuse371:
    set_addr $P370, control_369
    push_eh $P370
    .lex "self", self
    .lex "$/", param_372
.annotate "line", 100
    new $P373, "Undef"
    .lex "$past", $P373
.annotate "line", 101
    new $P374, "Undef"
    .lex "$BLOCK", $P374
.annotate "line", 100
    find_lex $P375, "$/"
    unless_null $P375, vivify_194
    new $P375, "Hash"
  vivify_194:
    set $P376, $P375["statementlist"]
    unless_null $P376, vivify_195
    new $P376, "Undef"
  vivify_195:
    $P377 = $P376."ast"()
    store_lex "$past", $P377
.annotate "line", 101
    get_global $P378, "@BLOCK"
    $P379 = $P378."shift"()
    store_lex "$BLOCK", $P379
.annotate "line", 102
    find_lex $P380, "$BLOCK"
    find_lex $P381, "$past"
    $P380."push"($P381)
.annotate "line", 103
    find_lex $P382, "$BLOCK"
    find_lex $P383, "$/"
    $P382."node"($P383)
.annotate "line", 104
    find_lex $P384, "$/"
    find_lex $P385, "$BLOCK"
    $P386 = $P384."!make"($P385)
.annotate "line", 99
    .return ($P386)
  control_369:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P387, exception, "payload"
    .return ($P387)
.end


.namespace ["NQP";"Actions"]
.sub "newpad"  :subid("30_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_392
.annotate "line", 107
    get_root_global $P390, ["parrot";"PCT"], "reuse391_1261201532.41419"
    unless_null $P390, reuse391
    new $P390, ["ExceptionHandler"]
    $P390."handle_types"(58)
  reuse391:
    set_addr $P390, control_389
    push_eh $P390
    .lex "self", self
    .lex "$/", param_392
.annotate "line", 108
    get_global $P393, "@BLOCK"
    unless_null $P393, vivify_196
    new $P393, "ResizablePMCArray"
    set_global "@BLOCK", $P393
  vivify_196:
.annotate "line", 107
    get_global $P394, "@BLOCK"
.annotate "line", 109
    get_global $P395, "@BLOCK"
    get_hll_global $P396, ["PAST"], "Block"
    get_hll_global $P397, ["PAST"], "Stmts"
    $P398 = $P397."new"()
    $P399 = $P396."new"($P398)
    $P400 = $P395."unshift"($P399)
.annotate "line", 107
    .return ($P400)
  control_389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P401, exception, "payload"
    .return ($P401)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<if>"  :subid("31_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_406
.annotate "line", 114
    .const 'Sub' $P434 = "32_1261201532.26144" 
    capture_lex $P434
    get_root_global $P404, ["parrot";"PCT"], "reuse405_1261201532.41911"
    unless_null $P404, reuse405
    new $P404, ["ExceptionHandler"]
    $P404."handle_types"(58)
  reuse405:
    set_addr $P404, control_403
    push_eh $P404
    .lex "self", self
    .lex "$/", param_406
.annotate "line", 115
    new $P407, "Undef"
    .lex "$count", $P407
.annotate "line", 116
    new $P408, "Undef"
    .lex "$past", $P408
.annotate "line", 115
    find_lex $P409, "$/"
    unless_null $P409, vivify_197
    new $P409, "Hash"
  vivify_197:
    set $P410, $P409["xblock"]
    unless_null $P410, vivify_198
    new $P410, "Undef"
  vivify_198:
    set $N411, $P410
    new $P412, 'Float'
    set $P412, $N411
    sub $P413, $P412, 1
    store_lex "$count", $P413
.annotate "line", 116
    find_lex $P414, "$count"
    set $I415, $P414
    find_lex $P416, "$/"
    unless_null $P416, vivify_199
    new $P416, "Hash"
  vivify_199:
    set $P417, $P416["xblock"]
    unless_null $P417, vivify_200
    new $P417, "ResizablePMCArray"
  vivify_200:
    set $P418, $P417[$I415]
    unless_null $P418, vivify_201
    new $P418, "Undef"
  vivify_201:
    $P419 = $P418."ast"()
    $P420 = "xblock_immediate"($P419)
    store_lex "$past", $P420
.annotate "line", 117
    find_lex $P422, "$/"
    unless_null $P422, vivify_202
    new $P422, "Hash"
  vivify_202:
    set $P423, $P422["else"]
    unless_null $P423, vivify_203
    new $P423, "Undef"
  vivify_203:
    unless $P423, if_421_end
.annotate "line", 118
    find_lex $P424, "$past"
    find_lex $P425, "$/"
    unless_null $P425, vivify_204
    new $P425, "Hash"
  vivify_204:
    set $P426, $P425["else"]
    unless_null $P426, vivify_205
    new $P426, "ResizablePMCArray"
  vivify_205:
    set $P427, $P426[0]
    unless_null $P427, vivify_206
    new $P427, "Undef"
  vivify_206:
    $P428 = $P427."ast"()
    $P429 = "block_immediate"($P428)
    $P424."push"($P429)
  if_421_end:
.annotate "line", 121
    new $P450, 'ExceptionHandler'
    set_addr $P450, loop449_handler
    $P450."handle_types"(65, 67, 66)
    push_eh $P450
  loop449_test:
    find_lex $P430, "$count"
    set $N431, $P430
    isgt $I432, $N431, 0.0
    unless $I432, loop449_done
  loop449_redo:
    .const 'Sub' $P434 = "32_1261201532.26144" 
    capture_lex $P434
    $P434()
  loop449_next:
    goto loop449_test
  loop449_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P451, exception, 'type'
    eq $P451, 65, loop449_next
    eq $P451, 67, loop449_redo
  loop449_done:
    pop_eh 
.annotate "line", 127
    find_lex $P452, "$/"
    find_lex $P453, "$past"
    $P454 = $P452."!make"($P453)
.annotate "line", 114
    .return ($P454)
  control_403:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P455, exception, "payload"
    .return ($P455)
.end


.namespace ["NQP";"Actions"]
.sub "_block433"  :anon :subid("32_1261201532.26144") :outer("31_1261201532.26144")
.annotate "line", 123
    new $P435, "Undef"
    .lex "$else", $P435
.annotate "line", 121
    find_lex $P436, "$count"
    clone $P437, $P436
    dec $P436
.annotate "line", 123
    find_lex $P438, "$past"
    store_lex "$else", $P438
.annotate "line", 124
    find_lex $P439, "$count"
    set $I440, $P439
    find_lex $P441, "$/"
    unless_null $P441, vivify_207
    new $P441, "Hash"
  vivify_207:
    set $P442, $P441["xblock"]
    unless_null $P442, vivify_208
    new $P442, "ResizablePMCArray"
  vivify_208:
    set $P443, $P442[$I440]
    unless_null $P443, vivify_209
    new $P443, "Undef"
  vivify_209:
    $P444 = $P443."ast"()
    $P445 = "xblock_immediate"($P444)
    store_lex "$past", $P445
.annotate "line", 125
    find_lex $P446, "$past"
    find_lex $P447, "$else"
    $P448 = $P446."push"($P447)
.annotate "line", 121
    .return ($P448)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<unless>"  :subid("33_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_460
.annotate "line", 130
    get_root_global $P458, ["parrot";"PCT"], "reuse459_1261201532.43973"
    unless_null $P458, reuse459
    new $P458, ["ExceptionHandler"]
    $P458."handle_types"(58)
  reuse459:
    set_addr $P458, control_457
    push_eh $P458
    .lex "self", self
    .lex "$/", param_460
.annotate "line", 131
    new $P461, "Undef"
    .lex "$past", $P461
    find_lex $P462, "$/"
    unless_null $P462, vivify_210
    new $P462, "Hash"
  vivify_210:
    set $P463, $P462["xblock"]
    unless_null $P463, vivify_211
    new $P463, "Undef"
  vivify_211:
    $P464 = $P463."ast"()
    $P465 = "xblock_immediate"($P464)
    store_lex "$past", $P465
.annotate "line", 132
    find_lex $P466, "$past"
    $P466."pasttype"("unless")
.annotate "line", 133
    find_lex $P467, "$/"
    find_lex $P468, "$past"
    $P469 = $P467."!make"($P468)
.annotate "line", 130
    .return ($P469)
  control_457:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P470, exception, "payload"
    .return ($P470)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<while>"  :subid("34_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_475
.annotate "line", 136
    get_root_global $P473, ["parrot";"PCT"], "reuse474_1261201532.44564"
    unless_null $P473, reuse474
    new $P473, ["ExceptionHandler"]
    $P473."handle_types"(58)
  reuse474:
    set_addr $P473, control_472
    push_eh $P473
    .lex "self", self
    .lex "$/", param_475
.annotate "line", 137
    new $P476, "Undef"
    .lex "$past", $P476
    find_lex $P477, "$/"
    unless_null $P477, vivify_212
    new $P477, "Hash"
  vivify_212:
    set $P478, $P477["xblock"]
    unless_null $P478, vivify_213
    new $P478, "Undef"
  vivify_213:
    $P479 = $P478."ast"()
    $P480 = "xblock_immediate"($P479)
    store_lex "$past", $P480
.annotate "line", 138
    find_lex $P481, "$past"
    find_lex $P482, "$/"
    unless_null $P482, vivify_214
    new $P482, "Hash"
  vivify_214:
    set $P483, $P482["sym"]
    unless_null $P483, vivify_215
    new $P483, "Undef"
  vivify_215:
    set $S484, $P483
    $P481."pasttype"($S484)
.annotate "line", 139
    find_lex $P485, "$/"
    find_lex $P486, "$past"
    $P487 = $P485."!make"($P486)
.annotate "line", 136
    .return ($P487)
  control_472:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P488, exception, "payload"
    .return ($P488)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<repeat>"  :subid("35_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_493
.annotate "line", 142
    get_root_global $P491, ["parrot";"PCT"], "reuse492_1261201532.45266"
    unless_null $P491, reuse492
    new $P491, ["ExceptionHandler"]
    $P491."handle_types"(58)
  reuse492:
    set_addr $P491, control_490
    push_eh $P491
    .lex "self", self
    .lex "$/", param_493
.annotate "line", 143
    new $P494, "Undef"
    .lex "$pasttype", $P494
.annotate "line", 144
    new $P495, "Undef"
    .lex "$past", $P495
.annotate "line", 143
    new $P496, "String"
    assign $P496, "repeat_"
    find_lex $P497, "$/"
    unless_null $P497, vivify_216
    new $P497, "Hash"
  vivify_216:
    set $P498, $P497["wu"]
    unless_null $P498, vivify_217
    new $P498, "Undef"
  vivify_217:
    set $S499, $P498
    concat $P500, $P496, $S499
    store_lex "$pasttype", $P500
    find_lex $P501, "$past"
.annotate "line", 145
    find_lex $P503, "$/"
    unless_null $P503, vivify_218
    new $P503, "Hash"
  vivify_218:
    set $P504, $P503["xblock"]
    unless_null $P504, vivify_219
    new $P504, "Undef"
  vivify_219:
    if $P504, if_502
.annotate "line", 150
    get_hll_global $P511, ["PAST"], "Op"
    find_lex $P512, "$/"
    unless_null $P512, vivify_220
    new $P512, "Hash"
  vivify_220:
    set $P513, $P512["EXPR"]
    unless_null $P513, vivify_221
    new $P513, "Undef"
  vivify_221:
    $P514 = $P513."ast"()
    find_lex $P515, "$/"
    unless_null $P515, vivify_222
    new $P515, "Hash"
  vivify_222:
    set $P516, $P515["pblock"]
    unless_null $P516, vivify_223
    new $P516, "Undef"
  vivify_223:
    $P517 = $P516."ast"()
    $P518 = "block_immediate"($P517)
    find_lex $P519, "$pasttype"
    find_lex $P520, "$/"
    $P521 = $P511."new"($P514, $P518, $P519 :named("pasttype"), $P520 :named("node"))
    store_lex "$past", $P521
.annotate "line", 149
    goto if_502_end
  if_502:
.annotate "line", 146
    find_lex $P505, "$/"
    unless_null $P505, vivify_224
    new $P505, "Hash"
  vivify_224:
    set $P506, $P505["xblock"]
    unless_null $P506, vivify_225
    new $P506, "Undef"
  vivify_225:
    $P507 = $P506."ast"()
    $P508 = "xblock_immediate"($P507)
    store_lex "$past", $P508
.annotate "line", 147
    find_lex $P509, "$past"
    find_lex $P510, "$pasttype"
    $P509."pasttype"($P510)
  if_502_end:
.annotate "line", 153
    find_lex $P522, "$/"
    find_lex $P523, "$past"
    $P524 = $P522."!make"($P523)
.annotate "line", 142
    .return ($P524)
  control_490:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P525, exception, "payload"
    .return ($P525)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<for>"  :subid("36_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_530
.annotate "line", 156
    get_root_global $P528, ["parrot";"PCT"], "reuse529_1261201532.46777"
    unless_null $P528, reuse529
    new $P528, ["ExceptionHandler"]
    $P528."handle_types"(58)
  reuse529:
    set_addr $P528, control_527
    push_eh $P528
    .lex "self", self
    .lex "$/", param_530
.annotate "line", 157
    new $P531, "Undef"
    .lex "$past", $P531
.annotate "line", 159
    new $P532, "Undef"
    .lex "$block", $P532
.annotate "line", 157
    find_lex $P533, "$/"
    unless_null $P533, vivify_226
    new $P533, "Hash"
  vivify_226:
    set $P534, $P533["xblock"]
    unless_null $P534, vivify_227
    new $P534, "Undef"
  vivify_227:
    $P535 = $P534."ast"()
    store_lex "$past", $P535
.annotate "line", 158
    find_lex $P536, "$past"
    $P536."pasttype"("for")
.annotate "line", 159
    find_lex $P537, "$past"
    unless_null $P537, vivify_228
    new $P537, "ResizablePMCArray"
  vivify_228:
    set $P538, $P537[1]
    unless_null $P538, vivify_229
    new $P538, "Undef"
  vivify_229:
    store_lex "$block", $P538
.annotate "line", 160
    find_lex $P540, "$block"
    $P541 = $P540."arity"()
    if $P541, unless_539_end
.annotate "line", 161
    find_lex $P542, "$block"
    unless_null $P542, vivify_230
    new $P542, "ResizablePMCArray"
  vivify_230:
    set $P543, $P542[0]
    unless_null $P543, vivify_231
    new $P543, "Undef"
  vivify_231:
    get_hll_global $P544, ["PAST"], "Var"
    $P545 = $P544."new"("$_" :named("name"), "parameter" :named("scope"))
    $P543."push"($P545)
.annotate "line", 162
    find_lex $P546, "$block"
    $P546."symbol"("$_", "lexical" :named("scope"))
.annotate "line", 163
    find_lex $P547, "$block"
    $P547."arity"(1)
  unless_539_end:
.annotate "line", 165
    find_lex $P548, "$block"
    $P548."blocktype"("immediate")
.annotate "line", 166
    find_lex $P549, "$/"
    find_lex $P550, "$past"
    $P551 = $P549."!make"($P550)
.annotate "line", 156
    .return ($P551)
  control_527:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P552, exception, "payload"
    .return ($P552)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<return>"  :subid("37_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_557
.annotate "line", 169
    get_root_global $P555, ["parrot";"PCT"], "reuse556_1261201532.48092"
    unless_null $P555, reuse556
    new $P555, ["ExceptionHandler"]
    $P555."handle_types"(58)
  reuse556:
    set_addr $P555, control_554
    push_eh $P555
    .lex "self", self
    .lex "$/", param_557
.annotate "line", 170
    find_lex $P558, "$/"
    get_hll_global $P559, ["PAST"], "Op"
    find_lex $P560, "$/"
    unless_null $P560, vivify_232
    new $P560, "Hash"
  vivify_232:
    set $P561, $P560["EXPR"]
    unless_null $P561, vivify_233
    new $P561, "Undef"
  vivify_233:
    $P562 = $P561."ast"()
    find_lex $P563, "$/"
    $P564 = $P559."new"($P562, "return" :named("pasttype"), $P563 :named("node"))
    $P565 = $P558."!make"($P564)
.annotate "line", 169
    .return ($P565)
  control_554:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P566, exception, "payload"
    .return ($P566)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<CATCH>"  :subid("38_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_571
.annotate "line", 173
    get_root_global $P569, ["parrot";"PCT"], "reuse570_1261201532.48622"
    unless_null $P569, reuse570
    new $P569, ["ExceptionHandler"]
    $P569."handle_types"(58)
  reuse570:
    set_addr $P569, control_568
    push_eh $P569
    .lex "self", self
    .lex "$/", param_571
.annotate "line", 174
    new $P572, "Undef"
    .lex "$block", $P572
    find_lex $P573, "$/"
    unless_null $P573, vivify_234
    new $P573, "Hash"
  vivify_234:
    set $P574, $P573["block"]
    unless_null $P574, vivify_235
    new $P574, "Undef"
  vivify_235:
    $P575 = $P574."ast"()
    store_lex "$block", $P575
.annotate "line", 175
    find_lex $P576, "$/"
    find_lex $P577, "$block"
    "push_block_handler"($P576, $P577)
.annotate "line", 176
    get_global $P578, "@BLOCK"
    unless_null $P578, vivify_236
    new $P578, "ResizablePMCArray"
  vivify_236:
    set $P579, $P578[0]
    unless_null $P579, vivify_237
    new $P579, "Undef"
  vivify_237:
    $P580 = $P579."handlers"()
    set $P581, $P580[0]
    unless_null $P581, vivify_238
    new $P581, "Undef"
  vivify_238:
    $P581."handle_types_except"("CONTROL")
.annotate "line", 177
    find_lex $P582, "$/"
    get_hll_global $P583, ["PAST"], "Stmts"
    find_lex $P584, "$/"
    $P585 = $P583."new"($P584 :named("node"))
    $P586 = $P582."!make"($P585)
.annotate "line", 173
    .return ($P586)
  control_568:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P587, exception, "payload"
    .return ($P587)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<CONTROL>"  :subid("39_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_592
.annotate "line", 180
    get_root_global $P590, ["parrot";"PCT"], "reuse591_1261201532.49493"
    unless_null $P590, reuse591
    new $P590, ["ExceptionHandler"]
    $P590."handle_types"(58)
  reuse591:
    set_addr $P590, control_589
    push_eh $P590
    .lex "self", self
    .lex "$/", param_592
.annotate "line", 181
    new $P593, "Undef"
    .lex "$block", $P593
    find_lex $P594, "$/"
    unless_null $P594, vivify_239
    new $P594, "Hash"
  vivify_239:
    set $P595, $P594["block"]
    unless_null $P595, vivify_240
    new $P595, "Undef"
  vivify_240:
    $P596 = $P595."ast"()
    store_lex "$block", $P596
.annotate "line", 182
    find_lex $P597, "$/"
    find_lex $P598, "$block"
    "push_block_handler"($P597, $P598)
.annotate "line", 183
    get_global $P599, "@BLOCK"
    unless_null $P599, vivify_241
    new $P599, "ResizablePMCArray"
  vivify_241:
    set $P600, $P599[0]
    unless_null $P600, vivify_242
    new $P600, "Undef"
  vivify_242:
    $P601 = $P600."handlers"()
    set $P602, $P601[0]
    unless_null $P602, vivify_243
    new $P602, "Undef"
  vivify_243:
    $P602."handle_types"("CONTROL")
.annotate "line", 184
    find_lex $P603, "$/"
    get_hll_global $P604, ["PAST"], "Stmts"
    find_lex $P605, "$/"
    $P606 = $P604."new"($P605 :named("node"))
    $P607 = $P603."!make"($P606)
.annotate "line", 180
    .return ($P607)
  control_589:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P608, exception, "payload"
    .return ($P608)
.end


.namespace ["NQP";"Actions"]
.sub "statement_prefix:sym<INIT>"  :subid("40_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_614
.annotate "line", 224
    get_root_global $P612, ["parrot";"PCT"], "reuse613_1261201532.50395"
    unless_null $P612, reuse613
    new $P612, ["ExceptionHandler"]
    $P612."handle_types"(58)
  reuse613:
    set_addr $P612, control_611
    push_eh $P612
    .lex "self", self
    .lex "$/", param_614
.annotate "line", 225
    get_global $P615, "@BLOCK"
    unless_null $P615, vivify_244
    new $P615, "ResizablePMCArray"
  vivify_244:
    set $P616, $P615[0]
    unless_null $P616, vivify_245
    new $P616, "Undef"
  vivify_245:
    $P617 = $P616."loadinit"()
    find_lex $P618, "$/"
    unless_null $P618, vivify_246
    new $P618, "Hash"
  vivify_246:
    set $P619, $P618["blorst"]
    unless_null $P619, vivify_247
    new $P619, "Undef"
  vivify_247:
    $P620 = $P619."ast"()
    $P617."push"($P620)
.annotate "line", 226
    find_lex $P621, "$/"
    get_hll_global $P622, ["PAST"], "Stmts"
    find_lex $P623, "$/"
    $P624 = $P622."new"($P623 :named("node"))
    $P625 = $P621."!make"($P624)
.annotate "line", 224
    .return ($P625)
  control_611:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P626, exception, "payload"
    .return ($P626)
.end


.namespace ["NQP";"Actions"]
.sub "statement_prefix:sym<try>"  :subid("41_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_631
.annotate "line", 229
    get_root_global $P629, ["parrot";"PCT"], "reuse630_1261201532.51054"
    unless_null $P629, reuse630
    new $P629, ["ExceptionHandler"]
    $P629."handle_types"(58)
  reuse630:
    set_addr $P629, control_628
    push_eh $P629
    .lex "self", self
    .lex "$/", param_631
.annotate "line", 230
    new $P632, "Undef"
    .lex "$past", $P632
    find_lex $P633, "$/"
    unless_null $P633, vivify_248
    new $P633, "Hash"
  vivify_248:
    set $P634, $P633["blorst"]
    unless_null $P634, vivify_249
    new $P634, "Undef"
  vivify_249:
    $P635 = $P634."ast"()
    store_lex "$past", $P635
.annotate "line", 231
    find_lex $P637, "$past"
    $S638 = $P637."WHAT"()
    isne $I639, $S638, "PAST::Block()"
    unless $I639, if_636_end
.annotate "line", 232
    get_hll_global $P640, ["PAST"], "Block"
    find_lex $P641, "$past"
    find_lex $P642, "$/"
    $P643 = $P640."new"($P641, "immediate" :named("blocktype"), $P642 :named("node"))
    store_lex "$past", $P643
  if_636_end:
.annotate "line", 234
    find_lex $P645, "$past"
    $P646 = $P645."handlers"()
    if $P646, unless_644_end
.annotate "line", 235
    find_lex $P647, "$past"
    get_hll_global $P648, ["PAST"], "Control"
.annotate "line", 237
    get_hll_global $P649, ["PAST"], "Stmts"
.annotate "line", 238
    get_hll_global $P650, ["PAST"], "Op"
.annotate "line", 239
    get_hll_global $P651, ["PAST"], "Var"
.annotate "line", 240
    get_hll_global $P652, ["PAST"], "Var"
    $P653 = $P652."new"("register" :named("scope"), "exception" :named("name"))
    $P654 = $P651."new"($P653, "handled", "keyed" :named("scope"))
.annotate "line", 239
    $P655 = $P650."new"($P654, 1, "bind" :named("pasttype"))
.annotate "line", 238
    $P656 = $P649."new"($P655)
.annotate "line", 237
    $P657 = $P648."new"($P656, "CONTROL" :named("handle_types_except"))
.annotate "line", 235
    new $P658, "ResizablePMCArray"
    push $P658, $P657
    $P647."handlers"($P658)
  unless_644_end:
.annotate "line", 249
    find_lex $P659, "$/"
    find_lex $P660, "$past"
    $P661 = $P659."!make"($P660)
.annotate "line", 229
    .return ($P661)
  control_628:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P662, exception, "payload"
    .return ($P662)
.end


.namespace ["NQP";"Actions"]
.sub "blorst"  :subid("42_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_667
.annotate "line", 252
    get_root_global $P665, ["parrot";"PCT"], "reuse666_1261201532.52564"
    unless_null $P665, reuse666
    new $P665, ["ExceptionHandler"]
    $P665."handle_types"(58)
  reuse666:
    set_addr $P665, control_664
    push_eh $P665
    .lex "self", self
    .lex "$/", param_667
.annotate "line", 253
    find_lex $P668, "$/"
.annotate "line", 254
    find_lex $P671, "$/"
    unless_null $P671, vivify_250
    new $P671, "Hash"
  vivify_250:
    set $P672, $P671["block"]
    unless_null $P672, vivify_251
    new $P672, "Undef"
  vivify_251:
    if $P672, if_670
.annotate "line", 255
    find_lex $P677, "$/"
    unless_null $P677, vivify_252
    new $P677, "Hash"
  vivify_252:
    set $P678, $P677["statement"]
    unless_null $P678, vivify_253
    new $P678, "Undef"
  vivify_253:
    $P679 = $P678."ast"()
    set $P669, $P679
.annotate "line", 254
    goto if_670_end
  if_670:
    find_lex $P673, "$/"
    unless_null $P673, vivify_254
    new $P673, "Hash"
  vivify_254:
    set $P674, $P673["block"]
    unless_null $P674, vivify_255
    new $P674, "Undef"
  vivify_255:
    $P675 = $P674."ast"()
    $P676 = "block_immediate"($P675)
    set $P669, $P676
  if_670_end:
    $P680 = $P668."!make"($P669)
.annotate "line", 252
    .return ($P680)
  control_664:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P681, exception, "payload"
    .return ($P681)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_cond:sym<if>"  :subid("43_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_686
.annotate "line", 260
    get_root_global $P684, ["parrot";"PCT"], "reuse685_1261201532.53282"
    unless_null $P684, reuse685
    new $P684, ["ExceptionHandler"]
    $P684."handle_types"(58)
  reuse685:
    set_addr $P684, control_683
    push_eh $P684
    .lex "self", self
    .lex "$/", param_686
    find_lex $P687, "$/"
    find_lex $P688, "$/"
    unless_null $P688, vivify_256
    new $P688, "Hash"
  vivify_256:
    set $P689, $P688["cond"]
    unless_null $P689, vivify_257
    new $P689, "Undef"
  vivify_257:
    $P690 = $P689."ast"()
    $P691 = $P687."!make"($P690)
    .return ($P691)
  control_683:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P692, exception, "payload"
    .return ($P692)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_cond:sym<unless>"  :subid("44_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_697
.annotate "line", 261
    get_root_global $P695, ["parrot";"PCT"], "reuse696_1261201532.53696"
    unless_null $P695, reuse696
    new $P695, ["ExceptionHandler"]
    $P695."handle_types"(58)
  reuse696:
    set_addr $P695, control_694
    push_eh $P695
    .lex "self", self
    .lex "$/", param_697
    find_lex $P698, "$/"
    find_lex $P699, "$/"
    unless_null $P699, vivify_258
    new $P699, "Hash"
  vivify_258:
    set $P700, $P699["cond"]
    unless_null $P700, vivify_259
    new $P700, "Undef"
  vivify_259:
    $P701 = $P700."ast"()
    $P702 = $P698."!make"($P701)
    .return ($P702)
  control_694:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P703, exception, "payload"
    .return ($P703)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_loop:sym<while>"  :subid("45_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_708
.annotate "line", 263
    get_root_global $P706, ["parrot";"PCT"], "reuse707_1261201532.5411"
    unless_null $P706, reuse707
    new $P706, ["ExceptionHandler"]
    $P706."handle_types"(58)
  reuse707:
    set_addr $P706, control_705
    push_eh $P706
    .lex "self", self
    .lex "$/", param_708
    find_lex $P709, "$/"
    find_lex $P710, "$/"
    unless_null $P710, vivify_260
    new $P710, "Hash"
  vivify_260:
    set $P711, $P710["cond"]
    unless_null $P711, vivify_261
    new $P711, "Undef"
  vivify_261:
    $P712 = $P711."ast"()
    $P713 = $P709."!make"($P712)
    .return ($P713)
  control_705:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P714, exception, "payload"
    .return ($P714)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_loop:sym<until>"  :subid("46_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_719
.annotate "line", 264
    get_root_global $P717, ["parrot";"PCT"], "reuse718_1261201532.54524"
    unless_null $P717, reuse718
    new $P717, ["ExceptionHandler"]
    $P717."handle_types"(58)
  reuse718:
    set_addr $P717, control_716
    push_eh $P717
    .lex "self", self
    .lex "$/", param_719
    find_lex $P720, "$/"
    find_lex $P721, "$/"
    unless_null $P721, vivify_262
    new $P721, "Hash"
  vivify_262:
    set $P722, $P721["cond"]
    unless_null $P722, vivify_263
    new $P722, "Undef"
  vivify_263:
    $P723 = $P722."ast"()
    $P724 = $P720."!make"($P723)
    .return ($P724)
  control_716:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P725, exception, "payload"
    .return ($P725)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<fatarrow>"  :subid("47_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_730
.annotate "line", 268
    get_root_global $P728, ["parrot";"PCT"], "reuse729_1261201532.54938"
    unless_null $P728, reuse729
    new $P728, ["ExceptionHandler"]
    $P728."handle_types"(58)
  reuse729:
    set_addr $P728, control_727
    push_eh $P728
    .lex "self", self
    .lex "$/", param_730
    find_lex $P731, "$/"
    find_lex $P732, "$/"
    unless_null $P732, vivify_264
    new $P732, "Hash"
  vivify_264:
    set $P733, $P732["fatarrow"]
    unless_null $P733, vivify_265
    new $P733, "Undef"
  vivify_265:
    $P734 = $P733."ast"()
    $P735 = $P731."!make"($P734)
    .return ($P735)
  control_727:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P736, exception, "payload"
    .return ($P736)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<colonpair>"  :subid("48_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_741
.annotate "line", 269
    get_root_global $P739, ["parrot";"PCT"], "reuse740_1261201532.55358"
    unless_null $P739, reuse740
    new $P739, ["ExceptionHandler"]
    $P739."handle_types"(58)
  reuse740:
    set_addr $P739, control_738
    push_eh $P739
    .lex "self", self
    .lex "$/", param_741
    find_lex $P742, "$/"
    find_lex $P743, "$/"
    unless_null $P743, vivify_266
    new $P743, "Hash"
  vivify_266:
    set $P744, $P743["colonpair"]
    unless_null $P744, vivify_267
    new $P744, "Undef"
  vivify_267:
    $P745 = $P744."ast"()
    $P746 = $P742."!make"($P745)
    .return ($P746)
  control_738:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P747, exception, "payload"
    .return ($P747)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<variable>"  :subid("49_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_752
.annotate "line", 270
    get_root_global $P750, ["parrot";"PCT"], "reuse751_1261201532.55778"
    unless_null $P750, reuse751
    new $P750, ["ExceptionHandler"]
    $P750."handle_types"(58)
  reuse751:
    set_addr $P750, control_749
    push_eh $P750
    .lex "self", self
    .lex "$/", param_752
    find_lex $P753, "$/"
    find_lex $P754, "$/"
    unless_null $P754, vivify_268
    new $P754, "Hash"
  vivify_268:
    set $P755, $P754["variable"]
    unless_null $P755, vivify_269
    new $P755, "Undef"
  vivify_269:
    $P756 = $P755."ast"()
    $P757 = $P753."!make"($P756)
    .return ($P757)
  control_749:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P758, exception, "payload"
    .return ($P758)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<package_declarator>"  :subid("50_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_763
.annotate "line", 271
    get_root_global $P761, ["parrot";"PCT"], "reuse762_1261201532.56197"
    unless_null $P761, reuse762
    new $P761, ["ExceptionHandler"]
    $P761."handle_types"(58)
  reuse762:
    set_addr $P761, control_760
    push_eh $P761
    .lex "self", self
    .lex "$/", param_763
    find_lex $P764, "$/"
    find_lex $P765, "$/"
    unless_null $P765, vivify_270
    new $P765, "Hash"
  vivify_270:
    set $P766, $P765["package_declarator"]
    unless_null $P766, vivify_271
    new $P766, "Undef"
  vivify_271:
    $P767 = $P766."ast"()
    $P768 = $P764."!make"($P767)
    .return ($P768)
  control_760:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P769, exception, "payload"
    .return ($P769)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<scope_declarator>"  :subid("51_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_774
.annotate "line", 272
    get_root_global $P772, ["parrot";"PCT"], "reuse773_1261201532.56613"
    unless_null $P772, reuse773
    new $P772, ["ExceptionHandler"]
    $P772."handle_types"(58)
  reuse773:
    set_addr $P772, control_771
    push_eh $P772
    .lex "self", self
    .lex "$/", param_774
    find_lex $P775, "$/"
    find_lex $P776, "$/"
    unless_null $P776, vivify_272
    new $P776, "Hash"
  vivify_272:
    set $P777, $P776["scope_declarator"]
    unless_null $P777, vivify_273
    new $P777, "Undef"
  vivify_273:
    $P778 = $P777."ast"()
    $P779 = $P775."!make"($P778)
    .return ($P779)
  control_771:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P780, exception, "payload"
    .return ($P780)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<routine_declarator>"  :subid("52_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_785
.annotate "line", 273
    get_root_global $P783, ["parrot";"PCT"], "reuse784_1261201532.57028"
    unless_null $P783, reuse784
    new $P783, ["ExceptionHandler"]
    $P783."handle_types"(58)
  reuse784:
    set_addr $P783, control_782
    push_eh $P783
    .lex "self", self
    .lex "$/", param_785
    find_lex $P786, "$/"
    find_lex $P787, "$/"
    unless_null $P787, vivify_274
    new $P787, "Hash"
  vivify_274:
    set $P788, $P787["routine_declarator"]
    unless_null $P788, vivify_275
    new $P788, "Undef"
  vivify_275:
    $P789 = $P788."ast"()
    $P790 = $P786."!make"($P789)
    .return ($P790)
  control_782:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P791, exception, "payload"
    .return ($P791)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<regex_declarator>"  :subid("53_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_796
.annotate "line", 274
    get_root_global $P794, ["parrot";"PCT"], "reuse795_1261201532.57446"
    unless_null $P794, reuse795
    new $P794, ["ExceptionHandler"]
    $P794."handle_types"(58)
  reuse795:
    set_addr $P794, control_793
    push_eh $P794
    .lex "self", self
    .lex "$/", param_796
    find_lex $P797, "$/"
    find_lex $P798, "$/"
    unless_null $P798, vivify_276
    new $P798, "Hash"
  vivify_276:
    set $P799, $P798["regex_declarator"]
    unless_null $P799, vivify_277
    new $P799, "Undef"
  vivify_277:
    $P800 = $P799."ast"()
    $P801 = $P797."!make"($P800)
    .return ($P801)
  control_793:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P802, exception, "payload"
    .return ($P802)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<statement_prefix>"  :subid("54_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_807
.annotate "line", 275
    get_root_global $P805, ["parrot";"PCT"], "reuse806_1261201532.5786"
    unless_null $P805, reuse806
    new $P805, ["ExceptionHandler"]
    $P805."handle_types"(58)
  reuse806:
    set_addr $P805, control_804
    push_eh $P805
    .lex "self", self
    .lex "$/", param_807
    find_lex $P808, "$/"
    find_lex $P809, "$/"
    unless_null $P809, vivify_278
    new $P809, "Hash"
  vivify_278:
    set $P810, $P809["statement_prefix"]
    unless_null $P810, vivify_279
    new $P810, "Undef"
  vivify_279:
    $P811 = $P810."ast"()
    $P812 = $P808."!make"($P811)
    .return ($P812)
  control_804:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P813, exception, "payload"
    .return ($P813)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<lambda>"  :subid("55_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_818
.annotate "line", 276
    get_root_global $P816, ["parrot";"PCT"], "reuse817_1261201532.5828"
    unless_null $P816, reuse817
    new $P816, ["ExceptionHandler"]
    $P816."handle_types"(58)
  reuse817:
    set_addr $P816, control_815
    push_eh $P816
    .lex "self", self
    .lex "$/", param_818
    find_lex $P819, "$/"
    find_lex $P820, "$/"
    unless_null $P820, vivify_280
    new $P820, "Hash"
  vivify_280:
    set $P821, $P820["pblock"]
    unless_null $P821, vivify_281
    new $P821, "Undef"
  vivify_281:
    $P822 = $P821."ast"()
    $P823 = $P819."!make"($P822)
    .return ($P823)
  control_815:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P824, exception, "payload"
    .return ($P824)
.end


.namespace ["NQP";"Actions"]
.sub "fatarrow"  :subid("56_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_829
.annotate "line", 278
    get_root_global $P827, ["parrot";"PCT"], "reuse828_1261201532.58694"
    unless_null $P827, reuse828
    new $P827, ["ExceptionHandler"]
    $P827."handle_types"(58)
  reuse828:
    set_addr $P827, control_826
    push_eh $P827
    .lex "self", self
    .lex "$/", param_829
.annotate "line", 279
    new $P830, "Undef"
    .lex "$past", $P830
    find_lex $P831, "$/"
    unless_null $P831, vivify_282
    new $P831, "Hash"
  vivify_282:
    set $P832, $P831["val"]
    unless_null $P832, vivify_283
    new $P832, "Undef"
  vivify_283:
    $P833 = $P832."ast"()
    store_lex "$past", $P833
.annotate "line", 280
    find_lex $P834, "$past"
    find_lex $P835, "$/"
    unless_null $P835, vivify_284
    new $P835, "Hash"
  vivify_284:
    set $P836, $P835["key"]
    unless_null $P836, vivify_285
    new $P836, "Undef"
  vivify_285:
    $P837 = $P836."Str"()
    $P834."named"($P837)
.annotate "line", 281
    find_lex $P838, "$/"
    find_lex $P839, "$past"
    $P840 = $P838."!make"($P839)
.annotate "line", 278
    .return ($P840)
  control_826:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P841, exception, "payload"
    .return ($P841)
.end


.namespace ["NQP";"Actions"]
.sub "colonpair"  :subid("57_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_846
.annotate "line", 284
    get_root_global $P844, ["parrot";"PCT"], "reuse845_1261201532.59389"
    unless_null $P844, reuse845
    new $P844, ["ExceptionHandler"]
    $P844."handle_types"(58)
  reuse845:
    set_addr $P844, control_843
    push_eh $P844
    .lex "self", self
    .lex "$/", param_846
.annotate "line", 285
    new $P847, "Undef"
    .lex "$past", $P847
.annotate "line", 286
    find_lex $P850, "$/"
    unless_null $P850, vivify_286
    new $P850, "Hash"
  vivify_286:
    set $P851, $P850["circumfix"]
    unless_null $P851, vivify_287
    new $P851, "Undef"
  vivify_287:
    if $P851, if_849
.annotate "line", 287
    get_hll_global $P856, ["PAST"], "Val"
    find_lex $P857, "$/"
    unless_null $P857, vivify_288
    new $P857, "Hash"
  vivify_288:
    set $P858, $P857["not"]
    unless_null $P858, vivify_289
    new $P858, "Undef"
  vivify_289:
    isfalse $I859, $P858
    $P860 = $P856."new"($I859 :named("value"))
    set $P848, $P860
.annotate "line", 286
    goto if_849_end
  if_849:
    find_lex $P852, "$/"
    unless_null $P852, vivify_290
    new $P852, "Hash"
  vivify_290:
    set $P853, $P852["circumfix"]
    unless_null $P853, vivify_291
    new $P853, "ResizablePMCArray"
  vivify_291:
    set $P854, $P853[0]
    unless_null $P854, vivify_292
    new $P854, "Undef"
  vivify_292:
    $P855 = $P854."ast"()
    set $P848, $P855
  if_849_end:
    store_lex "$past", $P848
.annotate "line", 288
    find_lex $P861, "$past"
    find_lex $P862, "$/"
    unless_null $P862, vivify_293
    new $P862, "Hash"
  vivify_293:
    set $P863, $P862["identifier"]
    unless_null $P863, vivify_294
    new $P863, "Undef"
  vivify_294:
    set $S864, $P863
    $P861."named"($S864)
.annotate "line", 289
    find_lex $P865, "$/"
    find_lex $P866, "$past"
    $P867 = $P865."!make"($P866)
.annotate "line", 284
    .return ($P867)
  control_843:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P868, exception, "payload"
    .return ($P868)
.end


.namespace ["NQP";"Actions"]
.sub "variable"  :subid("58_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_873
.annotate "line", 292
    .const 'Sub' $P886 = "59_1261201532.26144" 
    capture_lex $P886
    get_root_global $P871, ["parrot";"PCT"], "reuse872_1261201532.60489"
    unless_null $P871, reuse872
    new $P871, ["ExceptionHandler"]
    $P871."handle_types"(58)
  reuse872:
    set_addr $P871, control_870
    push_eh $P871
    .lex "self", self
    .lex "$/", param_873
.annotate "line", 293
    new $P874, "Undef"
    .lex "$past", $P874
.annotate "line", 292
    find_lex $P875, "$past"
.annotate "line", 294
    find_lex $P877, "$/"
    unless_null $P877, vivify_295
    new $P877, "Hash"
  vivify_295:
    set $P878, $P877["postcircumfix"]
    unless_null $P878, vivify_296
    new $P878, "Undef"
  vivify_296:
    if $P878, if_876
.annotate "line", 298
    .const 'Sub' $P886 = "59_1261201532.26144" 
    capture_lex $P886
    $P886()
    goto if_876_end
  if_876:
.annotate "line", 295
    find_lex $P879, "$/"
    unless_null $P879, vivify_313
    new $P879, "Hash"
  vivify_313:
    set $P880, $P879["postcircumfix"]
    unless_null $P880, vivify_314
    new $P880, "Undef"
  vivify_314:
    $P881 = $P880."ast"()
    store_lex "$past", $P881
.annotate "line", 296
    find_lex $P882, "$past"
    get_hll_global $P883, ["PAST"], "Var"
    $P884 = $P883."new"("$/" :named("name"))
    $P882."unshift"($P884)
  if_876_end:
.annotate "line", 327
    find_lex $P955, "$/"
    find_lex $P956, "$past"
    $P957 = $P955."!make"($P956)
.annotate "line", 292
    .return ($P957)
  control_870:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P958, exception, "payload"
    .return ($P958)
.end


.namespace ["NQP";"Actions"]
.sub "_block885"  :anon :subid("59_1261201532.26144") :outer("58_1261201532.26144")
.annotate "line", 299
    new $P887, "ResizablePMCArray"
    .lex "@name", $P887
    get_hll_global $P888, ["NQP"], "Compiler"
    find_lex $P889, "$/"
    set $S890, $P889
    $P891 = $P888."parse_name"($S890)
    store_lex "@name", $P891
.annotate "line", 300
    get_hll_global $P892, ["PAST"], "Var"
    find_lex $P893, "@name"
    $P894 = $P893."pop"()
    set $S895, $P894
    $P896 = $P892."new"($S895 :named("name"))
    store_lex "$past", $P896
.annotate "line", 301
    find_lex $P898, "@name"
    unless $P898, if_897_end
.annotate "line", 302
    find_lex $P900, "@name"
    unless_null $P900, vivify_297
    new $P900, "ResizablePMCArray"
  vivify_297:
    set $P901, $P900[0]
    unless_null $P901, vivify_298
    new $P901, "Undef"
  vivify_298:
    set $S902, $P901
    iseq $I903, $S902, "GLOBAL"
    unless $I903, if_899_end
    find_lex $P904, "@name"
    $P904."shift"()
  if_899_end:
.annotate "line", 303
    find_lex $P905, "$past"
    find_lex $P906, "@name"
    $P905."namespace"($P906)
.annotate "line", 304
    find_lex $P907, "$past"
    $P907."scope"("package")
.annotate "line", 305
    find_lex $P908, "$past"
    find_lex $P909, "$/"
    unless_null $P909, vivify_299
    new $P909, "Hash"
  vivify_299:
    set $P910, $P909["sigil"]
    unless_null $P910, vivify_300
    new $P910, "Undef"
  vivify_300:
    $P911 = "sigiltype"($P910)
    $P908."viviself"($P911)
.annotate "line", 306
    find_lex $P912, "$past"
    $P912."lvalue"(1)
  if_897_end:
.annotate "line", 308
    find_lex $P915, "$/"
    unless_null $P915, vivify_301
    new $P915, "Hash"
  vivify_301:
    set $P916, $P915["twigil"]
    unless_null $P916, vivify_302
    new $P916, "ResizablePMCArray"
  vivify_302:
    set $P917, $P916[0]
    unless_null $P917, vivify_303
    new $P917, "Undef"
  vivify_303:
    set $S918, $P917
    iseq $I919, $S918, "*"
    if $I919, if_914
.annotate "line", 321
    find_lex $P941, "$/"
    unless_null $P941, vivify_304
    new $P941, "Hash"
  vivify_304:
    set $P942, $P941["twigil"]
    unless_null $P942, vivify_305
    new $P942, "ResizablePMCArray"
  vivify_305:
    set $P943, $P942[0]
    unless_null $P943, vivify_306
    new $P943, "Undef"
  vivify_306:
    set $S944, $P943
    iseq $I945, $S944, "!"
    if $I945, if_940
    new $P939, 'Integer'
    set $P939, $I945
    goto if_940_end
  if_940:
.annotate "line", 322
    find_lex $P946, "$past"
    get_hll_global $P947, ["PAST"], "Var"
    $P948 = $P947."new"("self" :named("name"))
    $P946."push"($P948)
.annotate "line", 323
    find_lex $P949, "$past"
    $P949."scope"("attribute")
.annotate "line", 324
    find_lex $P950, "$past"
    find_lex $P951, "$/"
    unless_null $P951, vivify_307
    new $P951, "Hash"
  vivify_307:
    set $P952, $P951["sigil"]
    unless_null $P952, vivify_308
    new $P952, "Undef"
  vivify_308:
    $P953 = "sigiltype"($P952)
    $P954 = $P950."viviself"($P953)
.annotate "line", 321
    set $P939, $P954
  if_940_end:
    set $P913, $P939
.annotate "line", 308
    goto if_914_end
  if_914:
.annotate "line", 309
    find_lex $P920, "$past"
    $P920."scope"("contextual")
.annotate "line", 310
    find_lex $P921, "$past"
.annotate "line", 311
    get_hll_global $P922, ["PAST"], "Var"
.annotate "line", 313
    find_lex $P923, "$/"
    unless_null $P923, vivify_309
    new $P923, "Hash"
  vivify_309:
    set $P924, $P923["sigil"]
    unless_null $P924, vivify_310
    new $P924, "Undef"
  vivify_310:
    set $S925, $P924
    new $P926, 'String'
    set $P926, $S925
    find_lex $P927, "$/"
    unless_null $P927, vivify_311
    new $P927, "Hash"
  vivify_311:
    set $P928, $P927["desigilname"]
    unless_null $P928, vivify_312
    new $P928, "Undef"
  vivify_312:
    concat $P929, $P926, $P928
.annotate "line", 315
    get_hll_global $P930, ["PAST"], "Op"
    new $P931, "String"
    assign $P931, "Contextual "
    find_lex $P932, "$/"
    set $S933, $P932
    concat $P934, $P931, $S933
    concat $P935, $P934, " not found"
    $P936 = $P930."new"($P935, "die" :named("pirop"))
    $P937 = $P922."new"("package" :named("scope"), "" :named("namespace"), $P929 :named("name"), $P936 :named("viviself"))
.annotate "line", 311
    $P938 = $P921."viviself"($P937)
.annotate "line", 308
    set $P913, $P938
  if_914_end:
.annotate "line", 298
    .return ($P913)
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<module>"  :subid("60_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_963
.annotate "line", 330
    get_root_global $P961, ["parrot";"PCT"], "reuse962_1261201532.64437"
    unless_null $P961, reuse962
    new $P961, ["ExceptionHandler"]
    $P961."handle_types"(58)
  reuse962:
    set_addr $P961, control_960
    push_eh $P961
    .lex "self", self
    .lex "$/", param_963
    find_lex $P964, "$/"
    find_lex $P965, "$/"
    unless_null $P965, vivify_315
    new $P965, "Hash"
  vivify_315:
    set $P966, $P965["package_def"]
    unless_null $P966, vivify_316
    new $P966, "Undef"
  vivify_316:
    $P967 = $P966."ast"()
    $P968 = $P964."!make"($P967)
    .return ($P968)
  control_960:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P969, exception, "payload"
    .return ($P969)
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<class>"  :subid("61_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_974
.annotate "line", 331
    get_root_global $P972, ["parrot";"PCT"], "reuse973_1261201532.64858"
    unless_null $P972, reuse973
    new $P972, ["ExceptionHandler"]
    $P972."handle_types"(58)
  reuse973:
    set_addr $P972, control_971
    push_eh $P972
    .lex "self", self
    .lex "$/", param_974
.annotate "line", 332
    new $P975, "Undef"
    .lex "$past", $P975
.annotate "line", 333
    new $P976, "Undef"
    .lex "$classinit", $P976
.annotate "line", 342
    new $P977, "Undef"
    .lex "$parent", $P977
.annotate "line", 332
    find_lex $P978, "$/"
    unless_null $P978, vivify_317
    new $P978, "Hash"
  vivify_317:
    set $P979, $P978["package_def"]
    unless_null $P979, vivify_318
    new $P979, "Undef"
  vivify_318:
    $P980 = $P979."ast"()
    store_lex "$past", $P980
.annotate "line", 334
    get_hll_global $P981, ["PAST"], "Op"
.annotate "line", 335
    get_hll_global $P982, ["PAST"], "Op"
    $P983 = $P982."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate "line", 338
    find_lex $P984, "$/"
    unless_null $P984, vivify_319
    new $P984, "Hash"
  vivify_319:
    set $P985, $P984["package_def"]
    unless_null $P985, vivify_320
    new $P985, "Hash"
  vivify_320:
    set $P986, $P985["name"]
    unless_null $P986, vivify_321
    new $P986, "Undef"
  vivify_321:
    set $S987, $P986
    $P988 = $P981."new"($P983, $S987, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 334
    store_lex "$classinit", $P988
.annotate "line", 342
    find_lex $P991, "$/"
    unless_null $P991, vivify_322
    new $P991, "Hash"
  vivify_322:
    set $P992, $P991["package_def"]
    unless_null $P992, vivify_323
    new $P992, "Hash"
  vivify_323:
    set $P993, $P992["parent"]
    unless_null $P993, vivify_324
    new $P993, "ResizablePMCArray"
  vivify_324:
    set $P994, $P993[0]
    unless_null $P994, vivify_325
    new $P994, "Undef"
  vivify_325:
    set $S995, $P994
    unless $S995, unless_990
    new $P989, 'String'
    set $P989, $S995
    goto unless_990_end
  unless_990:
.annotate "line", 343
    find_lex $P998, "$/"
    unless_null $P998, vivify_326
    new $P998, "Hash"
  vivify_326:
    set $P999, $P998["sym"]
    unless_null $P999, vivify_327
    new $P999, "Undef"
  vivify_327:
    set $S1000, $P999
    iseq $I1001, $S1000, "grammar"
    if $I1001, if_997
    new $P1003, "String"
    assign $P1003, ""
    set $P996, $P1003
    goto if_997_end
  if_997:
    new $P1002, "String"
    assign $P1002, "Regex::Cursor"
    set $P996, $P1002
  if_997_end:
    set $P989, $P996
  unless_990_end:
    store_lex "$parent", $P989
.annotate "line", 344
    find_lex $P1005, "$parent"
    unless $P1005, if_1004_end
.annotate "line", 345
    find_lex $P1006, "$classinit"
    get_hll_global $P1007, ["PAST"], "Val"
    find_lex $P1008, "$parent"
    $P1009 = $P1007."new"($P1008 :named("value"), "parent" :named("named"))
    $P1006."push"($P1009)
  if_1004_end:
.annotate "line", 347
    find_lex $P1011, "$past"
    unless_null $P1011, vivify_328
    new $P1011, "Hash"
  vivify_328:
    set $P1012, $P1011["attributes"]
    unless_null $P1012, vivify_329
    new $P1012, "Undef"
  vivify_329:
    unless $P1012, if_1010_end
.annotate "line", 348
    find_lex $P1013, "$classinit"
    find_lex $P1014, "$past"
    unless_null $P1014, vivify_330
    new $P1014, "Hash"
  vivify_330:
    set $P1015, $P1014["attributes"]
    unless_null $P1015, vivify_331
    new $P1015, "Undef"
  vivify_331:
    $P1013."push"($P1015)
  if_1010_end:
.annotate "line", 350
    get_global $P1016, "@BLOCK"
    unless_null $P1016, vivify_332
    new $P1016, "ResizablePMCArray"
  vivify_332:
    set $P1017, $P1016[0]
    unless_null $P1017, vivify_333
    new $P1017, "Undef"
  vivify_333:
    $P1018 = $P1017."loadinit"()
    find_lex $P1019, "$classinit"
    $P1018."push"($P1019)
.annotate "line", 351
    find_lex $P1020, "$/"
    find_lex $P1021, "$past"
    $P1022 = $P1020."!make"($P1021)
.annotate "line", 331
    .return ($P1022)
  control_971:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1023, exception, "payload"
    .return ($P1023)
.end


.namespace ["NQP";"Actions"]
.sub "package_def"  :subid("62_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1028
.annotate "line", 354
    get_root_global $P1026, ["parrot";"PCT"], "reuse1027_1261201532.67208"
    unless_null $P1026, reuse1027
    new $P1026, ["ExceptionHandler"]
    $P1026."handle_types"(58)
  reuse1027:
    set_addr $P1026, control_1025
    push_eh $P1026
    .lex "self", self
    .lex "$/", param_1028
.annotate "line", 355
    new $P1029, "Undef"
    .lex "$past", $P1029
    find_lex $P1032, "$/"
    unless_null $P1032, vivify_334
    new $P1032, "Hash"
  vivify_334:
    set $P1033, $P1032["block"]
    unless_null $P1033, vivify_335
    new $P1033, "Undef"
  vivify_335:
    if $P1033, if_1031
    find_lex $P1037, "$/"
    unless_null $P1037, vivify_336
    new $P1037, "Hash"
  vivify_336:
    set $P1038, $P1037["comp_unit"]
    unless_null $P1038, vivify_337
    new $P1038, "Undef"
  vivify_337:
    $P1039 = $P1038."ast"()
    set $P1030, $P1039
    goto if_1031_end
  if_1031:
    find_lex $P1034, "$/"
    unless_null $P1034, vivify_338
    new $P1034, "Hash"
  vivify_338:
    set $P1035, $P1034["block"]
    unless_null $P1035, vivify_339
    new $P1035, "Undef"
  vivify_339:
    $P1036 = $P1035."ast"()
    set $P1030, $P1036
  if_1031_end:
    store_lex "$past", $P1030
.annotate "line", 356
    find_lex $P1040, "$past"
    find_lex $P1041, "$/"
    unless_null $P1041, vivify_340
    new $P1041, "Hash"
  vivify_340:
    set $P1042, $P1041["name"]
    unless_null $P1042, vivify_341
    new $P1042, "Hash"
  vivify_341:
    set $P1043, $P1042["identifier"]
    unless_null $P1043, vivify_342
    new $P1043, "Undef"
  vivify_342:
    $P1040."namespace"($P1043)
.annotate "line", 357
    find_lex $P1044, "$past"
    $P1044."blocktype"("immediate")
.annotate "line", 358
    find_lex $P1045, "$/"
    find_lex $P1046, "$past"
    $P1047 = $P1045."!make"($P1046)
.annotate "line", 354
    .return ($P1047)
  control_1025:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1048, exception, "payload"
    .return ($P1048)
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<my>"  :subid("63_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1053
.annotate "line", 361
    get_root_global $P1051, ["parrot";"PCT"], "reuse1052_1261201532.68287"
    unless_null $P1051, reuse1052
    new $P1051, ["ExceptionHandler"]
    $P1051."handle_types"(58)
  reuse1052:
    set_addr $P1051, control_1050
    push_eh $P1051
    .lex "self", self
    .lex "$/", param_1053
    find_lex $P1054, "$/"
    find_lex $P1055, "$/"
    unless_null $P1055, vivify_343
    new $P1055, "Hash"
  vivify_343:
    set $P1056, $P1055["scoped"]
    unless_null $P1056, vivify_344
    new $P1056, "Undef"
  vivify_344:
    $P1057 = $P1056."ast"()
    $P1058 = $P1054."!make"($P1057)
    .return ($P1058)
  control_1050:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1059, exception, "payload"
    .return ($P1059)
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<our>"  :subid("64_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1064
.annotate "line", 362
    get_root_global $P1062, ["parrot";"PCT"], "reuse1063_1261201532.68705"
    unless_null $P1062, reuse1063
    new $P1062, ["ExceptionHandler"]
    $P1062."handle_types"(58)
  reuse1063:
    set_addr $P1062, control_1061
    push_eh $P1062
    .lex "self", self
    .lex "$/", param_1064
    find_lex $P1065, "$/"
    find_lex $P1066, "$/"
    unless_null $P1066, vivify_345
    new $P1066, "Hash"
  vivify_345:
    set $P1067, $P1066["scoped"]
    unless_null $P1067, vivify_346
    new $P1067, "Undef"
  vivify_346:
    $P1068 = $P1067."ast"()
    $P1069 = $P1065."!make"($P1068)
    .return ($P1069)
  control_1061:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1070, exception, "payload"
    .return ($P1070)
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<has>"  :subid("65_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1075
.annotate "line", 363
    get_root_global $P1073, ["parrot";"PCT"], "reuse1074_1261201532.69125"
    unless_null $P1073, reuse1074
    new $P1073, ["ExceptionHandler"]
    $P1073."handle_types"(58)
  reuse1074:
    set_addr $P1073, control_1072
    push_eh $P1073
    .lex "self", self
    .lex "$/", param_1075
    find_lex $P1076, "$/"
    find_lex $P1077, "$/"
    unless_null $P1077, vivify_347
    new $P1077, "Hash"
  vivify_347:
    set $P1078, $P1077["scoped"]
    unless_null $P1078, vivify_348
    new $P1078, "Undef"
  vivify_348:
    $P1079 = $P1078."ast"()
    $P1080 = $P1076."!make"($P1079)
    .return ($P1080)
  control_1072:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1081, exception, "payload"
    .return ($P1081)
.end


.namespace ["NQP";"Actions"]
.sub "scoped"  :subid("66_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1086
.annotate "line", 365
    get_root_global $P1084, ["parrot";"PCT"], "reuse1085_1261201532.69545"
    unless_null $P1084, reuse1085
    new $P1084, ["ExceptionHandler"]
    $P1084."handle_types"(58)
  reuse1085:
    set_addr $P1084, control_1083
    push_eh $P1084
    .lex "self", self
    .lex "$/", param_1086
.annotate "line", 366
    find_lex $P1087, "$/"
.annotate "line", 367
    find_lex $P1090, "$/"
    unless_null $P1090, vivify_349
    new $P1090, "Hash"
  vivify_349:
    set $P1091, $P1090["routine_declarator"]
    unless_null $P1091, vivify_350
    new $P1091, "Undef"
  vivify_350:
    if $P1091, if_1089
.annotate "line", 368
    find_lex $P1095, "$/"
    unless_null $P1095, vivify_351
    new $P1095, "Hash"
  vivify_351:
    set $P1096, $P1095["variable_declarator"]
    unless_null $P1096, vivify_352
    new $P1096, "Undef"
  vivify_352:
    $P1097 = $P1096."ast"()
    set $P1088, $P1097
.annotate "line", 367
    goto if_1089_end
  if_1089:
    find_lex $P1092, "$/"
    unless_null $P1092, vivify_353
    new $P1092, "Hash"
  vivify_353:
    set $P1093, $P1092["routine_declarator"]
    unless_null $P1093, vivify_354
    new $P1093, "Undef"
  vivify_354:
    $P1094 = $P1093."ast"()
    set $P1088, $P1094
  if_1089_end:
    $P1098 = $P1087."!make"($P1088)
.annotate "line", 365
    .return ($P1098)
  control_1083:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1099, exception, "payload"
    .return ($P1099)
.end


.namespace ["NQP";"Actions"]
.sub "variable_declarator"  :subid("67_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1104
.annotate "line", 371
    .const 'Sub' $P1144 = "68_1261201532.26144" 
    capture_lex $P1144
    get_root_global $P1102, ["parrot";"PCT"], "reuse1103_1261201532.70238"
    unless_null $P1102, reuse1103
    new $P1102, ["ExceptionHandler"]
    $P1102."handle_types"(58)
  reuse1103:
    set_addr $P1102, control_1101
    push_eh $P1102
    .lex "self", self
    .lex "$/", param_1104
.annotate "line", 372
    new $P1105, "Undef"
    .lex "$past", $P1105
.annotate "line", 373
    new $P1106, "Undef"
    .lex "$sigil", $P1106
.annotate "line", 374
    new $P1107, "Undef"
    .lex "$name", $P1107
.annotate "line", 375
    new $P1108, "Undef"
    .lex "$BLOCK", $P1108
.annotate "line", 372
    find_lex $P1109, "$/"
    unless_null $P1109, vivify_355
    new $P1109, "Hash"
  vivify_355:
    set $P1110, $P1109["variable"]
    unless_null $P1110, vivify_356
    new $P1110, "Undef"
  vivify_356:
    $P1111 = $P1110."ast"()
    store_lex "$past", $P1111
.annotate "line", 373
    find_lex $P1112, "$/"
    unless_null $P1112, vivify_357
    new $P1112, "Hash"
  vivify_357:
    set $P1113, $P1112["variable"]
    unless_null $P1113, vivify_358
    new $P1113, "Hash"
  vivify_358:
    set $P1114, $P1113["sigil"]
    unless_null $P1114, vivify_359
    new $P1114, "Undef"
  vivify_359:
    store_lex "$sigil", $P1114
.annotate "line", 374
    find_lex $P1115, "$past"
    $P1116 = $P1115."name"()
    store_lex "$name", $P1116
.annotate "line", 375
    get_global $P1117, "@BLOCK"
    unless_null $P1117, vivify_360
    new $P1117, "ResizablePMCArray"
  vivify_360:
    set $P1118, $P1117[0]
    unless_null $P1118, vivify_361
    new $P1118, "Undef"
  vivify_361:
    store_lex "$BLOCK", $P1118
.annotate "line", 376
    find_lex $P1120, "$BLOCK"
    find_lex $P1121, "$name"
    $P1122 = $P1120."symbol"($P1121)
    unless $P1122, if_1119_end
.annotate "line", 377
    find_lex $P1123, "$/"
    $P1124 = $P1123."CURSOR"()
    find_lex $P1125, "$name"
    $P1124."panic"("Redeclaration of symbol ", $P1125)
  if_1119_end:
.annotate "line", 379
    find_dynamic_lex $P1127, "$*SCOPE"
    unless_null $P1127, vivify_362
    get_hll_global $P1127, "$SCOPE"
    unless_null $P1127, vivify_363
    die "Contextual $*SCOPE not found"
  vivify_363:
  vivify_362:
    set $S1128, $P1127
    iseq $I1129, $S1128, "has"
    if $I1129, if_1126
.annotate "line", 388
    .const 'Sub' $P1144 = "68_1261201532.26144" 
    capture_lex $P1144
    $P1144()
    goto if_1126_end
  if_1126:
.annotate "line", 380
    find_lex $P1130, "$BLOCK"
    find_lex $P1131, "$name"
    $P1130."symbol"($P1131, "attribute" :named("scope"))
.annotate "line", 381
    find_lex $P1133, "$BLOCK"
    unless_null $P1133, vivify_368
    new $P1133, "Hash"
  vivify_368:
    set $P1134, $P1133["attributes"]
    unless_null $P1134, vivify_369
    new $P1134, "Undef"
  vivify_369:
    if $P1134, unless_1132_end
.annotate "line", 383
    get_hll_global $P1135, ["PAST"], "Op"
    $P1136 = $P1135."new"("list" :named("pasttype"), "attr" :named("named"))
    find_lex $P1137, "$BLOCK"
    unless_null $P1137, vivify_370
    new $P1137, "Hash"
    store_lex "$BLOCK", $P1137
  vivify_370:
    set $P1137["attributes"], $P1136
  unless_1132_end:
.annotate "line", 385
    find_lex $P1138, "$BLOCK"
    unless_null $P1138, vivify_371
    new $P1138, "Hash"
  vivify_371:
    set $P1139, $P1138["attributes"]
    unless_null $P1139, vivify_372
    new $P1139, "Undef"
  vivify_372:
    find_lex $P1140, "$name"
    $P1139."push"($P1140)
.annotate "line", 386
    get_hll_global $P1141, ["PAST"], "Stmts"
    $P1142 = $P1141."new"()
    store_lex "$past", $P1142
  if_1126_end:
.annotate "line", 396
    find_lex $P1168, "$/"
    find_lex $P1169, "$past"
    $P1170 = $P1168."!make"($P1169)
.annotate "line", 371
    .return ($P1170)
  control_1101:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1171, exception, "payload"
    .return ($P1171)
.end


.namespace ["NQP";"Actions"]
.sub "_block1143"  :anon :subid("68_1261201532.26144") :outer("67_1261201532.26144")
.annotate "line", 389
    new $P1145, "Undef"
    .lex "$scope", $P1145
.annotate "line", 390
    new $P1146, "Undef"
    .lex "$decl", $P1146
.annotate "line", 389
    find_dynamic_lex $P1149, "$*SCOPE"
    unless_null $P1149, vivify_364
    get_hll_global $P1149, "$SCOPE"
    unless_null $P1149, vivify_365
    die "Contextual $*SCOPE not found"
  vivify_365:
  vivify_364:
    set $S1150, $P1149
    iseq $I1151, $S1150, "our"
    if $I1151, if_1148
    new $P1153, "String"
    assign $P1153, "lexical"
    set $P1147, $P1153
    goto if_1148_end
  if_1148:
    new $P1152, "String"
    assign $P1152, "package"
    set $P1147, $P1152
  if_1148_end:
    store_lex "$scope", $P1147
.annotate "line", 390
    get_hll_global $P1154, ["PAST"], "Var"
    find_lex $P1155, "$name"
    find_lex $P1156, "$scope"
.annotate "line", 391
    find_lex $P1157, "$sigil"
    $P1158 = "sigiltype"($P1157)
    find_lex $P1159, "$/"
    $P1160 = $P1154."new"($P1155 :named("name"), $P1156 :named("scope"), 1 :named("isdecl"), 1 :named("lvalue"), $P1158 :named("viviself"), $P1159 :named("node"))
.annotate "line", 390
    store_lex "$decl", $P1160
.annotate "line", 393
    find_lex $P1161, "$BLOCK"
    find_lex $P1162, "$name"
    find_lex $P1163, "$scope"
    $P1161."symbol"($P1162, $P1163 :named("scope"))
.annotate "line", 394
    find_lex $P1164, "$BLOCK"
    unless_null $P1164, vivify_366
    new $P1164, "ResizablePMCArray"
  vivify_366:
    set $P1165, $P1164[0]
    unless_null $P1165, vivify_367
    new $P1165, "Undef"
  vivify_367:
    find_lex $P1166, "$decl"
    $P1167 = $P1165."push"($P1166)
.annotate "line", 388
    .return ($P1167)
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<sub>"  :subid("69_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1176
.annotate "line", 399
    get_root_global $P1174, ["parrot";"PCT"], "reuse1175_1261201532.868"
    unless_null $P1174, reuse1175
    new $P1174, ["ExceptionHandler"]
    $P1174."handle_types"(58)
  reuse1175:
    set_addr $P1174, control_1173
    push_eh $P1174
    .lex "self", self
    .lex "$/", param_1176
    find_lex $P1177, "$/"
    find_lex $P1178, "$/"
    unless_null $P1178, vivify_373
    new $P1178, "Hash"
  vivify_373:
    set $P1179, $P1178["routine_def"]
    unless_null $P1179, vivify_374
    new $P1179, "Undef"
  vivify_374:
    $P1180 = $P1179."ast"()
    $P1181 = $P1177."!make"($P1180)
    .return ($P1181)
  control_1173:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1182, exception, "payload"
    .return ($P1182)
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<method>"  :subid("70_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1187
.annotate "line", 400
    get_root_global $P1185, ["parrot";"PCT"], "reuse1186_1261201532.8741"
    unless_null $P1185, reuse1186
    new $P1185, ["ExceptionHandler"]
    $P1185."handle_types"(58)
  reuse1186:
    set_addr $P1185, control_1184
    push_eh $P1185
    .lex "self", self
    .lex "$/", param_1187
    find_lex $P1188, "$/"
    find_lex $P1189, "$/"
    unless_null $P1189, vivify_375
    new $P1189, "Hash"
  vivify_375:
    set $P1190, $P1189["method_def"]
    unless_null $P1190, vivify_376
    new $P1190, "Undef"
  vivify_376:
    $P1191 = $P1190."ast"()
    $P1192 = $P1188."!make"($P1191)
    .return ($P1192)
  control_1184:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1193, exception, "payload"
    .return ($P1193)
.end


.namespace ["NQP";"Actions"]
.sub "routine_def"  :subid("71_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1198
.annotate "line", 402
    .const 'Sub' $P1209 = "72_1261201532.26144" 
    capture_lex $P1209
    get_root_global $P1196, ["parrot";"PCT"], "reuse1197_1261201532.87842"
    unless_null $P1196, reuse1197
    new $P1196, ["ExceptionHandler"]
    $P1196."handle_types"(58)
  reuse1197:
    set_addr $P1196, control_1195
    push_eh $P1196
    .lex "self", self
    .lex "$/", param_1198
.annotate "line", 403
    new $P1199, "Undef"
    .lex "$past", $P1199
    find_lex $P1200, "$/"
    unless_null $P1200, vivify_377
    new $P1200, "Hash"
  vivify_377:
    set $P1201, $P1200["blockoid"]
    unless_null $P1201, vivify_378
    new $P1201, "Undef"
  vivify_378:
    $P1202 = $P1201."ast"()
    store_lex "$past", $P1202
.annotate "line", 404
    find_lex $P1203, "$past"
    $P1203."blocktype"("declaration")
.annotate "line", 405
    find_lex $P1204, "$past"
    $P1204."control"("return_pir")
.annotate "line", 406
    find_lex $P1206, "$/"
    unless_null $P1206, vivify_379
    new $P1206, "Hash"
  vivify_379:
    set $P1207, $P1206["deflongname"]
    unless_null $P1207, vivify_380
    new $P1207, "Undef"
  vivify_380:
    unless $P1207, if_1205_end
    .const 'Sub' $P1209 = "72_1261201532.26144" 
    capture_lex $P1209
    $P1209()
  if_1205_end:
.annotate "line", 416
    find_lex $P1241, "$/"
    find_lex $P1242, "$past"
    $P1243 = $P1241."!make"($P1242)
.annotate "line", 402
    .return ($P1243)
  control_1195:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1244, exception, "payload"
    .return ($P1244)
.end


.namespace ["NQP";"Actions"]
.sub "_block1208"  :anon :subid("72_1261201532.26144") :outer("71_1261201532.26144")
.annotate "line", 407
    new $P1210, "Undef"
    .lex "$name", $P1210
    find_lex $P1211, "$/"
    unless_null $P1211, vivify_381
    new $P1211, "Hash"
  vivify_381:
    set $P1212, $P1211["sigil"]
    unless_null $P1212, vivify_382
    new $P1212, "ResizablePMCArray"
  vivify_382:
    set $P1213, $P1212[0]
    unless_null $P1213, vivify_383
    new $P1213, "Undef"
  vivify_383:
    set $S1214, $P1213
    new $P1215, 'String'
    set $P1215, $S1214
    find_lex $P1216, "$/"
    unless_null $P1216, vivify_384
    new $P1216, "Hash"
  vivify_384:
    set $P1217, $P1216["deflongname"]
    unless_null $P1217, vivify_385
    new $P1217, "ResizablePMCArray"
  vivify_385:
    set $P1218, $P1217[0]
    unless_null $P1218, vivify_386
    new $P1218, "Undef"
  vivify_386:
    $S1219 = $P1218."ast"()
    concat $P1220, $P1215, $S1219
    store_lex "$name", $P1220
.annotate "line", 408
    find_lex $P1221, "$past"
    find_lex $P1222, "$name"
    $P1221."name"($P1222)
.annotate "line", 409
    find_dynamic_lex $P1225, "$*SCOPE"
    unless_null $P1225, vivify_387
    get_hll_global $P1225, "$SCOPE"
    unless_null $P1225, vivify_388
    die "Contextual $*SCOPE not found"
  vivify_388:
  vivify_387:
    set $S1226, $P1225
    isne $I1227, $S1226, "our"
    if $I1227, if_1224
    new $P1223, 'Integer'
    set $P1223, $I1227
    goto if_1224_end
  if_1224:
.annotate "line", 410
    get_global $P1228, "@BLOCK"
    unless_null $P1228, vivify_389
    new $P1228, "ResizablePMCArray"
  vivify_389:
    set $P1229, $P1228[0]
    unless_null $P1229, vivify_390
    new $P1229, "ResizablePMCArray"
  vivify_390:
    set $P1230, $P1229[0]
    unless_null $P1230, vivify_391
    new $P1230, "Undef"
  vivify_391:
    get_hll_global $P1231, ["PAST"], "Var"
    find_lex $P1232, "$name"
    find_lex $P1233, "$past"
    $P1234 = $P1231."new"($P1232 :named("name"), 1 :named("isdecl"), $P1233 :named("viviself"), "lexical" :named("scope"))
    $P1230."push"($P1234)
.annotate "line", 412
    get_global $P1235, "@BLOCK"
    unless_null $P1235, vivify_392
    new $P1235, "ResizablePMCArray"
  vivify_392:
    set $P1236, $P1235[0]
    unless_null $P1236, vivify_393
    new $P1236, "Undef"
  vivify_393:
    find_lex $P1237, "$name"
    $P1236."symbol"($P1237, "lexical" :named("scope"))
.annotate "line", 413
    get_hll_global $P1238, ["PAST"], "Var"
    find_lex $P1239, "$name"
    $P1240 = $P1238."new"($P1239 :named("name"))
    store_lex "$past", $P1240
.annotate "line", 409
    set $P1223, $P1240
  if_1224_end:
.annotate "line", 406
    .return ($P1223)
.end


.namespace ["NQP";"Actions"]
.sub "method_def"  :subid("73_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1249
.annotate "line", 420
    .const 'Sub' $P1265 = "74_1261201532.26144" 
    capture_lex $P1265
    get_root_global $P1247, ["parrot";"PCT"], "reuse1248_1261201532.90252"
    unless_null $P1247, reuse1248
    new $P1247, ["ExceptionHandler"]
    $P1247."handle_types"(58)
  reuse1248:
    set_addr $P1247, control_1246
    push_eh $P1247
    .lex "self", self
    .lex "$/", param_1249
.annotate "line", 421
    new $P1250, "Undef"
    .lex "$past", $P1250
    find_lex $P1251, "$/"
    unless_null $P1251, vivify_394
    new $P1251, "Hash"
  vivify_394:
    set $P1252, $P1251["blockoid"]
    unless_null $P1252, vivify_395
    new $P1252, "Undef"
  vivify_395:
    $P1253 = $P1252."ast"()
    store_lex "$past", $P1253
.annotate "line", 422
    find_lex $P1254, "$past"
    $P1254."blocktype"("method")
.annotate "line", 423
    find_lex $P1255, "$past"
    $P1255."control"("return_pir")
.annotate "line", 424
    find_lex $P1256, "$past"
    unless_null $P1256, vivify_396
    new $P1256, "ResizablePMCArray"
  vivify_396:
    set $P1257, $P1256[0]
    unless_null $P1257, vivify_397
    new $P1257, "Undef"
  vivify_397:
    get_hll_global $P1258, ["PAST"], "Op"
    $P1259 = $P1258."new"("    .lex \"self\", self" :named("inline"))
    $P1257."unshift"($P1259)
.annotate "line", 425
    find_lex $P1260, "$past"
    $P1260."symbol"("self", "lexical" :named("scope"))
.annotate "line", 426
    find_lex $P1262, "$/"
    unless_null $P1262, vivify_398
    new $P1262, "Hash"
  vivify_398:
    set $P1263, $P1262["deflongname"]
    unless_null $P1263, vivify_399
    new $P1263, "Undef"
  vivify_399:
    unless $P1263, if_1261_end
    .const 'Sub' $P1265 = "74_1261201532.26144" 
    capture_lex $P1265
    $P1265()
  if_1261_end:
.annotate "line", 430
    find_lex $P1276, "$/"
    find_lex $P1277, "$past"
    $P1278 = $P1276."!make"($P1277)
.annotate "line", 420
    .return ($P1278)
  control_1246:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1279, exception, "payload"
    .return ($P1279)
.end


.namespace ["NQP";"Actions"]
.sub "_block1264"  :anon :subid("74_1261201532.26144") :outer("73_1261201532.26144")
.annotate "line", 427
    new $P1266, "Undef"
    .lex "$name", $P1266
    find_lex $P1267, "$/"
    unless_null $P1267, vivify_400
    new $P1267, "Hash"
  vivify_400:
    set $P1268, $P1267["deflongname"]
    unless_null $P1268, vivify_401
    new $P1268, "ResizablePMCArray"
  vivify_401:
    set $P1269, $P1268[0]
    unless_null $P1269, vivify_402
    new $P1269, "Undef"
  vivify_402:
    $P1270 = $P1269."ast"()
    set $S1271, $P1270
    new $P1272, 'String'
    set $P1272, $S1271
    store_lex "$name", $P1272
.annotate "line", 428
    find_lex $P1273, "$past"
    find_lex $P1274, "$name"
    $P1275 = $P1273."name"($P1274)
.annotate "line", 426
    .return ($P1275)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("75_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1284
.annotate "line", 434
    .const 'Sub' $P1295 = "76_1261201532.26144" 
    capture_lex $P1295
    get_root_global $P1282, ["parrot";"PCT"], "reuse1283_1261201532.91807"
    unless_null $P1282, reuse1283
    new $P1282, ["ExceptionHandler"]
    $P1282."handle_types"(58)
  reuse1283:
    set_addr $P1282, control_1281
    push_eh $P1282
    .lex "self", self
    .lex "$/", param_1284
.annotate "line", 435
    new $P1285, "Undef"
    .lex "$BLOCKINIT", $P1285
    get_global $P1286, "@BLOCK"
    unless_null $P1286, vivify_403
    new $P1286, "ResizablePMCArray"
  vivify_403:
    set $P1287, $P1286[0]
    unless_null $P1287, vivify_404
    new $P1287, "ResizablePMCArray"
  vivify_404:
    set $P1288, $P1287[0]
    unless_null $P1288, vivify_405
    new $P1288, "Undef"
  vivify_405:
    store_lex "$BLOCKINIT", $P1288
.annotate "line", 436
    find_lex $P1290, "$/"
    unless_null $P1290, vivify_406
    new $P1290, "Hash"
  vivify_406:
    set $P1291, $P1290["parameter"]
    unless_null $P1291, vivify_407
    new $P1291, "Undef"
  vivify_407:
    defined $I1292, $P1291
    unless $I1292, for_undef_408
    iter $P1289, $P1291
    new $P1302, 'ExceptionHandler'
    set_addr $P1302, loop1301_handler
    $P1302."handle_types"(65, 67, 66)
    push_eh $P1302
  loop1301_test:
    unless $P1289, loop1301_done
    shift $P1293, $P1289
  loop1301_redo:
    .const 'Sub' $P1295 = "76_1261201532.26144" 
    capture_lex $P1295
    $P1295($P1293)
  loop1301_next:
    goto loop1301_test
  loop1301_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1303, exception, 'type'
    eq $P1303, 65, loop1301_next
    eq $P1303, 67, loop1301_redo
  loop1301_done:
    pop_eh 
  for_undef_408:
.annotate "line", 434
    .return ($P1289)
  control_1281:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1304, exception, "payload"
    .return ($P1304)
.end


.namespace ["NQP";"Actions"]
.sub "_block1294"  :anon :subid("76_1261201532.26144") :outer("75_1261201532.26144")
    .param pmc param_1296
.annotate "line", 436
    .lex "$_", param_1296
    find_lex $P1297, "$BLOCKINIT"
    find_lex $P1298, "$_"
    $P1299 = $P1298."ast"()
    $P1300 = $P1297."push"($P1299)
    .return ($P1300)
.end


.namespace ["NQP";"Actions"]
.sub "parameter"  :subid("77_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1309
.annotate "line", 439
    get_root_global $P1307, ["parrot";"PCT"], "reuse1308_1261201532.92725"
    unless_null $P1307, reuse1308
    new $P1307, ["ExceptionHandler"]
    $P1307."handle_types"(58)
  reuse1308:
    set_addr $P1307, control_1306
    push_eh $P1307
    .lex "self", self
    .lex "$/", param_1309
.annotate "line", 440
    new $P1310, "Undef"
    .lex "$quant", $P1310
.annotate "line", 441
    new $P1311, "Undef"
    .lex "$past", $P1311
.annotate "line", 440
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_409
    new $P1312, "Hash"
  vivify_409:
    set $P1313, $P1312["quant"]
    unless_null $P1313, vivify_410
    new $P1313, "Undef"
  vivify_410:
    store_lex "$quant", $P1313
    find_lex $P1314, "$past"
.annotate "line", 442
    find_lex $P1316, "$/"
    unless_null $P1316, vivify_411
    new $P1316, "Hash"
  vivify_411:
    set $P1317, $P1316["named_param"]
    unless_null $P1317, vivify_412
    new $P1317, "Undef"
  vivify_412:
    if $P1317, if_1315
.annotate "line", 449
    find_lex $P1331, "$/"
    unless_null $P1331, vivify_413
    new $P1331, "Hash"
  vivify_413:
    set $P1332, $P1331["param_var"]
    unless_null $P1332, vivify_414
    new $P1332, "Undef"
  vivify_414:
    $P1333 = $P1332."ast"()
    store_lex "$past", $P1333
.annotate "line", 450
    find_lex $P1335, "$quant"
    set $S1336, $P1335
    iseq $I1337, $S1336, "*"
    if $I1337, if_1334
.annotate "line", 454
    find_lex $P1346, "$quant"
    set $S1347, $P1346
    iseq $I1348, $S1347, "?"
    unless $I1348, if_1345_end
.annotate "line", 455
    find_lex $P1349, "$past"
    find_lex $P1350, "$/"
    unless_null $P1350, vivify_415
    new $P1350, "Hash"
  vivify_415:
    set $P1351, $P1350["param_var"]
    unless_null $P1351, vivify_416
    new $P1351, "Hash"
  vivify_416:
    set $P1352, $P1351["sigil"]
    unless_null $P1352, vivify_417
    new $P1352, "Undef"
  vivify_417:
    $P1353 = "sigiltype"($P1352)
    $P1349."viviself"($P1353)
  if_1345_end:
.annotate "line", 454
    goto if_1334_end
  if_1334:
.annotate "line", 451
    find_lex $P1338, "$past"
    $P1338."slurpy"(1)
.annotate "line", 452
    find_lex $P1339, "$past"
    find_lex $P1340, "$/"
    unless_null $P1340, vivify_418
    new $P1340, "Hash"
  vivify_418:
    set $P1341, $P1340["param_var"]
    unless_null $P1341, vivify_419
    new $P1341, "Hash"
  vivify_419:
    set $P1342, $P1341["sigil"]
    unless_null $P1342, vivify_420
    new $P1342, "Undef"
  vivify_420:
    set $S1343, $P1342
    iseq $I1344, $S1343, "%"
    $P1339."named"($I1344)
  if_1334_end:
.annotate "line", 448
    goto if_1315_end
  if_1315:
.annotate "line", 443
    find_lex $P1318, "$/"
    unless_null $P1318, vivify_421
    new $P1318, "Hash"
  vivify_421:
    set $P1319, $P1318["named_param"]
    unless_null $P1319, vivify_422
    new $P1319, "Undef"
  vivify_422:
    $P1320 = $P1319."ast"()
    store_lex "$past", $P1320
.annotate "line", 444
    find_lex $P1322, "$quant"
    set $S1323, $P1322
    isne $I1324, $S1323, "!"
    unless $I1324, if_1321_end
.annotate "line", 445
    find_lex $P1325, "$past"
    find_lex $P1326, "$/"
    unless_null $P1326, vivify_423
    new $P1326, "Hash"
  vivify_423:
    set $P1327, $P1326["named_param"]
    unless_null $P1327, vivify_424
    new $P1327, "Hash"
  vivify_424:
    set $P1328, $P1327["param_var"]
    unless_null $P1328, vivify_425
    new $P1328, "Hash"
  vivify_425:
    set $P1329, $P1328["sigil"]
    unless_null $P1329, vivify_426
    new $P1329, "Undef"
  vivify_426:
    $P1330 = "sigiltype"($P1329)
    $P1325."viviself"($P1330)
  if_1321_end:
  if_1315_end:
.annotate "line", 458
    find_lex $P1355, "$/"
    unless_null $P1355, vivify_427
    new $P1355, "Hash"
  vivify_427:
    set $P1356, $P1355["default_value"]
    unless_null $P1356, vivify_428
    new $P1356, "Undef"
  vivify_428:
    unless $P1356, if_1354_end
.annotate "line", 459
    find_lex $P1358, "$quant"
    set $S1359, $P1358
    iseq $I1360, $S1359, "*"
    unless $I1360, if_1357_end
.annotate "line", 460
    find_lex $P1361, "$/"
    $P1362 = $P1361."CURSOR"()
    $P1362."panic"("Can't put default on slurpy parameter")
  if_1357_end:
.annotate "line", 462
    find_lex $P1364, "$quant"
    set $S1365, $P1364
    iseq $I1366, $S1365, "!"
    unless $I1366, if_1363_end
.annotate "line", 463
    find_lex $P1367, "$/"
    $P1368 = $P1367."CURSOR"()
    $P1368."panic"("Can't put default on required parameter")
  if_1363_end:
.annotate "line", 465
    find_lex $P1369, "$past"
    find_lex $P1370, "$/"
    unless_null $P1370, vivify_429
    new $P1370, "Hash"
  vivify_429:
    set $P1371, $P1370["default_value"]
    unless_null $P1371, vivify_430
    new $P1371, "ResizablePMCArray"
  vivify_430:
    set $P1372, $P1371[0]
    unless_null $P1372, vivify_431
    new $P1372, "Hash"
  vivify_431:
    set $P1373, $P1372["EXPR"]
    unless_null $P1373, vivify_432
    new $P1373, "Undef"
  vivify_432:
    $P1374 = $P1373."ast"()
    $P1369."viviself"($P1374)
  if_1354_end:
.annotate "line", 467
    find_lex $P1376, "$past"
    $P1377 = $P1376."viviself"()
    if $P1377, unless_1375_end
    get_global $P1378, "@BLOCK"
    unless_null $P1378, vivify_433
    new $P1378, "ResizablePMCArray"
  vivify_433:
    set $P1379, $P1378[0]
    unless_null $P1379, vivify_434
    new $P1379, "Undef"
  vivify_434:
    get_global $P1380, "@BLOCK"
    unless_null $P1380, vivify_435
    new $P1380, "ResizablePMCArray"
  vivify_435:
    set $P1381, $P1380[0]
    unless_null $P1381, vivify_436
    new $P1381, "Undef"
  vivify_436:
    $P1382 = $P1381."arity"()
    set $N1383, $P1382
    new $P1384, 'Float'
    set $P1384, $N1383
    add $P1385, $P1384, 1
    $P1379."arity"($P1385)
  unless_1375_end:
.annotate "line", 468
    find_lex $P1386, "$/"
    find_lex $P1387, "$past"
    $P1388 = $P1386."!make"($P1387)
.annotate "line", 439
    .return ($P1388)
  control_1306:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1389, exception, "payload"
    .return ($P1389)
.end


.namespace ["NQP";"Actions"]
.sub "param_var"  :subid("78_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1394
.annotate "line", 471
    get_root_global $P1392, ["parrot";"PCT"], "reuse1393_1261201532.9639"
    unless_null $P1392, reuse1393
    new $P1392, ["ExceptionHandler"]
    $P1392."handle_types"(58)
  reuse1393:
    set_addr $P1392, control_1391
    push_eh $P1392
    .lex "self", self
    .lex "$/", param_1394
.annotate "line", 472
    new $P1395, "Undef"
    .lex "$name", $P1395
.annotate "line", 473
    new $P1396, "Undef"
    .lex "$past", $P1396
.annotate "line", 472
    find_lex $P1397, "$/"
    set $S1398, $P1397
    new $P1399, 'String'
    set $P1399, $S1398
    store_lex "$name", $P1399
.annotate "line", 473
    get_hll_global $P1400, ["PAST"], "Var"
    find_lex $P1401, "$name"
    find_lex $P1402, "$/"
    $P1403 = $P1400."new"($P1401 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P1402 :named("node"))
    store_lex "$past", $P1403
.annotate "line", 475
    get_global $P1404, "@BLOCK"
    unless_null $P1404, vivify_437
    new $P1404, "ResizablePMCArray"
  vivify_437:
    set $P1405, $P1404[0]
    unless_null $P1405, vivify_438
    new $P1405, "Undef"
  vivify_438:
    find_lex $P1406, "$name"
    $P1405."symbol"($P1406, "lexical" :named("scope"))
.annotate "line", 476
    find_lex $P1407, "$/"
    find_lex $P1408, "$past"
    $P1409 = $P1407."!make"($P1408)
.annotate "line", 471
    .return ($P1409)
  control_1391:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1410, exception, "payload"
    .return ($P1410)
.end


.namespace ["NQP";"Actions"]
.sub "named_param"  :subid("79_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1415
.annotate "line", 479
    get_root_global $P1413, ["parrot";"PCT"], "reuse1414_1261201532.97249"
    unless_null $P1413, reuse1414
    new $P1413, ["ExceptionHandler"]
    $P1413."handle_types"(58)
  reuse1414:
    set_addr $P1413, control_1412
    push_eh $P1413
    .lex "self", self
    .lex "$/", param_1415
.annotate "line", 480
    new $P1416, "Undef"
    .lex "$past", $P1416
    find_lex $P1417, "$/"
    unless_null $P1417, vivify_439
    new $P1417, "Hash"
  vivify_439:
    set $P1418, $P1417["param_var"]
    unless_null $P1418, vivify_440
    new $P1418, "Undef"
  vivify_440:
    $P1419 = $P1418."ast"()
    store_lex "$past", $P1419
.annotate "line", 481
    find_lex $P1420, "$past"
    find_lex $P1421, "$/"
    unless_null $P1421, vivify_441
    new $P1421, "Hash"
  vivify_441:
    set $P1422, $P1421["param_var"]
    unless_null $P1422, vivify_442
    new $P1422, "Hash"
  vivify_442:
    set $P1423, $P1422["name"]
    unless_null $P1423, vivify_443
    new $P1423, "Undef"
  vivify_443:
    set $S1424, $P1423
    $P1420."named"($S1424)
.annotate "line", 482
    find_lex $P1425, "$/"
    find_lex $P1426, "$past"
    $P1427 = $P1425."!make"($P1426)
.annotate "line", 479
    .return ($P1427)
  control_1412:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1428, exception, "payload"
    .return ($P1428)
.end


.namespace ["NQP";"Actions"]
.sub "regex_declarator"  :subid("80_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1433
    .param pmc param_1434 :optional
    .param int has_param_1434 :opt_flag
.annotate "line", 485
    .const 'Sub' $P1504 = "82_1261201532.26144" 
    capture_lex $P1504
    .const 'Sub' $P1476 = "81_1261201532.26144" 
    capture_lex $P1476
    get_root_global $P1431, ["parrot";"PCT"], "reuse1432_1261201532.97967"
    unless_null $P1431, reuse1432
    new $P1431, ["ExceptionHandler"]
    $P1431."handle_types"(58)
  reuse1432:
    set_addr $P1431, control_1430
    push_eh $P1431
    .lex "self", self
    .lex "$/", param_1433
    if has_param_1434, optparam_444
    new $P1435, "Undef"
    set param_1434, $P1435
  optparam_444:
    .lex "$key", param_1434
.annotate "line", 486
    new $P1436, "ResizablePMCArray"
    .lex "@MODIFIERS", $P1436
.annotate "line", 489
    new $P1437, "Undef"
    .lex "$name", $P1437
.annotate "line", 490
    new $P1438, "Undef"
    .lex "$past", $P1438
.annotate "line", 486

        $P1439 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    store_lex "@MODIFIERS", $P1439
.annotate "line", 489
    find_lex $P1440, "$/"
    unless_null $P1440, vivify_445
    new $P1440, "Hash"
  vivify_445:
    set $P1441, $P1440["deflongname"]
    unless_null $P1441, vivify_446
    new $P1441, "Undef"
  vivify_446:
    $P1442 = $P1441."ast"()
    set $S1443, $P1442
    new $P1444, 'String'
    set $P1444, $S1443
    store_lex "$name", $P1444
    find_lex $P1445, "$past"
.annotate "line", 491
    find_lex $P1447, "$/"
    unless_null $P1447, vivify_447
    new $P1447, "Hash"
  vivify_447:
    set $P1448, $P1447["proto"]
    unless_null $P1448, vivify_448
    new $P1448, "Undef"
  vivify_448:
    if $P1448, if_1446
.annotate "line", 518
    find_lex $P1472, "$key"
    set $S1473, $P1472
    iseq $I1474, $S1473, "open"
    if $I1474, if_1471
.annotate "line", 531
    .const 'Sub' $P1504 = "82_1261201532.26144" 
    capture_lex $P1504
    $P1504()
    goto if_1471_end
  if_1471:
.annotate "line", 518
    .const 'Sub' $P1476 = "81_1261201532.26144" 
    capture_lex $P1476
    $P1476()
  if_1471_end:
    goto if_1446_end
  if_1446:
.annotate "line", 493
    get_hll_global $P1449, ["PAST"], "Stmts"
.annotate "line", 494
    get_hll_global $P1450, ["PAST"], "Block"
    find_lex $P1451, "$name"
.annotate "line", 495
    get_hll_global $P1452, ["PAST"], "Op"
.annotate "line", 496
    get_hll_global $P1453, ["PAST"], "Var"
    $P1454 = $P1453."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1455, "$name"
    $P1456 = $P1452."new"($P1454, $P1455, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 495
    find_lex $P1457, "$/"
    $P1458 = $P1450."new"($P1456, $P1451 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1457 :named("node"))
.annotate "line", 505
    get_hll_global $P1459, ["PAST"], "Block"
    new $P1460, "String"
    assign $P1460, "!PREFIX__"
    find_lex $P1461, "$name"
    concat $P1462, $P1460, $P1461
.annotate "line", 506
    get_hll_global $P1463, ["PAST"], "Op"
.annotate "line", 507
    get_hll_global $P1464, ["PAST"], "Var"
    $P1465 = $P1464."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1466, "$name"
    $P1467 = $P1463."new"($P1465, $P1466, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 506
    find_lex $P1468, "$/"
    $P1469 = $P1459."new"($P1467, $P1462 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1468 :named("node"))
.annotate "line", 505
    $P1470 = $P1449."new"($P1458, $P1469)
.annotate "line", 493
    store_lex "$past", $P1470
  if_1446_end:
.annotate "line", 545
    find_lex $P1525, "$/"
    find_lex $P1526, "$past"
    $P1527 = $P1525."!make"($P1526)
.annotate "line", 485
    .return ($P1527)
  control_1430:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1528, exception, "payload"
    .return ($P1528)
.end


.namespace ["NQP";"Actions"]
.sub "_block1503"  :anon :subid("82_1261201532.26144") :outer("80_1261201532.26144")
.annotate "line", 532
    new $P1505, "Undef"
    .lex "$regex", $P1505
.annotate "line", 533
    get_hll_global $P1506, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P1507, "$/"
    unless_null $P1507, vivify_449
    new $P1507, "Hash"
  vivify_449:
    set $P1508, $P1507["p6regex"]
    unless_null $P1508, vivify_450
    new $P1508, "Undef"
  vivify_450:
    $P1509 = $P1508."ast"()
    get_global $P1510, "@BLOCK"
    $P1511 = $P1510."shift"()
    $P1512 = $P1506($P1509, $P1511)
    store_lex "$regex", $P1512
.annotate "line", 534
    find_lex $P1513, "$regex"
    find_lex $P1514, "$name"
    $P1513."name"($P1514)
.annotate "line", 536
    get_hll_global $P1515, ["PAST"], "Op"
.annotate "line", 538
    get_hll_global $P1516, ["PAST"], "Var"
    new $P1517, "ResizablePMCArray"
    push $P1517, "Regex"
    $P1518 = $P1516."new"("Method" :named("name"), $P1517 :named("namespace"), "package" :named("scope"))
    find_lex $P1519, "$regex"
    $P1520 = $P1515."new"($P1518, $P1519, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate "line", 536
    store_lex "$past", $P1520
.annotate "line", 542
    find_lex $P1521, "$regex"
    find_lex $P1522, "$past"
    unless_null $P1522, vivify_451
    new $P1522, "Hash"
    store_lex "$past", $P1522
  vivify_451:
    set $P1522["sink"], $P1521
.annotate "line", 543
    find_lex $P1523, "@MODIFIERS"
    $P1524 = $P1523."shift"()
.annotate "line", 531
    .return ($P1524)
.end


.namespace ["NQP";"Actions"]
.sub "_block1475"  :anon :subid("81_1261201532.26144") :outer("80_1261201532.26144")
.annotate "line", 519
    new $P1477, "Hash"
    .lex "%h", $P1477
.annotate "line", 518
    find_lex $P1478, "%h"
.annotate "line", 520
    find_lex $P1480, "$/"
    unless_null $P1480, vivify_452
    new $P1480, "Hash"
  vivify_452:
    set $P1481, $P1480["sym"]
    unless_null $P1481, vivify_453
    new $P1481, "Undef"
  vivify_453:
    set $S1482, $P1481
    iseq $I1483, $S1482, "token"
    unless $I1483, if_1479_end
    new $P1484, "Integer"
    assign $P1484, 1
    find_lex $P1485, "%h"
    unless_null $P1485, vivify_454
    new $P1485, "Hash"
    store_lex "%h", $P1485
  vivify_454:
    set $P1485["r"], $P1484
  if_1479_end:
.annotate "line", 521
    find_lex $P1487, "$/"
    unless_null $P1487, vivify_455
    new $P1487, "Hash"
  vivify_455:
    set $P1488, $P1487["sym"]
    unless_null $P1488, vivify_456
    new $P1488, "Undef"
  vivify_456:
    set $S1489, $P1488
    iseq $I1490, $S1489, "rule"
    unless $I1490, if_1486_end
    new $P1491, "Integer"
    assign $P1491, 1
    find_lex $P1492, "%h"
    unless_null $P1492, vivify_457
    new $P1492, "Hash"
    store_lex "%h", $P1492
  vivify_457:
    set $P1492["r"], $P1491
    new $P1493, "Integer"
    assign $P1493, 1
    find_lex $P1494, "%h"
    unless_null $P1494, vivify_458
    new $P1494, "Hash"
    store_lex "%h", $P1494
  vivify_458:
    set $P1494["s"], $P1493
  if_1486_end:
.annotate "line", 522
    find_lex $P1495, "@MODIFIERS"
    find_lex $P1496, "%h"
    $P1495."unshift"($P1496)
.annotate "line", 523

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 527
    get_global $P1497, "@BLOCK"
    unless_null $P1497, vivify_459
    new $P1497, "ResizablePMCArray"
  vivify_459:
    set $P1498, $P1497[0]
    unless_null $P1498, vivify_460
    new $P1498, "Undef"
  vivify_460:
    $P1498."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate "line", 528
    get_global $P1499, "@BLOCK"
    unless_null $P1499, vivify_461
    new $P1499, "ResizablePMCArray"
  vivify_461:
    set $P1500, $P1499[0]
    unless_null $P1500, vivify_462
    new $P1500, "Undef"
  vivify_462:
    $P1500."symbol"("$/", "lexical" :named("scope"))
.annotate "line", 529
    new $P1501, "Exception"
    set $P1501['type'], 58
    new $P1502, "Integer"
    assign $P1502, 0
    setattribute $P1501, 'payload', $P1502
    throw $P1501
.annotate "line", 518
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("83_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1533
.annotate "line", 549
    get_root_global $P1531, ["parrot";"PCT"], "reuse1532_1261201533.02394"
    unless_null $P1531, reuse1532
    new $P1531, ["ExceptionHandler"]
    $P1531."handle_types"(58)
  reuse1532:
    set_addr $P1531, control_1530
    push_eh $P1531
    .lex "self", self
    .lex "$/", param_1533
.annotate "line", 550
    new $P1534, "Undef"
    .lex "$past", $P1534
    find_lex $P1537, "$/"
    unless_null $P1537, vivify_463
    new $P1537, "Hash"
  vivify_463:
    set $P1538, $P1537["args"]
    unless_null $P1538, vivify_464
    new $P1538, "Undef"
  vivify_464:
    if $P1538, if_1536
    get_hll_global $P1543, ["PAST"], "Op"
    find_lex $P1544, "$/"
    $P1545 = $P1543."new"($P1544 :named("node"))
    set $P1535, $P1545
    goto if_1536_end
  if_1536:
    find_lex $P1539, "$/"
    unless_null $P1539, vivify_465
    new $P1539, "Hash"
  vivify_465:
    set $P1540, $P1539["args"]
    unless_null $P1540, vivify_466
    new $P1540, "ResizablePMCArray"
  vivify_466:
    set $P1541, $P1540[0]
    unless_null $P1541, vivify_467
    new $P1541, "Undef"
  vivify_467:
    $P1542 = $P1541."ast"()
    set $P1535, $P1542
  if_1536_end:
    store_lex "$past", $P1535
.annotate "line", 551
    find_lex $P1546, "$past"
    find_lex $P1549, "$/"
    unless_null $P1549, vivify_468
    new $P1549, "Hash"
  vivify_468:
    set $P1550, $P1549["quote"]
    unless_null $P1550, vivify_469
    new $P1550, "Undef"
  vivify_469:
    if $P1550, if_1548
    find_lex $P1554, "$/"
    unless_null $P1554, vivify_470
    new $P1554, "Hash"
  vivify_470:
    set $P1555, $P1554["longname"]
    unless_null $P1555, vivify_471
    new $P1555, "Undef"
  vivify_471:
    set $S1556, $P1555
    new $P1547, 'String'
    set $P1547, $S1556
    goto if_1548_end
  if_1548:
    find_lex $P1551, "$/"
    unless_null $P1551, vivify_472
    new $P1551, "Hash"
  vivify_472:
    set $P1552, $P1551["quote"]
    unless_null $P1552, vivify_473
    new $P1552, "Undef"
  vivify_473:
    $P1553 = $P1552."ast"()
    set $P1547, $P1553
  if_1548_end:
    $P1546."name"($P1547)
.annotate "line", 552
    find_lex $P1557, "$past"
    $P1557."pasttype"("callmethod")
.annotate "line", 553
    find_lex $P1558, "$/"
    find_lex $P1559, "$past"
    $P1560 = $P1558."!make"($P1559)
.annotate "line", 549
    .return ($P1560)
  control_1530:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1561, exception, "payload"
    .return ($P1561)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("84_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1566
.annotate "line", 558
    get_root_global $P1564, ["parrot";"PCT"], "reuse1565_1261201533.03692"
    unless_null $P1564, reuse1565
    new $P1564, ["ExceptionHandler"]
    $P1564."handle_types"(58)
  reuse1565:
    set_addr $P1564, control_1563
    push_eh $P1564
    .lex "self", self
    .lex "$/", param_1566
.annotate "line", 559
    find_lex $P1567, "$/"
    get_hll_global $P1568, ["PAST"], "Var"
    $P1569 = $P1568."new"("self" :named("name"))
    $P1570 = $P1567."!make"($P1569)
.annotate "line", 558
    .return ($P1570)
  control_1563:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1571, exception, "payload"
    .return ($P1571)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("85_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1576
.annotate "line", 562
    get_root_global $P1574, ["parrot";"PCT"], "reuse1575_1261201533.04049"
    unless_null $P1574, reuse1575
    new $P1574, ["ExceptionHandler"]
    $P1574."handle_types"(58)
  reuse1575:
    set_addr $P1574, control_1573
    push_eh $P1574
    .lex "self", self
    .lex "$/", param_1576
.annotate "line", 563
    new $P1577, "Undef"
    .lex "$past", $P1577
    find_lex $P1578, "$/"
    unless_null $P1578, vivify_474
    new $P1578, "Hash"
  vivify_474:
    set $P1579, $P1578["args"]
    unless_null $P1579, vivify_475
    new $P1579, "Undef"
  vivify_475:
    $P1580 = $P1579."ast"()
    store_lex "$past", $P1580
.annotate "line", 564
    find_lex $P1581, "$past"
    find_lex $P1582, "$/"
    unless_null $P1582, vivify_476
    new $P1582, "Hash"
  vivify_476:
    set $P1583, $P1582["identifier"]
    unless_null $P1583, vivify_477
    new $P1583, "Undef"
  vivify_477:
    set $S1584, $P1583
    $P1581."name"($S1584)
.annotate "line", 565
    find_lex $P1585, "$/"
    find_lex $P1586, "$past"
    $P1587 = $P1585."!make"($P1586)
.annotate "line", 562
    .return ($P1587)
  control_1573:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1588, exception, "payload"
    .return ($P1588)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("86_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1593
.annotate "line", 568
    get_root_global $P1591, ["parrot";"PCT"], "reuse1592_1261201533.04714"
    unless_null $P1591, reuse1592
    new $P1591, ["ExceptionHandler"]
    $P1591."handle_types"(58)
  reuse1592:
    set_addr $P1591, control_1590
    push_eh $P1591
    .lex "self", self
    .lex "$/", param_1593
.annotate "line", 569
    new $P1594, "ResizablePMCArray"
    .lex "@ns", $P1594
.annotate "line", 570
    new $P1595, "Undef"
    .lex "$name", $P1595
.annotate "line", 572
    new $P1596, "Undef"
    .lex "$var", $P1596
.annotate "line", 574
    new $P1597, "Undef"
    .lex "$past", $P1597
.annotate "line", 569
    find_lex $P1598, "$/"
    unless_null $P1598, vivify_478
    new $P1598, "Hash"
  vivify_478:
    set $P1599, $P1598["name"]
    unless_null $P1599, vivify_479
    new $P1599, "Hash"
  vivify_479:
    set $P1600, $P1599["identifier"]
    unless_null $P1600, vivify_480
    new $P1600, "Undef"
  vivify_480:
    clone $P1601, $P1600
    store_lex "@ns", $P1601
.annotate "line", 570
    find_lex $P1602, "@ns"
    $P1603 = $P1602."pop"()
    store_lex "$name", $P1603
.annotate "line", 571
    find_lex $P1607, "@ns"
    if $P1607, if_1606
    set $P1605, $P1607
    goto if_1606_end
  if_1606:
    find_lex $P1608, "@ns"
    unless_null $P1608, vivify_481
    new $P1608, "ResizablePMCArray"
  vivify_481:
    set $P1609, $P1608[0]
    unless_null $P1609, vivify_482
    new $P1609, "Undef"
  vivify_482:
    set $S1610, $P1609
    iseq $I1611, $S1610, "GLOBAL"
    new $P1605, 'Integer'
    set $P1605, $I1611
  if_1606_end:
    unless $P1605, if_1604_end
    find_lex $P1612, "@ns"
    $P1612."shift"()
  if_1604_end:
.annotate "line", 573
    get_hll_global $P1613, ["PAST"], "Var"
    find_lex $P1614, "$name"
    set $S1615, $P1614
    find_lex $P1616, "@ns"
    $P1617 = $P1613."new"($S1615 :named("name"), $P1616 :named("namespace"), "package" :named("scope"))
    store_lex "$var", $P1617
.annotate "line", 574
    find_lex $P1618, "$var"
    store_lex "$past", $P1618
.annotate "line", 575
    find_lex $P1620, "$/"
    unless_null $P1620, vivify_483
    new $P1620, "Hash"
  vivify_483:
    set $P1621, $P1620["args"]
    unless_null $P1621, vivify_484
    new $P1621, "Undef"
  vivify_484:
    unless $P1621, if_1619_end
.annotate "line", 576
    find_lex $P1622, "$/"
    unless_null $P1622, vivify_485
    new $P1622, "Hash"
  vivify_485:
    set $P1623, $P1622["args"]
    unless_null $P1623, vivify_486
    new $P1623, "ResizablePMCArray"
  vivify_486:
    set $P1624, $P1623[0]
    unless_null $P1624, vivify_487
    new $P1624, "Undef"
  vivify_487:
    $P1625 = $P1624."ast"()
    store_lex "$past", $P1625
.annotate "line", 577
    find_lex $P1626, "$past"
    find_lex $P1627, "$var"
    $P1626."unshift"($P1627)
  if_1619_end:
.annotate "line", 579
    find_lex $P1628, "$/"
    find_lex $P1629, "$past"
    $P1630 = $P1628."!make"($P1629)
.annotate "line", 568
    .return ($P1630)
  control_1590:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1631, exception, "payload"
    .return ($P1631)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("87_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1636
.annotate "line", 582
    get_root_global $P1634, ["parrot";"PCT"], "reuse1635_1261201533.06436"
    unless_null $P1634, reuse1635
    new $P1634, ["ExceptionHandler"]
    $P1634."handle_types"(58)
  reuse1635:
    set_addr $P1634, control_1633
    push_eh $P1634
    .lex "self", self
    .lex "$/", param_1636
.annotate "line", 583
    new $P1637, "Undef"
    .lex "$past", $P1637
.annotate "line", 584
    new $P1638, "Undef"
    .lex "$pirop", $P1638
.annotate "line", 583
    find_lex $P1641, "$/"
    unless_null $P1641, vivify_488
    new $P1641, "Hash"
  vivify_488:
    set $P1642, $P1641["args"]
    unless_null $P1642, vivify_489
    new $P1642, "Undef"
  vivify_489:
    if $P1642, if_1640
    get_hll_global $P1647, ["PAST"], "Op"
    find_lex $P1648, "$/"
    $P1649 = $P1647."new"($P1648 :named("node"))
    set $P1639, $P1649
    goto if_1640_end
  if_1640:
    find_lex $P1643, "$/"
    unless_null $P1643, vivify_490
    new $P1643, "Hash"
  vivify_490:
    set $P1644, $P1643["args"]
    unless_null $P1644, vivify_491
    new $P1644, "ResizablePMCArray"
  vivify_491:
    set $P1645, $P1644[0]
    unless_null $P1645, vivify_492
    new $P1645, "Undef"
  vivify_492:
    $P1646 = $P1645."ast"()
    set $P1639, $P1646
  if_1640_end:
    store_lex "$past", $P1639
.annotate "line", 584
    find_lex $P1650, "$/"
    unless_null $P1650, vivify_493
    new $P1650, "Hash"
  vivify_493:
    set $P1651, $P1650["op"]
    unless_null $P1651, vivify_494
    new $P1651, "Undef"
  vivify_494:
    set $S1652, $P1651
    new $P1653, 'String'
    set $P1653, $S1652
    store_lex "$pirop", $P1653
.annotate "line", 585

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1654 = box $S0
    
    store_lex "$pirop", $P1654
.annotate "line", 592
    find_lex $P1655, "$past"
    find_lex $P1656, "$pirop"
    $P1655."pirop"($P1656)
.annotate "line", 593
    find_lex $P1657, "$past"
    $P1657."pasttype"("pirop")
.annotate "line", 594
    find_lex $P1658, "$/"
    find_lex $P1659, "$past"
    $P1660 = $P1658."!make"($P1659)
.annotate "line", 582
    .return ($P1660)
  control_1633:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1661, exception, "payload"
    .return ($P1661)
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("88_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1666
.annotate "line", 597
    get_root_global $P1664, ["parrot";"PCT"], "reuse1665_1261201533.07637"
    unless_null $P1664, reuse1665
    new $P1664, ["ExceptionHandler"]
    $P1664."handle_types"(58)
  reuse1665:
    set_addr $P1664, control_1663
    push_eh $P1664
    .lex "self", self
    .lex "$/", param_1666
    find_lex $P1667, "$/"
    find_lex $P1668, "$/"
    unless_null $P1668, vivify_495
    new $P1668, "Hash"
  vivify_495:
    set $P1669, $P1668["arglist"]
    unless_null $P1669, vivify_496
    new $P1669, "Undef"
  vivify_496:
    $P1670 = $P1669."ast"()
    $P1671 = $P1667."!make"($P1670)
    .return ($P1671)
  control_1663:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1672, exception, "payload"
    .return ($P1672)
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("89_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1677
.annotate "line", 599
    .const 'Sub' $P1688 = "90_1261201532.26144" 
    capture_lex $P1688
    get_root_global $P1675, ["parrot";"PCT"], "reuse1676_1261201533.08041"
    unless_null $P1675, reuse1676
    new $P1675, ["ExceptionHandler"]
    $P1675."handle_types"(58)
  reuse1676:
    set_addr $P1675, control_1674
    push_eh $P1675
    .lex "self", self
    .lex "$/", param_1677
.annotate "line", 600
    new $P1678, "Undef"
    .lex "$past", $P1678
.annotate "line", 608
    new $P1679, "Undef"
    .lex "$i", $P1679
.annotate "line", 609
    new $P1680, "Undef"
    .lex "$n", $P1680
.annotate "line", 600
    get_hll_global $P1681, ["PAST"], "Op"
    find_lex $P1682, "$/"
    $P1683 = $P1681."new"("call" :named("pasttype"), $P1682 :named("node"))
    store_lex "$past", $P1683
.annotate "line", 601
    find_lex $P1685, "$/"
    unless_null $P1685, vivify_497
    new $P1685, "Hash"
  vivify_497:
    set $P1686, $P1685["EXPR"]
    unless_null $P1686, vivify_498
    new $P1686, "Undef"
  vivify_498:
    unless $P1686, if_1684_end
    .const 'Sub' $P1688 = "90_1261201532.26144" 
    capture_lex $P1688
    $P1688()
  if_1684_end:
.annotate "line", 608
    new $P1720, "Integer"
    assign $P1720, 0
    store_lex "$i", $P1720
.annotate "line", 609
    find_lex $P1721, "$past"
    $P1722 = $P1721."list"()
    set $N1723, $P1722
    new $P1724, 'Float'
    set $P1724, $N1723
    store_lex "$n", $P1724
.annotate "line", 610
    new $P1752, 'ExceptionHandler'
    set_addr $P1752, loop1751_handler
    $P1752."handle_types"(65, 67, 66)
    push_eh $P1752
  loop1751_test:
    find_lex $P1725, "$i"
    set $N1726, $P1725
    find_lex $P1727, "$n"
    set $N1728, $P1727
    islt $I1729, $N1726, $N1728
    unless $I1729, loop1751_done
  loop1751_redo:
.annotate "line", 611
    find_lex $P1731, "$i"
    set $I1732, $P1731
    find_lex $P1733, "$past"
    unless_null $P1733, vivify_502
    new $P1733, "ResizablePMCArray"
  vivify_502:
    set $P1734, $P1733[$I1732]
    unless_null $P1734, vivify_503
    new $P1734, "Undef"
  vivify_503:
    $S1735 = $P1734."name"()
    iseq $I1736, $S1735, "&prefix:<|>"
    unless $I1736, if_1730_end
.annotate "line", 612
    find_lex $P1737, "$i"
    set $I1738, $P1737
    find_lex $P1739, "$past"
    unless_null $P1739, vivify_504
    new $P1739, "ResizablePMCArray"
  vivify_504:
    set $P1740, $P1739[$I1738]
    unless_null $P1740, vivify_505
    new $P1740, "ResizablePMCArray"
  vivify_505:
    set $P1741, $P1740[0]
    unless_null $P1741, vivify_506
    new $P1741, "Undef"
  vivify_506:
    find_lex $P1742, "$i"
    set $I1743, $P1742
    find_lex $P1744, "$past"
    unless_null $P1744, vivify_507
    new $P1744, "ResizablePMCArray"
    store_lex "$past", $P1744
  vivify_507:
    set $P1744[$I1743], $P1741
.annotate "line", 613
    find_lex $P1745, "$i"
    set $I1746, $P1745
    find_lex $P1747, "$past"
    unless_null $P1747, vivify_508
    new $P1747, "ResizablePMCArray"
  vivify_508:
    set $P1748, $P1747[$I1746]
    unless_null $P1748, vivify_509
    new $P1748, "Undef"
  vivify_509:
    $P1748."flat"(1)
  if_1730_end:
.annotate "line", 611
    find_lex $P1749, "$i"
    clone $P1750, $P1749
    inc $P1749
  loop1751_next:
.annotate "line", 610
    goto loop1751_test
  loop1751_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1753, exception, 'type'
    eq $P1753, 65, loop1751_next
    eq $P1753, 67, loop1751_redo
  loop1751_done:
    pop_eh 
.annotate "line", 617
    find_lex $P1754, "$/"
    find_lex $P1755, "$past"
    $P1756 = $P1754."!make"($P1755)
.annotate "line", 599
    .return ($P1756)
  control_1674:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1757, exception, "payload"
    .return ($P1757)
.end


.namespace ["NQP";"Actions"]
.sub "_block1687"  :anon :subid("90_1261201532.26144") :outer("89_1261201532.26144")
.annotate "line", 601
    .const 'Sub' $P1709 = "91_1261201532.26144" 
    capture_lex $P1709
.annotate "line", 602
    new $P1689, "Undef"
    .lex "$expr", $P1689
    find_lex $P1690, "$/"
    unless_null $P1690, vivify_499
    new $P1690, "Hash"
  vivify_499:
    set $P1691, $P1690["EXPR"]
    unless_null $P1691, vivify_500
    new $P1691, "Undef"
  vivify_500:
    $P1692 = $P1691."ast"()
    store_lex "$expr", $P1692
.annotate "line", 603
    find_lex $P1697, "$expr"
    $S1698 = $P1697."name"()
    iseq $I1699, $S1698, "&infix:<,>"
    if $I1699, if_1696
    new $P1695, 'Integer'
    set $P1695, $I1699
    goto if_1696_end
  if_1696:
    find_lex $P1700, "$expr"
    $P1701 = $P1700."named"()
    isfalse $I1702, $P1701
    new $P1695, 'Integer'
    set $P1695, $I1702
  if_1696_end:
    if $P1695, if_1694
.annotate "line", 606
    find_lex $P1717, "$past"
    find_lex $P1718, "$expr"
    $P1719 = $P1717."push"($P1718)
    set $P1693, $P1719
.annotate "line", 603
    goto if_1694_end
  if_1694:
.annotate "line", 604
    find_lex $P1704, "$expr"
    $P1705 = $P1704."list"()
    defined $I1706, $P1705
    unless $I1706, for_undef_501
    iter $P1703, $P1705
    new $P1715, 'ExceptionHandler'
    set_addr $P1715, loop1714_handler
    $P1715."handle_types"(65, 67, 66)
    push_eh $P1715
  loop1714_test:
    unless $P1703, loop1714_done
    shift $P1707, $P1703
  loop1714_redo:
    .const 'Sub' $P1709 = "91_1261201532.26144" 
    capture_lex $P1709
    $P1709($P1707)
  loop1714_next:
    goto loop1714_test
  loop1714_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1716, exception, 'type'
    eq $P1716, 65, loop1714_next
    eq $P1716, 67, loop1714_redo
  loop1714_done:
    pop_eh 
  for_undef_501:
.annotate "line", 603
    set $P1693, $P1703
  if_1694_end:
.annotate "line", 601
    .return ($P1693)
.end


.namespace ["NQP";"Actions"]
.sub "_block1708"  :anon :subid("91_1261201532.26144") :outer("90_1261201532.26144")
    .param pmc param_1710
.annotate "line", 604
    .lex "$_", param_1710
    find_lex $P1711, "$past"
    find_lex $P1712, "$_"
    $P1713 = $P1711."push"($P1712)
    .return ($P1713)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("92_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1762
.annotate "line", 621
    get_root_global $P1760, ["parrot";"PCT"], "reuse1761_1261201533.11112"
    unless_null $P1760, reuse1761
    new $P1760, ["ExceptionHandler"]
    $P1760."handle_types"(58)
  reuse1761:
    set_addr $P1760, control_1759
    push_eh $P1760
    .lex "self", self
    .lex "$/", param_1762
    find_lex $P1763, "$/"
    find_lex $P1764, "$/"
    unless_null $P1764, vivify_510
    new $P1764, "Hash"
  vivify_510:
    set $P1765, $P1764["value"]
    unless_null $P1765, vivify_511
    new $P1765, "Undef"
  vivify_511:
    $P1766 = $P1765."ast"()
    $P1767 = $P1763."!make"($P1766)
    .return ($P1767)
  control_1759:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1768, exception, "payload"
    .return ($P1768)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("93_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1773
.annotate "line", 623
    get_root_global $P1771, ["parrot";"PCT"], "reuse1772_1261201533.11518"
    unless_null $P1771, reuse1772
    new $P1771, ["ExceptionHandler"]
    $P1771."handle_types"(58)
  reuse1772:
    set_addr $P1771, control_1770
    push_eh $P1771
    .lex "self", self
    .lex "$/", param_1773
.annotate "line", 624
    find_lex $P1774, "$/"
.annotate "line", 625
    find_lex $P1777, "$/"
    unless_null $P1777, vivify_512
    new $P1777, "Hash"
  vivify_512:
    set $P1778, $P1777["EXPR"]
    unless_null $P1778, vivify_513
    new $P1778, "Undef"
  vivify_513:
    if $P1778, if_1776
.annotate "line", 626
    get_hll_global $P1783, ["PAST"], "Op"
    find_lex $P1784, "$/"
    $P1785 = $P1783."new"("list" :named("pasttype"), $P1784 :named("node"))
    set $P1775, $P1785
.annotate "line", 625
    goto if_1776_end
  if_1776:
    find_lex $P1779, "$/"
    unless_null $P1779, vivify_514
    new $P1779, "Hash"
  vivify_514:
    set $P1780, $P1779["EXPR"]
    unless_null $P1780, vivify_515
    new $P1780, "ResizablePMCArray"
  vivify_515:
    set $P1781, $P1780[0]
    unless_null $P1781, vivify_516
    new $P1781, "Undef"
  vivify_516:
    $P1782 = $P1781."ast"()
    set $P1775, $P1782
  if_1776_end:
    $P1786 = $P1774."!make"($P1775)
.annotate "line", 623
    .return ($P1786)
  control_1770:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1787, exception, "payload"
    .return ($P1787)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<[ ]>"  :subid("94_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1792
.annotate "line", 629
    get_root_global $P1790, ["parrot";"PCT"], "reuse1791_1261201533.12243"
    unless_null $P1790, reuse1791
    new $P1790, ["ExceptionHandler"]
    $P1790."handle_types"(58)
  reuse1791:
    set_addr $P1790, control_1789
    push_eh $P1790
    .lex "self", self
    .lex "$/", param_1792
.annotate "line", 630
    new $P1793, "Undef"
    .lex "$past", $P1793
.annotate "line", 629
    find_lex $P1794, "$past"
.annotate "line", 631
    find_lex $P1796, "$/"
    unless_null $P1796, vivify_517
    new $P1796, "Hash"
  vivify_517:
    set $P1797, $P1796["EXPR"]
    unless_null $P1797, vivify_518
    new $P1797, "Undef"
  vivify_518:
    if $P1797, if_1795
.annotate "line", 638
    get_hll_global $P1809, ["PAST"], "Op"
    $P1810 = $P1809."new"("list" :named("pasttype"))
    store_lex "$past", $P1810
.annotate "line", 637
    goto if_1795_end
  if_1795:
.annotate "line", 632
    find_lex $P1798, "$/"
    unless_null $P1798, vivify_519
    new $P1798, "Hash"
  vivify_519:
    set $P1799, $P1798["EXPR"]
    unless_null $P1799, vivify_520
    new $P1799, "ResizablePMCArray"
  vivify_520:
    set $P1800, $P1799[0]
    unless_null $P1800, vivify_521
    new $P1800, "Undef"
  vivify_521:
    $P1801 = $P1800."ast"()
    store_lex "$past", $P1801
.annotate "line", 633
    find_lex $P1803, "$past"
    $S1804 = $P1803."name"()
    isne $I1805, $S1804, "&infix:<,>"
    unless $I1805, if_1802_end
.annotate "line", 634
    get_hll_global $P1806, ["PAST"], "Op"
    find_lex $P1807, "$past"
    $P1808 = $P1806."new"($P1807, "list" :named("pasttype"))
    store_lex "$past", $P1808
  if_1802_end:
  if_1795_end:
.annotate "line", 640
    find_lex $P1811, "$past"
    $P1811."name"("&circumfix:<[ ]>")
.annotate "line", 641
    find_lex $P1812, "$/"
    find_lex $P1813, "$past"
    $P1814 = $P1812."!make"($P1813)
.annotate "line", 629
    .return ($P1814)
  control_1789:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1815, exception, "payload"
    .return ($P1815)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<ang>"  :subid("95_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1820
.annotate "line", 644
    get_root_global $P1818, ["parrot";"PCT"], "reuse1819_1261201533.13513"
    unless_null $P1818, reuse1819
    new $P1818, ["ExceptionHandler"]
    $P1818."handle_types"(58)
  reuse1819:
    set_addr $P1818, control_1817
    push_eh $P1818
    .lex "self", self
    .lex "$/", param_1820
    find_lex $P1821, "$/"
    find_lex $P1822, "$/"
    unless_null $P1822, vivify_522
    new $P1822, "Hash"
  vivify_522:
    set $P1823, $P1822["quote_EXPR"]
    unless_null $P1823, vivify_523
    new $P1823, "Undef"
  vivify_523:
    $P1824 = $P1823."ast"()
    $P1825 = $P1821."!make"($P1824)
    .return ($P1825)
  control_1817:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1826, exception, "payload"
    .return ($P1826)
.end


.namespace ["NQP";"Actions"]
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("96_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1831
.annotate "line", 645
    get_root_global $P1829, ["parrot";"PCT"], "reuse1830_1261201533.13912"
    unless_null $P1829, reuse1830
    new $P1829, ["ExceptionHandler"]
    $P1829."handle_types"(58)
  reuse1830:
    set_addr $P1829, control_1828
    push_eh $P1829
    .lex "self", self
    .lex "$/", param_1831
    find_lex $P1832, "$/"
    find_lex $P1833, "$/"
    unless_null $P1833, vivify_524
    new $P1833, "Hash"
  vivify_524:
    set $P1834, $P1833["quote_EXPR"]
    unless_null $P1834, vivify_525
    new $P1834, "Undef"
  vivify_525:
    $P1835 = $P1834."ast"()
    $P1836 = $P1832."!make"($P1835)
    .return ($P1836)
  control_1828:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1837, exception, "payload"
    .return ($P1837)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<{ }>"  :subid("97_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1842
.annotate "line", 647
    get_root_global $P1840, ["parrot";"PCT"], "reuse1841_1261201533.14312"
    unless_null $P1840, reuse1841
    new $P1840, ["ExceptionHandler"]
    $P1840."handle_types"(58)
  reuse1841:
    set_addr $P1840, control_1839
    push_eh $P1840
    .lex "self", self
    .lex "$/", param_1842
.annotate "line", 648
    find_lex $P1843, "$/"
    find_lex $P1846, "$/"
    unless_null $P1846, vivify_526
    new $P1846, "Hash"
  vivify_526:
    set $P1847, $P1846["pblock"]
    unless_null $P1847, vivify_527
    new $P1847, "Hash"
  vivify_527:
    set $P1848, $P1847["blockoid"]
    unless_null $P1848, vivify_528
    new $P1848, "Hash"
  vivify_528:
    set $P1849, $P1848["statementlist"]
    unless_null $P1849, vivify_529
    new $P1849, "Hash"
  vivify_529:
    set $P1850, $P1849["statement"]
    unless_null $P1850, vivify_530
    new $P1850, "Undef"
  vivify_530:
    set $N1851, $P1850
    isgt $I1852, $N1851, 0.0
    if $I1852, if_1845
.annotate "line", 650
    get_hll_global $P1856, ["PAST"], "Op"
    find_lex $P1857, "$/"
    $P1858 = $P1856."new"("    %r = new [\"Hash\"]" :named("inline"), $P1857 :named("node"))
    set $P1844, $P1858
.annotate "line", 648
    goto if_1845_end
  if_1845:
.annotate "line", 649
    find_lex $P1853, "$/"
    unless_null $P1853, vivify_531
    new $P1853, "Hash"
  vivify_531:
    set $P1854, $P1853["pblock"]
    unless_null $P1854, vivify_532
    new $P1854, "Undef"
  vivify_532:
    $P1855 = $P1854."ast"()
    set $P1844, $P1855
  if_1845_end:
    $P1859 = $P1843."!make"($P1844)
.annotate "line", 647
    .return ($P1859)
  control_1839:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1860, exception, "payload"
    .return ($P1860)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<sigil>"  :subid("98_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1865
.annotate "line", 653
    get_root_global $P1863, ["parrot";"PCT"], "reuse1864_1261201533.15187"
    unless_null $P1863, reuse1864
    new $P1863, ["ExceptionHandler"]
    $P1863."handle_types"(58)
  reuse1864:
    set_addr $P1863, control_1862
    push_eh $P1863
    .lex "self", self
    .lex "$/", param_1865
.annotate "line", 654
    new $P1866, "Undef"
    .lex "$name", $P1866
    find_lex $P1869, "$/"
    unless_null $P1869, vivify_533
    new $P1869, "Hash"
  vivify_533:
    set $P1870, $P1869["sigil"]
    unless_null $P1870, vivify_534
    new $P1870, "Undef"
  vivify_534:
    set $S1871, $P1870
    iseq $I1872, $S1871, "@"
    if $I1872, if_1868
.annotate "line", 655
    find_lex $P1876, "$/"
    unless_null $P1876, vivify_535
    new $P1876, "Hash"
  vivify_535:
    set $P1877, $P1876["sigil"]
    unless_null $P1877, vivify_536
    new $P1877, "Undef"
  vivify_536:
    set $S1878, $P1877
    iseq $I1879, $S1878, "%"
    if $I1879, if_1875
    new $P1881, "String"
    assign $P1881, "item"
    set $P1874, $P1881
    goto if_1875_end
  if_1875:
    new $P1880, "String"
    assign $P1880, "hash"
    set $P1874, $P1880
  if_1875_end:
    set $P1867, $P1874
.annotate "line", 654
    goto if_1868_end
  if_1868:
    new $P1873, "String"
    assign $P1873, "list"
    set $P1867, $P1873
  if_1868_end:
    store_lex "$name", $P1867
.annotate "line", 657
    find_lex $P1882, "$/"
    get_hll_global $P1883, ["PAST"], "Op"
    find_lex $P1884, "$name"
    find_lex $P1885, "$/"
    unless_null $P1885, vivify_537
    new $P1885, "Hash"
  vivify_537:
    set $P1886, $P1885["semilist"]
    unless_null $P1886, vivify_538
    new $P1886, "Undef"
  vivify_538:
    $P1887 = $P1886."ast"()
    $P1888 = $P1883."new"($P1887, "callmethod" :named("pasttype"), $P1884 :named("name"))
    $P1889 = $P1882."!make"($P1888)
.annotate "line", 653
    .return ($P1889)
  control_1862:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1890, exception, "payload"
    .return ($P1890)
.end


.namespace ["NQP";"Actions"]
.sub "semilist"  :subid("99_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1895
.annotate "line", 660
    get_root_global $P1893, ["parrot";"PCT"], "reuse1894_1261201533.16239"
    unless_null $P1893, reuse1894
    new $P1893, ["ExceptionHandler"]
    $P1893."handle_types"(58)
  reuse1894:
    set_addr $P1893, control_1892
    push_eh $P1893
    .lex "self", self
    .lex "$/", param_1895
    find_lex $P1896, "$/"
    find_lex $P1897, "$/"
    unless_null $P1897, vivify_539
    new $P1897, "Hash"
  vivify_539:
    set $P1898, $P1897["statement"]
    unless_null $P1898, vivify_540
    new $P1898, "Undef"
  vivify_540:
    $P1899 = $P1898."ast"()
    $P1900 = $P1896."!make"($P1899)
    .return ($P1900)
  control_1892:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1901, exception, "payload"
    .return ($P1901)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<[ ]>"  :subid("100_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1906
.annotate "line", 662
    get_root_global $P1904, ["parrot";"PCT"], "reuse1905_1261201533.16639"
    unless_null $P1904, reuse1905
    new $P1904, ["ExceptionHandler"]
    $P1904."handle_types"(58)
  reuse1905:
    set_addr $P1904, control_1903
    push_eh $P1904
    .lex "self", self
    .lex "$/", param_1906
.annotate "line", 663
    find_lex $P1907, "$/"
    get_hll_global $P1908, ["PAST"], "Var"
    find_lex $P1909, "$/"
    unless_null $P1909, vivify_541
    new $P1909, "Hash"
  vivify_541:
    set $P1910, $P1909["EXPR"]
    unless_null $P1910, vivify_542
    new $P1910, "Undef"
  vivify_542:
    $P1911 = $P1910."ast"()
    $P1912 = $P1908."new"($P1911, "keyed_int" :named("scope"), "Undef" :named("viviself"), "ResizablePMCArray" :named("vivibase"))
    $P1913 = $P1907."!make"($P1912)
.annotate "line", 662
    .return ($P1913)
  control_1903:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1914, exception, "payload"
    .return ($P1914)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("101_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1919
.annotate "line", 668
    get_root_global $P1917, ["parrot";"PCT"], "reuse1918_1261201533.17162"
    unless_null $P1917, reuse1918
    new $P1917, ["ExceptionHandler"]
    $P1917."handle_types"(58)
  reuse1918:
    set_addr $P1917, control_1916
    push_eh $P1917
    .lex "self", self
    .lex "$/", param_1919
.annotate "line", 669
    find_lex $P1920, "$/"
    get_hll_global $P1921, ["PAST"], "Var"
    find_lex $P1922, "$/"
    unless_null $P1922, vivify_543
    new $P1922, "Hash"
  vivify_543:
    set $P1923, $P1922["EXPR"]
    unless_null $P1923, vivify_544
    new $P1923, "Undef"
  vivify_544:
    $P1924 = $P1923."ast"()
    $P1925 = $P1921."new"($P1924, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1926 = $P1920."!make"($P1925)
.annotate "line", 668
    .return ($P1926)
  control_1916:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1927, exception, "payload"
    .return ($P1927)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("102_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1932
.annotate "line", 674
    get_root_global $P1930, ["parrot";"PCT"], "reuse1931_1261201533.17691"
    unless_null $P1930, reuse1931
    new $P1930, ["ExceptionHandler"]
    $P1930."handle_types"(58)
  reuse1931:
    set_addr $P1930, control_1929
    push_eh $P1930
    .lex "self", self
    .lex "$/", param_1932
.annotate "line", 675
    find_lex $P1933, "$/"
    get_hll_global $P1934, ["PAST"], "Var"
    find_lex $P1935, "$/"
    unless_null $P1935, vivify_545
    new $P1935, "Hash"
  vivify_545:
    set $P1936, $P1935["quote_EXPR"]
    unless_null $P1936, vivify_546
    new $P1936, "Undef"
  vivify_546:
    $P1937 = $P1936."ast"()
    $P1938 = $P1934."new"($P1937, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1939 = $P1933."!make"($P1938)
.annotate "line", 674
    .return ($P1939)
  control_1929:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1940, exception, "payload"
    .return ($P1940)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<( )>"  :subid("103_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1945
.annotate "line", 680
    get_root_global $P1943, ["parrot";"PCT"], "reuse1944_1261201533.1821"
    unless_null $P1943, reuse1944
    new $P1943, ["ExceptionHandler"]
    $P1943."handle_types"(58)
  reuse1944:
    set_addr $P1943, control_1942
    push_eh $P1943
    .lex "self", self
    .lex "$/", param_1945
.annotate "line", 681
    find_lex $P1946, "$/"
    find_lex $P1947, "$/"
    unless_null $P1947, vivify_547
    new $P1947, "Hash"
  vivify_547:
    set $P1948, $P1947["arglist"]
    unless_null $P1948, vivify_548
    new $P1948, "Undef"
  vivify_548:
    $P1949 = $P1948."ast"()
    $P1950 = $P1946."!make"($P1949)
.annotate "line", 680
    .return ($P1950)
  control_1942:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1951, exception, "payload"
    .return ($P1951)
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("104_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1956
.annotate "line", 684
    get_root_global $P1954, ["parrot";"PCT"], "reuse1955_1261201533.18608"
    unless_null $P1954, reuse1955
    new $P1954, ["ExceptionHandler"]
    $P1954."handle_types"(58)
  reuse1955:
    set_addr $P1954, control_1953
    push_eh $P1954
    .lex "self", self
    .lex "$/", param_1956
.annotate "line", 685
    find_lex $P1957, "$/"
    find_lex $P1960, "$/"
    unless_null $P1960, vivify_549
    new $P1960, "Hash"
  vivify_549:
    set $P1961, $P1960["quote"]
    unless_null $P1961, vivify_550
    new $P1961, "Undef"
  vivify_550:
    if $P1961, if_1959
    find_lex $P1965, "$/"
    unless_null $P1965, vivify_551
    new $P1965, "Hash"
  vivify_551:
    set $P1966, $P1965["number"]
    unless_null $P1966, vivify_552
    new $P1966, "Undef"
  vivify_552:
    $P1967 = $P1966."ast"()
    set $P1958, $P1967
    goto if_1959_end
  if_1959:
    find_lex $P1962, "$/"
    unless_null $P1962, vivify_553
    new $P1962, "Hash"
  vivify_553:
    set $P1963, $P1962["quote"]
    unless_null $P1963, vivify_554
    new $P1963, "Undef"
  vivify_554:
    $P1964 = $P1963."ast"()
    set $P1958, $P1964
  if_1959_end:
    $P1968 = $P1957."!make"($P1958)
.annotate "line", 684
    .return ($P1968)
  control_1953:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1969, exception, "payload"
    .return ($P1969)
.end


.namespace ["NQP";"Actions"]
.sub "number"  :subid("105_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_1974
.annotate "line", 688
    get_root_global $P1972, ["parrot";"PCT"], "reuse1973_1261201533.19261"
    unless_null $P1972, reuse1973
    new $P1972, ["ExceptionHandler"]
    $P1972."handle_types"(58)
  reuse1973:
    set_addr $P1972, control_1971
    push_eh $P1972
    .lex "self", self
    .lex "$/", param_1974
.annotate "line", 689
    new $P1975, "Undef"
    .lex "$value", $P1975
    find_lex $P1978, "$/"
    unless_null $P1978, vivify_555
    new $P1978, "Hash"
  vivify_555:
    set $P1979, $P1978["dec_number"]
    unless_null $P1979, vivify_556
    new $P1979, "Undef"
  vivify_556:
    if $P1979, if_1977
    find_lex $P1983, "$/"
    unless_null $P1983, vivify_557
    new $P1983, "Hash"
  vivify_557:
    set $P1984, $P1983["integer"]
    unless_null $P1984, vivify_558
    new $P1984, "Undef"
  vivify_558:
    $P1985 = $P1984."ast"()
    set $P1976, $P1985
    goto if_1977_end
  if_1977:
    find_lex $P1980, "$/"
    unless_null $P1980, vivify_559
    new $P1980, "Hash"
  vivify_559:
    set $P1981, $P1980["dec_number"]
    unless_null $P1981, vivify_560
    new $P1981, "Undef"
  vivify_560:
    $P1982 = $P1981."ast"()
    set $P1976, $P1982
  if_1977_end:
    store_lex "$value", $P1976
.annotate "line", 690
    find_lex $P1987, "$/"
    unless_null $P1987, vivify_561
    new $P1987, "Hash"
  vivify_561:
    set $P1988, $P1987["sign"]
    unless_null $P1988, vivify_562
    new $P1988, "Undef"
  vivify_562:
    set $S1989, $P1988
    iseq $I1990, $S1989, "-"
    unless $I1990, if_1986_end
    find_lex $P1991, "$value"
    neg $P1992, $P1991
    store_lex "$value", $P1992
  if_1986_end:
.annotate "line", 691
    find_lex $P1993, "$/"
    get_hll_global $P1994, ["PAST"], "Val"
    find_lex $P1995, "$value"
    $P1996 = $P1994."new"($P1995 :named("value"))
    $P1997 = $P1993."!make"($P1996)
.annotate "line", 688
    .return ($P1997)
  control_1971:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1998, exception, "payload"
    .return ($P1998)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("106_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2003
.annotate "line", 694
    get_root_global $P2001, ["parrot";"PCT"], "reuse2002_1261201533.20363"
    unless_null $P2001, reuse2002
    new $P2001, ["ExceptionHandler"]
    $P2001."handle_types"(58)
  reuse2002:
    set_addr $P2001, control_2000
    push_eh $P2001
    .lex "self", self
    .lex "$/", param_2003
    find_lex $P2004, "$/"
    find_lex $P2005, "$/"
    unless_null $P2005, vivify_563
    new $P2005, "Hash"
  vivify_563:
    set $P2006, $P2005["quote_EXPR"]
    unless_null $P2006, vivify_564
    new $P2006, "Undef"
  vivify_564:
    $P2007 = $P2006."ast"()
    $P2008 = $P2004."!make"($P2007)
    .return ($P2008)
  control_2000:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2009, exception, "payload"
    .return ($P2009)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("107_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2014
.annotate "line", 695
    get_root_global $P2012, ["parrot";"PCT"], "reuse2013_1261201533.20755"
    unless_null $P2012, reuse2013
    new $P2012, ["ExceptionHandler"]
    $P2012."handle_types"(58)
  reuse2013:
    set_addr $P2012, control_2011
    push_eh $P2012
    .lex "self", self
    .lex "$/", param_2014
    find_lex $P2015, "$/"
    find_lex $P2016, "$/"
    unless_null $P2016, vivify_565
    new $P2016, "Hash"
  vivify_565:
    set $P2017, $P2016["quote_EXPR"]
    unless_null $P2017, vivify_566
    new $P2017, "Undef"
  vivify_566:
    $P2018 = $P2017."ast"()
    $P2019 = $P2015."!make"($P2018)
    .return ($P2019)
  control_2011:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2020, exception, "payload"
    .return ($P2020)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("108_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2025
.annotate "line", 696
    get_root_global $P2023, ["parrot";"PCT"], "reuse2024_1261201533.21149"
    unless_null $P2023, reuse2024
    new $P2023, ["ExceptionHandler"]
    $P2023."handle_types"(58)
  reuse2024:
    set_addr $P2023, control_2022
    push_eh $P2023
    .lex "self", self
    .lex "$/", param_2025
    find_lex $P2026, "$/"
    find_lex $P2027, "$/"
    unless_null $P2027, vivify_567
    new $P2027, "Hash"
  vivify_567:
    set $P2028, $P2027["quote_EXPR"]
    unless_null $P2028, vivify_568
    new $P2028, "Undef"
  vivify_568:
    $P2029 = $P2028."ast"()
    $P2030 = $P2026."!make"($P2029)
    .return ($P2030)
  control_2022:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2031, exception, "payload"
    .return ($P2031)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("109_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2036
.annotate "line", 697
    get_root_global $P2034, ["parrot";"PCT"], "reuse2035_1261201533.21556"
    unless_null $P2034, reuse2035
    new $P2034, ["ExceptionHandler"]
    $P2034."handle_types"(58)
  reuse2035:
    set_addr $P2034, control_2033
    push_eh $P2034
    .lex "self", self
    .lex "$/", param_2036
    find_lex $P2037, "$/"
    find_lex $P2038, "$/"
    unless_null $P2038, vivify_569
    new $P2038, "Hash"
  vivify_569:
    set $P2039, $P2038["quote_EXPR"]
    unless_null $P2039, vivify_570
    new $P2039, "Undef"
  vivify_570:
    $P2040 = $P2039."ast"()
    $P2041 = $P2037."!make"($P2040)
    .return ($P2041)
  control_2033:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2042, exception, "payload"
    .return ($P2042)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q>"  :subid("110_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2047
.annotate "line", 698
    get_root_global $P2045, ["parrot";"PCT"], "reuse2046_1261201533.21947"
    unless_null $P2045, reuse2046
    new $P2045, ["ExceptionHandler"]
    $P2045."handle_types"(58)
  reuse2046:
    set_addr $P2045, control_2044
    push_eh $P2045
    .lex "self", self
    .lex "$/", param_2047
    find_lex $P2048, "$/"
    find_lex $P2049, "$/"
    unless_null $P2049, vivify_571
    new $P2049, "Hash"
  vivify_571:
    set $P2050, $P2049["quote_EXPR"]
    unless_null $P2050, vivify_572
    new $P2050, "Undef"
  vivify_572:
    $P2051 = $P2050."ast"()
    $P2052 = $P2048."!make"($P2051)
    .return ($P2052)
  control_2044:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2053, exception, "payload"
    .return ($P2053)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("111_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2058
.annotate "line", 699
    get_root_global $P2056, ["parrot";"PCT"], "reuse2057_1261201533.22343"
    unless_null $P2056, reuse2057
    new $P2056, ["ExceptionHandler"]
    $P2056."handle_types"(58)
  reuse2057:
    set_addr $P2056, control_2055
    push_eh $P2056
    .lex "self", self
    .lex "$/", param_2058
.annotate "line", 700
    find_lex $P2059, "$/"
    get_hll_global $P2060, ["PAST"], "Op"
    find_lex $P2061, "$/"
    unless_null $P2061, vivify_573
    new $P2061, "Hash"
  vivify_573:
    set $P2062, $P2061["quote_EXPR"]
    unless_null $P2062, vivify_574
    new $P2062, "Undef"
  vivify_574:
    $P2063 = $P2062."ast"()
    $P2064 = $P2063."value"()
    find_lex $P2065, "$/"
    $P2066 = $P2060."new"($P2064 :named("inline"), "inline" :named("pasttype"), $P2065 :named("node"))
    $P2067 = $P2059."!make"($P2066)
.annotate "line", 699
    .return ($P2067)
  control_2055:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2068, exception, "payload"
    .return ($P2068)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym</ />"  :subid("112_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2073
    .param pmc param_2074 :optional
    .param int has_param_2074 :opt_flag
.annotate "line", 705
    get_root_global $P2071, ["parrot";"PCT"], "reuse2072_1261201533.22896"
    unless_null $P2071, reuse2072
    new $P2071, ["ExceptionHandler"]
    $P2071."handle_types"(58)
  reuse2072:
    set_addr $P2071, control_2070
    push_eh $P2071
    .lex "self", self
    .lex "$/", param_2073
    if has_param_2074, optparam_575
    new $P2075, "Undef"
    set param_2074, $P2075
  optparam_575:
    .lex "$key", param_2074
.annotate "line", 715
    new $P2076, "Undef"
    .lex "$regex", $P2076
.annotate "line", 717
    new $P2077, "Undef"
    .lex "$past", $P2077
.annotate "line", 706
    find_lex $P2079, "$key"
    set $S2080, $P2079
    iseq $I2081, $S2080, "open"
    unless $I2081, if_2078_end
.annotate "line", 707

            null $P0
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 711
    get_global $P2082, "@BLOCK"
    unless_null $P2082, vivify_576
    new $P2082, "ResizablePMCArray"
  vivify_576:
    set $P2083, $P2082[0]
    unless_null $P2083, vivify_577
    new $P2083, "Undef"
  vivify_577:
    $P2083."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate "line", 712
    get_global $P2084, "@BLOCK"
    unless_null $P2084, vivify_578
    new $P2084, "ResizablePMCArray"
  vivify_578:
    set $P2085, $P2084[0]
    unless_null $P2085, vivify_579
    new $P2085, "Undef"
  vivify_579:
    $P2085."symbol"("$/", "lexical" :named("scope"))
.annotate "line", 713
    new $P2086, "Exception"
    set $P2086['type'], 58
    new $P2087, "Integer"
    assign $P2087, 0
    setattribute $P2086, 'payload', $P2087
    throw $P2086
  if_2078_end:
.annotate "line", 716
    get_hll_global $P2088, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P2089, "$/"
    unless_null $P2089, vivify_580
    new $P2089, "Hash"
  vivify_580:
    set $P2090, $P2089["p6regex"]
    unless_null $P2090, vivify_581
    new $P2090, "Undef"
  vivify_581:
    $P2091 = $P2090."ast"()
    get_global $P2092, "@BLOCK"
    $P2093 = $P2092."shift"()
    $P2094 = $P2088($P2091, $P2093)
    store_lex "$regex", $P2094
.annotate "line", 718
    get_hll_global $P2095, ["PAST"], "Op"
.annotate "line", 720
    get_hll_global $P2096, ["PAST"], "Var"
    new $P2097, "ResizablePMCArray"
    push $P2097, "Regex"
    $P2098 = $P2096."new"("Regex" :named("name"), $P2097 :named("namespace"), "package" :named("scope"))
    find_lex $P2099, "$regex"
    $P2100 = $P2095."new"($P2098, $P2099, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate "line", 718
    store_lex "$past", $P2100
.annotate "line", 724
    find_lex $P2101, "$regex"
    find_lex $P2102, "$past"
    unless_null $P2102, vivify_582
    new $P2102, "Hash"
    store_lex "$past", $P2102
  vivify_582:
    set $P2102["sink"], $P2101
.annotate "line", 725
    find_lex $P2103, "$/"
    find_lex $P2104, "$past"
    $P2105 = $P2103."!make"($P2104)
.annotate "line", 705
    .return ($P2105)
  control_2070:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2106, exception, "payload"
    .return ($P2106)
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<$>"  :subid("113_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2111
.annotate "line", 728
    get_root_global $P2109, ["parrot";"PCT"], "reuse2110_1261201533.24541"
    unless_null $P2109, reuse2110
    new $P2109, ["ExceptionHandler"]
    $P2109."handle_types"(58)
  reuse2110:
    set_addr $P2109, control_2108
    push_eh $P2109
    .lex "self", self
    .lex "$/", param_2111
    find_lex $P2112, "$/"
    find_lex $P2113, "$/"
    unless_null $P2113, vivify_583
    new $P2113, "Hash"
  vivify_583:
    set $P2114, $P2113["variable"]
    unless_null $P2114, vivify_584
    new $P2114, "Undef"
  vivify_584:
    $P2115 = $P2114."ast"()
    $P2116 = $P2112."!make"($P2115)
    .return ($P2116)
  control_2108:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2117, exception, "payload"
    .return ($P2117)
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<{ }>"  :subid("114_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2122
.annotate "line", 729
    get_root_global $P2120, ["parrot";"PCT"], "reuse2121_1261201533.24932"
    unless_null $P2120, reuse2121
    new $P2120, ["ExceptionHandler"]
    $P2120."handle_types"(58)
  reuse2121:
    set_addr $P2120, control_2119
    push_eh $P2120
    .lex "self", self
    .lex "$/", param_2122
.annotate "line", 730
    find_lex $P2123, "$/"
    get_hll_global $P2124, ["PAST"], "Op"
.annotate "line", 731
    find_lex $P2125, "$/"
    unless_null $P2125, vivify_585
    new $P2125, "Hash"
  vivify_585:
    set $P2126, $P2125["block"]
    unless_null $P2126, vivify_586
    new $P2126, "Undef"
  vivify_586:
    $P2127 = $P2126."ast"()
    $P2128 = "block_immediate"($P2127)
    find_lex $P2129, "$/"
    $P2130 = $P2124."new"($P2128, "set S*" :named("pirop"), $P2129 :named("node"))
.annotate "line", 730
    $P2131 = $P2123."!make"($P2130)
.annotate "line", 729
    .return ($P2131)
  control_2119:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2132, exception, "payload"
    .return ($P2132)
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("115_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2137
.annotate "line", 737
    get_root_global $P2135, ["parrot";"PCT"], "reuse2136_1261201533.25469"
    unless_null $P2135, reuse2136
    new $P2135, ["ExceptionHandler"]
    $P2135."handle_types"(58)
  reuse2136:
    set_addr $P2135, control_2134
    push_eh $P2135
    .lex "self", self
    .lex "$/", param_2137
    find_lex $P2138, "$/"
    find_lex $P2139, "$/"
    unless_null $P2139, vivify_587
    new $P2139, "Hash"
  vivify_587:
    set $P2140, $P2139["dotty"]
    unless_null $P2140, vivify_588
    new $P2140, "Undef"
  vivify_588:
    $P2141 = $P2140."ast"()
    $P2142 = $P2138."!make"($P2141)
    .return ($P2142)
  control_2134:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2143, exception, "payload"
    .return ($P2143)
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("116_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2148
.annotate "line", 739
    get_root_global $P2146, ["parrot";"PCT"], "reuse2147_1261201533.25856"
    unless_null $P2146, reuse2147
    new $P2146, ["ExceptionHandler"]
    $P2146."handle_types"(58)
  reuse2147:
    set_addr $P2146, control_2145
    push_eh $P2146
    .lex "self", self
    .lex "$/", param_2148
.annotate "line", 740
    find_lex $P2149, "$/"
    get_hll_global $P2150, ["PAST"], "Op"
.annotate "line", 741
    new $P2151, "ResizablePMCArray"
    push $P2151, "    clone %r, %0"
    push $P2151, "    inc %0"
    $P2152 = $P2150."new"("postfix:<++>" :named("name"), $P2151 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 740
    $P2153 = $P2149."!make"($P2152)
.annotate "line", 739
    .return ($P2153)
  control_2145:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2154, exception, "payload"
    .return ($P2154)
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("117_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2159
.annotate "line", 745
    get_root_global $P2157, ["parrot";"PCT"], "reuse2158_1261201533.26298"
    unless_null $P2157, reuse2158
    new $P2157, ["ExceptionHandler"]
    $P2157."handle_types"(58)
  reuse2158:
    set_addr $P2157, control_2156
    push_eh $P2157
    .lex "self", self
    .lex "$/", param_2159
.annotate "line", 746
    find_lex $P2160, "$/"
    get_hll_global $P2161, ["PAST"], "Op"
.annotate "line", 747
    new $P2162, "ResizablePMCArray"
    push $P2162, "    clone %r, %0"
    push $P2162, "    dec %0"
    $P2163 = $P2161."new"("postfix:<-->" :named("name"), $P2162 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 746
    $P2164 = $P2160."!make"($P2163)
.annotate "line", 745
    .return ($P2164)
  control_2156:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2165, exception, "payload"
    .return ($P2165)
.end


.namespace ["NQP";"Actions"]
.sub "prefix:sym<make>"  :subid("118_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2170
.annotate "line", 751
    get_root_global $P2168, ["parrot";"PCT"], "reuse2169_1261201533.26742"
    unless_null $P2168, reuse2169
    new $P2168, ["ExceptionHandler"]
    $P2168."handle_types"(58)
  reuse2169:
    set_addr $P2168, control_2167
    push_eh $P2168
    .lex "self", self
    .lex "$/", param_2170
.annotate "line", 752
    find_lex $P2171, "$/"
    get_hll_global $P2172, ["PAST"], "Op"
.annotate "line", 753
    get_hll_global $P2173, ["PAST"], "Var"
    $P2174 = $P2173."new"("$/" :named("name"), "contextual" :named("scope"))
    find_lex $P2175, "$/"
    $P2176 = $P2172."new"($P2174, "callmethod" :named("pasttype"), "!make" :named("name"), $P2175 :named("node"))
.annotate "line", 752
    $P2177 = $P2171."!make"($P2176)
.annotate "line", 751
    .return ($P2177)
  control_2167:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2178, exception, "payload"
    .return ($P2178)
.end


.namespace ["NQP";"Actions"]
.sub "infix:sym<~~>"  :subid("119_1261201532.26144") :method :outer("11_1261201532.26144")
    .param pmc param_2183
.annotate "line", 760
    get_root_global $P2181, ["parrot";"PCT"], "reuse2182_1261201533.27263"
    unless_null $P2181, reuse2182
    new $P2181, ["ExceptionHandler"]
    $P2181."handle_types"(58)
  reuse2182:
    set_addr $P2181, control_2180
    push_eh $P2181
    .lex "self", self
    .lex "$/", param_2183
.annotate "line", 761
    find_lex $P2184, "$/"
    get_hll_global $P2185, ["PAST"], "Op"
    find_lex $P2186, "$/"
    $P2187 = $P2185."new"("callmethod" :named("pasttype"), "ACCEPTS" :named("name"), $P2186 :named("node"))
    $P2188 = $P2184."!make"($P2187)
.annotate "line", 760
    .return ($P2188)
  control_2180:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2189, exception, "payload"
    .return ($P2189)
.end


.namespace ["NQP";"RegexActions"]
.sub "_block2190"  :subid("120_1261201532.26144") :outer("11_1261201532.26144")
.annotate "line", 765
    .const 'Sub' $P2229 = "124_1261201532.26144" 
    capture_lex $P2229
    .const 'Sub' $P2218 = "123_1261201532.26144" 
    capture_lex $P2218
    .const 'Sub' $P2207 = "122_1261201532.26144" 
    capture_lex $P2207
    .const 'Sub' $P2192 = "121_1261201532.26144" 
    capture_lex $P2192
.annotate "line", 776
    .const 'Sub' $P2229 = "124_1261201532.26144" 
    capture_lex $P2229
.annotate "line", 765
    .return ($P2229)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<:my>"  :subid("121_1261201532.26144") :method :outer("120_1261201532.26144")
    .param pmc param_2196
.annotate "line", 767
    get_root_global $P2194, ["parrot";"PCT"], "reuse2195_1261201533.27756"
    unless_null $P2194, reuse2195
    new $P2194, ["ExceptionHandler"]
    $P2194."handle_types"(58)
  reuse2195:
    set_addr $P2194, control_2193
    push_eh $P2194
    .lex "self", self
    .lex "$/", param_2196
.annotate "line", 768
    new $P2197, "Undef"
    .lex "$past", $P2197
    find_lex $P2198, "$/"
    unless_null $P2198, vivify_589
    new $P2198, "Hash"
  vivify_589:
    set $P2199, $P2198["statement"]
    unless_null $P2199, vivify_590
    new $P2199, "Undef"
  vivify_590:
    $P2200 = $P2199."ast"()
    store_lex "$past", $P2200
.annotate "line", 769
    find_lex $P2201, "$/"
    get_hll_global $P2202, ["PAST"], "Regex"
    find_lex $P2203, "$past"
    $P2204 = $P2202."new"($P2203, "pastnode" :named("pasttype"))
    $P2205 = $P2201."!make"($P2204)
.annotate "line", 767
    .return ($P2205)
  control_2193:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2206, exception, "payload"
    .return ($P2206)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<{ }>"  :subid("122_1261201532.26144") :method :outer("120_1261201532.26144")
    .param pmc param_2211
.annotate "line", 772
    get_root_global $P2209, ["parrot";"PCT"], "reuse2210_1261201533.28346"
    unless_null $P2209, reuse2210
    new $P2209, ["ExceptionHandler"]
    $P2209."handle_types"(58)
  reuse2210:
    set_addr $P2209, control_2208
    push_eh $P2209
    .lex "self", self
    .lex "$/", param_2211
    find_lex $P2212, "$/"
    find_lex $P2213, "$/"
    unless_null $P2213, vivify_591
    new $P2213, "Hash"
  vivify_591:
    set $P2214, $P2213["codeblock"]
    unless_null $P2214, vivify_592
    new $P2214, "Undef"
  vivify_592:
    $P2215 = $P2214."ast"()
    $P2216 = $P2212."!make"($P2215)
    .return ($P2216)
  control_2208:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2217, exception, "payload"
    .return ($P2217)
.end


.namespace ["NQP";"RegexActions"]
.sub "assertion:sym<{ }>"  :subid("123_1261201532.26144") :method :outer("120_1261201532.26144")
    .param pmc param_2222
.annotate "line", 774
    get_root_global $P2220, ["parrot";"PCT"], "reuse2221_1261201533.28771"
    unless_null $P2220, reuse2221
    new $P2220, ["ExceptionHandler"]
    $P2220."handle_types"(58)
  reuse2221:
    set_addr $P2220, control_2219
    push_eh $P2220
    .lex "self", self
    .lex "$/", param_2222
    find_lex $P2223, "$/"
    find_lex $P2224, "$/"
    unless_null $P2224, vivify_593
    new $P2224, "Hash"
  vivify_593:
    set $P2225, $P2224["codeblock"]
    unless_null $P2225, vivify_594
    new $P2225, "Undef"
  vivify_594:
    $P2226 = $P2225."ast"()
    $P2227 = $P2223."!make"($P2226)
    .return ($P2227)
  control_2219:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2228, exception, "payload"
    .return ($P2228)
.end


.namespace ["NQP";"RegexActions"]
.sub "codeblock"  :subid("124_1261201532.26144") :method :outer("120_1261201532.26144")
    .param pmc param_2233
.annotate "line", 776
    get_root_global $P2231, ["parrot";"PCT"], "reuse2232_1261201533.29194"
    unless_null $P2231, reuse2232
    new $P2231, ["ExceptionHandler"]
    $P2231."handle_types"(58)
  reuse2232:
    set_addr $P2231, control_2230
    push_eh $P2231
    .lex "self", self
    .lex "$/", param_2233
.annotate "line", 777
    new $P2234, "Undef"
    .lex "$block", $P2234
.annotate "line", 779
    new $P2235, "Undef"
    .lex "$past", $P2235
.annotate "line", 777
    find_lex $P2236, "$/"
    unless_null $P2236, vivify_595
    new $P2236, "Hash"
  vivify_595:
    set $P2237, $P2236["block"]
    unless_null $P2237, vivify_596
    new $P2237, "Undef"
  vivify_596:
    $P2238 = $P2237."ast"()
    store_lex "$block", $P2238
.annotate "line", 778
    find_lex $P2239, "$block"
    $P2239."blocktype"("immediate")
.annotate "line", 780
    get_hll_global $P2240, ["PAST"], "Regex"
.annotate "line", 781
    get_hll_global $P2241, ["PAST"], "Stmts"
.annotate "line", 782
    get_hll_global $P2242, ["PAST"], "Op"
.annotate "line", 783
    get_hll_global $P2243, ["PAST"], "Var"
    $P2244 = $P2243."new"("$/" :named("name"))
.annotate "line", 784
    get_hll_global $P2245, ["PAST"], "Op"
.annotate "line", 785
    get_hll_global $P2246, ["PAST"], "Var"
    $P2247 = $P2246."new"(unicode:"$\x{a2}" :named("name"))
    $P2248 = $P2245."new"($P2247, "MATCH" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 784
    $P2249 = $P2242."new"($P2244, $P2248, "bind" :named("pasttype"))
.annotate "line", 782
    find_lex $P2250, "$block"
    $P2251 = $P2241."new"($P2249, $P2250)
.annotate "line", 781
    $P2252 = $P2240."new"($P2251, "pastnode" :named("pasttype"))
.annotate "line", 780
    store_lex "$past", $P2252
.annotate "line", 795
    find_lex $P2253, "$/"
    find_lex $P2254, "$past"
    $P2255 = $P2253."!make"($P2254)
.annotate "line", 776
    .return ($P2255)
  control_2230:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2256, exception, "payload"
    .return ($P2256)
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
    $P0 = split ' ', 'e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v parsetrace'
    setattribute nqpproto, '@cmdoptions', $P0
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
