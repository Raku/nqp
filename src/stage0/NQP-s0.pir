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
.sub "_block11"  :anon :subid("10_1273727990.68261")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate 'line', 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P1322 = $P14()
.annotate 'line', 1
    .return ($P1322)
.end


.namespace []
.sub "" :load :init :subid("post339") :outer("10_1273727990.68261")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1273727990.68261" 
    .local pmc block
    set block, $P12
    $P1323 = get_root_global ["parrot"], "P6metaclass"
    $P1323."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1273727990.68261") :outer("10_1273727990.68261")
.annotate 'line', 4
    get_hll_global $P1266, ["NQP";"Regex"], "_block1265" 
    capture_lex $P1266
    .const 'Sub' $P1252 = "325_1273727990.68261" 
    capture_lex $P1252
    .const 'Sub' $P1246 = "323_1273727990.68261" 
    capture_lex $P1246
    .const 'Sub' $P1240 = "321_1273727990.68261" 
    capture_lex $P1240
    .const 'Sub' $P1234 = "319_1273727990.68261" 
    capture_lex $P1234
    .const 'Sub' $P1228 = "317_1273727990.68261" 
    capture_lex $P1228
    .const 'Sub' $P1222 = "315_1273727990.68261" 
    capture_lex $P1222
    .const 'Sub' $P1215 = "313_1273727990.68261" 
    capture_lex $P1215
    .const 'Sub' $P1208 = "311_1273727990.68261" 
    capture_lex $P1208
    .const 'Sub' $P1201 = "309_1273727990.68261" 
    capture_lex $P1201
    .const 'Sub' $P1194 = "307_1273727990.68261" 
    capture_lex $P1194
    .const 'Sub' $P1188 = "305_1273727990.68261" 
    capture_lex $P1188
    .const 'Sub' $P1181 = "303_1273727990.68261" 
    capture_lex $P1181
    .const 'Sub' $P1174 = "301_1273727990.68261" 
    capture_lex $P1174
    .const 'Sub' $P1167 = "299_1273727990.68261" 
    capture_lex $P1167
    .const 'Sub' $P1160 = "297_1273727990.68261" 
    capture_lex $P1160
    .const 'Sub' $P1153 = "295_1273727990.68261" 
    capture_lex $P1153
    .const 'Sub' $P1146 = "293_1273727990.68261" 
    capture_lex $P1146
    .const 'Sub' $P1139 = "291_1273727990.68261" 
    capture_lex $P1139
    .const 'Sub' $P1132 = "289_1273727990.68261" 
    capture_lex $P1132
    .const 'Sub' $P1125 = "287_1273727990.68261" 
    capture_lex $P1125
    .const 'Sub' $P1118 = "285_1273727990.68261" 
    capture_lex $P1118
    .const 'Sub' $P1111 = "283_1273727990.68261" 
    capture_lex $P1111
    .const 'Sub' $P1104 = "281_1273727990.68261" 
    capture_lex $P1104
    .const 'Sub' $P1097 = "279_1273727990.68261" 
    capture_lex $P1097
    .const 'Sub' $P1090 = "277_1273727990.68261" 
    capture_lex $P1090
    .const 'Sub' $P1083 = "275_1273727990.68261" 
    capture_lex $P1083
    .const 'Sub' $P1076 = "273_1273727990.68261" 
    capture_lex $P1076
    .const 'Sub' $P1069 = "271_1273727990.68261" 
    capture_lex $P1069
    .const 'Sub' $P1062 = "269_1273727990.68261" 
    capture_lex $P1062
    .const 'Sub' $P1055 = "267_1273727990.68261" 
    capture_lex $P1055
    .const 'Sub' $P1048 = "265_1273727990.68261" 
    capture_lex $P1048
    .const 'Sub' $P1041 = "263_1273727990.68261" 
    capture_lex $P1041
    .const 'Sub' $P1034 = "261_1273727990.68261" 
    capture_lex $P1034
    .const 'Sub' $P1027 = "259_1273727990.68261" 
    capture_lex $P1027
    .const 'Sub' $P1020 = "257_1273727990.68261" 
    capture_lex $P1020
    .const 'Sub' $P1013 = "255_1273727990.68261" 
    capture_lex $P1013
    .const 'Sub' $P1006 = "253_1273727990.68261" 
    capture_lex $P1006
    .const 'Sub' $P1000 = "251_1273727990.68261" 
    capture_lex $P1000
    .const 'Sub' $P993 = "249_1273727990.68261" 
    capture_lex $P993
    .const 'Sub' $P986 = "247_1273727990.68261" 
    capture_lex $P986
    .const 'Sub' $P979 = "245_1273727990.68261" 
    capture_lex $P979
    .const 'Sub' $P972 = "243_1273727990.68261" 
    capture_lex $P972
    .const 'Sub' $P965 = "241_1273727990.68261" 
    capture_lex $P965
    .const 'Sub' $P958 = "239_1273727990.68261" 
    capture_lex $P958
    .const 'Sub' $P951 = "237_1273727990.68261" 
    capture_lex $P951
    .const 'Sub' $P945 = "235_1273727990.68261" 
    capture_lex $P945
    .const 'Sub' $P939 = "233_1273727990.68261" 
    capture_lex $P939
    .const 'Sub' $P934 = "231_1273727990.68261" 
    capture_lex $P934
    .const 'Sub' $P928 = "229_1273727990.68261" 
    capture_lex $P928
    .const 'Sub' $P922 = "227_1273727990.68261" 
    capture_lex $P922
    .const 'Sub' $P917 = "225_1273727990.68261" 
    capture_lex $P917
    .const 'Sub' $P912 = "223_1273727990.68261" 
    capture_lex $P912
    .const 'Sub' $P905 = "221_1273727990.68261" 
    capture_lex $P905
    .const 'Sub' $P897 = "219_1273727990.68261" 
    capture_lex $P897
    .const 'Sub' $P892 = "217_1273727990.68261" 
    capture_lex $P892
    .const 'Sub' $P887 = "215_1273727990.68261" 
    capture_lex $P887
    .const 'Sub' $P882 = "213_1273727990.68261" 
    capture_lex $P882
    .const 'Sub' $P874 = "211_1273727990.68261" 
    capture_lex $P874
    .const 'Sub' $P866 = "209_1273727990.68261" 
    capture_lex $P866
    .const 'Sub' $P861 = "207_1273727990.68261" 
    capture_lex $P861
    .const 'Sub' $P856 = "205_1273727990.68261" 
    capture_lex $P856
    .const 'Sub' $P851 = "203_1273727990.68261" 
    capture_lex $P851
    .const 'Sub' $P845 = "201_1273727990.68261" 
    capture_lex $P845
    .const 'Sub' $P839 = "199_1273727990.68261" 
    capture_lex $P839
    .const 'Sub' $P833 = "197_1273727990.68261" 
    capture_lex $P833
    .const 'Sub' $P827 = "195_1273727990.68261" 
    capture_lex $P827
    .const 'Sub' $P821 = "193_1273727990.68261" 
    capture_lex $P821
    .const 'Sub' $P816 = "191_1273727990.68261" 
    capture_lex $P816
    .const 'Sub' $P811 = "189_1273727990.68261" 
    capture_lex $P811
    .const 'Sub' $P798 = "185_1273727990.68261" 
    capture_lex $P798
    .const 'Sub' $P790 = "183_1273727990.68261" 
    capture_lex $P790
    .const 'Sub' $P784 = "181_1273727990.68261" 
    capture_lex $P784
    .const 'Sub' $P777 = "179_1273727990.68261" 
    capture_lex $P777
    .const 'Sub' $P771 = "177_1273727990.68261" 
    capture_lex $P771
    .const 'Sub' $P763 = "175_1273727990.68261" 
    capture_lex $P763
    .const 'Sub' $P755 = "173_1273727990.68261" 
    capture_lex $P755
    .const 'Sub' $P749 = "171_1273727990.68261" 
    capture_lex $P749
    .const 'Sub' $P743 = "169_1273727990.68261" 
    capture_lex $P743
    .const 'Sub' $P728 = "165_1273727990.68261" 
    capture_lex $P728
    .const 'Sub' $P691 = "163_1273727990.68261" 
    capture_lex $P691
    .const 'Sub' $P683 = "161_1273727990.68261" 
    capture_lex $P683
    .const 'Sub' $P677 = "159_1273727990.68261" 
    capture_lex $P677
    .const 'Sub' $P667 = "157_1273727990.68261" 
    capture_lex $P667
    .const 'Sub' $P652 = "155_1273727990.68261" 
    capture_lex $P652
    .const 'Sub' $P643 = "153_1273727990.68261" 
    capture_lex $P643
    .const 'Sub' $P624 = "151_1273727990.68261" 
    capture_lex $P624
    .const 'Sub' $P600 = "149_1273727990.68261" 
    capture_lex $P600
    .const 'Sub' $P593 = "147_1273727990.68261" 
    capture_lex $P593
    .const 'Sub' $P586 = "145_1273727990.68261" 
    capture_lex $P586
    .const 'Sub' $P576 = "141_1273727990.68261" 
    capture_lex $P576
    .const 'Sub' $P565 = "139_1273727990.68261" 
    capture_lex $P565
    .const 'Sub' $P558 = "137_1273727990.68261" 
    capture_lex $P558
    .const 'Sub' $P551 = "135_1273727990.68261" 
    capture_lex $P551
    .const 'Sub' $P544 = "133_1273727990.68261" 
    capture_lex $P544
    .const 'Sub' $P517 = "129_1273727990.68261" 
    capture_lex $P517
    .const 'Sub' $P508 = "127_1273727990.68261" 
    capture_lex $P508
    .const 'Sub' $P501 = "125_1273727990.68261" 
    capture_lex $P501
    .const 'Sub' $P492 = "121_1273727990.68261" 
    capture_lex $P492
    .const 'Sub' $P487 = "119_1273727990.68261" 
    capture_lex $P487
    .const 'Sub' $P475 = "117_1273727990.68261" 
    capture_lex $P475
    .const 'Sub' $P463 = "115_1273727990.68261" 
    capture_lex $P463
    .const 'Sub' $P455 = "113_1273727990.68261" 
    capture_lex $P455
    .const 'Sub' $P450 = "111_1273727990.68261" 
    capture_lex $P450
    .const 'Sub' $P444 = "109_1273727990.68261" 
    capture_lex $P444
    .const 'Sub' $P438 = "107_1273727990.68261" 
    capture_lex $P438
    .const 'Sub' $P432 = "105_1273727990.68261" 
    capture_lex $P432
    .const 'Sub' $P426 = "103_1273727990.68261" 
    capture_lex $P426
    .const 'Sub' $P420 = "101_1273727990.68261" 
    capture_lex $P420
    .const 'Sub' $P414 = "99_1273727990.68261" 
    capture_lex $P414
    .const 'Sub' $P408 = "97_1273727990.68261" 
    capture_lex $P408
    .const 'Sub' $P402 = "95_1273727990.68261" 
    capture_lex $P402
    .const 'Sub' $P394 = "93_1273727990.68261" 
    capture_lex $P394
    .const 'Sub' $P386 = "91_1273727990.68261" 
    capture_lex $P386
    .const 'Sub' $P374 = "87_1273727990.68261" 
    capture_lex $P374
    .const 'Sub' $P366 = "85_1273727990.68261" 
    capture_lex $P366
    .const 'Sub' $P356 = "81_1273727990.68261" 
    capture_lex $P356
    .const 'Sub' $P349 = "79_1273727990.68261" 
    capture_lex $P349
    .const 'Sub' $P342 = "77_1273727990.68261" 
    capture_lex $P342
    .const 'Sub' $P330 = "73_1273727990.68261" 
    capture_lex $P330
    .const 'Sub' $P322 = "71_1273727990.68261" 
    capture_lex $P322
    .const 'Sub' $P314 = "69_1273727990.68261" 
    capture_lex $P314
    .const 'Sub' $P294 = "67_1273727990.68261" 
    capture_lex $P294
    .const 'Sub' $P285 = "65_1273727990.68261" 
    capture_lex $P285
    .const 'Sub' $P267 = "62_1273727990.68261" 
    capture_lex $P267
    .const 'Sub' $P247 = "60_1273727990.68261" 
    capture_lex $P247
    .const 'Sub' $P238 = "56_1273727990.68261" 
    capture_lex $P238
    .const 'Sub' $P233 = "54_1273727990.68261" 
    capture_lex $P233
    .const 'Sub' $P224 = "50_1273727990.68261" 
    capture_lex $P224
    .const 'Sub' $P219 = "48_1273727990.68261" 
    capture_lex $P219
    .const 'Sub' $P211 = "46_1273727990.68261" 
    capture_lex $P211
    .const 'Sub' $P204 = "44_1273727990.68261" 
    capture_lex $P204
    .const 'Sub' $P198 = "42_1273727990.68261" 
    capture_lex $P198
    .const 'Sub' $P190 = "40_1273727990.68261" 
    capture_lex $P190
    .const 'Sub' $P184 = "38_1273727990.68261" 
    capture_lex $P184
    .const 'Sub' $P178 = "36_1273727990.68261" 
    capture_lex $P178
    .const 'Sub' $P162 = "33_1273727990.68261" 
    capture_lex $P162
    .const 'Sub' $P149 = "31_1273727990.68261" 
    capture_lex $P149
    .const 'Sub' $P142 = "29_1273727990.68261" 
    capture_lex $P142
    .const 'Sub' $P96 = "26_1273727990.68261" 
    capture_lex $P96
    .const 'Sub' $P78 = "23_1273727990.68261" 
    capture_lex $P78
    .const 'Sub' $P68 = "21_1273727990.68261" 
    capture_lex $P68
    .const 'Sub' $P54 = "19_1273727990.68261" 
    capture_lex $P54
    .const 'Sub' $P46 = "17_1273727990.68261" 
    capture_lex $P46
    .const 'Sub' $P39 = "15_1273727990.68261" 
    capture_lex $P39
    .const 'Sub' $P33 = "13_1273727990.68261" 
    capture_lex $P33
    .const 'Sub' $P15 = "12_1273727990.68261" 
    capture_lex $P15
.annotate 'line', 539
    get_hll_global $P1266, ["NQP";"Regex"], "_block1265" 
    capture_lex $P1266
    $P1305 = $P1266()
.annotate 'line', 4
    .return ($P1305)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post340") :outer("11_1273727990.68261")
.annotate 'line', 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
.annotate 'line', 423
    get_hll_global $P1306, ["NQP"], "Grammar"
    $P1306."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate 'line', 424
    get_hll_global $P1307, ["NQP"], "Grammar"
    $P1307."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate 'line', 425
    get_hll_global $P1308, ["NQP"], "Grammar"
    $P1308."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate 'line', 426
    get_hll_global $P1309, ["NQP"], "Grammar"
    $P1309."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate 'line', 427
    get_hll_global $P1310, ["NQP"], "Grammar"
    $P1310."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate 'line', 428
    get_hll_global $P1311, ["NQP"], "Grammar"
    $P1311."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate 'line', 429
    get_hll_global $P1312, ["NQP"], "Grammar"
    $P1312."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate 'line', 430
    get_hll_global $P1313, ["NQP"], "Grammar"
    $P1313."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate 'line', 431
    get_hll_global $P1314, ["NQP"], "Grammar"
    $P1314."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate 'line', 432
    get_hll_global $P1315, ["NQP"], "Grammar"
    $P1315."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate 'line', 433
    get_hll_global $P1316, ["NQP"], "Grammar"
    $P1316."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate 'line', 434
    get_hll_global $P1317, ["NQP"], "Grammar"
    $P1317."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate 'line', 435
    get_hll_global $P1318, ["NQP"], "Grammar"
    $P1318."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate 'line', 436
    get_hll_global $P1319, ["NQP"], "Grammar"
    $P1319."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate 'line', 437
    get_hll_global $P1320, ["NQP"], "Grammar"
    $P1320."O"(":prec<e=>, :assoc<unary>", "%list_prefix")
.annotate 'line', 422
    $P1321 = get_root_global ["parrot"], "P6metaclass"
    $P1321."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(57)
    push_eh $P17
    .lex "self", self
.annotate 'line', 5
    $P18 = root_new ['parrot';'Hash']
    .lex "%*LANG", $P18
.annotate 'line', 10
    new $P19, "Undef"
    .lex "$*SCOPE", $P19
.annotate 'line', 4
    find_lex $P20, "%*LANG"
    unless_null $P20, vivify_341
    get_hll_global $P20, "%LANG"
    unless_null $P20, vivify_342
    die "Contextual %*LANG not found"
  vivify_342:
  vivify_341:
.annotate 'line', 6
    get_hll_global $P21, ["NQP"], "Regex"
    find_lex $P22, "%*LANG"
    unless_null $P22, vivify_343
    get_hll_global $P22, "%LANG"
    unless_null $P22, vivify_344
    die "Contextual %*LANG not found"
  vivify_344:
    store_lex "%*LANG", $P22
  vivify_343:
    set $P22["Regex"], $P21
.annotate 'line', 7
    get_hll_global $P23, ["NQP"], "RegexActions"
    find_lex $P24, "%*LANG"
    unless_null $P24, vivify_345
    get_hll_global $P24, "%LANG"
    unless_null $P24, vivify_346
    die "Contextual %*LANG not found"
  vivify_346:
    store_lex "%*LANG", $P24
  vivify_345:
    set $P24["Regex-actions"], $P23
.annotate 'line', 8
    get_hll_global $P25, ["NQP"], "Grammar"
    find_lex $P26, "%*LANG"
    unless_null $P26, vivify_347
    get_hll_global $P26, "%LANG"
    unless_null $P26, vivify_348
    die "Contextual %*LANG not found"
  vivify_348:
    store_lex "%*LANG", $P26
  vivify_347:
    set $P26["MAIN"], $P25
.annotate 'line', 9
    get_hll_global $P27, ["NQP"], "Actions"
    find_lex $P28, "%*LANG"
    unless_null $P28, vivify_349
    get_hll_global $P28, "%LANG"
    unless_null $P28, vivify_350
    die "Contextual %*LANG not found"
  vivify_350:
    store_lex "%*LANG", $P28
  vivify_349:
    set $P28["MAIN-actions"], $P27
.annotate 'line', 10
    new $P29, "String"
    assign $P29, ""
    store_lex "$*SCOPE", $P29
.annotate 'line', 11
    find_lex $P30, "self"
    $P31 = $P30."comp_unit"()
.annotate 'line', 4
    .return ($P31)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P32, exception, "payload"
    .return ($P32)
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx34_tgt
    .local int rx34_pos
    .local int rx34_off
    .local int rx34_eos
    .local int rx34_rep
    .local pmc rx34_cur
    (rx34_cur, rx34_pos, rx34_tgt) = self."!cursor_start"()
    rx34_cur."!cursor_debug"("START ", "identifier")
    .lex unicode:"$\x{a2}", rx34_cur
    .local pmc match
    .lex "$/", match
    length rx34_eos, rx34_tgt
    set rx34_off, 0
    lt rx34_pos, 2, rx34_start
    sub rx34_off, rx34_pos, 1
    substr rx34_tgt, rx34_tgt, rx34_off
  rx34_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan38_done
    goto rxscan38_scan
  rxscan38_loop:
    ($P10) = rx34_cur."from"()
    inc $P10
    set rx34_pos, $P10
    ge rx34_pos, rx34_eos, rxscan38_done
  rxscan38_scan:
    set_addr $I10, rxscan38_loop
    rx34_cur."!mark_push"(0, rx34_pos, $I10)
  rxscan38_done:
.annotate 'line', 16
  # rx subrule "ident" subtype=capture negate=
    rx34_cur."!cursor_pos"(rx34_pos)
    $P10 = rx34_cur."ident"()
    unless $P10, rx34_fail
    rx34_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx34_pos = $P10."pos"()
  # rx pass
    rx34_cur."!cursor_pass"(rx34_pos, "identifier")
    rx34_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx34_pos)
    .return (rx34_cur)
  rx34_fail:
.annotate 'line', 4
    (rx34_rep, rx34_pos, $I10, $P10) = rx34_cur."!mark_fail"(0)
    lt rx34_pos, -1, rx34_done
    eq rx34_pos, -1, rx34_fail
    jump $I10
  rx34_done:
    rx34_cur."!cursor_fail"()
    rx34_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx34_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1273727990.68261") :method
.annotate 'line', 4
    $P36 = self."!PREFIX__!subrule"("ident", "")
    new $P37, "ResizablePMCArray"
    push $P37, $P36
    .return ($P37)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx40_tgt
    .local int rx40_pos
    .local int rx40_off
    .local int rx40_eos
    .local int rx40_rep
    .local pmc rx40_cur
    (rx40_cur, rx40_pos, rx40_tgt) = self."!cursor_start"()
    rx40_cur."!cursor_debug"("START ", "name")
    rx40_cur."!cursor_caparray"("identifier")
    .lex unicode:"$\x{a2}", rx40_cur
    .local pmc match
    .lex "$/", match
    length rx40_eos, rx40_tgt
    set rx40_off, 0
    lt rx40_pos, 2, rx40_start
    sub rx40_off, rx40_pos, 1
    substr rx40_tgt, rx40_tgt, rx40_off
  rx40_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan43_done
    goto rxscan43_scan
  rxscan43_loop:
    ($P10) = rx40_cur."from"()
    inc $P10
    set rx40_pos, $P10
    ge rx40_pos, rx40_eos, rxscan43_done
  rxscan43_scan:
    set_addr $I10, rxscan43_loop
    rx40_cur."!mark_push"(0, rx40_pos, $I10)
  rxscan43_done:
.annotate 'line', 18
  # rx rxquantr44 ** 1..*
    set_addr $I45, rxquantr44_done
    rx40_cur."!mark_push"(0, -1, $I45)
  rxquantr44_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx40_cur."!cursor_pos"(rx40_pos)
    $P10 = rx40_cur."identifier"()
    unless $P10, rx40_fail
    rx40_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx40_pos = $P10."pos"()
    (rx40_rep) = rx40_cur."!mark_commit"($I45)
    rx40_cur."!mark_push"(rx40_rep, rx40_pos, $I45)
  # rx literal  "::"
    add $I11, rx40_pos, 2
    gt $I11, rx40_eos, rx40_fail
    sub $I11, rx40_pos, rx40_off
    substr $S10, rx40_tgt, $I11, 2
    ne $S10, "::", rx40_fail
    add rx40_pos, 2
    goto rxquantr44_loop
  rxquantr44_done:
  # rx pass
    rx40_cur."!cursor_pass"(rx40_pos, "name")
    rx40_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx40_pos)
    .return (rx40_cur)
  rx40_fail:
.annotate 'line', 4
    (rx40_rep, rx40_pos, $I10, $P10) = rx40_cur."!mark_fail"(0)
    lt rx40_pos, -1, rx40_done
    eq rx40_pos, -1, rx40_fail
    jump $I10
  rx40_done:
    rx40_cur."!cursor_fail"()
    rx40_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx40_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1273727990.68261") :method
.annotate 'line', 4
    new $P42, "ResizablePMCArray"
    push $P42, ""
    .return ($P42)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx47_tgt
    .local int rx47_pos
    .local int rx47_off
    .local int rx47_eos
    .local int rx47_rep
    .local pmc rx47_cur
    (rx47_cur, rx47_pos, rx47_tgt) = self."!cursor_start"()
    rx47_cur."!cursor_debug"("START ", "deflongname")
    rx47_cur."!cursor_caparray"("colonpair")
    .lex unicode:"$\x{a2}", rx47_cur
    .local pmc match
    .lex "$/", match
    length rx47_eos, rx47_tgt
    set rx47_off, 0
    lt rx47_pos, 2, rx47_start
    sub rx47_off, rx47_pos, 1
    substr rx47_tgt, rx47_tgt, rx47_off
  rx47_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan51_done
    goto rxscan51_scan
  rxscan51_loop:
    ($P10) = rx47_cur."from"()
    inc $P10
    set rx47_pos, $P10
    ge rx47_pos, rx47_eos, rxscan51_done
  rxscan51_scan:
    set_addr $I10, rxscan51_loop
    rx47_cur."!mark_push"(0, rx47_pos, $I10)
  rxscan51_done:
.annotate 'line', 21
  # rx subrule "identifier" subtype=capture negate=
    rx47_cur."!cursor_pos"(rx47_pos)
    $P10 = rx47_cur."identifier"()
    unless $P10, rx47_fail
    rx47_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx47_pos = $P10."pos"()
  # rx rxquantr52 ** 0..1
    set_addr $I53, rxquantr52_done
    rx47_cur."!mark_push"(0, rx47_pos, $I53)
  rxquantr52_loop:
  # rx subrule "colonpair" subtype=capture negate=
    rx47_cur."!cursor_pos"(rx47_pos)
    $P10 = rx47_cur."colonpair"()
    unless $P10, rx47_fail
    rx47_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx47_pos = $P10."pos"()
    (rx47_rep) = rx47_cur."!mark_commit"($I53)
  rxquantr52_done:
.annotate 'line', 20
  # rx pass
    rx47_cur."!cursor_pass"(rx47_pos, "deflongname")
    rx47_cur."!cursor_debug"("PASS  ", "deflongname", " at pos=", rx47_pos)
    .return (rx47_cur)
  rx47_fail:
.annotate 'line', 4
    (rx47_rep, rx47_pos, $I10, $P10) = rx47_cur."!mark_fail"(0)
    lt rx47_pos, -1, rx47_done
    eq rx47_pos, -1, rx47_fail
    jump $I10
  rx47_done:
    rx47_cur."!cursor_fail"()
    rx47_cur."!cursor_debug"("FAIL  ", "deflongname")
    .return (rx47_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1273727990.68261") :method
.annotate 'line', 4
    $P49 = self."!PREFIX__!subrule"("identifier", "")
    new $P50, "ResizablePMCArray"
    push $P50, $P49
    .return ($P50)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    (rx55_cur, rx55_pos, rx55_tgt) = self."!cursor_start"()
    rx55_cur."!cursor_debug"("START ", "ENDSTMT")
    .lex unicode:"$\x{a2}", rx55_cur
    .local pmc match
    .lex "$/", match
    length rx55_eos, rx55_tgt
    set rx55_off, 0
    lt rx55_pos, 2, rx55_start
    sub rx55_off, rx55_pos, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan58_done
    goto rxscan58_scan
  rxscan58_loop:
    ($P10) = rx55_cur."from"()
    inc $P10
    set rx55_pos, $P10
    ge rx55_pos, rx55_eos, rxscan58_done
  rxscan58_scan:
    set_addr $I10, rxscan58_loop
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxscan58_done:
.annotate 'line', 28
  # rx rxquantr59 ** 0..1
    set_addr $I67, rxquantr59_done
    rx55_cur."!mark_push"(0, rx55_pos, $I67)
  rxquantr59_loop:
  alt60_0:
.annotate 'line', 25
    set_addr $I10, alt60_1
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
.annotate 'line', 26
  # rx rxquantr61 ** 0..*
    set_addr $I62, rxquantr61_done
    rx55_cur."!mark_push"(0, rx55_pos, $I62)
  rxquantr61_loop:
  # rx enumcharlist negate=0 
    ge rx55_pos, rx55_eos, rx55_fail
    sub $I10, rx55_pos, rx55_off
    substr $S10, rx55_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx55_fail
    inc rx55_pos
    (rx55_rep) = rx55_cur."!mark_commit"($I62)
    rx55_cur."!mark_push"(rx55_rep, rx55_pos, $I62)
    goto rxquantr61_loop
  rxquantr61_done:
  # rxanchor eol
    sub $I10, rx55_pos, rx55_off
    is_cclass $I11, 4096, rx55_tgt, $I10
    if $I11, rxanchor63_done
    ne rx55_pos, rx55_eos, rx55_fail
    eq rx55_pos, 0, rxanchor63_done
    dec $I10
    is_cclass $I11, 4096, rx55_tgt, $I10
    if $I11, rx55_fail
  rxanchor63_done:
  # rx subrule "ws" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ws"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."MARKER"("endstmt")
    unless $P10, rx55_fail
    goto alt60_end
  alt60_1:
.annotate 'line', 27
  # rx rxquantr64 ** 0..1
    set_addr $I65, rxquantr64_done
    rx55_cur."!mark_push"(0, rx55_pos, $I65)
  rxquantr64_loop:
  # rx subrule "unv" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."unv"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
    (rx55_rep) = rx55_cur."!mark_commit"($I65)
  rxquantr64_done:
  # rxanchor eol
    sub $I10, rx55_pos, rx55_off
    is_cclass $I11, 4096, rx55_tgt, $I10
    if $I11, rxanchor66_done
    ne rx55_pos, rx55_eos, rx55_fail
    eq rx55_pos, 0, rxanchor66_done
    dec $I10
    is_cclass $I11, 4096, rx55_tgt, $I10
    if $I11, rx55_fail
  rxanchor66_done:
  # rx subrule "ws" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ws"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."MARKER"("endstmt")
    unless $P10, rx55_fail
  alt60_end:
.annotate 'line', 28
    (rx55_rep) = rx55_cur."!mark_commit"($I67)
  rxquantr59_done:
.annotate 'line', 24
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "ENDSTMT")
    rx55_cur."!cursor_debug"("PASS  ", "ENDSTMT", " at pos=", rx55_pos)
    .return (rx55_cur)
  rx55_fail:
.annotate 'line', 4
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    rx55_cur."!cursor_debug"("FAIL  ", "ENDSTMT")
    .return (rx55_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1273727990.68261") :method
.annotate 'line', 4
    new $P57, "ResizablePMCArray"
    push $P57, ""
    .return ($P57)
.end


.namespace ["NQP";"Grammar"]
.sub "ws"  :subid("21_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    (rx69_cur, rx69_pos, rx69_tgt) = self."!cursor_start"()
    rx69_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx69_cur
    .local pmc match
    .lex "$/", match
    length rx69_eos, rx69_tgt
    set rx69_off, 0
    lt rx69_pos, 2, rx69_start
    sub rx69_off, rx69_pos, 1
    substr rx69_tgt, rx69_tgt, rx69_off
  rx69_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan72_done
    goto rxscan72_scan
  rxscan72_loop:
    ($P10) = rx69_cur."from"()
    inc $P10
    set rx69_pos, $P10
    ge rx69_pos, rx69_eos, rxscan72_done
  rxscan72_scan:
    set_addr $I10, rxscan72_loop
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxscan72_done:
  alt73_0:
.annotate 'line', 31
    set_addr $I10, alt73_1
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
.annotate 'line', 32
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."MARKED"("ws")
    unless $P10, rx69_fail
    goto alt73_end
  alt73_1:
.annotate 'line', 33
  # rx subrule "ww" subtype=zerowidth negate=1
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ww"()
    if $P10, rx69_fail
.annotate 'line', 37
  # rx rxquantr74 ** 0..*
    set_addr $I77, rxquantr74_done
    rx69_cur."!mark_push"(0, rx69_pos, $I77)
  rxquantr74_loop:
  alt75_0:
.annotate 'line', 34
    set_addr $I10, alt75_1
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx69_pos, rx69_off
    find_not_cclass $I11, 32, rx69_tgt, $I10, rx69_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx69_fail
    add rx69_pos, rx69_off, $I11
    goto alt75_end
  alt75_1:
    set_addr $I10, alt75_2
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
.annotate 'line', 35
  # rx literal  "#"
    add $I11, rx69_pos, 1
    gt $I11, rx69_eos, rx69_fail
    sub $I11, rx69_pos, rx69_off
    substr $S10, rx69_tgt, $I11, 1
    ne $S10, "#", rx69_fail
    add rx69_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx69_pos, rx69_off
    find_cclass $I11, 4096, rx69_tgt, $I10, rx69_eos
    add rx69_pos, rx69_off, $I11
    goto alt75_end
  alt75_2:
.annotate 'line', 36
  # rxanchor bol
    eq rx69_pos, 0, rxanchor76_done
    ge rx69_pos, rx69_eos, rx69_fail
    sub $I10, rx69_pos, rx69_off
    dec $I10
    is_cclass $I11, 4096, rx69_tgt, $I10
    unless $I11, rx69_fail
  rxanchor76_done:
  # rx subrule "pod_comment" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."pod_comment"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  alt75_end:
.annotate 'line', 37
    (rx69_rep) = rx69_cur."!mark_commit"($I77)
    rx69_cur."!mark_push"(rx69_rep, rx69_pos, $I77)
    goto rxquantr74_loop
  rxquantr74_done:
.annotate 'line', 38
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."MARKER"("ws")
    unless $P10, rx69_fail
  alt73_end:
.annotate 'line', 31
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "ws")
    rx69_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx69_pos)
    .return (rx69_cur)
  rx69_fail:
.annotate 'line', 4
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    rx69_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx69_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ws"  :subid("22_1273727990.68261") :method
.annotate 'line', 4
    new $P71, "ResizablePMCArray"
    push $P71, ""
    push $P71, ""
    .return ($P71)
.end


.namespace ["NQP";"Grammar"]
.sub "unv"  :subid("23_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .const 'Sub' $P86 = "25_1273727990.68261" 
    capture_lex $P86
    .local string rx79_tgt
    .local int rx79_pos
    .local int rx79_off
    .local int rx79_eos
    .local int rx79_rep
    .local pmc rx79_cur
    (rx79_cur, rx79_pos, rx79_tgt) = self."!cursor_start"()
    rx79_cur."!cursor_debug"("START ", "unv")
    .lex unicode:"$\x{a2}", rx79_cur
    .local pmc match
    .lex "$/", match
    length rx79_eos, rx79_tgt
    set rx79_off, 0
    lt rx79_pos, 2, rx79_start
    sub rx79_off, rx79_pos, 1
    substr rx79_tgt, rx79_tgt, rx79_off
  rx79_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan82_done
    goto rxscan82_scan
  rxscan82_loop:
    ($P10) = rx79_cur."from"()
    inc $P10
    set rx79_pos, $P10
    ge rx79_pos, rx79_eos, rxscan82_done
  rxscan82_scan:
    set_addr $I10, rxscan82_loop
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxscan82_done:
  alt83_0:
.annotate 'line', 43
    set_addr $I10, alt83_1
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
.annotate 'line', 44
  # rxanchor bol
    eq rx79_pos, 0, rxanchor84_done
    ge rx79_pos, rx79_eos, rx79_fail
    sub $I10, rx79_pos, rx79_off
    dec $I10
    is_cclass $I11, 4096, rx79_tgt, $I10
    unless $I11, rx79_fail
  rxanchor84_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    .const 'Sub' $P86 = "25_1273727990.68261" 
    capture_lex $P86
    $P10 = rx79_cur."before"($P86)
    unless $P10, rx79_fail
  # rx subrule "pod_comment" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."pod_comment"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
    goto alt83_end
  alt83_1:
    set_addr $I10, alt83_2
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
.annotate 'line', 45
  # rx rxquantr92 ** 0..*
    set_addr $I93, rxquantr92_done
    rx79_cur."!mark_push"(0, rx79_pos, $I93)
  rxquantr92_loop:
  # rx enumcharlist negate=0 
    ge rx79_pos, rx79_eos, rx79_fail
    sub $I10, rx79_pos, rx79_off
    substr $S10, rx79_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx79_fail
    inc rx79_pos
    (rx79_rep) = rx79_cur."!mark_commit"($I93)
    rx79_cur."!mark_push"(rx79_rep, rx79_pos, $I93)
    goto rxquantr92_loop
  rxquantr92_done:
  # rx literal  "#"
    add $I11, rx79_pos, 1
    gt $I11, rx79_eos, rx79_fail
    sub $I11, rx79_pos, rx79_off
    substr $S10, rx79_tgt, $I11, 1
    ne $S10, "#", rx79_fail
    add rx79_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx79_pos, rx79_off
    find_cclass $I11, 4096, rx79_tgt, $I10, rx79_eos
    add rx79_pos, rx79_off, $I11
    goto alt83_end
  alt83_2:
.annotate 'line', 46
  # rx rxquantr94 ** 1..*
    set_addr $I95, rxquantr94_done
    rx79_cur."!mark_push"(0, -1, $I95)
  rxquantr94_loop:
  # rx enumcharlist negate=0 
    ge rx79_pos, rx79_eos, rx79_fail
    sub $I10, rx79_pos, rx79_off
    substr $S10, rx79_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx79_fail
    inc rx79_pos
    (rx79_rep) = rx79_cur."!mark_commit"($I95)
    rx79_cur."!mark_push"(rx79_rep, rx79_pos, $I95)
    goto rxquantr94_loop
  rxquantr94_done:
  alt83_end:
.annotate 'line', 41
  # rx pass
    rx79_cur."!cursor_pass"(rx79_pos, "unv")
    rx79_cur."!cursor_debug"("PASS  ", "unv", " at pos=", rx79_pos)
    .return (rx79_cur)
  rx79_fail:
.annotate 'line', 4
    (rx79_rep, rx79_pos, $I10, $P10) = rx79_cur."!mark_fail"(0)
    lt rx79_pos, -1, rx79_done
    eq rx79_pos, -1, rx79_fail
    jump $I10
  rx79_done:
    rx79_cur."!cursor_fail"()
    rx79_cur."!cursor_debug"("FAIL  ", "unv")
    .return (rx79_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__unv"  :subid("24_1273727990.68261") :method
.annotate 'line', 4
    new $P81, "ResizablePMCArray"
    push $P81, ""
    push $P81, ""
    push $P81, ""
    .return ($P81)
.end


.namespace ["NQP";"Grammar"]
.sub "_block85"  :anon :subid("25_1273727990.68261") :method :outer("23_1273727990.68261")
.annotate 'line', 44
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    (rx87_cur, rx87_pos, rx87_tgt) = self."!cursor_start"()
    rx87_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    set rx87_off, 0
    lt rx87_pos, 2, rx87_start
    sub rx87_off, rx87_pos, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan88_done
    goto rxscan88_scan
  rxscan88_loop:
    ($P10) = rx87_cur."from"()
    inc $P10
    set rx87_pos, $P10
    ge rx87_pos, rx87_eos, rxscan88_done
  rxscan88_scan:
    set_addr $I10, rxscan88_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan88_done:
  # rx rxquantr89 ** 0..*
    set_addr $I90, rxquantr89_done
    rx87_cur."!mark_push"(0, rx87_pos, $I90)
  rxquantr89_loop:
  # rx enumcharlist negate=0 
    ge rx87_pos, rx87_eos, rx87_fail
    sub $I10, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx87_fail
    inc rx87_pos
    (rx87_rep) = rx87_cur."!mark_commit"($I90)
    rx87_cur."!mark_push"(rx87_rep, rx87_pos, $I90)
    goto rxquantr89_loop
  rxquantr89_done:
  # rx literal  "="
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 1
    ne $S10, "=", rx87_fail
    add rx87_pos, 1
  alt91_0:
    set_addr $I10, alt91_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx charclass w
    ge rx87_pos, rx87_eos, rx87_fail
    sub $I10, rx87_pos, rx87_off
    is_cclass $I11, 8192, rx87_tgt, $I10
    unless $I11, rx87_fail
    inc rx87_pos
    goto alt91_end
  alt91_1:
  # rx literal  "\\"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 1
    ne $S10, "\\", rx87_fail
    add rx87_pos, 1
  alt91_end:
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "")
    rx87_cur."!cursor_debug"("PASS  ", "", " at pos=", rx87_pos)
    .return (rx87_cur)
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    rx87_cur."!cursor_debug"("FAIL  ", "")
    .return (rx87_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "pod_comment"  :subid("26_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .const 'Sub' $P133 = "28_1273727990.68261" 
    capture_lex $P133
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    (rx97_cur, rx97_pos, rx97_tgt) = self."!cursor_start"()
    rx97_cur."!cursor_debug"("START ", "pod_comment")
    .lex unicode:"$\x{a2}", rx97_cur
    .local pmc match
    .lex "$/", match
    length rx97_eos, rx97_tgt
    set rx97_off, 0
    lt rx97_pos, 2, rx97_start
    sub rx97_off, rx97_pos, 1
    substr rx97_tgt, rx97_tgt, rx97_off
  rx97_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan100_done
    goto rxscan100_scan
  rxscan100_loop:
    ($P10) = rx97_cur."from"()
    inc $P10
    set rx97_pos, $P10
    ge rx97_pos, rx97_eos, rxscan100_done
  rxscan100_scan:
    set_addr $I10, rxscan100_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  rxscan100_done:
.annotate 'line', 51
  # rxanchor bol
    eq rx97_pos, 0, rxanchor101_done
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    dec $I10
    is_cclass $I11, 4096, rx97_tgt, $I10
    unless $I11, rx97_fail
  rxanchor101_done:
  # rx rxquantr102 ** 0..*
    set_addr $I103, rxquantr102_done
    rx97_cur."!mark_push"(0, rx97_pos, $I103)
  rxquantr102_loop:
  # rx enumcharlist negate=0 
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx97_fail
    inc rx97_pos
    (rx97_rep) = rx97_cur."!mark_commit"($I103)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I103)
    goto rxquantr102_loop
  rxquantr102_done:
  # rx literal  "="
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 1
    ne $S10, "=", rx97_fail
    add rx97_pos, 1
  alt104_0:
.annotate 'line', 52
    set_addr $I10, alt104_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
.annotate 'line', 53
  # rx literal  "begin"
    add $I11, rx97_pos, 5
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 5
    ne $S10, "begin", rx97_fail
    add rx97_pos, 5
  # rx rxquantr105 ** 1..*
    set_addr $I106, rxquantr105_done
    rx97_cur."!mark_push"(0, -1, $I106)
  rxquantr105_loop:
  # rx enumcharlist negate=0 
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx97_fail
    inc rx97_pos
    (rx97_rep) = rx97_cur."!mark_commit"($I106)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I106)
    goto rxquantr105_loop
  rxquantr105_done:
  # rx literal  "END"
    add $I11, rx97_pos, 3
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 3
    ne $S10, "END", rx97_fail
    add rx97_pos, 3
  # rxanchor rwb
    le rx97_pos, 0, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 8192, rx97_tgt, $I10
    if $I11, rx97_fail
    dec $I10
    is_cclass $I11, 8192, rx97_tgt, $I10
    unless $I11, rx97_fail
  alt107_0:
.annotate 'line', 54
    set_addr $I10, alt107_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx rxquantf108 ** 0..*
    set_addr $I10, rxquantf108_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
    goto rxquantf108_done
  rxquantf108_loop:
  # rx charclass .
    ge rx97_pos, rx97_eos, rx97_fail
    inc rx97_pos
    set_addr $I10, rxquantf108_loop
    rx97_cur."!mark_push"($I109, rx97_pos, $I10)
  rxquantf108_done:
  # rx charclass nl
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 4096, rx97_tgt, $I10
    unless $I11, rx97_fail
    substr $S10, rx97_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx97_pos, $I11
    inc rx97_pos
  # rx literal  "=end"
    add $I11, rx97_pos, 4
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 4
    ne $S10, "=end", rx97_fail
    add rx97_pos, 4
  # rx rxquantr110 ** 1..*
    set_addr $I111, rxquantr110_done
    rx97_cur."!mark_push"(0, -1, $I111)
  rxquantr110_loop:
  # rx enumcharlist negate=0 
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx97_fail
    inc rx97_pos
    (rx97_rep) = rx97_cur."!mark_commit"($I111)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I111)
    goto rxquantr110_loop
  rxquantr110_done:
  # rx literal  "END"
    add $I11, rx97_pos, 3
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 3
    ne $S10, "END", rx97_fail
    add rx97_pos, 3
  # rxanchor rwb
    le rx97_pos, 0, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 8192, rx97_tgt, $I10
    if $I11, rx97_fail
    dec $I10
    is_cclass $I11, 8192, rx97_tgt, $I10
    unless $I11, rx97_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx97_pos, rx97_off
    find_cclass $I11, 4096, rx97_tgt, $I10, rx97_eos
    add rx97_pos, rx97_off, $I11
    goto alt107_end
  alt107_1:
  # rx charclass_q . r 0..-1
    sub $I10, rx97_pos, rx97_off
    find_not_cclass $I11, 65535, rx97_tgt, $I10, rx97_eos
    add rx97_pos, rx97_off, $I11
  alt107_end:
.annotate 'line', 53
    goto alt104_end
  alt104_1:
    set_addr $I10, alt104_2
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
.annotate 'line', 55
  # rx literal  "begin"
    add $I11, rx97_pos, 5
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 5
    ne $S10, "begin", rx97_fail
    add rx97_pos, 5
  # rx rxquantr112 ** 1..*
    set_addr $I113, rxquantr112_done
    rx97_cur."!mark_push"(0, -1, $I113)
  rxquantr112_loop:
  # rx enumcharlist negate=0 
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx97_fail
    inc rx97_pos
    (rx97_rep) = rx97_cur."!mark_commit"($I113)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I113)
    goto rxquantr112_loop
  rxquantr112_done:
  # rx subrule "identifier" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."identifier"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx97_pos = $P10."pos"()
  alt114_0:
.annotate 'line', 56
    set_addr $I10, alt114_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
.annotate 'line', 57
  # rx rxquantf115 ** 0..*
    set_addr $I10, rxquantf115_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
    goto rxquantf115_done
  rxquantf115_loop:
  # rx charclass .
    ge rx97_pos, rx97_eos, rx97_fail
    inc rx97_pos
    set_addr $I10, rxquantf115_loop
    rx97_cur."!mark_push"($I116, rx97_pos, $I10)
  rxquantf115_done:
  # rx charclass nl
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 4096, rx97_tgt, $I10
    unless $I11, rx97_fail
    substr $S10, rx97_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx97_pos, $I11
    inc rx97_pos
  # rx literal  "=end"
    add $I11, rx97_pos, 4
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 4
    ne $S10, "=end", rx97_fail
    add rx97_pos, 4
  # rx rxquantr117 ** 1..*
    set_addr $I118, rxquantr117_done
    rx97_cur."!mark_push"(0, -1, $I118)
  rxquantr117_loop:
  # rx enumcharlist negate=0 
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx97_fail
    inc rx97_pos
    (rx97_rep) = rx97_cur."!mark_commit"($I118)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I118)
    goto rxquantr117_loop
  rxquantr117_done:
  # rx subrule "!BACKREF" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."!BACKREF"("identifier")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  # rxanchor rwb
    le rx97_pos, 0, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 8192, rx97_tgt, $I10
    if $I11, rx97_fail
    dec $I10
    is_cclass $I11, 8192, rx97_tgt, $I10
    unless $I11, rx97_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx97_pos, rx97_off
    find_cclass $I11, 4096, rx97_tgt, $I10, rx97_eos
    add rx97_pos, rx97_off, $I11
    goto alt114_end
  alt114_1:
.annotate 'line', 58
  # rx subrule "panic" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."panic"("=begin without matching =end")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt114_end:
.annotate 'line', 55
    goto alt104_end
  alt104_2:
    set_addr $I10, alt104_3
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
.annotate 'line', 60
  # rx literal  "begin"
    add $I11, rx97_pos, 5
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 5
    ne $S10, "begin", rx97_fail
    add rx97_pos, 5
  # rxanchor rwb
    le rx97_pos, 0, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 8192, rx97_tgt, $I10
    if $I11, rx97_fail
    dec $I10
    is_cclass $I11, 8192, rx97_tgt, $I10
    unless $I11, rx97_fail
  # rx rxquantr120 ** 0..*
    set_addr $I121, rxquantr120_done
    rx97_cur."!mark_push"(0, rx97_pos, $I121)
  rxquantr120_loop:
  # rx enumcharlist negate=0 
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx97_fail
    inc rx97_pos
    (rx97_rep) = rx97_cur."!mark_commit"($I121)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I121)
    goto rxquantr120_loop
  rxquantr120_done:
  alt122_0:
.annotate 'line', 61
    set_addr $I10, alt122_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rxanchor eol
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 4096, rx97_tgt, $I10
    if $I11, rxanchor123_done
    ne rx97_pos, rx97_eos, rx97_fail
    eq rx97_pos, 0, rxanchor123_done
    dec $I10
    is_cclass $I11, 4096, rx97_tgt, $I10
    if $I11, rx97_fail
  rxanchor123_done:
    goto alt122_end
  alt122_1:
    set_addr $I10, alt122_2
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx literal  "#"
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 1
    ne $S10, "#", rx97_fail
    add rx97_pos, 1
    goto alt122_end
  alt122_2:
  # rx subrule "panic" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."panic"("Unrecognized token after =begin")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt122_end:
  alt124_0:
.annotate 'line', 62
    set_addr $I10, alt124_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
.annotate 'line', 63
  # rx rxquantf125 ** 0..*
    set_addr $I10, rxquantf125_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
    goto rxquantf125_done
  rxquantf125_loop:
  # rx charclass .
    ge rx97_pos, rx97_eos, rx97_fail
    inc rx97_pos
    set_addr $I10, rxquantf125_loop
    rx97_cur."!mark_push"($I126, rx97_pos, $I10)
  rxquantf125_done:
  # rx charclass nl
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 4096, rx97_tgt, $I10
    unless $I11, rx97_fail
    substr $S10, rx97_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx97_pos, $I11
    inc rx97_pos
  # rx rxquantr127 ** 0..*
    set_addr $I128, rxquantr127_done
    rx97_cur."!mark_push"(0, rx97_pos, $I128)
  rxquantr127_loop:
  # rx enumcharlist negate=0 
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx97_fail
    inc rx97_pos
    (rx97_rep) = rx97_cur."!mark_commit"($I128)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I128)
    goto rxquantr127_loop
  rxquantr127_done:
  # rx literal  "=end"
    add $I11, rx97_pos, 4
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 4
    ne $S10, "=end", rx97_fail
    add rx97_pos, 4
  # rxanchor rwb
    le rx97_pos, 0, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 8192, rx97_tgt, $I10
    if $I11, rx97_fail
    dec $I10
    is_cclass $I11, 8192, rx97_tgt, $I10
    unless $I11, rx97_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx97_pos, rx97_off
    find_cclass $I11, 4096, rx97_tgt, $I10, rx97_eos
    add rx97_pos, rx97_off, $I11
    goto alt124_end
  alt124_1:
.annotate 'line', 64
  # rx subrule "panic" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."panic"("=begin without matching =end")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt124_end:
.annotate 'line', 60
    goto alt104_end
  alt104_3:
    set_addr $I10, alt104_4
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
.annotate 'line', 66
  # rx subrule "identifier" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."identifier"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx97_pos = $P10."pos"()
.annotate 'line', 67
  # rx rxquantf129 ** 0..*
    set_addr $I10, rxquantf129_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
    goto rxquantf129_done
  rxquantf129_loop:
  # rx charclass .
    ge rx97_pos, rx97_eos, rx97_fail
    inc rx97_pos
    set_addr $I10, rxquantf129_loop
    rx97_cur."!mark_push"($I130, rx97_pos, $I10)
  rxquantf129_done:
  # rxanchor bol
    eq rx97_pos, 0, rxanchor131_done
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    dec $I10
    is_cclass $I11, 4096, rx97_tgt, $I10
    unless $I11, rx97_fail
  rxanchor131_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    .const 'Sub' $P133 = "28_1273727990.68261" 
    capture_lex $P133
    $P10 = rx97_cur."before"($P133)
    unless $P10, rx97_fail
.annotate 'line', 66
    goto alt104_end
  alt104_4:
  alt141_0:
.annotate 'line', 73
    set_addr $I10, alt141_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx charclass s
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 32, rx97_tgt, $I10
    unless $I11, rx97_fail
    inc rx97_pos
    goto alt141_end
  alt141_1:
  # rx subrule "panic" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."panic"("Illegal pod directive")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt141_end:
.annotate 'line', 74
  # rx charclass_q N r 0..-1
    sub $I10, rx97_pos, rx97_off
    find_cclass $I11, 4096, rx97_tgt, $I10, rx97_eos
    add rx97_pos, rx97_off, $I11
  alt104_end:
.annotate 'line', 50
  # rx pass
    rx97_cur."!cursor_pass"(rx97_pos, "pod_comment")
    rx97_cur."!cursor_debug"("PASS  ", "pod_comment", " at pos=", rx97_pos)
    .return (rx97_cur)
  rx97_fail:
.annotate 'line', 4
    (rx97_rep, rx97_pos, $I10, $P10) = rx97_cur."!mark_fail"(0)
    lt rx97_pos, -1, rx97_done
    eq rx97_pos, -1, rx97_fail
    jump $I10
  rx97_done:
    rx97_cur."!cursor_fail"()
    rx97_cur."!cursor_debug"("FAIL  ", "pod_comment")
    .return (rx97_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pod_comment"  :subid("27_1273727990.68261") :method
.annotate 'line', 4
    new $P99, "ResizablePMCArray"
    push $P99, ""
    .return ($P99)
.end


.namespace ["NQP";"Grammar"]
.sub "_block132"  :anon :subid("28_1273727990.68261") :method :outer("26_1273727990.68261")
.annotate 'line', 67
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    (rx134_cur, rx134_pos, rx134_tgt) = self."!cursor_start"()
    rx134_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx134_cur
    .local pmc match
    .lex "$/", match
    length rx134_eos, rx134_tgt
    set rx134_off, 0
    lt rx134_pos, 2, rx134_start
    sub rx134_off, rx134_pos, 1
    substr rx134_tgt, rx134_tgt, rx134_off
  rx134_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    ($P10) = rx134_cur."from"()
    inc $P10
    set rx134_pos, $P10
    ge rx134_pos, rx134_eos, rxscan135_done
  rxscan135_scan:
    set_addr $I10, rxscan135_loop
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  rxscan135_done:
  # rx rxquantr136 ** 0..*
    set_addr $I137, rxquantr136_done
    rx134_cur."!mark_push"(0, rx134_pos, $I137)
  rxquantr136_loop:
  # rx enumcharlist negate=0 
    ge rx134_pos, rx134_eos, rx134_fail
    sub $I10, rx134_pos, rx134_off
    substr $S10, rx134_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx134_fail
    inc rx134_pos
    (rx134_rep) = rx134_cur."!mark_commit"($I137)
    rx134_cur."!mark_push"(rx134_rep, rx134_pos, $I137)
    goto rxquantr136_loop
  rxquantr136_done:
  alt138_0:
    set_addr $I10, alt138_1
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
.annotate 'line', 68
  # rx literal  "="
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    substr $S10, rx134_tgt, $I11, 1
    ne $S10, "=", rx134_fail
    add rx134_pos, 1
.annotate 'line', 70
  # rx rxquantr139 ** 0..1
    set_addr $I140, rxquantr139_done
    rx134_cur."!mark_push"(0, rx134_pos, $I140)
  rxquantr139_loop:
.annotate 'line', 69
  # rx literal  "cut"
    add $I11, rx134_pos, 3
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    substr $S10, rx134_tgt, $I11, 3
    ne $S10, "cut", rx134_fail
    add rx134_pos, 3
  # rxanchor rwb
    le rx134_pos, 0, rx134_fail
    sub $I10, rx134_pos, rx134_off
    is_cclass $I11, 8192, rx134_tgt, $I10
    if $I11, rx134_fail
    dec $I10
    is_cclass $I11, 8192, rx134_tgt, $I10
    unless $I11, rx134_fail
.annotate 'line', 70
  # rx subrule "panic" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."panic"("Obsolete pod format, please use =begin/=end instead")
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
    (rx134_rep) = rx134_cur."!mark_commit"($I140)
  rxquantr139_done:
.annotate 'line', 67
    goto alt138_end
  alt138_1:
.annotate 'line', 71
  # rx charclass nl
    ge rx134_pos, rx134_eos, rx134_fail
    sub $I10, rx134_pos, rx134_off
    is_cclass $I11, 4096, rx134_tgt, $I10
    unless $I11, rx134_fail
    substr $S10, rx134_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx134_pos, $I11
    inc rx134_pos
  alt138_end:
.annotate 'line', 67
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "")
    rx134_cur."!cursor_debug"("PASS  ", "", " at pos=", rx134_pos)
    .return (rx134_cur)
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    rx134_cur."!cursor_debug"("FAIL  ", "")
    .return (rx134_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("29_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    (rx143_cur, rx143_pos, rx143_tgt) = self."!cursor_start"()
    rx143_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx143_cur
    .local pmc match
    .lex "$/", match
    length rx143_eos, rx143_tgt
    set rx143_off, 0
    lt rx143_pos, 2, rx143_start
    sub rx143_off, rx143_pos, 1
    substr rx143_tgt, rx143_tgt, rx143_off
  rx143_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan147_done
    goto rxscan147_scan
  rxscan147_loop:
    ($P10) = rx143_cur."from"()
    inc $P10
    set rx143_pos, $P10
    ge rx143_pos, rx143_eos, rxscan147_done
  rxscan147_scan:
    set_addr $I10, rxscan147_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan147_done:
.annotate 'line', 82
  # rx subrule "newpad" subtype=method negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."newpad"()
    unless $P10, rx143_fail
    rx143_pos = $P10."pos"()
.annotate 'line', 83
  # rx subrule "statementlist" subtype=capture negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."statementlist"()
    unless $P10, rx143_fail
    rx143_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx143_pos = $P10."pos"()
  alt148_0:
.annotate 'line', 84
    set_addr $I10, alt148_1
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  # rxanchor eos
    ne rx143_pos, rx143_eos, rx143_fail
    goto alt148_end
  alt148_1:
  # rx subrule "panic" subtype=method negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."panic"("Confused")
    unless $P10, rx143_fail
    rx143_pos = $P10."pos"()
  alt148_end:
.annotate 'line', 81
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "comp_unit")
    rx143_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx143_pos)
    .return (rx143_cur)
  rx143_fail:
.annotate 'line', 4
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    rx143_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx143_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("30_1273727990.68261") :method
.annotate 'line', 4
    $P145 = self."!PREFIX__!subrule"("", "")
    new $P146, "ResizablePMCArray"
    push $P146, $P145
    .return ($P146)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("31_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    (rx150_cur, rx150_pos, rx150_tgt) = self."!cursor_start"()
    rx150_cur."!cursor_debug"("START ", "statementlist")
    rx150_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx150_cur
    .local pmc match
    .lex "$/", match
    length rx150_eos, rx150_tgt
    set rx150_off, 0
    lt rx150_pos, 2, rx150_start
    sub rx150_off, rx150_pos, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan153_done
    goto rxscan153_scan
  rxscan153_loop:
    ($P10) = rx150_cur."from"()
    inc $P10
    set rx150_pos, $P10
    ge rx150_pos, rx150_eos, rxscan153_done
  rxscan153_scan:
    set_addr $I10, rxscan153_loop
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  rxscan153_done:
  alt154_0:
.annotate 'line', 87
    set_addr $I10, alt154_1
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
.annotate 'line', 88
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
  # rxanchor eos
    ne rx150_pos, rx150_eos, rx150_fail
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
    goto alt154_end
  alt154_1:
.annotate 'line', 89
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
  # rx rxquantr158 ** 0..*
    set_addr $I160, rxquantr158_done
    rx150_cur."!mark_push"(0, rx150_pos, $I160)
  rxquantr158_loop:
  # rx subrule "statement" subtype=capture negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."statement"()
    unless $P10, rx150_fail
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx150_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."eat_terminator"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
    (rx150_rep) = rx150_cur."!mark_commit"($I160)
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I160)
    goto rxquantr158_loop
  rxquantr158_done:
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
  alt154_end:
.annotate 'line', 87
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "statementlist")
    rx150_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx150_pos)
    .return (rx150_cur)
  rx150_fail:
.annotate 'line', 4
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    rx150_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx150_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("32_1273727990.68261") :method
.annotate 'line', 4
    new $P152, "ResizablePMCArray"
    push $P152, ""
    push $P152, ""
    .return ($P152)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("33_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .const 'Sub' $P168 = "35_1273727990.68261" 
    capture_lex $P168
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    (rx163_cur, rx163_pos, rx163_tgt) = self."!cursor_start"()
    rx163_cur."!cursor_debug"("START ", "statement")
    rx163_cur."!cursor_caparray"("statement_mod_loop", "statement_mod_cond")
    .lex unicode:"$\x{a2}", rx163_cur
    .local pmc match
    .lex "$/", match
    length rx163_eos, rx163_tgt
    set rx163_off, 0
    lt rx163_pos, 2, rx163_start
    sub rx163_off, rx163_pos, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan166_done
    goto rxscan166_scan
  rxscan166_loop:
    ($P10) = rx163_cur."from"()
    inc $P10
    set rx163_pos, $P10
    ge rx163_pos, rx163_eos, rxscan166_done
  rxscan166_scan:
    set_addr $I10, rxscan166_loop
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  rxscan166_done:
.annotate 'line', 93
  # rx subrule "before" subtype=zerowidth negate=1
    rx163_cur."!cursor_pos"(rx163_pos)
    .const 'Sub' $P168 = "35_1273727990.68261" 
    capture_lex $P168
    $P10 = rx163_cur."before"($P168)
    if $P10, rx163_fail
  alt172_0:
.annotate 'line', 94
    set_addr $I10, alt172_1
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
.annotate 'line', 95
  # rx subrule "statement_control" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."statement_control"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx163_pos = $P10."pos"()
    goto alt172_end
  alt172_1:
.annotate 'line', 96
  # rx subrule "EXPR" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."EXPR"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx163_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."ws"()
    unless $P10, rx163_fail
    rx163_pos = $P10."pos"()
.annotate 'line', 101
  # rx rxquantr173 ** 0..1
    set_addr $I177, rxquantr173_done
    rx163_cur."!mark_push"(0, rx163_pos, $I177)
  rxquantr173_loop:
  alt174_0:
.annotate 'line', 97
    set_addr $I10, alt174_1
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
.annotate 'line', 98
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."MARKED"("endstmt")
    unless $P10, rx163_fail
    goto alt174_end
  alt174_1:
    set_addr $I10, alt174_2
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
.annotate 'line', 99
  # rx subrule "statement_mod_cond" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."statement_mod_cond"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_cond")
    rx163_pos = $P10."pos"()
  # rx rxquantr175 ** 0..1
    set_addr $I176, rxquantr175_done
    rx163_cur."!mark_push"(0, rx163_pos, $I176)
  rxquantr175_loop:
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."statement_mod_loop"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx163_pos = $P10."pos"()
    (rx163_rep) = rx163_cur."!mark_commit"($I176)
  rxquantr175_done:
    goto alt174_end
  alt174_2:
.annotate 'line', 100
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."statement_mod_loop"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx163_pos = $P10."pos"()
  alt174_end:
.annotate 'line', 101
    (rx163_rep) = rx163_cur."!mark_commit"($I177)
  rxquantr173_done:
  alt172_end:
.annotate 'line', 92
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "statement")
    rx163_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx163_pos)
    .return (rx163_cur)
  rx163_fail:
.annotate 'line', 4
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    rx163_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx163_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("34_1273727990.68261") :method
.annotate 'line', 4
    new $P165, "ResizablePMCArray"
    push $P165, ""
    .return ($P165)
.end


.namespace ["NQP";"Grammar"]
.sub "_block167"  :anon :subid("35_1273727990.68261") :method :outer("33_1273727990.68261")
.annotate 'line', 93
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    (rx169_cur, rx169_pos, rx169_tgt) = self."!cursor_start"()
    rx169_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan170_done
    goto rxscan170_scan
  rxscan170_loop:
    ($P10) = rx169_cur."from"()
    inc $P10
    set rx169_pos, $P10
    ge rx169_pos, rx169_eos, rxscan170_done
  rxscan170_scan:
    set_addr $I10, rxscan170_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan170_done:
  alt171_0:
    set_addr $I10, alt171_1
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx169_pos, rx169_eos, rx169_fail
    sub $I10, rx169_pos, rx169_off
    substr $S10, rx169_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx169_fail
    inc rx169_pos
    goto alt171_end
  alt171_1:
  # rxanchor eos
    ne rx169_pos, rx169_eos, rx169_fail
  alt171_end:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "")
    rx169_cur."!cursor_debug"("PASS  ", "", " at pos=", rx169_pos)
    .return (rx169_cur)
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    rx169_cur."!cursor_debug"("FAIL  ", "")
    .return (rx169_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("36_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx179_tgt
    .local int rx179_pos
    .local int rx179_off
    .local int rx179_eos
    .local int rx179_rep
    .local pmc rx179_cur
    (rx179_cur, rx179_pos, rx179_tgt) = self."!cursor_start"()
    rx179_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx179_cur
    .local pmc match
    .lex "$/", match
    length rx179_eos, rx179_tgt
    set rx179_off, 0
    lt rx179_pos, 2, rx179_start
    sub rx179_off, rx179_pos, 1
    substr rx179_tgt, rx179_tgt, rx179_off
  rx179_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan182_done
    goto rxscan182_scan
  rxscan182_loop:
    ($P10) = rx179_cur."from"()
    inc $P10
    set rx179_pos, $P10
    ge rx179_pos, rx179_eos, rxscan182_done
  rxscan182_scan:
    set_addr $I10, rxscan182_loop
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
  rxscan182_done:
  alt183_0:
.annotate 'line', 105
    set_addr $I10, alt183_1
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
.annotate 'line', 106
  # rx literal  ";"
    add $I11, rx179_pos, 1
    gt $I11, rx179_eos, rx179_fail
    sub $I11, rx179_pos, rx179_off
    substr $S10, rx179_tgt, $I11, 1
    ne $S10, ";", rx179_fail
    add rx179_pos, 1
    goto alt183_end
  alt183_1:
    set_addr $I10, alt183_2
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
.annotate 'line', 107
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx179_cur."!cursor_pos"(rx179_pos)
    $P10 = rx179_cur."MARKED"("endstmt")
    unless $P10, rx179_fail
    goto alt183_end
  alt183_2:
    set_addr $I10, alt183_3
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
.annotate 'line', 108
  # rx subrule "terminator" subtype=zerowidth negate=
    rx179_cur."!cursor_pos"(rx179_pos)
    $P10 = rx179_cur."terminator"()
    unless $P10, rx179_fail
    goto alt183_end
  alt183_3:
.annotate 'line', 109
  # rxanchor eos
    ne rx179_pos, rx179_eos, rx179_fail
  alt183_end:
.annotate 'line', 105
  # rx pass
    rx179_cur."!cursor_pass"(rx179_pos, "eat_terminator")
    rx179_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx179_pos)
    .return (rx179_cur)
  rx179_fail:
.annotate 'line', 4
    (rx179_rep, rx179_pos, $I10, $P10) = rx179_cur."!mark_fail"(0)
    lt rx179_pos, -1, rx179_done
    eq rx179_pos, -1, rx179_fail
    jump $I10
  rx179_done:
    rx179_cur."!cursor_fail"()
    rx179_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx179_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("37_1273727990.68261") :method
.annotate 'line', 4
    new $P181, "ResizablePMCArray"
    push $P181, ""
    push $P181, ""
    push $P181, ""
    push $P181, ";"
    .return ($P181)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("38_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    (rx185_cur, rx185_pos, rx185_tgt) = self."!cursor_start"()
    rx185_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx185_cur
    .local pmc match
    .lex "$/", match
    length rx185_eos, rx185_tgt
    set rx185_off, 0
    lt rx185_pos, 2, rx185_start
    sub rx185_off, rx185_pos, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan189_done
    goto rxscan189_scan
  rxscan189_loop:
    ($P10) = rx185_cur."from"()
    inc $P10
    set rx185_pos, $P10
    ge rx185_pos, rx185_eos, rxscan189_done
  rxscan189_scan:
    set_addr $I10, rxscan189_loop
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  rxscan189_done:
.annotate 'line', 113
  # rx subrule "EXPR" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."EXPR"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx185_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."pblock"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx185_pos = $P10."pos"()
.annotate 'line', 112
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "xblock")
    rx185_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx185_pos)
    .return (rx185_cur)
  rx185_fail:
.annotate 'line', 4
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    rx185_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx185_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("39_1273727990.68261") :method
.annotate 'line', 4
    $P187 = self."!PREFIX__!subrule"("EXPR", "")
    new $P188, "ResizablePMCArray"
    push $P188, $P187
    .return ($P188)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("40_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    (rx191_cur, rx191_pos, rx191_tgt) = self."!cursor_start"()
    rx191_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx191_cur
    .local pmc match
    .lex "$/", match
    length rx191_eos, rx191_tgt
    set rx191_off, 0
    lt rx191_pos, 2, rx191_start
    sub rx191_off, rx191_pos, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan196_done
    goto rxscan196_scan
  rxscan196_loop:
    ($P10) = rx191_cur."from"()
    inc $P10
    set rx191_pos, $P10
    ge rx191_pos, rx191_eos, rxscan196_done
  rxscan196_scan:
    set_addr $I10, rxscan196_loop
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  rxscan196_done:
  alt197_0:
.annotate 'line', 116
    set_addr $I10, alt197_1
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
.annotate 'line', 117
  # rx subrule "lambda" subtype=method negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."lambda"()
    unless $P10, rx191_fail
    rx191_pos = $P10."pos"()
.annotate 'line', 118
  # rx subrule "newpad" subtype=method negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."newpad"()
    unless $P10, rx191_fail
    rx191_pos = $P10."pos"()
.annotate 'line', 119
  # rx subrule "signature" subtype=capture negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."signature"()
    unless $P10, rx191_fail
    rx191_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx191_pos = $P10."pos"()
.annotate 'line', 120
  # rx subrule "blockoid" subtype=capture negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."blockoid"()
    unless $P10, rx191_fail
    rx191_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx191_pos = $P10."pos"()
.annotate 'line', 117
    goto alt197_end
  alt197_1:
    set_addr $I10, alt197_2
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
.annotate 'line', 121
  # rx enumcharlist negate=0 zerowidth
    ge rx191_pos, rx191_eos, rx191_fail
    sub $I10, rx191_pos, rx191_off
    substr $S10, rx191_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx191_fail
.annotate 'line', 122
  # rx subrule "newpad" subtype=method negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."newpad"()
    unless $P10, rx191_fail
    rx191_pos = $P10."pos"()
.annotate 'line', 123
  # rx subrule "blockoid" subtype=capture negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."blockoid"()
    unless $P10, rx191_fail
    rx191_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx191_pos = $P10."pos"()
.annotate 'line', 121
    goto alt197_end
  alt197_2:
.annotate 'line', 124
  # rx subrule "panic" subtype=method negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."panic"("Missing block")
    unless $P10, rx191_fail
    rx191_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 116
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "pblock")
    rx191_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx191_pos)
    .return (rx191_cur)
  rx191_fail:
.annotate 'line', 4
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    rx191_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx191_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("41_1273727990.68261") :method
.annotate 'line', 4
    $P193 = self."!PREFIX__!subrule"("", "")
    $P194 = self."!PREFIX__!subrule"("", "")
    new $P195, "ResizablePMCArray"
    push $P195, $P193
    push $P195, "{"
    push $P195, $P194
    .return ($P195)
.end


.namespace ["NQP";"Grammar"]
.sub "lambda"  :subid("42_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    (rx199_cur, rx199_pos, rx199_tgt) = self."!cursor_start"()
    rx199_cur."!cursor_debug"("START ", "lambda")
    .lex unicode:"$\x{a2}", rx199_cur
    .local pmc match
    .lex "$/", match
    length rx199_eos, rx199_tgt
    set rx199_off, 0
    lt rx199_pos, 2, rx199_start
    sub rx199_off, rx199_pos, 1
    substr rx199_tgt, rx199_tgt, rx199_off
  rx199_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan202_done
    goto rxscan202_scan
  rxscan202_loop:
    ($P10) = rx199_cur."from"()
    inc $P10
    set rx199_pos, $P10
    ge rx199_pos, rx199_eos, rxscan202_done
  rxscan202_scan:
    set_addr $I10, rxscan202_loop
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxscan202_done:
  alt203_0:
.annotate 'line', 127
    set_addr $I10, alt203_1
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx literal  "->"
    add $I11, rx199_pos, 2
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 2
    ne $S10, "->", rx199_fail
    add rx199_pos, 2
    goto alt203_end
  alt203_1:
  # rx literal  "<->"
    add $I11, rx199_pos, 3
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 3
    ne $S10, "<->", rx199_fail
    add rx199_pos, 3
  alt203_end:
  # rx pass
    rx199_cur."!cursor_pass"(rx199_pos, "lambda")
    rx199_cur."!cursor_debug"("PASS  ", "lambda", " at pos=", rx199_pos)
    .return (rx199_cur)
  rx199_fail:
.annotate 'line', 4
    (rx199_rep, rx199_pos, $I10, $P10) = rx199_cur."!mark_fail"(0)
    lt rx199_pos, -1, rx199_done
    eq rx199_pos, -1, rx199_fail
    jump $I10
  rx199_done:
    rx199_cur."!cursor_fail"()
    rx199_cur."!cursor_debug"("FAIL  ", "lambda")
    .return (rx199_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__lambda"  :subid("43_1273727990.68261") :method
.annotate 'line', 4
    new $P201, "ResizablePMCArray"
    push $P201, "<->"
    push $P201, "->"
    .return ($P201)
.end


.namespace ["NQP";"Grammar"]
.sub "block"  :subid("44_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx205_tgt
    .local int rx205_pos
    .local int rx205_off
    .local int rx205_eos
    .local int rx205_rep
    .local pmc rx205_cur
    (rx205_cur, rx205_pos, rx205_tgt) = self."!cursor_start"()
    rx205_cur."!cursor_debug"("START ", "block")
    .lex unicode:"$\x{a2}", rx205_cur
    .local pmc match
    .lex "$/", match
    length rx205_eos, rx205_tgt
    set rx205_off, 0
    lt rx205_pos, 2, rx205_start
    sub rx205_off, rx205_pos, 1
    substr rx205_tgt, rx205_tgt, rx205_off
  rx205_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan209_done
    goto rxscan209_scan
  rxscan209_loop:
    ($P10) = rx205_cur."from"()
    inc $P10
    set rx205_pos, $P10
    ge rx205_pos, rx205_eos, rxscan209_done
  rxscan209_scan:
    set_addr $I10, rxscan209_loop
    rx205_cur."!mark_push"(0, rx205_pos, $I10)
  rxscan209_done:
  alt210_0:
.annotate 'line', 130
    set_addr $I10, alt210_1
    rx205_cur."!mark_push"(0, rx205_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx205_pos, rx205_eos, rx205_fail
    sub $I10, rx205_pos, rx205_off
    substr $S10, rx205_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx205_fail
    goto alt210_end
  alt210_1:
  # rx subrule "panic" subtype=method negate=
    rx205_cur."!cursor_pos"(rx205_pos)
    $P10 = rx205_cur."panic"("Missing block")
    unless $P10, rx205_fail
    rx205_pos = $P10."pos"()
  alt210_end:
.annotate 'line', 131
  # rx subrule "newpad" subtype=method negate=
    rx205_cur."!cursor_pos"(rx205_pos)
    $P10 = rx205_cur."newpad"()
    unless $P10, rx205_fail
    rx205_pos = $P10."pos"()
.annotate 'line', 132
  # rx subrule "blockoid" subtype=capture negate=
    rx205_cur."!cursor_pos"(rx205_pos)
    $P10 = rx205_cur."blockoid"()
    unless $P10, rx205_fail
    rx205_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx205_pos = $P10."pos"()
.annotate 'line', 129
  # rx pass
    rx205_cur."!cursor_pass"(rx205_pos, "block")
    rx205_cur."!cursor_debug"("PASS  ", "block", " at pos=", rx205_pos)
    .return (rx205_cur)
  rx205_fail:
.annotate 'line', 4
    (rx205_rep, rx205_pos, $I10, $P10) = rx205_cur."!mark_fail"(0)
    lt rx205_pos, -1, rx205_done
    eq rx205_pos, -1, rx205_fail
    jump $I10
  rx205_done:
    rx205_cur."!cursor_fail"()
    rx205_cur."!cursor_debug"("FAIL  ", "block")
    .return (rx205_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__block"  :subid("45_1273727990.68261") :method
.annotate 'line', 4
    $P207 = self."!PREFIX__!subrule"("", "")
    new $P208, "ResizablePMCArray"
    push $P208, $P207
    push $P208, "{"
    .return ($P208)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("46_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    (rx212_cur, rx212_pos, rx212_tgt) = self."!cursor_start"()
    rx212_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx212_cur
    .local pmc match
    .lex "$/", match
    length rx212_eos, rx212_tgt
    set rx212_off, 0
    lt rx212_pos, 2, rx212_start
    sub rx212_off, rx212_pos, 1
    substr rx212_tgt, rx212_tgt, rx212_off
  rx212_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan216_done
    goto rxscan216_scan
  rxscan216_loop:
    ($P10) = rx212_cur."from"()
    inc $P10
    set rx212_pos, $P10
    ge rx212_pos, rx212_eos, rxscan216_done
  rxscan216_scan:
    set_addr $I10, rxscan216_loop
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  rxscan216_done:
.annotate 'line', 136
  # rx subrule "finishpad" subtype=method negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."finishpad"()
    unless $P10, rx212_fail
    rx212_pos = $P10."pos"()
.annotate 'line', 137
  # rx literal  "{"
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    sub $I11, rx212_pos, rx212_off
    substr $S10, rx212_tgt, $I11, 1
    ne $S10, "{", rx212_fail
    add rx212_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."statementlist"()
    unless $P10, rx212_fail
    rx212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx212_pos = $P10."pos"()
  alt217_0:
    set_addr $I10, alt217_1
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  # rx literal  "}"
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    sub $I11, rx212_pos, rx212_off
    substr $S10, rx212_tgt, $I11, 1
    ne $S10, "}", rx212_fail
    add rx212_pos, 1
    goto alt217_end
  alt217_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."FAILGOAL"("'}'")
    unless $P10, rx212_fail
    rx212_pos = $P10."pos"()
  alt217_end:
.annotate 'line', 138
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."ENDSTMT"()
    unless $P10, rx212_fail
.annotate 'line', 135
  # rx pass
    rx212_cur."!cursor_pass"(rx212_pos, "blockoid")
    rx212_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx212_pos)
    .return (rx212_cur)
  rx212_fail:
.annotate 'line', 4
    (rx212_rep, rx212_pos, $I10, $P10) = rx212_cur."!mark_fail"(0)
    lt rx212_pos, -1, rx212_done
    eq rx212_pos, -1, rx212_fail
    jump $I10
  rx212_done:
    rx212_cur."!cursor_fail"()
    rx212_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx212_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("47_1273727990.68261") :method
.annotate 'line', 4
    $P214 = self."!PREFIX__!subrule"("", "")
    new $P215, "ResizablePMCArray"
    push $P215, $P214
    .return ($P215)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("48_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    (rx220_cur, rx220_pos, rx220_tgt) = self."!cursor_start"()
    rx220_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx220_cur
    .local pmc match
    .lex "$/", match
    length rx220_eos, rx220_tgt
    set rx220_off, 0
    lt rx220_pos, 2, rx220_start
    sub rx220_off, rx220_pos, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan223_done
    goto rxscan223_scan
  rxscan223_loop:
    ($P10) = rx220_cur."from"()
    inc $P10
    set rx220_pos, $P10
    ge rx220_pos, rx220_eos, rxscan223_done
  rxscan223_scan:
    set_addr $I10, rxscan223_loop
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  rxscan223_done:
.annotate 'line', 141
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "newpad")
    rx220_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx220_pos)
    .return (rx220_cur)
  rx220_fail:
.annotate 'line', 4
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    rx220_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx220_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("49_1273727990.68261") :method
.annotate 'line', 4
    new $P222, "ResizablePMCArray"
    push $P222, ""
    .return ($P222)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("50_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx225_tgt
    .local int rx225_pos
    .local int rx225_off
    .local int rx225_eos
    .local int rx225_rep
    .local pmc rx225_cur
    (rx225_cur, rx225_pos, rx225_tgt) = self."!cursor_start"()
    rx225_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx225_cur
    .local pmc match
    .lex "$/", match
    length rx225_eos, rx225_tgt
    set rx225_off, 0
    lt rx225_pos, 2, rx225_start
    sub rx225_off, rx225_pos, 1
    substr rx225_tgt, rx225_tgt, rx225_off
  rx225_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan228_done
    goto rxscan228_scan
  rxscan228_loop:
    ($P10) = rx225_cur."from"()
    inc $P10
    set rx225_pos, $P10
    ge rx225_pos, rx225_eos, rxscan228_done
  rxscan228_scan:
    set_addr $I10, rxscan228_loop
    rx225_cur."!mark_push"(0, rx225_pos, $I10)
  rxscan228_done:
.annotate 'line', 142
  # rx pass
    rx225_cur."!cursor_pass"(rx225_pos, "finishpad")
    rx225_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx225_pos)
    .return (rx225_cur)
  rx225_fail:
.annotate 'line', 4
    (rx225_rep, rx225_pos, $I10, $P10) = rx225_cur."!mark_fail"(0)
    lt rx225_pos, -1, rx225_done
    eq rx225_pos, -1, rx225_fail
    jump $I10
  rx225_done:
    rx225_cur."!cursor_fail"()
    rx225_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx225_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("51_1273727990.68261") :method
.annotate 'line', 4
    new $P227, "ResizablePMCArray"
    push $P227, ""
    .return ($P227)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("52_1273727990.68261") :method
.annotate 'line', 144
    $P230 = self."!protoregex"("terminator")
    .return ($P230)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("53_1273727990.68261") :method
.annotate 'line', 144
    $P232 = self."!PREFIX__!protoregex"("terminator")
    .return ($P232)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("54_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    (rx234_cur, rx234_pos, rx234_tgt) = self."!cursor_start"()
    rx234_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx234_cur
    .local pmc match
    .lex "$/", match
    length rx234_eos, rx234_tgt
    set rx234_off, 0
    lt rx234_pos, 2, rx234_start
    sub rx234_off, rx234_pos, 1
    substr rx234_tgt, rx234_tgt, rx234_off
  rx234_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan237_done
    goto rxscan237_scan
  rxscan237_loop:
    ($P10) = rx234_cur."from"()
    inc $P10
    set rx234_pos, $P10
    ge rx234_pos, rx234_eos, rxscan237_done
  rxscan237_scan:
    set_addr $I10, rxscan237_loop
    rx234_cur."!mark_push"(0, rx234_pos, $I10)
  rxscan237_done:
.annotate 'line', 146
  # rx enumcharlist negate=0 zerowidth
    ge rx234_pos, rx234_eos, rx234_fail
    sub $I10, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx234_fail
  # rx pass
    rx234_cur."!cursor_pass"(rx234_pos, "terminator:sym<;>")
    rx234_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx234_pos)
    .return (rx234_cur)
  rx234_fail:
.annotate 'line', 4
    (rx234_rep, rx234_pos, $I10, $P10) = rx234_cur."!mark_fail"(0)
    lt rx234_pos, -1, rx234_done
    eq rx234_pos, -1, rx234_fail
    jump $I10
  rx234_done:
    rx234_cur."!cursor_fail"()
    rx234_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx234_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("55_1273727990.68261") :method
.annotate 'line', 4
    new $P236, "ResizablePMCArray"
    push $P236, ";"
    .return ($P236)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("56_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    (rx239_cur, rx239_pos, rx239_tgt) = self."!cursor_start"()
    rx239_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx239_cur
    .local pmc match
    .lex "$/", match
    length rx239_eos, rx239_tgt
    set rx239_off, 0
    lt rx239_pos, 2, rx239_start
    sub rx239_off, rx239_pos, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan242_done
    goto rxscan242_scan
  rxscan242_loop:
    ($P10) = rx239_cur."from"()
    inc $P10
    set rx239_pos, $P10
    ge rx239_pos, rx239_eos, rxscan242_done
  rxscan242_scan:
    set_addr $I10, rxscan242_loop
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  rxscan242_done:
.annotate 'line', 147
  # rx enumcharlist negate=0 zerowidth
    ge rx239_pos, rx239_eos, rx239_fail
    sub $I10, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx239_fail
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "terminator:sym<}>")
    rx239_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx239_pos)
    .return (rx239_cur)
  rx239_fail:
.annotate 'line', 4
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    rx239_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx239_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("57_1273727990.68261") :method
.annotate 'line', 4
    new $P241, "ResizablePMCArray"
    push $P241, "}"
    .return ($P241)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("58_1273727990.68261") :method
.annotate 'line', 151
    $P244 = self."!protoregex"("statement_control")
    .return ($P244)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("59_1273727990.68261") :method
.annotate 'line', 151
    $P246 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P246)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("60_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx248_tgt
    .local int rx248_pos
    .local int rx248_off
    .local int rx248_eos
    .local int rx248_rep
    .local pmc rx248_cur
    (rx248_cur, rx248_pos, rx248_tgt) = self."!cursor_start"()
    rx248_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx248_cur."!cursor_caparray"("else", "xblock")
    .lex unicode:"$\x{a2}", rx248_cur
    .local pmc match
    .lex "$/", match
    length rx248_eos, rx248_tgt
    set rx248_off, 0
    lt rx248_pos, 2, rx248_start
    sub rx248_off, rx248_pos, 1
    substr rx248_tgt, rx248_tgt, rx248_off
  rx248_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan251_done
    goto rxscan251_scan
  rxscan251_loop:
    ($P10) = rx248_cur."from"()
    inc $P10
    set rx248_pos, $P10
    ge rx248_pos, rx248_eos, rxscan251_done
  rxscan251_scan:
    set_addr $I10, rxscan251_loop
    rx248_cur."!mark_push"(0, rx248_pos, $I10)
  rxscan251_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_252_fail
    rx248_cur."!mark_push"(0, rx248_pos, $I10)
  # rx literal  "if"
    add $I11, rx248_pos, 2
    gt $I11, rx248_eos, rx248_fail
    sub $I11, rx248_pos, rx248_off
    substr $S10, rx248_tgt, $I11, 2
    ne $S10, "if", rx248_fail
    add rx248_pos, 2
    set_addr $I10, rxcap_252_fail
    ($I12, $I11) = rx248_cur."!mark_peek"($I10)
    rx248_cur."!cursor_pos"($I11)
    ($P10) = rx248_cur."!cursor_start"()
    $P10."!cursor_pass"(rx248_pos, "")
    rx248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_252_done
  rxcap_252_fail:
    goto rx248_fail
  rxcap_252_done:
  # rx charclass s
    ge rx248_pos, rx248_eos, rx248_fail
    sub $I10, rx248_pos, rx248_off
    is_cclass $I11, 32, rx248_tgt, $I10
    unless $I11, rx248_fail
    inc rx248_pos
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
.annotate 'line', 155
  # rx subrule "xblock" subtype=capture negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."xblock"()
    unless $P10, rx248_fail
    rx248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx248_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
.annotate 'line', 156
  # rx rxquantr255 ** 0..*
    set_addr $I259, rxquantr255_done
    rx248_cur."!mark_push"(0, rx248_pos, $I259)
  rxquantr255_loop:
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx248_pos, 5
    gt $I11, rx248_eos, rx248_fail
    sub $I11, rx248_pos, rx248_off
    substr $S10, rx248_tgt, $I11, 5
    ne $S10, "elsif", rx248_fail
    add rx248_pos, 5
  # rx charclass s
    ge rx248_pos, rx248_eos, rx248_fail
    sub $I10, rx248_pos, rx248_off
    is_cclass $I11, 32, rx248_tgt, $I10
    unless $I11, rx248_fail
    inc rx248_pos
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."xblock"()
    unless $P10, rx248_fail
    rx248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx248_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
    (rx248_rep) = rx248_cur."!mark_commit"($I259)
    rx248_cur."!mark_push"(rx248_rep, rx248_pos, $I259)
    goto rxquantr255_loop
  rxquantr255_done:
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
.annotate 'line', 157
  # rx rxquantr261 ** 0..1
    set_addr $I265, rxquantr261_done
    rx248_cur."!mark_push"(0, rx248_pos, $I265)
  rxquantr261_loop:
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx248_pos, 4
    gt $I11, rx248_eos, rx248_fail
    sub $I11, rx248_pos, rx248_off
    substr $S10, rx248_tgt, $I11, 4
    ne $S10, "else", rx248_fail
    add rx248_pos, 4
  # rx charclass s
    ge rx248_pos, rx248_eos, rx248_fail
    sub $I10, rx248_pos, rx248_off
    is_cclass $I11, 32, rx248_tgt, $I10
    unless $I11, rx248_fail
    inc rx248_pos
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."pblock"()
    unless $P10, rx248_fail
    rx248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx248_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
    (rx248_rep) = rx248_cur."!mark_commit"($I265)
  rxquantr261_done:
  # rx subrule "ws" subtype=method negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."ws"()
    unless $P10, rx248_fail
    rx248_pos = $P10."pos"()
.annotate 'line', 153
  # rx pass
    rx248_cur."!cursor_pass"(rx248_pos, "statement_control:sym<if>")
    rx248_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx248_pos)
    .return (rx248_cur)
  rx248_fail:
.annotate 'line', 4
    (rx248_rep, rx248_pos, $I10, $P10) = rx248_cur."!mark_fail"(0)
    lt rx248_pos, -1, rx248_done
    eq rx248_pos, -1, rx248_fail
    jump $I10
  rx248_done:
    rx248_cur."!cursor_fail"()
    rx248_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx248_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("61_1273727990.68261") :method
.annotate 'line', 4
    new $P250, "ResizablePMCArray"
    push $P250, "if"
    .return ($P250)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("62_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .const 'Sub' $P278 = "64_1273727990.68261" 
    capture_lex $P278
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    (rx268_cur, rx268_pos, rx268_tgt) = self."!cursor_start"()
    rx268_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx268_cur
    .local pmc match
    .lex "$/", match
    length rx268_eos, rx268_tgt
    set rx268_off, 0
    lt rx268_pos, 2, rx268_start
    sub rx268_off, rx268_pos, 1
    substr rx268_tgt, rx268_tgt, rx268_off
  rx268_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan271_done
    goto rxscan271_scan
  rxscan271_loop:
    ($P10) = rx268_cur."from"()
    inc $P10
    set rx268_pos, $P10
    ge rx268_pos, rx268_eos, rxscan271_done
  rxscan271_scan:
    set_addr $I10, rxscan271_loop
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  rxscan271_done:
.annotate 'line', 161
  # rx subcapture "sym"
    set_addr $I10, rxcap_272_fail
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  # rx literal  "unless"
    add $I11, rx268_pos, 6
    gt $I11, rx268_eos, rx268_fail
    sub $I11, rx268_pos, rx268_off
    substr $S10, rx268_tgt, $I11, 6
    ne $S10, "unless", rx268_fail
    add rx268_pos, 6
    set_addr $I10, rxcap_272_fail
    ($I12, $I11) = rx268_cur."!mark_peek"($I10)
    rx268_cur."!cursor_pos"($I11)
    ($P10) = rx268_cur."!cursor_start"()
    $P10."!cursor_pass"(rx268_pos, "")
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_272_done
  rxcap_272_fail:
    goto rx268_fail
  rxcap_272_done:
  # rx charclass s
    ge rx268_pos, rx268_eos, rx268_fail
    sub $I10, rx268_pos, rx268_off
    is_cclass $I11, 32, rx268_tgt, $I10
    unless $I11, rx268_fail
    inc rx268_pos
  # rx subrule "ws" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."ws"()
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
.annotate 'line', 162
  # rx subrule "xblock" subtype=capture negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."xblock"()
    unless $P10, rx268_fail
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx268_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."ws"()
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
  alt275_0:
.annotate 'line', 163
    set_addr $I10, alt275_1
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."ws"()
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx268_cur."!cursor_pos"(rx268_pos)
    .const 'Sub' $P278 = "64_1273727990.68261" 
    capture_lex $P278
    $P10 = rx268_cur."before"($P278)
    if $P10, rx268_fail
  # rx subrule "ws" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."ws"()
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
    goto alt275_end
  alt275_1:
  # rx subrule "ws" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."ws"()
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."ws"()
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
  alt275_end:
  # rx subrule "ws" subtype=method negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."ws"()
    unless $P10, rx268_fail
    rx268_pos = $P10."pos"()
.annotate 'line', 160
  # rx pass
    rx268_cur."!cursor_pass"(rx268_pos, "statement_control:sym<unless>")
    rx268_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx268_pos)
    .return (rx268_cur)
  rx268_fail:
.annotate 'line', 4
    (rx268_rep, rx268_pos, $I10, $P10) = rx268_cur."!mark_fail"(0)
    lt rx268_pos, -1, rx268_done
    eq rx268_pos, -1, rx268_fail
    jump $I10
  rx268_done:
    rx268_cur."!cursor_fail"()
    rx268_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx268_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("63_1273727990.68261") :method
.annotate 'line', 4
    new $P270, "ResizablePMCArray"
    push $P270, "unless"
    .return ($P270)
.end


.namespace ["NQP";"Grammar"]
.sub "_block277"  :anon :subid("64_1273727990.68261") :method :outer("62_1273727990.68261")
.annotate 'line', 163
    .local string rx279_tgt
    .local int rx279_pos
    .local int rx279_off
    .local int rx279_eos
    .local int rx279_rep
    .local pmc rx279_cur
    (rx279_cur, rx279_pos, rx279_tgt) = self."!cursor_start"()
    rx279_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx279_cur
    .local pmc match
    .lex "$/", match
    length rx279_eos, rx279_tgt
    set rx279_off, 0
    lt rx279_pos, 2, rx279_start
    sub rx279_off, rx279_pos, 1
    substr rx279_tgt, rx279_tgt, rx279_off
  rx279_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    ($P10) = rx279_cur."from"()
    inc $P10
    set rx279_pos, $P10
    ge rx279_pos, rx279_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  rxscan280_done:
  # rx literal  "else"
    add $I11, rx279_pos, 4
    gt $I11, rx279_eos, rx279_fail
    sub $I11, rx279_pos, rx279_off
    substr $S10, rx279_tgt, $I11, 4
    ne $S10, "else", rx279_fail
    add rx279_pos, 4
  # rx pass
    rx279_cur."!cursor_pass"(rx279_pos, "")
    rx279_cur."!cursor_debug"("PASS  ", "", " at pos=", rx279_pos)
    .return (rx279_cur)
  rx279_fail:
    (rx279_rep, rx279_pos, $I10, $P10) = rx279_cur."!mark_fail"(0)
    lt rx279_pos, -1, rx279_done
    eq rx279_pos, -1, rx279_fail
    jump $I10
  rx279_done:
    rx279_cur."!cursor_fail"()
    rx279_cur."!cursor_debug"("FAIL  ", "")
    .return (rx279_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("65_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx286_tgt
    .local int rx286_pos
    .local int rx286_off
    .local int rx286_eos
    .local int rx286_rep
    .local pmc rx286_cur
    (rx286_cur, rx286_pos, rx286_tgt) = self."!cursor_start"()
    rx286_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx286_cur
    .local pmc match
    .lex "$/", match
    length rx286_eos, rx286_tgt
    set rx286_off, 0
    lt rx286_pos, 2, rx286_start
    sub rx286_off, rx286_pos, 1
    substr rx286_tgt, rx286_tgt, rx286_off
  rx286_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan289_done
    goto rxscan289_scan
  rxscan289_loop:
    ($P10) = rx286_cur."from"()
    inc $P10
    set rx286_pos, $P10
    ge rx286_pos, rx286_eos, rxscan289_done
  rxscan289_scan:
    set_addr $I10, rxscan289_loop
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  rxscan289_done:
.annotate 'line', 167
  # rx subcapture "sym"
    set_addr $I10, rxcap_291_fail
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  alt290_0:
    set_addr $I10, alt290_1
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  # rx literal  "while"
    add $I11, rx286_pos, 5
    gt $I11, rx286_eos, rx286_fail
    sub $I11, rx286_pos, rx286_off
    substr $S10, rx286_tgt, $I11, 5
    ne $S10, "while", rx286_fail
    add rx286_pos, 5
    goto alt290_end
  alt290_1:
  # rx literal  "until"
    add $I11, rx286_pos, 5
    gt $I11, rx286_eos, rx286_fail
    sub $I11, rx286_pos, rx286_off
    substr $S10, rx286_tgt, $I11, 5
    ne $S10, "until", rx286_fail
    add rx286_pos, 5
  alt290_end:
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx286_cur."!mark_peek"($I10)
    rx286_cur."!cursor_pos"($I11)
    ($P10) = rx286_cur."!cursor_start"()
    $P10."!cursor_pass"(rx286_pos, "")
    rx286_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx286_fail
  rxcap_291_done:
  # rx charclass s
    ge rx286_pos, rx286_eos, rx286_fail
    sub $I10, rx286_pos, rx286_off
    is_cclass $I11, 32, rx286_tgt, $I10
    unless $I11, rx286_fail
    inc rx286_pos
  # rx subrule "ws" subtype=method negate=
    rx286_cur."!cursor_pos"(rx286_pos)
    $P10 = rx286_cur."ws"()
    unless $P10, rx286_fail
    rx286_pos = $P10."pos"()
.annotate 'line', 168
  # rx subrule "xblock" subtype=capture negate=
    rx286_cur."!cursor_pos"(rx286_pos)
    $P10 = rx286_cur."xblock"()
    unless $P10, rx286_fail
    rx286_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx286_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx286_cur."!cursor_pos"(rx286_pos)
    $P10 = rx286_cur."ws"()
    unless $P10, rx286_fail
    rx286_pos = $P10."pos"()
.annotate 'line', 166
  # rx pass
    rx286_cur."!cursor_pass"(rx286_pos, "statement_control:sym<while>")
    rx286_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx286_pos)
    .return (rx286_cur)
  rx286_fail:
.annotate 'line', 4
    (rx286_rep, rx286_pos, $I10, $P10) = rx286_cur."!mark_fail"(0)
    lt rx286_pos, -1, rx286_done
    eq rx286_pos, -1, rx286_fail
    jump $I10
  rx286_done:
    rx286_cur."!cursor_fail"()
    rx286_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx286_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("66_1273727990.68261") :method
.annotate 'line', 4
    new $P288, "ResizablePMCArray"
    push $P288, "until"
    push $P288, "while"
    .return ($P288)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("67_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    (rx295_cur, rx295_pos, rx295_tgt) = self."!cursor_start"()
    rx295_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    set rx295_off, 0
    lt rx295_pos, 2, rx295_start
    sub rx295_off, rx295_pos, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan298_done
    goto rxscan298_scan
  rxscan298_loop:
    ($P10) = rx295_cur."from"()
    inc $P10
    set rx295_pos, $P10
    ge rx295_pos, rx295_eos, rxscan298_done
  rxscan298_scan:
    set_addr $I10, rxscan298_loop
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  rxscan298_done:
.annotate 'line', 172
  # rx subcapture "sym"
    set_addr $I10, rxcap_299_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx295_pos, 6
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 6
    ne $S10, "repeat", rx295_fail
    add rx295_pos, 6
    set_addr $I10, rxcap_299_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_299_done
  rxcap_299_fail:
    goto rx295_fail
  rxcap_299_done:
  # rx charclass s
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    is_cclass $I11, 32, rx295_tgt, $I10
    unless $I11, rx295_fail
    inc rx295_pos
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  alt301_0:
.annotate 'line', 173
    set_addr $I10, alt301_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate 'line', 174
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_304_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  alt303_0:
    set_addr $I10, alt303_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx literal  "while"
    add $I11, rx295_pos, 5
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 5
    ne $S10, "while", rx295_fail
    add rx295_pos, 5
    goto alt303_end
  alt303_1:
  # rx literal  "until"
    add $I11, rx295_pos, 5
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 5
    ne $S10, "until", rx295_fail
    add rx295_pos, 5
  alt303_end:
    set_addr $I10, rxcap_304_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_304_done
  rxcap_304_fail:
    goto rx295_fail
  rxcap_304_done:
  # rx charclass s
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    is_cclass $I11, 32, rx295_tgt, $I10
    unless $I11, rx295_fail
    inc rx295_pos
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."xblock"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx295_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
    goto alt301_end
  alt301_1:
.annotate 'line', 175
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."pblock"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx295_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_310_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  alt309_0:
    set_addr $I10, alt309_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx literal  "while"
    add $I11, rx295_pos, 5
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 5
    ne $S10, "while", rx295_fail
    add rx295_pos, 5
    goto alt309_end
  alt309_1:
  # rx literal  "until"
    add $I11, rx295_pos, 5
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 5
    ne $S10, "until", rx295_fail
    add rx295_pos, 5
  alt309_end:
    set_addr $I10, rxcap_310_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_310_done
  rxcap_310_fail:
    goto rx295_fail
  rxcap_310_done:
  # rx charclass s
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    is_cclass $I11, 32, rx295_tgt, $I10
    unless $I11, rx295_fail
    inc rx295_pos
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."EXPR"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx295_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  alt301_end:
.annotate 'line', 176
  # rx subrule "ws" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ws"()
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
.annotate 'line', 171
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "statement_control:sym<repeat>")
    rx295_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx295_pos)
    .return (rx295_cur)
  rx295_fail:
.annotate 'line', 4
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    rx295_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx295_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("68_1273727990.68261") :method
.annotate 'line', 4
    new $P297, "ResizablePMCArray"
    push $P297, "repeat"
    .return ($P297)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("69_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    (rx315_cur, rx315_pos, rx315_tgt) = self."!cursor_start"()
    rx315_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx315_cur
    .local pmc match
    .lex "$/", match
    length rx315_eos, rx315_tgt
    set rx315_off, 0
    lt rx315_pos, 2, rx315_start
    sub rx315_off, rx315_pos, 1
    substr rx315_tgt, rx315_tgt, rx315_off
  rx315_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan318_done
    goto rxscan318_scan
  rxscan318_loop:
    ($P10) = rx315_cur."from"()
    inc $P10
    set rx315_pos, $P10
    ge rx315_pos, rx315_eos, rxscan318_done
  rxscan318_scan:
    set_addr $I10, rxscan318_loop
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  rxscan318_done:
.annotate 'line', 180
  # rx subcapture "sym"
    set_addr $I10, rxcap_319_fail
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  # rx literal  "for"
    add $I11, rx315_pos, 3
    gt $I11, rx315_eos, rx315_fail
    sub $I11, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I11, 3
    ne $S10, "for", rx315_fail
    add rx315_pos, 3
    set_addr $I10, rxcap_319_fail
    ($I12, $I11) = rx315_cur."!mark_peek"($I10)
    rx315_cur."!cursor_pos"($I11)
    ($P10) = rx315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx315_pos, "")
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_319_done
  rxcap_319_fail:
    goto rx315_fail
  rxcap_319_done:
  # rx charclass s
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    is_cclass $I11, 32, rx315_tgt, $I10
    unless $I11, rx315_fail
    inc rx315_pos
  # rx subrule "ws" subtype=method negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."ws"()
    unless $P10, rx315_fail
    rx315_pos = $P10."pos"()
.annotate 'line', 181
  # rx subrule "xblock" subtype=capture negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."xblock"()
    unless $P10, rx315_fail
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx315_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."ws"()
    unless $P10, rx315_fail
    rx315_pos = $P10."pos"()
.annotate 'line', 179
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "statement_control:sym<for>")
    rx315_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx315_pos)
    .return (rx315_cur)
  rx315_fail:
.annotate 'line', 4
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    rx315_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx315_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("70_1273727990.68261") :method
.annotate 'line', 4
    new $P317, "ResizablePMCArray"
    push $P317, "for"
    .return ($P317)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CATCH>"  :subid("71_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx323_tgt
    .local int rx323_pos
    .local int rx323_off
    .local int rx323_eos
    .local int rx323_rep
    .local pmc rx323_cur
    (rx323_cur, rx323_pos, rx323_tgt) = self."!cursor_start"()
    rx323_cur."!cursor_debug"("START ", "statement_control:sym<CATCH>")
    .lex unicode:"$\x{a2}", rx323_cur
    .local pmc match
    .lex "$/", match
    length rx323_eos, rx323_tgt
    set rx323_off, 0
    lt rx323_pos, 2, rx323_start
    sub rx323_off, rx323_pos, 1
    substr rx323_tgt, rx323_tgt, rx323_off
  rx323_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan326_done
    goto rxscan326_scan
  rxscan326_loop:
    ($P10) = rx323_cur."from"()
    inc $P10
    set rx323_pos, $P10
    ge rx323_pos, rx323_eos, rxscan326_done
  rxscan326_scan:
    set_addr $I10, rxscan326_loop
    rx323_cur."!mark_push"(0, rx323_pos, $I10)
  rxscan326_done:
.annotate 'line', 185
  # rx subcapture "sym"
    set_addr $I10, rxcap_327_fail
    rx323_cur."!mark_push"(0, rx323_pos, $I10)
  # rx literal  "CATCH"
    add $I11, rx323_pos, 5
    gt $I11, rx323_eos, rx323_fail
    sub $I11, rx323_pos, rx323_off
    substr $S10, rx323_tgt, $I11, 5
    ne $S10, "CATCH", rx323_fail
    add rx323_pos, 5
    set_addr $I10, rxcap_327_fail
    ($I12, $I11) = rx323_cur."!mark_peek"($I10)
    rx323_cur."!cursor_pos"($I11)
    ($P10) = rx323_cur."!cursor_start"()
    $P10."!cursor_pass"(rx323_pos, "")
    rx323_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_327_done
  rxcap_327_fail:
    goto rx323_fail
  rxcap_327_done:
  # rx charclass s
    ge rx323_pos, rx323_eos, rx323_fail
    sub $I10, rx323_pos, rx323_off
    is_cclass $I11, 32, rx323_tgt, $I10
    unless $I11, rx323_fail
    inc rx323_pos
  # rx subrule "ws" subtype=method negate=
    rx323_cur."!cursor_pos"(rx323_pos)
    $P10 = rx323_cur."ws"()
    unless $P10, rx323_fail
    rx323_pos = $P10."pos"()
.annotate 'line', 186
  # rx subrule "block" subtype=capture negate=
    rx323_cur."!cursor_pos"(rx323_pos)
    $P10 = rx323_cur."block"()
    unless $P10, rx323_fail
    rx323_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx323_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx323_cur."!cursor_pos"(rx323_pos)
    $P10 = rx323_cur."ws"()
    unless $P10, rx323_fail
    rx323_pos = $P10."pos"()
.annotate 'line', 184
  # rx pass
    rx323_cur."!cursor_pass"(rx323_pos, "statement_control:sym<CATCH>")
    rx323_cur."!cursor_debug"("PASS  ", "statement_control:sym<CATCH>", " at pos=", rx323_pos)
    .return (rx323_cur)
  rx323_fail:
.annotate 'line', 4
    (rx323_rep, rx323_pos, $I10, $P10) = rx323_cur."!mark_fail"(0)
    lt rx323_pos, -1, rx323_done
    eq rx323_pos, -1, rx323_fail
    jump $I10
  rx323_done:
    rx323_cur."!cursor_fail"()
    rx323_cur."!cursor_debug"("FAIL  ", "statement_control:sym<CATCH>")
    .return (rx323_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CATCH>"  :subid("72_1273727990.68261") :method
.annotate 'line', 4
    new $P325, "ResizablePMCArray"
    push $P325, "CATCH"
    .return ($P325)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<CONTROL>"  :subid("73_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    (rx331_cur, rx331_pos, rx331_tgt) = self."!cursor_start"()
    rx331_cur."!cursor_debug"("START ", "statement_control:sym<CONTROL>")
    .lex unicode:"$\x{a2}", rx331_cur
    .local pmc match
    .lex "$/", match
    length rx331_eos, rx331_tgt
    set rx331_off, 0
    lt rx331_pos, 2, rx331_start
    sub rx331_off, rx331_pos, 1
    substr rx331_tgt, rx331_tgt, rx331_off
  rx331_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan334_done
    goto rxscan334_scan
  rxscan334_loop:
    ($P10) = rx331_cur."from"()
    inc $P10
    set rx331_pos, $P10
    ge rx331_pos, rx331_eos, rxscan334_done
  rxscan334_scan:
    set_addr $I10, rxscan334_loop
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  rxscan334_done:
.annotate 'line', 190
  # rx subcapture "sym"
    set_addr $I10, rxcap_335_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx literal  "CONTROL"
    add $I11, rx331_pos, 7
    gt $I11, rx331_eos, rx331_fail
    sub $I11, rx331_pos, rx331_off
    substr $S10, rx331_tgt, $I11, 7
    ne $S10, "CONTROL", rx331_fail
    add rx331_pos, 7
    set_addr $I10, rxcap_335_fail
    ($I12, $I11) = rx331_cur."!mark_peek"($I10)
    rx331_cur."!cursor_pos"($I11)
    ($P10) = rx331_cur."!cursor_start"()
    $P10."!cursor_pass"(rx331_pos, "")
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_335_done
  rxcap_335_fail:
    goto rx331_fail
  rxcap_335_done:
  # rx charclass s
    ge rx331_pos, rx331_eos, rx331_fail
    sub $I10, rx331_pos, rx331_off
    is_cclass $I11, 32, rx331_tgt, $I10
    unless $I11, rx331_fail
    inc rx331_pos
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
.annotate 'line', 191
  # rx subrule "block" subtype=capture negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."block"()
    unless $P10, rx331_fail
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx331_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
.annotate 'line', 189
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "statement_control:sym<CONTROL>")
    rx331_cur."!cursor_debug"("PASS  ", "statement_control:sym<CONTROL>", " at pos=", rx331_pos)
    .return (rx331_cur)
  rx331_fail:
.annotate 'line', 4
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    rx331_cur."!cursor_debug"("FAIL  ", "statement_control:sym<CONTROL>")
    .return (rx331_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<CONTROL>"  :subid("74_1273727990.68261") :method
.annotate 'line', 4
    new $P333, "ResizablePMCArray"
    push $P333, "CONTROL"
    .return ($P333)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("75_1273727990.68261") :method
.annotate 'line', 194
    $P339 = self."!protoregex"("statement_prefix")
    .return ($P339)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("76_1273727990.68261") :method
.annotate 'line', 194
    $P341 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P341)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("77_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx343_tgt
    .local int rx343_pos
    .local int rx343_off
    .local int rx343_eos
    .local int rx343_rep
    .local pmc rx343_cur
    (rx343_cur, rx343_pos, rx343_tgt) = self."!cursor_start"()
    rx343_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx343_cur
    .local pmc match
    .lex "$/", match
    length rx343_eos, rx343_tgt
    set rx343_off, 0
    lt rx343_pos, 2, rx343_start
    sub rx343_off, rx343_pos, 1
    substr rx343_tgt, rx343_tgt, rx343_off
  rx343_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan347_done
    goto rxscan347_scan
  rxscan347_loop:
    ($P10) = rx343_cur."from"()
    inc $P10
    set rx343_pos, $P10
    ge rx343_pos, rx343_eos, rxscan347_done
  rxscan347_scan:
    set_addr $I10, rxscan347_loop
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  rxscan347_done:
.annotate 'line', 195
  # rx subcapture "sym"
    set_addr $I10, rxcap_348_fail
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx343_pos, 4
    gt $I11, rx343_eos, rx343_fail
    sub $I11, rx343_pos, rx343_off
    substr $S10, rx343_tgt, $I11, 4
    ne $S10, "INIT", rx343_fail
    add rx343_pos, 4
    set_addr $I10, rxcap_348_fail
    ($I12, $I11) = rx343_cur."!mark_peek"($I10)
    rx343_cur."!cursor_pos"($I11)
    ($P10) = rx343_cur."!cursor_start"()
    $P10."!cursor_pass"(rx343_pos, "")
    rx343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_348_done
  rxcap_348_fail:
    goto rx343_fail
  rxcap_348_done:
  # rx subrule "blorst" subtype=capture negate=
    rx343_cur."!cursor_pos"(rx343_pos)
    $P10 = rx343_cur."blorst"()
    unless $P10, rx343_fail
    rx343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx343_pos = $P10."pos"()
  # rx pass
    rx343_cur."!cursor_pass"(rx343_pos, "statement_prefix:sym<INIT>")
    rx343_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx343_pos)
    .return (rx343_cur)
  rx343_fail:
.annotate 'line', 4
    (rx343_rep, rx343_pos, $I10, $P10) = rx343_cur."!mark_fail"(0)
    lt rx343_pos, -1, rx343_done
    eq rx343_pos, -1, rx343_fail
    jump $I10
  rx343_done:
    rx343_cur."!cursor_fail"()
    rx343_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx343_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("78_1273727990.68261") :method
.annotate 'line', 4
    $P345 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P346, "ResizablePMCArray"
    push $P346, $P345
    .return ($P346)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<try>"  :subid("79_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx350_tgt
    .local int rx350_pos
    .local int rx350_off
    .local int rx350_eos
    .local int rx350_rep
    .local pmc rx350_cur
    (rx350_cur, rx350_pos, rx350_tgt) = self."!cursor_start"()
    rx350_cur."!cursor_debug"("START ", "statement_prefix:sym<try>")
    .lex unicode:"$\x{a2}", rx350_cur
    .local pmc match
    .lex "$/", match
    length rx350_eos, rx350_tgt
    set rx350_off, 0
    lt rx350_pos, 2, rx350_start
    sub rx350_off, rx350_pos, 1
    substr rx350_tgt, rx350_tgt, rx350_off
  rx350_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan354_done
    goto rxscan354_scan
  rxscan354_loop:
    ($P10) = rx350_cur."from"()
    inc $P10
    set rx350_pos, $P10
    ge rx350_pos, rx350_eos, rxscan354_done
  rxscan354_scan:
    set_addr $I10, rxscan354_loop
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  rxscan354_done:
.annotate 'line', 198
  # rx subcapture "sym"
    set_addr $I10, rxcap_355_fail
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  # rx literal  "try"
    add $I11, rx350_pos, 3
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    substr $S10, rx350_tgt, $I11, 3
    ne $S10, "try", rx350_fail
    add rx350_pos, 3
    set_addr $I10, rxcap_355_fail
    ($I12, $I11) = rx350_cur."!mark_peek"($I10)
    rx350_cur."!cursor_pos"($I11)
    ($P10) = rx350_cur."!cursor_start"()
    $P10."!cursor_pass"(rx350_pos, "")
    rx350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_355_done
  rxcap_355_fail:
    goto rx350_fail
  rxcap_355_done:
.annotate 'line', 199
  # rx subrule "blorst" subtype=capture negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."blorst"()
    unless $P10, rx350_fail
    rx350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx350_pos = $P10."pos"()
.annotate 'line', 197
  # rx pass
    rx350_cur."!cursor_pass"(rx350_pos, "statement_prefix:sym<try>")
    rx350_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<try>", " at pos=", rx350_pos)
    .return (rx350_cur)
  rx350_fail:
.annotate 'line', 4
    (rx350_rep, rx350_pos, $I10, $P10) = rx350_cur."!mark_fail"(0)
    lt rx350_pos, -1, rx350_done
    eq rx350_pos, -1, rx350_fail
    jump $I10
  rx350_done:
    rx350_cur."!cursor_fail"()
    rx350_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<try>")
    .return (rx350_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<try>"  :subid("80_1273727990.68261") :method
.annotate 'line', 4
    $P352 = self."!PREFIX__!subrule"("blorst", "try")
    new $P353, "ResizablePMCArray"
    push $P353, $P352
    .return ($P353)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("81_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    (rx357_cur, rx357_pos, rx357_tgt) = self."!cursor_start"()
    rx357_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx357_cur
    .local pmc match
    .lex "$/", match
    length rx357_eos, rx357_tgt
    set rx357_off, 0
    lt rx357_pos, 2, rx357_start
    sub rx357_off, rx357_pos, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan360_done
    goto rxscan360_scan
  rxscan360_loop:
    ($P10) = rx357_cur."from"()
    inc $P10
    set rx357_pos, $P10
    ge rx357_pos, rx357_eos, rxscan360_done
  rxscan360_scan:
    set_addr $I10, rxscan360_loop
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  rxscan360_done:
.annotate 'line', 203
  # rx charclass s
    ge rx357_pos, rx357_eos, rx357_fail
    sub $I10, rx357_pos, rx357_off
    is_cclass $I11, 32, rx357_tgt, $I10
    unless $I11, rx357_fail
    inc rx357_pos
  # rx subrule "ws" subtype=method negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."ws"()
    unless $P10, rx357_fail
    rx357_pos = $P10."pos"()
  alt361_0:
    set_addr $I10, alt361_1
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx357_pos, rx357_eos, rx357_fail
    sub $I10, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx357_fail
  # rx subrule "block" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."block"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx357_pos = $P10."pos"()
    goto alt361_end
  alt361_1:
  # rx subrule "statement" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."statement"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx357_pos = $P10."pos"()
  alt361_end:
.annotate 'line', 202
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "blorst")
    rx357_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx357_pos)
    .return (rx357_cur)
  rx357_fail:
.annotate 'line', 4
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    rx357_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx357_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("82_1273727990.68261") :method
.annotate 'line', 4
    new $P359, "ResizablePMCArray"
    push $P359, ""
    .return ($P359)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond"  :subid("83_1273727990.68261") :method
.annotate 'line', 208
    $P363 = self."!protoregex"("statement_mod_cond")
    .return ($P363)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond"  :subid("84_1273727990.68261") :method
.annotate 'line', 208
    $P365 = self."!PREFIX__!protoregex"("statement_mod_cond")
    .return ($P365)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<if>"  :subid("85_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx367_tgt
    .local int rx367_pos
    .local int rx367_off
    .local int rx367_eos
    .local int rx367_rep
    .local pmc rx367_cur
    (rx367_cur, rx367_pos, rx367_tgt) = self."!cursor_start"()
    rx367_cur."!cursor_debug"("START ", "statement_mod_cond:sym<if>")
    .lex unicode:"$\x{a2}", rx367_cur
    .local pmc match
    .lex "$/", match
    length rx367_eos, rx367_tgt
    set rx367_off, 0
    lt rx367_pos, 2, rx367_start
    sub rx367_off, rx367_pos, 1
    substr rx367_tgt, rx367_tgt, rx367_off
  rx367_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan370_done
    goto rxscan370_scan
  rxscan370_loop:
    ($P10) = rx367_cur."from"()
    inc $P10
    set rx367_pos, $P10
    ge rx367_pos, rx367_eos, rxscan370_done
  rxscan370_scan:
    set_addr $I10, rxscan370_loop
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  rxscan370_done:
.annotate 'line', 210
  # rx subcapture "sym"
    set_addr $I10, rxcap_371_fail
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  # rx literal  "if"
    add $I11, rx367_pos, 2
    gt $I11, rx367_eos, rx367_fail
    sub $I11, rx367_pos, rx367_off
    substr $S10, rx367_tgt, $I11, 2
    ne $S10, "if", rx367_fail
    add rx367_pos, 2
    set_addr $I10, rxcap_371_fail
    ($I12, $I11) = rx367_cur."!mark_peek"($I10)
    rx367_cur."!cursor_pos"($I11)
    ($P10) = rx367_cur."!cursor_start"()
    $P10."!cursor_pass"(rx367_pos, "")
    rx367_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_371_done
  rxcap_371_fail:
    goto rx367_fail
  rxcap_371_done:
  # rx subrule "ws" subtype=method negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."ws"()
    unless $P10, rx367_fail
    rx367_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."EXPR"()
    unless $P10, rx367_fail
    rx367_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx367_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."ws"()
    unless $P10, rx367_fail
    rx367_pos = $P10."pos"()
  # rx pass
    rx367_cur."!cursor_pass"(rx367_pos, "statement_mod_cond:sym<if>")
    rx367_cur."!cursor_debug"("PASS  ", "statement_mod_cond:sym<if>", " at pos=", rx367_pos)
    .return (rx367_cur)
  rx367_fail:
.annotate 'line', 4
    (rx367_rep, rx367_pos, $I10, $P10) = rx367_cur."!mark_fail"(0)
    lt rx367_pos, -1, rx367_done
    eq rx367_pos, -1, rx367_fail
    jump $I10
  rx367_done:
    rx367_cur."!cursor_fail"()
    rx367_cur."!cursor_debug"("FAIL  ", "statement_mod_cond:sym<if>")
    .return (rx367_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<if>"  :subid("86_1273727990.68261") :method
.annotate 'line', 4
    new $P369, "ResizablePMCArray"
    push $P369, "if"
    .return ($P369)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<unless>"  :subid("87_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    (rx375_cur, rx375_pos, rx375_tgt) = self."!cursor_start"()
    rx375_cur."!cursor_debug"("START ", "statement_mod_cond:sym<unless>")
    .lex unicode:"$\x{a2}", rx375_cur
    .local pmc match
    .lex "$/", match
    length rx375_eos, rx375_tgt
    set rx375_off, 0
    lt rx375_pos, 2, rx375_start
    sub rx375_off, rx375_pos, 1
    substr rx375_tgt, rx375_tgt, rx375_off
  rx375_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan378_done
    goto rxscan378_scan
  rxscan378_loop:
    ($P10) = rx375_cur."from"()
    inc $P10
    set rx375_pos, $P10
    ge rx375_pos, rx375_eos, rxscan378_done
  rxscan378_scan:
    set_addr $I10, rxscan378_loop
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  rxscan378_done:
.annotate 'line', 211
  # rx subcapture "sym"
    set_addr $I10, rxcap_379_fail
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  # rx literal  "unless"
    add $I11, rx375_pos, 6
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 6
    ne $S10, "unless", rx375_fail
    add rx375_pos, 6
    set_addr $I10, rxcap_379_fail
    ($I12, $I11) = rx375_cur."!mark_peek"($I10)
    rx375_cur."!cursor_pos"($I11)
    ($P10) = rx375_cur."!cursor_start"()
    $P10."!cursor_pass"(rx375_pos, "")
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_379_done
  rxcap_379_fail:
    goto rx375_fail
  rxcap_379_done:
  # rx subrule "ws" subtype=method negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."ws"()
    unless $P10, rx375_fail
    rx375_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."EXPR"()
    unless $P10, rx375_fail
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx375_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."ws"()
    unless $P10, rx375_fail
    rx375_pos = $P10."pos"()
  # rx pass
    rx375_cur."!cursor_pass"(rx375_pos, "statement_mod_cond:sym<unless>")
    rx375_cur."!cursor_debug"("PASS  ", "statement_mod_cond:sym<unless>", " at pos=", rx375_pos)
    .return (rx375_cur)
  rx375_fail:
.annotate 'line', 4
    (rx375_rep, rx375_pos, $I10, $P10) = rx375_cur."!mark_fail"(0)
    lt rx375_pos, -1, rx375_done
    eq rx375_pos, -1, rx375_fail
    jump $I10
  rx375_done:
    rx375_cur."!cursor_fail"()
    rx375_cur."!cursor_debug"("FAIL  ", "statement_mod_cond:sym<unless>")
    .return (rx375_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<unless>"  :subid("88_1273727990.68261") :method
.annotate 'line', 4
    new $P377, "ResizablePMCArray"
    push $P377, "unless"
    .return ($P377)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop"  :subid("89_1273727990.68261") :method
.annotate 'line', 213
    $P383 = self."!protoregex"("statement_mod_loop")
    .return ($P383)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop"  :subid("90_1273727990.68261") :method
.annotate 'line', 213
    $P385 = self."!PREFIX__!protoregex"("statement_mod_loop")
    .return ($P385)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<while>"  :subid("91_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    (rx387_cur, rx387_pos, rx387_tgt) = self."!cursor_start"()
    rx387_cur."!cursor_debug"("START ", "statement_mod_loop:sym<while>")
    .lex unicode:"$\x{a2}", rx387_cur
    .local pmc match
    .lex "$/", match
    length rx387_eos, rx387_tgt
    set rx387_off, 0
    lt rx387_pos, 2, rx387_start
    sub rx387_off, rx387_pos, 1
    substr rx387_tgt, rx387_tgt, rx387_off
  rx387_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan390_done
    goto rxscan390_scan
  rxscan390_loop:
    ($P10) = rx387_cur."from"()
    inc $P10
    set rx387_pos, $P10
    ge rx387_pos, rx387_eos, rxscan390_done
  rxscan390_scan:
    set_addr $I10, rxscan390_loop
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  rxscan390_done:
.annotate 'line', 215
  # rx subcapture "sym"
    set_addr $I10, rxcap_391_fail
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  # rx literal  "while"
    add $I11, rx387_pos, 5
    gt $I11, rx387_eos, rx387_fail
    sub $I11, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I11, 5
    ne $S10, "while", rx387_fail
    add rx387_pos, 5
    set_addr $I10, rxcap_391_fail
    ($I12, $I11) = rx387_cur."!mark_peek"($I10)
    rx387_cur."!cursor_pos"($I11)
    ($P10) = rx387_cur."!cursor_start"()
    $P10."!cursor_pass"(rx387_pos, "")
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_391_done
  rxcap_391_fail:
    goto rx387_fail
  rxcap_391_done:
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."EXPR"()
    unless $P10, rx387_fail
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx387_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx pass
    rx387_cur."!cursor_pass"(rx387_pos, "statement_mod_loop:sym<while>")
    rx387_cur."!cursor_debug"("PASS  ", "statement_mod_loop:sym<while>", " at pos=", rx387_pos)
    .return (rx387_cur)
  rx387_fail:
.annotate 'line', 4
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    rx387_cur."!cursor_debug"("FAIL  ", "statement_mod_loop:sym<while>")
    .return (rx387_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<while>"  :subid("92_1273727990.68261") :method
.annotate 'line', 4
    new $P389, "ResizablePMCArray"
    push $P389, "while"
    .return ($P389)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<until>"  :subid("93_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx395_tgt
    .local int rx395_pos
    .local int rx395_off
    .local int rx395_eos
    .local int rx395_rep
    .local pmc rx395_cur
    (rx395_cur, rx395_pos, rx395_tgt) = self."!cursor_start"()
    rx395_cur."!cursor_debug"("START ", "statement_mod_loop:sym<until>")
    .lex unicode:"$\x{a2}", rx395_cur
    .local pmc match
    .lex "$/", match
    length rx395_eos, rx395_tgt
    set rx395_off, 0
    lt rx395_pos, 2, rx395_start
    sub rx395_off, rx395_pos, 1
    substr rx395_tgt, rx395_tgt, rx395_off
  rx395_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan398_done
    goto rxscan398_scan
  rxscan398_loop:
    ($P10) = rx395_cur."from"()
    inc $P10
    set rx395_pos, $P10
    ge rx395_pos, rx395_eos, rxscan398_done
  rxscan398_scan:
    set_addr $I10, rxscan398_loop
    rx395_cur."!mark_push"(0, rx395_pos, $I10)
  rxscan398_done:
.annotate 'line', 216
  # rx subcapture "sym"
    set_addr $I10, rxcap_399_fail
    rx395_cur."!mark_push"(0, rx395_pos, $I10)
  # rx literal  "until"
    add $I11, rx395_pos, 5
    gt $I11, rx395_eos, rx395_fail
    sub $I11, rx395_pos, rx395_off
    substr $S10, rx395_tgt, $I11, 5
    ne $S10, "until", rx395_fail
    add rx395_pos, 5
    set_addr $I10, rxcap_399_fail
    ($I12, $I11) = rx395_cur."!mark_peek"($I10)
    rx395_cur."!cursor_pos"($I11)
    ($P10) = rx395_cur."!cursor_start"()
    $P10."!cursor_pass"(rx395_pos, "")
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_399_done
  rxcap_399_fail:
    goto rx395_fail
  rxcap_399_done:
  # rx subrule "ws" subtype=method negate=
    rx395_cur."!cursor_pos"(rx395_pos)
    $P10 = rx395_cur."ws"()
    unless $P10, rx395_fail
    rx395_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx395_cur."!cursor_pos"(rx395_pos)
    $P10 = rx395_cur."EXPR"()
    unless $P10, rx395_fail
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx395_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx395_cur."!cursor_pos"(rx395_pos)
    $P10 = rx395_cur."ws"()
    unless $P10, rx395_fail
    rx395_pos = $P10."pos"()
  # rx pass
    rx395_cur."!cursor_pass"(rx395_pos, "statement_mod_loop:sym<until>")
    rx395_cur."!cursor_debug"("PASS  ", "statement_mod_loop:sym<until>", " at pos=", rx395_pos)
    .return (rx395_cur)
  rx395_fail:
.annotate 'line', 4
    (rx395_rep, rx395_pos, $I10, $P10) = rx395_cur."!mark_fail"(0)
    lt rx395_pos, -1, rx395_done
    eq rx395_pos, -1, rx395_fail
    jump $I10
  rx395_done:
    rx395_cur."!cursor_fail"()
    rx395_cur."!cursor_debug"("FAIL  ", "statement_mod_loop:sym<until>")
    .return (rx395_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<until>"  :subid("94_1273727990.68261") :method
.annotate 'line', 4
    new $P397, "ResizablePMCArray"
    push $P397, "until"
    .return ($P397)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<fatarrow>"  :subid("95_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx403_tgt
    .local int rx403_pos
    .local int rx403_off
    .local int rx403_eos
    .local int rx403_rep
    .local pmc rx403_cur
    (rx403_cur, rx403_pos, rx403_tgt) = self."!cursor_start"()
    rx403_cur."!cursor_debug"("START ", "term:sym<fatarrow>")
    .lex unicode:"$\x{a2}", rx403_cur
    .local pmc match
    .lex "$/", match
    length rx403_eos, rx403_tgt
    set rx403_off, 0
    lt rx403_pos, 2, rx403_start
    sub rx403_off, rx403_pos, 1
    substr rx403_tgt, rx403_tgt, rx403_off
  rx403_start:
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
.annotate 'line', 220
  # rx subrule "fatarrow" subtype=capture negate=
    rx403_cur."!cursor_pos"(rx403_pos)
    $P10 = rx403_cur."fatarrow"()
    unless $P10, rx403_fail
    rx403_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("fatarrow")
    rx403_pos = $P10."pos"()
  # rx pass
    rx403_cur."!cursor_pass"(rx403_pos, "term:sym<fatarrow>")
    rx403_cur."!cursor_debug"("PASS  ", "term:sym<fatarrow>", " at pos=", rx403_pos)
    .return (rx403_cur)
  rx403_fail:
.annotate 'line', 4
    (rx403_rep, rx403_pos, $I10, $P10) = rx403_cur."!mark_fail"(0)
    lt rx403_pos, -1, rx403_done
    eq rx403_pos, -1, rx403_fail
    jump $I10
  rx403_done:
    rx403_cur."!cursor_fail"()
    rx403_cur."!cursor_debug"("FAIL  ", "term:sym<fatarrow>")
    .return (rx403_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<fatarrow>"  :subid("96_1273727990.68261") :method
.annotate 'line', 4
    $P405 = self."!PREFIX__!subrule"("fatarrow", "")
    new $P406, "ResizablePMCArray"
    push $P406, $P405
    .return ($P406)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("97_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx409_tgt
    .local int rx409_pos
    .local int rx409_off
    .local int rx409_eos
    .local int rx409_rep
    .local pmc rx409_cur
    (rx409_cur, rx409_pos, rx409_tgt) = self."!cursor_start"()
    rx409_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx409_cur
    .local pmc match
    .lex "$/", match
    length rx409_eos, rx409_tgt
    set rx409_off, 0
    lt rx409_pos, 2, rx409_start
    sub rx409_off, rx409_pos, 1
    substr rx409_tgt, rx409_tgt, rx409_off
  rx409_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan413_done
    goto rxscan413_scan
  rxscan413_loop:
    ($P10) = rx409_cur."from"()
    inc $P10
    set rx409_pos, $P10
    ge rx409_pos, rx409_eos, rxscan413_done
  rxscan413_scan:
    set_addr $I10, rxscan413_loop
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  rxscan413_done:
.annotate 'line', 221
  # rx subrule "colonpair" subtype=capture negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    $P10 = rx409_cur."colonpair"()
    unless $P10, rx409_fail
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx409_pos = $P10."pos"()
  # rx pass
    rx409_cur."!cursor_pass"(rx409_pos, "term:sym<colonpair>")
    rx409_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx409_pos)
    .return (rx409_cur)
  rx409_fail:
.annotate 'line', 4
    (rx409_rep, rx409_pos, $I10, $P10) = rx409_cur."!mark_fail"(0)
    lt rx409_pos, -1, rx409_done
    eq rx409_pos, -1, rx409_fail
    jump $I10
  rx409_done:
    rx409_cur."!cursor_fail"()
    rx409_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx409_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("98_1273727990.68261") :method
.annotate 'line', 4
    $P411 = self."!PREFIX__!subrule"("colonpair", "")
    new $P412, "ResizablePMCArray"
    push $P412, $P411
    .return ($P412)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("99_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    (rx415_cur, rx415_pos, rx415_tgt) = self."!cursor_start"()
    rx415_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx415_cur
    .local pmc match
    .lex "$/", match
    length rx415_eos, rx415_tgt
    set rx415_off, 0
    lt rx415_pos, 2, rx415_start
    sub rx415_off, rx415_pos, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan419_done
    goto rxscan419_scan
  rxscan419_loop:
    ($P10) = rx415_cur."from"()
    inc $P10
    set rx415_pos, $P10
    ge rx415_pos, rx415_eos, rxscan419_done
  rxscan419_scan:
    set_addr $I10, rxscan419_loop
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  rxscan419_done:
.annotate 'line', 222
  # rx subrule "variable" subtype=capture negate=
    rx415_cur."!cursor_pos"(rx415_pos)
    $P10 = rx415_cur."variable"()
    unless $P10, rx415_fail
    rx415_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx415_pos = $P10."pos"()
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "term:sym<variable>")
    rx415_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx415_pos)
    .return (rx415_cur)
  rx415_fail:
.annotate 'line', 4
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    rx415_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx415_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("100_1273727990.68261") :method
.annotate 'line', 4
    $P417 = self."!PREFIX__!subrule"("variable", "")
    new $P418, "ResizablePMCArray"
    push $P418, $P417
    .return ($P418)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("101_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    (rx421_cur, rx421_pos, rx421_tgt) = self."!cursor_start"()
    rx421_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    set rx421_off, 0
    lt rx421_pos, 2, rx421_start
    sub rx421_off, rx421_pos, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
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
.annotate 'line', 223
  # rx subrule "package_declarator" subtype=capture negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."package_declarator"()
    unless $P10, rx421_fail
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx421_pos = $P10."pos"()
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "term:sym<package_declarator>")
    rx421_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx421_pos)
    .return (rx421_cur)
  rx421_fail:
.annotate 'line', 4
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    rx421_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx421_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("102_1273727990.68261") :method
.annotate 'line', 4
    $P423 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P424, "ResizablePMCArray"
    push $P424, $P423
    .return ($P424)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("103_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx427_tgt
    .local int rx427_pos
    .local int rx427_off
    .local int rx427_eos
    .local int rx427_rep
    .local pmc rx427_cur
    (rx427_cur, rx427_pos, rx427_tgt) = self."!cursor_start"()
    rx427_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx427_cur
    .local pmc match
    .lex "$/", match
    length rx427_eos, rx427_tgt
    set rx427_off, 0
    lt rx427_pos, 2, rx427_start
    sub rx427_off, rx427_pos, 1
    substr rx427_tgt, rx427_tgt, rx427_off
  rx427_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan431_done
    goto rxscan431_scan
  rxscan431_loop:
    ($P10) = rx427_cur."from"()
    inc $P10
    set rx427_pos, $P10
    ge rx427_pos, rx427_eos, rxscan431_done
  rxscan431_scan:
    set_addr $I10, rxscan431_loop
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  rxscan431_done:
.annotate 'line', 224
  # rx subrule "scope_declarator" subtype=capture negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."scope_declarator"()
    unless $P10, rx427_fail
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx427_pos = $P10."pos"()
  # rx pass
    rx427_cur."!cursor_pass"(rx427_pos, "term:sym<scope_declarator>")
    rx427_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx427_pos)
    .return (rx427_cur)
  rx427_fail:
.annotate 'line', 4
    (rx427_rep, rx427_pos, $I10, $P10) = rx427_cur."!mark_fail"(0)
    lt rx427_pos, -1, rx427_done
    eq rx427_pos, -1, rx427_fail
    jump $I10
  rx427_done:
    rx427_cur."!cursor_fail"()
    rx427_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx427_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("104_1273727990.68261") :method
.annotate 'line', 4
    $P429 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P430, "ResizablePMCArray"
    push $P430, $P429
    .return ($P430)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("105_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx433_tgt
    .local int rx433_pos
    .local int rx433_off
    .local int rx433_eos
    .local int rx433_rep
    .local pmc rx433_cur
    (rx433_cur, rx433_pos, rx433_tgt) = self."!cursor_start"()
    rx433_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx433_cur
    .local pmc match
    .lex "$/", match
    length rx433_eos, rx433_tgt
    set rx433_off, 0
    lt rx433_pos, 2, rx433_start
    sub rx433_off, rx433_pos, 1
    substr rx433_tgt, rx433_tgt, rx433_off
  rx433_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan437_done
    goto rxscan437_scan
  rxscan437_loop:
    ($P10) = rx433_cur."from"()
    inc $P10
    set rx433_pos, $P10
    ge rx433_pos, rx433_eos, rxscan437_done
  rxscan437_scan:
    set_addr $I10, rxscan437_loop
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  rxscan437_done:
.annotate 'line', 225
  # rx subrule "routine_declarator" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."routine_declarator"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx433_pos = $P10."pos"()
  # rx pass
    rx433_cur."!cursor_pass"(rx433_pos, "term:sym<routine_declarator>")
    rx433_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx433_pos)
    .return (rx433_cur)
  rx433_fail:
.annotate 'line', 4
    (rx433_rep, rx433_pos, $I10, $P10) = rx433_cur."!mark_fail"(0)
    lt rx433_pos, -1, rx433_done
    eq rx433_pos, -1, rx433_fail
    jump $I10
  rx433_done:
    rx433_cur."!cursor_fail"()
    rx433_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx433_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("106_1273727990.68261") :method
.annotate 'line', 4
    $P435 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P436, "ResizablePMCArray"
    push $P436, $P435
    .return ($P436)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("107_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx439_tgt
    .local int rx439_pos
    .local int rx439_off
    .local int rx439_eos
    .local int rx439_rep
    .local pmc rx439_cur
    (rx439_cur, rx439_pos, rx439_tgt) = self."!cursor_start"()
    rx439_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx439_cur
    .local pmc match
    .lex "$/", match
    length rx439_eos, rx439_tgt
    set rx439_off, 0
    lt rx439_pos, 2, rx439_start
    sub rx439_off, rx439_pos, 1
    substr rx439_tgt, rx439_tgt, rx439_off
  rx439_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan443_done
    goto rxscan443_scan
  rxscan443_loop:
    ($P10) = rx439_cur."from"()
    inc $P10
    set rx439_pos, $P10
    ge rx439_pos, rx439_eos, rxscan443_done
  rxscan443_scan:
    set_addr $I10, rxscan443_loop
    rx439_cur."!mark_push"(0, rx439_pos, $I10)
  rxscan443_done:
.annotate 'line', 226
  # rx subrule "regex_declarator" subtype=capture negate=
    rx439_cur."!cursor_pos"(rx439_pos)
    $P10 = rx439_cur."regex_declarator"()
    unless $P10, rx439_fail
    rx439_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx439_pos = $P10."pos"()
  # rx pass
    rx439_cur."!cursor_pass"(rx439_pos, "term:sym<regex_declarator>")
    rx439_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx439_pos)
    .return (rx439_cur)
  rx439_fail:
.annotate 'line', 4
    (rx439_rep, rx439_pos, $I10, $P10) = rx439_cur."!mark_fail"(0)
    lt rx439_pos, -1, rx439_done
    eq rx439_pos, -1, rx439_fail
    jump $I10
  rx439_done:
    rx439_cur."!cursor_fail"()
    rx439_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx439_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("108_1273727990.68261") :method
.annotate 'line', 4
    $P441 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P442, "ResizablePMCArray"
    push $P442, $P441
    .return ($P442)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("109_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx445_tgt
    .local int rx445_pos
    .local int rx445_off
    .local int rx445_eos
    .local int rx445_rep
    .local pmc rx445_cur
    (rx445_cur, rx445_pos, rx445_tgt) = self."!cursor_start"()
    rx445_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx445_cur
    .local pmc match
    .lex "$/", match
    length rx445_eos, rx445_tgt
    set rx445_off, 0
    lt rx445_pos, 2, rx445_start
    sub rx445_off, rx445_pos, 1
    substr rx445_tgt, rx445_tgt, rx445_off
  rx445_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan449_done
    goto rxscan449_scan
  rxscan449_loop:
    ($P10) = rx445_cur."from"()
    inc $P10
    set rx445_pos, $P10
    ge rx445_pos, rx445_eos, rxscan449_done
  rxscan449_scan:
    set_addr $I10, rxscan449_loop
    rx445_cur."!mark_push"(0, rx445_pos, $I10)
  rxscan449_done:
.annotate 'line', 227
  # rx subrule "statement_prefix" subtype=capture negate=
    rx445_cur."!cursor_pos"(rx445_pos)
    $P10 = rx445_cur."statement_prefix"()
    unless $P10, rx445_fail
    rx445_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx445_pos = $P10."pos"()
  # rx pass
    rx445_cur."!cursor_pass"(rx445_pos, "term:sym<statement_prefix>")
    rx445_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx445_pos)
    .return (rx445_cur)
  rx445_fail:
.annotate 'line', 4
    (rx445_rep, rx445_pos, $I10, $P10) = rx445_cur."!mark_fail"(0)
    lt rx445_pos, -1, rx445_done
    eq rx445_pos, -1, rx445_fail
    jump $I10
  rx445_done:
    rx445_cur."!cursor_fail"()
    rx445_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx445_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("110_1273727990.68261") :method
.annotate 'line', 4
    $P447 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P448, "ResizablePMCArray"
    push $P448, $P447
    .return ($P448)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<lambda>"  :subid("111_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx451_tgt
    .local int rx451_pos
    .local int rx451_off
    .local int rx451_eos
    .local int rx451_rep
    .local pmc rx451_cur
    (rx451_cur, rx451_pos, rx451_tgt) = self."!cursor_start"()
    rx451_cur."!cursor_debug"("START ", "term:sym<lambda>")
    .lex unicode:"$\x{a2}", rx451_cur
    .local pmc match
    .lex "$/", match
    length rx451_eos, rx451_tgt
    set rx451_off, 0
    lt rx451_pos, 2, rx451_start
    sub rx451_off, rx451_pos, 1
    substr rx451_tgt, rx451_tgt, rx451_off
  rx451_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan454_done
    goto rxscan454_scan
  rxscan454_loop:
    ($P10) = rx451_cur."from"()
    inc $P10
    set rx451_pos, $P10
    ge rx451_pos, rx451_eos, rxscan454_done
  rxscan454_scan:
    set_addr $I10, rxscan454_loop
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  rxscan454_done:
.annotate 'line', 228
  # rx subrule "lambda" subtype=zerowidth negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."lambda"()
    unless $P10, rx451_fail
  # rx subrule "pblock" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."pblock"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx451_pos = $P10."pos"()
  # rx pass
    rx451_cur."!cursor_pass"(rx451_pos, "term:sym<lambda>")
    rx451_cur."!cursor_debug"("PASS  ", "term:sym<lambda>", " at pos=", rx451_pos)
    .return (rx451_cur)
  rx451_fail:
.annotate 'line', 4
    (rx451_rep, rx451_pos, $I10, $P10) = rx451_cur."!mark_fail"(0)
    lt rx451_pos, -1, rx451_done
    eq rx451_pos, -1, rx451_fail
    jump $I10
  rx451_done:
    rx451_cur."!cursor_fail"()
    rx451_cur."!cursor_debug"("FAIL  ", "term:sym<lambda>")
    .return (rx451_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<lambda>"  :subid("112_1273727990.68261") :method
.annotate 'line', 4
    new $P453, "ResizablePMCArray"
    push $P453, ""
    .return ($P453)
.end


.namespace ["NQP";"Grammar"]
.sub "fatarrow"  :subid("113_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx456_tgt
    .local int rx456_pos
    .local int rx456_off
    .local int rx456_eos
    .local int rx456_rep
    .local pmc rx456_cur
    (rx456_cur, rx456_pos, rx456_tgt) = self."!cursor_start"()
    rx456_cur."!cursor_debug"("START ", "fatarrow")
    .lex unicode:"$\x{a2}", rx456_cur
    .local pmc match
    .lex "$/", match
    length rx456_eos, rx456_tgt
    set rx456_off, 0
    lt rx456_pos, 2, rx456_start
    sub rx456_off, rx456_pos, 1
    substr rx456_tgt, rx456_tgt, rx456_off
  rx456_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan460_done
    goto rxscan460_scan
  rxscan460_loop:
    ($P10) = rx456_cur."from"()
    inc $P10
    set rx456_pos, $P10
    ge rx456_pos, rx456_eos, rxscan460_done
  rxscan460_scan:
    set_addr $I10, rxscan460_loop
    rx456_cur."!mark_push"(0, rx456_pos, $I10)
  rxscan460_done:
.annotate 'line', 231
  # rx subrule "identifier" subtype=capture negate=
    rx456_cur."!cursor_pos"(rx456_pos)
    $P10 = rx456_cur."identifier"()
    unless $P10, rx456_fail
    rx456_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    rx456_pos = $P10."pos"()
  # rx rxquantr461 ** 0..*
    set_addr $I462, rxquantr461_done
    rx456_cur."!mark_push"(0, rx456_pos, $I462)
  rxquantr461_loop:
  # rx enumcharlist negate=0 
    ge rx456_pos, rx456_eos, rx456_fail
    sub $I10, rx456_pos, rx456_off
    substr $S10, rx456_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx456_fail
    inc rx456_pos
    (rx456_rep) = rx456_cur."!mark_commit"($I462)
    rx456_cur."!mark_push"(rx456_rep, rx456_pos, $I462)
    goto rxquantr461_loop
  rxquantr461_done:
  # rx literal  "=>"
    add $I11, rx456_pos, 2
    gt $I11, rx456_eos, rx456_fail
    sub $I11, rx456_pos, rx456_off
    substr $S10, rx456_tgt, $I11, 2
    ne $S10, "=>", rx456_fail
    add rx456_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx456_cur."!cursor_pos"(rx456_pos)
    $P10 = rx456_cur."ws"()
    unless $P10, rx456_fail
    rx456_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx456_cur."!cursor_pos"(rx456_pos)
    $P10 = rx456_cur."EXPR"("i=")
    unless $P10, rx456_fail
    rx456_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    rx456_pos = $P10."pos"()
.annotate 'line', 230
  # rx pass
    rx456_cur."!cursor_pass"(rx456_pos, "fatarrow")
    rx456_cur."!cursor_debug"("PASS  ", "fatarrow", " at pos=", rx456_pos)
    .return (rx456_cur)
  rx456_fail:
.annotate 'line', 4
    (rx456_rep, rx456_pos, $I10, $P10) = rx456_cur."!mark_fail"(0)
    lt rx456_pos, -1, rx456_done
    eq rx456_pos, -1, rx456_fail
    jump $I10
  rx456_done:
    rx456_cur."!cursor_fail"()
    rx456_cur."!cursor_debug"("FAIL  ", "fatarrow")
    .return (rx456_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__fatarrow"  :subid("114_1273727990.68261") :method
.annotate 'line', 4
    $P458 = self."!PREFIX__!subrule"("key", "")
    new $P459, "ResizablePMCArray"
    push $P459, $P458
    .return ($P459)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("115_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx464_tgt
    .local int rx464_pos
    .local int rx464_off
    .local int rx464_eos
    .local int rx464_rep
    .local pmc rx464_cur
    (rx464_cur, rx464_pos, rx464_tgt) = self."!cursor_start"()
    rx464_cur."!cursor_debug"("START ", "colonpair")
    rx464_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx464_cur
    .local pmc match
    .lex "$/", match
    length rx464_eos, rx464_tgt
    set rx464_off, 0
    lt rx464_pos, 2, rx464_start
    sub rx464_off, rx464_pos, 1
    substr rx464_tgt, rx464_tgt, rx464_off
  rx464_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan470_done
    goto rxscan470_scan
  rxscan470_loop:
    ($P10) = rx464_cur."from"()
    inc $P10
    set rx464_pos, $P10
    ge rx464_pos, rx464_eos, rxscan470_done
  rxscan470_scan:
    set_addr $I10, rxscan470_loop
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
  rxscan470_done:
.annotate 'line', 235
  # rx literal  ":"
    add $I11, rx464_pos, 1
    gt $I11, rx464_eos, rx464_fail
    sub $I11, rx464_pos, rx464_off
    substr $S10, rx464_tgt, $I11, 1
    ne $S10, ":", rx464_fail
    add rx464_pos, 1
  alt471_0:
.annotate 'line', 236
    set_addr $I10, alt471_1
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
.annotate 'line', 237
  # rx subcapture "not"
    set_addr $I10, rxcap_472_fail
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
  # rx literal  "!"
    add $I11, rx464_pos, 1
    gt $I11, rx464_eos, rx464_fail
    sub $I11, rx464_pos, rx464_off
    substr $S10, rx464_tgt, $I11, 1
    ne $S10, "!", rx464_fail
    add rx464_pos, 1
    set_addr $I10, rxcap_472_fail
    ($I12, $I11) = rx464_cur."!mark_peek"($I10)
    rx464_cur."!cursor_pos"($I11)
    ($P10) = rx464_cur."!cursor_start"()
    $P10."!cursor_pass"(rx464_pos, "")
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_472_done
  rxcap_472_fail:
    goto rx464_fail
  rxcap_472_done:
  # rx subrule "identifier" subtype=capture negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."identifier"()
    unless $P10, rx464_fail
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx464_pos = $P10."pos"()
    goto alt471_end
  alt471_1:
    set_addr $I10, alt471_2
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
.annotate 'line', 238
  # rx subrule "identifier" subtype=capture negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."identifier"()
    unless $P10, rx464_fail
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx464_pos = $P10."pos"()
  # rx rxquantr473 ** 0..1
    set_addr $I474, rxquantr473_done
    rx464_cur."!mark_push"(0, rx464_pos, $I474)
  rxquantr473_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."circumfix"()
    unless $P10, rx464_fail
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx464_pos = $P10."pos"()
    (rx464_rep) = rx464_cur."!mark_commit"($I474)
  rxquantr473_done:
    goto alt471_end
  alt471_2:
.annotate 'line', 239
  # rx subrule "circumfix" subtype=capture negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."circumfix"()
    unless $P10, rx464_fail
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx464_pos = $P10."pos"()
  alt471_end:
.annotate 'line', 234
  # rx pass
    rx464_cur."!cursor_pass"(rx464_pos, "colonpair")
    rx464_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx464_pos)
    .return (rx464_cur)
  rx464_fail:
.annotate 'line', 4
    (rx464_rep, rx464_pos, $I10, $P10) = rx464_cur."!mark_fail"(0)
    lt rx464_pos, -1, rx464_done
    eq rx464_pos, -1, rx464_fail
    jump $I10
  rx464_done:
    rx464_cur."!cursor_fail"()
    rx464_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx464_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("116_1273727990.68261") :method
.annotate 'line', 4
    $P466 = self."!PREFIX__!subrule"("circumfix", ":")
    $P467 = self."!PREFIX__!subrule"("identifier", ":")
    $P468 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P469, "ResizablePMCArray"
    push $P469, $P466
    push $P469, $P467
    push $P469, $P468
    .return ($P469)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("117_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx476_tgt
    .local int rx476_pos
    .local int rx476_off
    .local int rx476_eos
    .local int rx476_rep
    .local pmc rx476_cur
    (rx476_cur, rx476_pos, rx476_tgt) = self."!cursor_start"()
    rx476_cur."!cursor_debug"("START ", "variable")
    rx476_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx476_cur
    .local pmc match
    .lex "$/", match
    length rx476_eos, rx476_tgt
    set rx476_off, 0
    lt rx476_pos, 2, rx476_start
    sub rx476_off, rx476_pos, 1
    substr rx476_tgt, rx476_tgt, rx476_off
  rx476_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan481_done
    goto rxscan481_scan
  rxscan481_loop:
    ($P10) = rx476_cur."from"()
    inc $P10
    set rx476_pos, $P10
    ge rx476_pos, rx476_eos, rxscan481_done
  rxscan481_scan:
    set_addr $I10, rxscan481_loop
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  rxscan481_done:
  alt482_0:
.annotate 'line', 243
    set_addr $I10, alt482_1
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
.annotate 'line', 244
  # rx subrule "sigil" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."sigil"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx476_pos = $P10."pos"()
  # rx rxquantr483 ** 0..1
    set_addr $I484, rxquantr483_done
    rx476_cur."!mark_push"(0, rx476_pos, $I484)
  rxquantr483_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."twigil"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx476_pos = $P10."pos"()
    (rx476_rep) = rx476_cur."!mark_commit"($I484)
  rxquantr483_done:
  # rx subrule "name" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."name"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx476_pos = $P10."pos"()
    goto alt482_end
  alt482_1:
    set_addr $I10, alt482_2
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
.annotate 'line', 245
  # rx subrule "sigil" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."sigil"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx476_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx476_pos, rx476_eos, rx476_fail
    sub $I10, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx476_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."postcircumfix"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx476_pos = $P10."pos"()
    goto alt482_end
  alt482_2:
.annotate 'line', 246
  # rx subcapture "sigil"
    set_addr $I10, rxcap_485_fail
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  # rx literal  "$"
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I11, 1
    ne $S10, "$", rx476_fail
    add rx476_pos, 1
    set_addr $I10, rxcap_485_fail
    ($I12, $I11) = rx476_cur."!mark_peek"($I10)
    rx476_cur."!cursor_pos"($I11)
    ($P10) = rx476_cur."!cursor_start"()
    $P10."!cursor_pass"(rx476_pos, "")
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_485_done
  rxcap_485_fail:
    goto rx476_fail
  rxcap_485_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_486_fail
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx476_pos, rx476_eos, rx476_fail
    sub $I10, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx476_fail
    inc rx476_pos
    set_addr $I10, rxcap_486_fail
    ($I12, $I11) = rx476_cur."!mark_peek"($I10)
    rx476_cur."!cursor_pos"($I11)
    ($P10) = rx476_cur."!cursor_start"()
    $P10."!cursor_pass"(rx476_pos, "")
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_486_done
  rxcap_486_fail:
    goto rx476_fail
  rxcap_486_done:
  alt482_end:
.annotate 'line', 243
  # rx pass
    rx476_cur."!cursor_pass"(rx476_pos, "variable")
    rx476_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx476_pos)
    .return (rx476_cur)
  rx476_fail:
.annotate 'line', 4
    (rx476_rep, rx476_pos, $I10, $P10) = rx476_cur."!mark_fail"(0)
    lt rx476_pos, -1, rx476_done
    eq rx476_pos, -1, rx476_fail
    jump $I10
  rx476_done:
    rx476_cur."!cursor_fail"()
    rx476_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx476_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("118_1273727990.68261") :method
.annotate 'line', 4
    $P478 = self."!PREFIX__!subrule"("sigil", "")
    $P479 = self."!PREFIX__!subrule"("sigil", "")
    new $P480, "ResizablePMCArray"
    push $P480, "$!"
    push $P480, "$_"
    push $P480, "$/"
    push $P480, $P478
    push $P480, $P479
    .return ($P480)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("119_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx488_tgt
    .local int rx488_pos
    .local int rx488_off
    .local int rx488_eos
    .local int rx488_rep
    .local pmc rx488_cur
    (rx488_cur, rx488_pos, rx488_tgt) = self."!cursor_start"()
    rx488_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx488_cur
    .local pmc match
    .lex "$/", match
    length rx488_eos, rx488_tgt
    set rx488_off, 0
    lt rx488_pos, 2, rx488_start
    sub rx488_off, rx488_pos, 1
    substr rx488_tgt, rx488_tgt, rx488_off
  rx488_start:
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
.annotate 'line', 249
  # rx enumcharlist negate=0 
    ge rx488_pos, rx488_eos, rx488_fail
    sub $I10, rx488_pos, rx488_off
    substr $S10, rx488_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx488_fail
    inc rx488_pos
  # rx pass
    rx488_cur."!cursor_pass"(rx488_pos, "sigil")
    rx488_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx488_pos)
    .return (rx488_cur)
  rx488_fail:
.annotate 'line', 4
    (rx488_rep, rx488_pos, $I10, $P10) = rx488_cur."!mark_fail"(0)
    lt rx488_pos, -1, rx488_done
    eq rx488_pos, -1, rx488_fail
    jump $I10
  rx488_done:
    rx488_cur."!cursor_fail"()
    rx488_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx488_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("120_1273727990.68261") :method
.annotate 'line', 4
    new $P490, "ResizablePMCArray"
    push $P490, "&"
    push $P490, "%"
    push $P490, "@"
    push $P490, "$"
    .return ($P490)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("121_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx493_tgt
    .local int rx493_pos
    .local int rx493_off
    .local int rx493_eos
    .local int rx493_rep
    .local pmc rx493_cur
    (rx493_cur, rx493_pos, rx493_tgt) = self."!cursor_start"()
    rx493_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx493_cur
    .local pmc match
    .lex "$/", match
    length rx493_eos, rx493_tgt
    set rx493_off, 0
    lt rx493_pos, 2, rx493_start
    sub rx493_off, rx493_pos, 1
    substr rx493_tgt, rx493_tgt, rx493_off
  rx493_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan496_done
    goto rxscan496_scan
  rxscan496_loop:
    ($P10) = rx493_cur."from"()
    inc $P10
    set rx493_pos, $P10
    ge rx493_pos, rx493_eos, rxscan496_done
  rxscan496_scan:
    set_addr $I10, rxscan496_loop
    rx493_cur."!mark_push"(0, rx493_pos, $I10)
  rxscan496_done:
.annotate 'line', 251
  # rx enumcharlist negate=0 
    ge rx493_pos, rx493_eos, rx493_fail
    sub $I10, rx493_pos, rx493_off
    substr $S10, rx493_tgt, $I10, 1
    index $I11, "*!?", $S10
    lt $I11, 0, rx493_fail
    inc rx493_pos
  # rx pass
    rx493_cur."!cursor_pass"(rx493_pos, "twigil")
    rx493_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx493_pos)
    .return (rx493_cur)
  rx493_fail:
.annotate 'line', 4
    (rx493_rep, rx493_pos, $I10, $P10) = rx493_cur."!mark_fail"(0)
    lt rx493_pos, -1, rx493_done
    eq rx493_pos, -1, rx493_fail
    jump $I10
  rx493_done:
    rx493_cur."!cursor_fail"()
    rx493_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx493_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("122_1273727990.68261") :method
.annotate 'line', 4
    new $P495, "ResizablePMCArray"
    push $P495, "?"
    push $P495, "!"
    push $P495, "*"
    .return ($P495)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("123_1273727990.68261") :method
.annotate 'line', 253
    $P498 = self."!protoregex"("package_declarator")
    .return ($P498)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("124_1273727990.68261") :method
.annotate 'line', 253
    $P500 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P500)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("125_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx502_tgt
    .local int rx502_pos
    .local int rx502_off
    .local int rx502_eos
    .local int rx502_rep
    .local pmc rx502_cur
    (rx502_cur, rx502_pos, rx502_tgt) = self."!cursor_start"()
    rx502_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx502_cur
    .local pmc match
    .lex "$/", match
    length rx502_eos, rx502_tgt
    set rx502_off, 0
    lt rx502_pos, 2, rx502_start
    sub rx502_off, rx502_pos, 1
    substr rx502_tgt, rx502_tgt, rx502_off
  rx502_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan506_done
    goto rxscan506_scan
  rxscan506_loop:
    ($P10) = rx502_cur."from"()
    inc $P10
    set rx502_pos, $P10
    ge rx502_pos, rx502_eos, rxscan506_done
  rxscan506_scan:
    set_addr $I10, rxscan506_loop
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  rxscan506_done:
.annotate 'line', 254
  # rx subcapture "sym"
    set_addr $I10, rxcap_507_fail
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  # rx literal  "module"
    add $I11, rx502_pos, 6
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    substr $S10, rx502_tgt, $I11, 6
    ne $S10, "module", rx502_fail
    add rx502_pos, 6
    set_addr $I10, rxcap_507_fail
    ($I12, $I11) = rx502_cur."!mark_peek"($I10)
    rx502_cur."!cursor_pos"($I11)
    ($P10) = rx502_cur."!cursor_start"()
    $P10."!cursor_pass"(rx502_pos, "")
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_507_done
  rxcap_507_fail:
    goto rx502_fail
  rxcap_507_done:
  # rx subrule "package_def" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."package_def"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx502_pos = $P10."pos"()
  # rx pass
    rx502_cur."!cursor_pass"(rx502_pos, "package_declarator:sym<module>")
    rx502_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx502_pos)
    .return (rx502_cur)
  rx502_fail:
.annotate 'line', 4
    (rx502_rep, rx502_pos, $I10, $P10) = rx502_cur."!mark_fail"(0)
    lt rx502_pos, -1, rx502_done
    eq rx502_pos, -1, rx502_fail
    jump $I10
  rx502_done:
    rx502_cur."!cursor_fail"()
    rx502_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx502_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("126_1273727990.68261") :method
.annotate 'line', 4
    $P504 = self."!PREFIX__!subrule"("package_def", "module")
    new $P505, "ResizablePMCArray"
    push $P505, $P504
    .return ($P505)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("127_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx509_tgt
    .local int rx509_pos
    .local int rx509_off
    .local int rx509_eos
    .local int rx509_rep
    .local pmc rx509_cur
    (rx509_cur, rx509_pos, rx509_tgt) = self."!cursor_start"()
    rx509_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx509_cur
    .local pmc match
    .lex "$/", match
    length rx509_eos, rx509_tgt
    set rx509_off, 0
    lt rx509_pos, 2, rx509_start
    sub rx509_off, rx509_pos, 1
    substr rx509_tgt, rx509_tgt, rx509_off
  rx509_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan514_done
    goto rxscan514_scan
  rxscan514_loop:
    ($P10) = rx509_cur."from"()
    inc $P10
    set rx509_pos, $P10
    ge rx509_pos, rx509_eos, rxscan514_done
  rxscan514_scan:
    set_addr $I10, rxscan514_loop
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  rxscan514_done:
.annotate 'line', 255
  # rx subcapture "sym"
    set_addr $I10, rxcap_516_fail
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  alt515_0:
    set_addr $I10, alt515_1
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  # rx literal  "class"
    add $I11, rx509_pos, 5
    gt $I11, rx509_eos, rx509_fail
    sub $I11, rx509_pos, rx509_off
    substr $S10, rx509_tgt, $I11, 5
    ne $S10, "class", rx509_fail
    add rx509_pos, 5
    goto alt515_end
  alt515_1:
  # rx literal  "grammar"
    add $I11, rx509_pos, 7
    gt $I11, rx509_eos, rx509_fail
    sub $I11, rx509_pos, rx509_off
    substr $S10, rx509_tgt, $I11, 7
    ne $S10, "grammar", rx509_fail
    add rx509_pos, 7
  alt515_end:
    set_addr $I10, rxcap_516_fail
    ($I12, $I11) = rx509_cur."!mark_peek"($I10)
    rx509_cur."!cursor_pos"($I11)
    ($P10) = rx509_cur."!cursor_start"()
    $P10."!cursor_pass"(rx509_pos, "")
    rx509_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_516_done
  rxcap_516_fail:
    goto rx509_fail
  rxcap_516_done:
  # rx subrule "package_def" subtype=capture negate=
    rx509_cur."!cursor_pos"(rx509_pos)
    $P10 = rx509_cur."package_def"()
    unless $P10, rx509_fail
    rx509_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx509_pos = $P10."pos"()
  # rx pass
    rx509_cur."!cursor_pass"(rx509_pos, "package_declarator:sym<class>")
    rx509_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx509_pos)
    .return (rx509_cur)
  rx509_fail:
.annotate 'line', 4
    (rx509_rep, rx509_pos, $I10, $P10) = rx509_cur."!mark_fail"(0)
    lt rx509_pos, -1, rx509_done
    eq rx509_pos, -1, rx509_fail
    jump $I10
  rx509_done:
    rx509_cur."!cursor_fail"()
    rx509_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx509_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("128_1273727990.68261") :method
.annotate 'line', 4
    $P511 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P512 = self."!PREFIX__!subrule"("package_def", "class")
    new $P513, "ResizablePMCArray"
    push $P513, $P511
    push $P513, $P512
    .return ($P513)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("129_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx518_tgt
    .local int rx518_pos
    .local int rx518_off
    .local int rx518_eos
    .local int rx518_rep
    .local pmc rx518_cur
    (rx518_cur, rx518_pos, rx518_tgt) = self."!cursor_start"()
    rx518_cur."!cursor_debug"("START ", "package_def")
    rx518_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx518_cur
    .local pmc match
    .lex "$/", match
    length rx518_eos, rx518_tgt
    set rx518_off, 0
    lt rx518_pos, 2, rx518_start
    sub rx518_off, rx518_pos, 1
    substr rx518_tgt, rx518_tgt, rx518_off
  rx518_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan521_done
    goto rxscan521_scan
  rxscan521_loop:
    ($P10) = rx518_cur."from"()
    inc $P10
    set rx518_pos, $P10
    ge rx518_pos, rx518_eos, rxscan521_done
  rxscan521_scan:
    set_addr $I10, rxscan521_loop
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
  rxscan521_done:
.annotate 'line', 257
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
.annotate 'line', 258
  # rx subrule "name" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."name"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx518_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
.annotate 'line', 259
  # rx rxquantr524 ** 0..1
    set_addr $I528, rxquantr524_done
    rx518_cur."!mark_push"(0, rx518_pos, $I528)
  rxquantr524_loop:
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx518_pos, 2
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    substr $S10, rx518_tgt, $I11, 2
    ne $S10, "is", rx518_fail
    add rx518_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."name"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx518_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
    (rx518_rep) = rx518_cur."!mark_commit"($I528)
  rxquantr524_done:
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  alt530_0:
.annotate 'line', 260
    set_addr $I10, alt530_1
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
.annotate 'line', 261
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx518_pos, 1
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    substr $S10, rx518_tgt, $I11, 1
    ne $S10, ";", rx518_fail
    add rx518_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."comp_unit"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx518_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
    goto alt530_end
  alt530_1:
    set_addr $I10, alt530_2
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
.annotate 'line', 262
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx518_pos, rx518_eos, rx518_fail
    sub $I10, rx518_pos, rx518_off
    substr $S10, rx518_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx518_fail
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx subrule "block" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."block"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx518_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
    goto alt530_end
  alt530_2:
.annotate 'line', 263
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."panic"("Malformed package declaration")
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  alt530_end:
.annotate 'line', 264
  # rx subrule "ws" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."ws"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
.annotate 'line', 257
  # rx pass
    rx518_cur."!cursor_pass"(rx518_pos, "package_def")
    rx518_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx518_pos)
    .return (rx518_cur)
  rx518_fail:
.annotate 'line', 4
    (rx518_rep, rx518_pos, $I10, $P10) = rx518_cur."!mark_fail"(0)
    lt rx518_pos, -1, rx518_done
    eq rx518_pos, -1, rx518_fail
    jump $I10
  rx518_done:
    rx518_cur."!cursor_fail"()
    rx518_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx518_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("130_1273727990.68261") :method
.annotate 'line', 4
    new $P520, "ResizablePMCArray"
    push $P520, ""
    .return ($P520)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("131_1273727990.68261") :method
.annotate 'line', 267
    $P541 = self."!protoregex"("scope_declarator")
    .return ($P541)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("132_1273727990.68261") :method
.annotate 'line', 267
    $P543 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P543)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("133_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx545_tgt
    .local int rx545_pos
    .local int rx545_off
    .local int rx545_eos
    .local int rx545_rep
    .local pmc rx545_cur
    (rx545_cur, rx545_pos, rx545_tgt) = self."!cursor_start"()
    rx545_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx545_cur
    .local pmc match
    .lex "$/", match
    length rx545_eos, rx545_tgt
    set rx545_off, 0
    lt rx545_pos, 2, rx545_start
    sub rx545_off, rx545_pos, 1
    substr rx545_tgt, rx545_tgt, rx545_off
  rx545_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan549_done
    goto rxscan549_scan
  rxscan549_loop:
    ($P10) = rx545_cur."from"()
    inc $P10
    set rx545_pos, $P10
    ge rx545_pos, rx545_eos, rxscan549_done
  rxscan549_scan:
    set_addr $I10, rxscan549_loop
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  rxscan549_done:
.annotate 'line', 268
  # rx subcapture "sym"
    set_addr $I10, rxcap_550_fail
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  # rx literal  "my"
    add $I11, rx545_pos, 2
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    substr $S10, rx545_tgt, $I11, 2
    ne $S10, "my", rx545_fail
    add rx545_pos, 2
    set_addr $I10, rxcap_550_fail
    ($I12, $I11) = rx545_cur."!mark_peek"($I10)
    rx545_cur."!cursor_pos"($I11)
    ($P10) = rx545_cur."!cursor_start"()
    $P10."!cursor_pass"(rx545_pos, "")
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_550_done
  rxcap_550_fail:
    goto rx545_fail
  rxcap_550_done:
  # rx subrule "scoped" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."scoped"("my")
    unless $P10, rx545_fail
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx545_pos = $P10."pos"()
  # rx pass
    rx545_cur."!cursor_pass"(rx545_pos, "scope_declarator:sym<my>")
    rx545_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx545_pos)
    .return (rx545_cur)
  rx545_fail:
.annotate 'line', 4
    (rx545_rep, rx545_pos, $I10, $P10) = rx545_cur."!mark_fail"(0)
    lt rx545_pos, -1, rx545_done
    eq rx545_pos, -1, rx545_fail
    jump $I10
  rx545_done:
    rx545_cur."!cursor_fail"()
    rx545_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx545_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("134_1273727990.68261") :method
.annotate 'line', 4
    $P547 = self."!PREFIX__!subrule"("scoped", "my")
    new $P548, "ResizablePMCArray"
    push $P548, $P547
    .return ($P548)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("135_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx552_tgt
    .local int rx552_pos
    .local int rx552_off
    .local int rx552_eos
    .local int rx552_rep
    .local pmc rx552_cur
    (rx552_cur, rx552_pos, rx552_tgt) = self."!cursor_start"()
    rx552_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx552_cur
    .local pmc match
    .lex "$/", match
    length rx552_eos, rx552_tgt
    set rx552_off, 0
    lt rx552_pos, 2, rx552_start
    sub rx552_off, rx552_pos, 1
    substr rx552_tgt, rx552_tgt, rx552_off
  rx552_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan556_done
    goto rxscan556_scan
  rxscan556_loop:
    ($P10) = rx552_cur."from"()
    inc $P10
    set rx552_pos, $P10
    ge rx552_pos, rx552_eos, rxscan556_done
  rxscan556_scan:
    set_addr $I10, rxscan556_loop
    rx552_cur."!mark_push"(0, rx552_pos, $I10)
  rxscan556_done:
.annotate 'line', 269
  # rx subcapture "sym"
    set_addr $I10, rxcap_557_fail
    rx552_cur."!mark_push"(0, rx552_pos, $I10)
  # rx literal  "our"
    add $I11, rx552_pos, 3
    gt $I11, rx552_eos, rx552_fail
    sub $I11, rx552_pos, rx552_off
    substr $S10, rx552_tgt, $I11, 3
    ne $S10, "our", rx552_fail
    add rx552_pos, 3
    set_addr $I10, rxcap_557_fail
    ($I12, $I11) = rx552_cur."!mark_peek"($I10)
    rx552_cur."!cursor_pos"($I11)
    ($P10) = rx552_cur."!cursor_start"()
    $P10."!cursor_pass"(rx552_pos, "")
    rx552_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_557_done
  rxcap_557_fail:
    goto rx552_fail
  rxcap_557_done:
  # rx subrule "scoped" subtype=capture negate=
    rx552_cur."!cursor_pos"(rx552_pos)
    $P10 = rx552_cur."scoped"("our")
    unless $P10, rx552_fail
    rx552_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx552_pos = $P10."pos"()
  # rx pass
    rx552_cur."!cursor_pass"(rx552_pos, "scope_declarator:sym<our>")
    rx552_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx552_pos)
    .return (rx552_cur)
  rx552_fail:
.annotate 'line', 4
    (rx552_rep, rx552_pos, $I10, $P10) = rx552_cur."!mark_fail"(0)
    lt rx552_pos, -1, rx552_done
    eq rx552_pos, -1, rx552_fail
    jump $I10
  rx552_done:
    rx552_cur."!cursor_fail"()
    rx552_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx552_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("136_1273727990.68261") :method
.annotate 'line', 4
    $P554 = self."!PREFIX__!subrule"("scoped", "our")
    new $P555, "ResizablePMCArray"
    push $P555, $P554
    .return ($P555)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("137_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx559_tgt
    .local int rx559_pos
    .local int rx559_off
    .local int rx559_eos
    .local int rx559_rep
    .local pmc rx559_cur
    (rx559_cur, rx559_pos, rx559_tgt) = self."!cursor_start"()
    rx559_cur."!cursor_debug"("START ", "scope_declarator:sym<has>")
    .lex unicode:"$\x{a2}", rx559_cur
    .local pmc match
    .lex "$/", match
    length rx559_eos, rx559_tgt
    set rx559_off, 0
    lt rx559_pos, 2, rx559_start
    sub rx559_off, rx559_pos, 1
    substr rx559_tgt, rx559_tgt, rx559_off
  rx559_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan563_done
    goto rxscan563_scan
  rxscan563_loop:
    ($P10) = rx559_cur."from"()
    inc $P10
    set rx559_pos, $P10
    ge rx559_pos, rx559_eos, rxscan563_done
  rxscan563_scan:
    set_addr $I10, rxscan563_loop
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  rxscan563_done:
.annotate 'line', 270
  # rx subcapture "sym"
    set_addr $I10, rxcap_564_fail
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  # rx literal  "has"
    add $I11, rx559_pos, 3
    gt $I11, rx559_eos, rx559_fail
    sub $I11, rx559_pos, rx559_off
    substr $S10, rx559_tgt, $I11, 3
    ne $S10, "has", rx559_fail
    add rx559_pos, 3
    set_addr $I10, rxcap_564_fail
    ($I12, $I11) = rx559_cur."!mark_peek"($I10)
    rx559_cur."!cursor_pos"($I11)
    ($P10) = rx559_cur."!cursor_start"()
    $P10."!cursor_pass"(rx559_pos, "")
    rx559_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_564_done
  rxcap_564_fail:
    goto rx559_fail
  rxcap_564_done:
  # rx subrule "scoped" subtype=capture negate=
    rx559_cur."!cursor_pos"(rx559_pos)
    $P10 = rx559_cur."scoped"("has")
    unless $P10, rx559_fail
    rx559_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx559_pos = $P10."pos"()
  # rx pass
    rx559_cur."!cursor_pass"(rx559_pos, "scope_declarator:sym<has>")
    rx559_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<has>", " at pos=", rx559_pos)
    .return (rx559_cur)
  rx559_fail:
.annotate 'line', 4
    (rx559_rep, rx559_pos, $I10, $P10) = rx559_cur."!mark_fail"(0)
    lt rx559_pos, -1, rx559_done
    eq rx559_pos, -1, rx559_fail
    jump $I10
  rx559_done:
    rx559_cur."!cursor_fail"()
    rx559_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<has>")
    .return (rx559_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("138_1273727990.68261") :method
.annotate 'line', 4
    $P561 = self."!PREFIX__!subrule"("scoped", "has")
    new $P562, "ResizablePMCArray"
    push $P562, $P561
    .return ($P562)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("139_1273727990.68261") :method :outer("11_1273727990.68261")
    .param pmc param_566
.annotate 'line', 272
    .lex "$*SCOPE", param_566
.annotate 'line', 4
    .local string rx567_tgt
    .local int rx567_pos
    .local int rx567_off
    .local int rx567_eos
    .local int rx567_rep
    .local pmc rx567_cur
    (rx567_cur, rx567_pos, rx567_tgt) = self."!cursor_start"()
    rx567_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx567_cur
    .local pmc match
    .lex "$/", match
    length rx567_eos, rx567_tgt
    set rx567_off, 0
    lt rx567_pos, 2, rx567_start
    sub rx567_off, rx567_pos, 1
    substr rx567_tgt, rx567_tgt, rx567_off
  rx567_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan570_done
    goto rxscan570_scan
  rxscan570_loop:
    ($P10) = rx567_cur."from"()
    inc $P10
    set rx567_pos, $P10
    ge rx567_pos, rx567_eos, rxscan570_done
  rxscan570_scan:
    set_addr $I10, rxscan570_loop
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
  rxscan570_done:
  alt571_0:
.annotate 'line', 272
    set_addr $I10, alt571_1
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
.annotate 'line', 273
  # rx subrule "ws" subtype=method negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."ws"()
    unless $P10, rx567_fail
    rx567_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."variable_declarator"()
    unless $P10, rx567_fail
    rx567_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx567_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."ws"()
    unless $P10, rx567_fail
    rx567_pos = $P10."pos"()
    goto alt571_end
  alt571_1:
.annotate 'line', 274
  # rx subrule "ws" subtype=method negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."ws"()
    unless $P10, rx567_fail
    rx567_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."routine_declarator"()
    unless $P10, rx567_fail
    rx567_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx567_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."ws"()
    unless $P10, rx567_fail
    rx567_pos = $P10."pos"()
  alt571_end:
.annotate 'line', 272
  # rx pass
    rx567_cur."!cursor_pass"(rx567_pos, "scoped")
    rx567_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx567_pos)
    .return (rx567_cur)
  rx567_fail:
.annotate 'line', 4
    (rx567_rep, rx567_pos, $I10, $P10) = rx567_cur."!mark_fail"(0)
    lt rx567_pos, -1, rx567_done
    eq rx567_pos, -1, rx567_fail
    jump $I10
  rx567_done:
    rx567_cur."!cursor_fail"()
    rx567_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx567_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("140_1273727990.68261") :method
.annotate 'line', 4
    new $P569, "ResizablePMCArray"
    push $P569, ""
    push $P569, ""
    .return ($P569)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("141_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx577_tgt
    .local int rx577_pos
    .local int rx577_off
    .local int rx577_eos
    .local int rx577_rep
    .local pmc rx577_cur
    (rx577_cur, rx577_pos, rx577_tgt) = self."!cursor_start"()
    rx577_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx577_cur
    .local pmc match
    .lex "$/", match
    length rx577_eos, rx577_tgt
    set rx577_off, 0
    lt rx577_pos, 2, rx577_start
    sub rx577_off, rx577_pos, 1
    substr rx577_tgt, rx577_tgt, rx577_off
  rx577_start:
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
.annotate 'line', 277
  # rx subrule "variable" subtype=capture negate=
    rx577_cur."!cursor_pos"(rx577_pos)
    $P10 = rx577_cur."variable"()
    unless $P10, rx577_fail
    rx577_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx577_pos = $P10."pos"()
  # rx pass
    rx577_cur."!cursor_pass"(rx577_pos, "variable_declarator")
    rx577_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx577_pos)
    .return (rx577_cur)
  rx577_fail:
.annotate 'line', 4
    (rx577_rep, rx577_pos, $I10, $P10) = rx577_cur."!mark_fail"(0)
    lt rx577_pos, -1, rx577_done
    eq rx577_pos, -1, rx577_fail
    jump $I10
  rx577_done:
    rx577_cur."!cursor_fail"()
    rx577_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx577_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("142_1273727990.68261") :method
.annotate 'line', 4
    $P579 = self."!PREFIX__!subrule"("variable", "")
    new $P580, "ResizablePMCArray"
    push $P580, $P579
    .return ($P580)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("143_1273727990.68261") :method
.annotate 'line', 279
    $P583 = self."!protoregex"("routine_declarator")
    .return ($P583)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("144_1273727990.68261") :method
.annotate 'line', 279
    $P585 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P585)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("145_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx587_tgt
    .local int rx587_pos
    .local int rx587_off
    .local int rx587_eos
    .local int rx587_rep
    .local pmc rx587_cur
    (rx587_cur, rx587_pos, rx587_tgt) = self."!cursor_start"()
    rx587_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx587_cur
    .local pmc match
    .lex "$/", match
    length rx587_eos, rx587_tgt
    set rx587_off, 0
    lt rx587_pos, 2, rx587_start
    sub rx587_off, rx587_pos, 1
    substr rx587_tgt, rx587_tgt, rx587_off
  rx587_start:
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
.annotate 'line', 280
  # rx subcapture "sym"
    set_addr $I10, rxcap_592_fail
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  # rx literal  "sub"
    add $I11, rx587_pos, 3
    gt $I11, rx587_eos, rx587_fail
    sub $I11, rx587_pos, rx587_off
    substr $S10, rx587_tgt, $I11, 3
    ne $S10, "sub", rx587_fail
    add rx587_pos, 3
    set_addr $I10, rxcap_592_fail
    ($I12, $I11) = rx587_cur."!mark_peek"($I10)
    rx587_cur."!cursor_pos"($I11)
    ($P10) = rx587_cur."!cursor_start"()
    $P10."!cursor_pass"(rx587_pos, "")
    rx587_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_592_done
  rxcap_592_fail:
    goto rx587_fail
  rxcap_592_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx587_cur."!cursor_pos"(rx587_pos)
    $P10 = rx587_cur."routine_def"()
    unless $P10, rx587_fail
    rx587_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx587_pos = $P10."pos"()
  # rx pass
    rx587_cur."!cursor_pass"(rx587_pos, "routine_declarator:sym<sub>")
    rx587_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx587_pos)
    .return (rx587_cur)
  rx587_fail:
.annotate 'line', 4
    (rx587_rep, rx587_pos, $I10, $P10) = rx587_cur."!mark_fail"(0)
    lt rx587_pos, -1, rx587_done
    eq rx587_pos, -1, rx587_fail
    jump $I10
  rx587_done:
    rx587_cur."!cursor_fail"()
    rx587_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx587_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("146_1273727990.68261") :method
.annotate 'line', 4
    $P589 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P590, "ResizablePMCArray"
    push $P590, $P589
    .return ($P590)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("147_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx594_tgt
    .local int rx594_pos
    .local int rx594_off
    .local int rx594_eos
    .local int rx594_rep
    .local pmc rx594_cur
    (rx594_cur, rx594_pos, rx594_tgt) = self."!cursor_start"()
    rx594_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx594_cur
    .local pmc match
    .lex "$/", match
    length rx594_eos, rx594_tgt
    set rx594_off, 0
    lt rx594_pos, 2, rx594_start
    sub rx594_off, rx594_pos, 1
    substr rx594_tgt, rx594_tgt, rx594_off
  rx594_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan598_done
    goto rxscan598_scan
  rxscan598_loop:
    ($P10) = rx594_cur."from"()
    inc $P10
    set rx594_pos, $P10
    ge rx594_pos, rx594_eos, rxscan598_done
  rxscan598_scan:
    set_addr $I10, rxscan598_loop
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  rxscan598_done:
.annotate 'line', 281
  # rx subcapture "sym"
    set_addr $I10, rxcap_599_fail
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  # rx literal  "method"
    add $I11, rx594_pos, 6
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    substr $S10, rx594_tgt, $I11, 6
    ne $S10, "method", rx594_fail
    add rx594_pos, 6
    set_addr $I10, rxcap_599_fail
    ($I12, $I11) = rx594_cur."!mark_peek"($I10)
    rx594_cur."!cursor_pos"($I11)
    ($P10) = rx594_cur."!cursor_start"()
    $P10."!cursor_pass"(rx594_pos, "")
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_599_done
  rxcap_599_fail:
    goto rx594_fail
  rxcap_599_done:
  # rx subrule "method_def" subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."method_def"()
    unless $P10, rx594_fail
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_def")
    rx594_pos = $P10."pos"()
  # rx pass
    rx594_cur."!cursor_pass"(rx594_pos, "routine_declarator:sym<method>")
    rx594_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx594_pos)
    .return (rx594_cur)
  rx594_fail:
.annotate 'line', 4
    (rx594_rep, rx594_pos, $I10, $P10) = rx594_cur."!mark_fail"(0)
    lt rx594_pos, -1, rx594_done
    eq rx594_pos, -1, rx594_fail
    jump $I10
  rx594_done:
    rx594_cur."!cursor_fail"()
    rx594_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx594_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("148_1273727990.68261") :method
.annotate 'line', 4
    $P596 = self."!PREFIX__!subrule"("method_def", "method")
    new $P597, "ResizablePMCArray"
    push $P597, $P596
    .return ($P597)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("149_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx601_tgt
    .local int rx601_pos
    .local int rx601_off
    .local int rx601_eos
    .local int rx601_rep
    .local pmc rx601_cur
    (rx601_cur, rx601_pos, rx601_tgt) = self."!cursor_start"()
    rx601_cur."!cursor_debug"("START ", "routine_def")
    rx601_cur."!cursor_caparray"("sigil", "deflongname")
    .lex unicode:"$\x{a2}", rx601_cur
    .local pmc match
    .lex "$/", match
    length rx601_eos, rx601_tgt
    set rx601_off, 0
    lt rx601_pos, 2, rx601_start
    sub rx601_off, rx601_pos, 1
    substr rx601_tgt, rx601_tgt, rx601_off
  rx601_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan604_done
    goto rxscan604_scan
  rxscan604_loop:
    ($P10) = rx601_cur."from"()
    inc $P10
    set rx601_pos, $P10
    ge rx601_pos, rx601_eos, rxscan604_done
  rxscan604_scan:
    set_addr $I10, rxscan604_loop
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
  rxscan604_done:
.annotate 'line', 283
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 284
  # rx rxquantr606 ** 0..1
    set_addr $I612, rxquantr606_done
    rx601_cur."!mark_push"(0, rx601_pos, $I612)
  rxquantr606_loop:
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subcapture "sigil"
    set_addr $I10, rxcap_610_fail
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
  # rx rxquantr608 ** 0..1
    set_addr $I609, rxquantr608_done
    rx601_cur."!mark_push"(0, rx601_pos, $I609)
  rxquantr608_loop:
  # rx literal  "&"
    add $I11, rx601_pos, 1
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    substr $S10, rx601_tgt, $I11, 1
    ne $S10, "&", rx601_fail
    add rx601_pos, 1
    (rx601_rep) = rx601_cur."!mark_commit"($I609)
  rxquantr608_done:
    set_addr $I10, rxcap_610_fail
    ($I12, $I11) = rx601_cur."!mark_peek"($I10)
    rx601_cur."!cursor_pos"($I11)
    ($P10) = rx601_cur."!cursor_start"()
    $P10."!cursor_pass"(rx601_pos, "")
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_610_done
  rxcap_610_fail:
    goto rx601_fail
  rxcap_610_done:
  # rx subrule "deflongname" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."deflongname"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
    (rx601_rep) = rx601_cur."!mark_commit"($I612)
  rxquantr606_done:
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 285
  # rx subrule "newpad" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."newpad"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  alt615_0:
.annotate 'line', 286
    set_addr $I10, alt615_1
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx601_pos, 1
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    substr $S10, rx601_tgt, $I11, 1
    ne $S10, "(", rx601_fail
    add rx601_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."signature"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx601_pos, 1
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    substr $S10, rx601_tgt, $I11, 1
    ne $S10, ")", rx601_fail
    add rx601_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
    goto alt615_end
  alt615_1:
.annotate 'line', 287
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  alt615_end:
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 288
  # rx subrule "blockoid" subtype=capture negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."blockoid"()
    unless $P10, rx601_fail
    rx601_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx601_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."ws"()
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
.annotate 'line', 283
  # rx pass
    rx601_cur."!cursor_pass"(rx601_pos, "routine_def")
    rx601_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx601_pos)
    .return (rx601_cur)
  rx601_fail:
.annotate 'line', 4
    (rx601_rep, rx601_pos, $I10, $P10) = rx601_cur."!mark_fail"(0)
    lt rx601_pos, -1, rx601_done
    eq rx601_pos, -1, rx601_fail
    jump $I10
  rx601_done:
    rx601_cur."!cursor_fail"()
    rx601_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx601_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("150_1273727990.68261") :method
.annotate 'line', 4
    new $P603, "ResizablePMCArray"
    push $P603, ""
    .return ($P603)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("151_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx625_tgt
    .local int rx625_pos
    .local int rx625_off
    .local int rx625_eos
    .local int rx625_rep
    .local pmc rx625_cur
    (rx625_cur, rx625_pos, rx625_tgt) = self."!cursor_start"()
    rx625_cur."!cursor_debug"("START ", "method_def")
    rx625_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx625_cur
    .local pmc match
    .lex "$/", match
    length rx625_eos, rx625_tgt
    set rx625_off, 0
    lt rx625_pos, 2, rx625_start
    sub rx625_off, rx625_pos, 1
    substr rx625_tgt, rx625_tgt, rx625_off
  rx625_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan628_done
    goto rxscan628_scan
  rxscan628_loop:
    ($P10) = rx625_cur."from"()
    inc $P10
    set rx625_pos, $P10
    ge rx625_pos, rx625_eos, rxscan628_done
  rxscan628_scan:
    set_addr $I10, rxscan628_loop
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  rxscan628_done:
.annotate 'line', 291
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
.annotate 'line', 292
  # rx rxquantr630 ** 0..1
    set_addr $I631, rxquantr630_done
    rx625_cur."!mark_push"(0, rx625_pos, $I631)
  rxquantr630_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."deflongname"()
    unless $P10, rx625_fail
    rx625_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx625_pos = $P10."pos"()
    (rx625_rep) = rx625_cur."!mark_commit"($I631)
  rxquantr630_done:
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
.annotate 'line', 293
  # rx subrule "newpad" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."newpad"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  alt634_0:
.annotate 'line', 294
    set_addr $I10, alt634_1
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx625_pos, 1
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    substr $S10, rx625_tgt, $I11, 1
    ne $S10, "(", rx625_fail
    add rx625_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."signature"()
    unless $P10, rx625_fail
    rx625_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx625_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx625_pos, 1
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    substr $S10, rx625_tgt, $I11, 1
    ne $S10, ")", rx625_fail
    add rx625_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
    goto alt634_end
  alt634_1:
.annotate 'line', 295
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  alt634_end:
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
.annotate 'line', 296
  # rx subrule "blockoid" subtype=capture negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."blockoid"()
    unless $P10, rx625_fail
    rx625_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx625_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."ws"()
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
.annotate 'line', 291
  # rx pass
    rx625_cur."!cursor_pass"(rx625_pos, "method_def")
    rx625_cur."!cursor_debug"("PASS  ", "method_def", " at pos=", rx625_pos)
    .return (rx625_cur)
  rx625_fail:
.annotate 'line', 4
    (rx625_rep, rx625_pos, $I10, $P10) = rx625_cur."!mark_fail"(0)
    lt rx625_pos, -1, rx625_done
    eq rx625_pos, -1, rx625_fail
    jump $I10
  rx625_done:
    rx625_cur."!cursor_fail"()
    rx625_cur."!cursor_debug"("FAIL  ", "method_def")
    .return (rx625_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__method_def"  :subid("152_1273727990.68261") :method
.annotate 'line', 4
    new $P627, "ResizablePMCArray"
    push $P627, ""
    .return ($P627)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("153_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx644_tgt
    .local int rx644_pos
    .local int rx644_off
    .local int rx644_eos
    .local int rx644_rep
    .local pmc rx644_cur
    (rx644_cur, rx644_pos, rx644_tgt) = self."!cursor_start"()
    rx644_cur."!cursor_debug"("START ", "signature")
    rx644_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx644_cur
    .local pmc match
    .lex "$/", match
    length rx644_eos, rx644_tgt
    set rx644_off, 0
    lt rx644_pos, 2, rx644_start
    sub rx644_off, rx644_pos, 1
    substr rx644_tgt, rx644_tgt, rx644_off
  rx644_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan647_done
    goto rxscan647_scan
  rxscan647_loop:
    ($P10) = rx644_cur."from"()
    inc $P10
    set rx644_pos, $P10
    ge rx644_pos, rx644_eos, rxscan647_done
  rxscan647_scan:
    set_addr $I10, rxscan647_loop
    rx644_cur."!mark_push"(0, rx644_pos, $I10)
  rxscan647_done:
.annotate 'line', 299
  # rx rxquantr648 ** 0..1
    set_addr $I651, rxquantr648_done
    rx644_cur."!mark_push"(0, rx644_pos, $I651)
  rxquantr648_loop:
  # rx rxquantr649 ** 1..*
    set_addr $I650, rxquantr649_done
    rx644_cur."!mark_push"(0, -1, $I650)
  rxquantr649_loop:
  # rx subrule "ws" subtype=method negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."ws"()
    unless $P10, rx644_fail
    rx644_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."parameter"()
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx644_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."ws"()
    unless $P10, rx644_fail
    rx644_pos = $P10."pos"()
    (rx644_rep) = rx644_cur."!mark_commit"($I650)
    rx644_cur."!mark_push"(rx644_rep, rx644_pos, $I650)
  # rx literal  ","
    add $I11, rx644_pos, 1
    gt $I11, rx644_eos, rx644_fail
    sub $I11, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I11, 1
    ne $S10, ",", rx644_fail
    add rx644_pos, 1
    goto rxquantr649_loop
  rxquantr649_done:
    (rx644_rep) = rx644_cur."!mark_commit"($I651)
  rxquantr648_done:
  # rx pass
    rx644_cur."!cursor_pass"(rx644_pos, "signature")
    rx644_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx644_pos)
    .return (rx644_cur)
  rx644_fail:
.annotate 'line', 4
    (rx644_rep, rx644_pos, $I10, $P10) = rx644_cur."!mark_fail"(0)
    lt rx644_pos, -1, rx644_done
    eq rx644_pos, -1, rx644_fail
    jump $I10
  rx644_done:
    rx644_cur."!cursor_fail"()
    rx644_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx644_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("154_1273727990.68261") :method
.annotate 'line', 4
    new $P646, "ResizablePMCArray"
    push $P646, ""
    .return ($P646)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("155_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx653_tgt
    .local int rx653_pos
    .local int rx653_off
    .local int rx653_eos
    .local int rx653_rep
    .local pmc rx653_cur
    (rx653_cur, rx653_pos, rx653_tgt) = self."!cursor_start"()
    rx653_cur."!cursor_debug"("START ", "parameter")
    rx653_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx653_cur
    .local pmc match
    .lex "$/", match
    length rx653_eos, rx653_tgt
    set rx653_off, 0
    lt rx653_pos, 2, rx653_start
    sub rx653_off, rx653_pos, 1
    substr rx653_tgt, rx653_tgt, rx653_off
  rx653_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan659_done
    goto rxscan659_scan
  rxscan659_loop:
    ($P10) = rx653_cur."from"()
    inc $P10
    set rx653_pos, $P10
    ge rx653_pos, rx653_eos, rxscan659_done
  rxscan659_scan:
    set_addr $I10, rxscan659_loop
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  rxscan659_done:
  alt660_0:
.annotate 'line', 302
    set_addr $I10, alt660_1
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
.annotate 'line', 303
  # rx subcapture "quant"
    set_addr $I10, rxcap_661_fail
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  # rx literal  "*"
    add $I11, rx653_pos, 1
    gt $I11, rx653_eos, rx653_fail
    sub $I11, rx653_pos, rx653_off
    substr $S10, rx653_tgt, $I11, 1
    ne $S10, "*", rx653_fail
    add rx653_pos, 1
    set_addr $I10, rxcap_661_fail
    ($I12, $I11) = rx653_cur."!mark_peek"($I10)
    rx653_cur."!cursor_pos"($I11)
    ($P10) = rx653_cur."!cursor_start"()
    $P10."!cursor_pass"(rx653_pos, "")
    rx653_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_661_done
  rxcap_661_fail:
    goto rx653_fail
  rxcap_661_done:
  # rx subrule "param_var" subtype=capture negate=
    rx653_cur."!cursor_pos"(rx653_pos)
    $P10 = rx653_cur."param_var"()
    unless $P10, rx653_fail
    rx653_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx653_pos = $P10."pos"()
    goto alt660_end
  alt660_1:
  alt662_0:
.annotate 'line', 304
    set_addr $I10, alt662_1
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx653_cur."!cursor_pos"(rx653_pos)
    $P10 = rx653_cur."param_var"()
    unless $P10, rx653_fail
    rx653_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx653_pos = $P10."pos"()
    goto alt662_end
  alt662_1:
  # rx subrule "named_param" subtype=capture negate=
    rx653_cur."!cursor_pos"(rx653_pos)
    $P10 = rx653_cur."named_param"()
    unless $P10, rx653_fail
    rx653_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx653_pos = $P10."pos"()
  alt662_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_664_fail
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  alt663_0:
    set_addr $I10, alt663_1
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  # rx literal  "?"
    add $I11, rx653_pos, 1
    gt $I11, rx653_eos, rx653_fail
    sub $I11, rx653_pos, rx653_off
    substr $S10, rx653_tgt, $I11, 1
    ne $S10, "?", rx653_fail
    add rx653_pos, 1
    goto alt663_end
  alt663_1:
    set_addr $I10, alt663_2
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  # rx literal  "!"
    add $I11, rx653_pos, 1
    gt $I11, rx653_eos, rx653_fail
    sub $I11, rx653_pos, rx653_off
    substr $S10, rx653_tgt, $I11, 1
    ne $S10, "!", rx653_fail
    add rx653_pos, 1
    goto alt663_end
  alt663_2:
  alt663_end:
    set_addr $I10, rxcap_664_fail
    ($I12, $I11) = rx653_cur."!mark_peek"($I10)
    rx653_cur."!cursor_pos"($I11)
    ($P10) = rx653_cur."!cursor_start"()
    $P10."!cursor_pass"(rx653_pos, "")
    rx653_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_664_done
  rxcap_664_fail:
    goto rx653_fail
  rxcap_664_done:
  alt660_end:
.annotate 'line', 306
  # rx rxquantr665 ** 0..1
    set_addr $I666, rxquantr665_done
    rx653_cur."!mark_push"(0, rx653_pos, $I666)
  rxquantr665_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx653_cur."!cursor_pos"(rx653_pos)
    $P10 = rx653_cur."default_value"()
    unless $P10, rx653_fail
    rx653_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx653_pos = $P10."pos"()
    (rx653_rep) = rx653_cur."!mark_commit"($I666)
  rxquantr665_done:
.annotate 'line', 301
  # rx pass
    rx653_cur."!cursor_pass"(rx653_pos, "parameter")
    rx653_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx653_pos)
    .return (rx653_cur)
  rx653_fail:
.annotate 'line', 4
    (rx653_rep, rx653_pos, $I10, $P10) = rx653_cur."!mark_fail"(0)
    lt rx653_pos, -1, rx653_done
    eq rx653_pos, -1, rx653_fail
    jump $I10
  rx653_done:
    rx653_cur."!cursor_fail"()
    rx653_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx653_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("156_1273727990.68261") :method
.annotate 'line', 4
    $P655 = self."!PREFIX__!subrule"("named_param", "")
    $P656 = self."!PREFIX__!subrule"("param_var", "")
    $P657 = self."!PREFIX__!subrule"("param_var", "*")
    new $P658, "ResizablePMCArray"
    push $P658, $P655
    push $P658, $P656
    push $P658, $P657
    .return ($P658)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("157_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx668_tgt
    .local int rx668_pos
    .local int rx668_off
    .local int rx668_eos
    .local int rx668_rep
    .local pmc rx668_cur
    (rx668_cur, rx668_pos, rx668_tgt) = self."!cursor_start"()
    rx668_cur."!cursor_debug"("START ", "param_var")
    rx668_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx668_cur
    .local pmc match
    .lex "$/", match
    length rx668_eos, rx668_tgt
    set rx668_off, 0
    lt rx668_pos, 2, rx668_start
    sub rx668_off, rx668_pos, 1
    substr rx668_tgt, rx668_tgt, rx668_off
  rx668_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan672_done
    goto rxscan672_scan
  rxscan672_loop:
    ($P10) = rx668_cur."from"()
    inc $P10
    set rx668_pos, $P10
    ge rx668_pos, rx668_eos, rxscan672_done
  rxscan672_scan:
    set_addr $I10, rxscan672_loop
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
  rxscan672_done:
.annotate 'line', 310
  # rx subrule "sigil" subtype=capture negate=
    rx668_cur."!cursor_pos"(rx668_pos)
    $P10 = rx668_cur."sigil"()
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx668_pos = $P10."pos"()
  # rx rxquantr673 ** 0..1
    set_addr $I674, rxquantr673_done
    rx668_cur."!mark_push"(0, rx668_pos, $I674)
  rxquantr673_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx668_cur."!cursor_pos"(rx668_pos)
    $P10 = rx668_cur."twigil"()
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx668_pos = $P10."pos"()
    (rx668_rep) = rx668_cur."!mark_commit"($I674)
  rxquantr673_done:
  alt675_0:
.annotate 'line', 311
    set_addr $I10, alt675_1
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx668_cur."!cursor_pos"(rx668_pos)
    $P10 = rx668_cur."ident"()
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx668_pos = $P10."pos"()
    goto alt675_end
  alt675_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_676_fail
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx668_pos, rx668_eos, rx668_fail
    sub $I10, rx668_pos, rx668_off
    substr $S10, rx668_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx668_fail
    inc rx668_pos
    set_addr $I10, rxcap_676_fail
    ($I12, $I11) = rx668_cur."!mark_peek"($I10)
    rx668_cur."!cursor_pos"($I11)
    ($P10) = rx668_cur."!cursor_start"()
    $P10."!cursor_pass"(rx668_pos, "")
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_676_done
  rxcap_676_fail:
    goto rx668_fail
  rxcap_676_done:
  alt675_end:
.annotate 'line', 309
  # rx pass
    rx668_cur."!cursor_pass"(rx668_pos, "param_var")
    rx668_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx668_pos)
    .return (rx668_cur)
  rx668_fail:
.annotate 'line', 4
    (rx668_rep, rx668_pos, $I10, $P10) = rx668_cur."!mark_fail"(0)
    lt rx668_pos, -1, rx668_done
    eq rx668_pos, -1, rx668_fail
    jump $I10
  rx668_done:
    rx668_cur."!cursor_fail"()
    rx668_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx668_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("158_1273727990.68261") :method
.annotate 'line', 4
    $P670 = self."!PREFIX__!subrule"("sigil", "")
    new $P671, "ResizablePMCArray"
    push $P671, $P670
    .return ($P671)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("159_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx678_tgt
    .local int rx678_pos
    .local int rx678_off
    .local int rx678_eos
    .local int rx678_rep
    .local pmc rx678_cur
    (rx678_cur, rx678_pos, rx678_tgt) = self."!cursor_start"()
    rx678_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx678_cur
    .local pmc match
    .lex "$/", match
    length rx678_eos, rx678_tgt
    set rx678_off, 0
    lt rx678_pos, 2, rx678_start
    sub rx678_off, rx678_pos, 1
    substr rx678_tgt, rx678_tgt, rx678_off
  rx678_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan682_done
    goto rxscan682_scan
  rxscan682_loop:
    ($P10) = rx678_cur."from"()
    inc $P10
    set rx678_pos, $P10
    ge rx678_pos, rx678_eos, rxscan682_done
  rxscan682_scan:
    set_addr $I10, rxscan682_loop
    rx678_cur."!mark_push"(0, rx678_pos, $I10)
  rxscan682_done:
.annotate 'line', 315
  # rx literal  ":"
    add $I11, rx678_pos, 1
    gt $I11, rx678_eos, rx678_fail
    sub $I11, rx678_pos, rx678_off
    substr $S10, rx678_tgt, $I11, 1
    ne $S10, ":", rx678_fail
    add rx678_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx678_cur."!cursor_pos"(rx678_pos)
    $P10 = rx678_cur."param_var"()
    unless $P10, rx678_fail
    rx678_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx678_pos = $P10."pos"()
.annotate 'line', 314
  # rx pass
    rx678_cur."!cursor_pass"(rx678_pos, "named_param")
    rx678_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx678_pos)
    .return (rx678_cur)
  rx678_fail:
.annotate 'line', 4
    (rx678_rep, rx678_pos, $I10, $P10) = rx678_cur."!mark_fail"(0)
    lt rx678_pos, -1, rx678_done
    eq rx678_pos, -1, rx678_fail
    jump $I10
  rx678_done:
    rx678_cur."!cursor_fail"()
    rx678_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx678_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("160_1273727990.68261") :method
.annotate 'line', 4
    $P680 = self."!PREFIX__!subrule"("param_var", ":")
    new $P681, "ResizablePMCArray"
    push $P681, $P680
    .return ($P681)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("161_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx684_tgt
    .local int rx684_pos
    .local int rx684_off
    .local int rx684_eos
    .local int rx684_rep
    .local pmc rx684_cur
    (rx684_cur, rx684_pos, rx684_tgt) = self."!cursor_start"()
    rx684_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx684_cur
    .local pmc match
    .lex "$/", match
    length rx684_eos, rx684_tgt
    set rx684_off, 0
    lt rx684_pos, 2, rx684_start
    sub rx684_off, rx684_pos, 1
    substr rx684_tgt, rx684_tgt, rx684_off
  rx684_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan687_done
    goto rxscan687_scan
  rxscan687_loop:
    ($P10) = rx684_cur."from"()
    inc $P10
    set rx684_pos, $P10
    ge rx684_pos, rx684_eos, rxscan687_done
  rxscan687_scan:
    set_addr $I10, rxscan687_loop
    rx684_cur."!mark_push"(0, rx684_pos, $I10)
  rxscan687_done:
.annotate 'line', 318
  # rx subrule "ws" subtype=method negate=
    rx684_cur."!cursor_pos"(rx684_pos)
    $P10 = rx684_cur."ws"()
    unless $P10, rx684_fail
    rx684_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx684_pos, 1
    gt $I11, rx684_eos, rx684_fail
    sub $I11, rx684_pos, rx684_off
    substr $S10, rx684_tgt, $I11, 1
    ne $S10, "=", rx684_fail
    add rx684_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx684_cur."!cursor_pos"(rx684_pos)
    $P10 = rx684_cur."ws"()
    unless $P10, rx684_fail
    rx684_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx684_cur."!cursor_pos"(rx684_pos)
    $P10 = rx684_cur."EXPR"("i=")
    unless $P10, rx684_fail
    rx684_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx684_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx684_cur."!cursor_pos"(rx684_pos)
    $P10 = rx684_cur."ws"()
    unless $P10, rx684_fail
    rx684_pos = $P10."pos"()
  # rx pass
    rx684_cur."!cursor_pass"(rx684_pos, "default_value")
    rx684_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx684_pos)
    .return (rx684_cur)
  rx684_fail:
.annotate 'line', 4
    (rx684_rep, rx684_pos, $I10, $P10) = rx684_cur."!mark_fail"(0)
    lt rx684_pos, -1, rx684_done
    eq rx684_pos, -1, rx684_fail
    jump $I10
  rx684_done:
    rx684_cur."!cursor_fail"()
    rx684_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx684_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("162_1273727990.68261") :method
.annotate 'line', 4
    new $P686, "ResizablePMCArray"
    push $P686, ""
    .return ($P686)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("163_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx692_tgt
    .local int rx692_pos
    .local int rx692_off
    .local int rx692_eos
    .local int rx692_rep
    .local pmc rx692_cur
    (rx692_cur, rx692_pos, rx692_tgt) = self."!cursor_start"()
    rx692_cur."!cursor_debug"("START ", "regex_declarator")
    rx692_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx692_cur
    .local pmc match
    .lex "$/", match
    length rx692_eos, rx692_tgt
    set rx692_off, 0
    lt rx692_pos, 2, rx692_start
    sub rx692_off, rx692_pos, 1
    substr rx692_tgt, rx692_tgt, rx692_off
  rx692_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan695_done
    goto rxscan695_scan
  rxscan695_loop:
    ($P10) = rx692_cur."from"()
    inc $P10
    set rx692_pos, $P10
    ge rx692_pos, rx692_eos, rxscan695_done
  rxscan695_scan:
    set_addr $I10, rxscan695_loop
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  rxscan695_done:
.annotate 'line', 320
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  alt697_0:
.annotate 'line', 321
    set_addr $I10, alt697_1
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
.annotate 'line', 322
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_699_fail
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "proto"
    add $I11, rx692_pos, 5
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 5
    ne $S10, "proto", rx692_fail
    add rx692_pos, 5
    set_addr $I10, rxcap_699_fail
    ($I12, $I11) = rx692_cur."!mark_peek"($I10)
    rx692_cur."!cursor_pos"($I11)
    ($P10) = rx692_cur."!cursor_start"()
    $P10."!cursor_pass"(rx692_pos, "")
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_699_done
  rxcap_699_fail:
    goto rx692_fail
  rxcap_699_done:
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  alt701_0:
    set_addr $I10, alt701_1
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "regex"
    add $I11, rx692_pos, 5
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 5
    ne $S10, "regex", rx692_fail
    add rx692_pos, 5
    goto alt701_end
  alt701_1:
    set_addr $I10, alt701_2
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "token"
    add $I11, rx692_pos, 5
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 5
    ne $S10, "token", rx692_fail
    add rx692_pos, 5
    goto alt701_end
  alt701_2:
  # rx literal  "rule"
    add $I11, rx692_pos, 4
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 4
    ne $S10, "rule", rx692_fail
    add rx692_pos, 4
  alt701_end:
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 323
  # rx subrule "deflongname" subtype=capture negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."deflongname"()
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx692_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  alt704_0:
.annotate 'line', 324
    set_addr $I10, alt704_1
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
.annotate 'line', 325
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx literal  "{"
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, "{", rx692_fail
    add rx692_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx692_pos, 5
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 5
    ne $S10, "<...>", rx692_fail
    add rx692_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, "}", rx692_fail
    add rx692_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ENDSTMT"()
    unless $P10, rx692_fail
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
    goto alt704_end
  alt704_1:
.annotate 'line', 326
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."panic"("Proto regex body must be <...>")
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  alt704_end:
.annotate 'line', 327
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 322
    goto alt697_end
  alt697_1:
.annotate 'line', 328
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_714_fail
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  alt713_0:
    set_addr $I10, alt713_1
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "regex"
    add $I11, rx692_pos, 5
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 5
    ne $S10, "regex", rx692_fail
    add rx692_pos, 5
    goto alt713_end
  alt713_1:
    set_addr $I10, alt713_2
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "token"
    add $I11, rx692_pos, 5
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 5
    ne $S10, "token", rx692_fail
    add rx692_pos, 5
    goto alt713_end
  alt713_2:
  # rx literal  "rule"
    add $I11, rx692_pos, 4
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 4
    ne $S10, "rule", rx692_fail
    add rx692_pos, 4
  alt713_end:
    set_addr $I10, rxcap_714_fail
    ($I12, $I11) = rx692_cur."!mark_peek"($I10)
    rx692_cur."!cursor_pos"($I11)
    ($P10) = rx692_cur."!cursor_start"()
    $P10."!cursor_pass"(rx692_pos, "")
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_714_done
  rxcap_714_fail:
    goto rx692_fail
  rxcap_714_done:
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 329
  # rx subrule "deflongname" subtype=capture negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."deflongname"()
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx692_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 330
  # rx subrule "newpad" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."newpad"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 331
  # rx rxquantr718 ** 0..1
    set_addr $I723, rxquantr718_done
    rx692_cur."!mark_push"(0, rx692_pos, $I723)
  rxquantr718_loop:
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, "(", rx692_fail
    add rx692_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."signature"()
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx692_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, ")", rx692_fail
    add rx692_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
    (rx692_rep) = rx692_cur."!mark_commit"($I723)
  rxquantr718_done:
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 332
  # rx reduce name="regex_declarator" key="open"
    rx692_cur."!cursor_pos"(rx692_pos)
    rx692_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 333
  # rx literal  "{"
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, "{", rx692_fail
    add rx692_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."LANG"("Regex", "nibbler")
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx692_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, "}", rx692_fail
    add rx692_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ENDSTMT"()
    unless $P10, rx692_fail
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
  alt697_end:
.annotate 'line', 334
  # rx subrule "ws" subtype=method negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."ws"()
    unless $P10, rx692_fail
    rx692_pos = $P10."pos"()
.annotate 'line', 320
  # rx pass
    rx692_cur."!cursor_pass"(rx692_pos, "regex_declarator")
    rx692_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx692_pos)
    .return (rx692_cur)
  rx692_fail:
.annotate 'line', 4
    (rx692_rep, rx692_pos, $I10, $P10) = rx692_cur."!mark_fail"(0)
    lt rx692_pos, -1, rx692_done
    eq rx692_pos, -1, rx692_fail
    jump $I10
  rx692_done:
    rx692_cur."!cursor_fail"()
    rx692_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx692_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("164_1273727990.68261") :method
.annotate 'line', 4
    new $P694, "ResizablePMCArray"
    push $P694, ""
    .return ($P694)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("165_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx729_tgt
    .local int rx729_pos
    .local int rx729_off
    .local int rx729_eos
    .local int rx729_rep
    .local pmc rx729_cur
    (rx729_cur, rx729_pos, rx729_tgt) = self."!cursor_start"()
    rx729_cur."!cursor_debug"("START ", "dotty")
    rx729_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx729_cur
    .local pmc match
    .lex "$/", match
    length rx729_eos, rx729_tgt
    set rx729_off, 0
    lt rx729_pos, 2, rx729_start
    sub rx729_off, rx729_pos, 1
    substr rx729_tgt, rx729_tgt, rx729_off
  rx729_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan733_done
    goto rxscan733_scan
  rxscan733_loop:
    ($P10) = rx729_cur."from"()
    inc $P10
    set rx729_pos, $P10
    ge rx729_pos, rx729_eos, rxscan733_done
  rxscan733_scan:
    set_addr $I10, rxscan733_loop
    rx729_cur."!mark_push"(0, rx729_pos, $I10)
  rxscan733_done:
.annotate 'line', 338
  # rx literal  "."
    add $I11, rx729_pos, 1
    gt $I11, rx729_eos, rx729_fail
    sub $I11, rx729_pos, rx729_off
    substr $S10, rx729_tgt, $I11, 1
    ne $S10, ".", rx729_fail
    add rx729_pos, 1
  alt734_0:
.annotate 'line', 339
    set_addr $I10, alt734_1
    rx729_cur."!mark_push"(0, rx729_pos, $I10)
  # rx subrule "identifier" subtype=capture negate=
    rx729_cur."!cursor_pos"(rx729_pos)
    $P10 = rx729_cur."identifier"()
    unless $P10, rx729_fail
    rx729_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname=identifier")
    rx729_pos = $P10."pos"()
    goto alt734_end
  alt734_1:
.annotate 'line', 340
  # rx enumcharlist negate=0 zerowidth
    ge rx729_pos, rx729_eos, rx729_fail
    sub $I10, rx729_pos, rx729_off
    substr $S10, rx729_tgt, $I10, 1
    index $I11, "'\"", $S10
    lt $I11, 0, rx729_fail
  # rx subrule "quote" subtype=capture negate=
    rx729_cur."!cursor_pos"(rx729_pos)
    $P10 = rx729_cur."quote"()
    unless $P10, rx729_fail
    rx729_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx729_pos = $P10."pos"()
  alt735_0:
.annotate 'line', 341
    set_addr $I10, alt735_1
    rx729_cur."!mark_push"(0, rx729_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx729_pos, rx729_eos, rx729_fail
    sub $I10, rx729_pos, rx729_off
    substr $S10, rx729_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx729_fail
    goto alt735_end
  alt735_1:
  # rx subrule "panic" subtype=method negate=
    rx729_cur."!cursor_pos"(rx729_pos)
    $P10 = rx729_cur."panic"("Quoted method name requires parenthesized arguments")
    unless $P10, rx729_fail
    rx729_pos = $P10."pos"()
  alt735_end:
  alt734_end:
.annotate 'line', 347
  # rx rxquantr736 ** 0..1
    set_addr $I738, rxquantr736_done
    rx729_cur."!mark_push"(0, rx729_pos, $I738)
  rxquantr736_loop:
  alt737_0:
.annotate 'line', 344
    set_addr $I10, alt737_1
    rx729_cur."!mark_push"(0, rx729_pos, $I10)
.annotate 'line', 345
  # rx enumcharlist negate=0 zerowidth
    ge rx729_pos, rx729_eos, rx729_fail
    sub $I10, rx729_pos, rx729_off
    substr $S10, rx729_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx729_fail
  # rx subrule "args" subtype=capture negate=
    rx729_cur."!cursor_pos"(rx729_pos)
    $P10 = rx729_cur."args"()
    unless $P10, rx729_fail
    rx729_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx729_pos = $P10."pos"()
    goto alt737_end
  alt737_1:
.annotate 'line', 346
  # rx literal  ":"
    add $I11, rx729_pos, 1
    gt $I11, rx729_eos, rx729_fail
    sub $I11, rx729_pos, rx729_off
    substr $S10, rx729_tgt, $I11, 1
    ne $S10, ":", rx729_fail
    add rx729_pos, 1
  # rx charclass s
    ge rx729_pos, rx729_eos, rx729_fail
    sub $I10, rx729_pos, rx729_off
    is_cclass $I11, 32, rx729_tgt, $I10
    unless $I11, rx729_fail
    inc rx729_pos
  # rx subrule "arglist" subtype=capture negate=
    rx729_cur."!cursor_pos"(rx729_pos)
    $P10 = rx729_cur."arglist"()
    unless $P10, rx729_fail
    rx729_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx729_pos = $P10."pos"()
  alt737_end:
.annotate 'line', 347
    (rx729_rep) = rx729_cur."!mark_commit"($I738)
  rxquantr736_done:
.annotate 'line', 337
  # rx pass
    rx729_cur."!cursor_pass"(rx729_pos, "dotty")
    rx729_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx729_pos)
    .return (rx729_cur)
  rx729_fail:
.annotate 'line', 4
    (rx729_rep, rx729_pos, $I10, $P10) = rx729_cur."!mark_fail"(0)
    lt rx729_pos, -1, rx729_done
    eq rx729_pos, -1, rx729_fail
    jump $I10
  rx729_done:
    rx729_cur."!cursor_fail"()
    rx729_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx729_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("166_1273727990.68261") :method
.annotate 'line', 4
    $P731 = self."!PREFIX__!subrule"("longname=identifier", ".")
    new $P732, "ResizablePMCArray"
    push $P732, "'"
    push $P732, "\""
    push $P732, $P731
    .return ($P732)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("167_1273727990.68261") :method
.annotate 'line', 351
    $P740 = self."!protoregex"("term")
    .return ($P740)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("168_1273727990.68261") :method
.annotate 'line', 351
    $P742 = self."!PREFIX__!protoregex"("term")
    .return ($P742)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("169_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx744_tgt
    .local int rx744_pos
    .local int rx744_off
    .local int rx744_eos
    .local int rx744_rep
    .local pmc rx744_cur
    (rx744_cur, rx744_pos, rx744_tgt) = self."!cursor_start"()
    rx744_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx744_cur
    .local pmc match
    .lex "$/", match
    length rx744_eos, rx744_tgt
    set rx744_off, 0
    lt rx744_pos, 2, rx744_start
    sub rx744_off, rx744_pos, 1
    substr rx744_tgt, rx744_tgt, rx744_off
  rx744_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan747_done
    goto rxscan747_scan
  rxscan747_loop:
    ($P10) = rx744_cur."from"()
    inc $P10
    set rx744_pos, $P10
    ge rx744_pos, rx744_eos, rxscan747_done
  rxscan747_scan:
    set_addr $I10, rxscan747_loop
    rx744_cur."!mark_push"(0, rx744_pos, $I10)
  rxscan747_done:
.annotate 'line', 353
  # rx subcapture "sym"
    set_addr $I10, rxcap_748_fail
    rx744_cur."!mark_push"(0, rx744_pos, $I10)
  # rx literal  "self"
    add $I11, rx744_pos, 4
    gt $I11, rx744_eos, rx744_fail
    sub $I11, rx744_pos, rx744_off
    substr $S10, rx744_tgt, $I11, 4
    ne $S10, "self", rx744_fail
    add rx744_pos, 4
    set_addr $I10, rxcap_748_fail
    ($I12, $I11) = rx744_cur."!mark_peek"($I10)
    rx744_cur."!cursor_pos"($I11)
    ($P10) = rx744_cur."!cursor_start"()
    $P10."!cursor_pass"(rx744_pos, "")
    rx744_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_748_done
  rxcap_748_fail:
    goto rx744_fail
  rxcap_748_done:
  # rxanchor rwb
    le rx744_pos, 0, rx744_fail
    sub $I10, rx744_pos, rx744_off
    is_cclass $I11, 8192, rx744_tgt, $I10
    if $I11, rx744_fail
    dec $I10
    is_cclass $I11, 8192, rx744_tgt, $I10
    unless $I11, rx744_fail
  # rx pass
    rx744_cur."!cursor_pass"(rx744_pos, "term:sym<self>")
    rx744_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx744_pos)
    .return (rx744_cur)
  rx744_fail:
.annotate 'line', 4
    (rx744_rep, rx744_pos, $I10, $P10) = rx744_cur."!mark_fail"(0)
    lt rx744_pos, -1, rx744_done
    eq rx744_pos, -1, rx744_fail
    jump $I10
  rx744_done:
    rx744_cur."!cursor_fail"()
    rx744_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx744_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("170_1273727990.68261") :method
.annotate 'line', 4
    new $P746, "ResizablePMCArray"
    push $P746, "self"
    .return ($P746)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("171_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx750_tgt
    .local int rx750_pos
    .local int rx750_off
    .local int rx750_eos
    .local int rx750_rep
    .local pmc rx750_cur
    (rx750_cur, rx750_pos, rx750_tgt) = self."!cursor_start"()
    rx750_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx750_cur
    .local pmc match
    .lex "$/", match
    length rx750_eos, rx750_tgt
    set rx750_off, 0
    lt rx750_pos, 2, rx750_start
    sub rx750_off, rx750_pos, 1
    substr rx750_tgt, rx750_tgt, rx750_off
  rx750_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan754_done
    goto rxscan754_scan
  rxscan754_loop:
    ($P10) = rx750_cur."from"()
    inc $P10
    set rx750_pos, $P10
    ge rx750_pos, rx750_eos, rxscan754_done
  rxscan754_scan:
    set_addr $I10, rxscan754_loop
    rx750_cur."!mark_push"(0, rx750_pos, $I10)
  rxscan754_done:
.annotate 'line', 356
  # rx subrule "identifier" subtype=capture negate=
    rx750_cur."!cursor_pos"(rx750_pos)
    $P10 = rx750_cur."identifier"()
    unless $P10, rx750_fail
    rx750_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx750_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx750_pos, rx750_eos, rx750_fail
    sub $I10, rx750_pos, rx750_off
    substr $S10, rx750_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx750_fail
  # rx subrule "args" subtype=capture negate=
    rx750_cur."!cursor_pos"(rx750_pos)
    $P10 = rx750_cur."args"()
    unless $P10, rx750_fail
    rx750_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx750_pos = $P10."pos"()
.annotate 'line', 355
  # rx pass
    rx750_cur."!cursor_pass"(rx750_pos, "term:sym<identifier>")
    rx750_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx750_pos)
    .return (rx750_cur)
  rx750_fail:
.annotate 'line', 4
    (rx750_rep, rx750_pos, $I10, $P10) = rx750_cur."!mark_fail"(0)
    lt rx750_pos, -1, rx750_done
    eq rx750_pos, -1, rx750_fail
    jump $I10
  rx750_done:
    rx750_cur."!cursor_fail"()
    rx750_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx750_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("172_1273727990.68261") :method
.annotate 'line', 4
    $P752 = self."!PREFIX__!subrule"("identifier", "")
    new $P753, "ResizablePMCArray"
    push $P753, $P752
    .return ($P753)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("173_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx756_tgt
    .local int rx756_pos
    .local int rx756_off
    .local int rx756_eos
    .local int rx756_rep
    .local pmc rx756_cur
    (rx756_cur, rx756_pos, rx756_tgt) = self."!cursor_start"()
    rx756_cur."!cursor_debug"("START ", "term:sym<name>")
    rx756_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx756_cur
    .local pmc match
    .lex "$/", match
    length rx756_eos, rx756_tgt
    set rx756_off, 0
    lt rx756_pos, 2, rx756_start
    sub rx756_off, rx756_pos, 1
    substr rx756_tgt, rx756_tgt, rx756_off
  rx756_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan760_done
    goto rxscan760_scan
  rxscan760_loop:
    ($P10) = rx756_cur."from"()
    inc $P10
    set rx756_pos, $P10
    ge rx756_pos, rx756_eos, rxscan760_done
  rxscan760_scan:
    set_addr $I10, rxscan760_loop
    rx756_cur."!mark_push"(0, rx756_pos, $I10)
  rxscan760_done:
.annotate 'line', 360
  # rx subrule "name" subtype=capture negate=
    rx756_cur."!cursor_pos"(rx756_pos)
    $P10 = rx756_cur."name"()
    unless $P10, rx756_fail
    rx756_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx756_pos = $P10."pos"()
  # rx rxquantr761 ** 0..1
    set_addr $I762, rxquantr761_done
    rx756_cur."!mark_push"(0, rx756_pos, $I762)
  rxquantr761_loop:
  # rx subrule "args" subtype=capture negate=
    rx756_cur."!cursor_pos"(rx756_pos)
    $P10 = rx756_cur."args"()
    unless $P10, rx756_fail
    rx756_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx756_pos = $P10."pos"()
    (rx756_rep) = rx756_cur."!mark_commit"($I762)
  rxquantr761_done:
.annotate 'line', 359
  # rx pass
    rx756_cur."!cursor_pass"(rx756_pos, "term:sym<name>")
    rx756_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx756_pos)
    .return (rx756_cur)
  rx756_fail:
.annotate 'line', 4
    (rx756_rep, rx756_pos, $I10, $P10) = rx756_cur."!mark_fail"(0)
    lt rx756_pos, -1, rx756_done
    eq rx756_pos, -1, rx756_fail
    jump $I10
  rx756_done:
    rx756_cur."!cursor_fail"()
    rx756_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx756_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("174_1273727990.68261") :method
.annotate 'line', 4
    $P758 = self."!PREFIX__!subrule"("name", "")
    new $P759, "ResizablePMCArray"
    push $P759, $P758
    .return ($P759)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("175_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx764_tgt
    .local int rx764_pos
    .local int rx764_off
    .local int rx764_eos
    .local int rx764_rep
    .local pmc rx764_cur
    (rx764_cur, rx764_pos, rx764_tgt) = self."!cursor_start"()
    rx764_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx764_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx764_cur
    .local pmc match
    .lex "$/", match
    length rx764_eos, rx764_tgt
    set rx764_off, 0
    lt rx764_pos, 2, rx764_start
    sub rx764_off, rx764_pos, 1
    substr rx764_tgt, rx764_tgt, rx764_off
  rx764_start:
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
.annotate 'line', 364
  # rx literal  "pir::"
    add $I11, rx764_pos, 5
    gt $I11, rx764_eos, rx764_fail
    sub $I11, rx764_pos, rx764_off
    substr $S10, rx764_tgt, $I11, 5
    ne $S10, "pir::", rx764_fail
    add rx764_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_768_fail
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx764_pos, rx764_off
    find_not_cclass $I11, 8192, rx764_tgt, $I10, rx764_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx764_fail
    add rx764_pos, rx764_off, $I11
    set_addr $I10, rxcap_768_fail
    ($I12, $I11) = rx764_cur."!mark_peek"($I10)
    rx764_cur."!cursor_pos"($I11)
    ($P10) = rx764_cur."!cursor_start"()
    $P10."!cursor_pass"(rx764_pos, "")
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_768_done
  rxcap_768_fail:
    goto rx764_fail
  rxcap_768_done:
  # rx rxquantr769 ** 0..1
    set_addr $I770, rxquantr769_done
    rx764_cur."!mark_push"(0, rx764_pos, $I770)
  rxquantr769_loop:
  # rx subrule "args" subtype=capture negate=
    rx764_cur."!cursor_pos"(rx764_pos)
    $P10 = rx764_cur."args"()
    unless $P10, rx764_fail
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx764_pos = $P10."pos"()
    (rx764_rep) = rx764_cur."!mark_commit"($I770)
  rxquantr769_done:
.annotate 'line', 363
  # rx pass
    rx764_cur."!cursor_pass"(rx764_pos, "term:sym<pir::op>")
    rx764_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx764_pos)
    .return (rx764_cur)
  rx764_fail:
.annotate 'line', 4
    (rx764_rep, rx764_pos, $I10, $P10) = rx764_cur."!mark_fail"(0)
    lt rx764_pos, -1, rx764_done
    eq rx764_pos, -1, rx764_fail
    jump $I10
  rx764_done:
    rx764_cur."!cursor_fail"()
    rx764_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx764_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("176_1273727990.68261") :method
.annotate 'line', 4
    new $P766, "ResizablePMCArray"
    push $P766, "pir::"
    .return ($P766)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("177_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx772_tgt
    .local int rx772_pos
    .local int rx772_off
    .local int rx772_eos
    .local int rx772_rep
    .local pmc rx772_cur
    (rx772_cur, rx772_pos, rx772_tgt) = self."!cursor_start"()
    rx772_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx772_cur
    .local pmc match
    .lex "$/", match
    length rx772_eos, rx772_tgt
    set rx772_off, 0
    lt rx772_pos, 2, rx772_start
    sub rx772_off, rx772_pos, 1
    substr rx772_tgt, rx772_tgt, rx772_off
  rx772_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan776_done
    goto rxscan776_scan
  rxscan776_loop:
    ($P10) = rx772_cur."from"()
    inc $P10
    set rx772_pos, $P10
    ge rx772_pos, rx772_eos, rxscan776_done
  rxscan776_scan:
    set_addr $I10, rxscan776_loop
    rx772_cur."!mark_push"(0, rx772_pos, $I10)
  rxscan776_done:
.annotate 'line', 368
  # rx literal  "("
    add $I11, rx772_pos, 1
    gt $I11, rx772_eos, rx772_fail
    sub $I11, rx772_pos, rx772_off
    substr $S10, rx772_tgt, $I11, 1
    ne $S10, "(", rx772_fail
    add rx772_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx772_cur."!cursor_pos"(rx772_pos)
    $P10 = rx772_cur."arglist"()
    unless $P10, rx772_fail
    rx772_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx772_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx772_pos, 1
    gt $I11, rx772_eos, rx772_fail
    sub $I11, rx772_pos, rx772_off
    substr $S10, rx772_tgt, $I11, 1
    ne $S10, ")", rx772_fail
    add rx772_pos, 1
  # rx pass
    rx772_cur."!cursor_pass"(rx772_pos, "args")
    rx772_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx772_pos)
    .return (rx772_cur)
  rx772_fail:
.annotate 'line', 4
    (rx772_rep, rx772_pos, $I10, $P10) = rx772_cur."!mark_fail"(0)
    lt rx772_pos, -1, rx772_done
    eq rx772_pos, -1, rx772_fail
    jump $I10
  rx772_done:
    rx772_cur."!cursor_fail"()
    rx772_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx772_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("178_1273727990.68261") :method
.annotate 'line', 4
    $P774 = self."!PREFIX__!subrule"("arglist", "(")
    new $P775, "ResizablePMCArray"
    push $P775, $P774
    .return ($P775)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("179_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx778_tgt
    .local int rx778_pos
    .local int rx778_off
    .local int rx778_eos
    .local int rx778_rep
    .local pmc rx778_cur
    (rx778_cur, rx778_pos, rx778_tgt) = self."!cursor_start"()
    rx778_cur."!cursor_debug"("START ", "arglist")
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
.annotate 'line', 372
  # rx subrule "ws" subtype=method negate=
    rx778_cur."!cursor_pos"(rx778_pos)
    $P10 = rx778_cur."ws"()
    unless $P10, rx778_fail
    rx778_pos = $P10."pos"()
  alt783_0:
.annotate 'line', 373
    set_addr $I10, alt783_1
    rx778_cur."!mark_push"(0, rx778_pos, $I10)
.annotate 'line', 374
  # rx subrule "EXPR" subtype=capture negate=
    rx778_cur."!cursor_pos"(rx778_pos)
    $P10 = rx778_cur."EXPR"("f=")
    unless $P10, rx778_fail
    rx778_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx778_pos = $P10."pos"()
    goto alt783_end
  alt783_1:
  alt783_end:
.annotate 'line', 371
  # rx pass
    rx778_cur."!cursor_pass"(rx778_pos, "arglist")
    rx778_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx778_pos)
    .return (rx778_cur)
  rx778_fail:
.annotate 'line', 4
    (rx778_rep, rx778_pos, $I10, $P10) = rx778_cur."!mark_fail"(0)
    lt rx778_pos, -1, rx778_done
    eq rx778_pos, -1, rx778_fail
    jump $I10
  rx778_done:
    rx778_cur."!cursor_fail"()
    rx778_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx778_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("180_1273727990.68261") :method
.annotate 'line', 4
    $P780 = self."!PREFIX__!subrule"("", "")
    new $P781, "ResizablePMCArray"
    push $P781, $P780
    .return ($P781)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("181_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx785_tgt
    .local int rx785_pos
    .local int rx785_off
    .local int rx785_eos
    .local int rx785_rep
    .local pmc rx785_cur
    (rx785_cur, rx785_pos, rx785_tgt) = self."!cursor_start"()
    rx785_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx785_cur
    .local pmc match
    .lex "$/", match
    length rx785_eos, rx785_tgt
    set rx785_off, 0
    lt rx785_pos, 2, rx785_start
    sub rx785_off, rx785_pos, 1
    substr rx785_tgt, rx785_tgt, rx785_off
  rx785_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan789_done
    goto rxscan789_scan
  rxscan789_loop:
    ($P10) = rx785_cur."from"()
    inc $P10
    set rx785_pos, $P10
    ge rx785_pos, rx785_eos, rxscan789_done
  rxscan789_scan:
    set_addr $I10, rxscan789_loop
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  rxscan789_done:
.annotate 'line', 380
  # rx subrule "value" subtype=capture negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."value"()
    unless $P10, rx785_fail
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx785_pos = $P10."pos"()
  # rx pass
    rx785_cur."!cursor_pass"(rx785_pos, "term:sym<value>")
    rx785_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx785_pos)
    .return (rx785_cur)
  rx785_fail:
.annotate 'line', 4
    (rx785_rep, rx785_pos, $I10, $P10) = rx785_cur."!mark_fail"(0)
    lt rx785_pos, -1, rx785_done
    eq rx785_pos, -1, rx785_fail
    jump $I10
  rx785_done:
    rx785_cur."!cursor_fail"()
    rx785_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx785_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("182_1273727990.68261") :method
.annotate 'line', 4
    $P787 = self."!PREFIX__!subrule"("value", "")
    new $P788, "ResizablePMCArray"
    push $P788, $P787
    .return ($P788)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("183_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx791_tgt
    .local int rx791_pos
    .local int rx791_off
    .local int rx791_eos
    .local int rx791_rep
    .local pmc rx791_cur
    (rx791_cur, rx791_pos, rx791_tgt) = self."!cursor_start"()
    rx791_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx791_cur
    .local pmc match
    .lex "$/", match
    length rx791_eos, rx791_tgt
    set rx791_off, 0
    lt rx791_pos, 2, rx791_start
    sub rx791_off, rx791_pos, 1
    substr rx791_tgt, rx791_tgt, rx791_off
  rx791_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan796_done
    goto rxscan796_scan
  rxscan796_loop:
    ($P10) = rx791_cur."from"()
    inc $P10
    set rx791_pos, $P10
    ge rx791_pos, rx791_eos, rxscan796_done
  rxscan796_scan:
    set_addr $I10, rxscan796_loop
    rx791_cur."!mark_push"(0, rx791_pos, $I10)
  rxscan796_done:
  alt797_0:
.annotate 'line', 382
    set_addr $I10, alt797_1
    rx791_cur."!mark_push"(0, rx791_pos, $I10)
.annotate 'line', 383
  # rx subrule "quote" subtype=capture negate=
    rx791_cur."!cursor_pos"(rx791_pos)
    $P10 = rx791_cur."quote"()
    unless $P10, rx791_fail
    rx791_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx791_pos = $P10."pos"()
    goto alt797_end
  alt797_1:
.annotate 'line', 384
  # rx subrule "number" subtype=capture negate=
    rx791_cur."!cursor_pos"(rx791_pos)
    $P10 = rx791_cur."number"()
    unless $P10, rx791_fail
    rx791_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("number")
    rx791_pos = $P10."pos"()
  alt797_end:
.annotate 'line', 382
  # rx pass
    rx791_cur."!cursor_pass"(rx791_pos, "value")
    rx791_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx791_pos)
    .return (rx791_cur)
  rx791_fail:
.annotate 'line', 4
    (rx791_rep, rx791_pos, $I10, $P10) = rx791_cur."!mark_fail"(0)
    lt rx791_pos, -1, rx791_done
    eq rx791_pos, -1, rx791_fail
    jump $I10
  rx791_done:
    rx791_cur."!cursor_fail"()
    rx791_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx791_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("184_1273727990.68261") :method
.annotate 'line', 4
    $P793 = self."!PREFIX__!subrule"("number", "")
    $P794 = self."!PREFIX__!subrule"("quote", "")
    new $P795, "ResizablePMCArray"
    push $P795, $P793
    push $P795, $P794
    .return ($P795)
.end


.namespace ["NQP";"Grammar"]
.sub "number"  :subid("185_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx799_tgt
    .local int rx799_pos
    .local int rx799_off
    .local int rx799_eos
    .local int rx799_rep
    .local pmc rx799_cur
    (rx799_cur, rx799_pos, rx799_tgt) = self."!cursor_start"()
    rx799_cur."!cursor_debug"("START ", "number")
    .lex unicode:"$\x{a2}", rx799_cur
    .local pmc match
    .lex "$/", match
    length rx799_eos, rx799_tgt
    set rx799_off, 0
    lt rx799_pos, 2, rx799_start
    sub rx799_off, rx799_pos, 1
    substr rx799_tgt, rx799_tgt, rx799_off
  rx799_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan802_done
    goto rxscan802_scan
  rxscan802_loop:
    ($P10) = rx799_cur."from"()
    inc $P10
    set rx799_pos, $P10
    ge rx799_pos, rx799_eos, rxscan802_done
  rxscan802_scan:
    set_addr $I10, rxscan802_loop
    rx799_cur."!mark_push"(0, rx799_pos, $I10)
  rxscan802_done:
.annotate 'line', 388
  # rx subcapture "sign"
    set_addr $I10, rxcap_805_fail
    rx799_cur."!mark_push"(0, rx799_pos, $I10)
  # rx rxquantr803 ** 0..1
    set_addr $I804, rxquantr803_done
    rx799_cur."!mark_push"(0, rx799_pos, $I804)
  rxquantr803_loop:
  # rx enumcharlist negate=0 
    ge rx799_pos, rx799_eos, rx799_fail
    sub $I10, rx799_pos, rx799_off
    substr $S10, rx799_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rx799_fail
    inc rx799_pos
    (rx799_rep) = rx799_cur."!mark_commit"($I804)
  rxquantr803_done:
    set_addr $I10, rxcap_805_fail
    ($I12, $I11) = rx799_cur."!mark_peek"($I10)
    rx799_cur."!cursor_pos"($I11)
    ($P10) = rx799_cur."!cursor_start"()
    $P10."!cursor_pass"(rx799_pos, "")
    rx799_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_805_done
  rxcap_805_fail:
    goto rx799_fail
  rxcap_805_done:
  alt806_0:
.annotate 'line', 389
    set_addr $I10, alt806_1
    rx799_cur."!mark_push"(0, rx799_pos, $I10)
  # rx subrule "dec_number" subtype=capture negate=
    rx799_cur."!cursor_pos"(rx799_pos)
    $P10 = rx799_cur."dec_number"()
    unless $P10, rx799_fail
    rx799_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dec_number")
    rx799_pos = $P10."pos"()
    goto alt806_end
  alt806_1:
  # rx subrule "integer" subtype=capture negate=
    rx799_cur."!cursor_pos"(rx799_pos)
    $P10 = rx799_cur."integer"()
    unless $P10, rx799_fail
    rx799_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx799_pos = $P10."pos"()
  alt806_end:
.annotate 'line', 387
  # rx pass
    rx799_cur."!cursor_pass"(rx799_pos, "number")
    rx799_cur."!cursor_debug"("PASS  ", "number", " at pos=", rx799_pos)
    .return (rx799_cur)
  rx799_fail:
.annotate 'line', 4
    (rx799_rep, rx799_pos, $I10, $P10) = rx799_cur."!mark_fail"(0)
    lt rx799_pos, -1, rx799_done
    eq rx799_pos, -1, rx799_fail
    jump $I10
  rx799_done:
    rx799_cur."!cursor_fail"()
    rx799_cur."!cursor_debug"("FAIL  ", "number")
    .return (rx799_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__number"  :subid("186_1273727990.68261") :method
.annotate 'line', 4
    new $P801, "ResizablePMCArray"
    push $P801, ""
    .return ($P801)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("187_1273727990.68261") :method
.annotate 'line', 392
    $P808 = self."!protoregex"("quote")
    .return ($P808)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("188_1273727990.68261") :method
.annotate 'line', 392
    $P810 = self."!PREFIX__!protoregex"("quote")
    .return ($P810)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("189_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx812_tgt
    .local int rx812_pos
    .local int rx812_off
    .local int rx812_eos
    .local int rx812_rep
    .local pmc rx812_cur
    (rx812_cur, rx812_pos, rx812_tgt) = self."!cursor_start"()
    rx812_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx812_cur
    .local pmc match
    .lex "$/", match
    length rx812_eos, rx812_tgt
    set rx812_off, 0
    lt rx812_pos, 2, rx812_start
    sub rx812_off, rx812_pos, 1
    substr rx812_tgt, rx812_tgt, rx812_off
  rx812_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan815_done
    goto rxscan815_scan
  rxscan815_loop:
    ($P10) = rx812_cur."from"()
    inc $P10
    set rx812_pos, $P10
    ge rx812_pos, rx812_eos, rxscan815_done
  rxscan815_scan:
    set_addr $I10, rxscan815_loop
    rx812_cur."!mark_push"(0, rx812_pos, $I10)
  rxscan815_done:
.annotate 'line', 393
  # rx enumcharlist negate=0 zerowidth
    ge rx812_pos, rx812_eos, rx812_fail
    sub $I10, rx812_pos, rx812_off
    substr $S10, rx812_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx812_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx812_cur."!cursor_pos"(rx812_pos)
    $P10 = rx812_cur."quote_EXPR"(":q")
    unless $P10, rx812_fail
    rx812_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx812_pos = $P10."pos"()
  # rx pass
    rx812_cur."!cursor_pass"(rx812_pos, "quote:sym<apos>")
    rx812_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx812_pos)
    .return (rx812_cur)
  rx812_fail:
.annotate 'line', 4
    (rx812_rep, rx812_pos, $I10, $P10) = rx812_cur."!mark_fail"(0)
    lt rx812_pos, -1, rx812_done
    eq rx812_pos, -1, rx812_fail
    jump $I10
  rx812_done:
    rx812_cur."!cursor_fail"()
    rx812_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx812_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("190_1273727990.68261") :method
.annotate 'line', 4
    new $P814, "ResizablePMCArray"
    push $P814, "'"
    .return ($P814)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("191_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx817_tgt
    .local int rx817_pos
    .local int rx817_off
    .local int rx817_eos
    .local int rx817_rep
    .local pmc rx817_cur
    (rx817_cur, rx817_pos, rx817_tgt) = self."!cursor_start"()
    rx817_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx817_cur
    .local pmc match
    .lex "$/", match
    length rx817_eos, rx817_tgt
    set rx817_off, 0
    lt rx817_pos, 2, rx817_start
    sub rx817_off, rx817_pos, 1
    substr rx817_tgt, rx817_tgt, rx817_off
  rx817_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan820_done
    goto rxscan820_scan
  rxscan820_loop:
    ($P10) = rx817_cur."from"()
    inc $P10
    set rx817_pos, $P10
    ge rx817_pos, rx817_eos, rxscan820_done
  rxscan820_scan:
    set_addr $I10, rxscan820_loop
    rx817_cur."!mark_push"(0, rx817_pos, $I10)
  rxscan820_done:
.annotate 'line', 394
  # rx enumcharlist negate=0 zerowidth
    ge rx817_pos, rx817_eos, rx817_fail
    sub $I10, rx817_pos, rx817_off
    substr $S10, rx817_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx817_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx817_cur."!cursor_pos"(rx817_pos)
    $P10 = rx817_cur."quote_EXPR"(":qq")
    unless $P10, rx817_fail
    rx817_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx817_pos = $P10."pos"()
  # rx pass
    rx817_cur."!cursor_pass"(rx817_pos, "quote:sym<dblq>")
    rx817_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx817_pos)
    .return (rx817_cur)
  rx817_fail:
.annotate 'line', 4
    (rx817_rep, rx817_pos, $I10, $P10) = rx817_cur."!mark_fail"(0)
    lt rx817_pos, -1, rx817_done
    eq rx817_pos, -1, rx817_fail
    jump $I10
  rx817_done:
    rx817_cur."!cursor_fail"()
    rx817_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx817_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("192_1273727990.68261") :method
.annotate 'line', 4
    new $P819, "ResizablePMCArray"
    push $P819, "\""
    .return ($P819)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("193_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx822_tgt
    .local int rx822_pos
    .local int rx822_off
    .local int rx822_eos
    .local int rx822_rep
    .local pmc rx822_cur
    (rx822_cur, rx822_pos, rx822_tgt) = self."!cursor_start"()
    rx822_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx822_cur
    .local pmc match
    .lex "$/", match
    length rx822_eos, rx822_tgt
    set rx822_off, 0
    lt rx822_pos, 2, rx822_start
    sub rx822_off, rx822_pos, 1
    substr rx822_tgt, rx822_tgt, rx822_off
  rx822_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan826_done
    goto rxscan826_scan
  rxscan826_loop:
    ($P10) = rx822_cur."from"()
    inc $P10
    set rx822_pos, $P10
    ge rx822_pos, rx822_eos, rxscan826_done
  rxscan826_scan:
    set_addr $I10, rxscan826_loop
    rx822_cur."!mark_push"(0, rx822_pos, $I10)
  rxscan826_done:
.annotate 'line', 395
  # rx literal  "q"
    add $I11, rx822_pos, 1
    gt $I11, rx822_eos, rx822_fail
    sub $I11, rx822_pos, rx822_off
    substr $S10, rx822_tgt, $I11, 1
    ne $S10, "q", rx822_fail
    add rx822_pos, 1
  # rxanchor rwb
    le rx822_pos, 0, rx822_fail
    sub $I10, rx822_pos, rx822_off
    is_cclass $I11, 8192, rx822_tgt, $I10
    if $I11, rx822_fail
    dec $I10
    is_cclass $I11, 8192, rx822_tgt, $I10
    unless $I11, rx822_fail
  # rx enumcharlist negate=1 zerowidth
    ge rx822_pos, rx822_eos, rx822_fail
    sub $I10, rx822_pos, rx822_off
    substr $S10, rx822_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx822_fail
  # rx subrule "ws" subtype=method negate=
    rx822_cur."!cursor_pos"(rx822_pos)
    $P10 = rx822_cur."ws"()
    unless $P10, rx822_fail
    rx822_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx822_cur."!cursor_pos"(rx822_pos)
    $P10 = rx822_cur."quote_EXPR"(":q")
    unless $P10, rx822_fail
    rx822_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx822_pos = $P10."pos"()
  # rx pass
    rx822_cur."!cursor_pass"(rx822_pos, "quote:sym<q>")
    rx822_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx822_pos)
    .return (rx822_cur)
  rx822_fail:
.annotate 'line', 4
    (rx822_rep, rx822_pos, $I10, $P10) = rx822_cur."!mark_fail"(0)
    lt rx822_pos, -1, rx822_done
    eq rx822_pos, -1, rx822_fail
    jump $I10
  rx822_done:
    rx822_cur."!cursor_fail"()
    rx822_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx822_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("194_1273727990.68261") :method
.annotate 'line', 4
    $P824 = self."!PREFIX__!subrule"("", "q")
    new $P825, "ResizablePMCArray"
    push $P825, $P824
    .return ($P825)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("195_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx828_tgt
    .local int rx828_pos
    .local int rx828_off
    .local int rx828_eos
    .local int rx828_rep
    .local pmc rx828_cur
    (rx828_cur, rx828_pos, rx828_tgt) = self."!cursor_start"()
    rx828_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx828_cur
    .local pmc match
    .lex "$/", match
    length rx828_eos, rx828_tgt
    set rx828_off, 0
    lt rx828_pos, 2, rx828_start
    sub rx828_off, rx828_pos, 1
    substr rx828_tgt, rx828_tgt, rx828_off
  rx828_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan832_done
    goto rxscan832_scan
  rxscan832_loop:
    ($P10) = rx828_cur."from"()
    inc $P10
    set rx828_pos, $P10
    ge rx828_pos, rx828_eos, rxscan832_done
  rxscan832_scan:
    set_addr $I10, rxscan832_loop
    rx828_cur."!mark_push"(0, rx828_pos, $I10)
  rxscan832_done:
.annotate 'line', 396
  # rx literal  "qq"
    add $I11, rx828_pos, 2
    gt $I11, rx828_eos, rx828_fail
    sub $I11, rx828_pos, rx828_off
    substr $S10, rx828_tgt, $I11, 2
    ne $S10, "qq", rx828_fail
    add rx828_pos, 2
  # rxanchor rwb
    le rx828_pos, 0, rx828_fail
    sub $I10, rx828_pos, rx828_off
    is_cclass $I11, 8192, rx828_tgt, $I10
    if $I11, rx828_fail
    dec $I10
    is_cclass $I11, 8192, rx828_tgt, $I10
    unless $I11, rx828_fail
  # rx enumcharlist negate=1 zerowidth
    ge rx828_pos, rx828_eos, rx828_fail
    sub $I10, rx828_pos, rx828_off
    substr $S10, rx828_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx828_fail
  # rx subrule "ws" subtype=method negate=
    rx828_cur."!cursor_pos"(rx828_pos)
    $P10 = rx828_cur."ws"()
    unless $P10, rx828_fail
    rx828_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx828_cur."!cursor_pos"(rx828_pos)
    $P10 = rx828_cur."quote_EXPR"(":qq")
    unless $P10, rx828_fail
    rx828_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx828_pos = $P10."pos"()
  # rx pass
    rx828_cur."!cursor_pass"(rx828_pos, "quote:sym<qq>")
    rx828_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx828_pos)
    .return (rx828_cur)
  rx828_fail:
.annotate 'line', 4
    (rx828_rep, rx828_pos, $I10, $P10) = rx828_cur."!mark_fail"(0)
    lt rx828_pos, -1, rx828_done
    eq rx828_pos, -1, rx828_fail
    jump $I10
  rx828_done:
    rx828_cur."!cursor_fail"()
    rx828_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx828_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("196_1273727990.68261") :method
.annotate 'line', 4
    $P830 = self."!PREFIX__!subrule"("", "qq")
    new $P831, "ResizablePMCArray"
    push $P831, $P830
    .return ($P831)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("197_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx834_tgt
    .local int rx834_pos
    .local int rx834_off
    .local int rx834_eos
    .local int rx834_rep
    .local pmc rx834_cur
    (rx834_cur, rx834_pos, rx834_tgt) = self."!cursor_start"()
    rx834_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx834_cur
    .local pmc match
    .lex "$/", match
    length rx834_eos, rx834_tgt
    set rx834_off, 0
    lt rx834_pos, 2, rx834_start
    sub rx834_off, rx834_pos, 1
    substr rx834_tgt, rx834_tgt, rx834_off
  rx834_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan838_done
    goto rxscan838_scan
  rxscan838_loop:
    ($P10) = rx834_cur."from"()
    inc $P10
    set rx834_pos, $P10
    ge rx834_pos, rx834_eos, rxscan838_done
  rxscan838_scan:
    set_addr $I10, rxscan838_loop
    rx834_cur."!mark_push"(0, rx834_pos, $I10)
  rxscan838_done:
.annotate 'line', 397
  # rx literal  "Q"
    add $I11, rx834_pos, 1
    gt $I11, rx834_eos, rx834_fail
    sub $I11, rx834_pos, rx834_off
    substr $S10, rx834_tgt, $I11, 1
    ne $S10, "Q", rx834_fail
    add rx834_pos, 1
  # rxanchor rwb
    le rx834_pos, 0, rx834_fail
    sub $I10, rx834_pos, rx834_off
    is_cclass $I11, 8192, rx834_tgt, $I10
    if $I11, rx834_fail
    dec $I10
    is_cclass $I11, 8192, rx834_tgt, $I10
    unless $I11, rx834_fail
  # rx enumcharlist negate=1 zerowidth
    ge rx834_pos, rx834_eos, rx834_fail
    sub $I10, rx834_pos, rx834_off
    substr $S10, rx834_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx834_fail
  # rx subrule "ws" subtype=method negate=
    rx834_cur."!cursor_pos"(rx834_pos)
    $P10 = rx834_cur."ws"()
    unless $P10, rx834_fail
    rx834_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx834_cur."!cursor_pos"(rx834_pos)
    $P10 = rx834_cur."quote_EXPR"()
    unless $P10, rx834_fail
    rx834_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx834_pos = $P10."pos"()
  # rx pass
    rx834_cur."!cursor_pass"(rx834_pos, "quote:sym<Q>")
    rx834_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx834_pos)
    .return (rx834_cur)
  rx834_fail:
.annotate 'line', 4
    (rx834_rep, rx834_pos, $I10, $P10) = rx834_cur."!mark_fail"(0)
    lt rx834_pos, -1, rx834_done
    eq rx834_pos, -1, rx834_fail
    jump $I10
  rx834_done:
    rx834_cur."!cursor_fail"()
    rx834_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx834_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("198_1273727990.68261") :method
.annotate 'line', 4
    $P836 = self."!PREFIX__!subrule"("", "Q")
    new $P837, "ResizablePMCArray"
    push $P837, $P836
    .return ($P837)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("199_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx840_tgt
    .local int rx840_pos
    .local int rx840_off
    .local int rx840_eos
    .local int rx840_rep
    .local pmc rx840_cur
    (rx840_cur, rx840_pos, rx840_tgt) = self."!cursor_start"()
    rx840_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx840_cur
    .local pmc match
    .lex "$/", match
    length rx840_eos, rx840_tgt
    set rx840_off, 0
    lt rx840_pos, 2, rx840_start
    sub rx840_off, rx840_pos, 1
    substr rx840_tgt, rx840_tgt, rx840_off
  rx840_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan844_done
    goto rxscan844_scan
  rxscan844_loop:
    ($P10) = rx840_cur."from"()
    inc $P10
    set rx840_pos, $P10
    ge rx840_pos, rx840_eos, rxscan844_done
  rxscan844_scan:
    set_addr $I10, rxscan844_loop
    rx840_cur."!mark_push"(0, rx840_pos, $I10)
  rxscan844_done:
.annotate 'line', 398
  # rx literal  "Q:PIR"
    add $I11, rx840_pos, 5
    gt $I11, rx840_eos, rx840_fail
    sub $I11, rx840_pos, rx840_off
    substr $S10, rx840_tgt, $I11, 5
    ne $S10, "Q:PIR", rx840_fail
    add rx840_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx840_cur."!cursor_pos"(rx840_pos)
    $P10 = rx840_cur."ws"()
    unless $P10, rx840_fail
    rx840_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx840_cur."!cursor_pos"(rx840_pos)
    $P10 = rx840_cur."quote_EXPR"()
    unless $P10, rx840_fail
    rx840_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx840_pos = $P10."pos"()
  # rx pass
    rx840_cur."!cursor_pass"(rx840_pos, "quote:sym<Q:PIR>")
    rx840_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx840_pos)
    .return (rx840_cur)
  rx840_fail:
.annotate 'line', 4
    (rx840_rep, rx840_pos, $I10, $P10) = rx840_cur."!mark_fail"(0)
    lt rx840_pos, -1, rx840_done
    eq rx840_pos, -1, rx840_fail
    jump $I10
  rx840_done:
    rx840_cur."!cursor_fail"()
    rx840_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx840_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("200_1273727990.68261") :method
.annotate 'line', 4
    $P842 = self."!PREFIX__!subrule"("", "Q:PIR")
    new $P843, "ResizablePMCArray"
    push $P843, $P842
    .return ($P843)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym</ />"  :subid("201_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx846_tgt
    .local int rx846_pos
    .local int rx846_off
    .local int rx846_eos
    .local int rx846_rep
    .local pmc rx846_cur
    (rx846_cur, rx846_pos, rx846_tgt) = self."!cursor_start"()
    rx846_cur."!cursor_debug"("START ", "quote:sym</ />")
    .lex unicode:"$\x{a2}", rx846_cur
    .local pmc match
    .lex "$/", match
    length rx846_eos, rx846_tgt
    set rx846_off, 0
    lt rx846_pos, 2, rx846_start
    sub rx846_off, rx846_pos, 1
    substr rx846_tgt, rx846_tgt, rx846_off
  rx846_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan850_done
    goto rxscan850_scan
  rxscan850_loop:
    ($P10) = rx846_cur."from"()
    inc $P10
    set rx846_pos, $P10
    ge rx846_pos, rx846_eos, rxscan850_done
  rxscan850_scan:
    set_addr $I10, rxscan850_loop
    rx846_cur."!mark_push"(0, rx846_pos, $I10)
  rxscan850_done:
.annotate 'line', 400
  # rx literal  "/"
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 1
    ne $S10, "/", rx846_fail
    add rx846_pos, 1
.annotate 'line', 401
  # rx subrule "newpad" subtype=method negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."newpad"()
    unless $P10, rx846_fail
    rx846_pos = $P10."pos"()
.annotate 'line', 402
  # rx reduce name="quote:sym</ />" key="open"
    rx846_cur."!cursor_pos"(rx846_pos)
    rx846_cur."!reduce"("quote:sym</ />", "open")
.annotate 'line', 403
  # rx subrule "LANG" subtype=capture negate=
    rx846_cur."!cursor_pos"(rx846_pos)
    $P10 = rx846_cur."LANG"("Regex", "nibbler")
    unless $P10, rx846_fail
    rx846_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx846_pos = $P10."pos"()
.annotate 'line', 404
  # rx literal  "/"
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail
    sub $I11, rx846_pos, rx846_off
    substr $S10, rx846_tgt, $I11, 1
    ne $S10, "/", rx846_fail
    add rx846_pos, 1
.annotate 'line', 399
  # rx pass
    rx846_cur."!cursor_pass"(rx846_pos, "quote:sym</ />")
    rx846_cur."!cursor_debug"("PASS  ", "quote:sym</ />", " at pos=", rx846_pos)
    .return (rx846_cur)
  rx846_fail:
.annotate 'line', 4
    (rx846_rep, rx846_pos, $I10, $P10) = rx846_cur."!mark_fail"(0)
    lt rx846_pos, -1, rx846_done
    eq rx846_pos, -1, rx846_fail
    jump $I10
  rx846_done:
    rx846_cur."!cursor_fail"()
    rx846_cur."!cursor_debug"("FAIL  ", "quote:sym</ />")
    .return (rx846_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym</ />"  :subid("202_1273727990.68261") :method
.annotate 'line', 4
    $P848 = self."!PREFIX__!subrule"("", "/")
    new $P849, "ResizablePMCArray"
    push $P849, $P848
    .return ($P849)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("203_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx852_tgt
    .local int rx852_pos
    .local int rx852_off
    .local int rx852_eos
    .local int rx852_rep
    .local pmc rx852_cur
    (rx852_cur, rx852_pos, rx852_tgt) = self."!cursor_start"()
    rx852_cur."!cursor_debug"("START ", "quote_escape:sym<$>")
    .lex unicode:"$\x{a2}", rx852_cur
    .local pmc match
    .lex "$/", match
    length rx852_eos, rx852_tgt
    set rx852_off, 0
    lt rx852_pos, 2, rx852_start
    sub rx852_off, rx852_pos, 1
    substr rx852_tgt, rx852_tgt, rx852_off
  rx852_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan855_done
    goto rxscan855_scan
  rxscan855_loop:
    ($P10) = rx852_cur."from"()
    inc $P10
    set rx852_pos, $P10
    ge rx852_pos, rx852_eos, rxscan855_done
  rxscan855_scan:
    set_addr $I10, rxscan855_loop
    rx852_cur."!mark_push"(0, rx852_pos, $I10)
  rxscan855_done:
.annotate 'line', 407
  # rx enumcharlist negate=0 zerowidth
    ge rx852_pos, rx852_eos, rx852_fail
    sub $I10, rx852_pos, rx852_off
    substr $S10, rx852_tgt, $I10, 1
    index $I11, "$", $S10
    lt $I11, 0, rx852_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx852_cur."!cursor_pos"(rx852_pos)
    $P10 = rx852_cur."quotemod_check"("s")
    unless $P10, rx852_fail
  # rx subrule "variable" subtype=capture negate=
    rx852_cur."!cursor_pos"(rx852_pos)
    $P10 = rx852_cur."variable"()
    unless $P10, rx852_fail
    rx852_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx852_pos = $P10."pos"()
  # rx pass
    rx852_cur."!cursor_pass"(rx852_pos, "quote_escape:sym<$>")
    rx852_cur."!cursor_debug"("PASS  ", "quote_escape:sym<$>", " at pos=", rx852_pos)
    .return (rx852_cur)
  rx852_fail:
.annotate 'line', 4
    (rx852_rep, rx852_pos, $I10, $P10) = rx852_cur."!mark_fail"(0)
    lt rx852_pos, -1, rx852_done
    eq rx852_pos, -1, rx852_fail
    jump $I10
  rx852_done:
    rx852_cur."!cursor_fail"()
    rx852_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<$>")
    .return (rx852_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<$>"  :subid("204_1273727990.68261") :method
.annotate 'line', 4
    new $P854, "ResizablePMCArray"
    push $P854, "$"
    .return ($P854)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<{ }>"  :subid("205_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx857_tgt
    .local int rx857_pos
    .local int rx857_off
    .local int rx857_eos
    .local int rx857_rep
    .local pmc rx857_cur
    (rx857_cur, rx857_pos, rx857_tgt) = self."!cursor_start"()
    rx857_cur."!cursor_debug"("START ", "quote_escape:sym<{ }>")
    .lex unicode:"$\x{a2}", rx857_cur
    .local pmc match
    .lex "$/", match
    length rx857_eos, rx857_tgt
    set rx857_off, 0
    lt rx857_pos, 2, rx857_start
    sub rx857_off, rx857_pos, 1
    substr rx857_tgt, rx857_tgt, rx857_off
  rx857_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan860_done
    goto rxscan860_scan
  rxscan860_loop:
    ($P10) = rx857_cur."from"()
    inc $P10
    set rx857_pos, $P10
    ge rx857_pos, rx857_eos, rxscan860_done
  rxscan860_scan:
    set_addr $I10, rxscan860_loop
    rx857_cur."!mark_push"(0, rx857_pos, $I10)
  rxscan860_done:
.annotate 'line', 408
  # rx enumcharlist negate=0 zerowidth
    ge rx857_pos, rx857_eos, rx857_fail
    sub $I10, rx857_pos, rx857_off
    substr $S10, rx857_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx857_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx857_cur."!cursor_pos"(rx857_pos)
    $P10 = rx857_cur."quotemod_check"("c")
    unless $P10, rx857_fail
  # rx subrule "block" subtype=capture negate=
    rx857_cur."!cursor_pos"(rx857_pos)
    $P10 = rx857_cur."block"()
    unless $P10, rx857_fail
    rx857_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx857_pos = $P10."pos"()
  # rx pass
    rx857_cur."!cursor_pass"(rx857_pos, "quote_escape:sym<{ }>")
    rx857_cur."!cursor_debug"("PASS  ", "quote_escape:sym<{ }>", " at pos=", rx857_pos)
    .return (rx857_cur)
  rx857_fail:
.annotate 'line', 4
    (rx857_rep, rx857_pos, $I10, $P10) = rx857_cur."!mark_fail"(0)
    lt rx857_pos, -1, rx857_done
    eq rx857_pos, -1, rx857_fail
    jump $I10
  rx857_done:
    rx857_cur."!cursor_fail"()
    rx857_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<{ }>")
    .return (rx857_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<{ }>"  :subid("206_1273727990.68261") :method
.annotate 'line', 4
    new $P859, "ResizablePMCArray"
    push $P859, "{"
    .return ($P859)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("207_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx862_tgt
    .local int rx862_pos
    .local int rx862_off
    .local int rx862_eos
    .local int rx862_rep
    .local pmc rx862_cur
    (rx862_cur, rx862_pos, rx862_tgt) = self."!cursor_start"()
    rx862_cur."!cursor_debug"("START ", "quote_escape:sym<esc>")
    .lex unicode:"$\x{a2}", rx862_cur
    .local pmc match
    .lex "$/", match
    length rx862_eos, rx862_tgt
    set rx862_off, 0
    lt rx862_pos, 2, rx862_start
    sub rx862_off, rx862_pos, 1
    substr rx862_tgt, rx862_tgt, rx862_off
  rx862_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan865_done
    goto rxscan865_scan
  rxscan865_loop:
    ($P10) = rx862_cur."from"()
    inc $P10
    set rx862_pos, $P10
    ge rx862_pos, rx862_eos, rxscan865_done
  rxscan865_scan:
    set_addr $I10, rxscan865_loop
    rx862_cur."!mark_push"(0, rx862_pos, $I10)
  rxscan865_done:
.annotate 'line', 409
  # rx literal  "\\e"
    add $I11, rx862_pos, 2
    gt $I11, rx862_eos, rx862_fail
    sub $I11, rx862_pos, rx862_off
    substr $S10, rx862_tgt, $I11, 2
    ne $S10, "\\e", rx862_fail
    add rx862_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx862_cur."!cursor_pos"(rx862_pos)
    $P10 = rx862_cur."quotemod_check"("b")
    unless $P10, rx862_fail
  # rx pass
    rx862_cur."!cursor_pass"(rx862_pos, "quote_escape:sym<esc>")
    rx862_cur."!cursor_debug"("PASS  ", "quote_escape:sym<esc>", " at pos=", rx862_pos)
    .return (rx862_cur)
  rx862_fail:
.annotate 'line', 4
    (rx862_rep, rx862_pos, $I10, $P10) = rx862_cur."!mark_fail"(0)
    lt rx862_pos, -1, rx862_done
    eq rx862_pos, -1, rx862_fail
    jump $I10
  rx862_done:
    rx862_cur."!cursor_fail"()
    rx862_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<esc>")
    .return (rx862_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("208_1273727990.68261") :method
.annotate 'line', 4
    new $P864, "ResizablePMCArray"
    push $P864, "\\e"
    .return ($P864)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("209_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx867_tgt
    .local int rx867_pos
    .local int rx867_off
    .local int rx867_eos
    .local int rx867_rep
    .local pmc rx867_cur
    (rx867_cur, rx867_pos, rx867_tgt) = self."!cursor_start"()
    rx867_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    rx867_cur."!cursor_caparray"("EXPR")
    .lex unicode:"$\x{a2}", rx867_cur
    .local pmc match
    .lex "$/", match
    length rx867_eos, rx867_tgt
    set rx867_off, 0
    lt rx867_pos, 2, rx867_start
    sub rx867_off, rx867_pos, 1
    substr rx867_tgt, rx867_tgt, rx867_off
  rx867_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan871_done
    goto rxscan871_scan
  rxscan871_loop:
    ($P10) = rx867_cur."from"()
    inc $P10
    set rx867_pos, $P10
    ge rx867_pos, rx867_eos, rxscan871_done
  rxscan871_scan:
    set_addr $I10, rxscan871_loop
    rx867_cur."!mark_push"(0, rx867_pos, $I10)
  rxscan871_done:
.annotate 'line', 411
  # rx literal  "("
    add $I11, rx867_pos, 1
    gt $I11, rx867_eos, rx867_fail
    sub $I11, rx867_pos, rx867_off
    substr $S10, rx867_tgt, $I11, 1
    ne $S10, "(", rx867_fail
    add rx867_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx867_cur."!cursor_pos"(rx867_pos)
    $P10 = rx867_cur."ws"()
    unless $P10, rx867_fail
    rx867_pos = $P10."pos"()
  # rx rxquantr872 ** 0..1
    set_addr $I873, rxquantr872_done
    rx867_cur."!mark_push"(0, rx867_pos, $I873)
  rxquantr872_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx867_cur."!cursor_pos"(rx867_pos)
    $P10 = rx867_cur."EXPR"()
    unless $P10, rx867_fail
    rx867_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx867_pos = $P10."pos"()
    (rx867_rep) = rx867_cur."!mark_commit"($I873)
  rxquantr872_done:
  # rx literal  ")"
    add $I11, rx867_pos, 1
    gt $I11, rx867_eos, rx867_fail
    sub $I11, rx867_pos, rx867_off
    substr $S10, rx867_tgt, $I11, 1
    ne $S10, ")", rx867_fail
    add rx867_pos, 1
  # rx pass
    rx867_cur."!cursor_pass"(rx867_pos, "circumfix:sym<( )>")
    rx867_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx867_pos)
    .return (rx867_cur)
  rx867_fail:
.annotate 'line', 4
    (rx867_rep, rx867_pos, $I10, $P10) = rx867_cur."!mark_fail"(0)
    lt rx867_pos, -1, rx867_done
    eq rx867_pos, -1, rx867_fail
    jump $I10
  rx867_done:
    rx867_cur."!cursor_fail"()
    rx867_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx867_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("210_1273727990.68261") :method
.annotate 'line', 4
    $P869 = self."!PREFIX__!subrule"("", "(")
    new $P870, "ResizablePMCArray"
    push $P870, $P869
    .return ($P870)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<[ ]>"  :subid("211_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx875_tgt
    .local int rx875_pos
    .local int rx875_off
    .local int rx875_eos
    .local int rx875_rep
    .local pmc rx875_cur
    (rx875_cur, rx875_pos, rx875_tgt) = self."!cursor_start"()
    rx875_cur."!cursor_debug"("START ", "circumfix:sym<[ ]>")
    rx875_cur."!cursor_caparray"("EXPR")
    .lex unicode:"$\x{a2}", rx875_cur
    .local pmc match
    .lex "$/", match
    length rx875_eos, rx875_tgt
    set rx875_off, 0
    lt rx875_pos, 2, rx875_start
    sub rx875_off, rx875_pos, 1
    substr rx875_tgt, rx875_tgt, rx875_off
  rx875_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan879_done
    goto rxscan879_scan
  rxscan879_loop:
    ($P10) = rx875_cur."from"()
    inc $P10
    set rx875_pos, $P10
    ge rx875_pos, rx875_eos, rxscan879_done
  rxscan879_scan:
    set_addr $I10, rxscan879_loop
    rx875_cur."!mark_push"(0, rx875_pos, $I10)
  rxscan879_done:
.annotate 'line', 412
  # rx literal  "["
    add $I11, rx875_pos, 1
    gt $I11, rx875_eos, rx875_fail
    sub $I11, rx875_pos, rx875_off
    substr $S10, rx875_tgt, $I11, 1
    ne $S10, "[", rx875_fail
    add rx875_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx875_cur."!cursor_pos"(rx875_pos)
    $P10 = rx875_cur."ws"()
    unless $P10, rx875_fail
    rx875_pos = $P10."pos"()
  # rx rxquantr880 ** 0..1
    set_addr $I881, rxquantr880_done
    rx875_cur."!mark_push"(0, rx875_pos, $I881)
  rxquantr880_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx875_cur."!cursor_pos"(rx875_pos)
    $P10 = rx875_cur."EXPR"()
    unless $P10, rx875_fail
    rx875_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx875_pos = $P10."pos"()
    (rx875_rep) = rx875_cur."!mark_commit"($I881)
  rxquantr880_done:
  # rx literal  "]"
    add $I11, rx875_pos, 1
    gt $I11, rx875_eos, rx875_fail
    sub $I11, rx875_pos, rx875_off
    substr $S10, rx875_tgt, $I11, 1
    ne $S10, "]", rx875_fail
    add rx875_pos, 1
  # rx pass
    rx875_cur."!cursor_pass"(rx875_pos, "circumfix:sym<[ ]>")
    rx875_cur."!cursor_debug"("PASS  ", "circumfix:sym<[ ]>", " at pos=", rx875_pos)
    .return (rx875_cur)
  rx875_fail:
.annotate 'line', 4
    (rx875_rep, rx875_pos, $I10, $P10) = rx875_cur."!mark_fail"(0)
    lt rx875_pos, -1, rx875_done
    eq rx875_pos, -1, rx875_fail
    jump $I10
  rx875_done:
    rx875_cur."!cursor_fail"()
    rx875_cur."!cursor_debug"("FAIL  ", "circumfix:sym<[ ]>")
    .return (rx875_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<[ ]>"  :subid("212_1273727990.68261") :method
.annotate 'line', 4
    $P877 = self."!PREFIX__!subrule"("", "[")
    new $P878, "ResizablePMCArray"
    push $P878, $P877
    .return ($P878)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("213_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx883_tgt
    .local int rx883_pos
    .local int rx883_off
    .local int rx883_eos
    .local int rx883_rep
    .local pmc rx883_cur
    (rx883_cur, rx883_pos, rx883_tgt) = self."!cursor_start"()
    rx883_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx883_cur
    .local pmc match
    .lex "$/", match
    length rx883_eos, rx883_tgt
    set rx883_off, 0
    lt rx883_pos, 2, rx883_start
    sub rx883_off, rx883_pos, 1
    substr rx883_tgt, rx883_tgt, rx883_off
  rx883_start:
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
.annotate 'line', 413
  # rx enumcharlist negate=0 zerowidth
    ge rx883_pos, rx883_eos, rx883_fail
    sub $I10, rx883_pos, rx883_off
    substr $S10, rx883_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx883_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx883_cur."!cursor_pos"(rx883_pos)
    $P10 = rx883_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx883_fail
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx883_pos = $P10."pos"()
  # rx pass
    rx883_cur."!cursor_pass"(rx883_pos, "circumfix:sym<ang>")
    rx883_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx883_pos)
    .return (rx883_cur)
  rx883_fail:
.annotate 'line', 4
    (rx883_rep, rx883_pos, $I10, $P10) = rx883_cur."!mark_fail"(0)
    lt rx883_pos, -1, rx883_done
    eq rx883_pos, -1, rx883_fail
    jump $I10
  rx883_done:
    rx883_cur."!cursor_fail"()
    rx883_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx883_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("214_1273727990.68261") :method
.annotate 'line', 4
    new $P885, "ResizablePMCArray"
    push $P885, "<"
    .return ($P885)
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("215_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx888_tgt
    .local int rx888_pos
    .local int rx888_off
    .local int rx888_eos
    .local int rx888_rep
    .local pmc rx888_cur
    (rx888_cur, rx888_pos, rx888_tgt) = self."!cursor_start"()
    rx888_cur."!cursor_debug"("START ", unicode:"circumfix:sym<\x{ab} \x{bb}>")
    .lex unicode:"$\x{a2}", rx888_cur
    .local pmc match
    .lex "$/", match
    length rx888_eos, rx888_tgt
    set rx888_off, 0
    lt rx888_pos, 2, rx888_start
    sub rx888_off, rx888_pos, 1
    substr rx888_tgt, rx888_tgt, rx888_off
  rx888_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan891_done
    goto rxscan891_scan
  rxscan891_loop:
    ($P10) = rx888_cur."from"()
    inc $P10
    set rx888_pos, $P10
    ge rx888_pos, rx888_eos, rxscan891_done
  rxscan891_scan:
    set_addr $I10, rxscan891_loop
    rx888_cur."!mark_push"(0, rx888_pos, $I10)
  rxscan891_done:
.annotate 'line', 414
  # rx enumcharlist negate=0 zerowidth
    ge rx888_pos, rx888_eos, rx888_fail
    sub $I10, rx888_pos, rx888_off
    substr $S10, rx888_tgt, $I10, 1
    index $I11, unicode:"\x{ab}", $S10
    lt $I11, 0, rx888_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx888_cur."!cursor_pos"(rx888_pos)
    $P10 = rx888_cur."quote_EXPR"(":qq", ":w")
    unless $P10, rx888_fail
    rx888_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx888_pos = $P10."pos"()
  # rx pass
    rx888_cur."!cursor_pass"(rx888_pos, unicode:"circumfix:sym<\x{ab} \x{bb}>")
    rx888_cur."!cursor_debug"("PASS  ", unicode:"circumfix:sym<\x{ab} \x{bb}>", " at pos=", rx888_pos)
    .return (rx888_cur)
  rx888_fail:
.annotate 'line', 4
    (rx888_rep, rx888_pos, $I10, $P10) = rx888_cur."!mark_fail"(0)
    lt rx888_pos, -1, rx888_done
    eq rx888_pos, -1, rx888_fail
    jump $I10
  rx888_done:
    rx888_cur."!cursor_fail"()
    rx888_cur."!cursor_debug"("FAIL  ", unicode:"circumfix:sym<\x{ab} \x{bb}>")
    .return (rx888_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub unicode:"!PREFIX__circumfix:sym<\x{ab} \x{bb}>"  :subid("216_1273727990.68261") :method
.annotate 'line', 4
    new $P890, "ResizablePMCArray"
    push $P890, unicode:"\x{ab}"
    .return ($P890)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("217_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx893_tgt
    .local int rx893_pos
    .local int rx893_off
    .local int rx893_eos
    .local int rx893_rep
    .local pmc rx893_cur
    (rx893_cur, rx893_pos, rx893_tgt) = self."!cursor_start"()
    rx893_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx893_cur
    .local pmc match
    .lex "$/", match
    length rx893_eos, rx893_tgt
    set rx893_off, 0
    lt rx893_pos, 2, rx893_start
    sub rx893_off, rx893_pos, 1
    substr rx893_tgt, rx893_tgt, rx893_off
  rx893_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan896_done
    goto rxscan896_scan
  rxscan896_loop:
    ($P10) = rx893_cur."from"()
    inc $P10
    set rx893_pos, $P10
    ge rx893_pos, rx893_eos, rxscan896_done
  rxscan896_scan:
    set_addr $I10, rxscan896_loop
    rx893_cur."!mark_push"(0, rx893_pos, $I10)
  rxscan896_done:
.annotate 'line', 415
  # rx enumcharlist negate=0 zerowidth
    ge rx893_pos, rx893_eos, rx893_fail
    sub $I10, rx893_pos, rx893_off
    substr $S10, rx893_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx893_fail
  # rx subrule "pblock" subtype=capture negate=
    rx893_cur."!cursor_pos"(rx893_pos)
    $P10 = rx893_cur."pblock"()
    unless $P10, rx893_fail
    rx893_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx893_pos = $P10."pos"()
  # rx pass
    rx893_cur."!cursor_pass"(rx893_pos, "circumfix:sym<{ }>")
    rx893_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx893_pos)
    .return (rx893_cur)
  rx893_fail:
.annotate 'line', 4
    (rx893_rep, rx893_pos, $I10, $P10) = rx893_cur."!mark_fail"(0)
    lt rx893_pos, -1, rx893_done
    eq rx893_pos, -1, rx893_fail
    jump $I10
  rx893_done:
    rx893_cur."!cursor_fail"()
    rx893_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx893_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("218_1273727990.68261") :method
.annotate 'line', 4
    new $P895, "ResizablePMCArray"
    push $P895, "{"
    .return ($P895)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("219_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx898_tgt
    .local int rx898_pos
    .local int rx898_off
    .local int rx898_eos
    .local int rx898_rep
    .local pmc rx898_cur
    (rx898_cur, rx898_pos, rx898_tgt) = self."!cursor_start"()
    rx898_cur."!cursor_debug"("START ", "circumfix:sym<sigil>")
    .lex unicode:"$\x{a2}", rx898_cur
    .local pmc match
    .lex "$/", match
    length rx898_eos, rx898_tgt
    set rx898_off, 0
    lt rx898_pos, 2, rx898_start
    sub rx898_off, rx898_pos, 1
    substr rx898_tgt, rx898_tgt, rx898_off
  rx898_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan902_done
    goto rxscan902_scan
  rxscan902_loop:
    ($P10) = rx898_cur."from"()
    inc $P10
    set rx898_pos, $P10
    ge rx898_pos, rx898_eos, rxscan902_done
  rxscan902_scan:
    set_addr $I10, rxscan902_loop
    rx898_cur."!mark_push"(0, rx898_pos, $I10)
  rxscan902_done:
.annotate 'line', 416
  # rx subrule "sigil" subtype=capture negate=
    rx898_cur."!cursor_pos"(rx898_pos)
    $P10 = rx898_cur."sigil"()
    unless $P10, rx898_fail
    rx898_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx898_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx898_pos, 1
    gt $I11, rx898_eos, rx898_fail
    sub $I11, rx898_pos, rx898_off
    substr $S10, rx898_tgt, $I11, 1
    ne $S10, "(", rx898_fail
    add rx898_pos, 1
  # rx subrule "semilist" subtype=capture negate=
    rx898_cur."!cursor_pos"(rx898_pos)
    $P10 = rx898_cur."semilist"()
    unless $P10, rx898_fail
    rx898_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("semilist")
    rx898_pos = $P10."pos"()
  alt903_0:
    set_addr $I10, alt903_1
    rx898_cur."!mark_push"(0, rx898_pos, $I10)
  # rx literal  ")"
    add $I11, rx898_pos, 1
    gt $I11, rx898_eos, rx898_fail
    sub $I11, rx898_pos, rx898_off
    substr $S10, rx898_tgt, $I11, 1
    ne $S10, ")", rx898_fail
    add rx898_pos, 1
    goto alt903_end
  alt903_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx898_cur."!cursor_pos"(rx898_pos)
    $P10 = rx898_cur."FAILGOAL"("')'")
    unless $P10, rx898_fail
    rx898_pos = $P10."pos"()
  alt903_end:
  # rx pass
    rx898_cur."!cursor_pass"(rx898_pos, "circumfix:sym<sigil>")
    rx898_cur."!cursor_debug"("PASS  ", "circumfix:sym<sigil>", " at pos=", rx898_pos)
    .return (rx898_cur)
  rx898_fail:
.annotate 'line', 4
    (rx898_rep, rx898_pos, $I10, $P10) = rx898_cur."!mark_fail"(0)
    lt rx898_pos, -1, rx898_done
    eq rx898_pos, -1, rx898_fail
    jump $I10
  rx898_done:
    rx898_cur."!cursor_fail"()
    rx898_cur."!cursor_debug"("FAIL  ", "circumfix:sym<sigil>")
    .return (rx898_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("220_1273727990.68261") :method
.annotate 'line', 4
    $P900 = self."!PREFIX__!subrule"("sigil", "")
    new $P901, "ResizablePMCArray"
    push $P901, $P900
    .return ($P901)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("221_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 4
    .local string rx906_tgt
    .local int rx906_pos
    .local int rx906_off
    .local int rx906_eos
    .local int rx906_rep
    .local pmc rx906_cur
    (rx906_cur, rx906_pos, rx906_tgt) = self."!cursor_start"()
    rx906_cur."!cursor_debug"("START ", "semilist")
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
.annotate 'line', 418
  # rx subrule "ws" subtype=method negate=
    rx906_cur."!cursor_pos"(rx906_pos)
    $P10 = rx906_cur."ws"()
    unless $P10, rx906_fail
    rx906_pos = $P10."pos"()
  # rx subrule "statement" subtype=capture negate=
    rx906_cur."!cursor_pos"(rx906_pos)
    $P10 = rx906_cur."statement"()
    unless $P10, rx906_fail
    rx906_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx906_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx906_cur."!cursor_pos"(rx906_pos)
    $P10 = rx906_cur."ws"()
    unless $P10, rx906_fail
    rx906_pos = $P10."pos"()
  # rx pass
    rx906_cur."!cursor_pass"(rx906_pos, "semilist")
    rx906_cur."!cursor_debug"("PASS  ", "semilist", " at pos=", rx906_pos)
    .return (rx906_cur)
  rx906_fail:
.annotate 'line', 4
    (rx906_rep, rx906_pos, $I10, $P10) = rx906_cur."!mark_fail"(0)
    lt rx906_pos, -1, rx906_done
    eq rx906_pos, -1, rx906_fail
    jump $I10
  rx906_done:
    rx906_cur."!cursor_fail"()
    rx906_cur."!cursor_debug"("FAIL  ", "semilist")
    .return (rx906_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__semilist"  :subid("222_1273727990.68261") :method
.annotate 'line', 4
    new $P908, "ResizablePMCArray"
    push $P908, ""
    .return ($P908)
.end


.namespace ["NQP";"Grammar"]
.sub "infixish"  :subid("223_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx913_tgt
    .local int rx913_pos
    .local int rx913_off
    .local int rx913_eos
    .local int rx913_rep
    .local pmc rx913_cur
    (rx913_cur, rx913_pos, rx913_tgt) = self."!cursor_start"()
    rx913_cur."!cursor_debug"("START ", "infixish")
    .lex unicode:"$\x{a2}", rx913_cur
    .local pmc match
    .lex "$/", match
    length rx913_eos, rx913_tgt
    set rx913_off, 0
    lt rx913_pos, 2, rx913_start
    sub rx913_off, rx913_pos, 1
    substr rx913_tgt, rx913_tgt, rx913_off
  rx913_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan916_done
    goto rxscan916_scan
  rxscan916_loop:
    ($P10) = rx913_cur."from"()
    inc $P10
    set rx913_pos, $P10
    ge rx913_pos, rx913_eos, rxscan916_done
  rxscan916_scan:
    set_addr $I10, rxscan916_loop
    rx913_cur."!mark_push"(0, rx913_pos, $I10)
  rxscan916_done:
.annotate 'line', 441
  # rx subrule "infixstopper" subtype=zerowidth negate=1
    rx913_cur."!cursor_pos"(rx913_pos)
    $P10 = rx913_cur."infixstopper"()
    if $P10, rx913_fail
  # rx subrule "infix" subtype=capture negate=
    rx913_cur."!cursor_pos"(rx913_pos)
    $P10 = rx913_cur."infix"()
    unless $P10, rx913_fail
    rx913_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx913_pos = $P10."pos"()
  # rx pass
    rx913_cur."!cursor_pass"(rx913_pos, "infixish")
    rx913_cur."!cursor_debug"("PASS  ", "infixish", " at pos=", rx913_pos)
    .return (rx913_cur)
  rx913_fail:
.annotate 'line', 422
    (rx913_rep, rx913_pos, $I10, $P10) = rx913_cur."!mark_fail"(0)
    lt rx913_pos, -1, rx913_done
    eq rx913_pos, -1, rx913_fail
    jump $I10
  rx913_done:
    rx913_cur."!cursor_fail"()
    rx913_cur."!cursor_debug"("FAIL  ", "infixish")
    .return (rx913_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixish"  :subid("224_1273727990.68261") :method
.annotate 'line', 422
    new $P915, "ResizablePMCArray"
    push $P915, ""
    .return ($P915)
.end


.namespace ["NQP";"Grammar"]
.sub "infixstopper"  :subid("225_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx918_tgt
    .local int rx918_pos
    .local int rx918_off
    .local int rx918_eos
    .local int rx918_rep
    .local pmc rx918_cur
    (rx918_cur, rx918_pos, rx918_tgt) = self."!cursor_start"()
    rx918_cur."!cursor_debug"("START ", "infixstopper")
    .lex unicode:"$\x{a2}", rx918_cur
    .local pmc match
    .lex "$/", match
    length rx918_eos, rx918_tgt
    set rx918_off, 0
    lt rx918_pos, 2, rx918_start
    sub rx918_off, rx918_pos, 1
    substr rx918_tgt, rx918_tgt, rx918_off
  rx918_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan921_done
    goto rxscan921_scan
  rxscan921_loop:
    ($P10) = rx918_cur."from"()
    inc $P10
    set rx918_pos, $P10
    ge rx918_pos, rx918_eos, rxscan921_done
  rxscan921_scan:
    set_addr $I10, rxscan921_loop
    rx918_cur."!mark_push"(0, rx918_pos, $I10)
  rxscan921_done:
.annotate 'line', 442
  # rx subrule "lambda" subtype=zerowidth negate=
    rx918_cur."!cursor_pos"(rx918_pos)
    $P10 = rx918_cur."lambda"()
    unless $P10, rx918_fail
  # rx pass
    rx918_cur."!cursor_pass"(rx918_pos, "infixstopper")
    rx918_cur."!cursor_debug"("PASS  ", "infixstopper", " at pos=", rx918_pos)
    .return (rx918_cur)
  rx918_fail:
.annotate 'line', 422
    (rx918_rep, rx918_pos, $I10, $P10) = rx918_cur."!mark_fail"(0)
    lt rx918_pos, -1, rx918_done
    eq rx918_pos, -1, rx918_fail
    jump $I10
  rx918_done:
    rx918_cur."!cursor_fail"()
    rx918_cur."!cursor_debug"("FAIL  ", "infixstopper")
    .return (rx918_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixstopper"  :subid("226_1273727990.68261") :method
.annotate 'line', 422
    new $P920, "ResizablePMCArray"
    push $P920, ""
    .return ($P920)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("227_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx923_tgt
    .local int rx923_pos
    .local int rx923_off
    .local int rx923_eos
    .local int rx923_rep
    .local pmc rx923_cur
    (rx923_cur, rx923_pos, rx923_tgt) = self."!cursor_start"()
    rx923_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
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
    ne $I10, -1, rxscan927_done
    goto rxscan927_scan
  rxscan927_loop:
    ($P10) = rx923_cur."from"()
    inc $P10
    set rx923_pos, $P10
    ge rx923_pos, rx923_eos, rxscan927_done
  rxscan927_scan:
    set_addr $I10, rxscan927_loop
    rx923_cur."!mark_push"(0, rx923_pos, $I10)
  rxscan927_done:
.annotate 'line', 445
  # rx literal  "["
    add $I11, rx923_pos, 1
    gt $I11, rx923_eos, rx923_fail
    sub $I11, rx923_pos, rx923_off
    substr $S10, rx923_tgt, $I11, 1
    ne $S10, "[", rx923_fail
    add rx923_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx923_cur."!cursor_pos"(rx923_pos)
    $P10 = rx923_cur."ws"()
    unless $P10, rx923_fail
    rx923_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx923_cur."!cursor_pos"(rx923_pos)
    $P10 = rx923_cur."EXPR"()
    unless $P10, rx923_fail
    rx923_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx923_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx923_pos, 1
    gt $I11, rx923_eos, rx923_fail
    sub $I11, rx923_pos, rx923_off
    substr $S10, rx923_tgt, $I11, 1
    ne $S10, "]", rx923_fail
    add rx923_pos, 1
.annotate 'line', 446
  # rx subrule "O" subtype=capture negate=
    rx923_cur."!cursor_pos"(rx923_pos)
    $P10 = rx923_cur."O"("%methodop")
    unless $P10, rx923_fail
    rx923_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx923_pos = $P10."pos"()
.annotate 'line', 444
  # rx pass
    rx923_cur."!cursor_pass"(rx923_pos, "postcircumfix:sym<[ ]>")
    rx923_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx923_pos)
    .return (rx923_cur)
  rx923_fail:
.annotate 'line', 422
    (rx923_rep, rx923_pos, $I10, $P10) = rx923_cur."!mark_fail"(0)
    lt rx923_pos, -1, rx923_done
    eq rx923_pos, -1, rx923_fail
    jump $I10
  rx923_done:
    rx923_cur."!cursor_fail"()
    rx923_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx923_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("228_1273727990.68261") :method
.annotate 'line', 422
    $P925 = self."!PREFIX__!subrule"("", "[")
    new $P926, "ResizablePMCArray"
    push $P926, $P925
    .return ($P926)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("229_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx929_tgt
    .local int rx929_pos
    .local int rx929_off
    .local int rx929_eos
    .local int rx929_rep
    .local pmc rx929_cur
    (rx929_cur, rx929_pos, rx929_tgt) = self."!cursor_start"()
    rx929_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx929_cur
    .local pmc match
    .lex "$/", match
    length rx929_eos, rx929_tgt
    set rx929_off, 0
    lt rx929_pos, 2, rx929_start
    sub rx929_off, rx929_pos, 1
    substr rx929_tgt, rx929_tgt, rx929_off
  rx929_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan933_done
    goto rxscan933_scan
  rxscan933_loop:
    ($P10) = rx929_cur."from"()
    inc $P10
    set rx929_pos, $P10
    ge rx929_pos, rx929_eos, rxscan933_done
  rxscan933_scan:
    set_addr $I10, rxscan933_loop
    rx929_cur."!mark_push"(0, rx929_pos, $I10)
  rxscan933_done:
.annotate 'line', 450
  # rx literal  "{"
    add $I11, rx929_pos, 1
    gt $I11, rx929_eos, rx929_fail
    sub $I11, rx929_pos, rx929_off
    substr $S10, rx929_tgt, $I11, 1
    ne $S10, "{", rx929_fail
    add rx929_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx929_cur."!cursor_pos"(rx929_pos)
    $P10 = rx929_cur."ws"()
    unless $P10, rx929_fail
    rx929_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx929_cur."!cursor_pos"(rx929_pos)
    $P10 = rx929_cur."EXPR"()
    unless $P10, rx929_fail
    rx929_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx929_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx929_pos, 1
    gt $I11, rx929_eos, rx929_fail
    sub $I11, rx929_pos, rx929_off
    substr $S10, rx929_tgt, $I11, 1
    ne $S10, "}", rx929_fail
    add rx929_pos, 1
.annotate 'line', 451
  # rx subrule "O" subtype=capture negate=
    rx929_cur."!cursor_pos"(rx929_pos)
    $P10 = rx929_cur."O"("%methodop")
    unless $P10, rx929_fail
    rx929_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx929_pos = $P10."pos"()
.annotate 'line', 449
  # rx pass
    rx929_cur."!cursor_pass"(rx929_pos, "postcircumfix:sym<{ }>")
    rx929_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx929_pos)
    .return (rx929_cur)
  rx929_fail:
.annotate 'line', 422
    (rx929_rep, rx929_pos, $I10, $P10) = rx929_cur."!mark_fail"(0)
    lt rx929_pos, -1, rx929_done
    eq rx929_pos, -1, rx929_fail
    jump $I10
  rx929_done:
    rx929_cur."!cursor_fail"()
    rx929_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx929_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("230_1273727990.68261") :method
.annotate 'line', 422
    $P931 = self."!PREFIX__!subrule"("", "{")
    new $P932, "ResizablePMCArray"
    push $P932, $P931
    .return ($P932)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("231_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx935_tgt
    .local int rx935_pos
    .local int rx935_off
    .local int rx935_eos
    .local int rx935_rep
    .local pmc rx935_cur
    (rx935_cur, rx935_pos, rx935_tgt) = self."!cursor_start"()
    rx935_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx935_cur
    .local pmc match
    .lex "$/", match
    length rx935_eos, rx935_tgt
    set rx935_off, 0
    lt rx935_pos, 2, rx935_start
    sub rx935_off, rx935_pos, 1
    substr rx935_tgt, rx935_tgt, rx935_off
  rx935_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan938_done
    goto rxscan938_scan
  rxscan938_loop:
    ($P10) = rx935_cur."from"()
    inc $P10
    set rx935_pos, $P10
    ge rx935_pos, rx935_eos, rxscan938_done
  rxscan938_scan:
    set_addr $I10, rxscan938_loop
    rx935_cur."!mark_push"(0, rx935_pos, $I10)
  rxscan938_done:
.annotate 'line', 455
  # rx enumcharlist negate=0 zerowidth
    ge rx935_pos, rx935_eos, rx935_fail
    sub $I10, rx935_pos, rx935_off
    substr $S10, rx935_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx935_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx935_cur."!cursor_pos"(rx935_pos)
    $P10 = rx935_cur."quote_EXPR"(":q")
    unless $P10, rx935_fail
    rx935_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx935_pos = $P10."pos"()
.annotate 'line', 456
  # rx subrule "O" subtype=capture negate=
    rx935_cur."!cursor_pos"(rx935_pos)
    $P10 = rx935_cur."O"("%methodop")
    unless $P10, rx935_fail
    rx935_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx935_pos = $P10."pos"()
.annotate 'line', 454
  # rx pass
    rx935_cur."!cursor_pass"(rx935_pos, "postcircumfix:sym<ang>")
    rx935_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx935_pos)
    .return (rx935_cur)
  rx935_fail:
.annotate 'line', 422
    (rx935_rep, rx935_pos, $I10, $P10) = rx935_cur."!mark_fail"(0)
    lt rx935_pos, -1, rx935_done
    eq rx935_pos, -1, rx935_fail
    jump $I10
  rx935_done:
    rx935_cur."!cursor_fail"()
    rx935_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx935_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("232_1273727990.68261") :method
.annotate 'line', 422
    new $P937, "ResizablePMCArray"
    push $P937, "<"
    .return ($P937)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("233_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx940_tgt
    .local int rx940_pos
    .local int rx940_off
    .local int rx940_eos
    .local int rx940_rep
    .local pmc rx940_cur
    (rx940_cur, rx940_pos, rx940_tgt) = self."!cursor_start"()
    rx940_cur."!cursor_debug"("START ", "postcircumfix:sym<( )>")
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
.annotate 'line', 460
  # rx literal  "("
    add $I11, rx940_pos, 1
    gt $I11, rx940_eos, rx940_fail
    sub $I11, rx940_pos, rx940_off
    substr $S10, rx940_tgt, $I11, 1
    ne $S10, "(", rx940_fail
    add rx940_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx940_cur."!cursor_pos"(rx940_pos)
    $P10 = rx940_cur."ws"()
    unless $P10, rx940_fail
    rx940_pos = $P10."pos"()
  # rx subrule "arglist" subtype=capture negate=
    rx940_cur."!cursor_pos"(rx940_pos)
    $P10 = rx940_cur."arglist"()
    unless $P10, rx940_fail
    rx940_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx940_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx940_pos, 1
    gt $I11, rx940_eos, rx940_fail
    sub $I11, rx940_pos, rx940_off
    substr $S10, rx940_tgt, $I11, 1
    ne $S10, ")", rx940_fail
    add rx940_pos, 1
.annotate 'line', 461
  # rx subrule "O" subtype=capture negate=
    rx940_cur."!cursor_pos"(rx940_pos)
    $P10 = rx940_cur."O"("%methodop")
    unless $P10, rx940_fail
    rx940_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx940_pos = $P10."pos"()
.annotate 'line', 459
  # rx pass
    rx940_cur."!cursor_pass"(rx940_pos, "postcircumfix:sym<( )>")
    rx940_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<( )>", " at pos=", rx940_pos)
    .return (rx940_cur)
  rx940_fail:
.annotate 'line', 422
    (rx940_rep, rx940_pos, $I10, $P10) = rx940_cur."!mark_fail"(0)
    lt rx940_pos, -1, rx940_done
    eq rx940_pos, -1, rx940_fail
    jump $I10
  rx940_done:
    rx940_cur."!cursor_fail"()
    rx940_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<( )>")
    .return (rx940_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("234_1273727990.68261") :method
.annotate 'line', 422
    $P942 = self."!PREFIX__!subrule"("", "(")
    new $P943, "ResizablePMCArray"
    push $P943, $P942
    .return ($P943)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("235_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx946_tgt
    .local int rx946_pos
    .local int rx946_off
    .local int rx946_eos
    .local int rx946_rep
    .local pmc rx946_cur
    (rx946_cur, rx946_pos, rx946_tgt) = self."!cursor_start"()
    rx946_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx946_cur
    .local pmc match
    .lex "$/", match
    length rx946_eos, rx946_tgt
    set rx946_off, 0
    lt rx946_pos, 2, rx946_start
    sub rx946_off, rx946_pos, 1
    substr rx946_tgt, rx946_tgt, rx946_off
  rx946_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan950_done
    goto rxscan950_scan
  rxscan950_loop:
    ($P10) = rx946_cur."from"()
    inc $P10
    set rx946_pos, $P10
    ge rx946_pos, rx946_eos, rxscan950_done
  rxscan950_scan:
    set_addr $I10, rxscan950_loop
    rx946_cur."!mark_push"(0, rx946_pos, $I10)
  rxscan950_done:
.annotate 'line', 464
  # rx subrule "dotty" subtype=capture negate=
    rx946_cur."!cursor_pos"(rx946_pos)
    $P10 = rx946_cur."dotty"()
    unless $P10, rx946_fail
    rx946_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx946_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx946_cur."!cursor_pos"(rx946_pos)
    $P10 = rx946_cur."O"("%methodop")
    unless $P10, rx946_fail
    rx946_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx946_pos = $P10."pos"()
  # rx pass
    rx946_cur."!cursor_pass"(rx946_pos, "postfix:sym<.>")
    rx946_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx946_pos)
    .return (rx946_cur)
  rx946_fail:
.annotate 'line', 422
    (rx946_rep, rx946_pos, $I10, $P10) = rx946_cur."!mark_fail"(0)
    lt rx946_pos, -1, rx946_done
    eq rx946_pos, -1, rx946_fail
    jump $I10
  rx946_done:
    rx946_cur."!cursor_fail"()
    rx946_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx946_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("236_1273727990.68261") :method
.annotate 'line', 422
    $P948 = self."!PREFIX__!subrule"("dotty", "")
    new $P949, "ResizablePMCArray"
    push $P949, $P948
    .return ($P949)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("237_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx952_tgt
    .local int rx952_pos
    .local int rx952_off
    .local int rx952_eos
    .local int rx952_rep
    .local pmc rx952_cur
    (rx952_cur, rx952_pos, rx952_tgt) = self."!cursor_start"()
    rx952_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx952_cur
    .local pmc match
    .lex "$/", match
    length rx952_eos, rx952_tgt
    set rx952_off, 0
    lt rx952_pos, 2, rx952_start
    sub rx952_off, rx952_pos, 1
    substr rx952_tgt, rx952_tgt, rx952_off
  rx952_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan956_done
    goto rxscan956_scan
  rxscan956_loop:
    ($P10) = rx952_cur."from"()
    inc $P10
    set rx952_pos, $P10
    ge rx952_pos, rx952_eos, rxscan956_done
  rxscan956_scan:
    set_addr $I10, rxscan956_loop
    rx952_cur."!mark_push"(0, rx952_pos, $I10)
  rxscan956_done:
.annotate 'line', 466
  # rx subcapture "sym"
    set_addr $I10, rxcap_957_fail
    rx952_cur."!mark_push"(0, rx952_pos, $I10)
  # rx literal  "++"
    add $I11, rx952_pos, 2
    gt $I11, rx952_eos, rx952_fail
    sub $I11, rx952_pos, rx952_off
    substr $S10, rx952_tgt, $I11, 2
    ne $S10, "++", rx952_fail
    add rx952_pos, 2
    set_addr $I10, rxcap_957_fail
    ($I12, $I11) = rx952_cur."!mark_peek"($I10)
    rx952_cur."!cursor_pos"($I11)
    ($P10) = rx952_cur."!cursor_start"()
    $P10."!cursor_pass"(rx952_pos, "")
    rx952_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_957_done
  rxcap_957_fail:
    goto rx952_fail
  rxcap_957_done:
  # rx subrule "O" subtype=capture negate=
    rx952_cur."!cursor_pos"(rx952_pos)
    $P10 = rx952_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx952_fail
    rx952_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx952_pos = $P10."pos"()
  # rx pass
    rx952_cur."!cursor_pass"(rx952_pos, "prefix:sym<++>")
    rx952_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx952_pos)
    .return (rx952_cur)
  rx952_fail:
.annotate 'line', 422
    (rx952_rep, rx952_pos, $I10, $P10) = rx952_cur."!mark_fail"(0)
    lt rx952_pos, -1, rx952_done
    eq rx952_pos, -1, rx952_fail
    jump $I10
  rx952_done:
    rx952_cur."!cursor_fail"()
    rx952_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx952_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("238_1273727990.68261") :method
.annotate 'line', 422
    $P954 = self."!PREFIX__!subrule"("O", "++")
    new $P955, "ResizablePMCArray"
    push $P955, $P954
    .return ($P955)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("239_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx959_tgt
    .local int rx959_pos
    .local int rx959_off
    .local int rx959_eos
    .local int rx959_rep
    .local pmc rx959_cur
    (rx959_cur, rx959_pos, rx959_tgt) = self."!cursor_start"()
    rx959_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx959_cur
    .local pmc match
    .lex "$/", match
    length rx959_eos, rx959_tgt
    set rx959_off, 0
    lt rx959_pos, 2, rx959_start
    sub rx959_off, rx959_pos, 1
    substr rx959_tgt, rx959_tgt, rx959_off
  rx959_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan963_done
    goto rxscan963_scan
  rxscan963_loop:
    ($P10) = rx959_cur."from"()
    inc $P10
    set rx959_pos, $P10
    ge rx959_pos, rx959_eos, rxscan963_done
  rxscan963_scan:
    set_addr $I10, rxscan963_loop
    rx959_cur."!mark_push"(0, rx959_pos, $I10)
  rxscan963_done:
.annotate 'line', 467
  # rx subcapture "sym"
    set_addr $I10, rxcap_964_fail
    rx959_cur."!mark_push"(0, rx959_pos, $I10)
  # rx literal  "--"
    add $I11, rx959_pos, 2
    gt $I11, rx959_eos, rx959_fail
    sub $I11, rx959_pos, rx959_off
    substr $S10, rx959_tgt, $I11, 2
    ne $S10, "--", rx959_fail
    add rx959_pos, 2
    set_addr $I10, rxcap_964_fail
    ($I12, $I11) = rx959_cur."!mark_peek"($I10)
    rx959_cur."!cursor_pos"($I11)
    ($P10) = rx959_cur."!cursor_start"()
    $P10."!cursor_pass"(rx959_pos, "")
    rx959_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_964_done
  rxcap_964_fail:
    goto rx959_fail
  rxcap_964_done:
  # rx subrule "O" subtype=capture negate=
    rx959_cur."!cursor_pos"(rx959_pos)
    $P10 = rx959_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx959_fail
    rx959_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx959_pos = $P10."pos"()
  # rx pass
    rx959_cur."!cursor_pass"(rx959_pos, "prefix:sym<-->")
    rx959_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx959_pos)
    .return (rx959_cur)
  rx959_fail:
.annotate 'line', 422
    (rx959_rep, rx959_pos, $I10, $P10) = rx959_cur."!mark_fail"(0)
    lt rx959_pos, -1, rx959_done
    eq rx959_pos, -1, rx959_fail
    jump $I10
  rx959_done:
    rx959_cur."!cursor_fail"()
    rx959_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx959_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("240_1273727990.68261") :method
.annotate 'line', 422
    $P961 = self."!PREFIX__!subrule"("O", "--")
    new $P962, "ResizablePMCArray"
    push $P962, $P961
    .return ($P962)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("241_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx966_tgt
    .local int rx966_pos
    .local int rx966_off
    .local int rx966_eos
    .local int rx966_rep
    .local pmc rx966_cur
    (rx966_cur, rx966_pos, rx966_tgt) = self."!cursor_start"()
    rx966_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx966_cur
    .local pmc match
    .lex "$/", match
    length rx966_eos, rx966_tgt
    set rx966_off, 0
    lt rx966_pos, 2, rx966_start
    sub rx966_off, rx966_pos, 1
    substr rx966_tgt, rx966_tgt, rx966_off
  rx966_start:
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
.annotate 'line', 470
  # rx subcapture "sym"
    set_addr $I10, rxcap_971_fail
    rx966_cur."!mark_push"(0, rx966_pos, $I10)
  # rx literal  "++"
    add $I11, rx966_pos, 2
    gt $I11, rx966_eos, rx966_fail
    sub $I11, rx966_pos, rx966_off
    substr $S10, rx966_tgt, $I11, 2
    ne $S10, "++", rx966_fail
    add rx966_pos, 2
    set_addr $I10, rxcap_971_fail
    ($I12, $I11) = rx966_cur."!mark_peek"($I10)
    rx966_cur."!cursor_pos"($I11)
    ($P10) = rx966_cur."!cursor_start"()
    $P10."!cursor_pass"(rx966_pos, "")
    rx966_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_971_done
  rxcap_971_fail:
    goto rx966_fail
  rxcap_971_done:
  # rx subrule "O" subtype=capture negate=
    rx966_cur."!cursor_pos"(rx966_pos)
    $P10 = rx966_cur."O"("%autoincrement")
    unless $P10, rx966_fail
    rx966_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx966_pos = $P10."pos"()
  # rx pass
    rx966_cur."!cursor_pass"(rx966_pos, "postfix:sym<++>")
    rx966_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx966_pos)
    .return (rx966_cur)
  rx966_fail:
.annotate 'line', 422
    (rx966_rep, rx966_pos, $I10, $P10) = rx966_cur."!mark_fail"(0)
    lt rx966_pos, -1, rx966_done
    eq rx966_pos, -1, rx966_fail
    jump $I10
  rx966_done:
    rx966_cur."!cursor_fail"()
    rx966_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx966_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("242_1273727990.68261") :method
.annotate 'line', 422
    $P968 = self."!PREFIX__!subrule"("O", "++")
    new $P969, "ResizablePMCArray"
    push $P969, $P968
    .return ($P969)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("243_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx973_tgt
    .local int rx973_pos
    .local int rx973_off
    .local int rx973_eos
    .local int rx973_rep
    .local pmc rx973_cur
    (rx973_cur, rx973_pos, rx973_tgt) = self."!cursor_start"()
    rx973_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx973_cur
    .local pmc match
    .lex "$/", match
    length rx973_eos, rx973_tgt
    set rx973_off, 0
    lt rx973_pos, 2, rx973_start
    sub rx973_off, rx973_pos, 1
    substr rx973_tgt, rx973_tgt, rx973_off
  rx973_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan977_done
    goto rxscan977_scan
  rxscan977_loop:
    ($P10) = rx973_cur."from"()
    inc $P10
    set rx973_pos, $P10
    ge rx973_pos, rx973_eos, rxscan977_done
  rxscan977_scan:
    set_addr $I10, rxscan977_loop
    rx973_cur."!mark_push"(0, rx973_pos, $I10)
  rxscan977_done:
.annotate 'line', 471
  # rx subcapture "sym"
    set_addr $I10, rxcap_978_fail
    rx973_cur."!mark_push"(0, rx973_pos, $I10)
  # rx literal  "--"
    add $I11, rx973_pos, 2
    gt $I11, rx973_eos, rx973_fail
    sub $I11, rx973_pos, rx973_off
    substr $S10, rx973_tgt, $I11, 2
    ne $S10, "--", rx973_fail
    add rx973_pos, 2
    set_addr $I10, rxcap_978_fail
    ($I12, $I11) = rx973_cur."!mark_peek"($I10)
    rx973_cur."!cursor_pos"($I11)
    ($P10) = rx973_cur."!cursor_start"()
    $P10."!cursor_pass"(rx973_pos, "")
    rx973_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_978_done
  rxcap_978_fail:
    goto rx973_fail
  rxcap_978_done:
  # rx subrule "O" subtype=capture negate=
    rx973_cur."!cursor_pos"(rx973_pos)
    $P10 = rx973_cur."O"("%autoincrement")
    unless $P10, rx973_fail
    rx973_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx973_pos = $P10."pos"()
  # rx pass
    rx973_cur."!cursor_pass"(rx973_pos, "postfix:sym<-->")
    rx973_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx973_pos)
    .return (rx973_cur)
  rx973_fail:
.annotate 'line', 422
    (rx973_rep, rx973_pos, $I10, $P10) = rx973_cur."!mark_fail"(0)
    lt rx973_pos, -1, rx973_done
    eq rx973_pos, -1, rx973_fail
    jump $I10
  rx973_done:
    rx973_cur."!cursor_fail"()
    rx973_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx973_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("244_1273727990.68261") :method
.annotate 'line', 422
    $P975 = self."!PREFIX__!subrule"("O", "--")
    new $P976, "ResizablePMCArray"
    push $P976, $P975
    .return ($P976)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("245_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx980_tgt
    .local int rx980_pos
    .local int rx980_off
    .local int rx980_eos
    .local int rx980_rep
    .local pmc rx980_cur
    (rx980_cur, rx980_pos, rx980_tgt) = self."!cursor_start"()
    rx980_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx980_cur
    .local pmc match
    .lex "$/", match
    length rx980_eos, rx980_tgt
    set rx980_off, 0
    lt rx980_pos, 2, rx980_start
    sub rx980_off, rx980_pos, 1
    substr rx980_tgt, rx980_tgt, rx980_off
  rx980_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan984_done
    goto rxscan984_scan
  rxscan984_loop:
    ($P10) = rx980_cur."from"()
    inc $P10
    set rx980_pos, $P10
    ge rx980_pos, rx980_eos, rxscan984_done
  rxscan984_scan:
    set_addr $I10, rxscan984_loop
    rx980_cur."!mark_push"(0, rx980_pos, $I10)
  rxscan984_done:
.annotate 'line', 473
  # rx subcapture "sym"
    set_addr $I10, rxcap_985_fail
    rx980_cur."!mark_push"(0, rx980_pos, $I10)
  # rx literal  "**"
    add $I11, rx980_pos, 2
    gt $I11, rx980_eos, rx980_fail
    sub $I11, rx980_pos, rx980_off
    substr $S10, rx980_tgt, $I11, 2
    ne $S10, "**", rx980_fail
    add rx980_pos, 2
    set_addr $I10, rxcap_985_fail
    ($I12, $I11) = rx980_cur."!mark_peek"($I10)
    rx980_cur."!cursor_pos"($I11)
    ($P10) = rx980_cur."!cursor_start"()
    $P10."!cursor_pass"(rx980_pos, "")
    rx980_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_985_done
  rxcap_985_fail:
    goto rx980_fail
  rxcap_985_done:
  # rx subrule "O" subtype=capture negate=
    rx980_cur."!cursor_pos"(rx980_pos)
    $P10 = rx980_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx980_fail
    rx980_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx980_pos = $P10."pos"()
  # rx pass
    rx980_cur."!cursor_pass"(rx980_pos, "infix:sym<**>")
    rx980_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx980_pos)
    .return (rx980_cur)
  rx980_fail:
.annotate 'line', 422
    (rx980_rep, rx980_pos, $I10, $P10) = rx980_cur."!mark_fail"(0)
    lt rx980_pos, -1, rx980_done
    eq rx980_pos, -1, rx980_fail
    jump $I10
  rx980_done:
    rx980_cur."!cursor_fail"()
    rx980_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx980_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("246_1273727990.68261") :method
.annotate 'line', 422
    $P982 = self."!PREFIX__!subrule"("O", "**")
    new $P983, "ResizablePMCArray"
    push $P983, $P982
    .return ($P983)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("247_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx987_tgt
    .local int rx987_pos
    .local int rx987_off
    .local int rx987_eos
    .local int rx987_rep
    .local pmc rx987_cur
    (rx987_cur, rx987_pos, rx987_tgt) = self."!cursor_start"()
    rx987_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx987_cur
    .local pmc match
    .lex "$/", match
    length rx987_eos, rx987_tgt
    set rx987_off, 0
    lt rx987_pos, 2, rx987_start
    sub rx987_off, rx987_pos, 1
    substr rx987_tgt, rx987_tgt, rx987_off
  rx987_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan991_done
    goto rxscan991_scan
  rxscan991_loop:
    ($P10) = rx987_cur."from"()
    inc $P10
    set rx987_pos, $P10
    ge rx987_pos, rx987_eos, rxscan991_done
  rxscan991_scan:
    set_addr $I10, rxscan991_loop
    rx987_cur."!mark_push"(0, rx987_pos, $I10)
  rxscan991_done:
.annotate 'line', 475
  # rx subcapture "sym"
    set_addr $I10, rxcap_992_fail
    rx987_cur."!mark_push"(0, rx987_pos, $I10)
  # rx literal  "+"
    add $I11, rx987_pos, 1
    gt $I11, rx987_eos, rx987_fail
    sub $I11, rx987_pos, rx987_off
    substr $S10, rx987_tgt, $I11, 1
    ne $S10, "+", rx987_fail
    add rx987_pos, 1
    set_addr $I10, rxcap_992_fail
    ($I12, $I11) = rx987_cur."!mark_peek"($I10)
    rx987_cur."!cursor_pos"($I11)
    ($P10) = rx987_cur."!cursor_start"()
    $P10."!cursor_pass"(rx987_pos, "")
    rx987_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_992_done
  rxcap_992_fail:
    goto rx987_fail
  rxcap_992_done:
  # rx subrule "O" subtype=capture negate=
    rx987_cur."!cursor_pos"(rx987_pos)
    $P10 = rx987_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx987_fail
    rx987_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx987_pos = $P10."pos"()
  # rx pass
    rx987_cur."!cursor_pass"(rx987_pos, "prefix:sym<+>")
    rx987_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx987_pos)
    .return (rx987_cur)
  rx987_fail:
.annotate 'line', 422
    (rx987_rep, rx987_pos, $I10, $P10) = rx987_cur."!mark_fail"(0)
    lt rx987_pos, -1, rx987_done
    eq rx987_pos, -1, rx987_fail
    jump $I10
  rx987_done:
    rx987_cur."!cursor_fail"()
    rx987_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx987_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("248_1273727990.68261") :method
.annotate 'line', 422
    $P989 = self."!PREFIX__!subrule"("O", "+")
    new $P990, "ResizablePMCArray"
    push $P990, $P989
    .return ($P990)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("249_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx994_tgt
    .local int rx994_pos
    .local int rx994_off
    .local int rx994_eos
    .local int rx994_rep
    .local pmc rx994_cur
    (rx994_cur, rx994_pos, rx994_tgt) = self."!cursor_start"()
    rx994_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx994_cur
    .local pmc match
    .lex "$/", match
    length rx994_eos, rx994_tgt
    set rx994_off, 0
    lt rx994_pos, 2, rx994_start
    sub rx994_off, rx994_pos, 1
    substr rx994_tgt, rx994_tgt, rx994_off
  rx994_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan998_done
    goto rxscan998_scan
  rxscan998_loop:
    ($P10) = rx994_cur."from"()
    inc $P10
    set rx994_pos, $P10
    ge rx994_pos, rx994_eos, rxscan998_done
  rxscan998_scan:
    set_addr $I10, rxscan998_loop
    rx994_cur."!mark_push"(0, rx994_pos, $I10)
  rxscan998_done:
.annotate 'line', 476
  # rx subcapture "sym"
    set_addr $I10, rxcap_999_fail
    rx994_cur."!mark_push"(0, rx994_pos, $I10)
  # rx literal  "~"
    add $I11, rx994_pos, 1
    gt $I11, rx994_eos, rx994_fail
    sub $I11, rx994_pos, rx994_off
    substr $S10, rx994_tgt, $I11, 1
    ne $S10, "~", rx994_fail
    add rx994_pos, 1
    set_addr $I10, rxcap_999_fail
    ($I12, $I11) = rx994_cur."!mark_peek"($I10)
    rx994_cur."!cursor_pos"($I11)
    ($P10) = rx994_cur."!cursor_start"()
    $P10."!cursor_pass"(rx994_pos, "")
    rx994_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_999_done
  rxcap_999_fail:
    goto rx994_fail
  rxcap_999_done:
  # rx subrule "O" subtype=capture negate=
    rx994_cur."!cursor_pos"(rx994_pos)
    $P10 = rx994_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx994_fail
    rx994_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx994_pos = $P10."pos"()
  # rx pass
    rx994_cur."!cursor_pass"(rx994_pos, "prefix:sym<~>")
    rx994_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx994_pos)
    .return (rx994_cur)
  rx994_fail:
.annotate 'line', 422
    (rx994_rep, rx994_pos, $I10, $P10) = rx994_cur."!mark_fail"(0)
    lt rx994_pos, -1, rx994_done
    eq rx994_pos, -1, rx994_fail
    jump $I10
  rx994_done:
    rx994_cur."!cursor_fail"()
    rx994_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx994_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("250_1273727990.68261") :method
.annotate 'line', 422
    $P996 = self."!PREFIX__!subrule"("O", "~")
    new $P997, "ResizablePMCArray"
    push $P997, $P996
    .return ($P997)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("251_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1001_tgt
    .local int rx1001_pos
    .local int rx1001_off
    .local int rx1001_eos
    .local int rx1001_rep
    .local pmc rx1001_cur
    (rx1001_cur, rx1001_pos, rx1001_tgt) = self."!cursor_start"()
    rx1001_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx1001_cur
    .local pmc match
    .lex "$/", match
    length rx1001_eos, rx1001_tgt
    set rx1001_off, 0
    lt rx1001_pos, 2, rx1001_start
    sub rx1001_off, rx1001_pos, 1
    substr rx1001_tgt, rx1001_tgt, rx1001_off
  rx1001_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1004_done
    goto rxscan1004_scan
  rxscan1004_loop:
    ($P10) = rx1001_cur."from"()
    inc $P10
    set rx1001_pos, $P10
    ge rx1001_pos, rx1001_eos, rxscan1004_done
  rxscan1004_scan:
    set_addr $I10, rxscan1004_loop
    rx1001_cur."!mark_push"(0, rx1001_pos, $I10)
  rxscan1004_done:
.annotate 'line', 477
  # rx subcapture "sym"
    set_addr $I10, rxcap_1005_fail
    rx1001_cur."!mark_push"(0, rx1001_pos, $I10)
  # rx literal  "-"
    add $I11, rx1001_pos, 1
    gt $I11, rx1001_eos, rx1001_fail
    sub $I11, rx1001_pos, rx1001_off
    substr $S10, rx1001_tgt, $I11, 1
    ne $S10, "-", rx1001_fail
    add rx1001_pos, 1
    set_addr $I10, rxcap_1005_fail
    ($I12, $I11) = rx1001_cur."!mark_peek"($I10)
    rx1001_cur."!cursor_pos"($I11)
    ($P10) = rx1001_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1001_pos, "")
    rx1001_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1005_done
  rxcap_1005_fail:
    goto rx1001_fail
  rxcap_1005_done:
  # rx enumcharlist negate=1 zerowidth
    ge rx1001_pos, rx1001_eos, rx1001_fail
    sub $I10, rx1001_pos, rx1001_off
    substr $S10, rx1001_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx1001_fail
  # rx subrule "number" subtype=zerowidth negate=1
    rx1001_cur."!cursor_pos"(rx1001_pos)
    $P10 = rx1001_cur."number"()
    if $P10, rx1001_fail
  # rx subrule "O" subtype=capture negate=
    rx1001_cur."!cursor_pos"(rx1001_pos)
    $P10 = rx1001_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx1001_fail
    rx1001_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1001_pos = $P10."pos"()
  # rx pass
    rx1001_cur."!cursor_pass"(rx1001_pos, "prefix:sym<->")
    rx1001_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx1001_pos)
    .return (rx1001_cur)
  rx1001_fail:
.annotate 'line', 422
    (rx1001_rep, rx1001_pos, $I10, $P10) = rx1001_cur."!mark_fail"(0)
    lt rx1001_pos, -1, rx1001_done
    eq rx1001_pos, -1, rx1001_fail
    jump $I10
  rx1001_done:
    rx1001_cur."!cursor_fail"()
    rx1001_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx1001_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("252_1273727990.68261") :method
.annotate 'line', 422
    new $P1003, "ResizablePMCArray"
    push $P1003, "-"
    .return ($P1003)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("253_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1007_tgt
    .local int rx1007_pos
    .local int rx1007_off
    .local int rx1007_eos
    .local int rx1007_rep
    .local pmc rx1007_cur
    (rx1007_cur, rx1007_pos, rx1007_tgt) = self."!cursor_start"()
    rx1007_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx1007_cur
    .local pmc match
    .lex "$/", match
    length rx1007_eos, rx1007_tgt
    set rx1007_off, 0
    lt rx1007_pos, 2, rx1007_start
    sub rx1007_off, rx1007_pos, 1
    substr rx1007_tgt, rx1007_tgt, rx1007_off
  rx1007_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1011_done
    goto rxscan1011_scan
  rxscan1011_loop:
    ($P10) = rx1007_cur."from"()
    inc $P10
    set rx1007_pos, $P10
    ge rx1007_pos, rx1007_eos, rxscan1011_done
  rxscan1011_scan:
    set_addr $I10, rxscan1011_loop
    rx1007_cur."!mark_push"(0, rx1007_pos, $I10)
  rxscan1011_done:
.annotate 'line', 478
  # rx subcapture "sym"
    set_addr $I10, rxcap_1012_fail
    rx1007_cur."!mark_push"(0, rx1007_pos, $I10)
  # rx literal  "?"
    add $I11, rx1007_pos, 1
    gt $I11, rx1007_eos, rx1007_fail
    sub $I11, rx1007_pos, rx1007_off
    substr $S10, rx1007_tgt, $I11, 1
    ne $S10, "?", rx1007_fail
    add rx1007_pos, 1
    set_addr $I10, rxcap_1012_fail
    ($I12, $I11) = rx1007_cur."!mark_peek"($I10)
    rx1007_cur."!cursor_pos"($I11)
    ($P10) = rx1007_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1007_pos, "")
    rx1007_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1012_done
  rxcap_1012_fail:
    goto rx1007_fail
  rxcap_1012_done:
  # rx subrule "O" subtype=capture negate=
    rx1007_cur."!cursor_pos"(rx1007_pos)
    $P10 = rx1007_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx1007_fail
    rx1007_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1007_pos = $P10."pos"()
  # rx pass
    rx1007_cur."!cursor_pass"(rx1007_pos, "prefix:sym<?>")
    rx1007_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx1007_pos)
    .return (rx1007_cur)
  rx1007_fail:
.annotate 'line', 422
    (rx1007_rep, rx1007_pos, $I10, $P10) = rx1007_cur."!mark_fail"(0)
    lt rx1007_pos, -1, rx1007_done
    eq rx1007_pos, -1, rx1007_fail
    jump $I10
  rx1007_done:
    rx1007_cur."!cursor_fail"()
    rx1007_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx1007_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("254_1273727990.68261") :method
.annotate 'line', 422
    $P1009 = self."!PREFIX__!subrule"("O", "?")
    new $P1010, "ResizablePMCArray"
    push $P1010, $P1009
    .return ($P1010)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("255_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1014_tgt
    .local int rx1014_pos
    .local int rx1014_off
    .local int rx1014_eos
    .local int rx1014_rep
    .local pmc rx1014_cur
    (rx1014_cur, rx1014_pos, rx1014_tgt) = self."!cursor_start"()
    rx1014_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx1014_cur
    .local pmc match
    .lex "$/", match
    length rx1014_eos, rx1014_tgt
    set rx1014_off, 0
    lt rx1014_pos, 2, rx1014_start
    sub rx1014_off, rx1014_pos, 1
    substr rx1014_tgt, rx1014_tgt, rx1014_off
  rx1014_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1018_done
    goto rxscan1018_scan
  rxscan1018_loop:
    ($P10) = rx1014_cur."from"()
    inc $P10
    set rx1014_pos, $P10
    ge rx1014_pos, rx1014_eos, rxscan1018_done
  rxscan1018_scan:
    set_addr $I10, rxscan1018_loop
    rx1014_cur."!mark_push"(0, rx1014_pos, $I10)
  rxscan1018_done:
.annotate 'line', 479
  # rx subcapture "sym"
    set_addr $I10, rxcap_1019_fail
    rx1014_cur."!mark_push"(0, rx1014_pos, $I10)
  # rx literal  "!"
    add $I11, rx1014_pos, 1
    gt $I11, rx1014_eos, rx1014_fail
    sub $I11, rx1014_pos, rx1014_off
    substr $S10, rx1014_tgt, $I11, 1
    ne $S10, "!", rx1014_fail
    add rx1014_pos, 1
    set_addr $I10, rxcap_1019_fail
    ($I12, $I11) = rx1014_cur."!mark_peek"($I10)
    rx1014_cur."!cursor_pos"($I11)
    ($P10) = rx1014_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1014_pos, "")
    rx1014_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1019_done
  rxcap_1019_fail:
    goto rx1014_fail
  rxcap_1019_done:
  # rx subrule "O" subtype=capture negate=
    rx1014_cur."!cursor_pos"(rx1014_pos)
    $P10 = rx1014_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx1014_fail
    rx1014_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1014_pos = $P10."pos"()
  # rx pass
    rx1014_cur."!cursor_pass"(rx1014_pos, "prefix:sym<!>")
    rx1014_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx1014_pos)
    .return (rx1014_cur)
  rx1014_fail:
.annotate 'line', 422
    (rx1014_rep, rx1014_pos, $I10, $P10) = rx1014_cur."!mark_fail"(0)
    lt rx1014_pos, -1, rx1014_done
    eq rx1014_pos, -1, rx1014_fail
    jump $I10
  rx1014_done:
    rx1014_cur."!cursor_fail"()
    rx1014_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx1014_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("256_1273727990.68261") :method
.annotate 'line', 422
    $P1016 = self."!PREFIX__!subrule"("O", "!")
    new $P1017, "ResizablePMCArray"
    push $P1017, $P1016
    .return ($P1017)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<|>"  :subid("257_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1021_tgt
    .local int rx1021_pos
    .local int rx1021_off
    .local int rx1021_eos
    .local int rx1021_rep
    .local pmc rx1021_cur
    (rx1021_cur, rx1021_pos, rx1021_tgt) = self."!cursor_start"()
    rx1021_cur."!cursor_debug"("START ", "prefix:sym<|>")
    .lex unicode:"$\x{a2}", rx1021_cur
    .local pmc match
    .lex "$/", match
    length rx1021_eos, rx1021_tgt
    set rx1021_off, 0
    lt rx1021_pos, 2, rx1021_start
    sub rx1021_off, rx1021_pos, 1
    substr rx1021_tgt, rx1021_tgt, rx1021_off
  rx1021_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1025_done
    goto rxscan1025_scan
  rxscan1025_loop:
    ($P10) = rx1021_cur."from"()
    inc $P10
    set rx1021_pos, $P10
    ge rx1021_pos, rx1021_eos, rxscan1025_done
  rxscan1025_scan:
    set_addr $I10, rxscan1025_loop
    rx1021_cur."!mark_push"(0, rx1021_pos, $I10)
  rxscan1025_done:
.annotate 'line', 480
  # rx subcapture "sym"
    set_addr $I10, rxcap_1026_fail
    rx1021_cur."!mark_push"(0, rx1021_pos, $I10)
  # rx literal  "|"
    add $I11, rx1021_pos, 1
    gt $I11, rx1021_eos, rx1021_fail
    sub $I11, rx1021_pos, rx1021_off
    substr $S10, rx1021_tgt, $I11, 1
    ne $S10, "|", rx1021_fail
    add rx1021_pos, 1
    set_addr $I10, rxcap_1026_fail
    ($I12, $I11) = rx1021_cur."!mark_peek"($I10)
    rx1021_cur."!cursor_pos"($I11)
    ($P10) = rx1021_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1021_pos, "")
    rx1021_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1026_done
  rxcap_1026_fail:
    goto rx1021_fail
  rxcap_1026_done:
  # rx subrule "O" subtype=capture negate=
    rx1021_cur."!cursor_pos"(rx1021_pos)
    $P10 = rx1021_cur."O"("%symbolic_unary")
    unless $P10, rx1021_fail
    rx1021_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1021_pos = $P10."pos"()
  # rx pass
    rx1021_cur."!cursor_pass"(rx1021_pos, "prefix:sym<|>")
    rx1021_cur."!cursor_debug"("PASS  ", "prefix:sym<|>", " at pos=", rx1021_pos)
    .return (rx1021_cur)
  rx1021_fail:
.annotate 'line', 422
    (rx1021_rep, rx1021_pos, $I10, $P10) = rx1021_cur."!mark_fail"(0)
    lt rx1021_pos, -1, rx1021_done
    eq rx1021_pos, -1, rx1021_fail
    jump $I10
  rx1021_done:
    rx1021_cur."!cursor_fail"()
    rx1021_cur."!cursor_debug"("FAIL  ", "prefix:sym<|>")
    .return (rx1021_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<|>"  :subid("258_1273727990.68261") :method
.annotate 'line', 422
    $P1023 = self."!PREFIX__!subrule"("O", "|")
    new $P1024, "ResizablePMCArray"
    push $P1024, $P1023
    .return ($P1024)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("259_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1028_tgt
    .local int rx1028_pos
    .local int rx1028_off
    .local int rx1028_eos
    .local int rx1028_rep
    .local pmc rx1028_cur
    (rx1028_cur, rx1028_pos, rx1028_tgt) = self."!cursor_start"()
    rx1028_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx1028_cur
    .local pmc match
    .lex "$/", match
    length rx1028_eos, rx1028_tgt
    set rx1028_off, 0
    lt rx1028_pos, 2, rx1028_start
    sub rx1028_off, rx1028_pos, 1
    substr rx1028_tgt, rx1028_tgt, rx1028_off
  rx1028_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1032_done
    goto rxscan1032_scan
  rxscan1032_loop:
    ($P10) = rx1028_cur."from"()
    inc $P10
    set rx1028_pos, $P10
    ge rx1028_pos, rx1028_eos, rxscan1032_done
  rxscan1032_scan:
    set_addr $I10, rxscan1032_loop
    rx1028_cur."!mark_push"(0, rx1028_pos, $I10)
  rxscan1032_done:
.annotate 'line', 482
  # rx subcapture "sym"
    set_addr $I10, rxcap_1033_fail
    rx1028_cur."!mark_push"(0, rx1028_pos, $I10)
  # rx literal  "*"
    add $I11, rx1028_pos, 1
    gt $I11, rx1028_eos, rx1028_fail
    sub $I11, rx1028_pos, rx1028_off
    substr $S10, rx1028_tgt, $I11, 1
    ne $S10, "*", rx1028_fail
    add rx1028_pos, 1
    set_addr $I10, rxcap_1033_fail
    ($I12, $I11) = rx1028_cur."!mark_peek"($I10)
    rx1028_cur."!cursor_pos"($I11)
    ($P10) = rx1028_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1028_pos, "")
    rx1028_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1033_done
  rxcap_1033_fail:
    goto rx1028_fail
  rxcap_1033_done:
  # rx subrule "O" subtype=capture negate=
    rx1028_cur."!cursor_pos"(rx1028_pos)
    $P10 = rx1028_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx1028_fail
    rx1028_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1028_pos = $P10."pos"()
  # rx pass
    rx1028_cur."!cursor_pass"(rx1028_pos, "infix:sym<*>")
    rx1028_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx1028_pos)
    .return (rx1028_cur)
  rx1028_fail:
.annotate 'line', 422
    (rx1028_rep, rx1028_pos, $I10, $P10) = rx1028_cur."!mark_fail"(0)
    lt rx1028_pos, -1, rx1028_done
    eq rx1028_pos, -1, rx1028_fail
    jump $I10
  rx1028_done:
    rx1028_cur."!cursor_fail"()
    rx1028_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx1028_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("260_1273727990.68261") :method
.annotate 'line', 422
    $P1030 = self."!PREFIX__!subrule"("O", "*")
    new $P1031, "ResizablePMCArray"
    push $P1031, $P1030
    .return ($P1031)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("261_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1035_tgt
    .local int rx1035_pos
    .local int rx1035_off
    .local int rx1035_eos
    .local int rx1035_rep
    .local pmc rx1035_cur
    (rx1035_cur, rx1035_pos, rx1035_tgt) = self."!cursor_start"()
    rx1035_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx1035_cur
    .local pmc match
    .lex "$/", match
    length rx1035_eos, rx1035_tgt
    set rx1035_off, 0
    lt rx1035_pos, 2, rx1035_start
    sub rx1035_off, rx1035_pos, 1
    substr rx1035_tgt, rx1035_tgt, rx1035_off
  rx1035_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1039_done
    goto rxscan1039_scan
  rxscan1039_loop:
    ($P10) = rx1035_cur."from"()
    inc $P10
    set rx1035_pos, $P10
    ge rx1035_pos, rx1035_eos, rxscan1039_done
  rxscan1039_scan:
    set_addr $I10, rxscan1039_loop
    rx1035_cur."!mark_push"(0, rx1035_pos, $I10)
  rxscan1039_done:
.annotate 'line', 483
  # rx subcapture "sym"
    set_addr $I10, rxcap_1040_fail
    rx1035_cur."!mark_push"(0, rx1035_pos, $I10)
  # rx literal  "/"
    add $I11, rx1035_pos, 1
    gt $I11, rx1035_eos, rx1035_fail
    sub $I11, rx1035_pos, rx1035_off
    substr $S10, rx1035_tgt, $I11, 1
    ne $S10, "/", rx1035_fail
    add rx1035_pos, 1
    set_addr $I10, rxcap_1040_fail
    ($I12, $I11) = rx1035_cur."!mark_peek"($I10)
    rx1035_cur."!cursor_pos"($I11)
    ($P10) = rx1035_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1035_pos, "")
    rx1035_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1040_done
  rxcap_1040_fail:
    goto rx1035_fail
  rxcap_1040_done:
  # rx subrule "O" subtype=capture negate=
    rx1035_cur."!cursor_pos"(rx1035_pos)
    $P10 = rx1035_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx1035_fail
    rx1035_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1035_pos = $P10."pos"()
  # rx pass
    rx1035_cur."!cursor_pass"(rx1035_pos, "infix:sym</>")
    rx1035_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx1035_pos)
    .return (rx1035_cur)
  rx1035_fail:
.annotate 'line', 422
    (rx1035_rep, rx1035_pos, $I10, $P10) = rx1035_cur."!mark_fail"(0)
    lt rx1035_pos, -1, rx1035_done
    eq rx1035_pos, -1, rx1035_fail
    jump $I10
  rx1035_done:
    rx1035_cur."!cursor_fail"()
    rx1035_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx1035_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("262_1273727990.68261") :method
.annotate 'line', 422
    $P1037 = self."!PREFIX__!subrule"("O", "/")
    new $P1038, "ResizablePMCArray"
    push $P1038, $P1037
    .return ($P1038)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("263_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1042_tgt
    .local int rx1042_pos
    .local int rx1042_off
    .local int rx1042_eos
    .local int rx1042_rep
    .local pmc rx1042_cur
    (rx1042_cur, rx1042_pos, rx1042_tgt) = self."!cursor_start"()
    rx1042_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx1042_cur
    .local pmc match
    .lex "$/", match
    length rx1042_eos, rx1042_tgt
    set rx1042_off, 0
    lt rx1042_pos, 2, rx1042_start
    sub rx1042_off, rx1042_pos, 1
    substr rx1042_tgt, rx1042_tgt, rx1042_off
  rx1042_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1046_done
    goto rxscan1046_scan
  rxscan1046_loop:
    ($P10) = rx1042_cur."from"()
    inc $P10
    set rx1042_pos, $P10
    ge rx1042_pos, rx1042_eos, rxscan1046_done
  rxscan1046_scan:
    set_addr $I10, rxscan1046_loop
    rx1042_cur."!mark_push"(0, rx1042_pos, $I10)
  rxscan1046_done:
.annotate 'line', 484
  # rx subcapture "sym"
    set_addr $I10, rxcap_1047_fail
    rx1042_cur."!mark_push"(0, rx1042_pos, $I10)
  # rx literal  "%"
    add $I11, rx1042_pos, 1
    gt $I11, rx1042_eos, rx1042_fail
    sub $I11, rx1042_pos, rx1042_off
    substr $S10, rx1042_tgt, $I11, 1
    ne $S10, "%", rx1042_fail
    add rx1042_pos, 1
    set_addr $I10, rxcap_1047_fail
    ($I12, $I11) = rx1042_cur."!mark_peek"($I10)
    rx1042_cur."!cursor_pos"($I11)
    ($P10) = rx1042_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1042_pos, "")
    rx1042_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1047_done
  rxcap_1047_fail:
    goto rx1042_fail
  rxcap_1047_done:
  # rx subrule "O" subtype=capture negate=
    rx1042_cur."!cursor_pos"(rx1042_pos)
    $P10 = rx1042_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx1042_fail
    rx1042_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1042_pos = $P10."pos"()
  # rx pass
    rx1042_cur."!cursor_pass"(rx1042_pos, "infix:sym<%>")
    rx1042_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx1042_pos)
    .return (rx1042_cur)
  rx1042_fail:
.annotate 'line', 422
    (rx1042_rep, rx1042_pos, $I10, $P10) = rx1042_cur."!mark_fail"(0)
    lt rx1042_pos, -1, rx1042_done
    eq rx1042_pos, -1, rx1042_fail
    jump $I10
  rx1042_done:
    rx1042_cur."!cursor_fail"()
    rx1042_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx1042_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("264_1273727990.68261") :method
.annotate 'line', 422
    $P1044 = self."!PREFIX__!subrule"("O", "%")
    new $P1045, "ResizablePMCArray"
    push $P1045, $P1044
    .return ($P1045)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("265_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1049_tgt
    .local int rx1049_pos
    .local int rx1049_off
    .local int rx1049_eos
    .local int rx1049_rep
    .local pmc rx1049_cur
    (rx1049_cur, rx1049_pos, rx1049_tgt) = self."!cursor_start"()
    rx1049_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx1049_cur
    .local pmc match
    .lex "$/", match
    length rx1049_eos, rx1049_tgt
    set rx1049_off, 0
    lt rx1049_pos, 2, rx1049_start
    sub rx1049_off, rx1049_pos, 1
    substr rx1049_tgt, rx1049_tgt, rx1049_off
  rx1049_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1053_done
    goto rxscan1053_scan
  rxscan1053_loop:
    ($P10) = rx1049_cur."from"()
    inc $P10
    set rx1049_pos, $P10
    ge rx1049_pos, rx1049_eos, rxscan1053_done
  rxscan1053_scan:
    set_addr $I10, rxscan1053_loop
    rx1049_cur."!mark_push"(0, rx1049_pos, $I10)
  rxscan1053_done:
.annotate 'line', 486
  # rx subcapture "sym"
    set_addr $I10, rxcap_1054_fail
    rx1049_cur."!mark_push"(0, rx1049_pos, $I10)
  # rx literal  "+"
    add $I11, rx1049_pos, 1
    gt $I11, rx1049_eos, rx1049_fail
    sub $I11, rx1049_pos, rx1049_off
    substr $S10, rx1049_tgt, $I11, 1
    ne $S10, "+", rx1049_fail
    add rx1049_pos, 1
    set_addr $I10, rxcap_1054_fail
    ($I12, $I11) = rx1049_cur."!mark_peek"($I10)
    rx1049_cur."!cursor_pos"($I11)
    ($P10) = rx1049_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1049_pos, "")
    rx1049_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1054_done
  rxcap_1054_fail:
    goto rx1049_fail
  rxcap_1054_done:
  # rx subrule "O" subtype=capture negate=
    rx1049_cur."!cursor_pos"(rx1049_pos)
    $P10 = rx1049_cur."O"("%additive, :pirop<add>")
    unless $P10, rx1049_fail
    rx1049_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1049_pos = $P10."pos"()
  # rx pass
    rx1049_cur."!cursor_pass"(rx1049_pos, "infix:sym<+>")
    rx1049_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx1049_pos)
    .return (rx1049_cur)
  rx1049_fail:
.annotate 'line', 422
    (rx1049_rep, rx1049_pos, $I10, $P10) = rx1049_cur."!mark_fail"(0)
    lt rx1049_pos, -1, rx1049_done
    eq rx1049_pos, -1, rx1049_fail
    jump $I10
  rx1049_done:
    rx1049_cur."!cursor_fail"()
    rx1049_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx1049_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("266_1273727990.68261") :method
.annotate 'line', 422
    $P1051 = self."!PREFIX__!subrule"("O", "+")
    new $P1052, "ResizablePMCArray"
    push $P1052, $P1051
    .return ($P1052)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("267_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1056_tgt
    .local int rx1056_pos
    .local int rx1056_off
    .local int rx1056_eos
    .local int rx1056_rep
    .local pmc rx1056_cur
    (rx1056_cur, rx1056_pos, rx1056_tgt) = self."!cursor_start"()
    rx1056_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx1056_cur
    .local pmc match
    .lex "$/", match
    length rx1056_eos, rx1056_tgt
    set rx1056_off, 0
    lt rx1056_pos, 2, rx1056_start
    sub rx1056_off, rx1056_pos, 1
    substr rx1056_tgt, rx1056_tgt, rx1056_off
  rx1056_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1060_done
    goto rxscan1060_scan
  rxscan1060_loop:
    ($P10) = rx1056_cur."from"()
    inc $P10
    set rx1056_pos, $P10
    ge rx1056_pos, rx1056_eos, rxscan1060_done
  rxscan1060_scan:
    set_addr $I10, rxscan1060_loop
    rx1056_cur."!mark_push"(0, rx1056_pos, $I10)
  rxscan1060_done:
.annotate 'line', 487
  # rx subcapture "sym"
    set_addr $I10, rxcap_1061_fail
    rx1056_cur."!mark_push"(0, rx1056_pos, $I10)
  # rx literal  "-"
    add $I11, rx1056_pos, 1
    gt $I11, rx1056_eos, rx1056_fail
    sub $I11, rx1056_pos, rx1056_off
    substr $S10, rx1056_tgt, $I11, 1
    ne $S10, "-", rx1056_fail
    add rx1056_pos, 1
    set_addr $I10, rxcap_1061_fail
    ($I12, $I11) = rx1056_cur."!mark_peek"($I10)
    rx1056_cur."!cursor_pos"($I11)
    ($P10) = rx1056_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1056_pos, "")
    rx1056_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1061_done
  rxcap_1061_fail:
    goto rx1056_fail
  rxcap_1061_done:
  # rx subrule "O" subtype=capture negate=
    rx1056_cur."!cursor_pos"(rx1056_pos)
    $P10 = rx1056_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx1056_fail
    rx1056_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1056_pos = $P10."pos"()
  # rx pass
    rx1056_cur."!cursor_pass"(rx1056_pos, "infix:sym<->")
    rx1056_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx1056_pos)
    .return (rx1056_cur)
  rx1056_fail:
.annotate 'line', 422
    (rx1056_rep, rx1056_pos, $I10, $P10) = rx1056_cur."!mark_fail"(0)
    lt rx1056_pos, -1, rx1056_done
    eq rx1056_pos, -1, rx1056_fail
    jump $I10
  rx1056_done:
    rx1056_cur."!cursor_fail"()
    rx1056_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx1056_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("268_1273727990.68261") :method
.annotate 'line', 422
    $P1058 = self."!PREFIX__!subrule"("O", "-")
    new $P1059, "ResizablePMCArray"
    push $P1059, $P1058
    .return ($P1059)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("269_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1063_tgt
    .local int rx1063_pos
    .local int rx1063_off
    .local int rx1063_eos
    .local int rx1063_rep
    .local pmc rx1063_cur
    (rx1063_cur, rx1063_pos, rx1063_tgt) = self."!cursor_start"()
    rx1063_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx1063_cur
    .local pmc match
    .lex "$/", match
    length rx1063_eos, rx1063_tgt
    set rx1063_off, 0
    lt rx1063_pos, 2, rx1063_start
    sub rx1063_off, rx1063_pos, 1
    substr rx1063_tgt, rx1063_tgt, rx1063_off
  rx1063_start:
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
.annotate 'line', 489
  # rx subcapture "sym"
    set_addr $I10, rxcap_1068_fail
    rx1063_cur."!mark_push"(0, rx1063_pos, $I10)
  # rx literal  "~"
    add $I11, rx1063_pos, 1
    gt $I11, rx1063_eos, rx1063_fail
    sub $I11, rx1063_pos, rx1063_off
    substr $S10, rx1063_tgt, $I11, 1
    ne $S10, "~", rx1063_fail
    add rx1063_pos, 1
    set_addr $I10, rxcap_1068_fail
    ($I12, $I11) = rx1063_cur."!mark_peek"($I10)
    rx1063_cur."!cursor_pos"($I11)
    ($P10) = rx1063_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1063_pos, "")
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1068_done
  rxcap_1068_fail:
    goto rx1063_fail
  rxcap_1068_done:
  # rx subrule "O" subtype=capture negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx1063_fail
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1063_pos = $P10."pos"()
  # rx pass
    rx1063_cur."!cursor_pass"(rx1063_pos, "infix:sym<~>")
    rx1063_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx1063_pos)
    .return (rx1063_cur)
  rx1063_fail:
.annotate 'line', 422
    (rx1063_rep, rx1063_pos, $I10, $P10) = rx1063_cur."!mark_fail"(0)
    lt rx1063_pos, -1, rx1063_done
    eq rx1063_pos, -1, rx1063_fail
    jump $I10
  rx1063_done:
    rx1063_cur."!cursor_fail"()
    rx1063_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx1063_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("270_1273727990.68261") :method
.annotate 'line', 422
    $P1065 = self."!PREFIX__!subrule"("O", "~")
    new $P1066, "ResizablePMCArray"
    push $P1066, $P1065
    .return ($P1066)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("271_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1070_tgt
    .local int rx1070_pos
    .local int rx1070_off
    .local int rx1070_eos
    .local int rx1070_rep
    .local pmc rx1070_cur
    (rx1070_cur, rx1070_pos, rx1070_tgt) = self."!cursor_start"()
    rx1070_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx1070_cur
    .local pmc match
    .lex "$/", match
    length rx1070_eos, rx1070_tgt
    set rx1070_off, 0
    lt rx1070_pos, 2, rx1070_start
    sub rx1070_off, rx1070_pos, 1
    substr rx1070_tgt, rx1070_tgt, rx1070_off
  rx1070_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1074_done
    goto rxscan1074_scan
  rxscan1074_loop:
    ($P10) = rx1070_cur."from"()
    inc $P10
    set rx1070_pos, $P10
    ge rx1070_pos, rx1070_eos, rxscan1074_done
  rxscan1074_scan:
    set_addr $I10, rxscan1074_loop
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
  rxscan1074_done:
.annotate 'line', 491
  # rx subcapture "sym"
    set_addr $I10, rxcap_1075_fail
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
  # rx literal  "=="
    add $I11, rx1070_pos, 2
    gt $I11, rx1070_eos, rx1070_fail
    sub $I11, rx1070_pos, rx1070_off
    substr $S10, rx1070_tgt, $I11, 2
    ne $S10, "==", rx1070_fail
    add rx1070_pos, 2
    set_addr $I10, rxcap_1075_fail
    ($I12, $I11) = rx1070_cur."!mark_peek"($I10)
    rx1070_cur."!cursor_pos"($I11)
    ($P10) = rx1070_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1070_pos, "")
    rx1070_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1075_done
  rxcap_1075_fail:
    goto rx1070_fail
  rxcap_1075_done:
  # rx subrule "O" subtype=capture negate=
    rx1070_cur."!cursor_pos"(rx1070_pos)
    $P10 = rx1070_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx1070_fail
    rx1070_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1070_pos = $P10."pos"()
  # rx pass
    rx1070_cur."!cursor_pass"(rx1070_pos, "infix:sym<==>")
    rx1070_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx1070_pos)
    .return (rx1070_cur)
  rx1070_fail:
.annotate 'line', 422
    (rx1070_rep, rx1070_pos, $I10, $P10) = rx1070_cur."!mark_fail"(0)
    lt rx1070_pos, -1, rx1070_done
    eq rx1070_pos, -1, rx1070_fail
    jump $I10
  rx1070_done:
    rx1070_cur."!cursor_fail"()
    rx1070_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx1070_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("272_1273727990.68261") :method
.annotate 'line', 422
    $P1072 = self."!PREFIX__!subrule"("O", "==")
    new $P1073, "ResizablePMCArray"
    push $P1073, $P1072
    .return ($P1073)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("273_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1077_tgt
    .local int rx1077_pos
    .local int rx1077_off
    .local int rx1077_eos
    .local int rx1077_rep
    .local pmc rx1077_cur
    (rx1077_cur, rx1077_pos, rx1077_tgt) = self."!cursor_start"()
    rx1077_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx1077_cur
    .local pmc match
    .lex "$/", match
    length rx1077_eos, rx1077_tgt
    set rx1077_off, 0
    lt rx1077_pos, 2, rx1077_start
    sub rx1077_off, rx1077_pos, 1
    substr rx1077_tgt, rx1077_tgt, rx1077_off
  rx1077_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1081_done
    goto rxscan1081_scan
  rxscan1081_loop:
    ($P10) = rx1077_cur."from"()
    inc $P10
    set rx1077_pos, $P10
    ge rx1077_pos, rx1077_eos, rxscan1081_done
  rxscan1081_scan:
    set_addr $I10, rxscan1081_loop
    rx1077_cur."!mark_push"(0, rx1077_pos, $I10)
  rxscan1081_done:
.annotate 'line', 492
  # rx subcapture "sym"
    set_addr $I10, rxcap_1082_fail
    rx1077_cur."!mark_push"(0, rx1077_pos, $I10)
  # rx literal  "!="
    add $I11, rx1077_pos, 2
    gt $I11, rx1077_eos, rx1077_fail
    sub $I11, rx1077_pos, rx1077_off
    substr $S10, rx1077_tgt, $I11, 2
    ne $S10, "!=", rx1077_fail
    add rx1077_pos, 2
    set_addr $I10, rxcap_1082_fail
    ($I12, $I11) = rx1077_cur."!mark_peek"($I10)
    rx1077_cur."!cursor_pos"($I11)
    ($P10) = rx1077_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1077_pos, "")
    rx1077_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1082_done
  rxcap_1082_fail:
    goto rx1077_fail
  rxcap_1082_done:
  # rx subrule "O" subtype=capture negate=
    rx1077_cur."!cursor_pos"(rx1077_pos)
    $P10 = rx1077_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx1077_fail
    rx1077_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1077_pos = $P10."pos"()
  # rx pass
    rx1077_cur."!cursor_pass"(rx1077_pos, "infix:sym<!=>")
    rx1077_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx1077_pos)
    .return (rx1077_cur)
  rx1077_fail:
.annotate 'line', 422
    (rx1077_rep, rx1077_pos, $I10, $P10) = rx1077_cur."!mark_fail"(0)
    lt rx1077_pos, -1, rx1077_done
    eq rx1077_pos, -1, rx1077_fail
    jump $I10
  rx1077_done:
    rx1077_cur."!cursor_fail"()
    rx1077_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx1077_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("274_1273727990.68261") :method
.annotate 'line', 422
    $P1079 = self."!PREFIX__!subrule"("O", "!=")
    new $P1080, "ResizablePMCArray"
    push $P1080, $P1079
    .return ($P1080)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("275_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1084_tgt
    .local int rx1084_pos
    .local int rx1084_off
    .local int rx1084_eos
    .local int rx1084_rep
    .local pmc rx1084_cur
    (rx1084_cur, rx1084_pos, rx1084_tgt) = self."!cursor_start"()
    rx1084_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx1084_cur
    .local pmc match
    .lex "$/", match
    length rx1084_eos, rx1084_tgt
    set rx1084_off, 0
    lt rx1084_pos, 2, rx1084_start
    sub rx1084_off, rx1084_pos, 1
    substr rx1084_tgt, rx1084_tgt, rx1084_off
  rx1084_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1088_done
    goto rxscan1088_scan
  rxscan1088_loop:
    ($P10) = rx1084_cur."from"()
    inc $P10
    set rx1084_pos, $P10
    ge rx1084_pos, rx1084_eos, rxscan1088_done
  rxscan1088_scan:
    set_addr $I10, rxscan1088_loop
    rx1084_cur."!mark_push"(0, rx1084_pos, $I10)
  rxscan1088_done:
.annotate 'line', 493
  # rx subcapture "sym"
    set_addr $I10, rxcap_1089_fail
    rx1084_cur."!mark_push"(0, rx1084_pos, $I10)
  # rx literal  "<="
    add $I11, rx1084_pos, 2
    gt $I11, rx1084_eos, rx1084_fail
    sub $I11, rx1084_pos, rx1084_off
    substr $S10, rx1084_tgt, $I11, 2
    ne $S10, "<=", rx1084_fail
    add rx1084_pos, 2
    set_addr $I10, rxcap_1089_fail
    ($I12, $I11) = rx1084_cur."!mark_peek"($I10)
    rx1084_cur."!cursor_pos"($I11)
    ($P10) = rx1084_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1084_pos, "")
    rx1084_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1089_done
  rxcap_1089_fail:
    goto rx1084_fail
  rxcap_1089_done:
  # rx subrule "O" subtype=capture negate=
    rx1084_cur."!cursor_pos"(rx1084_pos)
    $P10 = rx1084_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx1084_fail
    rx1084_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1084_pos = $P10."pos"()
  # rx pass
    rx1084_cur."!cursor_pass"(rx1084_pos, "infix:sym<<=>")
    rx1084_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx1084_pos)
    .return (rx1084_cur)
  rx1084_fail:
.annotate 'line', 422
    (rx1084_rep, rx1084_pos, $I10, $P10) = rx1084_cur."!mark_fail"(0)
    lt rx1084_pos, -1, rx1084_done
    eq rx1084_pos, -1, rx1084_fail
    jump $I10
  rx1084_done:
    rx1084_cur."!cursor_fail"()
    rx1084_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx1084_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("276_1273727990.68261") :method
.annotate 'line', 422
    $P1086 = self."!PREFIX__!subrule"("O", "<=")
    new $P1087, "ResizablePMCArray"
    push $P1087, $P1086
    .return ($P1087)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("277_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1091_tgt
    .local int rx1091_pos
    .local int rx1091_off
    .local int rx1091_eos
    .local int rx1091_rep
    .local pmc rx1091_cur
    (rx1091_cur, rx1091_pos, rx1091_tgt) = self."!cursor_start"()
    rx1091_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx1091_cur
    .local pmc match
    .lex "$/", match
    length rx1091_eos, rx1091_tgt
    set rx1091_off, 0
    lt rx1091_pos, 2, rx1091_start
    sub rx1091_off, rx1091_pos, 1
    substr rx1091_tgt, rx1091_tgt, rx1091_off
  rx1091_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1095_done
    goto rxscan1095_scan
  rxscan1095_loop:
    ($P10) = rx1091_cur."from"()
    inc $P10
    set rx1091_pos, $P10
    ge rx1091_pos, rx1091_eos, rxscan1095_done
  rxscan1095_scan:
    set_addr $I10, rxscan1095_loop
    rx1091_cur."!mark_push"(0, rx1091_pos, $I10)
  rxscan1095_done:
.annotate 'line', 494
  # rx subcapture "sym"
    set_addr $I10, rxcap_1096_fail
    rx1091_cur."!mark_push"(0, rx1091_pos, $I10)
  # rx literal  ">="
    add $I11, rx1091_pos, 2
    gt $I11, rx1091_eos, rx1091_fail
    sub $I11, rx1091_pos, rx1091_off
    substr $S10, rx1091_tgt, $I11, 2
    ne $S10, ">=", rx1091_fail
    add rx1091_pos, 2
    set_addr $I10, rxcap_1096_fail
    ($I12, $I11) = rx1091_cur."!mark_peek"($I10)
    rx1091_cur."!cursor_pos"($I11)
    ($P10) = rx1091_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1091_pos, "")
    rx1091_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1096_done
  rxcap_1096_fail:
    goto rx1091_fail
  rxcap_1096_done:
  # rx subrule "O" subtype=capture negate=
    rx1091_cur."!cursor_pos"(rx1091_pos)
    $P10 = rx1091_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx1091_fail
    rx1091_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1091_pos = $P10."pos"()
  # rx pass
    rx1091_cur."!cursor_pass"(rx1091_pos, "infix:sym<>=>")
    rx1091_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx1091_pos)
    .return (rx1091_cur)
  rx1091_fail:
.annotate 'line', 422
    (rx1091_rep, rx1091_pos, $I10, $P10) = rx1091_cur."!mark_fail"(0)
    lt rx1091_pos, -1, rx1091_done
    eq rx1091_pos, -1, rx1091_fail
    jump $I10
  rx1091_done:
    rx1091_cur."!cursor_fail"()
    rx1091_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx1091_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("278_1273727990.68261") :method
.annotate 'line', 422
    $P1093 = self."!PREFIX__!subrule"("O", ">=")
    new $P1094, "ResizablePMCArray"
    push $P1094, $P1093
    .return ($P1094)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("279_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1098_tgt
    .local int rx1098_pos
    .local int rx1098_off
    .local int rx1098_eos
    .local int rx1098_rep
    .local pmc rx1098_cur
    (rx1098_cur, rx1098_pos, rx1098_tgt) = self."!cursor_start"()
    rx1098_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx1098_cur
    .local pmc match
    .lex "$/", match
    length rx1098_eos, rx1098_tgt
    set rx1098_off, 0
    lt rx1098_pos, 2, rx1098_start
    sub rx1098_off, rx1098_pos, 1
    substr rx1098_tgt, rx1098_tgt, rx1098_off
  rx1098_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1102_done
    goto rxscan1102_scan
  rxscan1102_loop:
    ($P10) = rx1098_cur."from"()
    inc $P10
    set rx1098_pos, $P10
    ge rx1098_pos, rx1098_eos, rxscan1102_done
  rxscan1102_scan:
    set_addr $I10, rxscan1102_loop
    rx1098_cur."!mark_push"(0, rx1098_pos, $I10)
  rxscan1102_done:
.annotate 'line', 495
  # rx subcapture "sym"
    set_addr $I10, rxcap_1103_fail
    rx1098_cur."!mark_push"(0, rx1098_pos, $I10)
  # rx literal  "<"
    add $I11, rx1098_pos, 1
    gt $I11, rx1098_eos, rx1098_fail
    sub $I11, rx1098_pos, rx1098_off
    substr $S10, rx1098_tgt, $I11, 1
    ne $S10, "<", rx1098_fail
    add rx1098_pos, 1
    set_addr $I10, rxcap_1103_fail
    ($I12, $I11) = rx1098_cur."!mark_peek"($I10)
    rx1098_cur."!cursor_pos"($I11)
    ($P10) = rx1098_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1098_pos, "")
    rx1098_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1103_done
  rxcap_1103_fail:
    goto rx1098_fail
  rxcap_1103_done:
  # rx subrule "O" subtype=capture negate=
    rx1098_cur."!cursor_pos"(rx1098_pos)
    $P10 = rx1098_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx1098_fail
    rx1098_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1098_pos = $P10."pos"()
  # rx pass
    rx1098_cur."!cursor_pass"(rx1098_pos, "infix:sym<<>")
    rx1098_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx1098_pos)
    .return (rx1098_cur)
  rx1098_fail:
.annotate 'line', 422
    (rx1098_rep, rx1098_pos, $I10, $P10) = rx1098_cur."!mark_fail"(0)
    lt rx1098_pos, -1, rx1098_done
    eq rx1098_pos, -1, rx1098_fail
    jump $I10
  rx1098_done:
    rx1098_cur."!cursor_fail"()
    rx1098_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx1098_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("280_1273727990.68261") :method
.annotate 'line', 422
    $P1100 = self."!PREFIX__!subrule"("O", "<")
    new $P1101, "ResizablePMCArray"
    push $P1101, $P1100
    .return ($P1101)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("281_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1105_tgt
    .local int rx1105_pos
    .local int rx1105_off
    .local int rx1105_eos
    .local int rx1105_rep
    .local pmc rx1105_cur
    (rx1105_cur, rx1105_pos, rx1105_tgt) = self."!cursor_start"()
    rx1105_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx1105_cur
    .local pmc match
    .lex "$/", match
    length rx1105_eos, rx1105_tgt
    set rx1105_off, 0
    lt rx1105_pos, 2, rx1105_start
    sub rx1105_off, rx1105_pos, 1
    substr rx1105_tgt, rx1105_tgt, rx1105_off
  rx1105_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1109_done
    goto rxscan1109_scan
  rxscan1109_loop:
    ($P10) = rx1105_cur."from"()
    inc $P10
    set rx1105_pos, $P10
    ge rx1105_pos, rx1105_eos, rxscan1109_done
  rxscan1109_scan:
    set_addr $I10, rxscan1109_loop
    rx1105_cur."!mark_push"(0, rx1105_pos, $I10)
  rxscan1109_done:
.annotate 'line', 496
  # rx subcapture "sym"
    set_addr $I10, rxcap_1110_fail
    rx1105_cur."!mark_push"(0, rx1105_pos, $I10)
  # rx literal  ">"
    add $I11, rx1105_pos, 1
    gt $I11, rx1105_eos, rx1105_fail
    sub $I11, rx1105_pos, rx1105_off
    substr $S10, rx1105_tgt, $I11, 1
    ne $S10, ">", rx1105_fail
    add rx1105_pos, 1
    set_addr $I10, rxcap_1110_fail
    ($I12, $I11) = rx1105_cur."!mark_peek"($I10)
    rx1105_cur."!cursor_pos"($I11)
    ($P10) = rx1105_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1105_pos, "")
    rx1105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1110_done
  rxcap_1110_fail:
    goto rx1105_fail
  rxcap_1110_done:
  # rx subrule "O" subtype=capture negate=
    rx1105_cur."!cursor_pos"(rx1105_pos)
    $P10 = rx1105_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx1105_fail
    rx1105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1105_pos = $P10."pos"()
  # rx pass
    rx1105_cur."!cursor_pass"(rx1105_pos, "infix:sym<>>")
    rx1105_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx1105_pos)
    .return (rx1105_cur)
  rx1105_fail:
.annotate 'line', 422
    (rx1105_rep, rx1105_pos, $I10, $P10) = rx1105_cur."!mark_fail"(0)
    lt rx1105_pos, -1, rx1105_done
    eq rx1105_pos, -1, rx1105_fail
    jump $I10
  rx1105_done:
    rx1105_cur."!cursor_fail"()
    rx1105_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx1105_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("282_1273727990.68261") :method
.annotate 'line', 422
    $P1107 = self."!PREFIX__!subrule"("O", ">")
    new $P1108, "ResizablePMCArray"
    push $P1108, $P1107
    .return ($P1108)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("283_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1112_tgt
    .local int rx1112_pos
    .local int rx1112_off
    .local int rx1112_eos
    .local int rx1112_rep
    .local pmc rx1112_cur
    (rx1112_cur, rx1112_pos, rx1112_tgt) = self."!cursor_start"()
    rx1112_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx1112_cur
    .local pmc match
    .lex "$/", match
    length rx1112_eos, rx1112_tgt
    set rx1112_off, 0
    lt rx1112_pos, 2, rx1112_start
    sub rx1112_off, rx1112_pos, 1
    substr rx1112_tgt, rx1112_tgt, rx1112_off
  rx1112_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1116_done
    goto rxscan1116_scan
  rxscan1116_loop:
    ($P10) = rx1112_cur."from"()
    inc $P10
    set rx1112_pos, $P10
    ge rx1112_pos, rx1112_eos, rxscan1116_done
  rxscan1116_scan:
    set_addr $I10, rxscan1116_loop
    rx1112_cur."!mark_push"(0, rx1112_pos, $I10)
  rxscan1116_done:
.annotate 'line', 497
  # rx subcapture "sym"
    set_addr $I10, rxcap_1117_fail
    rx1112_cur."!mark_push"(0, rx1112_pos, $I10)
  # rx literal  "eq"
    add $I11, rx1112_pos, 2
    gt $I11, rx1112_eos, rx1112_fail
    sub $I11, rx1112_pos, rx1112_off
    substr $S10, rx1112_tgt, $I11, 2
    ne $S10, "eq", rx1112_fail
    add rx1112_pos, 2
    set_addr $I10, rxcap_1117_fail
    ($I12, $I11) = rx1112_cur."!mark_peek"($I10)
    rx1112_cur."!cursor_pos"($I11)
    ($P10) = rx1112_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1112_pos, "")
    rx1112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1117_done
  rxcap_1117_fail:
    goto rx1112_fail
  rxcap_1117_done:
  # rx subrule "O" subtype=capture negate=
    rx1112_cur."!cursor_pos"(rx1112_pos)
    $P10 = rx1112_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx1112_fail
    rx1112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1112_pos = $P10."pos"()
  # rx pass
    rx1112_cur."!cursor_pass"(rx1112_pos, "infix:sym<eq>")
    rx1112_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx1112_pos)
    .return (rx1112_cur)
  rx1112_fail:
.annotate 'line', 422
    (rx1112_rep, rx1112_pos, $I10, $P10) = rx1112_cur."!mark_fail"(0)
    lt rx1112_pos, -1, rx1112_done
    eq rx1112_pos, -1, rx1112_fail
    jump $I10
  rx1112_done:
    rx1112_cur."!cursor_fail"()
    rx1112_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx1112_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("284_1273727990.68261") :method
.annotate 'line', 422
    $P1114 = self."!PREFIX__!subrule"("O", "eq")
    new $P1115, "ResizablePMCArray"
    push $P1115, $P1114
    .return ($P1115)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("285_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1119_tgt
    .local int rx1119_pos
    .local int rx1119_off
    .local int rx1119_eos
    .local int rx1119_rep
    .local pmc rx1119_cur
    (rx1119_cur, rx1119_pos, rx1119_tgt) = self."!cursor_start"()
    rx1119_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx1119_cur
    .local pmc match
    .lex "$/", match
    length rx1119_eos, rx1119_tgt
    set rx1119_off, 0
    lt rx1119_pos, 2, rx1119_start
    sub rx1119_off, rx1119_pos, 1
    substr rx1119_tgt, rx1119_tgt, rx1119_off
  rx1119_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1123_done
    goto rxscan1123_scan
  rxscan1123_loop:
    ($P10) = rx1119_cur."from"()
    inc $P10
    set rx1119_pos, $P10
    ge rx1119_pos, rx1119_eos, rxscan1123_done
  rxscan1123_scan:
    set_addr $I10, rxscan1123_loop
    rx1119_cur."!mark_push"(0, rx1119_pos, $I10)
  rxscan1123_done:
.annotate 'line', 498
  # rx subcapture "sym"
    set_addr $I10, rxcap_1124_fail
    rx1119_cur."!mark_push"(0, rx1119_pos, $I10)
  # rx literal  "ne"
    add $I11, rx1119_pos, 2
    gt $I11, rx1119_eos, rx1119_fail
    sub $I11, rx1119_pos, rx1119_off
    substr $S10, rx1119_tgt, $I11, 2
    ne $S10, "ne", rx1119_fail
    add rx1119_pos, 2
    set_addr $I10, rxcap_1124_fail
    ($I12, $I11) = rx1119_cur."!mark_peek"($I10)
    rx1119_cur."!cursor_pos"($I11)
    ($P10) = rx1119_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1119_pos, "")
    rx1119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1124_done
  rxcap_1124_fail:
    goto rx1119_fail
  rxcap_1124_done:
  # rx subrule "O" subtype=capture negate=
    rx1119_cur."!cursor_pos"(rx1119_pos)
    $P10 = rx1119_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx1119_fail
    rx1119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1119_pos = $P10."pos"()
  # rx pass
    rx1119_cur."!cursor_pass"(rx1119_pos, "infix:sym<ne>")
    rx1119_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx1119_pos)
    .return (rx1119_cur)
  rx1119_fail:
.annotate 'line', 422
    (rx1119_rep, rx1119_pos, $I10, $P10) = rx1119_cur."!mark_fail"(0)
    lt rx1119_pos, -1, rx1119_done
    eq rx1119_pos, -1, rx1119_fail
    jump $I10
  rx1119_done:
    rx1119_cur."!cursor_fail"()
    rx1119_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx1119_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("286_1273727990.68261") :method
.annotate 'line', 422
    $P1121 = self."!PREFIX__!subrule"("O", "ne")
    new $P1122, "ResizablePMCArray"
    push $P1122, $P1121
    .return ($P1122)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("287_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1126_tgt
    .local int rx1126_pos
    .local int rx1126_off
    .local int rx1126_eos
    .local int rx1126_rep
    .local pmc rx1126_cur
    (rx1126_cur, rx1126_pos, rx1126_tgt) = self."!cursor_start"()
    rx1126_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx1126_cur
    .local pmc match
    .lex "$/", match
    length rx1126_eos, rx1126_tgt
    set rx1126_off, 0
    lt rx1126_pos, 2, rx1126_start
    sub rx1126_off, rx1126_pos, 1
    substr rx1126_tgt, rx1126_tgt, rx1126_off
  rx1126_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1130_done
    goto rxscan1130_scan
  rxscan1130_loop:
    ($P10) = rx1126_cur."from"()
    inc $P10
    set rx1126_pos, $P10
    ge rx1126_pos, rx1126_eos, rxscan1130_done
  rxscan1130_scan:
    set_addr $I10, rxscan1130_loop
    rx1126_cur."!mark_push"(0, rx1126_pos, $I10)
  rxscan1130_done:
.annotate 'line', 499
  # rx subcapture "sym"
    set_addr $I10, rxcap_1131_fail
    rx1126_cur."!mark_push"(0, rx1126_pos, $I10)
  # rx literal  "le"
    add $I11, rx1126_pos, 2
    gt $I11, rx1126_eos, rx1126_fail
    sub $I11, rx1126_pos, rx1126_off
    substr $S10, rx1126_tgt, $I11, 2
    ne $S10, "le", rx1126_fail
    add rx1126_pos, 2
    set_addr $I10, rxcap_1131_fail
    ($I12, $I11) = rx1126_cur."!mark_peek"($I10)
    rx1126_cur."!cursor_pos"($I11)
    ($P10) = rx1126_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1126_pos, "")
    rx1126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1131_done
  rxcap_1131_fail:
    goto rx1126_fail
  rxcap_1131_done:
  # rx subrule "O" subtype=capture negate=
    rx1126_cur."!cursor_pos"(rx1126_pos)
    $P10 = rx1126_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx1126_fail
    rx1126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1126_pos = $P10."pos"()
  # rx pass
    rx1126_cur."!cursor_pass"(rx1126_pos, "infix:sym<le>")
    rx1126_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx1126_pos)
    .return (rx1126_cur)
  rx1126_fail:
.annotate 'line', 422
    (rx1126_rep, rx1126_pos, $I10, $P10) = rx1126_cur."!mark_fail"(0)
    lt rx1126_pos, -1, rx1126_done
    eq rx1126_pos, -1, rx1126_fail
    jump $I10
  rx1126_done:
    rx1126_cur."!cursor_fail"()
    rx1126_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx1126_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("288_1273727990.68261") :method
.annotate 'line', 422
    $P1128 = self."!PREFIX__!subrule"("O", "le")
    new $P1129, "ResizablePMCArray"
    push $P1129, $P1128
    .return ($P1129)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("289_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1133_tgt
    .local int rx1133_pos
    .local int rx1133_off
    .local int rx1133_eos
    .local int rx1133_rep
    .local pmc rx1133_cur
    (rx1133_cur, rx1133_pos, rx1133_tgt) = self."!cursor_start"()
    rx1133_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx1133_cur
    .local pmc match
    .lex "$/", match
    length rx1133_eos, rx1133_tgt
    set rx1133_off, 0
    lt rx1133_pos, 2, rx1133_start
    sub rx1133_off, rx1133_pos, 1
    substr rx1133_tgt, rx1133_tgt, rx1133_off
  rx1133_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1137_done
    goto rxscan1137_scan
  rxscan1137_loop:
    ($P10) = rx1133_cur."from"()
    inc $P10
    set rx1133_pos, $P10
    ge rx1133_pos, rx1133_eos, rxscan1137_done
  rxscan1137_scan:
    set_addr $I10, rxscan1137_loop
    rx1133_cur."!mark_push"(0, rx1133_pos, $I10)
  rxscan1137_done:
.annotate 'line', 500
  # rx subcapture "sym"
    set_addr $I10, rxcap_1138_fail
    rx1133_cur."!mark_push"(0, rx1133_pos, $I10)
  # rx literal  "ge"
    add $I11, rx1133_pos, 2
    gt $I11, rx1133_eos, rx1133_fail
    sub $I11, rx1133_pos, rx1133_off
    substr $S10, rx1133_tgt, $I11, 2
    ne $S10, "ge", rx1133_fail
    add rx1133_pos, 2
    set_addr $I10, rxcap_1138_fail
    ($I12, $I11) = rx1133_cur."!mark_peek"($I10)
    rx1133_cur."!cursor_pos"($I11)
    ($P10) = rx1133_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1133_pos, "")
    rx1133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1138_done
  rxcap_1138_fail:
    goto rx1133_fail
  rxcap_1138_done:
  # rx subrule "O" subtype=capture negate=
    rx1133_cur."!cursor_pos"(rx1133_pos)
    $P10 = rx1133_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx1133_fail
    rx1133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1133_pos = $P10."pos"()
  # rx pass
    rx1133_cur."!cursor_pass"(rx1133_pos, "infix:sym<ge>")
    rx1133_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx1133_pos)
    .return (rx1133_cur)
  rx1133_fail:
.annotate 'line', 422
    (rx1133_rep, rx1133_pos, $I10, $P10) = rx1133_cur."!mark_fail"(0)
    lt rx1133_pos, -1, rx1133_done
    eq rx1133_pos, -1, rx1133_fail
    jump $I10
  rx1133_done:
    rx1133_cur."!cursor_fail"()
    rx1133_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx1133_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("290_1273727990.68261") :method
.annotate 'line', 422
    $P1135 = self."!PREFIX__!subrule"("O", "ge")
    new $P1136, "ResizablePMCArray"
    push $P1136, $P1135
    .return ($P1136)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("291_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1140_tgt
    .local int rx1140_pos
    .local int rx1140_off
    .local int rx1140_eos
    .local int rx1140_rep
    .local pmc rx1140_cur
    (rx1140_cur, rx1140_pos, rx1140_tgt) = self."!cursor_start"()
    rx1140_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx1140_cur
    .local pmc match
    .lex "$/", match
    length rx1140_eos, rx1140_tgt
    set rx1140_off, 0
    lt rx1140_pos, 2, rx1140_start
    sub rx1140_off, rx1140_pos, 1
    substr rx1140_tgt, rx1140_tgt, rx1140_off
  rx1140_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1144_done
    goto rxscan1144_scan
  rxscan1144_loop:
    ($P10) = rx1140_cur."from"()
    inc $P10
    set rx1140_pos, $P10
    ge rx1140_pos, rx1140_eos, rxscan1144_done
  rxscan1144_scan:
    set_addr $I10, rxscan1144_loop
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  rxscan1144_done:
.annotate 'line', 501
  # rx subcapture "sym"
    set_addr $I10, rxcap_1145_fail
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  # rx literal  "lt"
    add $I11, rx1140_pos, 2
    gt $I11, rx1140_eos, rx1140_fail
    sub $I11, rx1140_pos, rx1140_off
    substr $S10, rx1140_tgt, $I11, 2
    ne $S10, "lt", rx1140_fail
    add rx1140_pos, 2
    set_addr $I10, rxcap_1145_fail
    ($I12, $I11) = rx1140_cur."!mark_peek"($I10)
    rx1140_cur."!cursor_pos"($I11)
    ($P10) = rx1140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1140_pos, "")
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1145_done
  rxcap_1145_fail:
    goto rx1140_fail
  rxcap_1145_done:
  # rx subrule "O" subtype=capture negate=
    rx1140_cur."!cursor_pos"(rx1140_pos)
    $P10 = rx1140_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx1140_fail
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1140_pos = $P10."pos"()
  # rx pass
    rx1140_cur."!cursor_pass"(rx1140_pos, "infix:sym<lt>")
    rx1140_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx1140_pos)
    .return (rx1140_cur)
  rx1140_fail:
.annotate 'line', 422
    (rx1140_rep, rx1140_pos, $I10, $P10) = rx1140_cur."!mark_fail"(0)
    lt rx1140_pos, -1, rx1140_done
    eq rx1140_pos, -1, rx1140_fail
    jump $I10
  rx1140_done:
    rx1140_cur."!cursor_fail"()
    rx1140_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx1140_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("292_1273727990.68261") :method
.annotate 'line', 422
    $P1142 = self."!PREFIX__!subrule"("O", "lt")
    new $P1143, "ResizablePMCArray"
    push $P1143, $P1142
    .return ($P1143)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("293_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1147_tgt
    .local int rx1147_pos
    .local int rx1147_off
    .local int rx1147_eos
    .local int rx1147_rep
    .local pmc rx1147_cur
    (rx1147_cur, rx1147_pos, rx1147_tgt) = self."!cursor_start"()
    rx1147_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx1147_cur
    .local pmc match
    .lex "$/", match
    length rx1147_eos, rx1147_tgt
    set rx1147_off, 0
    lt rx1147_pos, 2, rx1147_start
    sub rx1147_off, rx1147_pos, 1
    substr rx1147_tgt, rx1147_tgt, rx1147_off
  rx1147_start:
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
.annotate 'line', 502
  # rx subcapture "sym"
    set_addr $I10, rxcap_1152_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  # rx literal  "gt"
    add $I11, rx1147_pos, 2
    gt $I11, rx1147_eos, rx1147_fail
    sub $I11, rx1147_pos, rx1147_off
    substr $S10, rx1147_tgt, $I11, 2
    ne $S10, "gt", rx1147_fail
    add rx1147_pos, 2
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
    $P10 = rx1147_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx1147_fail
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1147_pos = $P10."pos"()
  # rx pass
    rx1147_cur."!cursor_pass"(rx1147_pos, "infix:sym<gt>")
    rx1147_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx1147_pos)
    .return (rx1147_cur)
  rx1147_fail:
.annotate 'line', 422
    (rx1147_rep, rx1147_pos, $I10, $P10) = rx1147_cur."!mark_fail"(0)
    lt rx1147_pos, -1, rx1147_done
    eq rx1147_pos, -1, rx1147_fail
    jump $I10
  rx1147_done:
    rx1147_cur."!cursor_fail"()
    rx1147_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx1147_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("294_1273727990.68261") :method
.annotate 'line', 422
    $P1149 = self."!PREFIX__!subrule"("O", "gt")
    new $P1150, "ResizablePMCArray"
    push $P1150, $P1149
    .return ($P1150)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("295_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1154_tgt
    .local int rx1154_pos
    .local int rx1154_off
    .local int rx1154_eos
    .local int rx1154_rep
    .local pmc rx1154_cur
    (rx1154_cur, rx1154_pos, rx1154_tgt) = self."!cursor_start"()
    rx1154_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx1154_cur
    .local pmc match
    .lex "$/", match
    length rx1154_eos, rx1154_tgt
    set rx1154_off, 0
    lt rx1154_pos, 2, rx1154_start
    sub rx1154_off, rx1154_pos, 1
    substr rx1154_tgt, rx1154_tgt, rx1154_off
  rx1154_start:
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
.annotate 'line', 503
  # rx subcapture "sym"
    set_addr $I10, rxcap_1159_fail
    rx1154_cur."!mark_push"(0, rx1154_pos, $I10)
  # rx literal  "=:="
    add $I11, rx1154_pos, 3
    gt $I11, rx1154_eos, rx1154_fail
    sub $I11, rx1154_pos, rx1154_off
    substr $S10, rx1154_tgt, $I11, 3
    ne $S10, "=:=", rx1154_fail
    add rx1154_pos, 3
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
    $P10 = rx1154_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx1154_fail
    rx1154_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1154_pos = $P10."pos"()
  # rx pass
    rx1154_cur."!cursor_pass"(rx1154_pos, "infix:sym<=:=>")
    rx1154_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx1154_pos)
    .return (rx1154_cur)
  rx1154_fail:
.annotate 'line', 422
    (rx1154_rep, rx1154_pos, $I10, $P10) = rx1154_cur."!mark_fail"(0)
    lt rx1154_pos, -1, rx1154_done
    eq rx1154_pos, -1, rx1154_fail
    jump $I10
  rx1154_done:
    rx1154_cur."!cursor_fail"()
    rx1154_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx1154_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("296_1273727990.68261") :method
.annotate 'line', 422
    $P1156 = self."!PREFIX__!subrule"("O", "=:=")
    new $P1157, "ResizablePMCArray"
    push $P1157, $P1156
    .return ($P1157)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~~>"  :subid("297_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1161_tgt
    .local int rx1161_pos
    .local int rx1161_off
    .local int rx1161_eos
    .local int rx1161_rep
    .local pmc rx1161_cur
    (rx1161_cur, rx1161_pos, rx1161_tgt) = self."!cursor_start"()
    rx1161_cur."!cursor_debug"("START ", "infix:sym<~~>")
    .lex unicode:"$\x{a2}", rx1161_cur
    .local pmc match
    .lex "$/", match
    length rx1161_eos, rx1161_tgt
    set rx1161_off, 0
    lt rx1161_pos, 2, rx1161_start
    sub rx1161_off, rx1161_pos, 1
    substr rx1161_tgt, rx1161_tgt, rx1161_off
  rx1161_start:
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
.annotate 'line', 504
  # rx subcapture "sym"
    set_addr $I10, rxcap_1166_fail
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  # rx literal  "~~"
    add $I11, rx1161_pos, 2
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    substr $S10, rx1161_tgt, $I11, 2
    ne $S10, "~~", rx1161_fail
    add rx1161_pos, 2
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
    $P10 = rx1161_cur."O"("%relational, :reducecheck<smartmatch>")
    unless $P10, rx1161_fail
    rx1161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1161_pos = $P10."pos"()
  # rx pass
    rx1161_cur."!cursor_pass"(rx1161_pos, "infix:sym<~~>")
    rx1161_cur."!cursor_debug"("PASS  ", "infix:sym<~~>", " at pos=", rx1161_pos)
    .return (rx1161_cur)
  rx1161_fail:
.annotate 'line', 422
    (rx1161_rep, rx1161_pos, $I10, $P10) = rx1161_cur."!mark_fail"(0)
    lt rx1161_pos, -1, rx1161_done
    eq rx1161_pos, -1, rx1161_fail
    jump $I10
  rx1161_done:
    rx1161_cur."!cursor_fail"()
    rx1161_cur."!cursor_debug"("FAIL  ", "infix:sym<~~>")
    .return (rx1161_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~~>"  :subid("298_1273727990.68261") :method
.annotate 'line', 422
    $P1163 = self."!PREFIX__!subrule"("O", "~~")
    new $P1164, "ResizablePMCArray"
    push $P1164, $P1163
    .return ($P1164)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("299_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1168_tgt
    .local int rx1168_pos
    .local int rx1168_off
    .local int rx1168_eos
    .local int rx1168_rep
    .local pmc rx1168_cur
    (rx1168_cur, rx1168_pos, rx1168_tgt) = self."!cursor_start"()
    rx1168_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx1168_cur
    .local pmc match
    .lex "$/", match
    length rx1168_eos, rx1168_tgt
    set rx1168_off, 0
    lt rx1168_pos, 2, rx1168_start
    sub rx1168_off, rx1168_pos, 1
    substr rx1168_tgt, rx1168_tgt, rx1168_off
  rx1168_start:
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
.annotate 'line', 506
  # rx subcapture "sym"
    set_addr $I10, rxcap_1173_fail
    rx1168_cur."!mark_push"(0, rx1168_pos, $I10)
  # rx literal  "&&"
    add $I11, rx1168_pos, 2
    gt $I11, rx1168_eos, rx1168_fail
    sub $I11, rx1168_pos, rx1168_off
    substr $S10, rx1168_tgt, $I11, 2
    ne $S10, "&&", rx1168_fail
    add rx1168_pos, 2
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
    $P10 = rx1168_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx1168_fail
    rx1168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1168_pos = $P10."pos"()
  # rx pass
    rx1168_cur."!cursor_pass"(rx1168_pos, "infix:sym<&&>")
    rx1168_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx1168_pos)
    .return (rx1168_cur)
  rx1168_fail:
.annotate 'line', 422
    (rx1168_rep, rx1168_pos, $I10, $P10) = rx1168_cur."!mark_fail"(0)
    lt rx1168_pos, -1, rx1168_done
    eq rx1168_pos, -1, rx1168_fail
    jump $I10
  rx1168_done:
    rx1168_cur."!cursor_fail"()
    rx1168_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx1168_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("300_1273727990.68261") :method
.annotate 'line', 422
    $P1170 = self."!PREFIX__!subrule"("O", "&&")
    new $P1171, "ResizablePMCArray"
    push $P1171, $P1170
    .return ($P1171)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("301_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1175_tgt
    .local int rx1175_pos
    .local int rx1175_off
    .local int rx1175_eos
    .local int rx1175_rep
    .local pmc rx1175_cur
    (rx1175_cur, rx1175_pos, rx1175_tgt) = self."!cursor_start"()
    rx1175_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx1175_cur
    .local pmc match
    .lex "$/", match
    length rx1175_eos, rx1175_tgt
    set rx1175_off, 0
    lt rx1175_pos, 2, rx1175_start
    sub rx1175_off, rx1175_pos, 1
    substr rx1175_tgt, rx1175_tgt, rx1175_off
  rx1175_start:
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
.annotate 'line', 508
  # rx subcapture "sym"
    set_addr $I10, rxcap_1180_fail
    rx1175_cur."!mark_push"(0, rx1175_pos, $I10)
  # rx literal  "||"
    add $I11, rx1175_pos, 2
    gt $I11, rx1175_eos, rx1175_fail
    sub $I11, rx1175_pos, rx1175_off
    substr $S10, rx1175_tgt, $I11, 2
    ne $S10, "||", rx1175_fail
    add rx1175_pos, 2
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
    $P10 = rx1175_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx1175_fail
    rx1175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1175_pos = $P10."pos"()
  # rx pass
    rx1175_cur."!cursor_pass"(rx1175_pos, "infix:sym<||>")
    rx1175_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx1175_pos)
    .return (rx1175_cur)
  rx1175_fail:
.annotate 'line', 422
    (rx1175_rep, rx1175_pos, $I10, $P10) = rx1175_cur."!mark_fail"(0)
    lt rx1175_pos, -1, rx1175_done
    eq rx1175_pos, -1, rx1175_fail
    jump $I10
  rx1175_done:
    rx1175_cur."!cursor_fail"()
    rx1175_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx1175_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("302_1273727990.68261") :method
.annotate 'line', 422
    $P1177 = self."!PREFIX__!subrule"("O", "||")
    new $P1178, "ResizablePMCArray"
    push $P1178, $P1177
    .return ($P1178)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("303_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1182_tgt
    .local int rx1182_pos
    .local int rx1182_off
    .local int rx1182_eos
    .local int rx1182_rep
    .local pmc rx1182_cur
    (rx1182_cur, rx1182_pos, rx1182_tgt) = self."!cursor_start"()
    rx1182_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx1182_cur
    .local pmc match
    .lex "$/", match
    length rx1182_eos, rx1182_tgt
    set rx1182_off, 0
    lt rx1182_pos, 2, rx1182_start
    sub rx1182_off, rx1182_pos, 1
    substr rx1182_tgt, rx1182_tgt, rx1182_off
  rx1182_start:
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
.annotate 'line', 509
  # rx subcapture "sym"
    set_addr $I10, rxcap_1187_fail
    rx1182_cur."!mark_push"(0, rx1182_pos, $I10)
  # rx literal  "//"
    add $I11, rx1182_pos, 2
    gt $I11, rx1182_eos, rx1182_fail
    sub $I11, rx1182_pos, rx1182_off
    substr $S10, rx1182_tgt, $I11, 2
    ne $S10, "//", rx1182_fail
    add rx1182_pos, 2
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
    $P10 = rx1182_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx1182_fail
    rx1182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1182_pos = $P10."pos"()
  # rx pass
    rx1182_cur."!cursor_pass"(rx1182_pos, "infix:sym<//>")
    rx1182_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx1182_pos)
    .return (rx1182_cur)
  rx1182_fail:
.annotate 'line', 422
    (rx1182_rep, rx1182_pos, $I10, $P10) = rx1182_cur."!mark_fail"(0)
    lt rx1182_pos, -1, rx1182_done
    eq rx1182_pos, -1, rx1182_fail
    jump $I10
  rx1182_done:
    rx1182_cur."!cursor_fail"()
    rx1182_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx1182_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("304_1273727990.68261") :method
.annotate 'line', 422
    $P1184 = self."!PREFIX__!subrule"("O", "//")
    new $P1185, "ResizablePMCArray"
    push $P1185, $P1184
    .return ($P1185)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("305_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1189_tgt
    .local int rx1189_pos
    .local int rx1189_off
    .local int rx1189_eos
    .local int rx1189_rep
    .local pmc rx1189_cur
    (rx1189_cur, rx1189_pos, rx1189_tgt) = self."!cursor_start"()
    rx1189_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx1189_cur
    .local pmc match
    .lex "$/", match
    length rx1189_eos, rx1189_tgt
    set rx1189_off, 0
    lt rx1189_pos, 2, rx1189_start
    sub rx1189_off, rx1189_pos, 1
    substr rx1189_tgt, rx1189_tgt, rx1189_off
  rx1189_start:
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
.annotate 'line', 512
  # rx literal  "??"
    add $I11, rx1189_pos, 2
    gt $I11, rx1189_eos, rx1189_fail
    sub $I11, rx1189_pos, rx1189_off
    substr $S10, rx1189_tgt, $I11, 2
    ne $S10, "??", rx1189_fail
    add rx1189_pos, 2
.annotate 'line', 513
  # rx subrule "ws" subtype=method negate=
    rx1189_cur."!cursor_pos"(rx1189_pos)
    $P10 = rx1189_cur."ws"()
    unless $P10, rx1189_fail
    rx1189_pos = $P10."pos"()
.annotate 'line', 514
  # rx subrule "EXPR" subtype=capture negate=
    rx1189_cur."!cursor_pos"(rx1189_pos)
    $P10 = rx1189_cur."EXPR"("i=")
    unless $P10, rx1189_fail
    rx1189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx1189_pos = $P10."pos"()
.annotate 'line', 515
  # rx literal  "!!"
    add $I11, rx1189_pos, 2
    gt $I11, rx1189_eos, rx1189_fail
    sub $I11, rx1189_pos, rx1189_off
    substr $S10, rx1189_tgt, $I11, 2
    ne $S10, "!!", rx1189_fail
    add rx1189_pos, 2
.annotate 'line', 516
  # rx subrule "O" subtype=capture negate=
    rx1189_cur."!cursor_pos"(rx1189_pos)
    $P10 = rx1189_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx1189_fail
    rx1189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1189_pos = $P10."pos"()
.annotate 'line', 511
  # rx pass
    rx1189_cur."!cursor_pass"(rx1189_pos, "infix:sym<?? !!>")
    rx1189_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx1189_pos)
    .return (rx1189_cur)
  rx1189_fail:
.annotate 'line', 422
    (rx1189_rep, rx1189_pos, $I10, $P10) = rx1189_cur."!mark_fail"(0)
    lt rx1189_pos, -1, rx1189_done
    eq rx1189_pos, -1, rx1189_fail
    jump $I10
  rx1189_done:
    rx1189_cur."!cursor_fail"()
    rx1189_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx1189_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("306_1273727990.68261") :method
.annotate 'line', 422
    $P1191 = self."!PREFIX__!subrule"("", "??")
    new $P1192, "ResizablePMCArray"
    push $P1192, $P1191
    .return ($P1192)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("307_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1195_tgt
    .local int rx1195_pos
    .local int rx1195_off
    .local int rx1195_eos
    .local int rx1195_rep
    .local pmc rx1195_cur
    (rx1195_cur, rx1195_pos, rx1195_tgt) = self."!cursor_start"()
    rx1195_cur."!cursor_debug"("START ", "infix:sym<=>")
    .lex unicode:"$\x{a2}", rx1195_cur
    .local pmc match
    .lex "$/", match
    length rx1195_eos, rx1195_tgt
    set rx1195_off, 0
    lt rx1195_pos, 2, rx1195_start
    sub rx1195_off, rx1195_pos, 1
    substr rx1195_tgt, rx1195_tgt, rx1195_off
  rx1195_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1199_done
    goto rxscan1199_scan
  rxscan1199_loop:
    ($P10) = rx1195_cur."from"()
    inc $P10
    set rx1195_pos, $P10
    ge rx1195_pos, rx1195_eos, rxscan1199_done
  rxscan1199_scan:
    set_addr $I10, rxscan1199_loop
    rx1195_cur."!mark_push"(0, rx1195_pos, $I10)
  rxscan1199_done:
.annotate 'line', 520
  # rx subcapture "sym"
    set_addr $I10, rxcap_1200_fail
    rx1195_cur."!mark_push"(0, rx1195_pos, $I10)
  # rx literal  "="
    add $I11, rx1195_pos, 1
    gt $I11, rx1195_eos, rx1195_fail
    sub $I11, rx1195_pos, rx1195_off
    substr $S10, rx1195_tgt, $I11, 1
    ne $S10, "=", rx1195_fail
    add rx1195_pos, 1
    set_addr $I10, rxcap_1200_fail
    ($I12, $I11) = rx1195_cur."!mark_peek"($I10)
    rx1195_cur."!cursor_pos"($I11)
    ($P10) = rx1195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1195_pos, "")
    rx1195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1200_done
  rxcap_1200_fail:
    goto rx1195_fail
  rxcap_1200_done:
  # rx subrule "panic" subtype=method negate=
    rx1195_cur."!cursor_pos"(rx1195_pos)
    $P10 = rx1195_cur."panic"("Assignment (\"=\") not supported in NQP, use \":=\" instead")
    unless $P10, rx1195_fail
    rx1195_pos = $P10."pos"()
.annotate 'line', 519
  # rx pass
    rx1195_cur."!cursor_pass"(rx1195_pos, "infix:sym<=>")
    rx1195_cur."!cursor_debug"("PASS  ", "infix:sym<=>", " at pos=", rx1195_pos)
    .return (rx1195_cur)
  rx1195_fail:
.annotate 'line', 422
    (rx1195_rep, rx1195_pos, $I10, $P10) = rx1195_cur."!mark_fail"(0)
    lt rx1195_pos, -1, rx1195_done
    eq rx1195_pos, -1, rx1195_fail
    jump $I10
  rx1195_done:
    rx1195_cur."!cursor_fail"()
    rx1195_cur."!cursor_debug"("FAIL  ", "infix:sym<=>")
    .return (rx1195_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=>"  :subid("308_1273727990.68261") :method
.annotate 'line', 422
    $P1197 = self."!PREFIX__!subrule"("", "=")
    new $P1198, "ResizablePMCArray"
    push $P1198, $P1197
    .return ($P1198)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("309_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1202_tgt
    .local int rx1202_pos
    .local int rx1202_off
    .local int rx1202_eos
    .local int rx1202_rep
    .local pmc rx1202_cur
    (rx1202_cur, rx1202_pos, rx1202_tgt) = self."!cursor_start"()
    rx1202_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx1202_cur
    .local pmc match
    .lex "$/", match
    length rx1202_eos, rx1202_tgt
    set rx1202_off, 0
    lt rx1202_pos, 2, rx1202_start
    sub rx1202_off, rx1202_pos, 1
    substr rx1202_tgt, rx1202_tgt, rx1202_off
  rx1202_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1206_done
    goto rxscan1206_scan
  rxscan1206_loop:
    ($P10) = rx1202_cur."from"()
    inc $P10
    set rx1202_pos, $P10
    ge rx1202_pos, rx1202_eos, rxscan1206_done
  rxscan1206_scan:
    set_addr $I10, rxscan1206_loop
    rx1202_cur."!mark_push"(0, rx1202_pos, $I10)
  rxscan1206_done:
.annotate 'line', 522
  # rx subcapture "sym"
    set_addr $I10, rxcap_1207_fail
    rx1202_cur."!mark_push"(0, rx1202_pos, $I10)
  # rx literal  ":="
    add $I11, rx1202_pos, 2
    gt $I11, rx1202_eos, rx1202_fail
    sub $I11, rx1202_pos, rx1202_off
    substr $S10, rx1202_tgt, $I11, 2
    ne $S10, ":=", rx1202_fail
    add rx1202_pos, 2
    set_addr $I10, rxcap_1207_fail
    ($I12, $I11) = rx1202_cur."!mark_peek"($I10)
    rx1202_cur."!cursor_pos"($I11)
    ($P10) = rx1202_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1202_pos, "")
    rx1202_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1207_done
  rxcap_1207_fail:
    goto rx1202_fail
  rxcap_1207_done:
  # rx subrule "O" subtype=capture negate=
    rx1202_cur."!cursor_pos"(rx1202_pos)
    $P10 = rx1202_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1202_fail
    rx1202_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1202_pos = $P10."pos"()
  # rx pass
    rx1202_cur."!cursor_pass"(rx1202_pos, "infix:sym<:=>")
    rx1202_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx1202_pos)
    .return (rx1202_cur)
  rx1202_fail:
.annotate 'line', 422
    (rx1202_rep, rx1202_pos, $I10, $P10) = rx1202_cur."!mark_fail"(0)
    lt rx1202_pos, -1, rx1202_done
    eq rx1202_pos, -1, rx1202_fail
    jump $I10
  rx1202_done:
    rx1202_cur."!cursor_fail"()
    rx1202_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx1202_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("310_1273727990.68261") :method
.annotate 'line', 422
    $P1204 = self."!PREFIX__!subrule"("O", ":=")
    new $P1205, "ResizablePMCArray"
    push $P1205, $P1204
    .return ($P1205)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("311_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1209_tgt
    .local int rx1209_pos
    .local int rx1209_off
    .local int rx1209_eos
    .local int rx1209_rep
    .local pmc rx1209_cur
    (rx1209_cur, rx1209_pos, rx1209_tgt) = self."!cursor_start"()
    rx1209_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx1209_cur
    .local pmc match
    .lex "$/", match
    length rx1209_eos, rx1209_tgt
    set rx1209_off, 0
    lt rx1209_pos, 2, rx1209_start
    sub rx1209_off, rx1209_pos, 1
    substr rx1209_tgt, rx1209_tgt, rx1209_off
  rx1209_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1213_done
    goto rxscan1213_scan
  rxscan1213_loop:
    ($P10) = rx1209_cur."from"()
    inc $P10
    set rx1209_pos, $P10
    ge rx1209_pos, rx1209_eos, rxscan1213_done
  rxscan1213_scan:
    set_addr $I10, rxscan1213_loop
    rx1209_cur."!mark_push"(0, rx1209_pos, $I10)
  rxscan1213_done:
.annotate 'line', 523
  # rx subcapture "sym"
    set_addr $I10, rxcap_1214_fail
    rx1209_cur."!mark_push"(0, rx1209_pos, $I10)
  # rx literal  "::="
    add $I11, rx1209_pos, 3
    gt $I11, rx1209_eos, rx1209_fail
    sub $I11, rx1209_pos, rx1209_off
    substr $S10, rx1209_tgt, $I11, 3
    ne $S10, "::=", rx1209_fail
    add rx1209_pos, 3
    set_addr $I10, rxcap_1214_fail
    ($I12, $I11) = rx1209_cur."!mark_peek"($I10)
    rx1209_cur."!cursor_pos"($I11)
    ($P10) = rx1209_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1209_pos, "")
    rx1209_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1214_done
  rxcap_1214_fail:
    goto rx1209_fail
  rxcap_1214_done:
  # rx subrule "O" subtype=capture negate=
    rx1209_cur."!cursor_pos"(rx1209_pos)
    $P10 = rx1209_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1209_fail
    rx1209_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1209_pos = $P10."pos"()
  # rx pass
    rx1209_cur."!cursor_pass"(rx1209_pos, "infix:sym<::=>")
    rx1209_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx1209_pos)
    .return (rx1209_cur)
  rx1209_fail:
.annotate 'line', 422
    (rx1209_rep, rx1209_pos, $I10, $P10) = rx1209_cur."!mark_fail"(0)
    lt rx1209_pos, -1, rx1209_done
    eq rx1209_pos, -1, rx1209_fail
    jump $I10
  rx1209_done:
    rx1209_cur."!cursor_fail"()
    rx1209_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx1209_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("312_1273727990.68261") :method
.annotate 'line', 422
    $P1211 = self."!PREFIX__!subrule"("O", "::=")
    new $P1212, "ResizablePMCArray"
    push $P1212, $P1211
    .return ($P1212)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("313_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1216_tgt
    .local int rx1216_pos
    .local int rx1216_off
    .local int rx1216_eos
    .local int rx1216_rep
    .local pmc rx1216_cur
    (rx1216_cur, rx1216_pos, rx1216_tgt) = self."!cursor_start"()
    rx1216_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx1216_cur
    .local pmc match
    .lex "$/", match
    length rx1216_eos, rx1216_tgt
    set rx1216_off, 0
    lt rx1216_pos, 2, rx1216_start
    sub rx1216_off, rx1216_pos, 1
    substr rx1216_tgt, rx1216_tgt, rx1216_off
  rx1216_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1220_done
    goto rxscan1220_scan
  rxscan1220_loop:
    ($P10) = rx1216_cur."from"()
    inc $P10
    set rx1216_pos, $P10
    ge rx1216_pos, rx1216_eos, rxscan1220_done
  rxscan1220_scan:
    set_addr $I10, rxscan1220_loop
    rx1216_cur."!mark_push"(0, rx1216_pos, $I10)
  rxscan1220_done:
.annotate 'line', 525
  # rx subcapture "sym"
    set_addr $I10, rxcap_1221_fail
    rx1216_cur."!mark_push"(0, rx1216_pos, $I10)
  # rx literal  ","
    add $I11, rx1216_pos, 1
    gt $I11, rx1216_eos, rx1216_fail
    sub $I11, rx1216_pos, rx1216_off
    substr $S10, rx1216_tgt, $I11, 1
    ne $S10, ",", rx1216_fail
    add rx1216_pos, 1
    set_addr $I10, rxcap_1221_fail
    ($I12, $I11) = rx1216_cur."!mark_peek"($I10)
    rx1216_cur."!cursor_pos"($I11)
    ($P10) = rx1216_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1216_pos, "")
    rx1216_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1221_done
  rxcap_1221_fail:
    goto rx1216_fail
  rxcap_1221_done:
  # rx subrule "O" subtype=capture negate=
    rx1216_cur."!cursor_pos"(rx1216_pos)
    $P10 = rx1216_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx1216_fail
    rx1216_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1216_pos = $P10."pos"()
  # rx pass
    rx1216_cur."!cursor_pass"(rx1216_pos, "infix:sym<,>")
    rx1216_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx1216_pos)
    .return (rx1216_cur)
  rx1216_fail:
.annotate 'line', 422
    (rx1216_rep, rx1216_pos, $I10, $P10) = rx1216_cur."!mark_fail"(0)
    lt rx1216_pos, -1, rx1216_done
    eq rx1216_pos, -1, rx1216_fail
    jump $I10
  rx1216_done:
    rx1216_cur."!cursor_fail"()
    rx1216_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx1216_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("314_1273727990.68261") :method
.annotate 'line', 422
    $P1218 = self."!PREFIX__!subrule"("O", ",")
    new $P1219, "ResizablePMCArray"
    push $P1219, $P1218
    .return ($P1219)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<return>"  :subid("315_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1223_tgt
    .local int rx1223_pos
    .local int rx1223_off
    .local int rx1223_eos
    .local int rx1223_rep
    .local pmc rx1223_cur
    (rx1223_cur, rx1223_pos, rx1223_tgt) = self."!cursor_start"()
    rx1223_cur."!cursor_debug"("START ", "prefix:sym<return>")
    .lex unicode:"$\x{a2}", rx1223_cur
    .local pmc match
    .lex "$/", match
    length rx1223_eos, rx1223_tgt
    set rx1223_off, 0
    lt rx1223_pos, 2, rx1223_start
    sub rx1223_off, rx1223_pos, 1
    substr rx1223_tgt, rx1223_tgt, rx1223_off
  rx1223_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1226_done
    goto rxscan1226_scan
  rxscan1226_loop:
    ($P10) = rx1223_cur."from"()
    inc $P10
    set rx1223_pos, $P10
    ge rx1223_pos, rx1223_eos, rxscan1226_done
  rxscan1226_scan:
    set_addr $I10, rxscan1226_loop
    rx1223_cur."!mark_push"(0, rx1223_pos, $I10)
  rxscan1226_done:
.annotate 'line', 527
  # rx subcapture "sym"
    set_addr $I10, rxcap_1227_fail
    rx1223_cur."!mark_push"(0, rx1223_pos, $I10)
  # rx literal  "return"
    add $I11, rx1223_pos, 6
    gt $I11, rx1223_eos, rx1223_fail
    sub $I11, rx1223_pos, rx1223_off
    substr $S10, rx1223_tgt, $I11, 6
    ne $S10, "return", rx1223_fail
    add rx1223_pos, 6
    set_addr $I10, rxcap_1227_fail
    ($I12, $I11) = rx1223_cur."!mark_peek"($I10)
    rx1223_cur."!cursor_pos"($I11)
    ($P10) = rx1223_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1223_pos, "")
    rx1223_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1227_done
  rxcap_1227_fail:
    goto rx1223_fail
  rxcap_1227_done:
  # rx charclass s
    ge rx1223_pos, rx1223_eos, rx1223_fail
    sub $I10, rx1223_pos, rx1223_off
    is_cclass $I11, 32, rx1223_tgt, $I10
    unless $I11, rx1223_fail
    inc rx1223_pos
  # rx subrule "O" subtype=capture negate=
    rx1223_cur."!cursor_pos"(rx1223_pos)
    $P10 = rx1223_cur."O"("%list_prefix, :pasttype<return>")
    unless $P10, rx1223_fail
    rx1223_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1223_pos = $P10."pos"()
  # rx pass
    rx1223_cur."!cursor_pass"(rx1223_pos, "prefix:sym<return>")
    rx1223_cur."!cursor_debug"("PASS  ", "prefix:sym<return>", " at pos=", rx1223_pos)
    .return (rx1223_cur)
  rx1223_fail:
.annotate 'line', 422
    (rx1223_rep, rx1223_pos, $I10, $P10) = rx1223_cur."!mark_fail"(0)
    lt rx1223_pos, -1, rx1223_done
    eq rx1223_pos, -1, rx1223_fail
    jump $I10
  rx1223_done:
    rx1223_cur."!cursor_fail"()
    rx1223_cur."!cursor_debug"("FAIL  ", "prefix:sym<return>")
    .return (rx1223_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<return>"  :subid("316_1273727990.68261") :method
.annotate 'line', 422
    new $P1225, "ResizablePMCArray"
    push $P1225, "return"
    .return ($P1225)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<make>"  :subid("317_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1229_tgt
    .local int rx1229_pos
    .local int rx1229_off
    .local int rx1229_eos
    .local int rx1229_rep
    .local pmc rx1229_cur
    (rx1229_cur, rx1229_pos, rx1229_tgt) = self."!cursor_start"()
    rx1229_cur."!cursor_debug"("START ", "prefix:sym<make>")
    .lex unicode:"$\x{a2}", rx1229_cur
    .local pmc match
    .lex "$/", match
    length rx1229_eos, rx1229_tgt
    set rx1229_off, 0
    lt rx1229_pos, 2, rx1229_start
    sub rx1229_off, rx1229_pos, 1
    substr rx1229_tgt, rx1229_tgt, rx1229_off
  rx1229_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1232_done
    goto rxscan1232_scan
  rxscan1232_loop:
    ($P10) = rx1229_cur."from"()
    inc $P10
    set rx1229_pos, $P10
    ge rx1229_pos, rx1229_eos, rxscan1232_done
  rxscan1232_scan:
    set_addr $I10, rxscan1232_loop
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
  rxscan1232_done:
.annotate 'line', 528
  # rx subcapture "sym"
    set_addr $I10, rxcap_1233_fail
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
  # rx literal  "make"
    add $I11, rx1229_pos, 4
    gt $I11, rx1229_eos, rx1229_fail
    sub $I11, rx1229_pos, rx1229_off
    substr $S10, rx1229_tgt, $I11, 4
    ne $S10, "make", rx1229_fail
    add rx1229_pos, 4
    set_addr $I10, rxcap_1233_fail
    ($I12, $I11) = rx1229_cur."!mark_peek"($I10)
    rx1229_cur."!cursor_pos"($I11)
    ($P10) = rx1229_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1229_pos, "")
    rx1229_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1233_done
  rxcap_1233_fail:
    goto rx1229_fail
  rxcap_1233_done:
  # rx charclass s
    ge rx1229_pos, rx1229_eos, rx1229_fail
    sub $I10, rx1229_pos, rx1229_off
    is_cclass $I11, 32, rx1229_tgt, $I10
    unless $I11, rx1229_fail
    inc rx1229_pos
  # rx subrule "O" subtype=capture negate=
    rx1229_cur."!cursor_pos"(rx1229_pos)
    $P10 = rx1229_cur."O"("%list_prefix")
    unless $P10, rx1229_fail
    rx1229_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1229_pos = $P10."pos"()
  # rx pass
    rx1229_cur."!cursor_pass"(rx1229_pos, "prefix:sym<make>")
    rx1229_cur."!cursor_debug"("PASS  ", "prefix:sym<make>", " at pos=", rx1229_pos)
    .return (rx1229_cur)
  rx1229_fail:
.annotate 'line', 422
    (rx1229_rep, rx1229_pos, $I10, $P10) = rx1229_cur."!mark_fail"(0)
    lt rx1229_pos, -1, rx1229_done
    eq rx1229_pos, -1, rx1229_fail
    jump $I10
  rx1229_done:
    rx1229_cur."!cursor_fail"()
    rx1229_cur."!cursor_debug"("FAIL  ", "prefix:sym<make>")
    .return (rx1229_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<make>"  :subid("318_1273727990.68261") :method
.annotate 'line', 422
    new $P1231, "ResizablePMCArray"
    push $P1231, "make"
    .return ($P1231)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<last>"  :subid("319_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1235_tgt
    .local int rx1235_pos
    .local int rx1235_off
    .local int rx1235_eos
    .local int rx1235_rep
    .local pmc rx1235_cur
    (rx1235_cur, rx1235_pos, rx1235_tgt) = self."!cursor_start"()
    rx1235_cur."!cursor_debug"("START ", "term:sym<last>")
    .lex unicode:"$\x{a2}", rx1235_cur
    .local pmc match
    .lex "$/", match
    length rx1235_eos, rx1235_tgt
    set rx1235_off, 0
    lt rx1235_pos, 2, rx1235_start
    sub rx1235_off, rx1235_pos, 1
    substr rx1235_tgt, rx1235_tgt, rx1235_off
  rx1235_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1238_done
    goto rxscan1238_scan
  rxscan1238_loop:
    ($P10) = rx1235_cur."from"()
    inc $P10
    set rx1235_pos, $P10
    ge rx1235_pos, rx1235_eos, rxscan1238_done
  rxscan1238_scan:
    set_addr $I10, rxscan1238_loop
    rx1235_cur."!mark_push"(0, rx1235_pos, $I10)
  rxscan1238_done:
.annotate 'line', 529
  # rx subcapture "sym"
    set_addr $I10, rxcap_1239_fail
    rx1235_cur."!mark_push"(0, rx1235_pos, $I10)
  # rx literal  "last"
    add $I11, rx1235_pos, 4
    gt $I11, rx1235_eos, rx1235_fail
    sub $I11, rx1235_pos, rx1235_off
    substr $S10, rx1235_tgt, $I11, 4
    ne $S10, "last", rx1235_fail
    add rx1235_pos, 4
    set_addr $I10, rxcap_1239_fail
    ($I12, $I11) = rx1235_cur."!mark_peek"($I10)
    rx1235_cur."!cursor_pos"($I11)
    ($P10) = rx1235_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1235_pos, "")
    rx1235_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1239_done
  rxcap_1239_fail:
    goto rx1235_fail
  rxcap_1239_done:
  # rx pass
    rx1235_cur."!cursor_pass"(rx1235_pos, "term:sym<last>")
    rx1235_cur."!cursor_debug"("PASS  ", "term:sym<last>", " at pos=", rx1235_pos)
    .return (rx1235_cur)
  rx1235_fail:
.annotate 'line', 422
    (rx1235_rep, rx1235_pos, $I10, $P10) = rx1235_cur."!mark_fail"(0)
    lt rx1235_pos, -1, rx1235_done
    eq rx1235_pos, -1, rx1235_fail
    jump $I10
  rx1235_done:
    rx1235_cur."!cursor_fail"()
    rx1235_cur."!cursor_debug"("FAIL  ", "term:sym<last>")
    .return (rx1235_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<last>"  :subid("320_1273727990.68261") :method
.annotate 'line', 422
    new $P1237, "ResizablePMCArray"
    push $P1237, "last"
    .return ($P1237)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<next>"  :subid("321_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1241_tgt
    .local int rx1241_pos
    .local int rx1241_off
    .local int rx1241_eos
    .local int rx1241_rep
    .local pmc rx1241_cur
    (rx1241_cur, rx1241_pos, rx1241_tgt) = self."!cursor_start"()
    rx1241_cur."!cursor_debug"("START ", "term:sym<next>")
    .lex unicode:"$\x{a2}", rx1241_cur
    .local pmc match
    .lex "$/", match
    length rx1241_eos, rx1241_tgt
    set rx1241_off, 0
    lt rx1241_pos, 2, rx1241_start
    sub rx1241_off, rx1241_pos, 1
    substr rx1241_tgt, rx1241_tgt, rx1241_off
  rx1241_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1244_done
    goto rxscan1244_scan
  rxscan1244_loop:
    ($P10) = rx1241_cur."from"()
    inc $P10
    set rx1241_pos, $P10
    ge rx1241_pos, rx1241_eos, rxscan1244_done
  rxscan1244_scan:
    set_addr $I10, rxscan1244_loop
    rx1241_cur."!mark_push"(0, rx1241_pos, $I10)
  rxscan1244_done:
.annotate 'line', 530
  # rx subcapture "sym"
    set_addr $I10, rxcap_1245_fail
    rx1241_cur."!mark_push"(0, rx1241_pos, $I10)
  # rx literal  "next"
    add $I11, rx1241_pos, 4
    gt $I11, rx1241_eos, rx1241_fail
    sub $I11, rx1241_pos, rx1241_off
    substr $S10, rx1241_tgt, $I11, 4
    ne $S10, "next", rx1241_fail
    add rx1241_pos, 4
    set_addr $I10, rxcap_1245_fail
    ($I12, $I11) = rx1241_cur."!mark_peek"($I10)
    rx1241_cur."!cursor_pos"($I11)
    ($P10) = rx1241_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1241_pos, "")
    rx1241_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1245_done
  rxcap_1245_fail:
    goto rx1241_fail
  rxcap_1245_done:
  # rx pass
    rx1241_cur."!cursor_pass"(rx1241_pos, "term:sym<next>")
    rx1241_cur."!cursor_debug"("PASS  ", "term:sym<next>", " at pos=", rx1241_pos)
    .return (rx1241_cur)
  rx1241_fail:
.annotate 'line', 422
    (rx1241_rep, rx1241_pos, $I10, $P10) = rx1241_cur."!mark_fail"(0)
    lt rx1241_pos, -1, rx1241_done
    eq rx1241_pos, -1, rx1241_fail
    jump $I10
  rx1241_done:
    rx1241_cur."!cursor_fail"()
    rx1241_cur."!cursor_debug"("FAIL  ", "term:sym<next>")
    .return (rx1241_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<next>"  :subid("322_1273727990.68261") :method
.annotate 'line', 422
    new $P1243, "ResizablePMCArray"
    push $P1243, "next"
    .return ($P1243)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<redo>"  :subid("323_1273727990.68261") :method :outer("11_1273727990.68261")
.annotate 'line', 422
    .local string rx1247_tgt
    .local int rx1247_pos
    .local int rx1247_off
    .local int rx1247_eos
    .local int rx1247_rep
    .local pmc rx1247_cur
    (rx1247_cur, rx1247_pos, rx1247_tgt) = self."!cursor_start"()
    rx1247_cur."!cursor_debug"("START ", "term:sym<redo>")
    .lex unicode:"$\x{a2}", rx1247_cur
    .local pmc match
    .lex "$/", match
    length rx1247_eos, rx1247_tgt
    set rx1247_off, 0
    lt rx1247_pos, 2, rx1247_start
    sub rx1247_off, rx1247_pos, 1
    substr rx1247_tgt, rx1247_tgt, rx1247_off
  rx1247_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1250_done
    goto rxscan1250_scan
  rxscan1250_loop:
    ($P10) = rx1247_cur."from"()
    inc $P10
    set rx1247_pos, $P10
    ge rx1247_pos, rx1247_eos, rxscan1250_done
  rxscan1250_scan:
    set_addr $I10, rxscan1250_loop
    rx1247_cur."!mark_push"(0, rx1247_pos, $I10)
  rxscan1250_done:
.annotate 'line', 531
  # rx subcapture "sym"
    set_addr $I10, rxcap_1251_fail
    rx1247_cur."!mark_push"(0, rx1247_pos, $I10)
  # rx literal  "redo"
    add $I11, rx1247_pos, 4
    gt $I11, rx1247_eos, rx1247_fail
    sub $I11, rx1247_pos, rx1247_off
    substr $S10, rx1247_tgt, $I11, 4
    ne $S10, "redo", rx1247_fail
    add rx1247_pos, 4
    set_addr $I10, rxcap_1251_fail
    ($I12, $I11) = rx1247_cur."!mark_peek"($I10)
    rx1247_cur."!cursor_pos"($I11)
    ($P10) = rx1247_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1247_pos, "")
    rx1247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1251_done
  rxcap_1251_fail:
    goto rx1247_fail
  rxcap_1251_done:
  # rx pass
    rx1247_cur."!cursor_pass"(rx1247_pos, "term:sym<redo>")
    rx1247_cur."!cursor_debug"("PASS  ", "term:sym<redo>", " at pos=", rx1247_pos)
    .return (rx1247_cur)
  rx1247_fail:
.annotate 'line', 422
    (rx1247_rep, rx1247_pos, $I10, $P10) = rx1247_cur."!mark_fail"(0)
    lt rx1247_pos, -1, rx1247_done
    eq rx1247_pos, -1, rx1247_fail
    jump $I10
  rx1247_done:
    rx1247_cur."!cursor_fail"()
    rx1247_cur."!cursor_debug"("FAIL  ", "term:sym<redo>")
    .return (rx1247_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<redo>"  :subid("324_1273727990.68261") :method
.annotate 'line', 422
    new $P1249, "ResizablePMCArray"
    push $P1249, "redo"
    .return ($P1249)
.end


.namespace ["NQP";"Grammar"]
.sub "smartmatch"  :subid("325_1273727990.68261") :method :outer("11_1273727990.68261")
    .param pmc param_1255
.annotate 'line', 533
    new $P1254, 'ExceptionHandler'
    set_addr $P1254, control_1253
    $P1254."handle_types"(57)
    push_eh $P1254
    .lex "self", self
    .lex "$/", param_1255
.annotate 'line', 535
    new $P1256, "Undef"
    .lex "$t", $P1256
    find_lex $P1257, "$/"
    unless_null $P1257, vivify_351
    $P1257 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $P1258, $P1257[0]
    unless_null $P1258, vivify_352
    new $P1258, "Undef"
  vivify_352:
    store_lex "$t", $P1258
    find_lex $P1259, "$/"
    unless_null $P1259, vivify_353
    $P1259 = root_new ['parrot';'ResizablePMCArray']
  vivify_353:
    set $P1260, $P1259[1]
    unless_null $P1260, vivify_354
    new $P1260, "Undef"
  vivify_354:
    find_lex $P1261, "$/"
    unless_null $P1261, vivify_355
    $P1261 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$/", $P1261
  vivify_355:
    set $P1261[0], $P1260
    find_lex $P1262, "$t"
    find_lex $P1263, "$/"
    unless_null $P1263, vivify_356
    $P1263 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$/", $P1263
  vivify_356:
    set $P1263[1], $P1262
.annotate 'line', 533
    .return ($P1262)
  control_1253:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1264, exception, "payload"
    .return ($P1264)
.end


.namespace ["NQP";"Regex"]
.sub "_block1265"  :subid("326_1273727990.68261") :outer("11_1273727990.68261")
.annotate 'line', 539
    .const 'Sub' $P1299 = "337_1273727990.68261" 
    capture_lex $P1299
    .const 'Sub' $P1286 = "334_1273727990.68261" 
    capture_lex $P1286
    .const 'Sub' $P1281 = "332_1273727990.68261" 
    capture_lex $P1281
    .const 'Sub' $P1276 = "330_1273727990.68261" 
    capture_lex $P1276
    .const 'Sub' $P1267 = "327_1273727990.68261" 
    capture_lex $P1267
    .const 'Sub' $P1299 = "337_1273727990.68261" 
    capture_lex $P1299
    .return ($P1299)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("327_1273727990.68261") :method :outer("326_1273727990.68261")
.annotate 'line', 539
    .const 'Sub' $P1273 = "329_1273727990.68261" 
    capture_lex $P1273
    .local string rx1268_tgt
    .local int rx1268_pos
    .local int rx1268_off
    .local int rx1268_eos
    .local int rx1268_rep
    .local pmc rx1268_cur
    (rx1268_cur, rx1268_pos, rx1268_tgt) = self."!cursor_start"()
    rx1268_cur."!cursor_debug"("START ", "metachar:sym<:my>")
    .lex unicode:"$\x{a2}", rx1268_cur
    .local pmc match
    .lex "$/", match
    length rx1268_eos, rx1268_tgt
    set rx1268_off, 0
    lt rx1268_pos, 2, rx1268_start
    sub rx1268_off, rx1268_pos, 1
    substr rx1268_tgt, rx1268_tgt, rx1268_off
  rx1268_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1271_done
    goto rxscan1271_scan
  rxscan1271_loop:
    ($P10) = rx1268_cur."from"()
    inc $P10
    set rx1268_pos, $P10
    ge rx1268_pos, rx1268_eos, rxscan1271_done
  rxscan1271_scan:
    set_addr $I10, rxscan1271_loop
    rx1268_cur."!mark_push"(0, rx1268_pos, $I10)
  rxscan1271_done:
.annotate 'line', 541
  # rx literal  ":"
    add $I11, rx1268_pos, 1
    gt $I11, rx1268_eos, rx1268_fail
    sub $I11, rx1268_pos, rx1268_off
    substr $S10, rx1268_tgt, $I11, 1
    ne $S10, ":", rx1268_fail
    add rx1268_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx1268_cur."!cursor_pos"(rx1268_pos)
    .const 'Sub' $P1273 = "329_1273727990.68261" 
    capture_lex $P1273
    $P10 = rx1268_cur."before"($P1273)
    unless $P10, rx1268_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1268_cur."!cursor_pos"(rx1268_pos)
    $P10 = rx1268_cur."LANG"("MAIN", "statement")
    unless $P10, rx1268_fail
    rx1268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx1268_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1268_cur."!cursor_pos"(rx1268_pos)
    $P10 = rx1268_cur."ws"()
    unless $P10, rx1268_fail
    rx1268_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx1268_pos, 1
    gt $I11, rx1268_eos, rx1268_fail
    sub $I11, rx1268_pos, rx1268_off
    substr $S10, rx1268_tgt, $I11, 1
    ne $S10, ";", rx1268_fail
    add rx1268_pos, 1
.annotate 'line', 540
  # rx pass
    rx1268_cur."!cursor_pass"(rx1268_pos, "metachar:sym<:my>")
    rx1268_cur."!cursor_debug"("PASS  ", "metachar:sym<:my>", " at pos=", rx1268_pos)
    .return (rx1268_cur)
  rx1268_fail:
.annotate 'line', 539
    (rx1268_rep, rx1268_pos, $I10, $P10) = rx1268_cur."!mark_fail"(0)
    lt rx1268_pos, -1, rx1268_done
    eq rx1268_pos, -1, rx1268_fail
    jump $I10
  rx1268_done:
    rx1268_cur."!cursor_fail"()
    rx1268_cur."!cursor_debug"("FAIL  ", "metachar:sym<:my>")
    .return (rx1268_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("328_1273727990.68261") :method
.annotate 'line', 539
    new $P1270, "ResizablePMCArray"
    push $P1270, ":"
    .return ($P1270)
.end


.namespace ["NQP";"Regex"]
.sub "_block1272"  :anon :subid("329_1273727990.68261") :method :outer("327_1273727990.68261")
.annotate 'line', 541
    .local string rx1274_tgt
    .local int rx1274_pos
    .local int rx1274_off
    .local int rx1274_eos
    .local int rx1274_rep
    .local pmc rx1274_cur
    (rx1274_cur, rx1274_pos, rx1274_tgt) = self."!cursor_start"()
    rx1274_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx1274_cur
    .local pmc match
    .lex "$/", match
    length rx1274_eos, rx1274_tgt
    set rx1274_off, 0
    lt rx1274_pos, 2, rx1274_start
    sub rx1274_off, rx1274_pos, 1
    substr rx1274_tgt, rx1274_tgt, rx1274_off
  rx1274_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1275_done
    goto rxscan1275_scan
  rxscan1275_loop:
    ($P10) = rx1274_cur."from"()
    inc $P10
    set rx1274_pos, $P10
    ge rx1274_pos, rx1274_eos, rxscan1275_done
  rxscan1275_scan:
    set_addr $I10, rxscan1275_loop
    rx1274_cur."!mark_push"(0, rx1274_pos, $I10)
  rxscan1275_done:
  # rx literal  "my"
    add $I11, rx1274_pos, 2
    gt $I11, rx1274_eos, rx1274_fail
    sub $I11, rx1274_pos, rx1274_off
    substr $S10, rx1274_tgt, $I11, 2
    ne $S10, "my", rx1274_fail
    add rx1274_pos, 2
  # rx pass
    rx1274_cur."!cursor_pass"(rx1274_pos, "")
    rx1274_cur."!cursor_debug"("PASS  ", "", " at pos=", rx1274_pos)
    .return (rx1274_cur)
  rx1274_fail:
    (rx1274_rep, rx1274_pos, $I10, $P10) = rx1274_cur."!mark_fail"(0)
    lt rx1274_pos, -1, rx1274_done
    eq rx1274_pos, -1, rx1274_fail
    jump $I10
  rx1274_done:
    rx1274_cur."!cursor_fail"()
    rx1274_cur."!cursor_debug"("FAIL  ", "")
    .return (rx1274_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("330_1273727990.68261") :method :outer("326_1273727990.68261")
.annotate 'line', 539
    .local string rx1277_tgt
    .local int rx1277_pos
    .local int rx1277_off
    .local int rx1277_eos
    .local int rx1277_rep
    .local pmc rx1277_cur
    (rx1277_cur, rx1277_pos, rx1277_tgt) = self."!cursor_start"()
    rx1277_cur."!cursor_debug"("START ", "metachar:sym<{ }>")
    .lex unicode:"$\x{a2}", rx1277_cur
    .local pmc match
    .lex "$/", match
    length rx1277_eos, rx1277_tgt
    set rx1277_off, 0
    lt rx1277_pos, 2, rx1277_start
    sub rx1277_off, rx1277_pos, 1
    substr rx1277_tgt, rx1277_tgt, rx1277_off
  rx1277_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1280_done
    goto rxscan1280_scan
  rxscan1280_loop:
    ($P10) = rx1277_cur."from"()
    inc $P10
    set rx1277_pos, $P10
    ge rx1277_pos, rx1277_eos, rxscan1280_done
  rxscan1280_scan:
    set_addr $I10, rxscan1280_loop
    rx1277_cur."!mark_push"(0, rx1277_pos, $I10)
  rxscan1280_done:
.annotate 'line', 545
  # rx enumcharlist negate=0 zerowidth
    ge rx1277_pos, rx1277_eos, rx1277_fail
    sub $I10, rx1277_pos, rx1277_off
    substr $S10, rx1277_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1277_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1277_cur."!cursor_pos"(rx1277_pos)
    $P10 = rx1277_cur."codeblock"()
    unless $P10, rx1277_fail
    rx1277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1277_pos = $P10."pos"()
.annotate 'line', 544
  # rx pass
    rx1277_cur."!cursor_pass"(rx1277_pos, "metachar:sym<{ }>")
    rx1277_cur."!cursor_debug"("PASS  ", "metachar:sym<{ }>", " at pos=", rx1277_pos)
    .return (rx1277_cur)
  rx1277_fail:
.annotate 'line', 539
    (rx1277_rep, rx1277_pos, $I10, $P10) = rx1277_cur."!mark_fail"(0)
    lt rx1277_pos, -1, rx1277_done
    eq rx1277_pos, -1, rx1277_fail
    jump $I10
  rx1277_done:
    rx1277_cur."!cursor_fail"()
    rx1277_cur."!cursor_debug"("FAIL  ", "metachar:sym<{ }>")
    .return (rx1277_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("331_1273727990.68261") :method
.annotate 'line', 539
    new $P1279, "ResizablePMCArray"
    push $P1279, "{"
    .return ($P1279)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("332_1273727990.68261") :method :outer("326_1273727990.68261")
.annotate 'line', 539
    .local string rx1282_tgt
    .local int rx1282_pos
    .local int rx1282_off
    .local int rx1282_eos
    .local int rx1282_rep
    .local pmc rx1282_cur
    (rx1282_cur, rx1282_pos, rx1282_tgt) = self."!cursor_start"()
    rx1282_cur."!cursor_debug"("START ", "assertion:sym<{ }>")
    .lex unicode:"$\x{a2}", rx1282_cur
    .local pmc match
    .lex "$/", match
    length rx1282_eos, rx1282_tgt
    set rx1282_off, 0
    lt rx1282_pos, 2, rx1282_start
    sub rx1282_off, rx1282_pos, 1
    substr rx1282_tgt, rx1282_tgt, rx1282_off
  rx1282_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1285_done
    goto rxscan1285_scan
  rxscan1285_loop:
    ($P10) = rx1282_cur."from"()
    inc $P10
    set rx1282_pos, $P10
    ge rx1282_pos, rx1282_eos, rxscan1285_done
  rxscan1285_scan:
    set_addr $I10, rxscan1285_loop
    rx1282_cur."!mark_push"(0, rx1282_pos, $I10)
  rxscan1285_done:
.annotate 'line', 549
  # rx enumcharlist negate=0 zerowidth
    ge rx1282_pos, rx1282_eos, rx1282_fail
    sub $I10, rx1282_pos, rx1282_off
    substr $S10, rx1282_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1282_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1282_cur."!cursor_pos"(rx1282_pos)
    $P10 = rx1282_cur."codeblock"()
    unless $P10, rx1282_fail
    rx1282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1282_pos = $P10."pos"()
.annotate 'line', 548
  # rx pass
    rx1282_cur."!cursor_pass"(rx1282_pos, "assertion:sym<{ }>")
    rx1282_cur."!cursor_debug"("PASS  ", "assertion:sym<{ }>", " at pos=", rx1282_pos)
    .return (rx1282_cur)
  rx1282_fail:
.annotate 'line', 539
    (rx1282_rep, rx1282_pos, $I10, $P10) = rx1282_cur."!mark_fail"(0)
    lt rx1282_pos, -1, rx1282_done
    eq rx1282_pos, -1, rx1282_fail
    jump $I10
  rx1282_done:
    rx1282_cur."!cursor_fail"()
    rx1282_cur."!cursor_debug"("FAIL  ", "assertion:sym<{ }>")
    .return (rx1282_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("333_1273727990.68261") :method
.annotate 'line', 539
    new $P1284, "ResizablePMCArray"
    push $P1284, "{"
    .return ($P1284)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<name>"  :subid("334_1273727990.68261") :method :outer("326_1273727990.68261")
.annotate 'line', 539
    .const 'Sub' $P1295 = "336_1273727990.68261" 
    capture_lex $P1295
    .local string rx1287_tgt
    .local int rx1287_pos
    .local int rx1287_off
    .local int rx1287_eos
    .local int rx1287_rep
    .local pmc rx1287_cur
    (rx1287_cur, rx1287_pos, rx1287_tgt) = self."!cursor_start"()
    rx1287_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx1287_cur."!cursor_caparray"("arglist", "nibbler", "assertion")
    .lex unicode:"$\x{a2}", rx1287_cur
    .local pmc match
    .lex "$/", match
    length rx1287_eos, rx1287_tgt
    set rx1287_off, 0
    lt rx1287_pos, 2, rx1287_start
    sub rx1287_off, rx1287_pos, 1
    substr rx1287_tgt, rx1287_tgt, rx1287_off
  rx1287_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1290_done
    goto rxscan1290_scan
  rxscan1290_loop:
    ($P10) = rx1287_cur."from"()
    inc $P10
    set rx1287_pos, $P10
    ge rx1287_pos, rx1287_eos, rxscan1290_done
  rxscan1290_scan:
    set_addr $I10, rxscan1290_loop
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
  rxscan1290_done:
.annotate 'line', 553
  # rx subcapture "longname"
    set_addr $I10, rxcap_1291_fail
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx1287_pos, rx1287_off
    find_not_cclass $I11, 8192, rx1287_tgt, $I10, rx1287_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1287_fail
    add rx1287_pos, rx1287_off, $I11
    set_addr $I10, rxcap_1291_fail
    ($I12, $I11) = rx1287_cur."!mark_peek"($I10)
    rx1287_cur."!cursor_pos"($I11)
    ($P10) = rx1287_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1287_pos, "")
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_1291_done
  rxcap_1291_fail:
    goto rx1287_fail
  rxcap_1291_done:
.annotate 'line', 560
  # rx rxquantr1292 ** 0..1
    set_addr $I1298, rxquantr1292_done
    rx1287_cur."!mark_push"(0, rx1287_pos, $I1298)
  rxquantr1292_loop:
  alt1293_0:
.annotate 'line', 554
    set_addr $I10, alt1293_1
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
.annotate 'line', 555
  # rx subrule "before" subtype=zerowidth negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    .const 'Sub' $P1295 = "336_1273727990.68261" 
    capture_lex $P1295
    $P10 = rx1287_cur."before"($P1295)
    unless $P10, rx1287_fail
    goto alt1293_end
  alt1293_1:
    set_addr $I10, alt1293_2
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
.annotate 'line', 556
  # rx literal  "="
    add $I11, rx1287_pos, 1
    gt $I11, rx1287_eos, rx1287_fail
    sub $I11, rx1287_pos, rx1287_off
    substr $S10, rx1287_tgt, $I11, 1
    ne $S10, "=", rx1287_fail
    add rx1287_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    $P10 = rx1287_cur."assertion"()
    unless $P10, rx1287_fail
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1287_pos = $P10."pos"()
    goto alt1293_end
  alt1293_2:
    set_addr $I10, alt1293_3
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
.annotate 'line', 557
  # rx literal  ":"
    add $I11, rx1287_pos, 1
    gt $I11, rx1287_eos, rx1287_fail
    sub $I11, rx1287_pos, rx1287_off
    substr $S10, rx1287_tgt, $I11, 1
    ne $S10, ":", rx1287_fail
    add rx1287_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    $P10 = rx1287_cur."arglist"()
    unless $P10, rx1287_fail
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1287_pos = $P10."pos"()
    goto alt1293_end
  alt1293_3:
    set_addr $I10, alt1293_4
    rx1287_cur."!mark_push"(0, rx1287_pos, $I10)
.annotate 'line', 558
  # rx literal  "("
    add $I11, rx1287_pos, 1
    gt $I11, rx1287_eos, rx1287_fail
    sub $I11, rx1287_pos, rx1287_off
    substr $S10, rx1287_tgt, $I11, 1
    ne $S10, "(", rx1287_fail
    add rx1287_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    $P10 = rx1287_cur."LANG"("MAIN", "arglist")
    unless $P10, rx1287_fail
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1287_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1287_pos, 1
    gt $I11, rx1287_eos, rx1287_fail
    sub $I11, rx1287_pos, rx1287_off
    substr $S10, rx1287_tgt, $I11, 1
    ne $S10, ")", rx1287_fail
    add rx1287_pos, 1
    goto alt1293_end
  alt1293_4:
.annotate 'line', 559
  # rx subrule "normspace" subtype=method negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    $P10 = rx1287_cur."normspace"()
    unless $P10, rx1287_fail
    rx1287_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx1287_cur."!cursor_pos"(rx1287_pos)
    $P10 = rx1287_cur."nibbler"()
    unless $P10, rx1287_fail
    rx1287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1287_pos = $P10."pos"()
  alt1293_end:
.annotate 'line', 560
    (rx1287_rep) = rx1287_cur."!mark_commit"($I1298)
  rxquantr1292_done:
.annotate 'line', 552
  # rx pass
    rx1287_cur."!cursor_pass"(rx1287_pos, "assertion:sym<name>")
    rx1287_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx1287_pos)
    .return (rx1287_cur)
  rx1287_fail:
.annotate 'line', 539
    (rx1287_rep, rx1287_pos, $I10, $P10) = rx1287_cur."!mark_fail"(0)
    lt rx1287_pos, -1, rx1287_done
    eq rx1287_pos, -1, rx1287_fail
    jump $I10
  rx1287_done:
    rx1287_cur."!cursor_fail"()
    rx1287_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx1287_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<name>"  :subid("335_1273727990.68261") :method
.annotate 'line', 539
    new $P1289, "ResizablePMCArray"
    push $P1289, ""
    .return ($P1289)
.end


.namespace ["NQP";"Regex"]
.sub "_block1294"  :anon :subid("336_1273727990.68261") :method :outer("334_1273727990.68261")
.annotate 'line', 555
    .local string rx1296_tgt
    .local int rx1296_pos
    .local int rx1296_off
    .local int rx1296_eos
    .local int rx1296_rep
    .local pmc rx1296_cur
    (rx1296_cur, rx1296_pos, rx1296_tgt) = self."!cursor_start"()
    rx1296_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx1296_cur
    .local pmc match
    .lex "$/", match
    length rx1296_eos, rx1296_tgt
    set rx1296_off, 0
    lt rx1296_pos, 2, rx1296_start
    sub rx1296_off, rx1296_pos, 1
    substr rx1296_tgt, rx1296_tgt, rx1296_off
  rx1296_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1297_done
    goto rxscan1297_scan
  rxscan1297_loop:
    ($P10) = rx1296_cur."from"()
    inc $P10
    set rx1296_pos, $P10
    ge rx1296_pos, rx1296_eos, rxscan1297_done
  rxscan1297_scan:
    set_addr $I10, rxscan1297_loop
    rx1296_cur."!mark_push"(0, rx1296_pos, $I10)
  rxscan1297_done:
  # rx literal  ">"
    add $I11, rx1296_pos, 1
    gt $I11, rx1296_eos, rx1296_fail
    sub $I11, rx1296_pos, rx1296_off
    substr $S10, rx1296_tgt, $I11, 1
    ne $S10, ">", rx1296_fail
    add rx1296_pos, 1
  # rx pass
    rx1296_cur."!cursor_pass"(rx1296_pos, "")
    rx1296_cur."!cursor_debug"("PASS  ", "", " at pos=", rx1296_pos)
    .return (rx1296_cur)
  rx1296_fail:
    (rx1296_rep, rx1296_pos, $I10, $P10) = rx1296_cur."!mark_fail"(0)
    lt rx1296_pos, -1, rx1296_done
    eq rx1296_pos, -1, rx1296_fail
    jump $I10
  rx1296_done:
    rx1296_cur."!cursor_fail"()
    rx1296_cur."!cursor_debug"("FAIL  ", "")
    .return (rx1296_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("337_1273727990.68261") :method :outer("326_1273727990.68261")
.annotate 'line', 539
    .local string rx1300_tgt
    .local int rx1300_pos
    .local int rx1300_off
    .local int rx1300_eos
    .local int rx1300_rep
    .local pmc rx1300_cur
    (rx1300_cur, rx1300_pos, rx1300_tgt) = self."!cursor_start"()
    rx1300_cur."!cursor_debug"("START ", "codeblock")
    .lex unicode:"$\x{a2}", rx1300_cur
    .local pmc match
    .lex "$/", match
    length rx1300_eos, rx1300_tgt
    set rx1300_off, 0
    lt rx1300_pos, 2, rx1300_start
    sub rx1300_off, rx1300_pos, 1
    substr rx1300_tgt, rx1300_tgt, rx1300_off
  rx1300_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1304_done
    goto rxscan1304_scan
  rxscan1304_loop:
    ($P10) = rx1300_cur."from"()
    inc $P10
    set rx1300_pos, $P10
    ge rx1300_pos, rx1300_eos, rxscan1304_done
  rxscan1304_scan:
    set_addr $I10, rxscan1304_loop
    rx1300_cur."!mark_push"(0, rx1300_pos, $I10)
  rxscan1304_done:
.annotate 'line', 565
  # rx subrule "LANG" subtype=capture negate=
    rx1300_cur."!cursor_pos"(rx1300_pos)
    $P10 = rx1300_cur."LANG"("MAIN", "pblock")
    unless $P10, rx1300_fail
    rx1300_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx1300_pos = $P10."pos"()
.annotate 'line', 564
  # rx pass
    rx1300_cur."!cursor_pass"(rx1300_pos, "codeblock")
    rx1300_cur."!cursor_debug"("PASS  ", "codeblock", " at pos=", rx1300_pos)
    .return (rx1300_cur)
  rx1300_fail:
.annotate 'line', 539
    (rx1300_rep, rx1300_pos, $I10, $P10) = rx1300_cur."!mark_fail"(0)
    lt rx1300_pos, -1, rx1300_done
    eq rx1300_pos, -1, rx1300_fail
    jump $I10
  rx1300_done:
    rx1300_cur."!cursor_fail"()
    rx1300_cur."!cursor_debug"("FAIL  ", "codeblock")
    .return (rx1300_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("338_1273727990.68261") :method
.annotate 'line', 539
    $P1302 = self."!PREFIX__!subrule"("block", "")
    new $P1303, "ResizablePMCArray"
    push $P1303, $P1302
    .return ($P1303)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1273728005.59439")
.annotate 'line', 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate 'line', 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P2232 = $P14()
.annotate 'line', 1
    .return ($P2232)
.end


.namespace []
.sub "" :load :init :subid("post131") :outer("10_1273728005.59439")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1273728005.59439" 
    .local pmc block
    set block, $P12
    $P2233 = get_root_global ["parrot"], "P6metaclass"
    $P2233."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1273728005.59439") :outer("10_1273728005.59439")
.annotate 'line', 3
    .const 'Sub' $P2228 = "130_1273728005.59439" 
    capture_lex $P2228
    get_hll_global $P2164, ["NQP";"RegexActions"], "_block2163" 
    capture_lex $P2164
    .const 'Sub' $P2153 = "124_1273728005.59439" 
    capture_lex $P2153
    .const 'Sub' $P2146 = "123_1273728005.59439" 
    capture_lex $P2146
    .const 'Sub' $P2139 = "122_1273728005.59439" 
    capture_lex $P2139
    .const 'Sub' $P2132 = "121_1273728005.59439" 
    capture_lex $P2132
    .const 'Sub' $P2119 = "120_1273728005.59439" 
    capture_lex $P2119
    .const 'Sub' $P2109 = "119_1273728005.59439" 
    capture_lex $P2109
    .const 'Sub' $P2099 = "118_1273728005.59439" 
    capture_lex $P2099
    .const 'Sub' $P2089 = "117_1273728005.59439" 
    capture_lex $P2089
    .const 'Sub' $P2082 = "116_1273728005.59439" 
    capture_lex $P2082
    .const 'Sub' $P2068 = "115_1273728005.59439" 
    capture_lex $P2068
    .const 'Sub' $P2058 = "114_1273728005.59439" 
    capture_lex $P2058
    .const 'Sub' $P2021 = "113_1273728005.59439" 
    capture_lex $P2021
    .const 'Sub' $P2007 = "112_1273728005.59439" 
    capture_lex $P2007
    .const 'Sub' $P1997 = "111_1273728005.59439" 
    capture_lex $P1997
    .const 'Sub' $P1987 = "110_1273728005.59439" 
    capture_lex $P1987
    .const 'Sub' $P1977 = "109_1273728005.59439" 
    capture_lex $P1977
    .const 'Sub' $P1967 = "108_1273728005.59439" 
    capture_lex $P1967
    .const 'Sub' $P1957 = "107_1273728005.59439" 
    capture_lex $P1957
    .const 'Sub' $P1929 = "106_1273728005.59439" 
    capture_lex $P1929
    .const 'Sub' $P1912 = "105_1273728005.59439" 
    capture_lex $P1912
    .const 'Sub' $P1902 = "104_1273728005.59439" 
    capture_lex $P1902
    .const 'Sub' $P1889 = "103_1273728005.59439" 
    capture_lex $P1889
    .const 'Sub' $P1876 = "102_1273728005.59439" 
    capture_lex $P1876
    .const 'Sub' $P1863 = "101_1273728005.59439" 
    capture_lex $P1863
    .const 'Sub' $P1853 = "100_1273728005.59439" 
    capture_lex $P1853
    .const 'Sub' $P1824 = "99_1273728005.59439" 
    capture_lex $P1824
    .const 'Sub' $P1804 = "98_1273728005.59439" 
    capture_lex $P1804
    .const 'Sub' $P1794 = "97_1273728005.59439" 
    capture_lex $P1794
    .const 'Sub' $P1784 = "96_1273728005.59439" 
    capture_lex $P1784
    .const 'Sub' $P1757 = "95_1273728005.59439" 
    capture_lex $P1757
    .const 'Sub' $P1739 = "94_1273728005.59439" 
    capture_lex $P1739
    .const 'Sub' $P1729 = "93_1273728005.59439" 
    capture_lex $P1729
    .const 'Sub' $P1625 = "90_1273728005.59439" 
    capture_lex $P1625
    .const 'Sub' $P1615 = "89_1273728005.59439" 
    capture_lex $P1615
    .const 'Sub' $P1586 = "88_1273728005.59439" 
    capture_lex $P1586
    .const 'Sub' $P1544 = "87_1273728005.59439" 
    capture_lex $P1544
    .const 'Sub' $P1528 = "86_1273728005.59439" 
    capture_lex $P1528
    .const 'Sub' $P1519 = "85_1273728005.59439" 
    capture_lex $P1519
    .const 'Sub' $P1487 = "84_1273728005.59439" 
    capture_lex $P1487
    .const 'Sub' $P1388 = "81_1273728005.59439" 
    capture_lex $P1388
    .const 'Sub' $P1371 = "80_1273728005.59439" 
    capture_lex $P1371
    .const 'Sub' $P1351 = "79_1273728005.59439" 
    capture_lex $P1351
    .const 'Sub' $P1267 = "78_1273728005.59439" 
    capture_lex $P1267
    .const 'Sub' $P1243 = "76_1273728005.59439" 
    capture_lex $P1243
    .const 'Sub' $P1209 = "74_1273728005.59439" 
    capture_lex $P1209
    .const 'Sub' $P1159 = "72_1273728005.59439" 
    capture_lex $P1159
    .const 'Sub' $P1149 = "71_1273728005.59439" 
    capture_lex $P1149
    .const 'Sub' $P1139 = "70_1273728005.59439" 
    capture_lex $P1139
    .const 'Sub' $P1068 = "68_1273728005.59439" 
    capture_lex $P1068
    .const 'Sub' $P1051 = "67_1273728005.59439" 
    capture_lex $P1051
    .const 'Sub' $P1041 = "66_1273728005.59439" 
    capture_lex $P1041
    .const 'Sub' $P1031 = "65_1273728005.59439" 
    capture_lex $P1031
    .const 'Sub' $P1021 = "64_1273728005.59439" 
    capture_lex $P1021
    .const 'Sub' $P997 = "63_1273728005.59439" 
    capture_lex $P997
    .const 'Sub' $P944 = "62_1273728005.59439" 
    capture_lex $P944
    .const 'Sub' $P934 = "61_1273728005.59439" 
    capture_lex $P934
    .const 'Sub' $P845 = "59_1273728005.59439" 
    capture_lex $P845
    .const 'Sub' $P819 = "58_1273728005.59439" 
    capture_lex $P819
    .const 'Sub' $P803 = "57_1273728005.59439" 
    capture_lex $P803
    .const 'Sub' $P793 = "56_1273728005.59439" 
    capture_lex $P793
    .const 'Sub' $P783 = "55_1273728005.59439" 
    capture_lex $P783
    .const 'Sub' $P773 = "54_1273728005.59439" 
    capture_lex $P773
    .const 'Sub' $P763 = "53_1273728005.59439" 
    capture_lex $P763
    .const 'Sub' $P753 = "52_1273728005.59439" 
    capture_lex $P753
    .const 'Sub' $P743 = "51_1273728005.59439" 
    capture_lex $P743
    .const 'Sub' $P733 = "50_1273728005.59439" 
    capture_lex $P733
    .const 'Sub' $P723 = "49_1273728005.59439" 
    capture_lex $P723
    .const 'Sub' $P713 = "48_1273728005.59439" 
    capture_lex $P713
    .const 'Sub' $P703 = "47_1273728005.59439" 
    capture_lex $P703
    .const 'Sub' $P693 = "46_1273728005.59439" 
    capture_lex $P693
    .const 'Sub' $P683 = "45_1273728005.59439" 
    capture_lex $P683
    .const 'Sub' $P673 = "44_1273728005.59439" 
    capture_lex $P673
    .const 'Sub' $P655 = "43_1273728005.59439" 
    capture_lex $P655
    .const 'Sub' $P620 = "42_1273728005.59439" 
    capture_lex $P620
    .const 'Sub' $P604 = "41_1273728005.59439" 
    capture_lex $P604
    .const 'Sub' $P583 = "40_1273728005.59439" 
    capture_lex $P583
    .const 'Sub' $P563 = "39_1273728005.59439" 
    capture_lex $P563
    .const 'Sub' $P550 = "38_1273728005.59439" 
    capture_lex $P550
    .const 'Sub' $P524 = "37_1273728005.59439" 
    capture_lex $P524
    .const 'Sub' $P488 = "36_1273728005.59439" 
    capture_lex $P488
    .const 'Sub' $P471 = "35_1273728005.59439" 
    capture_lex $P471
    .const 'Sub' $P457 = "34_1273728005.59439" 
    capture_lex $P457
    .const 'Sub' $P404 = "32_1273728005.59439" 
    capture_lex $P404
    .const 'Sub' $P391 = "31_1273728005.59439" 
    capture_lex $P391
    .const 'Sub' $P372 = "30_1273728005.59439" 
    capture_lex $P372
    .const 'Sub' $P362 = "29_1273728005.59439" 
    capture_lex $P362
    .const 'Sub' $P352 = "28_1273728005.59439" 
    capture_lex $P352
    .const 'Sub' $P336 = "27_1273728005.59439" 
    capture_lex $P336
    .const 'Sub' $P276 = "25_1273728005.59439" 
    capture_lex $P276
    .const 'Sub' $P227 = "23_1273728005.59439" 
    capture_lex $P227
    .const 'Sub' $P208 = "22_1273728005.59439" 
    capture_lex $P208
    .const 'Sub' $P175 = "21_1273728005.59439" 
    capture_lex $P175
    .const 'Sub' $P165 = "20_1273728005.59439" 
    capture_lex $P165
    .const 'Sub' $P146 = "19_1273728005.59439" 
    capture_lex $P146
    .const 'Sub' $P96 = "18_1273728005.59439" 
    capture_lex $P96
    .const 'Sub' $P81 = "17_1273728005.59439" 
    capture_lex $P81
    .const 'Sub' $P61 = "16_1273728005.59439" 
    capture_lex $P61
    .const 'Sub' $P26 = "13_1273728005.59439" 
    capture_lex $P26
    .const 'Sub' $P16 = "12_1273728005.59439" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_134
    $P15 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P15
  vivify_134:
.annotate 'line', 9
    .const 'Sub' $P16 = "12_1273728005.59439" 
    capture_lex $P16
    .lex "xblock_immediate", $P16
.annotate 'line', 14
    .const 'Sub' $P26 = "13_1273728005.59439" 
    capture_lex $P26
    .lex "block_immediate", $P26
.annotate 'line', 24
    .const 'Sub' $P61 = "16_1273728005.59439" 
    capture_lex $P61
    .lex "vivitype", $P61
.annotate 'line', 43
    .const 'Sub' $P81 = "17_1273728005.59439" 
    capture_lex $P81
    .lex "colonpair_str", $P81
.annotate 'line', 190
    .const 'Sub' $P96 = "18_1273728005.59439" 
    capture_lex $P96
    .lex "push_block_handler", $P96
.annotate 'line', 768
    .const 'Sub' $P146 = "19_1273728005.59439" 
    capture_lex $P146
    .lex "control", $P146
.annotate 'line', 3
    get_global $P161, "@BLOCK"
.annotate 'line', 5
    find_lex $P162, "xblock_immediate"
    find_lex $P163, "block_immediate"
    find_lex $P164, "vivitype"
.annotate 'line', 35
    find_lex $P207, "colonpair_str"
.annotate 'line', 183
    find_lex $P603, "push_block_handler"
.annotate 'line', 759
    find_lex $P2131, "control"
.annotate 'line', 790
    get_hll_global $P2164, ["NQP";"RegexActions"], "_block2163" 
    capture_lex $P2164
    $P2226 = $P2164()
.annotate 'line', 3
    .return ($P2226)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post132") :outer("11_1273728005.59439")
.annotate 'line', 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
.annotate 'line', 5
    .const 'Sub' $P2228 = "130_1273728005.59439" 
    capture_lex $P2228
    $P2228()
    $P2231 = get_root_global ["parrot"], "P6metaclass"
    $P2231."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block2227"  :anon :subid("130_1273728005.59439") :outer("11_1273728005.59439")
.annotate 'line', 6
    get_global $P2229, "@BLOCK"
    unless_null $P2229, vivify_133
    $P2229 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P2229
  vivify_133:
 $P2230 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P2230
.annotate 'line', 5
    .return ($P2230)
.end


.namespace ["NQP";"Actions"]
.sub "xblock_immediate"  :subid("12_1273728005.59439") :outer("11_1273728005.59439")
    .param pmc param_19
.annotate 'line', 9
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(57)
    push_eh $P18
    .lex "$xblock", param_19
.annotate 'line', 10
    find_lex $P20, "$xblock"
    unless_null $P20, vivify_135
    $P20 = root_new ['parrot';'ResizablePMCArray']
  vivify_135:
    set $P21, $P20[1]
    unless_null $P21, vivify_136
    new $P21, "Undef"
  vivify_136:
    $P22 = "block_immediate"($P21)
    find_lex $P23, "$xblock"
    unless_null $P23, vivify_137
    $P23 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$xblock", $P23
  vivify_137:
    set $P23[1], $P22
    find_lex $P24, "$xblock"
.annotate 'line', 9
    .return ($P24)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P25, exception, "payload"
    .return ($P25)
.end


.namespace ["NQP";"Actions"]
.sub "block_immediate"  :subid("13_1273728005.59439") :outer("11_1273728005.59439")
    .param pmc param_29
.annotate 'line', 14
    .const 'Sub' $P39 = "14_1273728005.59439" 
    capture_lex $P39
    new $P28, 'ExceptionHandler'
    set_addr $P28, control_27
    $P28."handle_types"(57)
    push_eh $P28
    .lex "$block", param_29
.annotate 'line', 15
    find_lex $P30, "$block"
    $P30."blocktype"("immediate")
.annotate 'line', 16
    find_lex $P34, "$block"
    $P35 = $P34."symtable"()
    unless $P35, unless_33
    set $P32, $P35
    goto unless_33_end
  unless_33:
    find_lex $P36, "$block"
    $P37 = $P36."handlers"()
    set $P32, $P37
  unless_33_end:
    if $P32, unless_31_end
    .const 'Sub' $P39 = "14_1273728005.59439" 
    capture_lex $P39
    $P39()
  unless_31_end:
    find_lex $P59, "$block"
.annotate 'line', 14
    .return ($P59)
  control_27:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P60, exception, "payload"
    .return ($P60)
.end


.namespace ["NQP";"Actions"]
.sub "_block38"  :anon :subid("14_1273728005.59439") :outer("13_1273728005.59439")
.annotate 'line', 16
    .const 'Sub' $P50 = "15_1273728005.59439" 
    capture_lex $P50
.annotate 'line', 17
    new $P40, "Undef"
    .lex "$stmts", $P40
    get_hll_global $P41, ["PAST"], "Stmts"
    find_lex $P42, "$block"
    $P43 = $P41."new"($P42 :named("node"))
    store_lex "$stmts", $P43
.annotate 'line', 18
    find_lex $P45, "$block"
    $P46 = $P45."list"()
    defined $I47, $P46
    unless $I47, for_undef_138
    iter $P44, $P46
    new $P56, 'ExceptionHandler'
    set_addr $P56, loop55_handler
    $P56."handle_types"(64, 66, 65)
    push_eh $P56
  loop55_test:
    unless $P44, loop55_done
    shift $P48, $P44
  loop55_redo:
    .const 'Sub' $P50 = "15_1273728005.59439" 
    capture_lex $P50
    $P50($P48)
  loop55_next:
    goto loop55_test
  loop55_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P57, exception, 'type'
    eq $P57, 64, loop55_next
    eq $P57, 66, loop55_redo
  loop55_done:
    pop_eh 
  for_undef_138:
.annotate 'line', 19
    find_lex $P58, "$stmts"
    store_lex "$block", $P58
.annotate 'line', 16
    .return ($P58)
.end


.namespace ["NQP";"Actions"]
.sub "_block49"  :anon :subid("15_1273728005.59439") :outer("14_1273728005.59439")
    .param pmc param_51
.annotate 'line', 18
    .lex "$_", param_51
    find_lex $P52, "$stmts"
    find_lex $P53, "$_"
    $P54 = $P52."push"($P53)
    .return ($P54)
.end


.namespace ["NQP";"Actions"]
.sub "vivitype"  :subid("16_1273728005.59439") :outer("11_1273728005.59439")
    .param pmc param_64
.annotate 'line', 24
    new $P63, 'ExceptionHandler'
    set_addr $P63, control_62
    $P63."handle_types"(57)
    push_eh $P63
    .lex "$sigil", param_64
.annotate 'line', 25
    find_lex $P67, "$sigil"
    set $S68, $P67
    iseq $I69, $S68, "%"
    if $I69, if_66
.annotate 'line', 27
    find_lex $P74, "$sigil"
    set $S75, $P74
    iseq $I76, $S75, "@"
    if $I76, if_73
    new $P79, "String"
    assign $P79, "Undef"
    set $P72, $P79
    goto if_73_end
  if_73:
.annotate 'line', 28
    get_hll_global $P77, ["PAST"], "Op"
    $P78 = $P77."new"("    %r = root_new ['parrot';'ResizablePMCArray']" :named("inline"))
    set $P72, $P78
  if_73_end:
    set $P65, $P72
.annotate 'line', 25
    goto if_66_end
  if_66:
.annotate 'line', 26
    get_hll_global $P70, ["PAST"], "Op"
    $P71 = $P70."new"("    %r = root_new ['parrot';'Hash']" :named("inline"))
    set $P65, $P71
  if_66_end:
.annotate 'line', 24
    .return ($P65)
  control_62:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P80, exception, "payload"
    .return ($P80)
.end


.namespace ["NQP";"Actions"]
.sub "colonpair_str"  :subid("17_1273728005.59439") :outer("11_1273728005.59439")
    .param pmc param_84
.annotate 'line', 43
    new $P83, 'ExceptionHandler'
    set_addr $P83, control_82
    $P83."handle_types"(57)
    push_eh $P83
    .lex "$ast", param_84
.annotate 'line', 44
    get_hll_global $P87, ["PAST"], "Op"
    find_lex $P88, "$ast"
    $P89 = $P87."ACCEPTS"($P88)
    if $P89, if_86
.annotate 'line', 46
    find_lex $P93, "$ast"
    $P94 = $P93."value"()
    set $P85, $P94
.annotate 'line', 44
    goto if_86_end
  if_86:
.annotate 'line', 45
    find_lex $P90, "$ast"
    $P91 = $P90."list"()
    join $S92, " ", $P91
    new $P85, 'String'
    set $P85, $S92
  if_86_end:
.annotate 'line', 43
    .return ($P85)
  control_82:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P95, exception, "payload"
    .return ($P95)
.end


.namespace ["NQP";"Actions"]
.sub "push_block_handler"  :subid("18_1273728005.59439") :outer("11_1273728005.59439")
    .param pmc param_99
    .param pmc param_100
.annotate 'line', 190
    new $P98, 'ExceptionHandler'
    set_addr $P98, control_97
    $P98."handle_types"(57)
    push_eh $P98
    .lex "$/", param_99
    .lex "$block", param_100
.annotate 'line', 191
    get_global $P102, "@BLOCK"
    unless_null $P102, vivify_139
    $P102 = root_new ['parrot';'ResizablePMCArray']
  vivify_139:
    set $P103, $P102[0]
    unless_null $P103, vivify_140
    new $P103, "Undef"
  vivify_140:
    $P104 = $P103."handlers"()
    if $P104, unless_101_end
.annotate 'line', 192
    get_global $P105, "@BLOCK"
    unless_null $P105, vivify_141
    $P105 = root_new ['parrot';'ResizablePMCArray']
  vivify_141:
    set $P106, $P105[0]
    unless_null $P106, vivify_142
    new $P106, "Undef"
  vivify_142:
    new $P107, "ResizablePMCArray"
    $P106."handlers"($P107)
  unless_101_end:
.annotate 'line', 194
    find_lex $P109, "$block"
    $P110 = $P109."arity"()
    if $P110, unless_108_end
.annotate 'line', 195
    find_lex $P111, "$block"
.annotate 'line', 196
    get_hll_global $P112, ["PAST"], "Op"
.annotate 'line', 197
    get_hll_global $P113, ["PAST"], "Var"
    $P114 = $P113."new"("lexical" :named("scope"), "$!" :named("name"), 1 :named("isdecl"))
.annotate 'line', 198
    get_hll_global $P115, ["PAST"], "Var"
    $P116 = $P115."new"("lexical" :named("scope"), "$_" :named("name"))
    $P117 = $P112."new"($P114, $P116, "bind" :named("pasttype"))
.annotate 'line', 196
    $P111."unshift"($P117)
.annotate 'line', 201
    find_lex $P118, "$block"
    get_hll_global $P119, ["PAST"], "Var"
    $P120 = $P119."new"("$_" :named("name"), "parameter" :named("scope"))
    $P118."unshift"($P120)
.annotate 'line', 202
    find_lex $P121, "$block"
    $P121."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 203
    find_lex $P122, "$block"
    $P122."symbol"("$!", "lexical" :named("scope"))
.annotate 'line', 204
    find_lex $P123, "$block"
    $P123."arity"(1)
  unless_108_end:
.annotate 'line', 206
    find_lex $P124, "$block"
    $P124."blocktype"("declaration")
.annotate 'line', 207
    get_global $P125, "@BLOCK"
    unless_null $P125, vivify_143
    $P125 = root_new ['parrot';'ResizablePMCArray']
  vivify_143:
    set $P126, $P125[0]
    unless_null $P126, vivify_144
    new $P126, "Undef"
  vivify_144:
    $P127 = $P126."handlers"()
.annotate 'line', 208
    get_hll_global $P128, ["PAST"], "Control"
    find_lex $P129, "$/"
.annotate 'line', 210
    get_hll_global $P130, ["PAST"], "Stmts"
.annotate 'line', 211
    get_hll_global $P131, ["PAST"], "Op"
    find_lex $P132, "$block"
.annotate 'line', 213
    get_hll_global $P133, ["PAST"], "Var"
    $P134 = $P133."new"("register" :named("scope"), "exception" :named("name"))
    $P135 = $P131."new"($P132, $P134, "call" :named("pasttype"))
.annotate 'line', 215
    get_hll_global $P136, ["PAST"], "Op"
.annotate 'line', 216
    get_hll_global $P137, ["PAST"], "Var"
.annotate 'line', 217
    get_hll_global $P138, ["PAST"], "Var"
    $P139 = $P138."new"("register" :named("scope"), "exception" :named("name"))
    $P140 = $P137."new"($P139, "handled", "keyed" :named("scope"))
.annotate 'line', 216
    $P141 = $P136."new"($P140, 1, "bind" :named("pasttype"))
.annotate 'line', 215
    $P142 = $P130."new"($P135, $P141)
.annotate 'line', 210
    $P143 = $P128."new"($P142, $P129 :named("node"))
.annotate 'line', 208
    $P144 = $P127."unshift"($P143)
.annotate 'line', 190
    .return ($P144)
  control_97:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P145, exception, "payload"
    .return ($P145)
.end


.namespace ["NQP";"Actions"]
.sub "control"  :subid("19_1273728005.59439") :outer("11_1273728005.59439")
    .param pmc param_149
    .param pmc param_150
.annotate 'line', 768
    new $P148, 'ExceptionHandler'
    set_addr $P148, control_147
    $P148."handle_types"(57)
    push_eh $P148
    .lex "$/", param_149
    .lex "$id", param_150
.annotate 'line', 769
    find_lex $P151, "$/"
    get_hll_global $P152, ["PAST"], "Op"
    find_lex $P153, "$/"
.annotate 'line', 775
    new $P154, "String"
    assign $P154, "    %r[\"type\"] = "
    find_lex $P155, "$id"
    concat $P156, $P154, $P155
    new $P157, "ResizablePMCArray"
    push $P157, ".include \"except_types.pasm\""
    push $P157, "    %r = new \"Exception\""
    push $P157, $P156
    push $P157, "    throw %r"
    $P158 = $P152."new"($P153 :named("node"), "inline" :named("pasttype"), $P157 :named("inline"))
.annotate 'line', 769
    $P159 = $P151."!make"($P158)
.annotate 'line', 768
    .return ($P159)
  control_147:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P160, exception, "payload"
    .return ($P160)
.end


.namespace ["NQP";"Actions"]
.sub "TOP"  :subid("20_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_168
.annotate 'line', 33
    new $P167, 'ExceptionHandler'
    set_addr $P167, control_166
    $P167."handle_types"(57)
    push_eh $P167
    .lex "self", self
    .lex "$/", param_168
    find_lex $P169, "$/"
    find_lex $P170, "$/"
    unless_null $P170, vivify_145
    $P170 = root_new ['parrot';'Hash']
  vivify_145:
    set $P171, $P170["comp_unit"]
    unless_null $P171, vivify_146
    new $P171, "Undef"
  vivify_146:
    $P172 = $P171."ast"()
    $P173 = $P169."!make"($P172)
    .return ($P173)
  control_166:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P174, exception, "payload"
    .return ($P174)
.end


.namespace ["NQP";"Actions"]
.sub "deflongname"  :subid("21_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_178
.annotate 'line', 35
    new $P177, 'ExceptionHandler'
    set_addr $P177, control_176
    $P177."handle_types"(57)
    push_eh $P177
    .lex "self", self
    .lex "$/", param_178
.annotate 'line', 36
    find_lex $P179, "$/"
.annotate 'line', 37
    find_lex $P182, "$/"
    unless_null $P182, vivify_147
    $P182 = root_new ['parrot';'Hash']
  vivify_147:
    set $P183, $P182["colonpair"]
    unless_null $P183, vivify_148
    new $P183, "Undef"
  vivify_148:
    if $P183, if_181
.annotate 'line', 39
    find_lex $P203, "$/"
    set $S204, $P203
    new $P180, 'String'
    set $P180, $S204
.annotate 'line', 37
    goto if_181_end
  if_181:
    find_lex $P184, "$/"
    unless_null $P184, vivify_149
    $P184 = root_new ['parrot';'Hash']
  vivify_149:
    set $P185, $P184["identifier"]
    unless_null $P185, vivify_150
    new $P185, "Undef"
  vivify_150:
    set $S186, $P185
    new $P187, 'String'
    set $P187, $S186
    concat $P188, $P187, ":"
    find_lex $P189, "$/"
    unless_null $P189, vivify_151
    $P189 = root_new ['parrot';'Hash']
  vivify_151:
    set $P190, $P189["colonpair"]
    unless_null $P190, vivify_152
    $P190 = root_new ['parrot';'ResizablePMCArray']
  vivify_152:
    set $P191, $P190[0]
    unless_null $P191, vivify_153
    new $P191, "Undef"
  vivify_153:
    $P192 = $P191."ast"()
    $S193 = $P192."named"()
    concat $P194, $P188, $S193
    concat $P195, $P194, "<"
.annotate 'line', 38
    find_lex $P196, "$/"
    unless_null $P196, vivify_154
    $P196 = root_new ['parrot';'Hash']
  vivify_154:
    set $P197, $P196["colonpair"]
    unless_null $P197, vivify_155
    $P197 = root_new ['parrot';'ResizablePMCArray']
  vivify_155:
    set $P198, $P197[0]
    unless_null $P198, vivify_156
    new $P198, "Undef"
  vivify_156:
    $P199 = $P198."ast"()
    $S200 = "colonpair_str"($P199)
    concat $P201, $P195, $S200
    concat $P202, $P201, ">"
    set $P180, $P202
  if_181_end:
.annotate 'line', 37
    $P205 = $P179."!make"($P180)
.annotate 'line', 35
    .return ($P205)
  control_176:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P206, exception, "payload"
    .return ($P206)
.end


.namespace ["NQP";"Actions"]
.sub "comp_unit"  :subid("22_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_211
.annotate 'line', 49
    new $P210, 'ExceptionHandler'
    set_addr $P210, control_209
    $P210."handle_types"(57)
    push_eh $P210
    .lex "self", self
    .lex "$/", param_211
.annotate 'line', 50
    new $P212, "Undef"
    .lex "$past", $P212
.annotate 'line', 51
    new $P213, "Undef"
    .lex "$BLOCK", $P213
.annotate 'line', 50
    find_lex $P214, "$/"
    unless_null $P214, vivify_157
    $P214 = root_new ['parrot';'Hash']
  vivify_157:
    set $P215, $P214["statementlist"]
    unless_null $P215, vivify_158
    new $P215, "Undef"
  vivify_158:
    $P216 = $P215."ast"()
    store_lex "$past", $P216
.annotate 'line', 51
    get_global $P217, "@BLOCK"
    $P218 = $P217."shift"()
    store_lex "$BLOCK", $P218
.annotate 'line', 52
    find_lex $P219, "$BLOCK"
    find_lex $P220, "$past"
    $P219."push"($P220)
.annotate 'line', 53
    find_lex $P221, "$BLOCK"
    find_lex $P222, "$/"
    $P221."node"($P222)
.annotate 'line', 54
    find_lex $P223, "$/"
    find_lex $P224, "$BLOCK"
    $P225 = $P223."!make"($P224)
.annotate 'line', 49
    .return ($P225)
  control_209:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P226, exception, "payload"
    .return ($P226)
.end


.namespace ["NQP";"Actions"]
.sub "statementlist"  :subid("23_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_230
.annotate 'line', 57
    .const 'Sub' $P244 = "24_1273728005.59439" 
    capture_lex $P244
    new $P229, 'ExceptionHandler'
    set_addr $P229, control_228
    $P229."handle_types"(57)
    push_eh $P229
    .lex "self", self
    .lex "$/", param_230
.annotate 'line', 58
    new $P231, "Undef"
    .lex "$past", $P231
    get_hll_global $P232, ["PAST"], "Stmts"
    find_lex $P233, "$/"
    $P234 = $P232."new"($P233 :named("node"))
    store_lex "$past", $P234
.annotate 'line', 59
    find_lex $P236, "$/"
    unless_null $P236, vivify_159
    $P236 = root_new ['parrot';'Hash']
  vivify_159:
    set $P237, $P236["statement"]
    unless_null $P237, vivify_160
    new $P237, "Undef"
  vivify_160:
    unless $P237, if_235_end
.annotate 'line', 60
    find_lex $P239, "$/"
    unless_null $P239, vivify_161
    $P239 = root_new ['parrot';'Hash']
  vivify_161:
    set $P240, $P239["statement"]
    unless_null $P240, vivify_162
    new $P240, "Undef"
  vivify_162:
    defined $I241, $P240
    unless $I241, for_undef_163
    iter $P238, $P240
    new $P270, 'ExceptionHandler'
    set_addr $P270, loop269_handler
    $P270."handle_types"(64, 66, 65)
    push_eh $P270
  loop269_test:
    unless $P238, loop269_done
    shift $P242, $P238
  loop269_redo:
    .const 'Sub' $P244 = "24_1273728005.59439" 
    capture_lex $P244
    $P244($P242)
  loop269_next:
    goto loop269_test
  loop269_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P271, exception, 'type'
    eq $P271, 64, loop269_next
    eq $P271, 66, loop269_redo
  loop269_done:
    pop_eh 
  for_undef_163:
  if_235_end:
.annotate 'line', 69
    find_lex $P272, "$/"
    find_lex $P273, "$past"
    $P274 = $P272."!make"($P273)
.annotate 'line', 57
    .return ($P274)
  control_228:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P275, exception, "payload"
    .return ($P275)
.end


.namespace ["NQP";"Actions"]
.sub "_block243"  :anon :subid("24_1273728005.59439") :outer("23_1273728005.59439")
    .param pmc param_246
.annotate 'line', 61
    new $P245, "Undef"
    .lex "$ast", $P245
    .lex "$_", param_246
    find_lex $P247, "$_"
    $P248 = $P247."ast"()
    store_lex "$ast", $P248
.annotate 'line', 62
    find_lex $P250, "$ast"
    unless_null $P250, vivify_164
    $P250 = root_new ['parrot';'Hash']
  vivify_164:
    set $P251, $P250["sink"]
    unless_null $P251, vivify_165
    new $P251, "Undef"
  vivify_165:
    defined $I252, $P251
    unless $I252, if_249_end
    find_lex $P253, "$ast"
    unless_null $P253, vivify_166
    $P253 = root_new ['parrot';'Hash']
  vivify_166:
    set $P254, $P253["sink"]
    unless_null $P254, vivify_167
    new $P254, "Undef"
  vivify_167:
    store_lex "$ast", $P254
  if_249_end:
.annotate 'line', 63
    find_lex $P258, "$ast"
    get_hll_global $P259, ["PAST"], "Block"
    $P260 = $P258."isa"($P259)
    if $P260, if_257
    set $P256, $P260
    goto if_257_end
  if_257:
    find_lex $P261, "$ast"
    $P262 = $P261."blocktype"()
    isfalse $I263, $P262
    new $P256, 'Integer'
    set $P256, $I263
  if_257_end:
    unless $P256, if_255_end
.annotate 'line', 64
    find_lex $P264, "$ast"
    $P265 = "block_immediate"($P264)
    store_lex "$ast", $P265
  if_255_end:
.annotate 'line', 66
    find_lex $P266, "$past"
    find_lex $P267, "$ast"
    $P268 = $P266."push"($P267)
.annotate 'line', 60
    .return ($P268)
.end


.namespace ["NQP";"Actions"]
.sub "statement"  :subid("25_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_279
    .param pmc param_280 :optional
    .param int has_param_280 :opt_flag
.annotate 'line', 72
    .const 'Sub' $P288 = "26_1273728005.59439" 
    capture_lex $P288
    new $P278, 'ExceptionHandler'
    set_addr $P278, control_277
    $P278."handle_types"(57)
    push_eh $P278
    .lex "self", self
    .lex "$/", param_279
    if has_param_280, optparam_168
    new $P281, "Undef"
    set param_280, $P281
  optparam_168:
    .lex "$key", param_280
.annotate 'line', 73
    new $P282, "Undef"
    .lex "$past", $P282
.annotate 'line', 72
    find_lex $P283, "$past"
.annotate 'line', 74
    find_lex $P285, "$/"
    unless_null $P285, vivify_169
    $P285 = root_new ['parrot';'Hash']
  vivify_169:
    set $P286, $P285["EXPR"]
    unless_null $P286, vivify_170
    new $P286, "Undef"
  vivify_170:
    if $P286, if_284
.annotate 'line', 85
    find_lex $P326, "$/"
    unless_null $P326, vivify_171
    $P326 = root_new ['parrot';'Hash']
  vivify_171:
    set $P327, $P326["statement_control"]
    unless_null $P327, vivify_172
    new $P327, "Undef"
  vivify_172:
    if $P327, if_325
.annotate 'line', 86
    new $P331, "Integer"
    assign $P331, 0
    store_lex "$past", $P331
    goto if_325_end
  if_325:
.annotate 'line', 85
    find_lex $P328, "$/"
    unless_null $P328, vivify_173
    $P328 = root_new ['parrot';'Hash']
  vivify_173:
    set $P329, $P328["statement_control"]
    unless_null $P329, vivify_174
    new $P329, "Undef"
  vivify_174:
    $P330 = $P329."ast"()
    store_lex "$past", $P330
  if_325_end:
    goto if_284_end
  if_284:
.annotate 'line', 74
    .const 'Sub' $P288 = "26_1273728005.59439" 
    capture_lex $P288
    $P288()
  if_284_end:
.annotate 'line', 87
    find_lex $P332, "$/"
    find_lex $P333, "$past"
    $P334 = $P332."!make"($P333)
.annotate 'line', 72
    .return ($P334)
  control_277:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P335, exception, "payload"
    .return ($P335)
.end


.namespace ["NQP";"Actions"]
.sub "_block287"  :anon :subid("26_1273728005.59439") :outer("25_1273728005.59439")
.annotate 'line', 75
    new $P289, "Undef"
    .lex "$mc", $P289
.annotate 'line', 76
    new $P290, "Undef"
    .lex "$ml", $P290
.annotate 'line', 75
    find_lex $P291, "$/"
    unless_null $P291, vivify_175
    $P291 = root_new ['parrot';'Hash']
  vivify_175:
    set $P292, $P291["statement_mod_cond"]
    unless_null $P292, vivify_176
    $P292 = root_new ['parrot';'ResizablePMCArray']
  vivify_176:
    set $P293, $P292[0]
    unless_null $P293, vivify_177
    new $P293, "Undef"
  vivify_177:
    store_lex "$mc", $P293
.annotate 'line', 76
    find_lex $P294, "$/"
    unless_null $P294, vivify_178
    $P294 = root_new ['parrot';'Hash']
  vivify_178:
    set $P295, $P294["statement_mod_loop"]
    unless_null $P295, vivify_179
    $P295 = root_new ['parrot';'ResizablePMCArray']
  vivify_179:
    set $P296, $P295[0]
    unless_null $P296, vivify_180
    new $P296, "Undef"
  vivify_180:
    store_lex "$ml", $P296
.annotate 'line', 77
    find_lex $P297, "$/"
    unless_null $P297, vivify_181
    $P297 = root_new ['parrot';'Hash']
  vivify_181:
    set $P298, $P297["EXPR"]
    unless_null $P298, vivify_182
    new $P298, "Undef"
  vivify_182:
    $P299 = $P298."ast"()
    store_lex "$past", $P299
.annotate 'line', 78
    find_lex $P301, "$mc"
    unless $P301, if_300_end
.annotate 'line', 79
    get_hll_global $P302, ["PAST"], "Op"
    find_lex $P303, "$mc"
    unless_null $P303, vivify_183
    $P303 = root_new ['parrot';'Hash']
  vivify_183:
    set $P304, $P303["cond"]
    unless_null $P304, vivify_184
    new $P304, "Undef"
  vivify_184:
    $P305 = $P304."ast"()
    find_lex $P306, "$past"
    find_lex $P307, "$mc"
    unless_null $P307, vivify_185
    $P307 = root_new ['parrot';'Hash']
  vivify_185:
    set $P308, $P307["sym"]
    unless_null $P308, vivify_186
    new $P308, "Undef"
  vivify_186:
    set $S309, $P308
    find_lex $P310, "$/"
    $P311 = $P302."new"($P305, $P306, $S309 :named("pasttype"), $P310 :named("node"))
    store_lex "$past", $P311
  if_300_end:
.annotate 'line', 81
    find_lex $P314, "$ml"
    if $P314, if_313
    set $P312, $P314
    goto if_313_end
  if_313:
.annotate 'line', 82
    get_hll_global $P315, ["PAST"], "Op"
    find_lex $P316, "$ml"
    unless_null $P316, vivify_187
    $P316 = root_new ['parrot';'Hash']
  vivify_187:
    set $P317, $P316["cond"]
    unless_null $P317, vivify_188
    new $P317, "Undef"
  vivify_188:
    $P318 = $P317."ast"()
    find_lex $P319, "$past"
    find_lex $P320, "$ml"
    unless_null $P320, vivify_189
    $P320 = root_new ['parrot';'Hash']
  vivify_189:
    set $P321, $P320["sym"]
    unless_null $P321, vivify_190
    new $P321, "Undef"
  vivify_190:
    set $S322, $P321
    find_lex $P323, "$/"
    $P324 = $P315."new"($P318, $P319, $S322 :named("pasttype"), $P323 :named("node"))
    store_lex "$past", $P324
.annotate 'line', 81
    set $P312, $P324
  if_313_end:
.annotate 'line', 74
    .return ($P312)
.end


.namespace ["NQP";"Actions"]
.sub "xblock"  :subid("27_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_339
.annotate 'line', 90
    new $P338, 'ExceptionHandler'
    set_addr $P338, control_337
    $P338."handle_types"(57)
    push_eh $P338
    .lex "self", self
    .lex "$/", param_339
.annotate 'line', 91
    find_lex $P340, "$/"
    get_hll_global $P341, ["PAST"], "Op"
    find_lex $P342, "$/"
    unless_null $P342, vivify_191
    $P342 = root_new ['parrot';'Hash']
  vivify_191:
    set $P343, $P342["EXPR"]
    unless_null $P343, vivify_192
    new $P343, "Undef"
  vivify_192:
    $P344 = $P343."ast"()
    find_lex $P345, "$/"
    unless_null $P345, vivify_193
    $P345 = root_new ['parrot';'Hash']
  vivify_193:
    set $P346, $P345["pblock"]
    unless_null $P346, vivify_194
    new $P346, "Undef"
  vivify_194:
    $P347 = $P346."ast"()
    find_lex $P348, "$/"
    $P349 = $P341."new"($P344, $P347, "if" :named("pasttype"), $P348 :named("node"))
    $P350 = $P340."!make"($P349)
.annotate 'line', 90
    .return ($P350)
  control_337:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P351, exception, "payload"
    .return ($P351)
.end


.namespace ["NQP";"Actions"]
.sub "pblock"  :subid("28_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_355
.annotate 'line', 94
    new $P354, 'ExceptionHandler'
    set_addr $P354, control_353
    $P354."handle_types"(57)
    push_eh $P354
    .lex "self", self
    .lex "$/", param_355
.annotate 'line', 95
    find_lex $P356, "$/"
    find_lex $P357, "$/"
    unless_null $P357, vivify_195
    $P357 = root_new ['parrot';'Hash']
  vivify_195:
    set $P358, $P357["blockoid"]
    unless_null $P358, vivify_196
    new $P358, "Undef"
  vivify_196:
    $P359 = $P358."ast"()
    $P360 = $P356."!make"($P359)
.annotate 'line', 94
    .return ($P360)
  control_353:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P361, exception, "payload"
    .return ($P361)
.end


.namespace ["NQP";"Actions"]
.sub "block"  :subid("29_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_365
.annotate 'line', 98
    new $P364, 'ExceptionHandler'
    set_addr $P364, control_363
    $P364."handle_types"(57)
    push_eh $P364
    .lex "self", self
    .lex "$/", param_365
.annotate 'line', 99
    find_lex $P366, "$/"
    find_lex $P367, "$/"
    unless_null $P367, vivify_197
    $P367 = root_new ['parrot';'Hash']
  vivify_197:
    set $P368, $P367["blockoid"]
    unless_null $P368, vivify_198
    new $P368, "Undef"
  vivify_198:
    $P369 = $P368."ast"()
    $P370 = $P366."!make"($P369)
.annotate 'line', 98
    .return ($P370)
  control_363:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P371, exception, "payload"
    .return ($P371)
.end


.namespace ["NQP";"Actions"]
.sub "blockoid"  :subid("30_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_375
.annotate 'line', 102
    new $P374, 'ExceptionHandler'
    set_addr $P374, control_373
    $P374."handle_types"(57)
    push_eh $P374
    .lex "self", self
    .lex "$/", param_375
.annotate 'line', 103
    new $P376, "Undef"
    .lex "$past", $P376
.annotate 'line', 104
    new $P377, "Undef"
    .lex "$BLOCK", $P377
.annotate 'line', 103
    find_lex $P378, "$/"
    unless_null $P378, vivify_199
    $P378 = root_new ['parrot';'Hash']
  vivify_199:
    set $P379, $P378["statementlist"]
    unless_null $P379, vivify_200
    new $P379, "Undef"
  vivify_200:
    $P380 = $P379."ast"()
    store_lex "$past", $P380
.annotate 'line', 104
    get_global $P381, "@BLOCK"
    $P382 = $P381."shift"()
    store_lex "$BLOCK", $P382
.annotate 'line', 105
    find_lex $P383, "$BLOCK"
    find_lex $P384, "$past"
    $P383."push"($P384)
.annotate 'line', 106
    find_lex $P385, "$BLOCK"
    find_lex $P386, "$/"
    $P385."node"($P386)
.annotate 'line', 107
    find_lex $P387, "$/"
    find_lex $P388, "$BLOCK"
    $P389 = $P387."!make"($P388)
.annotate 'line', 102
    .return ($P389)
  control_373:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P390, exception, "payload"
    .return ($P390)
.end


.namespace ["NQP";"Actions"]
.sub "newpad"  :subid("31_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_394
.annotate 'line', 110
    new $P393, 'ExceptionHandler'
    set_addr $P393, control_392
    $P393."handle_types"(57)
    push_eh $P393
    .lex "self", self
    .lex "$/", param_394
.annotate 'line', 111
    get_global $P395, "@BLOCK"
    unless_null $P395, vivify_201
    $P395 = root_new ['parrot';'ResizablePMCArray']
    set_global "@BLOCK", $P395
  vivify_201:
.annotate 'line', 110
    get_global $P396, "@BLOCK"
.annotate 'line', 112
    get_global $P397, "@BLOCK"
    get_hll_global $P398, ["PAST"], "Block"
    get_hll_global $P399, ["PAST"], "Stmts"
    $P400 = $P399."new"()
    $P401 = $P398."new"($P400)
    $P402 = $P397."unshift"($P401)
.annotate 'line', 110
    .return ($P402)
  control_392:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P403, exception, "payload"
    .return ($P403)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<if>"  :subid("32_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_407
.annotate 'line', 117
    .const 'Sub' $P435 = "33_1273728005.59439" 
    capture_lex $P435
    new $P406, 'ExceptionHandler'
    set_addr $P406, control_405
    $P406."handle_types"(57)
    push_eh $P406
    .lex "self", self
    .lex "$/", param_407
.annotate 'line', 118
    new $P408, "Undef"
    .lex "$count", $P408
.annotate 'line', 119
    new $P409, "Undef"
    .lex "$past", $P409
.annotate 'line', 118
    find_lex $P410, "$/"
    unless_null $P410, vivify_202
    $P410 = root_new ['parrot';'Hash']
  vivify_202:
    set $P411, $P410["xblock"]
    unless_null $P411, vivify_203
    new $P411, "Undef"
  vivify_203:
    set $N412, $P411
    new $P413, 'Float'
    set $P413, $N412
    sub $P414, $P413, 1
    store_lex "$count", $P414
.annotate 'line', 119
    find_lex $P415, "$count"
    set $I416, $P415
    find_lex $P417, "$/"
    unless_null $P417, vivify_204
    $P417 = root_new ['parrot';'Hash']
  vivify_204:
    set $P418, $P417["xblock"]
    unless_null $P418, vivify_205
    $P418 = root_new ['parrot';'ResizablePMCArray']
  vivify_205:
    set $P419, $P418[$I416]
    unless_null $P419, vivify_206
    new $P419, "Undef"
  vivify_206:
    $P420 = $P419."ast"()
    $P421 = "xblock_immediate"($P420)
    store_lex "$past", $P421
.annotate 'line', 120
    find_lex $P423, "$/"
    unless_null $P423, vivify_207
    $P423 = root_new ['parrot';'Hash']
  vivify_207:
    set $P424, $P423["else"]
    unless_null $P424, vivify_208
    new $P424, "Undef"
  vivify_208:
    unless $P424, if_422_end
.annotate 'line', 121
    find_lex $P425, "$past"
    find_lex $P426, "$/"
    unless_null $P426, vivify_209
    $P426 = root_new ['parrot';'Hash']
  vivify_209:
    set $P427, $P426["else"]
    unless_null $P427, vivify_210
    $P427 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    set $P428, $P427[0]
    unless_null $P428, vivify_211
    new $P428, "Undef"
  vivify_211:
    $P429 = $P428."ast"()
    $P430 = "block_immediate"($P429)
    $P425."push"($P430)
  if_422_end:
.annotate 'line', 124
    new $P451, 'ExceptionHandler'
    set_addr $P451, loop450_handler
    $P451."handle_types"(64, 66, 65)
    push_eh $P451
  loop450_test:
    find_lex $P431, "$count"
    set $N432, $P431
    isgt $I433, $N432, 0.0
    unless $I433, loop450_done
  loop450_redo:
    .const 'Sub' $P435 = "33_1273728005.59439" 
    capture_lex $P435
    $P435()
  loop450_next:
    goto loop450_test
  loop450_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P452, exception, 'type'
    eq $P452, 64, loop450_next
    eq $P452, 66, loop450_redo
  loop450_done:
    pop_eh 
.annotate 'line', 130
    find_lex $P453, "$/"
    find_lex $P454, "$past"
    $P455 = $P453."!make"($P454)
.annotate 'line', 117
    .return ($P455)
  control_405:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P456, exception, "payload"
    .return ($P456)
.end


.namespace ["NQP";"Actions"]
.sub "_block434"  :anon :subid("33_1273728005.59439") :outer("32_1273728005.59439")
.annotate 'line', 126
    new $P436, "Undef"
    .lex "$else", $P436
.annotate 'line', 124
    find_lex $P437, "$count"
    clone $P438, $P437
    dec $P437
.annotate 'line', 126
    find_lex $P439, "$past"
    store_lex "$else", $P439
.annotate 'line', 127
    find_lex $P440, "$count"
    set $I441, $P440
    find_lex $P442, "$/"
    unless_null $P442, vivify_212
    $P442 = root_new ['parrot';'Hash']
  vivify_212:
    set $P443, $P442["xblock"]
    unless_null $P443, vivify_213
    $P443 = root_new ['parrot';'ResizablePMCArray']
  vivify_213:
    set $P444, $P443[$I441]
    unless_null $P444, vivify_214
    new $P444, "Undef"
  vivify_214:
    $P445 = $P444."ast"()
    $P446 = "xblock_immediate"($P445)
    store_lex "$past", $P446
.annotate 'line', 128
    find_lex $P447, "$past"
    find_lex $P448, "$else"
    $P449 = $P447."push"($P448)
.annotate 'line', 124
    .return ($P449)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<unless>"  :subid("34_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_460
.annotate 'line', 133
    new $P459, 'ExceptionHandler'
    set_addr $P459, control_458
    $P459."handle_types"(57)
    push_eh $P459
    .lex "self", self
    .lex "$/", param_460
.annotate 'line', 134
    new $P461, "Undef"
    .lex "$past", $P461
    find_lex $P462, "$/"
    unless_null $P462, vivify_215
    $P462 = root_new ['parrot';'Hash']
  vivify_215:
    set $P463, $P462["xblock"]
    unless_null $P463, vivify_216
    new $P463, "Undef"
  vivify_216:
    $P464 = $P463."ast"()
    $P465 = "xblock_immediate"($P464)
    store_lex "$past", $P465
.annotate 'line', 135
    find_lex $P466, "$past"
    $P466."pasttype"("unless")
.annotate 'line', 136
    find_lex $P467, "$/"
    find_lex $P468, "$past"
    $P469 = $P467."!make"($P468)
.annotate 'line', 133
    .return ($P469)
  control_458:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P470, exception, "payload"
    .return ($P470)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<while>"  :subid("35_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_474
.annotate 'line', 139
    new $P473, 'ExceptionHandler'
    set_addr $P473, control_472
    $P473."handle_types"(57)
    push_eh $P473
    .lex "self", self
    .lex "$/", param_474
.annotate 'line', 140
    new $P475, "Undef"
    .lex "$past", $P475
    find_lex $P476, "$/"
    unless_null $P476, vivify_217
    $P476 = root_new ['parrot';'Hash']
  vivify_217:
    set $P477, $P476["xblock"]
    unless_null $P477, vivify_218
    new $P477, "Undef"
  vivify_218:
    $P478 = $P477."ast"()
    $P479 = "xblock_immediate"($P478)
    store_lex "$past", $P479
.annotate 'line', 141
    find_lex $P480, "$past"
    find_lex $P481, "$/"
    unless_null $P481, vivify_219
    $P481 = root_new ['parrot';'Hash']
  vivify_219:
    set $P482, $P481["sym"]
    unless_null $P482, vivify_220
    new $P482, "Undef"
  vivify_220:
    set $S483, $P482
    $P480."pasttype"($S483)
.annotate 'line', 142
    find_lex $P484, "$/"
    find_lex $P485, "$past"
    $P486 = $P484."!make"($P485)
.annotate 'line', 139
    .return ($P486)
  control_472:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P487, exception, "payload"
    .return ($P487)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<repeat>"  :subid("36_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_491
.annotate 'line', 145
    new $P490, 'ExceptionHandler'
    set_addr $P490, control_489
    $P490."handle_types"(57)
    push_eh $P490
    .lex "self", self
    .lex "$/", param_491
.annotate 'line', 146
    new $P492, "Undef"
    .lex "$pasttype", $P492
.annotate 'line', 147
    new $P493, "Undef"
    .lex "$past", $P493
.annotate 'line', 146
    new $P494, "String"
    assign $P494, "repeat_"
    find_lex $P495, "$/"
    unless_null $P495, vivify_221
    $P495 = root_new ['parrot';'Hash']
  vivify_221:
    set $P496, $P495["wu"]
    unless_null $P496, vivify_222
    new $P496, "Undef"
  vivify_222:
    set $S497, $P496
    concat $P498, $P494, $S497
    store_lex "$pasttype", $P498
    find_lex $P499, "$past"
.annotate 'line', 148
    find_lex $P501, "$/"
    unless_null $P501, vivify_223
    $P501 = root_new ['parrot';'Hash']
  vivify_223:
    set $P502, $P501["xblock"]
    unless_null $P502, vivify_224
    new $P502, "Undef"
  vivify_224:
    if $P502, if_500
.annotate 'line', 153
    get_hll_global $P509, ["PAST"], "Op"
    find_lex $P510, "$/"
    unless_null $P510, vivify_225
    $P510 = root_new ['parrot';'Hash']
  vivify_225:
    set $P511, $P510["EXPR"]
    unless_null $P511, vivify_226
    new $P511, "Undef"
  vivify_226:
    $P512 = $P511."ast"()
    find_lex $P513, "$/"
    unless_null $P513, vivify_227
    $P513 = root_new ['parrot';'Hash']
  vivify_227:
    set $P514, $P513["pblock"]
    unless_null $P514, vivify_228
    new $P514, "Undef"
  vivify_228:
    $P515 = $P514."ast"()
    $P516 = "block_immediate"($P515)
    find_lex $P517, "$pasttype"
    find_lex $P518, "$/"
    $P519 = $P509."new"($P512, $P516, $P517 :named("pasttype"), $P518 :named("node"))
    store_lex "$past", $P519
.annotate 'line', 152
    goto if_500_end
  if_500:
.annotate 'line', 149
    find_lex $P503, "$/"
    unless_null $P503, vivify_229
    $P503 = root_new ['parrot';'Hash']
  vivify_229:
    set $P504, $P503["xblock"]
    unless_null $P504, vivify_230
    new $P504, "Undef"
  vivify_230:
    $P505 = $P504."ast"()
    $P506 = "xblock_immediate"($P505)
    store_lex "$past", $P506
.annotate 'line', 150
    find_lex $P507, "$past"
    find_lex $P508, "$pasttype"
    $P507."pasttype"($P508)
  if_500_end:
.annotate 'line', 156
    find_lex $P520, "$/"
    find_lex $P521, "$past"
    $P522 = $P520."!make"($P521)
.annotate 'line', 145
    .return ($P522)
  control_489:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P523, exception, "payload"
    .return ($P523)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<for>"  :subid("37_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_527
.annotate 'line', 159
    new $P526, 'ExceptionHandler'
    set_addr $P526, control_525
    $P526."handle_types"(57)
    push_eh $P526
    .lex "self", self
    .lex "$/", param_527
.annotate 'line', 160
    new $P528, "Undef"
    .lex "$past", $P528
.annotate 'line', 162
    new $P529, "Undef"
    .lex "$block", $P529
.annotate 'line', 160
    find_lex $P530, "$/"
    unless_null $P530, vivify_231
    $P530 = root_new ['parrot';'Hash']
  vivify_231:
    set $P531, $P530["xblock"]
    unless_null $P531, vivify_232
    new $P531, "Undef"
  vivify_232:
    $P532 = $P531."ast"()
    store_lex "$past", $P532
.annotate 'line', 161
    find_lex $P533, "$past"
    $P533."pasttype"("for")
.annotate 'line', 162
    find_lex $P534, "$past"
    unless_null $P534, vivify_233
    $P534 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P535, $P534[1]
    unless_null $P535, vivify_234
    new $P535, "Undef"
  vivify_234:
    store_lex "$block", $P535
.annotate 'line', 163
    find_lex $P537, "$block"
    $P538 = $P537."arity"()
    if $P538, unless_536_end
.annotate 'line', 164
    find_lex $P539, "$block"
    unless_null $P539, vivify_235
    $P539 = root_new ['parrot';'ResizablePMCArray']
  vivify_235:
    set $P540, $P539[0]
    unless_null $P540, vivify_236
    new $P540, "Undef"
  vivify_236:
    get_hll_global $P541, ["PAST"], "Var"
    $P542 = $P541."new"("$_" :named("name"), "parameter" :named("scope"))
    $P540."push"($P542)
.annotate 'line', 165
    find_lex $P543, "$block"
    $P543."symbol"("$_", "lexical" :named("scope"))
.annotate 'line', 166
    find_lex $P544, "$block"
    $P544."arity"(1)
  unless_536_end:
.annotate 'line', 168
    find_lex $P545, "$block"
    $P545."blocktype"("immediate")
.annotate 'line', 169
    find_lex $P546, "$/"
    find_lex $P547, "$past"
    $P548 = $P546."!make"($P547)
.annotate 'line', 159
    .return ($P548)
  control_525:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P549, exception, "payload"
    .return ($P549)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<return>"  :subid("38_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_553
.annotate 'line', 172
    new $P552, 'ExceptionHandler'
    set_addr $P552, control_551
    $P552."handle_types"(57)
    push_eh $P552
    .lex "self", self
    .lex "$/", param_553
.annotate 'line', 173
    find_lex $P554, "$/"
    get_hll_global $P555, ["PAST"], "Op"
    find_lex $P556, "$/"
    unless_null $P556, vivify_237
    $P556 = root_new ['parrot';'Hash']
  vivify_237:
    set $P557, $P556["EXPR"]
    unless_null $P557, vivify_238
    new $P557, "Undef"
  vivify_238:
    $P558 = $P557."ast"()
    find_lex $P559, "$/"
    $P560 = $P555."new"($P558, "return" :named("pasttype"), $P559 :named("node"))
    $P561 = $P554."!make"($P560)
.annotate 'line', 172
    .return ($P561)
  control_551:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P562, exception, "payload"
    .return ($P562)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<CATCH>"  :subid("39_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_566
.annotate 'line', 176
    new $P565, 'ExceptionHandler'
    set_addr $P565, control_564
    $P565."handle_types"(57)
    push_eh $P565
    .lex "self", self
    .lex "$/", param_566
.annotate 'line', 177
    new $P567, "Undef"
    .lex "$block", $P567
    find_lex $P568, "$/"
    unless_null $P568, vivify_239
    $P568 = root_new ['parrot';'Hash']
  vivify_239:
    set $P569, $P568["block"]
    unless_null $P569, vivify_240
    new $P569, "Undef"
  vivify_240:
    $P570 = $P569."ast"()
    store_lex "$block", $P570
.annotate 'line', 178
    find_lex $P571, "$/"
    find_lex $P572, "$block"
    "push_block_handler"($P571, $P572)
.annotate 'line', 179
    get_global $P573, "@BLOCK"
    unless_null $P573, vivify_241
    $P573 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    set $P574, $P573[0]
    unless_null $P574, vivify_242
    new $P574, "Undef"
  vivify_242:
    $P575 = $P574."handlers"()
    set $P576, $P575[0]
    unless_null $P576, vivify_243
    new $P576, "Undef"
  vivify_243:
    $P576."handle_types_except"("CONTROL")
.annotate 'line', 180
    find_lex $P577, "$/"
    get_hll_global $P578, ["PAST"], "Stmts"
    find_lex $P579, "$/"
    $P580 = $P578."new"($P579 :named("node"))
    $P581 = $P577."!make"($P580)
.annotate 'line', 176
    .return ($P581)
  control_564:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P582, exception, "payload"
    .return ($P582)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<CONTROL>"  :subid("40_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_586
.annotate 'line', 183
    new $P585, 'ExceptionHandler'
    set_addr $P585, control_584
    $P585."handle_types"(57)
    push_eh $P585
    .lex "self", self
    .lex "$/", param_586
.annotate 'line', 184
    new $P587, "Undef"
    .lex "$block", $P587
    find_lex $P588, "$/"
    unless_null $P588, vivify_244
    $P588 = root_new ['parrot';'Hash']
  vivify_244:
    set $P589, $P588["block"]
    unless_null $P589, vivify_245
    new $P589, "Undef"
  vivify_245:
    $P590 = $P589."ast"()
    store_lex "$block", $P590
.annotate 'line', 185
    find_lex $P591, "$/"
    find_lex $P592, "$block"
    "push_block_handler"($P591, $P592)
.annotate 'line', 186
    get_global $P593, "@BLOCK"
    unless_null $P593, vivify_246
    $P593 = root_new ['parrot';'ResizablePMCArray']
  vivify_246:
    set $P594, $P593[0]
    unless_null $P594, vivify_247
    new $P594, "Undef"
  vivify_247:
    $P595 = $P594."handlers"()
    set $P596, $P595[0]
    unless_null $P596, vivify_248
    new $P596, "Undef"
  vivify_248:
    $P596."handle_types"("CONTROL")
.annotate 'line', 187
    find_lex $P597, "$/"
    get_hll_global $P598, ["PAST"], "Stmts"
    find_lex $P599, "$/"
    $P600 = $P598."new"($P599 :named("node"))
    $P601 = $P597."!make"($P600)
.annotate 'line', 183
    .return ($P601)
  control_584:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P602, exception, "payload"
    .return ($P602)
.end


.namespace ["NQP";"Actions"]
.sub "statement_prefix:sym<INIT>"  :subid("41_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_607
.annotate 'line', 227
    new $P606, 'ExceptionHandler'
    set_addr $P606, control_605
    $P606."handle_types"(57)
    push_eh $P606
    .lex "self", self
    .lex "$/", param_607
.annotate 'line', 228
    get_global $P608, "@BLOCK"
    unless_null $P608, vivify_249
    $P608 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    set $P609, $P608[0]
    unless_null $P609, vivify_250
    new $P609, "Undef"
  vivify_250:
    $P610 = $P609."loadinit"()
    find_lex $P611, "$/"
    unless_null $P611, vivify_251
    $P611 = root_new ['parrot';'Hash']
  vivify_251:
    set $P612, $P611["blorst"]
    unless_null $P612, vivify_252
    new $P612, "Undef"
  vivify_252:
    $P613 = $P612."ast"()
    $P610."push"($P613)
.annotate 'line', 229
    find_lex $P614, "$/"
    get_hll_global $P615, ["PAST"], "Stmts"
    find_lex $P616, "$/"
    $P617 = $P615."new"($P616 :named("node"))
    $P618 = $P614."!make"($P617)
.annotate 'line', 227
    .return ($P618)
  control_605:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P619, exception, "payload"
    .return ($P619)
.end


.namespace ["NQP";"Actions"]
.sub "statement_prefix:sym<try>"  :subid("42_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_623
.annotate 'line', 232
    new $P622, 'ExceptionHandler'
    set_addr $P622, control_621
    $P622."handle_types"(57)
    push_eh $P622
    .lex "self", self
    .lex "$/", param_623
.annotate 'line', 233
    new $P624, "Undef"
    .lex "$past", $P624
    find_lex $P625, "$/"
    unless_null $P625, vivify_253
    $P625 = root_new ['parrot';'Hash']
  vivify_253:
    set $P626, $P625["blorst"]
    unless_null $P626, vivify_254
    new $P626, "Undef"
  vivify_254:
    $P627 = $P626."ast"()
    store_lex "$past", $P627
.annotate 'line', 234
    find_lex $P629, "$past"
    $S630 = $P629."WHAT"()
    isne $I631, $S630, "PAST::Block()"
    unless $I631, if_628_end
.annotate 'line', 235
    get_hll_global $P632, ["PAST"], "Block"
    find_lex $P633, "$past"
    find_lex $P634, "$/"
    $P635 = $P632."new"($P633, "immediate" :named("blocktype"), $P634 :named("node"))
    store_lex "$past", $P635
  if_628_end:
.annotate 'line', 237
    find_lex $P637, "$past"
    $P638 = $P637."handlers"()
    if $P638, unless_636_end
.annotate 'line', 238
    find_lex $P639, "$past"
    get_hll_global $P640, ["PAST"], "Control"
.annotate 'line', 240
    get_hll_global $P641, ["PAST"], "Stmts"
.annotate 'line', 241
    get_hll_global $P642, ["PAST"], "Op"
.annotate 'line', 242
    get_hll_global $P643, ["PAST"], "Var"
.annotate 'line', 243
    get_hll_global $P644, ["PAST"], "Var"
    $P645 = $P644."new"("register" :named("scope"), "exception" :named("name"))
    $P646 = $P643."new"($P645, "handled", "keyed" :named("scope"))
.annotate 'line', 242
    $P647 = $P642."new"($P646, 1, "bind" :named("pasttype"))
.annotate 'line', 241
    $P648 = $P641."new"($P647)
.annotate 'line', 240
    $P649 = $P640."new"($P648, "CONTROL" :named("handle_types_except"))
.annotate 'line', 238
    new $P650, "ResizablePMCArray"
    push $P650, $P649
    $P639."handlers"($P650)
  unless_636_end:
.annotate 'line', 252
    find_lex $P651, "$/"
    find_lex $P652, "$past"
    $P653 = $P651."!make"($P652)
.annotate 'line', 232
    .return ($P653)
  control_621:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P654, exception, "payload"
    .return ($P654)
.end


.namespace ["NQP";"Actions"]
.sub "blorst"  :subid("43_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_658
.annotate 'line', 255
    new $P657, 'ExceptionHandler'
    set_addr $P657, control_656
    $P657."handle_types"(57)
    push_eh $P657
    .lex "self", self
    .lex "$/", param_658
.annotate 'line', 256
    find_lex $P659, "$/"
.annotate 'line', 257
    find_lex $P662, "$/"
    unless_null $P662, vivify_255
    $P662 = root_new ['parrot';'Hash']
  vivify_255:
    set $P663, $P662["block"]
    unless_null $P663, vivify_256
    new $P663, "Undef"
  vivify_256:
    if $P663, if_661
.annotate 'line', 258
    find_lex $P668, "$/"
    unless_null $P668, vivify_257
    $P668 = root_new ['parrot';'Hash']
  vivify_257:
    set $P669, $P668["statement"]
    unless_null $P669, vivify_258
    new $P669, "Undef"
  vivify_258:
    $P670 = $P669."ast"()
    set $P660, $P670
.annotate 'line', 257
    goto if_661_end
  if_661:
    find_lex $P664, "$/"
    unless_null $P664, vivify_259
    $P664 = root_new ['parrot';'Hash']
  vivify_259:
    set $P665, $P664["block"]
    unless_null $P665, vivify_260
    new $P665, "Undef"
  vivify_260:
    $P666 = $P665."ast"()
    $P667 = "block_immediate"($P666)
    set $P660, $P667
  if_661_end:
    $P671 = $P659."!make"($P660)
.annotate 'line', 255
    .return ($P671)
  control_656:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P672, exception, "payload"
    .return ($P672)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_cond:sym<if>"  :subid("44_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_676
.annotate 'line', 263
    new $P675, 'ExceptionHandler'
    set_addr $P675, control_674
    $P675."handle_types"(57)
    push_eh $P675
    .lex "self", self
    .lex "$/", param_676
    find_lex $P677, "$/"
    find_lex $P678, "$/"
    unless_null $P678, vivify_261
    $P678 = root_new ['parrot';'Hash']
  vivify_261:
    set $P679, $P678["cond"]
    unless_null $P679, vivify_262
    new $P679, "Undef"
  vivify_262:
    $P680 = $P679."ast"()
    $P681 = $P677."!make"($P680)
    .return ($P681)
  control_674:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P682, exception, "payload"
    .return ($P682)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_cond:sym<unless>"  :subid("45_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_686
.annotate 'line', 264
    new $P685, 'ExceptionHandler'
    set_addr $P685, control_684
    $P685."handle_types"(57)
    push_eh $P685
    .lex "self", self
    .lex "$/", param_686
    find_lex $P687, "$/"
    find_lex $P688, "$/"
    unless_null $P688, vivify_263
    $P688 = root_new ['parrot';'Hash']
  vivify_263:
    set $P689, $P688["cond"]
    unless_null $P689, vivify_264
    new $P689, "Undef"
  vivify_264:
    $P690 = $P689."ast"()
    $P691 = $P687."!make"($P690)
    .return ($P691)
  control_684:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P692, exception, "payload"
    .return ($P692)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_loop:sym<while>"  :subid("46_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_696
.annotate 'line', 266
    new $P695, 'ExceptionHandler'
    set_addr $P695, control_694
    $P695."handle_types"(57)
    push_eh $P695
    .lex "self", self
    .lex "$/", param_696
    find_lex $P697, "$/"
    find_lex $P698, "$/"
    unless_null $P698, vivify_265
    $P698 = root_new ['parrot';'Hash']
  vivify_265:
    set $P699, $P698["cond"]
    unless_null $P699, vivify_266
    new $P699, "Undef"
  vivify_266:
    $P700 = $P699."ast"()
    $P701 = $P697."!make"($P700)
    .return ($P701)
  control_694:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P702, exception, "payload"
    .return ($P702)
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_loop:sym<until>"  :subid("47_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_706
.annotate 'line', 267
    new $P705, 'ExceptionHandler'
    set_addr $P705, control_704
    $P705."handle_types"(57)
    push_eh $P705
    .lex "self", self
    .lex "$/", param_706
    find_lex $P707, "$/"
    find_lex $P708, "$/"
    unless_null $P708, vivify_267
    $P708 = root_new ['parrot';'Hash']
  vivify_267:
    set $P709, $P708["cond"]
    unless_null $P709, vivify_268
    new $P709, "Undef"
  vivify_268:
    $P710 = $P709."ast"()
    $P711 = $P707."!make"($P710)
    .return ($P711)
  control_704:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P712, exception, "payload"
    .return ($P712)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<fatarrow>"  :subid("48_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_716
.annotate 'line', 271
    new $P715, 'ExceptionHandler'
    set_addr $P715, control_714
    $P715."handle_types"(57)
    push_eh $P715
    .lex "self", self
    .lex "$/", param_716
    find_lex $P717, "$/"
    find_lex $P718, "$/"
    unless_null $P718, vivify_269
    $P718 = root_new ['parrot';'Hash']
  vivify_269:
    set $P719, $P718["fatarrow"]
    unless_null $P719, vivify_270
    new $P719, "Undef"
  vivify_270:
    $P720 = $P719."ast"()
    $P721 = $P717."!make"($P720)
    .return ($P721)
  control_714:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P722, exception, "payload"
    .return ($P722)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<colonpair>"  :subid("49_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_726
.annotate 'line', 272
    new $P725, 'ExceptionHandler'
    set_addr $P725, control_724
    $P725."handle_types"(57)
    push_eh $P725
    .lex "self", self
    .lex "$/", param_726
    find_lex $P727, "$/"
    find_lex $P728, "$/"
    unless_null $P728, vivify_271
    $P728 = root_new ['parrot';'Hash']
  vivify_271:
    set $P729, $P728["colonpair"]
    unless_null $P729, vivify_272
    new $P729, "Undef"
  vivify_272:
    $P730 = $P729."ast"()
    $P731 = $P727."!make"($P730)
    .return ($P731)
  control_724:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P732, exception, "payload"
    .return ($P732)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<variable>"  :subid("50_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_736
.annotate 'line', 273
    new $P735, 'ExceptionHandler'
    set_addr $P735, control_734
    $P735."handle_types"(57)
    push_eh $P735
    .lex "self", self
    .lex "$/", param_736
    find_lex $P737, "$/"
    find_lex $P738, "$/"
    unless_null $P738, vivify_273
    $P738 = root_new ['parrot';'Hash']
  vivify_273:
    set $P739, $P738["variable"]
    unless_null $P739, vivify_274
    new $P739, "Undef"
  vivify_274:
    $P740 = $P739."ast"()
    $P741 = $P737."!make"($P740)
    .return ($P741)
  control_734:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P742, exception, "payload"
    .return ($P742)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<package_declarator>"  :subid("51_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_746
.annotate 'line', 274
    new $P745, 'ExceptionHandler'
    set_addr $P745, control_744
    $P745."handle_types"(57)
    push_eh $P745
    .lex "self", self
    .lex "$/", param_746
    find_lex $P747, "$/"
    find_lex $P748, "$/"
    unless_null $P748, vivify_275
    $P748 = root_new ['parrot';'Hash']
  vivify_275:
    set $P749, $P748["package_declarator"]
    unless_null $P749, vivify_276
    new $P749, "Undef"
  vivify_276:
    $P750 = $P749."ast"()
    $P751 = $P747."!make"($P750)
    .return ($P751)
  control_744:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P752, exception, "payload"
    .return ($P752)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<scope_declarator>"  :subid("52_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_756
.annotate 'line', 275
    new $P755, 'ExceptionHandler'
    set_addr $P755, control_754
    $P755."handle_types"(57)
    push_eh $P755
    .lex "self", self
    .lex "$/", param_756
    find_lex $P757, "$/"
    find_lex $P758, "$/"
    unless_null $P758, vivify_277
    $P758 = root_new ['parrot';'Hash']
  vivify_277:
    set $P759, $P758["scope_declarator"]
    unless_null $P759, vivify_278
    new $P759, "Undef"
  vivify_278:
    $P760 = $P759."ast"()
    $P761 = $P757."!make"($P760)
    .return ($P761)
  control_754:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P762, exception, "payload"
    .return ($P762)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<routine_declarator>"  :subid("53_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_766
.annotate 'line', 276
    new $P765, 'ExceptionHandler'
    set_addr $P765, control_764
    $P765."handle_types"(57)
    push_eh $P765
    .lex "self", self
    .lex "$/", param_766
    find_lex $P767, "$/"
    find_lex $P768, "$/"
    unless_null $P768, vivify_279
    $P768 = root_new ['parrot';'Hash']
  vivify_279:
    set $P769, $P768["routine_declarator"]
    unless_null $P769, vivify_280
    new $P769, "Undef"
  vivify_280:
    $P770 = $P769."ast"()
    $P771 = $P767."!make"($P770)
    .return ($P771)
  control_764:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P772, exception, "payload"
    .return ($P772)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<regex_declarator>"  :subid("54_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_776
.annotate 'line', 277
    new $P775, 'ExceptionHandler'
    set_addr $P775, control_774
    $P775."handle_types"(57)
    push_eh $P775
    .lex "self", self
    .lex "$/", param_776
    find_lex $P777, "$/"
    find_lex $P778, "$/"
    unless_null $P778, vivify_281
    $P778 = root_new ['parrot';'Hash']
  vivify_281:
    set $P779, $P778["regex_declarator"]
    unless_null $P779, vivify_282
    new $P779, "Undef"
  vivify_282:
    $P780 = $P779."ast"()
    $P781 = $P777."!make"($P780)
    .return ($P781)
  control_774:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P782, exception, "payload"
    .return ($P782)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<statement_prefix>"  :subid("55_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_786
.annotate 'line', 278
    new $P785, 'ExceptionHandler'
    set_addr $P785, control_784
    $P785."handle_types"(57)
    push_eh $P785
    .lex "self", self
    .lex "$/", param_786
    find_lex $P787, "$/"
    find_lex $P788, "$/"
    unless_null $P788, vivify_283
    $P788 = root_new ['parrot';'Hash']
  vivify_283:
    set $P789, $P788["statement_prefix"]
    unless_null $P789, vivify_284
    new $P789, "Undef"
  vivify_284:
    $P790 = $P789."ast"()
    $P791 = $P787."!make"($P790)
    .return ($P791)
  control_784:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P792, exception, "payload"
    .return ($P792)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<lambda>"  :subid("56_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_796
.annotate 'line', 279
    new $P795, 'ExceptionHandler'
    set_addr $P795, control_794
    $P795."handle_types"(57)
    push_eh $P795
    .lex "self", self
    .lex "$/", param_796
    find_lex $P797, "$/"
    find_lex $P798, "$/"
    unless_null $P798, vivify_285
    $P798 = root_new ['parrot';'Hash']
  vivify_285:
    set $P799, $P798["pblock"]
    unless_null $P799, vivify_286
    new $P799, "Undef"
  vivify_286:
    $P800 = $P799."ast"()
    $P801 = $P797."!make"($P800)
    .return ($P801)
  control_794:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P802, exception, "payload"
    .return ($P802)
.end


.namespace ["NQP";"Actions"]
.sub "fatarrow"  :subid("57_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_806
.annotate 'line', 281
    new $P805, 'ExceptionHandler'
    set_addr $P805, control_804
    $P805."handle_types"(57)
    push_eh $P805
    .lex "self", self
    .lex "$/", param_806
.annotate 'line', 282
    new $P807, "Undef"
    .lex "$past", $P807
    find_lex $P808, "$/"
    unless_null $P808, vivify_287
    $P808 = root_new ['parrot';'Hash']
  vivify_287:
    set $P809, $P808["val"]
    unless_null $P809, vivify_288
    new $P809, "Undef"
  vivify_288:
    $P810 = $P809."ast"()
    store_lex "$past", $P810
.annotate 'line', 283
    find_lex $P811, "$past"
    find_lex $P812, "$/"
    unless_null $P812, vivify_289
    $P812 = root_new ['parrot';'Hash']
  vivify_289:
    set $P813, $P812["key"]
    unless_null $P813, vivify_290
    new $P813, "Undef"
  vivify_290:
    $P814 = $P813."Str"()
    $P811."named"($P814)
.annotate 'line', 284
    find_lex $P815, "$/"
    find_lex $P816, "$past"
    $P817 = $P815."!make"($P816)
.annotate 'line', 281
    .return ($P817)
  control_804:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P818, exception, "payload"
    .return ($P818)
.end


.namespace ["NQP";"Actions"]
.sub "colonpair"  :subid("58_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_822
.annotate 'line', 287
    new $P821, 'ExceptionHandler'
    set_addr $P821, control_820
    $P821."handle_types"(57)
    push_eh $P821
    .lex "self", self
    .lex "$/", param_822
.annotate 'line', 288
    new $P823, "Undef"
    .lex "$past", $P823
.annotate 'line', 289
    find_lex $P826, "$/"
    unless_null $P826, vivify_291
    $P826 = root_new ['parrot';'Hash']
  vivify_291:
    set $P827, $P826["circumfix"]
    unless_null $P827, vivify_292
    new $P827, "Undef"
  vivify_292:
    if $P827, if_825
.annotate 'line', 290
    get_hll_global $P832, ["PAST"], "Val"
    find_lex $P833, "$/"
    unless_null $P833, vivify_293
    $P833 = root_new ['parrot';'Hash']
  vivify_293:
    set $P834, $P833["not"]
    unless_null $P834, vivify_294
    new $P834, "Undef"
  vivify_294:
    isfalse $I835, $P834
    $P836 = $P832."new"($I835 :named("value"))
    set $P824, $P836
.annotate 'line', 289
    goto if_825_end
  if_825:
    find_lex $P828, "$/"
    unless_null $P828, vivify_295
    $P828 = root_new ['parrot';'Hash']
  vivify_295:
    set $P829, $P828["circumfix"]
    unless_null $P829, vivify_296
    $P829 = root_new ['parrot';'ResizablePMCArray']
  vivify_296:
    set $P830, $P829[0]
    unless_null $P830, vivify_297
    new $P830, "Undef"
  vivify_297:
    $P831 = $P830."ast"()
    set $P824, $P831
  if_825_end:
    store_lex "$past", $P824
.annotate 'line', 291
    find_lex $P837, "$past"
    find_lex $P838, "$/"
    unless_null $P838, vivify_298
    $P838 = root_new ['parrot';'Hash']
  vivify_298:
    set $P839, $P838["identifier"]
    unless_null $P839, vivify_299
    new $P839, "Undef"
  vivify_299:
    set $S840, $P839
    $P837."named"($S840)
.annotate 'line', 292
    find_lex $P841, "$/"
    find_lex $P842, "$past"
    $P843 = $P841."!make"($P842)
.annotate 'line', 287
    .return ($P843)
  control_820:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P844, exception, "payload"
    .return ($P844)
.end


.namespace ["NQP";"Actions"]
.sub "variable"  :subid("59_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_848
.annotate 'line', 295
    .const 'Sub' $P861 = "60_1273728005.59439" 
    capture_lex $P861
    new $P847, 'ExceptionHandler'
    set_addr $P847, control_846
    $P847."handle_types"(57)
    push_eh $P847
    .lex "self", self
    .lex "$/", param_848
.annotate 'line', 296
    new $P849, "Undef"
    .lex "$past", $P849
.annotate 'line', 295
    find_lex $P850, "$past"
.annotate 'line', 297
    find_lex $P852, "$/"
    unless_null $P852, vivify_300
    $P852 = root_new ['parrot';'Hash']
  vivify_300:
    set $P853, $P852["postcircumfix"]
    unless_null $P853, vivify_301
    new $P853, "Undef"
  vivify_301:
    if $P853, if_851
.annotate 'line', 301
    .const 'Sub' $P861 = "60_1273728005.59439" 
    capture_lex $P861
    $P861()
    goto if_851_end
  if_851:
.annotate 'line', 298
    find_lex $P854, "$/"
    unless_null $P854, vivify_318
    $P854 = root_new ['parrot';'Hash']
  vivify_318:
    set $P855, $P854["postcircumfix"]
    unless_null $P855, vivify_319
    new $P855, "Undef"
  vivify_319:
    $P856 = $P855."ast"()
    store_lex "$past", $P856
.annotate 'line', 299
    find_lex $P857, "$past"
    get_hll_global $P858, ["PAST"], "Var"
    $P859 = $P858."new"("$/" :named("name"))
    $P857."unshift"($P859)
  if_851_end:
.annotate 'line', 330
    find_lex $P930, "$/"
    find_lex $P931, "$past"
    $P932 = $P930."!make"($P931)
.annotate 'line', 295
    .return ($P932)
  control_846:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P933, exception, "payload"
    .return ($P933)
.end


.namespace ["NQP";"Actions"]
.sub "_block860"  :anon :subid("60_1273728005.59439") :outer("59_1273728005.59439")
.annotate 'line', 302
    $P862 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P862
    get_hll_global $P863, ["NQP"], "Compiler"
    find_lex $P864, "$/"
    set $S865, $P864
    $P866 = $P863."parse_name"($S865)
    store_lex "@name", $P866
.annotate 'line', 303
    get_hll_global $P867, ["PAST"], "Var"
    find_lex $P868, "@name"
    $P869 = $P868."pop"()
    set $S870, $P869
    $P871 = $P867."new"($S870 :named("name"))
    store_lex "$past", $P871
.annotate 'line', 304
    find_lex $P873, "@name"
    unless $P873, if_872_end
.annotate 'line', 305
    find_lex $P875, "@name"
    unless_null $P875, vivify_302
    $P875 = root_new ['parrot';'ResizablePMCArray']
  vivify_302:
    set $P876, $P875[0]
    unless_null $P876, vivify_303
    new $P876, "Undef"
  vivify_303:
    set $S877, $P876
    iseq $I878, $S877, "GLOBAL"
    unless $I878, if_874_end
    find_lex $P879, "@name"
    $P879."shift"()
  if_874_end:
.annotate 'line', 306
    find_lex $P880, "$past"
    find_lex $P881, "@name"
    $P880."namespace"($P881)
.annotate 'line', 307
    find_lex $P882, "$past"
    $P882."scope"("package")
.annotate 'line', 308
    find_lex $P883, "$past"
    find_lex $P884, "$/"
    unless_null $P884, vivify_304
    $P884 = root_new ['parrot';'Hash']
  vivify_304:
    set $P885, $P884["sigil"]
    unless_null $P885, vivify_305
    new $P885, "Undef"
  vivify_305:
    $P886 = "vivitype"($P885)
    $P883."viviself"($P886)
.annotate 'line', 309
    find_lex $P887, "$past"
    $P887."lvalue"(1)
  if_872_end:
.annotate 'line', 311
    find_lex $P890, "$/"
    unless_null $P890, vivify_306
    $P890 = root_new ['parrot';'Hash']
  vivify_306:
    set $P891, $P890["twigil"]
    unless_null $P891, vivify_307
    $P891 = root_new ['parrot';'ResizablePMCArray']
  vivify_307:
    set $P892, $P891[0]
    unless_null $P892, vivify_308
    new $P892, "Undef"
  vivify_308:
    set $S893, $P892
    iseq $I894, $S893, "*"
    if $I894, if_889
.annotate 'line', 324
    find_lex $P916, "$/"
    unless_null $P916, vivify_309
    $P916 = root_new ['parrot';'Hash']
  vivify_309:
    set $P917, $P916["twigil"]
    unless_null $P917, vivify_310
    $P917 = root_new ['parrot';'ResizablePMCArray']
  vivify_310:
    set $P918, $P917[0]
    unless_null $P918, vivify_311
    new $P918, "Undef"
  vivify_311:
    set $S919, $P918
    iseq $I920, $S919, "!"
    if $I920, if_915
    new $P914, 'Integer'
    set $P914, $I920
    goto if_915_end
  if_915:
.annotate 'line', 325
    find_lex $P921, "$past"
    get_hll_global $P922, ["PAST"], "Var"
    $P923 = $P922."new"("self" :named("name"))
    $P921."push"($P923)
.annotate 'line', 326
    find_lex $P924, "$past"
    $P924."scope"("attribute")
.annotate 'line', 327
    find_lex $P925, "$past"
    find_lex $P926, "$/"
    unless_null $P926, vivify_312
    $P926 = root_new ['parrot';'Hash']
  vivify_312:
    set $P927, $P926["sigil"]
    unless_null $P927, vivify_313
    new $P927, "Undef"
  vivify_313:
    $P928 = "vivitype"($P927)
    $P929 = $P925."viviself"($P928)
.annotate 'line', 324
    set $P914, $P929
  if_915_end:
    set $P888, $P914
.annotate 'line', 311
    goto if_889_end
  if_889:
.annotate 'line', 312
    find_lex $P895, "$past"
    $P895."scope"("contextual")
.annotate 'line', 313
    find_lex $P896, "$past"
.annotate 'line', 314
    get_hll_global $P897, ["PAST"], "Var"
.annotate 'line', 316
    find_lex $P898, "$/"
    unless_null $P898, vivify_314
    $P898 = root_new ['parrot';'Hash']
  vivify_314:
    set $P899, $P898["sigil"]
    unless_null $P899, vivify_315
    new $P899, "Undef"
  vivify_315:
    set $S900, $P899
    new $P901, 'String'
    set $P901, $S900
    find_lex $P902, "$/"
    unless_null $P902, vivify_316
    $P902 = root_new ['parrot';'Hash']
  vivify_316:
    set $P903, $P902["desigilname"]
    unless_null $P903, vivify_317
    new $P903, "Undef"
  vivify_317:
    concat $P904, $P901, $P903
.annotate 'line', 318
    get_hll_global $P905, ["PAST"], "Op"
    new $P906, "String"
    assign $P906, "Contextual "
    find_lex $P907, "$/"
    set $S908, $P907
    concat $P909, $P906, $S908
    concat $P910, $P909, " not found"
    $P911 = $P905."new"($P910, "die" :named("pirop"))
    $P912 = $P897."new"("package" :named("scope"), "" :named("namespace"), $P904 :named("name"), $P911 :named("viviself"))
.annotate 'line', 314
    $P913 = $P896."viviself"($P912)
.annotate 'line', 311
    set $P888, $P913
  if_889_end:
.annotate 'line', 301
    .return ($P888)
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<module>"  :subid("61_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_937
.annotate 'line', 333
    new $P936, 'ExceptionHandler'
    set_addr $P936, control_935
    $P936."handle_types"(57)
    push_eh $P936
    .lex "self", self
    .lex "$/", param_937
    find_lex $P938, "$/"
    find_lex $P939, "$/"
    unless_null $P939, vivify_320
    $P939 = root_new ['parrot';'Hash']
  vivify_320:
    set $P940, $P939["package_def"]
    unless_null $P940, vivify_321
    new $P940, "Undef"
  vivify_321:
    $P941 = $P940."ast"()
    $P942 = $P938."!make"($P941)
    .return ($P942)
  control_935:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P943, exception, "payload"
    .return ($P943)
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<class>"  :subid("62_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_947
.annotate 'line', 334
    new $P946, 'ExceptionHandler'
    set_addr $P946, control_945
    $P946."handle_types"(57)
    push_eh $P946
    .lex "self", self
    .lex "$/", param_947
.annotate 'line', 335
    new $P948, "Undef"
    .lex "$past", $P948
.annotate 'line', 336
    new $P949, "Undef"
    .lex "$classinit", $P949
.annotate 'line', 345
    new $P950, "Undef"
    .lex "$parent", $P950
.annotate 'line', 335
    find_lex $P951, "$/"
    unless_null $P951, vivify_322
    $P951 = root_new ['parrot';'Hash']
  vivify_322:
    set $P952, $P951["package_def"]
    unless_null $P952, vivify_323
    new $P952, "Undef"
  vivify_323:
    $P953 = $P952."ast"()
    store_lex "$past", $P953
.annotate 'line', 337
    get_hll_global $P954, ["PAST"], "Op"
.annotate 'line', 338
    get_hll_global $P955, ["PAST"], "Op"
    $P956 = $P955."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate 'line', 341
    find_lex $P957, "$/"
    unless_null $P957, vivify_324
    $P957 = root_new ['parrot';'Hash']
  vivify_324:
    set $P958, $P957["package_def"]
    unless_null $P958, vivify_325
    $P958 = root_new ['parrot';'Hash']
  vivify_325:
    set $P959, $P958["name"]
    unless_null $P959, vivify_326
    new $P959, "Undef"
  vivify_326:
    set $S960, $P959
    $P961 = $P954."new"($P956, $S960, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 337
    store_lex "$classinit", $P961
.annotate 'line', 345
    find_lex $P964, "$/"
    unless_null $P964, vivify_327
    $P964 = root_new ['parrot';'Hash']
  vivify_327:
    set $P965, $P964["package_def"]
    unless_null $P965, vivify_328
    $P965 = root_new ['parrot';'Hash']
  vivify_328:
    set $P966, $P965["parent"]
    unless_null $P966, vivify_329
    $P966 = root_new ['parrot';'ResizablePMCArray']
  vivify_329:
    set $P967, $P966[0]
    unless_null $P967, vivify_330
    new $P967, "Undef"
  vivify_330:
    set $S968, $P967
    unless $S968, unless_963
    new $P962, 'String'
    set $P962, $S968
    goto unless_963_end
  unless_963:
.annotate 'line', 346
    find_lex $P971, "$/"
    unless_null $P971, vivify_331
    $P971 = root_new ['parrot';'Hash']
  vivify_331:
    set $P972, $P971["sym"]
    unless_null $P972, vivify_332
    new $P972, "Undef"
  vivify_332:
    set $S973, $P972
    iseq $I974, $S973, "grammar"
    if $I974, if_970
    new $P976, "String"
    assign $P976, ""
    set $P969, $P976
    goto if_970_end
  if_970:
    new $P975, "String"
    assign $P975, "Regex::Cursor"
    set $P969, $P975
  if_970_end:
    set $P962, $P969
  unless_963_end:
    store_lex "$parent", $P962
.annotate 'line', 347
    find_lex $P978, "$parent"
    unless $P978, if_977_end
.annotate 'line', 348
    find_lex $P979, "$classinit"
    get_hll_global $P980, ["PAST"], "Val"
    find_lex $P981, "$parent"
    $P982 = $P980."new"($P981 :named("value"), "parent" :named("named"))
    $P979."push"($P982)
  if_977_end:
.annotate 'line', 350
    find_lex $P984, "$past"
    unless_null $P984, vivify_333
    $P984 = root_new ['parrot';'Hash']
  vivify_333:
    set $P985, $P984["attributes"]
    unless_null $P985, vivify_334
    new $P985, "Undef"
  vivify_334:
    unless $P985, if_983_end
.annotate 'line', 351
    find_lex $P986, "$classinit"
    find_lex $P987, "$past"
    unless_null $P987, vivify_335
    $P987 = root_new ['parrot';'Hash']
  vivify_335:
    set $P988, $P987["attributes"]
    unless_null $P988, vivify_336
    new $P988, "Undef"
  vivify_336:
    $P986."push"($P988)
  if_983_end:
.annotate 'line', 353
    get_global $P989, "@BLOCK"
    unless_null $P989, vivify_337
    $P989 = root_new ['parrot';'ResizablePMCArray']
  vivify_337:
    set $P990, $P989[0]
    unless_null $P990, vivify_338
    new $P990, "Undef"
  vivify_338:
    $P991 = $P990."loadinit"()
    find_lex $P992, "$classinit"
    $P991."push"($P992)
.annotate 'line', 354
    find_lex $P993, "$/"
    find_lex $P994, "$past"
    $P995 = $P993."!make"($P994)
.annotate 'line', 334
    .return ($P995)
  control_945:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P996, exception, "payload"
    .return ($P996)
.end


.namespace ["NQP";"Actions"]
.sub "package_def"  :subid("63_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1000
.annotate 'line', 357
    new $P999, 'ExceptionHandler'
    set_addr $P999, control_998
    $P999."handle_types"(57)
    push_eh $P999
    .lex "self", self
    .lex "$/", param_1000
.annotate 'line', 358
    new $P1001, "Undef"
    .lex "$past", $P1001
    find_lex $P1004, "$/"
    unless_null $P1004, vivify_339
    $P1004 = root_new ['parrot';'Hash']
  vivify_339:
    set $P1005, $P1004["block"]
    unless_null $P1005, vivify_340
    new $P1005, "Undef"
  vivify_340:
    if $P1005, if_1003
    find_lex $P1009, "$/"
    unless_null $P1009, vivify_341
    $P1009 = root_new ['parrot';'Hash']
  vivify_341:
    set $P1010, $P1009["comp_unit"]
    unless_null $P1010, vivify_342
    new $P1010, "Undef"
  vivify_342:
    $P1011 = $P1010."ast"()
    set $P1002, $P1011
    goto if_1003_end
  if_1003:
    find_lex $P1006, "$/"
    unless_null $P1006, vivify_343
    $P1006 = root_new ['parrot';'Hash']
  vivify_343:
    set $P1007, $P1006["block"]
    unless_null $P1007, vivify_344
    new $P1007, "Undef"
  vivify_344:
    $P1008 = $P1007."ast"()
    set $P1002, $P1008
  if_1003_end:
    store_lex "$past", $P1002
.annotate 'line', 359
    find_lex $P1012, "$past"
    find_lex $P1013, "$/"
    unless_null $P1013, vivify_345
    $P1013 = root_new ['parrot';'Hash']
  vivify_345:
    set $P1014, $P1013["name"]
    unless_null $P1014, vivify_346
    $P1014 = root_new ['parrot';'Hash']
  vivify_346:
    set $P1015, $P1014["identifier"]
    unless_null $P1015, vivify_347
    new $P1015, "Undef"
  vivify_347:
    $P1012."namespace"($P1015)
.annotate 'line', 360
    find_lex $P1016, "$past"
    $P1016."blocktype"("immediate")
.annotate 'line', 361
    find_lex $P1017, "$/"
    find_lex $P1018, "$past"
    $P1019 = $P1017."!make"($P1018)
.annotate 'line', 357
    .return ($P1019)
  control_998:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1020, exception, "payload"
    .return ($P1020)
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<my>"  :subid("64_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1024
.annotate 'line', 364
    new $P1023, 'ExceptionHandler'
    set_addr $P1023, control_1022
    $P1023."handle_types"(57)
    push_eh $P1023
    .lex "self", self
    .lex "$/", param_1024
    find_lex $P1025, "$/"
    find_lex $P1026, "$/"
    unless_null $P1026, vivify_348
    $P1026 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1027, $P1026["scoped"]
    unless_null $P1027, vivify_349
    new $P1027, "Undef"
  vivify_349:
    $P1028 = $P1027."ast"()
    $P1029 = $P1025."!make"($P1028)
    .return ($P1029)
  control_1022:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1030, exception, "payload"
    .return ($P1030)
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<our>"  :subid("65_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1034
.annotate 'line', 365
    new $P1033, 'ExceptionHandler'
    set_addr $P1033, control_1032
    $P1033."handle_types"(57)
    push_eh $P1033
    .lex "self", self
    .lex "$/", param_1034
    find_lex $P1035, "$/"
    find_lex $P1036, "$/"
    unless_null $P1036, vivify_350
    $P1036 = root_new ['parrot';'Hash']
  vivify_350:
    set $P1037, $P1036["scoped"]
    unless_null $P1037, vivify_351
    new $P1037, "Undef"
  vivify_351:
    $P1038 = $P1037."ast"()
    $P1039 = $P1035."!make"($P1038)
    .return ($P1039)
  control_1032:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1040, exception, "payload"
    .return ($P1040)
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<has>"  :subid("66_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1044
.annotate 'line', 366
    new $P1043, 'ExceptionHandler'
    set_addr $P1043, control_1042
    $P1043."handle_types"(57)
    push_eh $P1043
    .lex "self", self
    .lex "$/", param_1044
    find_lex $P1045, "$/"
    find_lex $P1046, "$/"
    unless_null $P1046, vivify_352
    $P1046 = root_new ['parrot';'Hash']
  vivify_352:
    set $P1047, $P1046["scoped"]
    unless_null $P1047, vivify_353
    new $P1047, "Undef"
  vivify_353:
    $P1048 = $P1047."ast"()
    $P1049 = $P1045."!make"($P1048)
    .return ($P1049)
  control_1042:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1050, exception, "payload"
    .return ($P1050)
.end


.namespace ["NQP";"Actions"]
.sub "scoped"  :subid("67_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1054
.annotate 'line', 368
    new $P1053, 'ExceptionHandler'
    set_addr $P1053, control_1052
    $P1053."handle_types"(57)
    push_eh $P1053
    .lex "self", self
    .lex "$/", param_1054
.annotate 'line', 369
    find_lex $P1055, "$/"
.annotate 'line', 370
    find_lex $P1058, "$/"
    unless_null $P1058, vivify_354
    $P1058 = root_new ['parrot';'Hash']
  vivify_354:
    set $P1059, $P1058["routine_declarator"]
    unless_null $P1059, vivify_355
    new $P1059, "Undef"
  vivify_355:
    if $P1059, if_1057
.annotate 'line', 371
    find_lex $P1063, "$/"
    unless_null $P1063, vivify_356
    $P1063 = root_new ['parrot';'Hash']
  vivify_356:
    set $P1064, $P1063["variable_declarator"]
    unless_null $P1064, vivify_357
    new $P1064, "Undef"
  vivify_357:
    $P1065 = $P1064."ast"()
    set $P1056, $P1065
.annotate 'line', 370
    goto if_1057_end
  if_1057:
    find_lex $P1060, "$/"
    unless_null $P1060, vivify_358
    $P1060 = root_new ['parrot';'Hash']
  vivify_358:
    set $P1061, $P1060["routine_declarator"]
    unless_null $P1061, vivify_359
    new $P1061, "Undef"
  vivify_359:
    $P1062 = $P1061."ast"()
    set $P1056, $P1062
  if_1057_end:
    $P1066 = $P1055."!make"($P1056)
.annotate 'line', 368
    .return ($P1066)
  control_1052:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1067, exception, "payload"
    .return ($P1067)
.end


.namespace ["NQP";"Actions"]
.sub "variable_declarator"  :subid("68_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1071
.annotate 'line', 374
    .const 'Sub' $P1111 = "69_1273728005.59439" 
    capture_lex $P1111
    new $P1070, 'ExceptionHandler'
    set_addr $P1070, control_1069
    $P1070."handle_types"(57)
    push_eh $P1070
    .lex "self", self
    .lex "$/", param_1071
.annotate 'line', 375
    new $P1072, "Undef"
    .lex "$past", $P1072
.annotate 'line', 376
    new $P1073, "Undef"
    .lex "$sigil", $P1073
.annotate 'line', 377
    new $P1074, "Undef"
    .lex "$name", $P1074
.annotate 'line', 378
    new $P1075, "Undef"
    .lex "$BLOCK", $P1075
.annotate 'line', 375
    find_lex $P1076, "$/"
    unless_null $P1076, vivify_360
    $P1076 = root_new ['parrot';'Hash']
  vivify_360:
    set $P1077, $P1076["variable"]
    unless_null $P1077, vivify_361
    new $P1077, "Undef"
  vivify_361:
    $P1078 = $P1077."ast"()
    store_lex "$past", $P1078
.annotate 'line', 376
    find_lex $P1079, "$/"
    unless_null $P1079, vivify_362
    $P1079 = root_new ['parrot';'Hash']
  vivify_362:
    set $P1080, $P1079["variable"]
    unless_null $P1080, vivify_363
    $P1080 = root_new ['parrot';'Hash']
  vivify_363:
    set $P1081, $P1080["sigil"]
    unless_null $P1081, vivify_364
    new $P1081, "Undef"
  vivify_364:
    store_lex "$sigil", $P1081
.annotate 'line', 377
    find_lex $P1082, "$past"
    $P1083 = $P1082."name"()
    store_lex "$name", $P1083
.annotate 'line', 378
    get_global $P1084, "@BLOCK"
    unless_null $P1084, vivify_365
    $P1084 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    set $P1085, $P1084[0]
    unless_null $P1085, vivify_366
    new $P1085, "Undef"
  vivify_366:
    store_lex "$BLOCK", $P1085
.annotate 'line', 379
    find_lex $P1087, "$BLOCK"
    find_lex $P1088, "$name"
    $P1089 = $P1087."symbol"($P1088)
    unless $P1089, if_1086_end
.annotate 'line', 380
    find_lex $P1090, "$/"
    $P1091 = $P1090."CURSOR"()
    find_lex $P1092, "$name"
    $P1091."panic"("Redeclaration of symbol ", $P1092)
  if_1086_end:
.annotate 'line', 382
    find_dynamic_lex $P1094, "$*SCOPE"
    unless_null $P1094, vivify_367
    get_hll_global $P1094, "$SCOPE"
    unless_null $P1094, vivify_368
    die "Contextual $*SCOPE not found"
  vivify_368:
  vivify_367:
    set $S1095, $P1094
    iseq $I1096, $S1095, "has"
    if $I1096, if_1093
.annotate 'line', 391
    .const 'Sub' $P1111 = "69_1273728005.59439" 
    capture_lex $P1111
    $P1111()
    goto if_1093_end
  if_1093:
.annotate 'line', 383
    find_lex $P1097, "$BLOCK"
    find_lex $P1098, "$name"
    $P1097."symbol"($P1098, "attribute" :named("scope"))
.annotate 'line', 384
    find_lex $P1100, "$BLOCK"
    unless_null $P1100, vivify_373
    $P1100 = root_new ['parrot';'Hash']
  vivify_373:
    set $P1101, $P1100["attributes"]
    unless_null $P1101, vivify_374
    new $P1101, "Undef"
  vivify_374:
    if $P1101, unless_1099_end
.annotate 'line', 386
    get_hll_global $P1102, ["PAST"], "Op"
    $P1103 = $P1102."new"("list" :named("pasttype"), "attr" :named("named"))
    find_lex $P1104, "$BLOCK"
    unless_null $P1104, vivify_375
    $P1104 = root_new ['parrot';'Hash']
    store_lex "$BLOCK", $P1104
  vivify_375:
    set $P1104["attributes"], $P1103
  unless_1099_end:
.annotate 'line', 388
    find_lex $P1105, "$BLOCK"
    unless_null $P1105, vivify_376
    $P1105 = root_new ['parrot';'Hash']
  vivify_376:
    set $P1106, $P1105["attributes"]
    unless_null $P1106, vivify_377
    new $P1106, "Undef"
  vivify_377:
    find_lex $P1107, "$name"
    $P1106."push"($P1107)
.annotate 'line', 389
    get_hll_global $P1108, ["PAST"], "Stmts"
    $P1109 = $P1108."new"()
    store_lex "$past", $P1109
  if_1093_end:
.annotate 'line', 399
    find_lex $P1135, "$/"
    find_lex $P1136, "$past"
    $P1137 = $P1135."!make"($P1136)
.annotate 'line', 374
    .return ($P1137)
  control_1069:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1138, exception, "payload"
    .return ($P1138)
.end


.namespace ["NQP";"Actions"]
.sub "_block1110"  :anon :subid("69_1273728005.59439") :outer("68_1273728005.59439")
.annotate 'line', 392
    new $P1112, "Undef"
    .lex "$scope", $P1112
.annotate 'line', 393
    new $P1113, "Undef"
    .lex "$decl", $P1113
.annotate 'line', 392
    find_dynamic_lex $P1116, "$*SCOPE"
    unless_null $P1116, vivify_369
    get_hll_global $P1116, "$SCOPE"
    unless_null $P1116, vivify_370
    die "Contextual $*SCOPE not found"
  vivify_370:
  vivify_369:
    set $S1117, $P1116
    iseq $I1118, $S1117, "our"
    if $I1118, if_1115
    new $P1120, "String"
    assign $P1120, "lexical"
    set $P1114, $P1120
    goto if_1115_end
  if_1115:
    new $P1119, "String"
    assign $P1119, "package"
    set $P1114, $P1119
  if_1115_end:
    store_lex "$scope", $P1114
.annotate 'line', 393
    get_hll_global $P1121, ["PAST"], "Var"
    find_lex $P1122, "$name"
    find_lex $P1123, "$scope"
.annotate 'line', 394
    find_lex $P1124, "$sigil"
    $P1125 = "vivitype"($P1124)
    find_lex $P1126, "$/"
    $P1127 = $P1121."new"($P1122 :named("name"), $P1123 :named("scope"), 1 :named("isdecl"), 1 :named("lvalue"), $P1125 :named("viviself"), $P1126 :named("node"))
.annotate 'line', 393
    store_lex "$decl", $P1127
.annotate 'line', 396
    find_lex $P1128, "$BLOCK"
    find_lex $P1129, "$name"
    find_lex $P1130, "$scope"
    $P1128."symbol"($P1129, $P1130 :named("scope"))
.annotate 'line', 397
    find_lex $P1131, "$BLOCK"
    unless_null $P1131, vivify_371
    $P1131 = root_new ['parrot';'ResizablePMCArray']
  vivify_371:
    set $P1132, $P1131[0]
    unless_null $P1132, vivify_372
    new $P1132, "Undef"
  vivify_372:
    find_lex $P1133, "$decl"
    $P1134 = $P1132."push"($P1133)
.annotate 'line', 391
    .return ($P1134)
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<sub>"  :subid("70_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1142
.annotate 'line', 402
    new $P1141, 'ExceptionHandler'
    set_addr $P1141, control_1140
    $P1141."handle_types"(57)
    push_eh $P1141
    .lex "self", self
    .lex "$/", param_1142
    find_lex $P1143, "$/"
    find_lex $P1144, "$/"
    unless_null $P1144, vivify_378
    $P1144 = root_new ['parrot';'Hash']
  vivify_378:
    set $P1145, $P1144["routine_def"]
    unless_null $P1145, vivify_379
    new $P1145, "Undef"
  vivify_379:
    $P1146 = $P1145."ast"()
    $P1147 = $P1143."!make"($P1146)
    .return ($P1147)
  control_1140:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1148, exception, "payload"
    .return ($P1148)
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<method>"  :subid("71_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1152
.annotate 'line', 403
    new $P1151, 'ExceptionHandler'
    set_addr $P1151, control_1150
    $P1151."handle_types"(57)
    push_eh $P1151
    .lex "self", self
    .lex "$/", param_1152
    find_lex $P1153, "$/"
    find_lex $P1154, "$/"
    unless_null $P1154, vivify_380
    $P1154 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1155, $P1154["method_def"]
    unless_null $P1155, vivify_381
    new $P1155, "Undef"
  vivify_381:
    $P1156 = $P1155."ast"()
    $P1157 = $P1153."!make"($P1156)
    .return ($P1157)
  control_1150:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1158, exception, "payload"
    .return ($P1158)
.end


.namespace ["NQP";"Actions"]
.sub "routine_def"  :subid("72_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1162
.annotate 'line', 405
    .const 'Sub' $P1173 = "73_1273728005.59439" 
    capture_lex $P1173
    new $P1161, 'ExceptionHandler'
    set_addr $P1161, control_1160
    $P1161."handle_types"(57)
    push_eh $P1161
    .lex "self", self
    .lex "$/", param_1162
.annotate 'line', 406
    new $P1163, "Undef"
    .lex "$past", $P1163
    find_lex $P1164, "$/"
    unless_null $P1164, vivify_382
    $P1164 = root_new ['parrot';'Hash']
  vivify_382:
    set $P1165, $P1164["blockoid"]
    unless_null $P1165, vivify_383
    new $P1165, "Undef"
  vivify_383:
    $P1166 = $P1165."ast"()
    store_lex "$past", $P1166
.annotate 'line', 407
    find_lex $P1167, "$past"
    $P1167."blocktype"("declaration")
.annotate 'line', 408
    find_lex $P1168, "$past"
    $P1168."control"("return_pir")
.annotate 'line', 409
    find_lex $P1170, "$/"
    unless_null $P1170, vivify_384
    $P1170 = root_new ['parrot';'Hash']
  vivify_384:
    set $P1171, $P1170["deflongname"]
    unless_null $P1171, vivify_385
    new $P1171, "Undef"
  vivify_385:
    unless $P1171, if_1169_end
    .const 'Sub' $P1173 = "73_1273728005.59439" 
    capture_lex $P1173
    $P1173()
  if_1169_end:
.annotate 'line', 419
    find_lex $P1205, "$/"
    find_lex $P1206, "$past"
    $P1207 = $P1205."!make"($P1206)
.annotate 'line', 405
    .return ($P1207)
  control_1160:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1208, exception, "payload"
    .return ($P1208)
.end


.namespace ["NQP";"Actions"]
.sub "_block1172"  :anon :subid("73_1273728005.59439") :outer("72_1273728005.59439")
.annotate 'line', 410
    new $P1174, "Undef"
    .lex "$name", $P1174
    find_lex $P1175, "$/"
    unless_null $P1175, vivify_386
    $P1175 = root_new ['parrot';'Hash']
  vivify_386:
    set $P1176, $P1175["sigil"]
    unless_null $P1176, vivify_387
    $P1176 = root_new ['parrot';'ResizablePMCArray']
  vivify_387:
    set $P1177, $P1176[0]
    unless_null $P1177, vivify_388
    new $P1177, "Undef"
  vivify_388:
    set $S1178, $P1177
    new $P1179, 'String'
    set $P1179, $S1178
    find_lex $P1180, "$/"
    unless_null $P1180, vivify_389
    $P1180 = root_new ['parrot';'Hash']
  vivify_389:
    set $P1181, $P1180["deflongname"]
    unless_null $P1181, vivify_390
    $P1181 = root_new ['parrot';'ResizablePMCArray']
  vivify_390:
    set $P1182, $P1181[0]
    unless_null $P1182, vivify_391
    new $P1182, "Undef"
  vivify_391:
    $S1183 = $P1182."ast"()
    concat $P1184, $P1179, $S1183
    store_lex "$name", $P1184
.annotate 'line', 411
    find_lex $P1185, "$past"
    find_lex $P1186, "$name"
    $P1185."name"($P1186)
.annotate 'line', 412
    find_dynamic_lex $P1189, "$*SCOPE"
    unless_null $P1189, vivify_392
    get_hll_global $P1189, "$SCOPE"
    unless_null $P1189, vivify_393
    die "Contextual $*SCOPE not found"
  vivify_393:
  vivify_392:
    set $S1190, $P1189
    isne $I1191, $S1190, "our"
    if $I1191, if_1188
    new $P1187, 'Integer'
    set $P1187, $I1191
    goto if_1188_end
  if_1188:
.annotate 'line', 413
    get_global $P1192, "@BLOCK"
    unless_null $P1192, vivify_394
    $P1192 = root_new ['parrot';'ResizablePMCArray']
  vivify_394:
    set $P1193, $P1192[0]
    unless_null $P1193, vivify_395
    $P1193 = root_new ['parrot';'ResizablePMCArray']
  vivify_395:
    set $P1194, $P1193[0]
    unless_null $P1194, vivify_396
    new $P1194, "Undef"
  vivify_396:
    get_hll_global $P1195, ["PAST"], "Var"
    find_lex $P1196, "$name"
    find_lex $P1197, "$past"
    $P1198 = $P1195."new"($P1196 :named("name"), 1 :named("isdecl"), $P1197 :named("viviself"), "lexical" :named("scope"))
    $P1194."push"($P1198)
.annotate 'line', 415
    get_global $P1199, "@BLOCK"
    unless_null $P1199, vivify_397
    $P1199 = root_new ['parrot';'ResizablePMCArray']
  vivify_397:
    set $P1200, $P1199[0]
    unless_null $P1200, vivify_398
    new $P1200, "Undef"
  vivify_398:
    find_lex $P1201, "$name"
    $P1200."symbol"($P1201, "lexical" :named("scope"))
.annotate 'line', 416
    get_hll_global $P1202, ["PAST"], "Var"
    find_lex $P1203, "$name"
    $P1204 = $P1202."new"($P1203 :named("name"))
    store_lex "$past", $P1204
.annotate 'line', 412
    set $P1187, $P1204
  if_1188_end:
.annotate 'line', 409
    .return ($P1187)
.end


.namespace ["NQP";"Actions"]
.sub "method_def"  :subid("74_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1212
.annotate 'line', 423
    .const 'Sub' $P1228 = "75_1273728005.59439" 
    capture_lex $P1228
    new $P1211, 'ExceptionHandler'
    set_addr $P1211, control_1210
    $P1211."handle_types"(57)
    push_eh $P1211
    .lex "self", self
    .lex "$/", param_1212
.annotate 'line', 424
    new $P1213, "Undef"
    .lex "$past", $P1213
    find_lex $P1214, "$/"
    unless_null $P1214, vivify_399
    $P1214 = root_new ['parrot';'Hash']
  vivify_399:
    set $P1215, $P1214["blockoid"]
    unless_null $P1215, vivify_400
    new $P1215, "Undef"
  vivify_400:
    $P1216 = $P1215."ast"()
    store_lex "$past", $P1216
.annotate 'line', 425
    find_lex $P1217, "$past"
    $P1217."blocktype"("method")
.annotate 'line', 426
    find_lex $P1218, "$past"
    $P1218."control"("return_pir")
.annotate 'line', 427
    find_lex $P1219, "$past"
    unless_null $P1219, vivify_401
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_401:
    set $P1220, $P1219[0]
    unless_null $P1220, vivify_402
    new $P1220, "Undef"
  vivify_402:
    get_hll_global $P1221, ["PAST"], "Op"
    $P1222 = $P1221."new"("    .lex \"self\", self" :named("inline"))
    $P1220."unshift"($P1222)
.annotate 'line', 428
    find_lex $P1223, "$past"
    $P1223."symbol"("self", "lexical" :named("scope"))
.annotate 'line', 429
    find_lex $P1225, "$/"
    unless_null $P1225, vivify_403
    $P1225 = root_new ['parrot';'Hash']
  vivify_403:
    set $P1226, $P1225["deflongname"]
    unless_null $P1226, vivify_404
    new $P1226, "Undef"
  vivify_404:
    unless $P1226, if_1224_end
    .const 'Sub' $P1228 = "75_1273728005.59439" 
    capture_lex $P1228
    $P1228()
  if_1224_end:
.annotate 'line', 433
    find_lex $P1239, "$/"
    find_lex $P1240, "$past"
    $P1241 = $P1239."!make"($P1240)
.annotate 'line', 423
    .return ($P1241)
  control_1210:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1242, exception, "payload"
    .return ($P1242)
.end


.namespace ["NQP";"Actions"]
.sub "_block1227"  :anon :subid("75_1273728005.59439") :outer("74_1273728005.59439")
.annotate 'line', 430
    new $P1229, "Undef"
    .lex "$name", $P1229
    find_lex $P1230, "$/"
    unless_null $P1230, vivify_405
    $P1230 = root_new ['parrot';'Hash']
  vivify_405:
    set $P1231, $P1230["deflongname"]
    unless_null $P1231, vivify_406
    $P1231 = root_new ['parrot';'ResizablePMCArray']
  vivify_406:
    set $P1232, $P1231[0]
    unless_null $P1232, vivify_407
    new $P1232, "Undef"
  vivify_407:
    $P1233 = $P1232."ast"()
    set $S1234, $P1233
    new $P1235, 'String'
    set $P1235, $S1234
    store_lex "$name", $P1235
.annotate 'line', 431
    find_lex $P1236, "$past"
    find_lex $P1237, "$name"
    $P1238 = $P1236."name"($P1237)
.annotate 'line', 429
    .return ($P1238)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("76_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1246
.annotate 'line', 437
    .const 'Sub' $P1257 = "77_1273728005.59439" 
    capture_lex $P1257
    new $P1245, 'ExceptionHandler'
    set_addr $P1245, control_1244
    $P1245."handle_types"(57)
    push_eh $P1245
    .lex "self", self
    .lex "$/", param_1246
.annotate 'line', 438
    new $P1247, "Undef"
    .lex "$BLOCKINIT", $P1247
    get_global $P1248, "@BLOCK"
    unless_null $P1248, vivify_408
    $P1248 = root_new ['parrot';'ResizablePMCArray']
  vivify_408:
    set $P1249, $P1248[0]
    unless_null $P1249, vivify_409
    $P1249 = root_new ['parrot';'ResizablePMCArray']
  vivify_409:
    set $P1250, $P1249[0]
    unless_null $P1250, vivify_410
    new $P1250, "Undef"
  vivify_410:
    store_lex "$BLOCKINIT", $P1250
.annotate 'line', 439
    find_lex $P1252, "$/"
    unless_null $P1252, vivify_411
    $P1252 = root_new ['parrot';'Hash']
  vivify_411:
    set $P1253, $P1252["parameter"]
    unless_null $P1253, vivify_412
    new $P1253, "Undef"
  vivify_412:
    defined $I1254, $P1253
    unless $I1254, for_undef_413
    iter $P1251, $P1253
    new $P1264, 'ExceptionHandler'
    set_addr $P1264, loop1263_handler
    $P1264."handle_types"(64, 66, 65)
    push_eh $P1264
  loop1263_test:
    unless $P1251, loop1263_done
    shift $P1255, $P1251
  loop1263_redo:
    .const 'Sub' $P1257 = "77_1273728005.59439" 
    capture_lex $P1257
    $P1257($P1255)
  loop1263_next:
    goto loop1263_test
  loop1263_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1265, exception, 'type'
    eq $P1265, 64, loop1263_next
    eq $P1265, 66, loop1263_redo
  loop1263_done:
    pop_eh 
  for_undef_413:
.annotate 'line', 437
    .return ($P1251)
  control_1244:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1266, exception, "payload"
    .return ($P1266)
.end


.namespace ["NQP";"Actions"]
.sub "_block1256"  :anon :subid("77_1273728005.59439") :outer("76_1273728005.59439")
    .param pmc param_1258
.annotate 'line', 439
    .lex "$_", param_1258
    find_lex $P1259, "$BLOCKINIT"
    find_lex $P1260, "$_"
    $P1261 = $P1260."ast"()
    $P1262 = $P1259."push"($P1261)
    .return ($P1262)
.end


.namespace ["NQP";"Actions"]
.sub "parameter"  :subid("78_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1270
.annotate 'line', 442
    new $P1269, 'ExceptionHandler'
    set_addr $P1269, control_1268
    $P1269."handle_types"(57)
    push_eh $P1269
    .lex "self", self
    .lex "$/", param_1270
.annotate 'line', 443
    new $P1271, "Undef"
    .lex "$quant", $P1271
.annotate 'line', 444
    new $P1272, "Undef"
    .lex "$past", $P1272
.annotate 'line', 443
    find_lex $P1273, "$/"
    unless_null $P1273, vivify_414
    $P1273 = root_new ['parrot';'Hash']
  vivify_414:
    set $P1274, $P1273["quant"]
    unless_null $P1274, vivify_415
    new $P1274, "Undef"
  vivify_415:
    store_lex "$quant", $P1274
    find_lex $P1275, "$past"
.annotate 'line', 445
    find_lex $P1277, "$/"
    unless_null $P1277, vivify_416
    $P1277 = root_new ['parrot';'Hash']
  vivify_416:
    set $P1278, $P1277["named_param"]
    unless_null $P1278, vivify_417
    new $P1278, "Undef"
  vivify_417:
    if $P1278, if_1276
.annotate 'line', 452
    find_lex $P1292, "$/"
    unless_null $P1292, vivify_418
    $P1292 = root_new ['parrot';'Hash']
  vivify_418:
    set $P1293, $P1292["param_var"]
    unless_null $P1293, vivify_419
    new $P1293, "Undef"
  vivify_419:
    $P1294 = $P1293."ast"()
    store_lex "$past", $P1294
.annotate 'line', 453
    find_lex $P1296, "$quant"
    set $S1297, $P1296
    iseq $I1298, $S1297, "*"
    if $I1298, if_1295
.annotate 'line', 457
    find_lex $P1307, "$quant"
    set $S1308, $P1307
    iseq $I1309, $S1308, "?"
    unless $I1309, if_1306_end
.annotate 'line', 458
    find_lex $P1310, "$past"
    find_lex $P1311, "$/"
    unless_null $P1311, vivify_420
    $P1311 = root_new ['parrot';'Hash']
  vivify_420:
    set $P1312, $P1311["param_var"]
    unless_null $P1312, vivify_421
    $P1312 = root_new ['parrot';'Hash']
  vivify_421:
    set $P1313, $P1312["sigil"]
    unless_null $P1313, vivify_422
    new $P1313, "Undef"
  vivify_422:
    $P1314 = "vivitype"($P1313)
    $P1310."viviself"($P1314)
  if_1306_end:
.annotate 'line', 457
    goto if_1295_end
  if_1295:
.annotate 'line', 454
    find_lex $P1299, "$past"
    $P1299."slurpy"(1)
.annotate 'line', 455
    find_lex $P1300, "$past"
    find_lex $P1301, "$/"
    unless_null $P1301, vivify_423
    $P1301 = root_new ['parrot';'Hash']
  vivify_423:
    set $P1302, $P1301["param_var"]
    unless_null $P1302, vivify_424
    $P1302 = root_new ['parrot';'Hash']
  vivify_424:
    set $P1303, $P1302["sigil"]
    unless_null $P1303, vivify_425
    new $P1303, "Undef"
  vivify_425:
    set $S1304, $P1303
    iseq $I1305, $S1304, "%"
    $P1300."named"($I1305)
  if_1295_end:
.annotate 'line', 451
    goto if_1276_end
  if_1276:
.annotate 'line', 446
    find_lex $P1279, "$/"
    unless_null $P1279, vivify_426
    $P1279 = root_new ['parrot';'Hash']
  vivify_426:
    set $P1280, $P1279["named_param"]
    unless_null $P1280, vivify_427
    new $P1280, "Undef"
  vivify_427:
    $P1281 = $P1280."ast"()
    store_lex "$past", $P1281
.annotate 'line', 447
    find_lex $P1283, "$quant"
    set $S1284, $P1283
    isne $I1285, $S1284, "!"
    unless $I1285, if_1282_end
.annotate 'line', 448
    find_lex $P1286, "$past"
    find_lex $P1287, "$/"
    unless_null $P1287, vivify_428
    $P1287 = root_new ['parrot';'Hash']
  vivify_428:
    set $P1288, $P1287["named_param"]
    unless_null $P1288, vivify_429
    $P1288 = root_new ['parrot';'Hash']
  vivify_429:
    set $P1289, $P1288["param_var"]
    unless_null $P1289, vivify_430
    $P1289 = root_new ['parrot';'Hash']
  vivify_430:
    set $P1290, $P1289["sigil"]
    unless_null $P1290, vivify_431
    new $P1290, "Undef"
  vivify_431:
    $P1291 = "vivitype"($P1290)
    $P1286."viviself"($P1291)
  if_1282_end:
  if_1276_end:
.annotate 'line', 461
    find_lex $P1316, "$/"
    unless_null $P1316, vivify_432
    $P1316 = root_new ['parrot';'Hash']
  vivify_432:
    set $P1317, $P1316["default_value"]
    unless_null $P1317, vivify_433
    new $P1317, "Undef"
  vivify_433:
    unless $P1317, if_1315_end
.annotate 'line', 462
    find_lex $P1319, "$quant"
    set $S1320, $P1319
    iseq $I1321, $S1320, "*"
    unless $I1321, if_1318_end
.annotate 'line', 463
    find_lex $P1322, "$/"
    $P1323 = $P1322."CURSOR"()
    $P1323."panic"("Can't put default on slurpy parameter")
  if_1318_end:
.annotate 'line', 465
    find_lex $P1325, "$quant"
    set $S1326, $P1325
    iseq $I1327, $S1326, "!"
    unless $I1327, if_1324_end
.annotate 'line', 466
    find_lex $P1328, "$/"
    $P1329 = $P1328."CURSOR"()
    $P1329."panic"("Can't put default on required parameter")
  if_1324_end:
.annotate 'line', 468
    find_lex $P1330, "$past"
    find_lex $P1331, "$/"
    unless_null $P1331, vivify_434
    $P1331 = root_new ['parrot';'Hash']
  vivify_434:
    set $P1332, $P1331["default_value"]
    unless_null $P1332, vivify_435
    $P1332 = root_new ['parrot';'ResizablePMCArray']
  vivify_435:
    set $P1333, $P1332[0]
    unless_null $P1333, vivify_436
    $P1333 = root_new ['parrot';'Hash']
  vivify_436:
    set $P1334, $P1333["EXPR"]
    unless_null $P1334, vivify_437
    new $P1334, "Undef"
  vivify_437:
    $P1335 = $P1334."ast"()
    $P1330."viviself"($P1335)
  if_1315_end:
.annotate 'line', 470
    find_lex $P1337, "$past"
    $P1338 = $P1337."viviself"()
    if $P1338, unless_1336_end
    get_global $P1339, "@BLOCK"
    unless_null $P1339, vivify_438
    $P1339 = root_new ['parrot';'ResizablePMCArray']
  vivify_438:
    set $P1340, $P1339[0]
    unless_null $P1340, vivify_439
    new $P1340, "Undef"
  vivify_439:
    get_global $P1341, "@BLOCK"
    unless_null $P1341, vivify_440
    $P1341 = root_new ['parrot';'ResizablePMCArray']
  vivify_440:
    set $P1342, $P1341[0]
    unless_null $P1342, vivify_441
    new $P1342, "Undef"
  vivify_441:
    $P1343 = $P1342."arity"()
    set $N1344, $P1343
    new $P1345, 'Float'
    set $P1345, $N1344
    add $P1346, $P1345, 1
    $P1340."arity"($P1346)
  unless_1336_end:
.annotate 'line', 471
    find_lex $P1347, "$/"
    find_lex $P1348, "$past"
    $P1349 = $P1347."!make"($P1348)
.annotate 'line', 442
    .return ($P1349)
  control_1268:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1350, exception, "payload"
    .return ($P1350)
.end


.namespace ["NQP";"Actions"]
.sub "param_var"  :subid("79_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1354
.annotate 'line', 474
    new $P1353, 'ExceptionHandler'
    set_addr $P1353, control_1352
    $P1353."handle_types"(57)
    push_eh $P1353
    .lex "self", self
    .lex "$/", param_1354
.annotate 'line', 475
    new $P1355, "Undef"
    .lex "$name", $P1355
.annotate 'line', 476
    new $P1356, "Undef"
    .lex "$past", $P1356
.annotate 'line', 475
    find_lex $P1357, "$/"
    set $S1358, $P1357
    new $P1359, 'String'
    set $P1359, $S1358
    store_lex "$name", $P1359
.annotate 'line', 476
    get_hll_global $P1360, ["PAST"], "Var"
    find_lex $P1361, "$name"
    find_lex $P1362, "$/"
    $P1363 = $P1360."new"($P1361 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P1362 :named("node"))
    store_lex "$past", $P1363
.annotate 'line', 478
    get_global $P1364, "@BLOCK"
    unless_null $P1364, vivify_442
    $P1364 = root_new ['parrot';'ResizablePMCArray']
  vivify_442:
    set $P1365, $P1364[0]
    unless_null $P1365, vivify_443
    new $P1365, "Undef"
  vivify_443:
    find_lex $P1366, "$name"
    $P1365."symbol"($P1366, "lexical" :named("scope"))
.annotate 'line', 479
    find_lex $P1367, "$/"
    find_lex $P1368, "$past"
    $P1369 = $P1367."!make"($P1368)
.annotate 'line', 474
    .return ($P1369)
  control_1352:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1370, exception, "payload"
    .return ($P1370)
.end


.namespace ["NQP";"Actions"]
.sub "named_param"  :subid("80_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1374
.annotate 'line', 482
    new $P1373, 'ExceptionHandler'
    set_addr $P1373, control_1372
    $P1373."handle_types"(57)
    push_eh $P1373
    .lex "self", self
    .lex "$/", param_1374
.annotate 'line', 483
    new $P1375, "Undef"
    .lex "$past", $P1375
    find_lex $P1376, "$/"
    unless_null $P1376, vivify_444
    $P1376 = root_new ['parrot';'Hash']
  vivify_444:
    set $P1377, $P1376["param_var"]
    unless_null $P1377, vivify_445
    new $P1377, "Undef"
  vivify_445:
    $P1378 = $P1377."ast"()
    store_lex "$past", $P1378
.annotate 'line', 484
    find_lex $P1379, "$past"
    find_lex $P1380, "$/"
    unless_null $P1380, vivify_446
    $P1380 = root_new ['parrot';'Hash']
  vivify_446:
    set $P1381, $P1380["param_var"]
    unless_null $P1381, vivify_447
    $P1381 = root_new ['parrot';'Hash']
  vivify_447:
    set $P1382, $P1381["name"]
    unless_null $P1382, vivify_448
    new $P1382, "Undef"
  vivify_448:
    set $S1383, $P1382
    $P1379."named"($S1383)
.annotate 'line', 485
    find_lex $P1384, "$/"
    find_lex $P1385, "$past"
    $P1386 = $P1384."!make"($P1385)
.annotate 'line', 482
    .return ($P1386)
  control_1372:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1387, exception, "payload"
    .return ($P1387)
.end


.namespace ["NQP";"Actions"]
.sub "regex_declarator"  :subid("81_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1391
    .param pmc param_1392 :optional
    .param int has_param_1392 :opt_flag
.annotate 'line', 488
    .const 'Sub' $P1462 = "83_1273728005.59439" 
    capture_lex $P1462
    .const 'Sub' $P1434 = "82_1273728005.59439" 
    capture_lex $P1434
    new $P1390, 'ExceptionHandler'
    set_addr $P1390, control_1389
    $P1390."handle_types"(57)
    push_eh $P1390
    .lex "self", self
    .lex "$/", param_1391
    if has_param_1392, optparam_449
    new $P1393, "Undef"
    set param_1392, $P1393
  optparam_449:
    .lex "$key", param_1392
.annotate 'line', 489
    $P1394 = root_new ['parrot';'ResizablePMCArray']
    .lex "@MODIFIERS", $P1394
.annotate 'line', 492
    new $P1395, "Undef"
    .lex "$name", $P1395
.annotate 'line', 493
    new $P1396, "Undef"
    .lex "$past", $P1396
.annotate 'line', 489

        $P1397 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    store_lex "@MODIFIERS", $P1397
.annotate 'line', 492
    find_lex $P1398, "$/"
    unless_null $P1398, vivify_450
    $P1398 = root_new ['parrot';'Hash']
  vivify_450:
    set $P1399, $P1398["deflongname"]
    unless_null $P1399, vivify_451
    new $P1399, "Undef"
  vivify_451:
    $P1400 = $P1399."ast"()
    set $S1401, $P1400
    new $P1402, 'String'
    set $P1402, $S1401
    store_lex "$name", $P1402
    find_lex $P1403, "$past"
.annotate 'line', 494
    find_lex $P1405, "$/"
    unless_null $P1405, vivify_452
    $P1405 = root_new ['parrot';'Hash']
  vivify_452:
    set $P1406, $P1405["proto"]
    unless_null $P1406, vivify_453
    new $P1406, "Undef"
  vivify_453:
    if $P1406, if_1404
.annotate 'line', 521
    find_lex $P1430, "$key"
    set $S1431, $P1430
    iseq $I1432, $S1431, "open"
    if $I1432, if_1429
.annotate 'line', 534
    .const 'Sub' $P1462 = "83_1273728005.59439" 
    capture_lex $P1462
    $P1462()
    goto if_1429_end
  if_1429:
.annotate 'line', 521
    .const 'Sub' $P1434 = "82_1273728005.59439" 
    capture_lex $P1434
    $P1434()
  if_1429_end:
    goto if_1404_end
  if_1404:
.annotate 'line', 496
    get_hll_global $P1407, ["PAST"], "Stmts"
.annotate 'line', 497
    get_hll_global $P1408, ["PAST"], "Block"
    find_lex $P1409, "$name"
.annotate 'line', 498
    get_hll_global $P1410, ["PAST"], "Op"
.annotate 'line', 499
    get_hll_global $P1411, ["PAST"], "Var"
    $P1412 = $P1411."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1413, "$name"
    $P1414 = $P1410."new"($P1412, $P1413, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 498
    find_lex $P1415, "$/"
    $P1416 = $P1408."new"($P1414, $P1409 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1415 :named("node"))
.annotate 'line', 508
    get_hll_global $P1417, ["PAST"], "Block"
    new $P1418, "String"
    assign $P1418, "!PREFIX__"
    find_lex $P1419, "$name"
    concat $P1420, $P1418, $P1419
.annotate 'line', 509
    get_hll_global $P1421, ["PAST"], "Op"
.annotate 'line', 510
    get_hll_global $P1422, ["PAST"], "Var"
    $P1423 = $P1422."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1424, "$name"
    $P1425 = $P1421."new"($P1423, $P1424, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 509
    find_lex $P1426, "$/"
    $P1427 = $P1417."new"($P1425, $P1420 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1426 :named("node"))
.annotate 'line', 508
    $P1428 = $P1407."new"($P1416, $P1427)
.annotate 'line', 496
    store_lex "$past", $P1428
  if_1404_end:
.annotate 'line', 548
    find_lex $P1483, "$/"
    find_lex $P1484, "$past"
    $P1485 = $P1483."!make"($P1484)
.annotate 'line', 488
    .return ($P1485)
  control_1389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1486, exception, "payload"
    .return ($P1486)
.end


.namespace ["NQP";"Actions"]
.sub "_block1461"  :anon :subid("83_1273728005.59439") :outer("81_1273728005.59439")
.annotate 'line', 535
    new $P1463, "Undef"
    .lex "$regex", $P1463
.annotate 'line', 536
    get_hll_global $P1464, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P1465, "$/"
    unless_null $P1465, vivify_454
    $P1465 = root_new ['parrot';'Hash']
  vivify_454:
    set $P1466, $P1465["p6regex"]
    unless_null $P1466, vivify_455
    new $P1466, "Undef"
  vivify_455:
    $P1467 = $P1466."ast"()
    get_global $P1468, "@BLOCK"
    $P1469 = $P1468."shift"()
    $P1470 = $P1464($P1467, $P1469)
    store_lex "$regex", $P1470
.annotate 'line', 537
    find_lex $P1471, "$regex"
    find_lex $P1472, "$name"
    $P1471."name"($P1472)
.annotate 'line', 539
    get_hll_global $P1473, ["PAST"], "Op"
.annotate 'line', 541
    get_hll_global $P1474, ["PAST"], "Var"
    new $P1475, "ResizablePMCArray"
    push $P1475, "Regex"
    $P1476 = $P1474."new"("Method" :named("name"), $P1475 :named("namespace"), "package" :named("scope"))
    find_lex $P1477, "$regex"
    $P1478 = $P1473."new"($P1476, $P1477, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 539
    store_lex "$past", $P1478
.annotate 'line', 545
    find_lex $P1479, "$regex"
    find_lex $P1480, "$past"
    unless_null $P1480, vivify_456
    $P1480 = root_new ['parrot';'Hash']
    store_lex "$past", $P1480
  vivify_456:
    set $P1480["sink"], $P1479
.annotate 'line', 546
    find_lex $P1481, "@MODIFIERS"
    $P1482 = $P1481."shift"()
.annotate 'line', 534
    .return ($P1482)
.end


.namespace ["NQP";"Actions"]
.sub "_block1433"  :anon :subid("82_1273728005.59439") :outer("81_1273728005.59439")
.annotate 'line', 522
    $P1435 = root_new ['parrot';'Hash']
    .lex "%h", $P1435
.annotate 'line', 521
    find_lex $P1436, "%h"
.annotate 'line', 523
    find_lex $P1438, "$/"
    unless_null $P1438, vivify_457
    $P1438 = root_new ['parrot';'Hash']
  vivify_457:
    set $P1439, $P1438["sym"]
    unless_null $P1439, vivify_458
    new $P1439, "Undef"
  vivify_458:
    set $S1440, $P1439
    iseq $I1441, $S1440, "token"
    unless $I1441, if_1437_end
    new $P1442, "Integer"
    assign $P1442, 1
    find_lex $P1443, "%h"
    unless_null $P1443, vivify_459
    $P1443 = root_new ['parrot';'Hash']
    store_lex "%h", $P1443
  vivify_459:
    set $P1443["r"], $P1442
  if_1437_end:
.annotate 'line', 524
    find_lex $P1445, "$/"
    unless_null $P1445, vivify_460
    $P1445 = root_new ['parrot';'Hash']
  vivify_460:
    set $P1446, $P1445["sym"]
    unless_null $P1446, vivify_461
    new $P1446, "Undef"
  vivify_461:
    set $S1447, $P1446
    iseq $I1448, $S1447, "rule"
    unless $I1448, if_1444_end
    new $P1449, "Integer"
    assign $P1449, 1
    find_lex $P1450, "%h"
    unless_null $P1450, vivify_462
    $P1450 = root_new ['parrot';'Hash']
    store_lex "%h", $P1450
  vivify_462:
    set $P1450["r"], $P1449
    new $P1451, "Integer"
    assign $P1451, 1
    find_lex $P1452, "%h"
    unless_null $P1452, vivify_463
    $P1452 = root_new ['parrot';'Hash']
    store_lex "%h", $P1452
  vivify_463:
    set $P1452["s"], $P1451
  if_1444_end:
.annotate 'line', 525
    find_lex $P1453, "@MODIFIERS"
    find_lex $P1454, "%h"
    $P1453."unshift"($P1454)
.annotate 'line', 526

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate 'line', 530
    get_global $P1455, "@BLOCK"
    unless_null $P1455, vivify_464
    $P1455 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
    set $P1456, $P1455[0]
    unless_null $P1456, vivify_465
    new $P1456, "Undef"
  vivify_465:
    $P1456."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate 'line', 531
    get_global $P1457, "@BLOCK"
    unless_null $P1457, vivify_466
    $P1457 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    set $P1458, $P1457[0]
    unless_null $P1458, vivify_467
    new $P1458, "Undef"
  vivify_467:
    $P1458."symbol"("$/", "lexical" :named("scope"))
.annotate 'line', 532
    new $P1459, "Exception"
    set $P1459['type'], 57
    new $P1460, "Integer"
    assign $P1460, 0
    setattribute $P1459, 'payload', $P1460
    throw $P1459
.annotate 'line', 521
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("84_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1490
.annotate 'line', 552
    new $P1489, 'ExceptionHandler'
    set_addr $P1489, control_1488
    $P1489."handle_types"(57)
    push_eh $P1489
    .lex "self", self
    .lex "$/", param_1490
.annotate 'line', 553
    new $P1491, "Undef"
    .lex "$past", $P1491
    find_lex $P1494, "$/"
    unless_null $P1494, vivify_468
    $P1494 = root_new ['parrot';'Hash']
  vivify_468:
    set $P1495, $P1494["args"]
    unless_null $P1495, vivify_469
    new $P1495, "Undef"
  vivify_469:
    if $P1495, if_1493
    get_hll_global $P1500, ["PAST"], "Op"
    find_lex $P1501, "$/"
    $P1502 = $P1500."new"($P1501 :named("node"))
    set $P1492, $P1502
    goto if_1493_end
  if_1493:
    find_lex $P1496, "$/"
    unless_null $P1496, vivify_470
    $P1496 = root_new ['parrot';'Hash']
  vivify_470:
    set $P1497, $P1496["args"]
    unless_null $P1497, vivify_471
    $P1497 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
    set $P1498, $P1497[0]
    unless_null $P1498, vivify_472
    new $P1498, "Undef"
  vivify_472:
    $P1499 = $P1498."ast"()
    set $P1492, $P1499
  if_1493_end:
    store_lex "$past", $P1492
.annotate 'line', 554
    find_lex $P1503, "$past"
    find_lex $P1506, "$/"
    unless_null $P1506, vivify_473
    $P1506 = root_new ['parrot';'Hash']
  vivify_473:
    set $P1507, $P1506["quote"]
    unless_null $P1507, vivify_474
    new $P1507, "Undef"
  vivify_474:
    if $P1507, if_1505
    find_lex $P1511, "$/"
    unless_null $P1511, vivify_475
    $P1511 = root_new ['parrot';'Hash']
  vivify_475:
    set $P1512, $P1511["longname"]
    unless_null $P1512, vivify_476
    new $P1512, "Undef"
  vivify_476:
    set $S1513, $P1512
    new $P1504, 'String'
    set $P1504, $S1513
    goto if_1505_end
  if_1505:
    find_lex $P1508, "$/"
    unless_null $P1508, vivify_477
    $P1508 = root_new ['parrot';'Hash']
  vivify_477:
    set $P1509, $P1508["quote"]
    unless_null $P1509, vivify_478
    new $P1509, "Undef"
  vivify_478:
    $P1510 = $P1509."ast"()
    set $P1504, $P1510
  if_1505_end:
    $P1503."name"($P1504)
.annotate 'line', 555
    find_lex $P1514, "$past"
    $P1514."pasttype"("callmethod")
.annotate 'line', 556
    find_lex $P1515, "$/"
    find_lex $P1516, "$past"
    $P1517 = $P1515."!make"($P1516)
.annotate 'line', 552
    .return ($P1517)
  control_1488:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1518, exception, "payload"
    .return ($P1518)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("85_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1522
.annotate 'line', 561
    new $P1521, 'ExceptionHandler'
    set_addr $P1521, control_1520
    $P1521."handle_types"(57)
    push_eh $P1521
    .lex "self", self
    .lex "$/", param_1522
.annotate 'line', 562
    find_lex $P1523, "$/"
    get_hll_global $P1524, ["PAST"], "Var"
    $P1525 = $P1524."new"("self" :named("name"))
    $P1526 = $P1523."!make"($P1525)
.annotate 'line', 561
    .return ($P1526)
  control_1520:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1527, exception, "payload"
    .return ($P1527)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("86_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1531
.annotate 'line', 565
    new $P1530, 'ExceptionHandler'
    set_addr $P1530, control_1529
    $P1530."handle_types"(57)
    push_eh $P1530
    .lex "self", self
    .lex "$/", param_1531
.annotate 'line', 566
    new $P1532, "Undef"
    .lex "$past", $P1532
    find_lex $P1533, "$/"
    unless_null $P1533, vivify_479
    $P1533 = root_new ['parrot';'Hash']
  vivify_479:
    set $P1534, $P1533["args"]
    unless_null $P1534, vivify_480
    new $P1534, "Undef"
  vivify_480:
    $P1535 = $P1534."ast"()
    store_lex "$past", $P1535
.annotate 'line', 567
    find_lex $P1536, "$past"
    find_lex $P1537, "$/"
    unless_null $P1537, vivify_481
    $P1537 = root_new ['parrot';'Hash']
  vivify_481:
    set $P1538, $P1537["identifier"]
    unless_null $P1538, vivify_482
    new $P1538, "Undef"
  vivify_482:
    set $S1539, $P1538
    $P1536."name"($S1539)
.annotate 'line', 568
    find_lex $P1540, "$/"
    find_lex $P1541, "$past"
    $P1542 = $P1540."!make"($P1541)
.annotate 'line', 565
    .return ($P1542)
  control_1529:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1543, exception, "payload"
    .return ($P1543)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("87_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1547
.annotate 'line', 571
    new $P1546, 'ExceptionHandler'
    set_addr $P1546, control_1545
    $P1546."handle_types"(57)
    push_eh $P1546
    .lex "self", self
    .lex "$/", param_1547
.annotate 'line', 572
    $P1548 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P1548
.annotate 'line', 573
    new $P1549, "Undef"
    .lex "$name", $P1549
.annotate 'line', 575
    new $P1550, "Undef"
    .lex "$var", $P1550
.annotate 'line', 577
    new $P1551, "Undef"
    .lex "$past", $P1551
.annotate 'line', 572
    find_lex $P1552, "$/"
    unless_null $P1552, vivify_483
    $P1552 = root_new ['parrot';'Hash']
  vivify_483:
    set $P1553, $P1552["name"]
    unless_null $P1553, vivify_484
    $P1553 = root_new ['parrot';'Hash']
  vivify_484:
    set $P1554, $P1553["identifier"]
    unless_null $P1554, vivify_485
    new $P1554, "Undef"
  vivify_485:
    clone $P1555, $P1554
    store_lex "@ns", $P1555
.annotate 'line', 573
    find_lex $P1556, "@ns"
    $P1557 = $P1556."pop"()
    store_lex "$name", $P1557
.annotate 'line', 574
    find_lex $P1561, "@ns"
    if $P1561, if_1560
    set $P1559, $P1561
    goto if_1560_end
  if_1560:
    find_lex $P1562, "@ns"
    unless_null $P1562, vivify_486
    $P1562 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    set $P1563, $P1562[0]
    unless_null $P1563, vivify_487
    new $P1563, "Undef"
  vivify_487:
    set $S1564, $P1563
    iseq $I1565, $S1564, "GLOBAL"
    new $P1559, 'Integer'
    set $P1559, $I1565
  if_1560_end:
    unless $P1559, if_1558_end
    find_lex $P1566, "@ns"
    $P1566."shift"()
  if_1558_end:
.annotate 'line', 576
    get_hll_global $P1567, ["PAST"], "Var"
    find_lex $P1568, "$name"
    set $S1569, $P1568
    find_lex $P1570, "@ns"
    $P1571 = $P1567."new"($S1569 :named("name"), $P1570 :named("namespace"), "package" :named("scope"))
    store_lex "$var", $P1571
.annotate 'line', 577
    find_lex $P1572, "$var"
    store_lex "$past", $P1572
.annotate 'line', 578
    find_lex $P1574, "$/"
    unless_null $P1574, vivify_488
    $P1574 = root_new ['parrot';'Hash']
  vivify_488:
    set $P1575, $P1574["args"]
    unless_null $P1575, vivify_489
    new $P1575, "Undef"
  vivify_489:
    unless $P1575, if_1573_end
.annotate 'line', 579
    find_lex $P1576, "$/"
    unless_null $P1576, vivify_490
    $P1576 = root_new ['parrot';'Hash']
  vivify_490:
    set $P1577, $P1576["args"]
    unless_null $P1577, vivify_491
    $P1577 = root_new ['parrot';'ResizablePMCArray']
  vivify_491:
    set $P1578, $P1577[0]
    unless_null $P1578, vivify_492
    new $P1578, "Undef"
  vivify_492:
    $P1579 = $P1578."ast"()
    store_lex "$past", $P1579
.annotate 'line', 580
    find_lex $P1580, "$past"
    find_lex $P1581, "$var"
    $P1580."unshift"($P1581)
  if_1573_end:
.annotate 'line', 582
    find_lex $P1582, "$/"
    find_lex $P1583, "$past"
    $P1584 = $P1582."!make"($P1583)
.annotate 'line', 571
    .return ($P1584)
  control_1545:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1585, exception, "payload"
    .return ($P1585)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("88_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1589
.annotate 'line', 585
    new $P1588, 'ExceptionHandler'
    set_addr $P1588, control_1587
    $P1588."handle_types"(57)
    push_eh $P1588
    .lex "self", self
    .lex "$/", param_1589
.annotate 'line', 586
    new $P1590, "Undef"
    .lex "$past", $P1590
.annotate 'line', 587
    new $P1591, "Undef"
    .lex "$pirop", $P1591
.annotate 'line', 586
    find_lex $P1594, "$/"
    unless_null $P1594, vivify_493
    $P1594 = root_new ['parrot';'Hash']
  vivify_493:
    set $P1595, $P1594["args"]
    unless_null $P1595, vivify_494
    new $P1595, "Undef"
  vivify_494:
    if $P1595, if_1593
    get_hll_global $P1600, ["PAST"], "Op"
    find_lex $P1601, "$/"
    $P1602 = $P1600."new"($P1601 :named("node"))
    set $P1592, $P1602
    goto if_1593_end
  if_1593:
    find_lex $P1596, "$/"
    unless_null $P1596, vivify_495
    $P1596 = root_new ['parrot';'Hash']
  vivify_495:
    set $P1597, $P1596["args"]
    unless_null $P1597, vivify_496
    $P1597 = root_new ['parrot';'ResizablePMCArray']
  vivify_496:
    set $P1598, $P1597[0]
    unless_null $P1598, vivify_497
    new $P1598, "Undef"
  vivify_497:
    $P1599 = $P1598."ast"()
    set $P1592, $P1599
  if_1593_end:
    store_lex "$past", $P1592
.annotate 'line', 587
    find_lex $P1603, "$/"
    unless_null $P1603, vivify_498
    $P1603 = root_new ['parrot';'Hash']
  vivify_498:
    set $P1604, $P1603["op"]
    unless_null $P1604, vivify_499
    new $P1604, "Undef"
  vivify_499:
    set $S1605, $P1604
    new $P1606, 'String'
    set $P1606, $S1605
    store_lex "$pirop", $P1606
.annotate 'line', 588

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1607 = box $S0
    
    store_lex "$pirop", $P1607
.annotate 'line', 595
    find_lex $P1608, "$past"
    find_lex $P1609, "$pirop"
    $P1608."pirop"($P1609)
.annotate 'line', 596
    find_lex $P1610, "$past"
    $P1610."pasttype"("pirop")
.annotate 'line', 597
    find_lex $P1611, "$/"
    find_lex $P1612, "$past"
    $P1613 = $P1611."!make"($P1612)
.annotate 'line', 585
    .return ($P1613)
  control_1587:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1614, exception, "payload"
    .return ($P1614)
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("89_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1618
.annotate 'line', 600
    new $P1617, 'ExceptionHandler'
    set_addr $P1617, control_1616
    $P1617."handle_types"(57)
    push_eh $P1617
    .lex "self", self
    .lex "$/", param_1618
    find_lex $P1619, "$/"
    find_lex $P1620, "$/"
    unless_null $P1620, vivify_500
    $P1620 = root_new ['parrot';'Hash']
  vivify_500:
    set $P1621, $P1620["arglist"]
    unless_null $P1621, vivify_501
    new $P1621, "Undef"
  vivify_501:
    $P1622 = $P1621."ast"()
    $P1623 = $P1619."!make"($P1622)
    .return ($P1623)
  control_1616:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1624, exception, "payload"
    .return ($P1624)
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("90_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1628
.annotate 'line', 602
    .const 'Sub' $P1639 = "91_1273728005.59439" 
    capture_lex $P1639
    new $P1627, 'ExceptionHandler'
    set_addr $P1627, control_1626
    $P1627."handle_types"(57)
    push_eh $P1627
    .lex "self", self
    .lex "$/", param_1628
.annotate 'line', 603
    new $P1629, "Undef"
    .lex "$past", $P1629
.annotate 'line', 611
    new $P1630, "Undef"
    .lex "$i", $P1630
.annotate 'line', 612
    new $P1631, "Undef"
    .lex "$n", $P1631
.annotate 'line', 603
    get_hll_global $P1632, ["PAST"], "Op"
    find_lex $P1633, "$/"
    $P1634 = $P1632."new"("call" :named("pasttype"), $P1633 :named("node"))
    store_lex "$past", $P1634
.annotate 'line', 604
    find_lex $P1636, "$/"
    unless_null $P1636, vivify_502
    $P1636 = root_new ['parrot';'Hash']
  vivify_502:
    set $P1637, $P1636["EXPR"]
    unless_null $P1637, vivify_503
    new $P1637, "Undef"
  vivify_503:
    unless $P1637, if_1635_end
    .const 'Sub' $P1639 = "91_1273728005.59439" 
    capture_lex $P1639
    $P1639()
  if_1635_end:
.annotate 'line', 611
    new $P1671, "Integer"
    assign $P1671, 0
    store_lex "$i", $P1671
.annotate 'line', 612
    find_lex $P1672, "$past"
    $P1673 = $P1672."list"()
    set $N1674, $P1673
    new $P1675, 'Float'
    set $P1675, $N1674
    store_lex "$n", $P1675
.annotate 'line', 613
    new $P1723, 'ExceptionHandler'
    set_addr $P1723, loop1722_handler
    $P1723."handle_types"(64, 66, 65)
    push_eh $P1723
  loop1722_test:
    find_lex $P1676, "$i"
    set $N1677, $P1676
    find_lex $P1678, "$n"
    set $N1679, $P1678
    islt $I1680, $N1677, $N1679
    unless $I1680, loop1722_done
  loop1722_redo:
.annotate 'line', 614
    find_lex $P1682, "$i"
    set $I1683, $P1682
    find_lex $P1684, "$past"
    unless_null $P1684, vivify_507
    $P1684 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    set $P1685, $P1684[$I1683]
    unless_null $P1685, vivify_508
    new $P1685, "Undef"
  vivify_508:
    $S1686 = $P1685."name"()
    iseq $I1687, $S1686, "&prefix:<|>"
    unless $I1687, if_1681_end
.annotate 'line', 615
    find_lex $P1688, "$i"
    set $I1689, $P1688
    find_lex $P1690, "$past"
    unless_null $P1690, vivify_509
    $P1690 = root_new ['parrot';'ResizablePMCArray']
  vivify_509:
    set $P1691, $P1690[$I1689]
    unless_null $P1691, vivify_510
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_510:
    set $P1692, $P1691[0]
    unless_null $P1692, vivify_511
    new $P1692, "Undef"
  vivify_511:
    find_lex $P1693, "$i"
    set $I1694, $P1693
    find_lex $P1695, "$past"
    unless_null $P1695, vivify_512
    $P1695 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$past", $P1695
  vivify_512:
    set $P1695[$I1694], $P1692
.annotate 'line', 616
    find_lex $P1696, "$i"
    set $I1697, $P1696
    find_lex $P1698, "$past"
    unless_null $P1698, vivify_513
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_513:
    set $P1699, $P1698[$I1697]
    unless_null $P1699, vivify_514
    new $P1699, "Undef"
  vivify_514:
    $P1699."flat"(1)
.annotate 'line', 617
    find_lex $P1703, "$i"
    set $I1704, $P1703
    find_lex $P1705, "$past"
    unless_null $P1705, vivify_515
    $P1705 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    set $P1706, $P1705[$I1704]
    unless_null $P1706, vivify_516
    new $P1706, "Undef"
  vivify_516:
    get_hll_global $P1707, ["PAST"], "Val"
    $P1708 = $P1706."isa"($P1707)
    if $P1708, if_1702
    set $P1701, $P1708
    goto if_1702_end
  if_1702:
.annotate 'line', 618
    find_lex $P1709, "$i"
    set $I1710, $P1709
    find_lex $P1711, "$past"
    unless_null $P1711, vivify_517
    $P1711 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    set $P1712, $P1711[$I1710]
    unless_null $P1712, vivify_518
    new $P1712, "Undef"
  vivify_518:
    $S1713 = $P1712."name"()
    substr $S1714, $S1713, 0, 1
    iseq $I1715, $S1714, "%"
    new $P1701, 'Integer'
    set $P1701, $I1715
  if_1702_end:
    unless $P1701, if_1700_end
.annotate 'line', 619
    find_lex $P1716, "$i"
    set $I1717, $P1716
    find_lex $P1718, "$past"
    unless_null $P1718, vivify_519
    $P1718 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    set $P1719, $P1718[$I1717]
    unless_null $P1719, vivify_520
    new $P1719, "Undef"
  vivify_520:
    $P1719."named"(1)
  if_1700_end:
  if_1681_end:
.annotate 'line', 614
    find_lex $P1720, "$i"
    clone $P1721, $P1720
    inc $P1720
  loop1722_next:
.annotate 'line', 613
    goto loop1722_test
  loop1722_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1724, exception, 'type'
    eq $P1724, 64, loop1722_next
    eq $P1724, 66, loop1722_redo
  loop1722_done:
    pop_eh 
.annotate 'line', 624
    find_lex $P1725, "$/"
    find_lex $P1726, "$past"
    $P1727 = $P1725."!make"($P1726)
.annotate 'line', 602
    .return ($P1727)
  control_1626:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1728, exception, "payload"
    .return ($P1728)
.end


.namespace ["NQP";"Actions"]
.sub "_block1638"  :anon :subid("91_1273728005.59439") :outer("90_1273728005.59439")
.annotate 'line', 604
    .const 'Sub' $P1660 = "92_1273728005.59439" 
    capture_lex $P1660
.annotate 'line', 605
    new $P1640, "Undef"
    .lex "$expr", $P1640
    find_lex $P1641, "$/"
    unless_null $P1641, vivify_504
    $P1641 = root_new ['parrot';'Hash']
  vivify_504:
    set $P1642, $P1641["EXPR"]
    unless_null $P1642, vivify_505
    new $P1642, "Undef"
  vivify_505:
    $P1643 = $P1642."ast"()
    store_lex "$expr", $P1643
.annotate 'line', 606
    find_lex $P1648, "$expr"
    $S1649 = $P1648."name"()
    iseq $I1650, $S1649, "&infix:<,>"
    if $I1650, if_1647
    new $P1646, 'Integer'
    set $P1646, $I1650
    goto if_1647_end
  if_1647:
    find_lex $P1651, "$expr"
    $P1652 = $P1651."named"()
    isfalse $I1653, $P1652
    new $P1646, 'Integer'
    set $P1646, $I1653
  if_1647_end:
    if $P1646, if_1645
.annotate 'line', 609
    find_lex $P1668, "$past"
    find_lex $P1669, "$expr"
    $P1670 = $P1668."push"($P1669)
    set $P1644, $P1670
.annotate 'line', 606
    goto if_1645_end
  if_1645:
.annotate 'line', 607
    find_lex $P1655, "$expr"
    $P1656 = $P1655."list"()
    defined $I1657, $P1656
    unless $I1657, for_undef_506
    iter $P1654, $P1656
    new $P1666, 'ExceptionHandler'
    set_addr $P1666, loop1665_handler
    $P1666."handle_types"(64, 66, 65)
    push_eh $P1666
  loop1665_test:
    unless $P1654, loop1665_done
    shift $P1658, $P1654
  loop1665_redo:
    .const 'Sub' $P1660 = "92_1273728005.59439" 
    capture_lex $P1660
    $P1660($P1658)
  loop1665_next:
    goto loop1665_test
  loop1665_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1667, exception, 'type'
    eq $P1667, 64, loop1665_next
    eq $P1667, 66, loop1665_redo
  loop1665_done:
    pop_eh 
  for_undef_506:
.annotate 'line', 606
    set $P1644, $P1654
  if_1645_end:
.annotate 'line', 604
    .return ($P1644)
.end


.namespace ["NQP";"Actions"]
.sub "_block1659"  :anon :subid("92_1273728005.59439") :outer("91_1273728005.59439")
    .param pmc param_1661
.annotate 'line', 607
    .lex "$_", param_1661
    find_lex $P1662, "$past"
    find_lex $P1663, "$_"
    $P1664 = $P1662."push"($P1663)
    .return ($P1664)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("93_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1732
.annotate 'line', 628
    new $P1731, 'ExceptionHandler'
    set_addr $P1731, control_1730
    $P1731."handle_types"(57)
    push_eh $P1731
    .lex "self", self
    .lex "$/", param_1732
    find_lex $P1733, "$/"
    find_lex $P1734, "$/"
    unless_null $P1734, vivify_521
    $P1734 = root_new ['parrot';'Hash']
  vivify_521:
    set $P1735, $P1734["value"]
    unless_null $P1735, vivify_522
    new $P1735, "Undef"
  vivify_522:
    $P1736 = $P1735."ast"()
    $P1737 = $P1733."!make"($P1736)
    .return ($P1737)
  control_1730:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1738, exception, "payload"
    .return ($P1738)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("94_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1742
.annotate 'line', 630
    new $P1741, 'ExceptionHandler'
    set_addr $P1741, control_1740
    $P1741."handle_types"(57)
    push_eh $P1741
    .lex "self", self
    .lex "$/", param_1742
.annotate 'line', 631
    find_lex $P1743, "$/"
.annotate 'line', 632
    find_lex $P1746, "$/"
    unless_null $P1746, vivify_523
    $P1746 = root_new ['parrot';'Hash']
  vivify_523:
    set $P1747, $P1746["EXPR"]
    unless_null $P1747, vivify_524
    new $P1747, "Undef"
  vivify_524:
    if $P1747, if_1745
.annotate 'line', 633
    get_hll_global $P1752, ["PAST"], "Op"
    find_lex $P1753, "$/"
    $P1754 = $P1752."new"("list" :named("pasttype"), $P1753 :named("node"))
    set $P1744, $P1754
.annotate 'line', 632
    goto if_1745_end
  if_1745:
    find_lex $P1748, "$/"
    unless_null $P1748, vivify_525
    $P1748 = root_new ['parrot';'Hash']
  vivify_525:
    set $P1749, $P1748["EXPR"]
    unless_null $P1749, vivify_526
    $P1749 = root_new ['parrot';'ResizablePMCArray']
  vivify_526:
    set $P1750, $P1749[0]
    unless_null $P1750, vivify_527
    new $P1750, "Undef"
  vivify_527:
    $P1751 = $P1750."ast"()
    set $P1744, $P1751
  if_1745_end:
    $P1755 = $P1743."!make"($P1744)
.annotate 'line', 630
    .return ($P1755)
  control_1740:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1756, exception, "payload"
    .return ($P1756)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<[ ]>"  :subid("95_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1760
.annotate 'line', 636
    new $P1759, 'ExceptionHandler'
    set_addr $P1759, control_1758
    $P1759."handle_types"(57)
    push_eh $P1759
    .lex "self", self
    .lex "$/", param_1760
.annotate 'line', 637
    new $P1761, "Undef"
    .lex "$past", $P1761
.annotate 'line', 636
    find_lex $P1762, "$past"
.annotate 'line', 638
    find_lex $P1764, "$/"
    unless_null $P1764, vivify_528
    $P1764 = root_new ['parrot';'Hash']
  vivify_528:
    set $P1765, $P1764["EXPR"]
    unless_null $P1765, vivify_529
    new $P1765, "Undef"
  vivify_529:
    if $P1765, if_1763
.annotate 'line', 645
    get_hll_global $P1777, ["PAST"], "Op"
    $P1778 = $P1777."new"("list" :named("pasttype"))
    store_lex "$past", $P1778
.annotate 'line', 644
    goto if_1763_end
  if_1763:
.annotate 'line', 639
    find_lex $P1766, "$/"
    unless_null $P1766, vivify_530
    $P1766 = root_new ['parrot';'Hash']
  vivify_530:
    set $P1767, $P1766["EXPR"]
    unless_null $P1767, vivify_531
    $P1767 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    set $P1768, $P1767[0]
    unless_null $P1768, vivify_532
    new $P1768, "Undef"
  vivify_532:
    $P1769 = $P1768."ast"()
    store_lex "$past", $P1769
.annotate 'line', 640
    find_lex $P1771, "$past"
    $S1772 = $P1771."name"()
    isne $I1773, $S1772, "&infix:<,>"
    unless $I1773, if_1770_end
.annotate 'line', 641
    get_hll_global $P1774, ["PAST"], "Op"
    find_lex $P1775, "$past"
    $P1776 = $P1774."new"($P1775, "list" :named("pasttype"))
    store_lex "$past", $P1776
  if_1770_end:
  if_1763_end:
.annotate 'line', 647
    find_lex $P1779, "$past"
    $P1779."name"("&circumfix:<[ ]>")
.annotate 'line', 648
    find_lex $P1780, "$/"
    find_lex $P1781, "$past"
    $P1782 = $P1780."!make"($P1781)
.annotate 'line', 636
    .return ($P1782)
  control_1758:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1783, exception, "payload"
    .return ($P1783)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<ang>"  :subid("96_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1787
.annotate 'line', 651
    new $P1786, 'ExceptionHandler'
    set_addr $P1786, control_1785
    $P1786."handle_types"(57)
    push_eh $P1786
    .lex "self", self
    .lex "$/", param_1787
    find_lex $P1788, "$/"
    find_lex $P1789, "$/"
    unless_null $P1789, vivify_533
    $P1789 = root_new ['parrot';'Hash']
  vivify_533:
    set $P1790, $P1789["quote_EXPR"]
    unless_null $P1790, vivify_534
    new $P1790, "Undef"
  vivify_534:
    $P1791 = $P1790."ast"()
    $P1792 = $P1788."!make"($P1791)
    .return ($P1792)
  control_1785:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1793, exception, "payload"
    .return ($P1793)
.end


.namespace ["NQP";"Actions"]
.sub unicode:"circumfix:sym<\x{ab} \x{bb}>"  :subid("97_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1797
.annotate 'line', 652
    new $P1796, 'ExceptionHandler'
    set_addr $P1796, control_1795
    $P1796."handle_types"(57)
    push_eh $P1796
    .lex "self", self
    .lex "$/", param_1797
    find_lex $P1798, "$/"
    find_lex $P1799, "$/"
    unless_null $P1799, vivify_535
    $P1799 = root_new ['parrot';'Hash']
  vivify_535:
    set $P1800, $P1799["quote_EXPR"]
    unless_null $P1800, vivify_536
    new $P1800, "Undef"
  vivify_536:
    $P1801 = $P1800."ast"()
    $P1802 = $P1798."!make"($P1801)
    .return ($P1802)
  control_1795:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1803, exception, "payload"
    .return ($P1803)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<{ }>"  :subid("98_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1807
.annotate 'line', 654
    new $P1806, 'ExceptionHandler'
    set_addr $P1806, control_1805
    $P1806."handle_types"(57)
    push_eh $P1806
    .lex "self", self
    .lex "$/", param_1807
.annotate 'line', 655
    find_lex $P1808, "$/"
    find_lex $P1811, "$/"
    unless_null $P1811, vivify_537
    $P1811 = root_new ['parrot';'Hash']
  vivify_537:
    set $P1812, $P1811["pblock"]
    unless_null $P1812, vivify_538
    $P1812 = root_new ['parrot';'Hash']
  vivify_538:
    set $P1813, $P1812["blockoid"]
    unless_null $P1813, vivify_539
    $P1813 = root_new ['parrot';'Hash']
  vivify_539:
    set $P1814, $P1813["statementlist"]
    unless_null $P1814, vivify_540
    $P1814 = root_new ['parrot';'Hash']
  vivify_540:
    set $P1815, $P1814["statement"]
    unless_null $P1815, vivify_541
    new $P1815, "Undef"
  vivify_541:
    set $N1816, $P1815
    isgt $I1817, $N1816, 0.0
    if $I1817, if_1810
.annotate 'line', 657
    $P1821 = "vivitype"("%")
    set $P1809, $P1821
.annotate 'line', 655
    goto if_1810_end
  if_1810:
.annotate 'line', 656
    find_lex $P1818, "$/"
    unless_null $P1818, vivify_542
    $P1818 = root_new ['parrot';'Hash']
  vivify_542:
    set $P1819, $P1818["pblock"]
    unless_null $P1819, vivify_543
    new $P1819, "Undef"
  vivify_543:
    $P1820 = $P1819."ast"()
    set $P1809, $P1820
  if_1810_end:
    $P1822 = $P1808."!make"($P1809)
.annotate 'line', 654
    .return ($P1822)
  control_1805:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1823, exception, "payload"
    .return ($P1823)
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<sigil>"  :subid("99_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1827
.annotate 'line', 660
    new $P1826, 'ExceptionHandler'
    set_addr $P1826, control_1825
    $P1826."handle_types"(57)
    push_eh $P1826
    .lex "self", self
    .lex "$/", param_1827
.annotate 'line', 661
    new $P1828, "Undef"
    .lex "$name", $P1828
    find_lex $P1831, "$/"
    unless_null $P1831, vivify_544
    $P1831 = root_new ['parrot';'Hash']
  vivify_544:
    set $P1832, $P1831["sigil"]
    unless_null $P1832, vivify_545
    new $P1832, "Undef"
  vivify_545:
    set $S1833, $P1832
    iseq $I1834, $S1833, "@"
    if $I1834, if_1830
.annotate 'line', 662
    find_lex $P1838, "$/"
    unless_null $P1838, vivify_546
    $P1838 = root_new ['parrot';'Hash']
  vivify_546:
    set $P1839, $P1838["sigil"]
    unless_null $P1839, vivify_547
    new $P1839, "Undef"
  vivify_547:
    set $S1840, $P1839
    iseq $I1841, $S1840, "%"
    if $I1841, if_1837
    new $P1843, "String"
    assign $P1843, "item"
    set $P1836, $P1843
    goto if_1837_end
  if_1837:
    new $P1842, "String"
    assign $P1842, "hash"
    set $P1836, $P1842
  if_1837_end:
    set $P1829, $P1836
.annotate 'line', 661
    goto if_1830_end
  if_1830:
    new $P1835, "String"
    assign $P1835, "list"
    set $P1829, $P1835
  if_1830_end:
    store_lex "$name", $P1829
.annotate 'line', 664
    find_lex $P1844, "$/"
    get_hll_global $P1845, ["PAST"], "Op"
    find_lex $P1846, "$name"
    find_lex $P1847, "$/"
    unless_null $P1847, vivify_548
    $P1847 = root_new ['parrot';'Hash']
  vivify_548:
    set $P1848, $P1847["semilist"]
    unless_null $P1848, vivify_549
    new $P1848, "Undef"
  vivify_549:
    $P1849 = $P1848."ast"()
    $P1850 = $P1845."new"($P1849, "callmethod" :named("pasttype"), $P1846 :named("name"))
    $P1851 = $P1844."!make"($P1850)
.annotate 'line', 660
    .return ($P1851)
  control_1825:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1852, exception, "payload"
    .return ($P1852)
.end


.namespace ["NQP";"Actions"]
.sub "semilist"  :subid("100_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1856
.annotate 'line', 667
    new $P1855, 'ExceptionHandler'
    set_addr $P1855, control_1854
    $P1855."handle_types"(57)
    push_eh $P1855
    .lex "self", self
    .lex "$/", param_1856
    find_lex $P1857, "$/"
    find_lex $P1858, "$/"
    unless_null $P1858, vivify_550
    $P1858 = root_new ['parrot';'Hash']
  vivify_550:
    set $P1859, $P1858["statement"]
    unless_null $P1859, vivify_551
    new $P1859, "Undef"
  vivify_551:
    $P1860 = $P1859."ast"()
    $P1861 = $P1857."!make"($P1860)
    .return ($P1861)
  control_1854:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1862, exception, "payload"
    .return ($P1862)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<[ ]>"  :subid("101_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1866
.annotate 'line', 669
    new $P1865, 'ExceptionHandler'
    set_addr $P1865, control_1864
    $P1865."handle_types"(57)
    push_eh $P1865
    .lex "self", self
    .lex "$/", param_1866
.annotate 'line', 670
    find_lex $P1867, "$/"
    get_hll_global $P1868, ["PAST"], "Var"
    find_lex $P1869, "$/"
    unless_null $P1869, vivify_552
    $P1869 = root_new ['parrot';'Hash']
  vivify_552:
    set $P1870, $P1869["EXPR"]
    unless_null $P1870, vivify_553
    new $P1870, "Undef"
  vivify_553:
    $P1871 = $P1870."ast"()
.annotate 'line', 672
    $P1872 = "vivitype"("@")
    $P1873 = $P1868."new"($P1871, "keyed_int" :named("scope"), "Undef" :named("viviself"), $P1872 :named("vivibase"))
.annotate 'line', 670
    $P1874 = $P1867."!make"($P1873)
.annotate 'line', 669
    .return ($P1874)
  control_1864:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1875, exception, "payload"
    .return ($P1875)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("102_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1879
.annotate 'line', 675
    new $P1878, 'ExceptionHandler'
    set_addr $P1878, control_1877
    $P1878."handle_types"(57)
    push_eh $P1878
    .lex "self", self
    .lex "$/", param_1879
.annotate 'line', 676
    find_lex $P1880, "$/"
    get_hll_global $P1881, ["PAST"], "Var"
    find_lex $P1882, "$/"
    unless_null $P1882, vivify_554
    $P1882 = root_new ['parrot';'Hash']
  vivify_554:
    set $P1883, $P1882["EXPR"]
    unless_null $P1883, vivify_555
    new $P1883, "Undef"
  vivify_555:
    $P1884 = $P1883."ast"()
.annotate 'line', 678
    $P1885 = "vivitype"("%")
    $P1886 = $P1881."new"($P1884, "keyed" :named("scope"), "Undef" :named("viviself"), $P1885 :named("vivibase"))
.annotate 'line', 676
    $P1887 = $P1880."!make"($P1886)
.annotate 'line', 675
    .return ($P1887)
  control_1877:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1888, exception, "payload"
    .return ($P1888)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("103_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1892
.annotate 'line', 681
    new $P1891, 'ExceptionHandler'
    set_addr $P1891, control_1890
    $P1891."handle_types"(57)
    push_eh $P1891
    .lex "self", self
    .lex "$/", param_1892
.annotate 'line', 682
    find_lex $P1893, "$/"
    get_hll_global $P1894, ["PAST"], "Var"
    find_lex $P1895, "$/"
    unless_null $P1895, vivify_556
    $P1895 = root_new ['parrot';'Hash']
  vivify_556:
    set $P1896, $P1895["quote_EXPR"]
    unless_null $P1896, vivify_557
    new $P1896, "Undef"
  vivify_557:
    $P1897 = $P1896."ast"()
.annotate 'line', 684
    $P1898 = "vivitype"("%")
    $P1899 = $P1894."new"($P1897, "keyed" :named("scope"), "Undef" :named("viviself"), $P1898 :named("vivibase"))
.annotate 'line', 682
    $P1900 = $P1893."!make"($P1899)
.annotate 'line', 681
    .return ($P1900)
  control_1890:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1901, exception, "payload"
    .return ($P1901)
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<( )>"  :subid("104_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1905
.annotate 'line', 687
    new $P1904, 'ExceptionHandler'
    set_addr $P1904, control_1903
    $P1904."handle_types"(57)
    push_eh $P1904
    .lex "self", self
    .lex "$/", param_1905
.annotate 'line', 688
    find_lex $P1906, "$/"
    find_lex $P1907, "$/"
    unless_null $P1907, vivify_558
    $P1907 = root_new ['parrot';'Hash']
  vivify_558:
    set $P1908, $P1907["arglist"]
    unless_null $P1908, vivify_559
    new $P1908, "Undef"
  vivify_559:
    $P1909 = $P1908."ast"()
    $P1910 = $P1906."!make"($P1909)
.annotate 'line', 687
    .return ($P1910)
  control_1903:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1911, exception, "payload"
    .return ($P1911)
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("105_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1915
.annotate 'line', 691
    new $P1914, 'ExceptionHandler'
    set_addr $P1914, control_1913
    $P1914."handle_types"(57)
    push_eh $P1914
    .lex "self", self
    .lex "$/", param_1915
.annotate 'line', 692
    find_lex $P1916, "$/"
    find_lex $P1919, "$/"
    unless_null $P1919, vivify_560
    $P1919 = root_new ['parrot';'Hash']
  vivify_560:
    set $P1920, $P1919["quote"]
    unless_null $P1920, vivify_561
    new $P1920, "Undef"
  vivify_561:
    if $P1920, if_1918
    find_lex $P1924, "$/"
    unless_null $P1924, vivify_562
    $P1924 = root_new ['parrot';'Hash']
  vivify_562:
    set $P1925, $P1924["number"]
    unless_null $P1925, vivify_563
    new $P1925, "Undef"
  vivify_563:
    $P1926 = $P1925."ast"()
    set $P1917, $P1926
    goto if_1918_end
  if_1918:
    find_lex $P1921, "$/"
    unless_null $P1921, vivify_564
    $P1921 = root_new ['parrot';'Hash']
  vivify_564:
    set $P1922, $P1921["quote"]
    unless_null $P1922, vivify_565
    new $P1922, "Undef"
  vivify_565:
    $P1923 = $P1922."ast"()
    set $P1917, $P1923
  if_1918_end:
    $P1927 = $P1916."!make"($P1917)
.annotate 'line', 691
    .return ($P1927)
  control_1913:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1928, exception, "payload"
    .return ($P1928)
.end


.namespace ["NQP";"Actions"]
.sub "number"  :subid("106_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1932
.annotate 'line', 695
    new $P1931, 'ExceptionHandler'
    set_addr $P1931, control_1930
    $P1931."handle_types"(57)
    push_eh $P1931
    .lex "self", self
    .lex "$/", param_1932
.annotate 'line', 696
    new $P1933, "Undef"
    .lex "$value", $P1933
    find_lex $P1936, "$/"
    unless_null $P1936, vivify_566
    $P1936 = root_new ['parrot';'Hash']
  vivify_566:
    set $P1937, $P1936["dec_number"]
    unless_null $P1937, vivify_567
    new $P1937, "Undef"
  vivify_567:
    if $P1937, if_1935
    find_lex $P1941, "$/"
    unless_null $P1941, vivify_568
    $P1941 = root_new ['parrot';'Hash']
  vivify_568:
    set $P1942, $P1941["integer"]
    unless_null $P1942, vivify_569
    new $P1942, "Undef"
  vivify_569:
    $P1943 = $P1942."ast"()
    set $P1934, $P1943
    goto if_1935_end
  if_1935:
    find_lex $P1938, "$/"
    unless_null $P1938, vivify_570
    $P1938 = root_new ['parrot';'Hash']
  vivify_570:
    set $P1939, $P1938["dec_number"]
    unless_null $P1939, vivify_571
    new $P1939, "Undef"
  vivify_571:
    $P1940 = $P1939."ast"()
    set $P1934, $P1940
  if_1935_end:
    store_lex "$value", $P1934
.annotate 'line', 697
    find_lex $P1945, "$/"
    unless_null $P1945, vivify_572
    $P1945 = root_new ['parrot';'Hash']
  vivify_572:
    set $P1946, $P1945["sign"]
    unless_null $P1946, vivify_573
    new $P1946, "Undef"
  vivify_573:
    set $S1947, $P1946
    iseq $I1948, $S1947, "-"
    unless $I1948, if_1944_end
    find_lex $P1949, "$value"
    neg $P1950, $P1949
    store_lex "$value", $P1950
  if_1944_end:
.annotate 'line', 698
    find_lex $P1951, "$/"
    get_hll_global $P1952, ["PAST"], "Val"
    find_lex $P1953, "$value"
    $P1954 = $P1952."new"($P1953 :named("value"))
    $P1955 = $P1951."!make"($P1954)
.annotate 'line', 695
    .return ($P1955)
  control_1930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1956, exception, "payload"
    .return ($P1956)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("107_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1960
.annotate 'line', 701
    new $P1959, 'ExceptionHandler'
    set_addr $P1959, control_1958
    $P1959."handle_types"(57)
    push_eh $P1959
    .lex "self", self
    .lex "$/", param_1960
    find_lex $P1961, "$/"
    find_lex $P1962, "$/"
    unless_null $P1962, vivify_574
    $P1962 = root_new ['parrot';'Hash']
  vivify_574:
    set $P1963, $P1962["quote_EXPR"]
    unless_null $P1963, vivify_575
    new $P1963, "Undef"
  vivify_575:
    $P1964 = $P1963."ast"()
    $P1965 = $P1961."!make"($P1964)
    .return ($P1965)
  control_1958:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1966, exception, "payload"
    .return ($P1966)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("108_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1970
.annotate 'line', 702
    new $P1969, 'ExceptionHandler'
    set_addr $P1969, control_1968
    $P1969."handle_types"(57)
    push_eh $P1969
    .lex "self", self
    .lex "$/", param_1970
    find_lex $P1971, "$/"
    find_lex $P1972, "$/"
    unless_null $P1972, vivify_576
    $P1972 = root_new ['parrot';'Hash']
  vivify_576:
    set $P1973, $P1972["quote_EXPR"]
    unless_null $P1973, vivify_577
    new $P1973, "Undef"
  vivify_577:
    $P1974 = $P1973."ast"()
    $P1975 = $P1971."!make"($P1974)
    .return ($P1975)
  control_1968:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1976, exception, "payload"
    .return ($P1976)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("109_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1980
.annotate 'line', 703
    new $P1979, 'ExceptionHandler'
    set_addr $P1979, control_1978
    $P1979."handle_types"(57)
    push_eh $P1979
    .lex "self", self
    .lex "$/", param_1980
    find_lex $P1981, "$/"
    find_lex $P1982, "$/"
    unless_null $P1982, vivify_578
    $P1982 = root_new ['parrot';'Hash']
  vivify_578:
    set $P1983, $P1982["quote_EXPR"]
    unless_null $P1983, vivify_579
    new $P1983, "Undef"
  vivify_579:
    $P1984 = $P1983."ast"()
    $P1985 = $P1981."!make"($P1984)
    .return ($P1985)
  control_1978:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1986, exception, "payload"
    .return ($P1986)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("110_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_1990
.annotate 'line', 704
    new $P1989, 'ExceptionHandler'
    set_addr $P1989, control_1988
    $P1989."handle_types"(57)
    push_eh $P1989
    .lex "self", self
    .lex "$/", param_1990
    find_lex $P1991, "$/"
    find_lex $P1992, "$/"
    unless_null $P1992, vivify_580
    $P1992 = root_new ['parrot';'Hash']
  vivify_580:
    set $P1993, $P1992["quote_EXPR"]
    unless_null $P1993, vivify_581
    new $P1993, "Undef"
  vivify_581:
    $P1994 = $P1993."ast"()
    $P1995 = $P1991."!make"($P1994)
    .return ($P1995)
  control_1988:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1996, exception, "payload"
    .return ($P1996)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q>"  :subid("111_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2000
.annotate 'line', 705
    new $P1999, 'ExceptionHandler'
    set_addr $P1999, control_1998
    $P1999."handle_types"(57)
    push_eh $P1999
    .lex "self", self
    .lex "$/", param_2000
    find_lex $P2001, "$/"
    find_lex $P2002, "$/"
    unless_null $P2002, vivify_582
    $P2002 = root_new ['parrot';'Hash']
  vivify_582:
    set $P2003, $P2002["quote_EXPR"]
    unless_null $P2003, vivify_583
    new $P2003, "Undef"
  vivify_583:
    $P2004 = $P2003."ast"()
    $P2005 = $P2001."!make"($P2004)
    .return ($P2005)
  control_1998:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2006, exception, "payload"
    .return ($P2006)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("112_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2010
.annotate 'line', 706
    new $P2009, 'ExceptionHandler'
    set_addr $P2009, control_2008
    $P2009."handle_types"(57)
    push_eh $P2009
    .lex "self", self
    .lex "$/", param_2010
.annotate 'line', 707
    find_lex $P2011, "$/"
    get_hll_global $P2012, ["PAST"], "Op"
    find_lex $P2013, "$/"
    unless_null $P2013, vivify_584
    $P2013 = root_new ['parrot';'Hash']
  vivify_584:
    set $P2014, $P2013["quote_EXPR"]
    unless_null $P2014, vivify_585
    new $P2014, "Undef"
  vivify_585:
    $P2015 = $P2014."ast"()
    $P2016 = $P2015."value"()
    find_lex $P2017, "$/"
    $P2018 = $P2012."new"($P2016 :named("inline"), "inline" :named("pasttype"), $P2017 :named("node"))
    $P2019 = $P2011."!make"($P2018)
.annotate 'line', 706
    .return ($P2019)
  control_2008:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2020, exception, "payload"
    .return ($P2020)
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym</ />"  :subid("113_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2024
    .param pmc param_2025 :optional
    .param int has_param_2025 :opt_flag
.annotate 'line', 712
    new $P2023, 'ExceptionHandler'
    set_addr $P2023, control_2022
    $P2023."handle_types"(57)
    push_eh $P2023
    .lex "self", self
    .lex "$/", param_2024
    if has_param_2025, optparam_586
    new $P2026, "Undef"
    set param_2025, $P2026
  optparam_586:
    .lex "$key", param_2025
.annotate 'line', 722
    new $P2027, "Undef"
    .lex "$regex", $P2027
.annotate 'line', 724
    new $P2028, "Undef"
    .lex "$past", $P2028
.annotate 'line', 713
    find_lex $P2030, "$key"
    set $S2031, $P2030
    iseq $I2032, $S2031, "open"
    unless $I2032, if_2029_end
.annotate 'line', 714

            null $P0
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate 'line', 718
    get_global $P2033, "@BLOCK"
    unless_null $P2033, vivify_587
    $P2033 = root_new ['parrot';'ResizablePMCArray']
  vivify_587:
    set $P2034, $P2033[0]
    unless_null $P2034, vivify_588
    new $P2034, "Undef"
  vivify_588:
    $P2034."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate 'line', 719
    get_global $P2035, "@BLOCK"
    unless_null $P2035, vivify_589
    $P2035 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    set $P2036, $P2035[0]
    unless_null $P2036, vivify_590
    new $P2036, "Undef"
  vivify_590:
    $P2036."symbol"("$/", "lexical" :named("scope"))
.annotate 'line', 720
    new $P2037, "Exception"
    set $P2037['type'], 57
    new $P2038, "Integer"
    assign $P2038, 0
    setattribute $P2037, 'payload', $P2038
    throw $P2037
  if_2029_end:
.annotate 'line', 723
    get_hll_global $P2039, ["Regex";"P6Regex";"Actions"], "buildsub"
    find_lex $P2040, "$/"
    unless_null $P2040, vivify_591
    $P2040 = root_new ['parrot';'Hash']
  vivify_591:
    set $P2041, $P2040["p6regex"]
    unless_null $P2041, vivify_592
    new $P2041, "Undef"
  vivify_592:
    $P2042 = $P2041."ast"()
    get_global $P2043, "@BLOCK"
    $P2044 = $P2043."shift"()
    $P2045 = $P2039($P2042, $P2044)
    store_lex "$regex", $P2045
.annotate 'line', 725
    get_hll_global $P2046, ["PAST"], "Op"
.annotate 'line', 727
    get_hll_global $P2047, ["PAST"], "Var"
    new $P2048, "ResizablePMCArray"
    push $P2048, "Regex"
    $P2049 = $P2047."new"("Regex" :named("name"), $P2048 :named("namespace"), "package" :named("scope"))
    find_lex $P2050, "$regex"
    $P2051 = $P2046."new"($P2049, $P2050, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 725
    store_lex "$past", $P2051
.annotate 'line', 731
    find_lex $P2052, "$regex"
    find_lex $P2053, "$past"
    unless_null $P2053, vivify_593
    $P2053 = root_new ['parrot';'Hash']
    store_lex "$past", $P2053
  vivify_593:
    set $P2053["sink"], $P2052
.annotate 'line', 732
    find_lex $P2054, "$/"
    find_lex $P2055, "$past"
    $P2056 = $P2054."!make"($P2055)
.annotate 'line', 712
    .return ($P2056)
  control_2022:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2057, exception, "payload"
    .return ($P2057)
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<$>"  :subid("114_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2061
.annotate 'line', 735
    new $P2060, 'ExceptionHandler'
    set_addr $P2060, control_2059
    $P2060."handle_types"(57)
    push_eh $P2060
    .lex "self", self
    .lex "$/", param_2061
    find_lex $P2062, "$/"
    find_lex $P2063, "$/"
    unless_null $P2063, vivify_594
    $P2063 = root_new ['parrot';'Hash']
  vivify_594:
    set $P2064, $P2063["variable"]
    unless_null $P2064, vivify_595
    new $P2064, "Undef"
  vivify_595:
    $P2065 = $P2064."ast"()
    $P2066 = $P2062."!make"($P2065)
    .return ($P2066)
  control_2059:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2067, exception, "payload"
    .return ($P2067)
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<{ }>"  :subid("115_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2071
.annotate 'line', 736
    new $P2070, 'ExceptionHandler'
    set_addr $P2070, control_2069
    $P2070."handle_types"(57)
    push_eh $P2070
    .lex "self", self
    .lex "$/", param_2071
.annotate 'line', 737
    find_lex $P2072, "$/"
    get_hll_global $P2073, ["PAST"], "Op"
.annotate 'line', 738
    find_lex $P2074, "$/"
    unless_null $P2074, vivify_596
    $P2074 = root_new ['parrot';'Hash']
  vivify_596:
    set $P2075, $P2074["block"]
    unless_null $P2075, vivify_597
    new $P2075, "Undef"
  vivify_597:
    $P2076 = $P2075."ast"()
    $P2077 = "block_immediate"($P2076)
    find_lex $P2078, "$/"
    $P2079 = $P2073."new"($P2077, "set S*" :named("pirop"), $P2078 :named("node"))
.annotate 'line', 737
    $P2080 = $P2072."!make"($P2079)
.annotate 'line', 736
    .return ($P2080)
  control_2069:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2081, exception, "payload"
    .return ($P2081)
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("116_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2085
.annotate 'line', 741
    new $P2084, 'ExceptionHandler'
    set_addr $P2084, control_2083
    $P2084."handle_types"(57)
    push_eh $P2084
    .lex "self", self
    .lex "$/", param_2085
    find_lex $P2086, "$/"
    $P2087 = $P2086."!make"("\e")
    .return ($P2087)
  control_2083:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2088, exception, "payload"
    .return ($P2088)
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("117_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2092
.annotate 'line', 745
    new $P2091, 'ExceptionHandler'
    set_addr $P2091, control_2090
    $P2091."handle_types"(57)
    push_eh $P2091
    .lex "self", self
    .lex "$/", param_2092
    find_lex $P2093, "$/"
    find_lex $P2094, "$/"
    unless_null $P2094, vivify_598
    $P2094 = root_new ['parrot';'Hash']
  vivify_598:
    set $P2095, $P2094["dotty"]
    unless_null $P2095, vivify_599
    new $P2095, "Undef"
  vivify_599:
    $P2096 = $P2095."ast"()
    $P2097 = $P2093."!make"($P2096)
    .return ($P2097)
  control_2090:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2098, exception, "payload"
    .return ($P2098)
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("118_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2102
.annotate 'line', 747
    new $P2101, 'ExceptionHandler'
    set_addr $P2101, control_2100
    $P2101."handle_types"(57)
    push_eh $P2101
    .lex "self", self
    .lex "$/", param_2102
.annotate 'line', 748
    find_lex $P2103, "$/"
    get_hll_global $P2104, ["PAST"], "Op"
.annotate 'line', 749
    new $P2105, "ResizablePMCArray"
    push $P2105, "    clone %r, %0"
    push $P2105, "    inc %0"
    $P2106 = $P2104."new"("postfix:<++>" :named("name"), $P2105 :named("inline"), "inline" :named("pasttype"))
.annotate 'line', 748
    $P2107 = $P2103."!make"($P2106)
.annotate 'line', 747
    .return ($P2107)
  control_2100:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2108, exception, "payload"
    .return ($P2108)
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("119_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2112
.annotate 'line', 753
    new $P2111, 'ExceptionHandler'
    set_addr $P2111, control_2110
    $P2111."handle_types"(57)
    push_eh $P2111
    .lex "self", self
    .lex "$/", param_2112
.annotate 'line', 754
    find_lex $P2113, "$/"
    get_hll_global $P2114, ["PAST"], "Op"
.annotate 'line', 755
    new $P2115, "ResizablePMCArray"
    push $P2115, "    clone %r, %0"
    push $P2115, "    dec %0"
    $P2116 = $P2114."new"("postfix:<-->" :named("name"), $P2115 :named("inline"), "inline" :named("pasttype"))
.annotate 'line', 754
    $P2117 = $P2113."!make"($P2116)
.annotate 'line', 753
    .return ($P2117)
  control_2110:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2118, exception, "payload"
    .return ($P2118)
.end


.namespace ["NQP";"Actions"]
.sub "prefix:sym<make>"  :subid("120_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2122
.annotate 'line', 759
    new $P2121, 'ExceptionHandler'
    set_addr $P2121, control_2120
    $P2121."handle_types"(57)
    push_eh $P2121
    .lex "self", self
    .lex "$/", param_2122
.annotate 'line', 760
    find_lex $P2123, "$/"
    get_hll_global $P2124, ["PAST"], "Op"
.annotate 'line', 761
    get_hll_global $P2125, ["PAST"], "Var"
    $P2126 = $P2125."new"("$/" :named("name"), "contextual" :named("scope"))
    find_lex $P2127, "$/"
    $P2128 = $P2124."new"($P2126, "callmethod" :named("pasttype"), "!make" :named("name"), $P2127 :named("node"))
.annotate 'line', 760
    $P2129 = $P2123."!make"($P2128)
.annotate 'line', 759
    .return ($P2129)
  control_2120:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2130, exception, "payload"
    .return ($P2130)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<next>"  :subid("121_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2135
.annotate 'line', 781
    new $P2134, 'ExceptionHandler'
    set_addr $P2134, control_2133
    $P2134."handle_types"(57)
    push_eh $P2134
    .lex "self", self
    .lex "$/", param_2135
    find_lex $P2136, "$/"
    $P2137 = "control"($P2136, ".CONTROL_LOOP_NEXT")
    .return ($P2137)
  control_2133:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2138, exception, "payload"
    .return ($P2138)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<last>"  :subid("122_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2142
.annotate 'line', 782
    new $P2141, 'ExceptionHandler'
    set_addr $P2141, control_2140
    $P2141."handle_types"(57)
    push_eh $P2141
    .lex "self", self
    .lex "$/", param_2142
    find_lex $P2143, "$/"
    $P2144 = "control"($P2143, ".CONTROL_LOOP_LAST")
    .return ($P2144)
  control_2140:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2145, exception, "payload"
    .return ($P2145)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<redo>"  :subid("123_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2149
.annotate 'line', 783
    new $P2148, 'ExceptionHandler'
    set_addr $P2148, control_2147
    $P2148."handle_types"(57)
    push_eh $P2148
    .lex "self", self
    .lex "$/", param_2149
    find_lex $P2150, "$/"
    $P2151 = "control"($P2150, ".CONTROL_LOOP_REDO")
    .return ($P2151)
  control_2147:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2152, exception, "payload"
    .return ($P2152)
.end


.namespace ["NQP";"Actions"]
.sub "infix:sym<~~>"  :subid("124_1273728005.59439") :method :outer("11_1273728005.59439")
    .param pmc param_2156
.annotate 'line', 785
    new $P2155, 'ExceptionHandler'
    set_addr $P2155, control_2154
    $P2155."handle_types"(57)
    push_eh $P2155
    .lex "self", self
    .lex "$/", param_2156
.annotate 'line', 786
    find_lex $P2157, "$/"
    get_hll_global $P2158, ["PAST"], "Op"
    find_lex $P2159, "$/"
    $P2160 = $P2158."new"("callmethod" :named("pasttype"), "ACCEPTS" :named("name"), $P2159 :named("node"))
    $P2161 = $P2157."!make"($P2160)
.annotate 'line', 785
    .return ($P2161)
  control_2154:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2162, exception, "payload"
    .return ($P2162)
.end


.namespace ["NQP";"RegexActions"]
.sub "_block2163"  :subid("125_1273728005.59439") :outer("11_1273728005.59439")
.annotate 'line', 790
    .const 'Sub' $P2199 = "129_1273728005.59439" 
    capture_lex $P2199
    .const 'Sub' $P2189 = "128_1273728005.59439" 
    capture_lex $P2189
    .const 'Sub' $P2179 = "127_1273728005.59439" 
    capture_lex $P2179
    .const 'Sub' $P2165 = "126_1273728005.59439" 
    capture_lex $P2165
.annotate 'line', 801
    .const 'Sub' $P2199 = "129_1273728005.59439" 
    capture_lex $P2199
.annotate 'line', 790
    .return ($P2199)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<:my>"  :subid("126_1273728005.59439") :method :outer("125_1273728005.59439")
    .param pmc param_2168
.annotate 'line', 792
    new $P2167, 'ExceptionHandler'
    set_addr $P2167, control_2166
    $P2167."handle_types"(57)
    push_eh $P2167
    .lex "self", self
    .lex "$/", param_2168
.annotate 'line', 793
    new $P2169, "Undef"
    .lex "$past", $P2169
    find_lex $P2170, "$/"
    unless_null $P2170, vivify_600
    $P2170 = root_new ['parrot';'Hash']
  vivify_600:
    set $P2171, $P2170["statement"]
    unless_null $P2171, vivify_601
    new $P2171, "Undef"
  vivify_601:
    $P2172 = $P2171."ast"()
    store_lex "$past", $P2172
.annotate 'line', 794
    find_lex $P2173, "$/"
    get_hll_global $P2174, ["PAST"], "Regex"
    find_lex $P2175, "$past"
    $P2176 = $P2174."new"($P2175, "pastnode" :named("pasttype"))
    $P2177 = $P2173."!make"($P2176)
.annotate 'line', 792
    .return ($P2177)
  control_2166:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2178, exception, "payload"
    .return ($P2178)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<{ }>"  :subid("127_1273728005.59439") :method :outer("125_1273728005.59439")
    .param pmc param_2182
.annotate 'line', 797
    new $P2181, 'ExceptionHandler'
    set_addr $P2181, control_2180
    $P2181."handle_types"(57)
    push_eh $P2181
    .lex "self", self
    .lex "$/", param_2182
    find_lex $P2183, "$/"
    find_lex $P2184, "$/"
    unless_null $P2184, vivify_602
    $P2184 = root_new ['parrot';'Hash']
  vivify_602:
    set $P2185, $P2184["codeblock"]
    unless_null $P2185, vivify_603
    new $P2185, "Undef"
  vivify_603:
    $P2186 = $P2185."ast"()
    $P2187 = $P2183."!make"($P2186)
    .return ($P2187)
  control_2180:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2188, exception, "payload"
    .return ($P2188)
.end


.namespace ["NQP";"RegexActions"]
.sub "assertion:sym<{ }>"  :subid("128_1273728005.59439") :method :outer("125_1273728005.59439")
    .param pmc param_2192
.annotate 'line', 799
    new $P2191, 'ExceptionHandler'
    set_addr $P2191, control_2190
    $P2191."handle_types"(57)
    push_eh $P2191
    .lex "self", self
    .lex "$/", param_2192
    find_lex $P2193, "$/"
    find_lex $P2194, "$/"
    unless_null $P2194, vivify_604
    $P2194 = root_new ['parrot';'Hash']
  vivify_604:
    set $P2195, $P2194["codeblock"]
    unless_null $P2195, vivify_605
    new $P2195, "Undef"
  vivify_605:
    $P2196 = $P2195."ast"()
    $P2197 = $P2193."!make"($P2196)
    .return ($P2197)
  control_2190:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2198, exception, "payload"
    .return ($P2198)
.end


.namespace ["NQP";"RegexActions"]
.sub "codeblock"  :subid("129_1273728005.59439") :method :outer("125_1273728005.59439")
    .param pmc param_2202
.annotate 'line', 801
    new $P2201, 'ExceptionHandler'
    set_addr $P2201, control_2200
    $P2201."handle_types"(57)
    push_eh $P2201
    .lex "self", self
    .lex "$/", param_2202
.annotate 'line', 802
    new $P2203, "Undef"
    .lex "$block", $P2203
.annotate 'line', 804
    new $P2204, "Undef"
    .lex "$past", $P2204
.annotate 'line', 802
    find_lex $P2205, "$/"
    unless_null $P2205, vivify_606
    $P2205 = root_new ['parrot';'Hash']
  vivify_606:
    set $P2206, $P2205["block"]
    unless_null $P2206, vivify_607
    new $P2206, "Undef"
  vivify_607:
    $P2207 = $P2206."ast"()
    store_lex "$block", $P2207
.annotate 'line', 803
    find_lex $P2208, "$block"
    $P2208."blocktype"("immediate")
.annotate 'line', 805
    get_hll_global $P2209, ["PAST"], "Regex"
.annotate 'line', 806
    get_hll_global $P2210, ["PAST"], "Stmts"
.annotate 'line', 807
    get_hll_global $P2211, ["PAST"], "Op"
.annotate 'line', 808
    get_hll_global $P2212, ["PAST"], "Var"
    $P2213 = $P2212."new"("$/" :named("name"))
.annotate 'line', 809
    get_hll_global $P2214, ["PAST"], "Op"
.annotate 'line', 810
    get_hll_global $P2215, ["PAST"], "Var"
    $P2216 = $P2215."new"(unicode:"$\x{a2}" :named("name"))
    $P2217 = $P2214."new"($P2216, "MATCH" :named("name"), "callmethod" :named("pasttype"))
.annotate 'line', 809
    $P2218 = $P2211."new"($P2213, $P2217, "bind" :named("pasttype"))
.annotate 'line', 807
    find_lex $P2219, "$block"
    $P2220 = $P2210."new"($P2218, $P2219)
.annotate 'line', 806
    $P2221 = $P2209."new"($P2220, "pastnode" :named("pasttype"))
.annotate 'line', 805
    store_lex "$past", $P2221
.annotate 'line', 820
    find_lex $P2222, "$/"
    find_lex $P2223, "$past"
    $P2224 = $P2222."!make"($P2223)
.annotate 'line', 801
    .return ($P2224)
  control_2200:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2225, exception, "payload"
    .return ($P2225)
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
